//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
//Date        : Tue Jun 30 08:36:01 2026
//Host        : phanikar-Latitude-5410 running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target vip_bd.bd
//Design      : vip_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "vip_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=vip_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "vip_bd.hwdef" *) 
module vip_bd
   (aclk,
    aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_RESET aresetn, CLK_DOMAIN vip_bd_aclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn;

  wire aclk_1;
  wire aresetn_1;
  wire [255:0]systolic_array_0_m_axis_c_TDATA;
  wire systolic_array_0_m_axis_c_TLAST;
  wire [0:0]systolic_array_0_m_axis_c_TREADY;
  wire systolic_array_0_m_axis_c_TVALID;
  wire [255:0]vip_a_M_AXIS_TDATA;
  wire vip_a_M_AXIS_TREADY;
  wire [0:0]vip_a_M_AXIS_TVALID;
  wire [255:0]vip_b_M_AXIS_TDATA;
  wire vip_b_M_AXIS_TREADY;
  wire [0:0]vip_b_M_AXIS_TVALID;
  wire [255:0]vip_d_M_AXIS_TDATA;
  wire vip_d_M_AXIS_TREADY;
  wire [0:0]vip_d_M_AXIS_TVALID;

  assign aclk_1 = aclk;
  assign aresetn_1 = aresetn;
  vip_bd_systolic_array_0_0 systolic_array_0
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .m_axis_c_tdata(systolic_array_0_m_axis_c_TDATA),
        .m_axis_c_tlast(systolic_array_0_m_axis_c_TLAST),
        .m_axis_c_tready(systolic_array_0_m_axis_c_TREADY),
        .m_axis_c_tvalid(systolic_array_0_m_axis_c_TVALID),
        .s_axis_a_tdata(vip_a_M_AXIS_TDATA),
        .s_axis_a_tlast(1'b0),
        .s_axis_a_tready(vip_a_M_AXIS_TREADY),
        .s_axis_a_tvalid(vip_a_M_AXIS_TVALID),
        .s_axis_b_tdata(vip_b_M_AXIS_TDATA),
        .s_axis_b_tlast(1'b0),
        .s_axis_b_tready(vip_b_M_AXIS_TREADY),
        .s_axis_b_tvalid(vip_b_M_AXIS_TVALID),
        .s_axis_d_tdata(vip_d_M_AXIS_TDATA),
        .s_axis_d_tlast(1'b0),
        .s_axis_d_tready(vip_d_M_AXIS_TREADY),
        .s_axis_d_tvalid(vip_d_M_AXIS_TVALID));
  vip_bd_vip_a_0 vip_a
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .m_axis_tdata(vip_a_M_AXIS_TDATA),
        .m_axis_tready(vip_a_M_AXIS_TREADY),
        .m_axis_tvalid(vip_a_M_AXIS_TVALID));
  vip_bd_vip_b_0 vip_b
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .m_axis_tdata(vip_b_M_AXIS_TDATA),
        .m_axis_tready(vip_b_M_AXIS_TREADY),
        .m_axis_tvalid(vip_b_M_AXIS_TVALID));
  vip_bd_vip_c_0 vip_c
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .s_axis_tdata(systolic_array_0_m_axis_c_TDATA),
        .s_axis_tlast(systolic_array_0_m_axis_c_TLAST),
        .s_axis_tready(systolic_array_0_m_axis_c_TREADY),
        .s_axis_tvalid(systolic_array_0_m_axis_c_TVALID));
  vip_bd_vip_d_0 vip_d
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .m_axis_tdata(vip_d_M_AXIS_TDATA),
        .m_axis_tready(vip_d_M_AXIS_TREADY),
        .m_axis_tvalid(vip_d_M_AXIS_TVALID));
endmodule
