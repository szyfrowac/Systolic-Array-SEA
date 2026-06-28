module roundingUnit(
  input  [26:0] io_norm_sum,
  input  [1:0]  io_round,
  input         io_o_sgn,
  input  [7:0]  io_o_exp2,
  input         io_flag_zero2,
  output        io_flag_inf2,
  output [7:0]  io_o_exp3,
  output [23:0] io_normalized_norm_sum_rounding
);
  wire  M_LSB = io_norm_sum[3]; // @[roundingUnit.scala 30:26]
  wire  G = io_norm_sum[2]; // @[roundingUnit.scala 32:22]
  wire  RS = io_norm_sum[0] | io_norm_sum[1]; // @[roundingUnit.scala 34:27]
  wire  _RB_T_2 = G | RS; // @[roundingUnit.scala 45:13]
  wire  _GEN_0 = io_round == 2'h2 ? (G | RS) & ~io_o_sgn : _RB_T_2 & io_o_sgn; // @[roundingUnit.scala 43:31 45:8 48:8]
  wire  _GEN_1 = io_round == 2'h1 ? 1'h0 : _GEN_0; // @[roundingUnit.scala 40:31 42:8]
  wire  RB = io_round == 2'h0 ? G & (M_LSB | RS) : _GEN_1; // @[roundingUnit.scala 37:26 39:8]
  wire [23:0] _GEN_3 = {{23'd0}, RB}; // @[roundingUnit.scala 52:46]
  wire [24:0] norm_sum_rounding = io_norm_sum[26:3] + _GEN_3; // @[roundingUnit.scala 52:46]
  wire  carryFromNSM = norm_sum_rounding[24]; // @[roundingUnit.scala 54:39]
  wire [7:0] _GEN_4 = {{7'd0}, carryFromNSM}; // @[roundingUnit.scala 57:26]
  wire [7:0] o_exp3 = io_o_exp2 + _GEN_4; // @[roundingUnit.scala 57:26]
  
  assign io_flag_inf2 = o_exp3 == 8'hff & ~io_flag_zero2; // @[roundingUnit.scala 59:39]
  assign io_o_exp3 = io_o_exp2 + _GEN_4; // @[roundingUnit.scala 57:26]
  assign io_normalized_norm_sum_rounding = carryFromNSM ? norm_sum_rounding[24:1] : norm_sum_rounding[23:0]; // @[roundingUnit.scala 56:41]

endmodule