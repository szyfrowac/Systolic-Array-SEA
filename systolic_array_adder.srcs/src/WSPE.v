module WSPETOP(
  input         clock,
  input         reset,
  input  [31:0] io_a,
  input  [31:0] io_b_in,
  input         io_load_b,
  input  [31:0] io_d,
  input  [31:0] io_d_prime,
  input  [1:0]  io_round,
  output [31:0] io_a_out,
  output [31:0] io_d_out,
  output [31:0] io_d_prime_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] FPmulModule_io_a; // @[main.scala 34:27]
  wire [31:0] FPmulModule_io_b; // @[main.scala 34:27]
  wire [31:0] FPmulModule_io_o; // @[main.scala 34:27]
  wire [1:0] FPmulModule_io_round; // @[main.scala 34:27]
  wire [31:0] FPadderModule_io_a; // @[main.scala 56:29]
  wire [31:0] FPadderModule_io_b; // @[main.scala 56:29]
  wire [31:0] FPadderModule_io_o; // @[main.scala 56:29]
  wire [1:0] FPadderModule_io_round; // @[main.scala 56:29]
  reg [31:0] b_reg; // @[main.scala 25:22]
  wire  mul_sign = FPmulModule_io_o[31]; // @[main.scala 41:28]
  wire  d_sign = io_d[31]; // @[main.scala 44:20]
  wire  xor_select = mul_sign ^ d_sign; // @[main.scala 47:29]
  reg [31:0] d_out_reg; // @[main.scala 63:26]
  reg [31:0] d_prime_out_reg; // @[main.scala 64:32]
  FPmul FPmulModule ( // @[main.scala 34:27]
    .io_a(FPmulModule_io_a),
    .io_b(FPmulModule_io_b),
    .io_o(FPmulModule_io_o),
    .io_round(FPmulModule_io_round)
  );
  FPadder FPadderModule ( // @[main.scala 56:29]
    .io_a(FPadderModule_io_a),
    .io_b(FPadderModule_io_b),
    .io_o(FPadderModule_io_o),
    .io_round(FPadderModule_io_round)
  );
  assign io_a_out = io_a; // @[main.scala 31:12]
  assign io_d_out = d_out_reg; // @[main.scala 69:12]
  assign io_d_prime_out = d_prime_out_reg; // @[main.scala 70:18]
  assign FPmulModule_io_a = io_a; // @[main.scala 35:20]
  assign FPmulModule_io_b = b_reg; // @[main.scala 36:20]
  assign FPmulModule_io_round = io_round; // @[main.scala 37:24]
  assign FPadderModule_io_a = FPmulModule_io_o; // @[main.scala 57:22]
  assign FPadderModule_io_b = xor_select ? io_d : io_d_prime; // @[main.scala 50:21]
  assign FPadderModule_io_round = io_round; // @[main.scala 60:26]
  always @(posedge clock) begin
    if (reset) begin // @[main.scala 25:22]
      b_reg <= 32'h0; // @[main.scala 25:22]
    end else if (io_load_b) begin // @[main.scala 26:19]
      b_reg <= io_b_in; // @[main.scala 27:11]
    end
    if (reset) begin // @[main.scala 63:26]
      d_out_reg <= 32'h0; // @[main.scala 63:26]
    end else begin
      d_out_reg <= FPadderModule_io_o; // @[main.scala 66:13]
    end
    if (reset) begin // @[main.scala 64:32]
      d_prime_out_reg <= 32'h0; // @[main.scala 64:32]
    end else if (xor_select) begin // @[main.scala 50:21]
      d_prime_out_reg <= io_d_prime;
    end else begin
      d_prime_out_reg <= io_d;
    end
  end
  

// Register and memory initialization
//`ifdef RANDOMIZE_GARBAGE_ASSIGN
//`define RANDOMIZE
//`endif
//`ifdef RANDOMIZE_INVALID_ASSIGN
//`define RANDOMIZE
//`endif
//`ifdef RANDOMIZE_REG_INIT
//`define RANDOMIZE
//`endif
//`ifdef RANDOMIZE_MEM_INIT
//`define RANDOMIZE
//`endif
//`ifndef RANDOM
//`define RANDOM $random
//`endif
//`ifdef RANDOMIZE_MEM_INIT
//  integer initvar;
//`endif
//`ifndef SYNTHESIS
//`ifdef FIRRTL_BEFORE_INITIAL
//`FIRRTL_BEFORE_INITIAL
//`endif
//initial begin
//  `ifdef RANDOMIZE
//    `ifdef INIT_RANDOM
//      `INIT_RANDOM
//    `endif
//    `ifndef VERILATOR
//      `ifdef RANDOMIZE_DELAY
//        #`RANDOMIZE_DELAY begin end
//      `else
//        #0.002 begin end
//      `endif
//    `endif
//`ifdef RANDOMIZE_REG_INIT
//  _RAND_0 = {1{`RANDOM}};
//  b_reg = _RAND_0[31:0];
//  _RAND_1 = {1{`RANDOM}};
//  d_out_reg = _RAND_1[31:0];
//  _RAND_2 = {1{`RANDOM}};
//  d_prime_out_reg = _RAND_2[31:0];
//`endif // RANDOMIZE_REG_INIT
//  `endif // RANDOMIZE
//end // initial
//`ifdef FIRRTL_AFTER_INITIAL
//`FIRRTL_AFTER_INITIAL
//`endif
//`endif // SYNTHESIS
endmodule