`timescale 1ns / 1ps

module tb_SystolicArray();

  parameter ROWS = 2;
  parameter COLS = 2;
  parameter DATA_WIDTH = 32;

  reg clock;
  reg reset;
  
  // Inputs
  reg [DATA_WIDTH-1:0] io_a_in [0:ROWS-1];
  reg [DATA_WIDTH-1:0] io_b_in [0:ROWS-1][0:COLS-1];
  reg io_load_b;
  
  // Note: This matches the port definition currently in Systolic_Array.sv
  reg [DATA_WIDTH-1:0] io_d_in [0:COLS-1];
  
  reg [1:0] io_round;
  
  // Outputs
  wire [DATA_WIDTH-1:0] io_a_out [0:ROWS-1];
  wire [DATA_WIDTH-1:0] io_c_out [0:COLS-1];

  // Instantiate the Unit Under Test (UUT)
  SystolicArray_post_wrapper #(
    .ROWS(ROWS),
    .COLS(COLS),
    .DATA_WIDTH(DATA_WIDTH)
  ) uut (
    .clock(clock),
    .reset(reset),
    .io_a_in(io_a_in),
    .io_b_in(io_b_in),
    .io_load_b(io_load_b),
    .io_d_in(io_d_in),
    .io_round(io_round),
    .io_a_out(io_a_out),
    .io_c_out(io_c_out)
  );

  // Clock generation
  initial begin
    clock = 0;
    forever #15 clock = ~clock; // 33.3MHz clock for post-impl timing
  end

  // Test stimulus
  initial begin
    // Initialize Inputs
    reset = 1;
    io_load_b = 0;
    io_round = 0;
    
    for (int i = 0; i < ROWS; i++) begin
      io_a_in[i] = 0;
      for (int j = 0; j < COLS; j++) begin
        io_b_in[i][j] = 0;
      end
    end
    
    // Initialize D matrix inputs entering from the top
    for (int j = 0; j < COLS; j++) begin
      io_d_in[j] = 0;
    end

    // Wait 100 ns for global reset to finish
    #100;
    reset = 0;
    #10;
    
    // Load B matrix
    io_load_b = 1;
    // Provide some dummy floating-point values for B
    io_b_in[0][0] = 32'h3F800000; // 1.0 in IEEE 754
    io_b_in[0][1] = 32'h40000000; // 2.0
    io_b_in[1][0] = 32'h40400000; // 3.0
    io_b_in[1][1] = 32'h40800000; // 4.0
    #10;
    io_load_b = 0;
    
    // Start pushing A matrix values diagonally
    // Cycle 1: push A[0][0] and D[0][0]
    io_a_in[0] = 32'h3F800000; // 1.0
    io_a_in[1] = 32'h00000000; // 0.0
    io_d_in[0] = 32'h40A00000; // 5.0 (D00)
    io_d_in[1] = 32'h00000000; // 0.0
    #10;
    
    // Cycle 2: push A[0][1], A[1][0], D[1][0], D[0][1]
    io_a_in[0] = 32'h40000000; // 2.0
    io_a_in[1] = 32'h40400000; // 3.0
    io_d_in[0] = 32'h40C00000; // 6.0 (D10)
    io_d_in[1] = 32'h40E00000; // 7.0 (D01)
    #10;
    
    // Cycle 3: push A[1][1] and D[1][1]
    io_a_in[0] = 32'h00000000; // 0.0
    io_a_in[1] = 32'h40800000; // 4.0
    io_d_in[0] = 32'h00000000; // 0.0
    io_d_in[1] = 32'h41000000; // 8.0 (D11)
    #10;
    
    // Flush out pipeline
    io_a_in[1] = 32'h00000000;
    io_d_in[1] = 32'h00000000;
    
    // Flush out pipeline
    io_a_in[0] = 32'h00000000;
    io_a_in[1] = 32'h00000000;
    #100;
    
    $display("=================================================");
    $display("Simulation complete.");
    $display("Look at the monitor output above to see the results streaming out!");
    $display("=================================================");

    $finish;
  end

  // =========================================================
  // Output Monitor
  // =========================================================
  // Systolic arrays push their results out of the bottom row 
  // cycle by cycle. We monitor the final 'C' output from the 
  // FP adders at the bottom of each column.
  always @(posedge clock) begin
    if (reset == 0) begin // After reset is deasserted
      if (io_c_out[0] != 32'd0 && io_c_out[0] != 32'h80000000) begin
        $display("[%0t] RESULT STREAMING OUT: Col 0 Final C Output = %h", $time, io_c_out[0]);
      end
      if (io_c_out[1] != 32'd0 && io_c_out[1] != 32'h80000000) begin
        $display("[%0t] RESULT STREAMING OUT: Col 1 Final C Output = %h", $time, io_c_out[1]);
      end
    end
  end

endmodule
