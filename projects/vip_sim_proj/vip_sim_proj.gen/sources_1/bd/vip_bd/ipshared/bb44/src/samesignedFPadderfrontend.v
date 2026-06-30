`timescale 1ns / 1ps

module samesignedFPadderfrontend(
  input         clock,
  input         reset,
  input  [31:0] io_a,
  input  [31:0] io_b,
  output [31:0] io_o,
  input  [1:0]  io_round
);

  wire  adderFrontend_clock = clock;
  wire  adderFrontend_reset = reset;
  wire [31:0] adderFrontend_ioa = io_a;
  wire [31:0] adderFrontend_iob = io_b;
  wire  adderFrontend_ioo_sgn;
  wire [2:0] adderFrontend_iocond_partial;
  wire [7:0] adderFrontend_ioo_exp2;
  wire [26:0] adderFrontend_ionorm_sum;

  // Pipeline Registers (Stage 4 -> Stage 5)
  reg [26:0] reg_ionorm_sum;
  reg [7:0]  reg_ioo_exp2;
  reg        reg_ioo_sgn;
  reg [2:0]  reg_iocond_partial;
  reg [1:0]  reg_io_round;

  always @(posedge clock) begin
    if (reset) begin
      reg_ionorm_sum <= 27'h0;
      reg_ioo_exp2   <= 8'h0;
      reg_ioo_sgn    <= 1'b0;
      reg_iocond_partial <= 3'h0;
      reg_io_round   <= 2'h0;
    end else begin
      reg_ionorm_sum <= adderFrontend_ionorm_sum;
      reg_ioo_exp2   <= adderFrontend_ioo_exp2;
      reg_ioo_sgn    <= adderFrontend_ioo_sgn;
      reg_iocond_partial <= adderFrontend_iocond_partial;
      reg_io_round   <= io_round;
    end
  end

  samesignedFPadder adderFrontend (
    .clock(adderFrontend_clock),
    .reset(adderFrontend_reset),
    .ioa(adderFrontend_ioa),
    .iob(adderFrontend_iob),
    .ioflag_inf2(1'b0), // Tie to zero to compute partial iocond
    .ioo_sgn(adderFrontend_ioo_sgn),
    .iocond(adderFrontend_iocond_partial),
    .ioo_exp2(adderFrontend_ioo_exp2),
    .ionorm_sum(adderFrontend_ionorm_sum)
  );

  wire [26:0] roundUnit_io_norm_sum = reg_ionorm_sum;
  wire [1:0] roundUnit_io_round = reg_io_round;
  wire  roundUnit_io_o_sgn = reg_ioo_sgn;
  wire [7:0] roundUnit_io_o_exp2 = reg_ioo_exp2;
  wire  roundUnit_io_flag_inf2;
  wire [7:0] roundUnit_io_o_exp3;
  wire [23:0] roundUnit_io_normalized_norm_sum_rounding;
  
  roundingUnit roundUnit (
    .io_norm_sum(roundUnit_io_norm_sum),
    .io_round(roundUnit_io_round),
    .io_o_sgn(roundUnit_io_o_sgn),
    .io_o_exp2(roundUnit_io_o_exp2),
    .io_flag_inf2(roundUnit_io_flag_inf2),
    .io_o_exp3(roundUnit_io_o_exp3),
    .io_normalized_norm_sum_rounding(roundUnit_io_normalized_norm_sum_rounding)
  );

  wire [2:0] final_iocond = {reg_iocond_partial[2], reg_iocond_partial[1] | roundUnit_io_flag_inf2, reg_iocond_partial[0]};

  wire [23:0] _GEN_0 = final_iocond >= 3'h4 ? 24'hc00000 : 24'hffffff;
  wire [23:0] _GEN_2 = final_iocond == 3'h2 ? 24'h0 : _GEN_0;
  wire [23:0] _GEN_4 = final_iocond == 3'h1 ? 24'h0 : _GEN_2;
  wire [7:0] _GEN_5 = final_iocond == 3'h1 ? 8'h0 : 8'hff;
  wire [23:0] normalized_norm_sum_rounding = roundUnit_io_normalized_norm_sum_rounding;
  wire [23:0] o_mnt = final_iocond == 3'h0 ? normalized_norm_sum_rounding : _GEN_4;
  wire [7:0] o_exp3 = roundUnit_io_o_exp3;
  wire [7:0] o_exp4 = final_iocond == 3'h0 ? o_exp3 : _GEN_5;
  wire [8:0] _io_o_T = {reg_ioo_sgn, o_exp4};
  
  assign io_o = {_io_o_T,o_mnt[22:0]};
  
endmodule

