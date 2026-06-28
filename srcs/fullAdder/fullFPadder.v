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
  
  wire  a_sgn = ioa[31]; // @[fullFPadder.scala 23:18]
  wire  b_sgn = iob[31]; // @[fullFPadder.scala 24:18]
  
  wire [7:0] a_exp = ioa[30:23]; // @[fullFPadder.scala 26:18]
  wire [7:0] b_exp = iob[30:23]; // @[fullFPadder.scala 27:18]
  
  wire [23:0] a_mnt = {1'h1,ioa[22:0]}; // @[fullFPadder.scala 29:25]
  wire [23:0] b_mnt = {1'h1,iob[22:0]}; // @[fullFPadder.scala 30:25]
  
  wire  Op_perf = a_sgn ^ b_sgn; // @[fullFPadder.scala 32:23]
  
  wire  _mntAzero_T_1 = |a_mnt[22:0]; // @[fullFPadder.scala 36:41]
  wire  mntAzero = ~(|a_mnt[22:0]); // @[fullFPadder.scala 36:19]
  wire  _mntBzero_T_1 = |b_mnt[22:0]; // @[fullFPadder.scala 37:41]
  wire  mntBzero = ~(|b_mnt[22:0]); // @[fullFPadder.scala 37:19]
  
  wire  expAone = &a_exp; // @[fullFPadder.scala 39:23]
  wire  expBone = &b_exp; // @[fullFPadder.scala 40:23]
  
  wire  Azero = ~(|a_exp) & mntAzero; // @[fullFPadder.scala 42:28]
  wire  Bzero = ~(|b_exp) & mntBzero; // @[fullFPadder.scala 43:28]
  wire  Inzero = Azero & Bzero; // @[fullFPadder.scala 44:22]
  
  wire  Ainf = expAone & mntAzero; // @[fullFPadder.scala 46:22]
  wire  Binf = expBone & mntBzero; // @[fullFPadder.scala 47:22]
  wire  IninfN = Ainf & Binf; // @[fullFPadder.scala 49:21]
  wire  IninfO = Ainf | Binf; // @[fullFPadder.scala 51:21]
  
  wire  Anan = expAone & _mntAzero_T_1; // @[fullFPadder.scala 53:22]
  wire  Bnan = expBone & _mntBzero_T_1; // @[fullFPadder.scala 54:22]
  wire  Innan = Anan | Bnan; // @[fullFPadder.scala 56:20]
  wire  flag_nan = Innan | IninfN & Op_perf; // @[fullFPadder.scala 61:25]
  
  wire [8:0] _diff_exp_T = {1'b0,$signed(a_exp)}; // @[fullFPadder.scala 79:24]
  wire [8:0] _diff_exp_T_1 = {1'b0,$signed(b_exp)}; // @[fullFPadder.scala 79:37]
  wire [8:0] diff_exp = $signed(_diff_exp_T) - $signed(_diff_exp_T_1); // @[fullFPadder.scala 79:29]
  
  wire  alb_exp = $signed(diff_exp) < 9'sh0; // @[fullFPadder.scala 81:26]
  wire [23:0] a_mnts = alb_exp ? b_mnt : a_mnt; // @[fullFPadder.scala 87:19]
  
  wire [23:0] _complemented_a_mnts_T_1 = Op_perf ? 24'hffffff : 24'h0; // @[Bitwise.scala 77:12]
  wire [23:0] complemented_a_mnts = a_mnts ^ _complemented_a_mnts_T_1; // @[fullFPadder.scala 133:38]
  
  wire [2:0] _sum1_T_1 = Op_perf ? 3'h7 : 3'h0; // @[Bitwise.scala 77:12]
  wire [27:0] _sum1_T_2 = {Op_perf,complemented_a_mnts,_sum1_T_1}; // @[Cat.scala 33:92]
  
  wire [23:0] b_mnts = alb_exp ? a_mnt : b_mnt; // @[fullFPadder.scala 88:19]
  wire [48:0] _shifted_b_mnts_2pw_T = {b_mnts,25'h0}; // @[fullFPadder.scala 123:38]
  
  wire [8:0] _diff_exp_mag_T_2 = 9'sh0 - $signed(diff_exp); // @[fullFPadder.scala 83:35]
  wire [8:0] diff_exp_mag = alb_exp ? $signed(_diff_exp_mag_T_2) : $signed(diff_exp); // @[fullFPadder.scala 83:56]
  
  wire [48:0] shifted_b_mnts_2pw = _shifted_b_mnts_2pw_T >> diff_exp_mag; // @[fullFPadder.scala 123:55]
  wire [23:0] shifted_b_mnts = shifted_b_mnts_2pw[48:25]; // @[fullFPadder.scala 125:44]
  
  wire  G1 = shifted_b_mnts_2pw[24]; // @[fullFPadder.scala 127:32]
  wire  R1 = shifted_b_mnts_2pw[23]; // @[fullFPadder.scala 128:32]
  wire  S1 = |shifted_b_mnts_2pw[22:0] | diff_exp_mag > 9'h32; // @[fullFPadder.scala 131:47]
  
  wire [26:0] _sum1_T_3 = {shifted_b_mnts,G1,R1,S1}; // @[Cat.scala 33:92]
  
  wire [27:0] _GEN_0 = {{1'd0}, _sum1_T_3}; // @[fullFPadder.scala 139:68]
  wire [28:0] _sum1_T_4 = _sum1_T_2 + _GEN_0; // @[fullFPadder.scala 139:68]
  
  wire [28:0] _GEN_1 = {{28'd0}, Op_perf}; // @[fullFPadder.scala 139:103]
  wire [28:0] sum1 = _sum1_T_4 + _GEN_1; // @[fullFPadder.scala 139:103]
  
  wire  flag_zero1 = sum1 == 29'h0; // @[fullFPadder.scala 143:25]
  
  wire [7:0] o_exp1 = alb_exp ? b_exp : a_exp; // @[fullFPadder.scala 85:19]
  wire [8:0] _o_exp_sub_T = {1'b0,$signed(o_exp1)}; // @[fullFPadder.scala 159:28]
 
  wire  carrySignBit = sum1[27]; // @[fullFPadder.scala 141:28]
  
  wire [28:0] _mag_sum1_T_1 = ~sum1; // @[fullFPadder.scala 153:47]
  wire [28:0] _mag_sum1_T_3 = _mag_sum1_T_1 + 29'h1; // @[fullFPadder.scala 153:64]
  wire [28:0] mag_sum1 = carrySignBit ? _mag_sum1_T_3 : sum1; // @[fullFPadder.scala 153:23]
  
  wire [4:0] _nzeros_T_28 = mag_sum1[1] ? 5'h19 : 5'h1a; // @[Mux.scala 47:70]
  wire [4:0] _nzeros_T_29 = mag_sum1[2] ? 5'h18 : _nzeros_T_28; // @[Mux.scala 47:70]
  wire [4:0] _nzeros_T_30 = mag_sum1[3] ? 5'h17 : _nzeros_T_29; // @[Mux.scala 47:70]
  wire [4:0] _nzeros_T_31 = mag_sum1[4] ? 5'h16 : _nzeros_T_30; // @[Mux.scala 47:70]
  wire [4:0] _nzeros_T_32 = mag_sum1[5] ? 5'h15 : _nzeros_T_31; // @[Mux.scala 47:70]
  wire [4:0] _nzeros_T_33 = mag_sum1[6] ? 5'h14 : _nzeros_T_32; // @[Mux.scala 47:70]
  wire [4:0] _nzeros_T_34 = mag_sum1[7] ? 5'h13 : _nzeros_T_33; // @[Mux.scala 47:70]
  wire [4:0] _nzeros_T_35 = mag_sum1[8] ? 5'h12 : _nzeros_T_34; // @[Mux.scala 47:70]
  wire [4:0] _nzeros_T_36 = mag_sum1[9] ? 5'h11 : _nzeros_T_35; // @[Mux.scala 47:70]
  wire [4:0] _nzeros_T_37 = mag_sum1[10] ? 5'h10 : _nzeros_T_36; // @[Mux.scala 47:70]
  wire [4:0] _nzeros_T_38 = mag_sum1[11] ? 5'hf : _nzeros_T_37; // @[Mux.scala 47:70]
  wire [4:0] _nzeros_T_39 = mag_sum1[12] ? 5'he : _nzeros_T_38; // @[Mux.scala 47:70]
  wire [4:0] _nzeros_T_40 = mag_sum1[13] ? 5'hd : _nzeros_T_39; // @[Mux.scala 47:70]
  wire [4:0] _nzeros_T_41 = mag_sum1[14] ? 5'hc : _nzeros_T_40; // @[Mux.scala 47:70]
  wire [4:0] _nzeros_T_42 = mag_sum1[15] ? 5'hb : _nzeros_T_41; // @[Mux.scala 47:70]
  wire [4:0] _nzeros_T_43 = mag_sum1[16] ? 5'ha : _nzeros_T_42; // @[Mux.scala 47:70]
  wire [4:0] _nzeros_T_44 = mag_sum1[17] ? 5'h9 : _nzeros_T_43; // @[Mux.scala 47:70]
  wire [4:0] _nzeros_T_45 = mag_sum1[18] ? 5'h8 : _nzeros_T_44; // @[Mux.scala 47:70]
  wire [4:0] _nzeros_T_46 = mag_sum1[19] ? 5'h7 : _nzeros_T_45; // @[Mux.scala 47:70]
  wire [4:0] _nzeros_T_47 = mag_sum1[20] ? 5'h6 : _nzeros_T_46; // @[Mux.scala 47:70]
  wire [4:0] _nzeros_T_48 = mag_sum1[21] ? 5'h5 : _nzeros_T_47; // @[Mux.scala 47:70]
  wire [4:0] _nzeros_T_49 = mag_sum1[22] ? 5'h4 : _nzeros_T_48; // @[Mux.scala 47:70]
  wire [4:0] _nzeros_T_50 = mag_sum1[23] ? 5'h3 : _nzeros_T_49; // @[Mux.scala 47:70]
  wire [4:0] _nzeros_T_51 = mag_sum1[24] ? 5'h2 : _nzeros_T_50; // @[Mux.scala 47:70]
  wire [4:0] _nzeros_T_52 = mag_sum1[25] ? 5'h1 : _nzeros_T_51; // @[Mux.scala 47:70]
  wire [4:0] nzeros = mag_sum1[26] ? 5'h0 : _nzeros_T_52; // @[Mux.scala 47:70]
  
  wire [5:0] _o_exp_sub_T_1 = {1'b0,$signed(nzeros)}; // @[fullFPadder.scala 159:42]
  wire [8:0] _GEN_2 = {{3{_o_exp_sub_T_1[5]}},_o_exp_sub_T_1}; // @[fullFPadder.scala 159:33]
  
  wire [8:0] o_exp_sub = $signed(_o_exp_sub_T) - $signed(_GEN_2); // @[fullFPadder.scala 159:33]
  
  wire  flag_zero2 = $signed(o_exp_sub) <= 9'sh0 & Op_perf; // @[fullFPadder.scala 161:38]
  wire  flag_zero = Inzero | flag_zero1 | flag_zero2; // @[fullFPadder.scala 73:43]
  
  wire [7:0] _o_exp_add_T_2 = o_exp1 + 8'h1; // @[fullFPadder.scala 148:52]
  wire [7:0] o_exp_add = carrySignBit ? _o_exp_add_T_2 : o_exp1; // @[fullFPadder.scala 148:21]
  
  wire  _flag_inf1_T_1 = ~Op_perf; // @[fullFPadder.scala 150:43]
  wire  flag_inf1 = o_exp_add >= 8'hff & ~Op_perf; // @[fullFPadder.scala 150:40]
  wire  flag_inf = IninfO | flag_inf1 | ioflag_inf2; // @[fullFPadder.scala 74:37]
  
  wire  _norm_sum_add_T_4 = sum1[1] | sum1[0]; // @[fullFPadder.scala 146:74]
  
  wire [26:0] _norm_sum_add_T_5 = {sum1[27:2],_norm_sum_add_T_4}; // @[fullFPadder.scala 146:63]
  wire [26:0] norm_sum_add = carrySignBit ? _norm_sum_add_T_5 : sum1[26:0]; // @[fullFPadder.scala 146:27]
  
  wire [57:0] _GEN_3 = {{31'd0}, mag_sum1[26:0]}; // @[fullFPadder.scala 157:41]
  
  wire [57:0] norm_sum_sub = _GEN_3 << nzeros; // @[fullFPadder.scala 157:41]
  wire [57:0] norm_sum = Op_perf ? norm_sum_sub : {{31'd0}, norm_sum_add}; // @[fullFPadder.scala 164:23]
  
  wire [8:0] _o_exp2_T = $signed(_o_exp_sub_T) - $signed(_GEN_2); // @[fullFPadder.scala 166:47]
  wire [8:0] o_exp2 = Op_perf ? _o_exp2_T : {{1'd0}, o_exp_add}; // @[fullFPadder.scala 166:21]
  
  wire [1:0] _cond_T = {flag_nan,flag_inf}; // @[fullFPadder.scala 171:25]
  
  assign ioo_sgn = Op_perf & (alb_exp ^ ~carrySignBit ^ a_sgn) & ~flag_zero1 | _flag_inf1_T_1 & a_sgn; // @[fullFPadder.scala 168:81]
  assign iocond = {_cond_T,flag_zero}; // @[fullFPadder.scala 171:37]
  assign ioo_exp2 = o_exp2[7:0]; // @[fullFPadder.scala 175:14]
  assign ionorm_sum = norm_sum[26:0]; // @[fullFPadder.scala 176:16]
  assign ioflag_zero2 = $signed(o_exp_sub) <= 9'sh0 & Op_perf; // @[fullFPadder.scala 161:38]
  
endmodule
