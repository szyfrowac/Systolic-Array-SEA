module samesignedFPadderTOP(
  input         clock,
  input         reset,
  input  [31:0] io_a,
  input  [31:0] io_b,
  output [31:0] io_o,
  input         io_op,
  input  [1:0]  io_round
);

`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire  FPadderModule_clock; // @[main.scala 16:29]
  wire  FPadderModule_reset; // @[main.scala 16:29]
  wire [31:0] FPadderModule_io_a; // @[main.scala 16:29]
  wire [31:0] FPadderModule_io_b; // @[main.scala 16:29]
  wire [31:0] FPadderModule_io_o; // @[main.scala 16:29]
  wire [1:0] FPadderModule_io_round; // @[main.scala 16:29]
  reg [31:0] a; // @[main.scala 17:26]
  reg [31:0] b; // @[main.scala 18:26]
  reg [1:0] round; // @[main.scala 20:28]
  reg [31:0] o_t; // @[main.scala 29:20]
  FPadder FPadderModule ( // @[main.scala 16:29]
    .clock(FPadderModule_clock),
    .reset(FPadderModule_reset),
    .io_a(FPadderModule_io_a),
    .io_b(FPadderModule_io_b),
    .io_o(FPadderModule_io_o),
    .io_round(FPadderModule_io_round)
  );
  assign io_o = o_t; // @[main.scala 31:8]
  assign FPadderModule_clock = clock;
  assign FPadderModule_reset = reset;
  assign FPadderModule_io_a = a; // @[main.scala 25:22]
  assign FPadderModule_io_b = b; // @[main.scala 26:22]
  assign FPadderModule_io_round = round; // @[main.scala 28:26]
  always @(posedge clock) begin
    if (reset) begin // @[main.scala 17:26]
      a <= 32'h0; // @[main.scala 17:26]
    end else begin
      a <= io_a; // @[main.scala 21:5]
    end
    if (reset) begin // @[main.scala 18:26]
      b <= 32'h0; // @[main.scala 18:26]
    end else begin
      b <= io_b; // @[main.scala 22:5]
    end
    if (reset) begin // @[main.scala 20:28]
      round <= 2'h0; // @[main.scala 20:28]
    end else begin
      round <= io_round; // @[main.scala 24:9]
    end
    if (reset) begin // @[main.scala 29:20]
      o_t <= 32'h0; // @[main.scala 29:20]
    end else begin
      o_t <= FPadderModule_io_o; // @[main.scala 30:7]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  a = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  b = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  round = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  o_t = _RAND_3[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule