`timescale 1ns/1ps

module tb_fullFPadder;

  // Testbench signals
  reg  [31:0] ioa;
  reg  [31:0] iob;
  reg         ioflag_inf2;
  wire        ioo_sgn;
  wire [2:0]  iocond;
  wire [7:0]  ioo_exp2;
  wire [26:0] ionorm_sum;
  wire        ioflag_zero2;
  
  integer test_num;
  integer errors;
  
  fullFPadder dut (
    .ioa(ioa),
    .iob(iob),
    .ioflag_inf2(ioflag_inf2),
    .ioo_sgn(ioo_sgn),
    .iocond(iocond),
    .ioo_exp2(ioo_exp2),
    .ionorm_sum(ionorm_sum),
    .ioflag_zero2(ioflag_zero2)
  );
  
  function [31:0] make_float;
    input sign;
    input [7:0] exp;
    input [22:0] mant;
    begin
      make_float = {sign, exp, mant};
    end
  endfunction
  
  task display_result;
    input [31:0] a;
    input [31:0] b;
    input [200*8:1] test_name;
    begin
      $display("Test %0d: %0s", test_num, test_name);
      $display("  A = %h (sgn=%b, exp=%h, mant=%h)", 
               a, a[31], a[30:23], a[22:0]);
      $display("  B = %h (sgn=%b, exp=%h, mant=%h)", 
               b, b[31], b[30:23], b[22:0]);
      $display("  Result: sgn=%b, cond=%b, exp=%h, norm_sum=%h, flag_zero2=%b",
               ioo_sgn, iocond, ioo_exp2, ionorm_sum, ioflag_zero2);
      $display("");
    end
  endtask
  
  task report_error;
    input [200*8:1] test_name;
    input [200*8:1] error_msg;
    begin
      $display("*** ERROR in Test %0d: %0s ***", test_num, test_name);
      $display("    %0s", error_msg);
      $display("");
      errors = errors + 1;
    end
  endtask
  
  // Main test sequence
  initial begin
    $display("========================================");
    $display("fullFPadder Testbench");
    $display("========================================\n");
    
    test_num = 0;
    errors = 0;
    ioflag_inf2 = 0;
    
    // Wait for initial settling
    #10;
    
    // Test 1: Simple positive addition (1.0 + 1.0 = 2.0)
    test_num = test_num + 1;
    ioa = 32'h3F800000; // 1.0
    iob = 32'h3F800000; // 1.0
    #10;
    display_result(ioa, iob, "Simple positive addition (1.0 + 1.0)");
    
    // Test 2: Positive addition with different exponents (1.0 + 2.0 = 3.0)
    test_num = test_num + 1;
    ioa = 32'h3F800000; // 1.0
    iob = 32'h40000000; // 2.0
    #10;
    display_result(ioa, iob, "Different exponents (1.0 + 2.0)");
    
    // Test 3: Subtraction (same magnitude, result = 0) (2.0 - 2.0 = 0.0)
    test_num = test_num + 1;
    ioa = 32'h40000000; // 2.0
    iob = 32'hC0000000; // -2.0
    #10;
    display_result(ioa, iob, "Subtraction to zero (2.0 - 2.0)");
    if (iocond[0] != 1'b1) begin
      report_error("Subtraction to zero (2.0 - 2.0)", "Expected zero flag to be set");
    end
    
    // Test 4: Addition with zero (0.0 + 1.0 = 1.0)
    test_num = test_num + 1;
    ioa = 32'h00000000; // 0.0
    iob = 32'h3F800000; // 1.0
    #10;
    display_result(ioa, iob, "Addition with zero (0.0 + 1.0)");
    
    // Test 5: Negative numbers (-1.0 + -1.0 = -2.0)
    test_num = test_num + 1;
    ioa = 32'hBF800000; // -1.0
    iob = 32'hBF800000; // -1.0
    #10;
    display_result(ioa, iob, "Negative numbers (-1.0 + -1.0)");
    
    // Test 6: Mixed signs (positive result) (3.0 + -1.0 = 2.0)
    test_num = test_num + 1;
    ioa = 32'h40400000; // 3.0
    iob = 32'hBF800000; // -1.0
    #10;
    display_result(ioa, iob, "Mixed signs (3.0 + -1.0)");
    
    // Test 7: Infinity + finite number
    test_num = test_num + 1;
    ioa = 32'h7F800000; // +Infinity
    iob = 32'h3F800000; // 1.0
    #10;
    display_result(ioa, iob, "Infinity + finite number");
    if (iocond[1] != 1'b1) begin
      report_error("Infinity + finite number", "Expected infinity flag to be set");
    end
    
    // Test 8: NaN input
    test_num = test_num + 1;
    ioa = 32'h7FC00000; // NaN (exp=all 1s, mant!=0)
    iob = 32'h3F800000; // 1.0
    #10;
    display_result(ioa, iob, "NaN input");
    if (iocond[2] != 1'b1) begin
      report_error("NaN input", "Expected NaN flag to be set");
    end
    
    // Test 9: Infinity - Infinity (should produce NaN)
    test_num = test_num + 1;
    ioa = 32'h7F800000; // +Infinity
    iob = 32'hFF800000; // -Infinity (addition with opposite sign = subtraction)
    #10;
    display_result(ioa, iob, "Infinity - Infinity");
    if (iocond[2] != 1'b1) begin
      report_error("Infinity - Infinity", "Expected NaN flag for Inf-Inf");
    end
    
    // Test 10: Very small difference (large exponent difference)
    test_num = test_num + 1;
    ioa = 32'h40000000; // 2.0 (exp=128)
    iob = 32'h33800000; // Very small number (exp=103)
    #10;
    display_result(ioa, iob, "Large exponent difference");
    
    // Test 11: Denormalized number (exp=0, mant!=0)
    test_num = test_num + 1;
    ioa = 32'h00400000; // Denormalized
    iob = 32'h3F800000; // 1.0
    #10;
    display_result(ioa, iob, "Denormalized number");
    
    // Test 12: Test with ioflag_inf2 set
    test_num = test_num + 1;
    ioa = 32'h3F800000; // 1.0
    iob = 32'h3F800000; // 1.0
    ioflag_inf2 = 1;
    #10;
    display_result(ioa, iob, "External infinity flag");
    if (iocond[1] != 1'b1) begin
      report_error("External infinity flag", "Expected infinity flag due to ioflag_inf2");
    end
    ioflag_inf2 = 0;
    
    // Test 13: Maximum exponent (near overflow)
    test_num = test_num + 1;
    ioa = 32'h7F000000; // Large positive number
    iob = 32'h7F000000; // Large positive number
    #10;
    display_result(ioa, iob, "Maximum exponent (near overflow)");
    
    // Test 14: Negative zero
    test_num = test_num + 1;
    ioa = 32'h80000000; // -0.0
    iob = 32'h3F800000; // 1.0
    #10;
    display_result(ioa, iob, "Negative zero");
    
    // Test 15: Both zeros
    test_num = test_num + 1;
    ioa = 32'h00000000; // +0.0
    iob = 32'h80000000; // -0.0
    #10;
    display_result(ioa, iob, "Both zeros");
    
    #10;
    $display("========================================");
    $display("Test Summary:");
    $display("  Total tests: %0d", test_num);
    $display("  Errors: %0d", errors);
    if (errors == 0)
      $display("  Status: PASSED");
    else
      $display("  Status: FAILED");
    $display("========================================");
    
    $finish;
  end
  
  initial begin
    #10000;
    $display("ERROR: Testbench timeout!");
    $finish;
  end

endmodule