`timescale 1ns / 1ps

module samesignedFPaddertop(
  input         clock,
  input         reset,
  input  [31:0] io_a,
  input  [31:0] io_b,
  output [31:0] io_o,
  input         io_op,
  input  [1:0]  io_round
);
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire  FPadderModule_clock;
  wire  FPadderModule_reset;
  wire [31:0] FPadderModule_io_a;
  wire [31:0] FPadderModule_io_b;
  wire [31:0] FPadderModule_io_o;
  wire [1:0] FPadderModule_io_round;
  reg [31:0] a;
  reg [31:0] b;
  reg [1:0] round;
  reg [31:0] o_t;
  samesignedFPadderfrontend FPadderModule (
    .clock(FPadderModule_clock),
    .reset(FPadderModule_reset),
    .io_a(FPadderModule_io_a),
    .io_b(FPadderModule_io_b),
    .io_o(FPadderModule_io_o),
    .io_round(FPadderModule_io_round)
  );
  assign io_o = o_t;
  assign FPadderModule_clock = clock;
  assign FPadderModule_reset = reset;
  assign FPadderModule_io_a = a;
  assign FPadderModule_io_b = b;
  assign FPadderModule_io_round = round;
  always @(posedge clock) begin
    if (reset) begin
      a <= 32'h0;
    end else begin
      a <= io_a;
    end
    if (reset) begin
      b <= 32'h0;
    end else begin
      b <= io_b;
    end
    if (reset) begin
      round <= 2'h0;
    end else begin
      round <= io_round;
    end
    if (reset) begin
      o_t <= 32'h0;
    end else begin
      o_t <= FPadderModule_io_o;
    end
  end

endmodule
