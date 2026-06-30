//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
//Date        : Tue Jun 30 08:36:02 2026
//Host        : phanikar-Latitude-5410 running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target vip_bd_wrapper.bd
//Design      : vip_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module vip_bd_wrapper
   (aclk,
    aresetn);
  input aclk;
  input aresetn;

  wire aclk;
  wire aresetn;

  vip_bd vip_bd_i
       (.aclk(aclk),
        .aresetn(aresetn));
endmodule
