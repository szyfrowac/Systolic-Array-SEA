`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/28/2026 05:15:27 PM
// Design Name: 
// Module Name: samesignedFPAdder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


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
  wire  a_sgn = ioa[31]; // @[samesignedFPadder.scala 25:18]
  wire  b_sgn = iob[31]; // @[samesignedFPadder.scala 26:18]
  wire [7:0] a_exp = ioa[30:23]; // @[samesignedFPadder.scala 28:18]
  wire [7:0] b_exp = iob[30:23]; // @[samesignedFPadder.scala 29:18]
  wire [23:0] a_mnt = {1'h1,ioa[22:0]}; // @[samesignedFPadder.scala 31:25]
  wire [23:0] b_mnt = {1'h1,iob[22:0]}; // @[samesignedFPadder.scala 32:25]
  wire  _mntAzero_T_1 = |a_mnt[22:0]; // @[samesignedFPadder.scala 37:41]
  wire  mntAzero = ~(|a_mnt[22:0]); // @[samesignedFPadder.scala 37:19]
  wire  _mntBzero_T_1 = |b_mnt[22:0]; // @[samesignedFPadder.scala 38:41]
  wire  mntBzero = ~(|b_mnt[22:0]); // @[samesignedFPadder.scala 38:19]
  wire  expAone = &a_exp; // @[samesignedFPadder.scala 40:23]
  wire  expBone = &b_exp; // @[samesignedFPadder.scala 41:23]
  wire  Azero = ~(|a_exp) & mntAzero; // @[samesignedFPadder.scala 43:28]
  wire  Bzero = ~(|b_exp) & mntBzero; // @[samesignedFPadder.scala 44:28]
  wire  Inzero = Azero & Bzero; // @[samesignedFPadder.scala 45:22]
  wire  Ainf = expAone & mntAzero; // @[samesignedFPadder.scala 47:22]
  wire  Binf = expBone & mntBzero; // @[samesignedFPadder.scala 48:22]
  wire  IninfN = Ainf & Binf; // @[samesignedFPadder.scala 50:21]
  wire  IninfO = Ainf | Binf; // @[samesignedFPadder.scala 52:21]
  wire  Anan = expAone & _mntAzero_T_1; // @[samesignedFPadder.scala 54:22]
  wire  Bnan = expBone & _mntBzero_T_1; // @[samesignedFPadder.scala 55:22]
  wire  Innan = Anan | Bnan; // @[samesignedFPadder.scala 57:20]
  wire  flag_nan = Innan | IninfN; // @[samesignedFPadder.scala 62:25]
  wire [8:0] _diff_exp_T = {1'b0,$signed(a_exp)}; // @[samesignedFPadder.scala 78:24]
  wire [8:0] _diff_exp_T_1 = {1'b0,$signed(b_exp)}; // @[samesignedFPadder.scala 78:37]
  wire [8:0] diff_exp = $signed(_diff_exp_T) - $signed(_diff_exp_T_1); // @[samesignedFPadder.scala 78:29]
  wire  alb_exp = $signed(diff_exp) < 9'sh0; // @[samesignedFPadder.scala 80:26]
  wire [23:0] a_mnts = alb_exp ? b_mnt : a_mnt; // @[samesignedFPadder.scala 86:19]
  wire [27:0] _sum1_T_1 = {1'h0,a_mnts,3'h0}; // @[Cat.scala 33:92]
  wire [23:0] b_mnts = alb_exp ? a_mnt : b_mnt; // @[samesignedFPadder.scala 87:19]
  wire [48:0] _shifted_b_mnts_2pw_T = {b_mnts,25'h0}; // @[samesignedFPadder.scala 120:38]
  wire [8:0] _diff_exp_mag_T_2 = 9'sh0 - $signed(diff_exp); // @[samesignedFPadder.scala 82:35]
  wire [8:0] diff_exp_mag = alb_exp ? $signed(_diff_exp_mag_T_2) : $signed(diff_exp); // @[samesignedFPadder.scala 82:56]
  wire [48:0] shifted_b_mnts_2pw = _shifted_b_mnts_2pw_T >> diff_exp_mag; // @[samesignedFPadder.scala 120:55]
  wire [23:0] shifted_b_mnts = shifted_b_mnts_2pw[48:25]; // @[samesignedFPadder.scala 122:44]
  wire  G1 = shifted_b_mnts_2pw[24]; // @[samesignedFPadder.scala 124:32]
  wire  R1 = shifted_b_mnts_2pw[23]; // @[samesignedFPadder.scala 125:32]
  wire  S1 = |shifted_b_mnts_2pw[22:0] | diff_exp_mag > 9'h32; // @[samesignedFPadder.scala 127:47]
  wire [26:0] _sum1_T_2 = {shifted_b_mnts,G1,R1,S1}; // @[Cat.scala 33:92]
  wire [27:0] _GEN_0 = {{1'd0}, _sum1_T_2}; // @[samesignedFPadder.scala 135:70]
  wire [28:0] sum1 = _sum1_T_1 + _GEN_0; // @[samesignedFPadder.scala 135:70]
  wire  flag_zero1 = sum1 == 29'h0; // @[samesignedFPadder.scala 139:25]
  wire  flag_zero = Inzero | flag_zero1; // @[samesignedFPadder.scala 73:30]
  wire  carrySignBit = sum1[27]; // @[samesignedFPadder.scala 137:28]
  wire [7:0] o_exp1 = alb_exp ? b_exp : a_exp; // @[samesignedFPadder.scala 84:19]
  wire [7:0] _o_exp_add_T_2 = o_exp1 + 8'h1; // @[samesignedFPadder.scala 144:52]
  wire [7:0] o_exp_add = carrySignBit ? _o_exp_add_T_2 : o_exp1; // @[samesignedFPadder.scala 144:21]
  wire  flag_inf1 = o_exp_add >= 8'hff; // @[samesignedFPadder.scala 146:29]
  wire  flag_inf = IninfO | flag_inf1 | ioflag_inf2; // @[samesignedFPadder.scala 74:37]
  wire  _norm_sum_add_T_4 = sum1[1] | sum1[0]; // @[samesignedFPadder.scala 142:74]
  wire [26:0] _norm_sum_add_T_5 = {sum1[27:2],_norm_sum_add_T_4}; // @[samesignedFPadder.scala 142:63]
  wire [1:0] _cond_T = {flag_nan,flag_inf}; // @[samesignedFPadder.scala 156:25]
  assign ioo_sgn = ioa[31]; // @[samesignedFPadder.scala 25:18]
  assign iocond = {_cond_T,flag_zero}; // @[samesignedFPadder.scala 156:37]
  assign ioo_exp2 = carrySignBit ? _o_exp_add_T_2 : o_exp1; // @[samesignedFPadder.scala 144:21]
  assign ionorm_sum = carrySignBit ? _norm_sum_add_T_5 : sum1[26:0]; // @[samesignedFPadder.scala 142:27]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset & ~(a_sgn == b_sgn)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at samesignedFPadder.scala:159 assert(a_sgn === b_sgn)\n"); // @[samesignedFPadder.scala 159:11]
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
          $fatal; // @[samesignedFPadder.scala 159:11]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
