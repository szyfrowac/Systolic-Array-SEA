`timescale 1ns / 1ps

module tb_samesignedFPadderfrontend();
  reg clock;
  reg reset;
  reg [31:0] io_a;
  reg [31:0] io_b;
  reg [1:0] io_round;
  wire [31:0] io_o;

  samesignedFPadderfrontend dut (
    .clock(clock),
    .reset(reset),
    .io_a(io_a),
    .io_b(io_b),
    .io_o(io_o),
    .io_round(io_round)
  );

  always #5 clock = ~clock;

  initial begin
    clock = 0;
    reset = 1;
    io_a = 0;
    io_b = 0;
    io_round = 0;
    
    #25 reset = 0;
    
    // Cycle 1: 1.5 + 2.5
    // 1.5: 0x3FC00000
    // 2.5: 0x40200000
    // Expected: 4.0 -> 0x40800000
    io_a = 32'h3FC00000;
    io_b = 32'h40200000;
    #10;
    
    // Cycle 2: 3.14 + 2.71
    // 3.14: 0x4048F5C3
    // 2.71: 0x402D70A4
    // Expected: 5.85 -> 0x40BB3333
    io_a = 32'h4048F5C3;
    io_b = 32'h402D70A4;
    #10;
    
    // Cycle 3: 100.0 + 100.0
    // 100.0: 0x42C80000
    // Expected: 200.0 -> 0x43480000
    io_a = 32'h42C80000;
    io_b = 32'h42C80000;
    #10;
    
    // Idle
    io_a = 0;
    io_b = 0;
    
    #100;
    $display("Test complete.");
    $finish;
  end

  always @(posedge clock) begin
    if (!reset) begin
      $display("Time: %0t | Out: %h", $time, io_o);
    end
  end
endmodule
