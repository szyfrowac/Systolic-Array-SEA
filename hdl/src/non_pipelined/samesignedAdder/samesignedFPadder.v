`timescale 1ns / 1ps

module samesignedFPadder(
  input         clock,
  input         reset,
  input  [31:0] ioa,
  input  [31:0] iob,
  input         ioflag_inf2,
  output        ioo_sgn,
  output [2:0]  iocond,
  output [7:0]  ioo_exp2,
  output [26:0] ionorm_sum
);
  wire  a_sgn = ioa[31];
  wire  b_sgn = iob[31];
  wire [7:0] a_exp = ioa[30:23];
  wire [7:0] b_exp = iob[30:23];
  wire [23:0] a_mnt = {1'h1,ioa[22:0]};
  wire [23:0] b_mnt = {1'h1,iob[22:0]};
  wire  _mntAzero_T_1 = |a_mnt[22:0];
  wire  mntAzero = ~(|a_mnt[22:0]);
  wire  _mntBzero_T_1 = |b_mnt[22:0];
  wire  mntBzero = ~(|b_mnt[22:0]);
  wire  expAone = &a_exp;
  wire  expBone = &b_exp;
  wire  Azero = ~(|a_exp) & mntAzero;
  wire  Bzero = ~(|b_exp) & mntBzero;
  wire  Inzero = Azero & Bzero;
  wire  Ainf = expAone & mntAzero;
  wire  Binf = expBone & mntBzero;
  wire  IninfN = Ainf & Binf;
  wire  IninfO = Ainf | Binf;
  wire  Anan = expAone & _mntAzero_T_1;
  wire  Bnan = expBone & _mntBzero_T_1;
  wire  Innan = Anan | Bnan;
  wire  flag_nan = Innan | IninfN;
  wire [8:0] _diff_exp_T = {1'b0,$signed(a_exp)};
  wire [8:0] _diff_exp_T_1 = {1'b0,$signed(b_exp)};
  wire [8:0] diff_exp = $signed(_diff_exp_T) - $signed(_diff_exp_T_1);
  wire  alb_exp = $signed(diff_exp) < 9'sh0;
  wire [23:0] a_mnts = alb_exp ? b_mnt : a_mnt;
  wire [27:0] _sum1_T_1 = {1'h0,a_mnts,3'h0};
  wire [23:0] b_mnts = alb_exp ? a_mnt : b_mnt;
  wire [48:0] _shifted_b_mnts_2pw_T = {b_mnts,25'h0};
  wire [8:0] _diff_exp_mag_T_2 = 9'sh0 - $signed(diff_exp);
  wire [8:0] diff_exp_mag = alb_exp ? $signed(_diff_exp_mag_T_2) : $signed(diff_exp);
  wire [48:0] shifted_b_mnts_2pw = _shifted_b_mnts_2pw_T >> diff_exp_mag;
  wire [23:0] shifted_b_mnts = shifted_b_mnts_2pw[48:25];
  wire  G1 = shifted_b_mnts_2pw[24];
  wire  R1 = shifted_b_mnts_2pw[23];
  wire  S1 = |shifted_b_mnts_2pw[22:0] | diff_exp_mag > 9'h32;
  wire [26:0] _sum1_T_2 = {shifted_b_mnts,G1,R1,S1};
  wire [27:0] _GEN_0 = {{1'd0}, _sum1_T_2};
  wire [28:0] sum1 = _sum1_T_1 + _GEN_0;
  wire  flag_zero1 = sum1 == 29'h0;
  wire  flag_zero = Inzero | flag_zero1;
  wire  carrySignBit = sum1[27];
  wire [7:0] o_exp1 = alb_exp ? b_exp : a_exp;
  wire [7:0] _o_exp_add_T_2 = o_exp1 + 8'h1;
  wire [7:0] o_exp_add = carrySignBit ? _o_exp_add_T_2 : o_exp1;
  wire  flag_inf1 = o_exp_add >= 8'hff;
  wire  flag_inf = IninfO | flag_inf1 | ioflag_inf2;
  wire  _norm_sum_add_T_4 = sum1[1] | sum1[0];
  wire [26:0] _norm_sum_add_T_5 = {sum1[27:2],_norm_sum_add_T_4};
  wire [1:0] _cond_T = {flag_nan,flag_inf};
  assign ioo_sgn = ioa[31];
  assign iocond = {_cond_T,flag_zero};
  assign ioo_exp2 = carrySignBit ? _o_exp_add_T_2 : o_exp1;
  assign ionorm_sum = carrySignBit ? _norm_sum_add_T_5 : sum1[26:0];
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset & ~(a_sgn == b_sgn)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at samesignedFPadder.scala:159 assert(a_sgn === b_sgn)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~reset & ~(a_sgn == b_sgn)) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
