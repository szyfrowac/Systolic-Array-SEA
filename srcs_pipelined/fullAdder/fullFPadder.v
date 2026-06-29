module fullFPadder(
  input  [31:0] ioa,
  input  [31:0] iob,
  input         ioflag_inf2,
  output        ioo_sgn,
  output [2:0]  iocond,
  output [7:0]  ioo_exp2,
  output [26:0] ionorm_sum,
  output        ioflag_zero2
);
  
  wire  a_sgn = ioa[31];
  wire  b_sgn = iob[31];
  
  wire [7:0] a_exp = ioa[30:23];
  wire [7:0] b_exp = iob[30:23];
  
  wire [23:0] a_mnt = {1'h1,ioa[22:0]};
  wire [23:0] b_mnt = {1'h1,iob[22:0]};
  
  wire  Op_perf = a_sgn ^ b_sgn;
  
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
  wire  flag_nan = Innan | IninfN & Op_perf;
  
  wire [8:0] _diff_exp_T = {1'b0,$signed(a_exp)};
  wire [8:0] _diff_exp_T_1 = {1'b0,$signed(b_exp)};
  wire [8:0] diff_exp = $signed(_diff_exp_T) - $signed(_diff_exp_T_1);
  
  wire  alb_exp = $signed(diff_exp) < 9'sh0;
  wire [23:0] a_mnts = alb_exp ? b_mnt : a_mnt;
  
  wire [23:0] _complemented_a_mnts_T_1 = Op_perf ? 24'hffffff : 24'h0;
  wire [23:0] complemented_a_mnts = a_mnts ^ _complemented_a_mnts_T_1;
  
  wire [2:0] _sum1_T_1 = Op_perf ? 3'h7 : 3'h0;
  wire [27:0] _sum1_T_2 = {Op_perf,complemented_a_mnts,_sum1_T_1};
  
  wire [23:0] b_mnts = alb_exp ? a_mnt : b_mnt;
  wire [48:0] _shifted_b_mnts_2pw_T = {b_mnts,25'h0};
  
  wire [8:0] _diff_exp_mag_T_2 = 9'sh0 - $signed(diff_exp);
  wire [8:0] diff_exp_mag = alb_exp ? $signed(_diff_exp_mag_T_2) : $signed(diff_exp);
  
  wire [48:0] shifted_b_mnts_2pw = _shifted_b_mnts_2pw_T >> diff_exp_mag;
  wire [23:0] shifted_b_mnts = shifted_b_mnts_2pw[48:25];
  
  wire  G1 = shifted_b_mnts_2pw[24];
  wire  R1 = shifted_b_mnts_2pw[23];
  wire  S1 = |shifted_b_mnts_2pw[22:0] | diff_exp_mag > 9'h32;
  
  wire [26:0] _sum1_T_3 = {shifted_b_mnts,G1,R1,S1};
  
  wire [27:0] _GEN_0 = {{1'd0}, _sum1_T_3};
  wire [28:0] _sum1_T_4 = _sum1_T_2 + _GEN_0;
  
  wire [28:0] _GEN_1 = {{28'd0}, Op_perf};
  wire [28:0] sum1 = _sum1_T_4 + _GEN_1;
  
  wire  flag_zero1 = sum1 == 29'h0;
  
  wire [7:0] o_exp1 = alb_exp ? b_exp : a_exp;
  wire [8:0] _o_exp_sub_T = {1'b0,$signed(o_exp1)};
 
  wire  carrySignBit = sum1[27];
  
  wire [28:0] _mag_sum1_T_1 = ~sum1;
  wire [28:0] _mag_sum1_T_3 = _mag_sum1_T_1 + 29'h1;
  wire [28:0] mag_sum1 = carrySignBit ? _mag_sum1_T_3 : sum1;
  
  wire [4:0] _nzeros_T_28 = mag_sum1[1] ? 5'h19 : 5'h1a;
  wire [4:0] _nzeros_T_29 = mag_sum1[2] ? 5'h18 : _nzeros_T_28;
  wire [4:0] _nzeros_T_30 = mag_sum1[3] ? 5'h17 : _nzeros_T_29;
  wire [4:0] _nzeros_T_31 = mag_sum1[4] ? 5'h16 : _nzeros_T_30;
  wire [4:0] _nzeros_T_32 = mag_sum1[5] ? 5'h15 : _nzeros_T_31;
  wire [4:0] _nzeros_T_33 = mag_sum1[6] ? 5'h14 : _nzeros_T_32;
  wire [4:0] _nzeros_T_34 = mag_sum1[7] ? 5'h13 : _nzeros_T_33;
  wire [4:0] _nzeros_T_35 = mag_sum1[8] ? 5'h12 : _nzeros_T_34;
  wire [4:0] _nzeros_T_36 = mag_sum1[9] ? 5'h11 : _nzeros_T_35;
  wire [4:0] _nzeros_T_37 = mag_sum1[10] ? 5'h10 : _nzeros_T_36;
  wire [4:0] _nzeros_T_38 = mag_sum1[11] ? 5'hf : _nzeros_T_37;
  wire [4:0] _nzeros_T_39 = mag_sum1[12] ? 5'he : _nzeros_T_38;
  wire [4:0] _nzeros_T_40 = mag_sum1[13] ? 5'hd : _nzeros_T_39;
  wire [4:0] _nzeros_T_41 = mag_sum1[14] ? 5'hc : _nzeros_T_40;
  wire [4:0] _nzeros_T_42 = mag_sum1[15] ? 5'hb : _nzeros_T_41;
  wire [4:0] _nzeros_T_43 = mag_sum1[16] ? 5'ha : _nzeros_T_42;
  wire [4:0] _nzeros_T_44 = mag_sum1[17] ? 5'h9 : _nzeros_T_43;
  wire [4:0] _nzeros_T_45 = mag_sum1[18] ? 5'h8 : _nzeros_T_44;
  wire [4:0] _nzeros_T_46 = mag_sum1[19] ? 5'h7 : _nzeros_T_45;
  wire [4:0] _nzeros_T_47 = mag_sum1[20] ? 5'h6 : _nzeros_T_46;
  wire [4:0] _nzeros_T_48 = mag_sum1[21] ? 5'h5 : _nzeros_T_47;
  wire [4:0] _nzeros_T_49 = mag_sum1[22] ? 5'h4 : _nzeros_T_48;
  wire [4:0] _nzeros_T_50 = mag_sum1[23] ? 5'h3 : _nzeros_T_49;
  wire [4:0] _nzeros_T_51 = mag_sum1[24] ? 5'h2 : _nzeros_T_50;
  wire [4:0] _nzeros_T_52 = mag_sum1[25] ? 5'h1 : _nzeros_T_51;
  wire [4:0] nzeros = mag_sum1[26] ? 5'h0 : _nzeros_T_52;
  
  wire [5:0] _o_exp_sub_T_1 = {1'b0,$signed(nzeros)};
  wire [8:0] _GEN_2 = {{3{_o_exp_sub_T_1[5]}},_o_exp_sub_T_1};
  
  wire [8:0] o_exp_sub = $signed(_o_exp_sub_T) - $signed(_GEN_2);
  
  wire  flag_zero2 = $signed(o_exp_sub) <= 9'sh0 & Op_perf;
  wire  flag_zero = Inzero | flag_zero1 | flag_zero2;
  
  wire [7:0] _o_exp_add_T_2 = o_exp1 + 8'h1;
  wire [7:0] o_exp_add = carrySignBit ? _o_exp_add_T_2 : o_exp1;
  
  wire  _flag_inf1_T_1 = ~Op_perf;
  wire  flag_inf1 = o_exp_add >= 8'hff & ~Op_perf;
  wire  flag_inf = IninfO | flag_inf1 | ioflag_inf2;
  
  wire  _norm_sum_add_T_4 = sum1[1] | sum1[0];
  
  wire [26:0] _norm_sum_add_T_5 = {sum1[27:2],_norm_sum_add_T_4};
  wire [26:0] norm_sum_add = carrySignBit ? _norm_sum_add_T_5 : sum1[26:0];
  
  wire [57:0] _GEN_3 = {{31'd0}, mag_sum1[26:0]};
  
  wire [57:0] norm_sum_sub = _GEN_3 << nzeros;
  wire [57:0] norm_sum = Op_perf ? norm_sum_sub : {{31'd0}, norm_sum_add};
  
  wire [8:0] _o_exp2_T = $signed(_o_exp_sub_T) - $signed(_GEN_2);
  wire [8:0] o_exp2 = Op_perf ? _o_exp2_T : {{1'd0}, o_exp_add};
  
  wire [1:0] _cond_T = {flag_nan,flag_inf};
  
  assign ioo_sgn = Op_perf & (alb_exp ^ ~carrySignBit ^ a_sgn) & ~flag_zero1 | _flag_inf1_T_1 & a_sgn;
  assign iocond = {_cond_T,flag_zero};
  assign ioo_exp2 = o_exp2[7:0];
  assign ionorm_sum = norm_sum[26:0];
  assign ioflag_zero2 = $signed(o_exp_sub) <= 9'sh0 & Op_perf;
  
endmodule
