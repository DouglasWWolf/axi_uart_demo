// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Jun 10 18:14:45 2022
// Host        : simtool5-2 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /fpga/axi_uart_demo/xilinx_zcu104/axi_uart_zcu104.gen/sources_1/bd/design_1/ip/design_1_uart_axi_iface_0_0/design_1_uart_axi_iface_0_0_stub.v
// Design      : design_1_uart_axi_iface_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "uart_axi_iface,Vivado 2021.1" *)
module design_1_uart_axi_iface_0_0(XMIT_DATA, XMIT_FULL_N, XMIT_WREN, RECV_DATA, 
  RECV_EMPTY_N, RECV_RDEN, M_AXI_ACLK, M_AXI_ARESETN, M_AXI_AWADDR, M_AXI_AWVALID, 
  M_AXI_AWREADY, M_AXI_AWPROT, M_AXI_WDATA, M_AXI_WVALID, M_AXI_WSTRB, M_AXI_WREADY, 
  M_AXI_BRESP, M_AXI_BVALID, M_AXI_BREADY, M_AXI_ARADDR, M_AXI_ARVALID, M_AXI_ARPROT, 
  M_AXI_ARREADY, M_AXI_RDATA, M_AXI_RVALID, M_AXI_RRESP, M_AXI_RREADY)
/* synthesis syn_black_box black_box_pad_pin="XMIT_DATA[7:0],XMIT_FULL_N,XMIT_WREN,RECV_DATA[7:0],RECV_EMPTY_N,RECV_RDEN,M_AXI_ACLK,M_AXI_ARESETN,M_AXI_AWADDR[31:0],M_AXI_AWVALID,M_AXI_AWREADY,M_AXI_AWPROT[2:0],M_AXI_WDATA[31:0],M_AXI_WVALID,M_AXI_WSTRB[3:0],M_AXI_WREADY,M_AXI_BRESP[1:0],M_AXI_BVALID,M_AXI_BREADY,M_AXI_ARADDR[31:0],M_AXI_ARVALID,M_AXI_ARPROT[2:0],M_AXI_ARREADY,M_AXI_RDATA[31:0],M_AXI_RVALID,M_AXI_RRESP[1:0],M_AXI_RREADY" */;
  output [7:0]XMIT_DATA;
  input XMIT_FULL_N;
  output XMIT_WREN;
  input [7:0]RECV_DATA;
  input RECV_EMPTY_N;
  output RECV_RDEN;
  input M_AXI_ACLK;
  input M_AXI_ARESETN;
  output [31:0]M_AXI_AWADDR;
  output M_AXI_AWVALID;
  input M_AXI_AWREADY;
  output [2:0]M_AXI_AWPROT;
  output [31:0]M_AXI_WDATA;
  output M_AXI_WVALID;
  output [3:0]M_AXI_WSTRB;
  input M_AXI_WREADY;
  input [1:0]M_AXI_BRESP;
  input M_AXI_BVALID;
  output M_AXI_BREADY;
  output [31:0]M_AXI_ARADDR;
  output M_AXI_ARVALID;
  output [2:0]M_AXI_ARPROT;
  input M_AXI_ARREADY;
  input [31:0]M_AXI_RDATA;
  input M_AXI_RVALID;
  input [1:0]M_AXI_RRESP;
  output M_AXI_RREADY;
endmodule
