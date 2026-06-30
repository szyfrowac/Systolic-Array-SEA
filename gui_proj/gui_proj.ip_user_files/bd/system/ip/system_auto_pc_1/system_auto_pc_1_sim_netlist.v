// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Tue Jun 30 08:53:46 2026
// Host        : phanikar-Latitude-5410 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top system_auto_pc_1 -prefix
//               system_auto_pc_1_ system_auto_pc_1_sim_netlist.v
// Design      : system_auto_pc_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_auto_pc_1_axi_data_fifo_v2_1_27_axic_fifo
   (dout,
    empty,
    SR,
    aresetn_0,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    S_AXI_AREADY_I_reg,
    \areset_d_reg[1] ,
    aclk,
    m_axi_awlen,
    rd_en,
    aresetn,
    m_axi_awvalid_0,
    command_ongoing,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    E,
    s_axi_awvalid,
    Q);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output aresetn_0;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output S_AXI_AREADY_I_reg;
  output \areset_d_reg[1] ;
  input aclk;
  input [3:0]m_axi_awlen;
  input rd_en;
  input aresetn;
  input m_axi_awvalid_0;
  input command_ongoing;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input [0:0]E;
  input s_axi_awvalid;
  input [1:0]Q;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_reg;
  wire aclk;
  wire \areset_d_reg[1] ;
  wire aresetn;
  wire aresetn_0;
  wire command_ongoing;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [3:0]m_axi_awlen;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_awvalid_0;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  system_auto_pc_1_axi_data_fifo_v2_1_27_fifo_gen inst
       (.E(E),
        .Q(Q),
        .SR(SR),
        .S_AXI_AREADY_I_reg(S_AXI_AREADY_I_reg),
        .aclk(aclk),
        .\areset_d_reg[1] (\areset_d_reg[1] ),
        .aresetn(aresetn),
        .aresetn_0(aresetn_0),
        .command_ongoing(command_ongoing),
        .dout(dout),
        .empty(empty),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(length_counter_1_reg_1_sn_1),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awvalid_0(m_axi_awvalid_0),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(rd_en),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module system_auto_pc_1_axi_data_fifo_v2_1_27_fifo_gen
   (dout,
    empty,
    SR,
    aresetn_0,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    S_AXI_AREADY_I_reg,
    \areset_d_reg[1] ,
    aclk,
    m_axi_awlen,
    rd_en,
    aresetn,
    m_axi_awvalid_0,
    command_ongoing,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    E,
    s_axi_awvalid,
    Q);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output aresetn_0;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output S_AXI_AREADY_I_reg;
  output \areset_d_reg[1] ;
  input aclk;
  input [3:0]m_axi_awlen;
  input rd_en;
  input aresetn;
  input m_axi_awvalid_0;
  input command_ongoing;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input [0:0]E;
  input s_axi_awvalid;
  input [1:0]Q;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_i_3_n_0;
  wire S_AXI_AREADY_I_reg;
  wire aclk;
  wire \areset_d_reg[1] ;
  wire aresetn;
  wire aresetn_0;
  wire cmd_push;
  wire command_ongoing;
  wire command_ongoing_i_2_n_0;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire full;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [3:0]m_axi_awlen;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_awvalid_0;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire s_axi_awvalid;
  wire s_axi_wvalid;
  wire NLW_fifo_gen_inst_almost_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_almost_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED;
  wire NLW_fifo_gen_inst_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_valid_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_ack_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_data_count_UNCONNECTED;
  wire [4:4]NLW_fifo_gen_inst_dout_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_rd_data_count_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_wr_data_count_UNCONNECTED;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_AREADY_I_i_1
       (.I0(aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'h22722272FFFF2272)) 
    S_AXI_AREADY_I_i_2
       (.I0(E),
        .I1(s_axi_awvalid),
        .I2(m_axi_awready),
        .I3(S_AXI_AREADY_I_i_3_n_0),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(S_AXI_AREADY_I_reg));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    S_AXI_AREADY_I_i_3
       (.I0(m_axi_awvalid_0),
        .I1(full),
        .I2(command_ongoing),
        .O(S_AXI_AREADY_I_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00888A88)) 
    cmd_push_block_i_1
       (.I0(aresetn),
        .I1(m_axi_awvalid_0),
        .I2(full),
        .I3(command_ongoing),
        .I4(m_axi_awready),
        .O(aresetn_0));
  LUT6 #(
    .INIT(64'hF222FFFFD000D000)) 
    command_ongoing_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(E),
        .I3(s_axi_awvalid),
        .I4(command_ongoing_i_2_n_0),
        .I5(command_ongoing),
        .O(\areset_d_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    command_ongoing_i_2
       (.I0(m_axi_awready),
        .I1(command_ongoing),
        .I2(full),
        .I3(m_axi_awvalid_0),
        .O(command_ongoing_i_2_n_0));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "5" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "5" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "0" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  system_auto_pc_1_fifo_generator_v13_2_8 fifo_gen_inst
       (.almost_empty(NLW_fifo_gen_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_fifo_gen_inst_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_fifo_gen_inst_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_fifo_gen_inst_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_fifo_gen_inst_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(aclk),
        .data_count(NLW_fifo_gen_inst_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_fifo_gen_inst_dbiterr_UNCONNECTED),
        .din({1'b0,m_axi_awlen}),
        .dout({NLW_fifo_gen_inst_dout_UNCONNECTED[4],dout}),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED[3:0]),
        .m_axi_arlen(NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED[3:0]),
        .m_axi_awlen(NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED[3:0]),
        .m_axi_wlast(NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tdest(NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED[7:0]),
        .m_axis_tkeep(NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_fifo_gen_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_fifo_gen_inst_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_fifo_gen_inst_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_fifo_gen_inst_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED),
        .rst(SR),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_fifo_gen_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_fifo_gen_inst_underflow_UNCONNECTED),
        .valid(NLW_fifo_gen_inst_valid_UNCONNECTED),
        .wr_ack(NLW_fifo_gen_inst_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_fifo_gen_inst_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(cmd_push),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    fifo_gen_inst_i_1
       (.I0(command_ongoing),
        .I1(full),
        .I2(m_axi_awvalid_0),
        .O(cmd_push));
  LUT6 #(
    .INIT(64'hE4E4CC664E4ECC66)) 
    \length_counter_1[1]_i_1 
       (.I0(empty_fwft_i_reg),
        .I1(length_counter_1_reg[1]),
        .I2(dout[1]),
        .I3(length_counter_1_reg[0]),
        .I4(first_mi_word),
        .I5(dout[0]),
        .O(length_counter_1_reg_1_sn_1));
  LUT3 #(
    .INIT(8'hA2)) 
    m_axi_awvalid_INST_0
       (.I0(command_ongoing),
        .I1(full),
        .I2(m_axi_awvalid_0),
        .O(m_axi_awvalid));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m_axi_wvalid_INST_0
       (.I0(s_axi_wvalid),
        .I1(empty),
        .O(m_axi_wvalid));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    s_axi_wready_INST_0
       (.I0(empty),
        .I1(s_axi_wvalid),
        .I2(m_axi_wready),
        .O(empty_fwft_i_reg));
endmodule

module system_auto_pc_1_axi_protocol_converter_v2_1_28_a_axi3_conv
   (dout,
    empty,
    SR,
    m_axi_awlen,
    m_axi_awlock,
    E,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    m_axi_awaddr,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    aclk,
    rd_en,
    s_axi_awlock,
    aresetn,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    s_axi_awvalid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output [3:0]m_axi_awlen;
  output [0:0]m_axi_awlock;
  output [0:0]E;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output [31:0]m_axi_awaddr;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  input aclk;
  input rd_en;
  input [0:0]s_axi_awlock;
  input aresetn;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input s_axi_awvalid;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;

  wire [0:0]E;
  wire [0:0]SR;
  wire \USE_BURSTS.cmd_queue_n_11 ;
  wire \USE_BURSTS.cmd_queue_n_12 ;
  wire \USE_BURSTS.cmd_queue_n_6 ;
  wire aclk;
  wire [1:0]areset_d;
  wire aresetn;
  wire cmd_push_block_reg_n_0;
  wire command_ongoing;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  FDRE \S_AXI_AADDR_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[0]),
        .Q(m_axi_awaddr[0]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[10]),
        .Q(m_axi_awaddr[10]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[11]),
        .Q(m_axi_awaddr[11]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[12]),
        .Q(m_axi_awaddr[12]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[13]),
        .Q(m_axi_awaddr[13]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[14]),
        .Q(m_axi_awaddr[14]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[15]),
        .Q(m_axi_awaddr[15]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[16] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[16]),
        .Q(m_axi_awaddr[16]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[17] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[17]),
        .Q(m_axi_awaddr[17]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[18] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[18]),
        .Q(m_axi_awaddr[18]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[19] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[19]),
        .Q(m_axi_awaddr[19]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[1]),
        .Q(m_axi_awaddr[1]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[20] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[20]),
        .Q(m_axi_awaddr[20]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[21] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[21]),
        .Q(m_axi_awaddr[21]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[22] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[22]),
        .Q(m_axi_awaddr[22]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[23] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[23]),
        .Q(m_axi_awaddr[23]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[24] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[24]),
        .Q(m_axi_awaddr[24]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[25] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[25]),
        .Q(m_axi_awaddr[25]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[26] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[26]),
        .Q(m_axi_awaddr[26]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[27] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[27]),
        .Q(m_axi_awaddr[27]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[28] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[28]),
        .Q(m_axi_awaddr[28]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[29] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[29]),
        .Q(m_axi_awaddr[29]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[2]),
        .Q(m_axi_awaddr[2]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[30] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[30]),
        .Q(m_axi_awaddr[30]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[31]),
        .Q(m_axi_awaddr[31]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[3]),
        .Q(m_axi_awaddr[3]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[4]),
        .Q(m_axi_awaddr[4]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[5]),
        .Q(m_axi_awaddr[5]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[6]),
        .Q(m_axi_awaddr[6]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[7]),
        .Q(m_axi_awaddr[7]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[8]),
        .Q(m_axi_awaddr[8]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[9]),
        .Q(m_axi_awaddr[9]),
        .R(SR));
  FDRE \S_AXI_ABURST_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awburst[0]),
        .Q(m_axi_awburst[0]),
        .R(SR));
  FDRE \S_AXI_ABURST_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awburst[1]),
        .Q(m_axi_awburst[1]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[0]),
        .Q(m_axi_awcache[0]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[1]),
        .Q(m_axi_awcache[1]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[2]),
        .Q(m_axi_awcache[2]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[3]),
        .Q(m_axi_awcache[3]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[0]),
        .Q(m_axi_awlen[0]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[1]),
        .Q(m_axi_awlen[1]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[2]),
        .Q(m_axi_awlen[2]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[3]),
        .Q(m_axi_awlen[3]),
        .R(SR));
  FDRE \S_AXI_ALOCK_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlock),
        .Q(m_axi_awlock),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[0]),
        .Q(m_axi_awprot[0]),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[1]),
        .Q(m_axi_awprot[1]),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[2]),
        .Q(m_axi_awprot[2]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[0]),
        .Q(m_axi_awqos[0]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[1]),
        .Q(m_axi_awqos[1]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[2]),
        .Q(m_axi_awqos[2]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[3]),
        .Q(m_axi_awqos[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    S_AXI_AREADY_I_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_11 ),
        .Q(E),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[0]),
        .Q(m_axi_awsize[0]),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[1]),
        .Q(m_axi_awsize[1]),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[2]),
        .Q(m_axi_awsize[2]),
        .R(SR));
  system_auto_pc_1_axi_data_fifo_v2_1_27_axic_fifo \USE_BURSTS.cmd_queue 
       (.E(E),
        .Q(areset_d),
        .SR(SR),
        .S_AXI_AREADY_I_reg(\USE_BURSTS.cmd_queue_n_11 ),
        .aclk(aclk),
        .\areset_d_reg[1] (\USE_BURSTS.cmd_queue_n_12 ),
        .aresetn(aresetn),
        .aresetn_0(\USE_BURSTS.cmd_queue_n_6 ),
        .command_ongoing(command_ongoing),
        .dout(dout),
        .empty(empty),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(length_counter_1_reg_1_sn_1),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awvalid_0(cmd_push_block_reg_n_0),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(rd_en),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(SR),
        .Q(areset_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(areset_d[0]),
        .Q(areset_d[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cmd_push_block_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_6 ),
        .Q(cmd_push_block_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    command_ongoing_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_12 ),
        .Q(command_ongoing),
        .R(SR));
endmodule

module system_auto_pc_1_axi_protocol_converter_v2_1_28_axi3_conv
   (m_axi_awlen,
    m_axi_awaddr,
    E,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    empty_fwft_i_reg,
    m_axi_wvalid,
    m_axi_wlast,
    aresetn,
    m_axi_awready,
    aclk,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    m_axi_wready,
    s_axi_wvalid,
    s_axi_awvalid);
  output [3:0]m_axi_awlen;
  output [31:0]m_axi_awaddr;
  output [0:0]E;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output m_axi_wlast;
  input aresetn;
  input m_axi_awready;
  input aclk;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input m_axi_wready;
  input s_axi_wvalid;
  input s_axi_awvalid;

  wire [0:0]E;
  wire \USE_BURSTS.cmd_queue/inst/empty ;
  wire [3:0]\USE_WRITE.wr_cmd_length ;
  wire \USE_WRITE.wr_cmd_ready ;
  wire \USE_WRITE.write_addr_inst_n_13 ;
  wire \USE_WRITE.write_addr_inst_n_5 ;
  wire aclk;
  wire aresetn;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  system_auto_pc_1_axi_protocol_converter_v2_1_28_a_axi3_conv \USE_WRITE.write_addr_inst 
       (.E(E),
        .SR(\USE_WRITE.write_addr_inst_n_5 ),
        .aclk(aclk),
        .aresetn(aresetn),
        .dout(\USE_WRITE.wr_cmd_length ),
        .empty(\USE_BURSTS.cmd_queue/inst/empty ),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(\USE_WRITE.write_addr_inst_n_13 ),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(\USE_WRITE.wr_cmd_ready ),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
  system_auto_pc_1_axi_protocol_converter_v2_1_28_w_axi3_conv \USE_WRITE.write_data_inst 
       (.SR(\USE_WRITE.write_addr_inst_n_5 ),
        .aclk(aclk),
        .dout(\USE_WRITE.wr_cmd_length ),
        .empty(\USE_BURSTS.cmd_queue/inst/empty ),
        .first_mi_word(first_mi_word),
        .\length_counter_1_reg[1]_0 (length_counter_1_reg),
        .\length_counter_1_reg[1]_1 (\USE_WRITE.write_addr_inst_n_13 ),
        .\length_counter_1_reg[2]_0 (empty_fwft_i_reg),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .rd_en(\USE_WRITE.wr_cmd_ready ),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_READ = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_SUPPORTS_WRITE = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_FAMILY = "zynq" *) 
(* C_IGNORE_ID = "1" *) (* C_M_AXI_PROTOCOL = "1" *) (* C_S_AXI_PROTOCOL = "0" *) 
(* C_TRANSLATION_MODE = "0" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* P_AXI3 = "1" *) 
(* P_AXI4 = "0" *) (* P_AXILITE = "2" *) (* P_AXILITE_SIZE = "3'b011" *) 
(* P_CONVERSION = "2" *) (* P_DECERR = "2'b11" *) (* P_INCR = "2'b01" *) 
(* P_PROTECTION = "1" *) (* P_SLVERR = "2'b10" *) 
module system_auto_pc_1_axi_protocol_converter_v2_1_28_axi_protocol_converter
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire m_axi_arready;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]\^m_axi_awlock ;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rready;
  wire [63:0]s_axi_wdata;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign m_axi_araddr[31:0] = s_axi_araddr;
  assign m_axi_arburst[1:0] = s_axi_arburst;
  assign m_axi_arcache[3:0] = s_axi_arcache;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[3:0] = s_axi_arlen[3:0];
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = s_axi_arlock;
  assign m_axi_arprot[2:0] = s_axi_arprot;
  assign m_axi_arqos[3:0] = s_axi_arqos;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2:0] = s_axi_arsize;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = s_axi_arvalid;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \^m_axi_awlock [0];
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_bready = s_axi_bready;
  assign m_axi_rready = s_axi_rready;
  assign m_axi_wdata[63:0] = s_axi_wdata;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wstrb[7:0] = s_axi_wstrb;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_arready = m_axi_arready;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1:0] = m_axi_bresp;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = m_axi_bvalid;
  assign s_axi_rdata[63:0] = m_axi_rdata;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = m_axi_rlast;
  assign s_axi_rresp[1:0] = m_axi_rresp;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = m_axi_rvalid;
  GND GND
       (.G(\<const0> ));
  system_auto_pc_1_axi_protocol_converter_v2_1_28_axi3_conv \gen_axi4_axi3.axi3_conv_inst 
       (.E(s_axi_awready),
        .aclk(aclk),
        .aresetn(aresetn),
        .empty_fwft_i_reg(s_axi_wready),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(\^m_axi_awlock ),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen[3:0]),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module system_auto_pc_1_axi_protocol_converter_v2_1_28_w_axi3_conv
   (\length_counter_1_reg[1]_0 ,
    first_mi_word,
    rd_en,
    m_axi_wlast,
    SR,
    aclk,
    \length_counter_1_reg[1]_1 ,
    \length_counter_1_reg[2]_0 ,
    m_axi_wready,
    s_axi_wvalid,
    empty,
    dout);
  output [1:0]\length_counter_1_reg[1]_0 ;
  output first_mi_word;
  output rd_en;
  output m_axi_wlast;
  input [0:0]SR;
  input aclk;
  input \length_counter_1_reg[1]_1 ;
  input \length_counter_1_reg[2]_0 ;
  input m_axi_wready;
  input s_axi_wvalid;
  input empty;
  input [3:0]dout;

  wire [0:0]SR;
  wire aclk;
  wire [3:0]dout;
  wire empty;
  wire first_mi_word;
  wire first_mi_word_i_1_n_0;
  wire \length_counter_1[0]_i_1_n_0 ;
  wire \length_counter_1[2]_i_1_n_0 ;
  wire \length_counter_1[3]_i_1_n_0 ;
  wire \length_counter_1[4]_i_1_n_0 ;
  wire \length_counter_1[4]_i_2_n_0 ;
  wire \length_counter_1[5]_i_1_n_0 ;
  wire \length_counter_1[6]_i_1_n_0 ;
  wire \length_counter_1[7]_i_1_n_0 ;
  wire [7:2]length_counter_1_reg;
  wire [1:0]\length_counter_1_reg[1]_0 ;
  wire \length_counter_1_reg[1]_1 ;
  wire \length_counter_1_reg[2]_0 ;
  wire m_axi_wlast;
  wire m_axi_wlast_INST_0_i_1_n_0;
  wire m_axi_wlast_INST_0_i_2_n_0;
  wire m_axi_wlast_INST_0_i_3_n_0;
  wire m_axi_wready;
  wire rd_en;
  wire s_axi_wvalid;

  LUT6 #(
    .INIT(64'h0000CC000000CC04)) 
    fifo_gen_inst_i_2
       (.I0(length_counter_1_reg[7]),
        .I1(\length_counter_1_reg[2]_0 ),
        .I2(length_counter_1_reg[5]),
        .I3(first_mi_word),
        .I4(m_axi_wlast_INST_0_i_1_n_0),
        .I5(length_counter_1_reg[6]),
        .O(rd_en));
  LUT6 #(
    .INIT(64'h0F0FFFFF00010000)) 
    first_mi_word_i_1
       (.I0(length_counter_1_reg[7]),
        .I1(length_counter_1_reg[5]),
        .I2(m_axi_wlast_INST_0_i_1_n_0),
        .I3(length_counter_1_reg[6]),
        .I4(\length_counter_1_reg[2]_0 ),
        .I5(first_mi_word),
        .O(first_mi_word_i_1_n_0));
  FDSE #(
    .INIT(1'b0)) 
    first_mi_word_reg
       (.C(aclk),
        .CE(1'b1),
        .D(first_mi_word_i_1_n_0),
        .Q(first_mi_word),
        .S(SR));
  LUT6 #(
    .INIT(64'hF2FFFFFF07000000)) 
    \length_counter_1[0]_i_1 
       (.I0(first_mi_word),
        .I1(dout[0]),
        .I2(empty),
        .I3(s_axi_wvalid),
        .I4(m_axi_wready),
        .I5(\length_counter_1_reg[1]_0 [0]),
        .O(\length_counter_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hD8D272D2)) 
    \length_counter_1[2]_i_1 
       (.I0(\length_counter_1_reg[2]_0 ),
        .I1(m_axi_wlast_INST_0_i_3_n_0),
        .I2(length_counter_1_reg[2]),
        .I3(first_mi_word),
        .I4(dout[2]),
        .O(\length_counter_1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hB8B474B4)) 
    \length_counter_1[3]_i_1 
       (.I0(\length_counter_1[4]_i_2_n_0 ),
        .I1(\length_counter_1_reg[2]_0 ),
        .I2(length_counter_1_reg[3]),
        .I3(first_mi_word),
        .I4(dout[3]),
        .O(\length_counter_1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A3A35AAAAAAAA)) 
    \length_counter_1[4]_i_1 
       (.I0(length_counter_1_reg[4]),
        .I1(dout[3]),
        .I2(first_mi_word),
        .I3(length_counter_1_reg[3]),
        .I4(\length_counter_1[4]_i_2_n_0 ),
        .I5(\length_counter_1_reg[2]_0 ),
        .O(\length_counter_1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \length_counter_1[4]_i_2 
       (.I0(m_axi_wlast_INST_0_i_3_n_0),
        .I1(length_counter_1_reg[2]),
        .I2(first_mi_word),
        .I3(dout[2]),
        .O(\length_counter_1[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF0000FFF70808)) 
    \length_counter_1[5]_i_1 
       (.I0(m_axi_wready),
        .I1(s_axi_wvalid),
        .I2(empty),
        .I3(first_mi_word),
        .I4(length_counter_1_reg[5]),
        .I5(m_axi_wlast_INST_0_i_1_n_0),
        .O(\length_counter_1[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3EFF0D00)) 
    \length_counter_1[6]_i_1 
       (.I0(length_counter_1_reg[5]),
        .I1(first_mi_word),
        .I2(m_axi_wlast_INST_0_i_1_n_0),
        .I3(\length_counter_1_reg[2]_0 ),
        .I4(length_counter_1_reg[6]),
        .O(\length_counter_1[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3F3EFFFF30310000)) 
    \length_counter_1[7]_i_1 
       (.I0(length_counter_1_reg[6]),
        .I1(m_axi_wlast_INST_0_i_1_n_0),
        .I2(first_mi_word),
        .I3(length_counter_1_reg[5]),
        .I4(\length_counter_1_reg[2]_0 ),
        .I5(length_counter_1_reg[7]),
        .O(\length_counter_1[7]_i_1_n_0 ));
  FDRE \length_counter_1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[0]_i_1_n_0 ),
        .Q(\length_counter_1_reg[1]_0 [0]),
        .R(SR));
  FDRE \length_counter_1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1_reg[1]_1 ),
        .Q(\length_counter_1_reg[1]_0 [1]),
        .R(SR));
  FDRE \length_counter_1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[2]_i_1_n_0 ),
        .Q(length_counter_1_reg[2]),
        .R(SR));
  FDRE \length_counter_1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[3]_i_1_n_0 ),
        .Q(length_counter_1_reg[3]),
        .R(SR));
  FDRE \length_counter_1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[4]_i_1_n_0 ),
        .Q(length_counter_1_reg[4]),
        .R(SR));
  FDRE \length_counter_1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[5]_i_1_n_0 ),
        .Q(length_counter_1_reg[5]),
        .R(SR));
  FDRE \length_counter_1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[6]_i_1_n_0 ),
        .Q(length_counter_1_reg[6]),
        .R(SR));
  FDRE \length_counter_1_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[7]_i_1_n_0 ),
        .Q(length_counter_1_reg[7]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00F000F1)) 
    m_axi_wlast_INST_0
       (.I0(length_counter_1_reg[7]),
        .I1(length_counter_1_reg[5]),
        .I2(first_mi_word),
        .I3(m_axi_wlast_INST_0_i_1_n_0),
        .I4(length_counter_1_reg[6]),
        .O(m_axi_wlast));
  LUT6 #(
    .INIT(64'hFFFFFFFEFCFCFFFE)) 
    m_axi_wlast_INST_0_i_1
       (.I0(length_counter_1_reg[4]),
        .I1(m_axi_wlast_INST_0_i_2_n_0),
        .I2(m_axi_wlast_INST_0_i_3_n_0),
        .I3(length_counter_1_reg[2]),
        .I4(first_mi_word),
        .I5(dout[2]),
        .O(m_axi_wlast_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    m_axi_wlast_INST_0_i_2
       (.I0(dout[3]),
        .I1(first_mi_word),
        .I2(length_counter_1_reg[3]),
        .O(m_axi_wlast_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    m_axi_wlast_INST_0_i_3
       (.I0(\length_counter_1_reg[1]_0 [1]),
        .I1(dout[1]),
        .I2(\length_counter_1_reg[1]_0 [0]),
        .I3(first_mi_word),
        .I4(dout[0]),
        .O(m_axi_wlast_INST_0_i_3_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "system_auto_pc_1,axi_protocol_converter_v2_1_28_axi_protocol_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_protocol_converter_v2_1_28_axi_protocol_converter,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module system_auto_pc_1
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 30000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [0:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREGION" *) input [3:0]s_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [63:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [7:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [0:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREGION" *) input [3:0]s_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [63:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 30000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 64, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [3:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [1:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [63:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [7:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [3:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output [1:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [63:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 30000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arlen;
  wire [0:0]\^m_axi_arlock ;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]\^m_axi_awlock ;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [63:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [63:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [63:0]s_axi_wdata;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [1:1]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [1:1]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \^m_axi_arlock [0];
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \^m_axi_awlock [0];
  GND GND
       (.G(\<const0> ));
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_READ = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_IGNORE_ID = "1" *) 
  (* C_M_AXI_PROTOCOL = "1" *) 
  (* C_S_AXI_PROTOCOL = "0" *) 
  (* C_TRANSLATION_MODE = "0" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_AXILITE_SIZE = "3'b011" *) 
  (* P_CONVERSION = "2" *) 
  (* P_DECERR = "2'b11" *) 
  (* P_INCR = "2'b01" *) 
  (* P_PROTECTION = "1" *) 
  (* P_SLVERR = "2'b10" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  system_auto_pc_1_axi_protocol_converter_v2_1_28_axi_protocol_converter inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock({NLW_inst_m_axi_arlock_UNCONNECTED[1],\^m_axi_arlock }),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock({NLW_inst_m_axi_awlock_UNCONNECTED[1],\^m_axi_awlock }),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(1'b0),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(1'b0),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,s_axi_arlen[3:0]}),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,s_axi_awlen[3:0]}),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* RST_ACTIVE_HIGH = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module system_auto_pc_1_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qpp66Ic61NR0mkVmjG7vgOL0NB6CTFb3Lsi4qxXFnJ8tqqKShAriiJmn7uXBNCBvGZLnXCb4uZ8i
EqR6IQq34abN0LrooQu7rm3+Pw0iYYKzN1lcF+6EclZnFEeAIj7bGbLI9X3Ib88Mjvj0+p4IA3Fj
9ZGHNW+O+knchfmqAlY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aPxGoOnJHTAqFdFSzG9ru8Bw31YY71SqnXPbyZfA86PxaAjm6NpQtu/8fWeHlM19Jz2a+1ZDAj2o
VkuAl+PF18BGfMNo3Sar4bSJm8QwGYpdMiLM+06C76IY/redmJfNEXBnwDGx1NRihbIrHe17Fsp0
wci4ZT2n5HHVBuhowg8un8abF3TR6B1Ll1huon8bmUC1ZCG/4nJpwwhcE9pfhZYPxzBDs7qGqe8g
84QrDMzU6WhHqgMvR8Uor517l0pItAYj4pxMvaZhC0k3EgSYp/MQytJr+HF3vsw+o0eF1bHVU6Na
eXWSV3ijxUZXCyCMZ7YmEZa9JX5uKS5m5eiP0w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
mWzZIcmTvZaO1EYxJJAY0jRMaMCjTyRzPU6SbUzrKHfep0pA4LS/MlSJytRY9FYloq8LonlEJmOa
YvTXus6Gximwd82NfOWOU+xAliGI4hqn0DLAX0dSg8OERUorJfPsNqrBuHvDufz9efGQs7Upr74j
TMlZiW0gSVGHMQSLqUU=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lzrP+qu7wbNhDwJym0tPh2ytzSxetAAI7sMgVeTkF4E0aGc202oEP6AjkTk508CVci4/F5/oGOgY
jKPpZya27mqQoisM8ilYqvcw5pXx0/pQGRu7JZF08b+k4spPXeJ2wn8IDY3FWSHnOcvi4dOebH/q
+4u19fu74aqk1ECrIQzbVZpwcWeMDGDUSHDy4FPk9OjOswCxOQPuglJjXYv+hMg/7JiOUBTJX0uZ
Xmdtxy8L9z4EWzfRzOSHsJFjTkSLmdTFavs61PfZS4KYT25LV10DOvmL3fy7M6+bBXN5qE6rW0RO
W75E2gYB5D04Qa/SgER8JeFW1M0T8RacJUUV3w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FMe5G7+i5Dg2OTIM7CinNcesmx+3xFOKOCTYsoHWrp5MlbAPNqriPe41pqSx7Zo2+ype18VVw+tF
lEjRQQF5TsKrIoc8kQqO2Ck9JGAZjsyrFM5jTWzQZBawoJBB/EbM32rM+O963qqQdP9ruUzt4aM6
vf/tdyfOgxkUcl6+JJNYOQDIdBGzvk/dQUeNjJV2gWOsMrT/8aQJJMjp2XPW18IEhMSdUT+e8kM3
NlZcNyywDkNOLcIS8VKNtRSuC1gLTR2zXKL9eJomOGg66N8dfL808FNqNi+dtOqd2OhDKPCh9VYN
gJ7hSggqdHhUVsYY5qT37vUMUZG37ITEHavSug==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IZp7wGosl6Ef78SQeUxKofUHVTZqkQHJJU3t0K53ysy/heNabWQpu3n2M8+eCIHOAio8FR6+AOlT
IAA4JAFJfJ70Sm8r1CV0vuXGNVDhIlFr8HhnDDJc8CLdz8yaFrENXgAR92A47cxMlNwaJCGipXa/
922mJ6b2pGDdjdTLUcKsU1DD92Kou08spouWrbB/PrcgiC0dc9Vh5gbveNqmUuOyH3mlBam3FvZl
pgofpiJBXCkR1i8+hAEtpYGjmSGUTUQ6uHMUKX0u24I2h77iOiDKYTNJT6jVuiYM/DRD2IfylgS4
u7QDnvP07bndi2AIocxrw7LHdjJ9XWVyHUaXIQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mcmaj6yfbZVEKTiuHl5s5QU2BU2VRdOtz/pVopoNI21Pt4eUkknoHSgdfu7K976MpUo+bkHQ7sJi
/0kAsbTsCHtz7UWvsCk9A5SyLMykdZnWyjEbf0dHlFcgzZooebDG2zm4mibiRUIKwAMgFxTWk4RV
k5Ay3X64cOudFYqRbTCUmp1L8ijVoYJo0zi23fsL0jwpEG5FTTnJ1h5mK9rFtj4nIzmKqwwP+7JP
esKOwY5A74OZa9Q2+Oc/k4UmgeZgw5q/xkt1aAjxDyRRfCIJizymNuJw9sa/nQXTKX0zCMrY0MnQ
PN3c4p5wkiNcAHR4g0673PQsVxTSpFZkCNMkwQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
mo2NT2/CRe5fYBwkxXV4DV2r4VY+mW8FieM9wY58cqg6XakgyeQ/Du2w01ie+Sko3Okr8ziahuNO
XBMXX0d4rR94Cwxf6q8vsbxZgbIlknsXsEuTwNfsw6ywD3/7leL6Kapx3fGSVuIHDMHjwpstoX+8
phs6lpM0VeRML4QJl7ITOuweBx9b+hHFRy5duNtva30fSyVWHLpzAsS+sS+gCcFxsDn+K9lQj/Kh
u11IaBweyu8d5W2ClTN46tdIzlVw6S962vDsk1+h6BQzF9y3z3BJfLpfR+9jdhy5wqng0ejlOpbT
G22gnlE/BqKGgLqVQKaeXfnp5NnReQcYXQTMossrLWwi2JUvDGuA6egmN+38JdoIzDHxNPxvAOZ/
mF9Qjn64t2tHB5iHybi3qFxlysWYSczGHStpTKrEoNAcQV/kMTe5coIDdy3mGIpwuduxq1OYPA9m
VKKE/GCL1MQzfgEx1Az+ts8Oo9hgM/A/cJ2envlpTKlt5itG9ciBZ41m

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RXuoomA7HXqxfp6NbzOyYrUYOntlNDrjnrws4DzEIh4YC3p8BdX9/zrLD3AxALpTnAeHyk3lFxEI
uDCpL9/tP6yT5BmfL2N/oyWIQ7y53Env+IFaJMMaBIG9U1LBtkcnhV/FW9tkUePJ8EbKyE9tP/kp
RScK28UNuQEHp0OPznrb1v+AWO/DiSNPuA44x+Ig5nBALVW9qfA4+tvzfHYpcke67vIFYWLthZx9
NC9+R793F9ypEZMOjinKDbEk0gDUoqsmcmgF819P1JtLnGnuwtr1uER6OP17CsHbFowAmPsPPA55
QkDMyp68B+cHNNW23VXNPbIXLvPilhp/ypT+iw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
6BvoQpuoVy9vIT9h44IRmW7Bo+8MCKJj5ZfOShjmujfjeFOwPLw2GCUNvV3ipB1eThHomI5yXGiO
fxOovfDeVP2hfGVaO1qz9Lz6NGhPt8K9Z+sH2rq47t68akOCSgmAoKJ/5BbwL/t0FtUVgTtq7Si+
HqZAUgbX8TCY6IRkFibfSSK6UarmhEpPrPOpvsevKx4OaMU1jfgaJvIMRd257kSQy5o7pyO0n7VX
LK6V93O0bi7Aa/TTt9W2MSK5pIDw9DmkTCLFjsS7gBYQYaFaba+LGfjQ782nQK2+KDz85b5qKPM1
h19t51h74j2WjWCadIgjRVfMYVvsErL0ehA3Xw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MMpJ8DorVcMATHbuGSlNSCGkzTOL3lRnFD2u4TUx1W94+tAqA8Ktjam9MqFHuJh/5PX5VUq6FgP7
1oYcR65DRc8C5iUj4h0vhHLi42ruJU++GUuIdS9gvoiQ246hdXMefRe5wcEOnqmxKzf7fyduaSpG
7SdN9PpubFzyeck9cLJj2CYMY1XoujEAxeBG5YKJtFkQkCeHZWr6R8PkNR2oyQGuZuMeJdgNh4Lg
5yYuOk0BGcB7bwSjic5zqk+8Veyp/ZGAVMgpH80juQjINIxDcLbvhqTIZX4gKUQjcJYcBhVuPgVt
Ms7dqARwL9nkpmZ/SuNzUmGdEIhVlblWNDRV3A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 71088)
`pragma protect data_block
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
SScS1athoEu8
`pragma protect end_protected
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
