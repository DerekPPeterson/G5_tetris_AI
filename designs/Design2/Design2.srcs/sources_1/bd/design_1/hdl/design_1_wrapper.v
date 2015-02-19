//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.1 (win64) Build 881834 Fri Apr  4 14:15:54 MDT 2014
//Date        : Wed Feb 18 17:03:15 2015
//Host        : Kris-PC running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clock_rtl,
    reset_rtl,
    reset_rtl_0);
  input clock_rtl;
  input reset_rtl;
  input reset_rtl_0;

  wire clock_rtl;
  wire reset_rtl;
  wire reset_rtl_0;

design_1 design_1_i
       (.clock_rtl(clock_rtl),
        .reset_rtl(reset_rtl),
        .reset_rtl_0(reset_rtl_0));
endmodule
