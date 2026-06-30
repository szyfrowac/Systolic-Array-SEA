module FPadder(
  input  [31:0] io_a,
  input  [31:0] io_b,
  output [31:0] io_o,
  input  [1:0]  io_round
);

  wire [31:0] adderFrontend_ioa;
  wire [31:0] adderFrontend_iob;
  wire  adderFrontend_ioflag_inf2;
  wire  adderFrontend_ioo_sgn;
  wire [2:0] adderFrontend_iocond;
  wire [7:0] adderFrontend_ioo_exp2;
  wire [26:0] adderFrontend_ionorm_sum;
  wire  adderFrontend_ioflag_zero2;
  wire [26:0] roundUnit_io_norm_sum;
  wire [1:0] roundUnit_io_round;
  wire  roundUnit_io_o_sgn;
  wire [7:0] roundUnit_io_o_exp2;
  wire  roundUnit_io_flag_zero2;
  wire  roundUnit_io_flag_inf2;
  wire [7:0] roundUnit_io_o_exp3;
  wire [23:0] roundUnit_io_normalized_norm_sum_rounding;
  wire [23:0] _GEN_0 = adderFrontend_iocond >= 3'h4 ? 24'hc00000 : 24'hffffff;
  wire [23:0] _GEN_2 = adderFrontend_iocond == 3'h2 ? 24'h0 : _GEN_0;
  wire [23:0] _GEN_4 = adderFrontend_iocond == 3'h1 ? 24'h0 : _GEN_2;
  wire [7:0] _GEN_5 = adderFrontend_iocond == 3'h1 ? 8'h0 : 8'hff;
  wire [23:0] normalized_norm_sum_rounding = roundUnit_io_normalized_norm_sum_rounding;
  wire [23:0] o_mnt = adderFrontend_iocond == 3'h0 ? normalized_norm_sum_rounding : _GEN_4;
  wire [7:0] o_exp3 = roundUnit_io_o_exp3;
  wire [7:0] o_exp4 = adderFrontend_iocond == 3'h0 ? o_exp3 : _GEN_5;
  wire [8:0] _io_o_T = {adderFrontend_ioo_sgn,o_exp4};
  fullFPadder adderFrontend (
    .ioa(adderFrontend_ioa),
    .iob(adderFrontend_iob),
    .ioflag_inf2(adderFrontend_ioflag_inf2),
    .ioo_sgn(adderFrontend_ioo_sgn),
    .iocond(adderFrontend_iocond),
    .ioo_exp2(adderFrontend_ioo_exp2),
    .ionorm_sum(adderFrontend_ionorm_sum),
    .ioflag_zero2(adderFrontend_ioflag_zero2)
  );
  roundingUnit roundUnit (
    .io_norm_sum(roundUnit_io_norm_sum),
    .io_round(roundUnit_io_round),
    .io_o_sgn(roundUnit_io_o_sgn),
    .io_o_exp2(roundUnit_io_o_exp2),
    .io_flag_zero2(roundUnit_io_flag_zero2),
    .io_flag_inf2(roundUnit_io_flag_inf2),
    .io_o_exp3(roundUnit_io_o_exp3),
    .io_normalized_norm_sum_rounding(roundUnit_io_normalized_norm_sum_rounding)
  );
  assign io_o = {_io_o_T,o_mnt[22:0]};
  assign adderFrontend_ioa = io_a;
  assign adderFrontend_iob = io_b;
  assign adderFrontend_ioflag_inf2 = roundUnit_io_flag_inf2;
  assign roundUnit_io_norm_sum = adderFrontend_ionorm_sum;
  assign roundUnit_io_round = io_round;
  assign roundUnit_io_o_sgn = adderFrontend_ioo_sgn;
  assign roundUnit_io_o_exp2 = adderFrontend_ioo_exp2;
  assign roundUnit_io_flag_zero2 = adderFrontend_ioflag_zero2;
endmodule