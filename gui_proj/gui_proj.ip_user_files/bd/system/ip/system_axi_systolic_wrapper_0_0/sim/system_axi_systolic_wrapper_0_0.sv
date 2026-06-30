// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: phanikar:user:axi_systolic_wrapper:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_axi_systolic_wrapper_0_0 (
  aclk,
  aresetn,
  s_axis_b_tdata,
  s_axis_b_tvalid,
  s_axis_b_tready,
  s_axis_b_tlast,
  s_axis_a_tdata,
  s_axis_a_tvalid,
  s_axis_a_tready,
  s_axis_a_tlast,
  s_axis_d_tdata,
  s_axis_d_tvalid,
  s_axis_d_tready,
  s_axis_d_tlast,
  m_axis_c_tdata,
  m_axis_c_tvalid,
  m_axis_c_tready,
  m_axis_c_tlast
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis_c:s_axis_a:s_axis_b:s_axis_d, ASSOCIATED_RESET aresetn, FREQ_HZ 30000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_b TDATA" *)
input wire [255 : 0] s_axis_b_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_b TVALID" *)
input wire s_axis_b_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_b TREADY" *)
output wire s_axis_b_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_b, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 30000000, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_b TLAST" *)
input wire s_axis_b_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_a TDATA" *)
input wire [255 : 0] s_axis_a_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_a TVALID" *)
input wire s_axis_a_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_a TREADY" *)
output wire s_axis_a_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_a, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 30000000, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_a TLAST" *)
input wire s_axis_a_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_d TDATA" *)
input wire [255 : 0] s_axis_d_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_d TVALID" *)
input wire s_axis_d_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_d TREADY" *)
output wire s_axis_d_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_d, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 30000000, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_d TLAST" *)
input wire s_axis_d_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_c TDATA" *)
output wire [255 : 0] m_axis_c_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_c TVALID" *)
output wire m_axis_c_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_c TREADY" *)
input wire m_axis_c_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_c, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 30000000, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_c TLAST" *)
output wire m_axis_c_tlast;

  axi_systolic_wrapper #(
    .ROWS(8),
    .COLS(8),
    .DATA_WIDTH(32)
  ) inst (
    .aclk(aclk),
    .aresetn(aresetn),
    .s_axis_b_tdata(s_axis_b_tdata),
    .s_axis_b_tvalid(s_axis_b_tvalid),
    .s_axis_b_tready(s_axis_b_tready),
    .s_axis_b_tlast(s_axis_b_tlast),
    .s_axis_a_tdata(s_axis_a_tdata),
    .s_axis_a_tvalid(s_axis_a_tvalid),
    .s_axis_a_tready(s_axis_a_tready),
    .s_axis_a_tlast(s_axis_a_tlast),
    .s_axis_d_tdata(s_axis_d_tdata),
    .s_axis_d_tvalid(s_axis_d_tvalid),
    .s_axis_d_tready(s_axis_d_tready),
    .s_axis_d_tlast(s_axis_d_tlast),
    .m_axis_c_tdata(m_axis_c_tdata),
    .m_axis_c_tvalid(m_axis_c_tvalid),
    .m_axis_c_tready(m_axis_c_tready),
    .m_axis_c_tlast(m_axis_c_tlast)
  );
endmodule
