`timescale 1ns/1ps

module tb_WSPETOP;

  // Testbench signals
  reg         clock;
  reg         reset;
  reg  [31:0] io_a;
  reg  [31:0] io_b_in;
  reg         io_load_b;
  reg  [31:0] io_d;
  reg  [31:0] io_d_prime;
  reg  [1:0]  io_round;
  wire [31:0] io_a_out;
  wire [31:0] io_d_out;
  wire [31:0] io_d_prime_out;
  
  // Test tracking
  integer test_num;
  integer errors;
  integer cycle_count;
  
  // Clock generation (10ns period = 100MHz)
  initial begin
    clock = 0;
    forever #5 clock = ~clock;
  end
  
  // DUT instantiation
  WSPETOP dut (
    .clock(clock),
    .reset(reset),
    .io_a(io_a),
    .io_b_in(io_b_in),
    .io_load_b(io_load_b),
    .io_d(io_d),
    .io_d_prime(io_d_prime),
    .io_round(io_round),
    .io_a_out(io_a_out),
    .io_d_out(io_d_out),
    .io_d_prime_out(io_d_prime_out)
  );
  
  // Helper function to create IEEE 754 single precision float
  function [31:0] make_float;
    input sign;
    input [7:0] exp;
    input [22:0] mant;
    begin
      make_float = {sign, exp, mant};
    end
  endfunction
  
  // Helper task to display test header
  task display_test;
    input [200*8:1] test_name;
    begin
      $display("========================================");
      $display("Test %0d: %0s", test_num, test_name);
      $display("========================================");
    end
  endtask
  
  // Helper task to display signals
  task display_signals;
    begin
      $display("Cycle %0d:", cycle_count);
      $display("  Inputs:");
      $display("    io_a       = %h", io_a);
      $display("    io_b_in    = %h (load_b=%b)", io_b_in, io_load_b);
      $display("    io_d       = %h", io_d);
      $display("    io_d_prime = %h", io_d_prime);
      $display("    io_round   = %b", io_round);
      $display("  Outputs:");
      $display("    io_a_out         = %h", io_a_out);
      $display("    io_d_out         = %h", io_d_out);
      $display("    io_d_prime_out   = %h", io_d_prime_out);
      $display("");
    end
  endtask
  
  // Helper task for error reporting
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
  
  // Helper task to wait cycles
  task wait_cycles;
    input integer n;
    integer i;
    begin
      for (i = 0; i < n; i = i + 1) begin
        @(posedge clock);
        cycle_count = cycle_count + 1;
      end
    end
  endtask
  
  // Main test sequence
  initial begin
    $display("========================================");
    $display("WSPETOP Processing Element Testbench");
    $display("========================================\n");
    
    // Initialize
    test_num = 0;
    errors = 0;
    cycle_count = 0;
    
    clock = 0;
    reset = 1;
    io_a = 32'h0;
    io_b_in = 32'h0;
    io_load_b = 0;
    io_d = 32'h3F800000; // 1.0
    io_d_prime = 32'h40000000; // 2.0
    io_round = 2'b00;
    
    // Reset sequence
    repeat(3) @(posedge clock);
    reset = 0;
    @(posedge clock);
    
    // =============================================
    // Test 1: Basic pass-through (io_a_out = io_a)
    // =============================================
    test_num = test_num + 1;
    display_test("Basic pass-through test");
    
    io_a = 32'h3F800000; // 1.0
    io_b_in = 32'h0;
    io_load_b = 0;
    io_d = 32'h3F000000; // 0.5
    io_d_prime = 32'h3F400000; // 0.75
    
    wait_cycles(1);
    display_signals();
    
    if (io_a_out != io_a) begin
      report_error("Basic pass-through test", "io_a_out should equal io_a");
    end
    
    // =============================================
    // Test 2: Load B register
    // =============================================
    test_num = test_num + 1;
    display_test("Load B register");
    
    io_a = 32'h40000000; // 2.0
    io_b_in = 32'h40400000; // 3.0
    io_load_b = 1;
    io_d = 32'h40000000; // 2.0
    io_d_prime = 32'h40400000; // 3.0
    
    wait_cycles(1);
    display_signals();
    
    // Turn off load
    io_load_b = 0;
    wait_cycles(1);
    display_signals();
    
    $display("Note: B register should now contain 3.0 for subsequent operations\n");
    
    // =============================================
    // Test 3: MAC operation (Multiply-Accumulate)
    // A * B + D, where A=2.0, B=3.0 (loaded), D=1.0
    // Expected: 2.0 * 3.0 + 1.0 = 7.0
    // =============================================
    test_num = test_num + 1;
    display_test("MAC operation: 2.0 * 3.0 + 1.0");
    
    io_a = 32'h40000000; // 2.0
    io_b_in = 32'h0; // Don't care (B already loaded)
    io_load_b = 0;
    io_d = 32'h3F800000; // 1.0
    io_d_prime = 32'h41200000; // 10.0
    io_round = 2'b00; // Round to nearest even
    
    // Wait for pipeline (multiply + add takes multiple cycles)
    wait_cycles(3);
    display_signals();
    
    $display("Expected result: ~7.0 (0x40E00000)\n");
    
    // =============================================
    // Test 4: XOR select behavior
    // When mul_sign XOR d_sign is true, use io_d_prime
    // Test with positive * negative (result negative)
    // =============================================
    test_num = test_num + 1;
    display_test("XOR select with negative product");
    
    // Load negative B value
    io_a = 32'h40000000; // 2.0
    io_b_in = 32'hC0400000; // -3.0
    io_load_b = 1;
    
    wait_cycles(1);
    io_load_b = 0;
    
    io_d = 32'h3F800000; // 1.0 (positive)
    io_d_prime = 32'h40A00000; // 5.0
    
    // Product will be negative (2.0 * -3.0 = -6.0)
    // mul_sign=1, d_sign=0, xor_select=1
    // Should use d_prime (5.0)
    
    wait_cycles(3);
    display_signals();
    
    $display("Expected: Should use d_prime for addition\n");
    
    // =============================================
    // Test 5: Pipeline test with changing inputs
    // =============================================
    test_num = test_num + 1;
    display_test("Pipeline with changing inputs");
    
    // Load B = 2.0
    io_b_in = 32'h40000000; // 2.0
    io_load_b = 1;
    wait_cycles(1);
    io_load_b = 0;
    
    // First operation: 1.0 * 2.0 + 0.5
    io_a = 32'h3F800000; // 1.0
    io_d = 32'h3F000000; // 0.5
    io_d_prime = 32'h40000000; // 2.0
    
    wait_cycles(1);
    display_signals();
    
    // Second operation: 3.0 * 2.0 + 1.0
    io_a = 32'h40400000; // 3.0
    io_d = 32'h3F800000; // 1.0
    io_d_prime = 32'h40400000; // 3.0
    
    wait_cycles(1);
    display_signals();
    
    // Third operation: 4.0 * 2.0 + 2.0
    io_a = 32'h40800000; // 4.0
    io_d = 32'h40000000; // 2.0
    io_d_prime = 32'h40800000; // 4.0
    
    wait_cycles(2);
    display_signals();
    
    $display("Note: Observe pipelined results\n");
    
    // =============================================
    // Test 6: Reset behavior
    // =============================================
    test_num = test_num + 1;
    display_test("Reset behavior");
    
    $display("Before reset:");
    display_signals();
    
    reset = 1;
    wait_cycles(2);
    
    $display("After reset:");
    display_signals();
    
    if (io_d_out != 32'h0 || io_d_prime_out != 32'h0) begin
      report_error("Reset behavior", "Output registers should be zero after reset");
    end
    
    reset = 0;
    wait_cycles(1);
    
    // =============================================
    // Test 7: Different rounding modes
    // =============================================
    test_num = test_num + 1;
    display_test("Different rounding modes");
    
    // Load B = 1.5
    io_b_in = 32'h3FC00000; // 1.5
    io_load_b = 1;
    wait_cycles(1);
    io_load_b = 0;
    
    io_a = 32'h3DCCCCCD; // 0.1 (approximation)
    io_d = 32'h3F800000; // 1.0
    io_d_prime = 32'h40000000; // 2.0
    
    // Test each rounding mode
    io_round = 2'b00; // Round to nearest even
    wait_cycles(3);
    $display("Rounding mode 00 (nearest even):");
    display_signals();
    
    io_round = 2'b01; // Round toward zero
    wait_cycles(3);
    $display("Rounding mode 01 (toward zero):");
    display_signals();
    
    io_round = 2'b10; // Round up
    wait_cycles(3);
    $display("Rounding mode 10 (up):");
    display_signals();
    
    io_round = 2'b11; // Round down
    wait_cycles(3);
    $display("Rounding mode 11 (down):");
    display_signals();
    
    // =============================================
    // Test 8: Zero inputs
    // =============================================
    test_num = test_num + 1;
    display_test("Zero inputs");
    
    io_a = 32'h0;
    io_b_in = 32'h0;
    io_load_b = 1;
    wait_cycles(1);
    io_load_b = 0;
    
    io_d = 32'h0;
    io_d_prime = 32'h0;
    io_round = 2'b00;
    
    wait_cycles(3);
    display_signals();
    
    $display("Expected: io_d_out = 1.0, io_d_prime_out = 2.0 (non-zero values)\n");
    
    // Summary
    wait_cycles(5);
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
  
  // Timeout watchdog
  initial begin
    #50000;
    $display("ERROR: Testbench timeout!");
    $finish;
  end

endmodule