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
  reg [DATA_WIDTH-1:0] io_d_in [0:COLS-1];
  reg [1:0] io_round;
  
  // Outputs
  wire [DATA_WIDTH-1:0] io_a_out [0:ROWS-1];
  wire [DATA_WIDTH-1:0] io_c_out [0:COLS-1];

  // Instantiate the Unit Under Test (UUT)
  SystolicArray #(
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
    forever #5 clock = ~clock; // 100MHz clock
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
    for (int j = 0; j < COLS; j++) begin
      io_d_in[j] = 0;
    end

    // Wait 100 ns for global reset to finish
    #105;
    reset = 0;
    
    // Load B matrix
    @(posedge clock);
    io_load_b = 1;
    io_b_in[0][0] = 32'h3F800000; // 1.0 
    io_b_in[0][1] = 32'h40000000; // 2.0
    io_b_in[1][0] = 32'h40400000; // 3.0
    io_b_in[1][1] = 32'h40800000; // 4.0
    
    @(posedge clock);
    io_load_b = 0;
    
    // -----------------------------------------------------
    // WAVE SCHEDULE:
    // With a highly pipelined design, the vertical delay is 
    // now 6 cycles (5 inside WSPE + 1 inter-PE register).
    // The horizontal delay is 1 cycle.
    // 
    // A_row[r] must be delayed by r * 6 cycles.
    // D_col[c] must be delayed by c * 1 cycle.
    // -----------------------------------------------------

    // Cycle 0: Start Wave 1 (Row 0)
    io_a_in[0] = 32'h3F800000; // 1.0 (A00)
    io_d_in[0] = 32'h40A00000; // 5.0 (D00)
    
    // Cycle 1: Start Wave 2 (Row 0), and Wave 1 (Col 1)
    @(posedge clock);
    io_a_in[0] = 32'h40000000; // 2.0 (A10)
    io_d_in[0] = 32'h40C00000; // 6.0 (D10)
    io_d_in[1] = 32'h40E00000; // 7.0 (D01)
    
    // Cycle 2: Start Wave 2 (Col 1)
    @(posedge clock);
    io_a_in[0] = 32'h00000000; 
    io_d_in[0] = 32'h00000000; 
    io_d_in[1] = 32'h41000000; // 8.0 (D11)
    
    // Cycle 3
    @(posedge clock);
    io_d_in[1] = 32'h00000000;

    // Cycle 4
    @(posedge clock);
    // Cycle 5
    @(posedge clock); 

    // Cycle 6: A01 arrives exactly 6 cycles after A00!
    @(posedge clock); 
    io_a_in[1] = 32'h40400000; // 3.0 (A01)

    // Cycle 7: A11 arrives 6 cycles after A10!
    @(posedge clock);
    io_a_in[1] = 32'h40800000; // 4.0 (A11)

    // Cycle 8
    @(posedge clock);
    io_a_in[1] = 32'h00000000; 
    
    // Wait for pipeline to completely flush results out
    #300;
    
    $display("=================================================");
    $display("Simulation complete.");
    $display("=================================================");

    $finish;
  end

  // Monitor
  always @(posedge clock) begin
    if (!reset) begin
      if (io_c_out[0] != 32'd0 && io_c_out[0] != 32'h80000000) begin
        $display("[%0t] RESULT: Col 0 Final C Output = %h", $time, io_c_out[0]);
      end
      if (io_c_out[1] != 32'd0 && io_c_out[1] != 32'h80000000) begin
        $display("[%0t] RESULT: Col 1 Final C Output = %h", $time, io_c_out[1]);
      end
    end
  end

endmodule
