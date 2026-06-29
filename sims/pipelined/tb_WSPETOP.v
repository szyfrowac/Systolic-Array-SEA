`timescale 1ns / 1ps

module tb_WSPETOP();
  reg clock;
  reg reset;
  reg [31:0] io_a;
  reg [31:0] io_b_in;
  reg io_load_b;
  reg [31:0] io_d;
  reg [31:0] io_d_prime;
  reg [1:0] io_round;
  
  wire [31:0] io_a_out;
  wire [31:0] io_d_out;
  wire [31:0] io_d_prime_out;

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

  always #5 clock = ~clock;

  initial begin
    clock = 0;
    reset = 1;
    io_a = 0;
    io_b_in = 0;
    io_load_b = 0;
    io_d = 0;
    io_d_prime = 0;
    io_round = 0;
    
    #25 reset = 0;
    
    // Load b_reg = 3.0 (0x40400000)
    @(posedge clock);
    io_load_b = 1;
    io_b_in = 32'h40400000;
    
    @(posedge clock);
    io_load_b = 0;
    
    // Cycle 1: a = 2.0 (0x40000000), b = 3.0, d = 4.0 (0x40800000), d_prime = 5.0 (0x40A00000)
    // Product = 2.0 * 3.0 = 6.0
    // Sign is same as d (both positive). xor_select = 0.
    // adder gets 6.0 + 4.0 = 10.0 (0x41200000)
    // d_prime_out_reg gets d_prime = 5.0
    io_a = 32'h40000000;
    io_d = 32'h40800000;
    io_d_prime = 32'h40A00000;
    
    @(posedge clock);
    // Cycle 2: a = 1.5 (0x3FC00000), b = 3.0, d = 2.5 (0x40200000), d_prime = 8.0 (0x41000000)
    // Product = 1.5 * 3.0 = 4.5
    // adder gets 4.5 + 2.5 = 7.0 (0x40E00000)
    io_a = 32'h3FC00000;
    io_d = 32'h40200000;
    io_d_prime = 32'h41000000;

    @(posedge clock);
    io_a = 0;
    io_d = 0;
    io_d_prime = 0;

    #100;
    $display("Test complete.");
    $finish;
  end

  always @(posedge clock) begin
    if (!reset) begin
      $display("Time: %0t | A: %h | a_out: %h | D: %h | D': %h | d_out: %h | d_prime_out: %h", 
               $time, io_a, io_a_out, io_d, io_d_prime, io_d_out, io_d_prime_out);
    end
  end
endmodule
