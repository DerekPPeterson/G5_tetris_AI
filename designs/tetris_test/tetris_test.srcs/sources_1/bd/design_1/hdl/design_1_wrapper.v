//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.1 (lin64) Build 881834 Fri Apr  4 14:00:25 MDT 2014
//Date        : Fri Feb 20 01:09:48 2015
//Host        : derek-pc2 running 64-bit Ubuntu 14.04.2 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clock_rtl,
    reset_rtl,
    reset_rtl_0,
    uart_rtl_rxd,
    uart_rtl_txd);
  input clock_rtl;
  input reset_rtl;
  input reset_rtl_0;
  input uart_rtl_rxd;
  output uart_rtl_txd;

  wire clock_rtl;
  wire reset_rtl;
  wire reset_rtl_0;
  wire uart_rtl_rxd;
  wire uart_rtl_txd;

design_1 design_1_i
       (.clock_rtl(clock_rtl),
        .reset_rtl(reset_rtl),
        .reset_rtl_0(reset_rtl_0),
        .uart_rtl_rxd(uart_rtl_rxd),
        .uart_rtl_txd(uart_rtl_txd));
endmodule
