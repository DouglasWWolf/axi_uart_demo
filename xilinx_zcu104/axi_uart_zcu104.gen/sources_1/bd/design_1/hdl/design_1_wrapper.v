//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Fri Jun 10 18:13:32 2022
//Host        : simtool5-2 running 64-bit Ubuntu 20.04.4 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (CLK_125_N,
    CLK_125_P,
    CPU_RESET,
    GPIO_LED,
    GPIO_PB2,
    GPIO_SW,
    UART2_RXD,
    UART2_TXD);
  input CLK_125_N;
  input CLK_125_P;
  input CPU_RESET;
  output [3:0]GPIO_LED;
  input GPIO_PB2;
  input [3:0]GPIO_SW;
  input UART2_RXD;
  output UART2_TXD;

  wire CLK_125_N;
  wire CLK_125_P;
  wire CPU_RESET;
  wire [3:0]GPIO_LED;
  wire GPIO_PB2;
  wire [3:0]GPIO_SW;
  wire UART2_RXD;
  wire UART2_TXD;

  design_1 design_1_i
       (.CLK_125_N(CLK_125_N),
        .CLK_125_P(CLK_125_P),
        .CPU_RESET(CPU_RESET),
        .GPIO_LED(GPIO_LED),
        .GPIO_PB2(GPIO_PB2),
        .GPIO_SW(GPIO_SW),
        .UART2_RXD(UART2_RXD),
        .UART2_TXD(UART2_TXD));
endmodule
