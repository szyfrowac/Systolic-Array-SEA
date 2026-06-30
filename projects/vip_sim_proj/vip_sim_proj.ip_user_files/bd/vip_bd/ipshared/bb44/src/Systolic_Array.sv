`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2025 09:18:02 AM
// Design Name: 
// Module Name: mesh
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SystolicArray #(
  parameter ROWS = 8,
  parameter COLS = 8,
  parameter DATA_WIDTH = 32
)(
  input clock,
  input reset,
  
  // Input ports - one per row for 'a' data
  input [DATA_WIDTH-1:0] io_a_in [0:ROWS-1],
  input [DATA_WIDTH-1:0] io_b_in [0:ROWS-1][0:COLS-1],
  input io_load_b,
  
  input  [DATA_WIDTH-1:0] io_d_in [0:COLS-1],
  
  // Control signal
  input [1:0] io_round,
  
  // Output ports - one per row for 'a' data
  output [DATA_WIDTH-1:0] io_a_out [0:ROWS-1],
  
  // Output ports - final C results per column
  output [DATA_WIDTH-1:0] io_c_out [0:COLS-1]
);
  
  reg [DATA_WIDTH-1:0] d_pipe [0:ROWS-1][0:COLS-1];
  reg [DATA_WIDTH-1:0] d_prime_pipe [0:ROWS-1][0:COLS-1];
  // Allocate up to COLS-1 to avoid negative index bounds when COLS=1
  reg [DATA_WIDTH-1:0] a_pipe [0:ROWS-1][0:(COLS>1 ? COLS-2 : 0)];
  
  wire [DATA_WIDTH-1:0] pe_a_out [0:ROWS-1][0:COLS-1];
  wire [DATA_WIDTH-1:0] pe_d_out [0:ROWS-1][0:COLS-1];
  wire [DATA_WIDTH-1:0] pe_d_prime_out [0:ROWS-1][0:COLS-1];

  generate
    for(genvar r = 0; r < ROWS; r = r + 1) begin : gen_row_out
      assign io_a_out[r] = pe_a_out[r][COLS-1];
    end
    for(genvar c = 0; c < COLS; c = c + 1) begin : gen_final_addout
      // Pipeline registers BEFORE the adder to isolate the combinatorial logic
      reg [DATA_WIDTH-1:0] pe_d_out_reg;
      reg [DATA_WIDTH-1:0] pe_d_prime_out_reg;
      // Pipeline register AFTER the adder
      wire [DATA_WIDTH-1:0] final_adder_out;
      reg  [DATA_WIDTH-1:0] io_c_out_reg;

      always_ff @(posedge clock or posedge reset) begin
        if(reset) begin
          pe_d_out_reg <= {DATA_WIDTH{1'b0}};
          pe_d_prime_out_reg <= {DATA_WIDTH{1'b0}};
          io_c_out_reg <= {DATA_WIDTH{1'b0}};
        end else begin
          pe_d_out_reg <= pe_d_out[ROWS-1][c];
          pe_d_prime_out_reg <= pe_d_prime_out[ROWS-1][c];
          io_c_out_reg <= final_adder_out;
        end
      end

      // Final adder per column to sum D and D'
      FPadder final_adder (
        .io_a     (pe_d_out_reg),
        .io_b     (pe_d_prime_out_reg),
        .io_o     (final_adder_out),
        .io_round (io_round)
      );
      
      assign io_c_out[c] = io_c_out_reg;
    end
  endgenerate

  generate
    for(genvar r = 0; r < ROWS; r = r + 1) begin : gen_pe_row
      for(genvar c = 0; c < COLS; c = c + 1) begin : gen_pe_col
        wire [DATA_WIDTH-1:0] a_in;
        wire [DATA_WIDTH-1:0] d_in;
        wire [DATA_WIDTH-1:0] d_prime_in;

        if (c == 0) begin
          assign a_in = io_a_in[r];
        end else begin
          assign a_in = a_pipe[r][c-1];
        end

        if (r == 0) begin
          assign d_in = io_d_in[c];
          assign d_prime_in = io_d_in[c][DATA_WIDTH-1] ? {DATA_WIDTH{1'b0}} : {1'b1, {(DATA_WIDTH-1){1'b0}}};
        end else begin
          assign d_in = d_pipe[r-1][c];
          assign d_prime_in = d_prime_pipe[r-1][c];
        end

        WSPETOP pe (
          .clock(clock),
          .reset(reset),
          .io_a(a_in),
          .io_b_in(io_b_in[r][c]),
          .io_load_b(io_load_b),
          .io_d(d_in),
          .io_d_prime(d_prime_in),
          .io_round(io_round),
          .io_a_out(pe_a_out[r][c]),
          .io_d_out(pe_d_out[r][c]),
          .io_d_prime_out(pe_d_prime_out[r][c])
        );
      end
    end
  endgenerate

  always_ff @(posedge clock or posedge reset) begin
    if(reset) begin
      for(int i = 0; i < ROWS; i = i + 1) begin
        for(int j = 0; j < COLS; j = j + 1) begin
          d_pipe[i][j] <= {DATA_WIDTH{1'b0}};
          d_prime_pipe[i][j] <= {DATA_WIDTH{1'b0}};
        end
      end
      if (COLS > 1) begin
        for(int i = 0; i < ROWS; i = i + 1) begin
          for(int j = 0; j < COLS-1; j = j + 1) begin
            a_pipe[i][j] <= {DATA_WIDTH{1'b0}};
          end
        end
      end
    end
    else begin
      for(int i = 0; i < ROWS; i = i + 1) begin
        for(int j = 0; j < COLS; j = j + 1) begin
          d_pipe[i][j] <= pe_d_out[i][j];
          d_prime_pipe[i][j] <= pe_d_prime_out[i][j];
        end
      end
      if (COLS > 1) begin
        for(int i = 0; i < ROWS; i = i + 1) begin
          for(int j = 0; j < COLS-1; j = j + 1) begin
            a_pipe[i][j] <= pe_a_out[i][j];
          end
        end
      end
    end
  end

endmodule