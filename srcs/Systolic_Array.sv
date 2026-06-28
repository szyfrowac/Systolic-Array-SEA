`timescale 1ns / 1ps

module SystolicArray #(
  parameter ROWS = 4,
  parameter COLS = 4
)(
  input                     clock,
  input                     reset,
  
  // Input ports - one per column for 'a' data
  input  [31:0]             io_a_in [0:COLS-1],
  
  // Input ports - one per row for 'b' data
  input  [31:0]             io_b_in [0:ROWS-1],
  input                     io_load_b [0:ROWS-1],
  
  // Input ports - one per PE for 'd' and 'd_prime'
  input  [31:0]             io_d_in [0:ROWS-1][0:COLS-1],
  input  [31:0]             io_d_prime_in [0:ROWS-1][0:COLS-1],
  
  // Control signal
  input  [1:0]              io_round,
  
  // Output ports - one per row for 'a' data
  output [31:0]             io_a_out [0:ROWS-1],
  
  // Output ports - one per PE for 'd' and 'd_prime'
  output [31:0]             io_d_out [0:ROWS-1][0:COLS-1],
  output [31:0]             io_d_prime_out [0:ROWS-1][0:COLS-1]
);

  // Internal wires for horizontal 'a' propagation (left to right)
  wire [31:0] a_wire [0:ROWS-1][0:COLS];
  
  // Internal wires for vertical 'b' propagation (top to bottom)
  wire [31:0] b_wire [0:ROWS][0:COLS-1];
  
  // Generate systolic array mesh
  genvar row, col;
  generate
    for (row = 0; row < ROWS; row = row + 1) begin : gen_rows
      for (col = 0; col < COLS; col = col + 1) begin : gen_cols
        
        // Instantiate processing element
        WSPETOP pe (
          .clock(clock),
          .reset(reset),
          
          // Horizontal 'a' dataflow (left to right)
          .io_a(a_wire[row][col]),
          .io_a_out(a_wire[row][col+1]),
          
          // Vertical 'b' dataflow (top to bottom)
          .io_b_in(b_wire[row][col]),
          .io_load_b(io_load_b[row]),
          
          // Stationary 'd' and 'd_prime' inputs
          .io_d(io_d_in[row][col]),
          .io_d_prime(io_d_prime_in[row][col]),
          
          // Control
          .io_round(io_round),
          
          // Outputs
          .io_d_out(io_d_out[row][col]),
          .io_d_prime_out(io_d_prime_out[row][col])
        );
      end
    end
  endgenerate
  
  // Connect input 'a' values to the leftmost column
  generate
    for (row = 0; row < ROWS; row = row + 1) begin : connect_a_inputs
      assign a_wire[row][0] = io_a_in[row];
    end
  endgenerate
  
  // Connect output 'a' values from the rightmost column
  generate
    for (row = 0; row < ROWS; row = row + 1) begin : connect_a_outputs
      assign io_a_out[row] = a_wire[row][COLS];
    end
  endgenerate
  
  // Connect input 'b' values to the topmost row
  generate
    for (col = 0; col < COLS; col = col + 1) begin : connect_b_inputs
      assign b_wire[0][col] = io_b_in[col];
    end
  endgenerate
  
  // Note: 'b' values from bottom row are not exposed as outputs
  // If needed, they can be accessed via b_wire[ROWS][col]

endmodule
