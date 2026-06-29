module FPmul(
  input  [31:0] io_a,
  input  [31:0] io_b,
  output [31:0] io_o,
  input  [1:0]  io_round
);

  wire  a_sgn = io_a[31];
  wire  b_sgn = io_b[31];
  wire [7:0] a_exp = io_a[30:23];
  wire [7:0] b_exp = io_b[30:23];
  wire [23:0] a_mnt = {1'h1,io_a[22:0]};
  wire [23:0] b_mnt = {1'h1,io_b[22:0]};
  wire  _mntAzero_T_1 = |a_mnt[22:0];
  wire  mntAzero = ~(|a_mnt[22:0]);
  wire  _mntBzero_T_1 = |b_mnt[22:0];
  wire  mntBzero = ~(|b_mnt[22:0]);
  wire  expAone = &a_exp;
  wire  expBone = &b_exp;
  wire  Azero = ~(|a_exp) & mntAzero;
  wire  Bzero = ~(|b_exp) & mntBzero;
  wire  Inzero = Azero | Bzero;
  wire  Ainf = expAone & mntAzero;
  wire  Binf = expBone & mntBzero;
  wire  IninfN = Ainf & Binf;
  wire  IninfO = Ainf | Binf;
  wire  Anan = expAone & _mntAzero_T_1;
  wire  Bnan = expBone & _mntBzero_T_1;
  wire  Innan = Anan | Bnan;
  wire  flag_nan = Innan | IninfN;
  wire [8:0] _oExp1_T = {1'b0,$signed(a_exp)};
  wire [8:0] _oExp1_T_1 = {1'b0,$signed(b_exp)};
  wire [8:0] _oExp1_T_4 = $signed(_oExp1_T) + $signed(_oExp1_T_1);
  wire [7:0] _oExp1_T_5 = {1'b0,$signed(7'h7f)};
  wire [8:0] _GEN_15 = {{1{_oExp1_T_5[7]}},_oExp1_T_5};
  wire [8:0] oExp1 = $signed(_oExp1_T_4) - $signed(_GEN_15);
  wire  flag_zero1 = $signed(oExp1) < 9'sh0;
  wire [47:0] mntmul = a_mnt * b_mnt;
  wire [1:0] _oExp2_T_1 = {1'b0,$signed(mntmul[47])};
  wire [8:0] _GEN_16 = {{7{_oExp2_T_1[1]}},_oExp2_T_1};
  wire [8:0] oExp2 = $signed(oExp1) + $signed(_GEN_16);
  wire [48:0] _GEN_2 = {{1'd0}, mntmul};
  wire [48:0] norm_mntmul = _GEN_2 << ~mntmul[47];
  wire  R = norm_mntmul[23];
  wire  M0 = norm_mntmul[24];
  wire  S = |norm_mntmul[22:0];
  wire  rb0 = R & (M0 | S);
  wire  R2 = S | R;
  wire  oSgn = a_sgn ^ b_sgn;
  wire  rb2 = R2 & ~oSgn;
  wire  rb3 = R2 & oSgn;
  wire  _GEN_0 = io_round == 2'h2 ? rb2 : rb3;
  wire  _GEN_1 = io_round == 2'h1 ? 1'h0 : _GEN_0;
  wire  RB = io_round == 2'h0 ? rb0 : _GEN_1;
  wire [23:0] _GEN_17 = {{23'd0}, RB};
  wire [24:0] rounded_mnt = norm_mntmul[47:24] + _GEN_17;
  wire [1:0] _oExp3_T_1 = {1'b0,$signed(rounded_mnt[24])};
  wire [8:0] _GEN_18 = {{7{_oExp3_T_1[1]}},_oExp3_T_1};
  wire [8:0] oExp3 = $signed(oExp2) + $signed(_GEN_18);
  wire  flag_zero2 = $signed(oExp3) < 9'sh0;
  wire  flag_zero = Inzero | flag_zero1 | flag_zero2;
  wire  flag_inf1 = $signed(oExp1) >= 9'shff;
  wire  flag_inf2 = $signed(oExp2) == 9'shff;
  wire  flag_inf3 = $signed(oExp3) == 9'shff;
  wire  flag_inf = IninfO | flag_inf1 | flag_inf2 | flag_inf3;
  wire [23:0] norm_rounded_mnt = rounded_mnt[24] ? rounded_mnt[24:1] : rounded_mnt[23:0];
  wire [2:0] cond = {flag_nan,flag_inf,flag_zero};
  wire [23:0] _GEN_3 = cond >= 3'h4 ? 24'hc00000 : 24'hffffff;
  wire  _GEN_5 = cond >= 3'h4 ? 1'h0 : oSgn;
  wire [23:0] _GEN_6 = cond == 3'h2 ? 24'h0 : _GEN_3;
  wire  _GEN_8 = cond == 3'h2 ? oSgn : _GEN_5;
  wire [23:0] _GEN_9 = cond == 3'h1 ? 24'h0 : _GEN_6;
  wire [7:0] _GEN_10 = cond == 3'h1 ? 8'h0 : 8'hff;
  wire  _GEN_11 = cond == 3'h1 ? oSgn : _GEN_8;
  wire [23:0] o_mnt = cond == 3'h0 ? {{1'd0}, norm_rounded_mnt[22:0]} : _GEN_9;
  wire [7:0] o_exp4 = cond == 3'h0 ? oExp3[7:0] : _GEN_10;
  wire  o_Sgn = cond == 3'h0 ? oSgn : _GEN_11;
  wire [8:0] _io_o_T = {o_Sgn,o_exp4};
  
  assign io_o = {_io_o_T,o_mnt[22:0]};
  
endmodule