//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Fri Jun 10 14:35:30 2022
//Host        : simtool5-2 running 64-bit Ubuntu 20.04.4 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (BTNU,
    CLK100MHZ,
    CPU_RESETN,
    GPIO_LED,
    GPIO_SW,
    UART_RXD,
    UART_TXD);
  input BTNU;
  input CLK100MHZ;
  input CPU_RESETN;
  output [3:0]GPIO_LED;
  input [3:0]GPIO_SW;
  input UART_RXD;
  output UART_TXD;

  wire BTNU;
  wire CLK100MHZ;
  wire CPU_RESETN;
  wire [3:0]GPIO_LED;
  wire [3:0]GPIO_SW;
  wire UART_RXD;
  wire UART_TXD;

  design_1 design_1_i
       (.BTNU(BTNU),
        .CLK100MHZ(CLK100MHZ),
        .CPU_RESETN(CPU_RESETN),
        .GPIO_LED(GPIO_LED),
        .GPIO_SW(GPIO_SW),
        .UART_RXD(UART_RXD),
        .UART_TXD(UART_TXD));
endmodule
