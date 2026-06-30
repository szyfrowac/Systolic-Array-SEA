// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Tue Jun 30 08:54:11 2026
// Host        : phanikar-Latitude-5410 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top system_axi_dma_1_0 -prefix
//               system_axi_dma_1_0_ system_axi_dma_0_0_sim_netlist.v
// Design      : system_axi_dma_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_axi_dma_1_0_axi_datamover
   (m_axis_mm2s_tvalid,
    m_axis_mm2s_tlast,
    m_axi_mm2s_arlen,
    m_axi_mm2s_arburst,
    m_axi_mm2s_arvalid,
    s_axis_mm2s_cmd_tready,
    m_axis_mm2s_sts_tvalid_int,
    mm2s_decerr_i,
    mm2s_interr_i,
    mm2s_slverr_i,
    m_axi_mm2s_rready,
    mm2s_halt_cmplt,
    m_axi_mm2s_araddr,
    m_axi_mm2s_arsize,
    m_axis_mm2s_tdata,
    m_axis_mm2s_tkeep,
    m_axi_mm2s_aclk,
    m_axi_mm2s_rdata,
    s_axi_lite_aclk,
    out,
    mm2s_sts_received,
    s_axis_mm2s_cmd_tvalid_split,
    m_axis_mm2s_sts_tready,
    m_axi_mm2s_rlast,
    m_axi_mm2s_rvalid,
    m_axi_mm2s_rresp,
    m_axis_mm2s_tready,
    m_axi_mm2s_arready,
    halt,
    D);
  output m_axis_mm2s_tvalid;
  output m_axis_mm2s_tlast;
  output [0:0]m_axi_mm2s_arlen;
  output [0:0]m_axi_mm2s_arburst;
  output m_axi_mm2s_arvalid;
  output s_axis_mm2s_cmd_tready;
  output m_axis_mm2s_sts_tvalid_int;
  output mm2s_decerr_i;
  output mm2s_interr_i;
  output mm2s_slverr_i;
  output m_axi_mm2s_rready;
  output mm2s_halt_cmplt;
  output [31:0]m_axi_mm2s_araddr;
  output [1:0]m_axi_mm2s_arsize;
  output [255:0]m_axis_mm2s_tdata;
  output [31:0]m_axis_mm2s_tkeep;
  input m_axi_mm2s_aclk;
  input [255:0]m_axi_mm2s_rdata;
  input s_axi_lite_aclk;
  input out;
  input mm2s_sts_received;
  input s_axis_mm2s_cmd_tvalid_split;
  input m_axis_mm2s_sts_tready;
  input m_axi_mm2s_rlast;
  input m_axi_mm2s_rvalid;
  input [1:0]m_axi_mm2s_rresp;
  input m_axis_mm2s_tready;
  input m_axi_mm2s_arready;
  input halt;
  input [47:0]D;

  wire [47:0]D;
  wire halt;
  wire m_axi_mm2s_aclk;
  wire [31:0]m_axi_mm2s_araddr;
  wire [0:0]m_axi_mm2s_arburst;
  wire [0:0]m_axi_mm2s_arlen;
  wire m_axi_mm2s_arready;
  wire [1:0]m_axi_mm2s_arsize;
  wire m_axi_mm2s_arvalid;
  wire [255:0]m_axi_mm2s_rdata;
  wire m_axi_mm2s_rlast;
  wire m_axi_mm2s_rready;
  wire [1:0]m_axi_mm2s_rresp;
  wire m_axi_mm2s_rvalid;
  wire m_axis_mm2s_sts_tready;
  wire m_axis_mm2s_sts_tvalid_int;
  wire [255:0]m_axis_mm2s_tdata;
  wire [31:0]m_axis_mm2s_tkeep;
  wire m_axis_mm2s_tlast;
  wire m_axis_mm2s_tready;
  wire m_axis_mm2s_tvalid;
  wire mm2s_decerr_i;
  wire mm2s_halt_cmplt;
  wire mm2s_interr_i;
  wire mm2s_slverr_i;
  wire mm2s_sts_received;
  wire out;
  (* DONT_TOUCH *) wire s_axi_lite_aclk;
  wire s_axis_mm2s_cmd_tready;
  wire s_axis_mm2s_cmd_tvalid_split;

  system_axi_dma_1_0_axi_datamover_mm2s_full_wrap \GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER 
       (.D(D),
        .\USE_SINGLE_REG.sig_regfifo_full_reg_reg (m_axis_mm2s_sts_tvalid_int),
        .halt(halt),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axi_mm2s_araddr(m_axi_mm2s_araddr),
        .m_axi_mm2s_arburst(m_axi_mm2s_arburst),
        .m_axi_mm2s_arlen(m_axi_mm2s_arlen),
        .m_axi_mm2s_arready(m_axi_mm2s_arready),
        .m_axi_mm2s_arsize(m_axi_mm2s_arsize),
        .m_axi_mm2s_arvalid(m_axi_mm2s_arvalid),
        .m_axi_mm2s_rdata(m_axi_mm2s_rdata),
        .m_axi_mm2s_rlast(m_axi_mm2s_rlast),
        .m_axi_mm2s_rready(m_axi_mm2s_rready),
        .m_axi_mm2s_rresp(m_axi_mm2s_rresp),
        .m_axi_mm2s_rvalid(m_axi_mm2s_rvalid),
        .m_axis_mm2s_sts_tready(m_axis_mm2s_sts_tready),
        .m_axis_mm2s_tdata(m_axis_mm2s_tdata),
        .m_axis_mm2s_tkeep(m_axis_mm2s_tkeep),
        .m_axis_mm2s_tlast(m_axis_mm2s_tlast),
        .m_axis_mm2s_tready(m_axis_mm2s_tready),
        .m_axis_mm2s_tvalid(m_axis_mm2s_tvalid),
        .mm2s_decerr_i(mm2s_decerr_i),
        .mm2s_halt_cmplt(mm2s_halt_cmplt),
        .mm2s_interr_i(mm2s_interr_i),
        .mm2s_slverr_i(mm2s_slverr_i),
        .mm2s_sts_received(mm2s_sts_received),
        .out(out),
        .s_axis_mm2s_cmd_tready(s_axis_mm2s_cmd_tready),
        .s_axis_mm2s_cmd_tvalid_split(s_axis_mm2s_cmd_tvalid_split));
endmodule

module system_axi_dma_1_0_axi_datamover_addr_cntl
   (out,
    sig_posted_to_axi_reg_0,
    FIFO_Full_reg,
    m_axi_mm2s_arlen,
    m_axi_mm2s_arburst,
    m_axi_mm2s_arvalid,
    sig_init_done,
    \USE_SRL_FIFO.sig_wr_fifo ,
    sig_inhibit_rdy_n,
    sig_calc_error_reg_reg_0,
    m_axi_mm2s_araddr,
    m_axi_mm2s_arsize,
    SS,
    m_axi_mm2s_aclk,
    sig_init_done_reg,
    sig_mstr2addr_cmd_valid,
    sig_data2addr_stop_req,
    sig_sf_allow_addr_req,
    sig_halt_reg_dly3,
    sig_cmd_stat_rst_user_reg_n_cdc_from,
    m_axi_mm2s_arready,
    in);
  output out;
  output sig_posted_to_axi_reg_0;
  output FIFO_Full_reg;
  output [0:0]m_axi_mm2s_arlen;
  output [0:0]m_axi_mm2s_arburst;
  output m_axi_mm2s_arvalid;
  output sig_init_done;
  output \USE_SRL_FIFO.sig_wr_fifo ;
  output sig_inhibit_rdy_n;
  output sig_calc_error_reg_reg_0;
  output [31:0]m_axi_mm2s_araddr;
  output [1:0]m_axi_mm2s_arsize;
  input [0:0]SS;
  input m_axi_mm2s_aclk;
  input sig_init_done_reg;
  input sig_mstr2addr_cmd_valid;
  input sig_data2addr_stop_req;
  input sig_sf_allow_addr_req;
  input sig_halt_reg_dly3;
  input sig_cmd_stat_rst_user_reg_n_cdc_from;
  input m_axi_mm2s_arready;
  input [34:0]in;

  wire FIFO_Full_reg;
  wire \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_43 ;
  wire \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_5 ;
  wire [0:0]SS;
  wire \USE_SRL_FIFO.sig_wr_fifo ;
  wire [34:0]in;
  wire m_axi_mm2s_aclk;
  wire [31:0]m_axi_mm2s_araddr;
  wire [0:0]m_axi_mm2s_arburst;
  wire [0:0]m_axi_mm2s_arlen;
  wire m_axi_mm2s_arready;
  wire [1:0]m_axi_mm2s_arsize;
  wire m_axi_mm2s_arvalid;
  wire sig_addr2rsc_calc_error;
  wire sig_addr_reg_empty;
  wire sig_addr_reg_full;
  wire [50:4]sig_aq_fifo_data_out;
  wire sig_calc_error_reg_reg_0;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from;
  wire sig_data2addr_stop_req;
  wire sig_halt_reg_dly3;
  wire sig_inhibit_rdy_n;
  wire sig_init_done;
  wire sig_init_done_reg;
  wire sig_mstr2addr_cmd_valid;
  wire \sig_next_addr_reg[31]_i_1_n_0 ;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_posted_to_axi;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_posted_to_axi_2;
  wire sig_push_addr_reg1_out;
  wire sig_sf_allow_addr_req;

  assign out = sig_posted_to_axi_2;
  assign sig_posted_to_axi_reg_0 = sig_posted_to_axi;
  system_axi_dma_1_0_axi_datamover_fifo__parameterized1 \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO 
       (.FIFO_Full_reg(FIFO_Full_reg),
        .\INFERRED_GEN.cnt_i_reg[2] (\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_43 ),
        .SS(SS),
        .in(in),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .out({sig_aq_fifo_data_out[50],sig_aq_fifo_data_out[47:46],sig_aq_fifo_data_out[44],sig_aq_fifo_data_out[36:4]}),
        .sel(\USE_SRL_FIFO.sig_wr_fifo ),
        .sig_addr_reg_empty(sig_addr_reg_empty),
        .sig_calc_error_reg_reg(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_5 ),
        .sig_cmd_stat_rst_user_reg_n_cdc_from(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .sig_data2addr_stop_req(sig_data2addr_stop_req),
        .sig_inhibit_rdy_n_reg_0(sig_inhibit_rdy_n),
        .sig_init_done(sig_init_done),
        .sig_init_done_reg_0(sig_init_done_reg),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid),
        .sig_push_addr_reg1_out(sig_push_addr_reg1_out),
        .sig_sf_allow_addr_req(sig_sf_allow_addr_req));
  FDSE #(
    .INIT(1'b0)) 
    sig_addr_reg_empty_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(1'b0),
        .Q(sig_addr_reg_empty),
        .S(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    sig_addr_reg_full_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(1'b1),
        .Q(sig_addr_reg_full),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    sig_addr_valid_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_5 ),
        .Q(m_axi_mm2s_arvalid),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[50]),
        .Q(sig_addr2rsc_calc_error),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1FFF)) 
    sig_halt_cmplt_i_2
       (.I0(sig_addr2rsc_calc_error),
        .I1(sig_addr_reg_empty),
        .I2(sig_data2addr_stop_req),
        .I3(sig_halt_reg_dly3),
        .O(sig_calc_error_reg_reg_0));
  LUT4 #(
    .INIT(16'h40FF)) 
    \sig_next_addr_reg[31]_i_1 
       (.I0(sig_addr2rsc_calc_error),
        .I1(sig_addr_reg_full),
        .I2(m_axi_mm2s_arready),
        .I3(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .O(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[4]),
        .Q(m_axi_mm2s_araddr[0]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[14]),
        .Q(m_axi_mm2s_araddr[10]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[15]),
        .Q(m_axi_mm2s_araddr[11]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[16]),
        .Q(m_axi_mm2s_araddr[12]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[17]),
        .Q(m_axi_mm2s_araddr[13]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[18]),
        .Q(m_axi_mm2s_araddr[14]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[15] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[19]),
        .Q(m_axi_mm2s_araddr[15]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[16] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[20]),
        .Q(m_axi_mm2s_araddr[16]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[17] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[21]),
        .Q(m_axi_mm2s_araddr[17]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[18] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[22]),
        .Q(m_axi_mm2s_araddr[18]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[19] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[23]),
        .Q(m_axi_mm2s_araddr[19]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[5]),
        .Q(m_axi_mm2s_araddr[1]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[20] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[24]),
        .Q(m_axi_mm2s_araddr[20]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[21] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[25]),
        .Q(m_axi_mm2s_araddr[21]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[22] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[26]),
        .Q(m_axi_mm2s_araddr[22]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[23] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[27]),
        .Q(m_axi_mm2s_araddr[23]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[24] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[28]),
        .Q(m_axi_mm2s_araddr[24]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[25] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[29]),
        .Q(m_axi_mm2s_araddr[25]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[26] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[30]),
        .Q(m_axi_mm2s_araddr[26]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[27] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[31]),
        .Q(m_axi_mm2s_araddr[27]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[28] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[32]),
        .Q(m_axi_mm2s_araddr[28]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[29] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[33]),
        .Q(m_axi_mm2s_araddr[29]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[6]),
        .Q(m_axi_mm2s_araddr[2]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[30] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[34]),
        .Q(m_axi_mm2s_araddr[30]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[31] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[35]),
        .Q(m_axi_mm2s_araddr[31]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[7]),
        .Q(m_axi_mm2s_araddr[3]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[8]),
        .Q(m_axi_mm2s_araddr[4]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[9]),
        .Q(m_axi_mm2s_araddr[5]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[10]),
        .Q(m_axi_mm2s_araddr[6]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[11]),
        .Q(m_axi_mm2s_araddr[7]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[12]),
        .Q(m_axi_mm2s_araddr[8]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[13]),
        .Q(m_axi_mm2s_araddr[9]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_burst_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[47]),
        .Q(m_axi_mm2s_arburst),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[36]),
        .Q(m_axi_mm2s_arlen),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_size_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[44]),
        .Q(m_axi_mm2s_arsize[0]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_size_reg_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[46]),
        .Q(m_axi_mm2s_arsize[1]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_posted_to_axi_2_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_43 ),
        .Q(sig_posted_to_axi_2),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_posted_to_axi_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_43 ),
        .Q(sig_posted_to_axi),
        .R(1'b0));
endmodule

module system_axi_dma_1_0_axi_datamover_cmd_status
   (sig_init_done,
    sig_cmd2mstr_cmd_valid,
    s_axis_mm2s_cmd_tready,
    \USE_SINGLE_REG.sig_regfifo_full_reg_reg ,
    sig_stat2rsc_status_ready,
    mm2s_decerr_i,
    mm2s_interr_i,
    mm2s_slverr_i,
    E,
    sig_init_reg2_reg,
    sig_init_reg2_reg_0,
    sig_init_reg2_reg_1,
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0] ,
    Q,
    SS,
    sig_mmap_reset_reg,
    m_axi_mm2s_aclk,
    \USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ,
    mm2s_sts_received,
    s_axis_mm2s_cmd_tvalid_split,
    sig_cmd_stat_rst_user_reg_n_cdc_from,
    sig_init_done_0,
    sig_init_done_1,
    sig_init_done_2,
    sig_rsc2stat_status_valid,
    m_axis_mm2s_sts_tready,
    sig_calc_error_reg_reg,
    sig_calc_error_reg_reg_0,
    sig_push_input_reg11_out,
    in,
    \USE_SINGLE_REG.sig_regfifo_empty_reg0 ,
    D,
    sig_rsc2stat_status);
  output sig_init_done;
  output sig_cmd2mstr_cmd_valid;
  output s_axis_mm2s_cmd_tready;
  output \USE_SINGLE_REG.sig_regfifo_full_reg_reg ;
  output sig_stat2rsc_status_ready;
  output mm2s_decerr_i;
  output mm2s_interr_i;
  output mm2s_slverr_i;
  output [0:0]E;
  output sig_init_reg2_reg;
  output sig_init_reg2_reg_0;
  output sig_init_reg2_reg_1;
  output \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0] ;
  output [47:0]Q;
  input [0:0]SS;
  input sig_mmap_reset_reg;
  input m_axi_mm2s_aclk;
  input \USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ;
  input mm2s_sts_received;
  input s_axis_mm2s_cmd_tvalid_split;
  input sig_cmd_stat_rst_user_reg_n_cdc_from;
  input sig_init_done_0;
  input sig_init_done_1;
  input sig_init_done_2;
  input sig_rsc2stat_status_valid;
  input m_axis_mm2s_sts_tready;
  input sig_calc_error_reg_reg;
  input sig_calc_error_reg_reg_0;
  input sig_push_input_reg11_out;
  input [0:0]in;
  input \USE_SINGLE_REG.sig_regfifo_empty_reg0 ;
  input [47:0]D;
  input [2:0]sig_rsc2stat_status;

  wire [47:0]D;
  wire [0:0]E;
  wire I_CMD_FIFO_n_4;
  wire [47:0]Q;
  wire [0:0]SS;
  wire \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0] ;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg0 ;
  wire \USE_SINGLE_REG.sig_regfifo_full_reg_reg ;
  wire \USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ;
  wire [0:0]in;
  wire m_axi_mm2s_aclk;
  wire m_axis_mm2s_sts_tready;
  wire mm2s_decerr_i;
  wire mm2s_interr_i;
  wire mm2s_slverr_i;
  wire mm2s_sts_received;
  wire s_axis_mm2s_cmd_tready;
  wire s_axis_mm2s_cmd_tvalid_split;
  wire sig_calc_error_reg_reg;
  wire sig_calc_error_reg_reg_0;
  wire sig_cmd2mstr_cmd_valid;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from;
  wire sig_init_done;
  wire sig_init_done_0;
  wire sig_init_done_1;
  wire sig_init_done_2;
  wire sig_init_done_3;
  wire sig_init_reg2_reg;
  wire sig_init_reg2_reg_0;
  wire sig_init_reg2_reg_1;
  wire sig_mmap_reset_reg;
  wire sig_push_input_reg11_out;
  wire [2:0]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;
  wire sig_stat2rsc_status_ready;

  system_axi_dma_1_0_axi_datamover_fifo__parameterized0 \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO 
       (.SS(SS),
        .\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 (sig_stat2rsc_status_ready),
        .\USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 (\USE_SINGLE_REG.sig_regfifo_full_reg_reg ),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axis_mm2s_sts_tready(m_axis_mm2s_sts_tready),
        .mm2s_decerr_i(mm2s_decerr_i),
        .mm2s_interr_i(mm2s_interr_i),
        .mm2s_slverr_i(mm2s_slverr_i),
        .mm2s_sts_received(mm2s_sts_received),
        .sig_cmd_stat_rst_user_reg_n_cdc_from(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .sig_init_done(sig_init_done_3),
        .sig_init_done_reg_0(I_CMD_FIFO_n_4),
        .sig_rsc2stat_status(sig_rsc2stat_status),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid));
  system_axi_dma_1_0_axi_datamover_fifo I_CMD_FIFO
       (.D(D),
        .E(E),
        .Q(Q),
        .SS(SS),
        .\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0]_0 (\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0] ),
        .\USE_SINGLE_REG.sig_regfifo_empty_reg0 (\USE_SINGLE_REG.sig_regfifo_empty_reg0 ),
        .\USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 (\USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ),
        .in(in),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .s_axis_mm2s_cmd_tready(s_axis_mm2s_cmd_tready),
        .s_axis_mm2s_cmd_tvalid_split(s_axis_mm2s_cmd_tvalid_split),
        .sig_calc_error_reg_reg(sig_calc_error_reg_reg),
        .sig_calc_error_reg_reg_0(sig_calc_error_reg_reg_0),
        .sig_cmd2mstr_cmd_valid(sig_cmd2mstr_cmd_valid),
        .sig_cmd_stat_rst_user_reg_n_cdc_from(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .sig_init_done(sig_init_done),
        .sig_init_done_0(sig_init_done_0),
        .sig_init_done_1(sig_init_done_1),
        .sig_init_done_2(sig_init_done_2),
        .sig_init_done_3(sig_init_done_3),
        .sig_init_reg2_reg_0(I_CMD_FIFO_n_4),
        .sig_init_reg2_reg_1(sig_init_reg2_reg),
        .sig_init_reg2_reg_2(sig_init_reg2_reg_0),
        .sig_init_reg2_reg_3(sig_init_reg2_reg_1),
        .sig_mmap_reset_reg(sig_mmap_reset_reg),
        .sig_push_input_reg11_out(sig_push_input_reg11_out));
endmodule

module system_axi_dma_1_0_axi_datamover_fifo
   (sig_init_done,
    sig_cmd2mstr_cmd_valid,
    s_axis_mm2s_cmd_tready,
    E,
    sig_init_reg2_reg_0,
    sig_init_reg2_reg_1,
    sig_init_reg2_reg_2,
    sig_init_reg2_reg_3,
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0]_0 ,
    Q,
    SS,
    sig_mmap_reset_reg,
    m_axi_mm2s_aclk,
    \USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ,
    s_axis_mm2s_cmd_tvalid_split,
    sig_cmd_stat_rst_user_reg_n_cdc_from,
    sig_init_done_3,
    sig_init_done_0,
    sig_init_done_1,
    sig_init_done_2,
    sig_calc_error_reg_reg,
    sig_calc_error_reg_reg_0,
    sig_push_input_reg11_out,
    in,
    \USE_SINGLE_REG.sig_regfifo_empty_reg0 ,
    D);
  output sig_init_done;
  output sig_cmd2mstr_cmd_valid;
  output s_axis_mm2s_cmd_tready;
  output [0:0]E;
  output sig_init_reg2_reg_0;
  output sig_init_reg2_reg_1;
  output sig_init_reg2_reg_2;
  output sig_init_reg2_reg_3;
  output \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0]_0 ;
  output [47:0]Q;
  input [0:0]SS;
  input sig_mmap_reset_reg;
  input m_axi_mm2s_aclk;
  input \USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ;
  input s_axis_mm2s_cmd_tvalid_split;
  input sig_cmd_stat_rst_user_reg_n_cdc_from;
  input sig_init_done_3;
  input sig_init_done_0;
  input sig_init_done_1;
  input sig_init_done_2;
  input sig_calc_error_reg_reg;
  input sig_calc_error_reg_reg_0;
  input sig_push_input_reg11_out;
  input [0:0]in;
  input \USE_SINGLE_REG.sig_regfifo_empty_reg0 ;
  input [47:0]D;

  wire [47:0]D;
  wire [0:0]E;
  wire \GEN_INCLUDE_MM2S_SF.I_RD_SF/OMIT_DRE_CNTL.I_DRE_CNTL_FIFO/sig_init_reg2 ;
  wire [47:0]Q;
  wire [0:0]SS;
  wire \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0]_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg0 ;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_i_1_n_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ;
  wire [0:0]in;
  wire m_axi_mm2s_aclk;
  wire s_axis_mm2s_cmd_tready;
  wire s_axis_mm2s_cmd_tvalid_split;
  wire sig_calc_error_reg_reg;
  wire sig_calc_error_reg_reg_0;
  wire sig_cmd2mstr_cmd_valid;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from;
  wire sig_init_done;
  wire sig_init_done_0;
  wire sig_init_done_1;
  wire sig_init_done_2;
  wire sig_init_done_3;
  wire sig_init_done_i_1__3_n_0;
  wire sig_init_reg2_reg_0;
  wire sig_init_reg2_reg_1;
  wire sig_init_reg2_reg_2;
  wire sig_init_reg2_reg_3;
  wire sig_mmap_reset_reg;
  wire sig_push_input_reg11_out;

  LUT2 #(
    .INIT(4'h8)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg[66]_i_1 
       (.I0(s_axis_mm2s_cmd_tready),
        .I1(s_axis_mm2s_cmd_tvalid_split),
        .O(E));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[13]),
        .Q(Q[13]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[26] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[14]),
        .Q(Q[14]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[33] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[15]),
        .Q(Q[15]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[35] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[16]),
        .Q(Q[16]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[36] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[17]),
        .Q(Q[17]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[37] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[18]),
        .Q(Q[18]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[38] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[19]),
        .Q(Q[19]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[39] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[20]),
        .Q(Q[20]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[40] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[21]),
        .Q(Q[21]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[41] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[22]),
        .Q(Q[22]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[42] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[23]),
        .Q(Q[23]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[43] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[24]),
        .Q(Q[24]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[44] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[25]),
        .Q(Q[25]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[45] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[26]),
        .Q(Q[26]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[46] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[27]),
        .Q(Q[27]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[47] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[28]),
        .Q(Q[28]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[48] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[29]),
        .Q(Q[29]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[49] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[30]),
        .Q(Q[30]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[50] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[31]),
        .Q(Q[31]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[51] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[32]),
        .Q(Q[32]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[52] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[33]),
        .Q(Q[33]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[53] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[34]),
        .Q(Q[34]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[54] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[35]),
        .Q(Q[35]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[55] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[36]),
        .Q(Q[36]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[56] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[37]),
        .Q(Q[37]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[57] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[38]),
        .Q(Q[38]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[58] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[39]),
        .Q(Q[39]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[59] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[40]),
        .Q(Q[40]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[60] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[41]),
        .Q(Q[41]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[61] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[42]),
        .Q(Q[42]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[62] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[43]),
        .Q(Q[43]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[44]),
        .Q(Q[44]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[64] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[45]),
        .Q(Q[45]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[65] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[46]),
        .Q(Q[46]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[66] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[47]),
        .Q(Q[47]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(SS));
  LUT3 #(
    .INIT(8'hF4)) 
    \USE_SINGLE_REG.sig_regfifo_empty_reg_i_1 
       (.I0(s_axis_mm2s_cmd_tvalid_split),
        .I1(s_axis_mm2s_cmd_tready),
        .I2(\USE_SINGLE_REG.sig_regfifo_empty_reg0 ),
        .O(\USE_SINGLE_REG.sig_regfifo_empty_reg_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_empty_reg_i_1_n_0 ),
        .Q(s_axis_mm2s_cmd_tready),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_full_reg_reg 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ),
        .Q(sig_cmd2mstr_cmd_valid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0200FFFF02000000)) 
    sig_calc_error_reg_i_1
       (.I0(sig_calc_error_reg_reg),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(sig_calc_error_reg_reg_0),
        .I4(sig_push_input_reg11_out),
        .I5(in),
        .O(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    sig_init_done_i_1
       (.I0(\GEN_INCLUDE_MM2S_SF.I_RD_SF/OMIT_DRE_CNTL.I_DRE_CNTL_FIFO/sig_init_reg2 ),
        .I1(sig_mmap_reset_reg),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .I3(sig_init_done_3),
        .O(sig_init_reg2_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    sig_init_done_i_1__0
       (.I0(\GEN_INCLUDE_MM2S_SF.I_RD_SF/OMIT_DRE_CNTL.I_DRE_CNTL_FIFO/sig_init_reg2 ),
        .I1(sig_mmap_reset_reg),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .I3(sig_init_done_0),
        .O(sig_init_reg2_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    sig_init_done_i_1__1
       (.I0(\GEN_INCLUDE_MM2S_SF.I_RD_SF/OMIT_DRE_CNTL.I_DRE_CNTL_FIFO/sig_init_reg2 ),
        .I1(sig_mmap_reset_reg),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .I3(sig_init_done_1),
        .O(sig_init_reg2_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    sig_init_done_i_1__2
       (.I0(\GEN_INCLUDE_MM2S_SF.I_RD_SF/OMIT_DRE_CNTL.I_DRE_CNTL_FIFO/sig_init_reg2 ),
        .I1(sig_mmap_reset_reg),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .I3(sig_init_done_2),
        .O(sig_init_reg2_reg_3));
  LUT4 #(
    .INIT(16'h0080)) 
    sig_init_done_i_1__3
       (.I0(\GEN_INCLUDE_MM2S_SF.I_RD_SF/OMIT_DRE_CNTL.I_DRE_CNTL_FIFO/sig_init_reg2 ),
        .I1(sig_mmap_reset_reg),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .I3(sig_init_done),
        .O(sig_init_done_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_init_done_i_1__3_n_0),
        .Q(sig_init_done),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    sig_init_reg2_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_mmap_reset_reg),
        .Q(\GEN_INCLUDE_MM2S_SF.I_RD_SF/OMIT_DRE_CNTL.I_DRE_CNTL_FIFO/sig_init_reg2 ),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module system_axi_dma_1_0_axi_datamover_fifo__parameterized0
   (sig_init_done,
    \USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ,
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ,
    mm2s_decerr_i,
    mm2s_interr_i,
    mm2s_slverr_i,
    sig_init_done_reg_0,
    m_axi_mm2s_aclk,
    SS,
    mm2s_sts_received,
    sig_rsc2stat_status_valid,
    sig_cmd_stat_rst_user_reg_n_cdc_from,
    m_axis_mm2s_sts_tready,
    sig_rsc2stat_status);
  output sig_init_done;
  output \USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ;
  output \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ;
  output mm2s_decerr_i;
  output mm2s_interr_i;
  output mm2s_slverr_i;
  input sig_init_done_reg_0;
  input m_axi_mm2s_aclk;
  input [0:0]SS;
  input mm2s_sts_received;
  input sig_rsc2stat_status_valid;
  input sig_cmd_stat_rst_user_reg_n_cdc_from;
  input m_axis_mm2s_sts_tready;
  input [2:0]sig_rsc2stat_status;

  wire [0:0]SS;
  wire \USE_SINGLE_REG.sig_regfifo_dout_reg[4]_i_1_n_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_dout_reg[5]_i_1_n_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_dout_reg[6]_i_1_n_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_i_1__0_n_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_full_reg_i_1__0_n_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ;
  wire m_axi_mm2s_aclk;
  wire [6:4]m_axis_mm2s_sts_tdata_int;
  wire m_axis_mm2s_sts_tready;
  wire mm2s_decerr_i;
  wire mm2s_interr_i;
  wire mm2s_slverr_i;
  wire mm2s_sts_received;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from;
  wire sig_init_done;
  wire sig_init_done_reg_0;
  wire [2:0]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;

  LUT4 #(
    .INIT(16'hBF80)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg[4]_i_1 
       (.I0(sig_rsc2stat_status[0]),
        .I1(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ),
        .I2(sig_rsc2stat_status_valid),
        .I3(m_axis_mm2s_sts_tdata_int[4]),
        .O(\USE_SINGLE_REG.sig_regfifo_dout_reg[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg[5]_i_1 
       (.I0(sig_rsc2stat_status[1]),
        .I1(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ),
        .I2(sig_rsc2stat_status_valid),
        .I3(m_axis_mm2s_sts_tdata_int[5]),
        .O(\USE_SINGLE_REG.sig_regfifo_dout_reg[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg[6]_i_1 
       (.I0(sig_rsc2stat_status[2]),
        .I1(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ),
        .I2(sig_rsc2stat_status_valid),
        .I3(m_axis_mm2s_sts_tdata_int[6]),
        .O(\USE_SINGLE_REG.sig_regfifo_dout_reg[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg[4]_i_1_n_0 ),
        .Q(m_axis_mm2s_sts_tdata_int[4]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg[5]_i_1_n_0 ),
        .Q(m_axis_mm2s_sts_tdata_int[5]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg[6]_i_1_n_0 ),
        .Q(m_axis_mm2s_sts_tdata_int[6]),
        .R(SS));
  LUT5 #(
    .INIT(32'hF8FFF8F8)) 
    \USE_SINGLE_REG.sig_regfifo_empty_reg_i_1__0 
       (.I0(\USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ),
        .I1(m_axis_mm2s_sts_tready),
        .I2(sig_init_done),
        .I3(sig_rsc2stat_status_valid),
        .I4(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ),
        .O(\USE_SINGLE_REG.sig_regfifo_empty_reg_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_empty_reg_i_1__0_n_0 ),
        .Q(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ),
        .R(SS));
  LUT5 #(
    .INIT(32'h00F08080)) 
    \USE_SINGLE_REG.sig_regfifo_full_reg_i_1__0 
       (.I0(sig_rsc2stat_status_valid),
        .I1(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .I3(m_axis_mm2s_sts_tready),
        .I4(\USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ),
        .O(\USE_SINGLE_REG.sig_regfifo_full_reg_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_full_reg_reg 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_full_reg_i_1__0_n_0 ),
        .Q(\USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h20)) 
    mm2s_decerr_i_i_1
       (.I0(m_axis_mm2s_sts_tdata_int[5]),
        .I1(mm2s_sts_received),
        .I2(\USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ),
        .O(mm2s_decerr_i));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h20)) 
    mm2s_interr_i_i_1
       (.I0(m_axis_mm2s_sts_tdata_int[4]),
        .I1(mm2s_sts_received),
        .I2(\USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ),
        .O(mm2s_interr_i));
  LUT3 #(
    .INIT(8'h20)) 
    mm2s_slverr_i_i_1
       (.I0(m_axis_mm2s_sts_tdata_int[6]),
        .I1(mm2s_sts_received),
        .I2(\USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ),
        .O(mm2s_slverr_i));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_init_done_reg_0),
        .Q(sig_init_done),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module system_axi_dma_1_0_axi_datamover_fifo__parameterized1
   (FIFO_Full_reg,
    sig_init_done,
    sel,
    sig_push_addr_reg1_out,
    sig_inhibit_rdy_n_reg_0,
    sig_calc_error_reg_reg,
    out,
    \INFERRED_GEN.cnt_i_reg[2] ,
    SS,
    m_axi_mm2s_aclk,
    sig_init_done_reg_0,
    sig_mstr2addr_cmd_valid,
    sig_data2addr_stop_req,
    sig_sf_allow_addr_req,
    sig_addr_reg_empty,
    sig_cmd_stat_rst_user_reg_n_cdc_from,
    in);
  output FIFO_Full_reg;
  output sig_init_done;
  output sel;
  output sig_push_addr_reg1_out;
  output sig_inhibit_rdy_n_reg_0;
  output sig_calc_error_reg_reg;
  output [36:0]out;
  output \INFERRED_GEN.cnt_i_reg[2] ;
  input [0:0]SS;
  input m_axi_mm2s_aclk;
  input sig_init_done_reg_0;
  input sig_mstr2addr_cmd_valid;
  input sig_data2addr_stop_req;
  input sig_sf_allow_addr_req;
  input sig_addr_reg_empty;
  input sig_cmd_stat_rst_user_reg_n_cdc_from;
  input [34:0]in;

  wire FIFO_Full_reg;
  wire \INFERRED_GEN.cnt_i_reg[2] ;
  wire [0:0]SS;
  wire [34:0]in;
  wire m_axi_mm2s_aclk;
  wire [36:0]out;
  wire sel;
  wire sig_addr_reg_empty;
  wire sig_calc_error_reg_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from;
  wire sig_data2addr_stop_req;
  wire sig_inhibit_rdy_n_i_1_n_0;
  wire sig_inhibit_rdy_n_reg_0;
  wire sig_init_done;
  wire sig_init_done_reg_0;
  wire sig_mstr2addr_cmd_valid;
  wire sig_push_addr_reg1_out;
  wire sig_sf_allow_addr_req;

  system_axi_dma_1_0_srl_fifo_f \USE_SRL_FIFO.I_SYNC_FIFO 
       (.FIFO_Full_reg(FIFO_Full_reg),
        .FIFO_Full_reg_0(sel),
        .\INFERRED_GEN.cnt_i_reg[1] (sig_inhibit_rdy_n_reg_0),
        .\INFERRED_GEN.cnt_i_reg[2] (\INFERRED_GEN.cnt_i_reg[2] ),
        .SS(SS),
        .in(in),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .out(out),
        .sig_addr_reg_empty(sig_addr_reg_empty),
        .sig_calc_error_reg_reg(sig_calc_error_reg_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .sig_data2addr_stop_req(sig_data2addr_stop_req),
        .sig_halt_reg_reg(sig_push_addr_reg1_out),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid),
        .sig_sf_allow_addr_req(sig_sf_allow_addr_req));
  LUT2 #(
    .INIT(4'hE)) 
    sig_inhibit_rdy_n_i_1
       (.I0(sig_init_done),
        .I1(sig_inhibit_rdy_n_reg_0),
        .O(sig_inhibit_rdy_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_inhibit_rdy_n_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_inhibit_rdy_n_i_1_n_0),
        .Q(sig_inhibit_rdy_n_reg_0),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_init_done_reg_0),
        .Q(sig_init_done),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module system_axi_dma_1_0_axi_datamover_fifo__parameterized2
   (FIFO_Full_reg,
    sig_init_done,
    sig_push_dqual_reg,
    sel,
    sig_inhibit_rdy_n_reg_0,
    E,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    D,
    out,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    \sig_addr_posted_cntr_reg[0] ,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg_1,
    m_axi_mm2s_rlast_0,
    SS,
    m_axi_mm2s_aclk,
    sig_init_done_reg_0,
    sig_mstr2data_cmd_valid,
    sig_dqual_reg_empty,
    sig_dqual_reg_empty_reg,
    sig_next_sequential_reg,
    \sig_dbeat_cntr_reg[0] ,
    \sig_dbeat_cntr_reg[5] ,
    Q,
    sig_cmd_stat_rst_user_reg_n_cdc_from,
    sig_ld_new_cmd_reg,
    sig_dqual_reg_empty_reg_0,
    sig_rsc2stat_status_valid,
    sig_stat2rsc_status_ready,
    \sig_dbeat_cntr[7]_i_3 ,
    \sig_dbeat_cntr[7]_i_3_0 ,
    \sig_dbeat_cntr[7]_i_3_1 ,
    full,
    sig_dqual_reg_empty_reg_1,
    m_axi_mm2s_rvalid,
    sig_dqual_reg_full,
    \sig_dbeat_cntr[7]_i_3_2 ,
    sig_last_dbeat_reg,
    sig_first_dbeat_reg,
    m_axi_mm2s_rlast,
    in);
  output FIFO_Full_reg;
  output sig_init_done;
  output sig_push_dqual_reg;
  output sel;
  output sig_inhibit_rdy_n_reg_0;
  output [0:0]E;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  output [7:0]D;
  output [68:0]out;
  output sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  output \sig_addr_posted_cntr_reg[0] ;
  output sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  output sig_cmd_stat_rst_user_reg_n_cdc_from_reg_1;
  output m_axi_mm2s_rlast_0;
  input [0:0]SS;
  input m_axi_mm2s_aclk;
  input sig_init_done_reg_0;
  input sig_mstr2data_cmd_valid;
  input sig_dqual_reg_empty;
  input sig_dqual_reg_empty_reg;
  input sig_next_sequential_reg;
  input \sig_dbeat_cntr_reg[0] ;
  input \sig_dbeat_cntr_reg[5] ;
  input [7:0]Q;
  input sig_cmd_stat_rst_user_reg_n_cdc_from;
  input sig_ld_new_cmd_reg;
  input sig_dqual_reg_empty_reg_0;
  input sig_rsc2stat_status_valid;
  input sig_stat2rsc_status_ready;
  input \sig_dbeat_cntr[7]_i_3 ;
  input \sig_dbeat_cntr[7]_i_3_0 ;
  input \sig_dbeat_cntr[7]_i_3_1 ;
  input full;
  input sig_dqual_reg_empty_reg_1;
  input m_axi_mm2s_rvalid;
  input sig_dqual_reg_full;
  input \sig_dbeat_cntr[7]_i_3_2 ;
  input sig_last_dbeat_reg;
  input sig_first_dbeat_reg;
  input m_axi_mm2s_rlast;
  input [68:0]in;

  wire [7:0]D;
  wire [0:0]E;
  wire FIFO_Full_reg;
  wire [7:0]Q;
  wire [0:0]SS;
  wire full;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire [68:0]in;
  wire m_axi_mm2s_aclk;
  wire m_axi_mm2s_rlast;
  wire m_axi_mm2s_rlast_0;
  wire m_axi_mm2s_rvalid;
  wire [68:0]out;
  wire sel;
  wire \sig_addr_posted_cntr_reg[0] ;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg_1;
  wire \sig_dbeat_cntr[7]_i_3 ;
  wire \sig_dbeat_cntr[7]_i_3_0 ;
  wire \sig_dbeat_cntr[7]_i_3_1 ;
  wire \sig_dbeat_cntr[7]_i_3_2 ;
  wire \sig_dbeat_cntr_reg[0] ;
  wire \sig_dbeat_cntr_reg[5] ;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_empty_reg;
  wire sig_dqual_reg_empty_reg_0;
  wire sig_dqual_reg_empty_reg_1;
  wire sig_dqual_reg_full;
  wire sig_first_dbeat_reg;
  wire sig_inhibit_rdy_n_i_1_n_0;
  wire sig_inhibit_rdy_n_reg_0;
  wire sig_init_done;
  wire sig_init_done_reg_0;
  wire sig_last_dbeat_reg;
  wire sig_ld_new_cmd_reg;
  wire sig_mstr2data_cmd_valid;
  wire sig_next_sequential_reg;
  wire sig_push_dqual_reg;
  wire sig_rsc2stat_status_valid;
  wire sig_stat2rsc_status_ready;

  system_axi_dma_1_0_srl_fifo_f__parameterized0 \USE_SRL_FIFO.I_SYNC_FIFO 
       (.D(D),
        .E(E),
        .FIFO_Full_reg(FIFO_Full_reg),
        .FIFO_Full_reg_0(sel),
        .\INFERRED_GEN.cnt_i_reg[0] (sig_inhibit_rdy_n_reg_0),
        .Q(Q),
        .SS(SS),
        .full(full),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ),
        .in(in),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axi_mm2s_rlast(m_axi_mm2s_rlast),
        .m_axi_mm2s_rlast_0(m_axi_mm2s_rlast_0),
        .m_axi_mm2s_rvalid(m_axi_mm2s_rvalid),
        .out(out),
        .\sig_addr_posted_cntr_reg[0] (\sig_addr_posted_cntr_reg[0] ),
        .sig_cmd_stat_rst_user_reg_n_cdc_from(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg_1(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_1),
        .\sig_dbeat_cntr[7]_i_3 (\sig_dbeat_cntr[7]_i_3 ),
        .\sig_dbeat_cntr[7]_i_3_0 (\sig_dbeat_cntr[7]_i_3_0 ),
        .\sig_dbeat_cntr[7]_i_3_1 (\sig_dbeat_cntr[7]_i_3_1 ),
        .\sig_dbeat_cntr[7]_i_3_2 (\sig_dbeat_cntr[7]_i_3_2 ),
        .\sig_dbeat_cntr_reg[0] (\sig_dbeat_cntr_reg[0] ),
        .\sig_dbeat_cntr_reg[5] (\sig_dbeat_cntr_reg[5] ),
        .sig_dqual_reg_empty(sig_dqual_reg_empty),
        .sig_dqual_reg_empty_reg(sig_dqual_reg_empty_reg),
        .sig_dqual_reg_empty_reg_0(sig_dqual_reg_empty_reg_0),
        .sig_dqual_reg_empty_reg_1(sig_dqual_reg_empty_reg_1),
        .sig_dqual_reg_full(sig_dqual_reg_full),
        .sig_first_dbeat_reg(sig_first_dbeat_reg),
        .sig_last_dbeat_reg(sig_last_dbeat_reg),
        .sig_ld_new_cmd_reg(sig_ld_new_cmd_reg),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_next_sequential_reg(sig_next_sequential_reg),
        .sig_next_sequential_reg_reg(sig_push_dqual_reg),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_stat2rsc_status_ready(sig_stat2rsc_status_ready));
  LUT2 #(
    .INIT(4'hE)) 
    sig_inhibit_rdy_n_i_1
       (.I0(sig_init_done),
        .I1(sig_inhibit_rdy_n_reg_0),
        .O(sig_inhibit_rdy_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_inhibit_rdy_n_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_inhibit_rdy_n_i_1_n_0),
        .Q(sig_inhibit_rdy_n_reg_0),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_init_done_reg_0),
        .Q(sig_init_done),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module system_axi_dma_1_0_axi_datamover_fifo__parameterized3
   (FIFO_Full_reg,
    sig_init_done,
    Q,
    FIFO_Full_reg_0,
    sig_inhibit_rdy_n_reg_0,
    SS,
    m_axi_mm2s_aclk,
    sig_init_done_reg_0,
    \INFERRED_GEN.cnt_i_reg[2] ,
    sig_mstr2sf_cmd_valid,
    \OMIT_UNPACKING.lsig_ld_cmd );
  output FIFO_Full_reg;
  output sig_init_done;
  output [0:0]Q;
  output FIFO_Full_reg_0;
  output sig_inhibit_rdy_n_reg_0;
  input [0:0]SS;
  input m_axi_mm2s_aclk;
  input sig_init_done_reg_0;
  input \INFERRED_GEN.cnt_i_reg[2] ;
  input sig_mstr2sf_cmd_valid;
  input \OMIT_UNPACKING.lsig_ld_cmd ;

  wire FIFO_Full_reg;
  wire FIFO_Full_reg_0;
  wire \INFERRED_GEN.cnt_i_reg[2] ;
  wire \OMIT_UNPACKING.lsig_ld_cmd ;
  wire [0:0]Q;
  wire [0:0]SS;
  wire m_axi_mm2s_aclk;
  wire sig_inhibit_rdy_n_i_1_n_0;
  wire sig_inhibit_rdy_n_reg_0;
  wire sig_init_done;
  wire sig_init_done_reg_0;
  wire sig_mstr2sf_cmd_valid;

  system_axi_dma_1_0_srl_fifo_f__parameterized1 \USE_SRL_FIFO.I_SYNC_FIFO 
       (.FIFO_Full_reg(FIFO_Full_reg),
        .FIFO_Full_reg_0(FIFO_Full_reg_0),
        .\INFERRED_GEN.cnt_i_reg[0] (sig_inhibit_rdy_n_reg_0),
        .\INFERRED_GEN.cnt_i_reg[2] (\INFERRED_GEN.cnt_i_reg[2] ),
        .\OMIT_UNPACKING.lsig_ld_cmd (\OMIT_UNPACKING.lsig_ld_cmd ),
        .Q(Q),
        .SS(SS),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .sig_mstr2sf_cmd_valid(sig_mstr2sf_cmd_valid));
  LUT2 #(
    .INIT(4'hE)) 
    sig_inhibit_rdy_n_i_1
       (.I0(sig_init_done),
        .I1(sig_inhibit_rdy_n_reg_0),
        .O(sig_inhibit_rdy_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_inhibit_rdy_n_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_inhibit_rdy_n_i_1_n_0),
        .Q(sig_inhibit_rdy_n_reg_0),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_init_done_reg_0),
        .Q(sig_init_done),
        .R(1'b0));
endmodule

module system_axi_dma_1_0_axi_datamover_mm2s_full_wrap
   (m_axis_mm2s_tvalid,
    m_axis_mm2s_tlast,
    m_axi_mm2s_arlen,
    m_axi_mm2s_arburst,
    m_axi_mm2s_arvalid,
    s_axis_mm2s_cmd_tready,
    \USE_SINGLE_REG.sig_regfifo_full_reg_reg ,
    mm2s_decerr_i,
    mm2s_interr_i,
    mm2s_slverr_i,
    m_axi_mm2s_rready,
    mm2s_halt_cmplt,
    m_axi_mm2s_araddr,
    m_axi_mm2s_arsize,
    m_axis_mm2s_tdata,
    m_axis_mm2s_tkeep,
    m_axi_mm2s_aclk,
    m_axi_mm2s_rdata,
    out,
    mm2s_sts_received,
    s_axis_mm2s_cmd_tvalid_split,
    m_axis_mm2s_sts_tready,
    m_axi_mm2s_rlast,
    m_axi_mm2s_rvalid,
    m_axi_mm2s_rresp,
    m_axis_mm2s_tready,
    m_axi_mm2s_arready,
    halt,
    D);
  output m_axis_mm2s_tvalid;
  output m_axis_mm2s_tlast;
  output [0:0]m_axi_mm2s_arlen;
  output [0:0]m_axi_mm2s_arburst;
  output m_axi_mm2s_arvalid;
  output s_axis_mm2s_cmd_tready;
  output \USE_SINGLE_REG.sig_regfifo_full_reg_reg ;
  output mm2s_decerr_i;
  output mm2s_interr_i;
  output mm2s_slverr_i;
  output m_axi_mm2s_rready;
  output mm2s_halt_cmplt;
  output [31:0]m_axi_mm2s_araddr;
  output [1:0]m_axi_mm2s_arsize;
  output [255:0]m_axis_mm2s_tdata;
  output [31:0]m_axis_mm2s_tkeep;
  input m_axi_mm2s_aclk;
  input [255:0]m_axi_mm2s_rdata;
  input out;
  input mm2s_sts_received;
  input s_axis_mm2s_cmd_tvalid_split;
  input m_axis_mm2s_sts_tready;
  input m_axi_mm2s_rlast;
  input m_axi_mm2s_rvalid;
  input [1:0]m_axi_mm2s_rresp;
  input m_axis_mm2s_tready;
  input m_axi_mm2s_arready;
  input halt;
  input [47:0]D;

  wire [47:0]D;
  wire \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.sig_wr_fifo ;
  wire \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_inhibit_rdy_n ;
  wire \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_init_done ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.sig_wr_fifo ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_inhibit_rdy_n ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_done ;
  wire \GEN_INCLUDE_MM2S_SF.I_RD_SF_n_290 ;
  wire \GEN_INCLUDE_MM2S_SF.I_RD_SF_n_291 ;
  wire \GEN_INCLUDE_MM2S_SF.I_RD_SF_n_295 ;
  wire \GEN_INCLUDE_MM2S_SF.I_RD_SF_n_298 ;
  wire I_ADDR_CNTL_n_0;
  wire I_ADDR_CNTL_n_2;
  wire I_ADDR_CNTL_n_9;
  wire \I_CMD_FIFO/USE_SINGLE_REG.sig_push_regfifo ;
  wire \I_CMD_FIFO/USE_SINGLE_REG.sig_regfifo_empty_reg0 ;
  wire \I_CMD_FIFO/sig_init_done ;
  wire I_CMD_STATUS_n_10;
  wire I_CMD_STATUS_n_11;
  wire I_CMD_STATUS_n_12;
  wire I_CMD_STATUS_n_9;
  wire I_MSTR_PCC_n_109;
  wire I_MSTR_PCC_n_110;
  wire I_MSTR_PCC_n_41;
  wire I_RD_DATA_CNTL_n_0;
  wire I_RD_DATA_CNTL_n_52;
  wire \OMIT_DRE_CNTL.I_DRE_CNTL_FIFO/sig_inhibit_rdy_n ;
  wire \OMIT_DRE_CNTL.I_DRE_CNTL_FIFO/sig_init_done ;
  wire \OMIT_UNPACKING.lsig_cmd_loaded ;
  wire \USE_SINGLE_REG.sig_regfifo_full_reg_reg ;
  wire halt;
  wire m_axi_mm2s_aclk;
  wire [31:0]m_axi_mm2s_araddr;
  wire [0:0]m_axi_mm2s_arburst;
  wire [0:0]m_axi_mm2s_arlen;
  wire m_axi_mm2s_arready;
  wire [1:0]m_axi_mm2s_arsize;
  wire m_axi_mm2s_arvalid;
  wire [255:0]m_axi_mm2s_rdata;
  wire m_axi_mm2s_rlast;
  wire m_axi_mm2s_rready;
  wire [1:0]m_axi_mm2s_rresp;
  wire m_axi_mm2s_rvalid;
  wire m_axis_mm2s_sts_tready;
  wire [255:0]m_axis_mm2s_tdata;
  wire [31:0]m_axis_mm2s_tkeep;
  wire m_axis_mm2s_tlast;
  wire m_axis_mm2s_tready;
  wire m_axis_mm2s_tvalid;
  wire mm2s_decerr_i;
  wire mm2s_halt_cmplt;
  wire mm2s_interr_i;
  wire mm2s_slverr_i;
  wire mm2s_sts_received;
  wire out;
  wire s_axis_mm2s_cmd_tready;
  wire s_axis_mm2s_cmd_tvalid_split;
  wire sig_addr2data_addr_posted;
  wire [2:0]sig_addr_posted_cntr;
  wire sig_cmd2mstr_cmd_valid;
  wire [66:0]sig_cmd2mstr_command;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from;
  wire sig_data2addr_stop_req;
  wire sig_data2rsc_decerr;
  wire sig_data2rsc_valid;
  wire sig_data2sf_cmd_cmplt;
  wire [288:288]sig_data_fifo_data_out;
  wire sig_data_fifo_full;
  wire sig_good_sin_strm_dbeat;
  wire sig_halt_reg_dly2;
  wire sig_halt_reg_dly3;
  wire sig_last_mmap_dbeat_reg;
  wire sig_mmap_reset_reg;
  wire [31:6]sig_mstr2addr_addr;
  wire [0:0]sig_mstr2addr_burst;
  wire sig_mstr2addr_cmd_valid;
  wire sig_mstr2data_cmd_cmplt;
  wire sig_mstr2data_cmd_valid;
  wire sig_mstr2data_eof;
  wire [31:0]sig_mstr2data_last_strb;
  wire [0:0]sig_mstr2data_len;
  wire [4:1]sig_mstr2data_saddr_lsb;
  wire sig_mstr2data_sequential;
  wire [31:0]sig_mstr2data_strt_strb;
  wire sig_mstr2sf_calc_error;
  wire sig_mstr2sf_cmd_valid;
  wire sig_mstr2sf_dre_src_align;
  wire sig_mstr2sf_strt_offset;
  wire sig_next_calc_error_reg;
  wire sig_push_input_reg11_out;
  wire sig_rd_sts_interr_reg0;
  wire sig_rd_sts_slverr_reg0;
  wire sig_rdc2sf_wlast;
  wire [31:0]sig_rdc2sf_wstrb;
  wire sig_rsc2data_ready;
  wire [6:4]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;
  wire sig_rst2all_stop_request;
  wire [255:0]sig_sf2dre_wdata;
  wire [31:0]sig_sf2dre_wstrb;
  wire sig_sf_allow_addr_req;
  wire sig_skid2dre_wready;
  wire sig_slast_with_stop;
  wire [31:31]sig_sstrb_stop_mask;
  wire sig_stat2rsc_status_ready;
  wire sig_stream_rst;

  system_axi_dma_1_0_axi_datamover_skid_buf \ENABLE_AXIS_SKID.I_MM2S_SKID_BUF 
       (.\OMIT_UNPACKING.lsig_cmd_loaded (\OMIT_UNPACKING.lsig_cmd_loaded ),
        .SS(sig_stream_rst),
        .dout({sig_data_fifo_data_out,sig_sf2dre_wstrb,sig_sf2dre_wdata}),
        .empty(\GEN_INCLUDE_MM2S_SF.I_RD_SF_n_290 ),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axis_mm2s_tdata(m_axis_mm2s_tdata),
        .m_axis_mm2s_tkeep(m_axis_mm2s_tkeep),
        .m_axis_mm2s_tlast(m_axis_mm2s_tlast),
        .m_axis_mm2s_tready(m_axis_mm2s_tready),
        .m_axis_mm2s_tvalid(m_axis_mm2s_tvalid),
        .out(sig_skid2dre_wready),
        .sig_cmd_stat_rst_user_reg_n_cdc_from(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .sig_halt_reg_dly2(sig_halt_reg_dly2),
        .sig_halt_reg_dly3(sig_halt_reg_dly3),
        .sig_m_valid_out_reg_0(\GEN_INCLUDE_MM2S_SF.I_RD_SF_n_298 ),
        .sig_mmap_reset_reg(sig_mmap_reset_reg),
        .sig_slast_with_stop(sig_slast_with_stop),
        .sig_sstrb_stop_mask(sig_sstrb_stop_mask),
        .\sig_sstrb_stop_mask_reg[31]_0 (I_RD_DATA_CNTL_n_52));
  system_axi_dma_1_0_axi_datamover_rd_sf \GEN_INCLUDE_MM2S_SF.I_RD_SF 
       (.FIFO_Full_reg(\GEN_INCLUDE_MM2S_SF.I_RD_SF_n_291 ),
        .FIFO_Full_reg_0(\GEN_INCLUDE_MM2S_SF.I_RD_SF_n_295 ),
        .\OMIT_UNPACKING.lsig_cmd_loaded (\OMIT_UNPACKING.lsig_cmd_loaded ),
        .SS(sig_stream_rst),
        .din({sig_data2sf_cmd_cmplt,sig_rdc2sf_wlast,sig_rdc2sf_wstrb,m_axi_mm2s_rdata}),
        .dout({sig_data_fifo_data_out,sig_sf2dre_wstrb,sig_sf2dre_wdata}),
        .empty(\GEN_INCLUDE_MM2S_SF.I_RD_SF_n_290 ),
        .full(sig_data_fifo_full),
        .\gen_fwft.empty_fwft_i_reg (\GEN_INCLUDE_MM2S_SF.I_RD_SF_n_298 ),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .out(sig_skid2dre_wready),
        .sig_cmd_stat_rst_user_reg_n_cdc_from(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .sig_inhibit_rdy_n(\OMIT_DRE_CNTL.I_DRE_CNTL_FIFO/sig_inhibit_rdy_n ),
        .sig_init_done(\OMIT_DRE_CNTL.I_DRE_CNTL_FIFO/sig_init_done ),
        .sig_init_done_reg(I_CMD_STATUS_n_11),
        .sig_last_mmap_dbeat_reg(sig_last_mmap_dbeat_reg),
        .sig_mstr2sf_cmd_valid(sig_mstr2sf_cmd_valid),
        .sig_ok_to_post_rd_addr_reg_0(I_ADDR_CNTL_n_0),
        .sig_sf_allow_addr_req(sig_sf_allow_addr_req),
        .sig_slast_with_stop(sig_slast_with_stop),
        .sig_sstrb_stop_mask(sig_sstrb_stop_mask),
        .wr_en(sig_good_sin_strm_dbeat));
  system_axi_dma_1_0_axi_datamover_addr_cntl I_ADDR_CNTL
       (.FIFO_Full_reg(I_ADDR_CNTL_n_2),
        .SS(sig_stream_rst),
        .\USE_SRL_FIFO.sig_wr_fifo (\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.sig_wr_fifo ),
        .in({sig_mstr2sf_calc_error,sig_mstr2addr_burst,sig_mstr2data_len,sig_mstr2addr_addr,sig_mstr2sf_strt_offset,sig_mstr2data_saddr_lsb,sig_mstr2sf_dre_src_align}),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axi_mm2s_araddr(m_axi_mm2s_araddr),
        .m_axi_mm2s_arburst(m_axi_mm2s_arburst),
        .m_axi_mm2s_arlen(m_axi_mm2s_arlen),
        .m_axi_mm2s_arready(m_axi_mm2s_arready),
        .m_axi_mm2s_arsize(m_axi_mm2s_arsize),
        .m_axi_mm2s_arvalid(m_axi_mm2s_arvalid),
        .out(I_ADDR_CNTL_n_0),
        .sig_calc_error_reg_reg_0(I_ADDR_CNTL_n_9),
        .sig_cmd_stat_rst_user_reg_n_cdc_from(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .sig_data2addr_stop_req(sig_data2addr_stop_req),
        .sig_halt_reg_dly3(sig_halt_reg_dly3),
        .sig_inhibit_rdy_n(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_inhibit_rdy_n ),
        .sig_init_done(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_init_done ),
        .sig_init_done_reg(I_CMD_STATUS_n_9),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid),
        .sig_posted_to_axi_reg_0(sig_addr2data_addr_posted),
        .sig_sf_allow_addr_req(sig_sf_allow_addr_req));
  system_axi_dma_1_0_axi_datamover_cmd_status I_CMD_STATUS
       (.D(D),
        .E(\I_CMD_FIFO/USE_SINGLE_REG.sig_push_regfifo ),
        .Q({sig_cmd2mstr_command[66:35],sig_cmd2mstr_command[33],sig_cmd2mstr_command[26],sig_cmd2mstr_command[13:0]}),
        .SS(sig_stream_rst),
        .\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0] (I_CMD_STATUS_n_12),
        .\USE_SINGLE_REG.sig_regfifo_empty_reg0 (\I_CMD_FIFO/USE_SINGLE_REG.sig_regfifo_empty_reg0 ),
        .\USE_SINGLE_REG.sig_regfifo_full_reg_reg (\USE_SINGLE_REG.sig_regfifo_full_reg_reg ),
        .\USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 (I_MSTR_PCC_n_41),
        .in(sig_mstr2sf_calc_error),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axis_mm2s_sts_tready(m_axis_mm2s_sts_tready),
        .mm2s_decerr_i(mm2s_decerr_i),
        .mm2s_interr_i(mm2s_interr_i),
        .mm2s_slverr_i(mm2s_slverr_i),
        .mm2s_sts_received(mm2s_sts_received),
        .s_axis_mm2s_cmd_tready(s_axis_mm2s_cmd_tready),
        .s_axis_mm2s_cmd_tvalid_split(s_axis_mm2s_cmd_tvalid_split),
        .sig_calc_error_reg_reg(I_MSTR_PCC_n_110),
        .sig_calc_error_reg_reg_0(I_MSTR_PCC_n_109),
        .sig_cmd2mstr_cmd_valid(sig_cmd2mstr_cmd_valid),
        .sig_cmd_stat_rst_user_reg_n_cdc_from(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .sig_init_done(\I_CMD_FIFO/sig_init_done ),
        .sig_init_done_0(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_init_done ),
        .sig_init_done_1(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_done ),
        .sig_init_done_2(\OMIT_DRE_CNTL.I_DRE_CNTL_FIFO/sig_init_done ),
        .sig_init_reg2_reg(I_CMD_STATUS_n_9),
        .sig_init_reg2_reg_0(I_CMD_STATUS_n_10),
        .sig_init_reg2_reg_1(I_CMD_STATUS_n_11),
        .sig_mmap_reset_reg(sig_mmap_reset_reg),
        .sig_push_input_reg11_out(sig_push_input_reg11_out),
        .sig_rsc2stat_status(sig_rsc2stat_status),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_stat2rsc_status_ready(sig_stat2rsc_status_ready));
  system_axi_dma_1_0_axi_datamover_pcc I_MSTR_PCC
       (.E(\I_CMD_FIFO/USE_SINGLE_REG.sig_push_regfifo ),
        .Q({sig_cmd2mstr_command[66:35],sig_cmd2mstr_command[33],sig_cmd2mstr_command[26],sig_cmd2mstr_command[13:0]}),
        .SS(sig_stream_rst),
        .\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[10] (I_MSTR_PCC_n_110),
        .\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[4] (I_MSTR_PCC_n_109),
        .\USE_SINGLE_REG.sig_regfifo_empty_reg0 (\I_CMD_FIFO/USE_SINGLE_REG.sig_regfifo_empty_reg0 ),
        .\USE_SRL_FIFO.sig_wr_fifo (\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.sig_wr_fifo ),
        .\USE_SRL_FIFO.sig_wr_fifo_0 (\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.sig_wr_fifo ),
        .in({sig_mstr2sf_calc_error,sig_mstr2addr_burst,sig_mstr2data_len,sig_mstr2addr_addr,sig_mstr2sf_strt_offset,sig_mstr2data_saddr_lsb,sig_mstr2sf_dre_src_align}),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .sig_calc_error_reg_reg_0({sig_mstr2data_cmd_cmplt,sig_mstr2data_eof,sig_mstr2data_last_strb,sig_mstr2data_strt_strb}),
        .sig_calc_error_reg_reg_1(I_CMD_STATUS_n_12),
        .sig_cmd2addr_valid_reg_0(I_ADDR_CNTL_n_2),
        .sig_cmd2data_valid_reg_0(I_RD_DATA_CNTL_n_0),
        .sig_cmd2dre_valid_reg_0(\GEN_INCLUDE_MM2S_SF.I_RD_SF_n_291 ),
        .sig_cmd2mstr_cmd_valid(sig_cmd2mstr_cmd_valid),
        .sig_cmd_stat_rst_user_reg_n_cdc_from(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(I_MSTR_PCC_n_41),
        .sig_inhibit_rdy_n(\OMIT_DRE_CNTL.I_DRE_CNTL_FIFO/sig_inhibit_rdy_n ),
        .sig_inhibit_rdy_n_1(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_inhibit_rdy_n ),
        .sig_inhibit_rdy_n_2(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_inhibit_rdy_n ),
        .sig_init_done(\I_CMD_FIFO/sig_init_done ),
        .sig_ld_xfer_reg_tmp_reg_0(\GEN_INCLUDE_MM2S_SF.I_RD_SF_n_295 ),
        .sig_mmap_reset_reg(sig_mmap_reset_reg),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_mstr2data_sequential(sig_mstr2data_sequential),
        .sig_mstr2sf_cmd_valid(sig_mstr2sf_cmd_valid),
        .sig_push_input_reg11_out(sig_push_input_reg11_out));
  system_axi_dma_1_0_axi_datamover_rddata_cntl I_RD_DATA_CNTL
       (.FIFO_Full_reg(I_RD_DATA_CNTL_n_0),
        .SS(sig_stream_rst),
        .\USE_SRL_FIFO.sig_wr_fifo (\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.sig_wr_fifo ),
        .din({sig_data2sf_cmd_cmplt,sig_rdc2sf_wlast,sig_rdc2sf_wstrb}),
        .full(sig_data_fifo_full),
        .in({sig_mstr2sf_calc_error,sig_mstr2data_cmd_cmplt,sig_mstr2data_sequential,sig_mstr2data_eof,sig_mstr2data_last_strb,sig_mstr2data_strt_strb,sig_mstr2data_len}),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axi_mm2s_rlast(m_axi_mm2s_rlast),
        .m_axi_mm2s_rready(m_axi_mm2s_rready),
        .m_axi_mm2s_rresp(m_axi_mm2s_rresp),
        .m_axi_mm2s_rvalid(m_axi_mm2s_rvalid),
        .sig_addr_posted_cntr(sig_addr_posted_cntr),
        .\sig_addr_posted_cntr_reg[2]_0 (sig_addr2data_addr_posted),
        .sig_cmd_stat_rst_user_reg_n_cdc_from(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .sig_data2addr_stop_req(sig_data2addr_stop_req),
        .sig_data2rsc_decerr(sig_data2rsc_decerr),
        .sig_data2rsc_valid(sig_data2rsc_valid),
        .sig_halt_reg_dly2(sig_halt_reg_dly2),
        .sig_halt_reg_dly3(sig_halt_reg_dly3),
        .sig_halt_reg_dly3_reg_0(I_RD_DATA_CNTL_n_52),
        .sig_inhibit_rdy_n(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_inhibit_rdy_n ),
        .sig_init_done(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_done ),
        .sig_init_done_reg(I_CMD_STATUS_n_10),
        .sig_last_mmap_dbeat_reg(sig_last_mmap_dbeat_reg),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_next_calc_error_reg(sig_next_calc_error_reg),
        .sig_rd_sts_interr_reg0(sig_rd_sts_interr_reg0),
        .sig_rd_sts_slverr_reg0(sig_rd_sts_slverr_reg0),
        .sig_rsc2data_ready(sig_rsc2data_ready),
        .sig_rsc2stat_status({sig_rsc2stat_status[6],sig_rsc2stat_status[4]}),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_rst2all_stop_request(sig_rst2all_stop_request),
        .sig_sstrb_stop_mask(sig_sstrb_stop_mask),
        .sig_stat2rsc_status_ready(sig_stat2rsc_status_ready),
        .wr_en(sig_good_sin_strm_dbeat));
  system_axi_dma_1_0_axi_datamover_rd_status_cntl I_RD_STATUS_CNTLR
       (.m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .sig_cmd_stat_rst_user_reg_n_cdc_from(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .sig_data2rsc_decerr(sig_data2rsc_decerr),
        .sig_data2rsc_valid(sig_data2rsc_valid),
        .sig_rd_sts_interr_reg0(sig_rd_sts_interr_reg0),
        .sig_rd_sts_slverr_reg0(sig_rd_sts_slverr_reg0),
        .sig_rsc2data_ready(sig_rsc2data_ready),
        .sig_rsc2stat_status(sig_rsc2stat_status),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_stat2rsc_status_ready(sig_stat2rsc_status_ready));
  system_axi_dma_1_0_axi_datamover_reset I_RESET
       (.SS(sig_stream_rst),
        .halt(halt),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .mm2s_halt_cmplt(mm2s_halt_cmplt),
        .out(out),
        .sig_addr_posted_cntr(sig_addr_posted_cntr),
        .sig_cmd_stat_rst_user_reg_n_cdc_from(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .sig_halt_cmplt_reg_0(I_ADDR_CNTL_n_9),
        .sig_next_calc_error_reg(sig_next_calc_error_reg),
        .sig_rst2all_stop_request(sig_rst2all_stop_request));
endmodule

module system_axi_dma_1_0_axi_datamover_pcc
   (sig_mmap_reset_reg,
    in,
    sig_mstr2sf_cmd_valid,
    sig_mstr2data_cmd_valid,
    sig_mstr2addr_cmd_valid,
    sig_mstr2data_sequential,
    sig_push_input_reg11_out,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    \USE_SINGLE_REG.sig_regfifo_empty_reg0 ,
    sig_calc_error_reg_reg_0,
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[4] ,
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[10] ,
    m_axi_mm2s_aclk,
    SS,
    sig_calc_error_reg_reg_1,
    E,
    sig_cmd_stat_rst_user_reg_n_cdc_from,
    sig_cmd2mstr_cmd_valid,
    sig_init_done,
    Q,
    sig_inhibit_rdy_n,
    sig_cmd2dre_valid_reg_0,
    \USE_SRL_FIFO.sig_wr_fifo ,
    sig_ld_xfer_reg_tmp_reg_0,
    \USE_SRL_FIFO.sig_wr_fifo_0 ,
    sig_inhibit_rdy_n_1,
    sig_cmd2data_valid_reg_0,
    sig_inhibit_rdy_n_2,
    sig_cmd2addr_valid_reg_0);
  output sig_mmap_reset_reg;
  output [34:0]in;
  output sig_mstr2sf_cmd_valid;
  output sig_mstr2data_cmd_valid;
  output sig_mstr2addr_cmd_valid;
  output sig_mstr2data_sequential;
  output sig_push_input_reg11_out;
  output sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  output \USE_SINGLE_REG.sig_regfifo_empty_reg0 ;
  output [65:0]sig_calc_error_reg_reg_0;
  output \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[4] ;
  output \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[10] ;
  input m_axi_mm2s_aclk;
  input [0:0]SS;
  input sig_calc_error_reg_reg_1;
  input [0:0]E;
  input sig_cmd_stat_rst_user_reg_n_cdc_from;
  input sig_cmd2mstr_cmd_valid;
  input sig_init_done;
  input [47:0]Q;
  input sig_inhibit_rdy_n;
  input sig_cmd2dre_valid_reg_0;
  input \USE_SRL_FIFO.sig_wr_fifo ;
  input sig_ld_xfer_reg_tmp_reg_0;
  input \USE_SRL_FIFO.sig_wr_fifo_0 ;
  input sig_inhibit_rdy_n_1;
  input sig_cmd2data_valid_reg_0;
  input sig_inhibit_rdy_n_2;
  input sig_cmd2addr_valid_reg_0;

  wire [0:0]E;
  wire \FSM_onehot_sig_pcc_sm_state[1]_i_1_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state[2]_i_1_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state[5]_i_1_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state[6]_i_1_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state[7]_i_1_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state_reg_n_0_[0] ;
  wire \FSM_onehot_sig_pcc_sm_state_reg_n_0_[1] ;
  wire \FSM_onehot_sig_pcc_sm_state_reg_n_0_[5] ;
  wire \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ;
  wire \FSM_onehot_sig_pcc_sm_state_reg_n_0_[7] ;
  wire [0:0]\GEN_32BIT_CASE.lsig_start_vect ;
  wire [47:0]Q;
  wire [0:0]SS;
  wire \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[10] ;
  wire \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[4] ;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg0 ;
  wire \USE_SRL_FIFO.sig_wr_fifo ;
  wire \USE_SRL_FIFO.sig_wr_fifo_0 ;
  wire g0_b10__0_n_0;
  wire g0_b11_n_0;
  wire g0_b12__0_n_0;
  wire g0_b13_n_0;
  wire g0_b14__0_n_0;
  wire g0_b15_n_0;
  wire g0_b17_n_0;
  wire g0_b18__0_n_0;
  wire g0_b19_n_0;
  wire g0_b1_i_10_n_0;
  wire g0_b1_i_11_n_0;
  wire g0_b1_i_12_n_0;
  wire g0_b1_i_13_n_0;
  wire g0_b1_i_14_n_0;
  wire g0_b1_i_6_n_0;
  wire g0_b1_i_7_n_0;
  wire g0_b1_i_8_n_0;
  wire g0_b1_i_9_n_0;
  wire g0_b1_n_0;
  wire g0_b20__0_n_0;
  wire g0_b21_n_0;
  wire g0_b22__0_n_0;
  wire g0_b23_n_0;
  wire g0_b24__0_n_0;
  wire g0_b25_n_0;
  wire g0_b26__0_n_0;
  wire g0_b27_n_0;
  wire g0_b28__0_n_0;
  wire g0_b29_n_0;
  wire g0_b2__0_n_0;
  wire g0_b30__0_n_0;
  wire g0_b31_n_0;
  wire g0_b3_n_0;
  wire g0_b4__0_n_0;
  wire g0_b5_n_0;
  wire g0_b6__0_n_0;
  wire g0_b7_n_0;
  wire g0_b8__0_n_0;
  wire g0_b9_n_0;
  wire \i_/i_/i__carry__0_n_0 ;
  wire \i_/i_/i__carry__0_n_1 ;
  wire \i_/i_/i__carry__0_n_2 ;
  wire \i_/i_/i__carry__0_n_3 ;
  wire \i_/i_/i__carry__0_n_4 ;
  wire \i_/i_/i__carry__0_n_5 ;
  wire \i_/i_/i__carry__0_n_6 ;
  wire \i_/i_/i__carry__0_n_7 ;
  wire \i_/i_/i__carry__1_n_0 ;
  wire \i_/i_/i__carry__1_n_1 ;
  wire \i_/i_/i__carry__1_n_2 ;
  wire \i_/i_/i__carry__1_n_3 ;
  wire \i_/i_/i__carry__1_n_4 ;
  wire \i_/i_/i__carry__1_n_5 ;
  wire \i_/i_/i__carry__1_n_6 ;
  wire \i_/i_/i__carry__1_n_7 ;
  wire \i_/i_/i__carry__2_n_1 ;
  wire \i_/i_/i__carry__2_n_2 ;
  wire \i_/i_/i__carry__2_n_3 ;
  wire \i_/i_/i__carry__2_n_4 ;
  wire \i_/i_/i__carry__2_n_5 ;
  wire \i_/i_/i__carry__2_n_6 ;
  wire \i_/i_/i__carry__2_n_7 ;
  wire \i_/i_/i__carry_n_0 ;
  wire \i_/i_/i__carry_n_1 ;
  wire \i_/i_/i__carry_n_2 ;
  wire \i_/i_/i__carry_n_3 ;
  wire \i_/i_/i__carry_n_4 ;
  wire \i_/i_/i__carry_n_5 ;
  wire \i_/i_/i__carry_n_6 ;
  wire \i_/i_/i__carry_n_7 ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire [34:0]in;
  wire m_axi_mm2s_aclk;
  wire p_1_in;
  wire [15:0]p_1_in__0;
  wire sig_addr_aligned_im0;
  wire sig_addr_aligned_ireg1;
  wire \sig_addr_cntr_im0_msh[0]_i_1_n_0 ;
  wire [15:0]sig_addr_cntr_im0_msh_reg;
  wire \sig_addr_cntr_incr_ireg2[0]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[1]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[2]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[3]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[4]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[5]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[6]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2_reg_n_0_[0] ;
  wire \sig_addr_cntr_incr_ireg2_reg_n_0_[1] ;
  wire \sig_addr_cntr_incr_ireg2_reg_n_0_[2] ;
  wire \sig_addr_cntr_incr_ireg2_reg_n_0_[3] ;
  wire \sig_addr_cntr_incr_ireg2_reg_n_0_[4] ;
  wire \sig_addr_cntr_incr_ireg2_reg_n_0_[5] ;
  wire \sig_addr_cntr_incr_ireg2_reg_n_0_[6] ;
  wire \sig_addr_cntr_lsh_im0[15]_i_1_n_0 ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[10] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[11] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[12] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[13] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[14] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[6] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[7] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[8] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[9] ;
  wire [31:0]sig_addr_cntr_lsh_kh;
  wire [5:0]sig_adjusted_addr_incr_im1;
  wire \sig_adjusted_addr_incr_ireg2[3]_i_2_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[3]_i_3_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[3]_i_4_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[3]_i_5_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[3]_i_6_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[3]_i_7_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[3]_i_8_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[3]_i_9_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[5]_i_2_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[5]_i_3_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[5]_i_4_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_1 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_2 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_3 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[5]_i_1_n_3 ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[3] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[4] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[5] ;
  wire sig_brst_cnt_eq_one_im0;
  wire sig_brst_cnt_eq_one_ireg1;
  wire sig_brst_cnt_eq_zero_im0;
  wire sig_brst_cnt_eq_zero_ireg1;
  wire sig_brst_cnt_eq_zero_ireg1_i_2_n_0;
  wire \sig_btt_cntr_im0[11]_i_2_n_0 ;
  wire \sig_btt_cntr_im0[11]_i_3_n_0 ;
  wire \sig_btt_cntr_im0[11]_i_4_n_0 ;
  wire \sig_btt_cntr_im0[11]_i_5_n_0 ;
  wire \sig_btt_cntr_im0[13]_i_2_n_0 ;
  wire \sig_btt_cntr_im0[13]_i_3_n_0 ;
  wire \sig_btt_cntr_im0[13]_i_4_n_0 ;
  wire \sig_btt_cntr_im0[3]_i_2_n_0 ;
  wire \sig_btt_cntr_im0[3]_i_3_n_0 ;
  wire \sig_btt_cntr_im0[3]_i_4_n_0 ;
  wire \sig_btt_cntr_im0[3]_i_5_n_0 ;
  wire \sig_btt_cntr_im0[3]_i_6_n_0 ;
  wire \sig_btt_cntr_im0[3]_i_7_n_0 ;
  wire \sig_btt_cntr_im0[3]_i_8_n_0 ;
  wire \sig_btt_cntr_im0[3]_i_9_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_2_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_3_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_4_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_5_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_6_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_7_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_8_n_0 ;
  wire \sig_btt_cntr_im0_reg[11]_i_1_n_0 ;
  wire \sig_btt_cntr_im0_reg[11]_i_1_n_1 ;
  wire \sig_btt_cntr_im0_reg[11]_i_1_n_2 ;
  wire \sig_btt_cntr_im0_reg[11]_i_1_n_3 ;
  wire \sig_btt_cntr_im0_reg[11]_i_1_n_4 ;
  wire \sig_btt_cntr_im0_reg[11]_i_1_n_5 ;
  wire \sig_btt_cntr_im0_reg[11]_i_1_n_6 ;
  wire \sig_btt_cntr_im0_reg[11]_i_1_n_7 ;
  wire \sig_btt_cntr_im0_reg[13]_i_1_n_3 ;
  wire \sig_btt_cntr_im0_reg[13]_i_1_n_6 ;
  wire \sig_btt_cntr_im0_reg[13]_i_1_n_7 ;
  wire \sig_btt_cntr_im0_reg[3]_i_1_n_0 ;
  wire \sig_btt_cntr_im0_reg[3]_i_1_n_1 ;
  wire \sig_btt_cntr_im0_reg[3]_i_1_n_2 ;
  wire \sig_btt_cntr_im0_reg[3]_i_1_n_3 ;
  wire \sig_btt_cntr_im0_reg[3]_i_1_n_4 ;
  wire \sig_btt_cntr_im0_reg[3]_i_1_n_5 ;
  wire \sig_btt_cntr_im0_reg[3]_i_1_n_6 ;
  wire \sig_btt_cntr_im0_reg[3]_i_1_n_7 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_0 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_1 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_2 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_3 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_4 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_5 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_6 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_7 ;
  wire \sig_btt_cntr_im0_reg_n_0_[0] ;
  wire \sig_btt_cntr_im0_reg_n_0_[10] ;
  wire \sig_btt_cntr_im0_reg_n_0_[11] ;
  wire \sig_btt_cntr_im0_reg_n_0_[12] ;
  wire \sig_btt_cntr_im0_reg_n_0_[13] ;
  wire \sig_btt_cntr_im0_reg_n_0_[1] ;
  wire \sig_btt_cntr_im0_reg_n_0_[2] ;
  wire \sig_btt_cntr_im0_reg_n_0_[3] ;
  wire \sig_btt_cntr_im0_reg_n_0_[4] ;
  wire \sig_btt_cntr_im0_reg_n_0_[5] ;
  wire \sig_btt_cntr_im0_reg_n_0_[6] ;
  wire \sig_btt_cntr_im0_reg_n_0_[7] ;
  wire \sig_btt_cntr_im0_reg_n_0_[8] ;
  wire \sig_btt_cntr_im0_reg_n_0_[9] ;
  wire sig_btt_eq_b2mbaa_im0;
  wire sig_btt_eq_b2mbaa_ireg1;
  wire sig_btt_eq_b2mbaa_ireg1_i_2_n_0;
  wire sig_btt_eq_b2mbaa_ireg1_i_3_n_0;
  wire sig_btt_eq_b2mbaa_ireg1_i_4_n_0;
  wire sig_btt_lt_b2mbaa_im0;
  wire sig_btt_lt_b2mbaa_im01;
  wire sig_btt_lt_b2mbaa_im01_carry_i_1_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_2_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_3_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_4_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_5_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_6_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_7_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_8_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_n_1;
  wire sig_btt_lt_b2mbaa_im01_carry_n_2;
  wire sig_btt_lt_b2mbaa_im01_carry_n_3;
  wire sig_btt_lt_b2mbaa_ireg1;
  wire [5:4]sig_bytes_to_mbaa_im0;
  wire [5:0]sig_bytes_to_mbaa_ireg1;
  wire \sig_bytes_to_mbaa_ireg1[1]_i_1_n_0 ;
  wire \sig_bytes_to_mbaa_ireg1[2]_i_1_n_0 ;
  wire \sig_bytes_to_mbaa_ireg1[3]_i_1_n_0 ;
  wire sig_calc_error_pushed;
  wire sig_calc_error_pushed_i_1_n_0;
  wire [65:0]sig_calc_error_reg_reg_0;
  wire sig_calc_error_reg_reg_1;
  wire sig_cmd2addr_valid_i_1_n_0;
  wire sig_cmd2addr_valid_reg_0;
  wire sig_cmd2data_valid_i_1_n_0;
  wire sig_cmd2data_valid_reg_0;
  wire sig_cmd2dre_valid_i_1_n_0;
  wire sig_cmd2dre_valid_reg_0;
  wire sig_cmd2mstr_cmd_valid;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire [4:0]sig_end_offset_un;
  wire [4:1]sig_finish_addr_offset_im1;
  wire [4:0]sig_finish_addr_offset_ireg2;
  wire \sig_finish_addr_offset_ireg2[0]_i_1_n_0 ;
  wire \sig_finish_addr_offset_ireg2[1]_i_2_n_0 ;
  wire \sig_finish_addr_offset_ireg2[2]_i_2_n_0 ;
  wire \sig_finish_addr_offset_ireg2[4]_i_2_n_0 ;
  wire sig_first_xfer_im0;
  wire sig_first_xfer_im0_i_1_n_0;
  wire sig_inhibit_rdy_n;
  wire sig_inhibit_rdy_n_1;
  wire sig_inhibit_rdy_n_2;
  wire sig_init_done;
  wire sig_input_burst_type_reg_i_1_n_0;
  wire sig_input_eof_reg_i_1_n_0;
  wire sig_input_reg_empty;
  wire sig_input_reg_empty_i_1_n_0;
  wire [4:4]sig_last_addr_offset_im2__0;
  wire sig_ld_xfer_reg;
  wire sig_ld_xfer_reg_i_1_n_0;
  wire sig_ld_xfer_reg_tmp;
  wire sig_ld_xfer_reg_tmp_i_1_n_0;
  wire sig_ld_xfer_reg_tmp_reg_0;
  wire [5:0]sig_mbaa_addr_cntr_slice_im0;
  wire sig_mmap_reset_reg;
  wire sig_mstr2addr_cmd_valid;
  wire sig_mstr2data_cmd_valid;
  wire sig_mstr2data_sequential;
  wire sig_mstr2sf_cmd_valid;
  wire sig_mstr2sf_eof;
  wire sig_no_btt_residue_im0;
  wire sig_no_btt_residue_ireg1;
  wire sig_parent_done;
  wire sig_parent_done_i_1_n_0;
  wire [15:0]sig_predict_addr_lsh_im2;
  wire [15:15]sig_predict_addr_lsh_ireg3;
  wire \sig_predict_addr_lsh_ireg3[3]_i_2_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[3]_i_3_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[3]_i_4_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[3]_i_5_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[7]_i_2_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[7]_i_3_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[7]_i_4_n_0 ;
  wire [14:0]sig_predict_addr_lsh_ireg3__0;
  wire \sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_0 ;
  wire \sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_1 ;
  wire \sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_2 ;
  wire \sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_3 ;
  wire \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_1 ;
  wire \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_2 ;
  wire \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_3 ;
  wire \sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_0 ;
  wire \sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_1 ;
  wire \sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_2 ;
  wire \sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_3 ;
  wire \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_0 ;
  wire \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_1 ;
  wire \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_2 ;
  wire \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_3 ;
  wire sig_push_input_reg11_out;
  wire sig_sm_halt_ns;
  wire sig_sm_halt_reg;
  wire sig_sm_ld_calc2_reg;
  wire sig_sm_ld_calc2_reg_ns;
  wire sig_sm_ld_xfer_reg_ns;
  wire sig_sm_pop_input_reg;
  wire sig_sm_pop_input_reg_ns;
  wire [4:0]sig_strbgen_addr_ireg2;
  wire \sig_strbgen_bytes_ireg2[4]_i_1_n_0 ;
  wire \sig_strbgen_bytes_ireg2[5]_i_1_n_0 ;
  wire \sig_strbgen_bytes_ireg2_reg_n_0_[0] ;
  wire \sig_strbgen_bytes_ireg2_reg_n_0_[1] ;
  wire \sig_strbgen_bytes_ireg2_reg_n_0_[2] ;
  wire \sig_strbgen_bytes_ireg2_reg_n_0_[3] ;
  wire \sig_strbgen_bytes_ireg2_reg_n_0_[4] ;
  wire \sig_strbgen_bytes_ireg2_reg_n_0_[5] ;
  wire [31:0]sig_xfer_end_strb_ireg3;
  wire \sig_xfer_end_strb_ireg3[10]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[11]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[12]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[13]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[14]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[15]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[17]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[18]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[19]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[1]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[20]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[21]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[22]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[23]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[24]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[25]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[26]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[27]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[28]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[29]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[2]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[30]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[31]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[3]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[4]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[5]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[6]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[7]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[8]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[9]_i_1_n_0 ;
  wire sig_xfer_len_eq_0_im2;
  wire sig_xfer_len_eq_0_ireg3;
  wire sig_xfer_reg_empty;
  wire sig_xfer_reg_empty_i_1_n_0;
  wire [30:1]sig_xfer_strt_strb_im2;
  wire [31:0]sig_xfer_strt_strb_ireg3;
  wire [3:3]\NLW_i_/i_/i__carry__2_CO_UNCONNECTED ;
  wire [3:1]\NLW_sig_adjusted_addr_incr_ireg2_reg[5]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_sig_adjusted_addr_incr_ireg2_reg[5]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_sig_btt_cntr_im0_reg[13]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_sig_btt_cntr_im0_reg[13]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_sig_btt_lt_b2mbaa_im01_carry_O_UNCONNECTED;
  wire [3:3]\NLW_sig_predict_addr_lsh_ireg3_reg[15]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFF4444F444)) 
    \FSM_onehot_sig_pcc_sm_state[1]_i_1 
       (.I0(sig_push_input_reg11_out),
        .I1(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ),
        .I3(sig_parent_done),
        .I4(sig_calc_error_pushed),
        .I5(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[0] ),
        .O(\FSM_onehot_sig_pcc_sm_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h88888F88)) 
    \FSM_onehot_sig_pcc_sm_state[2]_i_1 
       (.I0(sig_push_input_reg11_out),
        .I1(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[1] ),
        .I2(sig_parent_done),
        .I3(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ),
        .I4(sig_calc_error_pushed),
        .O(\FSM_onehot_sig_pcc_sm_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_sig_pcc_sm_state[5]_i_1 
       (.I0(sig_sm_ld_xfer_reg_ns),
        .I1(\FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0 ),
        .I2(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[5] ),
        .O(\FSM_onehot_sig_pcc_sm_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_sig_pcc_sm_state[6]_i_1 
       (.I0(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0 ),
        .O(\FSM_onehot_sig_pcc_sm_state[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0C)) 
    \FSM_onehot_sig_pcc_sm_state[6]_i_2 
       (.I0(sig_mstr2addr_cmd_valid),
        .I1(\USE_SRL_FIFO.sig_wr_fifo ),
        .I2(sig_mstr2sf_cmd_valid),
        .I3(sig_ld_xfer_reg_tmp_reg_0),
        .I4(sig_mstr2data_cmd_valid),
        .I5(\USE_SRL_FIFO.sig_wr_fifo_0 ),
        .O(\FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_sig_pcc_sm_state[7]_i_1 
       (.I0(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[7] ),
        .I1(sig_calc_error_pushed),
        .I2(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ),
        .O(\FSM_onehot_sig_pcc_sm_state[7]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_sig_pcc_sm_state_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[0] ),
        .S(sig_mmap_reset_reg));
  (* FSM_ENCODED_STATES = "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_sig_pcc_sm_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[1] ),
        .R(sig_mmap_reset_reg));
  (* FSM_ENCODED_STATES = "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_sig_pcc_sm_state[2]_i_1_n_0 ),
        .Q(sig_sm_ld_calc2_reg_ns),
        .R(sig_mmap_reset_reg));
  (* FSM_ENCODED_STATES = "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_sm_ld_calc2_reg),
        .Q(sig_sm_ld_xfer_reg_ns),
        .R(sig_mmap_reset_reg));
  (* FSM_ENCODED_STATES = "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_sig_pcc_sm_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[5] ),
        .R(sig_mmap_reset_reg));
  (* FSM_ENCODED_STATES = "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_sig_pcc_sm_state[6]_i_1_n_0 ),
        .Q(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ),
        .R(sig_mmap_reset_reg));
  (* FSM_ENCODED_STATES = "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_sig_pcc_sm_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[7] ),
        .R(sig_mmap_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][10]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[28]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[28]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[60]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][11]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[27]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[27]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[59]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][12]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[26]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[26]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[58]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][13]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[25]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[25]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[57]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][14]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[24]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[24]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[56]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][15]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[23]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[23]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[55]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][16]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[22]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[22]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[54]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][17]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[21]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[21]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[53]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][18]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[20]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[20]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[52]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][19]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[19]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[19]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[51]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][20]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[18]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[18]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[50]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][21]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[17]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[17]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[49]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][22]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[16]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[16]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[48]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \INFERRED_GEN.data_reg[3][22]_srl4_i_1__0 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[5] ),
        .I1(\sig_adjusted_addr_incr_ireg2_reg_n_0_[3] ),
        .I2(\sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ),
        .I3(\sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ),
        .I4(\sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ),
        .I5(\sig_adjusted_addr_incr_ireg2_reg_n_0_[4] ),
        .O(in[32]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][23]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[15]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[15]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[47]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][23]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[15]),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[31]),
        .O(in[31]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][24]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[14]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[14]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[46]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][24]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[14]),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[30]),
        .O(in[30]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][25]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[13]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[13]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[45]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][25]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[13]),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[29]),
        .O(in[29]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][26]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[12]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[12]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[44]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][26]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[12]),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[28]),
        .O(in[28]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][27]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[11]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[11]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[43]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][27]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[11]),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[27]),
        .O(in[27]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][28]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[10]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[10]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[42]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][28]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[10]),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[26]),
        .O(in[26]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][29]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[9]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[9]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[41]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][29]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[9]),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[25]),
        .O(in[25]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][30]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[8]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[8]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[40]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][30]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[8]),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[24]),
        .O(in[24]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][31]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[7]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[7]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[39]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][31]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[7]),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[23]),
        .O(in[23]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][32]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[6]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[6]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[38]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][32]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[6]),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[22]),
        .O(in[22]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][33]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[5]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[5]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[37]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][33]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[5]),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[21]),
        .O(in[21]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][34]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[4]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[4]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[36]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][34]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[4]),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[20]),
        .O(in[20]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][35]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[3]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[3]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[35]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][35]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[3]),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[19]),
        .O(in[19]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][36]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[2]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[2]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[34]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][36]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[2]),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[18]),
        .O(in[18]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][37]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[1]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[1]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[33]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][37]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[1]),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[17]),
        .O(in[17]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][38]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[0]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[0]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[32]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][38]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[0]),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[16]),
        .O(in[16]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][39]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[31]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[31]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][39]_srl4_i_1__0 
       (.I0(p_1_in),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[15]),
        .O(in[15]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][3]_srl4_i_1 
       (.I0(in[34]),
        .I1(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[65]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][40]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[30]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[30]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][40]_srl4_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[14] ),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[14]),
        .O(in[14]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][41]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[29]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[29]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][41]_srl4_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[13] ),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[13]),
        .O(in[13]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][42]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[28]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[28]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][42]_srl4_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[12] ),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[12]),
        .O(in[12]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][43]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[27]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[27]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][43]_srl4_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[11] ),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[11]),
        .O(in[11]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][44]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[26]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[26]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][44]_srl4_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[10] ),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[10]),
        .O(in[10]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][45]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[25]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[25]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][45]_srl4_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[9] ),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[9]),
        .O(in[9]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][46]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[24]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[24]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][46]_srl4_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[8] ),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[8]),
        .O(in[8]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][47]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[23]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[23]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][47]_srl4_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[7]),
        .O(in[7]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][48]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[22]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[22]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][48]_srl4_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[6]),
        .O(in[6]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][49]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[21]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[21]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][49]_srl4_i_1__0 
       (.I0(sig_mbaa_addr_cntr_slice_im0[5]),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[5]),
        .O(in[5]));
  LUT6 #(
    .INIT(64'h00FFFFFF57575757)) 
    \INFERRED_GEN.data_reg[3][4]_srl4_i_1 
       (.I0(sig_brst_cnt_eq_zero_ireg1),
        .I1(sig_btt_eq_b2mbaa_ireg1),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(sig_brst_cnt_eq_one_ireg1),
        .I4(sig_addr_aligned_ireg1),
        .I5(sig_no_btt_residue_ireg1),
        .O(sig_mstr2data_sequential));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][50]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[20]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[20]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][50]_srl4_i_1__0 
       (.I0(sig_mbaa_addr_cntr_slice_im0[4]),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[4]),
        .O(in[4]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][51]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[19]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[19]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][51]_srl4_i_1__0 
       (.I0(sig_mbaa_addr_cntr_slice_im0[3]),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[3]),
        .O(in[3]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][52]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[18]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][52]_srl4_i_1__0 
       (.I0(sig_mbaa_addr_cntr_slice_im0[2]),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[2]),
        .O(in[2]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][53]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[17]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][53]_srl4_i_1__0 
       (.I0(sig_mbaa_addr_cntr_slice_im0[1]),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[1]),
        .O(in[1]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][54]_srl4_i_1__0 
       (.I0(sig_xfer_strt_strb_ireg3[16]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][54]_srl4_i_2 
       (.I0(sig_mbaa_addr_cntr_slice_im0[0]),
        .I1(in[33]),
        .I2(sig_addr_cntr_lsh_kh[0]),
        .O(in[0]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][55]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[15]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][56]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[14]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][57]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[13]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][58]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[12]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][59]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[11]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[11]));
  LUT2 #(
    .INIT(4'h2)) 
    \INFERRED_GEN.data_reg[3][5]_srl4_i_1 
       (.I0(sig_mstr2sf_eof),
        .I1(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[64]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][60]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[10]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][61]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[9]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[9]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][62]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[8]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][63]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[7]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][64]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[6]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][65]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[5]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][66]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[4]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][67]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[3]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][68]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[2]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][69]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[1]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][70]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[0]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][7]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[31]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[31]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[63]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][8]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[30]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[30]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[62]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \INFERRED_GEN.data_reg[3][9]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[29]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[29]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[61]));
  system_axi_dma_1_0_axi_datamover_strb_gen2 I_STRT_STRB_GEN
       (.D({sig_xfer_strt_strb_im2[30:17],sig_xfer_strt_strb_im2[14:1],\GEN_32BIT_CASE.lsig_start_vect }),
        .Q(sig_strbgen_addr_ireg2),
        .out({g0_b29_n_0,g0_b27_n_0,g0_b25_n_0,g0_b23_n_0,g0_b21_n_0,g0_b19_n_0,g0_b17_n_0,g0_b13_n_0,g0_b11_n_0,g0_b9_n_0,g0_b7_n_0,g0_b5_n_0,g0_b3_n_0,g0_b1_n_0}),
        .\sig_xfer_strt_strb_ireg3_reg[10] (g0_b10__0_n_0),
        .\sig_xfer_strt_strb_ireg3_reg[12] (g0_b12__0_n_0),
        .\sig_xfer_strt_strb_ireg3_reg[14] (g0_b14__0_n_0),
        .\sig_xfer_strt_strb_ireg3_reg[18] (g0_b18__0_n_0),
        .\sig_xfer_strt_strb_ireg3_reg[20] (g0_b20__0_n_0),
        .\sig_xfer_strt_strb_ireg3_reg[22] (g0_b22__0_n_0),
        .\sig_xfer_strt_strb_ireg3_reg[24] (g0_b24__0_n_0),
        .\sig_xfer_strt_strb_ireg3_reg[26] (g0_b26__0_n_0),
        .\sig_xfer_strt_strb_ireg3_reg[28] (g0_b28__0_n_0),
        .\sig_xfer_strt_strb_ireg3_reg[2] (g0_b2__0_n_0),
        .\sig_xfer_strt_strb_ireg3_reg[30] (g0_b30__0_n_0),
        .\sig_xfer_strt_strb_ireg3_reg[4] (g0_b4__0_n_0),
        .\sig_xfer_strt_strb_ireg3_reg[6] (g0_b6__0_n_0),
        .\sig_xfer_strt_strb_ireg3_reg[8] (g0_b8__0_n_0));
  LUT5 #(
    .INIT(32'hAAAAAEAA)) 
    \USE_SINGLE_REG.sig_regfifo_empty_reg_i_2 
       (.I0(sig_init_done),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2mstr_cmd_valid),
        .I4(sig_calc_error_pushed),
        .O(\USE_SINGLE_REG.sig_regfifo_empty_reg0 ));
  LUT6 #(
    .INIT(64'hCCCC8888CC0C8888)) 
    \USE_SINGLE_REG.sig_regfifo_full_reg_i_1 
       (.I0(E),
        .I1(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .I2(sig_input_reg_empty),
        .I3(sig_sm_halt_reg),
        .I4(sig_cmd2mstr_cmd_valid),
        .I5(sig_calc_error_pushed),
        .O(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    g0_b1
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .O(g0_b1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'hFFE0)) 
    g0_b10__0
       (.I0(sig_end_offset_un[1]),
        .I1(sig_end_offset_un[2]),
        .I2(sig_end_offset_un[3]),
        .I3(sig_end_offset_un[4]),
        .O(g0_b10__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hFFFFF800)) 
    g0_b11
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .O(g0_b11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    g0_b12__0
       (.I0(sig_end_offset_un[2]),
        .I1(sig_end_offset_un[3]),
        .I2(sig_end_offset_un[4]),
        .O(g0_b12__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hFFFFE000)) 
    g0_b13
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .O(g0_b13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    g0_b14__0
       (.I0(sig_end_offset_un[1]),
        .I1(sig_end_offset_un[2]),
        .I2(sig_end_offset_un[3]),
        .I3(sig_end_offset_un[4]),
        .O(g0_b14__0_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFF8000)) 
    g0_b15
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .I5(sig_strbgen_addr_ireg2[4]),
        .O(g0_b15_n_0));
  LUT6 #(
    .INIT(64'h222222222222222A)) 
    g0_b16__0
       (.I0(sig_end_offset_un[4]),
        .I1(sig_strbgen_addr_ireg2[4]),
        .I2(sig_strbgen_addr_ireg2[1]),
        .I3(sig_strbgen_addr_ireg2[2]),
        .I4(sig_strbgen_addr_ireg2[3]),
        .I5(sig_strbgen_addr_ireg2[0]),
        .O(sig_xfer_strt_strb_im2[16]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    g0_b17
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .O(g0_b17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    g0_b18__0
       (.I0(sig_end_offset_un[1]),
        .I1(sig_end_offset_un[2]),
        .I2(sig_end_offset_un[3]),
        .I3(sig_end_offset_un[4]),
        .O(g0_b18__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hFFF80000)) 
    g0_b19
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .O(g0_b19_n_0));
  LUT3 #(
    .INIT(8'hEB)) 
    g0_b1_i_1
       (.I0(g0_b1_i_6_n_0),
        .I1(g0_b1_i_7_n_0),
        .I2(sig_strbgen_addr_ireg2[0]),
        .O(sig_end_offset_un[0]));
  LUT6 #(
    .INIT(64'h11045546776EFFEF)) 
    g0_b1_i_10
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .I1(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I2(sig_strbgen_addr_ireg2[0]),
        .I3(g0_b1_i_7_n_0),
        .I4(sig_strbgen_addr_ireg2[1]),
        .I5(sig_strbgen_addr_ireg2[2]),
        .O(g0_b1_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000000000000054)) 
    g0_b1_i_11
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .I1(\sig_strbgen_bytes_ireg2_reg_n_0_[5] ),
        .I2(\sig_strbgen_bytes_ireg2_reg_n_0_[4] ),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I4(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .I5(\sig_strbgen_bytes_ireg2_reg_n_0_[3] ),
        .O(g0_b1_i_11_n_0));
  LUT6 #(
    .INIT(64'hAAA9FFFF0000AAA9)) 
    g0_b1_i_12
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[3] ),
        .I1(g0_b1_i_7_n_0),
        .I2(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .I4(g0_b1_i_10_n_0),
        .I5(sig_strbgen_addr_ireg2[3]),
        .O(g0_b1_i_12_n_0));
  LUT6 #(
    .INIT(64'h3333333333333337)) 
    g0_b1_i_13
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .I1(\sig_strbgen_bytes_ireg2_reg_n_0_[5] ),
        .I2(\sig_strbgen_bytes_ireg2_reg_n_0_[4] ),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I4(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .I5(\sig_strbgen_bytes_ireg2_reg_n_0_[3] ),
        .O(g0_b1_i_13_n_0));
  LUT6 #(
    .INIT(64'h00FF00FF01FE01FF)) 
    g0_b1_i_14
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[3] ),
        .I1(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .I2(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[4] ),
        .I4(\sig_strbgen_bytes_ireg2_reg_n_0_[5] ),
        .I5(\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .O(g0_b1_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'hBBBEEEEB)) 
    g0_b1_i_2
       (.I0(g0_b1_i_6_n_0),
        .I1(sig_strbgen_addr_ireg2[1]),
        .I2(g0_b1_i_7_n_0),
        .I3(sig_strbgen_addr_ireg2[0]),
        .I4(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .O(sig_end_offset_un[1]));
  LUT6 #(
    .INIT(64'hBBBEEEEBEEEBBBBE)) 
    g0_b1_i_3
       (.I0(g0_b1_i_6_n_0),
        .I1(sig_strbgen_addr_ireg2[2]),
        .I2(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I3(g0_b1_i_7_n_0),
        .I4(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .I5(g0_b1_i_8_n_0),
        .O(sig_end_offset_un[2]));
  LUT4 #(
    .INIT(16'hBEEB)) 
    g0_b1_i_4
       (.I0(g0_b1_i_6_n_0),
        .I1(sig_strbgen_addr_ireg2[3]),
        .I2(g0_b1_i_9_n_0),
        .I3(g0_b1_i_10_n_0),
        .O(sig_end_offset_un[3]));
  LUT5 #(
    .INIT(32'h7DF7E7FE)) 
    g0_b1_i_5
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[5] ),
        .I1(sig_strbgen_addr_ireg2[4]),
        .I2(g0_b1_i_11_n_0),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[4] ),
        .I4(g0_b1_i_12_n_0),
        .O(sig_end_offset_un[4]));
  LUT6 #(
    .INIT(64'h9A595555AAAA9A59)) 
    g0_b1_i_6
       (.I0(g0_b1_i_13_n_0),
        .I1(sig_strbgen_addr_ireg2[3]),
        .I2(g0_b1_i_10_n_0),
        .I3(g0_b1_i_9_n_0),
        .I4(sig_strbgen_addr_ireg2[4]),
        .I5(g0_b1_i_14_n_0),
        .O(g0_b1_i_6_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    g0_b1_i_7
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .I1(\sig_strbgen_bytes_ireg2_reg_n_0_[5] ),
        .I2(\sig_strbgen_bytes_ireg2_reg_n_0_[4] ),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[3] ),
        .I4(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I5(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .O(g0_b1_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h52FB)) 
    g0_b1_i_8
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I1(sig_strbgen_addr_ireg2[0]),
        .I2(g0_b1_i_7_n_0),
        .I3(sig_strbgen_addr_ireg2[1]),
        .O(g0_b1_i_8_n_0));
  LUT6 #(
    .INIT(64'hFF00FF00FF00AA54)) 
    g0_b1_i_9
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .I1(\sig_strbgen_bytes_ireg2_reg_n_0_[5] ),
        .I2(\sig_strbgen_bytes_ireg2_reg_n_0_[4] ),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[3] ),
        .I4(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I5(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .O(g0_b1_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    g0_b20__0
       (.I0(sig_end_offset_un[2]),
        .I1(sig_end_offset_un[3]),
        .I2(sig_end_offset_un[4]),
        .O(g0_b20__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hFFE00000)) 
    g0_b21
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .O(g0_b21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'hF800)) 
    g0_b22__0
       (.I0(sig_end_offset_un[1]),
        .I1(sig_end_offset_un[2]),
        .I2(sig_end_offset_un[3]),
        .I3(sig_end_offset_un[4]),
        .O(g0_b22__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hFF800000)) 
    g0_b23
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .O(g0_b23_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    g0_b24__0
       (.I0(sig_end_offset_un[3]),
        .I1(sig_end_offset_un[4]),
        .O(g0_b24__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hFE000000)) 
    g0_b25
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .O(g0_b25_n_0));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    g0_b26__0
       (.I0(sig_end_offset_un[1]),
        .I1(sig_end_offset_un[2]),
        .I2(sig_end_offset_un[3]),
        .I3(sig_end_offset_un[4]),
        .O(g0_b26__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hF8000000)) 
    g0_b27
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .O(g0_b27_n_0));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'h80)) 
    g0_b28__0
       (.I0(sig_end_offset_un[2]),
        .I1(sig_end_offset_un[3]),
        .I2(sig_end_offset_un[4]),
        .O(g0_b28__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hE0000000)) 
    g0_b29
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .O(g0_b29_n_0));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    g0_b2__0
       (.I0(sig_end_offset_un[1]),
        .I1(sig_end_offset_un[2]),
        .I2(sig_end_offset_un[3]),
        .I3(sig_end_offset_un[4]),
        .O(g0_b2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    g0_b3
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .O(g0_b3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    g0_b30__0
       (.I0(sig_end_offset_un[1]),
        .I1(sig_end_offset_un[2]),
        .I2(sig_end_offset_un[3]),
        .I3(sig_end_offset_un[4]),
        .O(g0_b30__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    g0_b31
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .O(g0_b31_n_0));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    g0_b4__0
       (.I0(sig_end_offset_un[2]),
        .I1(sig_end_offset_un[3]),
        .I2(sig_end_offset_un[4]),
        .O(g0_b4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hFFFFFFE0)) 
    g0_b5
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .O(g0_b5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    g0_b6__0
       (.I0(sig_end_offset_un[1]),
        .I1(sig_end_offset_un[2]),
        .I2(sig_end_offset_un[3]),
        .I3(sig_end_offset_un[4]),
        .O(g0_b6__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    g0_b7
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .O(g0_b7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'hE)) 
    g0_b8__0
       (.I0(sig_end_offset_un[3]),
        .I1(sig_end_offset_un[4]),
        .O(g0_b8__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hFFFFFE00)) 
    g0_b9
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .O(g0_b9_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i__carry 
       (.CI(1'b0),
        .CO({\i_/i_/i__carry_n_0 ,\i_/i_/i__carry_n_1 ,\i_/i_/i__carry_n_2 ,\i_/i_/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i__carry_i_1_n_0}),
        .O({\i_/i_/i__carry_n_4 ,\i_/i_/i__carry_n_5 ,\i_/i_/i__carry_n_6 ,\i_/i_/i__carry_n_7 }),
        .S({i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i__carry__0 
       (.CI(\i_/i_/i__carry_n_0 ),
        .CO({\i_/i_/i__carry__0_n_0 ,\i_/i_/i__carry__0_n_1 ,\i_/i_/i__carry__0_n_2 ,\i_/i_/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i__carry__0_n_4 ,\i_/i_/i__carry__0_n_5 ,\i_/i_/i__carry__0_n_6 ,\i_/i_/i__carry__0_n_7 }),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i__carry__1 
       (.CI(\i_/i_/i__carry__0_n_0 ),
        .CO({\i_/i_/i__carry__1_n_0 ,\i_/i_/i__carry__1_n_1 ,\i_/i_/i__carry__1_n_2 ,\i_/i_/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i__carry__1_n_4 ,\i_/i_/i__carry__1_n_5 ,\i_/i_/i__carry__1_n_6 ,\i_/i_/i__carry__1_n_7 }),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i__carry__2 
       (.CI(\i_/i_/i__carry__1_n_0 ),
        .CO({\NLW_i_/i_/i__carry__2_CO_UNCONNECTED [3],\i_/i_/i__carry__2_n_1 ,\i_/i_/i__carry__2_n_2 ,\i_/i_/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i__carry__2_n_4 ,\i_/i_/i__carry__2_n_5 ,\i_/i_/i__carry__2_n_6 ,\i_/i_/i__carry__2_n_7 }),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry__0_i_1
       (.I0(Q[39]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_addr_cntr_im0_msh_reg[7]),
        .O(i__carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry__0_i_2
       (.I0(Q[38]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_addr_cntr_im0_msh_reg[6]),
        .O(i__carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry__0_i_3
       (.I0(Q[37]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_addr_cntr_im0_msh_reg[5]),
        .O(i__carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry__0_i_4
       (.I0(Q[36]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_addr_cntr_im0_msh_reg[4]),
        .O(i__carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry__1_i_1
       (.I0(Q[43]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_addr_cntr_im0_msh_reg[11]),
        .O(i__carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry__1_i_2
       (.I0(Q[42]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_addr_cntr_im0_msh_reg[10]),
        .O(i__carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry__1_i_3
       (.I0(Q[41]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_addr_cntr_im0_msh_reg[9]),
        .O(i__carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry__1_i_4
       (.I0(Q[40]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_addr_cntr_im0_msh_reg[8]),
        .O(i__carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry__2_i_1
       (.I0(Q[47]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_addr_cntr_im0_msh_reg[15]),
        .O(i__carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry__2_i_2
       (.I0(Q[46]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_addr_cntr_im0_msh_reg[14]),
        .O(i__carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry__2_i_3
       (.I0(Q[45]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_addr_cntr_im0_msh_reg[13]),
        .O(i__carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry__2_i_4
       (.I0(Q[44]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_addr_cntr_im0_msh_reg[12]),
        .O(i__carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry_i_1
       (.I0(Q[32]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_addr_cntr_im0_msh_reg[0]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry_i_2
       (.I0(Q[35]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_addr_cntr_im0_msh_reg[3]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry_i_3
       (.I0(Q[34]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_addr_cntr_im0_msh_reg[2]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry_i_4
       (.I0(Q[33]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_addr_cntr_im0_msh_reg[1]),
        .O(i__carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h5555555555C55555)) 
    i__carry_i_5
       (.I0(sig_addr_cntr_im0_msh_reg[0]),
        .I1(Q[32]),
        .I2(sig_input_reg_empty),
        .I3(sig_sm_halt_reg),
        .I4(sig_cmd2mstr_cmd_valid),
        .I5(in[34]),
        .O(i__carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sig_addr_aligned_ireg1_i_1
       (.I0(sig_mbaa_addr_cntr_slice_im0[4]),
        .I1(sig_mbaa_addr_cntr_slice_im0[2]),
        .I2(sig_mbaa_addr_cntr_slice_im0[0]),
        .I3(sig_mbaa_addr_cntr_slice_im0[1]),
        .I4(sig_mbaa_addr_cntr_slice_im0[3]),
        .I5(sig_mbaa_addr_cntr_slice_im0[5]),
        .O(sig_addr_aligned_im0));
  FDRE #(
    .INIT(1'b0)) 
    sig_addr_aligned_ireg1_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(sig_addr_aligned_im0),
        .Q(sig_addr_aligned_ireg1),
        .R(sig_mmap_reset_reg));
  LUT4 #(
    .INIT(16'hBAAA)) 
    \sig_addr_cntr_im0_msh[0]_i_1 
       (.I0(sig_push_input_reg11_out),
        .I1(sig_predict_addr_lsh_ireg3),
        .I2(p_1_in),
        .I3(\FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0 ),
        .O(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry_n_7 ),
        .Q(sig_addr_cntr_im0_msh_reg[0]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry__1_n_5 ),
        .Q(sig_addr_cntr_im0_msh_reg[10]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry__1_n_4 ),
        .Q(sig_addr_cntr_im0_msh_reg[11]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry__2_n_7 ),
        .Q(sig_addr_cntr_im0_msh_reg[12]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry__2_n_6 ),
        .Q(sig_addr_cntr_im0_msh_reg[13]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry__2_n_5 ),
        .Q(sig_addr_cntr_im0_msh_reg[14]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[15] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry__2_n_4 ),
        .Q(sig_addr_cntr_im0_msh_reg[15]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry_n_6 ),
        .Q(sig_addr_cntr_im0_msh_reg[1]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry_n_5 ),
        .Q(sig_addr_cntr_im0_msh_reg[2]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry_n_4 ),
        .Q(sig_addr_cntr_im0_msh_reg[3]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry__0_n_7 ),
        .Q(sig_addr_cntr_im0_msh_reg[4]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry__0_n_6 ),
        .Q(sig_addr_cntr_im0_msh_reg[5]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry__0_n_5 ),
        .Q(sig_addr_cntr_im0_msh_reg[6]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry__0_n_4 ),
        .Q(sig_addr_cntr_im0_msh_reg[7]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry__1_n_7 ),
        .Q(sig_addr_cntr_im0_msh_reg[8]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry__1_n_6 ),
        .Q(sig_addr_cntr_im0_msh_reg[9]),
        .R(sig_mmap_reset_reg));
  LUT4 #(
    .INIT(16'hEA40)) 
    \sig_addr_cntr_incr_ireg2[0]_i_1 
       (.I0(sig_btt_lt_b2mbaa_ireg1),
        .I1(sig_bytes_to_mbaa_ireg1[0]),
        .I2(sig_first_xfer_im0),
        .I3(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .O(\sig_addr_cntr_incr_ireg2[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_addr_cntr_incr_ireg2[1]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[1]),
        .O(\sig_addr_cntr_incr_ireg2[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_addr_cntr_incr_ireg2[2]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[2]),
        .O(\sig_addr_cntr_incr_ireg2[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_addr_cntr_incr_ireg2[3]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[3]),
        .O(\sig_addr_cntr_incr_ireg2[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_addr_cntr_incr_ireg2[4]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[4]),
        .O(\sig_addr_cntr_incr_ireg2[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_addr_cntr_incr_ireg2[5]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[5]),
        .O(\sig_addr_cntr_incr_ireg2[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \sig_addr_cntr_incr_ireg2[6]_i_1 
       (.I0(sig_btt_lt_b2mbaa_ireg1),
        .I1(sig_addr_aligned_ireg1),
        .I2(sig_first_xfer_im0),
        .O(\sig_addr_cntr_incr_ireg2[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[0]_i_1_n_0 ),
        .Q(\sig_addr_cntr_incr_ireg2_reg_n_0_[0] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[1]_i_1_n_0 ),
        .Q(\sig_addr_cntr_incr_ireg2_reg_n_0_[1] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[2]_i_1_n_0 ),
        .Q(\sig_addr_cntr_incr_ireg2_reg_n_0_[2] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[3]_i_1_n_0 ),
        .Q(\sig_addr_cntr_incr_ireg2_reg_n_0_[3] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[4]_i_1_n_0 ),
        .Q(\sig_addr_cntr_incr_ireg2_reg_n_0_[4] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[5]_i_1_n_0 ),
        .Q(\sig_addr_cntr_incr_ireg2_reg_n_0_[5] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[6]_i_1_n_0 ),
        .Q(\sig_addr_cntr_incr_ireg2_reg_n_0_[6] ),
        .R(sig_mmap_reset_reg));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \sig_addr_cntr_lsh_im0[0]_i_1 
       (.I0(Q[16]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_predict_addr_lsh_ireg3__0[0]),
        .O(p_1_in__0[0]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \sig_addr_cntr_lsh_im0[10]_i_1 
       (.I0(Q[26]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_predict_addr_lsh_ireg3__0[10]),
        .O(p_1_in__0[10]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \sig_addr_cntr_lsh_im0[11]_i_1 
       (.I0(Q[27]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_predict_addr_lsh_ireg3__0[11]),
        .O(p_1_in__0[11]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \sig_addr_cntr_lsh_im0[12]_i_1 
       (.I0(Q[28]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_predict_addr_lsh_ireg3__0[12]),
        .O(p_1_in__0[12]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \sig_addr_cntr_lsh_im0[13]_i_1 
       (.I0(Q[29]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_predict_addr_lsh_ireg3__0[13]),
        .O(p_1_in__0[13]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \sig_addr_cntr_lsh_im0[14]_i_1 
       (.I0(Q[30]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_predict_addr_lsh_ireg3__0[14]),
        .O(p_1_in__0[14]));
  LUT5 #(
    .INIT(32'hFFFF0020)) 
    \sig_addr_cntr_lsh_im0[15]_i_1 
       (.I0(sig_input_reg_empty),
        .I1(sig_sm_halt_reg),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(in[34]),
        .I4(\FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0 ),
        .O(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \sig_addr_cntr_lsh_im0[15]_i_2 
       (.I0(Q[31]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_predict_addr_lsh_ireg3),
        .O(p_1_in__0[15]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \sig_addr_cntr_lsh_im0[1]_i_1 
       (.I0(Q[17]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_predict_addr_lsh_ireg3__0[1]),
        .O(p_1_in__0[1]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \sig_addr_cntr_lsh_im0[2]_i_1 
       (.I0(Q[18]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_predict_addr_lsh_ireg3__0[2]),
        .O(p_1_in__0[2]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \sig_addr_cntr_lsh_im0[3]_i_1 
       (.I0(Q[19]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_predict_addr_lsh_ireg3__0[3]),
        .O(p_1_in__0[3]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \sig_addr_cntr_lsh_im0[4]_i_1 
       (.I0(Q[20]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_predict_addr_lsh_ireg3__0[4]),
        .O(p_1_in__0[4]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \sig_addr_cntr_lsh_im0[5]_i_1 
       (.I0(Q[21]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_predict_addr_lsh_ireg3__0[5]),
        .O(p_1_in__0[5]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \sig_addr_cntr_lsh_im0[6]_i_1 
       (.I0(Q[22]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_predict_addr_lsh_ireg3__0[6]),
        .O(p_1_in__0[6]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \sig_addr_cntr_lsh_im0[7]_i_1 
       (.I0(Q[23]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_predict_addr_lsh_ireg3__0[7]),
        .O(p_1_in__0[7]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \sig_addr_cntr_lsh_im0[8]_i_1 
       (.I0(Q[24]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_predict_addr_lsh_ireg3__0[8]),
        .O(p_1_in__0[8]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \sig_addr_cntr_lsh_im0[9]_i_1 
       (.I0(Q[25]),
        .I1(in[34]),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_predict_addr_lsh_ireg3__0[9]),
        .O(p_1_in__0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[0]),
        .Q(sig_mbaa_addr_cntr_slice_im0[0]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[10]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[10] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[11]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[11] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[12]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[12] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[13]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[13] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[14]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[14] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[15] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[15]),
        .Q(p_1_in),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[1]),
        .Q(sig_mbaa_addr_cntr_slice_im0[1]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[2]),
        .Q(sig_mbaa_addr_cntr_slice_im0[2]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[3]),
        .Q(sig_mbaa_addr_cntr_slice_im0[3]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[4]),
        .Q(sig_mbaa_addr_cntr_slice_im0[4]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[5]),
        .Q(sig_mbaa_addr_cntr_slice_im0[5]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[6]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[7]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[8]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[8] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[9]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[9] ),
        .R(sig_mmap_reset_reg));
  LUT4 #(
    .INIT(16'h0400)) 
    \sig_addr_cntr_lsh_kh[31]_i_1 
       (.I0(in[34]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .O(sig_push_input_reg11_out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[16]),
        .Q(sig_addr_cntr_lsh_kh[0]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[26]),
        .Q(sig_addr_cntr_lsh_kh[10]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[27]),
        .Q(sig_addr_cntr_lsh_kh[11]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[28]),
        .Q(sig_addr_cntr_lsh_kh[12]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[29]),
        .Q(sig_addr_cntr_lsh_kh[13]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[30]),
        .Q(sig_addr_cntr_lsh_kh[14]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[15] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[31]),
        .Q(sig_addr_cntr_lsh_kh[15]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[16] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[32]),
        .Q(sig_addr_cntr_lsh_kh[16]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[17] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[33]),
        .Q(sig_addr_cntr_lsh_kh[17]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[18] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[34]),
        .Q(sig_addr_cntr_lsh_kh[18]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[19] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[35]),
        .Q(sig_addr_cntr_lsh_kh[19]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[17]),
        .Q(sig_addr_cntr_lsh_kh[1]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[20] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[36]),
        .Q(sig_addr_cntr_lsh_kh[20]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[21] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[37]),
        .Q(sig_addr_cntr_lsh_kh[21]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[22] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[38]),
        .Q(sig_addr_cntr_lsh_kh[22]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[23] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[39]),
        .Q(sig_addr_cntr_lsh_kh[23]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[24] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[40]),
        .Q(sig_addr_cntr_lsh_kh[24]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[25] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[41]),
        .Q(sig_addr_cntr_lsh_kh[25]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[26] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[42]),
        .Q(sig_addr_cntr_lsh_kh[26]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[27] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[43]),
        .Q(sig_addr_cntr_lsh_kh[27]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[28] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[44]),
        .Q(sig_addr_cntr_lsh_kh[28]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[29] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[45]),
        .Q(sig_addr_cntr_lsh_kh[29]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[18]),
        .Q(sig_addr_cntr_lsh_kh[2]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[30] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[46]),
        .Q(sig_addr_cntr_lsh_kh[30]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[31] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[47]),
        .Q(sig_addr_cntr_lsh_kh[31]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[19]),
        .Q(sig_addr_cntr_lsh_kh[3]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[20]),
        .Q(sig_addr_cntr_lsh_kh[4]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[21]),
        .Q(sig_addr_cntr_lsh_kh[5]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[22]),
        .Q(sig_addr_cntr_lsh_kh[6]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[23]),
        .Q(sig_addr_cntr_lsh_kh[7]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[24]),
        .Q(sig_addr_cntr_lsh_kh[8]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(Q[25]),
        .Q(sig_addr_cntr_lsh_kh[9]),
        .R(sig_mmap_reset_reg));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_adjusted_addr_incr_ireg2[3]_i_2 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[3]),
        .O(\sig_adjusted_addr_incr_ireg2[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_adjusted_addr_incr_ireg2[3]_i_3 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[2]),
        .O(\sig_adjusted_addr_incr_ireg2[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_adjusted_addr_incr_ireg2[3]_i_4 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[1]),
        .O(\sig_adjusted_addr_incr_ireg2[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEA40)) 
    \sig_adjusted_addr_incr_ireg2[3]_i_5 
       (.I0(sig_btt_lt_b2mbaa_ireg1),
        .I1(sig_bytes_to_mbaa_ireg1[0]),
        .I2(sig_first_xfer_im0),
        .I3(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .O(\sig_adjusted_addr_incr_ireg2[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h07F7F808)) 
    \sig_adjusted_addr_incr_ireg2[3]_i_6 
       (.I0(sig_bytes_to_mbaa_ireg1[3]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I4(sig_mbaa_addr_cntr_slice_im0[3]),
        .O(\sig_adjusted_addr_incr_ireg2[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h07F7F808)) 
    \sig_adjusted_addr_incr_ireg2[3]_i_7 
       (.I0(sig_bytes_to_mbaa_ireg1[2]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I4(sig_mbaa_addr_cntr_slice_im0[2]),
        .O(\sig_adjusted_addr_incr_ireg2[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h07F7F808)) 
    \sig_adjusted_addr_incr_ireg2[3]_i_8 
       (.I0(sig_bytes_to_mbaa_ireg1[1]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I4(sig_mbaa_addr_cntr_slice_im0[1]),
        .O(\sig_adjusted_addr_incr_ireg2[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h15BFEA40)) 
    \sig_adjusted_addr_incr_ireg2[3]_i_9 
       (.I0(sig_btt_lt_b2mbaa_ireg1),
        .I1(sig_bytes_to_mbaa_ireg1[0]),
        .I2(sig_first_xfer_im0),
        .I3(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I4(sig_mbaa_addr_cntr_slice_im0[0]),
        .O(\sig_adjusted_addr_incr_ireg2[3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_adjusted_addr_incr_ireg2[5]_i_2 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[4]),
        .O(\sig_adjusted_addr_incr_ireg2[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_adjusted_addr_incr_ireg2[5]_i_3 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[5]),
        .O(\sig_adjusted_addr_incr_ireg2[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h07F7F808)) 
    \sig_adjusted_addr_incr_ireg2[5]_i_4 
       (.I0(sig_bytes_to_mbaa_ireg1[4]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .I4(sig_mbaa_addr_cntr_slice_im0[4]),
        .O(\sig_adjusted_addr_incr_ireg2[5]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[0]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[1]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[2]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[3]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[3] ),
        .R(sig_mmap_reset_reg));
  CARRY4 \sig_adjusted_addr_incr_ireg2_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_0 ,\sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_1 ,\sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_2 ,\sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sig_adjusted_addr_incr_ireg2[3]_i_2_n_0 ,\sig_adjusted_addr_incr_ireg2[3]_i_3_n_0 ,\sig_adjusted_addr_incr_ireg2[3]_i_4_n_0 ,\sig_adjusted_addr_incr_ireg2[3]_i_5_n_0 }),
        .O(sig_adjusted_addr_incr_im1[3:0]),
        .S({\sig_adjusted_addr_incr_ireg2[3]_i_6_n_0 ,\sig_adjusted_addr_incr_ireg2[3]_i_7_n_0 ,\sig_adjusted_addr_incr_ireg2[3]_i_8_n_0 ,\sig_adjusted_addr_incr_ireg2[3]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[4]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[4] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[5]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[5] ),
        .R(sig_mmap_reset_reg));
  CARRY4 \sig_adjusted_addr_incr_ireg2_reg[5]_i_1 
       (.CI(\sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_0 ),
        .CO({\NLW_sig_adjusted_addr_incr_ireg2_reg[5]_i_1_CO_UNCONNECTED [3:1],\sig_adjusted_addr_incr_ireg2_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\sig_adjusted_addr_incr_ireg2[5]_i_2_n_0 }),
        .O({\NLW_sig_adjusted_addr_incr_ireg2_reg[5]_i_1_O_UNCONNECTED [3:2],sig_adjusted_addr_incr_im1[5:4]}),
        .S({1'b0,1'b0,\sig_adjusted_addr_incr_ireg2[5]_i_3_n_0 ,\sig_adjusted_addr_incr_ireg2[5]_i_4_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    sig_brst_cnt_eq_one_ireg1_i_1
       (.I0(\sig_btt_cntr_im0_reg_n_0_[6] ),
        .I1(sig_brst_cnt_eq_zero_ireg1_i_2_n_0),
        .I2(\sig_btt_cntr_im0_reg_n_0_[8] ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[10] ),
        .I4(\sig_btt_cntr_im0_reg_n_0_[9] ),
        .O(sig_brst_cnt_eq_one_im0));
  FDRE #(
    .INIT(1'b0)) 
    sig_brst_cnt_eq_one_ireg1_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(sig_brst_cnt_eq_one_im0),
        .Q(sig_brst_cnt_eq_one_ireg1),
        .R(sig_mmap_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    sig_brst_cnt_eq_zero_ireg1_i_1
       (.I0(\sig_btt_cntr_im0_reg_n_0_[6] ),
        .I1(sig_brst_cnt_eq_zero_ireg1_i_2_n_0),
        .I2(\sig_btt_cntr_im0_reg_n_0_[8] ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[10] ),
        .I4(\sig_btt_cntr_im0_reg_n_0_[9] ),
        .O(sig_brst_cnt_eq_zero_im0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_brst_cnt_eq_zero_ireg1_i_2
       (.I0(\sig_btt_cntr_im0_reg_n_0_[13] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[11] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[7] ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[12] ),
        .O(sig_brst_cnt_eq_zero_ireg1_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_brst_cnt_eq_zero_ireg1_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(sig_brst_cnt_eq_zero_im0),
        .Q(sig_brst_cnt_eq_zero_ireg1),
        .R(sig_mmap_reset_reg));
  LUT6 #(
    .INIT(64'h55555D5555555155)) 
    \sig_btt_cntr_im0[11]_i_2 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[11] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2mstr_cmd_valid),
        .I4(in[34]),
        .I5(Q[11]),
        .O(\sig_btt_cntr_im0[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55555D5555555155)) 
    \sig_btt_cntr_im0[11]_i_3 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[10] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2mstr_cmd_valid),
        .I4(in[34]),
        .I5(Q[10]),
        .O(\sig_btt_cntr_im0[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55555D5555555155)) 
    \sig_btt_cntr_im0[11]_i_4 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[9] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2mstr_cmd_valid),
        .I4(in[34]),
        .I5(Q[9]),
        .O(\sig_btt_cntr_im0[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h55555D5555555155)) 
    \sig_btt_cntr_im0[11]_i_5 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[8] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2mstr_cmd_valid),
        .I4(in[34]),
        .I5(Q[8]),
        .O(\sig_btt_cntr_im0[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \sig_btt_cntr_im0[13]_i_2 
       (.I0(sig_input_reg_empty),
        .I1(sig_sm_halt_reg),
        .I2(sig_cmd2mstr_cmd_valid),
        .I3(in[34]),
        .O(\sig_btt_cntr_im0[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55555D5555555155)) 
    \sig_btt_cntr_im0[13]_i_3 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[13] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2mstr_cmd_valid),
        .I4(in[34]),
        .I5(Q[13]),
        .O(\sig_btt_cntr_im0[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55555D5555555155)) 
    \sig_btt_cntr_im0[13]_i_4 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[12] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2mstr_cmd_valid),
        .I4(in[34]),
        .I5(Q[12]),
        .O(\sig_btt_cntr_im0[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h55555155)) 
    \sig_btt_cntr_im0[3]_i_2 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[3] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2mstr_cmd_valid),
        .I4(in[34]),
        .O(\sig_btt_cntr_im0[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h55555155)) 
    \sig_btt_cntr_im0[3]_i_3 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[2] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2mstr_cmd_valid),
        .I4(in[34]),
        .O(\sig_btt_cntr_im0[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h55555155)) 
    \sig_btt_cntr_im0[3]_i_4 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[1] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2mstr_cmd_valid),
        .I4(in[34]),
        .O(\sig_btt_cntr_im0[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h55555155)) 
    \sig_btt_cntr_im0[3]_i_5 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[0] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2mstr_cmd_valid),
        .I4(in[34]),
        .O(\sig_btt_cntr_im0[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[3]_i_6 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[3] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I2(sig_push_input_reg11_out),
        .I3(Q[3]),
        .O(\sig_btt_cntr_im0[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[3]_i_7 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[2] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I2(sig_push_input_reg11_out),
        .I3(Q[2]),
        .O(\sig_btt_cntr_im0[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[3]_i_8 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[1] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I2(sig_push_input_reg11_out),
        .I3(Q[1]),
        .O(\sig_btt_cntr_im0[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[3]_i_9 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[0] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I2(sig_push_input_reg11_out),
        .I3(Q[0]),
        .O(\sig_btt_cntr_im0[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h55555155)) 
    \sig_btt_cntr_im0[7]_i_2 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[6] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2mstr_cmd_valid),
        .I4(in[34]),
        .O(\sig_btt_cntr_im0[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h55555155)) 
    \sig_btt_cntr_im0[7]_i_3 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[5] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2mstr_cmd_valid),
        .I4(in[34]),
        .O(\sig_btt_cntr_im0[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h55555155)) 
    \sig_btt_cntr_im0[7]_i_4 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[4] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2mstr_cmd_valid),
        .I4(in[34]),
        .O(\sig_btt_cntr_im0[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h55555D5555555155)) 
    \sig_btt_cntr_im0[7]_i_5 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[7] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2mstr_cmd_valid),
        .I4(in[34]),
        .I5(Q[7]),
        .O(\sig_btt_cntr_im0[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[7]_i_6 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[6] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[6] ),
        .I2(sig_push_input_reg11_out),
        .I3(Q[6]),
        .O(\sig_btt_cntr_im0[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[7]_i_7 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[5] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I2(sig_push_input_reg11_out),
        .I3(Q[5]),
        .O(\sig_btt_cntr_im0[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[7]_i_8 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[4] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .I2(sig_push_input_reg11_out),
        .I3(Q[4]),
        .O(\sig_btt_cntr_im0[7]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[3]_i_1_n_7 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[11]_i_1_n_5 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[10] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[11]_i_1_n_4 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[11] ),
        .R(sig_mmap_reset_reg));
  CARRY4 \sig_btt_cntr_im0_reg[11]_i_1 
       (.CI(\sig_btt_cntr_im0_reg[7]_i_1_n_0 ),
        .CO({\sig_btt_cntr_im0_reg[11]_i_1_n_0 ,\sig_btt_cntr_im0_reg[11]_i_1_n_1 ,\sig_btt_cntr_im0_reg[11]_i_1_n_2 ,\sig_btt_cntr_im0_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sig_btt_cntr_im0[13]_i_2_n_0 ,\sig_btt_cntr_im0[13]_i_2_n_0 ,\sig_btt_cntr_im0[13]_i_2_n_0 ,\sig_btt_cntr_im0[13]_i_2_n_0 }),
        .O({\sig_btt_cntr_im0_reg[11]_i_1_n_4 ,\sig_btt_cntr_im0_reg[11]_i_1_n_5 ,\sig_btt_cntr_im0_reg[11]_i_1_n_6 ,\sig_btt_cntr_im0_reg[11]_i_1_n_7 }),
        .S({\sig_btt_cntr_im0[11]_i_2_n_0 ,\sig_btt_cntr_im0[11]_i_3_n_0 ,\sig_btt_cntr_im0[11]_i_4_n_0 ,\sig_btt_cntr_im0[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[13]_i_1_n_7 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[12] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[13]_i_1_n_6 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[13] ),
        .R(sig_mmap_reset_reg));
  CARRY4 \sig_btt_cntr_im0_reg[13]_i_1 
       (.CI(\sig_btt_cntr_im0_reg[11]_i_1_n_0 ),
        .CO({\NLW_sig_btt_cntr_im0_reg[13]_i_1_CO_UNCONNECTED [3:1],\sig_btt_cntr_im0_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\sig_btt_cntr_im0[13]_i_2_n_0 }),
        .O({\NLW_sig_btt_cntr_im0_reg[13]_i_1_O_UNCONNECTED [3:2],\sig_btt_cntr_im0_reg[13]_i_1_n_6 ,\sig_btt_cntr_im0_reg[13]_i_1_n_7 }),
        .S({1'b0,1'b0,\sig_btt_cntr_im0[13]_i_3_n_0 ,\sig_btt_cntr_im0[13]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[3]_i_1_n_6 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[3]_i_1_n_5 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[3]_i_1_n_4 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .R(sig_mmap_reset_reg));
  CARRY4 \sig_btt_cntr_im0_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\sig_btt_cntr_im0_reg[3]_i_1_n_0 ,\sig_btt_cntr_im0_reg[3]_i_1_n_1 ,\sig_btt_cntr_im0_reg[3]_i_1_n_2 ,\sig_btt_cntr_im0_reg[3]_i_1_n_3 }),
        .CYINIT(\sig_btt_cntr_im0[13]_i_2_n_0 ),
        .DI({\sig_btt_cntr_im0[3]_i_2_n_0 ,\sig_btt_cntr_im0[3]_i_3_n_0 ,\sig_btt_cntr_im0[3]_i_4_n_0 ,\sig_btt_cntr_im0[3]_i_5_n_0 }),
        .O({\sig_btt_cntr_im0_reg[3]_i_1_n_4 ,\sig_btt_cntr_im0_reg[3]_i_1_n_5 ,\sig_btt_cntr_im0_reg[3]_i_1_n_6 ,\sig_btt_cntr_im0_reg[3]_i_1_n_7 }),
        .S({\sig_btt_cntr_im0[3]_i_6_n_0 ,\sig_btt_cntr_im0[3]_i_7_n_0 ,\sig_btt_cntr_im0[3]_i_8_n_0 ,\sig_btt_cntr_im0[3]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[7]_i_1_n_7 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[7]_i_1_n_6 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[7]_i_1_n_5 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[6] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[7]_i_1_n_4 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[7] ),
        .R(sig_mmap_reset_reg));
  CARRY4 \sig_btt_cntr_im0_reg[7]_i_1 
       (.CI(\sig_btt_cntr_im0_reg[3]_i_1_n_0 ),
        .CO({\sig_btt_cntr_im0_reg[7]_i_1_n_0 ,\sig_btt_cntr_im0_reg[7]_i_1_n_1 ,\sig_btt_cntr_im0_reg[7]_i_1_n_2 ,\sig_btt_cntr_im0_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sig_btt_cntr_im0[13]_i_2_n_0 ,\sig_btt_cntr_im0[7]_i_2_n_0 ,\sig_btt_cntr_im0[7]_i_3_n_0 ,\sig_btt_cntr_im0[7]_i_4_n_0 }),
        .O({\sig_btt_cntr_im0_reg[7]_i_1_n_4 ,\sig_btt_cntr_im0_reg[7]_i_1_n_5 ,\sig_btt_cntr_im0_reg[7]_i_1_n_6 ,\sig_btt_cntr_im0_reg[7]_i_1_n_7 }),
        .S({\sig_btt_cntr_im0[7]_i_5_n_0 ,\sig_btt_cntr_im0[7]_i_6_n_0 ,\sig_btt_cntr_im0[7]_i_7_n_0 ,\sig_btt_cntr_im0[7]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[11]_i_1_n_7 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[8] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[11]_i_1_n_6 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[9] ),
        .R(sig_mmap_reset_reg));
  LUT5 #(
    .INIT(32'h08000000)) 
    sig_btt_eq_b2mbaa_ireg1_i_1
       (.I0(sig_btt_eq_b2mbaa_ireg1_i_2_n_0),
        .I1(sig_btt_eq_b2mbaa_ireg1_i_3_n_0),
        .I2(sig_addr_aligned_im0),
        .I3(sig_brst_cnt_eq_zero_im0),
        .I4(sig_btt_eq_b2mbaa_ireg1_i_4_n_0),
        .O(sig_btt_eq_b2mbaa_im0));
  LUT5 #(
    .INIT(32'h60060960)) 
    sig_btt_eq_b2mbaa_ireg1_i_2
       (.I0(sig_mbaa_addr_cntr_slice_im0[5]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I2(sig_mbaa_addr_cntr_slice_im0[4]),
        .I3(sig_btt_lt_b2mbaa_im01_carry_i_8_n_0),
        .I4(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .O(sig_btt_eq_b2mbaa_ireg1_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'h6009)) 
    sig_btt_eq_b2mbaa_ireg1_i_3
       (.I0(sig_mbaa_addr_cntr_slice_im0[1]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I3(sig_mbaa_addr_cntr_slice_im0[0]),
        .O(sig_btt_eq_b2mbaa_ireg1_i_3_n_0));
  LUT6 #(
    .INIT(64'h0606066060606009)) 
    sig_btt_eq_b2mbaa_ireg1_i_4
       (.I0(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I1(sig_mbaa_addr_cntr_slice_im0[3]),
        .I2(sig_mbaa_addr_cntr_slice_im0[2]),
        .I3(sig_mbaa_addr_cntr_slice_im0[1]),
        .I4(sig_mbaa_addr_cntr_slice_im0[0]),
        .I5(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .O(sig_btt_eq_b2mbaa_ireg1_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_btt_eq_b2mbaa_ireg1_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(sig_btt_eq_b2mbaa_im0),
        .Q(sig_btt_eq_b2mbaa_ireg1),
        .R(sig_mmap_reset_reg));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sig_btt_lt_b2mbaa_im01_carry
       (.CI(1'b0),
        .CO({sig_btt_lt_b2mbaa_im01,sig_btt_lt_b2mbaa_im01_carry_n_1,sig_btt_lt_b2mbaa_im01_carry_n_2,sig_btt_lt_b2mbaa_im01_carry_n_3}),
        .CYINIT(1'b0),
        .DI({sig_addr_aligned_im0,sig_btt_lt_b2mbaa_im01_carry_i_1_n_0,sig_btt_lt_b2mbaa_im01_carry_i_2_n_0,sig_btt_lt_b2mbaa_im01_carry_i_3_n_0}),
        .O(NLW_sig_btt_lt_b2mbaa_im01_carry_O_UNCONNECTED[3:0]),
        .S({sig_btt_lt_b2mbaa_im01_carry_i_4_n_0,sig_btt_lt_b2mbaa_im01_carry_i_5_n_0,sig_btt_lt_b2mbaa_im01_carry_i_6_n_0,sig_btt_lt_b2mbaa_im01_carry_i_7_n_0}));
  LUT5 #(
    .INIT(32'h045145D3)) 
    sig_btt_lt_b2mbaa_im01_carry_i_1
       (.I0(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I1(sig_btt_lt_b2mbaa_im01_carry_i_8_n_0),
        .I2(sig_mbaa_addr_cntr_slice_im0[4]),
        .I3(sig_mbaa_addr_cntr_slice_im0[5]),
        .I4(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h010101103737377C)) 
    sig_btt_lt_b2mbaa_im01_carry_i_2
       (.I0(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I1(sig_mbaa_addr_cntr_slice_im0[3]),
        .I2(sig_mbaa_addr_cntr_slice_im0[2]),
        .I3(sig_mbaa_addr_cntr_slice_im0[0]),
        .I4(sig_mbaa_addr_cntr_slice_im0[1]),
        .I5(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h1474)) 
    sig_btt_lt_b2mbaa_im01_carry_i_3
       (.I0(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I1(sig_mbaa_addr_cntr_slice_im0[1]),
        .I2(sig_mbaa_addr_cntr_slice_im0[0]),
        .I3(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    sig_btt_lt_b2mbaa_im01_carry_i_4
       (.I0(sig_mbaa_addr_cntr_slice_im0[5]),
        .I1(sig_mbaa_addr_cntr_slice_im0[3]),
        .I2(sig_mbaa_addr_cntr_slice_im0[1]),
        .I3(sig_mbaa_addr_cntr_slice_im0[0]),
        .I4(sig_mbaa_addr_cntr_slice_im0[2]),
        .I5(sig_mbaa_addr_cntr_slice_im0[4]),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h60060960)) 
    sig_btt_lt_b2mbaa_im01_carry_i_5
       (.I0(sig_mbaa_addr_cntr_slice_im0[5]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I2(sig_mbaa_addr_cntr_slice_im0[4]),
        .I3(sig_btt_lt_b2mbaa_im01_carry_i_8_n_0),
        .I4(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h0606066060606009)) 
    sig_btt_lt_b2mbaa_im01_carry_i_6
       (.I0(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I1(sig_mbaa_addr_cntr_slice_im0[3]),
        .I2(sig_mbaa_addr_cntr_slice_im0[2]),
        .I3(sig_mbaa_addr_cntr_slice_im0[1]),
        .I4(sig_mbaa_addr_cntr_slice_im0[0]),
        .I5(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h6009)) 
    sig_btt_lt_b2mbaa_im01_carry_i_7
       (.I0(sig_mbaa_addr_cntr_slice_im0[1]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I3(sig_mbaa_addr_cntr_slice_im0[0]),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    sig_btt_lt_b2mbaa_im01_carry_i_8
       (.I0(sig_mbaa_addr_cntr_slice_im0[2]),
        .I1(sig_mbaa_addr_cntr_slice_im0[0]),
        .I2(sig_mbaa_addr_cntr_slice_im0[1]),
        .I3(sig_mbaa_addr_cntr_slice_im0[3]),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    sig_btt_lt_b2mbaa_ireg1_i_1
       (.I0(sig_btt_lt_b2mbaa_im01),
        .I1(sig_brst_cnt_eq_zero_im0),
        .O(sig_btt_lt_b2mbaa_im0));
  FDRE #(
    .INIT(1'b0)) 
    sig_btt_lt_b2mbaa_ireg1_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(sig_btt_lt_b2mbaa_im0),
        .Q(sig_btt_lt_b2mbaa_ireg1),
        .R(sig_mmap_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sig_bytes_to_mbaa_ireg1[1]_i_1 
       (.I0(sig_mbaa_addr_cntr_slice_im0[1]),
        .I1(sig_mbaa_addr_cntr_slice_im0[0]),
        .O(\sig_bytes_to_mbaa_ireg1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \sig_bytes_to_mbaa_ireg1[2]_i_1 
       (.I0(sig_mbaa_addr_cntr_slice_im0[2]),
        .I1(sig_mbaa_addr_cntr_slice_im0[1]),
        .I2(sig_mbaa_addr_cntr_slice_im0[0]),
        .O(\sig_bytes_to_mbaa_ireg1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'h5556)) 
    \sig_bytes_to_mbaa_ireg1[3]_i_1 
       (.I0(sig_mbaa_addr_cntr_slice_im0[3]),
        .I1(sig_mbaa_addr_cntr_slice_im0[2]),
        .I2(sig_mbaa_addr_cntr_slice_im0[0]),
        .I3(sig_mbaa_addr_cntr_slice_im0[1]),
        .O(\sig_bytes_to_mbaa_ireg1[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \sig_bytes_to_mbaa_ireg1[4]_i_1 
       (.I0(sig_mbaa_addr_cntr_slice_im0[2]),
        .I1(sig_mbaa_addr_cntr_slice_im0[0]),
        .I2(sig_mbaa_addr_cntr_slice_im0[1]),
        .I3(sig_mbaa_addr_cntr_slice_im0[3]),
        .I4(sig_mbaa_addr_cntr_slice_im0[4]),
        .O(sig_bytes_to_mbaa_im0[4]));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \sig_bytes_to_mbaa_ireg1[5]_i_1 
       (.I0(sig_mbaa_addr_cntr_slice_im0[3]),
        .I1(sig_mbaa_addr_cntr_slice_im0[1]),
        .I2(sig_mbaa_addr_cntr_slice_im0[0]),
        .I3(sig_mbaa_addr_cntr_slice_im0[2]),
        .I4(sig_mbaa_addr_cntr_slice_im0[4]),
        .I5(sig_mbaa_addr_cntr_slice_im0[5]),
        .O(sig_bytes_to_mbaa_im0[5]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(sig_mbaa_addr_cntr_slice_im0[0]),
        .Q(sig_bytes_to_mbaa_ireg1[0]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(\sig_bytes_to_mbaa_ireg1[1]_i_1_n_0 ),
        .Q(sig_bytes_to_mbaa_ireg1[1]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(\sig_bytes_to_mbaa_ireg1[2]_i_1_n_0 ),
        .Q(sig_bytes_to_mbaa_ireg1[2]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(\sig_bytes_to_mbaa_ireg1[3]_i_1_n_0 ),
        .Q(sig_bytes_to_mbaa_ireg1[3]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(sig_bytes_to_mbaa_im0[4]),
        .Q(sig_bytes_to_mbaa_ireg1[4]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(sig_bytes_to_mbaa_im0[5]),
        .Q(sig_bytes_to_mbaa_ireg1[5]),
        .R(sig_mmap_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    sig_calc_error_pushed_i_1
       (.I0(in[34]),
        .I1(sig_ld_xfer_reg),
        .I2(sig_xfer_reg_empty),
        .I3(sig_calc_error_pushed),
        .O(sig_calc_error_pushed_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_pushed_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_calc_error_pushed_i_1_n_0),
        .Q(sig_calc_error_pushed),
        .R(sig_mmap_reset_reg));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sig_calc_error_reg_i_2
       (.I0(Q[10]),
        .I1(Q[11]),
        .I2(Q[8]),
        .I3(Q[9]),
        .I4(Q[13]),
        .I5(Q[12]),
        .O(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[10] ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sig_calc_error_reg_i_3
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[7]),
        .I5(Q[6]),
        .O(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_calc_error_reg_reg_1),
        .Q(in[34]),
        .R(sig_mmap_reset_reg));
  LUT5 #(
    .INIT(32'h54540454)) 
    sig_cmd2addr_valid_i_1
       (.I0(sig_mmap_reset_reg),
        .I1(sig_sm_ld_xfer_reg_ns),
        .I2(sig_mstr2addr_cmd_valid),
        .I3(sig_inhibit_rdy_n_2),
        .I4(sig_cmd2addr_valid_reg_0),
        .O(sig_cmd2addr_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2addr_valid_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_cmd2addr_valid_i_1_n_0),
        .Q(sig_mstr2addr_cmd_valid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h54540454)) 
    sig_cmd2data_valid_i_1
       (.I0(sig_mmap_reset_reg),
        .I1(sig_sm_ld_xfer_reg_ns),
        .I2(sig_mstr2data_cmd_valid),
        .I3(sig_inhibit_rdy_n_1),
        .I4(sig_cmd2data_valid_reg_0),
        .O(sig_cmd2data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2data_valid_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_cmd2data_valid_i_1_n_0),
        .Q(sig_mstr2data_cmd_valid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5540554000405540)) 
    sig_cmd2dre_valid_i_1
       (.I0(sig_mmap_reset_reg),
        .I1(sig_sm_ld_xfer_reg_ns),
        .I2(sig_first_xfer_im0),
        .I3(sig_mstr2sf_cmd_valid),
        .I4(sig_inhibit_rdy_n),
        .I5(sig_cmd2dre_valid_reg_0),
        .O(sig_cmd2dre_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2dre_valid_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_cmd2dre_valid_i_1_n_0),
        .Q(sig_mstr2sf_cmd_valid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h56669AAA)) 
    \sig_finish_addr_offset_ireg2[0]_i_1 
       (.I0(sig_mbaa_addr_cntr_slice_im0[0]),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_bytes_to_mbaa_ireg1[0]),
        .I3(sig_first_xfer_im0),
        .I4(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .O(\sig_finish_addr_offset_ireg2[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    \sig_finish_addr_offset_ireg2[1]_i_1 
       (.I0(\sig_finish_addr_offset_ireg2[1]_i_2_n_0 ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(sig_first_xfer_im0),
        .I4(sig_bytes_to_mbaa_ireg1[1]),
        .I5(sig_mbaa_addr_cntr_slice_im0[1]),
        .O(sig_finish_addr_offset_im1[1]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'hA8882000)) 
    \sig_finish_addr_offset_ireg2[1]_i_2 
       (.I0(sig_mbaa_addr_cntr_slice_im0[0]),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_bytes_to_mbaa_ireg1[0]),
        .I3(sig_first_xfer_im0),
        .I4(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .O(\sig_finish_addr_offset_ireg2[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h556AAA6AAA955595)) 
    \sig_finish_addr_offset_ireg2[2]_i_1 
       (.I0(\sig_finish_addr_offset_ireg2[2]_i_2_n_0 ),
        .I1(sig_bytes_to_mbaa_ireg1[2]),
        .I2(sig_first_xfer_im0),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .I4(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I5(sig_mbaa_addr_cntr_slice_im0[2]),
        .O(sig_finish_addr_offset_im1[2]));
  LUT6 #(
    .INIT(64'h000047774777FFFF)) 
    \sig_finish_addr_offset_ireg2[2]_i_2 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[1]),
        .I4(\sig_finish_addr_offset_ireg2[1]_i_2_n_0 ),
        .I5(sig_mbaa_addr_cntr_slice_im0[1]),
        .O(\sig_finish_addr_offset_ireg2[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h556AAA6AAA955595)) 
    \sig_finish_addr_offset_ireg2[3]_i_1 
       (.I0(\sig_finish_addr_offset_ireg2[4]_i_2_n_0 ),
        .I1(sig_bytes_to_mbaa_ireg1[3]),
        .I2(sig_first_xfer_im0),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .I4(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I5(sig_mbaa_addr_cntr_slice_im0[3]),
        .O(sig_finish_addr_offset_im1[3]));
  LUT5 #(
    .INIT(32'hD42B2BD4)) 
    \sig_finish_addr_offset_ireg2[4]_i_1 
       (.I0(\sig_finish_addr_offset_ireg2[4]_i_2_n_0 ),
        .I1(sig_mbaa_addr_cntr_slice_im0[3]),
        .I2(\sig_addr_cntr_incr_ireg2[3]_i_1_n_0 ),
        .I3(\sig_addr_cntr_incr_ireg2[4]_i_1_n_0 ),
        .I4(sig_mbaa_addr_cntr_slice_im0[4]),
        .O(sig_finish_addr_offset_im1[4]));
  LUT6 #(
    .INIT(64'h2B222BBB2BBB2BBB)) 
    \sig_finish_addr_offset_ireg2[4]_i_2 
       (.I0(\sig_finish_addr_offset_ireg2[2]_i_2_n_0 ),
        .I1(sig_mbaa_addr_cntr_slice_im0[2]),
        .I2(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .I4(sig_first_xfer_im0),
        .I5(sig_bytes_to_mbaa_ireg1[2]),
        .O(\sig_finish_addr_offset_ireg2[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_finish_addr_offset_ireg2_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_finish_addr_offset_ireg2[0]_i_1_n_0 ),
        .Q(sig_finish_addr_offset_ireg2[0]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_finish_addr_offset_ireg2_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_finish_addr_offset_im1[1]),
        .Q(sig_finish_addr_offset_ireg2[1]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_finish_addr_offset_ireg2_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_finish_addr_offset_im1[2]),
        .Q(sig_finish_addr_offset_ireg2[2]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_finish_addr_offset_ireg2_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_finish_addr_offset_im1[3]),
        .Q(sig_finish_addr_offset_ireg2[3]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_finish_addr_offset_ireg2_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_finish_addr_offset_im1[4]),
        .Q(sig_finish_addr_offset_ireg2[4]),
        .R(sig_mmap_reset_reg));
  LUT4 #(
    .INIT(16'h000E)) 
    sig_first_xfer_im0_i_1
       (.I0(sig_first_xfer_im0),
        .I1(sig_push_input_reg11_out),
        .I2(\FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0 ),
        .I3(sig_mmap_reset_reg),
        .O(sig_first_xfer_im0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_first_xfer_im0_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_first_xfer_im0_i_1_n_0),
        .Q(sig_first_xfer_im0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    sig_input_burst_type_reg_i_1
       (.I0(in[33]),
        .I1(sig_push_input_reg11_out),
        .I2(Q[14]),
        .I3(sig_mmap_reset_reg),
        .I4(sig_calc_error_pushed),
        .I5(sig_sm_pop_input_reg),
        .O(sig_input_burst_type_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_input_burst_type_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_input_burst_type_reg_i_1_n_0),
        .Q(in[33]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    sig_input_eof_reg_i_1
       (.I0(sig_mstr2sf_eof),
        .I1(sig_push_input_reg11_out),
        .I2(Q[15]),
        .I3(sig_mmap_reset_reg),
        .I4(sig_calc_error_pushed),
        .I5(sig_sm_pop_input_reg),
        .O(sig_input_eof_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_input_eof_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_input_eof_reg_i_1_n_0),
        .Q(sig_mstr2sf_eof),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFFF2)) 
    sig_input_reg_empty_i_1
       (.I0(sig_input_reg_empty),
        .I1(sig_push_input_reg11_out),
        .I2(sig_mmap_reset_reg),
        .I3(sig_calc_error_pushed),
        .I4(sig_sm_pop_input_reg),
        .O(sig_input_reg_empty_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_input_reg_empty_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_input_reg_empty_i_1_n_0),
        .Q(sig_input_reg_empty),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    sig_last_addr_offset_im2
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(sig_last_addr_offset_im2__0));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'h0454)) 
    sig_ld_xfer_reg_i_1
       (.I0(sig_mmap_reset_reg),
        .I1(sig_sm_ld_xfer_reg_ns),
        .I2(sig_ld_xfer_reg),
        .I3(sig_xfer_reg_empty),
        .O(sig_ld_xfer_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_ld_xfer_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_ld_xfer_reg_i_1_n_0),
        .Q(sig_ld_xfer_reg),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h000E)) 
    sig_ld_xfer_reg_tmp_i_1
       (.I0(sig_ld_xfer_reg_tmp),
        .I1(sig_sm_ld_xfer_reg_ns),
        .I2(\FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0 ),
        .I3(sig_mmap_reset_reg),
        .O(sig_ld_xfer_reg_tmp_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_ld_xfer_reg_tmp_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_ld_xfer_reg_tmp_i_1_n_0),
        .Q(sig_ld_xfer_reg_tmp),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_mmap_reset_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(SS),
        .Q(sig_mmap_reset_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sig_no_btt_residue_ireg1_i_1
       (.I0(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I4(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I5(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .O(sig_no_btt_residue_im0));
  FDRE #(
    .INIT(1'b0)) 
    sig_no_btt_residue_ireg1_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(sig_no_btt_residue_im0),
        .Q(sig_no_btt_residue_ireg1),
        .R(sig_mmap_reset_reg));
  LUT5 #(
    .INIT(32'h00001510)) 
    sig_parent_done_i_1
       (.I0(sig_mmap_reset_reg),
        .I1(sig_mstr2data_sequential),
        .I2(sig_ld_xfer_reg_tmp),
        .I3(sig_parent_done),
        .I4(sig_push_input_reg11_out),
        .O(sig_parent_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_parent_done_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_parent_done_i_1_n_0),
        .Q(sig_parent_done),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[3]_i_2 
       (.I0(sig_mbaa_addr_cntr_slice_im0[3]),
        .I1(\sig_addr_cntr_incr_ireg2_reg_n_0_[3] ),
        .O(\sig_predict_addr_lsh_ireg3[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[3]_i_3 
       (.I0(sig_mbaa_addr_cntr_slice_im0[2]),
        .I1(\sig_addr_cntr_incr_ireg2_reg_n_0_[2] ),
        .O(\sig_predict_addr_lsh_ireg3[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[3]_i_4 
       (.I0(sig_mbaa_addr_cntr_slice_im0[1]),
        .I1(\sig_addr_cntr_incr_ireg2_reg_n_0_[1] ),
        .O(\sig_predict_addr_lsh_ireg3[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[3]_i_5 
       (.I0(sig_mbaa_addr_cntr_slice_im0[0]),
        .I1(\sig_addr_cntr_incr_ireg2_reg_n_0_[0] ),
        .O(\sig_predict_addr_lsh_ireg3[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[7]_i_2 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .I1(\sig_addr_cntr_incr_ireg2_reg_n_0_[6] ),
        .O(\sig_predict_addr_lsh_ireg3[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[7]_i_3 
       (.I0(sig_mbaa_addr_cntr_slice_im0[5]),
        .I1(\sig_addr_cntr_incr_ireg2_reg_n_0_[5] ),
        .O(\sig_predict_addr_lsh_ireg3[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[7]_i_4 
       (.I0(sig_mbaa_addr_cntr_slice_im0[4]),
        .I1(\sig_addr_cntr_incr_ireg2_reg_n_0_[4] ),
        .O(\sig_predict_addr_lsh_ireg3[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[0]),
        .Q(sig_predict_addr_lsh_ireg3__0[0]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[10]),
        .Q(sig_predict_addr_lsh_ireg3__0[10]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[11]),
        .Q(sig_predict_addr_lsh_ireg3__0[11]),
        .R(sig_mmap_reset_reg));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sig_predict_addr_lsh_ireg3_reg[11]_i_1 
       (.CI(\sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_0 ),
        .CO({\sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_0 ,\sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_1 ,\sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_2 ,\sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sig_addr_cntr_lsh_im0_reg_n_0_[11] ,\sig_addr_cntr_lsh_im0_reg_n_0_[10] ,\sig_addr_cntr_lsh_im0_reg_n_0_[9] ,\sig_addr_cntr_lsh_im0_reg_n_0_[8] }),
        .O(sig_predict_addr_lsh_im2[11:8]),
        .S({\sig_addr_cntr_lsh_im0_reg_n_0_[11] ,\sig_addr_cntr_lsh_im0_reg_n_0_[10] ,\sig_addr_cntr_lsh_im0_reg_n_0_[9] ,\sig_addr_cntr_lsh_im0_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[12]),
        .Q(sig_predict_addr_lsh_ireg3__0[12]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[13]),
        .Q(sig_predict_addr_lsh_ireg3__0[13]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[14]),
        .Q(sig_predict_addr_lsh_ireg3__0[14]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[15] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[15]),
        .Q(sig_predict_addr_lsh_ireg3),
        .R(sig_mmap_reset_reg));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sig_predict_addr_lsh_ireg3_reg[15]_i_1 
       (.CI(\sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_0 ),
        .CO({\NLW_sig_predict_addr_lsh_ireg3_reg[15]_i_1_CO_UNCONNECTED [3],\sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_1 ,\sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_2 ,\sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\sig_addr_cntr_lsh_im0_reg_n_0_[14] ,\sig_addr_cntr_lsh_im0_reg_n_0_[13] ,\sig_addr_cntr_lsh_im0_reg_n_0_[12] }),
        .O(sig_predict_addr_lsh_im2[15:12]),
        .S({p_1_in,\sig_addr_cntr_lsh_im0_reg_n_0_[14] ,\sig_addr_cntr_lsh_im0_reg_n_0_[13] ,\sig_addr_cntr_lsh_im0_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[1]),
        .Q(sig_predict_addr_lsh_ireg3__0[1]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[2]),
        .Q(sig_predict_addr_lsh_ireg3__0[2]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[3]),
        .Q(sig_predict_addr_lsh_ireg3__0[3]),
        .R(sig_mmap_reset_reg));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sig_predict_addr_lsh_ireg3_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_0 ,\sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_1 ,\sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_2 ,\sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sig_mbaa_addr_cntr_slice_im0[3:0]),
        .O(sig_predict_addr_lsh_im2[3:0]),
        .S({\sig_predict_addr_lsh_ireg3[3]_i_2_n_0 ,\sig_predict_addr_lsh_ireg3[3]_i_3_n_0 ,\sig_predict_addr_lsh_ireg3[3]_i_4_n_0 ,\sig_predict_addr_lsh_ireg3[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[4]),
        .Q(sig_predict_addr_lsh_ireg3__0[4]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[5]),
        .Q(sig_predict_addr_lsh_ireg3__0[5]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[6]),
        .Q(sig_predict_addr_lsh_ireg3__0[6]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[7]),
        .Q(sig_predict_addr_lsh_ireg3__0[7]),
        .R(sig_mmap_reset_reg));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sig_predict_addr_lsh_ireg3_reg[7]_i_1 
       (.CI(\sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_0 ),
        .CO({\sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_0 ,\sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_1 ,\sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_2 ,\sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sig_addr_cntr_lsh_im0_reg_n_0_[7] ,\sig_addr_cntr_lsh_im0_reg_n_0_[6] ,sig_mbaa_addr_cntr_slice_im0[5:4]}),
        .O(sig_predict_addr_lsh_im2[7:4]),
        .S({\sig_addr_cntr_lsh_im0_reg_n_0_[7] ,\sig_predict_addr_lsh_ireg3[7]_i_2_n_0 ,\sig_predict_addr_lsh_ireg3[7]_i_3_n_0 ,\sig_predict_addr_lsh_ireg3[7]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[8]),
        .Q(sig_predict_addr_lsh_ireg3__0[8]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[9]),
        .Q(sig_predict_addr_lsh_ireg3__0[9]),
        .R(sig_mmap_reset_reg));
  LUT4 #(
    .INIT(16'hFFEA)) 
    sig_sm_halt_reg_i_1
       (.I0(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ),
        .I2(sig_calc_error_pushed),
        .I3(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[7] ),
        .O(sig_sm_halt_ns));
  FDSE #(
    .INIT(1'b0)) 
    sig_sm_halt_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_sm_halt_ns),
        .Q(sig_sm_halt_reg),
        .S(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_ld_calc2_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_sm_ld_calc2_reg_ns),
        .Q(sig_sm_ld_calc2_reg),
        .R(sig_mmap_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h08)) 
    sig_sm_pop_input_reg_i_1
       (.I0(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ),
        .I1(sig_parent_done),
        .I2(sig_calc_error_pushed),
        .O(sig_sm_pop_input_reg_ns));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_pop_input_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_sm_pop_input_reg_ns),
        .Q(sig_sm_pop_input_reg),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_addr_ireg2_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_mbaa_addr_cntr_slice_im0[0]),
        .Q(sig_strbgen_addr_ireg2[0]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_addr_ireg2_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_mbaa_addr_cntr_slice_im0[1]),
        .Q(sig_strbgen_addr_ireg2[1]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_addr_ireg2_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_mbaa_addr_cntr_slice_im0[2]),
        .Q(sig_strbgen_addr_ireg2[2]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_addr_ireg2_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_mbaa_addr_cntr_slice_im0[3]),
        .Q(sig_strbgen_addr_ireg2[3]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_addr_ireg2_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_mbaa_addr_cntr_slice_im0[4]),
        .Q(sig_strbgen_addr_ireg2[4]),
        .R(sig_mmap_reset_reg));
  LUT6 #(
    .INIT(64'hFFFFAAFBAAAAAAAA)) 
    \sig_strbgen_bytes_ireg2[4]_i_1 
       (.I0(sig_mmap_reset_reg),
        .I1(sig_first_xfer_im0),
        .I2(sig_addr_aligned_ireg1),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .I4(\sig_addr_cntr_incr_ireg2[5]_i_1_n_0 ),
        .I5(sig_sm_ld_calc2_reg),
        .O(\sig_strbgen_bytes_ireg2[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF0DFFFFFF0D0000)) 
    \sig_strbgen_bytes_ireg2[5]_i_1 
       (.I0(sig_first_xfer_im0),
        .I1(sig_addr_aligned_ireg1),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_addr_cntr_incr_ireg2[5]_i_1_n_0 ),
        .I4(sig_sm_ld_calc2_reg),
        .I5(\sig_strbgen_bytes_ireg2_reg_n_0_[5] ),
        .O(\sig_strbgen_bytes_ireg2[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_bytes_ireg2_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[0]_i_1_n_0 ),
        .Q(\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .R(\sig_strbgen_bytes_ireg2[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_bytes_ireg2_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[1]_i_1_n_0 ),
        .Q(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .R(\sig_strbgen_bytes_ireg2[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_bytes_ireg2_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[2]_i_1_n_0 ),
        .Q(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .R(\sig_strbgen_bytes_ireg2[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_bytes_ireg2_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[3]_i_1_n_0 ),
        .Q(\sig_strbgen_bytes_ireg2_reg_n_0_[3] ),
        .R(\sig_strbgen_bytes_ireg2[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_bytes_ireg2_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[4]_i_1_n_0 ),
        .Q(\sig_strbgen_bytes_ireg2_reg_n_0_[4] ),
        .R(\sig_strbgen_bytes_ireg2[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_bytes_ireg2_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\sig_strbgen_bytes_ireg2[5]_i_1_n_0 ),
        .Q(\sig_strbgen_bytes_ireg2_reg_n_0_[5] ),
        .R(sig_mmap_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'hFEEEAAAB)) 
    \sig_xfer_end_strb_ireg3[10]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'hEEEEAAAB)) 
    \sig_xfer_end_strb_ireg3[11]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'hEEEAAAAB)) 
    \sig_xfer_end_strb_ireg3[12]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'hEEAAAAAB)) 
    \sig_xfer_end_strb_ireg3[13]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'hEAAAAAAB)) 
    \sig_xfer_end_strb_ireg3[14]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \sig_xfer_end_strb_ireg3[15]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'hAAAAAA89)) 
    \sig_xfer_end_strb_ireg3[17]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'hAAAAA889)) 
    \sig_xfer_end_strb_ireg3[18]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'hAAAA8889)) 
    \sig_xfer_end_strb_ireg3[19]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \sig_xfer_end_strb_ireg3[1]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'hAAAA8881)) 
    \sig_xfer_end_strb_ireg3[20]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'hAAAA8801)) 
    \sig_xfer_end_strb_ireg3[21]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'hAAAA8001)) 
    \sig_xfer_end_strb_ireg3[22]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'hAAAA0001)) 
    \sig_xfer_end_strb_ireg3[23]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'hAAA80001)) 
    \sig_xfer_end_strb_ireg3[24]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'hAA880001)) 
    \sig_xfer_end_strb_ireg3[25]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'hA8880001)) 
    \sig_xfer_end_strb_ireg3[26]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'h88880001)) 
    \sig_xfer_end_strb_ireg3[27]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'h88800001)) 
    \sig_xfer_end_strb_ireg3[28]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'h88000001)) 
    \sig_xfer_end_strb_ireg3[29]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'hFFFFFEEF)) 
    \sig_xfer_end_strb_ireg3[2]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'h80000001)) 
    \sig_xfer_end_strb_ireg3[30]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \sig_xfer_end_strb_ireg3[31]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'hFFFFEEEF)) 
    \sig_xfer_end_strb_ireg3[3]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'hFFFFEEEB)) 
    \sig_xfer_end_strb_ireg3[4]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'hFFFFEEAB)) 
    \sig_xfer_end_strb_ireg3[5]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'hFFFFEAAB)) 
    \sig_xfer_end_strb_ireg3[6]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'hFFFFAAAB)) 
    \sig_xfer_end_strb_ireg3[7]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEAAAB)) 
    \sig_xfer_end_strb_ireg3[8]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'hFFEEAAAB)) 
    \sig_xfer_end_strb_ireg3[9]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(1'b1),
        .Q(sig_xfer_end_strb_ireg3[0]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\sig_xfer_end_strb_ireg3[10]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[10]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\sig_xfer_end_strb_ireg3[11]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[11]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\sig_xfer_end_strb_ireg3[12]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[12]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\sig_xfer_end_strb_ireg3[13]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[13]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\sig_xfer_end_strb_ireg3[14]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[14]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[15] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\sig_xfer_end_strb_ireg3[15]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[15]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[16] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_last_addr_offset_im2__0),
        .Q(sig_xfer_end_strb_ireg3[16]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[17] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\sig_xfer_end_strb_ireg3[17]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[17]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[18] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\sig_xfer_end_strb_ireg3[18]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[18]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[19] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\sig_xfer_end_strb_ireg3[19]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[19]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\sig_xfer_end_strb_ireg3[1]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[1]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[20] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\sig_xfer_end_strb_ireg3[20]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[20]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[21] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\sig_xfer_end_strb_ireg3[21]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[21]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[22] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\sig_xfer_end_strb_ireg3[22]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[22]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[23] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\sig_xfer_end_strb_ireg3[23]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[23]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[24] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\sig_xfer_end_strb_ireg3[24]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[24]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[25] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\sig_xfer_end_strb_ireg3[25]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[25]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[26] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\sig_xfer_end_strb_ireg3[26]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[26]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[27] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\sig_xfer_end_strb_ireg3[27]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[27]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[28] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\sig_xfer_end_strb_ireg3[28]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[28]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[29] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\sig_xfer_end_strb_ireg3[29]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[29]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\sig_xfer_end_strb_ireg3[2]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[2]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[30] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\sig_xfer_end_strb_ireg3[30]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[30]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[31] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\sig_xfer_end_strb_ireg3[31]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[31]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\sig_xfer_end_strb_ireg3[3]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[3]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\sig_xfer_end_strb_ireg3[4]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[4]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\sig_xfer_end_strb_ireg3[5]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[5]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\sig_xfer_end_strb_ireg3[6]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[6]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\sig_xfer_end_strb_ireg3[7]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[7]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\sig_xfer_end_strb_ireg3[8]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[8]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\sig_xfer_end_strb_ireg3[9]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[9]),
        .R(sig_mmap_reset_reg));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    sig_xfer_len_eq_0_ireg3_i_1
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[4] ),
        .I1(\sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ),
        .I2(\sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ),
        .I3(\sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ),
        .I4(\sig_adjusted_addr_incr_ireg2_reg_n_0_[3] ),
        .I5(\sig_adjusted_addr_incr_ireg2_reg_n_0_[5] ),
        .O(sig_xfer_len_eq_0_im2));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_len_eq_0_ireg3_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_xfer_len_eq_0_im2),
        .Q(sig_xfer_len_eq_0_ireg3),
        .R(sig_mmap_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'hFF3A)) 
    sig_xfer_reg_empty_i_1
       (.I0(\FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0 ),
        .I1(sig_ld_xfer_reg),
        .I2(sig_xfer_reg_empty),
        .I3(sig_mmap_reset_reg),
        .O(sig_xfer_reg_empty_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_reg_empty_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_xfer_reg_empty_i_1_n_0),
        .Q(sig_xfer_reg_empty),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(\GEN_32BIT_CASE.lsig_start_vect ),
        .Q(sig_xfer_strt_strb_ireg3[0]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_xfer_strt_strb_im2[10]),
        .Q(sig_xfer_strt_strb_ireg3[10]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_xfer_strt_strb_im2[11]),
        .Q(sig_xfer_strt_strb_ireg3[11]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_xfer_strt_strb_im2[12]),
        .Q(sig_xfer_strt_strb_ireg3[12]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_xfer_strt_strb_im2[13]),
        .Q(sig_xfer_strt_strb_ireg3[13]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_xfer_strt_strb_im2[14]),
        .Q(sig_xfer_strt_strb_ireg3[14]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[15] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(g0_b15_n_0),
        .Q(sig_xfer_strt_strb_ireg3[15]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[16] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_xfer_strt_strb_im2[16]),
        .Q(sig_xfer_strt_strb_ireg3[16]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[17] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_xfer_strt_strb_im2[17]),
        .Q(sig_xfer_strt_strb_ireg3[17]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[18] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_xfer_strt_strb_im2[18]),
        .Q(sig_xfer_strt_strb_ireg3[18]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[19] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_xfer_strt_strb_im2[19]),
        .Q(sig_xfer_strt_strb_ireg3[19]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_xfer_strt_strb_im2[1]),
        .Q(sig_xfer_strt_strb_ireg3[1]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[20] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_xfer_strt_strb_im2[20]),
        .Q(sig_xfer_strt_strb_ireg3[20]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[21] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_xfer_strt_strb_im2[21]),
        .Q(sig_xfer_strt_strb_ireg3[21]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[22] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_xfer_strt_strb_im2[22]),
        .Q(sig_xfer_strt_strb_ireg3[22]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[23] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_xfer_strt_strb_im2[23]),
        .Q(sig_xfer_strt_strb_ireg3[23]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[24] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_xfer_strt_strb_im2[24]),
        .Q(sig_xfer_strt_strb_ireg3[24]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[25] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_xfer_strt_strb_im2[25]),
        .Q(sig_xfer_strt_strb_ireg3[25]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[26] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_xfer_strt_strb_im2[26]),
        .Q(sig_xfer_strt_strb_ireg3[26]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[27] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_xfer_strt_strb_im2[27]),
        .Q(sig_xfer_strt_strb_ireg3[27]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[28] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_xfer_strt_strb_im2[28]),
        .Q(sig_xfer_strt_strb_ireg3[28]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[29] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_xfer_strt_strb_im2[29]),
        .Q(sig_xfer_strt_strb_ireg3[29]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_xfer_strt_strb_im2[2]),
        .Q(sig_xfer_strt_strb_ireg3[2]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[30] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_xfer_strt_strb_im2[30]),
        .Q(sig_xfer_strt_strb_ireg3[30]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[31] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(g0_b31_n_0),
        .Q(sig_xfer_strt_strb_ireg3[31]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_xfer_strt_strb_im2[3]),
        .Q(sig_xfer_strt_strb_ireg3[3]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_xfer_strt_strb_im2[4]),
        .Q(sig_xfer_strt_strb_ireg3[4]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_xfer_strt_strb_im2[5]),
        .Q(sig_xfer_strt_strb_ireg3[5]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_xfer_strt_strb_im2[6]),
        .Q(sig_xfer_strt_strb_ireg3[6]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_xfer_strt_strb_im2[7]),
        .Q(sig_xfer_strt_strb_ireg3[7]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_xfer_strt_strb_im2[8]),
        .Q(sig_xfer_strt_strb_ireg3[8]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_xfer_strt_strb_im2[9]),
        .Q(sig_xfer_strt_strb_ireg3[9]),
        .R(sig_mmap_reset_reg));
endmodule

module system_axi_dma_1_0_axi_datamover_rd_sf
   (full,
    dout,
    empty,
    FIFO_Full_reg,
    sig_init_done,
    sig_sf_allow_addr_req,
    \OMIT_UNPACKING.lsig_cmd_loaded ,
    FIFO_Full_reg_0,
    sig_inhibit_rdy_n,
    sig_slast_with_stop,
    \gen_fwft.empty_fwft_i_reg ,
    SS,
    m_axi_mm2s_aclk,
    wr_en,
    din,
    sig_init_done_reg,
    sig_mstr2sf_cmd_valid,
    sig_sstrb_stop_mask,
    out,
    sig_cmd_stat_rst_user_reg_n_cdc_from,
    sig_ok_to_post_rd_addr_reg_0,
    sig_last_mmap_dbeat_reg);
  output full;
  output [288:0]dout;
  output empty;
  output FIFO_Full_reg;
  output sig_init_done;
  output sig_sf_allow_addr_req;
  output \OMIT_UNPACKING.lsig_cmd_loaded ;
  output FIFO_Full_reg_0;
  output sig_inhibit_rdy_n;
  output sig_slast_with_stop;
  output \gen_fwft.empty_fwft_i_reg ;
  input [0:0]SS;
  input m_axi_mm2s_aclk;
  input wr_en;
  input [289:0]din;
  input sig_init_done_reg;
  input sig_mstr2sf_cmd_valid;
  input [0:0]sig_sstrb_stop_mask;
  input out;
  input sig_cmd_stat_rst_user_reg_n_cdc_from;
  input sig_ok_to_post_rd_addr_reg_0;
  input sig_last_mmap_dbeat_reg;

  wire FIFO_Full_reg;
  wire FIFO_Full_reg_0;
  wire I_DATA_FIFO_n_300;
  wire I_DATA_FIFO_n_302;
  wire I_DATA_FIFO_n_303;
  wire \OMIT_UNPACKING.lsig_cmd_loaded ;
  wire \OMIT_UNPACKING.lsig_ld_cmd ;
  wire [0:0]SS;
  wire \USE_SRL_FIFO.sig_rd_empty ;
  wire [289:0]din;
  wire [288:0]dout;
  wire empty;
  wire full;
  wire \gen_fwft.empty_fwft_i_reg ;
  wire m_axi_mm2s_aclk;
  wire out;
  wire [1:0]p_0_in;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from;
  wire [7:1]sig_data_fifo_wr_cnt;
  wire sig_inhibit_rdy_n;
  wire sig_init_done;
  wire sig_init_done_reg;
  wire sig_last_mmap_dbeat_reg;
  wire sig_mstr2sf_cmd_valid;
  wire sig_ok_to_post_rd_addr_i_10_n_0;
  wire sig_ok_to_post_rd_addr_i_11_n_0;
  wire sig_ok_to_post_rd_addr_i_12_n_0;
  wire sig_ok_to_post_rd_addr_i_2_n_0;
  wire sig_ok_to_post_rd_addr_i_6_n_0;
  wire sig_ok_to_post_rd_addr_i_7_n_0;
  wire sig_ok_to_post_rd_addr_i_8_n_0;
  wire sig_ok_to_post_rd_addr_i_9_n_0;
  wire sig_ok_to_post_rd_addr_reg_0;
  wire sig_sf_allow_addr_req;
  wire sig_slast_with_stop;
  wire [0:0]sig_sstrb_stop_mask;
  wire \sig_token_cntr[4]_i_3_n_0 ;
  wire \sig_token_cntr[4]_i_4_n_0 ;
  wire \sig_token_cntr[4]_i_5_n_0 ;
  wire \sig_token_cntr[4]_i_6_n_0 ;
  wire \sig_token_cntr[6]_i_1_n_0 ;
  wire \sig_token_cntr[6]_i_3_n_0 ;
  wire \sig_token_cntr[6]_i_4_n_0 ;
  wire \sig_token_cntr[6]_i_5_n_0 ;
  wire [6:0]sig_token_cntr_reg;
  wire \sig_token_cntr_reg[4]_i_1_n_0 ;
  wire \sig_token_cntr_reg[4]_i_1_n_1 ;
  wire \sig_token_cntr_reg[4]_i_1_n_2 ;
  wire \sig_token_cntr_reg[4]_i_1_n_3 ;
  wire \sig_token_cntr_reg[4]_i_1_n_4 ;
  wire \sig_token_cntr_reg[4]_i_1_n_5 ;
  wire \sig_token_cntr_reg[4]_i_1_n_6 ;
  wire \sig_token_cntr_reg[4]_i_1_n_7 ;
  wire \sig_token_cntr_reg[6]_i_2_n_3 ;
  wire \sig_token_cntr_reg[6]_i_2_n_6 ;
  wire \sig_token_cntr_reg[6]_i_2_n_7 ;
  wire wr_en;
  wire [3:1]\NLW_sig_token_cntr_reg[6]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_sig_token_cntr_reg[6]_i_2_O_UNCONNECTED ;

  system_axi_dma_1_0_axi_datamover_sfifo_autord I_DATA_FIFO
       (.\OMIT_UNPACKING.lsig_cmd_loaded_reg (I_DATA_FIFO_n_300),
        .\OMIT_UNPACKING.lsig_cmd_loaded_reg_0 (\OMIT_UNPACKING.lsig_cmd_loaded ),
        .\OMIT_UNPACKING.lsig_ld_cmd (\OMIT_UNPACKING.lsig_ld_cmd ),
        .Q(\USE_SRL_FIFO.sig_rd_empty ),
        .S({sig_ok_to_post_rd_addr_i_9_n_0,sig_ok_to_post_rd_addr_i_10_n_0,sig_ok_to_post_rd_addr_i_11_n_0,sig_ok_to_post_rd_addr_i_12_n_0}),
        .SS(SS),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .\gen_fwft.empty_fwft_i_reg (\gen_fwft.empty_fwft_i_reg ),
        .\gen_fwft.empty_fwft_i_reg_0 (I_DATA_FIFO_n_303),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .out(out),
        .sig_cmd_stat_rst_user_reg_n_cdc_from(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(I_DATA_FIFO_n_302),
        .sig_ok_to_post_rd_addr_i_4(sig_token_cntr_reg[0]),
        .sig_ok_to_post_rd_addr_reg(sig_ok_to_post_rd_addr_i_2_n_0),
        .sig_ok_to_post_rd_addr_reg_0(sig_ok_to_post_rd_addr_reg_0),
        .sig_ok_to_post_rd_addr_reg_1({sig_ok_to_post_rd_addr_i_6_n_0,sig_ok_to_post_rd_addr_i_7_n_0,sig_ok_to_post_rd_addr_i_8_n_0}),
        .sig_slast_with_stop(sig_slast_with_stop),
        .sig_sstrb_stop_mask(sig_sstrb_stop_mask),
        .wr_data_count(sig_data_fifo_wr_cnt),
        .wr_en(wr_en));
  system_axi_dma_1_0_axi_datamover_fifo__parameterized3 \OMIT_DRE_CNTL.I_DRE_CNTL_FIFO 
       (.FIFO_Full_reg(FIFO_Full_reg),
        .FIFO_Full_reg_0(FIFO_Full_reg_0),
        .\INFERRED_GEN.cnt_i_reg[2] (I_DATA_FIFO_n_300),
        .\OMIT_UNPACKING.lsig_ld_cmd (\OMIT_UNPACKING.lsig_ld_cmd ),
        .Q(\USE_SRL_FIFO.sig_rd_empty ),
        .SS(SS),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .sig_inhibit_rdy_n_reg_0(sig_inhibit_rdy_n),
        .sig_init_done(sig_init_done),
        .sig_init_done_reg_0(sig_init_done_reg),
        .sig_mstr2sf_cmd_valid(sig_mstr2sf_cmd_valid));
  FDRE #(
    .INIT(1'b0)) 
    \OMIT_UNPACKING.lsig_cmd_loaded_reg 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(I_DATA_FIFO_n_303),
        .Q(\OMIT_UNPACKING.lsig_cmd_loaded ),
        .R(SS));
  LUT4 #(
    .INIT(16'hA956)) 
    sig_ok_to_post_rd_addr_i_10
       (.I0(sig_token_cntr_reg[2]),
        .I1(sig_token_cntr_reg[1]),
        .I2(sig_token_cntr_reg[0]),
        .I3(sig_data_fifo_wr_cnt[3]),
        .O(sig_ok_to_post_rd_addr_i_10_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sig_ok_to_post_rd_addr_i_11
       (.I0(sig_token_cntr_reg[1]),
        .I1(sig_token_cntr_reg[0]),
        .I2(sig_data_fifo_wr_cnt[2]),
        .O(sig_ok_to_post_rd_addr_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sig_ok_to_post_rd_addr_i_12
       (.I0(sig_token_cntr_reg[0]),
        .I1(sig_data_fifo_wr_cnt[1]),
        .O(sig_ok_to_post_rd_addr_i_12_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    sig_ok_to_post_rd_addr_i_2
       (.I0(\sig_token_cntr[6]_i_3_n_0 ),
        .I1(sig_token_cntr_reg[6]),
        .I2(sig_token_cntr_reg[5]),
        .O(sig_ok_to_post_rd_addr_i_2_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    sig_ok_to_post_rd_addr_i_6
       (.I0(\sig_token_cntr[6]_i_3_n_0 ),
        .I1(sig_token_cntr_reg[5]),
        .I2(sig_token_cntr_reg[6]),
        .I3(sig_data_fifo_wr_cnt[7]),
        .O(sig_ok_to_post_rd_addr_i_6_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    sig_ok_to_post_rd_addr_i_7
       (.I0(sig_token_cntr_reg[5]),
        .I1(\sig_token_cntr[6]_i_3_n_0 ),
        .I2(sig_data_fifo_wr_cnt[6]),
        .O(sig_ok_to_post_rd_addr_i_7_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAA955555556)) 
    sig_ok_to_post_rd_addr_i_8
       (.I0(sig_token_cntr_reg[4]),
        .I1(sig_token_cntr_reg[2]),
        .I2(sig_token_cntr_reg[1]),
        .I3(sig_token_cntr_reg[0]),
        .I4(sig_token_cntr_reg[3]),
        .I5(sig_data_fifo_wr_cnt[5]),
        .O(sig_ok_to_post_rd_addr_i_8_n_0));
  LUT5 #(
    .INIT(32'hAAA95556)) 
    sig_ok_to_post_rd_addr_i_9
       (.I0(sig_token_cntr_reg[3]),
        .I1(sig_token_cntr_reg[0]),
        .I2(sig_token_cntr_reg[1]),
        .I3(sig_token_cntr_reg[2]),
        .I4(sig_data_fifo_wr_cnt[4]),
        .O(sig_ok_to_post_rd_addr_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_ok_to_post_rd_addr_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(I_DATA_FIFO_n_302),
        .Q(sig_sf_allow_addr_req),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sig_token_cntr[0]_i_1 
       (.I0(sig_token_cntr_reg[0]),
        .O(p_0_in[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_token_cntr[4]_i_2 
       (.I0(sig_token_cntr_reg[1]),
        .O(p_0_in[1]));
  LUT2 #(
    .INIT(4'h9)) 
    \sig_token_cntr[4]_i_3 
       (.I0(sig_token_cntr_reg[3]),
        .I1(sig_token_cntr_reg[4]),
        .O(\sig_token_cntr[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sig_token_cntr[4]_i_4 
       (.I0(sig_token_cntr_reg[2]),
        .I1(sig_token_cntr_reg[3]),
        .O(\sig_token_cntr[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sig_token_cntr[4]_i_5 
       (.I0(sig_token_cntr_reg[1]),
        .I1(sig_token_cntr_reg[2]),
        .O(\sig_token_cntr[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h656A666655555555)) 
    \sig_token_cntr[4]_i_6 
       (.I0(sig_token_cntr_reg[1]),
        .I1(sig_ok_to_post_rd_addr_reg_0),
        .I2(sig_token_cntr_reg[5]),
        .I3(sig_token_cntr_reg[6]),
        .I4(\sig_token_cntr[6]_i_3_n_0 ),
        .I5(sig_last_mmap_dbeat_reg),
        .O(\sig_token_cntr[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h5B55A8AA)) 
    \sig_token_cntr[6]_i_1 
       (.I0(sig_ok_to_post_rd_addr_reg_0),
        .I1(sig_token_cntr_reg[6]),
        .I2(sig_token_cntr_reg[5]),
        .I3(\sig_token_cntr[6]_i_3_n_0 ),
        .I4(sig_last_mmap_dbeat_reg),
        .O(\sig_token_cntr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \sig_token_cntr[6]_i_3 
       (.I0(sig_token_cntr_reg[3]),
        .I1(sig_token_cntr_reg[0]),
        .I2(sig_token_cntr_reg[1]),
        .I3(sig_token_cntr_reg[2]),
        .I4(sig_token_cntr_reg[4]),
        .O(\sig_token_cntr[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sig_token_cntr[6]_i_4 
       (.I0(sig_token_cntr_reg[5]),
        .I1(sig_token_cntr_reg[6]),
        .O(\sig_token_cntr[6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sig_token_cntr[6]_i_5 
       (.I0(sig_token_cntr_reg[4]),
        .I1(sig_token_cntr_reg[5]),
        .O(\sig_token_cntr[6]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_token_cntr_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_token_cntr[6]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(sig_token_cntr_reg[0]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_token_cntr_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_token_cntr[6]_i_1_n_0 ),
        .D(\sig_token_cntr_reg[4]_i_1_n_7 ),
        .Q(sig_token_cntr_reg[1]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_token_cntr_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_token_cntr[6]_i_1_n_0 ),
        .D(\sig_token_cntr_reg[4]_i_1_n_6 ),
        .Q(sig_token_cntr_reg[2]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_token_cntr_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_token_cntr[6]_i_1_n_0 ),
        .D(\sig_token_cntr_reg[4]_i_1_n_5 ),
        .Q(sig_token_cntr_reg[3]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_token_cntr_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_token_cntr[6]_i_1_n_0 ),
        .D(\sig_token_cntr_reg[4]_i_1_n_4 ),
        .Q(sig_token_cntr_reg[4]),
        .R(SS));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \sig_token_cntr_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\sig_token_cntr_reg[4]_i_1_n_0 ,\sig_token_cntr_reg[4]_i_1_n_1 ,\sig_token_cntr_reg[4]_i_1_n_2 ,\sig_token_cntr_reg[4]_i_1_n_3 }),
        .CYINIT(sig_token_cntr_reg[0]),
        .DI({sig_token_cntr_reg[3:1],p_0_in[1]}),
        .O({\sig_token_cntr_reg[4]_i_1_n_4 ,\sig_token_cntr_reg[4]_i_1_n_5 ,\sig_token_cntr_reg[4]_i_1_n_6 ,\sig_token_cntr_reg[4]_i_1_n_7 }),
        .S({\sig_token_cntr[4]_i_3_n_0 ,\sig_token_cntr[4]_i_4_n_0 ,\sig_token_cntr[4]_i_5_n_0 ,\sig_token_cntr[4]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_token_cntr_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_token_cntr[6]_i_1_n_0 ),
        .D(\sig_token_cntr_reg[6]_i_2_n_7 ),
        .Q(sig_token_cntr_reg[5]),
        .R(SS));
  FDSE #(
    .INIT(1'b0)) 
    \sig_token_cntr_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_token_cntr[6]_i_1_n_0 ),
        .D(\sig_token_cntr_reg[6]_i_2_n_6 ),
        .Q(sig_token_cntr_reg[6]),
        .S(SS));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \sig_token_cntr_reg[6]_i_2 
       (.CI(\sig_token_cntr_reg[4]_i_1_n_0 ),
        .CO({\NLW_sig_token_cntr_reg[6]_i_2_CO_UNCONNECTED [3:1],\sig_token_cntr_reg[6]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sig_token_cntr_reg[4]}),
        .O({\NLW_sig_token_cntr_reg[6]_i_2_O_UNCONNECTED [3:2],\sig_token_cntr_reg[6]_i_2_n_6 ,\sig_token_cntr_reg[6]_i_2_n_7 }),
        .S({1'b0,1'b0,\sig_token_cntr[6]_i_4_n_0 ,\sig_token_cntr[6]_i_5_n_0 }));
endmodule

module system_axi_dma_1_0_axi_datamover_rd_status_cntl
   (sig_rsc2stat_status,
    sig_rsc2stat_status_valid,
    sig_rsc2data_ready,
    sig_rd_sts_interr_reg0,
    m_axi_mm2s_aclk,
    sig_rd_sts_slverr_reg0,
    sig_data2rsc_valid,
    sig_data2rsc_decerr,
    sig_stat2rsc_status_ready,
    sig_cmd_stat_rst_user_reg_n_cdc_from);
  output [2:0]sig_rsc2stat_status;
  output sig_rsc2stat_status_valid;
  output sig_rsc2data_ready;
  input sig_rd_sts_interr_reg0;
  input m_axi_mm2s_aclk;
  input sig_rd_sts_slverr_reg0;
  input sig_data2rsc_valid;
  input sig_data2rsc_decerr;
  input sig_stat2rsc_status_ready;
  input sig_cmd_stat_rst_user_reg_n_cdc_from;

  wire m_axi_mm2s_aclk;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from;
  wire sig_data2rsc_decerr;
  wire sig_data2rsc_valid;
  wire sig_push_rd_sts_reg;
  wire sig_rd_sts_decerr_reg0;
  wire sig_rd_sts_interr_reg0;
  wire sig_rd_sts_interr_reg_i_1_n_0;
  wire sig_rd_sts_slverr_reg0;
  wire sig_rsc2data_ready;
  wire [2:0]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;
  wire sig_stat2rsc_status_ready;

  LUT2 #(
    .INIT(4'hE)) 
    sig_rd_sts_decerr_reg_i_1
       (.I0(sig_rsc2stat_status[1]),
        .I1(sig_data2rsc_decerr),
        .O(sig_rd_sts_decerr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_decerr_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(sig_rd_sts_decerr_reg0),
        .Q(sig_rsc2stat_status[1]),
        .R(sig_rd_sts_interr_reg_i_1_n_0));
  LUT3 #(
    .INIT(8'h8F)) 
    sig_rd_sts_interr_reg_i_1
       (.I0(sig_rsc2stat_status_valid),
        .I1(sig_stat2rsc_status_ready),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .O(sig_rd_sts_interr_reg_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    sig_rd_sts_interr_reg_i_2
       (.I0(sig_rsc2data_ready),
        .I1(sig_data2rsc_valid),
        .O(sig_push_rd_sts_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_interr_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(sig_rd_sts_interr_reg0),
        .Q(sig_rsc2stat_status[0]),
        .R(sig_rd_sts_interr_reg_i_1_n_0));
  FDSE #(
    .INIT(1'b0)) 
    sig_rd_sts_reg_empty_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(1'b0),
        .Q(sig_rsc2data_ready),
        .S(sig_rd_sts_interr_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_reg_full_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(1'b1),
        .Q(sig_rsc2stat_status_valid),
        .R(sig_rd_sts_interr_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_slverr_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(sig_rd_sts_slverr_reg0),
        .Q(sig_rsc2stat_status[2]),
        .R(sig_rd_sts_interr_reg_i_1_n_0));
endmodule

module system_axi_dma_1_0_axi_datamover_rddata_cntl
   (FIFO_Full_reg,
    sig_data2rsc_valid,
    sig_next_calc_error_reg,
    sig_last_mmap_dbeat_reg,
    sig_data2addr_stop_req,
    sig_halt_reg_dly2,
    sig_halt_reg_dly3,
    sig_data2rsc_decerr,
    sig_init_done,
    sig_rd_sts_interr_reg0,
    sig_rd_sts_slverr_reg0,
    \USE_SRL_FIFO.sig_wr_fifo ,
    sig_inhibit_rdy_n,
    sig_addr_posted_cntr,
    din,
    wr_en,
    m_axi_mm2s_rready,
    sig_halt_reg_dly3_reg_0,
    SS,
    m_axi_mm2s_aclk,
    sig_init_done_reg,
    sig_rsc2stat_status,
    sig_mstr2data_cmd_valid,
    sig_cmd_stat_rst_user_reg_n_cdc_from,
    sig_rsc2stat_status_valid,
    sig_stat2rsc_status_ready,
    m_axi_mm2s_rlast,
    m_axi_mm2s_rvalid,
    full,
    m_axi_mm2s_rresp,
    sig_rsc2data_ready,
    sig_sstrb_stop_mask,
    in,
    sig_rst2all_stop_request,
    \sig_addr_posted_cntr_reg[2]_0 );
  output FIFO_Full_reg;
  output sig_data2rsc_valid;
  output sig_next_calc_error_reg;
  output sig_last_mmap_dbeat_reg;
  output sig_data2addr_stop_req;
  output sig_halt_reg_dly2;
  output sig_halt_reg_dly3;
  output sig_data2rsc_decerr;
  output sig_init_done;
  output sig_rd_sts_interr_reg0;
  output sig_rd_sts_slverr_reg0;
  output \USE_SRL_FIFO.sig_wr_fifo ;
  output sig_inhibit_rdy_n;
  output [2:0]sig_addr_posted_cntr;
  output [33:0]din;
  output wr_en;
  output m_axi_mm2s_rready;
  output sig_halt_reg_dly3_reg_0;
  input [0:0]SS;
  input m_axi_mm2s_aclk;
  input sig_init_done_reg;
  input [1:0]sig_rsc2stat_status;
  input sig_mstr2data_cmd_valid;
  input sig_cmd_stat_rst_user_reg_n_cdc_from;
  input sig_rsc2stat_status_valid;
  input sig_stat2rsc_status_ready;
  input m_axi_mm2s_rlast;
  input m_axi_mm2s_rvalid;
  input full;
  input [1:0]m_axi_mm2s_rresp;
  input sig_rsc2data_ready;
  input [0:0]sig_sstrb_stop_mask;
  input [68:0]in;
  input sig_rst2all_stop_request;
  input \sig_addr_posted_cntr_reg[2]_0 ;

  wire FIFO_Full_reg;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_10 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_11 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_12 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_13 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_14 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_5 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_7 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_8 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_84 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_85 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_86 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_87 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_9 ;
  wire [0:0]SS;
  wire \USE_SRL_FIFO.sig_wr_fifo ;
  wire [33:0]din;
  wire full;
  wire [68:0]in;
  wire m_axi_mm2s_aclk;
  wire m_axi_mm2s_rlast;
  wire m_axi_mm2s_rready;
  wire m_axi_mm2s_rready_INST_0_i_1_n_0;
  wire [1:0]m_axi_mm2s_rresp;
  wire m_axi_mm2s_rvalid;
  wire [2:0]sig_addr_posted_cntr;
  wire \sig_addr_posted_cntr[0]_i_1_n_0 ;
  wire \sig_addr_posted_cntr[1]_i_1_n_0 ;
  wire \sig_addr_posted_cntr[2]_i_1_n_0 ;
  wire \sig_addr_posted_cntr_reg[2]_0 ;
  wire sig_cmd_cmplt_last_dbeat;
  wire [85:9]sig_cmd_fifo_data_out;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from;
  wire sig_coelsc_cmd_cmplt_reg_i_1_n_0;
  wire sig_coelsc_decerr_reg0;
  wire sig_coelsc_interr_reg0;
  wire sig_coelsc_slverr_reg0;
  wire sig_data2addr_stop_req;
  wire sig_data2rsc_calc_err;
  wire sig_data2rsc_decerr;
  wire sig_data2rsc_slverr;
  wire sig_data2rsc_valid;
  wire [7:0]sig_dbeat_cntr;
  wire \sig_dbeat_cntr[7]_i_3_n_0 ;
  wire \sig_dbeat_cntr[7]_i_4_n_0 ;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_full;
  wire sig_first_dbeat;
  wire sig_first_dbeat_i_2_n_0;
  wire sig_halt_reg_dly1;
  wire sig_halt_reg_dly2;
  wire sig_halt_reg_dly3;
  wire sig_halt_reg_dly3_reg_0;
  wire sig_halt_reg_i_1_n_0;
  wire sig_inhibit_rdy_n;
  wire sig_init_done;
  wire sig_init_done_reg;
  wire sig_last_dbeat_i_2_n_0;
  wire sig_last_dbeat_reg_n_0;
  wire sig_last_mmap_dbeat;
  wire sig_last_mmap_dbeat_reg;
  wire sig_ld_new_cmd_reg;
  wire sig_mstr2data_cmd_valid;
  wire sig_next_calc_error_reg;
  wire sig_next_cmd_cmplt_reg;
  wire sig_next_eof_reg;
  wire [31:0]sig_next_last_strb_reg;
  wire sig_next_sequential_reg;
  wire [31:0]sig_next_strt_strb_reg;
  wire sig_push_coelsc_reg;
  wire sig_push_dqual_reg;
  wire sig_rd_sts_interr_reg0;
  wire sig_rd_sts_slverr_reg0;
  wire sig_rsc2data_ready;
  wire [1:0]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;
  wire sig_rst2all_stop_request;
  wire [0:0]sig_sstrb_stop_mask;
  wire sig_stat2rsc_status_ready;
  wire wr_en;
  wire \xpm_fifo_instance.xpm_fifo_sync_inst_i_38_n_0 ;

  system_axi_dma_1_0_axi_datamover_fifo__parameterized2 \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO 
       (.D({\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_7 ,\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_8 ,\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_9 ,\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_10 ,\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_11 ,\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_12 ,\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_13 ,\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_14 }),
        .E(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_5 ),
        .FIFO_Full_reg(FIFO_Full_reg),
        .Q(sig_dbeat_cntr),
        .SS(SS),
        .full(full),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ),
        .in(in),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axi_mm2s_rlast(m_axi_mm2s_rlast),
        .m_axi_mm2s_rlast_0(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ),
        .m_axi_mm2s_rvalid(m_axi_mm2s_rvalid),
        .out({sig_cmd_fifo_data_out[85:82],sig_cmd_fifo_data_out[80:17],sig_cmd_fifo_data_out[9]}),
        .sel(\USE_SRL_FIFO.sig_wr_fifo ),
        .\sig_addr_posted_cntr_reg[0] (\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_85 ),
        .sig_cmd_stat_rst_user_reg_n_cdc_from(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_84 ),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_86 ),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg_1(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_87 ),
        .\sig_dbeat_cntr[7]_i_3 (sig_addr_posted_cntr[2]),
        .\sig_dbeat_cntr[7]_i_3_0 (sig_addr_posted_cntr[1]),
        .\sig_dbeat_cntr[7]_i_3_1 (sig_addr_posted_cntr[0]),
        .\sig_dbeat_cntr[7]_i_3_2 (sig_data2rsc_valid),
        .\sig_dbeat_cntr_reg[0] (\sig_dbeat_cntr[7]_i_3_n_0 ),
        .\sig_dbeat_cntr_reg[5] (\sig_dbeat_cntr[7]_i_4_n_0 ),
        .sig_dqual_reg_empty(sig_dqual_reg_empty),
        .sig_dqual_reg_empty_reg(sig_last_dbeat_reg_n_0),
        .sig_dqual_reg_empty_reg_0(sig_next_calc_error_reg),
        .sig_dqual_reg_empty_reg_1(sig_data2addr_stop_req),
        .sig_dqual_reg_full(sig_dqual_reg_full),
        .sig_first_dbeat_reg(sig_first_dbeat_i_2_n_0),
        .sig_inhibit_rdy_n_reg_0(sig_inhibit_rdy_n),
        .sig_init_done(sig_init_done),
        .sig_init_done_reg_0(sig_init_done_reg),
        .sig_last_dbeat_reg(sig_last_dbeat_i_2_n_0),
        .sig_ld_new_cmd_reg(sig_ld_new_cmd_reg),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_next_sequential_reg(sig_next_sequential_reg),
        .sig_push_dqual_reg(sig_push_dqual_reg),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_stat2rsc_status_ready(sig_stat2rsc_status_ready));
  LUT6 #(
    .INIT(64'h0000000000000D00)) 
    m_axi_mm2s_rready_INST_0
       (.I0(full),
        .I1(sig_data2addr_stop_req),
        .I2(sig_data2rsc_valid),
        .I3(sig_dqual_reg_full),
        .I4(sig_next_calc_error_reg),
        .I5(m_axi_mm2s_rready_INST_0_i_1_n_0),
        .O(m_axi_mm2s_rready));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'h01)) 
    m_axi_mm2s_rready_INST_0_i_1
       (.I0(sig_addr_posted_cntr[2]),
        .I1(sig_addr_posted_cntr[1]),
        .I2(sig_addr_posted_cntr[0]),
        .O(m_axi_mm2s_rready_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT5 #(
    .INIT(32'hB9996662)) 
    \sig_addr_posted_cntr[0]_i_1 
       (.I0(\sig_addr_posted_cntr_reg[2]_0 ),
        .I1(sig_last_mmap_dbeat_reg),
        .I2(sig_addr_posted_cntr[1]),
        .I3(sig_addr_posted_cntr[2]),
        .I4(sig_addr_posted_cntr[0]),
        .O(\sig_addr_posted_cntr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT5 #(
    .INIT(32'hCCBCC2CC)) 
    \sig_addr_posted_cntr[1]_i_1 
       (.I0(sig_addr_posted_cntr[2]),
        .I1(sig_addr_posted_cntr[1]),
        .I2(sig_addr_posted_cntr[0]),
        .I3(sig_last_mmap_dbeat_reg),
        .I4(\sig_addr_posted_cntr_reg[2]_0 ),
        .O(\sig_addr_posted_cntr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT5 #(
    .INIT(32'hAAEAA8AA)) 
    \sig_addr_posted_cntr[2]_i_1 
       (.I0(sig_addr_posted_cntr[2]),
        .I1(sig_addr_posted_cntr[1]),
        .I2(sig_addr_posted_cntr[0]),
        .I3(sig_last_mmap_dbeat_reg),
        .I4(\sig_addr_posted_cntr_reg[2]_0 ),
        .O(\sig_addr_posted_cntr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[0]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[0]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[1]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[1]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[2]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[2]),
        .R(SS));
  LUT5 #(
    .INIT(32'h7000FFFF)) 
    sig_coelsc_cmd_cmplt_reg_i_1
       (.I0(sig_ld_new_cmd_reg),
        .I1(sig_next_calc_error_reg),
        .I2(sig_rsc2data_ready),
        .I3(sig_data2rsc_valid),
        .I4(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .O(sig_coelsc_cmd_cmplt_reg_i_1_n_0));
  LUT3 #(
    .INIT(8'hEA)) 
    sig_coelsc_cmd_cmplt_reg_i_2
       (.I0(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ),
        .I1(sig_next_calc_error_reg),
        .I2(sig_ld_new_cmd_reg),
        .O(sig_push_coelsc_reg));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    sig_coelsc_cmd_cmplt_reg_i_3
       (.I0(sig_next_calc_error_reg),
        .I1(sig_next_cmd_cmplt_reg),
        .I2(m_axi_mm2s_rlast),
        .O(sig_cmd_cmplt_last_dbeat));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_cmd_cmplt_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_cmd_cmplt_last_dbeat),
        .Q(sig_data2rsc_valid),
        .R(sig_coelsc_cmd_cmplt_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    sig_coelsc_decerr_reg_i_1
       (.I0(sig_data2rsc_decerr),
        .I1(m_axi_mm2s_rvalid),
        .I2(m_axi_mm2s_rresp[1]),
        .I3(m_axi_mm2s_rresp[0]),
        .O(sig_coelsc_decerr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_decerr_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_coelsc_decerr_reg0),
        .Q(sig_data2rsc_decerr),
        .R(sig_coelsc_cmd_cmplt_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sig_coelsc_interr_reg_i_1
       (.I0(sig_data2rsc_calc_err),
        .I1(sig_next_calc_error_reg),
        .O(sig_coelsc_interr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_interr_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_coelsc_interr_reg0),
        .Q(sig_data2rsc_calc_err),
        .R(sig_coelsc_cmd_cmplt_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'hAAEA)) 
    sig_coelsc_slverr_reg_i_1
       (.I0(sig_data2rsc_slverr),
        .I1(m_axi_mm2s_rvalid),
        .I2(m_axi_mm2s_rresp[1]),
        .I3(m_axi_mm2s_rresp[0]),
        .O(sig_coelsc_slverr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_slverr_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_coelsc_slverr_reg0),
        .Q(sig_data2rsc_slverr),
        .R(sig_coelsc_cmd_cmplt_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h4044000040444044)) 
    \sig_dbeat_cntr[7]_i_3 
       (.I0(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_85 ),
        .I1(m_axi_mm2s_rvalid),
        .I2(sig_data2addr_stop_req),
        .I3(full),
        .I4(sig_first_dbeat_i_2_n_0),
        .I5(\sig_dbeat_cntr[7]_i_4_n_0 ),
        .O(\sig_dbeat_cntr[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \sig_dbeat_cntr[7]_i_4 
       (.I0(sig_dbeat_cntr[1]),
        .I1(sig_dbeat_cntr[0]),
        .I2(sig_dbeat_cntr[3]),
        .I3(sig_dbeat_cntr[2]),
        .O(\sig_dbeat_cntr[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_5 ),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_14 ),
        .Q(sig_dbeat_cntr[0]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_5 ),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_13 ),
        .Q(sig_dbeat_cntr[1]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_5 ),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_12 ),
        .Q(sig_dbeat_cntr[2]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_5 ),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_11 ),
        .Q(sig_dbeat_cntr[3]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_5 ),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_10 ),
        .Q(sig_dbeat_cntr[4]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_5 ),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_9 ),
        .Q(sig_dbeat_cntr[5]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_5 ),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_8 ),
        .Q(sig_dbeat_cntr[6]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_5 ),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_7 ),
        .Q(sig_dbeat_cntr[7]),
        .R(SS));
  FDSE #(
    .INIT(1'b0)) 
    sig_dqual_reg_empty_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(1'b0),
        .Q(sig_dqual_reg_empty),
        .S(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    sig_dqual_reg_full_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(1'b1),
        .Q(sig_dqual_reg_full),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_first_dbeat_i_2
       (.I0(sig_dbeat_cntr[6]),
        .I1(sig_dbeat_cntr[4]),
        .I2(sig_dbeat_cntr[7]),
        .I3(sig_dbeat_cntr[5]),
        .O(sig_first_dbeat_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_first_dbeat_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[9]),
        .Q(sig_first_dbeat),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_87 ));
  FDRE #(
    .INIT(1'b0)) 
    sig_halt_reg_dly1_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_data2addr_stop_req),
        .Q(sig_halt_reg_dly1),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    sig_halt_reg_dly2_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_halt_reg_dly1),
        .Q(sig_halt_reg_dly2),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    sig_halt_reg_dly3_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_halt_reg_dly2),
        .Q(sig_halt_reg_dly3),
        .R(SS));
  LUT2 #(
    .INIT(4'hE)) 
    sig_halt_reg_i_1
       (.I0(sig_rst2all_stop_request),
        .I1(sig_data2addr_stop_req),
        .O(sig_halt_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_halt_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_halt_reg_i_1_n_0),
        .Q(sig_data2addr_stop_req),
        .R(SS));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    sig_last_dbeat_i_2
       (.I0(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ),
        .I1(sig_dbeat_cntr[3]),
        .I2(sig_dbeat_cntr[2]),
        .I3(sig_dbeat_cntr[0]),
        .I4(sig_dbeat_cntr[1]),
        .I5(sig_first_dbeat_i_2_n_0),
        .O(sig_last_dbeat_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_dbeat_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_86 ),
        .Q(sig_last_dbeat_reg_n_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    sig_last_mmap_dbeat_reg_i_1
       (.I0(m_axi_mm2s_rlast),
        .I1(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ),
        .O(sig_last_mmap_dbeat));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_mmap_dbeat_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_last_mmap_dbeat),
        .Q(sig_last_mmap_dbeat_reg),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    sig_ld_new_cmd_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_84 ),
        .Q(sig_ld_new_cmd_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_calc_error_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[85]),
        .Q(sig_next_calc_error_reg),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_cmd_cmplt_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[84]),
        .Q(sig_next_cmd_cmplt_reg),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_eof_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[82]),
        .Q(sig_next_eof_reg),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[49]),
        .Q(sig_next_last_strb_reg[0]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[59]),
        .Q(sig_next_last_strb_reg[10]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[60]),
        .Q(sig_next_last_strb_reg[11]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[61]),
        .Q(sig_next_last_strb_reg[12]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[62]),
        .Q(sig_next_last_strb_reg[13]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[63]),
        .Q(sig_next_last_strb_reg[14]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[15] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[64]),
        .Q(sig_next_last_strb_reg[15]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[16] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[65]),
        .Q(sig_next_last_strb_reg[16]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[17] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[66]),
        .Q(sig_next_last_strb_reg[17]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[18] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[67]),
        .Q(sig_next_last_strb_reg[18]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[19] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[68]),
        .Q(sig_next_last_strb_reg[19]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[50]),
        .Q(sig_next_last_strb_reg[1]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[20] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[69]),
        .Q(sig_next_last_strb_reg[20]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[21] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[70]),
        .Q(sig_next_last_strb_reg[21]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[22] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[71]),
        .Q(sig_next_last_strb_reg[22]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[23] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[72]),
        .Q(sig_next_last_strb_reg[23]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[24] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[73]),
        .Q(sig_next_last_strb_reg[24]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[25] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[74]),
        .Q(sig_next_last_strb_reg[25]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[26] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[75]),
        .Q(sig_next_last_strb_reg[26]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[27] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[76]),
        .Q(sig_next_last_strb_reg[27]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[28] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[77]),
        .Q(sig_next_last_strb_reg[28]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[29] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[78]),
        .Q(sig_next_last_strb_reg[29]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[51]),
        .Q(sig_next_last_strb_reg[2]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[30] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[79]),
        .Q(sig_next_last_strb_reg[30]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[31] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[80]),
        .Q(sig_next_last_strb_reg[31]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[52]),
        .Q(sig_next_last_strb_reg[3]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[53]),
        .Q(sig_next_last_strb_reg[4]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[54]),
        .Q(sig_next_last_strb_reg[5]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[55]),
        .Q(sig_next_last_strb_reg[6]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[56]),
        .Q(sig_next_last_strb_reg[7]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[57]),
        .Q(sig_next_last_strb_reg[8]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[58]),
        .Q(sig_next_last_strb_reg[9]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_sequential_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[83]),
        .Q(sig_next_sequential_reg),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[17]),
        .Q(sig_next_strt_strb_reg[0]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[27]),
        .Q(sig_next_strt_strb_reg[10]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[28]),
        .Q(sig_next_strt_strb_reg[11]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[29]),
        .Q(sig_next_strt_strb_reg[12]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[30]),
        .Q(sig_next_strt_strb_reg[13]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[31]),
        .Q(sig_next_strt_strb_reg[14]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[15] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[32]),
        .Q(sig_next_strt_strb_reg[15]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[16] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[33]),
        .Q(sig_next_strt_strb_reg[16]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[17] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[34]),
        .Q(sig_next_strt_strb_reg[17]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[18] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[35]),
        .Q(sig_next_strt_strb_reg[18]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[19] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[36]),
        .Q(sig_next_strt_strb_reg[19]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[18]),
        .Q(sig_next_strt_strb_reg[1]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[20] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[37]),
        .Q(sig_next_strt_strb_reg[20]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[21] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[38]),
        .Q(sig_next_strt_strb_reg[21]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[22] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[39]),
        .Q(sig_next_strt_strb_reg[22]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[23] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[40]),
        .Q(sig_next_strt_strb_reg[23]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[24] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[41]),
        .Q(sig_next_strt_strb_reg[24]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[25] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[42]),
        .Q(sig_next_strt_strb_reg[25]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[26] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[43]),
        .Q(sig_next_strt_strb_reg[26]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[27] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[44]),
        .Q(sig_next_strt_strb_reg[27]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[28] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[45]),
        .Q(sig_next_strt_strb_reg[28]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[29] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[46]),
        .Q(sig_next_strt_strb_reg[29]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[19]),
        .Q(sig_next_strt_strb_reg[2]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[30] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[47]),
        .Q(sig_next_strt_strb_reg[30]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[31] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[48]),
        .Q(sig_next_strt_strb_reg[31]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[20]),
        .Q(sig_next_strt_strb_reg[3]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[21]),
        .Q(sig_next_strt_strb_reg[4]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[22]),
        .Q(sig_next_strt_strb_reg[5]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[23]),
        .Q(sig_next_strt_strb_reg[6]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[24]),
        .Q(sig_next_strt_strb_reg[7]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[25]),
        .Q(sig_next_strt_strb_reg[8]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[26]),
        .Q(sig_next_strt_strb_reg[9]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_88 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sig_rd_sts_interr_reg_i_3
       (.I0(sig_data2rsc_calc_err),
        .I1(sig_rsc2stat_status[0]),
        .O(sig_rd_sts_interr_reg0));
  LUT2 #(
    .INIT(4'hE)) 
    sig_rd_sts_slverr_reg_i_1
       (.I0(sig_data2rsc_slverr),
        .I1(sig_rsc2stat_status[1]),
        .O(sig_rd_sts_slverr_reg0));
  LUT3 #(
    .INIT(8'hF4)) 
    \sig_sstrb_stop_mask[31]_i_1 
       (.I0(sig_halt_reg_dly3),
        .I1(sig_halt_reg_dly2),
        .I2(sig_sstrb_stop_mask),
        .O(sig_halt_reg_dly3_reg_0));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_10 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[26]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[26]),
        .I4(sig_data2addr_stop_req),
        .O(din[26]));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_11 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[25]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[25]),
        .I4(sig_data2addr_stop_req),
        .O(din[25]));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_12 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[24]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[24]),
        .I4(sig_data2addr_stop_req),
        .O(din[24]));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_13 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[23]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[23]),
        .I4(sig_data2addr_stop_req),
        .O(din[23]));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_14 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[22]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[22]),
        .I4(sig_data2addr_stop_req),
        .O(din[22]));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_15 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[21]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[21]),
        .I4(sig_data2addr_stop_req),
        .O(din[21]));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_16 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[20]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[20]),
        .I4(sig_data2addr_stop_req),
        .O(din[20]));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_17 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[19]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[19]),
        .I4(sig_data2addr_stop_req),
        .O(din[19]));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_18 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[18]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[18]),
        .I4(sig_data2addr_stop_req),
        .O(din[18]));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_19 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[17]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[17]),
        .I4(sig_data2addr_stop_req),
        .O(din[17]));
  LUT6 #(
    .INIT(64'h0000000003030100)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_2 
       (.I0(sig_data2rsc_valid),
        .I1(\xpm_fifo_instance.xpm_fifo_sync_inst_i_38_n_0 ),
        .I2(m_axi_mm2s_rready_INST_0_i_1_n_0),
        .I3(m_axi_mm2s_rvalid),
        .I4(sig_data2addr_stop_req),
        .I5(full),
        .O(wr_en));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_20 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[16]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[16]),
        .I4(sig_data2addr_stop_req),
        .O(din[16]));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_21 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[15]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[15]),
        .I4(sig_data2addr_stop_req),
        .O(din[15]));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_22 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[14]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[14]),
        .I4(sig_data2addr_stop_req),
        .O(din[14]));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_23 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[13]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[13]),
        .I4(sig_data2addr_stop_req),
        .O(din[13]));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_24 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[12]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[12]),
        .I4(sig_data2addr_stop_req),
        .O(din[12]));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_25 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[11]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[11]),
        .I4(sig_data2addr_stop_req),
        .O(din[11]));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_26 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[10]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[10]),
        .I4(sig_data2addr_stop_req),
        .O(din[10]));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_27 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[9]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[9]),
        .I4(sig_data2addr_stop_req),
        .O(din[9]));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_28 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[8]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[8]),
        .I4(sig_data2addr_stop_req),
        .O(din[8]));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_29 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[7]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[7]),
        .I4(sig_data2addr_stop_req),
        .O(din[7]));
  LUT6 #(
    .INIT(64'hFFFF004000400040)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_3 
       (.I0(m_axi_mm2s_rready_INST_0_i_1_n_0),
        .I1(sig_data2addr_stop_req),
        .I2(sig_dqual_reg_full),
        .I3(sig_next_calc_error_reg),
        .I4(sig_next_cmd_cmplt_reg),
        .I5(m_axi_mm2s_rlast),
        .O(din[33]));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_30 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[6]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[6]),
        .I4(sig_data2addr_stop_req),
        .O(din[6]));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_31 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[5]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[5]),
        .I4(sig_data2addr_stop_req),
        .O(din[5]));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_32 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[4]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[4]),
        .I4(sig_data2addr_stop_req),
        .O(din[4]));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_33 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[3]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[3]),
        .I4(sig_data2addr_stop_req),
        .O(din[3]));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_34 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[2]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[2]),
        .I4(sig_data2addr_stop_req),
        .O(din[2]));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_35 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[1]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[1]),
        .I4(sig_data2addr_stop_req),
        .O(din[1]));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_36 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[0]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[0]),
        .I4(sig_data2addr_stop_req),
        .O(din[0]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_38 
       (.I0(sig_next_calc_error_reg),
        .I1(sig_dqual_reg_full),
        .O(\xpm_fifo_instance.xpm_fifo_sync_inst_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF004000400040)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_4 
       (.I0(m_axi_mm2s_rready_INST_0_i_1_n_0),
        .I1(sig_data2addr_stop_req),
        .I2(sig_dqual_reg_full),
        .I3(sig_next_calc_error_reg),
        .I4(sig_next_eof_reg),
        .I5(m_axi_mm2s_rlast),
        .O(din[32]));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_5 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[31]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[31]),
        .I4(sig_data2addr_stop_req),
        .O(din[31]));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_6 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[30]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[30]),
        .I4(sig_data2addr_stop_req),
        .O(din[30]));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_7 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[29]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[29]),
        .I4(sig_data2addr_stop_req),
        .O(din[29]));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_8 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[28]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[28]),
        .I4(sig_data2addr_stop_req),
        .O(din[28]));
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_9 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[27]),
        .I2(sig_first_dbeat),
        .I3(sig_next_strt_strb_reg[27]),
        .I4(sig_data2addr_stop_req),
        .O(din[27]));
endmodule

module system_axi_dma_1_0_axi_datamover_reset
   (sig_cmd_stat_rst_user_reg_n_cdc_from,
    SS,
    mm2s_halt_cmplt,
    sig_rst2all_stop_request,
    out,
    m_axi_mm2s_aclk,
    sig_halt_cmplt_reg_0,
    sig_next_calc_error_reg,
    sig_addr_posted_cntr,
    halt);
  output sig_cmd_stat_rst_user_reg_n_cdc_from;
  output [0:0]SS;
  output mm2s_halt_cmplt;
  output sig_rst2all_stop_request;
  input out;
  input m_axi_mm2s_aclk;
  input sig_halt_cmplt_reg_0;
  input sig_next_calc_error_reg;
  input [2:0]sig_addr_posted_cntr;
  input halt;

  wire [0:0]SS;
  wire halt;
  wire m_axi_mm2s_aclk;
  wire mm2s_halt_cmplt;
  wire out;
  wire [2:0]sig_addr_posted_cntr;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from;
  wire sig_halt_cmplt_i_1_n_0;
  wire sig_halt_cmplt_reg_0;
  wire sig_next_calc_error_reg;
  wire sig_rst2all_stop_request;
  wire sig_s_h_halt_reg_i_1_n_0;

  FDRE #(
    .INIT(1'b0)) 
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(out),
        .Q(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF44444445)) 
    sig_halt_cmplt_i_1
       (.I0(sig_halt_cmplt_reg_0),
        .I1(sig_next_calc_error_reg),
        .I2(sig_addr_posted_cntr[0]),
        .I3(sig_addr_posted_cntr[1]),
        .I4(sig_addr_posted_cntr[2]),
        .I5(mm2s_halt_cmplt),
        .O(sig_halt_cmplt_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_halt_cmplt_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_halt_cmplt_i_1_n_0),
        .Q(mm2s_halt_cmplt),
        .R(SS));
  LUT2 #(
    .INIT(4'hE)) 
    sig_s_h_halt_reg_i_1
       (.I0(halt),
        .I1(sig_rst2all_stop_request),
        .O(sig_s_h_halt_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_s_h_halt_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_s_h_halt_reg_i_1_n_0),
        .Q(sig_rst2all_stop_request),
        .R(SS));
  LUT1 #(
    .INIT(2'h1)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_1 
       (.I0(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .O(SS));
endmodule

module system_axi_dma_1_0_axi_datamover_sfifo_autord
   (full,
    wr_data_count,
    dout,
    empty,
    sig_slast_with_stop,
    \OMIT_UNPACKING.lsig_ld_cmd ,
    \OMIT_UNPACKING.lsig_cmd_loaded_reg ,
    \gen_fwft.empty_fwft_i_reg ,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    \gen_fwft.empty_fwft_i_reg_0 ,
    SS,
    m_axi_mm2s_aclk,
    wr_en,
    din,
    sig_sstrb_stop_mask,
    \OMIT_UNPACKING.lsig_cmd_loaded_reg_0 ,
    out,
    Q,
    sig_ok_to_post_rd_addr_reg,
    sig_cmd_stat_rst_user_reg_n_cdc_from,
    sig_ok_to_post_rd_addr_reg_0,
    sig_ok_to_post_rd_addr_i_4,
    S,
    sig_ok_to_post_rd_addr_reg_1);
  output full;
  output [6:0]wr_data_count;
  output [288:0]dout;
  output empty;
  output sig_slast_with_stop;
  output \OMIT_UNPACKING.lsig_ld_cmd ;
  output \OMIT_UNPACKING.lsig_cmd_loaded_reg ;
  output \gen_fwft.empty_fwft_i_reg ;
  output sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  output \gen_fwft.empty_fwft_i_reg_0 ;
  input [0:0]SS;
  input m_axi_mm2s_aclk;
  input wr_en;
  input [289:0]din;
  input [0:0]sig_sstrb_stop_mask;
  input \OMIT_UNPACKING.lsig_cmd_loaded_reg_0 ;
  input out;
  input [0:0]Q;
  input sig_ok_to_post_rd_addr_reg;
  input sig_cmd_stat_rst_user_reg_n_cdc_from;
  input sig_ok_to_post_rd_addr_reg_0;
  input [0:0]sig_ok_to_post_rd_addr_i_4;
  input [3:0]S;
  input [2:0]sig_ok_to_post_rd_addr_reg_1;

  wire \OMIT_UNPACKING.lsig_cmd_loaded_reg ;
  wire \OMIT_UNPACKING.lsig_cmd_loaded_reg_0 ;
  wire \OMIT_UNPACKING.lsig_ld_cmd ;
  wire [0:0]Q;
  wire [3:0]S;
  wire [0:0]SS;
  wire [289:0]din;
  wire [288:0]dout;
  wire empty;
  wire full;
  wire \gen_fwft.empty_fwft_i_reg ;
  wire \gen_fwft.empty_fwft_i_reg_0 ;
  wire m_axi_mm2s_aclk;
  wire out;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire [0:0]sig_ok_to_post_rd_addr_i_4;
  wire sig_ok_to_post_rd_addr_reg;
  wire sig_ok_to_post_rd_addr_reg_0;
  wire [2:0]sig_ok_to_post_rd_addr_reg_1;
  wire sig_slast_with_stop;
  wire [0:0]sig_sstrb_stop_mask;
  wire [6:0]wr_data_count;
  wire wr_en;

  system_axi_dma_1_0_sync_fifo_fg \BLK_MEM.I_SYNC_FIFOGEN_FIFO 
       (.\OMIT_UNPACKING.lsig_cmd_loaded_reg (\OMIT_UNPACKING.lsig_cmd_loaded_reg ),
        .\OMIT_UNPACKING.lsig_cmd_loaded_reg_0 (\OMIT_UNPACKING.lsig_cmd_loaded_reg_0 ),
        .\OMIT_UNPACKING.lsig_ld_cmd (\OMIT_UNPACKING.lsig_ld_cmd ),
        .Q(Q),
        .S(S),
        .SS(SS),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .\gen_fwft.empty_fwft_i_reg (\gen_fwft.empty_fwft_i_reg ),
        .\gen_fwft.empty_fwft_i_reg_0 (\gen_fwft.empty_fwft_i_reg_0 ),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .out(out),
        .sig_cmd_stat_rst_user_reg_n_cdc_from(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_ok_to_post_rd_addr_i_4_0(sig_ok_to_post_rd_addr_i_4),
        .sig_ok_to_post_rd_addr_reg(sig_ok_to_post_rd_addr_reg),
        .sig_ok_to_post_rd_addr_reg_0(sig_ok_to_post_rd_addr_reg_0),
        .sig_ok_to_post_rd_addr_reg_1(sig_ok_to_post_rd_addr_reg_1),
        .sig_slast_with_stop(sig_slast_with_stop),
        .sig_sstrb_stop_mask(sig_sstrb_stop_mask),
        .wr_data_count(wr_data_count),
        .wr_en(wr_en));
endmodule

module system_axi_dma_1_0_axi_datamover_skid_buf
   (out,
    m_axis_mm2s_tvalid,
    m_axis_mm2s_tlast,
    sig_sstrb_stop_mask,
    m_axis_mm2s_tdata,
    m_axis_mm2s_tkeep,
    m_axi_mm2s_aclk,
    SS,
    sig_slast_with_stop,
    \sig_sstrb_stop_mask_reg[31]_0 ,
    sig_cmd_stat_rst_user_reg_n_cdc_from,
    sig_halt_reg_dly2,
    sig_halt_reg_dly3,
    \OMIT_UNPACKING.lsig_cmd_loaded ,
    empty,
    m_axis_mm2s_tready,
    sig_mmap_reset_reg,
    sig_m_valid_out_reg_0,
    dout);
  output out;
  output m_axis_mm2s_tvalid;
  output m_axis_mm2s_tlast;
  output [0:0]sig_sstrb_stop_mask;
  output [255:0]m_axis_mm2s_tdata;
  output [31:0]m_axis_mm2s_tkeep;
  input m_axi_mm2s_aclk;
  input [0:0]SS;
  input sig_slast_with_stop;
  input \sig_sstrb_stop_mask_reg[31]_0 ;
  input sig_cmd_stat_rst_user_reg_n_cdc_from;
  input sig_halt_reg_dly2;
  input sig_halt_reg_dly3;
  input \OMIT_UNPACKING.lsig_cmd_loaded ;
  input empty;
  input m_axis_mm2s_tready;
  input sig_mmap_reset_reg;
  input sig_m_valid_out_reg_0;
  input [288:0]dout;

  wire \OMIT_UNPACKING.lsig_cmd_loaded ;
  wire [0:0]SS;
  wire [288:0]dout;
  wire empty;
  wire m_axi_mm2s_aclk;
  wire [255:0]m_axis_mm2s_tdata;
  wire [31:0]m_axis_mm2s_tkeep;
  wire m_axis_mm2s_tlast;
  wire m_axis_mm2s_tready;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from;
  wire sig_data_reg_out0;
  wire sig_data_reg_out_en;
  wire [255:0]sig_data_skid_mux_out;
  wire [255:0]sig_data_skid_reg;
  wire sig_halt_reg_dly2;
  wire sig_halt_reg_dly3;
  wire sig_last_skid_mux_out;
  wire sig_last_skid_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_dup;
  wire sig_m_valid_dup_i_1_n_0;
  wire sig_m_valid_dup_i_2_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_out;
  wire sig_m_valid_out_reg_0;
  wire sig_mmap_reset_reg;
  wire sig_mvalid_stop;
  wire sig_mvalid_stop_reg_i_1_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_dup;
  wire sig_s_ready_dup_i_1_n_0;
  wire sig_s_ready_dup_i_2_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_out;
  wire sig_slast_with_stop;
  wire [0:0]sig_sstrb_stop_mask;
  wire \sig_sstrb_stop_mask_reg[31]_0 ;
  wire [31:0]sig_sstrb_with_stop;
  wire [31:0]sig_strb_skid_mux_out;
  wire [31:0]sig_strb_skid_reg;

  assign m_axis_mm2s_tvalid = sig_m_valid_out;
  assign out = sig_s_ready_out;
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[0]_i_1 
       (.I0(dout[0]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[0]),
        .O(sig_data_skid_mux_out[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[100]_i_1 
       (.I0(dout[100]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[100]),
        .O(sig_data_skid_mux_out[100]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[101]_i_1 
       (.I0(dout[101]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[101]),
        .O(sig_data_skid_mux_out[101]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[102]_i_1 
       (.I0(dout[102]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[102]),
        .O(sig_data_skid_mux_out[102]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[103]_i_1 
       (.I0(dout[103]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[103]),
        .O(sig_data_skid_mux_out[103]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[104]_i_1 
       (.I0(dout[104]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[104]),
        .O(sig_data_skid_mux_out[104]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[105]_i_1 
       (.I0(dout[105]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[105]),
        .O(sig_data_skid_mux_out[105]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[106]_i_1 
       (.I0(dout[106]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[106]),
        .O(sig_data_skid_mux_out[106]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[107]_i_1 
       (.I0(dout[107]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[107]),
        .O(sig_data_skid_mux_out[107]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[108]_i_1 
       (.I0(dout[108]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[108]),
        .O(sig_data_skid_mux_out[108]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[109]_i_1 
       (.I0(dout[109]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[109]),
        .O(sig_data_skid_mux_out[109]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[10]_i_1 
       (.I0(dout[10]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[10]),
        .O(sig_data_skid_mux_out[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[110]_i_1 
       (.I0(dout[110]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[110]),
        .O(sig_data_skid_mux_out[110]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[111]_i_1 
       (.I0(dout[111]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[111]),
        .O(sig_data_skid_mux_out[111]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[112]_i_1 
       (.I0(dout[112]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[112]),
        .O(sig_data_skid_mux_out[112]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[113]_i_1 
       (.I0(dout[113]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[113]),
        .O(sig_data_skid_mux_out[113]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[114]_i_1 
       (.I0(dout[114]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[114]),
        .O(sig_data_skid_mux_out[114]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[115]_i_1 
       (.I0(dout[115]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[115]),
        .O(sig_data_skid_mux_out[115]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[116]_i_1 
       (.I0(dout[116]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[116]),
        .O(sig_data_skid_mux_out[116]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[117]_i_1 
       (.I0(dout[117]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[117]),
        .O(sig_data_skid_mux_out[117]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[118]_i_1 
       (.I0(dout[118]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[118]),
        .O(sig_data_skid_mux_out[118]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[119]_i_1 
       (.I0(dout[119]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[119]),
        .O(sig_data_skid_mux_out[119]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[11]_i_1 
       (.I0(dout[11]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[11]),
        .O(sig_data_skid_mux_out[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[120]_i_1 
       (.I0(dout[120]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[120]),
        .O(sig_data_skid_mux_out[120]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[121]_i_1 
       (.I0(dout[121]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[121]),
        .O(sig_data_skid_mux_out[121]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[122]_i_1 
       (.I0(dout[122]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[122]),
        .O(sig_data_skid_mux_out[122]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[123]_i_1 
       (.I0(dout[123]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[123]),
        .O(sig_data_skid_mux_out[123]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[124]_i_1 
       (.I0(dout[124]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[124]),
        .O(sig_data_skid_mux_out[124]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[125]_i_1 
       (.I0(dout[125]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[125]),
        .O(sig_data_skid_mux_out[125]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[126]_i_1 
       (.I0(dout[126]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[126]),
        .O(sig_data_skid_mux_out[126]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[127]_i_1 
       (.I0(dout[127]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[127]),
        .O(sig_data_skid_mux_out[127]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[128]_i_1 
       (.I0(dout[128]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[128]),
        .O(sig_data_skid_mux_out[128]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[129]_i_1 
       (.I0(dout[129]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[129]),
        .O(sig_data_skid_mux_out[129]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[12]_i_1 
       (.I0(dout[12]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[12]),
        .O(sig_data_skid_mux_out[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[130]_i_1 
       (.I0(dout[130]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[130]),
        .O(sig_data_skid_mux_out[130]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[131]_i_1 
       (.I0(dout[131]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[131]),
        .O(sig_data_skid_mux_out[131]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[132]_i_1 
       (.I0(dout[132]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[132]),
        .O(sig_data_skid_mux_out[132]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[133]_i_1 
       (.I0(dout[133]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[133]),
        .O(sig_data_skid_mux_out[133]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[134]_i_1 
       (.I0(dout[134]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[134]),
        .O(sig_data_skid_mux_out[134]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[135]_i_1 
       (.I0(dout[135]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[135]),
        .O(sig_data_skid_mux_out[135]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[136]_i_1 
       (.I0(dout[136]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[136]),
        .O(sig_data_skid_mux_out[136]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[137]_i_1 
       (.I0(dout[137]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[137]),
        .O(sig_data_skid_mux_out[137]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[138]_i_1 
       (.I0(dout[138]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[138]),
        .O(sig_data_skid_mux_out[138]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[139]_i_1 
       (.I0(dout[139]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[139]),
        .O(sig_data_skid_mux_out[139]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[13]_i_1 
       (.I0(dout[13]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[13]),
        .O(sig_data_skid_mux_out[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[140]_i_1 
       (.I0(dout[140]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[140]),
        .O(sig_data_skid_mux_out[140]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[141]_i_1 
       (.I0(dout[141]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[141]),
        .O(sig_data_skid_mux_out[141]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[142]_i_1 
       (.I0(dout[142]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[142]),
        .O(sig_data_skid_mux_out[142]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[143]_i_1 
       (.I0(dout[143]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[143]),
        .O(sig_data_skid_mux_out[143]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[144]_i_1 
       (.I0(dout[144]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[144]),
        .O(sig_data_skid_mux_out[144]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[145]_i_1 
       (.I0(dout[145]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[145]),
        .O(sig_data_skid_mux_out[145]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[146]_i_1 
       (.I0(dout[146]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[146]),
        .O(sig_data_skid_mux_out[146]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[147]_i_1 
       (.I0(dout[147]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[147]),
        .O(sig_data_skid_mux_out[147]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[148]_i_1 
       (.I0(dout[148]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[148]),
        .O(sig_data_skid_mux_out[148]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[149]_i_1 
       (.I0(dout[149]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[149]),
        .O(sig_data_skid_mux_out[149]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[14]_i_1 
       (.I0(dout[14]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[14]),
        .O(sig_data_skid_mux_out[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[150]_i_1 
       (.I0(dout[150]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[150]),
        .O(sig_data_skid_mux_out[150]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[151]_i_1 
       (.I0(dout[151]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[151]),
        .O(sig_data_skid_mux_out[151]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[152]_i_1 
       (.I0(dout[152]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[152]),
        .O(sig_data_skid_mux_out[152]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[153]_i_1 
       (.I0(dout[153]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[153]),
        .O(sig_data_skid_mux_out[153]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[154]_i_1 
       (.I0(dout[154]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[154]),
        .O(sig_data_skid_mux_out[154]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[155]_i_1 
       (.I0(dout[155]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[155]),
        .O(sig_data_skid_mux_out[155]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[156]_i_1 
       (.I0(dout[156]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[156]),
        .O(sig_data_skid_mux_out[156]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[157]_i_1 
       (.I0(dout[157]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[157]),
        .O(sig_data_skid_mux_out[157]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[158]_i_1 
       (.I0(dout[158]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[158]),
        .O(sig_data_skid_mux_out[158]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[159]_i_1 
       (.I0(dout[159]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[159]),
        .O(sig_data_skid_mux_out[159]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[15]_i_1 
       (.I0(dout[15]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[15]),
        .O(sig_data_skid_mux_out[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[160]_i_1 
       (.I0(dout[160]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[160]),
        .O(sig_data_skid_mux_out[160]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[161]_i_1 
       (.I0(dout[161]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[161]),
        .O(sig_data_skid_mux_out[161]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[162]_i_1 
       (.I0(dout[162]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[162]),
        .O(sig_data_skid_mux_out[162]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[163]_i_1 
       (.I0(dout[163]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[163]),
        .O(sig_data_skid_mux_out[163]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[164]_i_1 
       (.I0(dout[164]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[164]),
        .O(sig_data_skid_mux_out[164]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[165]_i_1 
       (.I0(dout[165]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[165]),
        .O(sig_data_skid_mux_out[165]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[166]_i_1 
       (.I0(dout[166]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[166]),
        .O(sig_data_skid_mux_out[166]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[167]_i_1 
       (.I0(dout[167]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[167]),
        .O(sig_data_skid_mux_out[167]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[168]_i_1 
       (.I0(dout[168]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[168]),
        .O(sig_data_skid_mux_out[168]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[169]_i_1 
       (.I0(dout[169]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[169]),
        .O(sig_data_skid_mux_out[169]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[16]_i_1 
       (.I0(dout[16]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[16]),
        .O(sig_data_skid_mux_out[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[170]_i_1 
       (.I0(dout[170]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[170]),
        .O(sig_data_skid_mux_out[170]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[171]_i_1 
       (.I0(dout[171]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[171]),
        .O(sig_data_skid_mux_out[171]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[172]_i_1 
       (.I0(dout[172]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[172]),
        .O(sig_data_skid_mux_out[172]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[173]_i_1 
       (.I0(dout[173]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[173]),
        .O(sig_data_skid_mux_out[173]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[174]_i_1 
       (.I0(dout[174]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[174]),
        .O(sig_data_skid_mux_out[174]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[175]_i_1 
       (.I0(dout[175]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[175]),
        .O(sig_data_skid_mux_out[175]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[176]_i_1 
       (.I0(dout[176]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[176]),
        .O(sig_data_skid_mux_out[176]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[177]_i_1 
       (.I0(dout[177]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[177]),
        .O(sig_data_skid_mux_out[177]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[178]_i_1 
       (.I0(dout[178]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[178]),
        .O(sig_data_skid_mux_out[178]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[179]_i_1 
       (.I0(dout[179]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[179]),
        .O(sig_data_skid_mux_out[179]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[17]_i_1 
       (.I0(dout[17]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[17]),
        .O(sig_data_skid_mux_out[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[180]_i_1 
       (.I0(dout[180]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[180]),
        .O(sig_data_skid_mux_out[180]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[181]_i_1 
       (.I0(dout[181]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[181]),
        .O(sig_data_skid_mux_out[181]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[182]_i_1 
       (.I0(dout[182]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[182]),
        .O(sig_data_skid_mux_out[182]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[183]_i_1 
       (.I0(dout[183]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[183]),
        .O(sig_data_skid_mux_out[183]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[184]_i_1 
       (.I0(dout[184]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[184]),
        .O(sig_data_skid_mux_out[184]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[185]_i_1 
       (.I0(dout[185]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[185]),
        .O(sig_data_skid_mux_out[185]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[186]_i_1 
       (.I0(dout[186]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[186]),
        .O(sig_data_skid_mux_out[186]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[187]_i_1 
       (.I0(dout[187]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[187]),
        .O(sig_data_skid_mux_out[187]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[188]_i_1 
       (.I0(dout[188]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[188]),
        .O(sig_data_skid_mux_out[188]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[189]_i_1 
       (.I0(dout[189]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[189]),
        .O(sig_data_skid_mux_out[189]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[18]_i_1 
       (.I0(dout[18]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[18]),
        .O(sig_data_skid_mux_out[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[190]_i_1 
       (.I0(dout[190]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[190]),
        .O(sig_data_skid_mux_out[190]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[191]_i_1 
       (.I0(dout[191]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[191]),
        .O(sig_data_skid_mux_out[191]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[192]_i_1 
       (.I0(dout[192]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[192]),
        .O(sig_data_skid_mux_out[192]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[193]_i_1 
       (.I0(dout[193]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[193]),
        .O(sig_data_skid_mux_out[193]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[194]_i_1 
       (.I0(dout[194]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[194]),
        .O(sig_data_skid_mux_out[194]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[195]_i_1 
       (.I0(dout[195]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[195]),
        .O(sig_data_skid_mux_out[195]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[196]_i_1 
       (.I0(dout[196]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[196]),
        .O(sig_data_skid_mux_out[196]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[197]_i_1 
       (.I0(dout[197]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[197]),
        .O(sig_data_skid_mux_out[197]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[198]_i_1 
       (.I0(dout[198]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[198]),
        .O(sig_data_skid_mux_out[198]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[199]_i_1 
       (.I0(dout[199]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[199]),
        .O(sig_data_skid_mux_out[199]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[19]_i_1 
       (.I0(dout[19]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[19]),
        .O(sig_data_skid_mux_out[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[1]_i_1 
       (.I0(dout[1]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[1]),
        .O(sig_data_skid_mux_out[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[200]_i_1 
       (.I0(dout[200]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[200]),
        .O(sig_data_skid_mux_out[200]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[201]_i_1 
       (.I0(dout[201]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[201]),
        .O(sig_data_skid_mux_out[201]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[202]_i_1 
       (.I0(dout[202]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[202]),
        .O(sig_data_skid_mux_out[202]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[203]_i_1 
       (.I0(dout[203]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[203]),
        .O(sig_data_skid_mux_out[203]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[204]_i_1 
       (.I0(dout[204]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[204]),
        .O(sig_data_skid_mux_out[204]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[205]_i_1 
       (.I0(dout[205]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[205]),
        .O(sig_data_skid_mux_out[205]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[206]_i_1 
       (.I0(dout[206]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[206]),
        .O(sig_data_skid_mux_out[206]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[207]_i_1 
       (.I0(dout[207]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[207]),
        .O(sig_data_skid_mux_out[207]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[208]_i_1 
       (.I0(dout[208]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[208]),
        .O(sig_data_skid_mux_out[208]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[209]_i_1 
       (.I0(dout[209]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[209]),
        .O(sig_data_skid_mux_out[209]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[20]_i_1 
       (.I0(dout[20]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[20]),
        .O(sig_data_skid_mux_out[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[210]_i_1 
       (.I0(dout[210]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[210]),
        .O(sig_data_skid_mux_out[210]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[211]_i_1 
       (.I0(dout[211]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[211]),
        .O(sig_data_skid_mux_out[211]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[212]_i_1 
       (.I0(dout[212]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[212]),
        .O(sig_data_skid_mux_out[212]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[213]_i_1 
       (.I0(dout[213]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[213]),
        .O(sig_data_skid_mux_out[213]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[214]_i_1 
       (.I0(dout[214]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[214]),
        .O(sig_data_skid_mux_out[214]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[215]_i_1 
       (.I0(dout[215]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[215]),
        .O(sig_data_skid_mux_out[215]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[216]_i_1 
       (.I0(dout[216]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[216]),
        .O(sig_data_skid_mux_out[216]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[217]_i_1 
       (.I0(dout[217]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[217]),
        .O(sig_data_skid_mux_out[217]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[218]_i_1 
       (.I0(dout[218]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[218]),
        .O(sig_data_skid_mux_out[218]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[219]_i_1 
       (.I0(dout[219]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[219]),
        .O(sig_data_skid_mux_out[219]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[21]_i_1 
       (.I0(dout[21]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[21]),
        .O(sig_data_skid_mux_out[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[220]_i_1 
       (.I0(dout[220]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[220]),
        .O(sig_data_skid_mux_out[220]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[221]_i_1 
       (.I0(dout[221]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[221]),
        .O(sig_data_skid_mux_out[221]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[222]_i_1 
       (.I0(dout[222]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[222]),
        .O(sig_data_skid_mux_out[222]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[223]_i_1 
       (.I0(dout[223]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[223]),
        .O(sig_data_skid_mux_out[223]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[224]_i_1 
       (.I0(dout[224]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[224]),
        .O(sig_data_skid_mux_out[224]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[225]_i_1 
       (.I0(dout[225]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[225]),
        .O(sig_data_skid_mux_out[225]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[226]_i_1 
       (.I0(dout[226]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[226]),
        .O(sig_data_skid_mux_out[226]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[227]_i_1 
       (.I0(dout[227]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[227]),
        .O(sig_data_skid_mux_out[227]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[228]_i_1 
       (.I0(dout[228]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[228]),
        .O(sig_data_skid_mux_out[228]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[229]_i_1 
       (.I0(dout[229]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[229]),
        .O(sig_data_skid_mux_out[229]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[22]_i_1 
       (.I0(dout[22]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[22]),
        .O(sig_data_skid_mux_out[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[230]_i_1 
       (.I0(dout[230]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[230]),
        .O(sig_data_skid_mux_out[230]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[231]_i_1 
       (.I0(dout[231]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[231]),
        .O(sig_data_skid_mux_out[231]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[232]_i_1 
       (.I0(dout[232]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[232]),
        .O(sig_data_skid_mux_out[232]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[233]_i_1 
       (.I0(dout[233]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[233]),
        .O(sig_data_skid_mux_out[233]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[234]_i_1 
       (.I0(dout[234]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[234]),
        .O(sig_data_skid_mux_out[234]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[235]_i_1 
       (.I0(dout[235]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[235]),
        .O(sig_data_skid_mux_out[235]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[236]_i_1 
       (.I0(dout[236]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[236]),
        .O(sig_data_skid_mux_out[236]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[237]_i_1 
       (.I0(dout[237]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[237]),
        .O(sig_data_skid_mux_out[237]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[238]_i_1 
       (.I0(dout[238]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[238]),
        .O(sig_data_skid_mux_out[238]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[239]_i_1 
       (.I0(dout[239]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[239]),
        .O(sig_data_skid_mux_out[239]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[23]_i_1 
       (.I0(dout[23]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[23]),
        .O(sig_data_skid_mux_out[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[240]_i_1 
       (.I0(dout[240]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[240]),
        .O(sig_data_skid_mux_out[240]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[241]_i_1 
       (.I0(dout[241]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[241]),
        .O(sig_data_skid_mux_out[241]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[242]_i_1 
       (.I0(dout[242]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[242]),
        .O(sig_data_skid_mux_out[242]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[243]_i_1 
       (.I0(dout[243]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[243]),
        .O(sig_data_skid_mux_out[243]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[244]_i_1 
       (.I0(dout[244]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[244]),
        .O(sig_data_skid_mux_out[244]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[245]_i_1 
       (.I0(dout[245]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[245]),
        .O(sig_data_skid_mux_out[245]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[246]_i_1 
       (.I0(dout[246]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[246]),
        .O(sig_data_skid_mux_out[246]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[247]_i_1 
       (.I0(dout[247]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[247]),
        .O(sig_data_skid_mux_out[247]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[248]_i_1 
       (.I0(dout[248]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[248]),
        .O(sig_data_skid_mux_out[248]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[249]_i_1 
       (.I0(dout[249]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[249]),
        .O(sig_data_skid_mux_out[249]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[24]_i_1 
       (.I0(dout[24]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[24]),
        .O(sig_data_skid_mux_out[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[250]_i_1 
       (.I0(dout[250]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[250]),
        .O(sig_data_skid_mux_out[250]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[251]_i_1 
       (.I0(dout[251]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[251]),
        .O(sig_data_skid_mux_out[251]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[252]_i_1 
       (.I0(dout[252]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[252]),
        .O(sig_data_skid_mux_out[252]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[253]_i_1 
       (.I0(dout[253]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[253]),
        .O(sig_data_skid_mux_out[253]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[254]_i_1 
       (.I0(dout[254]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[254]),
        .O(sig_data_skid_mux_out[254]));
  LUT2 #(
    .INIT(4'hB)) 
    \sig_data_reg_out[255]_i_1 
       (.I0(sig_mvalid_stop),
        .I1(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .O(sig_data_reg_out0));
  LUT2 #(
    .INIT(4'hB)) 
    \sig_data_reg_out[255]_i_2 
       (.I0(m_axis_mm2s_tready),
        .I1(sig_m_valid_dup),
        .O(sig_data_reg_out_en));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[255]_i_3 
       (.I0(dout[255]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[255]),
        .O(sig_data_skid_mux_out[255]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[25]_i_1 
       (.I0(dout[25]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[25]),
        .O(sig_data_skid_mux_out[25]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[26]_i_1 
       (.I0(dout[26]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[26]),
        .O(sig_data_skid_mux_out[26]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[27]_i_1 
       (.I0(dout[27]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[27]),
        .O(sig_data_skid_mux_out[27]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[28]_i_1 
       (.I0(dout[28]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[28]),
        .O(sig_data_skid_mux_out[28]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[29]_i_1 
       (.I0(dout[29]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[29]),
        .O(sig_data_skid_mux_out[29]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[2]_i_1 
       (.I0(dout[2]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[2]),
        .O(sig_data_skid_mux_out[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[30]_i_1 
       (.I0(dout[30]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[30]),
        .O(sig_data_skid_mux_out[30]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[31]_i_1 
       (.I0(dout[31]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[31]),
        .O(sig_data_skid_mux_out[31]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[32]_i_1 
       (.I0(dout[32]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[32]),
        .O(sig_data_skid_mux_out[32]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[33]_i_1 
       (.I0(dout[33]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[33]),
        .O(sig_data_skid_mux_out[33]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[34]_i_1 
       (.I0(dout[34]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[34]),
        .O(sig_data_skid_mux_out[34]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[35]_i_1 
       (.I0(dout[35]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[35]),
        .O(sig_data_skid_mux_out[35]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[36]_i_1 
       (.I0(dout[36]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[36]),
        .O(sig_data_skid_mux_out[36]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[37]_i_1 
       (.I0(dout[37]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[37]),
        .O(sig_data_skid_mux_out[37]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[38]_i_1 
       (.I0(dout[38]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[38]),
        .O(sig_data_skid_mux_out[38]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[39]_i_1 
       (.I0(dout[39]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[39]),
        .O(sig_data_skid_mux_out[39]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[3]_i_1 
       (.I0(dout[3]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[3]),
        .O(sig_data_skid_mux_out[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[40]_i_1 
       (.I0(dout[40]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[40]),
        .O(sig_data_skid_mux_out[40]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[41]_i_1 
       (.I0(dout[41]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[41]),
        .O(sig_data_skid_mux_out[41]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[42]_i_1 
       (.I0(dout[42]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[42]),
        .O(sig_data_skid_mux_out[42]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[43]_i_1 
       (.I0(dout[43]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[43]),
        .O(sig_data_skid_mux_out[43]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[44]_i_1 
       (.I0(dout[44]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[44]),
        .O(sig_data_skid_mux_out[44]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[45]_i_1 
       (.I0(dout[45]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[45]),
        .O(sig_data_skid_mux_out[45]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[46]_i_1 
       (.I0(dout[46]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[46]),
        .O(sig_data_skid_mux_out[46]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[47]_i_1 
       (.I0(dout[47]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[47]),
        .O(sig_data_skid_mux_out[47]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[48]_i_1 
       (.I0(dout[48]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[48]),
        .O(sig_data_skid_mux_out[48]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[49]_i_1 
       (.I0(dout[49]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[49]),
        .O(sig_data_skid_mux_out[49]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[4]_i_1 
       (.I0(dout[4]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[4]),
        .O(sig_data_skid_mux_out[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[50]_i_1 
       (.I0(dout[50]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[50]),
        .O(sig_data_skid_mux_out[50]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[51]_i_1 
       (.I0(dout[51]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[51]),
        .O(sig_data_skid_mux_out[51]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[52]_i_1 
       (.I0(dout[52]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[52]),
        .O(sig_data_skid_mux_out[52]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[53]_i_1 
       (.I0(dout[53]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[53]),
        .O(sig_data_skid_mux_out[53]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[54]_i_1 
       (.I0(dout[54]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[54]),
        .O(sig_data_skid_mux_out[54]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[55]_i_1 
       (.I0(dout[55]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[55]),
        .O(sig_data_skid_mux_out[55]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[56]_i_1 
       (.I0(dout[56]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[56]),
        .O(sig_data_skid_mux_out[56]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[57]_i_1 
       (.I0(dout[57]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[57]),
        .O(sig_data_skid_mux_out[57]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[58]_i_1 
       (.I0(dout[58]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[58]),
        .O(sig_data_skid_mux_out[58]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[59]_i_1 
       (.I0(dout[59]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[59]),
        .O(sig_data_skid_mux_out[59]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[5]_i_1 
       (.I0(dout[5]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[5]),
        .O(sig_data_skid_mux_out[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[60]_i_1 
       (.I0(dout[60]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[60]),
        .O(sig_data_skid_mux_out[60]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[61]_i_1 
       (.I0(dout[61]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[61]),
        .O(sig_data_skid_mux_out[61]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[62]_i_1 
       (.I0(dout[62]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[62]),
        .O(sig_data_skid_mux_out[62]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[63]_i_1 
       (.I0(dout[63]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[63]),
        .O(sig_data_skid_mux_out[63]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[64]_i_1 
       (.I0(dout[64]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[64]),
        .O(sig_data_skid_mux_out[64]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[65]_i_1 
       (.I0(dout[65]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[65]),
        .O(sig_data_skid_mux_out[65]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[66]_i_1 
       (.I0(dout[66]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[66]),
        .O(sig_data_skid_mux_out[66]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[67]_i_1 
       (.I0(dout[67]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[67]),
        .O(sig_data_skid_mux_out[67]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[68]_i_1 
       (.I0(dout[68]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[68]),
        .O(sig_data_skid_mux_out[68]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[69]_i_1 
       (.I0(dout[69]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[69]),
        .O(sig_data_skid_mux_out[69]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[6]_i_1 
       (.I0(dout[6]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[6]),
        .O(sig_data_skid_mux_out[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[70]_i_1 
       (.I0(dout[70]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[70]),
        .O(sig_data_skid_mux_out[70]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[71]_i_1 
       (.I0(dout[71]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[71]),
        .O(sig_data_skid_mux_out[71]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[72]_i_1 
       (.I0(dout[72]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[72]),
        .O(sig_data_skid_mux_out[72]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[73]_i_1 
       (.I0(dout[73]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[73]),
        .O(sig_data_skid_mux_out[73]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[74]_i_1 
       (.I0(dout[74]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[74]),
        .O(sig_data_skid_mux_out[74]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[75]_i_1 
       (.I0(dout[75]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[75]),
        .O(sig_data_skid_mux_out[75]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[76]_i_1 
       (.I0(dout[76]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[76]),
        .O(sig_data_skid_mux_out[76]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[77]_i_1 
       (.I0(dout[77]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[77]),
        .O(sig_data_skid_mux_out[77]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[78]_i_1 
       (.I0(dout[78]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[78]),
        .O(sig_data_skid_mux_out[78]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[79]_i_1 
       (.I0(dout[79]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[79]),
        .O(sig_data_skid_mux_out[79]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[7]_i_1 
       (.I0(dout[7]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[7]),
        .O(sig_data_skid_mux_out[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[80]_i_1 
       (.I0(dout[80]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[80]),
        .O(sig_data_skid_mux_out[80]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[81]_i_1 
       (.I0(dout[81]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[81]),
        .O(sig_data_skid_mux_out[81]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[82]_i_1 
       (.I0(dout[82]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[82]),
        .O(sig_data_skid_mux_out[82]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[83]_i_1 
       (.I0(dout[83]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[83]),
        .O(sig_data_skid_mux_out[83]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[84]_i_1 
       (.I0(dout[84]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[84]),
        .O(sig_data_skid_mux_out[84]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[85]_i_1 
       (.I0(dout[85]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[85]),
        .O(sig_data_skid_mux_out[85]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[86]_i_1 
       (.I0(dout[86]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[86]),
        .O(sig_data_skid_mux_out[86]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[87]_i_1 
       (.I0(dout[87]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[87]),
        .O(sig_data_skid_mux_out[87]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[88]_i_1 
       (.I0(dout[88]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[88]),
        .O(sig_data_skid_mux_out[88]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[89]_i_1 
       (.I0(dout[89]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[89]),
        .O(sig_data_skid_mux_out[89]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[8]_i_1 
       (.I0(dout[8]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[8]),
        .O(sig_data_skid_mux_out[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[90]_i_1 
       (.I0(dout[90]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[90]),
        .O(sig_data_skid_mux_out[90]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[91]_i_1 
       (.I0(dout[91]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[91]),
        .O(sig_data_skid_mux_out[91]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[92]_i_1 
       (.I0(dout[92]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[92]),
        .O(sig_data_skid_mux_out[92]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[93]_i_1 
       (.I0(dout[93]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[93]),
        .O(sig_data_skid_mux_out[93]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[94]_i_1 
       (.I0(dout[94]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[94]),
        .O(sig_data_skid_mux_out[94]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[95]_i_1 
       (.I0(dout[95]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[95]),
        .O(sig_data_skid_mux_out[95]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[96]_i_1 
       (.I0(dout[96]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[96]),
        .O(sig_data_skid_mux_out[96]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[97]_i_1 
       (.I0(dout[97]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[97]),
        .O(sig_data_skid_mux_out[97]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[98]_i_1 
       (.I0(dout[98]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[98]),
        .O(sig_data_skid_mux_out[98]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[99]_i_1 
       (.I0(dout[99]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[99]),
        .O(sig_data_skid_mux_out[99]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[9]_i_1 
       (.I0(dout[9]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[9]),
        .O(sig_data_skid_mux_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[0]),
        .Q(m_axis_mm2s_tdata[0]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[100] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[100]),
        .Q(m_axis_mm2s_tdata[100]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[101] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[101]),
        .Q(m_axis_mm2s_tdata[101]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[102] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[102]),
        .Q(m_axis_mm2s_tdata[102]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[103] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[103]),
        .Q(m_axis_mm2s_tdata[103]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[104] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[104]),
        .Q(m_axis_mm2s_tdata[104]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[105] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[105]),
        .Q(m_axis_mm2s_tdata[105]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[106] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[106]),
        .Q(m_axis_mm2s_tdata[106]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[107] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[107]),
        .Q(m_axis_mm2s_tdata[107]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[108] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[108]),
        .Q(m_axis_mm2s_tdata[108]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[109] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[109]),
        .Q(m_axis_mm2s_tdata[109]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[10]),
        .Q(m_axis_mm2s_tdata[10]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[110] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[110]),
        .Q(m_axis_mm2s_tdata[110]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[111] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[111]),
        .Q(m_axis_mm2s_tdata[111]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[112] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[112]),
        .Q(m_axis_mm2s_tdata[112]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[113] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[113]),
        .Q(m_axis_mm2s_tdata[113]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[114] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[114]),
        .Q(m_axis_mm2s_tdata[114]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[115] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[115]),
        .Q(m_axis_mm2s_tdata[115]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[116] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[116]),
        .Q(m_axis_mm2s_tdata[116]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[117] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[117]),
        .Q(m_axis_mm2s_tdata[117]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[118] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[118]),
        .Q(m_axis_mm2s_tdata[118]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[119] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[119]),
        .Q(m_axis_mm2s_tdata[119]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[11]),
        .Q(m_axis_mm2s_tdata[11]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[120] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[120]),
        .Q(m_axis_mm2s_tdata[120]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[121] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[121]),
        .Q(m_axis_mm2s_tdata[121]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[122] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[122]),
        .Q(m_axis_mm2s_tdata[122]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[123] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[123]),
        .Q(m_axis_mm2s_tdata[123]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[124] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[124]),
        .Q(m_axis_mm2s_tdata[124]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[125] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[125]),
        .Q(m_axis_mm2s_tdata[125]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[126] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[126]),
        .Q(m_axis_mm2s_tdata[126]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[127] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[127]),
        .Q(m_axis_mm2s_tdata[127]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[128] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[128]),
        .Q(m_axis_mm2s_tdata[128]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[129] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[129]),
        .Q(m_axis_mm2s_tdata[129]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[12]),
        .Q(m_axis_mm2s_tdata[12]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[130] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[130]),
        .Q(m_axis_mm2s_tdata[130]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[131] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[131]),
        .Q(m_axis_mm2s_tdata[131]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[132] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[132]),
        .Q(m_axis_mm2s_tdata[132]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[133] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[133]),
        .Q(m_axis_mm2s_tdata[133]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[134] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[134]),
        .Q(m_axis_mm2s_tdata[134]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[135] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[135]),
        .Q(m_axis_mm2s_tdata[135]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[136] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[136]),
        .Q(m_axis_mm2s_tdata[136]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[137] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[137]),
        .Q(m_axis_mm2s_tdata[137]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[138] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[138]),
        .Q(m_axis_mm2s_tdata[138]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[139] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[139]),
        .Q(m_axis_mm2s_tdata[139]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[13]),
        .Q(m_axis_mm2s_tdata[13]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[140] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[140]),
        .Q(m_axis_mm2s_tdata[140]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[141] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[141]),
        .Q(m_axis_mm2s_tdata[141]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[142] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[142]),
        .Q(m_axis_mm2s_tdata[142]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[143] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[143]),
        .Q(m_axis_mm2s_tdata[143]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[144] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[144]),
        .Q(m_axis_mm2s_tdata[144]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[145] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[145]),
        .Q(m_axis_mm2s_tdata[145]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[146] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[146]),
        .Q(m_axis_mm2s_tdata[146]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[147] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[147]),
        .Q(m_axis_mm2s_tdata[147]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[148] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[148]),
        .Q(m_axis_mm2s_tdata[148]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[149] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[149]),
        .Q(m_axis_mm2s_tdata[149]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[14]),
        .Q(m_axis_mm2s_tdata[14]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[150] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[150]),
        .Q(m_axis_mm2s_tdata[150]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[151] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[151]),
        .Q(m_axis_mm2s_tdata[151]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[152] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[152]),
        .Q(m_axis_mm2s_tdata[152]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[153] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[153]),
        .Q(m_axis_mm2s_tdata[153]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[154] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[154]),
        .Q(m_axis_mm2s_tdata[154]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[155] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[155]),
        .Q(m_axis_mm2s_tdata[155]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[156] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[156]),
        .Q(m_axis_mm2s_tdata[156]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[157] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[157]),
        .Q(m_axis_mm2s_tdata[157]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[158] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[158]),
        .Q(m_axis_mm2s_tdata[158]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[159] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[159]),
        .Q(m_axis_mm2s_tdata[159]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[15] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[15]),
        .Q(m_axis_mm2s_tdata[15]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[160] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[160]),
        .Q(m_axis_mm2s_tdata[160]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[161] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[161]),
        .Q(m_axis_mm2s_tdata[161]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[162] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[162]),
        .Q(m_axis_mm2s_tdata[162]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[163] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[163]),
        .Q(m_axis_mm2s_tdata[163]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[164] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[164]),
        .Q(m_axis_mm2s_tdata[164]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[165] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[165]),
        .Q(m_axis_mm2s_tdata[165]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[166] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[166]),
        .Q(m_axis_mm2s_tdata[166]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[167] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[167]),
        .Q(m_axis_mm2s_tdata[167]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[168] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[168]),
        .Q(m_axis_mm2s_tdata[168]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[169] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[169]),
        .Q(m_axis_mm2s_tdata[169]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[16] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[16]),
        .Q(m_axis_mm2s_tdata[16]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[170] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[170]),
        .Q(m_axis_mm2s_tdata[170]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[171] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[171]),
        .Q(m_axis_mm2s_tdata[171]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[172] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[172]),
        .Q(m_axis_mm2s_tdata[172]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[173] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[173]),
        .Q(m_axis_mm2s_tdata[173]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[174] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[174]),
        .Q(m_axis_mm2s_tdata[174]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[175] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[175]),
        .Q(m_axis_mm2s_tdata[175]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[176] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[176]),
        .Q(m_axis_mm2s_tdata[176]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[177] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[177]),
        .Q(m_axis_mm2s_tdata[177]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[178] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[178]),
        .Q(m_axis_mm2s_tdata[178]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[179] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[179]),
        .Q(m_axis_mm2s_tdata[179]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[17] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[17]),
        .Q(m_axis_mm2s_tdata[17]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[180] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[180]),
        .Q(m_axis_mm2s_tdata[180]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[181] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[181]),
        .Q(m_axis_mm2s_tdata[181]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[182] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[182]),
        .Q(m_axis_mm2s_tdata[182]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[183] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[183]),
        .Q(m_axis_mm2s_tdata[183]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[184] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[184]),
        .Q(m_axis_mm2s_tdata[184]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[185] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[185]),
        .Q(m_axis_mm2s_tdata[185]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[186] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[186]),
        .Q(m_axis_mm2s_tdata[186]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[187] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[187]),
        .Q(m_axis_mm2s_tdata[187]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[188] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[188]),
        .Q(m_axis_mm2s_tdata[188]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[189] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[189]),
        .Q(m_axis_mm2s_tdata[189]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[18] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[18]),
        .Q(m_axis_mm2s_tdata[18]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[190] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[190]),
        .Q(m_axis_mm2s_tdata[190]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[191] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[191]),
        .Q(m_axis_mm2s_tdata[191]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[192] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[192]),
        .Q(m_axis_mm2s_tdata[192]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[193] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[193]),
        .Q(m_axis_mm2s_tdata[193]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[194] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[194]),
        .Q(m_axis_mm2s_tdata[194]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[195] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[195]),
        .Q(m_axis_mm2s_tdata[195]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[196] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[196]),
        .Q(m_axis_mm2s_tdata[196]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[197] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[197]),
        .Q(m_axis_mm2s_tdata[197]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[198] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[198]),
        .Q(m_axis_mm2s_tdata[198]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[199] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[199]),
        .Q(m_axis_mm2s_tdata[199]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[19] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[19]),
        .Q(m_axis_mm2s_tdata[19]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[1]),
        .Q(m_axis_mm2s_tdata[1]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[200] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[200]),
        .Q(m_axis_mm2s_tdata[200]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[201] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[201]),
        .Q(m_axis_mm2s_tdata[201]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[202] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[202]),
        .Q(m_axis_mm2s_tdata[202]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[203] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[203]),
        .Q(m_axis_mm2s_tdata[203]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[204] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[204]),
        .Q(m_axis_mm2s_tdata[204]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[205] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[205]),
        .Q(m_axis_mm2s_tdata[205]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[206] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[206]),
        .Q(m_axis_mm2s_tdata[206]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[207] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[207]),
        .Q(m_axis_mm2s_tdata[207]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[208] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[208]),
        .Q(m_axis_mm2s_tdata[208]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[209] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[209]),
        .Q(m_axis_mm2s_tdata[209]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[20] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[20]),
        .Q(m_axis_mm2s_tdata[20]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[210] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[210]),
        .Q(m_axis_mm2s_tdata[210]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[211] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[211]),
        .Q(m_axis_mm2s_tdata[211]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[212] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[212]),
        .Q(m_axis_mm2s_tdata[212]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[213] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[213]),
        .Q(m_axis_mm2s_tdata[213]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[214] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[214]),
        .Q(m_axis_mm2s_tdata[214]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[215] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[215]),
        .Q(m_axis_mm2s_tdata[215]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[216] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[216]),
        .Q(m_axis_mm2s_tdata[216]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[217] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[217]),
        .Q(m_axis_mm2s_tdata[217]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[218] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[218]),
        .Q(m_axis_mm2s_tdata[218]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[219] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[219]),
        .Q(m_axis_mm2s_tdata[219]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[21] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[21]),
        .Q(m_axis_mm2s_tdata[21]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[220] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[220]),
        .Q(m_axis_mm2s_tdata[220]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[221] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[221]),
        .Q(m_axis_mm2s_tdata[221]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[222] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[222]),
        .Q(m_axis_mm2s_tdata[222]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[223] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[223]),
        .Q(m_axis_mm2s_tdata[223]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[224] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[224]),
        .Q(m_axis_mm2s_tdata[224]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[225] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[225]),
        .Q(m_axis_mm2s_tdata[225]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[226] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[226]),
        .Q(m_axis_mm2s_tdata[226]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[227] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[227]),
        .Q(m_axis_mm2s_tdata[227]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[228] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[228]),
        .Q(m_axis_mm2s_tdata[228]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[229] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[229]),
        .Q(m_axis_mm2s_tdata[229]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[22] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[22]),
        .Q(m_axis_mm2s_tdata[22]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[230] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[230]),
        .Q(m_axis_mm2s_tdata[230]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[231] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[231]),
        .Q(m_axis_mm2s_tdata[231]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[232] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[232]),
        .Q(m_axis_mm2s_tdata[232]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[233] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[233]),
        .Q(m_axis_mm2s_tdata[233]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[234] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[234]),
        .Q(m_axis_mm2s_tdata[234]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[235] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[235]),
        .Q(m_axis_mm2s_tdata[235]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[236] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[236]),
        .Q(m_axis_mm2s_tdata[236]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[237] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[237]),
        .Q(m_axis_mm2s_tdata[237]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[238] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[238]),
        .Q(m_axis_mm2s_tdata[238]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[239] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[239]),
        .Q(m_axis_mm2s_tdata[239]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[23] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[23]),
        .Q(m_axis_mm2s_tdata[23]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[240] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[240]),
        .Q(m_axis_mm2s_tdata[240]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[241] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[241]),
        .Q(m_axis_mm2s_tdata[241]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[242] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[242]),
        .Q(m_axis_mm2s_tdata[242]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[243] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[243]),
        .Q(m_axis_mm2s_tdata[243]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[244] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[244]),
        .Q(m_axis_mm2s_tdata[244]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[245] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[245]),
        .Q(m_axis_mm2s_tdata[245]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[246] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[246]),
        .Q(m_axis_mm2s_tdata[246]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[247] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[247]),
        .Q(m_axis_mm2s_tdata[247]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[248] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[248]),
        .Q(m_axis_mm2s_tdata[248]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[249] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[249]),
        .Q(m_axis_mm2s_tdata[249]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[24] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[24]),
        .Q(m_axis_mm2s_tdata[24]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[250] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[250]),
        .Q(m_axis_mm2s_tdata[250]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[251] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[251]),
        .Q(m_axis_mm2s_tdata[251]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[252] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[252]),
        .Q(m_axis_mm2s_tdata[252]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[253] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[253]),
        .Q(m_axis_mm2s_tdata[253]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[254] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[254]),
        .Q(m_axis_mm2s_tdata[254]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[255] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[255]),
        .Q(m_axis_mm2s_tdata[255]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[25] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[25]),
        .Q(m_axis_mm2s_tdata[25]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[26] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[26]),
        .Q(m_axis_mm2s_tdata[26]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[27] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[27]),
        .Q(m_axis_mm2s_tdata[27]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[28] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[28]),
        .Q(m_axis_mm2s_tdata[28]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[29] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[29]),
        .Q(m_axis_mm2s_tdata[29]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[2]),
        .Q(m_axis_mm2s_tdata[2]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[30] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[30]),
        .Q(m_axis_mm2s_tdata[30]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[31] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[31]),
        .Q(m_axis_mm2s_tdata[31]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[32] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[32]),
        .Q(m_axis_mm2s_tdata[32]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[33] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[33]),
        .Q(m_axis_mm2s_tdata[33]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[34] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[34]),
        .Q(m_axis_mm2s_tdata[34]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[35] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[35]),
        .Q(m_axis_mm2s_tdata[35]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[36] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[36]),
        .Q(m_axis_mm2s_tdata[36]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[37] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[37]),
        .Q(m_axis_mm2s_tdata[37]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[38] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[38]),
        .Q(m_axis_mm2s_tdata[38]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[39] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[39]),
        .Q(m_axis_mm2s_tdata[39]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[3]),
        .Q(m_axis_mm2s_tdata[3]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[40] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[40]),
        .Q(m_axis_mm2s_tdata[40]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[41] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[41]),
        .Q(m_axis_mm2s_tdata[41]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[42] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[42]),
        .Q(m_axis_mm2s_tdata[42]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[43] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[43]),
        .Q(m_axis_mm2s_tdata[43]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[44] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[44]),
        .Q(m_axis_mm2s_tdata[44]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[45] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[45]),
        .Q(m_axis_mm2s_tdata[45]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[46] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[46]),
        .Q(m_axis_mm2s_tdata[46]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[47] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[47]),
        .Q(m_axis_mm2s_tdata[47]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[48] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[48]),
        .Q(m_axis_mm2s_tdata[48]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[49] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[49]),
        .Q(m_axis_mm2s_tdata[49]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[4]),
        .Q(m_axis_mm2s_tdata[4]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[50] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[50]),
        .Q(m_axis_mm2s_tdata[50]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[51] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[51]),
        .Q(m_axis_mm2s_tdata[51]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[52] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[52]),
        .Q(m_axis_mm2s_tdata[52]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[53] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[53]),
        .Q(m_axis_mm2s_tdata[53]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[54] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[54]),
        .Q(m_axis_mm2s_tdata[54]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[55] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[55]),
        .Q(m_axis_mm2s_tdata[55]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[56] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[56]),
        .Q(m_axis_mm2s_tdata[56]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[57] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[57]),
        .Q(m_axis_mm2s_tdata[57]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[58] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[58]),
        .Q(m_axis_mm2s_tdata[58]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[59] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[59]),
        .Q(m_axis_mm2s_tdata[59]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[5]),
        .Q(m_axis_mm2s_tdata[5]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[60] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[60]),
        .Q(m_axis_mm2s_tdata[60]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[61] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[61]),
        .Q(m_axis_mm2s_tdata[61]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[62] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[62]),
        .Q(m_axis_mm2s_tdata[62]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[63] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[63]),
        .Q(m_axis_mm2s_tdata[63]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[64] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[64]),
        .Q(m_axis_mm2s_tdata[64]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[65] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[65]),
        .Q(m_axis_mm2s_tdata[65]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[66] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[66]),
        .Q(m_axis_mm2s_tdata[66]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[67] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[67]),
        .Q(m_axis_mm2s_tdata[67]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[68] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[68]),
        .Q(m_axis_mm2s_tdata[68]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[69] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[69]),
        .Q(m_axis_mm2s_tdata[69]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[6]),
        .Q(m_axis_mm2s_tdata[6]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[70] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[70]),
        .Q(m_axis_mm2s_tdata[70]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[71] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[71]),
        .Q(m_axis_mm2s_tdata[71]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[72] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[72]),
        .Q(m_axis_mm2s_tdata[72]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[73] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[73]),
        .Q(m_axis_mm2s_tdata[73]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[74] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[74]),
        .Q(m_axis_mm2s_tdata[74]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[75] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[75]),
        .Q(m_axis_mm2s_tdata[75]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[76] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[76]),
        .Q(m_axis_mm2s_tdata[76]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[77] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[77]),
        .Q(m_axis_mm2s_tdata[77]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[78] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[78]),
        .Q(m_axis_mm2s_tdata[78]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[79] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[79]),
        .Q(m_axis_mm2s_tdata[79]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[7]),
        .Q(m_axis_mm2s_tdata[7]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[80] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[80]),
        .Q(m_axis_mm2s_tdata[80]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[81] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[81]),
        .Q(m_axis_mm2s_tdata[81]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[82] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[82]),
        .Q(m_axis_mm2s_tdata[82]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[83] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[83]),
        .Q(m_axis_mm2s_tdata[83]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[84] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[84]),
        .Q(m_axis_mm2s_tdata[84]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[85] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[85]),
        .Q(m_axis_mm2s_tdata[85]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[86] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[86]),
        .Q(m_axis_mm2s_tdata[86]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[87] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[87]),
        .Q(m_axis_mm2s_tdata[87]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[88] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[88]),
        .Q(m_axis_mm2s_tdata[88]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[89] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[89]),
        .Q(m_axis_mm2s_tdata[89]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[8]),
        .Q(m_axis_mm2s_tdata[8]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[90] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[90]),
        .Q(m_axis_mm2s_tdata[90]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[91] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[91]),
        .Q(m_axis_mm2s_tdata[91]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[92] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[92]),
        .Q(m_axis_mm2s_tdata[92]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[93] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[93]),
        .Q(m_axis_mm2s_tdata[93]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[94] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[94]),
        .Q(m_axis_mm2s_tdata[94]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[95] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[95]),
        .Q(m_axis_mm2s_tdata[95]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[96] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[96]),
        .Q(m_axis_mm2s_tdata[96]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[97] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[97]),
        .Q(m_axis_mm2s_tdata[97]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[98] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[98]),
        .Q(m_axis_mm2s_tdata[98]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[99] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[99]),
        .Q(m_axis_mm2s_tdata[99]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[9]),
        .Q(m_axis_mm2s_tdata[9]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[0]),
        .Q(sig_data_skid_reg[0]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[100] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[100]),
        .Q(sig_data_skid_reg[100]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[101] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[101]),
        .Q(sig_data_skid_reg[101]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[102] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[102]),
        .Q(sig_data_skid_reg[102]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[103] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[103]),
        .Q(sig_data_skid_reg[103]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[104] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[104]),
        .Q(sig_data_skid_reg[104]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[105] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[105]),
        .Q(sig_data_skid_reg[105]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[106] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[106]),
        .Q(sig_data_skid_reg[106]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[107] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[107]),
        .Q(sig_data_skid_reg[107]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[108] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[108]),
        .Q(sig_data_skid_reg[108]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[109] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[109]),
        .Q(sig_data_skid_reg[109]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[10]),
        .Q(sig_data_skid_reg[10]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[110] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[110]),
        .Q(sig_data_skid_reg[110]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[111] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[111]),
        .Q(sig_data_skid_reg[111]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[112] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[112]),
        .Q(sig_data_skid_reg[112]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[113] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[113]),
        .Q(sig_data_skid_reg[113]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[114] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[114]),
        .Q(sig_data_skid_reg[114]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[115] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[115]),
        .Q(sig_data_skid_reg[115]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[116] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[116]),
        .Q(sig_data_skid_reg[116]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[117] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[117]),
        .Q(sig_data_skid_reg[117]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[118] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[118]),
        .Q(sig_data_skid_reg[118]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[119] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[119]),
        .Q(sig_data_skid_reg[119]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[11]),
        .Q(sig_data_skid_reg[11]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[120] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[120]),
        .Q(sig_data_skid_reg[120]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[121] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[121]),
        .Q(sig_data_skid_reg[121]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[122] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[122]),
        .Q(sig_data_skid_reg[122]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[123] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[123]),
        .Q(sig_data_skid_reg[123]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[124] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[124]),
        .Q(sig_data_skid_reg[124]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[125] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[125]),
        .Q(sig_data_skid_reg[125]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[126] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[126]),
        .Q(sig_data_skid_reg[126]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[127] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[127]),
        .Q(sig_data_skid_reg[127]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[128] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[128]),
        .Q(sig_data_skid_reg[128]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[129] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[129]),
        .Q(sig_data_skid_reg[129]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[12]),
        .Q(sig_data_skid_reg[12]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[130] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[130]),
        .Q(sig_data_skid_reg[130]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[131] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[131]),
        .Q(sig_data_skid_reg[131]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[132] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[132]),
        .Q(sig_data_skid_reg[132]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[133] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[133]),
        .Q(sig_data_skid_reg[133]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[134] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[134]),
        .Q(sig_data_skid_reg[134]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[135] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[135]),
        .Q(sig_data_skid_reg[135]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[136] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[136]),
        .Q(sig_data_skid_reg[136]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[137] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[137]),
        .Q(sig_data_skid_reg[137]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[138] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[138]),
        .Q(sig_data_skid_reg[138]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[139] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[139]),
        .Q(sig_data_skid_reg[139]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[13]),
        .Q(sig_data_skid_reg[13]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[140] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[140]),
        .Q(sig_data_skid_reg[140]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[141] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[141]),
        .Q(sig_data_skid_reg[141]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[142] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[142]),
        .Q(sig_data_skid_reg[142]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[143] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[143]),
        .Q(sig_data_skid_reg[143]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[144] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[144]),
        .Q(sig_data_skid_reg[144]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[145] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[145]),
        .Q(sig_data_skid_reg[145]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[146] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[146]),
        .Q(sig_data_skid_reg[146]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[147] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[147]),
        .Q(sig_data_skid_reg[147]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[148] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[148]),
        .Q(sig_data_skid_reg[148]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[149] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[149]),
        .Q(sig_data_skid_reg[149]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[14]),
        .Q(sig_data_skid_reg[14]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[150] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[150]),
        .Q(sig_data_skid_reg[150]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[151] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[151]),
        .Q(sig_data_skid_reg[151]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[152] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[152]),
        .Q(sig_data_skid_reg[152]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[153] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[153]),
        .Q(sig_data_skid_reg[153]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[154] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[154]),
        .Q(sig_data_skid_reg[154]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[155] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[155]),
        .Q(sig_data_skid_reg[155]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[156] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[156]),
        .Q(sig_data_skid_reg[156]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[157] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[157]),
        .Q(sig_data_skid_reg[157]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[158] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[158]),
        .Q(sig_data_skid_reg[158]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[159] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[159]),
        .Q(sig_data_skid_reg[159]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[15] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[15]),
        .Q(sig_data_skid_reg[15]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[160] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[160]),
        .Q(sig_data_skid_reg[160]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[161] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[161]),
        .Q(sig_data_skid_reg[161]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[162] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[162]),
        .Q(sig_data_skid_reg[162]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[163] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[163]),
        .Q(sig_data_skid_reg[163]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[164] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[164]),
        .Q(sig_data_skid_reg[164]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[165] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[165]),
        .Q(sig_data_skid_reg[165]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[166] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[166]),
        .Q(sig_data_skid_reg[166]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[167] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[167]),
        .Q(sig_data_skid_reg[167]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[168] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[168]),
        .Q(sig_data_skid_reg[168]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[169] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[169]),
        .Q(sig_data_skid_reg[169]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[16] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[16]),
        .Q(sig_data_skid_reg[16]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[170] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[170]),
        .Q(sig_data_skid_reg[170]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[171] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[171]),
        .Q(sig_data_skid_reg[171]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[172] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[172]),
        .Q(sig_data_skid_reg[172]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[173] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[173]),
        .Q(sig_data_skid_reg[173]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[174] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[174]),
        .Q(sig_data_skid_reg[174]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[175] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[175]),
        .Q(sig_data_skid_reg[175]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[176] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[176]),
        .Q(sig_data_skid_reg[176]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[177] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[177]),
        .Q(sig_data_skid_reg[177]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[178] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[178]),
        .Q(sig_data_skid_reg[178]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[179] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[179]),
        .Q(sig_data_skid_reg[179]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[17] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[17]),
        .Q(sig_data_skid_reg[17]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[180] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[180]),
        .Q(sig_data_skid_reg[180]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[181] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[181]),
        .Q(sig_data_skid_reg[181]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[182] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[182]),
        .Q(sig_data_skid_reg[182]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[183] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[183]),
        .Q(sig_data_skid_reg[183]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[184] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[184]),
        .Q(sig_data_skid_reg[184]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[185] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[185]),
        .Q(sig_data_skid_reg[185]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[186] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[186]),
        .Q(sig_data_skid_reg[186]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[187] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[187]),
        .Q(sig_data_skid_reg[187]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[188] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[188]),
        .Q(sig_data_skid_reg[188]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[189] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[189]),
        .Q(sig_data_skid_reg[189]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[18] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[18]),
        .Q(sig_data_skid_reg[18]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[190] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[190]),
        .Q(sig_data_skid_reg[190]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[191] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[191]),
        .Q(sig_data_skid_reg[191]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[192] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[192]),
        .Q(sig_data_skid_reg[192]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[193] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[193]),
        .Q(sig_data_skid_reg[193]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[194] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[194]),
        .Q(sig_data_skid_reg[194]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[195] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[195]),
        .Q(sig_data_skid_reg[195]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[196] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[196]),
        .Q(sig_data_skid_reg[196]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[197] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[197]),
        .Q(sig_data_skid_reg[197]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[198] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[198]),
        .Q(sig_data_skid_reg[198]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[199] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[199]),
        .Q(sig_data_skid_reg[199]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[19] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[19]),
        .Q(sig_data_skid_reg[19]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[1]),
        .Q(sig_data_skid_reg[1]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[200] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[200]),
        .Q(sig_data_skid_reg[200]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[201] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[201]),
        .Q(sig_data_skid_reg[201]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[202] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[202]),
        .Q(sig_data_skid_reg[202]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[203] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[203]),
        .Q(sig_data_skid_reg[203]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[204] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[204]),
        .Q(sig_data_skid_reg[204]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[205] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[205]),
        .Q(sig_data_skid_reg[205]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[206] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[206]),
        .Q(sig_data_skid_reg[206]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[207] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[207]),
        .Q(sig_data_skid_reg[207]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[208] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[208]),
        .Q(sig_data_skid_reg[208]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[209] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[209]),
        .Q(sig_data_skid_reg[209]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[20] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[20]),
        .Q(sig_data_skid_reg[20]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[210] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[210]),
        .Q(sig_data_skid_reg[210]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[211] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[211]),
        .Q(sig_data_skid_reg[211]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[212] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[212]),
        .Q(sig_data_skid_reg[212]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[213] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[213]),
        .Q(sig_data_skid_reg[213]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[214] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[214]),
        .Q(sig_data_skid_reg[214]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[215] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[215]),
        .Q(sig_data_skid_reg[215]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[216] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[216]),
        .Q(sig_data_skid_reg[216]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[217] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[217]),
        .Q(sig_data_skid_reg[217]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[218] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[218]),
        .Q(sig_data_skid_reg[218]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[219] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[219]),
        .Q(sig_data_skid_reg[219]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[21] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[21]),
        .Q(sig_data_skid_reg[21]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[220] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[220]),
        .Q(sig_data_skid_reg[220]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[221] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[221]),
        .Q(sig_data_skid_reg[221]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[222] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[222]),
        .Q(sig_data_skid_reg[222]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[223] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[223]),
        .Q(sig_data_skid_reg[223]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[224] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[224]),
        .Q(sig_data_skid_reg[224]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[225] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[225]),
        .Q(sig_data_skid_reg[225]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[226] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[226]),
        .Q(sig_data_skid_reg[226]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[227] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[227]),
        .Q(sig_data_skid_reg[227]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[228] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[228]),
        .Q(sig_data_skid_reg[228]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[229] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[229]),
        .Q(sig_data_skid_reg[229]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[22] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[22]),
        .Q(sig_data_skid_reg[22]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[230] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[230]),
        .Q(sig_data_skid_reg[230]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[231] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[231]),
        .Q(sig_data_skid_reg[231]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[232] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[232]),
        .Q(sig_data_skid_reg[232]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[233] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[233]),
        .Q(sig_data_skid_reg[233]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[234] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[234]),
        .Q(sig_data_skid_reg[234]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[235] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[235]),
        .Q(sig_data_skid_reg[235]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[236] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[236]),
        .Q(sig_data_skid_reg[236]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[237] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[237]),
        .Q(sig_data_skid_reg[237]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[238] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[238]),
        .Q(sig_data_skid_reg[238]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[239] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[239]),
        .Q(sig_data_skid_reg[239]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[23] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[23]),
        .Q(sig_data_skid_reg[23]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[240] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[240]),
        .Q(sig_data_skid_reg[240]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[241] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[241]),
        .Q(sig_data_skid_reg[241]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[242] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[242]),
        .Q(sig_data_skid_reg[242]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[243] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[243]),
        .Q(sig_data_skid_reg[243]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[244] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[244]),
        .Q(sig_data_skid_reg[244]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[245] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[245]),
        .Q(sig_data_skid_reg[245]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[246] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[246]),
        .Q(sig_data_skid_reg[246]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[247] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[247]),
        .Q(sig_data_skid_reg[247]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[248] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[248]),
        .Q(sig_data_skid_reg[248]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[249] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[249]),
        .Q(sig_data_skid_reg[249]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[24] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[24]),
        .Q(sig_data_skid_reg[24]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[250] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[250]),
        .Q(sig_data_skid_reg[250]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[251] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[251]),
        .Q(sig_data_skid_reg[251]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[252] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[252]),
        .Q(sig_data_skid_reg[252]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[253] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[253]),
        .Q(sig_data_skid_reg[253]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[254] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[254]),
        .Q(sig_data_skid_reg[254]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[255] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[255]),
        .Q(sig_data_skid_reg[255]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[25] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[25]),
        .Q(sig_data_skid_reg[25]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[26] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[26]),
        .Q(sig_data_skid_reg[26]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[27] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[27]),
        .Q(sig_data_skid_reg[27]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[28] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[28]),
        .Q(sig_data_skid_reg[28]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[29] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[29]),
        .Q(sig_data_skid_reg[29]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[2]),
        .Q(sig_data_skid_reg[2]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[30] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[30]),
        .Q(sig_data_skid_reg[30]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[31] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[31]),
        .Q(sig_data_skid_reg[31]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[32] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[32]),
        .Q(sig_data_skid_reg[32]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[33] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[33]),
        .Q(sig_data_skid_reg[33]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[34] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[34]),
        .Q(sig_data_skid_reg[34]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[35] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[35]),
        .Q(sig_data_skid_reg[35]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[36] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[36]),
        .Q(sig_data_skid_reg[36]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[37] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[37]),
        .Q(sig_data_skid_reg[37]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[38] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[38]),
        .Q(sig_data_skid_reg[38]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[39] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[39]),
        .Q(sig_data_skid_reg[39]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[3]),
        .Q(sig_data_skid_reg[3]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[40] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[40]),
        .Q(sig_data_skid_reg[40]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[41] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[41]),
        .Q(sig_data_skid_reg[41]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[42] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[42]),
        .Q(sig_data_skid_reg[42]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[43] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[43]),
        .Q(sig_data_skid_reg[43]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[44] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[44]),
        .Q(sig_data_skid_reg[44]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[45] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[45]),
        .Q(sig_data_skid_reg[45]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[46] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[46]),
        .Q(sig_data_skid_reg[46]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[47] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[47]),
        .Q(sig_data_skid_reg[47]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[48] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[48]),
        .Q(sig_data_skid_reg[48]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[49] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[49]),
        .Q(sig_data_skid_reg[49]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[4]),
        .Q(sig_data_skid_reg[4]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[50] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[50]),
        .Q(sig_data_skid_reg[50]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[51] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[51]),
        .Q(sig_data_skid_reg[51]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[52] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[52]),
        .Q(sig_data_skid_reg[52]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[53] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[53]),
        .Q(sig_data_skid_reg[53]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[54] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[54]),
        .Q(sig_data_skid_reg[54]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[55] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[55]),
        .Q(sig_data_skid_reg[55]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[56] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[56]),
        .Q(sig_data_skid_reg[56]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[57] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[57]),
        .Q(sig_data_skid_reg[57]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[58] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[58]),
        .Q(sig_data_skid_reg[58]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[59] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[59]),
        .Q(sig_data_skid_reg[59]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[5]),
        .Q(sig_data_skid_reg[5]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[60] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[60]),
        .Q(sig_data_skid_reg[60]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[61] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[61]),
        .Q(sig_data_skid_reg[61]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[62] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[62]),
        .Q(sig_data_skid_reg[62]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[63] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[63]),
        .Q(sig_data_skid_reg[63]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[64] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[64]),
        .Q(sig_data_skid_reg[64]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[65] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[65]),
        .Q(sig_data_skid_reg[65]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[66] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[66]),
        .Q(sig_data_skid_reg[66]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[67] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[67]),
        .Q(sig_data_skid_reg[67]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[68] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[68]),
        .Q(sig_data_skid_reg[68]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[69] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[69]),
        .Q(sig_data_skid_reg[69]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[6]),
        .Q(sig_data_skid_reg[6]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[70] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[70]),
        .Q(sig_data_skid_reg[70]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[71] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[71]),
        .Q(sig_data_skid_reg[71]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[72] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[72]),
        .Q(sig_data_skid_reg[72]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[73] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[73]),
        .Q(sig_data_skid_reg[73]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[74] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[74]),
        .Q(sig_data_skid_reg[74]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[75] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[75]),
        .Q(sig_data_skid_reg[75]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[76] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[76]),
        .Q(sig_data_skid_reg[76]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[77] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[77]),
        .Q(sig_data_skid_reg[77]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[78] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[78]),
        .Q(sig_data_skid_reg[78]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[79] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[79]),
        .Q(sig_data_skid_reg[79]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[7]),
        .Q(sig_data_skid_reg[7]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[80] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[80]),
        .Q(sig_data_skid_reg[80]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[81] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[81]),
        .Q(sig_data_skid_reg[81]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[82] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[82]),
        .Q(sig_data_skid_reg[82]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[83] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[83]),
        .Q(sig_data_skid_reg[83]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[84] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[84]),
        .Q(sig_data_skid_reg[84]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[85] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[85]),
        .Q(sig_data_skid_reg[85]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[86] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[86]),
        .Q(sig_data_skid_reg[86]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[87] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[87]),
        .Q(sig_data_skid_reg[87]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[88] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[88]),
        .Q(sig_data_skid_reg[88]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[89] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[89]),
        .Q(sig_data_skid_reg[89]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[8]),
        .Q(sig_data_skid_reg[8]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[90] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[90]),
        .Q(sig_data_skid_reg[90]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[91] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[91]),
        .Q(sig_data_skid_reg[91]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[92] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[92]),
        .Q(sig_data_skid_reg[92]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[93] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[93]),
        .Q(sig_data_skid_reg[93]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[94] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[94]),
        .Q(sig_data_skid_reg[94]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[95] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[95]),
        .Q(sig_data_skid_reg[95]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[96] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[96]),
        .Q(sig_data_skid_reg[96]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[97] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[97]),
        .Q(sig_data_skid_reg[97]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[98] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[98]),
        .Q(sig_data_skid_reg[98]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[99] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[99]),
        .Q(sig_data_skid_reg[99]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[9]),
        .Q(sig_data_skid_reg[9]),
        .R(SS));
  LUT6 #(
    .INIT(64'hBAAAFFFFBAAA0000)) 
    sig_last_reg_out_i_1
       (.I0(sig_sstrb_stop_mask),
        .I1(empty),
        .I2(\OMIT_UNPACKING.lsig_cmd_loaded ),
        .I3(dout[288]),
        .I4(sig_s_ready_dup),
        .I5(sig_last_skid_reg),
        .O(sig_last_skid_mux_out));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_reg_out_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_last_skid_mux_out),
        .Q(m_axis_mm2s_tlast),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_skid_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_slast_with_stop),
        .Q(sig_last_skid_reg),
        .R(SS));
  LUT6 #(
    .INIT(64'h40404040F0F070F0)) 
    sig_m_valid_dup_i_1
       (.I0(m_axis_mm2s_tready),
        .I1(sig_m_valid_dup),
        .I2(sig_m_valid_dup_i_2_n_0),
        .I3(sig_halt_reg_dly2),
        .I4(sig_halt_reg_dly3),
        .I5(sig_sstrb_stop_mask),
        .O(sig_m_valid_dup_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000002AFF)) 
    sig_m_valid_dup_i_2
       (.I0(sig_m_valid_dup),
        .I1(sig_s_ready_dup),
        .I2(m_axis_mm2s_tready),
        .I3(sig_m_valid_out_reg_0),
        .I4(sig_data_reg_out0),
        .I5(sig_mmap_reset_reg),
        .O(sig_m_valid_dup_i_2_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_dup_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1_n_0),
        .Q(sig_m_valid_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_out_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1_n_0),
        .Q(sig_m_valid_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBBBB0080)) 
    sig_mvalid_stop_reg_i_1
       (.I0(m_axis_mm2s_tready),
        .I1(sig_m_valid_dup),
        .I2(sig_halt_reg_dly2),
        .I3(sig_halt_reg_dly3),
        .I4(sig_sstrb_stop_mask),
        .I5(sig_mvalid_stop),
        .O(sig_mvalid_stop_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_mvalid_stop_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_mvalid_stop_reg_i_1_n_0),
        .Q(sig_mvalid_stop),
        .R(SS));
  LUT5 #(
    .INIT(32'h20200020)) 
    sig_s_ready_dup_i_1
       (.I0(sig_s_ready_dup_i_2_n_0),
        .I1(sig_sstrb_stop_mask),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .I3(sig_halt_reg_dly2),
        .I4(sig_halt_reg_dly3),
        .O(sig_s_ready_dup_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF700)) 
    sig_s_ready_dup_i_2
       (.I0(sig_m_valid_dup),
        .I1(\OMIT_UNPACKING.lsig_cmd_loaded ),
        .I2(empty),
        .I3(sig_s_ready_dup),
        .I4(m_axis_mm2s_tready),
        .I5(sig_mmap_reset_reg),
        .O(sig_s_ready_dup_i_2_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_dup_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_i_1_n_0),
        .Q(sig_s_ready_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_out_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_i_1_n_0),
        .Q(sig_s_ready_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sstrb_stop_mask_reg[31] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\sig_sstrb_stop_mask_reg[31]_0 ),
        .Q(sig_sstrb_stop_mask),
        .R(SS));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[0]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[256]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[0]),
        .O(sig_strb_skid_mux_out[0]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[10]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[266]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[10]),
        .O(sig_strb_skid_mux_out[10]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[11]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[267]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[11]),
        .O(sig_strb_skid_mux_out[11]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[12]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[268]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[12]),
        .O(sig_strb_skid_mux_out[12]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[13]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[269]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[13]),
        .O(sig_strb_skid_mux_out[13]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[14]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[270]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[14]),
        .O(sig_strb_skid_mux_out[14]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[15]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[271]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[15]),
        .O(sig_strb_skid_mux_out[15]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[16]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[272]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[16]),
        .O(sig_strb_skid_mux_out[16]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[17]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[273]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[17]),
        .O(sig_strb_skid_mux_out[17]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[18]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[274]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[18]),
        .O(sig_strb_skid_mux_out[18]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[19]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[275]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[19]),
        .O(sig_strb_skid_mux_out[19]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[1]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[257]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[1]),
        .O(sig_strb_skid_mux_out[1]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[20]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[276]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[20]),
        .O(sig_strb_skid_mux_out[20]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[21]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[277]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[21]),
        .O(sig_strb_skid_mux_out[21]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[22]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[278]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[22]),
        .O(sig_strb_skid_mux_out[22]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[23]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[279]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[23]),
        .O(sig_strb_skid_mux_out[23]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[24]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[280]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[24]),
        .O(sig_strb_skid_mux_out[24]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[25]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[281]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[25]),
        .O(sig_strb_skid_mux_out[25]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[26]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[282]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[26]),
        .O(sig_strb_skid_mux_out[26]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[27]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[283]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[27]),
        .O(sig_strb_skid_mux_out[27]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[28]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[284]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[28]),
        .O(sig_strb_skid_mux_out[28]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[29]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[285]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[29]),
        .O(sig_strb_skid_mux_out[29]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[2]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[258]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[2]),
        .O(sig_strb_skid_mux_out[2]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[30]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[286]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[30]),
        .O(sig_strb_skid_mux_out[30]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[31]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[287]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[31]),
        .O(sig_strb_skid_mux_out[31]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[3]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[259]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[3]),
        .O(sig_strb_skid_mux_out[3]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[4]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[260]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[4]),
        .O(sig_strb_skid_mux_out[4]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[5]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[261]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[5]),
        .O(sig_strb_skid_mux_out[5]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[6]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[262]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[6]),
        .O(sig_strb_skid_mux_out[6]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[7]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[263]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[7]),
        .O(sig_strb_skid_mux_out[7]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[8]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[264]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[8]),
        .O(sig_strb_skid_mux_out[8]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sig_strb_reg_out[9]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[265]),
        .I2(sig_s_ready_dup),
        .I3(sig_strb_skid_reg[9]),
        .O(sig_strb_skid_mux_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[0]),
        .Q(m_axis_mm2s_tkeep[0]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[10]),
        .Q(m_axis_mm2s_tkeep[10]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[11]),
        .Q(m_axis_mm2s_tkeep[11]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[12]),
        .Q(m_axis_mm2s_tkeep[12]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[13]),
        .Q(m_axis_mm2s_tkeep[13]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[14]),
        .Q(m_axis_mm2s_tkeep[14]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[15] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[15]),
        .Q(m_axis_mm2s_tkeep[15]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[16] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[16]),
        .Q(m_axis_mm2s_tkeep[16]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[17] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[17]),
        .Q(m_axis_mm2s_tkeep[17]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[18] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[18]),
        .Q(m_axis_mm2s_tkeep[18]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[19] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[19]),
        .Q(m_axis_mm2s_tkeep[19]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[1]),
        .Q(m_axis_mm2s_tkeep[1]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[20] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[20]),
        .Q(m_axis_mm2s_tkeep[20]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[21] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[21]),
        .Q(m_axis_mm2s_tkeep[21]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[22] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[22]),
        .Q(m_axis_mm2s_tkeep[22]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[23] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[23]),
        .Q(m_axis_mm2s_tkeep[23]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[24] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[24]),
        .Q(m_axis_mm2s_tkeep[24]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[25] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[25]),
        .Q(m_axis_mm2s_tkeep[25]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[26] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[26]),
        .Q(m_axis_mm2s_tkeep[26]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[27] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[27]),
        .Q(m_axis_mm2s_tkeep[27]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[28] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[28]),
        .Q(m_axis_mm2s_tkeep[28]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[29] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[29]),
        .Q(m_axis_mm2s_tkeep[29]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[2]),
        .Q(m_axis_mm2s_tkeep[2]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[30] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[30]),
        .Q(m_axis_mm2s_tkeep[30]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[31] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[31]),
        .Q(m_axis_mm2s_tkeep[31]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[3]),
        .Q(m_axis_mm2s_tkeep[3]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[4]),
        .Q(m_axis_mm2s_tkeep[4]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[5]),
        .Q(m_axis_mm2s_tkeep[5]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[6]),
        .Q(m_axis_mm2s_tkeep[6]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[7]),
        .Q(m_axis_mm2s_tkeep[7]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[8]),
        .Q(m_axis_mm2s_tkeep[8]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[9]),
        .Q(m_axis_mm2s_tkeep[9]),
        .R(sig_data_reg_out0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[0]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[256]),
        .O(sig_sstrb_with_stop[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[10]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[266]),
        .O(sig_sstrb_with_stop[10]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[11]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[267]),
        .O(sig_sstrb_with_stop[11]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[12]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[268]),
        .O(sig_sstrb_with_stop[12]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[13]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[269]),
        .O(sig_sstrb_with_stop[13]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[14]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[270]),
        .O(sig_sstrb_with_stop[14]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[15]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[271]),
        .O(sig_sstrb_with_stop[15]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[16]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[272]),
        .O(sig_sstrb_with_stop[16]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[17]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[273]),
        .O(sig_sstrb_with_stop[17]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[18]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[274]),
        .O(sig_sstrb_with_stop[18]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[19]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[275]),
        .O(sig_sstrb_with_stop[19]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[1]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[257]),
        .O(sig_sstrb_with_stop[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[20]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[276]),
        .O(sig_sstrb_with_stop[20]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[21]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[277]),
        .O(sig_sstrb_with_stop[21]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[22]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[278]),
        .O(sig_sstrb_with_stop[22]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[23]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[279]),
        .O(sig_sstrb_with_stop[23]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[24]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[280]),
        .O(sig_sstrb_with_stop[24]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[25]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[281]),
        .O(sig_sstrb_with_stop[25]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[26]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[282]),
        .O(sig_sstrb_with_stop[26]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[27]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[283]),
        .O(sig_sstrb_with_stop[27]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[28]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[284]),
        .O(sig_sstrb_with_stop[28]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[29]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[285]),
        .O(sig_sstrb_with_stop[29]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[2]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[258]),
        .O(sig_sstrb_with_stop[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[30]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[286]),
        .O(sig_sstrb_with_stop[30]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[31]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[287]),
        .O(sig_sstrb_with_stop[31]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[3]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[259]),
        .O(sig_sstrb_with_stop[3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[4]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[260]),
        .O(sig_sstrb_with_stop[4]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[5]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[261]),
        .O(sig_sstrb_with_stop[5]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[6]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[262]),
        .O(sig_sstrb_with_stop[6]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[7]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[263]),
        .O(sig_sstrb_with_stop[7]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[8]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[264]),
        .O(sig_sstrb_with_stop[8]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_skid_reg[9]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(dout[265]),
        .O(sig_sstrb_with_stop[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[0]),
        .Q(sig_strb_skid_reg[0]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[10]),
        .Q(sig_strb_skid_reg[10]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[11]),
        .Q(sig_strb_skid_reg[11]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[12]),
        .Q(sig_strb_skid_reg[12]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[13]),
        .Q(sig_strb_skid_reg[13]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[14]),
        .Q(sig_strb_skid_reg[14]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[15] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[15]),
        .Q(sig_strb_skid_reg[15]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[16] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[16]),
        .Q(sig_strb_skid_reg[16]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[17] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[17]),
        .Q(sig_strb_skid_reg[17]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[18] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[18]),
        .Q(sig_strb_skid_reg[18]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[19] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[19]),
        .Q(sig_strb_skid_reg[19]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[1]),
        .Q(sig_strb_skid_reg[1]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[20] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[20]),
        .Q(sig_strb_skid_reg[20]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[21] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[21]),
        .Q(sig_strb_skid_reg[21]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[22] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[22]),
        .Q(sig_strb_skid_reg[22]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[23] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[23]),
        .Q(sig_strb_skid_reg[23]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[24] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[24]),
        .Q(sig_strb_skid_reg[24]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[25] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[25]),
        .Q(sig_strb_skid_reg[25]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[26] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[26]),
        .Q(sig_strb_skid_reg[26]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[27] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[27]),
        .Q(sig_strb_skid_reg[27]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[28] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[28]),
        .Q(sig_strb_skid_reg[28]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[29] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[29]),
        .Q(sig_strb_skid_reg[29]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[2]),
        .Q(sig_strb_skid_reg[2]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[30] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[30]),
        .Q(sig_strb_skid_reg[30]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[31] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[31]),
        .Q(sig_strb_skid_reg[31]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[3]),
        .Q(sig_strb_skid_reg[3]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[4]),
        .Q(sig_strb_skid_reg[4]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[5]),
        .Q(sig_strb_skid_reg[5]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[6]),
        .Q(sig_strb_skid_reg[6]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[7]),
        .Q(sig_strb_skid_reg[7]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[8]),
        .Q(sig_strb_skid_reg[8]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sstrb_with_stop[9]),
        .Q(sig_strb_skid_reg[9]),
        .R(SS));
endmodule

module system_axi_dma_1_0_axi_datamover_strb_gen2
   (D,
    Q,
    out,
    \sig_xfer_strt_strb_ireg3_reg[2] ,
    \sig_xfer_strt_strb_ireg3_reg[4] ,
    \sig_xfer_strt_strb_ireg3_reg[6] ,
    \sig_xfer_strt_strb_ireg3_reg[8] ,
    \sig_xfer_strt_strb_ireg3_reg[10] ,
    \sig_xfer_strt_strb_ireg3_reg[12] ,
    \sig_xfer_strt_strb_ireg3_reg[14] ,
    \sig_xfer_strt_strb_ireg3_reg[18] ,
    \sig_xfer_strt_strb_ireg3_reg[20] ,
    \sig_xfer_strt_strb_ireg3_reg[22] ,
    \sig_xfer_strt_strb_ireg3_reg[24] ,
    \sig_xfer_strt_strb_ireg3_reg[26] ,
    \sig_xfer_strt_strb_ireg3_reg[28] ,
    \sig_xfer_strt_strb_ireg3_reg[30] );
  output [28:0]D;
  input [4:0]Q;
  input [13:0]out;
  input \sig_xfer_strt_strb_ireg3_reg[2] ;
  input \sig_xfer_strt_strb_ireg3_reg[4] ;
  input \sig_xfer_strt_strb_ireg3_reg[6] ;
  input \sig_xfer_strt_strb_ireg3_reg[8] ;
  input \sig_xfer_strt_strb_ireg3_reg[10] ;
  input \sig_xfer_strt_strb_ireg3_reg[12] ;
  input \sig_xfer_strt_strb_ireg3_reg[14] ;
  input \sig_xfer_strt_strb_ireg3_reg[18] ;
  input \sig_xfer_strt_strb_ireg3_reg[20] ;
  input \sig_xfer_strt_strb_ireg3_reg[22] ;
  input \sig_xfer_strt_strb_ireg3_reg[24] ;
  input \sig_xfer_strt_strb_ireg3_reg[26] ;
  input \sig_xfer_strt_strb_ireg3_reg[28] ;
  input \sig_xfer_strt_strb_ireg3_reg[30] ;

  wire [28:0]D;
  wire [4:0]Q;
  wire [13:0]out;
  wire \sig_xfer_strt_strb_ireg3_reg[10] ;
  wire \sig_xfer_strt_strb_ireg3_reg[12] ;
  wire \sig_xfer_strt_strb_ireg3_reg[14] ;
  wire \sig_xfer_strt_strb_ireg3_reg[18] ;
  wire \sig_xfer_strt_strb_ireg3_reg[20] ;
  wire \sig_xfer_strt_strb_ireg3_reg[22] ;
  wire \sig_xfer_strt_strb_ireg3_reg[24] ;
  wire \sig_xfer_strt_strb_ireg3_reg[26] ;
  wire \sig_xfer_strt_strb_ireg3_reg[28] ;
  wire \sig_xfer_strt_strb_ireg3_reg[2] ;
  wire \sig_xfer_strt_strb_ireg3_reg[30] ;
  wire \sig_xfer_strt_strb_ireg3_reg[4] ;
  wire \sig_xfer_strt_strb_ireg3_reg[6] ;
  wire \sig_xfer_strt_strb_ireg3_reg[8] ;

  LUT6 #(
    .INIT(64'h0015555500000000)) 
    \sig_xfer_strt_strb_ireg3[10]_i_1 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\sig_xfer_strt_strb_ireg3_reg[10] ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \sig_xfer_strt_strb_ireg3[11]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(out[5]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h0555155500000000)) 
    \sig_xfer_strt_strb_ireg3[12]_i_1 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\sig_xfer_strt_strb_ireg3_reg[12] ),
        .O(D[12]));
  LUT5 #(
    .INIT(32'h15550000)) 
    \sig_xfer_strt_strb_ireg3[13]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(out[6]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h1555555500000000)) 
    \sig_xfer_strt_strb_ireg3[14]_i_1 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(\sig_xfer_strt_strb_ireg3_reg[14] ),
        .O(D[14]));
  LUT5 #(
    .INIT(32'h55570000)) 
    \sig_xfer_strt_strb_ireg3[17]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(out[7]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h5555557F00000000)) 
    \sig_xfer_strt_strb_ireg3[18]_i_1 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\sig_xfer_strt_strb_ireg3_reg[18] ),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    \sig_xfer_strt_strb_ireg3[19]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(out[8]),
        .O(D[17]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \sig_xfer_strt_strb_ireg3[1]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(out[0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h55555F7F00000000)) 
    \sig_xfer_strt_strb_ireg3[20]_i_1 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(\sig_xfer_strt_strb_ireg3_reg[20] ),
        .O(D[18]));
  LUT5 #(
    .INIT(32'h557F0000)) 
    \sig_xfer_strt_strb_ireg3[21]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(out[9]),
        .O(D[19]));
  LUT6 #(
    .INIT(64'h55557FFF00000000)) 
    \sig_xfer_strt_strb_ireg3[22]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(\sig_xfer_strt_strb_ireg3_reg[22] ),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \sig_xfer_strt_strb_ireg3[23]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(out[10]),
        .O(D[21]));
  LUT6 #(
    .INIT(64'h5557FFFF00000000)) 
    \sig_xfer_strt_strb_ireg3[24]_i_1 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\sig_xfer_strt_strb_ireg3_reg[24] ),
        .O(D[22]));
  LUT5 #(
    .INIT(32'h57FF0000)) 
    \sig_xfer_strt_strb_ireg3[25]_i_1 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(out[11]),
        .O(D[23]));
  LUT6 #(
    .INIT(64'h557FFFFF00000000)) 
    \sig_xfer_strt_strb_ireg3[26]_i_1 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\sig_xfer_strt_strb_ireg3_reg[26] ),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h7F00)) 
    \sig_xfer_strt_strb_ireg3[27]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(out[12]),
        .O(D[25]));
  LUT6 #(
    .INIT(64'h5FFF7FFF00000000)) 
    \sig_xfer_strt_strb_ireg3[28]_i_1 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\sig_xfer_strt_strb_ireg3_reg[28] ),
        .O(D[26]));
  LUT5 #(
    .INIT(32'h7FFF0000)) 
    \sig_xfer_strt_strb_ireg3[29]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(out[13]),
        .O(D[27]));
  LUT6 #(
    .INIT(64'h0000001500000000)) 
    \sig_xfer_strt_strb_ireg3[2]_i_1 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\sig_xfer_strt_strb_ireg3_reg[2] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h7FFFFFFF00000000)) 
    \sig_xfer_strt_strb_ireg3[30]_i_1 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(\sig_xfer_strt_strb_ireg3_reg[30] ),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \sig_xfer_strt_strb_ireg3[3]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(out[1]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0000051500000000)) 
    \sig_xfer_strt_strb_ireg3[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(\sig_xfer_strt_strb_ireg3_reg[4] ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h00150000)) 
    \sig_xfer_strt_strb_ireg3[5]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(out[2]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h0000155500000000)) 
    \sig_xfer_strt_strb_ireg3[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(\sig_xfer_strt_strb_ireg3_reg[6] ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sig_xfer_strt_strb_ireg3[7]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(out[3]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0001555500000000)) 
    \sig_xfer_strt_strb_ireg3[8]_i_1 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\sig_xfer_strt_strb_ireg3_reg[8] ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h01550000)) 
    \sig_xfer_strt_strb_ireg3[9]_i_1 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(out[4]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \var_start_vector/i_ 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[4]),
        .O(D[0]));
endmodule

(* C_DLYTMR_RESOLUTION = "125" *) (* C_ENABLE_MULTI_CHANNEL = "0" *) (* C_FAMILY = "zynq" *) 
(* C_INCLUDE_MM2S = "1" *) (* C_INCLUDE_MM2S_DRE = "0" *) (* C_INCLUDE_MM2S_SF = "1" *) 
(* C_INCLUDE_S2MM = "0" *) (* C_INCLUDE_S2MM_DRE = "0" *) (* C_INCLUDE_S2MM_SF = "1" *) 
(* C_INCLUDE_SG = "0" *) (* C_INCREASE_THROUGHPUT = "0" *) (* C_INSTANCE = "axi_dma" *) 
(* C_MICRO_DMA = "0" *) (* C_MM2S_BURST_SIZE = "2" *) (* C_M_AXIS_MM2S_CNTRL_TDATA_WIDTH = "32" *) 
(* C_M_AXIS_MM2S_TDATA_WIDTH = "256" *) (* C_M_AXI_MM2S_ADDR_WIDTH = "32" *) (* C_M_AXI_MM2S_DATA_WIDTH = "256" *) 
(* C_M_AXI_S2MM_ADDR_WIDTH = "32" *) (* C_M_AXI_S2MM_DATA_WIDTH = "32" *) (* C_M_AXI_SG_ADDR_WIDTH = "32" *) 
(* C_M_AXI_SG_DATA_WIDTH = "32" *) (* C_NUM_MM2S_CHANNELS = "1" *) (* C_NUM_S2MM_CHANNELS = "1" *) 
(* C_PRMRY_IS_ACLK_ASYNC = "0" *) (* C_S2MM_BURST_SIZE = "16" *) (* C_SG_INCLUDE_STSCNTRL_STRM = "0" *) 
(* C_SG_LENGTH_WIDTH = "14" *) (* C_SG_USE_STSAPP_LENGTH = "0" *) (* C_S_AXIS_S2MM_STS_TDATA_WIDTH = "32" *) 
(* C_S_AXIS_S2MM_TDATA_WIDTH = "32" *) (* C_S_AXI_LITE_ADDR_WIDTH = "10" *) (* C_S_AXI_LITE_DATA_WIDTH = "32" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module system_axi_dma_1_0_axi_dma
   (s_axi_lite_aclk,
    m_axi_sg_aclk,
    m_axi_mm2s_aclk,
    m_axi_s2mm_aclk,
    axi_resetn,
    s_axi_lite_awvalid,
    s_axi_lite_awready,
    s_axi_lite_awaddr,
    s_axi_lite_wvalid,
    s_axi_lite_wready,
    s_axi_lite_wdata,
    s_axi_lite_bresp,
    s_axi_lite_bvalid,
    s_axi_lite_bready,
    s_axi_lite_arvalid,
    s_axi_lite_arready,
    s_axi_lite_araddr,
    s_axi_lite_rvalid,
    s_axi_lite_rready,
    s_axi_lite_rdata,
    s_axi_lite_rresp,
    m_axi_sg_awaddr,
    m_axi_sg_awlen,
    m_axi_sg_awsize,
    m_axi_sg_awburst,
    m_axi_sg_awprot,
    m_axi_sg_awcache,
    m_axi_sg_awuser,
    m_axi_sg_awvalid,
    m_axi_sg_awready,
    m_axi_sg_wdata,
    m_axi_sg_wstrb,
    m_axi_sg_wlast,
    m_axi_sg_wvalid,
    m_axi_sg_wready,
    m_axi_sg_bresp,
    m_axi_sg_bvalid,
    m_axi_sg_bready,
    m_axi_sg_araddr,
    m_axi_sg_arlen,
    m_axi_sg_arsize,
    m_axi_sg_arburst,
    m_axi_sg_arprot,
    m_axi_sg_arcache,
    m_axi_sg_aruser,
    m_axi_sg_arvalid,
    m_axi_sg_arready,
    m_axi_sg_rdata,
    m_axi_sg_rresp,
    m_axi_sg_rlast,
    m_axi_sg_rvalid,
    m_axi_sg_rready,
    m_axi_mm2s_araddr,
    m_axi_mm2s_arlen,
    m_axi_mm2s_arsize,
    m_axi_mm2s_arburst,
    m_axi_mm2s_arprot,
    m_axi_mm2s_arcache,
    m_axi_mm2s_aruser,
    m_axi_mm2s_arvalid,
    m_axi_mm2s_arready,
    m_axi_mm2s_rdata,
    m_axi_mm2s_rresp,
    m_axi_mm2s_rlast,
    m_axi_mm2s_rvalid,
    m_axi_mm2s_rready,
    mm2s_prmry_reset_out_n,
    m_axis_mm2s_tdata,
    m_axis_mm2s_tkeep,
    m_axis_mm2s_tvalid,
    m_axis_mm2s_tready,
    m_axis_mm2s_tlast,
    m_axis_mm2s_tuser,
    m_axis_mm2s_tid,
    m_axis_mm2s_tdest,
    mm2s_cntrl_reset_out_n,
    m_axis_mm2s_cntrl_tdata,
    m_axis_mm2s_cntrl_tkeep,
    m_axis_mm2s_cntrl_tvalid,
    m_axis_mm2s_cntrl_tready,
    m_axis_mm2s_cntrl_tlast,
    m_axi_s2mm_awaddr,
    m_axi_s2mm_awlen,
    m_axi_s2mm_awsize,
    m_axi_s2mm_awburst,
    m_axi_s2mm_awprot,
    m_axi_s2mm_awcache,
    m_axi_s2mm_awuser,
    m_axi_s2mm_awvalid,
    m_axi_s2mm_awready,
    m_axi_s2mm_wdata,
    m_axi_s2mm_wstrb,
    m_axi_s2mm_wlast,
    m_axi_s2mm_wvalid,
    m_axi_s2mm_wready,
    m_axi_s2mm_bresp,
    m_axi_s2mm_bvalid,
    m_axi_s2mm_bready,
    s2mm_prmry_reset_out_n,
    s_axis_s2mm_tdata,
    s_axis_s2mm_tkeep,
    s_axis_s2mm_tvalid,
    s_axis_s2mm_tready,
    s_axis_s2mm_tlast,
    s_axis_s2mm_tuser,
    s_axis_s2mm_tid,
    s_axis_s2mm_tdest,
    s2mm_sts_reset_out_n,
    s_axis_s2mm_sts_tdata,
    s_axis_s2mm_sts_tkeep,
    s_axis_s2mm_sts_tvalid,
    s_axis_s2mm_sts_tready,
    s_axis_s2mm_sts_tlast,
    mm2s_introut,
    s2mm_introut,
    axi_dma_tstvec);
  (* dont_touch = "true" *) input s_axi_lite_aclk;
  input m_axi_sg_aclk;
  input m_axi_mm2s_aclk;
  input m_axi_s2mm_aclk;
  input axi_resetn;
  input s_axi_lite_awvalid;
  output s_axi_lite_awready;
  input [9:0]s_axi_lite_awaddr;
  input s_axi_lite_wvalid;
  output s_axi_lite_wready;
  input [31:0]s_axi_lite_wdata;
  output [1:0]s_axi_lite_bresp;
  output s_axi_lite_bvalid;
  input s_axi_lite_bready;
  input s_axi_lite_arvalid;
  output s_axi_lite_arready;
  input [9:0]s_axi_lite_araddr;
  output s_axi_lite_rvalid;
  input s_axi_lite_rready;
  output [31:0]s_axi_lite_rdata;
  output [1:0]s_axi_lite_rresp;
  output [31:0]m_axi_sg_awaddr;
  output [7:0]m_axi_sg_awlen;
  output [2:0]m_axi_sg_awsize;
  output [1:0]m_axi_sg_awburst;
  output [2:0]m_axi_sg_awprot;
  output [3:0]m_axi_sg_awcache;
  output [3:0]m_axi_sg_awuser;
  output m_axi_sg_awvalid;
  input m_axi_sg_awready;
  output [31:0]m_axi_sg_wdata;
  output [3:0]m_axi_sg_wstrb;
  output m_axi_sg_wlast;
  output m_axi_sg_wvalid;
  input m_axi_sg_wready;
  input [1:0]m_axi_sg_bresp;
  input m_axi_sg_bvalid;
  output m_axi_sg_bready;
  output [31:0]m_axi_sg_araddr;
  output [7:0]m_axi_sg_arlen;
  output [2:0]m_axi_sg_arsize;
  output [1:0]m_axi_sg_arburst;
  output [2:0]m_axi_sg_arprot;
  output [3:0]m_axi_sg_arcache;
  output [3:0]m_axi_sg_aruser;
  output m_axi_sg_arvalid;
  input m_axi_sg_arready;
  input [31:0]m_axi_sg_rdata;
  input [1:0]m_axi_sg_rresp;
  input m_axi_sg_rlast;
  input m_axi_sg_rvalid;
  output m_axi_sg_rready;
  output [31:0]m_axi_mm2s_araddr;
  output [7:0]m_axi_mm2s_arlen;
  output [2:0]m_axi_mm2s_arsize;
  output [1:0]m_axi_mm2s_arburst;
  output [2:0]m_axi_mm2s_arprot;
  output [3:0]m_axi_mm2s_arcache;
  output [3:0]m_axi_mm2s_aruser;
  output m_axi_mm2s_arvalid;
  input m_axi_mm2s_arready;
  input [255:0]m_axi_mm2s_rdata;
  input [1:0]m_axi_mm2s_rresp;
  input m_axi_mm2s_rlast;
  input m_axi_mm2s_rvalid;
  output m_axi_mm2s_rready;
  output mm2s_prmry_reset_out_n;
  output [255:0]m_axis_mm2s_tdata;
  output [31:0]m_axis_mm2s_tkeep;
  output m_axis_mm2s_tvalid;
  input m_axis_mm2s_tready;
  output m_axis_mm2s_tlast;
  output [3:0]m_axis_mm2s_tuser;
  output [4:0]m_axis_mm2s_tid;
  output [4:0]m_axis_mm2s_tdest;
  output mm2s_cntrl_reset_out_n;
  output [31:0]m_axis_mm2s_cntrl_tdata;
  output [3:0]m_axis_mm2s_cntrl_tkeep;
  output m_axis_mm2s_cntrl_tvalid;
  input m_axis_mm2s_cntrl_tready;
  output m_axis_mm2s_cntrl_tlast;
  output [31:0]m_axi_s2mm_awaddr;
  output [7:0]m_axi_s2mm_awlen;
  output [2:0]m_axi_s2mm_awsize;
  output [1:0]m_axi_s2mm_awburst;
  output [2:0]m_axi_s2mm_awprot;
  output [3:0]m_axi_s2mm_awcache;
  output [3:0]m_axi_s2mm_awuser;
  output m_axi_s2mm_awvalid;
  input m_axi_s2mm_awready;
  output [31:0]m_axi_s2mm_wdata;
  output [3:0]m_axi_s2mm_wstrb;
  output m_axi_s2mm_wlast;
  output m_axi_s2mm_wvalid;
  input m_axi_s2mm_wready;
  input [1:0]m_axi_s2mm_bresp;
  input m_axi_s2mm_bvalid;
  output m_axi_s2mm_bready;
  output s2mm_prmry_reset_out_n;
  input [31:0]s_axis_s2mm_tdata;
  input [3:0]s_axis_s2mm_tkeep;
  input s_axis_s2mm_tvalid;
  output s_axis_s2mm_tready;
  input s_axis_s2mm_tlast;
  input [3:0]s_axis_s2mm_tuser;
  input [4:0]s_axis_s2mm_tid;
  input [4:0]s_axis_s2mm_tdest;
  output s2mm_sts_reset_out_n;
  input [31:0]s_axis_s2mm_sts_tdata;
  input [3:0]s_axis_s2mm_sts_tkeep;
  input s_axis_s2mm_sts_tvalid;
  output s_axis_s2mm_sts_tready;
  input s_axis_s2mm_sts_tlast;
  output mm2s_introut;
  output s2mm_introut;
  output [31:0]axi_dma_tstvec;

  wire \<const0> ;
  wire \GEN_AXI_LITE_IF.AXI_LITE_IF_I/rdy ;
  wire \GEN_MM2S_DMA_CONTROL.GEN_SIMPLE_DMA_MODE.I_MM2S_SMPL_SM/cmnds_queued ;
  wire [1:0]\GEN_MM2S_DMA_CONTROL.GEN_SIMPLE_DMA_MODE.I_MM2S_SMPL_SM/smpl_cs ;
  wire \GEN_MM2S_DMA_CONTROL.I_MM2S_CMDSTS/mm2s_decerr_i ;
  wire \GEN_MM2S_DMA_CONTROL.I_MM2S_CMDSTS/mm2s_interr_i ;
  wire \GEN_MM2S_DMA_CONTROL.I_MM2S_CMDSTS/mm2s_slverr_i ;
  wire \GEN_MM2S_DMA_CONTROL.I_MM2S_STS_MNGR/all_is_idle_d1 ;
  wire \GEN_MM2S_DMA_CONTROL.I_MM2S_STS_MNGR/mm2s_halted_set0 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER/halted1 ;
  wire \GEN_RESET_FOR_MM2S.RESET_I/soft_reset_d1 ;
  wire \GEN_RESET_FOR_MM2S.RESET_I/soft_reset_re0 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_14 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_15 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_16 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_17 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_18 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_19 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_20 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_21 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_22 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_23 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_24 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_25 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_26 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_27 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_28 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_29 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_30 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_31 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_32 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_33 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_34 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_35 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_36 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_37 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_38 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_39 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_40 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_41 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_42 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_43 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_44 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_45 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_46 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_47 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_48 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_49 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_50 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_51 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_52 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_53 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_54 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_55 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_56 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_57 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_58 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_59 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_60 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_61 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_62 ;
  wire I_AXI_DMA_REG_MODULE_n_10;
  wire I_AXI_DMA_REG_MODULE_n_11;
  wire I_AXI_DMA_REG_MODULE_n_60;
  wire I_RST_MODULE_n_10;
  wire I_RST_MODULE_n_11;
  wire I_RST_MODULE_n_12;
  wire [4:0]\^axi_dma_tstvec ;
  wire axi_lite_reset_n;
  wire axi_resetn;
  wire dma_mm2s_error;
  wire halt;
  wire m_axi_mm2s_aclk;
  wire [31:0]m_axi_mm2s_araddr;
  wire [0:0]\^m_axi_mm2s_arburst ;
  wire m_axi_mm2s_aresetn;
  wire [0:0]\^m_axi_mm2s_arlen ;
  wire m_axi_mm2s_arready;
  wire [2:0]\^m_axi_mm2s_arsize ;
  wire m_axi_mm2s_arvalid;
  wire [255:0]m_axi_mm2s_rdata;
  wire m_axi_mm2s_rlast;
  wire m_axi_mm2s_rready;
  wire [1:0]m_axi_mm2s_rresp;
  wire m_axi_mm2s_rvalid;
  wire m_axi_sg_aresetn;
  wire m_axis_mm2s_sts_tready;
  wire m_axis_mm2s_sts_tvalid_int;
  wire [255:0]m_axis_mm2s_tdata;
  wire [31:0]m_axis_mm2s_tkeep;
  wire m_axis_mm2s_tlast;
  wire m_axis_mm2s_tready;
  wire m_axis_mm2s_tvalid;
  wire mm2s_all_idle;
  wire mm2s_cntrl_reset_out_n;
  wire [0:0]mm2s_dmacr;
  wire mm2s_dmasr;
  wire mm2s_halt_cmplt;
  wire mm2s_halted_set;
  wire mm2s_introut;
  wire [13:0]mm2s_length;
  wire mm2s_prmry_reset_out_n;
  wire mm2s_prmry_resetn;
  wire [31:0]mm2s_sa;
  wire mm2s_smpl_decerr_set;
  wire mm2s_smpl_interr_set;
  wire mm2s_smpl_slverr_set;
  wire mm2s_stop;
  wire mm2s_sts_received;
  wire s_axi_lite_aclk;
  wire [9:0]s_axi_lite_araddr;
  wire s_axi_lite_arready;
  wire s_axi_lite_arvalid;
  wire [9:0]s_axi_lite_awaddr;
  wire s_axi_lite_awready;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire s_axi_lite_bvalid;
  wire [31:0]s_axi_lite_rdata;
  wire s_axi_lite_rready;
  wire s_axi_lite_rvalid;
  wire [31:0]s_axi_lite_wdata;
  wire s_axi_lite_wvalid;
  wire s_axis_mm2s_cmd_tready;
  wire s_axis_mm2s_cmd_tvalid_split;
  wire soft_reset;
  wire soft_reset_clr;

  assign axi_dma_tstvec[31] = \<const0> ;
  assign axi_dma_tstvec[30] = \<const0> ;
  assign axi_dma_tstvec[29] = \<const0> ;
  assign axi_dma_tstvec[28] = \<const0> ;
  assign axi_dma_tstvec[27] = \<const0> ;
  assign axi_dma_tstvec[26] = \<const0> ;
  assign axi_dma_tstvec[25] = \<const0> ;
  assign axi_dma_tstvec[24] = \<const0> ;
  assign axi_dma_tstvec[23] = \<const0> ;
  assign axi_dma_tstvec[22] = \<const0> ;
  assign axi_dma_tstvec[21] = \<const0> ;
  assign axi_dma_tstvec[20] = \<const0> ;
  assign axi_dma_tstvec[19] = \<const0> ;
  assign axi_dma_tstvec[18] = \<const0> ;
  assign axi_dma_tstvec[17] = \<const0> ;
  assign axi_dma_tstvec[16] = \<const0> ;
  assign axi_dma_tstvec[15] = \<const0> ;
  assign axi_dma_tstvec[14] = \<const0> ;
  assign axi_dma_tstvec[13] = \<const0> ;
  assign axi_dma_tstvec[12] = \<const0> ;
  assign axi_dma_tstvec[11] = \<const0> ;
  assign axi_dma_tstvec[10] = \<const0> ;
  assign axi_dma_tstvec[9] = \<const0> ;
  assign axi_dma_tstvec[8] = \<const0> ;
  assign axi_dma_tstvec[7] = \<const0> ;
  assign axi_dma_tstvec[6] = \<const0> ;
  assign axi_dma_tstvec[5] = \<const0> ;
  assign axi_dma_tstvec[4] = \^axi_dma_tstvec [4];
  assign axi_dma_tstvec[3] = \<const0> ;
  assign axi_dma_tstvec[2] = \<const0> ;
  assign axi_dma_tstvec[1:0] = \^axi_dma_tstvec [1:0];
  assign m_axi_mm2s_arburst[1] = \<const0> ;
  assign m_axi_mm2s_arburst[0] = \^m_axi_mm2s_arburst [0];
  assign m_axi_mm2s_arcache[3] = \<const0> ;
  assign m_axi_mm2s_arcache[2] = \<const0> ;
  assign m_axi_mm2s_arcache[1] = \<const0> ;
  assign m_axi_mm2s_arcache[0] = \<const0> ;
  assign m_axi_mm2s_arlen[7] = \<const0> ;
  assign m_axi_mm2s_arlen[6] = \<const0> ;
  assign m_axi_mm2s_arlen[5] = \<const0> ;
  assign m_axi_mm2s_arlen[4] = \<const0> ;
  assign m_axi_mm2s_arlen[3] = \<const0> ;
  assign m_axi_mm2s_arlen[2] = \<const0> ;
  assign m_axi_mm2s_arlen[1] = \<const0> ;
  assign m_axi_mm2s_arlen[0] = \^m_axi_mm2s_arlen [0];
  assign m_axi_mm2s_arprot[2] = \<const0> ;
  assign m_axi_mm2s_arprot[1] = \<const0> ;
  assign m_axi_mm2s_arprot[0] = \<const0> ;
  assign m_axi_mm2s_arsize[2] = \^m_axi_mm2s_arsize [2];
  assign m_axi_mm2s_arsize[1] = \<const0> ;
  assign m_axi_mm2s_arsize[0] = \^m_axi_mm2s_arsize [0];
  assign m_axi_mm2s_aruser[3] = \<const0> ;
  assign m_axi_mm2s_aruser[2] = \<const0> ;
  assign m_axi_mm2s_aruser[1] = \<const0> ;
  assign m_axi_mm2s_aruser[0] = \<const0> ;
  assign m_axi_s2mm_awaddr[31] = \<const0> ;
  assign m_axi_s2mm_awaddr[30] = \<const0> ;
  assign m_axi_s2mm_awaddr[29] = \<const0> ;
  assign m_axi_s2mm_awaddr[28] = \<const0> ;
  assign m_axi_s2mm_awaddr[27] = \<const0> ;
  assign m_axi_s2mm_awaddr[26] = \<const0> ;
  assign m_axi_s2mm_awaddr[25] = \<const0> ;
  assign m_axi_s2mm_awaddr[24] = \<const0> ;
  assign m_axi_s2mm_awaddr[23] = \<const0> ;
  assign m_axi_s2mm_awaddr[22] = \<const0> ;
  assign m_axi_s2mm_awaddr[21] = \<const0> ;
  assign m_axi_s2mm_awaddr[20] = \<const0> ;
  assign m_axi_s2mm_awaddr[19] = \<const0> ;
  assign m_axi_s2mm_awaddr[18] = \<const0> ;
  assign m_axi_s2mm_awaddr[17] = \<const0> ;
  assign m_axi_s2mm_awaddr[16] = \<const0> ;
  assign m_axi_s2mm_awaddr[15] = \<const0> ;
  assign m_axi_s2mm_awaddr[14] = \<const0> ;
  assign m_axi_s2mm_awaddr[13] = \<const0> ;
  assign m_axi_s2mm_awaddr[12] = \<const0> ;
  assign m_axi_s2mm_awaddr[11] = \<const0> ;
  assign m_axi_s2mm_awaddr[10] = \<const0> ;
  assign m_axi_s2mm_awaddr[9] = \<const0> ;
  assign m_axi_s2mm_awaddr[8] = \<const0> ;
  assign m_axi_s2mm_awaddr[7] = \<const0> ;
  assign m_axi_s2mm_awaddr[6] = \<const0> ;
  assign m_axi_s2mm_awaddr[5] = \<const0> ;
  assign m_axi_s2mm_awaddr[4] = \<const0> ;
  assign m_axi_s2mm_awaddr[3] = \<const0> ;
  assign m_axi_s2mm_awaddr[2] = \<const0> ;
  assign m_axi_s2mm_awaddr[1] = \<const0> ;
  assign m_axi_s2mm_awaddr[0] = \<const0> ;
  assign m_axi_s2mm_awburst[1] = \<const0> ;
  assign m_axi_s2mm_awburst[0] = \<const0> ;
  assign m_axi_s2mm_awcache[3] = \<const0> ;
  assign m_axi_s2mm_awcache[2] = \<const0> ;
  assign m_axi_s2mm_awcache[1] = \<const0> ;
  assign m_axi_s2mm_awcache[0] = \<const0> ;
  assign m_axi_s2mm_awlen[7] = \<const0> ;
  assign m_axi_s2mm_awlen[6] = \<const0> ;
  assign m_axi_s2mm_awlen[5] = \<const0> ;
  assign m_axi_s2mm_awlen[4] = \<const0> ;
  assign m_axi_s2mm_awlen[3] = \<const0> ;
  assign m_axi_s2mm_awlen[2] = \<const0> ;
  assign m_axi_s2mm_awlen[1] = \<const0> ;
  assign m_axi_s2mm_awlen[0] = \<const0> ;
  assign m_axi_s2mm_awprot[2] = \<const0> ;
  assign m_axi_s2mm_awprot[1] = \<const0> ;
  assign m_axi_s2mm_awprot[0] = \<const0> ;
  assign m_axi_s2mm_awsize[2] = \<const0> ;
  assign m_axi_s2mm_awsize[1] = \<const0> ;
  assign m_axi_s2mm_awsize[0] = \<const0> ;
  assign m_axi_s2mm_awuser[3] = \<const0> ;
  assign m_axi_s2mm_awuser[2] = \<const0> ;
  assign m_axi_s2mm_awuser[1] = \<const0> ;
  assign m_axi_s2mm_awuser[0] = \<const0> ;
  assign m_axi_s2mm_awvalid = \<const0> ;
  assign m_axi_s2mm_bready = \<const0> ;
  assign m_axi_s2mm_wdata[31] = \<const0> ;
  assign m_axi_s2mm_wdata[30] = \<const0> ;
  assign m_axi_s2mm_wdata[29] = \<const0> ;
  assign m_axi_s2mm_wdata[28] = \<const0> ;
  assign m_axi_s2mm_wdata[27] = \<const0> ;
  assign m_axi_s2mm_wdata[26] = \<const0> ;
  assign m_axi_s2mm_wdata[25] = \<const0> ;
  assign m_axi_s2mm_wdata[24] = \<const0> ;
  assign m_axi_s2mm_wdata[23] = \<const0> ;
  assign m_axi_s2mm_wdata[22] = \<const0> ;
  assign m_axi_s2mm_wdata[21] = \<const0> ;
  assign m_axi_s2mm_wdata[20] = \<const0> ;
  assign m_axi_s2mm_wdata[19] = \<const0> ;
  assign m_axi_s2mm_wdata[18] = \<const0> ;
  assign m_axi_s2mm_wdata[17] = \<const0> ;
  assign m_axi_s2mm_wdata[16] = \<const0> ;
  assign m_axi_s2mm_wdata[15] = \<const0> ;
  assign m_axi_s2mm_wdata[14] = \<const0> ;
  assign m_axi_s2mm_wdata[13] = \<const0> ;
  assign m_axi_s2mm_wdata[12] = \<const0> ;
  assign m_axi_s2mm_wdata[11] = \<const0> ;
  assign m_axi_s2mm_wdata[10] = \<const0> ;
  assign m_axi_s2mm_wdata[9] = \<const0> ;
  assign m_axi_s2mm_wdata[8] = \<const0> ;
  assign m_axi_s2mm_wdata[7] = \<const0> ;
  assign m_axi_s2mm_wdata[6] = \<const0> ;
  assign m_axi_s2mm_wdata[5] = \<const0> ;
  assign m_axi_s2mm_wdata[4] = \<const0> ;
  assign m_axi_s2mm_wdata[3] = \<const0> ;
  assign m_axi_s2mm_wdata[2] = \<const0> ;
  assign m_axi_s2mm_wdata[1] = \<const0> ;
  assign m_axi_s2mm_wdata[0] = \<const0> ;
  assign m_axi_s2mm_wlast = \<const0> ;
  assign m_axi_s2mm_wstrb[3] = \<const0> ;
  assign m_axi_s2mm_wstrb[2] = \<const0> ;
  assign m_axi_s2mm_wstrb[1] = \<const0> ;
  assign m_axi_s2mm_wstrb[0] = \<const0> ;
  assign m_axi_s2mm_wvalid = \<const0> ;
  assign m_axi_sg_araddr[31] = \<const0> ;
  assign m_axi_sg_araddr[30] = \<const0> ;
  assign m_axi_sg_araddr[29] = \<const0> ;
  assign m_axi_sg_araddr[28] = \<const0> ;
  assign m_axi_sg_araddr[27] = \<const0> ;
  assign m_axi_sg_araddr[26] = \<const0> ;
  assign m_axi_sg_araddr[25] = \<const0> ;
  assign m_axi_sg_araddr[24] = \<const0> ;
  assign m_axi_sg_araddr[23] = \<const0> ;
  assign m_axi_sg_araddr[22] = \<const0> ;
  assign m_axi_sg_araddr[21] = \<const0> ;
  assign m_axi_sg_araddr[20] = \<const0> ;
  assign m_axi_sg_araddr[19] = \<const0> ;
  assign m_axi_sg_araddr[18] = \<const0> ;
  assign m_axi_sg_araddr[17] = \<const0> ;
  assign m_axi_sg_araddr[16] = \<const0> ;
  assign m_axi_sg_araddr[15] = \<const0> ;
  assign m_axi_sg_araddr[14] = \<const0> ;
  assign m_axi_sg_araddr[13] = \<const0> ;
  assign m_axi_sg_araddr[12] = \<const0> ;
  assign m_axi_sg_araddr[11] = \<const0> ;
  assign m_axi_sg_araddr[10] = \<const0> ;
  assign m_axi_sg_araddr[9] = \<const0> ;
  assign m_axi_sg_araddr[8] = \<const0> ;
  assign m_axi_sg_araddr[7] = \<const0> ;
  assign m_axi_sg_araddr[6] = \<const0> ;
  assign m_axi_sg_araddr[5] = \<const0> ;
  assign m_axi_sg_araddr[4] = \<const0> ;
  assign m_axi_sg_araddr[3] = \<const0> ;
  assign m_axi_sg_araddr[2] = \<const0> ;
  assign m_axi_sg_araddr[1] = \<const0> ;
  assign m_axi_sg_araddr[0] = \<const0> ;
  assign m_axi_sg_arburst[1] = \<const0> ;
  assign m_axi_sg_arburst[0] = \<const0> ;
  assign m_axi_sg_arcache[3] = \<const0> ;
  assign m_axi_sg_arcache[2] = \<const0> ;
  assign m_axi_sg_arcache[1] = \<const0> ;
  assign m_axi_sg_arcache[0] = \<const0> ;
  assign m_axi_sg_arlen[7] = \<const0> ;
  assign m_axi_sg_arlen[6] = \<const0> ;
  assign m_axi_sg_arlen[5] = \<const0> ;
  assign m_axi_sg_arlen[4] = \<const0> ;
  assign m_axi_sg_arlen[3] = \<const0> ;
  assign m_axi_sg_arlen[2] = \<const0> ;
  assign m_axi_sg_arlen[1] = \<const0> ;
  assign m_axi_sg_arlen[0] = \<const0> ;
  assign m_axi_sg_arprot[2] = \<const0> ;
  assign m_axi_sg_arprot[1] = \<const0> ;
  assign m_axi_sg_arprot[0] = \<const0> ;
  assign m_axi_sg_arsize[2] = \<const0> ;
  assign m_axi_sg_arsize[1] = \<const0> ;
  assign m_axi_sg_arsize[0] = \<const0> ;
  assign m_axi_sg_aruser[3] = \<const0> ;
  assign m_axi_sg_aruser[2] = \<const0> ;
  assign m_axi_sg_aruser[1] = \<const0> ;
  assign m_axi_sg_aruser[0] = \<const0> ;
  assign m_axi_sg_arvalid = \<const0> ;
  assign m_axi_sg_awaddr[31] = \<const0> ;
  assign m_axi_sg_awaddr[30] = \<const0> ;
  assign m_axi_sg_awaddr[29] = \<const0> ;
  assign m_axi_sg_awaddr[28] = \<const0> ;
  assign m_axi_sg_awaddr[27] = \<const0> ;
  assign m_axi_sg_awaddr[26] = \<const0> ;
  assign m_axi_sg_awaddr[25] = \<const0> ;
  assign m_axi_sg_awaddr[24] = \<const0> ;
  assign m_axi_sg_awaddr[23] = \<const0> ;
  assign m_axi_sg_awaddr[22] = \<const0> ;
  assign m_axi_sg_awaddr[21] = \<const0> ;
  assign m_axi_sg_awaddr[20] = \<const0> ;
  assign m_axi_sg_awaddr[19] = \<const0> ;
  assign m_axi_sg_awaddr[18] = \<const0> ;
  assign m_axi_sg_awaddr[17] = \<const0> ;
  assign m_axi_sg_awaddr[16] = \<const0> ;
  assign m_axi_sg_awaddr[15] = \<const0> ;
  assign m_axi_sg_awaddr[14] = \<const0> ;
  assign m_axi_sg_awaddr[13] = \<const0> ;
  assign m_axi_sg_awaddr[12] = \<const0> ;
  assign m_axi_sg_awaddr[11] = \<const0> ;
  assign m_axi_sg_awaddr[10] = \<const0> ;
  assign m_axi_sg_awaddr[9] = \<const0> ;
  assign m_axi_sg_awaddr[8] = \<const0> ;
  assign m_axi_sg_awaddr[7] = \<const0> ;
  assign m_axi_sg_awaddr[6] = \<const0> ;
  assign m_axi_sg_awaddr[5] = \<const0> ;
  assign m_axi_sg_awaddr[4] = \<const0> ;
  assign m_axi_sg_awaddr[3] = \<const0> ;
  assign m_axi_sg_awaddr[2] = \<const0> ;
  assign m_axi_sg_awaddr[1] = \<const0> ;
  assign m_axi_sg_awaddr[0] = \<const0> ;
  assign m_axi_sg_awburst[1] = \<const0> ;
  assign m_axi_sg_awburst[0] = \<const0> ;
  assign m_axi_sg_awcache[3] = \<const0> ;
  assign m_axi_sg_awcache[2] = \<const0> ;
  assign m_axi_sg_awcache[1] = \<const0> ;
  assign m_axi_sg_awcache[0] = \<const0> ;
  assign m_axi_sg_awlen[7] = \<const0> ;
  assign m_axi_sg_awlen[6] = \<const0> ;
  assign m_axi_sg_awlen[5] = \<const0> ;
  assign m_axi_sg_awlen[4] = \<const0> ;
  assign m_axi_sg_awlen[3] = \<const0> ;
  assign m_axi_sg_awlen[2] = \<const0> ;
  assign m_axi_sg_awlen[1] = \<const0> ;
  assign m_axi_sg_awlen[0] = \<const0> ;
  assign m_axi_sg_awprot[2] = \<const0> ;
  assign m_axi_sg_awprot[1] = \<const0> ;
  assign m_axi_sg_awprot[0] = \<const0> ;
  assign m_axi_sg_awsize[2] = \<const0> ;
  assign m_axi_sg_awsize[1] = \<const0> ;
  assign m_axi_sg_awsize[0] = \<const0> ;
  assign m_axi_sg_awuser[3] = \<const0> ;
  assign m_axi_sg_awuser[2] = \<const0> ;
  assign m_axi_sg_awuser[1] = \<const0> ;
  assign m_axi_sg_awuser[0] = \<const0> ;
  assign m_axi_sg_awvalid = \<const0> ;
  assign m_axi_sg_bready = \<const0> ;
  assign m_axi_sg_rready = \<const0> ;
  assign m_axi_sg_wdata[31] = \<const0> ;
  assign m_axi_sg_wdata[30] = \<const0> ;
  assign m_axi_sg_wdata[29] = \<const0> ;
  assign m_axi_sg_wdata[28] = \<const0> ;
  assign m_axi_sg_wdata[27] = \<const0> ;
  assign m_axi_sg_wdata[26] = \<const0> ;
  assign m_axi_sg_wdata[25] = \<const0> ;
  assign m_axi_sg_wdata[24] = \<const0> ;
  assign m_axi_sg_wdata[23] = \<const0> ;
  assign m_axi_sg_wdata[22] = \<const0> ;
  assign m_axi_sg_wdata[21] = \<const0> ;
  assign m_axi_sg_wdata[20] = \<const0> ;
  assign m_axi_sg_wdata[19] = \<const0> ;
  assign m_axi_sg_wdata[18] = \<const0> ;
  assign m_axi_sg_wdata[17] = \<const0> ;
  assign m_axi_sg_wdata[16] = \<const0> ;
  assign m_axi_sg_wdata[15] = \<const0> ;
  assign m_axi_sg_wdata[14] = \<const0> ;
  assign m_axi_sg_wdata[13] = \<const0> ;
  assign m_axi_sg_wdata[12] = \<const0> ;
  assign m_axi_sg_wdata[11] = \<const0> ;
  assign m_axi_sg_wdata[10] = \<const0> ;
  assign m_axi_sg_wdata[9] = \<const0> ;
  assign m_axi_sg_wdata[8] = \<const0> ;
  assign m_axi_sg_wdata[7] = \<const0> ;
  assign m_axi_sg_wdata[6] = \<const0> ;
  assign m_axi_sg_wdata[5] = \<const0> ;
  assign m_axi_sg_wdata[4] = \<const0> ;
  assign m_axi_sg_wdata[3] = \<const0> ;
  assign m_axi_sg_wdata[2] = \<const0> ;
  assign m_axi_sg_wdata[1] = \<const0> ;
  assign m_axi_sg_wdata[0] = \<const0> ;
  assign m_axi_sg_wlast = \<const0> ;
  assign m_axi_sg_wstrb[3] = \<const0> ;
  assign m_axi_sg_wstrb[2] = \<const0> ;
  assign m_axi_sg_wstrb[1] = \<const0> ;
  assign m_axi_sg_wstrb[0] = \<const0> ;
  assign m_axi_sg_wvalid = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[31] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[30] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[29] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[28] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[27] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[26] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[25] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[24] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[23] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[22] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[21] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[20] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[19] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[18] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[17] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[16] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[15] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[14] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[13] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[12] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[11] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[10] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[9] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[8] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[7] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[6] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[5] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[4] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[3] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[2] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[1] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[0] = \<const0> ;
  assign m_axis_mm2s_cntrl_tkeep[3] = \<const0> ;
  assign m_axis_mm2s_cntrl_tkeep[2] = \<const0> ;
  assign m_axis_mm2s_cntrl_tkeep[1] = \<const0> ;
  assign m_axis_mm2s_cntrl_tkeep[0] = \<const0> ;
  assign m_axis_mm2s_cntrl_tlast = \<const0> ;
  assign m_axis_mm2s_cntrl_tvalid = \<const0> ;
  assign m_axis_mm2s_tdest[4] = \<const0> ;
  assign m_axis_mm2s_tdest[3] = \<const0> ;
  assign m_axis_mm2s_tdest[2] = \<const0> ;
  assign m_axis_mm2s_tdest[1] = \<const0> ;
  assign m_axis_mm2s_tdest[0] = \<const0> ;
  assign m_axis_mm2s_tid[4] = \<const0> ;
  assign m_axis_mm2s_tid[3] = \<const0> ;
  assign m_axis_mm2s_tid[2] = \<const0> ;
  assign m_axis_mm2s_tid[1] = \<const0> ;
  assign m_axis_mm2s_tid[0] = \<const0> ;
  assign m_axis_mm2s_tuser[3] = \<const0> ;
  assign m_axis_mm2s_tuser[2] = \<const0> ;
  assign m_axis_mm2s_tuser[1] = \<const0> ;
  assign m_axis_mm2s_tuser[0] = \<const0> ;
  assign s2mm_introut = \<const0> ;
  assign s2mm_prmry_reset_out_n = \<const0> ;
  assign s2mm_sts_reset_out_n = \<const0> ;
  assign s_axi_lite_bresp[1] = \<const0> ;
  assign s_axi_lite_bresp[0] = \<const0> ;
  assign s_axi_lite_rresp[1] = \<const0> ;
  assign s_axi_lite_rresp[0] = \<const0> ;
  assign s_axi_lite_wready = s_axi_lite_awready;
  assign s_axis_s2mm_sts_tready = \<const0> ;
  assign s_axis_s2mm_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  system_axi_dma_1_0_axi_dma_mm2s_mngr \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR 
       (.D({\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_15 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_16 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_17 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_18 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_19 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_20 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_21 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_22 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_23 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_24 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_25 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_26 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_27 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_28 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_29 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_30 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_31 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_32 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_33 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_34 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_35 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_36 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_37 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_38 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_39 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_40 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_41 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_42 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_43 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_44 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_45 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_46 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_47 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_48 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_49 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_50 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_51 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_52 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_53 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_54 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_55 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_56 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_57 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_58 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_59 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_60 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_61 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_62 }),
        .\FSM_sequential_smpl_cs_reg[1] (I_AXI_DMA_REG_MODULE_n_11),
        .\FSM_sequential_smpl_cs_reg[1]_0 (I_AXI_DMA_REG_MODULE_n_10),
        .\GEN_CMD_BTT_LESS_23.cmnd_data_reg[13] (mm2s_length),
        .\GEN_CMD_BTT_LESS_23.cmnd_data_reg[26] (I_AXI_DMA_REG_MODULE_n_60),
        .Q(mm2s_sa),
        .all_is_idle_d1(\GEN_MM2S_DMA_CONTROL.I_MM2S_STS_MNGR/all_is_idle_d1 ),
        .axi_dma_tstvec(\^axi_dma_tstvec [4]),
        .cmnds_queued(\GEN_MM2S_DMA_CONTROL.GEN_SIMPLE_DMA_MODE.I_MM2S_SMPL_SM/cmnds_queued ),
        .dma_mm2s_error(dma_mm2s_error),
        .halted1(\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER/halted1 ),
        .m_axis_mm2s_sts_tready(m_axis_mm2s_sts_tready),
        .m_axis_mm2s_sts_tvalid_int(m_axis_mm2s_sts_tvalid_int),
        .mm2s_all_idle(mm2s_all_idle),
        .mm2s_decerr_i(\GEN_MM2S_DMA_CONTROL.I_MM2S_CMDSTS/mm2s_decerr_i ),
        .mm2s_dmacr(mm2s_dmacr),
        .mm2s_dmasr(mm2s_dmasr),
        .mm2s_halted_clr_reg(\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_14 ),
        .mm2s_halted_set(mm2s_halted_set),
        .mm2s_halted_set0(\GEN_MM2S_DMA_CONTROL.I_MM2S_STS_MNGR/mm2s_halted_set0 ),
        .mm2s_interr_i(\GEN_MM2S_DMA_CONTROL.I_MM2S_CMDSTS/mm2s_interr_i ),
        .mm2s_slverr_i(\GEN_MM2S_DMA_CONTROL.I_MM2S_CMDSTS/mm2s_slverr_i ),
        .mm2s_smpl_decerr_set(mm2s_smpl_decerr_set),
        .mm2s_smpl_interr_set(mm2s_smpl_interr_set),
        .mm2s_smpl_slverr_set(mm2s_smpl_slverr_set),
        .mm2s_stop(mm2s_stop),
        .mm2s_sts_received(mm2s_sts_received),
        .out(m_axi_sg_aresetn),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .s_axis_mm2s_cmd_tready(s_axis_mm2s_cmd_tready),
        .s_axis_mm2s_cmd_tvalid_split(s_axis_mm2s_cmd_tvalid_split),
        .smpl_cs(\GEN_MM2S_DMA_CONTROL.GEN_SIMPLE_DMA_MODE.I_MM2S_SMPL_SM/smpl_cs ),
        .soft_reset(soft_reset));
  system_axi_dma_1_0_axi_dma_sofeof_gen \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_SOFEOF_GEN 
       (.SR(\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER/halted1 ),
        .axi_dma_tstvec(\^axi_dma_tstvec [1:0]),
        .m_axis_mm2s_tlast(m_axis_mm2s_tlast),
        .m_axis_mm2s_tready(m_axis_mm2s_tready),
        .m_axis_mm2s_tvalid(m_axis_mm2s_tvalid),
        .out(mm2s_prmry_resetn),
        .s_axi_lite_aclk(s_axi_lite_aclk));
  system_axi_dma_1_0_axi_dma_reg_module I_AXI_DMA_REG_MODULE
       (.\GEN_REG_FOR_SMPL.buffer_address_i_reg[31] (mm2s_sa),
        .\GEN_SYNC_READ.s_axi_lite_rvalid_i_reg (s_axi_lite_rvalid),
        .\GEN_SYNC_WRITE.awvalid_d1_reg (axi_lite_reset_n),
        .\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] (I_RST_MODULE_n_12),
        .\GEN_SYNC_WRITE.bvalid_i_reg (s_axi_lite_bvalid),
        .Q(mm2s_length),
        .SR(I_RST_MODULE_n_11),
        .all_is_idle_d1(\GEN_MM2S_DMA_CONTROL.I_MM2S_STS_MNGR/all_is_idle_d1 ),
        .axi_dma_tstvec(\^axi_dma_tstvec [4]),
        .cmnds_queued(\GEN_MM2S_DMA_CONTROL.GEN_SIMPLE_DMA_MODE.I_MM2S_SMPL_SM/cmnds_queued ),
        .dma_mm2s_error(dma_mm2s_error),
        .\dmacr_i_reg[0] (mm2s_dmacr),
        .\dmacr_i_reg[0]_0 (I_AXI_DMA_REG_MODULE_n_10),
        .\dmacr_i_reg[0]_1 (I_RST_MODULE_n_10),
        .\dmacr_i_reg[2] (I_AXI_DMA_REG_MODULE_n_11),
        .\dmacr_i_reg[3] (I_AXI_DMA_REG_MODULE_n_60),
        .\dmacr_i_reg[4] (\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER/halted1 ),
        .halted_reg(\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_14 ),
        .mm2s_all_idle(mm2s_all_idle),
        .mm2s_dmasr(mm2s_dmasr),
        .mm2s_halt_cmplt(mm2s_halt_cmplt),
        .mm2s_halted_set(mm2s_halted_set),
        .mm2s_halted_set0(\GEN_MM2S_DMA_CONTROL.I_MM2S_STS_MNGR/mm2s_halted_set0 ),
        .mm2s_introut(mm2s_introut),
        .mm2s_smpl_decerr_set(mm2s_smpl_decerr_set),
        .mm2s_smpl_interr_set(mm2s_smpl_interr_set),
        .mm2s_smpl_slverr_set(mm2s_smpl_slverr_set),
        .mm2s_stop(mm2s_stop),
        .out(m_axi_sg_aresetn),
        .rdy(\GEN_AXI_LITE_IF.AXI_LITE_IF_I/rdy ),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .s_axi_lite_araddr(s_axi_lite_araddr),
        .s_axi_lite_arready(s_axi_lite_arready),
        .s_axi_lite_arvalid(s_axi_lite_arvalid),
        .s_axi_lite_awaddr(s_axi_lite_awaddr[5:2]),
        .s_axi_lite_awready(s_axi_lite_awready),
        .s_axi_lite_awvalid(s_axi_lite_awvalid),
        .s_axi_lite_bready(s_axi_lite_bready),
        .s_axi_lite_rdata(s_axi_lite_rdata),
        .s_axi_lite_rready(s_axi_lite_rready),
        .s_axi_lite_wdata(s_axi_lite_wdata),
        .s_axi_lite_wvalid(s_axi_lite_wvalid),
        .smpl_cs(\GEN_MM2S_DMA_CONTROL.GEN_SIMPLE_DMA_MODE.I_MM2S_SMPL_SM/smpl_cs ),
        .soft_reset(soft_reset),
        .soft_reset_clr(soft_reset_clr),
        .soft_reset_d1(\GEN_RESET_FOR_MM2S.RESET_I/soft_reset_d1 ),
        .soft_reset_re0(\GEN_RESET_FOR_MM2S.RESET_I/soft_reset_re0 ));
  system_axi_dma_1_0_axi_datamover I_PRMRY_DATAMOVER
       (.D({\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_15 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_16 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_17 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_18 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_19 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_20 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_21 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_22 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_23 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_24 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_25 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_26 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_27 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_28 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_29 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_30 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_31 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_32 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_33 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_34 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_35 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_36 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_37 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_38 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_39 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_40 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_41 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_42 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_43 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_44 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_45 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_46 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_47 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_48 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_49 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_50 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_51 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_52 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_53 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_54 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_55 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_56 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_57 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_58 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_59 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_60 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_61 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_62 }),
        .halt(halt),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axi_mm2s_araddr(m_axi_mm2s_araddr),
        .m_axi_mm2s_arburst(\^m_axi_mm2s_arburst ),
        .m_axi_mm2s_arlen(\^m_axi_mm2s_arlen ),
        .m_axi_mm2s_arready(m_axi_mm2s_arready),
        .m_axi_mm2s_arsize({\^m_axi_mm2s_arsize [2],\^m_axi_mm2s_arsize [0]}),
        .m_axi_mm2s_arvalid(m_axi_mm2s_arvalid),
        .m_axi_mm2s_rdata(m_axi_mm2s_rdata),
        .m_axi_mm2s_rlast(m_axi_mm2s_rlast),
        .m_axi_mm2s_rready(m_axi_mm2s_rready),
        .m_axi_mm2s_rresp(m_axi_mm2s_rresp),
        .m_axi_mm2s_rvalid(m_axi_mm2s_rvalid),
        .m_axis_mm2s_sts_tready(m_axis_mm2s_sts_tready),
        .m_axis_mm2s_sts_tvalid_int(m_axis_mm2s_sts_tvalid_int),
        .m_axis_mm2s_tdata(m_axis_mm2s_tdata),
        .m_axis_mm2s_tkeep(m_axis_mm2s_tkeep),
        .m_axis_mm2s_tlast(m_axis_mm2s_tlast),
        .m_axis_mm2s_tready(m_axis_mm2s_tready),
        .m_axis_mm2s_tvalid(m_axis_mm2s_tvalid),
        .mm2s_decerr_i(\GEN_MM2S_DMA_CONTROL.I_MM2S_CMDSTS/mm2s_decerr_i ),
        .mm2s_halt_cmplt(mm2s_halt_cmplt),
        .mm2s_interr_i(\GEN_MM2S_DMA_CONTROL.I_MM2S_CMDSTS/mm2s_interr_i ),
        .mm2s_slverr_i(\GEN_MM2S_DMA_CONTROL.I_MM2S_CMDSTS/mm2s_slverr_i ),
        .mm2s_sts_received(mm2s_sts_received),
        .out(m_axi_mm2s_aresetn),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .s_axis_mm2s_cmd_tready(s_axis_mm2s_cmd_tready),
        .s_axis_mm2s_cmd_tvalid_split(s_axis_mm2s_cmd_tvalid_split));
  system_axi_dma_1_0_axi_dma_rst_module I_RST_MODULE
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 (axi_lite_reset_n),
        .\GNE_SYNC_RESET.prmry_resetn_reg (mm2s_prmry_resetn),
        .\GNE_SYNC_RESET.s_soft_reset_i_reg (m_axi_mm2s_aresetn),
        .\GNE_SYNC_RESET.scndry_resetn_reg (\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER/halted1 ),
        .\GNE_SYNC_RESET.scndry_resetn_reg_0 (I_RST_MODULE_n_10),
        .SR(I_RST_MODULE_n_11),
        .axi_resetn(axi_resetn),
        .halt(halt),
        .mm2s_all_idle(mm2s_all_idle),
        .mm2s_cntrl_reset_out_n(mm2s_cntrl_reset_out_n),
        .mm2s_halt_cmplt(mm2s_halt_cmplt),
        .mm2s_prmry_reset_out_n(mm2s_prmry_reset_out_n),
        .mm2s_stop(mm2s_stop),
        .out(m_axi_sg_aresetn),
        .rdy(\GEN_AXI_LITE_IF.AXI_LITE_IF_I/rdy ),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .s_axi_lite_awaddr(s_axi_lite_awaddr[6]),
        .\s_axi_lite_awaddr[6] (I_RST_MODULE_n_12),
        .soft_reset(soft_reset),
        .soft_reset_clr(soft_reset_clr),
        .soft_reset_d1(\GEN_RESET_FOR_MM2S.RESET_I/soft_reset_d1 ),
        .soft_reset_re0(\GEN_RESET_FOR_MM2S.RESET_I/soft_reset_re0 ));
endmodule

module system_axi_dma_1_0_axi_dma_lite_if
   (s_axi_lite_awready,
    \GEN_SYNC_WRITE.rdy_reg_0 ,
    s_axi_lite_arready,
    axi2ip_wrce,
    E,
    p_0_in1_in,
    \GEN_SYNC_WRITE.bvalid_i_reg_0 ,
    \GEN_SYNC_READ.s_axi_lite_rvalid_i_reg_0 ,
    \GEN_SYNC_READ.axi2ip_rdaddr_reg[2]_0 ,
    buffer_length_wren0,
    \GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 ,
    \GEN_SYNC_READ.axi2ip_rdaddr_reg[9]_0 ,
    \s_axi_lite_wdata[19] ,
    s_axi_lite_rdata,
    s_axi_lite_aclk,
    SR,
    s_axi_lite_awvalid,
    s_axi_lite_wvalid,
    s_axi_lite_arvalid,
    \GEN_SYNC_WRITE.axi2ip_wrce_reg[10]_0 ,
    D,
    Q,
    \GEN_SYNC_READ.s_axi_lite_rdata_reg[0]_0 ,
    \GEN_SYNC_READ.s_axi_lite_rdata_reg[0]_1 ,
    \GEN_REG_FOR_SMPL.buffer_length_wren_reg ,
    \GEN_REG_FOR_SMPL.buffer_length_wren_reg_0 ,
    \GEN_REG_FOR_SMPL.buffer_length_wren_reg_1 ,
    \GEN_SYNC_READ.s_axi_lite_rdata_reg[13]_0 ,
    \GEN_SYNC_READ.s_axi_lite_rdata_reg[13]_1 ,
    \GEN_SYNC_READ.s_axi_lite_rdata_reg[12]_0 ,
    \GEN_SYNC_READ.s_axi_lite_rdata_reg[6]_0 ,
    \GEN_SYNC_READ.s_axi_lite_rdata_reg[4]_0 ,
    \GEN_SYNC_READ.s_axi_lite_rdata_reg[4]_1 ,
    \GEN_SYNC_READ.s_axi_lite_rdata_reg[2]_0 ,
    \GEN_SYNC_READ.s_axi_lite_rdata_reg[2]_1 ,
    \GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_0 ,
    \GEN_SYNC_READ.s_axi_lite_rdata_reg[3]_0 ,
    \GEN_SYNC_READ.s_axi_lite_rdata_reg[23]_0 ,
    \GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_0 ,
    \GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_1 ,
    \GEN_SYNC_READ.s_axi_lite_rdata_reg[5]_0 ,
    s_axi_lite_wdata,
    \GEN_SYNC_WRITE.awvalid_d1_reg_0 ,
    s_axi_lite_bready,
    s_axi_lite_rready,
    s_axi_lite_awaddr,
    out,
    s_axi_lite_araddr);
  output s_axi_lite_awready;
  output \GEN_SYNC_WRITE.rdy_reg_0 ;
  output s_axi_lite_arready;
  output [1:0]axi2ip_wrce;
  output [0:0]E;
  output p_0_in1_in;
  output \GEN_SYNC_WRITE.bvalid_i_reg_0 ;
  output \GEN_SYNC_READ.s_axi_lite_rvalid_i_reg_0 ;
  output \GEN_SYNC_READ.axi2ip_rdaddr_reg[2]_0 ;
  output buffer_length_wren0;
  output \GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 ;
  output \GEN_SYNC_READ.axi2ip_rdaddr_reg[9]_0 ;
  output [0:0]\s_axi_lite_wdata[19] ;
  output [31:0]s_axi_lite_rdata;
  input s_axi_lite_aclk;
  input [0:0]SR;
  input s_axi_lite_awvalid;
  input s_axi_lite_wvalid;
  input s_axi_lite_arvalid;
  input \GEN_SYNC_WRITE.axi2ip_wrce_reg[10]_0 ;
  input [0:0]D;
  input [13:0]Q;
  input \GEN_SYNC_READ.s_axi_lite_rdata_reg[0]_0 ;
  input \GEN_SYNC_READ.s_axi_lite_rdata_reg[0]_1 ;
  input \GEN_REG_FOR_SMPL.buffer_length_wren_reg ;
  input \GEN_REG_FOR_SMPL.buffer_length_wren_reg_0 ;
  input \GEN_REG_FOR_SMPL.buffer_length_wren_reg_1 ;
  input \GEN_SYNC_READ.s_axi_lite_rdata_reg[13]_0 ;
  input [1:0]\GEN_SYNC_READ.s_axi_lite_rdata_reg[13]_1 ;
  input \GEN_SYNC_READ.s_axi_lite_rdata_reg[12]_0 ;
  input \GEN_SYNC_READ.s_axi_lite_rdata_reg[6]_0 ;
  input \GEN_SYNC_READ.s_axi_lite_rdata_reg[4]_0 ;
  input [1:0]\GEN_SYNC_READ.s_axi_lite_rdata_reg[4]_1 ;
  input \GEN_SYNC_READ.s_axi_lite_rdata_reg[2]_0 ;
  input \GEN_SYNC_READ.s_axi_lite_rdata_reg[2]_1 ;
  input \GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_0 ;
  input \GEN_SYNC_READ.s_axi_lite_rdata_reg[3]_0 ;
  input [7:0]\GEN_SYNC_READ.s_axi_lite_rdata_reg[23]_0 ;
  input [22:0]\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_0 ;
  input [7:0]\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_1 ;
  input \GEN_SYNC_READ.s_axi_lite_rdata_reg[5]_0 ;
  input [7:0]s_axi_lite_wdata;
  input \GEN_SYNC_WRITE.awvalid_d1_reg_0 ;
  input s_axi_lite_bready;
  input s_axi_lite_rready;
  input [3:0]s_axi_lite_awaddr;
  input out;
  input [9:0]s_axi_lite_araddr;

  wire [0:0]D;
  wire [0:0]E;
  wire \GEN_REG_FOR_SMPL.buffer_length_wren_reg ;
  wire \GEN_REG_FOR_SMPL.buffer_length_wren_reg_0 ;
  wire \GEN_REG_FOR_SMPL.buffer_length_wren_reg_1 ;
  wire \GEN_SYNC_READ.axi2ip_rdaddr_reg[2]_0 ;
  wire \GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 ;
  wire \GEN_SYNC_READ.axi2ip_rdaddr_reg[9]_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[13]_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[13]_i_3_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[13]_i_5_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[15]_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[31]_i_6_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[3]_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[5]_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata_reg[0]_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata_reg[0]_1 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata_reg[12]_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata_reg[13]_0 ;
  wire [1:0]\GEN_SYNC_READ.s_axi_lite_rdata_reg[13]_1 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_0 ;
  wire [7:0]\GEN_SYNC_READ.s_axi_lite_rdata_reg[23]_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata_reg[2]_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata_reg[2]_1 ;
  wire [22:0]\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_0 ;
  wire [7:0]\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_1 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata_reg[3]_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata_reg[4]_0 ;
  wire [1:0]\GEN_SYNC_READ.s_axi_lite_rdata_reg[4]_1 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata_reg[5]_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata_reg[6]_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rvalid_i_i_1_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rvalid_i_reg_0 ;
  wire \GEN_SYNC_WRITE.awvalid_d1_i_1_n_0 ;
  wire \GEN_SYNC_WRITE.awvalid_d1_reg_0 ;
  wire \GEN_SYNC_WRITE.axi2ip_wrce[0]_i_1_n_0 ;
  wire \GEN_SYNC_WRITE.axi2ip_wrce[10]_i_2_n_0 ;
  wire \GEN_SYNC_WRITE.axi2ip_wrce[1]_i_1_n_0 ;
  wire \GEN_SYNC_WRITE.axi2ip_wrce[6]_i_1_n_0 ;
  wire \GEN_SYNC_WRITE.axi2ip_wrce_reg[10]_0 ;
  wire \GEN_SYNC_WRITE.bvalid_i_i_1_n_0 ;
  wire \GEN_SYNC_WRITE.bvalid_i_reg_0 ;
  wire \GEN_SYNC_WRITE.rdy_i_1_n_0 ;
  wire \GEN_SYNC_WRITE.rdy_reg_0 ;
  wire \GEN_SYNC_WRITE.wr_addr_cap_i_1_n_0 ;
  wire \GEN_SYNC_WRITE.wr_data_cap_i_1_n_0 ;
  wire \GEN_SYNC_WRITE.wr_in_progress_i_1_n_0 ;
  wire \GEN_SYNC_WRITE.wvalid_d1_i_1_n_0 ;
  wire [13:0]Q;
  wire [0:0]SR;
  wire [9:0]araddr;
  wire arvalid;
  wire arvalid_d1;
  wire arvalid_d1_i_1_n_0;
  wire arvalid_re;
  wire awvalid;
  wire awvalid_d1;
  wire [9:0]axi2ip_rdaddr;
  wire [9:0]axi2ip_rdaddr_i;
  wire [1:0]axi2ip_wrce;
  wire buffer_length_wren0;
  wire \dmacr_i[23]_i_2_n_0 ;
  wire [31:0]ip2axi_rddata1_out;
  wire out;
  wire p_0_in1_in;
  wire rvalid;
  wire s_axi_lite_aclk;
  wire [9:0]s_axi_lite_araddr;
  wire s_axi_lite_arready;
  wire s_axi_lite_arvalid;
  wire [3:0]s_axi_lite_awaddr;
  wire s_axi_lite_awready;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire [31:0]s_axi_lite_rdata;
  wire s_axi_lite_rready;
  wire [7:0]s_axi_lite_wdata;
  wire [0:0]\s_axi_lite_wdata[19] ;
  wire s_axi_lite_wvalid;
  wire wr_addr_cap;
  wire wr_data_cap;
  wire wr_in_progress;
  wire wvalid;
  wire wvalid_d1;

  LUT4 #(
    .INIT(16'hA8AA)) 
    \GEN_REG_FOR_SMPL.buffer_length_wren_i_1 
       (.I0(axi2ip_wrce[1]),
        .I1(\GEN_REG_FOR_SMPL.buffer_length_wren_reg ),
        .I2(\GEN_REG_FOR_SMPL.buffer_length_wren_reg_0 ),
        .I3(\GEN_REG_FOR_SMPL.buffer_length_wren_reg_1 ),
        .O(buffer_length_wren0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_READ.axi2ip_rdaddr_i_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(arvalid_re),
        .D(araddr[0]),
        .Q(axi2ip_rdaddr_i[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_READ.axi2ip_rdaddr_i_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(arvalid_re),
        .D(araddr[1]),
        .Q(axi2ip_rdaddr_i[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_READ.axi2ip_rdaddr_i_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(arvalid_re),
        .D(araddr[2]),
        .Q(axi2ip_rdaddr_i[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_READ.axi2ip_rdaddr_i_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(arvalid_re),
        .D(araddr[3]),
        .Q(axi2ip_rdaddr_i[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_READ.axi2ip_rdaddr_i_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(arvalid_re),
        .D(araddr[4]),
        .Q(axi2ip_rdaddr_i[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_READ.axi2ip_rdaddr_i_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(arvalid_re),
        .D(araddr[5]),
        .Q(axi2ip_rdaddr_i[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_READ.axi2ip_rdaddr_i_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(arvalid_re),
        .D(araddr[6]),
        .Q(axi2ip_rdaddr_i[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_READ.axi2ip_rdaddr_i_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(arvalid_re),
        .D(araddr[7]),
        .Q(axi2ip_rdaddr_i[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_READ.axi2ip_rdaddr_i_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(arvalid_re),
        .D(araddr[8]),
        .Q(axi2ip_rdaddr_i[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_READ.axi2ip_rdaddr_i_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(arvalid_re),
        .D(araddr[9]),
        .Q(axi2ip_rdaddr_i[9]),
        .R(SR));
  FDRE \GEN_SYNC_READ.axi2ip_rdaddr_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi2ip_rdaddr_i[0]),
        .Q(axi2ip_rdaddr[0]),
        .R(SR));
  FDRE \GEN_SYNC_READ.axi2ip_rdaddr_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi2ip_rdaddr_i[1]),
        .Q(axi2ip_rdaddr[1]),
        .R(SR));
  FDRE \GEN_SYNC_READ.axi2ip_rdaddr_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi2ip_rdaddr_i[2]),
        .Q(axi2ip_rdaddr[2]),
        .R(SR));
  FDRE \GEN_SYNC_READ.axi2ip_rdaddr_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi2ip_rdaddr_i[3]),
        .Q(axi2ip_rdaddr[3]),
        .R(SR));
  FDRE \GEN_SYNC_READ.axi2ip_rdaddr_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi2ip_rdaddr_i[4]),
        .Q(axi2ip_rdaddr[4]),
        .R(SR));
  FDRE \GEN_SYNC_READ.axi2ip_rdaddr_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi2ip_rdaddr_i[5]),
        .Q(axi2ip_rdaddr[5]),
        .R(SR));
  FDRE \GEN_SYNC_READ.axi2ip_rdaddr_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi2ip_rdaddr_i[6]),
        .Q(axi2ip_rdaddr[6]),
        .R(SR));
  FDRE \GEN_SYNC_READ.axi2ip_rdaddr_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi2ip_rdaddr_i[7]),
        .Q(axi2ip_rdaddr[7]),
        .R(SR));
  FDRE \GEN_SYNC_READ.axi2ip_rdaddr_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi2ip_rdaddr_i[8]),
        .Q(axi2ip_rdaddr[8]),
        .R(SR));
  FDRE \GEN_SYNC_READ.axi2ip_rdaddr_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi2ip_rdaddr_i[9]),
        .Q(axi2ip_rdaddr[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_READ.rvalid_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_arready),
        .Q(rvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'hA008AA0800080A08)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[0]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\GEN_SYNC_READ.axi2ip_rdaddr_reg[2]_0 ),
        .I3(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_3_n_0 ),
        .I4(\GEN_SYNC_READ.s_axi_lite_rdata_reg[0]_0 ),
        .I5(\GEN_SYNC_READ.s_axi_lite_rdata_reg[0]_1 ),
        .O(ip2axi_rddata1_out[0]));
  LUT6 #(
    .INIT(64'h4000F0F040004000)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[10]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_3_n_0 ),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 ),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_2_n_0 ),
        .I3(Q[10]),
        .I4(\GEN_SYNC_READ.s_axi_lite_rdata[15]_i_2_n_0 ),
        .I5(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_0 [4]),
        .O(ip2axi_rddata1_out[10]));
  LUT6 #(
    .INIT(64'h4000F0F040004000)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[11]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_3_n_0 ),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 ),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_2_n_0 ),
        .I3(Q[11]),
        .I4(\GEN_SYNC_READ.s_axi_lite_rdata[15]_i_2_n_0 ),
        .I5(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_0 [5]),
        .O(ip2axi_rddata1_out[11]));
  LUT6 #(
    .INIT(64'hA008AA0800080A08)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[12]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_2_n_0 ),
        .I1(Q[12]),
        .I2(\GEN_SYNC_READ.axi2ip_rdaddr_reg[2]_0 ),
        .I3(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_3_n_0 ),
        .I4(\GEN_SYNC_READ.s_axi_lite_rdata_reg[12]_0 ),
        .I5(\GEN_SYNC_READ.s_axi_lite_rdata_reg[13]_1 [0]),
        .O(ip2axi_rddata1_out[12]));
  LUT6 #(
    .INIT(64'hA008AA0800080A08)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[13]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_2_n_0 ),
        .I1(Q[13]),
        .I2(\GEN_SYNC_READ.axi2ip_rdaddr_reg[2]_0 ),
        .I3(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_3_n_0 ),
        .I4(\GEN_SYNC_READ.s_axi_lite_rdata_reg[13]_0 ),
        .I5(\GEN_SYNC_READ.s_axi_lite_rdata_reg[13]_1 [1]),
        .O(ip2axi_rddata1_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[13]_i_2 
       (.I0(axi2ip_rdaddr[8]),
        .I1(axi2ip_rdaddr[7]),
        .I2(axi2ip_rdaddr[9]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000019)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[13]_i_3 
       (.I0(axi2ip_rdaddr[4]),
        .I1(axi2ip_rdaddr[3]),
        .I2(axi2ip_rdaddr[2]),
        .I3(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_5_n_0 ),
        .I4(axi2ip_rdaddr[0]),
        .I5(axi2ip_rdaddr[1]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[13]_i_5 
       (.I0(axi2ip_rdaddr[6]),
        .I1(axi2ip_rdaddr[5]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[15]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[15]_i_2_n_0 ),
        .I1(axi2ip_rdaddr[8]),
        .I2(axi2ip_rdaddr[7]),
        .I3(axi2ip_rdaddr[9]),
        .I4(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_0 [6]),
        .O(ip2axi_rddata1_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h15FFFFFF)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[15]_i_2 
       (.I0(axi2ip_rdaddr[2]),
        .I1(axi2ip_rdaddr[3]),
        .I2(axi2ip_rdaddr[4]),
        .I3(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_3_n_0 ),
        .I4(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 ),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[16]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata_reg[23]_0 [0]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 ),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_0 [7]),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[2]_0 ),
        .I4(\GEN_SYNC_READ.axi2ip_rdaddr_reg[9]_0 ),
        .O(ip2axi_rddata1_out[16]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[17]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata_reg[23]_0 [1]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 ),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_0 [8]),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[2]_0 ),
        .I4(\GEN_SYNC_READ.axi2ip_rdaddr_reg[9]_0 ),
        .O(ip2axi_rddata1_out[17]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[18]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata_reg[23]_0 [2]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 ),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_0 [9]),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[2]_0 ),
        .I4(\GEN_SYNC_READ.axi2ip_rdaddr_reg[9]_0 ),
        .O(ip2axi_rddata1_out[18]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[19]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata_reg[23]_0 [3]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 ),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_0 [10]),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[2]_0 ),
        .I4(\GEN_SYNC_READ.axi2ip_rdaddr_reg[9]_0 ),
        .O(ip2axi_rddata1_out[19]));
  LUT5 #(
    .INIT(32'hAA08A008)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[1]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(\GEN_SYNC_READ.axi2ip_rdaddr_reg[2]_0 ),
        .I3(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_3_n_0 ),
        .I4(\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_0 ),
        .O(ip2axi_rddata1_out[1]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[20]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata_reg[23]_0 [4]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 ),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_0 [11]),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[2]_0 ),
        .I4(\GEN_SYNC_READ.axi2ip_rdaddr_reg[9]_0 ),
        .O(ip2axi_rddata1_out[20]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[21]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata_reg[23]_0 [5]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 ),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_0 [12]),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[2]_0 ),
        .I4(\GEN_SYNC_READ.axi2ip_rdaddr_reg[9]_0 ),
        .O(ip2axi_rddata1_out[21]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[22]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata_reg[23]_0 [6]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 ),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_0 [13]),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[2]_0 ),
        .I4(\GEN_SYNC_READ.axi2ip_rdaddr_reg[9]_0 ),
        .O(ip2axi_rddata1_out[22]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[23]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata_reg[23]_0 [7]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 ),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_0 [14]),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[2]_0 ),
        .I4(\GEN_SYNC_READ.axi2ip_rdaddr_reg[9]_0 ),
        .O(ip2axi_rddata1_out[23]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[24]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_1 [0]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 ),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_0 [15]),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[2]_0 ),
        .I4(\GEN_SYNC_READ.axi2ip_rdaddr_reg[9]_0 ),
        .O(ip2axi_rddata1_out[24]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[25]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_1 [1]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 ),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_0 [16]),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[2]_0 ),
        .I4(\GEN_SYNC_READ.axi2ip_rdaddr_reg[9]_0 ),
        .O(ip2axi_rddata1_out[25]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[26]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_1 [2]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 ),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_0 [17]),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[2]_0 ),
        .I4(\GEN_SYNC_READ.axi2ip_rdaddr_reg[9]_0 ),
        .O(ip2axi_rddata1_out[26]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[27]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_1 [3]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 ),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_0 [18]),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[2]_0 ),
        .I4(\GEN_SYNC_READ.axi2ip_rdaddr_reg[9]_0 ),
        .O(ip2axi_rddata1_out[27]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[28]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_1 [4]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 ),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_0 [19]),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[2]_0 ),
        .I4(\GEN_SYNC_READ.axi2ip_rdaddr_reg[9]_0 ),
        .O(ip2axi_rddata1_out[28]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[29]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_1 [5]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 ),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_0 [20]),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[2]_0 ),
        .I4(\GEN_SYNC_READ.axi2ip_rdaddr_reg[9]_0 ),
        .O(ip2axi_rddata1_out[29]));
  LUT6 #(
    .INIT(64'hA008AA0800080A08)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[2]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\GEN_SYNC_READ.axi2ip_rdaddr_reg[2]_0 ),
        .I3(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_3_n_0 ),
        .I4(\GEN_SYNC_READ.s_axi_lite_rdata_reg[2]_0 ),
        .I5(\GEN_SYNC_READ.s_axi_lite_rdata_reg[2]_1 ),
        .O(ip2axi_rddata1_out[2]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[30]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_1 [6]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 ),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_0 [21]),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[2]_0 ),
        .I4(\GEN_SYNC_READ.axi2ip_rdaddr_reg[9]_0 ),
        .O(ip2axi_rddata1_out[30]));
  LUT3 #(
    .INIT(8'h8F)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1 
       (.I0(s_axi_lite_rready),
        .I1(\GEN_SYNC_READ.s_axi_lite_rvalid_i_reg_0 ),
        .I2(\GEN_SYNC_WRITE.awvalid_d1_reg_0 ),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[31]_i_2 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_1 [7]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 ),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_0 [22]),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[2]_0 ),
        .I4(\GEN_SYNC_READ.axi2ip_rdaddr_reg[9]_0 ),
        .O(ip2axi_rddata1_out[31]));
  LUT6 #(
    .INIT(64'h0000000000000061)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3 
       (.I0(axi2ip_rdaddr[5]),
        .I1(axi2ip_rdaddr[4]),
        .I2(axi2ip_rdaddr[3]),
        .I3(axi2ip_rdaddr[6]),
        .I4(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_6_n_0 ),
        .I5(axi2ip_rdaddr[2]),
        .O(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h151500FF)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[31]_i_4 
       (.I0(axi2ip_rdaddr[2]),
        .I1(axi2ip_rdaddr[3]),
        .I2(axi2ip_rdaddr[4]),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 ),
        .I4(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_3_n_0 ),
        .O(\GEN_SYNC_READ.axi2ip_rdaddr_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[31]_i_5 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_3_n_0 ),
        .I1(axi2ip_rdaddr[9]),
        .I2(axi2ip_rdaddr[7]),
        .I3(axi2ip_rdaddr[8]),
        .O(\GEN_SYNC_READ.axi2ip_rdaddr_reg[9]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[31]_i_6 
       (.I0(axi2ip_rdaddr[0]),
        .I1(axi2ip_rdaddr[1]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8888888A888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[3]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_2_n_0 ),
        .I1(\GEN_SYNC_READ.s_axi_lite_rdata[3]_i_2_n_0 ),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_3_n_0 ),
        .I3(\GEN_SYNC_READ.s_axi_lite_rdata_reg[3]_0 ),
        .I4(\GEN_SYNC_READ.axi2ip_rdaddr_reg[2]_0 ),
        .I5(\GEN_SYNC_READ.s_axi_lite_rdata_reg[4]_1 [0]),
        .O(ip2axi_rddata1_out[3]));
  LUT3 #(
    .INIT(8'h08)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[3]_i_2 
       (.I0(Q[3]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 ),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_3_n_0 ),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA008AA0800080A08)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[4]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(\GEN_SYNC_READ.axi2ip_rdaddr_reg[2]_0 ),
        .I3(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_3_n_0 ),
        .I4(\GEN_SYNC_READ.s_axi_lite_rdata_reg[4]_0 ),
        .I5(\GEN_SYNC_READ.s_axi_lite_rdata_reg[4]_1 [1]),
        .O(ip2axi_rddata1_out[4]));
  LUT6 #(
    .INIT(64'h00800080AAAA0A8A)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[5]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 ),
        .I3(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_3_n_0 ),
        .I4(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_0 [0]),
        .I5(\GEN_SYNC_READ.s_axi_lite_rdata[5]_i_2_n_0 ),
        .O(ip2axi_rddata1_out[5]));
  LUT6 #(
    .INIT(64'h15FF15FF15FFFFFF)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[5]_i_2 
       (.I0(axi2ip_rdaddr[2]),
        .I1(axi2ip_rdaddr[3]),
        .I2(axi2ip_rdaddr[4]),
        .I3(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_3_n_0 ),
        .I4(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 ),
        .I5(\GEN_SYNC_READ.s_axi_lite_rdata_reg[5]_0 ),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A080008)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[6]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(\GEN_SYNC_READ.axi2ip_rdaddr_reg[2]_0 ),
        .I3(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_3_n_0 ),
        .I4(\GEN_SYNC_READ.s_axi_lite_rdata_reg[6]_0 ),
        .O(ip2axi_rddata1_out[6]));
  LUT6 #(
    .INIT(64'h4000F0F040004000)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[7]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_3_n_0 ),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 ),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_2_n_0 ),
        .I3(Q[7]),
        .I4(\GEN_SYNC_READ.s_axi_lite_rdata[15]_i_2_n_0 ),
        .I5(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_0 [1]),
        .O(ip2axi_rddata1_out[7]));
  LUT6 #(
    .INIT(64'h4000F0F040004000)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[8]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_3_n_0 ),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 ),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_2_n_0 ),
        .I3(Q[8]),
        .I4(\GEN_SYNC_READ.s_axi_lite_rdata[15]_i_2_n_0 ),
        .I5(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_0 [2]),
        .O(ip2axi_rddata1_out[8]));
  LUT6 #(
    .INIT(64'h4000F0F040004000)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[9]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_3_n_0 ),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 ),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata[13]_i_2_n_0 ),
        .I3(Q[9]),
        .I4(\GEN_SYNC_READ.s_axi_lite_rdata[15]_i_2_n_0 ),
        .I5(\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_0 [3]),
        .O(ip2axi_rddata1_out[9]));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[0]),
        .Q(s_axi_lite_rdata[0]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[10]),
        .Q(s_axi_lite_rdata[10]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[11]),
        .Q(s_axi_lite_rdata[11]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[12]),
        .Q(s_axi_lite_rdata[12]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[13]),
        .Q(s_axi_lite_rdata[13]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[14] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(D),
        .Q(s_axi_lite_rdata[14]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[15] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[15]),
        .Q(s_axi_lite_rdata[15]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[16] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[16]),
        .Q(s_axi_lite_rdata[16]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[17] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[17]),
        .Q(s_axi_lite_rdata[17]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[18] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[18]),
        .Q(s_axi_lite_rdata[18]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[19] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[19]),
        .Q(s_axi_lite_rdata[19]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[1]),
        .Q(s_axi_lite_rdata[1]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[20] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[20]),
        .Q(s_axi_lite_rdata[20]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[21] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[21]),
        .Q(s_axi_lite_rdata[21]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[22] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[22]),
        .Q(s_axi_lite_rdata[22]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[23] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[23]),
        .Q(s_axi_lite_rdata[23]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[24] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[24]),
        .Q(s_axi_lite_rdata[24]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[25] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[25]),
        .Q(s_axi_lite_rdata[25]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[26] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[26]),
        .Q(s_axi_lite_rdata[26]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[27] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[27]),
        .Q(s_axi_lite_rdata[27]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[28] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[28]),
        .Q(s_axi_lite_rdata[28]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[29] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[29]),
        .Q(s_axi_lite_rdata[29]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[2]),
        .Q(s_axi_lite_rdata[2]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[30] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[30]),
        .Q(s_axi_lite_rdata[30]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[31] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[31]),
        .Q(s_axi_lite_rdata[31]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[3]),
        .Q(s_axi_lite_rdata[3]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[4]),
        .Q(s_axi_lite_rdata[4]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[5]),
        .Q(s_axi_lite_rdata[5]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[6]),
        .Q(s_axi_lite_rdata[6]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[7]),
        .Q(s_axi_lite_rdata[7]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[8]),
        .Q(s_axi_lite_rdata[8]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[9]),
        .Q(s_axi_lite_rdata[9]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0C88)) 
    \GEN_SYNC_READ.s_axi_lite_rvalid_i_i_1 
       (.I0(rvalid),
        .I1(\GEN_SYNC_WRITE.awvalid_d1_reg_0 ),
        .I2(s_axi_lite_rready),
        .I3(\GEN_SYNC_READ.s_axi_lite_rvalid_i_reg_0 ),
        .O(\GEN_SYNC_READ.s_axi_lite_rvalid_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_READ.s_axi_lite_rvalid_i_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_READ.s_axi_lite_rvalid_i_i_1_n_0 ),
        .Q(\GEN_SYNC_READ.s_axi_lite_rvalid_i_reg_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \GEN_SYNC_WRITE.awvalid_d1_i_1 
       (.I0(awvalid),
        .I1(\GEN_SYNC_WRITE.awvalid_d1_reg_0 ),
        .I2(\GEN_SYNC_WRITE.bvalid_i_reg_0 ),
        .O(\GEN_SYNC_WRITE.awvalid_d1_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_WRITE.awvalid_d1_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.awvalid_d1_i_1_n_0 ),
        .Q(awvalid_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \GEN_SYNC_WRITE.axi2ip_wrce[0]_i_1 
       (.I0(s_axi_lite_awaddr[1]),
        .I1(s_axi_lite_awaddr[0]),
        .I2(s_axi_lite_awaddr[3]),
        .I3(s_axi_lite_awaddr[2]),
        .O(\GEN_SYNC_WRITE.axi2ip_wrce[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \GEN_SYNC_WRITE.axi2ip_wrce[10]_i_2 
       (.I0(s_axi_lite_awaddr[0]),
        .I1(s_axi_lite_awaddr[1]),
        .I2(s_axi_lite_awaddr[2]),
        .I3(s_axi_lite_awaddr[3]),
        .O(\GEN_SYNC_WRITE.axi2ip_wrce[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \GEN_SYNC_WRITE.axi2ip_wrce[1]_i_1 
       (.I0(s_axi_lite_awaddr[1]),
        .I1(s_axi_lite_awaddr[0]),
        .I2(s_axi_lite_awaddr[3]),
        .I3(s_axi_lite_awaddr[2]),
        .O(\GEN_SYNC_WRITE.axi2ip_wrce[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \GEN_SYNC_WRITE.axi2ip_wrce[6]_i_1 
       (.I0(s_axi_lite_awaddr[0]),
        .I1(s_axi_lite_awaddr[1]),
        .I2(s_axi_lite_awaddr[3]),
        .I3(s_axi_lite_awaddr[2]),
        .O(\GEN_SYNC_WRITE.axi2ip_wrce[6]_i_1_n_0 ));
  FDRE \GEN_SYNC_WRITE.axi2ip_wrce_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.axi2ip_wrce[0]_i_1_n_0 ),
        .Q(axi2ip_wrce[0]),
        .R(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10]_0 ));
  FDRE \GEN_SYNC_WRITE.axi2ip_wrce_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.axi2ip_wrce[10]_i_2_n_0 ),
        .Q(axi2ip_wrce[1]),
        .R(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10]_0 ));
  FDRE \GEN_SYNC_WRITE.axi2ip_wrce_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.axi2ip_wrce[1]_i_1_n_0 ),
        .Q(p_0_in1_in),
        .R(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10]_0 ));
  FDRE \GEN_SYNC_WRITE.axi2ip_wrce_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.axi2ip_wrce[6]_i_1_n_0 ),
        .Q(E),
        .R(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0C88)) 
    \GEN_SYNC_WRITE.bvalid_i_i_1 
       (.I0(s_axi_lite_awready),
        .I1(\GEN_SYNC_WRITE.awvalid_d1_reg_0 ),
        .I2(s_axi_lite_bready),
        .I3(\GEN_SYNC_WRITE.bvalid_i_reg_0 ),
        .O(\GEN_SYNC_WRITE.bvalid_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_WRITE.bvalid_i_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.bvalid_i_i_1_n_0 ),
        .Q(\GEN_SYNC_WRITE.bvalid_i_reg_0 ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0080)) 
    \GEN_SYNC_WRITE.rdy_i_1 
       (.I0(wr_data_cap),
        .I1(wr_addr_cap),
        .I2(\GEN_SYNC_WRITE.awvalid_d1_reg_0 ),
        .I3(\GEN_SYNC_WRITE.rdy_reg_0 ),
        .O(\GEN_SYNC_WRITE.rdy_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_WRITE.rdy_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.rdy_i_1_n_0 ),
        .Q(\GEN_SYNC_WRITE.rdy_reg_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAAE0000)) 
    \GEN_SYNC_WRITE.wr_addr_cap_i_1 
       (.I0(wr_addr_cap),
        .I1(awvalid),
        .I2(awvalid_d1),
        .I3(wr_in_progress),
        .I4(\GEN_SYNC_WRITE.awvalid_d1_reg_0 ),
        .I5(\GEN_SYNC_WRITE.rdy_reg_0 ),
        .O(\GEN_SYNC_WRITE.wr_addr_cap_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_WRITE.wr_addr_cap_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.wr_addr_cap_i_1_n_0 ),
        .Q(wr_addr_cap),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \GEN_SYNC_WRITE.wr_data_cap_i_1 
       (.I0(wr_data_cap),
        .I1(wvalid),
        .I2(wvalid_d1),
        .I3(\GEN_SYNC_WRITE.awvalid_d1_reg_0 ),
        .I4(\GEN_SYNC_WRITE.rdy_reg_0 ),
        .O(\GEN_SYNC_WRITE.wr_data_cap_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_WRITE.wr_data_cap_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.wr_data_cap_i_1_n_0 ),
        .Q(wr_data_cap),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \GEN_SYNC_WRITE.wr_in_progress_i_1 
       (.I0(wr_in_progress),
        .I1(awvalid),
        .I2(awvalid_d1),
        .I3(\GEN_SYNC_WRITE.awvalid_d1_reg_0 ),
        .I4(\GEN_SYNC_WRITE.bvalid_i_reg_0 ),
        .O(\GEN_SYNC_WRITE.wr_in_progress_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_WRITE.wr_in_progress_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.wr_in_progress_i_1_n_0 ),
        .Q(wr_in_progress),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_WRITE.wready_i_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.rdy_reg_0 ),
        .Q(s_axi_lite_awready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \GEN_SYNC_WRITE.wvalid_d1_i_1 
       (.I0(wvalid),
        .I1(\GEN_SYNC_WRITE.awvalid_d1_reg_0 ),
        .I2(\GEN_SYNC_WRITE.bvalid_i_reg_0 ),
        .O(\GEN_SYNC_WRITE.wvalid_d1_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_WRITE.wvalid_d1_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.wvalid_d1_i_1_n_0 ),
        .Q(wvalid_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_araddr[0]),
        .Q(araddr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_araddr[1]),
        .Q(araddr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_araddr[2]),
        .Q(araddr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_araddr[3]),
        .Q(araddr[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_araddr[4]),
        .Q(araddr[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_araddr[5]),
        .Q(araddr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_araddr[6]),
        .Q(araddr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_araddr[7]),
        .Q(araddr[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_araddr[8]),
        .Q(araddr[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_araddr[9]),
        .Q(araddr[9]),
        .R(SR));
  LUT3 #(
    .INIT(8'h04)) 
    arready_i_i_2
       (.I0(\GEN_SYNC_READ.s_axi_lite_rvalid_i_reg_0 ),
        .I1(arvalid),
        .I2(arvalid_d1),
        .O(arvalid_re));
  FDRE #(
    .INIT(1'b0)) 
    arready_i_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(arvalid_re),
        .Q(s_axi_lite_arready),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    arvalid_d1_i_1
       (.I0(\GEN_SYNC_READ.s_axi_lite_rvalid_i_reg_0 ),
        .I1(arvalid),
        .I2(\GEN_SYNC_WRITE.awvalid_d1_reg_0 ),
        .O(arvalid_d1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    arvalid_d1_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(arvalid_d1_i_1_n_0),
        .Q(arvalid_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    arvalid_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_arvalid),
        .Q(arvalid),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    awvalid_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_awvalid),
        .Q(awvalid),
        .R(SR));
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \dmacr_i[23]_i_1 
       (.I0(\dmacr_i[23]_i_2_n_0 ),
        .I1(s_axi_lite_wdata[3]),
        .I2(s_axi_lite_wdata[2]),
        .I3(s_axi_lite_wdata[4]),
        .I4(out),
        .O(\s_axi_lite_wdata[19] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \dmacr_i[23]_i_2 
       (.I0(axi2ip_wrce[0]),
        .I1(s_axi_lite_wdata[1]),
        .I2(s_axi_lite_wdata[0]),
        .I3(s_axi_lite_wdata[5]),
        .I4(s_axi_lite_wdata[7]),
        .I5(s_axi_lite_wdata[6]),
        .O(\dmacr_i[23]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    wvalid_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_wvalid),
        .Q(wvalid),
        .R(SR));
endmodule

module system_axi_dma_1_0_axi_dma_mm2s_cmdsts_if
   (mm2s_smpl_interr_set,
    mm2s_smpl_slverr_set,
    mm2s_smpl_decerr_set,
    \GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg_0 ,
    sts_received_i_reg_0,
    m_axis_mm2s_sts_tready,
    \dmacr_i_reg[2] ,
    mm2s_error_reg_0,
    sts_received_clr_cmb,
    write_cmnd_cmb,
    mm2s_stop_i,
    \GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg_1 ,
    halted1,
    mm2s_interr_i,
    s_axi_lite_aclk,
    mm2s_slverr_i,
    mm2s_decerr_i,
    \GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg_2 ,
    soft_reset,
    out,
    mm2s_cmnd_wr_1,
    cmnds_queued,
    \GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg ,
    \GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg_0 ,
    m_axis_mm2s_sts_tvalid_int,
    mm2s_sts_received_clr,
    \FSM_sequential_smpl_cs_reg[1] ,
    \FSM_sequential_smpl_cs_reg[1]_0 );
  output mm2s_smpl_interr_set;
  output mm2s_smpl_slverr_set;
  output mm2s_smpl_decerr_set;
  output \GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg_0 ;
  output sts_received_i_reg_0;
  output m_axis_mm2s_sts_tready;
  output \dmacr_i_reg[2] ;
  output mm2s_error_reg_0;
  output sts_received_clr_cmb;
  output write_cmnd_cmb;
  output mm2s_stop_i;
  output \GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg_1 ;
  input halted1;
  input mm2s_interr_i;
  input s_axi_lite_aclk;
  input mm2s_slverr_i;
  input mm2s_decerr_i;
  input \GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg_2 ;
  input soft_reset;
  input out;
  input mm2s_cmnd_wr_1;
  input cmnds_queued;
  input \GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg ;
  input \GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg_0 ;
  input m_axis_mm2s_sts_tvalid_int;
  input mm2s_sts_received_clr;
  input \FSM_sequential_smpl_cs_reg[1] ;
  input \FSM_sequential_smpl_cs_reg[1]_0 ;

  wire \FSM_sequential_smpl_cs_reg[1] ;
  wire \FSM_sequential_smpl_cs_reg[1]_0 ;
  wire \GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg ;
  wire \GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg_0 ;
  wire \GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg_0 ;
  wire \GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg_1 ;
  wire \GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg_2 ;
  wire cmnds_queued;
  wire \dmacr_i_reg[2] ;
  wire halted1;
  wire m_axis_mm2s_sts_tready;
  wire m_axis_mm2s_sts_tvalid_int;
  wire mm2s_cmnd_wr_1;
  wire mm2s_decerr_i;
  wire mm2s_error_i_1_n_0;
  wire mm2s_error_reg_0;
  wire mm2s_interr_i;
  wire mm2s_slverr_i;
  wire mm2s_smpl_decerr_set;
  wire mm2s_smpl_interr_set;
  wire mm2s_smpl_slverr_set;
  wire mm2s_stop_i;
  wire mm2s_sts_received_clr;
  wire out;
  wire s_axi_lite_aclk;
  wire soft_reset;
  wire sts_received_clr_cmb;
  wire sts_received_i_i_1_n_0;
  wire sts_received_i_reg_0;
  wire sts_tready_i_1_n_0;
  wire write_cmnd_cmb;

  LUT6 #(
    .INIT(64'h0030FFFF40400000)) 
    \FSM_sequential_smpl_cs[1]_i_1 
       (.I0(\GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg_0 ),
        .I1(\GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg_0 ),
        .I2(\FSM_sequential_smpl_cs_reg[1] ),
        .I3(sts_received_i_reg_0),
        .I4(\FSM_sequential_smpl_cs_reg[1]_0 ),
        .I5(\GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg ),
        .O(\GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg_1 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \GEN_CMD_BTT_LESS_23.cmnd_wr_i_i_1 
       (.I0(mm2s_error_reg_0),
        .I1(soft_reset),
        .I2(\GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg_0 ),
        .I3(\GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg ),
        .I4(\GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg_0 ),
        .O(write_cmnd_cmb));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \GEN_MM2S_DMA_CONTROL.mm2s_stop_i_1 
       (.I0(mm2s_error_reg_0),
        .I1(soft_reset),
        .O(mm2s_stop_i));
  FDRE \GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg_2 ),
        .Q(\GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg_0 ),
        .R(halted1));
  LUT6 #(
    .INIT(64'h0000000044044400)) 
    cmnds_queued_i_1
       (.I0(soft_reset),
        .I1(out),
        .I2(sts_received_i_reg_0),
        .I3(mm2s_cmnd_wr_1),
        .I4(cmnds_queued),
        .I5(mm2s_error_reg_0),
        .O(\dmacr_i_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    mm2s_decerr_i_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(mm2s_decerr_i),
        .Q(mm2s_smpl_decerr_set),
        .R(halted1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    mm2s_error_i_1
       (.I0(mm2s_smpl_interr_set),
        .I1(mm2s_smpl_decerr_set),
        .I2(mm2s_smpl_slverr_set),
        .I3(mm2s_error_reg_0),
        .O(mm2s_error_i_1_n_0));
  FDRE mm2s_error_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(mm2s_error_i_1_n_0),
        .Q(mm2s_error_reg_0),
        .R(halted1));
  FDRE #(
    .INIT(1'b0)) 
    mm2s_interr_i_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(mm2s_interr_i),
        .Q(mm2s_smpl_interr_set),
        .R(halted1));
  FDRE #(
    .INIT(1'b0)) 
    mm2s_slverr_i_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(mm2s_slverr_i),
        .Q(mm2s_smpl_slverr_set),
        .R(halted1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000FE00)) 
    sts_received_clr_i_1
       (.I0(sts_received_i_reg_0),
        .I1(soft_reset),
        .I2(mm2s_error_reg_0),
        .I3(\GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg ),
        .I4(\GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg_0 ),
        .O(sts_received_clr_cmb));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    sts_received_i_i_1
       (.I0(sts_received_i_reg_0),
        .I1(m_axis_mm2s_sts_tvalid_int),
        .I2(out),
        .I3(mm2s_sts_received_clr),
        .O(sts_received_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sts_received_i_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(sts_received_i_i_1_n_0),
        .Q(sts_received_i_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h04C4)) 
    sts_tready_i_1
       (.I0(sts_received_i_reg_0),
        .I1(out),
        .I2(m_axis_mm2s_sts_tready),
        .I3(m_axis_mm2s_sts_tvalid_int),
        .O(sts_tready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sts_tready_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(sts_tready_i_1_n_0),
        .Q(m_axis_mm2s_sts_tready),
        .R(1'b0));
endmodule

module system_axi_dma_1_0_axi_dma_mm2s_mngr
   (mm2s_smpl_interr_set,
    mm2s_smpl_slverr_set,
    mm2s_smpl_decerr_set,
    mm2s_halted_set,
    all_is_idle_d1,
    mm2s_stop,
    cmnds_queued,
    s_axis_mm2s_cmd_tvalid_split,
    mm2s_sts_received,
    m_axis_mm2s_sts_tready,
    dma_mm2s_error,
    smpl_cs,
    axi_dma_tstvec,
    mm2s_halted_clr_reg,
    D,
    halted1,
    mm2s_dmacr,
    s_axi_lite_aclk,
    mm2s_interr_i,
    mm2s_slverr_i,
    mm2s_decerr_i,
    mm2s_halted_set0,
    mm2s_all_idle,
    soft_reset,
    out,
    mm2s_dmasr,
    m_axis_mm2s_sts_tvalid_int,
    s_axis_mm2s_cmd_tready,
    \FSM_sequential_smpl_cs_reg[1] ,
    \FSM_sequential_smpl_cs_reg[1]_0 ,
    Q,
    \GEN_CMD_BTT_LESS_23.cmnd_data_reg[26] ,
    \GEN_CMD_BTT_LESS_23.cmnd_data_reg[13] );
  output mm2s_smpl_interr_set;
  output mm2s_smpl_slverr_set;
  output mm2s_smpl_decerr_set;
  output mm2s_halted_set;
  output all_is_idle_d1;
  output mm2s_stop;
  output cmnds_queued;
  output s_axis_mm2s_cmd_tvalid_split;
  output mm2s_sts_received;
  output m_axis_mm2s_sts_tready;
  output dma_mm2s_error;
  output [1:0]smpl_cs;
  output [0:0]axi_dma_tstvec;
  output mm2s_halted_clr_reg;
  output [47:0]D;
  input halted1;
  input [0:0]mm2s_dmacr;
  input s_axi_lite_aclk;
  input mm2s_interr_i;
  input mm2s_slverr_i;
  input mm2s_decerr_i;
  input mm2s_halted_set0;
  input mm2s_all_idle;
  input soft_reset;
  input out;
  input mm2s_dmasr;
  input m_axis_mm2s_sts_tvalid_int;
  input s_axis_mm2s_cmd_tready;
  input \FSM_sequential_smpl_cs_reg[1] ;
  input \FSM_sequential_smpl_cs_reg[1]_0 ;
  input [31:0]Q;
  input \GEN_CMD_BTT_LESS_23.cmnd_data_reg[26] ;
  input [13:0]\GEN_CMD_BTT_LESS_23.cmnd_data_reg[13] ;

  wire [47:0]D;
  wire \FSM_sequential_smpl_cs_reg[1] ;
  wire \FSM_sequential_smpl_cs_reg[1]_0 ;
  wire [13:0]\GEN_CMD_BTT_LESS_23.cmnd_data_reg[13] ;
  wire \GEN_CMD_BTT_LESS_23.cmnd_data_reg[26] ;
  wire \GEN_MM2S_DMA_CONTROL.GEN_SIMPLE_DMA_MODE.I_MM2S_SMPL_SM_n_6 ;
  wire \GEN_MM2S_DMA_CONTROL.I_MM2S_CMDSTS_n_11 ;
  wire \GEN_MM2S_DMA_CONTROL.I_MM2S_CMDSTS_n_6 ;
  wire [31:0]Q;
  wire all_is_idle_d1;
  wire [0:0]axi_dma_tstvec;
  wire cmnds_queued;
  wire dma_mm2s_error;
  wire halted1;
  wire m_axis_mm2s_sts_tready;
  wire m_axis_mm2s_sts_tvalid_int;
  wire mm2s_all_idle;
  wire mm2s_cmnd_wr_1;
  wire mm2s_decerr_i;
  wire [0:0]mm2s_dmacr;
  wire mm2s_dmasr;
  wire mm2s_halted_clr_reg;
  wire mm2s_halted_set;
  wire mm2s_halted_set0;
  wire mm2s_interr_i;
  wire mm2s_slverr_i;
  wire mm2s_smpl_decerr_set;
  wire mm2s_smpl_interr_set;
  wire mm2s_smpl_slverr_set;
  wire mm2s_stop;
  wire mm2s_stop_i;
  wire mm2s_sts_received;
  wire mm2s_sts_received_clr;
  wire out;
  wire s_axi_lite_aclk;
  wire s_axis_mm2s_cmd_tready;
  wire s_axis_mm2s_cmd_tvalid_split;
  wire [1:0]smpl_cs;
  wire soft_reset;
  wire sts_received_clr_cmb;
  wire write_cmnd_cmb;

  system_axi_dma_1_0_axi_dma_smple_sm \GEN_MM2S_DMA_CONTROL.GEN_SIMPLE_DMA_MODE.I_MM2S_SMPL_SM 
       (.D(D),
        .\FSM_sequential_smpl_cs_reg[0]_0 (smpl_cs[0]),
        .\FSM_sequential_smpl_cs_reg[0]_1 (\FSM_sequential_smpl_cs_reg[1]_0 ),
        .\FSM_sequential_smpl_cs_reg[1]_0 (smpl_cs[1]),
        .\FSM_sequential_smpl_cs_reg[1]_1 (\GEN_MM2S_DMA_CONTROL.I_MM2S_CMDSTS_n_11 ),
        .\GEN_CMD_BTT_LESS_23.cmnd_data_reg[13]_0 (\GEN_CMD_BTT_LESS_23.cmnd_data_reg[13] ),
        .\GEN_CMD_BTT_LESS_23.cmnd_data_reg[26]_0 (\GEN_CMD_BTT_LESS_23.cmnd_data_reg[26] ),
        .\GEN_CMD_BTT_LESS_23.cmnd_data_reg[66]_0 (s_axis_mm2s_cmd_tvalid_split),
        .\GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg_0 (\GEN_MM2S_DMA_CONTROL.GEN_SIMPLE_DMA_MODE.I_MM2S_SMPL_SM_n_6 ),
        .Q(Q),
        .axi_dma_tstvec(axi_dma_tstvec),
        .\axi_dma_tstvec[4] (dma_mm2s_error),
        .cmnds_queued(cmnds_queued),
        .cmnds_queued_reg_0(\GEN_MM2S_DMA_CONTROL.I_MM2S_CMDSTS_n_6 ),
        .halted1(halted1),
        .mm2s_cmnd_wr_1(mm2s_cmnd_wr_1),
        .mm2s_dmasr(mm2s_dmasr),
        .mm2s_halted_set(mm2s_halted_set),
        .mm2s_sts_received_clr(mm2s_sts_received_clr),
        .out(out),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .s_axis_mm2s_cmd_tready(s_axis_mm2s_cmd_tready),
        .soft_reset(soft_reset),
        .sts_received_clr_cmb(sts_received_clr_cmb),
        .write_cmnd_cmb(write_cmnd_cmb));
  system_axi_dma_1_0_axi_dma_mm2s_cmdsts_if \GEN_MM2S_DMA_CONTROL.I_MM2S_CMDSTS 
       (.\FSM_sequential_smpl_cs_reg[1] (\FSM_sequential_smpl_cs_reg[1] ),
        .\FSM_sequential_smpl_cs_reg[1]_0 (\FSM_sequential_smpl_cs_reg[1]_0 ),
        .\GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg (smpl_cs[1]),
        .\GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg_0 (smpl_cs[0]),
        .\GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg_0 (s_axis_mm2s_cmd_tvalid_split),
        .\GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg_1 (\GEN_MM2S_DMA_CONTROL.I_MM2S_CMDSTS_n_11 ),
        .\GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg_2 (\GEN_MM2S_DMA_CONTROL.GEN_SIMPLE_DMA_MODE.I_MM2S_SMPL_SM_n_6 ),
        .cmnds_queued(cmnds_queued),
        .\dmacr_i_reg[2] (\GEN_MM2S_DMA_CONTROL.I_MM2S_CMDSTS_n_6 ),
        .halted1(halted1),
        .m_axis_mm2s_sts_tready(m_axis_mm2s_sts_tready),
        .m_axis_mm2s_sts_tvalid_int(m_axis_mm2s_sts_tvalid_int),
        .mm2s_cmnd_wr_1(mm2s_cmnd_wr_1),
        .mm2s_decerr_i(mm2s_decerr_i),
        .mm2s_error_reg_0(dma_mm2s_error),
        .mm2s_interr_i(mm2s_interr_i),
        .mm2s_slverr_i(mm2s_slverr_i),
        .mm2s_smpl_decerr_set(mm2s_smpl_decerr_set),
        .mm2s_smpl_interr_set(mm2s_smpl_interr_set),
        .mm2s_smpl_slverr_set(mm2s_smpl_slverr_set),
        .mm2s_stop_i(mm2s_stop_i),
        .mm2s_sts_received_clr(mm2s_sts_received_clr),
        .out(out),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .soft_reset(soft_reset),
        .sts_received_clr_cmb(sts_received_clr_cmb),
        .sts_received_i_reg_0(mm2s_sts_received),
        .write_cmnd_cmb(write_cmnd_cmb));
  system_axi_dma_1_0_axi_dma_mm2s_sts_mngr \GEN_MM2S_DMA_CONTROL.I_MM2S_STS_MNGR 
       (.all_is_idle_d1(all_is_idle_d1),
        .halted1(halted1),
        .mm2s_all_idle(mm2s_all_idle),
        .mm2s_dmacr(mm2s_dmacr),
        .mm2s_dmasr(mm2s_dmasr),
        .mm2s_halted_clr_reg_0(mm2s_halted_clr_reg),
        .mm2s_halted_set(mm2s_halted_set),
        .mm2s_halted_set0(mm2s_halted_set0),
        .out(out),
        .s_axi_lite_aclk(s_axi_lite_aclk));
  FDRE \GEN_MM2S_DMA_CONTROL.mm2s_stop_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(mm2s_stop_i),
        .Q(mm2s_stop),
        .R(halted1));
endmodule

module system_axi_dma_1_0_axi_dma_mm2s_sts_mngr
   (mm2s_halted_set,
    all_is_idle_d1,
    mm2s_halted_clr_reg_0,
    halted1,
    mm2s_dmacr,
    s_axi_lite_aclk,
    mm2s_halted_set0,
    mm2s_all_idle,
    mm2s_dmasr,
    out);
  output mm2s_halted_set;
  output all_is_idle_d1;
  output mm2s_halted_clr_reg_0;
  input halted1;
  input [0:0]mm2s_dmacr;
  input s_axi_lite_aclk;
  input mm2s_halted_set0;
  input mm2s_all_idle;
  input mm2s_dmasr;
  input out;

  wire all_is_idle_d1;
  wire halted1;
  wire mm2s_all_idle;
  wire [0:0]mm2s_dmacr;
  wire mm2s_dmasr;
  wire mm2s_halted_clr;
  wire mm2s_halted_clr_reg_0;
  wire mm2s_halted_set;
  wire mm2s_halted_set0;
  wire out;
  wire s_axi_lite_aclk;

  FDRE #(
    .INIT(1'b0)) 
    all_is_idle_d1_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(mm2s_all_idle),
        .Q(all_is_idle_d1),
        .R(halted1));
  LUT4 #(
    .INIT(16'hFF4F)) 
    halted_i_1
       (.I0(mm2s_halted_clr),
        .I1(mm2s_dmasr),
        .I2(out),
        .I3(mm2s_halted_set),
        .O(mm2s_halted_clr_reg_0));
  FDRE mm2s_halted_clr_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(mm2s_dmacr),
        .Q(mm2s_halted_clr),
        .R(halted1));
  FDRE mm2s_halted_set_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(mm2s_halted_set0),
        .Q(mm2s_halted_set),
        .R(halted1));
endmodule

module system_axi_dma_1_0_axi_dma_reg_module
   (s_axi_lite_awready,
    rdy,
    s_axi_lite_arready,
    \dmacr_i_reg[0] ,
    \GEN_SYNC_WRITE.bvalid_i_reg ,
    \GEN_SYNC_READ.s_axi_lite_rvalid_i_reg ,
    mm2s_dmasr,
    mm2s_introut,
    soft_reset_re0,
    soft_reset,
    \dmacr_i_reg[0]_0 ,
    \dmacr_i_reg[2] ,
    mm2s_all_idle,
    mm2s_halted_set0,
    Q,
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[31] ,
    \dmacr_i_reg[3] ,
    s_axi_lite_rdata,
    s_axi_lite_aclk,
    SR,
    s_axi_lite_awvalid,
    s_axi_lite_wvalid,
    s_axi_lite_arvalid,
    \dmacr_i_reg[4] ,
    \GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ,
    halted_reg,
    s_axi_lite_wdata,
    mm2s_stop,
    \dmacr_i_reg[0]_1 ,
    soft_reset_d1,
    cmnds_queued,
    smpl_cs,
    all_is_idle_d1,
    mm2s_halted_set,
    out,
    mm2s_halt_cmplt,
    dma_mm2s_error,
    \GEN_SYNC_WRITE.awvalid_d1_reg ,
    s_axi_lite_bready,
    s_axi_lite_rready,
    s_axi_lite_awaddr,
    soft_reset_clr,
    s_axi_lite_araddr,
    mm2s_smpl_interr_set,
    mm2s_smpl_slverr_set,
    mm2s_smpl_decerr_set,
    axi_dma_tstvec);
  output s_axi_lite_awready;
  output rdy;
  output s_axi_lite_arready;
  output [0:0]\dmacr_i_reg[0] ;
  output \GEN_SYNC_WRITE.bvalid_i_reg ;
  output \GEN_SYNC_READ.s_axi_lite_rvalid_i_reg ;
  output mm2s_dmasr;
  output mm2s_introut;
  output soft_reset_re0;
  output soft_reset;
  output \dmacr_i_reg[0]_0 ;
  output \dmacr_i_reg[2] ;
  output mm2s_all_idle;
  output mm2s_halted_set0;
  output [13:0]Q;
  output [31:0]\GEN_REG_FOR_SMPL.buffer_address_i_reg[31] ;
  output \dmacr_i_reg[3] ;
  output [31:0]s_axi_lite_rdata;
  input s_axi_lite_aclk;
  input [0:0]SR;
  input s_axi_lite_awvalid;
  input s_axi_lite_wvalid;
  input s_axi_lite_arvalid;
  input [0:0]\dmacr_i_reg[4] ;
  input \GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ;
  input halted_reg;
  input [31:0]s_axi_lite_wdata;
  input mm2s_stop;
  input \dmacr_i_reg[0]_1 ;
  input soft_reset_d1;
  input cmnds_queued;
  input [1:0]smpl_cs;
  input all_is_idle_d1;
  input mm2s_halted_set;
  input out;
  input mm2s_halt_cmplt;
  input dma_mm2s_error;
  input \GEN_SYNC_WRITE.awvalid_d1_reg ;
  input s_axi_lite_bready;
  input s_axi_lite_rready;
  input [3:0]s_axi_lite_awaddr;
  input soft_reset_clr;
  input [9:0]s_axi_lite_araddr;
  input mm2s_smpl_interr_set;
  input mm2s_smpl_slverr_set;
  input mm2s_smpl_decerr_set;
  input [0:0]axi_dma_tstvec;

  wire \GEN_AXI_LITE_IF.AXI_LITE_IF_I_n_11 ;
  wire \GEN_AXI_LITE_IF.AXI_LITE_IF_I_n_12 ;
  wire \GEN_AXI_LITE_IF.AXI_LITE_IF_I_n_13 ;
  wire \GEN_AXI_LITE_IF.AXI_LITE_IF_I_n_9 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_10 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_11 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_12 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_13 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_14 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_48 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_49 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_50 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_51 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_52 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_53 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_54 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_55 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_57 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_59 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_60 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_61 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_62 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_63 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_64 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_65 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_66 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_67 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_68 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_69 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_70 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_71 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_72 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_73 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_74 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_9 ;
  wire [31:0]\GEN_REG_FOR_SMPL.buffer_address_i_reg[31] ;
  wire \GEN_SYNC_READ.s_axi_lite_rvalid_i_reg ;
  wire \GEN_SYNC_WRITE.awvalid_d1_reg ;
  wire \GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ;
  wire \GEN_SYNC_WRITE.bvalid_i_reg ;
  wire [13:0]Q;
  wire [0:0]SR;
  wire all_is_idle_d1;
  wire [10:0]axi2ip_wrce;
  wire [0:0]axi_dma_tstvec;
  wire buffer_length_wren0;
  wire cmnds_queued;
  wire dma_mm2s_error;
  wire [0:0]\dmacr_i_reg[0] ;
  wire \dmacr_i_reg[0]_0 ;
  wire \dmacr_i_reg[0]_1 ;
  wire \dmacr_i_reg[2] ;
  wire \dmacr_i_reg[3] ;
  wire [0:0]\dmacr_i_reg[4] ;
  wire halted_reg;
  wire [14:14]ip2axi_rddata1_out;
  wire mm2s_all_idle;
  wire [3:3]mm2s_dmacr;
  wire mm2s_dmasr;
  wire mm2s_halt_cmplt;
  wire mm2s_halted_set;
  wire mm2s_halted_set0;
  wire mm2s_introut;
  wire mm2s_smpl_decerr_set;
  wire mm2s_smpl_interr_set;
  wire mm2s_smpl_slverr_set;
  wire mm2s_stop;
  wire out;
  wire p_0_in1_in;
  wire p_1_in;
  wire rdy;
  wire s_axi_lite_aclk;
  wire [9:0]s_axi_lite_araddr;
  wire s_axi_lite_arready;
  wire s_axi_lite_arvalid;
  wire [3:0]s_axi_lite_awaddr;
  wire s_axi_lite_awready;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire [31:0]s_axi_lite_rdata;
  wire s_axi_lite_rready;
  wire [31:0]s_axi_lite_wdata;
  wire s_axi_lite_wvalid;
  wire [1:0]smpl_cs;
  wire soft_reset;
  wire soft_reset_clr;
  wire soft_reset_d1;
  wire soft_reset_re0;
  (* async_reg = "true" *) wire strm_valid_int2;
  (* async_reg = "true" *) wire strm_valid_int_cdc_to;

  system_axi_dma_1_0_axi_dma_lite_if \GEN_AXI_LITE_IF.AXI_LITE_IF_I 
       (.D(ip2axi_rddata1_out),
        .E(p_1_in),
        .\GEN_REG_FOR_SMPL.buffer_length_wren_reg (\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_13 ),
        .\GEN_REG_FOR_SMPL.buffer_length_wren_reg_0 (\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_12 ),
        .\GEN_REG_FOR_SMPL.buffer_length_wren_reg_1 (\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_14 ),
        .\GEN_SYNC_READ.axi2ip_rdaddr_reg[2]_0 (\GEN_AXI_LITE_IF.AXI_LITE_IF_I_n_9 ),
        .\GEN_SYNC_READ.axi2ip_rdaddr_reg[5]_0 (\GEN_AXI_LITE_IF.AXI_LITE_IF_I_n_11 ),
        .\GEN_SYNC_READ.axi2ip_rdaddr_reg[9]_0 (\GEN_AXI_LITE_IF.AXI_LITE_IF_I_n_12 ),
        .\GEN_SYNC_READ.s_axi_lite_rdata_reg[0]_0 (\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_48 ),
        .\GEN_SYNC_READ.s_axi_lite_rdata_reg[0]_1 (\dmacr_i_reg[0] ),
        .\GEN_SYNC_READ.s_axi_lite_rdata_reg[12]_0 (\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_54 ),
        .\GEN_SYNC_READ.s_axi_lite_rdata_reg[13]_0 (\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_55 ),
        .\GEN_SYNC_READ.s_axi_lite_rdata_reg[13]_1 ({\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_10 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_11 }),
        .\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_0 (\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_49 ),
        .\GEN_SYNC_READ.s_axi_lite_rdata_reg[23]_0 ({\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_59 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_60 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_61 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_62 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_63 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_64 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_65 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_66 }),
        .\GEN_SYNC_READ.s_axi_lite_rdata_reg[2]_0 (\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_50 ),
        .\GEN_SYNC_READ.s_axi_lite_rdata_reg[2]_1 (soft_reset),
        .\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_0 ({\GEN_REG_FOR_SMPL.buffer_address_i_reg[31] [31:15],\GEN_REG_FOR_SMPL.buffer_address_i_reg[31] [11:7],\GEN_REG_FOR_SMPL.buffer_address_i_reg[31] [5]}),
        .\GEN_SYNC_READ.s_axi_lite_rdata_reg[31]_1 ({\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_67 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_68 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_69 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_70 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_71 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_72 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_73 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_74 }),
        .\GEN_SYNC_READ.s_axi_lite_rdata_reg[3]_0 (\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_51 ),
        .\GEN_SYNC_READ.s_axi_lite_rdata_reg[4]_0 (\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_52 ),
        .\GEN_SYNC_READ.s_axi_lite_rdata_reg[4]_1 ({\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_57 ,mm2s_dmacr}),
        .\GEN_SYNC_READ.s_axi_lite_rdata_reg[5]_0 (\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_9 ),
        .\GEN_SYNC_READ.s_axi_lite_rdata_reg[6]_0 (\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_53 ),
        .\GEN_SYNC_READ.s_axi_lite_rvalid_i_reg_0 (\GEN_SYNC_READ.s_axi_lite_rvalid_i_reg ),
        .\GEN_SYNC_WRITE.awvalid_d1_reg_0 (\GEN_SYNC_WRITE.awvalid_d1_reg ),
        .\GEN_SYNC_WRITE.axi2ip_wrce_reg[10]_0 (\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ),
        .\GEN_SYNC_WRITE.bvalid_i_reg_0 (\GEN_SYNC_WRITE.bvalid_i_reg ),
        .\GEN_SYNC_WRITE.rdy_reg_0 (rdy),
        .Q(Q),
        .SR(SR),
        .axi2ip_wrce({axi2ip_wrce[10],axi2ip_wrce[0]}),
        .buffer_length_wren0(buffer_length_wren0),
        .out(out),
        .p_0_in1_in(p_0_in1_in),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .s_axi_lite_araddr(s_axi_lite_araddr),
        .s_axi_lite_arready(s_axi_lite_arready),
        .s_axi_lite_arvalid(s_axi_lite_arvalid),
        .s_axi_lite_awaddr(s_axi_lite_awaddr),
        .s_axi_lite_awready(s_axi_lite_awready),
        .s_axi_lite_awvalid(s_axi_lite_awvalid),
        .s_axi_lite_bready(s_axi_lite_bready),
        .s_axi_lite_rdata(s_axi_lite_rdata),
        .s_axi_lite_rready(s_axi_lite_rready),
        .s_axi_lite_wdata(s_axi_lite_wdata[23:16]),
        .\s_axi_lite_wdata[19] (\GEN_AXI_LITE_IF.AXI_LITE_IF_I_n_13 ),
        .s_axi_lite_wvalid(s_axi_lite_wvalid));
  system_axi_dma_1_0_axi_dma_register \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER 
       (.D(ip2axi_rddata1_out),
        .E(p_1_in),
        .\GEN_REG_FOR_SMPL.buffer_address_i_reg[0]_0 (\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_48 ),
        .\GEN_REG_FOR_SMPL.buffer_address_i_reg[12]_0 (\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_54 ),
        .\GEN_REG_FOR_SMPL.buffer_address_i_reg[13]_0 (\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_55 ),
        .\GEN_REG_FOR_SMPL.buffer_address_i_reg[1]_0 (\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_49 ),
        .\GEN_REG_FOR_SMPL.buffer_address_i_reg[2]_0 (\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_50 ),
        .\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 (\GEN_REG_FOR_SMPL.buffer_address_i_reg[31] ),
        .\GEN_REG_FOR_SMPL.buffer_address_i_reg[3]_0 (\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_51 ),
        .\GEN_REG_FOR_SMPL.buffer_address_i_reg[4]_0 (\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_52 ),
        .\GEN_REG_FOR_SMPL.buffer_address_i_reg[6]_0 (\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_53 ),
        .\GEN_REG_FOR_SMPL.buffer_length_i_reg[13]_0 (Q),
        .\GEN_SYNC_READ.s_axi_lite_rdata_reg[14] (\GEN_AXI_LITE_IF.AXI_LITE_IF_I_n_9 ),
        .\GEN_SYNC_READ.s_axi_lite_rdata_reg[14]_0 (\GEN_AXI_LITE_IF.AXI_LITE_IF_I_n_11 ),
        .\GEN_SYNC_READ.s_axi_lite_rdata_reg[14]_1 (\GEN_AXI_LITE_IF.AXI_LITE_IF_I_n_12 ),
        .Q({\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_10 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_11 }),
        .SR(\GEN_AXI_LITE_IF.AXI_LITE_IF_I_n_13 ),
        .all_is_idle_d1(all_is_idle_d1),
        .axi2ip_wrce({axi2ip_wrce[10],axi2ip_wrce[0]}),
        .axi_dma_tstvec(axi_dma_tstvec),
        .buffer_length_wren0(buffer_length_wren0),
        .cmnds_queued(cmnds_queued),
        .dma_mm2s_error(dma_mm2s_error),
        .dma_slverr_reg_0(\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_9 ),
        .\dmacr_i_reg[0]_0 (\dmacr_i_reg[0] ),
        .\dmacr_i_reg[0]_1 (\dmacr_i_reg[0]_0 ),
        .\dmacr_i_reg[0]_2 (\dmacr_i_reg[0]_1 ),
        .\dmacr_i_reg[23]_0 ({\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_59 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_60 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_61 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_62 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_63 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_64 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_65 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_66 }),
        .\dmacr_i_reg[2]_0 (soft_reset),
        .\dmacr_i_reg[2]_1 (\dmacr_i_reg[2] ),
        .\dmacr_i_reg[31]_0 ({\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_67 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_68 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_69 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_70 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_71 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_72 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_73 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_74 }),
        .\dmacr_i_reg[3]_0 (\dmacr_i_reg[3] ),
        .\dmacr_i_reg[4]_0 ({\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_57 ,mm2s_dmacr}),
        .\dmacr_i_reg[4]_1 (\dmacr_i_reg[4] ),
        .halted_reg_0(halted_reg),
        .mm2s_all_idle(mm2s_all_idle),
        .mm2s_dmasr(mm2s_dmasr),
        .mm2s_halt_cmplt(mm2s_halt_cmplt),
        .mm2s_halted_set(mm2s_halted_set),
        .mm2s_halted_set0(mm2s_halted_set0),
        .mm2s_introut(mm2s_introut),
        .mm2s_smpl_decerr_set(mm2s_smpl_decerr_set),
        .mm2s_smpl_interr_set(mm2s_smpl_interr_set),
        .mm2s_smpl_slverr_set(mm2s_smpl_slverr_set),
        .mm2s_stop(mm2s_stop),
        .out(out),
        .p_0_in1_in(p_0_in1_in),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .s_axi_lite_wdata(s_axi_lite_wdata),
        .s_axi_lite_wdata_11_sp_1(\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_14 ),
        .s_axi_lite_wdata_13_sp_1(\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_12 ),
        .s_axi_lite_wdata_9_sp_1(\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_13 ),
        .smpl_cs(smpl_cs),
        .soft_reset_clr(soft_reset_clr),
        .soft_reset_d1(soft_reset_d1),
        .soft_reset_re0(soft_reset_re0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(strm_valid_int2));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(strm_valid_int_cdc_to));
endmodule

module system_axi_dma_1_0_axi_dma_register
   (\dmacr_i_reg[0]_0 ,
    mm2s_dmasr,
    mm2s_introut,
    soft_reset_re0,
    \dmacr_i_reg[2]_0 ,
    \dmacr_i_reg[0]_1 ,
    \dmacr_i_reg[2]_1 ,
    mm2s_all_idle,
    mm2s_halted_set0,
    dma_slverr_reg_0,
    Q,
    s_axi_lite_wdata_13_sp_1,
    s_axi_lite_wdata_9_sp_1,
    s_axi_lite_wdata_11_sp_1,
    D,
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 ,
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[0]_0 ,
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[1]_0 ,
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[2]_0 ,
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[3]_0 ,
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[4]_0 ,
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[6]_0 ,
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[12]_0 ,
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[13]_0 ,
    \dmacr_i_reg[3]_0 ,
    \dmacr_i_reg[4]_0 ,
    \dmacr_i_reg[23]_0 ,
    \dmacr_i_reg[31]_0 ,
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[13]_0 ,
    \dmacr_i_reg[4]_1 ,
    s_axi_lite_aclk,
    buffer_length_wren0,
    halted_reg_0,
    axi2ip_wrce,
    s_axi_lite_wdata,
    mm2s_stop,
    \dmacr_i_reg[0]_2 ,
    soft_reset_d1,
    cmnds_queued,
    smpl_cs,
    all_is_idle_d1,
    mm2s_halted_set,
    out,
    mm2s_halt_cmplt,
    dma_mm2s_error,
    \GEN_SYNC_READ.s_axi_lite_rdata_reg[14] ,
    \GEN_SYNC_READ.s_axi_lite_rdata_reg[14]_0 ,
    \GEN_SYNC_READ.s_axi_lite_rdata_reg[14]_1 ,
    soft_reset_clr,
    SR,
    mm2s_smpl_interr_set,
    mm2s_smpl_slverr_set,
    mm2s_smpl_decerr_set,
    p_0_in1_in,
    axi_dma_tstvec,
    E);
  output \dmacr_i_reg[0]_0 ;
  output mm2s_dmasr;
  output mm2s_introut;
  output soft_reset_re0;
  output \dmacr_i_reg[2]_0 ;
  output \dmacr_i_reg[0]_1 ;
  output \dmacr_i_reg[2]_1 ;
  output mm2s_all_idle;
  output mm2s_halted_set0;
  output dma_slverr_reg_0;
  output [1:0]Q;
  output s_axi_lite_wdata_13_sp_1;
  output s_axi_lite_wdata_9_sp_1;
  output s_axi_lite_wdata_11_sp_1;
  output [0:0]D;
  output [31:0]\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 ;
  output \GEN_REG_FOR_SMPL.buffer_address_i_reg[0]_0 ;
  output \GEN_REG_FOR_SMPL.buffer_address_i_reg[1]_0 ;
  output \GEN_REG_FOR_SMPL.buffer_address_i_reg[2]_0 ;
  output \GEN_REG_FOR_SMPL.buffer_address_i_reg[3]_0 ;
  output \GEN_REG_FOR_SMPL.buffer_address_i_reg[4]_0 ;
  output \GEN_REG_FOR_SMPL.buffer_address_i_reg[6]_0 ;
  output \GEN_REG_FOR_SMPL.buffer_address_i_reg[12]_0 ;
  output \GEN_REG_FOR_SMPL.buffer_address_i_reg[13]_0 ;
  output \dmacr_i_reg[3]_0 ;
  output [1:0]\dmacr_i_reg[4]_0 ;
  output [7:0]\dmacr_i_reg[23]_0 ;
  output [7:0]\dmacr_i_reg[31]_0 ;
  output [13:0]\GEN_REG_FOR_SMPL.buffer_length_i_reg[13]_0 ;
  input [0:0]\dmacr_i_reg[4]_1 ;
  input s_axi_lite_aclk;
  input buffer_length_wren0;
  input halted_reg_0;
  input [1:0]axi2ip_wrce;
  input [31:0]s_axi_lite_wdata;
  input mm2s_stop;
  input \dmacr_i_reg[0]_2 ;
  input soft_reset_d1;
  input cmnds_queued;
  input [1:0]smpl_cs;
  input all_is_idle_d1;
  input mm2s_halted_set;
  input out;
  input mm2s_halt_cmplt;
  input dma_mm2s_error;
  input \GEN_SYNC_READ.s_axi_lite_rdata_reg[14] ;
  input \GEN_SYNC_READ.s_axi_lite_rdata_reg[14]_0 ;
  input \GEN_SYNC_READ.s_axi_lite_rdata_reg[14]_1 ;
  input soft_reset_clr;
  input [0:0]SR;
  input mm2s_smpl_interr_set;
  input mm2s_smpl_slverr_set;
  input mm2s_smpl_decerr_set;
  input p_0_in1_in;
  input [0:0]axi_dma_tstvec;
  input [0:0]E;

  wire [0:0]D;
  wire [0:0]E;
  wire \GEN_REG_FOR_SMPL.buffer_address_i_reg[0]_0 ;
  wire \GEN_REG_FOR_SMPL.buffer_address_i_reg[12]_0 ;
  wire \GEN_REG_FOR_SMPL.buffer_address_i_reg[13]_0 ;
  wire \GEN_REG_FOR_SMPL.buffer_address_i_reg[1]_0 ;
  wire \GEN_REG_FOR_SMPL.buffer_address_i_reg[2]_0 ;
  wire [31:0]\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 ;
  wire \GEN_REG_FOR_SMPL.buffer_address_i_reg[3]_0 ;
  wire \GEN_REG_FOR_SMPL.buffer_address_i_reg[4]_0 ;
  wire \GEN_REG_FOR_SMPL.buffer_address_i_reg[6]_0 ;
  wire [13:0]\GEN_REG_FOR_SMPL.buffer_length_i_reg[13]_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata_reg[14] ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata_reg[14]_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata_reg[14]_1 ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire all_is_idle_d1;
  wire [1:0]axi2ip_wrce;
  wire [0:0]axi_dma_tstvec;
  wire buffer_length_wren0;
  wire cmnds_queued;
  wire dma_decerr_i_1_n_0;
  wire dma_decerr_reg_n_0;
  wire dma_interr_i_1_n_0;
  wire dma_interr_reg_n_0;
  wire dma_mm2s_error;
  wire dma_slverr_i_1_n_0;
  wire dma_slverr_reg_0;
  wire \dmacr_i[0]_i_1_n_0 ;
  wire \dmacr_i[2]_i_1_n_0 ;
  wire \dmacr_i_reg[0]_0 ;
  wire \dmacr_i_reg[0]_1 ;
  wire \dmacr_i_reg[0]_2 ;
  wire [7:0]\dmacr_i_reg[23]_0 ;
  wire \dmacr_i_reg[2]_0 ;
  wire \dmacr_i_reg[2]_1 ;
  wire [7:0]\dmacr_i_reg[31]_0 ;
  wire \dmacr_i_reg[3]_0 ;
  wire [1:0]\dmacr_i_reg[4]_0 ;
  wire [0:0]\dmacr_i_reg[4]_1 ;
  wire \dmacr_i_reg_n_0_[14] ;
  wire err_irq_i_1_n_0;
  wire err_irq_i_2_n_0;
  wire err_irq_reg_n_0;
  wire error_d1;
  wire error_d1_i_1_n_0;
  wire halted_reg_0;
  wire idle;
  wire idle_i_1_n_0;
  wire introut_i_1_n_0;
  wire ioc_irq_i_1_n_0;
  wire ioc_irq_reg_n_0;
  wire mm2s_all_idle;
  wire mm2s_dmasr;
  wire mm2s_halt_cmplt;
  wire mm2s_halted_set;
  wire mm2s_halted_set0;
  wire mm2s_introut;
  wire mm2s_length_wren;
  wire mm2s_smpl_decerr_set;
  wire mm2s_smpl_interr_set;
  wire mm2s_smpl_slverr_set;
  wire mm2s_stop;
  wire out;
  wire p_0_in1_in;
  wire s_axi_lite_aclk;
  wire [31:0]s_axi_lite_wdata;
  wire s_axi_lite_wdata_11_sn_1;
  wire s_axi_lite_wdata_13_sn_1;
  wire s_axi_lite_wdata_9_sn_1;
  wire [1:0]smpl_cs;
  wire soft_reset_clr;
  wire soft_reset_d1;
  wire soft_reset_re0;

  assign s_axi_lite_wdata_11_sp_1 = s_axi_lite_wdata_11_sn_1;
  assign s_axi_lite_wdata_13_sp_1 = s_axi_lite_wdata_13_sn_1;
  assign s_axi_lite_wdata_9_sp_1 = s_axi_lite_wdata_9_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_smpl_cs[1]_i_2 
       (.I0(\dmacr_i_reg[2]_0 ),
        .I1(dma_mm2s_error),
        .O(\dmacr_i_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h0000FFFFFFFF2000)) 
    \FSM_sequential_smpl_cs[1]_i_3 
       (.I0(\dmacr_i_reg[0]_0 ),
        .I1(cmnds_queued),
        .I2(mm2s_length_wren),
        .I3(\dmacr_i_reg[2]_1 ),
        .I4(smpl_cs[1]),
        .I5(smpl_cs[0]),
        .O(\dmacr_i_reg[0]_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \GEN_CMD_BTT_LESS_23.cmnd_data[26]_i_1 
       (.I0(\dmacr_i_reg[4]_0 [0]),
        .O(\dmacr_i_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[0]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [0]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[10]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [10]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[11]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [11]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[12]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [12]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[13]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [13]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[14] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[14]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [14]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[15] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[15]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [15]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[16] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[16]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [16]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[17] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[17]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [17]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[18] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[18]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [18]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[19] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[19]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [19]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[1]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [1]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[20] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[20]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [20]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[21] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[21]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [21]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[22] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[22]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [22]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[23] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[23]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [23]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[24] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[24]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [24]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[25] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[25]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [25]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[26] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[26]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [26]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[27] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[27]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [27]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[28] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[28]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [28]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[29] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[29]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [29]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[2]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [2]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[30] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[30]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [30]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[31] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[31]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [31]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[3]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [3]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[4]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [4]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[5]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [5]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[6]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [6]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[7]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [7]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[8]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [8]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[9]),
        .Q(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [9]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[1]),
        .D(s_axi_lite_wdata[0]),
        .Q(\GEN_REG_FOR_SMPL.buffer_length_i_reg[13]_0 [0]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[1]),
        .D(s_axi_lite_wdata[10]),
        .Q(\GEN_REG_FOR_SMPL.buffer_length_i_reg[13]_0 [10]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[1]),
        .D(s_axi_lite_wdata[11]),
        .Q(\GEN_REG_FOR_SMPL.buffer_length_i_reg[13]_0 [11]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[1]),
        .D(s_axi_lite_wdata[12]),
        .Q(\GEN_REG_FOR_SMPL.buffer_length_i_reg[13]_0 [12]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[1]),
        .D(s_axi_lite_wdata[13]),
        .Q(\GEN_REG_FOR_SMPL.buffer_length_i_reg[13]_0 [13]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[1]),
        .D(s_axi_lite_wdata[1]),
        .Q(\GEN_REG_FOR_SMPL.buffer_length_i_reg[13]_0 [1]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[1]),
        .D(s_axi_lite_wdata[2]),
        .Q(\GEN_REG_FOR_SMPL.buffer_length_i_reg[13]_0 [2]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[1]),
        .D(s_axi_lite_wdata[3]),
        .Q(\GEN_REG_FOR_SMPL.buffer_length_i_reg[13]_0 [3]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[1]),
        .D(s_axi_lite_wdata[4]),
        .Q(\GEN_REG_FOR_SMPL.buffer_length_i_reg[13]_0 [4]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[1]),
        .D(s_axi_lite_wdata[5]),
        .Q(\GEN_REG_FOR_SMPL.buffer_length_i_reg[13]_0 [5]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[1]),
        .D(s_axi_lite_wdata[6]),
        .Q(\GEN_REG_FOR_SMPL.buffer_length_i_reg[13]_0 [6]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[1]),
        .D(s_axi_lite_wdata[7]),
        .Q(\GEN_REG_FOR_SMPL.buffer_length_i_reg[13]_0 [7]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[1]),
        .D(s_axi_lite_wdata[8]),
        .Q(\GEN_REG_FOR_SMPL.buffer_length_i_reg[13]_0 [8]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[1]),
        .D(s_axi_lite_wdata[9]),
        .Q(\GEN_REG_FOR_SMPL.buffer_length_i_reg[13]_0 [9]),
        .R(\dmacr_i_reg[4]_1 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \GEN_REG_FOR_SMPL.buffer_length_wren_i_2 
       (.I0(s_axi_lite_wdata[9]),
        .I1(s_axi_lite_wdata[3]),
        .I2(s_axi_lite_wdata[6]),
        .I3(s_axi_lite_wdata[12]),
        .O(s_axi_lite_wdata_9_sn_1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \GEN_REG_FOR_SMPL.buffer_length_wren_i_3 
       (.I0(s_axi_lite_wdata[13]),
        .I1(s_axi_lite_wdata[1]),
        .I2(s_axi_lite_wdata[2]),
        .I3(s_axi_lite_wdata[0]),
        .O(s_axi_lite_wdata_13_sn_1));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \GEN_REG_FOR_SMPL.buffer_length_wren_i_4 
       (.I0(s_axi_lite_wdata[11]),
        .I1(s_axi_lite_wdata[7]),
        .I2(s_axi_lite_wdata[8]),
        .I3(s_axi_lite_wdata[10]),
        .I4(s_axi_lite_wdata[4]),
        .I5(s_axi_lite_wdata[5]),
        .O(s_axi_lite_wdata_11_sn_1));
  FDRE \GEN_REG_FOR_SMPL.buffer_length_wren_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(buffer_length_wren0),
        .Q(mm2s_length_wren),
        .R(\dmacr_i_reg[4]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[0]_i_2 
       (.I0(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [0]),
        .I1(\GEN_SYNC_READ.s_axi_lite_rdata_reg[14]_0 ),
        .I2(mm2s_dmasr),
        .O(\GEN_REG_FOR_SMPL.buffer_address_i_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[12]_i_2 
       (.I0(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [12]),
        .I1(\GEN_SYNC_READ.s_axi_lite_rdata_reg[14]_0 ),
        .I2(ioc_irq_reg_n_0),
        .O(\GEN_REG_FOR_SMPL.buffer_address_i_reg[12]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[13]_i_4 
       (.I0(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [13]),
        .I1(\GEN_SYNC_READ.s_axi_lite_rdata_reg[14]_0 ),
        .O(\GEN_REG_FOR_SMPL.buffer_address_i_reg[13]_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[14]_i_1 
       (.I0(\dmacr_i_reg_n_0_[14] ),
        .I1(\GEN_SYNC_READ.s_axi_lite_rdata_reg[14] ),
        .I2(err_irq_reg_n_0),
        .I3(\GEN_SYNC_READ.s_axi_lite_rdata_reg[14]_0 ),
        .I4(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [14]),
        .I5(\GEN_SYNC_READ.s_axi_lite_rdata_reg[14]_1 ),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[1]_i_2 
       (.I0(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [1]),
        .I1(\GEN_SYNC_READ.s_axi_lite_rdata_reg[14]_0 ),
        .I2(idle),
        .O(\GEN_REG_FOR_SMPL.buffer_address_i_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[2]_i_2 
       (.I0(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [2]),
        .I1(\GEN_SYNC_READ.s_axi_lite_rdata_reg[14]_0 ),
        .O(\GEN_REG_FOR_SMPL.buffer_address_i_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[3]_i_3 
       (.I0(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [3]),
        .I1(\GEN_SYNC_READ.s_axi_lite_rdata_reg[14]_0 ),
        .O(\GEN_REG_FOR_SMPL.buffer_address_i_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[4]_i_2 
       (.I0(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [4]),
        .I1(\GEN_SYNC_READ.s_axi_lite_rdata_reg[14]_0 ),
        .I2(dma_interr_reg_n_0),
        .O(\GEN_REG_FOR_SMPL.buffer_address_i_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[6]_i_2 
       (.I0(\GEN_REG_FOR_SMPL.buffer_address_i_reg[31]_0 [6]),
        .I1(\GEN_SYNC_READ.s_axi_lite_rdata_reg[14]_0 ),
        .I2(dma_decerr_reg_n_0),
        .O(\GEN_REG_FOR_SMPL.buffer_address_i_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h0000000000001333)) 
    \GNE_SYNC_RESET.sft_rst_dly1_i_2 
       (.I0(\dmacr_i_reg[0]_0 ),
        .I1(cmnds_queued),
        .I2(mm2s_length_wren),
        .I3(\dmacr_i_reg[2]_1 ),
        .I4(smpl_cs[0]),
        .I5(smpl_cs[1]),
        .O(mm2s_all_idle));
  LUT2 #(
    .INIT(4'hE)) 
    dma_decerr_i_1
       (.I0(mm2s_smpl_decerr_set),
        .I1(dma_decerr_reg_n_0),
        .O(dma_decerr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dma_decerr_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(dma_decerr_i_1_n_0),
        .Q(dma_decerr_reg_n_0),
        .R(\dmacr_i_reg[4]_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    dma_interr_i_1
       (.I0(mm2s_smpl_interr_set),
        .I1(dma_interr_reg_n_0),
        .O(dma_interr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dma_interr_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(dma_interr_i_1_n_0),
        .Q(dma_interr_reg_n_0),
        .R(\dmacr_i_reg[4]_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    dma_slverr_i_1
       (.I0(mm2s_smpl_slverr_set),
        .I1(dma_slverr_reg_0),
        .O(dma_slverr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dma_slverr_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(dma_slverr_i_1_n_0),
        .Q(dma_slverr_reg_0),
        .R(\dmacr_i_reg[4]_1 ));
  LUT6 #(
    .INIT(64'h0000A80800000000)) 
    \dmacr_i[0]_i_1 
       (.I0(err_irq_i_2_n_0),
        .I1(\dmacr_i_reg[0]_0 ),
        .I2(axi2ip_wrce[0]),
        .I3(s_axi_lite_wdata[0]),
        .I4(mm2s_stop),
        .I5(\dmacr_i_reg[0]_2 ),
        .O(\dmacr_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h00EA)) 
    \dmacr_i[2]_i_1 
       (.I0(\dmacr_i_reg[2]_0 ),
        .I1(axi2ip_wrce[0]),
        .I2(s_axi_lite_wdata[2]),
        .I3(soft_reset_clr),
        .O(\dmacr_i[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\dmacr_i[0]_i_1_n_0 ),
        .Q(\dmacr_i_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[0]),
        .D(s_axi_lite_wdata[12]),
        .Q(Q[0]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[0]),
        .D(s_axi_lite_wdata[13]),
        .Q(Q[1]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[14] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[0]),
        .D(s_axi_lite_wdata[14]),
        .Q(\dmacr_i_reg_n_0_[14] ),
        .R(\dmacr_i_reg[4]_1 ));
  FDSE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[16] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[0]),
        .D(s_axi_lite_wdata[16]),
        .Q(\dmacr_i_reg[23]_0 [0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[17] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[0]),
        .D(s_axi_lite_wdata[17]),
        .Q(\dmacr_i_reg[23]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[18] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[0]),
        .D(s_axi_lite_wdata[18]),
        .Q(\dmacr_i_reg[23]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[19] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[0]),
        .D(s_axi_lite_wdata[19]),
        .Q(\dmacr_i_reg[23]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[20] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[0]),
        .D(s_axi_lite_wdata[20]),
        .Q(\dmacr_i_reg[23]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[21] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[0]),
        .D(s_axi_lite_wdata[21]),
        .Q(\dmacr_i_reg[23]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[22] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[0]),
        .D(s_axi_lite_wdata[22]),
        .Q(\dmacr_i_reg[23]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[23] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[0]),
        .D(s_axi_lite_wdata[23]),
        .Q(\dmacr_i_reg[23]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[24] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[0]),
        .D(s_axi_lite_wdata[24]),
        .Q(\dmacr_i_reg[31]_0 [0]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[25] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[0]),
        .D(s_axi_lite_wdata[25]),
        .Q(\dmacr_i_reg[31]_0 [1]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[26] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[0]),
        .D(s_axi_lite_wdata[26]),
        .Q(\dmacr_i_reg[31]_0 [2]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[27] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[0]),
        .D(s_axi_lite_wdata[27]),
        .Q(\dmacr_i_reg[31]_0 [3]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[28] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[0]),
        .D(s_axi_lite_wdata[28]),
        .Q(\dmacr_i_reg[31]_0 [4]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[29] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[0]),
        .D(s_axi_lite_wdata[29]),
        .Q(\dmacr_i_reg[31]_0 [5]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\dmacr_i[2]_i_1_n_0 ),
        .Q(\dmacr_i_reg[2]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[30] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[0]),
        .D(s_axi_lite_wdata[30]),
        .Q(\dmacr_i_reg[31]_0 [6]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[31] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[0]),
        .D(s_axi_lite_wdata[31]),
        .Q(\dmacr_i_reg[31]_0 [7]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[0]),
        .D(s_axi_lite_wdata[3]),
        .Q(\dmacr_i_reg[4]_0 [0]),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(axi2ip_wrce[0]),
        .D(s_axi_lite_wdata[4]),
        .Q(\dmacr_i_reg[4]_0 [1]),
        .R(\dmacr_i_reg[4]_1 ));
  LUT5 #(
    .INIT(32'h777F000F)) 
    err_irq_i_1
       (.I0(s_axi_lite_wdata[14]),
        .I1(p_0_in1_in),
        .I2(error_d1),
        .I3(err_irq_i_2_n_0),
        .I4(err_irq_reg_n_0),
        .O(err_irq_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h01)) 
    err_irq_i_2
       (.I0(dma_decerr_reg_n_0),
        .I1(dma_interr_reg_n_0),
        .I2(dma_slverr_reg_0),
        .O(err_irq_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    err_irq_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(err_irq_i_1_n_0),
        .Q(err_irq_reg_n_0),
        .R(\dmacr_i_reg[4]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    error_d1_i_1
       (.I0(dma_slverr_reg_0),
        .I1(dma_interr_reg_n_0),
        .I2(dma_decerr_reg_n_0),
        .O(error_d1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    error_d1_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(error_d1_i_1_n_0),
        .Q(error_d1),
        .R(\dmacr_i_reg[4]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    halted_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(halted_reg_0),
        .Q(mm2s_dmasr),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000F54000000000)) 
    idle_i_1
       (.I0(all_is_idle_d1),
        .I1(\dmacr_i_reg[0]_0 ),
        .I2(mm2s_all_idle),
        .I3(idle),
        .I4(mm2s_halted_set),
        .I5(out),
        .O(idle_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    idle_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(idle_i_1_n_0),
        .Q(idle),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4444400040004000)) 
    introut_i_1
       (.I0(\dmacr_i_reg[2]_0 ),
        .I1(out),
        .I2(err_irq_reg_n_0),
        .I3(\dmacr_i_reg_n_0_[14] ),
        .I4(ioc_irq_reg_n_0),
        .I5(Q[0]),
        .O(introut_i_1_n_0));
  FDRE introut_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(introut_i_1_n_0),
        .Q(mm2s_introut),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF7F0)) 
    ioc_irq_i_1
       (.I0(s_axi_lite_wdata[12]),
        .I1(p_0_in1_in),
        .I2(axi_dma_tstvec),
        .I3(ioc_irq_reg_n_0),
        .O(ioc_irq_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ioc_irq_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(ioc_irq_i_1_n_0),
        .Q(ioc_irq_reg_n_0),
        .R(\dmacr_i_reg[4]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h0000888A)) 
    mm2s_halted_set_i_1
       (.I0(mm2s_all_idle),
        .I1(mm2s_halt_cmplt),
        .I2(dma_mm2s_error),
        .I3(\dmacr_i_reg[2]_0 ),
        .I4(\dmacr_i_reg[0]_0 ),
        .O(mm2s_halted_set0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    soft_reset_re_i_1
       (.I0(\dmacr_i_reg[2]_0 ),
        .I1(soft_reset_d1),
        .O(soft_reset_re0));
endmodule

module system_axi_dma_1_0_axi_dma_reset
   (out,
    \GNE_SYNC_RESET.prmry_resetn_reg_0 ,
    \GNE_SYNC_RESET.s_soft_reset_i_reg_0 ,
    mm2s_prmry_reset_out_n,
    mm2s_cntrl_reset_out_n,
    soft_reset_d1,
    halt,
    \GNE_SYNC_RESET.scndry_resetn_reg_0 ,
    \GNE_SYNC_RESET.scndry_resetn_reg_1 ,
    \GNE_SYNC_RESET.min_assert_sftrst_reg_0 ,
    s_axi_lite_aclk,
    mm2s_all_idle,
    soft_reset,
    soft_reset_re0,
    soft_reset_clr,
    mm2s_halt_cmplt,
    scndry_out,
    mm2s_stop);
  output out;
  output \GNE_SYNC_RESET.prmry_resetn_reg_0 ;
  output \GNE_SYNC_RESET.s_soft_reset_i_reg_0 ;
  output mm2s_prmry_reset_out_n;
  output mm2s_cntrl_reset_out_n;
  output soft_reset_d1;
  output halt;
  output [0:0]\GNE_SYNC_RESET.scndry_resetn_reg_0 ;
  output \GNE_SYNC_RESET.scndry_resetn_reg_1 ;
  output \GNE_SYNC_RESET.min_assert_sftrst_reg_0 ;
  input s_axi_lite_aclk;
  input mm2s_all_idle;
  input soft_reset;
  input soft_reset_re0;
  input soft_reset_clr;
  input mm2s_halt_cmplt;
  input scndry_out;
  input mm2s_stop;

  wire \GNE_SYNC_RESET.halt_i_i_1_n_0 ;
  wire \GNE_SYNC_RESET.min_assert_sftrst_i_1_n_0 ;
  wire \GNE_SYNC_RESET.min_assert_sftrst_reg_0 ;
  wire \GNE_SYNC_RESET.prmry_reset_out_n_reg0 ;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire \GNE_SYNC_RESET.prmry_resetn_reg_0 ;
  wire \GNE_SYNC_RESET.s_soft_reset_i_i_1_n_0 ;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire \GNE_SYNC_RESET.s_soft_reset_i_reg_0 ;
  wire [0:0]\GNE_SYNC_RESET.scndry_resetn_reg_0 ;
  wire \GNE_SYNC_RESET.scndry_resetn_reg_1 ;
  wire assert_sftrst_d1;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire dm_mm2s_scndry_resetn;
  wire halt;
  wire min_assert_sftrst;
  wire mm2s_all_idle;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire mm2s_cntrl_reset_out_n;
  wire mm2s_halt_cmplt;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire mm2s_prmry_reset_out_n;
  wire mm2s_stop;
  wire n_0_910;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire out;
  wire s_axi_lite_aclk;
  wire s_soft_reset_i;
  wire s_soft_reset_i_d1;
  wire s_soft_reset_i_re;
  wire scndry_out;
  wire sft_rst_dly1;
  wire sft_rst_dly2;
  wire sft_rst_dly3;
  wire sft_rst_dly4;
  wire sft_rst_dly5;
  wire sft_rst_dly6;
  wire sft_rst_dly7;
  wire soft_reset;
  wire soft_reset_clr;
  wire soft_reset_d1;
  wire soft_reset_re;
  wire soft_reset_re0;

  LUT4 #(
    .INIT(16'h0040)) 
    \GEN_RESET_FOR_MM2S.mm2s_soft_reset_done_i_1 
       (.I0(min_assert_sftrst),
        .I1(assert_sftrst_d1),
        .I2(scndry_out),
        .I3(soft_reset_clr),
        .O(\GNE_SYNC_RESET.min_assert_sftrst_reg_0 ));
  LUT6 #(
    .INIT(64'h0404040404040400)) 
    \GNE_SYNC_RESET.halt_i_i_1 
       (.I0(min_assert_sftrst),
        .I1(scndry_out),
        .I2(s_soft_reset_i),
        .I3(halt),
        .I4(mm2s_stop),
        .I5(soft_reset_re),
        .O(\GNE_SYNC_RESET.halt_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GNE_SYNC_RESET.halt_i_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GNE_SYNC_RESET.halt_i_i_1_n_0 ),
        .Q(halt),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \GNE_SYNC_RESET.min_assert_sftrst_i_1 
       (.I0(sft_rst_dly7),
        .I1(min_assert_sftrst),
        .I2(s_soft_reset_i_d1),
        .I3(s_soft_reset_i),
        .O(\GNE_SYNC_RESET.min_assert_sftrst_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GNE_SYNC_RESET.min_assert_sftrst_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GNE_SYNC_RESET.min_assert_sftrst_i_1_n_0 ),
        .Q(min_assert_sftrst),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \GNE_SYNC_RESET.prmry_reset_out_n_i_1 
       (.I0(min_assert_sftrst),
        .I1(scndry_out),
        .I2(s_soft_reset_i),
        .O(\GNE_SYNC_RESET.prmry_reset_out_n_reg0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \GNE_SYNC_RESET.prmry_reset_out_n_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GNE_SYNC_RESET.prmry_reset_out_n_reg0 ),
        .Q(mm2s_prmry_reset_out_n),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GNE_SYNC_RESET.prmry_resetn_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(dm_mm2s_scndry_resetn),
        .Q(\GNE_SYNC_RESET.prmry_resetn_reg_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \GNE_SYNC_RESET.s_soft_reset_i_i_1 
       (.I0(soft_reset_clr),
        .I1(s_soft_reset_i),
        .I2(soft_reset),
        .I3(mm2s_halt_cmplt),
        .I4(mm2s_all_idle),
        .O(\GNE_SYNC_RESET.s_soft_reset_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GNE_SYNC_RESET.s_soft_reset_i_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GNE_SYNC_RESET.s_soft_reset_i_i_1_n_0 ),
        .Q(s_soft_reset_i),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \GNE_SYNC_RESET.scndry_resetn_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(dm_mm2s_scndry_resetn),
        .Q(out),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \GNE_SYNC_RESET.sft_rst_dly1_i_1 
       (.I0(s_soft_reset_i),
        .I1(s_soft_reset_i_d1),
        .O(s_soft_reset_i_re));
  FDSE #(
    .INIT(1'b0)) 
    \GNE_SYNC_RESET.sft_rst_dly1_reg 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_all_idle),
        .D(1'b0),
        .Q(sft_rst_dly1),
        .S(s_soft_reset_i_re));
  FDRE #(
    .INIT(1'b0)) 
    \GNE_SYNC_RESET.sft_rst_dly2_reg 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_all_idle),
        .D(sft_rst_dly1),
        .Q(sft_rst_dly2),
        .R(s_soft_reset_i_re));
  FDRE #(
    .INIT(1'b0)) 
    \GNE_SYNC_RESET.sft_rst_dly3_reg 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_all_idle),
        .D(sft_rst_dly2),
        .Q(sft_rst_dly3),
        .R(s_soft_reset_i_re));
  FDRE #(
    .INIT(1'b0)) 
    \GNE_SYNC_RESET.sft_rst_dly4_reg 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_all_idle),
        .D(sft_rst_dly3),
        .Q(sft_rst_dly4),
        .R(s_soft_reset_i_re));
  FDRE #(
    .INIT(1'b0)) 
    \GNE_SYNC_RESET.sft_rst_dly5_reg 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_all_idle),
        .D(sft_rst_dly4),
        .Q(sft_rst_dly5),
        .R(s_soft_reset_i_re));
  FDRE #(
    .INIT(1'b0)) 
    \GNE_SYNC_RESET.sft_rst_dly6_reg 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_all_idle),
        .D(sft_rst_dly5),
        .Q(sft_rst_dly6),
        .R(s_soft_reset_i_re));
  FDRE #(
    .INIT(1'b0)) 
    \GNE_SYNC_RESET.sft_rst_dly7_reg 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_all_idle),
        .D(sft_rst_dly6),
        .Q(sft_rst_dly7),
        .R(s_soft_reset_i_re));
  FDRE #(
    .INIT(1'b0)) 
    assert_sftrst_d1_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(min_assert_sftrst),
        .Q(assert_sftrst_d1),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    dm_prmry_resetn_inst
       (.I0(dm_mm2s_scndry_resetn),
        .O(\GNE_SYNC_RESET.s_soft_reset_i_reg_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dmacr_i[0]_i_2 
       (.I0(out),
        .I1(soft_reset),
        .O(\GNE_SYNC_RESET.scndry_resetn_reg_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dmacr_i[4]_i_1 
       (.I0(out),
        .O(\GNE_SYNC_RESET.scndry_resetn_reg_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(mm2s_cntrl_reset_out_n));
  LUT1 #(
    .INIT(2'h1)) 
    i_910
       (.I0(out),
        .O(n_0_910));
  LUT3 #(
    .INIT(8'h04)) 
    resetn_i
       (.I0(s_soft_reset_i),
        .I1(scndry_out),
        .I2(min_assert_sftrst),
        .O(dm_mm2s_scndry_resetn));
  FDRE #(
    .INIT(1'b0)) 
    s_soft_reset_i_d1_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_soft_reset_i),
        .Q(s_soft_reset_i_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    soft_reset_d1_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(soft_reset),
        .Q(soft_reset_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    soft_reset_re_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(soft_reset_re0),
        .Q(soft_reset_re),
        .R(1'b0));
endmodule

module system_axi_dma_1_0_axi_dma_rst_module
   (out,
    \GNE_SYNC_RESET.prmry_resetn_reg ,
    \GNE_SYNC_RESET.s_soft_reset_i_reg ,
    mm2s_prmry_reset_out_n,
    mm2s_cntrl_reset_out_n,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ,
    soft_reset_d1,
    soft_reset_clr,
    halt,
    \GNE_SYNC_RESET.scndry_resetn_reg ,
    \GNE_SYNC_RESET.scndry_resetn_reg_0 ,
    SR,
    \s_axi_lite_awaddr[6] ,
    s_axi_lite_aclk,
    mm2s_all_idle,
    soft_reset,
    soft_reset_re0,
    mm2s_halt_cmplt,
    mm2s_stop,
    s_axi_lite_awaddr,
    rdy,
    axi_resetn);
  output out;
  output \GNE_SYNC_RESET.prmry_resetn_reg ;
  output \GNE_SYNC_RESET.s_soft_reset_i_reg ;
  output mm2s_prmry_reset_out_n;
  output mm2s_cntrl_reset_out_n;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  output soft_reset_d1;
  output soft_reset_clr;
  output halt;
  output [0:0]\GNE_SYNC_RESET.scndry_resetn_reg ;
  output \GNE_SYNC_RESET.scndry_resetn_reg_0 ;
  output [0:0]SR;
  output \s_axi_lite_awaddr[6] ;
  input s_axi_lite_aclk;
  input mm2s_all_idle;
  input soft_reset;
  input soft_reset_re0;
  input mm2s_halt_cmplt;
  input mm2s_stop;
  input [0:0]s_axi_lite_awaddr;
  input rdy;
  input axi_resetn;

  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  wire \GEN_RESET_FOR_MM2S.RESET_I_n_9 ;
  wire \GNE_SYNC_RESET.prmry_resetn_reg ;
  wire \GNE_SYNC_RESET.s_soft_reset_i_reg ;
  wire [0:0]\GNE_SYNC_RESET.scndry_resetn_reg ;
  wire \GNE_SYNC_RESET.scndry_resetn_reg_0 ;
  wire [0:0]SR;
  wire axi_resetn;
  wire halt;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire m_axi_sg_hrdresetn;
  wire mm2s_all_idle;
  wire mm2s_cntrl_reset_out_n;
  wire mm2s_halt_cmplt;
  wire mm2s_prmry_reset_out_n;
  wire mm2s_stop;
  wire out;
  wire rdy;
  wire s_axi_lite_aclk;
  wire [0:0]s_axi_lite_awaddr;
  wire \s_axi_lite_awaddr[6] ;
  wire soft_reset;
  wire soft_reset_clr;
  wire soft_reset_d1;
  wire soft_reset_re0;

  system_axi_dma_1_0_axi_dma_reset \GEN_RESET_FOR_MM2S.RESET_I 
       (.\GNE_SYNC_RESET.min_assert_sftrst_reg_0 (\GEN_RESET_FOR_MM2S.RESET_I_n_9 ),
        .\GNE_SYNC_RESET.prmry_resetn_reg_0 (\GNE_SYNC_RESET.prmry_resetn_reg ),
        .\GNE_SYNC_RESET.s_soft_reset_i_reg_0 (\GNE_SYNC_RESET.s_soft_reset_i_reg ),
        .\GNE_SYNC_RESET.scndry_resetn_reg_0 (\GNE_SYNC_RESET.scndry_resetn_reg ),
        .\GNE_SYNC_RESET.scndry_resetn_reg_1 (\GNE_SYNC_RESET.scndry_resetn_reg_0 ),
        .halt(halt),
        .mm2s_all_idle(mm2s_all_idle),
        .mm2s_cntrl_reset_out_n(mm2s_cntrl_reset_out_n),
        .mm2s_halt_cmplt(mm2s_halt_cmplt),
        .mm2s_prmry_reset_out_n(mm2s_prmry_reset_out_n),
        .mm2s_stop(mm2s_stop),
        .out(out),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .scndry_out(m_axi_sg_hrdresetn),
        .soft_reset(soft_reset),
        .soft_reset_clr(soft_reset_clr),
        .soft_reset_d1(soft_reset_d1),
        .soft_reset_re0(soft_reset_re0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RESET_FOR_MM2S.mm2s_soft_reset_done_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_RESET_FOR_MM2S.RESET_I_n_9 ),
        .Q(soft_reset_clr),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hBF)) 
    \GEN_SYNC_WRITE.axi2ip_wrce[10]_i_1 
       (.I0(s_axi_lite_awaddr),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ),
        .I2(rdy),
        .O(\s_axi_lite_awaddr[6] ));
  system_axi_dma_1_0_cdc_sync REG_HRD_RST
       (.axi_resetn(axi_resetn),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .scndry_out(m_axi_sg_hrdresetn));
  system_axi_dma_1_0_cdc_sync_0 REG_HRD_RST_OUT
       (.axi_resetn(axi_resetn),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .scndry_out(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  LUT1 #(
    .INIT(2'h1)) 
    arready_i_i_1
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ),
        .O(SR));
endmodule

module system_axi_dma_1_0_axi_dma_smple_sm
   (mm2s_cmnd_wr_1,
    mm2s_sts_received_clr,
    cmnds_queued,
    \FSM_sequential_smpl_cs_reg[1]_0 ,
    \FSM_sequential_smpl_cs_reg[0]_0 ,
    axi_dma_tstvec,
    \GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg_0 ,
    D,
    halted1,
    write_cmnd_cmb,
    s_axi_lite_aclk,
    sts_received_clr_cmb,
    cmnds_queued_reg_0,
    \FSM_sequential_smpl_cs_reg[1]_1 ,
    soft_reset,
    \axi_dma_tstvec[4] ,
    mm2s_halted_set,
    mm2s_dmasr,
    s_axis_mm2s_cmd_tready,
    \GEN_CMD_BTT_LESS_23.cmnd_data_reg[66]_0 ,
    out,
    \FSM_sequential_smpl_cs_reg[0]_1 ,
    Q,
    \GEN_CMD_BTT_LESS_23.cmnd_data_reg[26]_0 ,
    \GEN_CMD_BTT_LESS_23.cmnd_data_reg[13]_0 );
  output mm2s_cmnd_wr_1;
  output mm2s_sts_received_clr;
  output cmnds_queued;
  output \FSM_sequential_smpl_cs_reg[1]_0 ;
  output \FSM_sequential_smpl_cs_reg[0]_0 ;
  output [0:0]axi_dma_tstvec;
  output \GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg_0 ;
  output [47:0]D;
  input halted1;
  input write_cmnd_cmb;
  input s_axi_lite_aclk;
  input sts_received_clr_cmb;
  input cmnds_queued_reg_0;
  input \FSM_sequential_smpl_cs_reg[1]_1 ;
  input soft_reset;
  input \axi_dma_tstvec[4] ;
  input mm2s_halted_set;
  input mm2s_dmasr;
  input s_axis_mm2s_cmd_tready;
  input \GEN_CMD_BTT_LESS_23.cmnd_data_reg[66]_0 ;
  input out;
  input \FSM_sequential_smpl_cs_reg[0]_1 ;
  input [31:0]Q;
  input \GEN_CMD_BTT_LESS_23.cmnd_data_reg[26]_0 ;
  input [13:0]\GEN_CMD_BTT_LESS_23.cmnd_data_reg[13]_0 ;

  wire [47:0]D;
  wire \FSM_sequential_smpl_cs[0]_i_1_n_0 ;
  wire \FSM_sequential_smpl_cs_reg[0]_0 ;
  wire \FSM_sequential_smpl_cs_reg[0]_1 ;
  wire \FSM_sequential_smpl_cs_reg[1]_0 ;
  wire \FSM_sequential_smpl_cs_reg[1]_1 ;
  wire \GEN_CMD_BTT_LESS_23.cmnd_data[33]_i_1_n_0 ;
  wire \GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ;
  wire [13:0]\GEN_CMD_BTT_LESS_23.cmnd_data_reg[13]_0 ;
  wire \GEN_CMD_BTT_LESS_23.cmnd_data_reg[26]_0 ;
  wire \GEN_CMD_BTT_LESS_23.cmnd_data_reg[66]_0 ;
  wire \GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg_0 ;
  wire [31:0]Q;
  wire [0:0]axi_dma_tstvec;
  wire \axi_dma_tstvec[4] ;
  wire cmnds_queued;
  wire cmnds_queued_reg_0;
  wire halted1;
  wire mm2s_cmnd_wr_1;
  wire mm2s_dmasr;
  wire mm2s_halted_set;
  wire mm2s_sts_received_clr;
  wire out;
  wire s_axi_lite_aclk;
  wire s_axis_mm2s_cmd_tready;
  wire soft_reset;
  wire sts_received_clr_cmb;
  wire write_cmnd_cmb;

  LUT6 #(
    .INIT(64'h0004FFFF55550000)) 
    \FSM_sequential_smpl_cs[0]_i_1 
       (.I0(\FSM_sequential_smpl_cs_reg[1]_0 ),
        .I1(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[66]_0 ),
        .I2(soft_reset),
        .I3(\axi_dma_tstvec[4] ),
        .I4(\FSM_sequential_smpl_cs_reg[0]_1 ),
        .I5(\FSM_sequential_smpl_cs_reg[0]_0 ),
        .O(\FSM_sequential_smpl_cs[0]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "execute_xfer:01,wait_status:10,idle:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_smpl_cs_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_smpl_cs[0]_i_1_n_0 ),
        .Q(\FSM_sequential_smpl_cs_reg[0]_0 ),
        .R(halted1));
  (* FSM_ENCODED_STATES = "execute_xfer:01,wait_status:10,idle:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_smpl_cs_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_smpl_cs_reg[1]_1 ),
        .Q(\FSM_sequential_smpl_cs_reg[1]_0 ),
        .R(halted1));
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_CMD_BTT_LESS_23.cmnd_data[33]_i_1 
       (.I0(out),
        .I1(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .I2(D[15]),
        .O(\GEN_CMD_BTT_LESS_23.cmnd_data[33]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000002FFFFFFFF)) 
    \GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1 
       (.I0(\FSM_sequential_smpl_cs_reg[0]_0 ),
        .I1(\FSM_sequential_smpl_cs_reg[1]_0 ),
        .I2(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[66]_0 ),
        .I3(soft_reset),
        .I4(\axi_dma_tstvec[4] ),
        .I5(out),
        .O(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[13]_0 [0]),
        .Q(D[0]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[13]_0 [10]),
        .Q(D[10]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[13]_0 [11]),
        .Q(D[11]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[13]_0 [12]),
        .Q(D[12]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[13]_0 [13]),
        .Q(D[13]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[13]_0 [1]),
        .Q(D[1]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[26] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[26]_0 ),
        .Q(D[14]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[13]_0 [2]),
        .Q(D[2]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[33] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_CMD_BTT_LESS_23.cmnd_data[33]_i_1_n_0 ),
        .Q(D[15]),
        .R(1'b0));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[35] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[0]),
        .Q(D[16]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[36] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[1]),
        .Q(D[17]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[37] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[2]),
        .Q(D[18]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[38] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[3]),
        .Q(D[19]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[39] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[4]),
        .Q(D[20]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[13]_0 [3]),
        .Q(D[3]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[40] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[5]),
        .Q(D[21]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[41] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[6]),
        .Q(D[22]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[42] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[7]),
        .Q(D[23]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[43] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[8]),
        .Q(D[24]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[44] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[9]),
        .Q(D[25]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[45] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[10]),
        .Q(D[26]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[46] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[11]),
        .Q(D[27]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[47] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[12]),
        .Q(D[28]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[48] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[13]),
        .Q(D[29]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[49] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[14]),
        .Q(D[30]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[13]_0 [4]),
        .Q(D[4]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[50] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[15]),
        .Q(D[31]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[51] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[16]),
        .Q(D[32]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[52] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[17]),
        .Q(D[33]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[53] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[18]),
        .Q(D[34]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[54] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[19]),
        .Q(D[35]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[55] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[20]),
        .Q(D[36]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[56] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[21]),
        .Q(D[37]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[57] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[22]),
        .Q(D[38]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[58] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[23]),
        .Q(D[39]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[59] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[24]),
        .Q(D[40]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[13]_0 [5]),
        .Q(D[5]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[60] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[25]),
        .Q(D[41]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[61] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[26]),
        .Q(D[42]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[62] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[27]),
        .Q(D[43]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[28]),
        .Q(D[44]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[64] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[29]),
        .Q(D[45]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[65] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[30]),
        .Q(D[46]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[66] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(Q[31]),
        .Q(D[47]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[13]_0 [6]),
        .Q(D[6]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[13]_0 [7]),
        .Q(D[7]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[13]_0 [8]),
        .Q(D[8]),
        .R(halted1));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(\GEN_CMD_BTT_LESS_23.cmnd_data[66]_i_1_n_0 ),
        .D(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[13]_0 [9]),
        .Q(D[9]),
        .R(halted1));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(write_cmnd_cmb),
        .Q(mm2s_cmnd_wr_1),
        .R(halted1));
  LUT3 #(
    .INIT(8'hBA)) 
    \GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_i_1 
       (.I0(mm2s_cmnd_wr_1),
        .I1(s_axis_mm2s_cmd_tready),
        .I2(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[66]_0 ),
        .O(\GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg_0 ));
  LUT5 #(
    .INIT(32'h0202FE02)) 
    \axi_dma_tstvec[4]_INST_0 
       (.I0(mm2s_sts_received_clr),
        .I1(soft_reset),
        .I2(\axi_dma_tstvec[4] ),
        .I3(mm2s_halted_set),
        .I4(mm2s_dmasr),
        .O(axi_dma_tstvec));
  FDRE #(
    .INIT(1'b0)) 
    cmnds_queued_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(cmnds_queued_reg_0),
        .Q(cmnds_queued),
        .R(1'b0));
  FDRE sts_received_clr_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(sts_received_clr_cmb),
        .Q(mm2s_sts_received_clr),
        .R(halted1));
endmodule

module system_axi_dma_1_0_axi_dma_sofeof_gen
   (axi_dma_tstvec,
    SR,
    s_axi_lite_aclk,
    m_axis_mm2s_tvalid,
    m_axis_mm2s_tready,
    m_axis_mm2s_tlast,
    out);
  output [1:0]axi_dma_tstvec;
  input [0:0]SR;
  input s_axi_lite_aclk;
  input m_axis_mm2s_tvalid;
  input m_axis_mm2s_tready;
  input m_axis_mm2s_tlast;
  input out;

  wire \GEN_FOR_SYNC.s_sof_generated_i_1_n_0 ;
  wire [0:0]SR;
  wire [1:0]axi_dma_tstvec;
  wire m_axis_mm2s_tlast;
  wire m_axis_mm2s_tready;
  wire m_axis_mm2s_tvalid;
  wire out;
  wire p_3_in;
  wire s_axi_lite_aclk;
  wire s_last;
  wire s_last_d1;
  wire s_last_d10;
  wire s_ready;
  wire s_sof_d1_cdc_tig;
  wire s_sof_generated;
  wire s_valid;
  wire s_valid_d1;

  LUT3 #(
    .INIT(8'h80)) 
    \GEN_FOR_SYNC.s_last_d1_i_1 
       (.I0(s_valid),
        .I1(s_ready),
        .I2(s_last),
        .O(s_last_d10));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_FOR_SYNC.s_last_d1_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_last_d10),
        .Q(s_last_d1),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_FOR_SYNC.s_last_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(m_axis_mm2s_tlast),
        .Q(s_last),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_FOR_SYNC.s_ready_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(m_axis_mm2s_tready),
        .Q(s_ready),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_FOR_SYNC.s_sof_d1_cdc_tig_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_sof_generated),
        .Q(s_sof_d1_cdc_tig),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000FBAA0000)) 
    \GEN_FOR_SYNC.s_sof_generated_i_1 
       (.I0(s_sof_generated),
        .I1(s_valid_d1),
        .I2(s_sof_d1_cdc_tig),
        .I3(p_3_in),
        .I4(out),
        .I5(axi_dma_tstvec[1]),
        .O(\GEN_FOR_SYNC.s_sof_generated_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_FOR_SYNC.s_sof_generated_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_FOR_SYNC.s_sof_generated_i_1_n_0 ),
        .Q(s_sof_generated),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_FOR_SYNC.s_valid_d1_i_1 
       (.I0(s_ready),
        .I1(s_valid),
        .O(p_3_in));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_FOR_SYNC.s_valid_d1_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(p_3_in),
        .Q(s_valid_d1),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_FOR_SYNC.s_valid_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(m_axis_mm2s_tvalid),
        .Q(s_valid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0D000000)) 
    \axi_dma_tstvec[0]_INST_0 
       (.I0(s_valid_d1),
        .I1(s_sof_d1_cdc_tig),
        .I2(s_sof_generated),
        .I3(s_ready),
        .I4(s_valid),
        .O(axi_dma_tstvec[0]));
  LUT6 #(
    .INIT(64'h40C0404000000000)) 
    \axi_dma_tstvec[1]_INST_0 
       (.I0(s_last_d1),
        .I1(s_valid),
        .I2(s_ready),
        .I3(s_sof_generated),
        .I4(s_sof_d1_cdc_tig),
        .I5(s_last),
        .O(axi_dma_tstvec[1]));
endmodule

module system_axi_dma_1_0_cdc_sync
   (scndry_out,
    axi_resetn,
    s_axi_lite_aclk);
  output scndry_out;
  input axi_resetn;
  input s_axi_lite_aclk;

  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  wire Q;
  wire axi_resetn;
  wire s_axi_lite_aclk;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi_resetn),
        .Q(Q),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(Q),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module system_axi_dma_1_0_cdc_sync_0
   (scndry_out,
    axi_resetn,
    s_axi_lite_aclk);
  output scndry_out;
  input axi_resetn;
  input s_axi_lite_aclk;

  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  wire Q;
  wire axi_resetn;
  wire s_axi_lite_aclk;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi_resetn),
        .Q(Q),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(Q),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(scndry_out),
        .R(1'b0));
endmodule

module system_axi_dma_1_0_cntr_incr_decr_addn_f
   (fifo_full_p1,
    Q,
    sig_next_sequential_reg_reg,
    E,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    D,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    \sig_addr_posted_cntr_reg[0] ,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg_1,
    m_axi_mm2s_rlast_0,
    FIFO_Full_reg,
    sig_mstr2data_cmd_valid,
    \INFERRED_GEN.cnt_i_reg[0]_0 ,
    \INFERRED_GEN.cnt_i_reg[0]_1 ,
    sig_dqual_reg_empty,
    sig_dqual_reg_empty_reg,
    sig_next_sequential_reg,
    \sig_dbeat_cntr_reg[0] ,
    \sig_dbeat_cntr_reg[5] ,
    \sig_dbeat_cntr_reg[7] ,
    sig_cmd_stat_rst_user_reg_n_cdc_from,
    sig_ld_new_cmd_reg,
    sig_dqual_reg_empty_reg_0,
    sig_rsc2stat_status_valid,
    sig_stat2rsc_status_ready,
    \sig_dbeat_cntr[7]_i_3 ,
    \sig_dbeat_cntr[7]_i_3_0 ,
    \sig_dbeat_cntr[7]_i_3_1 ,
    full,
    sig_dqual_reg_empty_reg_1,
    m_axi_mm2s_rvalid,
    sig_dqual_reg_full,
    \sig_dbeat_cntr[7]_i_3_2 ,
    sig_last_dbeat_reg,
    out,
    sig_first_dbeat_reg,
    m_axi_mm2s_rlast,
    SS,
    m_axi_mm2s_aclk);
  output fifo_full_p1;
  output [1:0]Q;
  output sig_next_sequential_reg_reg;
  output [0:0]E;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  output [6:0]D;
  output sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  output \sig_addr_posted_cntr_reg[0] ;
  output sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  output sig_cmd_stat_rst_user_reg_n_cdc_from_reg_1;
  output m_axi_mm2s_rlast_0;
  input FIFO_Full_reg;
  input sig_mstr2data_cmd_valid;
  input \INFERRED_GEN.cnt_i_reg[0]_0 ;
  input \INFERRED_GEN.cnt_i_reg[0]_1 ;
  input sig_dqual_reg_empty;
  input sig_dqual_reg_empty_reg;
  input sig_next_sequential_reg;
  input \sig_dbeat_cntr_reg[0] ;
  input \sig_dbeat_cntr_reg[5] ;
  input [7:0]\sig_dbeat_cntr_reg[7] ;
  input sig_cmd_stat_rst_user_reg_n_cdc_from;
  input sig_ld_new_cmd_reg;
  input sig_dqual_reg_empty_reg_0;
  input sig_rsc2stat_status_valid;
  input sig_stat2rsc_status_ready;
  input \sig_dbeat_cntr[7]_i_3 ;
  input \sig_dbeat_cntr[7]_i_3_0 ;
  input \sig_dbeat_cntr[7]_i_3_1 ;
  input full;
  input sig_dqual_reg_empty_reg_1;
  input m_axi_mm2s_rvalid;
  input sig_dqual_reg_full;
  input \sig_dbeat_cntr[7]_i_3_2 ;
  input sig_last_dbeat_reg;
  input [0:0]out;
  input sig_first_dbeat_reg;
  input m_axi_mm2s_rlast;
  input [0:0]SS;
  input m_axi_mm2s_aclk;

  wire [6:0]D;
  wire [0:0]E;
  wire FIFO_Full_reg;
  wire \INFERRED_GEN.cnt_i_reg[0]_0 ;
  wire \INFERRED_GEN.cnt_i_reg[0]_1 ;
  wire [1:0]Q;
  wire [0:0]SS;
  wire \USE_SRL_FIFO.sig_rd_empty ;
  wire [2:0]addr_i_p1;
  wire fifo_full_p1;
  wire full;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire m_axi_mm2s_aclk;
  wire m_axi_mm2s_rlast;
  wire m_axi_mm2s_rlast_0;
  wire m_axi_mm2s_rvalid;
  wire [0:0]out;
  wire \sig_addr_posted_cntr_reg[0] ;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg_1;
  wire \sig_dbeat_cntr[7]_i_3 ;
  wire \sig_dbeat_cntr[7]_i_3_0 ;
  wire \sig_dbeat_cntr[7]_i_3_1 ;
  wire \sig_dbeat_cntr[7]_i_3_2 ;
  wire \sig_dbeat_cntr_reg[0] ;
  wire \sig_dbeat_cntr_reg[5] ;
  wire [7:0]\sig_dbeat_cntr_reg[7] ;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_empty_reg;
  wire sig_dqual_reg_empty_reg_0;
  wire sig_dqual_reg_empty_reg_1;
  wire sig_dqual_reg_full;
  wire sig_first_dbeat_reg;
  wire sig_last_dbeat_reg;
  wire sig_ld_new_cmd_reg;
  wire sig_mstr2data_cmd_valid;
  wire sig_next_cmd_cmplt_reg_i_4_n_0;
  wire sig_next_cmd_cmplt_reg_i_6_n_0;
  wire sig_next_sequential_reg;
  wire sig_next_sequential_reg_reg;
  wire sig_rsc2stat_status_valid;
  wire sig_stat2rsc_status_ready;

  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT5 #(
    .INIT(32'h80009200)) 
    FIFO_Full_i_1__0
       (.I0(Q[0]),
        .I1(sig_next_sequential_reg_reg),
        .I2(FIFO_Full_reg),
        .I3(Q[1]),
        .I4(\USE_SRL_FIFO.sig_rd_empty ),
        .O(fifo_full_p1));
  LUT5 #(
    .INIT(32'h5595AA6A)) 
    \INFERRED_GEN.cnt_i[0]_i_1__0 
       (.I0(Q[0]),
        .I1(sig_mstr2data_cmd_valid),
        .I2(\INFERRED_GEN.cnt_i_reg[0]_0 ),
        .I3(\INFERRED_GEN.cnt_i_reg[0]_1 ),
        .I4(sig_next_sequential_reg_reg),
        .O(addr_i_p1[0]));
  LUT6 #(
    .INIT(64'hAAEAFF7F55150080)) 
    \INFERRED_GEN.cnt_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(sig_mstr2data_cmd_valid),
        .I2(\INFERRED_GEN.cnt_i_reg[0]_0 ),
        .I3(\INFERRED_GEN.cnt_i_reg[0]_1 ),
        .I4(sig_next_sequential_reg_reg),
        .I5(Q[1]),
        .O(addr_i_p1[1]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT5 #(
    .INIT(32'h006A03AA)) 
    \INFERRED_GEN.cnt_i[2]_i_1__0 
       (.I0(\USE_SRL_FIFO.sig_rd_empty ),
        .I1(Q[1]),
        .I2(FIFO_Full_reg),
        .I3(sig_next_sequential_reg_reg),
        .I4(Q[0]),
        .O(addr_i_p1[2]));
  FDSE \INFERRED_GEN.cnt_i_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(Q[0]),
        .S(SS));
  FDSE \INFERRED_GEN.cnt_i_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(Q[1]),
        .S(SS));
  FDSE \INFERRED_GEN.cnt_i_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(\USE_SRL_FIFO.sig_rd_empty ),
        .S(SS));
  LUT3 #(
    .INIT(8'h41)) 
    \sig_dbeat_cntr[1]_i_1 
       (.I0(sig_next_sequential_reg_reg),
        .I1(\sig_dbeat_cntr_reg[7] [1]),
        .I2(\sig_dbeat_cntr_reg[7] [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT4 #(
    .INIT(16'h00E1)) 
    \sig_dbeat_cntr[2]_i_1 
       (.I0(\sig_dbeat_cntr_reg[7] [0]),
        .I1(\sig_dbeat_cntr_reg[7] [1]),
        .I2(\sig_dbeat_cntr_reg[7] [2]),
        .I3(sig_next_sequential_reg_reg),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT5 #(
    .INIT(32'h0000FE01)) 
    \sig_dbeat_cntr[3]_i_1 
       (.I0(\sig_dbeat_cntr_reg[7] [1]),
        .I1(\sig_dbeat_cntr_reg[7] [0]),
        .I2(\sig_dbeat_cntr_reg[7] [2]),
        .I3(\sig_dbeat_cntr_reg[7] [3]),
        .I4(sig_next_sequential_reg_reg),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h00000000FFFE0001)) 
    \sig_dbeat_cntr[4]_i_1 
       (.I0(\sig_dbeat_cntr_reg[7] [1]),
        .I1(\sig_dbeat_cntr_reg[7] [0]),
        .I2(\sig_dbeat_cntr_reg[7] [3]),
        .I3(\sig_dbeat_cntr_reg[7] [2]),
        .I4(\sig_dbeat_cntr_reg[7] [4]),
        .I5(sig_next_sequential_reg_reg),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT4 #(
    .INIT(16'h00D2)) 
    \sig_dbeat_cntr[5]_i_1 
       (.I0(\sig_dbeat_cntr_reg[5] ),
        .I1(\sig_dbeat_cntr_reg[7] [4]),
        .I2(\sig_dbeat_cntr_reg[7] [5]),
        .I3(sig_next_sequential_reg_reg),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT5 #(
    .INIT(32'h55450010)) 
    \sig_dbeat_cntr[6]_i_1 
       (.I0(sig_next_sequential_reg_reg),
        .I1(\sig_dbeat_cntr_reg[7] [4]),
        .I2(\sig_dbeat_cntr_reg[5] ),
        .I3(\sig_dbeat_cntr_reg[7] [5]),
        .I4(\sig_dbeat_cntr_reg[7] [6]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFF54444444)) 
    \sig_dbeat_cntr[7]_i_1 
       (.I0(sig_next_cmd_cmplt_reg_i_4_n_0),
        .I1(sig_dqual_reg_empty),
        .I2(sig_dqual_reg_empty_reg),
        .I3(sig_next_sequential_reg),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ),
        .I5(\sig_dbeat_cntr_reg[0] ),
        .O(E));
  LUT6 #(
    .INIT(64'h5555545500000100)) 
    \sig_dbeat_cntr[7]_i_2 
       (.I0(sig_next_sequential_reg_reg),
        .I1(\sig_dbeat_cntr_reg[7] [6]),
        .I2(\sig_dbeat_cntr_reg[7] [5]),
        .I3(\sig_dbeat_cntr_reg[5] ),
        .I4(\sig_dbeat_cntr_reg[7] [4]),
        .I5(\sig_dbeat_cntr_reg[7] [7]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h4044FFFF)) 
    sig_first_dbeat_i_1
       (.I0(sig_next_sequential_reg_reg),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ),
        .I2(sig_first_dbeat_reg),
        .I3(\sig_dbeat_cntr_reg[5] ),
        .I4(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .O(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_1));
  LUT6 #(
    .INIT(64'h1DFF00001D000000)) 
    sig_last_dbeat_i_1
       (.I0(sig_last_dbeat_reg),
        .I1(sig_next_sequential_reg_reg),
        .I2(out),
        .I3(E),
        .I4(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .I5(sig_dqual_reg_empty_reg),
        .O(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'h08)) 
    sig_ld_new_cmd_reg_i_1
       (.I0(sig_next_sequential_reg_reg),
        .I1(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .I2(sig_ld_new_cmd_reg),
        .O(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT4 #(
    .INIT(16'h40FF)) 
    sig_next_cmd_cmplt_reg_i_1
       (.I0(sig_next_sequential_reg_reg),
        .I1(m_axi_mm2s_rlast),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ),
        .I3(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .O(m_axi_mm2s_rlast_0));
  LUT5 #(
    .INIT(32'h0000FF80)) 
    sig_next_cmd_cmplt_reg_i_2
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ),
        .I1(sig_next_sequential_reg),
        .I2(sig_dqual_reg_empty_reg),
        .I3(sig_dqual_reg_empty),
        .I4(sig_next_cmd_cmplt_reg_i_4_n_0),
        .O(sig_next_sequential_reg_reg));
  LUT4 #(
    .INIT(16'h00D0)) 
    sig_next_cmd_cmplt_reg_i_3
       (.I0(full),
        .I1(sig_dqual_reg_empty_reg_1),
        .I2(m_axi_mm2s_rvalid),
        .I3(\sig_addr_posted_cntr_reg[0] ),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT5 #(
    .INIT(32'hFEFEFFFE)) 
    sig_next_cmd_cmplt_reg_i_4
       (.I0(sig_next_cmd_cmplt_reg_i_6_n_0),
        .I1(sig_dqual_reg_empty_reg_0),
        .I2(\USE_SRL_FIFO.sig_rd_empty ),
        .I3(sig_rsc2stat_status_valid),
        .I4(sig_stat2rsc_status_ready),
        .O(sig_next_cmd_cmplt_reg_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF01FFFF)) 
    sig_next_cmd_cmplt_reg_i_5
       (.I0(\sig_dbeat_cntr[7]_i_3_1 ),
        .I1(\sig_dbeat_cntr[7]_i_3_0 ),
        .I2(\sig_dbeat_cntr[7]_i_3 ),
        .I3(sig_dqual_reg_empty_reg_0),
        .I4(sig_dqual_reg_full),
        .I5(\sig_dbeat_cntr[7]_i_3_2 ),
        .O(\sig_addr_posted_cntr_reg[0] ));
  LUT3 #(
    .INIT(8'h80)) 
    sig_next_cmd_cmplt_reg_i_6
       (.I0(\sig_dbeat_cntr[7]_i_3 ),
        .I1(\sig_dbeat_cntr[7]_i_3_0 ),
        .I2(\sig_dbeat_cntr[7]_i_3_1 ),
        .O(sig_next_cmd_cmplt_reg_i_6_n_0));
endmodule

(* ORIG_REF_NAME = "cntr_incr_decr_addn_f" *) 
module system_axi_dma_1_0_cntr_incr_decr_addn_f_1
   (fifo_full_p1,
    Q,
    sig_halt_reg_reg,
    \INFERRED_GEN.cnt_i_reg[2]_0 ,
    FIFO_Full_reg,
    \INFERRED_GEN.cnt_i_reg[1]_0 ,
    \INFERRED_GEN.cnt_i_reg[1]_1 ,
    sig_mstr2addr_cmd_valid,
    sig_data2addr_stop_req,
    sig_sf_allow_addr_req,
    sig_addr_reg_empty,
    sig_cmd_stat_rst_user_reg_n_cdc_from,
    SS,
    m_axi_mm2s_aclk);
  output fifo_full_p1;
  output [1:0]Q;
  output sig_halt_reg_reg;
  output \INFERRED_GEN.cnt_i_reg[2]_0 ;
  input FIFO_Full_reg;
  input \INFERRED_GEN.cnt_i_reg[1]_0 ;
  input \INFERRED_GEN.cnt_i_reg[1]_1 ;
  input sig_mstr2addr_cmd_valid;
  input sig_data2addr_stop_req;
  input sig_sf_allow_addr_req;
  input sig_addr_reg_empty;
  input sig_cmd_stat_rst_user_reg_n_cdc_from;
  input [0:0]SS;
  input m_axi_mm2s_aclk;

  wire FIFO_Full_reg;
  wire \INFERRED_GEN.cnt_i_reg[1]_0 ;
  wire \INFERRED_GEN.cnt_i_reg[1]_1 ;
  wire \INFERRED_GEN.cnt_i_reg[2]_0 ;
  wire [1:0]Q;
  wire [0:0]SS;
  wire \USE_SRL_FIFO.sig_rd_empty ;
  wire [2:0]addr_i_p1;
  wire fifo_full_p1;
  wire m_axi_mm2s_aclk;
  wire sig_addr_reg_empty;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from;
  wire sig_data2addr_stop_req;
  wire sig_halt_reg_reg;
  wire sig_mstr2addr_cmd_valid;
  wire sig_sf_allow_addr_req;

  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h80008208)) 
    FIFO_Full_i_1__1
       (.I0(Q[1]),
        .I1(FIFO_Full_reg),
        .I2(sig_halt_reg_reg),
        .I3(Q[0]),
        .I4(\USE_SRL_FIFO.sig_rd_empty ),
        .O(fifo_full_p1));
  LUT5 #(
    .INIT(32'h08F7F708)) 
    \INFERRED_GEN.cnt_i[0]_i_1__1 
       (.I0(sig_mstr2addr_cmd_valid),
        .I1(\INFERRED_GEN.cnt_i_reg[1]_1 ),
        .I2(\INFERRED_GEN.cnt_i_reg[1]_0 ),
        .I3(sig_halt_reg_reg),
        .I4(Q[0]),
        .O(addr_i_p1[0]));
  LUT6 #(
    .INIT(64'hA69AA6A6A6A6A6A6)) 
    \INFERRED_GEN.cnt_i[1]_i_1__1 
       (.I0(Q[1]),
        .I1(sig_halt_reg_reg),
        .I2(Q[0]),
        .I3(\INFERRED_GEN.cnt_i_reg[1]_0 ),
        .I4(\INFERRED_GEN.cnt_i_reg[1]_1 ),
        .I5(sig_mstr2addr_cmd_valid),
        .O(addr_i_p1[1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h060A0A3A)) 
    \INFERRED_GEN.cnt_i[2]_i_1__1 
       (.I0(\USE_SRL_FIFO.sig_rd_empty ),
        .I1(Q[0]),
        .I2(sig_halt_reg_reg),
        .I3(FIFO_Full_reg),
        .I4(Q[1]),
        .O(addr_i_p1[2]));
  FDSE \INFERRED_GEN.cnt_i_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(Q[0]),
        .S(SS));
  FDSE \INFERRED_GEN.cnt_i_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(Q[1]),
        .S(SS));
  FDSE \INFERRED_GEN.cnt_i_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(\USE_SRL_FIFO.sig_rd_empty ),
        .S(SS));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \sig_next_addr_reg[31]_i_2 
       (.I0(sig_data2addr_stop_req),
        .I1(sig_sf_allow_addr_req),
        .I2(sig_addr_reg_empty),
        .I3(\USE_SRL_FIFO.sig_rd_empty ),
        .O(sig_halt_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    sig_posted_to_axi_2_i_1
       (.I0(\USE_SRL_FIFO.sig_rd_empty ),
        .I1(sig_addr_reg_empty),
        .I2(sig_sf_allow_addr_req),
        .I3(sig_data2addr_stop_req),
        .I4(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .O(\INFERRED_GEN.cnt_i_reg[2]_0 ));
endmodule

(* ORIG_REF_NAME = "cntr_incr_decr_addn_f" *) 
module system_axi_dma_1_0_cntr_incr_decr_addn_f_2
   (fifo_full_p1,
    Q,
    FIFO_Full_reg,
    \INFERRED_GEN.cnt_i_reg[2]_0 ,
    sig_mstr2sf_cmd_valid,
    \INFERRED_GEN.cnt_i_reg[0]_0 ,
    \INFERRED_GEN.cnt_i_reg[0]_1 ,
    \OMIT_UNPACKING.lsig_ld_cmd ,
    SS,
    m_axi_mm2s_aclk);
  output fifo_full_p1;
  output [0:0]Q;
  output FIFO_Full_reg;
  input \INFERRED_GEN.cnt_i_reg[2]_0 ;
  input sig_mstr2sf_cmd_valid;
  input \INFERRED_GEN.cnt_i_reg[0]_0 ;
  input \INFERRED_GEN.cnt_i_reg[0]_1 ;
  input \OMIT_UNPACKING.lsig_ld_cmd ;
  input [0:0]SS;
  input m_axi_mm2s_aclk;

  wire FIFO_Full_reg;
  wire \INFERRED_GEN.cnt_i_reg[0]_0 ;
  wire \INFERRED_GEN.cnt_i_reg[0]_1 ;
  wire \INFERRED_GEN.cnt_i_reg[2]_0 ;
  wire \INFERRED_GEN.cnt_i_reg_n_0_[0] ;
  wire \INFERRED_GEN.cnt_i_reg_n_0_[1] ;
  wire \OMIT_UNPACKING.lsig_ld_cmd ;
  wire [0:0]Q;
  wire [0:0]SS;
  wire [2:0]addr_i_p1;
  wire fifo_full_p1;
  wire m_axi_mm2s_aclk;
  wire sig_mstr2sf_cmd_valid;

  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h02202000)) 
    FIFO_Full_i_1
       (.I0(\INFERRED_GEN.cnt_i_reg_n_0_[1] ),
        .I1(Q),
        .I2(\INFERRED_GEN.cnt_i_reg[2]_0 ),
        .I3(\INFERRED_GEN.cnt_i_reg_n_0_[0] ),
        .I4(FIFO_Full_reg),
        .O(fifo_full_p1));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h5595AA6A)) 
    \INFERRED_GEN.cnt_i[0]_i_1 
       (.I0(\INFERRED_GEN.cnt_i_reg_n_0_[0] ),
        .I1(sig_mstr2sf_cmd_valid),
        .I2(\INFERRED_GEN.cnt_i_reg[0]_0 ),
        .I3(\INFERRED_GEN.cnt_i_reg[0]_1 ),
        .I4(\OMIT_UNPACKING.lsig_ld_cmd ),
        .O(addr_i_p1[0]));
  LUT6 #(
    .INIT(64'hAAEAFF7F55150080)) 
    \INFERRED_GEN.cnt_i[1]_i_1 
       (.I0(\INFERRED_GEN.cnt_i_reg_n_0_[0] ),
        .I1(sig_mstr2sf_cmd_valid),
        .I2(\INFERRED_GEN.cnt_i_reg[0]_0 ),
        .I3(\INFERRED_GEN.cnt_i_reg[0]_1 ),
        .I4(\OMIT_UNPACKING.lsig_ld_cmd ),
        .I5(\INFERRED_GEN.cnt_i_reg_n_0_[1] ),
        .O(addr_i_p1[1]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h7780FF01)) 
    \INFERRED_GEN.cnt_i[2]_i_1 
       (.I0(FIFO_Full_reg),
        .I1(\INFERRED_GEN.cnt_i_reg_n_0_[0] ),
        .I2(\INFERRED_GEN.cnt_i_reg[2]_0 ),
        .I3(Q),
        .I4(\INFERRED_GEN.cnt_i_reg_n_0_[1] ),
        .O(addr_i_p1[2]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \INFERRED_GEN.cnt_i[2]_i_2 
       (.I0(\INFERRED_GEN.cnt_i_reg[0]_1 ),
        .I1(\INFERRED_GEN.cnt_i_reg[0]_0 ),
        .I2(sig_mstr2sf_cmd_valid),
        .O(FIFO_Full_reg));
  FDSE \INFERRED_GEN.cnt_i_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(\INFERRED_GEN.cnt_i_reg_n_0_[0] ),
        .S(SS));
  FDSE \INFERRED_GEN.cnt_i_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(\INFERRED_GEN.cnt_i_reg_n_0_[1] ),
        .S(SS));
  FDSE \INFERRED_GEN.cnt_i_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(Q),
        .S(SS));
endmodule

module system_axi_dma_1_0_dynshreg_f
   (FIFO_Full_reg,
    sig_calc_error_reg_reg,
    out,
    sig_calc_error_reg_reg_0,
    sig_calc_error_reg_reg_1,
    sig_mstr2addr_cmd_valid,
    in,
    Q,
    m_axi_mm2s_aclk);
  output FIFO_Full_reg;
  output sig_calc_error_reg_reg;
  output [36:0]out;
  input sig_calc_error_reg_reg_0;
  input sig_calc_error_reg_reg_1;
  input sig_mstr2addr_cmd_valid;
  input [34:0]in;
  input [1:0]Q;
  input m_axi_mm2s_aclk;

  wire FIFO_Full_reg;
  wire [1:0]Q;
  wire [34:0]in;
  wire m_axi_mm2s_aclk;
  wire [36:0]out;
  wire sig_calc_error_reg_reg;
  wire sig_calc_error_reg_reg_0;
  wire sig_calc_error_reg_reg_1;
  wire sig_mstr2addr_cmd_valid;

  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][11]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][11]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[33]),
        .Q(out[35]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][12]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][12]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(1'b1),
        .Q(out[34]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][14]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][14]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(1'b1),
        .Q(out[33]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][22]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][22]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[32]),
        .Q(out[32]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][23]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][23]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[31]),
        .Q(out[31]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][24]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][24]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[30]),
        .Q(out[30]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][25]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][25]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[29]),
        .Q(out[29]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][26]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][26]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[28]),
        .Q(out[28]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][27]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][27]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[27]),
        .Q(out[27]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][28]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][28]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[26]),
        .Q(out[26]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][29]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][29]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[25]),
        .Q(out[25]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][30]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][30]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[24]),
        .Q(out[24]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][31]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][31]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[23]),
        .Q(out[23]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][32]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][32]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[22]),
        .Q(out[22]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][33]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][33]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[21]),
        .Q(out[21]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][34]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][34]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[20]),
        .Q(out[20]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][35]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][35]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[19]),
        .Q(out[19]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][36]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][36]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[18]),
        .Q(out[18]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][37]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][37]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[17]),
        .Q(out[17]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][38]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][38]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[16]),
        .Q(out[16]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][39]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][39]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[15]),
        .Q(out[15]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][40]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][40]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[14]),
        .Q(out[14]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][41]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][41]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[13]),
        .Q(out[13]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][42]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][42]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[12]),
        .Q(out[12]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][43]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][43]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[11]),
        .Q(out[11]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][44]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][44]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[10]),
        .Q(out[10]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][45]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][45]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[9]),
        .Q(out[9]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][46]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][46]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[8]),
        .Q(out[8]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][47]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][47]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[7]),
        .Q(out[7]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][48]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][48]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[6]),
        .Q(out[6]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][49]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][49]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[5]),
        .Q(out[5]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][50]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][50]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[4]),
        .Q(out[4]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][51]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][51]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[3]),
        .Q(out[3]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][52]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][52]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[2]),
        .Q(out[2]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][53]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][53]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[1]),
        .Q(out[1]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][54]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][54]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[0]),
        .Q(out[0]));
  LUT3 #(
    .INIT(8'h40)) 
    \INFERRED_GEN.data_reg[3][54]_srl4_i_1 
       (.I0(sig_calc_error_reg_reg_0),
        .I1(sig_calc_error_reg_reg_1),
        .I2(sig_mstr2addr_cmd_valid),
        .O(FIFO_Full_reg));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][8]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][8]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[34]),
        .Q(out[36]));
  LUT1 #(
    .INIT(2'h1)) 
    sig_addr_valid_reg_i_1
       (.I0(out[36]),
        .O(sig_calc_error_reg_reg));
endmodule

(* ORIG_REF_NAME = "dynshreg_f" *) 
module system_axi_dma_1_0_dynshreg_f__parameterized0
   (FIFO_Full_reg,
    D,
    out,
    sig_next_calc_error_reg_reg,
    sig_next_calc_error_reg_reg_0,
    sig_mstr2data_cmd_valid,
    \sig_dbeat_cntr_reg[0] ,
    Q,
    in,
    sig_next_calc_error_reg_reg_1,
    m_axi_mm2s_aclk);
  output FIFO_Full_reg;
  output [0:0]D;
  output [68:0]out;
  input sig_next_calc_error_reg_reg;
  input sig_next_calc_error_reg_reg_0;
  input sig_mstr2data_cmd_valid;
  input \sig_dbeat_cntr_reg[0] ;
  input [0:0]Q;
  input [68:0]in;
  input [1:0]sig_next_calc_error_reg_reg_1;
  input m_axi_mm2s_aclk;

  wire [0:0]D;
  wire FIFO_Full_reg;
  wire [0:0]Q;
  wire [68:0]in;
  wire m_axi_mm2s_aclk;
  wire [68:0]out;
  wire \sig_dbeat_cntr_reg[0] ;
  wire sig_mstr2data_cmd_valid;
  wire sig_next_calc_error_reg_reg;
  wire sig_next_calc_error_reg_reg_0;
  wire [1:0]sig_next_calc_error_reg_reg_1;

  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][10]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][10]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[61]),
        .Q(out[61]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][11]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][11]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[60]),
        .Q(out[60]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][12]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][12]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[59]),
        .Q(out[59]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][13]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][13]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[58]),
        .Q(out[58]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][14]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][14]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[57]),
        .Q(out[57]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][15]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][15]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[56]),
        .Q(out[56]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][16]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][16]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[55]),
        .Q(out[55]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][17]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][17]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[54]),
        .Q(out[54]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][18]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][18]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[53]),
        .Q(out[53]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][19]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][19]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[52]),
        .Q(out[52]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][20]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][20]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[51]),
        .Q(out[51]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][21]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][21]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[50]),
        .Q(out[50]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][22]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][22]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[49]),
        .Q(out[49]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][23]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][23]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[48]),
        .Q(out[48]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][24]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][24]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[47]),
        .Q(out[47]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][25]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][25]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[46]),
        .Q(out[46]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][26]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][26]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[45]),
        .Q(out[45]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][27]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][27]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[44]),
        .Q(out[44]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][28]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][28]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[43]),
        .Q(out[43]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][29]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][29]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[42]),
        .Q(out[42]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][2]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][2]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[68]),
        .Q(out[68]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][30]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][30]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[41]),
        .Q(out[41]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][31]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][31]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[40]),
        .Q(out[40]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][32]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][32]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[39]),
        .Q(out[39]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][33]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][33]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[38]),
        .Q(out[38]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][34]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][34]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[37]),
        .Q(out[37]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][35]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][35]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[36]),
        .Q(out[36]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][36]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][36]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[35]),
        .Q(out[35]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][37]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][37]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[34]),
        .Q(out[34]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][38]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][38]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[33]),
        .Q(out[33]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][39]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][39]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[32]),
        .Q(out[32]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][3]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][3]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[67]),
        .Q(out[67]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][40]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][40]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[31]),
        .Q(out[31]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][41]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][41]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[30]),
        .Q(out[30]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][42]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][42]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[29]),
        .Q(out[29]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][43]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][43]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[28]),
        .Q(out[28]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][44]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][44]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[27]),
        .Q(out[27]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][45]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][45]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[26]),
        .Q(out[26]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][46]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][46]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[25]),
        .Q(out[25]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][47]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][47]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[24]),
        .Q(out[24]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][48]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][48]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[23]),
        .Q(out[23]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][49]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][49]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[22]),
        .Q(out[22]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][4]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][4]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[66]),
        .Q(out[66]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][50]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][50]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[21]),
        .Q(out[21]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][51]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][51]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[20]),
        .Q(out[20]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][52]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][52]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[19]),
        .Q(out[19]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][53]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][53]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[18]),
        .Q(out[18]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][54]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][54]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[17]),
        .Q(out[17]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][55]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][55]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[16]),
        .Q(out[16]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][56]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][56]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[15]),
        .Q(out[15]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][57]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][57]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[14]),
        .Q(out[14]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][58]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][58]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[13]),
        .Q(out[13]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][59]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][59]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[12]),
        .Q(out[12]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][5]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][5]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[65]),
        .Q(out[65]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][60]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][60]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[11]),
        .Q(out[11]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][61]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][61]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[10]),
        .Q(out[10]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][62]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][62]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[9]),
        .Q(out[9]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][63]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][63]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[8]),
        .Q(out[8]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][64]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][64]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[7]),
        .Q(out[7]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][65]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][65]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[6]),
        .Q(out[6]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][66]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][66]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[5]),
        .Q(out[5]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][67]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][67]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[4]),
        .Q(out[4]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][68]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][68]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[3]),
        .Q(out[3]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][69]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][69]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[2]),
        .Q(out[2]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][70]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][70]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[1]),
        .Q(out[1]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][78]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][78]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[0]),
        .Q(out[0]));
  LUT3 #(
    .INIT(8'h40)) 
    \INFERRED_GEN.data_reg[3][78]_srl4_i_1 
       (.I0(sig_next_calc_error_reg_reg),
        .I1(sig_next_calc_error_reg_reg_0),
        .I2(sig_mstr2data_cmd_valid),
        .O(FIFO_Full_reg));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][7]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][7]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[64]),
        .Q(out[64]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][8]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][8]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[63]),
        .Q(out[63]));
  (* srl_bus_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\\I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][9]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][9]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(m_axi_mm2s_aclk),
        .D(in[62]),
        .Q(out[62]));
  LUT3 #(
    .INIT(8'h8B)) 
    \sig_dbeat_cntr[0]_i_1 
       (.I0(out[0]),
        .I1(\sig_dbeat_cntr_reg[0] ),
        .I2(Q),
        .O(D));
endmodule

module system_axi_dma_1_0_srl_fifo_f
   (FIFO_Full_reg,
    FIFO_Full_reg_0,
    sig_halt_reg_reg,
    sig_calc_error_reg_reg,
    out,
    \INFERRED_GEN.cnt_i_reg[2] ,
    SS,
    m_axi_mm2s_aclk,
    \INFERRED_GEN.cnt_i_reg[1] ,
    sig_mstr2addr_cmd_valid,
    sig_data2addr_stop_req,
    sig_sf_allow_addr_req,
    sig_addr_reg_empty,
    sig_cmd_stat_rst_user_reg_n_cdc_from,
    in);
  output FIFO_Full_reg;
  output FIFO_Full_reg_0;
  output sig_halt_reg_reg;
  output sig_calc_error_reg_reg;
  output [36:0]out;
  output \INFERRED_GEN.cnt_i_reg[2] ;
  input [0:0]SS;
  input m_axi_mm2s_aclk;
  input \INFERRED_GEN.cnt_i_reg[1] ;
  input sig_mstr2addr_cmd_valid;
  input sig_data2addr_stop_req;
  input sig_sf_allow_addr_req;
  input sig_addr_reg_empty;
  input sig_cmd_stat_rst_user_reg_n_cdc_from;
  input [34:0]in;

  wire FIFO_Full_reg;
  wire FIFO_Full_reg_0;
  wire \INFERRED_GEN.cnt_i_reg[1] ;
  wire \INFERRED_GEN.cnt_i_reg[2] ;
  wire [0:0]SS;
  wire [34:0]in;
  wire m_axi_mm2s_aclk;
  wire [36:0]out;
  wire sig_addr_reg_empty;
  wire sig_calc_error_reg_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from;
  wire sig_data2addr_stop_req;
  wire sig_halt_reg_reg;
  wire sig_mstr2addr_cmd_valid;
  wire sig_sf_allow_addr_req;

  system_axi_dma_1_0_srl_fifo_rbu_f I_SRL_FIFO_RBU_F
       (.FIFO_Full_reg_0(FIFO_Full_reg),
        .\INFERRED_GEN.cnt_i_reg[1] (\INFERRED_GEN.cnt_i_reg[1] ),
        .\INFERRED_GEN.cnt_i_reg[2] (\INFERRED_GEN.cnt_i_reg[2] ),
        .SS(SS),
        .in(in),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .out(out),
        .sel(FIFO_Full_reg_0),
        .sig_addr_reg_empty(sig_addr_reg_empty),
        .sig_calc_error_reg_reg(sig_calc_error_reg_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .sig_data2addr_stop_req(sig_data2addr_stop_req),
        .sig_halt_reg_reg(sig_halt_reg_reg),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid),
        .sig_sf_allow_addr_req(sig_sf_allow_addr_req));
endmodule

(* ORIG_REF_NAME = "srl_fifo_f" *) 
module system_axi_dma_1_0_srl_fifo_f__parameterized0
   (FIFO_Full_reg,
    sig_next_sequential_reg_reg,
    FIFO_Full_reg_0,
    E,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    D,
    out,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    \sig_addr_posted_cntr_reg[0] ,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg_1,
    m_axi_mm2s_rlast_0,
    SS,
    m_axi_mm2s_aclk,
    sig_mstr2data_cmd_valid,
    \INFERRED_GEN.cnt_i_reg[0] ,
    sig_dqual_reg_empty,
    sig_dqual_reg_empty_reg,
    sig_next_sequential_reg,
    \sig_dbeat_cntr_reg[0] ,
    \sig_dbeat_cntr_reg[5] ,
    Q,
    sig_cmd_stat_rst_user_reg_n_cdc_from,
    sig_ld_new_cmd_reg,
    sig_dqual_reg_empty_reg_0,
    sig_rsc2stat_status_valid,
    sig_stat2rsc_status_ready,
    \sig_dbeat_cntr[7]_i_3 ,
    \sig_dbeat_cntr[7]_i_3_0 ,
    \sig_dbeat_cntr[7]_i_3_1 ,
    full,
    sig_dqual_reg_empty_reg_1,
    m_axi_mm2s_rvalid,
    sig_dqual_reg_full,
    \sig_dbeat_cntr[7]_i_3_2 ,
    sig_last_dbeat_reg,
    sig_first_dbeat_reg,
    m_axi_mm2s_rlast,
    in);
  output FIFO_Full_reg;
  output sig_next_sequential_reg_reg;
  output FIFO_Full_reg_0;
  output [0:0]E;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  output [7:0]D;
  output [68:0]out;
  output sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  output \sig_addr_posted_cntr_reg[0] ;
  output sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  output sig_cmd_stat_rst_user_reg_n_cdc_from_reg_1;
  output m_axi_mm2s_rlast_0;
  input [0:0]SS;
  input m_axi_mm2s_aclk;
  input sig_mstr2data_cmd_valid;
  input \INFERRED_GEN.cnt_i_reg[0] ;
  input sig_dqual_reg_empty;
  input sig_dqual_reg_empty_reg;
  input sig_next_sequential_reg;
  input \sig_dbeat_cntr_reg[0] ;
  input \sig_dbeat_cntr_reg[5] ;
  input [7:0]Q;
  input sig_cmd_stat_rst_user_reg_n_cdc_from;
  input sig_ld_new_cmd_reg;
  input sig_dqual_reg_empty_reg_0;
  input sig_rsc2stat_status_valid;
  input sig_stat2rsc_status_ready;
  input \sig_dbeat_cntr[7]_i_3 ;
  input \sig_dbeat_cntr[7]_i_3_0 ;
  input \sig_dbeat_cntr[7]_i_3_1 ;
  input full;
  input sig_dqual_reg_empty_reg_1;
  input m_axi_mm2s_rvalid;
  input sig_dqual_reg_full;
  input \sig_dbeat_cntr[7]_i_3_2 ;
  input sig_last_dbeat_reg;
  input sig_first_dbeat_reg;
  input m_axi_mm2s_rlast;
  input [68:0]in;

  wire [7:0]D;
  wire [0:0]E;
  wire FIFO_Full_reg;
  wire FIFO_Full_reg_0;
  wire \INFERRED_GEN.cnt_i_reg[0] ;
  wire [7:0]Q;
  wire [0:0]SS;
  wire full;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire [68:0]in;
  wire m_axi_mm2s_aclk;
  wire m_axi_mm2s_rlast;
  wire m_axi_mm2s_rlast_0;
  wire m_axi_mm2s_rvalid;
  wire [68:0]out;
  wire \sig_addr_posted_cntr_reg[0] ;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg_1;
  wire \sig_dbeat_cntr[7]_i_3 ;
  wire \sig_dbeat_cntr[7]_i_3_0 ;
  wire \sig_dbeat_cntr[7]_i_3_1 ;
  wire \sig_dbeat_cntr[7]_i_3_2 ;
  wire \sig_dbeat_cntr_reg[0] ;
  wire \sig_dbeat_cntr_reg[5] ;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_empty_reg;
  wire sig_dqual_reg_empty_reg_0;
  wire sig_dqual_reg_empty_reg_1;
  wire sig_dqual_reg_full;
  wire sig_first_dbeat_reg;
  wire sig_last_dbeat_reg;
  wire sig_ld_new_cmd_reg;
  wire sig_mstr2data_cmd_valid;
  wire sig_next_sequential_reg;
  wire sig_next_sequential_reg_reg;
  wire sig_rsc2stat_status_valid;
  wire sig_stat2rsc_status_ready;

  system_axi_dma_1_0_srl_fifo_rbu_f__parameterized0 I_SRL_FIFO_RBU_F
       (.D(D),
        .E(E),
        .FIFO_Full_reg_0(FIFO_Full_reg),
        .\INFERRED_GEN.cnt_i_reg[0] (\INFERRED_GEN.cnt_i_reg[0] ),
        .Q(Q),
        .SS(SS),
        .full(full),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ),
        .in(in),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axi_mm2s_rlast(m_axi_mm2s_rlast),
        .m_axi_mm2s_rlast_0(m_axi_mm2s_rlast_0),
        .m_axi_mm2s_rvalid(m_axi_mm2s_rvalid),
        .out(out),
        .sel(FIFO_Full_reg_0),
        .\sig_addr_posted_cntr_reg[0] (\sig_addr_posted_cntr_reg[0] ),
        .sig_cmd_stat_rst_user_reg_n_cdc_from(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg_1(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_1),
        .\sig_dbeat_cntr[7]_i_3 (\sig_dbeat_cntr[7]_i_3 ),
        .\sig_dbeat_cntr[7]_i_3_0 (\sig_dbeat_cntr[7]_i_3_0 ),
        .\sig_dbeat_cntr[7]_i_3_1 (\sig_dbeat_cntr[7]_i_3_1 ),
        .\sig_dbeat_cntr[7]_i_3_2 (\sig_dbeat_cntr[7]_i_3_2 ),
        .\sig_dbeat_cntr_reg[0] (\sig_dbeat_cntr_reg[0] ),
        .\sig_dbeat_cntr_reg[5] (\sig_dbeat_cntr_reg[5] ),
        .sig_dqual_reg_empty(sig_dqual_reg_empty),
        .sig_dqual_reg_empty_reg(sig_dqual_reg_empty_reg),
        .sig_dqual_reg_empty_reg_0(sig_dqual_reg_empty_reg_0),
        .sig_dqual_reg_empty_reg_1(sig_dqual_reg_empty_reg_1),
        .sig_dqual_reg_full(sig_dqual_reg_full),
        .sig_first_dbeat_reg(sig_first_dbeat_reg),
        .sig_last_dbeat_reg(sig_last_dbeat_reg),
        .sig_ld_new_cmd_reg(sig_ld_new_cmd_reg),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_next_sequential_reg(sig_next_sequential_reg),
        .sig_next_sequential_reg_reg(sig_next_sequential_reg_reg),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_stat2rsc_status_ready(sig_stat2rsc_status_ready));
endmodule

(* ORIG_REF_NAME = "srl_fifo_f" *) 
module system_axi_dma_1_0_srl_fifo_f__parameterized1
   (FIFO_Full_reg,
    Q,
    FIFO_Full_reg_0,
    SS,
    m_axi_mm2s_aclk,
    \INFERRED_GEN.cnt_i_reg[2] ,
    sig_mstr2sf_cmd_valid,
    \INFERRED_GEN.cnt_i_reg[0] ,
    \OMIT_UNPACKING.lsig_ld_cmd );
  output FIFO_Full_reg;
  output [0:0]Q;
  output FIFO_Full_reg_0;
  input [0:0]SS;
  input m_axi_mm2s_aclk;
  input \INFERRED_GEN.cnt_i_reg[2] ;
  input sig_mstr2sf_cmd_valid;
  input \INFERRED_GEN.cnt_i_reg[0] ;
  input \OMIT_UNPACKING.lsig_ld_cmd ;

  wire FIFO_Full_reg;
  wire FIFO_Full_reg_0;
  wire \INFERRED_GEN.cnt_i_reg[0] ;
  wire \INFERRED_GEN.cnt_i_reg[2] ;
  wire \OMIT_UNPACKING.lsig_ld_cmd ;
  wire [0:0]Q;
  wire [0:0]SS;
  wire m_axi_mm2s_aclk;
  wire sig_mstr2sf_cmd_valid;

  system_axi_dma_1_0_srl_fifo_rbu_f__parameterized1 I_SRL_FIFO_RBU_F
       (.FIFO_Full_reg_0(FIFO_Full_reg),
        .FIFO_Full_reg_1(FIFO_Full_reg_0),
        .\INFERRED_GEN.cnt_i_reg[0] (\INFERRED_GEN.cnt_i_reg[0] ),
        .\INFERRED_GEN.cnt_i_reg[2] (\INFERRED_GEN.cnt_i_reg[2] ),
        .\OMIT_UNPACKING.lsig_ld_cmd (\OMIT_UNPACKING.lsig_ld_cmd ),
        .Q(Q),
        .SS(SS),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .sig_mstr2sf_cmd_valid(sig_mstr2sf_cmd_valid));
endmodule

module system_axi_dma_1_0_srl_fifo_rbu_f
   (FIFO_Full_reg_0,
    sel,
    sig_halt_reg_reg,
    sig_calc_error_reg_reg,
    out,
    \INFERRED_GEN.cnt_i_reg[2] ,
    SS,
    m_axi_mm2s_aclk,
    \INFERRED_GEN.cnt_i_reg[1] ,
    sig_mstr2addr_cmd_valid,
    sig_data2addr_stop_req,
    sig_sf_allow_addr_req,
    sig_addr_reg_empty,
    sig_cmd_stat_rst_user_reg_n_cdc_from,
    in);
  output FIFO_Full_reg_0;
  output sel;
  output sig_halt_reg_reg;
  output sig_calc_error_reg_reg;
  output [36:0]out;
  output \INFERRED_GEN.cnt_i_reg[2] ;
  input [0:0]SS;
  input m_axi_mm2s_aclk;
  input \INFERRED_GEN.cnt_i_reg[1] ;
  input sig_mstr2addr_cmd_valid;
  input sig_data2addr_stop_req;
  input sig_sf_allow_addr_req;
  input sig_addr_reg_empty;
  input sig_cmd_stat_rst_user_reg_n_cdc_from;
  input [34:0]in;

  wire CNTR_INCR_DECR_ADDN_F_I_n_1;
  wire CNTR_INCR_DECR_ADDN_F_I_n_2;
  wire FIFO_Full_reg_0;
  wire \INFERRED_GEN.cnt_i_reg[1] ;
  wire \INFERRED_GEN.cnt_i_reg[2] ;
  wire [0:0]SS;
  wire fifo_full_p1;
  wire [34:0]in;
  wire m_axi_mm2s_aclk;
  wire [36:0]out;
  wire sel;
  wire sig_addr_reg_empty;
  wire sig_calc_error_reg_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from;
  wire sig_data2addr_stop_req;
  wire sig_halt_reg_reg;
  wire sig_mstr2addr_cmd_valid;
  wire sig_sf_allow_addr_req;

  system_axi_dma_1_0_cntr_incr_decr_addn_f_1 CNTR_INCR_DECR_ADDN_F_I
       (.FIFO_Full_reg(sel),
        .\INFERRED_GEN.cnt_i_reg[1]_0 (FIFO_Full_reg_0),
        .\INFERRED_GEN.cnt_i_reg[1]_1 (\INFERRED_GEN.cnt_i_reg[1] ),
        .\INFERRED_GEN.cnt_i_reg[2]_0 (\INFERRED_GEN.cnt_i_reg[2] ),
        .Q({CNTR_INCR_DECR_ADDN_F_I_n_1,CNTR_INCR_DECR_ADDN_F_I_n_2}),
        .SS(SS),
        .fifo_full_p1(fifo_full_p1),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .sig_addr_reg_empty(sig_addr_reg_empty),
        .sig_cmd_stat_rst_user_reg_n_cdc_from(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .sig_data2addr_stop_req(sig_data2addr_stop_req),
        .sig_halt_reg_reg(sig_halt_reg_reg),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid),
        .sig_sf_allow_addr_req(sig_sf_allow_addr_req));
  system_axi_dma_1_0_dynshreg_f DYNSHREG_F_I
       (.FIFO_Full_reg(sel),
        .Q({CNTR_INCR_DECR_ADDN_F_I_n_1,CNTR_INCR_DECR_ADDN_F_I_n_2}),
        .in(in),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .out(out),
        .sig_calc_error_reg_reg(sig_calc_error_reg_reg),
        .sig_calc_error_reg_reg_0(FIFO_Full_reg_0),
        .sig_calc_error_reg_reg_1(\INFERRED_GEN.cnt_i_reg[1] ),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid));
  FDRE FIFO_Full_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(FIFO_Full_reg_0),
        .R(SS));
endmodule

(* ORIG_REF_NAME = "srl_fifo_rbu_f" *) 
module system_axi_dma_1_0_srl_fifo_rbu_f__parameterized0
   (FIFO_Full_reg_0,
    sig_next_sequential_reg_reg,
    sel,
    E,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    D,
    out,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    \sig_addr_posted_cntr_reg[0] ,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg_1,
    m_axi_mm2s_rlast_0,
    SS,
    m_axi_mm2s_aclk,
    sig_mstr2data_cmd_valid,
    \INFERRED_GEN.cnt_i_reg[0] ,
    sig_dqual_reg_empty,
    sig_dqual_reg_empty_reg,
    sig_next_sequential_reg,
    \sig_dbeat_cntr_reg[0] ,
    \sig_dbeat_cntr_reg[5] ,
    Q,
    sig_cmd_stat_rst_user_reg_n_cdc_from,
    sig_ld_new_cmd_reg,
    sig_dqual_reg_empty_reg_0,
    sig_rsc2stat_status_valid,
    sig_stat2rsc_status_ready,
    \sig_dbeat_cntr[7]_i_3 ,
    \sig_dbeat_cntr[7]_i_3_0 ,
    \sig_dbeat_cntr[7]_i_3_1 ,
    full,
    sig_dqual_reg_empty_reg_1,
    m_axi_mm2s_rvalid,
    sig_dqual_reg_full,
    \sig_dbeat_cntr[7]_i_3_2 ,
    sig_last_dbeat_reg,
    sig_first_dbeat_reg,
    m_axi_mm2s_rlast,
    in);
  output FIFO_Full_reg_0;
  output sig_next_sequential_reg_reg;
  output sel;
  output [0:0]E;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  output [7:0]D;
  output [68:0]out;
  output sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  output \sig_addr_posted_cntr_reg[0] ;
  output sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  output sig_cmd_stat_rst_user_reg_n_cdc_from_reg_1;
  output m_axi_mm2s_rlast_0;
  input [0:0]SS;
  input m_axi_mm2s_aclk;
  input sig_mstr2data_cmd_valid;
  input \INFERRED_GEN.cnt_i_reg[0] ;
  input sig_dqual_reg_empty;
  input sig_dqual_reg_empty_reg;
  input sig_next_sequential_reg;
  input \sig_dbeat_cntr_reg[0] ;
  input \sig_dbeat_cntr_reg[5] ;
  input [7:0]Q;
  input sig_cmd_stat_rst_user_reg_n_cdc_from;
  input sig_ld_new_cmd_reg;
  input sig_dqual_reg_empty_reg_0;
  input sig_rsc2stat_status_valid;
  input sig_stat2rsc_status_ready;
  input \sig_dbeat_cntr[7]_i_3 ;
  input \sig_dbeat_cntr[7]_i_3_0 ;
  input \sig_dbeat_cntr[7]_i_3_1 ;
  input full;
  input sig_dqual_reg_empty_reg_1;
  input m_axi_mm2s_rvalid;
  input sig_dqual_reg_full;
  input \sig_dbeat_cntr[7]_i_3_2 ;
  input sig_last_dbeat_reg;
  input sig_first_dbeat_reg;
  input m_axi_mm2s_rlast;
  input [68:0]in;

  wire CNTR_INCR_DECR_ADDN_F_I_n_1;
  wire CNTR_INCR_DECR_ADDN_F_I_n_2;
  wire [7:0]D;
  wire [0:0]E;
  wire FIFO_Full_reg_0;
  wire \INFERRED_GEN.cnt_i_reg[0] ;
  wire [7:0]Q;
  wire [0:0]SS;
  wire fifo_full_p1;
  wire full;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire [68:0]in;
  wire m_axi_mm2s_aclk;
  wire m_axi_mm2s_rlast;
  wire m_axi_mm2s_rlast_0;
  wire m_axi_mm2s_rvalid;
  wire [68:0]out;
  wire sel;
  wire \sig_addr_posted_cntr_reg[0] ;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg_1;
  wire \sig_dbeat_cntr[7]_i_3 ;
  wire \sig_dbeat_cntr[7]_i_3_0 ;
  wire \sig_dbeat_cntr[7]_i_3_1 ;
  wire \sig_dbeat_cntr[7]_i_3_2 ;
  wire \sig_dbeat_cntr_reg[0] ;
  wire \sig_dbeat_cntr_reg[5] ;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_empty_reg;
  wire sig_dqual_reg_empty_reg_0;
  wire sig_dqual_reg_empty_reg_1;
  wire sig_dqual_reg_full;
  wire sig_first_dbeat_reg;
  wire sig_last_dbeat_reg;
  wire sig_ld_new_cmd_reg;
  wire sig_mstr2data_cmd_valid;
  wire sig_next_sequential_reg;
  wire sig_next_sequential_reg_reg;
  wire sig_rsc2stat_status_valid;
  wire sig_stat2rsc_status_ready;

  system_axi_dma_1_0_cntr_incr_decr_addn_f CNTR_INCR_DECR_ADDN_F_I
       (.D(D[7:1]),
        .E(E),
        .FIFO_Full_reg(sel),
        .\INFERRED_GEN.cnt_i_reg[0]_0 (\INFERRED_GEN.cnt_i_reg[0] ),
        .\INFERRED_GEN.cnt_i_reg[0]_1 (FIFO_Full_reg_0),
        .Q({CNTR_INCR_DECR_ADDN_F_I_n_1,CNTR_INCR_DECR_ADDN_F_I_n_2}),
        .SS(SS),
        .fifo_full_p1(fifo_full_p1),
        .full(full),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axi_mm2s_rlast(m_axi_mm2s_rlast),
        .m_axi_mm2s_rlast_0(m_axi_mm2s_rlast_0),
        .m_axi_mm2s_rvalid(m_axi_mm2s_rvalid),
        .out(out[0]),
        .\sig_addr_posted_cntr_reg[0] (\sig_addr_posted_cntr_reg[0] ),
        .sig_cmd_stat_rst_user_reg_n_cdc_from(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg_1(sig_cmd_stat_rst_user_reg_n_cdc_from_reg_1),
        .\sig_dbeat_cntr[7]_i_3 (\sig_dbeat_cntr[7]_i_3 ),
        .\sig_dbeat_cntr[7]_i_3_0 (\sig_dbeat_cntr[7]_i_3_0 ),
        .\sig_dbeat_cntr[7]_i_3_1 (\sig_dbeat_cntr[7]_i_3_1 ),
        .\sig_dbeat_cntr[7]_i_3_2 (\sig_dbeat_cntr[7]_i_3_2 ),
        .\sig_dbeat_cntr_reg[0] (\sig_dbeat_cntr_reg[0] ),
        .\sig_dbeat_cntr_reg[5] (\sig_dbeat_cntr_reg[5] ),
        .\sig_dbeat_cntr_reg[7] (Q),
        .sig_dqual_reg_empty(sig_dqual_reg_empty),
        .sig_dqual_reg_empty_reg(sig_dqual_reg_empty_reg),
        .sig_dqual_reg_empty_reg_0(sig_dqual_reg_empty_reg_0),
        .sig_dqual_reg_empty_reg_1(sig_dqual_reg_empty_reg_1),
        .sig_dqual_reg_full(sig_dqual_reg_full),
        .sig_first_dbeat_reg(sig_first_dbeat_reg),
        .sig_last_dbeat_reg(sig_last_dbeat_reg),
        .sig_ld_new_cmd_reg(sig_ld_new_cmd_reg),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_next_sequential_reg(sig_next_sequential_reg),
        .sig_next_sequential_reg_reg(sig_next_sequential_reg_reg),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_stat2rsc_status_ready(sig_stat2rsc_status_ready));
  system_axi_dma_1_0_dynshreg_f__parameterized0 DYNSHREG_F_I
       (.D(D[0]),
        .FIFO_Full_reg(sel),
        .Q(Q[0]),
        .in(in),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .out(out),
        .\sig_dbeat_cntr_reg[0] (sig_next_sequential_reg_reg),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_next_calc_error_reg_reg(FIFO_Full_reg_0),
        .sig_next_calc_error_reg_reg_0(\INFERRED_GEN.cnt_i_reg[0] ),
        .sig_next_calc_error_reg_reg_1({CNTR_INCR_DECR_ADDN_F_I_n_1,CNTR_INCR_DECR_ADDN_F_I_n_2}));
  FDRE FIFO_Full_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(FIFO_Full_reg_0),
        .R(SS));
endmodule

(* ORIG_REF_NAME = "srl_fifo_rbu_f" *) 
module system_axi_dma_1_0_srl_fifo_rbu_f__parameterized1
   (FIFO_Full_reg_0,
    Q,
    FIFO_Full_reg_1,
    SS,
    m_axi_mm2s_aclk,
    \INFERRED_GEN.cnt_i_reg[2] ,
    sig_mstr2sf_cmd_valid,
    \INFERRED_GEN.cnt_i_reg[0] ,
    \OMIT_UNPACKING.lsig_ld_cmd );
  output FIFO_Full_reg_0;
  output [0:0]Q;
  output FIFO_Full_reg_1;
  input [0:0]SS;
  input m_axi_mm2s_aclk;
  input \INFERRED_GEN.cnt_i_reg[2] ;
  input sig_mstr2sf_cmd_valid;
  input \INFERRED_GEN.cnt_i_reg[0] ;
  input \OMIT_UNPACKING.lsig_ld_cmd ;

  wire FIFO_Full_reg_0;
  wire FIFO_Full_reg_1;
  wire \INFERRED_GEN.cnt_i_reg[0] ;
  wire \INFERRED_GEN.cnt_i_reg[2] ;
  wire \OMIT_UNPACKING.lsig_ld_cmd ;
  wire [0:0]Q;
  wire [0:0]SS;
  wire fifo_full_p1;
  wire m_axi_mm2s_aclk;
  wire sig_mstr2sf_cmd_valid;

  system_axi_dma_1_0_cntr_incr_decr_addn_f_2 CNTR_INCR_DECR_ADDN_F_I
       (.FIFO_Full_reg(FIFO_Full_reg_1),
        .\INFERRED_GEN.cnt_i_reg[0]_0 (\INFERRED_GEN.cnt_i_reg[0] ),
        .\INFERRED_GEN.cnt_i_reg[0]_1 (FIFO_Full_reg_0),
        .\INFERRED_GEN.cnt_i_reg[2]_0 (\INFERRED_GEN.cnt_i_reg[2] ),
        .\OMIT_UNPACKING.lsig_ld_cmd (\OMIT_UNPACKING.lsig_ld_cmd ),
        .Q(Q),
        .SS(SS),
        .fifo_full_p1(fifo_full_p1),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .sig_mstr2sf_cmd_valid(sig_mstr2sf_cmd_valid));
  FDRE FIFO_Full_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(FIFO_Full_reg_0),
        .R(SS));
endmodule

module system_axi_dma_1_0_sync_fifo_fg
   (full,
    wr_data_count,
    dout,
    empty,
    sig_slast_with_stop,
    \OMIT_UNPACKING.lsig_ld_cmd ,
    \OMIT_UNPACKING.lsig_cmd_loaded_reg ,
    \gen_fwft.empty_fwft_i_reg ,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    \gen_fwft.empty_fwft_i_reg_0 ,
    SS,
    m_axi_mm2s_aclk,
    wr_en,
    din,
    sig_sstrb_stop_mask,
    \OMIT_UNPACKING.lsig_cmd_loaded_reg_0 ,
    out,
    Q,
    sig_ok_to_post_rd_addr_reg,
    sig_cmd_stat_rst_user_reg_n_cdc_from,
    sig_ok_to_post_rd_addr_reg_0,
    sig_ok_to_post_rd_addr_i_4_0,
    S,
    sig_ok_to_post_rd_addr_reg_1);
  output full;
  output [6:0]wr_data_count;
  output [288:0]dout;
  output empty;
  output sig_slast_with_stop;
  output \OMIT_UNPACKING.lsig_ld_cmd ;
  output \OMIT_UNPACKING.lsig_cmd_loaded_reg ;
  output \gen_fwft.empty_fwft_i_reg ;
  output sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  output \gen_fwft.empty_fwft_i_reg_0 ;
  input [0:0]SS;
  input m_axi_mm2s_aclk;
  input wr_en;
  input [289:0]din;
  input [0:0]sig_sstrb_stop_mask;
  input \OMIT_UNPACKING.lsig_cmd_loaded_reg_0 ;
  input out;
  input [0:0]Q;
  input sig_ok_to_post_rd_addr_reg;
  input sig_cmd_stat_rst_user_reg_n_cdc_from;
  input sig_ok_to_post_rd_addr_reg_0;
  input [0:0]sig_ok_to_post_rd_addr_i_4_0;
  input [3:0]S;
  input [2:0]sig_ok_to_post_rd_addr_reg_1;

  wire \OMIT_UNPACKING.lsig_cmd_loaded_reg ;
  wire \OMIT_UNPACKING.lsig_cmd_loaded_reg_0 ;
  wire \OMIT_UNPACKING.lsig_ld_cmd ;
  wire [0:0]Q;
  wire [3:0]S;
  wire [0:0]SS;
  wire [289:0]din;
  wire [288:0]dout;
  wire empty;
  wire full;
  wire \gen_fwft.empty_fwft_i_reg ;
  wire \gen_fwft.empty_fwft_i_reg_0 ;
  wire m_axi_mm2s_aclk;
  wire out;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire [7:1]sig_commit_plus_actual;
  wire [289:289]sig_data_fifo_data_out;
  wire [0:0]sig_ok_to_post_rd_addr_i_4_0;
  wire sig_ok_to_post_rd_addr_i_4_n_0;
  wire sig_ok_to_post_rd_addr_reg;
  wire sig_ok_to_post_rd_addr_reg_0;
  wire [2:0]sig_ok_to_post_rd_addr_reg_1;
  wire sig_ok_to_post_rd_addr_reg_i_3_n_2;
  wire sig_ok_to_post_rd_addr_reg_i_3_n_3;
  wire sig_ok_to_post_rd_addr_reg_i_5_n_0;
  wire sig_ok_to_post_rd_addr_reg_i_5_n_1;
  wire sig_ok_to_post_rd_addr_reg_i_5_n_2;
  wire sig_ok_to_post_rd_addr_reg_i_5_n_3;
  wire sig_pop_data_fifo;
  wire sig_slast_with_stop;
  wire [0:0]sig_sstrb_stop_mask;
  wire [6:0]wr_data_count;
  wire wr_en;
  wire [2:2]NLW_sig_ok_to_post_rd_addr_reg_i_3_CO_UNCONNECTED;
  wire [3:3]NLW_sig_ok_to_post_rd_addr_reg_i_3_O_UNCONNECTED;
  wire [0:0]NLW_sig_ok_to_post_rd_addr_reg_i_5_O_UNCONNECTED;
  wire \NLW_xpm_fifo_instance.xpm_fifo_sync_inst_almost_empty_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_sync_inst_almost_full_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_sync_inst_data_valid_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_sync_inst_dbiterr_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_sync_inst_overflow_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_sync_inst_prog_empty_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_sync_inst_prog_full_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_sync_inst_rd_rst_busy_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_sync_inst_sbiterr_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_sync_inst_underflow_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_sync_inst_wr_ack_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_sync_inst_wr_rst_busy_UNCONNECTED ;
  wire [290:290]\NLW_xpm_fifo_instance.xpm_fifo_sync_inst_dout_UNCONNECTED ;
  wire [3:0]\NLW_xpm_fifo_instance.xpm_fifo_sync_inst_rd_data_count_UNCONNECTED ;
  wire [0:0]\NLW_xpm_fifo_instance.xpm_fifo_sync_inst_wr_data_count_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h00405555)) 
    \INFERRED_GEN.cnt_i[1]_i_2 
       (.I0(Q),
        .I1(sig_data_fifo_data_out),
        .I2(out),
        .I3(empty),
        .I4(\OMIT_UNPACKING.lsig_cmd_loaded_reg_0 ),
        .O(\OMIT_UNPACKING.lsig_ld_cmd ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \INFERRED_GEN.cnt_i[2]_i_3 
       (.I0(\OMIT_UNPACKING.lsig_cmd_loaded_reg_0 ),
        .I1(empty),
        .I2(out),
        .I3(sig_data_fifo_data_out),
        .O(\OMIT_UNPACKING.lsig_cmd_loaded_reg ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hBFFF00FF)) 
    \OMIT_UNPACKING.lsig_cmd_loaded_i_1 
       (.I0(empty),
        .I1(out),
        .I2(sig_data_fifo_data_out),
        .I3(Q),
        .I4(\OMIT_UNPACKING.lsig_cmd_loaded_reg_0 ),
        .O(\gen_fwft.empty_fwft_i_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hBAAA)) 
    sig_last_skid_reg_i_1
       (.I0(sig_sstrb_stop_mask),
        .I1(empty),
        .I2(\OMIT_UNPACKING.lsig_cmd_loaded_reg_0 ),
        .I3(dout[288]),
        .O(sig_slast_with_stop));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hB)) 
    sig_m_valid_dup_i_3
       (.I0(empty),
        .I1(\OMIT_UNPACKING.lsig_cmd_loaded_reg_0 ),
        .O(\gen_fwft.empty_fwft_i_reg ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    sig_ok_to_post_rd_addr_i_1
       (.I0(sig_ok_to_post_rd_addr_reg),
        .I1(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .I2(sig_ok_to_post_rd_addr_reg_0),
        .I3(sig_commit_plus_actual[6]),
        .I4(sig_commit_plus_actual[7]),
        .I5(sig_ok_to_post_rd_addr_i_4_n_0),
        .O(sig_cmd_stat_rst_user_reg_n_cdc_from_reg));
  LUT5 #(
    .INIT(32'h80000000)) 
    sig_ok_to_post_rd_addr_i_4
       (.I0(sig_commit_plus_actual[2]),
        .I1(sig_commit_plus_actual[1]),
        .I2(sig_commit_plus_actual[4]),
        .I3(sig_commit_plus_actual[3]),
        .I4(sig_commit_plus_actual[5]),
        .O(sig_ok_to_post_rd_addr_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 sig_ok_to_post_rd_addr_reg_i_3
       (.CI(sig_ok_to_post_rd_addr_reg_i_5_n_0),
        .CO({sig_commit_plus_actual[7],NLW_sig_ok_to_post_rd_addr_reg_i_3_CO_UNCONNECTED[2],sig_ok_to_post_rd_addr_reg_i_3_n_2,sig_ok_to_post_rd_addr_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,wr_data_count[6:4]}),
        .O({NLW_sig_ok_to_post_rd_addr_reg_i_3_O_UNCONNECTED[3],sig_commit_plus_actual[6:4]}),
        .S({1'b1,sig_ok_to_post_rd_addr_reg_1}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 sig_ok_to_post_rd_addr_reg_i_5
       (.CI(1'b0),
        .CO({sig_ok_to_post_rd_addr_reg_i_5_n_0,sig_ok_to_post_rd_addr_reg_i_5_n_1,sig_ok_to_post_rd_addr_reg_i_5_n_2,sig_ok_to_post_rd_addr_reg_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({wr_data_count[3:1],sig_ok_to_post_rd_addr_i_4_0}),
        .O({sig_commit_plus_actual[3:1],NLW_sig_ok_to_post_rd_addr_reg_i_5_O_UNCONNECTED[0]}),
        .S(S));
  (* CASCADE_HEIGHT = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* EN_ADV_FEATURE_SYNC = "16'b0001111100011111" *) 
  (* FIFO_MEMORY_TYPE = "block" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_WRITE_DEPTH = "128" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "2" *) 
  (* P_READ_MODE = "1" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "4" *) 
  (* READ_DATA_WIDTH = "291" *) 
  (* READ_MODE = "fwft" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "1F1F" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "291" *) 
  (* WR_DATA_COUNT_WIDTH = "8" *) 
  (* XPM_MODULE = "TRUE" *) 
  system_axi_dma_1_0_xpm_fifo_sync \xpm_fifo_instance.xpm_fifo_sync_inst 
       (.almost_empty(\NLW_xpm_fifo_instance.xpm_fifo_sync_inst_almost_empty_UNCONNECTED ),
        .almost_full(\NLW_xpm_fifo_instance.xpm_fifo_sync_inst_almost_full_UNCONNECTED ),
        .data_valid(\NLW_xpm_fifo_instance.xpm_fifo_sync_inst_data_valid_UNCONNECTED ),
        .dbiterr(\NLW_xpm_fifo_instance.xpm_fifo_sync_inst_dbiterr_UNCONNECTED ),
        .din({1'b0,din}),
        .dout({\NLW_xpm_fifo_instance.xpm_fifo_sync_inst_dout_UNCONNECTED [290],sig_data_fifo_data_out,dout}),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(\NLW_xpm_fifo_instance.xpm_fifo_sync_inst_overflow_UNCONNECTED ),
        .prog_empty(\NLW_xpm_fifo_instance.xpm_fifo_sync_inst_prog_empty_UNCONNECTED ),
        .prog_full(\NLW_xpm_fifo_instance.xpm_fifo_sync_inst_prog_full_UNCONNECTED ),
        .rd_data_count(\NLW_xpm_fifo_instance.xpm_fifo_sync_inst_rd_data_count_UNCONNECTED [3:0]),
        .rd_en(sig_pop_data_fifo),
        .rd_rst_busy(\NLW_xpm_fifo_instance.xpm_fifo_sync_inst_rd_rst_busy_UNCONNECTED ),
        .rst(SS),
        .sbiterr(\NLW_xpm_fifo_instance.xpm_fifo_sync_inst_sbiterr_UNCONNECTED ),
        .sleep(1'b0),
        .underflow(\NLW_xpm_fifo_instance.xpm_fifo_sync_inst_underflow_UNCONNECTED ),
        .wr_ack(\NLW_xpm_fifo_instance.xpm_fifo_sync_inst_wr_ack_UNCONNECTED ),
        .wr_clk(m_axi_mm2s_aclk),
        .wr_data_count({wr_data_count,\NLW_xpm_fifo_instance.xpm_fifo_sync_inst_wr_data_count_UNCONNECTED [0]}),
        .wr_en(wr_en),
        .wr_rst_busy(\NLW_xpm_fifo_instance.xpm_fifo_sync_inst_wr_rst_busy_UNCONNECTED ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \xpm_fifo_instance.xpm_fifo_sync_inst_i_37 
       (.I0(out),
        .I1(empty),
        .I2(\OMIT_UNPACKING.lsig_cmd_loaded_reg_0 ),
        .O(sig_pop_data_fifo));
endmodule

(* CHECK_LICENSE_TYPE = "system_axi_dma_0_0,axi_dma,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_dma,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module system_axi_dma_1_0
   (s_axi_lite_aclk,
    m_axi_mm2s_aclk,
    axi_resetn,
    s_axi_lite_awvalid,
    s_axi_lite_awready,
    s_axi_lite_awaddr,
    s_axi_lite_wvalid,
    s_axi_lite_wready,
    s_axi_lite_wdata,
    s_axi_lite_bresp,
    s_axi_lite_bvalid,
    s_axi_lite_bready,
    s_axi_lite_arvalid,
    s_axi_lite_arready,
    s_axi_lite_araddr,
    s_axi_lite_rvalid,
    s_axi_lite_rready,
    s_axi_lite_rdata,
    s_axi_lite_rresp,
    m_axi_mm2s_araddr,
    m_axi_mm2s_arlen,
    m_axi_mm2s_arsize,
    m_axi_mm2s_arburst,
    m_axi_mm2s_arprot,
    m_axi_mm2s_arcache,
    m_axi_mm2s_arvalid,
    m_axi_mm2s_arready,
    m_axi_mm2s_rdata,
    m_axi_mm2s_rresp,
    m_axi_mm2s_rlast,
    m_axi_mm2s_rvalid,
    m_axi_mm2s_rready,
    mm2s_prmry_reset_out_n,
    m_axis_mm2s_tdata,
    m_axis_mm2s_tkeep,
    m_axis_mm2s_tvalid,
    m_axis_mm2s_tready,
    m_axis_mm2s_tlast,
    mm2s_introut,
    axi_dma_tstvec);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_LITE_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_LITE_ACLK, ASSOCIATED_BUSIF S_AXI_LITE:M_AXI, ASSOCIATED_RESET axi_resetn, FREQ_HZ 30000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s_axi_lite_aclk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M_AXI_MM2S_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXI_MM2S_CLK, ASSOCIATED_BUSIF M_AXI_MM2S:M_AXIS_MM2S:M_AXIS_CNTRL, ASSOCIATED_RESET mm2s_prmry_reset_out_n:mm2s_cntrl_reset_out_n, FREQ_HZ 30000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input m_axi_mm2s_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 AXI_RESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axi_resetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_LITE, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 30000000, ID_WIDTH 0, ADDR_WIDTH 10, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_lite_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWREADY" *) output s_axi_lite_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWADDR" *) input [9:0]s_axi_lite_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WVALID" *) input s_axi_lite_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WREADY" *) output s_axi_lite_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WDATA" *) input [31:0]s_axi_lite_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BRESP" *) output [1:0]s_axi_lite_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BVALID" *) output s_axi_lite_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BREADY" *) input s_axi_lite_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARVALID" *) input s_axi_lite_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARREADY" *) output s_axi_lite_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARADDR" *) input [9:0]s_axi_lite_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RVALID" *) output s_axi_lite_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RREADY" *) input s_axi_lite_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RDATA" *) output [31:0]s_axi_lite_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RRESP" *) output [1:0]s_axi_lite_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXI_MM2S, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 30000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 2, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [31:0]m_axi_mm2s_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARLEN" *) output [7:0]m_axi_mm2s_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARSIZE" *) output [2:0]m_axi_mm2s_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARBURST" *) output [1:0]m_axi_mm2s_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARPROT" *) output [2:0]m_axi_mm2s_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARCACHE" *) output [3:0]m_axi_mm2s_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARVALID" *) output m_axi_mm2s_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARREADY" *) input m_axi_mm2s_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S RDATA" *) input [255:0]m_axi_mm2s_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S RRESP" *) input [1:0]m_axi_mm2s_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S RLAST" *) input m_axi_mm2s_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S RVALID" *) input m_axi_mm2s_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S RREADY" *) output m_axi_mm2s_rready;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 MM2S_PRMRY_RESET_OUT_N RST" *) (* x_interface_parameter = "XIL_INTERFACENAME MM2S_PRMRY_RESET_OUT_N, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output mm2s_prmry_reset_out_n;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_MM2S, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 30000000, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, HAS_BURST 0" *) output [255:0]m_axis_mm2s_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TKEEP" *) output [31:0]m_axis_mm2s_tkeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TVALID" *) output m_axis_mm2s_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TREADY" *) input m_axis_mm2s_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TLAST" *) output m_axis_mm2s_tlast;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 MM2S_INTROUT INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME MM2S_INTROUT, SENSITIVITY LEVEL_HIGH, PORTWIDTH 1" *) output mm2s_introut;
  output [31:0]axi_dma_tstvec;

  wire \<const0> ;
  wire \<const1> ;
  wire [4:0]\^axi_dma_tstvec ;
  wire axi_resetn;
  wire m_axi_mm2s_aclk;
  wire [31:0]m_axi_mm2s_araddr;
  wire [0:0]\^m_axi_mm2s_arburst ;
  wire [0:0]\^m_axi_mm2s_arlen ;
  wire m_axi_mm2s_arready;
  wire [2:0]\^m_axi_mm2s_arsize ;
  wire m_axi_mm2s_arvalid;
  wire [255:0]m_axi_mm2s_rdata;
  wire m_axi_mm2s_rlast;
  wire m_axi_mm2s_rready;
  wire [1:0]m_axi_mm2s_rresp;
  wire m_axi_mm2s_rvalid;
  wire [255:0]m_axis_mm2s_tdata;
  wire [31:0]m_axis_mm2s_tkeep;
  wire m_axis_mm2s_tlast;
  wire m_axis_mm2s_tready;
  wire m_axis_mm2s_tvalid;
  wire mm2s_introut;
  wire mm2s_prmry_reset_out_n;
  wire s_axi_lite_aclk;
  wire [9:0]s_axi_lite_araddr;
  wire s_axi_lite_arready;
  wire s_axi_lite_arvalid;
  wire [9:0]s_axi_lite_awaddr;
  wire s_axi_lite_awready;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire s_axi_lite_bvalid;
  wire [31:0]s_axi_lite_rdata;
  wire s_axi_lite_rready;
  wire s_axi_lite_rvalid;
  wire [31:0]s_axi_lite_wdata;
  wire s_axi_lite_wready;
  wire s_axi_lite_wvalid;
  wire NLW_U0_m_axi_s2mm_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_s2mm_bready_UNCONNECTED;
  wire NLW_U0_m_axi_s2mm_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_s2mm_wvalid_UNCONNECTED;
  wire NLW_U0_m_axi_sg_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_sg_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_sg_bready_UNCONNECTED;
  wire NLW_U0_m_axi_sg_rready_UNCONNECTED;
  wire NLW_U0_m_axi_sg_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_sg_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_mm2s_cntrl_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_mm2s_cntrl_tvalid_UNCONNECTED;
  wire NLW_U0_mm2s_cntrl_reset_out_n_UNCONNECTED;
  wire NLW_U0_s2mm_introut_UNCONNECTED;
  wire NLW_U0_s2mm_prmry_reset_out_n_UNCONNECTED;
  wire NLW_U0_s2mm_sts_reset_out_n_UNCONNECTED;
  wire NLW_U0_s_axis_s2mm_sts_tready_UNCONNECTED;
  wire NLW_U0_s_axis_s2mm_tready_UNCONNECTED;
  wire [31:2]NLW_U0_axi_dma_tstvec_UNCONNECTED;
  wire [1:1]NLW_U0_m_axi_mm2s_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_mm2s_arcache_UNCONNECTED;
  wire [7:1]NLW_U0_m_axi_mm2s_arlen_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_mm2s_arprot_UNCONNECTED;
  wire [1:1]NLW_U0_m_axi_mm2s_arsize_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_mm2s_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_s2mm_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_s2mm_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_s2mm_awcache_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_s2mm_awlen_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_s2mm_awprot_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_s2mm_awsize_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_s2mm_awuser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_s2mm_wdata_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_s2mm_wstrb_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_sg_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_sg_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_sg_arcache_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_sg_arlen_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_sg_arprot_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_sg_arsize_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_sg_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_sg_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_sg_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_sg_awcache_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_sg_awlen_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_sg_awprot_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_sg_awsize_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_sg_awuser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_sg_wdata_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_sg_wstrb_UNCONNECTED;
  wire [31:0]NLW_U0_m_axis_mm2s_cntrl_tdata_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_mm2s_cntrl_tkeep_UNCONNECTED;
  wire [4:0]NLW_U0_m_axis_mm2s_tdest_UNCONNECTED;
  wire [4:0]NLW_U0_m_axis_mm2s_tid_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_mm2s_tuser_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_lite_bresp_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_lite_rresp_UNCONNECTED;

  assign axi_dma_tstvec[31] = \<const0> ;
  assign axi_dma_tstvec[30] = \<const0> ;
  assign axi_dma_tstvec[29] = \<const0> ;
  assign axi_dma_tstvec[28] = \<const0> ;
  assign axi_dma_tstvec[27] = \<const0> ;
  assign axi_dma_tstvec[26] = \<const0> ;
  assign axi_dma_tstvec[25] = \<const0> ;
  assign axi_dma_tstvec[24] = \<const0> ;
  assign axi_dma_tstvec[23] = \<const0> ;
  assign axi_dma_tstvec[22] = \<const0> ;
  assign axi_dma_tstvec[21] = \<const0> ;
  assign axi_dma_tstvec[20] = \<const0> ;
  assign axi_dma_tstvec[19] = \<const0> ;
  assign axi_dma_tstvec[18] = \<const0> ;
  assign axi_dma_tstvec[17] = \<const0> ;
  assign axi_dma_tstvec[16] = \<const0> ;
  assign axi_dma_tstvec[15] = \<const0> ;
  assign axi_dma_tstvec[14] = \<const0> ;
  assign axi_dma_tstvec[13] = \<const0> ;
  assign axi_dma_tstvec[12] = \<const0> ;
  assign axi_dma_tstvec[11] = \<const0> ;
  assign axi_dma_tstvec[10] = \<const0> ;
  assign axi_dma_tstvec[9] = \<const0> ;
  assign axi_dma_tstvec[8] = \<const0> ;
  assign axi_dma_tstvec[7] = \<const0> ;
  assign axi_dma_tstvec[6] = \<const0> ;
  assign axi_dma_tstvec[5] = \<const0> ;
  assign axi_dma_tstvec[4] = \^axi_dma_tstvec [4];
  assign axi_dma_tstvec[3] = \<const0> ;
  assign axi_dma_tstvec[2] = \<const0> ;
  assign axi_dma_tstvec[1:0] = \^axi_dma_tstvec [1:0];
  assign m_axi_mm2s_arburst[1] = \<const0> ;
  assign m_axi_mm2s_arburst[0] = \^m_axi_mm2s_arburst [0];
  assign m_axi_mm2s_arcache[3] = \<const0> ;
  assign m_axi_mm2s_arcache[2] = \<const0> ;
  assign m_axi_mm2s_arcache[1] = \<const1> ;
  assign m_axi_mm2s_arcache[0] = \<const1> ;
  assign m_axi_mm2s_arlen[7] = \<const0> ;
  assign m_axi_mm2s_arlen[6] = \<const0> ;
  assign m_axi_mm2s_arlen[5] = \<const0> ;
  assign m_axi_mm2s_arlen[4] = \<const0> ;
  assign m_axi_mm2s_arlen[3] = \<const0> ;
  assign m_axi_mm2s_arlen[2] = \<const0> ;
  assign m_axi_mm2s_arlen[1] = \<const0> ;
  assign m_axi_mm2s_arlen[0] = \^m_axi_mm2s_arlen [0];
  assign m_axi_mm2s_arprot[2] = \<const0> ;
  assign m_axi_mm2s_arprot[1] = \<const0> ;
  assign m_axi_mm2s_arprot[0] = \<const0> ;
  assign m_axi_mm2s_arsize[2] = \^m_axi_mm2s_arsize [2];
  assign m_axi_mm2s_arsize[1] = \<const0> ;
  assign m_axi_mm2s_arsize[0] = \^m_axi_mm2s_arsize [0];
  assign s_axi_lite_bresp[1] = \<const0> ;
  assign s_axi_lite_bresp[0] = \<const0> ;
  assign s_axi_lite_rresp[1] = \<const0> ;
  assign s_axi_lite_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_DLYTMR_RESOLUTION = "125" *) 
  (* C_ENABLE_MULTI_CHANNEL = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_INCLUDE_MM2S = "1" *) 
  (* C_INCLUDE_MM2S_DRE = "0" *) 
  (* C_INCLUDE_MM2S_SF = "1" *) 
  (* C_INCLUDE_S2MM = "0" *) 
  (* C_INCLUDE_S2MM_DRE = "0" *) 
  (* C_INCLUDE_S2MM_SF = "1" *) 
  (* C_INCLUDE_SG = "0" *) 
  (* C_INCREASE_THROUGHPUT = "0" *) 
  (* C_INSTANCE = "axi_dma" *) 
  (* C_MICRO_DMA = "0" *) 
  (* C_MM2S_BURST_SIZE = "2" *) 
  (* C_M_AXIS_MM2S_CNTRL_TDATA_WIDTH = "32" *) 
  (* C_M_AXIS_MM2S_TDATA_WIDTH = "256" *) 
  (* C_M_AXI_MM2S_ADDR_WIDTH = "32" *) 
  (* C_M_AXI_MM2S_DATA_WIDTH = "256" *) 
  (* C_M_AXI_S2MM_ADDR_WIDTH = "32" *) 
  (* C_M_AXI_S2MM_DATA_WIDTH = "32" *) 
  (* C_M_AXI_SG_ADDR_WIDTH = "32" *) 
  (* C_M_AXI_SG_DATA_WIDTH = "32" *) 
  (* C_NUM_MM2S_CHANNELS = "1" *) 
  (* C_NUM_S2MM_CHANNELS = "1" *) 
  (* C_PRMRY_IS_ACLK_ASYNC = "0" *) 
  (* C_S2MM_BURST_SIZE = "16" *) 
  (* C_SG_INCLUDE_STSCNTRL_STRM = "0" *) 
  (* C_SG_LENGTH_WIDTH = "14" *) 
  (* C_SG_USE_STSAPP_LENGTH = "0" *) 
  (* C_S_AXIS_S2MM_STS_TDATA_WIDTH = "32" *) 
  (* C_S_AXIS_S2MM_TDATA_WIDTH = "32" *) 
  (* C_S_AXI_LITE_ADDR_WIDTH = "10" *) 
  (* C_S_AXI_LITE_DATA_WIDTH = "32" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  system_axi_dma_1_0_axi_dma U0
       (.axi_dma_tstvec({NLW_U0_axi_dma_tstvec_UNCONNECTED[31:5],\^axi_dma_tstvec }),
        .axi_resetn(axi_resetn),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axi_mm2s_araddr(m_axi_mm2s_araddr),
        .m_axi_mm2s_arburst({NLW_U0_m_axi_mm2s_arburst_UNCONNECTED[1],\^m_axi_mm2s_arburst }),
        .m_axi_mm2s_arcache(NLW_U0_m_axi_mm2s_arcache_UNCONNECTED[3:0]),
        .m_axi_mm2s_arlen({NLW_U0_m_axi_mm2s_arlen_UNCONNECTED[7:1],\^m_axi_mm2s_arlen }),
        .m_axi_mm2s_arprot(NLW_U0_m_axi_mm2s_arprot_UNCONNECTED[2:0]),
        .m_axi_mm2s_arready(m_axi_mm2s_arready),
        .m_axi_mm2s_arsize(\^m_axi_mm2s_arsize ),
        .m_axi_mm2s_aruser(NLW_U0_m_axi_mm2s_aruser_UNCONNECTED[3:0]),
        .m_axi_mm2s_arvalid(m_axi_mm2s_arvalid),
        .m_axi_mm2s_rdata(m_axi_mm2s_rdata),
        .m_axi_mm2s_rlast(m_axi_mm2s_rlast),
        .m_axi_mm2s_rready(m_axi_mm2s_rready),
        .m_axi_mm2s_rresp(m_axi_mm2s_rresp),
        .m_axi_mm2s_rvalid(m_axi_mm2s_rvalid),
        .m_axi_s2mm_aclk(1'b0),
        .m_axi_s2mm_awaddr(NLW_U0_m_axi_s2mm_awaddr_UNCONNECTED[31:0]),
        .m_axi_s2mm_awburst(NLW_U0_m_axi_s2mm_awburst_UNCONNECTED[1:0]),
        .m_axi_s2mm_awcache(NLW_U0_m_axi_s2mm_awcache_UNCONNECTED[3:0]),
        .m_axi_s2mm_awlen(NLW_U0_m_axi_s2mm_awlen_UNCONNECTED[7:0]),
        .m_axi_s2mm_awprot(NLW_U0_m_axi_s2mm_awprot_UNCONNECTED[2:0]),
        .m_axi_s2mm_awready(1'b0),
        .m_axi_s2mm_awsize(NLW_U0_m_axi_s2mm_awsize_UNCONNECTED[2:0]),
        .m_axi_s2mm_awuser(NLW_U0_m_axi_s2mm_awuser_UNCONNECTED[3:0]),
        .m_axi_s2mm_awvalid(NLW_U0_m_axi_s2mm_awvalid_UNCONNECTED),
        .m_axi_s2mm_bready(NLW_U0_m_axi_s2mm_bready_UNCONNECTED),
        .m_axi_s2mm_bresp({1'b0,1'b0}),
        .m_axi_s2mm_bvalid(1'b0),
        .m_axi_s2mm_wdata(NLW_U0_m_axi_s2mm_wdata_UNCONNECTED[31:0]),
        .m_axi_s2mm_wlast(NLW_U0_m_axi_s2mm_wlast_UNCONNECTED),
        .m_axi_s2mm_wready(1'b0),
        .m_axi_s2mm_wstrb(NLW_U0_m_axi_s2mm_wstrb_UNCONNECTED[3:0]),
        .m_axi_s2mm_wvalid(NLW_U0_m_axi_s2mm_wvalid_UNCONNECTED),
        .m_axi_sg_aclk(1'b0),
        .m_axi_sg_araddr(NLW_U0_m_axi_sg_araddr_UNCONNECTED[31:0]),
        .m_axi_sg_arburst(NLW_U0_m_axi_sg_arburst_UNCONNECTED[1:0]),
        .m_axi_sg_arcache(NLW_U0_m_axi_sg_arcache_UNCONNECTED[3:0]),
        .m_axi_sg_arlen(NLW_U0_m_axi_sg_arlen_UNCONNECTED[7:0]),
        .m_axi_sg_arprot(NLW_U0_m_axi_sg_arprot_UNCONNECTED[2:0]),
        .m_axi_sg_arready(1'b0),
        .m_axi_sg_arsize(NLW_U0_m_axi_sg_arsize_UNCONNECTED[2:0]),
        .m_axi_sg_aruser(NLW_U0_m_axi_sg_aruser_UNCONNECTED[3:0]),
        .m_axi_sg_arvalid(NLW_U0_m_axi_sg_arvalid_UNCONNECTED),
        .m_axi_sg_awaddr(NLW_U0_m_axi_sg_awaddr_UNCONNECTED[31:0]),
        .m_axi_sg_awburst(NLW_U0_m_axi_sg_awburst_UNCONNECTED[1:0]),
        .m_axi_sg_awcache(NLW_U0_m_axi_sg_awcache_UNCONNECTED[3:0]),
        .m_axi_sg_awlen(NLW_U0_m_axi_sg_awlen_UNCONNECTED[7:0]),
        .m_axi_sg_awprot(NLW_U0_m_axi_sg_awprot_UNCONNECTED[2:0]),
        .m_axi_sg_awready(1'b0),
        .m_axi_sg_awsize(NLW_U0_m_axi_sg_awsize_UNCONNECTED[2:0]),
        .m_axi_sg_awuser(NLW_U0_m_axi_sg_awuser_UNCONNECTED[3:0]),
        .m_axi_sg_awvalid(NLW_U0_m_axi_sg_awvalid_UNCONNECTED),
        .m_axi_sg_bready(NLW_U0_m_axi_sg_bready_UNCONNECTED),
        .m_axi_sg_bresp({1'b0,1'b0}),
        .m_axi_sg_bvalid(1'b0),
        .m_axi_sg_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_sg_rlast(1'b0),
        .m_axi_sg_rready(NLW_U0_m_axi_sg_rready_UNCONNECTED),
        .m_axi_sg_rresp({1'b0,1'b0}),
        .m_axi_sg_rvalid(1'b0),
        .m_axi_sg_wdata(NLW_U0_m_axi_sg_wdata_UNCONNECTED[31:0]),
        .m_axi_sg_wlast(NLW_U0_m_axi_sg_wlast_UNCONNECTED),
        .m_axi_sg_wready(1'b0),
        .m_axi_sg_wstrb(NLW_U0_m_axi_sg_wstrb_UNCONNECTED[3:0]),
        .m_axi_sg_wvalid(NLW_U0_m_axi_sg_wvalid_UNCONNECTED),
        .m_axis_mm2s_cntrl_tdata(NLW_U0_m_axis_mm2s_cntrl_tdata_UNCONNECTED[31:0]),
        .m_axis_mm2s_cntrl_tkeep(NLW_U0_m_axis_mm2s_cntrl_tkeep_UNCONNECTED[3:0]),
        .m_axis_mm2s_cntrl_tlast(NLW_U0_m_axis_mm2s_cntrl_tlast_UNCONNECTED),
        .m_axis_mm2s_cntrl_tready(1'b0),
        .m_axis_mm2s_cntrl_tvalid(NLW_U0_m_axis_mm2s_cntrl_tvalid_UNCONNECTED),
        .m_axis_mm2s_tdata(m_axis_mm2s_tdata),
        .m_axis_mm2s_tdest(NLW_U0_m_axis_mm2s_tdest_UNCONNECTED[4:0]),
        .m_axis_mm2s_tid(NLW_U0_m_axis_mm2s_tid_UNCONNECTED[4:0]),
        .m_axis_mm2s_tkeep(m_axis_mm2s_tkeep),
        .m_axis_mm2s_tlast(m_axis_mm2s_tlast),
        .m_axis_mm2s_tready(m_axis_mm2s_tready),
        .m_axis_mm2s_tuser(NLW_U0_m_axis_mm2s_tuser_UNCONNECTED[3:0]),
        .m_axis_mm2s_tvalid(m_axis_mm2s_tvalid),
        .mm2s_cntrl_reset_out_n(NLW_U0_mm2s_cntrl_reset_out_n_UNCONNECTED),
        .mm2s_introut(mm2s_introut),
        .mm2s_prmry_reset_out_n(mm2s_prmry_reset_out_n),
        .s2mm_introut(NLW_U0_s2mm_introut_UNCONNECTED),
        .s2mm_prmry_reset_out_n(NLW_U0_s2mm_prmry_reset_out_n_UNCONNECTED),
        .s2mm_sts_reset_out_n(NLW_U0_s2mm_sts_reset_out_n_UNCONNECTED),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .s_axi_lite_araddr(s_axi_lite_araddr),
        .s_axi_lite_arready(s_axi_lite_arready),
        .s_axi_lite_arvalid(s_axi_lite_arvalid),
        .s_axi_lite_awaddr({1'b0,1'b0,1'b0,s_axi_lite_awaddr[6:2],1'b0,1'b0}),
        .s_axi_lite_awready(s_axi_lite_awready),
        .s_axi_lite_awvalid(s_axi_lite_awvalid),
        .s_axi_lite_bready(s_axi_lite_bready),
        .s_axi_lite_bresp(NLW_U0_s_axi_lite_bresp_UNCONNECTED[1:0]),
        .s_axi_lite_bvalid(s_axi_lite_bvalid),
        .s_axi_lite_rdata(s_axi_lite_rdata),
        .s_axi_lite_rready(s_axi_lite_rready),
        .s_axi_lite_rresp(NLW_U0_s_axi_lite_rresp_UNCONNECTED[1:0]),
        .s_axi_lite_rvalid(s_axi_lite_rvalid),
        .s_axi_lite_wdata(s_axi_lite_wdata),
        .s_axi_lite_wready(s_axi_lite_wready),
        .s_axi_lite_wvalid(s_axi_lite_wvalid),
        .s_axis_s2mm_sts_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_s2mm_sts_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_s2mm_sts_tlast(1'b0),
        .s_axis_s2mm_sts_tready(NLW_U0_s_axis_s2mm_sts_tready_UNCONNECTED),
        .s_axis_s2mm_sts_tvalid(1'b0),
        .s_axis_s2mm_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_s2mm_tdest({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_s2mm_tid({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_s2mm_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_s2mm_tlast(1'b0),
        .s_axis_s2mm_tready(NLW_U0_s_axis_s2mm_tready_UNCONNECTED),
        .s_axis_s2mm_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_s2mm_tvalid(1'b0));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module system_axi_dma_1_0_xpm_counter_updn__parameterized1
   (S,
    DI,
    \count_value_i_reg[1]_0 ,
    Q,
    \gwdc.wr_data_count_i_reg[3] ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output [1:0]S;
  output [0:0]DI;
  output [0:0]\count_value_i_reg[1]_0 ;
  input [1:0]Q;
  input [1:0]\gwdc.wr_data_count_i_reg[3] ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire [0:0]DI;
  wire [1:0]Q;
  wire [1:0]S;
  wire [0:0]count_value_i;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[1]_i_2_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire [1:0]\gwdc.wr_data_count_i_reg[3] ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;

  LUT6 #(
    .INIT(64'h000000005A88A655)) 
    \count_value_i[0]_i_1 
       (.I0(count_value_i),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(\count_value_i_reg[0]_0 [1]),
        .I4(ram_empty_i),
        .I5(\count_value_i_reg[0]_1 ),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A8AA)) 
    \count_value_i[1]_i_1 
       (.I0(\count_value_i[1]_i_2_n_0 ),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(ram_empty_i),
        .I4(\count_value_i_reg[0]_1 ),
        .O(\count_value_i[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFFFF755500008AA)) 
    \count_value_i[1]_i_2 
       (.I0(count_value_i),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(\count_value_i_reg[0]_0 [1]),
        .I4(ram_empty_i),
        .I5(\count_value_i_reg[1]_0 ),
        .O(\count_value_i[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(count_value_i),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(\count_value_i_reg[1]_0 ),
        .R(1'b0));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gwdc.wr_data_count_i[3]_i_4 
       (.I0(count_value_i),
        .I1(Q[0]),
        .O(DI));
  LUT4 #(
    .INIT(16'h9669)) 
    \gwdc.wr_data_count_i[3]_i_7 
       (.I0(DI),
        .I1(Q[1]),
        .I2(\count_value_i_reg[1]_0 ),
        .I3(\gwdc.wr_data_count_i_reg[3] [1]),
        .O(S[1]));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \gwdc.wr_data_count_i[3]_i_8 
       (.I0(count_value_i),
        .I1(Q[0]),
        .I2(\gwdc.wr_data_count_i_reg[3] [0]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module system_axi_dma_1_0_xpm_counter_updn__parameterized2
   (DI,
    Q,
    S,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    leaving_empty0,
    \count_value_i_reg[2]_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \gwdc.wr_data_count_i_reg[3] ,
    \gwdc.wr_data_count_i_reg[7] ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ,
    ram_wr_en_pf,
    clr_full,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output [0:0]DI;
  output [6:0]Q;
  output [3:0]S;
  output \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  output leaving_empty0;
  output [0:0]\count_value_i_reg[2]_0 ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  input [0:0]\gwdc.wr_data_count_i_reg[3] ;
  input [7:0]\gwdc.wr_data_count_i_reg[7] ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input [6:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  input ram_wr_en_pf;
  input clr_full;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire [0:0]DI;
  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [6:0]Q;
  wire [3:0]S;
  wire clr_full;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_2__1_n_0 ;
  wire \count_value_i[7]_i_1__0_n_0 ;
  wire \count_value_i[7]_i_2__0_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire [0:0]\count_value_i_reg[2]_0 ;
  wire \count_value_i_reg_n_0_[7] ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire [6:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire going_full1;
  wire [0:0]\gwdc.wr_data_count_i_reg[3] ;
  wire [7:0]\gwdc.wr_data_count_i_reg[7] ;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_wr_en_pf;
  wire rd_en;
  wire wr_clk;

  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__1 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__1 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__1_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__1_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__1 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(Q[5]),
        .I1(\count_value_i[7]_i_2__0_n_0 ),
        .I2(Q[6]),
        .I3(\count_value_i_reg_n_0_[7] ),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[7]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[7]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(\count_value_i_reg_n_0_[7] ),
        .R(\count_value_i_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h000000003B2A2A2A)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ),
        .I1(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I2(leaving_empty0),
        .I3(going_full1),
        .I4(ram_wr_en_pf),
        .I5(clr_full),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT4 #(
    .INIT(16'h9000)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2 
       (.I0(Q[6]),
        .I1(\gwdc.wr_data_count_i_reg[7] [6]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ),
        .O(leaving_empty0));
  LUT4 #(
    .INIT(16'h9000)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [6]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ),
        .O(going_full1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5 
       (.I0(Q[3]),
        .I1(\gwdc.wr_data_count_i_reg[7] [3]),
        .I2(\gwdc.wr_data_count_i_reg[7] [5]),
        .I3(Q[5]),
        .I4(\gwdc.wr_data_count_i_reg[7] [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6 
       (.I0(Q[0]),
        .I1(\gwdc.wr_data_count_i_reg[7] [0]),
        .I2(\gwdc.wr_data_count_i_reg[7] [2]),
        .I3(Q[2]),
        .I4(\gwdc.wr_data_count_i_reg[7] [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ));
  LUT3 #(
    .INIT(8'hD4)) 
    \gwdc.wr_data_count_i[3]_i_3 
       (.I0(Q[1]),
        .I1(\gwdc.wr_data_count_i_reg[3] ),
        .I2(\gwdc.wr_data_count_i_reg[7] [1]),
        .O(DI));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[3]_i_5 
       (.I0(Q[2]),
        .I1(\gwdc.wr_data_count_i_reg[7] [2]),
        .I2(Q[3]),
        .I3(\gwdc.wr_data_count_i_reg[7] [3]),
        .O(\count_value_i_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_5 
       (.I0(Q[6]),
        .I1(\gwdc.wr_data_count_i_reg[7] [6]),
        .I2(\count_value_i_reg_n_0_[7] ),
        .I3(\gwdc.wr_data_count_i_reg[7] [7]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_6 
       (.I0(Q[5]),
        .I1(\gwdc.wr_data_count_i_reg[7] [5]),
        .I2(Q[6]),
        .I3(\gwdc.wr_data_count_i_reg[7] [6]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_7 
       (.I0(Q[4]),
        .I1(\gwdc.wr_data_count_i_reg[7] [4]),
        .I2(Q[5]),
        .I3(\gwdc.wr_data_count_i_reg[7] [5]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_8 
       (.I0(Q[3]),
        .I1(\gwdc.wr_data_count_i_reg[7] [3]),
        .I2(Q[4]),
        .I3(\gwdc.wr_data_count_i_reg[7] [4]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module system_axi_dma_1_0_xpm_counter_updn__parameterized2_3
   (ram_empty_i0,
    Q,
    D,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    leaving_empty0,
    ram_wr_en_pf,
    ram_empty_i,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[7]_0 ,
    rst_d1,
    \gen_pntr_flags_cc.ram_empty_i_reg_0 ,
    DI,
    S,
    \gwdc.wr_data_count_i_reg[7] ,
    \gwdc.wr_data_count_i_reg[3] ,
    \gwdc.wr_data_count_i_reg[7]_0 ,
    wr_clk);
  output ram_empty_i0;
  output [7:0]Q;
  output [6:0]D;
  input \gen_pntr_flags_cc.ram_empty_i_reg ;
  input leaving_empty0;
  input ram_wr_en_pf;
  input ram_empty_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[7]_0 ;
  input rst_d1;
  input [6:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  input [1:0]DI;
  input [2:0]S;
  input [3:0]\gwdc.wr_data_count_i_reg[7] ;
  input [0:0]\gwdc.wr_data_count_i_reg[3] ;
  input [4:0]\gwdc.wr_data_count_i_reg[7]_0 ;
  input wr_clk;

  wire [6:0]D;
  wire [1:0]DI;
  wire [7:0]Q;
  wire [2:0]S;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[7]_i_2_n_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire [0:0]\count_value_i_reg[7]_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg ;
  wire [6:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  wire going_empty1;
  wire \gwdc.wr_data_count_i[3]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[3]_i_6_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_4_n_0 ;
  wire [0:0]\gwdc.wr_data_count_i_reg[3] ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_1 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_3 ;
  wire [3:0]\gwdc.wr_data_count_i_reg[7] ;
  wire [4:0]\gwdc.wr_data_count_i_reg[7]_0 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_1 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_3 ;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_pf;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire [0:0]\NLW_gwdc.wr_data_count_i_reg[3]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_gwdc.wr_data_count_i_reg[7]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[7]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[7]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[7]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_pf),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[7]_0 ));
  LUT5 #(
    .INIT(32'h0FFF0088)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg ),
        .I1(going_empty1),
        .I2(leaving_empty0),
        .I3(ram_wr_en_pf),
        .I4(ram_empty_i),
        .O(ram_empty_i0));
  LUT4 #(
    .INIT(16'h9000)) 
    \gen_pntr_flags_cc.ram_empty_i_i_2 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [6]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ),
        .I3(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ),
        .O(going_empty1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_4 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[3]_i_2 
       (.I0(Q[2]),
        .I1(\gwdc.wr_data_count_i_reg[7]_0 [1]),
        .O(\gwdc.wr_data_count_i[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gwdc.wr_data_count_i[3]_i_6 
       (.I0(Q[1]),
        .I1(\gwdc.wr_data_count_i_reg[3] ),
        .I2(\gwdc.wr_data_count_i_reg[7]_0 [0]),
        .I3(\gwdc.wr_data_count_i_reg[7]_0 [1]),
        .I4(Q[2]),
        .O(\gwdc.wr_data_count_i[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_2 
       (.I0(Q[5]),
        .I1(\gwdc.wr_data_count_i_reg[7]_0 [4]),
        .O(\gwdc.wr_data_count_i[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_3 
       (.I0(Q[4]),
        .I1(\gwdc.wr_data_count_i_reg[7]_0 [3]),
        .O(\gwdc.wr_data_count_i[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_4 
       (.I0(Q[3]),
        .I1(\gwdc.wr_data_count_i_reg[7]_0 [2]),
        .O(\gwdc.wr_data_count_i[7]_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gwdc.wr_data_count_i_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\gwdc.wr_data_count_i_reg[3]_i_1_n_0 ,\gwdc.wr_data_count_i_reg[3]_i_1_n_1 ,\gwdc.wr_data_count_i_reg[3]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\gwdc.wr_data_count_i[3]_i_2_n_0 ,DI,Q[0]}),
        .O({D[2:0],\NLW_gwdc.wr_data_count_i_reg[3]_i_1_O_UNCONNECTED [0]}),
        .S({S[2],\gwdc.wr_data_count_i[3]_i_6_n_0 ,S[1:0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gwdc.wr_data_count_i_reg[7]_i_1 
       (.CI(\gwdc.wr_data_count_i_reg[3]_i_1_n_0 ),
        .CO({\NLW_gwdc.wr_data_count_i_reg[7]_i_1_CO_UNCONNECTED [3],\gwdc.wr_data_count_i_reg[7]_i_1_n_1 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\gwdc.wr_data_count_i[7]_i_2_n_0 ,\gwdc.wr_data_count_i[7]_i_3_n_0 ,\gwdc.wr_data_count_i[7]_i_4_n_0 }),
        .O(D[6:3]),
        .S(\gwdc.wr_data_count_i_reg[7] ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module system_axi_dma_1_0_xpm_counter_updn__parameterized3
   (Q,
    \count_value_i_reg[1]_0 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[0]_0 ,
    E,
    wr_clk);
  output [6:0]Q;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[0]_0 ;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [6:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_2__2_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__2 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__2 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__2 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[1]_0 [1]),
        .I2(\count_value_i_reg[1]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[6]_i_1__2_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module system_axi_dma_1_0_xpm_counter_updn__parameterized3_4
   (Q,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[0]_0 ,
    rst_d1,
    E,
    wr_clk);
  output [6:0]Q;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[0]_0 ;
  input rst_d1;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [6:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_0 ));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0001111100011111" *) (* EN_AE = "1'b1" *) (* EN_AF = "1'b1" *) 
(* EN_DVLD = "1'b1" *) (* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) 
(* EN_PF = "1'b1" *) (* EN_RDC = "1'b1" *) (* EN_UF = "1'b1" *) 
(* EN_WACK = "1'b1" *) (* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "2" *) (* FIFO_MEM_TYPE = "2" *) (* FIFO_READ_DEPTH = "128" *) 
(* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "37248" *) (* FIFO_WRITE_DEPTH = "128" *) 
(* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) (* PE_THRESH_ADJ = "8" *) 
(* PE_THRESH_MAX = "123" *) (* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "8" *) 
(* PF_THRESH_MAX = "123" *) (* PF_THRESH_MIN = "5" *) (* PROG_EMPTY_THRESH = "10" *) 
(* PROG_FULL_THRESH = "10" *) (* RD_DATA_COUNT_WIDTH = "4" *) (* RD_DC_WIDTH_EXT = "8" *) 
(* RD_LATENCY = "2" *) (* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "7" *) 
(* READ_DATA_WIDTH = "291" *) (* READ_MODE = "1" *) (* READ_MODE_LL = "1" *) 
(* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_ADV_FEATURES = "1F1F" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "291" *) (* WR_DATA_COUNT_WIDTH = "8" *) 
(* WR_DC_WIDTH_EXT = "8" *) (* WR_DEPTH_LOG = "7" *) (* WR_PNTR_WIDTH = "7" *) 
(* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "9" *) (* XPM_MODULE = "TRUE" *) 
(* both_stages_valid = "3" *) (* invalid = "0" *) (* keep_hierarchy = "soft" *) 
(* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module system_axi_dma_1_0_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [290:0]din;
  output full;
  output full_n;
  output prog_full;
  output [7:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [290:0]dout;
  output empty;
  output prog_empty;
  output [3:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire clr_full;
  wire [1:1]count_value_i;
  wire [1:0]curr_fwft_state;
  wire data_valid_fwft1;
  wire [290:0]din;
  wire [289:0]\^dout ;
  wire empty;
  wire full;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_fwft.rdpp1_inst_n_0 ;
  wire \gen_fwft.rdpp1_inst_n_1 ;
  wire \gen_fwft.rdpp1_inst_n_2 ;
  wire [7:1]\grdc.diff_wr_rd_pntr_rdc ;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_pf;
  wire rd_en;
  wire [6:0]rd_pntr_ext;
  wire rdp_inst_n_0;
  wire rdp_inst_n_10;
  wire rdp_inst_n_11;
  wire rdp_inst_n_12;
  wire rdp_inst_n_14;
  wire rdp_inst_n_15;
  wire rdp_inst_n_8;
  wire rdp_inst_n_9;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rdpp1_inst_n_4;
  wire rdpp1_inst_n_5;
  wire rdpp1_inst_n_6;
  wire rst;
  wire rst_d1;
  wire sleep;
  wire wr_clk;
  wire [7:1]\^wr_data_count ;
  wire wr_en;
  wire [6:0]wr_pntr_ext;
  wire wrp_inst_n_1;
  wire wrpp1_inst_n_0;
  wire wrpp1_inst_n_1;
  wire wrpp1_inst_n_2;
  wire wrpp1_inst_n_3;
  wire wrpp1_inst_n_4;
  wire wrpp1_inst_n_5;
  wire wrpp1_inst_n_6;
  wire xpm_fifo_rst_inst_n_1;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [290:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;
  wire [290:290]\NLW_gen_sdpram.xpm_memory_base_inst_doutb_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign dout[290] = \<const0> ;
  assign dout[289:0] = \^dout [289:0];
  assign full_n = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[7:1] = \^wr_data_count [7:1];
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_1));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_1));
  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(empty),
        .O(data_valid_fwft1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(data_valid_fwft1),
        .Q(empty),
        .S(xpm_fifo_rst_inst_n_1));
  system_axi_dma_1_0_xpm_counter_updn__parameterized1 \gen_fwft.rdpp1_inst 
       (.DI(\gen_fwft.rdpp1_inst_n_2 ),
        .Q(rd_pntr_ext[1:0]),
        .S({\gen_fwft.rdpp1_inst_n_0 ,\gen_fwft.rdpp1_inst_n_1 }),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[1]_0 (count_value_i),
        .\gwdc.wr_data_count_i_reg[3] (wr_pntr_ext[1:0]),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_15),
        .Q(full),
        .S(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_1));
  (* ADDR_WIDTH_A = "7" *) 
  (* ADDR_WIDTH_B = "7" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "291" *) 
  (* BYTE_WRITE_WIDTH_B = "291" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_BIT_RANGE = "[7:0]" *) 
  (* ECC_MODE = "0" *) 
  (* ECC_TYPE = "NONE" *) 
  (* IGNORE_INIT_SYNTH = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "289" *) 
  (* \MEM.ADDRESS_SPACE_END  = "511" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "290" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "2" *) 
  (* MEMORY_SIZE = "37248" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "128" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "block" *) 
  (* P_MIN_WIDTH_DATA = "291" *) 
  (* P_MIN_WIDTH_DATA_A = "291" *) 
  (* P_MIN_WIDTH_DATA_B = "291" *) 
  (* P_MIN_WIDTH_DATA_ECC = "291" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "291" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "no" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "7" *) 
  (* P_WIDTH_ADDR_READ_B = "7" *) 
  (* P_WIDTH_ADDR_WRITE_A = "7" *) 
  (* P_WIDTH_ADDR_WRITE_B = "7" *) 
  (* P_WIDTH_COL_WRITE_A = "291" *) 
  (* P_WIDTH_COL_WRITE_B = "291" *) 
  (* RAM_DECOMP = "auto" *) 
  (* READ_DATA_WIDTH_A = "291" *) 
  (* READ_DATA_WIDTH_B = "291" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "291" *) 
  (* WRITE_DATA_WIDTH_B = "291" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "292" *) 
  (* rstb_loop_iter = "292" *) 
  system_axi_dma_1_0_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina({1'b0,din[289:0]}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [290:0]),
        .doutb({\NLW_gen_sdpram.xpm_memory_base_inst_doutb_UNCONNECTED [290],\^dout }),
        .ena(1'b0),
        .enb(rdp_inst_n_12),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_1),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(ram_wr_en_pf),
        .web(1'b0));
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  FDRE \gwdc.wr_data_count_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [1]),
        .Q(\^wr_data_count [1]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [2]),
        .Q(\^wr_data_count [2]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [3]),
        .Q(\^wr_data_count [3]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [4]),
        .Q(\^wr_data_count [4]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [5]),
        .Q(\^wr_data_count [5]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [6]),
        .Q(\^wr_data_count [6]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [7]),
        .Q(\^wr_data_count [7]),
        .R(xpm_fifo_rst_inst_n_1));
  system_axi_dma_1_0_xpm_counter_updn__parameterized2 rdp_inst
       (.DI(rdp_inst_n_0),
        .\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdp_inst_n_12),
        .Q(rd_pntr_ext),
        .S({rdp_inst_n_8,rdp_inst_n_9,rdp_inst_n_10,rdp_inst_n_11}),
        .clr_full(clr_full),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[2]_0 (rdp_inst_n_14),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (rdp_inst_n_15),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6}),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 (full),
        .\gwdc.wr_data_count_i_reg[3] (count_value_i),
        .\gwdc.wr_data_count_i_reg[7] ({wrp_inst_n_1,wr_pntr_ext}),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  system_axi_dma_1_0_xpm_counter_updn__parameterized3 rdpp1_inst
       (.E(rdp_inst_n_12),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6}),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  system_axi_dma_1_0_xpm_fifo_reg_bit rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .clr_full(clr_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk));
  system_axi_dma_1_0_xpm_counter_updn__parameterized2_3 wrp_inst
       (.D(\grdc.diff_wr_rd_pntr_rdc ),
        .DI({rdp_inst_n_0,\gen_fwft.rdpp1_inst_n_2 }),
        .Q({wrp_inst_n_1,wr_pntr_ext}),
        .S({rdp_inst_n_14,\gen_fwft.rdpp1_inst_n_0 ,\gen_fwft.rdpp1_inst_n_1 }),
        .\count_value_i_reg[5]_0 (full),
        .\count_value_i_reg[7]_0 (xpm_fifo_rst_inst_n_1),
        .\gen_pntr_flags_cc.ram_empty_i_reg (rdp_inst_n_12),
        .\gen_pntr_flags_cc.ram_empty_i_reg_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6}),
        .\gwdc.wr_data_count_i_reg[3] (count_value_i),
        .\gwdc.wr_data_count_i_reg[7] ({rdp_inst_n_8,rdp_inst_n_9,rdp_inst_n_10,rdp_inst_n_11}),
        .\gwdc.wr_data_count_i_reg[7]_0 (rd_pntr_ext[5:1]),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  system_axi_dma_1_0_xpm_counter_updn__parameterized3_4 wrpp1_inst
       (.E(ram_wr_en_pf),
        .Q({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6}),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (full),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  system_axi_dma_1_0_xpm_fifo_rst xpm_fifo_rst_inst
       (.E(ram_wr_en_pf),
        .Q(xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[6] (full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

module system_axi_dma_1_0_xpm_fifo_reg_bit
   (rst_d1,
    clr_full,
    Q,
    wr_clk,
    rst);
  output rst_d1;
  output clr_full;
  input [0:0]Q;
  input wr_clk;
  input rst;

  wire [0:0]Q;
  wire clr_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;

  FDRE #(
    .INIT(1'b0)) 
    d_out_int_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4 
       (.I0(rst),
        .I1(rst_d1),
        .I2(Q),
        .O(clr_full));
endmodule

module system_axi_dma_1_0_xpm_fifo_rst
   (E,
    Q,
    rst,
    wr_en,
    \count_value_i_reg[6] ,
    rst_d1,
    wr_clk);
  output [0:0]E;
  output [0:0]Q;
  input rst;
  input wr_en;
  input \count_value_i_reg[6] ;
  input rst_d1;
  input wr_clk;

  wire [0:0]E;
  wire [0:0]Q;
  wire \count_value_i_reg[6] ;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire wr_clk;
  wire wr_en;

  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_cc[2]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(Q),
        .S(rst_i));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[6] ),
        .I2(Q),
        .I3(rst_d1),
        .O(E));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* CASCADE_HEIGHT = "0" *) (* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_SYNC = "16'b0001111100011111" *) (* FIFO_MEMORY_TYPE = "block" *) (* FIFO_READ_LATENCY = "0" *) 
(* FIFO_WRITE_DEPTH = "128" *) (* FULL_RESET_VALUE = "1" *) (* PROG_EMPTY_THRESH = "10" *) 
(* PROG_FULL_THRESH = "10" *) (* P_COMMON_CLOCK = "1" *) (* P_ECC_MODE = "0" *) 
(* P_FIFO_MEMORY_TYPE = "2" *) (* P_READ_MODE = "1" *) (* P_WAKEUP_TIME = "2" *) 
(* RD_DATA_COUNT_WIDTH = "4" *) (* READ_DATA_WIDTH = "291" *) (* READ_MODE = "fwft" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "1F1F" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH = "291" *) (* WR_DATA_COUNT_WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) 
module system_axi_dma_1_0_xpm_fifo_sync
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [290:0]din;
  output full;
  output prog_full;
  output [7:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_en;
  output [290:0]dout;
  output empty;
  output prog_empty;
  output [3:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [290:0]din;
  wire [289:0]\^dout ;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire sleep;
  wire wr_clk;
  wire [7:1]\^wr_data_count ;
  wire wr_en;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_n_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;
  wire [290:290]NLW_xpm_fifo_base_inst_dout_UNCONNECTED;
  wire [3:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign dout[290] = \<const0> ;
  assign dout[289:0] = \^dout [289:0];
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[7:1] = \^wr_data_count [7:1];
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001111100011111" *) 
  (* EN_AE = "1'b1" *) 
  (* EN_AF = "1'b1" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b1" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "2" *) 
  (* FIFO_MEM_TYPE = "2" *) 
  (* FIFO_READ_DEPTH = "128" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "37248" *) 
  (* FIFO_WRITE_DEPTH = "128" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "123" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "8" *) 
  (* PF_THRESH_MAX = "123" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "4" *) 
  (* RD_DC_WIDTH_EXT = "8" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "7" *) 
  (* READ_DATA_WIDTH = "291" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "1F1F" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "291" *) 
  (* WR_DATA_COUNT_WIDTH = "8" *) 
  (* WR_DC_WIDTH_EXT = "8" *) 
  (* WR_DEPTH_LOG = "7" *) 
  (* WR_PNTR_WIDTH = "7" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "9" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  system_axi_dma_1_0_xpm_fifo_base xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din({1'b0,din[289:0]}),
        .dout({NLW_xpm_fifo_base_inst_dout_UNCONNECTED[290],\^dout }),
        .empty(empty),
        .full(full),
        .full_n(NLW_xpm_fifo_base_inst_full_n_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED),
        .rd_clk(1'b0),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[3:0]),
        .rd_en(rd_en),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(sleep),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count({\^wr_data_count ,NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED[0]}),
        .wr_en(wr_en),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
endmodule

(* ADDR_WIDTH_A = "7" *) (* ADDR_WIDTH_B = "7" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "291" *) (* BYTE_WRITE_WIDTH_B = "291" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "2" *) (* MEMORY_SIZE = "37248" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "no_ecc" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "128" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "block" *) (* P_MIN_WIDTH_DATA = "291" *) 
(* P_MIN_WIDTH_DATA_A = "291" *) (* P_MIN_WIDTH_DATA_B = "291" *) (* P_MIN_WIDTH_DATA_ECC = "291" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "291" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) 
(* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "no" *) 
(* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "7" *) (* P_WIDTH_ADDR_READ_B = "7" *) 
(* P_WIDTH_ADDR_WRITE_A = "7" *) (* P_WIDTH_ADDR_WRITE_B = "7" *) (* P_WIDTH_COL_WRITE_A = "291" *) 
(* P_WIDTH_COL_WRITE_B = "291" *) (* RAM_DECOMP = "auto" *) (* READ_DATA_WIDTH_A = "291" *) 
(* READ_DATA_WIDTH_B = "291" *) (* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "291" *) (* WRITE_DATA_WIDTH_B = "291" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* rsta_loop_iter = "292" *) 
(* rstb_loop_iter = "292" *) 
module system_axi_dma_1_0_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [6:0]addra;
  input [290:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [290:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [6:0]addrb;
  input [290:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [290:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [6:0]addra;
  wire [6:0]addrb;
  wire clka;
  wire [290:0]dina;
  wire [289:0]\^doutb ;
  wire enb;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_3_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_3_RDADDRECC_UNCONNECTED ;
  wire [15:2]\NLW_gen_wr_a.gen_word_narrow.mem_reg_4_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_4_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_4_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_4_DOPBDOP_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[290] = \<const0> ;
  assign douta[289] = \<const0> ;
  assign douta[288] = \<const0> ;
  assign douta[287] = \<const0> ;
  assign douta[286] = \<const0> ;
  assign douta[285] = \<const0> ;
  assign douta[284] = \<const0> ;
  assign douta[283] = \<const0> ;
  assign douta[282] = \<const0> ;
  assign douta[281] = \<const0> ;
  assign douta[280] = \<const0> ;
  assign douta[279] = \<const0> ;
  assign douta[278] = \<const0> ;
  assign douta[277] = \<const0> ;
  assign douta[276] = \<const0> ;
  assign douta[275] = \<const0> ;
  assign douta[274] = \<const0> ;
  assign douta[273] = \<const0> ;
  assign douta[272] = \<const0> ;
  assign douta[271] = \<const0> ;
  assign douta[270] = \<const0> ;
  assign douta[269] = \<const0> ;
  assign douta[268] = \<const0> ;
  assign douta[267] = \<const0> ;
  assign douta[266] = \<const0> ;
  assign douta[265] = \<const0> ;
  assign douta[264] = \<const0> ;
  assign douta[263] = \<const0> ;
  assign douta[262] = \<const0> ;
  assign douta[261] = \<const0> ;
  assign douta[260] = \<const0> ;
  assign douta[259] = \<const0> ;
  assign douta[258] = \<const0> ;
  assign douta[257] = \<const0> ;
  assign douta[256] = \<const0> ;
  assign douta[255] = \<const0> ;
  assign douta[254] = \<const0> ;
  assign douta[253] = \<const0> ;
  assign douta[252] = \<const0> ;
  assign douta[251] = \<const0> ;
  assign douta[250] = \<const0> ;
  assign douta[249] = \<const0> ;
  assign douta[248] = \<const0> ;
  assign douta[247] = \<const0> ;
  assign douta[246] = \<const0> ;
  assign douta[245] = \<const0> ;
  assign douta[244] = \<const0> ;
  assign douta[243] = \<const0> ;
  assign douta[242] = \<const0> ;
  assign douta[241] = \<const0> ;
  assign douta[240] = \<const0> ;
  assign douta[239] = \<const0> ;
  assign douta[238] = \<const0> ;
  assign douta[237] = \<const0> ;
  assign douta[236] = \<const0> ;
  assign douta[235] = \<const0> ;
  assign douta[234] = \<const0> ;
  assign douta[233] = \<const0> ;
  assign douta[232] = \<const0> ;
  assign douta[231] = \<const0> ;
  assign douta[230] = \<const0> ;
  assign douta[229] = \<const0> ;
  assign douta[228] = \<const0> ;
  assign douta[227] = \<const0> ;
  assign douta[226] = \<const0> ;
  assign douta[225] = \<const0> ;
  assign douta[224] = \<const0> ;
  assign douta[223] = \<const0> ;
  assign douta[222] = \<const0> ;
  assign douta[221] = \<const0> ;
  assign douta[220] = \<const0> ;
  assign douta[219] = \<const0> ;
  assign douta[218] = \<const0> ;
  assign douta[217] = \<const0> ;
  assign douta[216] = \<const0> ;
  assign douta[215] = \<const0> ;
  assign douta[214] = \<const0> ;
  assign douta[213] = \<const0> ;
  assign douta[212] = \<const0> ;
  assign douta[211] = \<const0> ;
  assign douta[210] = \<const0> ;
  assign douta[209] = \<const0> ;
  assign douta[208] = \<const0> ;
  assign douta[207] = \<const0> ;
  assign douta[206] = \<const0> ;
  assign douta[205] = \<const0> ;
  assign douta[204] = \<const0> ;
  assign douta[203] = \<const0> ;
  assign douta[202] = \<const0> ;
  assign douta[201] = \<const0> ;
  assign douta[200] = \<const0> ;
  assign douta[199] = \<const0> ;
  assign douta[198] = \<const0> ;
  assign douta[197] = \<const0> ;
  assign douta[196] = \<const0> ;
  assign douta[195] = \<const0> ;
  assign douta[194] = \<const0> ;
  assign douta[193] = \<const0> ;
  assign douta[192] = \<const0> ;
  assign douta[191] = \<const0> ;
  assign douta[190] = \<const0> ;
  assign douta[189] = \<const0> ;
  assign douta[188] = \<const0> ;
  assign douta[187] = \<const0> ;
  assign douta[186] = \<const0> ;
  assign douta[185] = \<const0> ;
  assign douta[184] = \<const0> ;
  assign douta[183] = \<const0> ;
  assign douta[182] = \<const0> ;
  assign douta[181] = \<const0> ;
  assign douta[180] = \<const0> ;
  assign douta[179] = \<const0> ;
  assign douta[178] = \<const0> ;
  assign douta[177] = \<const0> ;
  assign douta[176] = \<const0> ;
  assign douta[175] = \<const0> ;
  assign douta[174] = \<const0> ;
  assign douta[173] = \<const0> ;
  assign douta[172] = \<const0> ;
  assign douta[171] = \<const0> ;
  assign douta[170] = \<const0> ;
  assign douta[169] = \<const0> ;
  assign douta[168] = \<const0> ;
  assign douta[167] = \<const0> ;
  assign douta[166] = \<const0> ;
  assign douta[165] = \<const0> ;
  assign douta[164] = \<const0> ;
  assign douta[163] = \<const0> ;
  assign douta[162] = \<const0> ;
  assign douta[161] = \<const0> ;
  assign douta[160] = \<const0> ;
  assign douta[159] = \<const0> ;
  assign douta[158] = \<const0> ;
  assign douta[157] = \<const0> ;
  assign douta[156] = \<const0> ;
  assign douta[155] = \<const0> ;
  assign douta[154] = \<const0> ;
  assign douta[153] = \<const0> ;
  assign douta[152] = \<const0> ;
  assign douta[151] = \<const0> ;
  assign douta[150] = \<const0> ;
  assign douta[149] = \<const0> ;
  assign douta[148] = \<const0> ;
  assign douta[147] = \<const0> ;
  assign douta[146] = \<const0> ;
  assign douta[145] = \<const0> ;
  assign douta[144] = \<const0> ;
  assign douta[143] = \<const0> ;
  assign douta[142] = \<const0> ;
  assign douta[141] = \<const0> ;
  assign douta[140] = \<const0> ;
  assign douta[139] = \<const0> ;
  assign douta[138] = \<const0> ;
  assign douta[137] = \<const0> ;
  assign douta[136] = \<const0> ;
  assign douta[135] = \<const0> ;
  assign douta[134] = \<const0> ;
  assign douta[133] = \<const0> ;
  assign douta[132] = \<const0> ;
  assign douta[131] = \<const0> ;
  assign douta[130] = \<const0> ;
  assign douta[129] = \<const0> ;
  assign douta[128] = \<const0> ;
  assign douta[127] = \<const0> ;
  assign douta[126] = \<const0> ;
  assign douta[125] = \<const0> ;
  assign douta[124] = \<const0> ;
  assign douta[123] = \<const0> ;
  assign douta[122] = \<const0> ;
  assign douta[121] = \<const0> ;
  assign douta[120] = \<const0> ;
  assign douta[119] = \<const0> ;
  assign douta[118] = \<const0> ;
  assign douta[117] = \<const0> ;
  assign douta[116] = \<const0> ;
  assign douta[115] = \<const0> ;
  assign douta[114] = \<const0> ;
  assign douta[113] = \<const0> ;
  assign douta[112] = \<const0> ;
  assign douta[111] = \<const0> ;
  assign douta[110] = \<const0> ;
  assign douta[109] = \<const0> ;
  assign douta[108] = \<const0> ;
  assign douta[107] = \<const0> ;
  assign douta[106] = \<const0> ;
  assign douta[105] = \<const0> ;
  assign douta[104] = \<const0> ;
  assign douta[103] = \<const0> ;
  assign douta[102] = \<const0> ;
  assign douta[101] = \<const0> ;
  assign douta[100] = \<const0> ;
  assign douta[99] = \<const0> ;
  assign douta[98] = \<const0> ;
  assign douta[97] = \<const0> ;
  assign douta[96] = \<const0> ;
  assign douta[95] = \<const0> ;
  assign douta[94] = \<const0> ;
  assign douta[93] = \<const0> ;
  assign douta[92] = \<const0> ;
  assign douta[91] = \<const0> ;
  assign douta[90] = \<const0> ;
  assign douta[89] = \<const0> ;
  assign douta[88] = \<const0> ;
  assign douta[87] = \<const0> ;
  assign douta[86] = \<const0> ;
  assign douta[85] = \<const0> ;
  assign douta[84] = \<const0> ;
  assign douta[83] = \<const0> ;
  assign douta[82] = \<const0> ;
  assign douta[81] = \<const0> ;
  assign douta[80] = \<const0> ;
  assign douta[79] = \<const0> ;
  assign douta[78] = \<const0> ;
  assign douta[77] = \<const0> ;
  assign douta[76] = \<const0> ;
  assign douta[75] = \<const0> ;
  assign douta[74] = \<const0> ;
  assign douta[73] = \<const0> ;
  assign douta[72] = \<const0> ;
  assign douta[71] = \<const0> ;
  assign douta[70] = \<const0> ;
  assign douta[69] = \<const0> ;
  assign douta[68] = \<const0> ;
  assign douta[67] = \<const0> ;
  assign douta[66] = \<const0> ;
  assign douta[65] = \<const0> ;
  assign douta[64] = \<const0> ;
  assign douta[63] = \<const0> ;
  assign douta[62] = \<const0> ;
  assign douta[61] = \<const0> ;
  assign douta[60] = \<const0> ;
  assign douta[59] = \<const0> ;
  assign douta[58] = \<const0> ;
  assign douta[57] = \<const0> ;
  assign douta[56] = \<const0> ;
  assign douta[55] = \<const0> ;
  assign douta[54] = \<const0> ;
  assign douta[53] = \<const0> ;
  assign douta[52] = \<const0> ;
  assign douta[51] = \<const0> ;
  assign douta[50] = \<const0> ;
  assign douta[49] = \<const0> ;
  assign douta[48] = \<const0> ;
  assign douta[47] = \<const0> ;
  assign douta[46] = \<const0> ;
  assign douta[45] = \<const0> ;
  assign douta[44] = \<const0> ;
  assign douta[43] = \<const0> ;
  assign douta[42] = \<const0> ;
  assign douta[41] = \<const0> ;
  assign douta[40] = \<const0> ;
  assign douta[39] = \<const0> ;
  assign douta[38] = \<const0> ;
  assign douta[37] = \<const0> ;
  assign douta[36] = \<const0> ;
  assign douta[35] = \<const0> ;
  assign douta[34] = \<const0> ;
  assign douta[33] = \<const0> ;
  assign douta[32] = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign doutb[290] = \<const0> ;
  assign doutb[289:0] = \^doutb [289:0];
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "511" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p8_d64" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "71" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p8_d64" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "71" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "37248" *) 
  (* RTL_RAM_NAME = "U0/I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/GEN_INCLUDE_MM2S_SF.I_RD_SF/I_DATA_FIFO/BLK_MEM.I_SYNC_FIFOGEN_FIFO/xpm_fifo_instance.xpm_fifo_sync_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "71" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0 
       (.ADDRARDADDR({1'b1,1'b0,1'b0,addrb,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b0,1'b0,addra,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DBITERR_UNCONNECTED ),
        .DIADI(dina[31:0]),
        .DIBDI(dina[63:32]),
        .DIPADIP(dina[67:64]),
        .DIPBDIP(dina[71:68]),
        .DOADO(\^doutb [31:0]),
        .DOBDO(\^doutb [63:32]),
        .DOPADOP(\^doutb [67:64]),
        .DOPBDOP(\^doutb [71:68]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(enb),
        .ENBWREN(1'b1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(regceb),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rstb),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({wea,wea,wea,wea,wea,wea,wea,wea}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "511" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p8_d64" *) 
  (* \MEM.PORTA.DATA_LSB  = "72" *) 
  (* \MEM.PORTA.DATA_MSB  = "143" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p8_d64" *) 
  (* \MEM.PORTB.DATA_LSB  = "72" *) 
  (* \MEM.PORTB.DATA_MSB  = "143" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "37248" *) 
  (* RTL_RAM_NAME = "U0/I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/GEN_INCLUDE_MM2S_SF.I_RD_SF/I_DATA_FIFO/BLK_MEM.I_SYNC_FIFOGEN_FIFO/xpm_fifo_instance.xpm_fifo_sync_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_1" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "72" *) 
  (* ram_slice_end = "143" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \gen_wr_a.gen_word_narrow.mem_reg_1 
       (.ADDRARDADDR({1'b1,1'b0,1'b0,addrb,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b0,1'b0,addra,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DBITERR_UNCONNECTED ),
        .DIADI(dina[103:72]),
        .DIBDI(dina[135:104]),
        .DIPADIP(dina[139:136]),
        .DIPBDIP(dina[143:140]),
        .DOADO(\^doutb [103:72]),
        .DOBDO(\^doutb [135:104]),
        .DOPADOP(\^doutb [139:136]),
        .DOPBDOP(\^doutb [143:140]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(enb),
        .ENBWREN(1'b1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(regceb),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rstb),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({wea,wea,wea,wea,wea,wea,wea,wea}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "511" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p8_d64" *) 
  (* \MEM.PORTA.DATA_LSB  = "144" *) 
  (* \MEM.PORTA.DATA_MSB  = "215" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p8_d64" *) 
  (* \MEM.PORTB.DATA_LSB  = "144" *) 
  (* \MEM.PORTB.DATA_MSB  = "215" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "37248" *) 
  (* RTL_RAM_NAME = "U0/I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/GEN_INCLUDE_MM2S_SF.I_RD_SF/I_DATA_FIFO/BLK_MEM.I_SYNC_FIFOGEN_FIFO/xpm_fifo_instance.xpm_fifo_sync_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "144" *) 
  (* ram_slice_end = "215" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \gen_wr_a.gen_word_narrow.mem_reg_2 
       (.ADDRARDADDR({1'b1,1'b0,1'b0,addrb,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b0,1'b0,addra,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DBITERR_UNCONNECTED ),
        .DIADI(dina[175:144]),
        .DIBDI(dina[207:176]),
        .DIPADIP(dina[211:208]),
        .DIPBDIP(dina[215:212]),
        .DOADO(\^doutb [175:144]),
        .DOBDO(\^doutb [207:176]),
        .DOPADOP(\^doutb [211:208]),
        .DOPBDOP(\^doutb [215:212]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(enb),
        .ENBWREN(1'b1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(regceb),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rstb),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({wea,wea,wea,wea,wea,wea,wea,wea}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "511" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p8_d64" *) 
  (* \MEM.PORTA.DATA_LSB  = "216" *) 
  (* \MEM.PORTA.DATA_MSB  = "287" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p8_d64" *) 
  (* \MEM.PORTB.DATA_LSB  = "216" *) 
  (* \MEM.PORTB.DATA_MSB  = "287" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "37248" *) 
  (* RTL_RAM_NAME = "U0/I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/GEN_INCLUDE_MM2S_SF.I_RD_SF/I_DATA_FIFO/BLK_MEM.I_SYNC_FIFOGEN_FIFO/xpm_fifo_instance.xpm_fifo_sync_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_3" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "216" *) 
  (* ram_slice_end = "287" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \gen_wr_a.gen_word_narrow.mem_reg_3 
       (.ADDRARDADDR({1'b1,1'b0,1'b0,addrb,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b0,1'b0,addra,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_3_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_3_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_3_DBITERR_UNCONNECTED ),
        .DIADI(dina[247:216]),
        .DIBDI(dina[279:248]),
        .DIPADIP(dina[283:280]),
        .DIPBDIP(dina[287:284]),
        .DOADO(\^doutb [247:216]),
        .DOBDO(\^doutb [279:248]),
        .DOPADOP(\^doutb [283:280]),
        .DOPBDOP(\^doutb [287:284]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_3_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(enb),
        .ENBWREN(1'b1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_3_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(regceb),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rstb),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_3_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({wea,wea,wea,wea,wea,wea,wea,wea}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "511" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTA.DATA_LSB  = "288" *) 
  (* \MEM.PORTA.DATA_MSB  = "289" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_LSB  = "288" *) 
  (* \MEM.PORTB.DATA_MSB  = "289" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "37248" *) 
  (* RTL_RAM_NAME = "U0/I_PRMRY_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/GEN_INCLUDE_MM2S_SF.I_RD_SF/I_DATA_FIFO/BLK_MEM.I_SYNC_FIFOGEN_FIFO/xpm_fifo_instance.xpm_fifo_sync_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_4" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "288" *) 
  (* ram_slice_end = "289" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_a.gen_word_narrow.mem_reg_4 
       (.ADDRARDADDR({1'b0,1'b0,addrb,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,dina[289:288]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({\NLW_gen_wr_a.gen_word_narrow.mem_reg_4_DOADO_UNCONNECTED [15:2],\^doutb [289:288]}),
        .DOBDO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_4_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_4_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_4_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(enb),
        .ENBWREN(1'b1),
        .REGCEAREGCE(regceb),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rstb),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({wea,wea,wea,wea}));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
