`timescale 1ns / 1ps

module tb_SystolicArray();

  parameter ROWS = 3;
  parameter COLS = 3;
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

  // Verification variables
  reg [DATA_WIDTH-1:0] expected_C [0:2][0:2];
  integer out_idx [0:2];
  integer errors = 0;
  integer total_checked = 0;

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
  // Initialize verification variables
  initial begin
    expected_C[0][0] = 32'h41900000;
    expected_C[0][1] = 32'h41500000;
    expected_C[0][2] = 32'h41600000;
    expected_C[1][0] = 32'h41a80000;
    expected_C[1][1] = 32'h41600000;
    expected_C[1][2] = 32'h41b80000;
    expected_C[2][0] = 32'h41600000;
    expected_C[2][1] = 32'h41200000;
    expected_C[2][2] = 32'h41900000;
    out_idx[0] = 0;
    out_idx[1] = 0;
    out_idx[2] = 0;
  end

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
    #100;
    reset = 0;
    #10;
    
    // Load B matrix
    io_load_b = 1;
    io_b_in[0][0] = 32'h3f800000; // 1.0
    io_b_in[0][1] = 32'h3f800000; // 1.0
    io_b_in[0][2] = 32'h40400000; // 3.0
    io_b_in[1][0] = 32'h40400000; // 3.0
    io_b_in[1][1] = 32'h40000000; // 2.0
    io_b_in[1][2] = 32'h3f800000; // 1.0
    io_b_in[2][0] = 32'h40400000; // 3.0
    io_b_in[2][1] = 32'h3f800000; // 1.0
    io_b_in[2][2] = 32'h40000000; // 2.0
    #10;
    io_load_b = 0;
    
    // Start pushing A and D matrix values
    // Cycle 1
    io_a_in[0] = 32'h40000000; // A[0][0] = 2.0
    io_a_in[1] = 32'h00000000; // 0.0
    io_a_in[2] = 32'h00000000; // 0.0
    io_d_in[0] = 32'h3f800000; // D[0][0] = 1.0
    io_d_in[1] = 32'h00000000; // 0.0
    io_d_in[2] = 32'h00000000; // 0.0
    #10;

    // Cycle 2
    io_a_in[0] = 32'h40800000; // A[1][0] = 4.0
    io_a_in[1] = 32'h40400000; // A[0][1] = 3.0
    io_a_in[2] = 32'h00000000; // 0.0
    io_d_in[0] = 32'h40000000; // D[1][0] = 2.0
    io_d_in[1] = 32'h40400000; // D[0][1] = 3.0
    io_d_in[2] = 32'h00000000; // 0.0
    #10;

    // Cycle 3
    io_a_in[0] = 32'h40800000; // A[2][0] = 4.0
    io_a_in[1] = 32'h40400000; // A[1][1] = 3.0
    io_a_in[2] = 32'h40000000; // A[0][2] = 2.0
    io_d_in[0] = 32'h40800000; // D[2][0] = 4.0
    io_d_in[1] = 32'h40000000; // D[1][1] = 2.0
    io_d_in[2] = 32'h3f800000; // D[0][2] = 1.0
    #10;

    // Cycle 4
    io_a_in[0] = 32'h00000000; // 0.0
    io_a_in[1] = 32'h3f800000; // A[2][1] = 1.0
    io_a_in[2] = 32'h40000000; // A[1][2] = 2.0
    io_d_in[0] = 32'h00000000; // 0.0
    io_d_in[1] = 32'h40400000; // D[2][1] = 3.0
    io_d_in[2] = 32'h40800000; // D[1][2] = 4.0
    #10;

    // Cycle 5
    io_a_in[0] = 32'h00000000; // 0.0
    io_a_in[1] = 32'h00000000; // 0.0
    io_a_in[2] = 32'h3f800000; // A[2][2] = 1.0
    io_d_in[0] = 32'h00000000; // 0.0
    io_d_in[1] = 32'h00000000; // 0.0
    io_d_in[2] = 32'h40400000; // D[2][2] = 3.0
    #10;

    // Flush out pipeline
    for (int i = 0; i < ROWS; i++) io_a_in[i] = 32'h00000000;
    for (int j = 0; j < COLS; j++) io_d_in[j] = 32'h00000000;
    #200;
    
    $display("=================================================");
    $display("Simulation complete.");
    $display("Expected Outputs:");
    $display("C[0][0] = 18.0 (32'h41900000)");
    $display("C[0][1] = 13.0 (32'h41500000)");
    $display("C[0][2] = 14.0 (32'h41600000)");
    $display("C[1][0] = 21.0 (32'h41a80000)");
    $display("C[1][1] = 14.0 (32'h41600000)");
    $display("C[1][2] = 23.0 (32'h41b80000)");
    $display("C[2][0] = 14.0 (32'h41600000)");
    $display("C[2][1] = 10.0 (32'h41200000)");
    $display("C[2][2] = 18.0 (32'h41900000)");
    $display("=================================================");
    
    // Final PASS/FAIL check
    if (total_checked == 9 && errors == 0) begin
      $display("                 TEST PASSED                     ");
    end else begin
      $display("                 TEST FAILED                     ");
      $display(" Errors: %0d", errors);
      $display(" Outputs Checked: %0d / 9", total_checked);
    end
    $display("=================================================");

    $finish;
  end

  // Output Monitor and Checker
  always @(posedge clock) begin
    if (reset == 0) begin
      if (io_c_out[0] != 32'd0 && io_c_out[0] != 32'h80000000) begin
        $display("[%0t] RESULT STREAMING OUT: Col 0 Final C Output = %h", $time, io_c_out[0]);
        if (out_idx[0] < 3) begin
          if (io_c_out[0] !== expected_C[out_idx[0]][0]) begin
            $display("ERROR: Col 0 output %h does not match expected %h at index %0d", io_c_out[0], expected_C[out_idx[0]][0], out_idx[0]);
            errors = errors + 1;
          end
          out_idx[0] = out_idx[0] + 1;
          total_checked = total_checked + 1;
        end
      end
      if (io_c_out[1] != 32'd0 && io_c_out[1] != 32'h80000000) begin
        $display("[%0t] RESULT STREAMING OUT: Col 1 Final C Output = %h", $time, io_c_out[1]);
        if (out_idx[1] < 3) begin
          if (io_c_out[1] !== expected_C[out_idx[1]][1]) begin
            $display("ERROR: Col 1 output %h does not match expected %h at index %0d", io_c_out[1], expected_C[out_idx[1]][1], out_idx[1]);
            errors = errors + 1;
          end
          out_idx[1] = out_idx[1] + 1;
          total_checked = total_checked + 1;
        end
      end
      if (io_c_out[2] != 32'd0 && io_c_out[2] != 32'h80000000) begin
        $display("[%0t] RESULT STREAMING OUT: Col 2 Final C Output = %h", $time, io_c_out[2]);
        if (out_idx[2] < 3) begin
          if (io_c_out[2] !== expected_C[out_idx[2]][2]) begin
            $display("ERROR: Col 2 output %h does not match expected %h at index %0d", io_c_out[2], expected_C[out_idx[2]][2], out_idx[2]);
            errors = errors + 1;
          end
          out_idx[2] = out_idx[2] + 1;
          total_checked = total_checked + 1;
        end
      end
    end
  end

endmodule
