module FPadder(
  input  [31:0] io_a,
  input  [31:0] io_b,
  output [31:0] io_o,
  input  [1:0]  io_round
);
  wire [31:0] adderFrontend_ioa; // @[FPadder.scala 17:46]
  wire [31:0] adderFrontend_iob; // @[FPadder.scala 17:46]
  wire  adderFrontend_ioflag_inf2; // @[FPadder.scala 17:46]
  wire  adderFrontend_ioo_sgn; // @[FPadder.scala 17:46]
  wire [2:0] adderFrontend_iocond; // @[FPadder.scala 17:46]
  wire [7:0] adderFrontend_ioo_exp2; // @[FPadder.scala 17:46]
  wire [26:0] adderFrontend_ionorm_sum; // @[FPadder.scala 17:46]
  wire  adderFrontend_ioflag_zero2; // @[FPadder.scala 17:46]
  wire [26:0] roundUnit_io_norm_sum; // @[FPadder.scala 21:31]
  wire [1:0] roundUnit_io_round; // @[FPadder.scala 21:31]
  wire  roundUnit_io_o_sgn; // @[FPadder.scala 21:31]
  wire [7:0] roundUnit_io_o_exp2; // @[FPadder.scala 21:31]
  wire  roundUnit_io_flag_zero2; // @[FPadder.scala 21:31]
  wire  roundUnit_io_flag_inf2; // @[FPadder.scala 21:31]
  wire [7:0] roundUnit_io_o_exp3; // @[FPadder.scala 21:31]
  wire [23:0] roundUnit_io_normalized_norm_sum_rounding; // @[FPadder.scala 21:31]
  wire [23:0] _GEN_0 = adderFrontend_iocond >= 3'h4 ? 24'hc00000 : 24'hffffff; // @[FPadder.scala 54:28 55:13 58:13]
  wire [23:0] _GEN_2 = adderFrontend_iocond == 3'h2 ? 24'h0 : _GEN_0; // @[FPadder.scala 51:29 52:13]
  wire [23:0] _GEN_4 = adderFrontend_iocond == 3'h1 ? 24'h0 : _GEN_2; // @[FPadder.scala 48:29 49:13]
  wire [7:0] _GEN_5 = adderFrontend_iocond == 3'h1 ? 8'h0 : 8'hff; // @[FPadder.scala 48:29 50:14]
  wire [23:0] normalized_norm_sum_rounding = roundUnit_io_normalized_norm_sum_rounding; // @[FPadder.scala 19:44 30:38]
  wire [23:0] o_mnt = adderFrontend_iocond == 3'h0 ? normalized_norm_sum_rounding : _GEN_4; // @[FPadder.scala 45:23 46:13]
  wire [7:0] o_exp3 = roundUnit_io_o_exp3; // @[FPadder.scala 18:22 29:16]
  wire [7:0] o_exp4 = adderFrontend_iocond == 3'h0 ? o_exp3 : _GEN_5; // @[FPadder.scala 45:23 47:14]
  wire [8:0] _io_o_T = {adderFrontend_ioo_sgn,o_exp4}; // @[FPadder.scala 61:37]
  fullFPadder adderFrontend ( // @[FPadder.scala 17:46]
    .ioa(adderFrontend_ioa),
    .iob(adderFrontend_iob),
    .ioflag_inf2(adderFrontend_ioflag_inf2),
    .ioo_sgn(adderFrontend_ioo_sgn),
    .iocond(adderFrontend_iocond),
    .ioo_exp2(adderFrontend_ioo_exp2),
    .ionorm_sum(adderFrontend_ionorm_sum),
    .ioflag_zero2(adderFrontend_ioflag_zero2)
  );
  roundingUnit roundUnit ( // @[FPadder.scala 21:31]
    .io_norm_sum(roundUnit_io_norm_sum),
    .io_round(roundUnit_io_round),
    .io_o_sgn(roundUnit_io_o_sgn),
    .io_o_exp2(roundUnit_io_o_exp2),
    .io_flag_zero2(roundUnit_io_flag_zero2),
    .io_flag_inf2(roundUnit_io_flag_inf2),
    .io_o_exp3(roundUnit_io_o_exp3),
    .io_normalized_norm_sum_rounding(roundUnit_io_normalized_norm_sum_rounding)
  );
  assign io_o = {_io_o_T,o_mnt[22:0]}; // @[FPadder.scala 61:47]
  assign adderFrontend_ioa = io_a; // @[FPadder.scala 38:23]
  assign adderFrontend_iob = io_b; // @[FPadder.scala 39:23]
  assign adderFrontend_ioflag_inf2 = roundUnit_io_flag_inf2; // @[FPadder.scala 28:35]
  assign roundUnit_io_norm_sum = adderFrontend_ionorm_sum; // @[FPadder.scala 23:31]
  assign roundUnit_io_round = io_round; // @[FPadder.scala 24:28]
  assign roundUnit_io_o_sgn = adderFrontend_ioo_sgn; // @[FPadder.scala 25:28]
  assign roundUnit_io_o_exp2 = adderFrontend_ioo_exp2; // @[FPadder.scala 26:29]
  assign roundUnit_io_flag_zero2 = adderFrontend_ioflag_zero2; // @[FPadder.scala 27:33]
endmodule