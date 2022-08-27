//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Sat Aug 27 03:04:49 2022
//Host        : simtool5-2 running 64-bit Ubuntu 20.04.4 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (CLK_125_clk_n,
    CLK_125_clk_p,
    CPU_RESET,
    GPIO_LED_tri_o,
    GPIO_SW_tri_i,
    UART_rxd,
    UART_txd);
  input CLK_125_clk_n;
  input CLK_125_clk_p;
  input CPU_RESET;
  output [3:0]GPIO_LED_tri_o;
  input [3:0]GPIO_SW_tri_i;
  input UART_rxd;
  output UART_txd;

  wire CLK_125_clk_n;
  wire CLK_125_clk_p;
  wire CPU_RESET;
  wire [3:0]GPIO_LED_tri_o;
  wire [3:0]GPIO_SW_tri_i;
  wire UART_rxd;
  wire UART_txd;

  design_1 design_1_i
       (.CLK_125_clk_n(CLK_125_clk_n),
        .CLK_125_clk_p(CLK_125_clk_p),
        .CPU_RESET(CPU_RESET),
        .GPIO_LED_tri_o(GPIO_LED_tri_o),
        .GPIO_SW_tri_i(GPIO_SW_tri_i),
        .UART_rxd(UART_rxd),
        .UART_txd(UART_txd));
endmodule
