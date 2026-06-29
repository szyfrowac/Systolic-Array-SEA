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

  //exponent input
  wire [8:0] _diff_exp_T = {1'b0,$signed(a_exp)};
  wire [8:0] _diff_exp_T_1 = {1'b0,$signed(b_exp)};

  //exponent subtraction
  wire [8:0] diff_exp = $signed(_diff_exp_T) - $signed(_diff_exp_T_1);
  wire  alb_exp = $signed(diff_exp) < 9'sh0;

  //mantissa mux
  wire [23:0] a_mnts = alb_exp ? b_mnt : a_mnt;

  wire [27:0] _sum1_T_1 = {1'h0,a_mnts,3'h0}; //directly goes to adder
  wire [8:0] _diff_exp_mag_T_2 = 9'sh0 - $signed(diff_exp);

  //manntissa mux
  wire [23:0] b_mnts = alb_exp ? a_mnt : b_mnt;
  wire [48:0] _shifted_b_mnts_2pw_T = {b_mnts,25'h0};
  
  //exponent mux
  wire [8:0] diff_exp_mag = alb_exp ? $signed(_diff_exp_mag_T_2) : $signed(diff_exp);
  wire [7:0] o_exp1 = alb_exp ? b_exp : a_exp;

  // =========================================================================
  // PIPELINE REGISTERS & LOGIC
  // =========================================================================
  // Stage 1 -> 2
  reg [48:0] stg2_shifted_b_mnts_2pw_T;
  reg [8:0]  stg2_diff_exp_mag;
  reg [27:0] stg2_sum1_T_1;
  reg [7:0]  stg2_o_exp1;
  reg        stg2_Inzero;
  reg        stg2_IninfO;
  reg        stg2_flag_nan;
  reg        stg2_ioa_sgn;

  // VRSH and GRS Generator (Stage 2)
  wire [48:0] shifted_b_mnts_2pw = stg2_shifted_b_mnts_2pw_T >> stg2_diff_exp_mag;
  wire [23:0] shifted_b_mnts = shifted_b_mnts_2pw[48:25];
  wire  G1 = shifted_b_mnts_2pw[24];
  wire  R1 = shifted_b_mnts_2pw[23];
  wire  S1 = |shifted_b_mnts_2pw[22:0] | stg2_diff_exp_mag > 9'h32;
  wire [26:0] _sum1_T_2 = {shifted_b_mnts,G1,R1,S1};
  wire [27:0] _GEN_0 = {{1'd0}, _sum1_T_2};

  // Stage 2 -> 3
  reg [27:0] stg3_GEN_0;
  reg [27:0] stg3_sum1_T_1;
  reg [7:0]  stg3_o_exp1;
  reg        stg3_Inzero;
  reg        stg3_IninfO;
  reg        stg3_flag_nan;
  reg        stg3_ioa_sgn;

  //Adder (Stage 3)
  wire [28:0] sum1 = stg3_sum1_T_1 + stg3_GEN_0;
  wire  flag_zero1 = sum1 == 29'h0;
  wire  flag_zero = stg3_Inzero | flag_zero1;
  wire  carrySignBit = sum1[27];
  
  // Stage 3 -> 4
  reg [28:0] stg4_sum1;
  reg        stg4_flag_zero;
  reg [7:0]  stg4_o_exp1;
  reg        stg4_IninfO;
  reg        stg4_flag_nan;
  reg        stg4_ioa_sgn;

  // Normalisation (Stage 4)
  wire [7:0] _o_exp_add_T_2 = stg4_o_exp1 + 8'h1;
  wire [7:0] o_exp_add = stg4_sum1[27] ? _o_exp_add_T_2 : stg4_o_exp1;
  wire  flag_inf1 = o_exp_add >= 8'hff;
  wire  flag_inf = stg4_IninfO | flag_inf1 | ioflag_inf2;
  wire  _norm_sum_add_T_4 = stg4_sum1[1] | stg4_sum1[0]; 
  wire [26:0] _norm_sum_add_T_5 = {stg4_sum1[27:2],_norm_sum_add_T_4}; 
  wire [1:0] _cond_T = {stg4_flag_nan,flag_inf}; 

  always @(posedge clock) begin
    if (reset) begin
      stg2_shifted_b_mnts_2pw_T <= 49'h0;
      stg2_diff_exp_mag         <= 9'h0;
      stg2_sum1_T_1             <= 28'h0;
      stg2_o_exp1               <= 8'h0;
      stg2_Inzero               <= 1'b0;
      stg2_IninfO               <= 1'b0;
      stg2_flag_nan             <= 1'b0;
      stg2_ioa_sgn              <= 1'b0;

      stg3_GEN_0                <= 28'h0;
      stg3_sum1_T_1             <= 28'h0;
      stg3_o_exp1               <= 8'h0;
      stg3_Inzero               <= 1'b0;
      stg3_IninfO               <= 1'b0;
      stg3_flag_nan             <= 1'b0;
      stg3_ioa_sgn              <= 1'b0;

      stg4_sum1                 <= 29'h0;
      stg4_flag_zero            <= 1'b0;
      stg4_o_exp1               <= 8'h0;
      stg4_IninfO               <= 1'b0;
      stg4_flag_nan             <= 1'b0;
      stg4_ioa_sgn              <= 1'b0;
    end else begin
      stg2_shifted_b_mnts_2pw_T <= _shifted_b_mnts_2pw_T;
      stg2_diff_exp_mag         <= diff_exp_mag;
      stg2_sum1_T_1             <= _sum1_T_1;
      stg2_o_exp1               <= o_exp1;
      stg2_Inzero               <= Inzero;
      stg2_IninfO               <= IninfO;
      stg2_flag_nan             <= flag_nan;
      stg2_ioa_sgn              <= ioa[31];

      stg3_GEN_0                <= _GEN_0;
      stg3_sum1_T_1             <= stg2_sum1_T_1;
      stg3_o_exp1               <= stg2_o_exp1;
      stg3_Inzero               <= stg2_Inzero;
      stg3_IninfO               <= stg2_IninfO;
      stg3_flag_nan             <= stg2_flag_nan;
      stg3_ioa_sgn              <= stg2_ioa_sgn;

      stg4_sum1                 <= sum1;
      stg4_flag_zero            <= flag_zero;
      stg4_o_exp1               <= stg3_o_exp1;
      stg4_IninfO               <= stg3_IninfO;
      stg4_flag_nan             <= stg3_flag_nan;
      stg4_ioa_sgn              <= stg3_ioa_sgn;
    end
  end

  // Outputs
  assign ioo_sgn = stg4_ioa_sgn;
  assign iocond = {_cond_T,stg4_flag_zero};
  assign ioo_exp2 = stg4_sum1[27] ? _o_exp_add_T_2 : stg4_o_exp1;
  assign ionorm_sum = stg4_sum1[27] ? _norm_sum_add_T_5 : stg4_sum1[26:0];

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
