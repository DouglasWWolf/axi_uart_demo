// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Jun 10 18:14:45 2022
// Host        : simtool5-2 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /fpga/axi_uart_demo/xilinx_zcu104/axi_uart_zcu104.gen/sources_1/bd/design_1/ip/design_1_uart_axi_iface_0_0/design_1_uart_axi_iface_0_0_sim_netlist.v
// Design      : design_1_uart_axi_iface_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_uart_axi_iface_0_0,uart_axi_iface,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "uart_axi_iface,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module design_1_uart_axi_iface_0_0
   (XMIT_DATA,
    XMIT_FULL_N,
    XMIT_WREN,
    RECV_DATA,
    RECV_EMPTY_N,
    RECV_RDEN,
    M_AXI_ACLK,
    M_AXI_ARESETN,
    M_AXI_AWADDR,
    M_AXI_AWVALID,
    M_AXI_AWREADY,
    M_AXI_AWPROT,
    M_AXI_WDATA,
    M_AXI_WVALID,
    M_AXI_WSTRB,
    M_AXI_WREADY,
    M_AXI_BRESP,
    M_AXI_BVALID,
    M_AXI_BREADY,
    M_AXI_ARADDR,
    M_AXI_ARVALID,
    M_AXI_ARPROT,
    M_AXI_ARREADY,
    M_AXI_RDATA,
    M_AXI_RVALID,
    M_AXI_RRESP,
    M_AXI_RREADY);
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 UART_TX_FIFO WR_DATA" *) output [7:0]XMIT_DATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 UART_TX_FIFO FULL_N" *) input XMIT_FULL_N;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 UART_TX_FIFO WR_EN" *) output XMIT_WREN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 UART_RX_FIFO RD_DATA" *) (* X_INTERFACE_MODE = "master" *) input [7:0]RECV_DATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 UART_RX_FIFO EMPTY_N" *) input RECV_EMPTY_N;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 UART_RX_FIFO RD_EN" *) output RECV_RDEN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_ACLK, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET M_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_100mhz, INSERT_VIP 0" *) input M_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input M_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]M_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output M_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input M_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]M_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [31:0]M_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output M_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [3:0]M_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input M_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]M_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input M_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output M_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]M_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output M_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]M_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input M_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [31:0]M_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input M_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]M_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_100mhz, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output M_AXI_RREADY;

  wire \<const0> ;
  wire \<const1> ;
  wire M_AXI_ACLK;
  wire [31:0]M_AXI_ARADDR;
  wire M_AXI_ARESETN;
  wire M_AXI_ARREADY;
  wire M_AXI_ARVALID;
  wire [31:0]M_AXI_AWADDR;
  wire M_AXI_AWREADY;
  wire M_AXI_AWVALID;
  wire M_AXI_BREADY;
  wire [1:0]M_AXI_BRESP;
  wire M_AXI_BVALID;
  wire [31:0]M_AXI_RDATA;
  wire M_AXI_RREADY;
  wire [1:0]M_AXI_RRESP;
  wire M_AXI_RVALID;
  wire [31:0]M_AXI_WDATA;
  wire M_AXI_WREADY;
  wire M_AXI_WVALID;
  wire [7:0]RECV_DATA;
  wire RECV_EMPTY_N;
  wire RECV_RDEN;
  wire [7:0]XMIT_DATA;
  wire XMIT_WREN;

  assign M_AXI_ARPROT[2] = \<const0> ;
  assign M_AXI_ARPROT[1] = \<const0> ;
  assign M_AXI_ARPROT[0] = \<const1> ;
  assign M_AXI_AWPROT[2] = \<const0> ;
  assign M_AXI_AWPROT[1] = \<const0> ;
  assign M_AXI_AWPROT[0] = \<const0> ;
  assign M_AXI_WSTRB[3] = \<const1> ;
  assign M_AXI_WSTRB[2] = \<const1> ;
  assign M_AXI_WSTRB[1] = \<const1> ;
  assign M_AXI_WSTRB[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  design_1_uart_axi_iface_0_0_uart_axi_iface inst
       (.M_AXI_ACLK(M_AXI_ACLK),
        .M_AXI_ARADDR(M_AXI_ARADDR),
        .M_AXI_ARESETN(M_AXI_ARESETN),
        .M_AXI_ARREADY(M_AXI_ARREADY),
        .M_AXI_ARVALID(M_AXI_ARVALID),
        .M_AXI_AWADDR(M_AXI_AWADDR),
        .M_AXI_AWREADY(M_AXI_AWREADY),
        .M_AXI_AWVALID(M_AXI_AWVALID),
        .M_AXI_BRESP(M_AXI_BRESP),
        .M_AXI_BVALID(M_AXI_BVALID),
        .M_AXI_RDATA(M_AXI_RDATA),
        .M_AXI_RRESP(M_AXI_RRESP),
        .M_AXI_RVALID(M_AXI_RVALID),
        .M_AXI_WDATA(M_AXI_WDATA),
        .M_AXI_WREADY(M_AXI_WREADY),
        .M_AXI_WVALID(M_AXI_WVALID),
        .RECV_DATA(RECV_DATA),
        .RECV_EMPTY_N(RECV_EMPTY_N),
        .RECV_RDEN(RECV_RDEN),
        .XMIT_DATA(XMIT_DATA),
        .XMIT_WREN(XMIT_WREN),
        .m_axi_bready_reg_0(M_AXI_BREADY),
        .m_axi_rready_reg_0(M_AXI_RREADY));
endmodule

(* ORIG_REF_NAME = "uart_axi_iface" *) 
module design_1_uart_axi_iface_0_0_uart_axi_iface
   (XMIT_DATA,
    XMIT_WREN,
    RECV_RDEN,
    M_AXI_AWADDR,
    M_AXI_WDATA,
    M_AXI_ARADDR,
    m_axi_rready_reg_0,
    M_AXI_ARVALID,
    M_AXI_AWVALID,
    M_AXI_WVALID,
    m_axi_bready_reg_0,
    RECV_DATA,
    M_AXI_ACLK,
    M_AXI_RDATA,
    M_AXI_BRESP,
    M_AXI_RRESP,
    M_AXI_RVALID,
    M_AXI_ARESETN,
    M_AXI_ARREADY,
    RECV_EMPTY_N,
    M_AXI_AWREADY,
    M_AXI_WREADY,
    M_AXI_BVALID);
  output [7:0]XMIT_DATA;
  output XMIT_WREN;
  output RECV_RDEN;
  output [31:0]M_AXI_AWADDR;
  output [31:0]M_AXI_WDATA;
  output [31:0]M_AXI_ARADDR;
  output m_axi_rready_reg_0;
  output M_AXI_ARVALID;
  output M_AXI_AWVALID;
  output M_AXI_WVALID;
  output m_axi_bready_reg_0;
  input [7:0]RECV_DATA;
  input M_AXI_ACLK;
  input [31:0]M_AXI_RDATA;
  input [1:0]M_AXI_BRESP;
  input [1:0]M_AXI_RRESP;
  input M_AXI_RVALID;
  input M_AXI_ARESETN;
  input M_AXI_ARREADY;
  input RECV_EMPTY_N;
  input M_AXI_AWREADY;
  input M_AXI_WREADY;
  input M_AXI_BVALID;

  wire \FSM_onehot_write_state[2]_i_1_n_0 ;
  wire \FSM_onehot_write_state[2]_i_2_n_0 ;
  wire \FSM_onehot_write_state_reg_n_0_[0] ;
  wire \FSM_onehot_write_state_reg_n_0_[1] ;
  wire \FSM_onehot_write_state_reg_n_0_[2] ;
  wire \FSM_sequential_inp_state[2]_i_1_n_0 ;
  wire \FSM_sequential_inp_state[2]_i_3_n_0 ;
  wire \FSM_sequential_inp_state[2]_i_4_n_0 ;
  wire \FSM_sequential_inp_state[2]_i_5_n_0 ;
  wire \FSM_sequential_inp_state[2]_i_6_n_0 ;
  wire \FSM_sequential_inp_state[2]_i_7_n_0 ;
  wire \FSM_sequential_inp_state[2]_i_8_n_0 ;
  wire M_AXI_ACLK;
  wire [31:0]M_AXI_ARADDR;
  wire M_AXI_ARESETN;
  wire M_AXI_ARREADY;
  wire M_AXI_ARVALID;
  wire [31:0]M_AXI_AWADDR;
  wire M_AXI_AWREADY;
  wire M_AXI_AWVALID;
  wire [1:0]M_AXI_BRESP;
  wire M_AXI_BVALID;
  wire [31:0]M_AXI_RDATA;
  wire [1:0]M_AXI_RRESP;
  wire M_AXI_RVALID;
  wire [31:0]M_AXI_WDATA;
  wire M_AXI_WREADY;
  wire M_AXI_WVALID;
  wire [7:0]RECV_DATA;
  wire RECV_EMPTY_N;
  wire RECV_RDEN;
  wire [7:0]XMIT_DATA;
  wire XMIT_WREN;
  wire [31:0]amci_raddr;
  wire [31:0]amci_raddr0;
  wire \amci_raddr[31]_i_1_n_0 ;
  wire [31:0]amci_rdata;
  wire amci_rdata_1;
  wire amci_read;
  wire amci_read_reg_n_0;
  wire [1:0]amci_rresp;
  wire [31:0]amci_waddr;
  wire \amci_waddr[31]_i_1_n_0 ;
  wire [31:0]amci_wdata;
  wire [31:0]amci_wdata0;
  wire [1:0]amci_wresp;
  wire \amci_wresp[1]_i_1_n_0 ;
  wire amci_write;
  wire amci_write_reg_n_0;
  wire [31:1]in16;
  wire \inp_buff[0][7]_i_1_n_0 ;
  wire \inp_buff[1][7]_i_1_n_0 ;
  wire \inp_buff[2][7]_i_1_n_0 ;
  wire \inp_buff[3][7]_i_1_n_0 ;
  wire \inp_buff[4][7]_i_1_n_0 ;
  wire \inp_buff[5][7]_i_1_n_0 ;
  wire \inp_buff[6][7]_i_1_n_0 ;
  wire \inp_buff[7][7]_i_1_n_0 ;
  wire \inp_buff[8][7]_i_1_n_0 ;
  wire \inp_buff_reg_n_0_[0][0] ;
  wire \inp_buff_reg_n_0_[0][1] ;
  wire \inp_buff_reg_n_0_[0][2] ;
  wire \inp_buff_reg_n_0_[0][3] ;
  wire \inp_buff_reg_n_0_[0][4] ;
  wire \inp_buff_reg_n_0_[0][5] ;
  wire \inp_buff_reg_n_0_[0][6] ;
  wire \inp_buff_reg_n_0_[0][7] ;
  wire [3:0]inp_count;
  wire \inp_count[0]_i_2_n_0 ;
  wire \inp_count[0]_i_3_n_0 ;
  wire \inp_count[0]_i_4_n_0 ;
  wire \inp_count[0]_i_5_n_0 ;
  wire \inp_count[0]_i_6_n_0 ;
  wire \inp_count[3]_i_10_n_0 ;
  wire \inp_count[3]_i_11_n_0 ;
  wire \inp_count[3]_i_12_n_0 ;
  wire \inp_count[3]_i_13_n_0 ;
  wire \inp_count[3]_i_14_n_0 ;
  wire \inp_count[3]_i_15_n_0 ;
  wire \inp_count[3]_i_16_n_0 ;
  wire \inp_count[3]_i_17_n_0 ;
  wire \inp_count[3]_i_18_n_0 ;
  wire \inp_count[3]_i_19_n_0 ;
  wire \inp_count[3]_i_1_n_0 ;
  wire \inp_count[3]_i_20_n_0 ;
  wire \inp_count[3]_i_3_n_0 ;
  wire \inp_count[3]_i_4_n_0 ;
  wire \inp_count[3]_i_5_n_0 ;
  wire \inp_count[3]_i_6_n_0 ;
  wire \inp_count[3]_i_7_n_0 ;
  wire \inp_count[3]_i_8_n_0 ;
  wire \inp_count[3]_i_9_n_0 ;
  wire \inp_count_reg_n_0_[0] ;
  wire \inp_count_reg_n_0_[1] ;
  wire \inp_count_reg_n_0_[2] ;
  wire \inp_count_reg_n_0_[3] ;
  wire [3:2]inp_last_idx;
  wire \inp_last_idx[2]_i_1_n_0 ;
  wire \inp_last_idx[3]_i_1_n_0 ;
  wire \inp_last_idx[3]_i_3_n_0 ;
  wire \inp_last_idx[3]_i_4_n_0 ;
  wire \inp_last_idx[3]_i_5_n_0 ;
  wire [3:3]inp_last_idx_2;
  wire [1:0]inp_read_delay;
  wire \inp_read_delay[1]_i_1_n_0 ;
  wire \inp_read_delay_reg_n_0_[0] ;
  wire \inp_read_delay_reg_n_0_[1] ;
  wire [2:0]inp_state__0;
  wire [2:0]inp_state__1;
  wire m_axi_araddr;
  wire m_axi_arvalid_i_1_n_0;
  wire \m_axi_awaddr[31]_i_1_n_0 ;
  wire m_axi_awvalid_i_1_n_0;
  wire m_axi_bready_i_1_n_0;
  wire m_axi_bready_reg_0;
  wire m_axi_rready_i_1_n_0;
  wire m_axi_rready_reg_0;
  wire m_axi_wvalid_i_1_n_0;
  wire [31:0]read_data;
  wire \read_data[31]_i_1_n_0 ;
  wire read_state;
  wire read_state_i_1_n_0;
  wire recv_rden;
  wire [31:0]reset_clk_counter;
  wire reset_clk_counter0_carry__0_i_1_n_0;
  wire reset_clk_counter0_carry__0_i_2_n_0;
  wire reset_clk_counter0_carry__0_i_3_n_0;
  wire reset_clk_counter0_carry__0_i_4_n_0;
  wire reset_clk_counter0_carry__0_i_5_n_0;
  wire reset_clk_counter0_carry__0_i_6_n_0;
  wire reset_clk_counter0_carry__0_i_7_n_0;
  wire reset_clk_counter0_carry__0_i_8_n_0;
  wire reset_clk_counter0_carry__0_n_0;
  wire reset_clk_counter0_carry__0_n_1;
  wire reset_clk_counter0_carry__0_n_2;
  wire reset_clk_counter0_carry__0_n_3;
  wire reset_clk_counter0_carry__0_n_4;
  wire reset_clk_counter0_carry__0_n_5;
  wire reset_clk_counter0_carry__0_n_6;
  wire reset_clk_counter0_carry__0_n_7;
  wire reset_clk_counter0_carry__1_i_1_n_0;
  wire reset_clk_counter0_carry__1_i_2_n_0;
  wire reset_clk_counter0_carry__1_i_3_n_0;
  wire reset_clk_counter0_carry__1_i_4_n_0;
  wire reset_clk_counter0_carry__1_i_5_n_0;
  wire reset_clk_counter0_carry__1_i_6_n_0;
  wire reset_clk_counter0_carry__1_i_7_n_0;
  wire reset_clk_counter0_carry__1_i_8_n_0;
  wire reset_clk_counter0_carry__1_n_0;
  wire reset_clk_counter0_carry__1_n_1;
  wire reset_clk_counter0_carry__1_n_2;
  wire reset_clk_counter0_carry__1_n_3;
  wire reset_clk_counter0_carry__1_n_4;
  wire reset_clk_counter0_carry__1_n_5;
  wire reset_clk_counter0_carry__1_n_6;
  wire reset_clk_counter0_carry__1_n_7;
  wire reset_clk_counter0_carry__2_i_1_n_0;
  wire reset_clk_counter0_carry__2_i_2_n_0;
  wire reset_clk_counter0_carry__2_i_3_n_0;
  wire reset_clk_counter0_carry__2_i_4_n_0;
  wire reset_clk_counter0_carry__2_i_5_n_0;
  wire reset_clk_counter0_carry__2_i_6_n_0;
  wire reset_clk_counter0_carry__2_i_7_n_0;
  wire reset_clk_counter0_carry__2_n_2;
  wire reset_clk_counter0_carry__2_n_3;
  wire reset_clk_counter0_carry__2_n_4;
  wire reset_clk_counter0_carry__2_n_5;
  wire reset_clk_counter0_carry__2_n_6;
  wire reset_clk_counter0_carry__2_n_7;
  wire reset_clk_counter0_carry_i_1_n_0;
  wire reset_clk_counter0_carry_i_2_n_0;
  wire reset_clk_counter0_carry_i_3_n_0;
  wire reset_clk_counter0_carry_i_4_n_0;
  wire reset_clk_counter0_carry_i_5_n_0;
  wire reset_clk_counter0_carry_i_6_n_0;
  wire reset_clk_counter0_carry_i_7_n_0;
  wire reset_clk_counter0_carry_i_8_n_0;
  wire reset_clk_counter0_carry_n_0;
  wire reset_clk_counter0_carry_n_1;
  wire reset_clk_counter0_carry_n_2;
  wire reset_clk_counter0_carry_n_3;
  wire reset_clk_counter0_carry_n_4;
  wire reset_clk_counter0_carry_n_5;
  wire reset_clk_counter0_carry_n_6;
  wire reset_clk_counter0_carry_n_7;
  wire \reset_clk_counter[31]_i_1_n_0 ;
  wire \reset_clk_counter[31]_i_3_n_0 ;
  wire \reset_clk_counter[31]_i_4_n_0 ;
  wire \reset_clk_counter[31]_i_5_n_0 ;
  wire \reset_clk_counter[31]_i_6_n_0 ;
  wire \reset_clk_counter_reg_n_0_[0] ;
  wire \reset_clk_counter_reg_n_0_[10] ;
  wire \reset_clk_counter_reg_n_0_[11] ;
  wire \reset_clk_counter_reg_n_0_[12] ;
  wire \reset_clk_counter_reg_n_0_[13] ;
  wire \reset_clk_counter_reg_n_0_[14] ;
  wire \reset_clk_counter_reg_n_0_[15] ;
  wire \reset_clk_counter_reg_n_0_[16] ;
  wire \reset_clk_counter_reg_n_0_[17] ;
  wire \reset_clk_counter_reg_n_0_[18] ;
  wire \reset_clk_counter_reg_n_0_[19] ;
  wire \reset_clk_counter_reg_n_0_[1] ;
  wire \reset_clk_counter_reg_n_0_[20] ;
  wire \reset_clk_counter_reg_n_0_[21] ;
  wire \reset_clk_counter_reg_n_0_[22] ;
  wire \reset_clk_counter_reg_n_0_[23] ;
  wire \reset_clk_counter_reg_n_0_[24] ;
  wire \reset_clk_counter_reg_n_0_[25] ;
  wire \reset_clk_counter_reg_n_0_[26] ;
  wire \reset_clk_counter_reg_n_0_[27] ;
  wire \reset_clk_counter_reg_n_0_[28] ;
  wire \reset_clk_counter_reg_n_0_[29] ;
  wire \reset_clk_counter_reg_n_0_[2] ;
  wire \reset_clk_counter_reg_n_0_[30] ;
  wire \reset_clk_counter_reg_n_0_[31] ;
  wire \reset_clk_counter_reg_n_0_[3] ;
  wire \reset_clk_counter_reg_n_0_[4] ;
  wire \reset_clk_counter_reg_n_0_[5] ;
  wire \reset_clk_counter_reg_n_0_[6] ;
  wire \reset_clk_counter_reg_n_0_[7] ;
  wire \reset_clk_counter_reg_n_0_[8] ;
  wire \reset_clk_counter_reg_n_0_[9] ;
  wire [7:0]reset_stretch;
  wire \reset_stretch[0]_i_1_n_0 ;
  wire \reset_stretch[1]_i_1_n_0 ;
  wire \reset_stretch[2]_i_1_n_0 ;
  wire \reset_stretch[3]_i_1_n_0 ;
  wire \reset_stretch[4]_i_1_n_0 ;
  wire \reset_stretch[5]_i_1_n_0 ;
  wire \reset_stretch[6]_i_1_n_0 ;
  wire \reset_stretch[7]_i_2_n_0 ;
  wire \reset_stretch[7]_i_3_n_0 ;
  wire \reset_stretch[7]_i_4_n_0 ;
  wire \reset_stretch[7]_i_5_n_0 ;
  wire reset_stretch_0;
  wire [7:0]xmit_data0_in;
  wire \xmit_data[0]_i_2_n_0 ;
  wire \xmit_data[0]_i_3_n_0 ;
  wire \xmit_data[1]_i_2_n_0 ;
  wire \xmit_data[1]_i_3_n_0 ;
  wire \xmit_data[1]_i_4_n_0 ;
  wire \xmit_data[2]_i_2_n_0 ;
  wire \xmit_data[3]_i_2_n_0 ;
  wire \xmit_data[4]_i_2_n_0 ;
  wire \xmit_data[5]_i_2_n_0 ;
  wire \xmit_data[6]_i_2_n_0 ;
  wire \xmit_data[7]_i_1_n_0 ;
  wire \xmit_data[7]_i_3_n_0 ;
  wire xmit_wren;
  wire xmit_wren_i_1_n_0;
  wire xmit_wren_i_3_n_0;
  wire xmit_wren_i_4_n_0;
  wire xmit_wren_i_5_n_0;
  wire [7:6]NLW_reset_clk_counter0_carry__2_CO_UNCONNECTED;
  wire [7:7]NLW_reset_clk_counter0_carry__2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFFBB0B0000)) 
    \FSM_onehot_write_state[2]_i_1 
       (.I0(M_AXI_AWREADY),
        .I1(M_AXI_AWVALID),
        .I2(M_AXI_WVALID),
        .I3(M_AXI_WREADY),
        .I4(\FSM_onehot_write_state_reg_n_0_[1] ),
        .I5(\FSM_onehot_write_state[2]_i_2_n_0 ),
        .O(\FSM_onehot_write_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFF808080)) 
    \FSM_onehot_write_state[2]_i_2 
       (.I0(\FSM_onehot_write_state_reg_n_0_[2] ),
        .I1(M_AXI_BVALID),
        .I2(m_axi_bready_reg_0),
        .I3(amci_write_reg_n_0),
        .I4(\FSM_onehot_write_state_reg_n_0_[0] ),
        .O(\FSM_onehot_write_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_write_state_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(\FSM_onehot_write_state[2]_i_1_n_0 ),
        .D(\FSM_onehot_write_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_write_state_reg_n_0_[0] ),
        .S(xmit_wren_i_1_n_0));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_write_state_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(\FSM_onehot_write_state[2]_i_1_n_0 ),
        .D(\FSM_onehot_write_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_write_state_reg_n_0_[1] ),
        .R(xmit_wren_i_1_n_0));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_write_state_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(\FSM_onehot_write_state[2]_i_1_n_0 ),
        .D(\FSM_onehot_write_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_write_state_reg_n_0_[2] ),
        .R(xmit_wren_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0705)) 
    \FSM_sequential_inp_state[0]_i_1 
       (.I0(inp_state__0[0]),
        .I1(inp_state__0[1]),
        .I2(inp_state__0[2]),
        .I3(\FSM_sequential_inp_state[2]_i_7_n_0 ),
        .O(inp_state__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h05B0)) 
    \FSM_sequential_inp_state[1]_i_1 
       (.I0(inp_state__0[2]),
        .I1(\FSM_sequential_inp_state[2]_i_7_n_0 ),
        .I2(inp_state__0[0]),
        .I3(inp_state__0[1]),
        .O(inp_state__1[1]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \FSM_sequential_inp_state[2]_i_1 
       (.I0(\FSM_sequential_inp_state[2]_i_3_n_0 ),
        .I1(\FSM_sequential_inp_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_inp_state[2]_i_5_n_0 ),
        .I3(\FSM_sequential_inp_state[2]_i_6_n_0 ),
        .O(\FSM_sequential_inp_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h4C48)) 
    \FSM_sequential_inp_state[2]_i_2 
       (.I0(inp_state__0[1]),
        .I1(inp_state__0[0]),
        .I2(inp_state__0[2]),
        .I3(\FSM_sequential_inp_state[2]_i_7_n_0 ),
        .O(inp_state__1[2]));
  LUT6 #(
    .INIT(64'h1000000000001000)) 
    \FSM_sequential_inp_state[2]_i_3 
       (.I0(\inp_count_reg_n_0_[0] ),
        .I1(\inp_count_reg_n_0_[1] ),
        .I2(inp_last_idx[3]),
        .I3(\inp_count_reg_n_0_[3] ),
        .I4(\inp_count_reg_n_0_[2] ),
        .I5(inp_last_idx[2]),
        .O(\FSM_sequential_inp_state[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \FSM_sequential_inp_state[2]_i_4 
       (.I0(\inp_read_delay_reg_n_0_[0] ),
        .I1(\inp_read_delay_reg_n_0_[1] ),
        .I2(inp_state__0[1]),
        .I3(RECV_EMPTY_N),
        .I4(inp_state__0[2]),
        .O(\FSM_sequential_inp_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFAA020200000202)) 
    \FSM_sequential_inp_state[2]_i_5 
       (.I0(inp_state__0[1]),
        .I1(amci_read_reg_n_0),
        .I2(read_state),
        .I3(inp_state__0[0]),
        .I4(inp_state__0[2]),
        .I5(xmit_wren_i_4_n_0),
        .O(\FSM_sequential_inp_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555FFFF04000400)) 
    \FSM_sequential_inp_state[2]_i_6 
       (.I0(xmit_wren_i_3_n_0),
        .I1(inp_last_idx[2]),
        .I2(inp_last_idx[3]),
        .I3(\FSM_sequential_inp_state[2]_i_4_n_0 ),
        .I4(inp_state__0[2]),
        .I5(\xmit_data[1]_i_4_n_0 ),
        .O(\FSM_sequential_inp_state[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \FSM_sequential_inp_state[2]_i_7 
       (.I0(\inp_buff_reg_n_0_[0][2] ),
        .I1(\inp_buff_reg_n_0_[0][3] ),
        .I2(\inp_buff_reg_n_0_[0][1] ),
        .I3(\inp_buff_reg_n_0_[0][0] ),
        .I4(\FSM_sequential_inp_state[2]_i_8_n_0 ),
        .O(\FSM_sequential_inp_state[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_inp_state[2]_i_8 
       (.I0(\inp_buff_reg_n_0_[0][5] ),
        .I1(\inp_buff_reg_n_0_[0][4] ),
        .I2(\inp_buff_reg_n_0_[0][7] ),
        .I3(\inp_buff_reg_n_0_[0][6] ),
        .O(\FSM_sequential_inp_state[2]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "S_NEW_COMMAND:000,S_WAIT_NEXT_CHAR:001,iSTATE:011,iSTATE0:100,iSTATE1:110,S_AXI_WRITE:101,S_AXI_READ:010" *) 
  FDRE \FSM_sequential_inp_state_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(\FSM_sequential_inp_state[2]_i_1_n_0 ),
        .D(inp_state__1[0]),
        .Q(inp_state__0[0]),
        .R(xmit_wren_i_1_n_0));
  (* FSM_ENCODED_STATES = "S_NEW_COMMAND:000,S_WAIT_NEXT_CHAR:001,iSTATE:011,iSTATE0:100,iSTATE1:110,S_AXI_WRITE:101,S_AXI_READ:010" *) 
  FDRE \FSM_sequential_inp_state_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(\FSM_sequential_inp_state[2]_i_1_n_0 ),
        .D(inp_state__1[1]),
        .Q(inp_state__0[1]),
        .R(xmit_wren_i_1_n_0));
  (* FSM_ENCODED_STATES = "S_NEW_COMMAND:000,S_WAIT_NEXT_CHAR:001,iSTATE:011,iSTATE0:100,iSTATE1:110,S_AXI_WRITE:101,S_AXI_READ:010" *) 
  FDRE \FSM_sequential_inp_state_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(\FSM_sequential_inp_state[2]_i_1_n_0 ),
        .D(inp_state__1[2]),
        .Q(inp_state__0[2]),
        .R(xmit_wren_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \amci_raddr[31]_i_1 
       (.I0(M_AXI_ARESETN),
        .I1(read_state),
        .I2(inp_state__0[2]),
        .I3(amci_read_reg_n_0),
        .I4(inp_state__0[0]),
        .I5(inp_state__0[1]),
        .O(\amci_raddr[31]_i_1_n_0 ));
  FDRE \amci_raddr_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[0]),
        .Q(amci_raddr[0]),
        .R(1'b0));
  FDRE \amci_raddr_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[10]),
        .Q(amci_raddr[10]),
        .R(1'b0));
  FDRE \amci_raddr_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[11]),
        .Q(amci_raddr[11]),
        .R(1'b0));
  FDRE \amci_raddr_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[12]),
        .Q(amci_raddr[12]),
        .R(1'b0));
  FDRE \amci_raddr_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[13]),
        .Q(amci_raddr[13]),
        .R(1'b0));
  FDRE \amci_raddr_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[14]),
        .Q(amci_raddr[14]),
        .R(1'b0));
  FDRE \amci_raddr_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[15]),
        .Q(amci_raddr[15]),
        .R(1'b0));
  FDRE \amci_raddr_reg[16] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[16]),
        .Q(amci_raddr[16]),
        .R(1'b0));
  FDRE \amci_raddr_reg[17] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[17]),
        .Q(amci_raddr[17]),
        .R(1'b0));
  FDRE \amci_raddr_reg[18] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[18]),
        .Q(amci_raddr[18]),
        .R(1'b0));
  FDRE \amci_raddr_reg[19] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[19]),
        .Q(amci_raddr[19]),
        .R(1'b0));
  FDRE \amci_raddr_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[1]),
        .Q(amci_raddr[1]),
        .R(1'b0));
  FDRE \amci_raddr_reg[20] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[20]),
        .Q(amci_raddr[20]),
        .R(1'b0));
  FDRE \amci_raddr_reg[21] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[21]),
        .Q(amci_raddr[21]),
        .R(1'b0));
  FDRE \amci_raddr_reg[22] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[22]),
        .Q(amci_raddr[22]),
        .R(1'b0));
  FDRE \amci_raddr_reg[23] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[23]),
        .Q(amci_raddr[23]),
        .R(1'b0));
  FDRE \amci_raddr_reg[24] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[24]),
        .Q(amci_raddr[24]),
        .R(1'b0));
  FDRE \amci_raddr_reg[25] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[25]),
        .Q(amci_raddr[25]),
        .R(1'b0));
  FDRE \amci_raddr_reg[26] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[26]),
        .Q(amci_raddr[26]),
        .R(1'b0));
  FDRE \amci_raddr_reg[27] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[27]),
        .Q(amci_raddr[27]),
        .R(1'b0));
  FDRE \amci_raddr_reg[28] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[28]),
        .Q(amci_raddr[28]),
        .R(1'b0));
  FDRE \amci_raddr_reg[29] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[29]),
        .Q(amci_raddr[29]),
        .R(1'b0));
  FDRE \amci_raddr_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[2]),
        .Q(amci_raddr[2]),
        .R(1'b0));
  FDRE \amci_raddr_reg[30] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[30]),
        .Q(amci_raddr[30]),
        .R(1'b0));
  FDRE \amci_raddr_reg[31] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[31]),
        .Q(amci_raddr[31]),
        .R(1'b0));
  FDRE \amci_raddr_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[3]),
        .Q(amci_raddr[3]),
        .R(1'b0));
  FDRE \amci_raddr_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[4]),
        .Q(amci_raddr[4]),
        .R(1'b0));
  FDRE \amci_raddr_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[5]),
        .Q(amci_raddr[5]),
        .R(1'b0));
  FDRE \amci_raddr_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[6]),
        .Q(amci_raddr[6]),
        .R(1'b0));
  FDRE \amci_raddr_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[7]),
        .Q(amci_raddr[7]),
        .R(1'b0));
  FDRE \amci_raddr_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[8]),
        .Q(amci_raddr[8]),
        .R(1'b0));
  FDRE \amci_raddr_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(\amci_raddr[31]_i_1_n_0 ),
        .D(amci_raddr0[9]),
        .Q(amci_raddr[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    \amci_rdata[31]_i_1 
       (.I0(M_AXI_ARESETN),
        .I1(read_state),
        .I2(m_axi_rready_reg_0),
        .I3(M_AXI_RVALID),
        .O(amci_rdata_1));
  FDRE \amci_rdata_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[0]),
        .Q(amci_rdata[0]),
        .R(1'b0));
  FDRE \amci_rdata_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[10]),
        .Q(amci_rdata[10]),
        .R(1'b0));
  FDRE \amci_rdata_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[11]),
        .Q(amci_rdata[11]),
        .R(1'b0));
  FDRE \amci_rdata_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[12]),
        .Q(amci_rdata[12]),
        .R(1'b0));
  FDRE \amci_rdata_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[13]),
        .Q(amci_rdata[13]),
        .R(1'b0));
  FDRE \amci_rdata_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[14]),
        .Q(amci_rdata[14]),
        .R(1'b0));
  FDRE \amci_rdata_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[15]),
        .Q(amci_rdata[15]),
        .R(1'b0));
  FDRE \amci_rdata_reg[16] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[16]),
        .Q(amci_rdata[16]),
        .R(1'b0));
  FDRE \amci_rdata_reg[17] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[17]),
        .Q(amci_rdata[17]),
        .R(1'b0));
  FDRE \amci_rdata_reg[18] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[18]),
        .Q(amci_rdata[18]),
        .R(1'b0));
  FDRE \amci_rdata_reg[19] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[19]),
        .Q(amci_rdata[19]),
        .R(1'b0));
  FDRE \amci_rdata_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[1]),
        .Q(amci_rdata[1]),
        .R(1'b0));
  FDRE \amci_rdata_reg[20] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[20]),
        .Q(amci_rdata[20]),
        .R(1'b0));
  FDRE \amci_rdata_reg[21] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[21]),
        .Q(amci_rdata[21]),
        .R(1'b0));
  FDRE \amci_rdata_reg[22] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[22]),
        .Q(amci_rdata[22]),
        .R(1'b0));
  FDRE \amci_rdata_reg[23] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[23]),
        .Q(amci_rdata[23]),
        .R(1'b0));
  FDRE \amci_rdata_reg[24] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[24]),
        .Q(amci_rdata[24]),
        .R(1'b0));
  FDRE \amci_rdata_reg[25] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[25]),
        .Q(amci_rdata[25]),
        .R(1'b0));
  FDRE \amci_rdata_reg[26] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[26]),
        .Q(amci_rdata[26]),
        .R(1'b0));
  FDRE \amci_rdata_reg[27] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[27]),
        .Q(amci_rdata[27]),
        .R(1'b0));
  FDRE \amci_rdata_reg[28] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[28]),
        .Q(amci_rdata[28]),
        .R(1'b0));
  FDRE \amci_rdata_reg[29] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[29]),
        .Q(amci_rdata[29]),
        .R(1'b0));
  FDRE \amci_rdata_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[2]),
        .Q(amci_rdata[2]),
        .R(1'b0));
  FDRE \amci_rdata_reg[30] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[30]),
        .Q(amci_rdata[30]),
        .R(1'b0));
  FDRE \amci_rdata_reg[31] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[31]),
        .Q(amci_rdata[31]),
        .R(1'b0));
  FDRE \amci_rdata_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[3]),
        .Q(amci_rdata[3]),
        .R(1'b0));
  FDRE \amci_rdata_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[4]),
        .Q(amci_rdata[4]),
        .R(1'b0));
  FDRE \amci_rdata_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[5]),
        .Q(amci_rdata[5]),
        .R(1'b0));
  FDRE \amci_rdata_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[6]),
        .Q(amci_rdata[6]),
        .R(1'b0));
  FDRE \amci_rdata_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[7]),
        .Q(amci_rdata[7]),
        .R(1'b0));
  FDRE \amci_rdata_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[8]),
        .Q(amci_rdata[8]),
        .R(1'b0));
  FDRE \amci_rdata_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RDATA[9]),
        .Q(amci_rdata[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00010000)) 
    amci_read_i_1
       (.I0(inp_state__0[2]),
        .I1(read_state),
        .I2(amci_read_reg_n_0),
        .I3(inp_state__0[0]),
        .I4(inp_state__0[1]),
        .O(amci_read));
  FDRE amci_read_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(amci_read),
        .Q(amci_read_reg_n_0),
        .R(xmit_wren_i_1_n_0));
  FDRE \amci_rresp_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RRESP[0]),
        .Q(amci_rresp[0]),
        .R(1'b0));
  FDRE \amci_rresp_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(amci_rdata_1),
        .D(M_AXI_RRESP[1]),
        .Q(amci_rresp[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \amci_waddr[31]_i_1 
       (.I0(inp_state__0[0]),
        .I1(inp_state__0[2]),
        .I2(M_AXI_ARESETN),
        .I3(inp_state__0[1]),
        .I4(amci_write_reg_n_0),
        .I5(\FSM_onehot_write_state_reg_n_0_[0] ),
        .O(\amci_waddr[31]_i_1_n_0 ));
  FDRE \amci_waddr_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[0]),
        .Q(amci_waddr[0]),
        .R(1'b0));
  FDRE \amci_waddr_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[10]),
        .Q(amci_waddr[10]),
        .R(1'b0));
  FDRE \amci_waddr_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[11]),
        .Q(amci_waddr[11]),
        .R(1'b0));
  FDRE \amci_waddr_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[12]),
        .Q(amci_waddr[12]),
        .R(1'b0));
  FDRE \amci_waddr_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[13]),
        .Q(amci_waddr[13]),
        .R(1'b0));
  FDRE \amci_waddr_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[14]),
        .Q(amci_waddr[14]),
        .R(1'b0));
  FDRE \amci_waddr_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[15]),
        .Q(amci_waddr[15]),
        .R(1'b0));
  FDRE \amci_waddr_reg[16] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[16]),
        .Q(amci_waddr[16]),
        .R(1'b0));
  FDRE \amci_waddr_reg[17] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[17]),
        .Q(amci_waddr[17]),
        .R(1'b0));
  FDRE \amci_waddr_reg[18] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[18]),
        .Q(amci_waddr[18]),
        .R(1'b0));
  FDRE \amci_waddr_reg[19] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[19]),
        .Q(amci_waddr[19]),
        .R(1'b0));
  FDRE \amci_waddr_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[1]),
        .Q(amci_waddr[1]),
        .R(1'b0));
  FDRE \amci_waddr_reg[20] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[20]),
        .Q(amci_waddr[20]),
        .R(1'b0));
  FDRE \amci_waddr_reg[21] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[21]),
        .Q(amci_waddr[21]),
        .R(1'b0));
  FDRE \amci_waddr_reg[22] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[22]),
        .Q(amci_waddr[22]),
        .R(1'b0));
  FDRE \amci_waddr_reg[23] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[23]),
        .Q(amci_waddr[23]),
        .R(1'b0));
  FDRE \amci_waddr_reg[24] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[24]),
        .Q(amci_waddr[24]),
        .R(1'b0));
  FDRE \amci_waddr_reg[25] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[25]),
        .Q(amci_waddr[25]),
        .R(1'b0));
  FDRE \amci_waddr_reg[26] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[26]),
        .Q(amci_waddr[26]),
        .R(1'b0));
  FDRE \amci_waddr_reg[27] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[27]),
        .Q(amci_waddr[27]),
        .R(1'b0));
  FDRE \amci_waddr_reg[28] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[28]),
        .Q(amci_waddr[28]),
        .R(1'b0));
  FDRE \amci_waddr_reg[29] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[29]),
        .Q(amci_waddr[29]),
        .R(1'b0));
  FDRE \amci_waddr_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[2]),
        .Q(amci_waddr[2]),
        .R(1'b0));
  FDRE \amci_waddr_reg[30] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[30]),
        .Q(amci_waddr[30]),
        .R(1'b0));
  FDRE \amci_waddr_reg[31] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[31]),
        .Q(amci_waddr[31]),
        .R(1'b0));
  FDRE \amci_waddr_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[3]),
        .Q(amci_waddr[3]),
        .R(1'b0));
  FDRE \amci_waddr_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[4]),
        .Q(amci_waddr[4]),
        .R(1'b0));
  FDRE \amci_waddr_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[5]),
        .Q(amci_waddr[5]),
        .R(1'b0));
  FDRE \amci_waddr_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[6]),
        .Q(amci_waddr[6]),
        .R(1'b0));
  FDRE \amci_waddr_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[7]),
        .Q(amci_waddr[7]),
        .R(1'b0));
  FDRE \amci_waddr_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[8]),
        .Q(amci_waddr[8]),
        .R(1'b0));
  FDRE \amci_waddr_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_raddr0[9]),
        .Q(amci_waddr[9]),
        .R(1'b0));
  FDRE \amci_wdata_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[0]),
        .Q(amci_wdata[0]),
        .R(1'b0));
  FDRE \amci_wdata_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[10]),
        .Q(amci_wdata[10]),
        .R(1'b0));
  FDRE \amci_wdata_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[11]),
        .Q(amci_wdata[11]),
        .R(1'b0));
  FDRE \amci_wdata_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[12]),
        .Q(amci_wdata[12]),
        .R(1'b0));
  FDRE \amci_wdata_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[13]),
        .Q(amci_wdata[13]),
        .R(1'b0));
  FDRE \amci_wdata_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[14]),
        .Q(amci_wdata[14]),
        .R(1'b0));
  FDRE \amci_wdata_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[15]),
        .Q(amci_wdata[15]),
        .R(1'b0));
  FDRE \amci_wdata_reg[16] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[16]),
        .Q(amci_wdata[16]),
        .R(1'b0));
  FDRE \amci_wdata_reg[17] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[17]),
        .Q(amci_wdata[17]),
        .R(1'b0));
  FDRE \amci_wdata_reg[18] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[18]),
        .Q(amci_wdata[18]),
        .R(1'b0));
  FDRE \amci_wdata_reg[19] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[19]),
        .Q(amci_wdata[19]),
        .R(1'b0));
  FDRE \amci_wdata_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[1]),
        .Q(amci_wdata[1]),
        .R(1'b0));
  FDRE \amci_wdata_reg[20] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[20]),
        .Q(amci_wdata[20]),
        .R(1'b0));
  FDRE \amci_wdata_reg[21] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[21]),
        .Q(amci_wdata[21]),
        .R(1'b0));
  FDRE \amci_wdata_reg[22] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[22]),
        .Q(amci_wdata[22]),
        .R(1'b0));
  FDRE \amci_wdata_reg[23] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[23]),
        .Q(amci_wdata[23]),
        .R(1'b0));
  FDRE \amci_wdata_reg[24] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[24]),
        .Q(amci_wdata[24]),
        .R(1'b0));
  FDRE \amci_wdata_reg[25] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[25]),
        .Q(amci_wdata[25]),
        .R(1'b0));
  FDRE \amci_wdata_reg[26] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[26]),
        .Q(amci_wdata[26]),
        .R(1'b0));
  FDRE \amci_wdata_reg[27] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[27]),
        .Q(amci_wdata[27]),
        .R(1'b0));
  FDRE \amci_wdata_reg[28] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[28]),
        .Q(amci_wdata[28]),
        .R(1'b0));
  FDRE \amci_wdata_reg[29] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[29]),
        .Q(amci_wdata[29]),
        .R(1'b0));
  FDRE \amci_wdata_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[2]),
        .Q(amci_wdata[2]),
        .R(1'b0));
  FDRE \amci_wdata_reg[30] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[30]),
        .Q(amci_wdata[30]),
        .R(1'b0));
  FDRE \amci_wdata_reg[31] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[31]),
        .Q(amci_wdata[31]),
        .R(1'b0));
  FDRE \amci_wdata_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[3]),
        .Q(amci_wdata[3]),
        .R(1'b0));
  FDRE \amci_wdata_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[4]),
        .Q(amci_wdata[4]),
        .R(1'b0));
  FDRE \amci_wdata_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[5]),
        .Q(amci_wdata[5]),
        .R(1'b0));
  FDRE \amci_wdata_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[6]),
        .Q(amci_wdata[6]),
        .R(1'b0));
  FDRE \amci_wdata_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[7]),
        .Q(amci_wdata[7]),
        .R(1'b0));
  FDRE \amci_wdata_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[8]),
        .Q(amci_wdata[8]),
        .R(1'b0));
  FDRE \amci_wdata_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(\amci_waddr[31]_i_1_n_0 ),
        .D(amci_wdata0[9]),
        .Q(amci_wdata[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    \amci_wresp[1]_i_1 
       (.I0(M_AXI_BVALID),
        .I1(\FSM_onehot_write_state_reg_n_0_[2] ),
        .I2(M_AXI_ARESETN),
        .I3(m_axi_bready_reg_0),
        .O(\amci_wresp[1]_i_1_n_0 ));
  FDRE \amci_wresp_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(\amci_wresp[1]_i_1_n_0 ),
        .D(M_AXI_BRESP[0]),
        .Q(amci_wresp[0]),
        .R(1'b0));
  FDRE \amci_wresp_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(\amci_wresp[1]_i_1_n_0 ),
        .D(M_AXI_BRESP[1]),
        .Q(amci_wresp[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    amci_write_i_1
       (.I0(inp_state__0[1]),
        .I1(inp_state__0[0]),
        .I2(inp_state__0[2]),
        .I3(amci_write_reg_n_0),
        .I4(\FSM_onehot_write_state_reg_n_0_[0] ),
        .O(amci_write));
  FDRE amci_write_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(amci_write),
        .Q(amci_write_reg_n_0),
        .R(xmit_wren_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \inp_buff[0][7]_i_1 
       (.I0(\inp_count_reg_n_0_[3] ),
        .I1(M_AXI_ARESETN),
        .I2(recv_rden),
        .I3(\inp_count_reg_n_0_[2] ),
        .I4(\inp_count_reg_n_0_[1] ),
        .I5(\inp_count_reg_n_0_[0] ),
        .O(\inp_buff[0][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \inp_buff[1][7]_i_1 
       (.I0(\inp_count_reg_n_0_[1] ),
        .I1(\inp_count_reg_n_0_[0] ),
        .I2(\inp_count_reg_n_0_[3] ),
        .I3(M_AXI_ARESETN),
        .I4(recv_rden),
        .I5(\inp_count_reg_n_0_[2] ),
        .O(\inp_buff[1][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \inp_buff[2][7]_i_1 
       (.I0(\inp_count_reg_n_0_[3] ),
        .I1(M_AXI_ARESETN),
        .I2(recv_rden),
        .I3(\inp_count_reg_n_0_[2] ),
        .I4(\inp_count_reg_n_0_[0] ),
        .I5(\inp_count_reg_n_0_[1] ),
        .O(\inp_buff[2][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \inp_buff[3][7]_i_1 
       (.I0(\inp_count_reg_n_0_[3] ),
        .I1(M_AXI_ARESETN),
        .I2(recv_rden),
        .I3(\inp_count_reg_n_0_[2] ),
        .I4(\inp_count_reg_n_0_[1] ),
        .I5(\inp_count_reg_n_0_[0] ),
        .O(\inp_buff[3][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \inp_buff[4][7]_i_1 
       (.I0(M_AXI_ARESETN),
        .I1(recv_rden),
        .I2(\inp_count_reg_n_0_[0] ),
        .I3(\inp_count_reg_n_0_[1] ),
        .I4(\inp_count_reg_n_0_[3] ),
        .I5(\inp_count_reg_n_0_[2] ),
        .O(\inp_buff[4][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \inp_buff[5][7]_i_1 
       (.I0(\inp_count_reg_n_0_[3] ),
        .I1(\inp_count_reg_n_0_[2] ),
        .I2(\inp_count_reg_n_0_[0] ),
        .I3(\inp_count_reg_n_0_[1] ),
        .I4(M_AXI_ARESETN),
        .I5(recv_rden),
        .O(\inp_buff[5][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \inp_buff[6][7]_i_1 
       (.I0(\inp_count_reg_n_0_[3] ),
        .I1(\inp_count_reg_n_0_[2] ),
        .I2(\inp_count_reg_n_0_[1] ),
        .I3(\inp_count_reg_n_0_[0] ),
        .I4(M_AXI_ARESETN),
        .I5(recv_rden),
        .O(\inp_buff[6][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \inp_buff[7][7]_i_1 
       (.I0(\inp_count_reg_n_0_[3] ),
        .I1(\inp_count_reg_n_0_[2] ),
        .I2(\inp_count_reg_n_0_[0] ),
        .I3(\inp_count_reg_n_0_[1] ),
        .I4(M_AXI_ARESETN),
        .I5(recv_rden),
        .O(\inp_buff[7][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \inp_buff[8][7]_i_1 
       (.I0(\inp_count_reg_n_0_[0] ),
        .I1(\inp_count_reg_n_0_[1] ),
        .I2(\inp_count_reg_n_0_[3] ),
        .I3(\inp_count_reg_n_0_[2] ),
        .I4(recv_rden),
        .I5(M_AXI_ARESETN),
        .O(\inp_buff[8][7]_i_1_n_0 ));
  FDRE \inp_buff_reg[0][0] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[0][7]_i_1_n_0 ),
        .D(RECV_DATA[0]),
        .Q(\inp_buff_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE \inp_buff_reg[0][1] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[0][7]_i_1_n_0 ),
        .D(RECV_DATA[1]),
        .Q(\inp_buff_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE \inp_buff_reg[0][2] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[0][7]_i_1_n_0 ),
        .D(RECV_DATA[2]),
        .Q(\inp_buff_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE \inp_buff_reg[0][3] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[0][7]_i_1_n_0 ),
        .D(RECV_DATA[3]),
        .Q(\inp_buff_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE \inp_buff_reg[0][4] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[0][7]_i_1_n_0 ),
        .D(RECV_DATA[4]),
        .Q(\inp_buff_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE \inp_buff_reg[0][5] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[0][7]_i_1_n_0 ),
        .D(RECV_DATA[5]),
        .Q(\inp_buff_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE \inp_buff_reg[0][6] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[0][7]_i_1_n_0 ),
        .D(RECV_DATA[6]),
        .Q(\inp_buff_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE \inp_buff_reg[0][7] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[0][7]_i_1_n_0 ),
        .D(RECV_DATA[7]),
        .Q(\inp_buff_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE \inp_buff_reg[1][0] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[1][7]_i_1_n_0 ),
        .D(RECV_DATA[0]),
        .Q(amci_raddr0[24]),
        .R(1'b0));
  FDRE \inp_buff_reg[1][1] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[1][7]_i_1_n_0 ),
        .D(RECV_DATA[1]),
        .Q(amci_raddr0[25]),
        .R(1'b0));
  FDRE \inp_buff_reg[1][2] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[1][7]_i_1_n_0 ),
        .D(RECV_DATA[2]),
        .Q(amci_raddr0[26]),
        .R(1'b0));
  FDRE \inp_buff_reg[1][3] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[1][7]_i_1_n_0 ),
        .D(RECV_DATA[3]),
        .Q(amci_raddr0[27]),
        .R(1'b0));
  FDRE \inp_buff_reg[1][4] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[1][7]_i_1_n_0 ),
        .D(RECV_DATA[4]),
        .Q(amci_raddr0[28]),
        .R(1'b0));
  FDRE \inp_buff_reg[1][5] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[1][7]_i_1_n_0 ),
        .D(RECV_DATA[5]),
        .Q(amci_raddr0[29]),
        .R(1'b0));
  FDRE \inp_buff_reg[1][6] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[1][7]_i_1_n_0 ),
        .D(RECV_DATA[6]),
        .Q(amci_raddr0[30]),
        .R(1'b0));
  FDRE \inp_buff_reg[1][7] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[1][7]_i_1_n_0 ),
        .D(RECV_DATA[7]),
        .Q(amci_raddr0[31]),
        .R(1'b0));
  FDRE \inp_buff_reg[2][0] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[2][7]_i_1_n_0 ),
        .D(RECV_DATA[0]),
        .Q(amci_raddr0[16]),
        .R(1'b0));
  FDRE \inp_buff_reg[2][1] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[2][7]_i_1_n_0 ),
        .D(RECV_DATA[1]),
        .Q(amci_raddr0[17]),
        .R(1'b0));
  FDRE \inp_buff_reg[2][2] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[2][7]_i_1_n_0 ),
        .D(RECV_DATA[2]),
        .Q(amci_raddr0[18]),
        .R(1'b0));
  FDRE \inp_buff_reg[2][3] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[2][7]_i_1_n_0 ),
        .D(RECV_DATA[3]),
        .Q(amci_raddr0[19]),
        .R(1'b0));
  FDRE \inp_buff_reg[2][4] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[2][7]_i_1_n_0 ),
        .D(RECV_DATA[4]),
        .Q(amci_raddr0[20]),
        .R(1'b0));
  FDRE \inp_buff_reg[2][5] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[2][7]_i_1_n_0 ),
        .D(RECV_DATA[5]),
        .Q(amci_raddr0[21]),
        .R(1'b0));
  FDRE \inp_buff_reg[2][6] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[2][7]_i_1_n_0 ),
        .D(RECV_DATA[6]),
        .Q(amci_raddr0[22]),
        .R(1'b0));
  FDRE \inp_buff_reg[2][7] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[2][7]_i_1_n_0 ),
        .D(RECV_DATA[7]),
        .Q(amci_raddr0[23]),
        .R(1'b0));
  FDRE \inp_buff_reg[3][0] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[3][7]_i_1_n_0 ),
        .D(RECV_DATA[0]),
        .Q(amci_raddr0[8]),
        .R(1'b0));
  FDRE \inp_buff_reg[3][1] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[3][7]_i_1_n_0 ),
        .D(RECV_DATA[1]),
        .Q(amci_raddr0[9]),
        .R(1'b0));
  FDRE \inp_buff_reg[3][2] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[3][7]_i_1_n_0 ),
        .D(RECV_DATA[2]),
        .Q(amci_raddr0[10]),
        .R(1'b0));
  FDRE \inp_buff_reg[3][3] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[3][7]_i_1_n_0 ),
        .D(RECV_DATA[3]),
        .Q(amci_raddr0[11]),
        .R(1'b0));
  FDRE \inp_buff_reg[3][4] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[3][7]_i_1_n_0 ),
        .D(RECV_DATA[4]),
        .Q(amci_raddr0[12]),
        .R(1'b0));
  FDRE \inp_buff_reg[3][5] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[3][7]_i_1_n_0 ),
        .D(RECV_DATA[5]),
        .Q(amci_raddr0[13]),
        .R(1'b0));
  FDRE \inp_buff_reg[3][6] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[3][7]_i_1_n_0 ),
        .D(RECV_DATA[6]),
        .Q(amci_raddr0[14]),
        .R(1'b0));
  FDRE \inp_buff_reg[3][7] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[3][7]_i_1_n_0 ),
        .D(RECV_DATA[7]),
        .Q(amci_raddr0[15]),
        .R(1'b0));
  FDRE \inp_buff_reg[4][0] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[4][7]_i_1_n_0 ),
        .D(RECV_DATA[0]),
        .Q(amci_raddr0[0]),
        .R(1'b0));
  FDRE \inp_buff_reg[4][1] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[4][7]_i_1_n_0 ),
        .D(RECV_DATA[1]),
        .Q(amci_raddr0[1]),
        .R(1'b0));
  FDRE \inp_buff_reg[4][2] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[4][7]_i_1_n_0 ),
        .D(RECV_DATA[2]),
        .Q(amci_raddr0[2]),
        .R(1'b0));
  FDRE \inp_buff_reg[4][3] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[4][7]_i_1_n_0 ),
        .D(RECV_DATA[3]),
        .Q(amci_raddr0[3]),
        .R(1'b0));
  FDRE \inp_buff_reg[4][4] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[4][7]_i_1_n_0 ),
        .D(RECV_DATA[4]),
        .Q(amci_raddr0[4]),
        .R(1'b0));
  FDRE \inp_buff_reg[4][5] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[4][7]_i_1_n_0 ),
        .D(RECV_DATA[5]),
        .Q(amci_raddr0[5]),
        .R(1'b0));
  FDRE \inp_buff_reg[4][6] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[4][7]_i_1_n_0 ),
        .D(RECV_DATA[6]),
        .Q(amci_raddr0[6]),
        .R(1'b0));
  FDRE \inp_buff_reg[4][7] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[4][7]_i_1_n_0 ),
        .D(RECV_DATA[7]),
        .Q(amci_raddr0[7]),
        .R(1'b0));
  FDRE \inp_buff_reg[5][0] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[5][7]_i_1_n_0 ),
        .D(RECV_DATA[0]),
        .Q(amci_wdata0[24]),
        .R(1'b0));
  FDRE \inp_buff_reg[5][1] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[5][7]_i_1_n_0 ),
        .D(RECV_DATA[1]),
        .Q(amci_wdata0[25]),
        .R(1'b0));
  FDRE \inp_buff_reg[5][2] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[5][7]_i_1_n_0 ),
        .D(RECV_DATA[2]),
        .Q(amci_wdata0[26]),
        .R(1'b0));
  FDRE \inp_buff_reg[5][3] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[5][7]_i_1_n_0 ),
        .D(RECV_DATA[3]),
        .Q(amci_wdata0[27]),
        .R(1'b0));
  FDRE \inp_buff_reg[5][4] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[5][7]_i_1_n_0 ),
        .D(RECV_DATA[4]),
        .Q(amci_wdata0[28]),
        .R(1'b0));
  FDRE \inp_buff_reg[5][5] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[5][7]_i_1_n_0 ),
        .D(RECV_DATA[5]),
        .Q(amci_wdata0[29]),
        .R(1'b0));
  FDRE \inp_buff_reg[5][6] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[5][7]_i_1_n_0 ),
        .D(RECV_DATA[6]),
        .Q(amci_wdata0[30]),
        .R(1'b0));
  FDRE \inp_buff_reg[5][7] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[5][7]_i_1_n_0 ),
        .D(RECV_DATA[7]),
        .Q(amci_wdata0[31]),
        .R(1'b0));
  FDRE \inp_buff_reg[6][0] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[6][7]_i_1_n_0 ),
        .D(RECV_DATA[0]),
        .Q(amci_wdata0[16]),
        .R(1'b0));
  FDRE \inp_buff_reg[6][1] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[6][7]_i_1_n_0 ),
        .D(RECV_DATA[1]),
        .Q(amci_wdata0[17]),
        .R(1'b0));
  FDRE \inp_buff_reg[6][2] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[6][7]_i_1_n_0 ),
        .D(RECV_DATA[2]),
        .Q(amci_wdata0[18]),
        .R(1'b0));
  FDRE \inp_buff_reg[6][3] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[6][7]_i_1_n_0 ),
        .D(RECV_DATA[3]),
        .Q(amci_wdata0[19]),
        .R(1'b0));
  FDRE \inp_buff_reg[6][4] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[6][7]_i_1_n_0 ),
        .D(RECV_DATA[4]),
        .Q(amci_wdata0[20]),
        .R(1'b0));
  FDRE \inp_buff_reg[6][5] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[6][7]_i_1_n_0 ),
        .D(RECV_DATA[5]),
        .Q(amci_wdata0[21]),
        .R(1'b0));
  FDRE \inp_buff_reg[6][6] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[6][7]_i_1_n_0 ),
        .D(RECV_DATA[6]),
        .Q(amci_wdata0[22]),
        .R(1'b0));
  FDRE \inp_buff_reg[6][7] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[6][7]_i_1_n_0 ),
        .D(RECV_DATA[7]),
        .Q(amci_wdata0[23]),
        .R(1'b0));
  FDRE \inp_buff_reg[7][0] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[7][7]_i_1_n_0 ),
        .D(RECV_DATA[0]),
        .Q(amci_wdata0[8]),
        .R(1'b0));
  FDRE \inp_buff_reg[7][1] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[7][7]_i_1_n_0 ),
        .D(RECV_DATA[1]),
        .Q(amci_wdata0[9]),
        .R(1'b0));
  FDRE \inp_buff_reg[7][2] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[7][7]_i_1_n_0 ),
        .D(RECV_DATA[2]),
        .Q(amci_wdata0[10]),
        .R(1'b0));
  FDRE \inp_buff_reg[7][3] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[7][7]_i_1_n_0 ),
        .D(RECV_DATA[3]),
        .Q(amci_wdata0[11]),
        .R(1'b0));
  FDRE \inp_buff_reg[7][4] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[7][7]_i_1_n_0 ),
        .D(RECV_DATA[4]),
        .Q(amci_wdata0[12]),
        .R(1'b0));
  FDRE \inp_buff_reg[7][5] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[7][7]_i_1_n_0 ),
        .D(RECV_DATA[5]),
        .Q(amci_wdata0[13]),
        .R(1'b0));
  FDRE \inp_buff_reg[7][6] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[7][7]_i_1_n_0 ),
        .D(RECV_DATA[6]),
        .Q(amci_wdata0[14]),
        .R(1'b0));
  FDRE \inp_buff_reg[7][7] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[7][7]_i_1_n_0 ),
        .D(RECV_DATA[7]),
        .Q(amci_wdata0[15]),
        .R(1'b0));
  FDRE \inp_buff_reg[8][0] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[8][7]_i_1_n_0 ),
        .D(RECV_DATA[0]),
        .Q(amci_wdata0[0]),
        .R(1'b0));
  FDRE \inp_buff_reg[8][1] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[8][7]_i_1_n_0 ),
        .D(RECV_DATA[1]),
        .Q(amci_wdata0[1]),
        .R(1'b0));
  FDRE \inp_buff_reg[8][2] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[8][7]_i_1_n_0 ),
        .D(RECV_DATA[2]),
        .Q(amci_wdata0[2]),
        .R(1'b0));
  FDRE \inp_buff_reg[8][3] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[8][7]_i_1_n_0 ),
        .D(RECV_DATA[3]),
        .Q(amci_wdata0[3]),
        .R(1'b0));
  FDRE \inp_buff_reg[8][4] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[8][7]_i_1_n_0 ),
        .D(RECV_DATA[4]),
        .Q(amci_wdata0[4]),
        .R(1'b0));
  FDRE \inp_buff_reg[8][5] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[8][7]_i_1_n_0 ),
        .D(RECV_DATA[5]),
        .Q(amci_wdata0[5]),
        .R(1'b0));
  FDRE \inp_buff_reg[8][6] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[8][7]_i_1_n_0 ),
        .D(RECV_DATA[6]),
        .Q(amci_wdata0[6]),
        .R(1'b0));
  FDRE \inp_buff_reg[8][7] 
       (.C(M_AXI_ACLK),
        .CE(\inp_buff[8][7]_i_1_n_0 ),
        .D(RECV_DATA[7]),
        .Q(amci_wdata0[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4040FFFF4040F040)) 
    \inp_count[0]_i_1 
       (.I0(\inp_count[0]_i_2_n_0 ),
        .I1(\inp_count[0]_i_3_n_0 ),
        .I2(\inp_count[0]_i_4_n_0 ),
        .I3(\inp_count_reg_n_0_[1] ),
        .I4(\inp_count_reg_n_0_[0] ),
        .I5(\inp_count[0]_i_5_n_0 ),
        .O(inp_count[0]));
  LUT3 #(
    .INIT(8'hFE)) 
    \inp_count[0]_i_2 
       (.I0(RECV_DATA[6]),
        .I1(RECV_DATA[4]),
        .I2(RECV_DATA[3]),
        .O(\inp_count[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004700)) 
    \inp_count[0]_i_3 
       (.I0(\inp_count_reg_n_0_[2] ),
        .I1(inp_last_idx[2]),
        .I2(\inp_count_reg_n_0_[3] ),
        .I3(\inp_count[0]_i_6_n_0 ),
        .I4(\inp_count_reg_n_0_[0] ),
        .I5(\inp_last_idx[3]_i_4_n_0 ),
        .O(\inp_count[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \inp_count[0]_i_4 
       (.I0(inp_state__0[0]),
        .I1(\inp_read_delay_reg_n_0_[0] ),
        .I2(\inp_read_delay_reg_n_0_[1] ),
        .I3(inp_state__0[1]),
        .I4(RECV_EMPTY_N),
        .O(\inp_count[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \inp_count[0]_i_5 
       (.I0(\inp_count[0]_i_4_n_0 ),
        .I1(\inp_count[3]_i_20_n_0 ),
        .I2(inp_state__0[1]),
        .I3(inp_state__0[2]),
        .O(\inp_count[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \inp_count[0]_i_6 
       (.I0(RECV_DATA[0]),
        .I1(RECV_DATA[1]),
        .O(\inp_count[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \inp_count[1]_i_1 
       (.I0(\inp_count[3]_i_8_n_0 ),
        .I1(\inp_count_reg_n_0_[1] ),
        .I2(\inp_count_reg_n_0_[0] ),
        .O(inp_count[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \inp_count[2]_i_1 
       (.I0(\inp_count[3]_i_8_n_0 ),
        .I1(\inp_count_reg_n_0_[2] ),
        .I2(\inp_count_reg_n_0_[0] ),
        .I3(\inp_count_reg_n_0_[1] ),
        .O(inp_count[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFABAA)) 
    \inp_count[3]_i_1 
       (.I0(\read_data[31]_i_1_n_0 ),
        .I1(\inp_count[3]_i_3_n_0 ),
        .I2(\inp_count[3]_i_4_n_0 ),
        .I3(\inp_count[3]_i_5_n_0 ),
        .I4(\inp_count[3]_i_6_n_0 ),
        .I5(\inp_count[3]_i_7_n_0 ),
        .O(\inp_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \inp_count[3]_i_10 
       (.I0(\reset_clk_counter_reg_n_0_[3] ),
        .I1(\reset_clk_counter_reg_n_0_[2] ),
        .I2(\reset_clk_counter_reg_n_0_[5] ),
        .I3(\reset_clk_counter_reg_n_0_[4] ),
        .O(\inp_count[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \inp_count[3]_i_11 
       (.I0(\reset_clk_counter_reg_n_0_[15] ),
        .I1(\reset_clk_counter_reg_n_0_[14] ),
        .I2(\reset_clk_counter_reg_n_0_[17] ),
        .I3(\reset_clk_counter_reg_n_0_[16] ),
        .O(\inp_count[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \inp_count[3]_i_12 
       (.I0(\reset_clk_counter_reg_n_0_[11] ),
        .I1(\reset_clk_counter_reg_n_0_[10] ),
        .I2(\reset_clk_counter_reg_n_0_[13] ),
        .I3(\reset_clk_counter_reg_n_0_[12] ),
        .O(\inp_count[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \inp_count[3]_i_13 
       (.I0(\reset_clk_counter_reg_n_0_[23] ),
        .I1(\reset_clk_counter_reg_n_0_[22] ),
        .I2(\reset_clk_counter_reg_n_0_[25] ),
        .I3(\reset_clk_counter_reg_n_0_[24] ),
        .O(\inp_count[3]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \inp_count[3]_i_14 
       (.I0(\reset_clk_counter_reg_n_0_[19] ),
        .I1(\reset_clk_counter_reg_n_0_[18] ),
        .I2(\reset_clk_counter_reg_n_0_[21] ),
        .I3(\reset_clk_counter_reg_n_0_[20] ),
        .O(\inp_count[3]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \inp_count[3]_i_15 
       (.I0(\reset_clk_counter_reg_n_0_[27] ),
        .I1(\reset_clk_counter_reg_n_0_[26] ),
        .I2(\reset_clk_counter_reg_n_0_[29] ),
        .I3(\reset_clk_counter_reg_n_0_[28] ),
        .O(\inp_count[3]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \inp_count[3]_i_16 
       (.I0(reset_stretch[4]),
        .I1(reset_stretch[5]),
        .I2(reset_stretch[7]),
        .I3(reset_stretch[6]),
        .O(\inp_count[3]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \inp_count[3]_i_17 
       (.I0(reset_stretch[1]),
        .I1(reset_stretch[0]),
        .I2(reset_stretch[3]),
        .I3(reset_stretch[2]),
        .O(\inp_count[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF6FC4)) 
    \inp_count[3]_i_18 
       (.I0(inp_last_idx[2]),
        .I1(\inp_count_reg_n_0_[2] ),
        .I2(inp_last_idx[3]),
        .I3(\inp_count_reg_n_0_[3] ),
        .I4(\inp_count_reg_n_0_[1] ),
        .I5(\inp_count_reg_n_0_[0] ),
        .O(\inp_count[3]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h001D1D00)) 
    \inp_count[3]_i_19 
       (.I0(\inp_count_reg_n_0_[3] ),
        .I1(inp_last_idx[2]),
        .I2(\inp_count_reg_n_0_[2] ),
        .I3(RECV_DATA[1]),
        .I4(RECV_DATA[0]),
        .O(\inp_count[3]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \inp_count[3]_i_2 
       (.I0(\inp_count[3]_i_8_n_0 ),
        .I1(\inp_count_reg_n_0_[3] ),
        .I2(\inp_count_reg_n_0_[1] ),
        .I3(\inp_count_reg_n_0_[0] ),
        .I4(\inp_count_reg_n_0_[2] ),
        .O(inp_count[3]));
  LUT4 #(
    .INIT(16'h6AF2)) 
    \inp_count[3]_i_20 
       (.I0(\inp_count_reg_n_0_[3] ),
        .I1(inp_last_idx[3]),
        .I2(\inp_count_reg_n_0_[2] ),
        .I3(inp_last_idx[2]),
        .O(\inp_count[3]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \inp_count[3]_i_3 
       (.I0(\inp_count[3]_i_9_n_0 ),
        .I1(\inp_count[3]_i_10_n_0 ),
        .I2(\inp_count[3]_i_11_n_0 ),
        .I3(\inp_count[3]_i_12_n_0 ),
        .O(\inp_count[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \inp_count[3]_i_4 
       (.I0(\inp_count[3]_i_13_n_0 ),
        .I1(\inp_count[3]_i_14_n_0 ),
        .I2(\reset_clk_counter_reg_n_0_[31] ),
        .I3(\reset_clk_counter_reg_n_0_[30] ),
        .I4(\reset_clk_counter_reg_n_0_[1] ),
        .I5(\inp_count[3]_i_15_n_0 ),
        .O(\inp_count[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \inp_count[3]_i_5 
       (.I0(inp_state__0[1]),
        .I1(inp_state__0[2]),
        .I2(\reset_clk_counter_reg_n_0_[0] ),
        .I3(M_AXI_ARESETN),
        .I4(\inp_count[3]_i_16_n_0 ),
        .I5(\inp_count[3]_i_17_n_0 ),
        .O(\inp_count[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8080808080888080)) 
    \inp_count[3]_i_6 
       (.I0(M_AXI_ARESETN),
        .I1(\FSM_sequential_inp_state[2]_i_4_n_0 ),
        .I2(\inp_count[3]_i_18_n_0 ),
        .I3(\inp_last_idx[3]_i_4_n_0 ),
        .I4(\inp_count[3]_i_19_n_0 ),
        .I5(\inp_count[0]_i_2_n_0 ),
        .O(\inp_count[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888880888)) 
    \inp_count[3]_i_7 
       (.I0(M_AXI_ARESETN),
        .I1(\xmit_data[1]_i_4_n_0 ),
        .I2(inp_state__0[2]),
        .I3(\inp_count_reg_n_0_[2] ),
        .I4(\inp_count_reg_n_0_[3] ),
        .I5(\inp_last_idx[3]_i_3_n_0 ),
        .O(\inp_count[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEFE00F000F0)) 
    \inp_count[3]_i_8 
       (.I0(\inp_count_reg_n_0_[0] ),
        .I1(\inp_count_reg_n_0_[1] ),
        .I2(inp_state__0[2]),
        .I3(inp_state__0[1]),
        .I4(\inp_count[3]_i_20_n_0 ),
        .I5(\inp_count[0]_i_4_n_0 ),
        .O(\inp_count[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \inp_count[3]_i_9 
       (.I0(\reset_clk_counter_reg_n_0_[7] ),
        .I1(\reset_clk_counter_reg_n_0_[6] ),
        .I2(\reset_clk_counter_reg_n_0_[9] ),
        .I3(\reset_clk_counter_reg_n_0_[8] ),
        .O(\inp_count[3]_i_9_n_0 ));
  FDRE \inp_count_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(\inp_count[3]_i_1_n_0 ),
        .D(inp_count[0]),
        .Q(\inp_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \inp_count_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(\inp_count[3]_i_1_n_0 ),
        .D(inp_count[1]),
        .Q(\inp_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \inp_count_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(\inp_count[3]_i_1_n_0 ),
        .D(inp_count[2]),
        .Q(\inp_count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \inp_count_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(\inp_count[3]_i_1_n_0 ),
        .D(inp_count[3]),
        .Q(\inp_count_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \inp_last_idx[2]_i_1 
       (.I0(RECV_DATA[1]),
        .I1(RECV_DATA[3]),
        .I2(RECV_DATA[4]),
        .I3(RECV_DATA[6]),
        .I4(RECV_DATA[0]),
        .O(\inp_last_idx[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000011000000000)) 
    \inp_last_idx[3]_i_1 
       (.I0(\inp_count[0]_i_2_n_0 ),
        .I1(\inp_last_idx[3]_i_3_n_0 ),
        .I2(RECV_DATA[0]),
        .I3(RECV_DATA[1]),
        .I4(\inp_last_idx[3]_i_4_n_0 ),
        .I5(\inp_last_idx[3]_i_5_n_0 ),
        .O(\inp_last_idx[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \inp_last_idx[3]_i_2 
       (.I0(RECV_DATA[0]),
        .I1(RECV_DATA[6]),
        .I2(RECV_DATA[4]),
        .I3(RECV_DATA[3]),
        .I4(RECV_DATA[1]),
        .O(inp_last_idx_2));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \inp_last_idx[3]_i_3 
       (.I0(\inp_count_reg_n_0_[0] ),
        .I1(\inp_count_reg_n_0_[1] ),
        .O(\inp_last_idx[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \inp_last_idx[3]_i_4 
       (.I0(RECV_DATA[7]),
        .I1(RECV_DATA[5]),
        .I2(RECV_DATA[2]),
        .O(\inp_last_idx[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \inp_last_idx[3]_i_5 
       (.I0(\inp_count_reg_n_0_[2] ),
        .I1(recv_rden),
        .I2(M_AXI_ARESETN),
        .I3(\inp_count_reg_n_0_[3] ),
        .O(\inp_last_idx[3]_i_5_n_0 ));
  FDRE \inp_last_idx_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(\inp_last_idx[3]_i_1_n_0 ),
        .D(\inp_last_idx[2]_i_1_n_0 ),
        .Q(inp_last_idx[2]),
        .R(1'b0));
  FDRE \inp_last_idx_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(\inp_last_idx[3]_i_1_n_0 ),
        .D(inp_last_idx_2),
        .Q(inp_last_idx[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h007F)) 
    \inp_read_delay[0]_i_1 
       (.I0(inp_state__0[1]),
        .I1(inp_state__0[0]),
        .I2(inp_state__0[2]),
        .I3(\inp_read_delay_reg_n_0_[0] ),
        .O(inp_read_delay[0]));
  LUT6 #(
    .INIT(64'h0E0EEEEEEFEEEEEE)) 
    \inp_read_delay[1]_i_1 
       (.I0(\inp_read_delay_reg_n_0_[0] ),
        .I1(\inp_read_delay_reg_n_0_[1] ),
        .I2(inp_state__0[1]),
        .I3(RECV_EMPTY_N),
        .I4(inp_state__0[0]),
        .I5(inp_state__0[2]),
        .O(\inp_read_delay[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h77FF0000000077DF)) 
    \inp_read_delay[1]_i_2 
       (.I0(inp_state__0[0]),
        .I1(inp_state__0[2]),
        .I2(RECV_EMPTY_N),
        .I3(inp_state__0[1]),
        .I4(\inp_read_delay_reg_n_0_[1] ),
        .I5(\inp_read_delay_reg_n_0_[0] ),
        .O(inp_read_delay[1]));
  FDRE \inp_read_delay_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(\inp_read_delay[1]_i_1_n_0 ),
        .D(inp_read_delay[0]),
        .Q(\inp_read_delay_reg_n_0_[0] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \inp_read_delay_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(\inp_read_delay[1]_i_1_n_0 ),
        .D(inp_read_delay[1]),
        .Q(\inp_read_delay_reg_n_0_[1] ),
        .R(xmit_wren_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    \m_axi_araddr[31]_i_1 
       (.I0(read_state),
        .I1(M_AXI_ARESETN),
        .I2(amci_read_reg_n_0),
        .O(m_axi_araddr));
  FDRE \m_axi_araddr_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[0]),
        .Q(M_AXI_ARADDR[0]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[10]),
        .Q(M_AXI_ARADDR[10]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[11]),
        .Q(M_AXI_ARADDR[11]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[12]),
        .Q(M_AXI_ARADDR[12]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[13]),
        .Q(M_AXI_ARADDR[13]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[14]),
        .Q(M_AXI_ARADDR[14]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[15]),
        .Q(M_AXI_ARADDR[15]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[16] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[16]),
        .Q(M_AXI_ARADDR[16]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[17] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[17]),
        .Q(M_AXI_ARADDR[17]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[18] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[18]),
        .Q(M_AXI_ARADDR[18]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[19] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[19]),
        .Q(M_AXI_ARADDR[19]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[1]),
        .Q(M_AXI_ARADDR[1]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[20] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[20]),
        .Q(M_AXI_ARADDR[20]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[21] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[21]),
        .Q(M_AXI_ARADDR[21]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[22] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[22]),
        .Q(M_AXI_ARADDR[22]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[23] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[23]),
        .Q(M_AXI_ARADDR[23]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[24] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[24]),
        .Q(M_AXI_ARADDR[24]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[25] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[25]),
        .Q(M_AXI_ARADDR[25]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[26] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[26]),
        .Q(M_AXI_ARADDR[26]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[27] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[27]),
        .Q(M_AXI_ARADDR[27]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[28] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[28]),
        .Q(M_AXI_ARADDR[28]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[29] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[29]),
        .Q(M_AXI_ARADDR[29]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[2]),
        .Q(M_AXI_ARADDR[2]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[30] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[30]),
        .Q(M_AXI_ARADDR[30]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[31] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[31]),
        .Q(M_AXI_ARADDR[31]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[3]),
        .Q(M_AXI_ARADDR[3]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[4]),
        .Q(M_AXI_ARADDR[4]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[5]),
        .Q(M_AXI_ARADDR[5]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[6]),
        .Q(M_AXI_ARADDR[6]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[7]),
        .Q(M_AXI_ARADDR[7]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[8]),
        .Q(M_AXI_ARADDR[8]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(m_axi_araddr),
        .D(amci_raddr[9]),
        .Q(M_AXI_ARADDR[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h4F400000)) 
    m_axi_arvalid_i_1
       (.I0(M_AXI_ARREADY),
        .I1(M_AXI_ARVALID),
        .I2(read_state),
        .I3(amci_read_reg_n_0),
        .I4(M_AXI_ARESETN),
        .O(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_axi_arvalid_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(m_axi_arvalid_i_1_n_0),
        .Q(M_AXI_ARVALID),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_awaddr[31]_i_1 
       (.I0(amci_write_reg_n_0),
        .I1(\FSM_onehot_write_state_reg_n_0_[0] ),
        .I2(M_AXI_ARESETN),
        .O(\m_axi_awaddr[31]_i_1_n_0 ));
  FDRE \m_axi_awaddr_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[0]),
        .Q(M_AXI_AWADDR[0]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[10]),
        .Q(M_AXI_AWADDR[10]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[11]),
        .Q(M_AXI_AWADDR[11]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[12]),
        .Q(M_AXI_AWADDR[12]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[13]),
        .Q(M_AXI_AWADDR[13]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[14]),
        .Q(M_AXI_AWADDR[14]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[15]),
        .Q(M_AXI_AWADDR[15]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[16] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[16]),
        .Q(M_AXI_AWADDR[16]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[17] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[17]),
        .Q(M_AXI_AWADDR[17]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[18] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[18]),
        .Q(M_AXI_AWADDR[18]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[19] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[19]),
        .Q(M_AXI_AWADDR[19]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[1]),
        .Q(M_AXI_AWADDR[1]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[20] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[20]),
        .Q(M_AXI_AWADDR[20]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[21] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[21]),
        .Q(M_AXI_AWADDR[21]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[22] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[22]),
        .Q(M_AXI_AWADDR[22]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[23] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[23]),
        .Q(M_AXI_AWADDR[23]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[24] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[24]),
        .Q(M_AXI_AWADDR[24]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[25] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[25]),
        .Q(M_AXI_AWADDR[25]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[26] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[26]),
        .Q(M_AXI_AWADDR[26]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[27] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[27]),
        .Q(M_AXI_AWADDR[27]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[28] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[28]),
        .Q(M_AXI_AWADDR[28]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[29] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[29]),
        .Q(M_AXI_AWADDR[29]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[2]),
        .Q(M_AXI_AWADDR[2]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[30] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[30]),
        .Q(M_AXI_AWADDR[30]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[31] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[31]),
        .Q(M_AXI_AWADDR[31]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[3]),
        .Q(M_AXI_AWADDR[3]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[4]),
        .Q(M_AXI_AWADDR[4]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[5]),
        .Q(M_AXI_AWADDR[5]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[6]),
        .Q(M_AXI_AWADDR[6]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[7]),
        .Q(M_AXI_AWADDR[7]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[8]),
        .Q(M_AXI_AWADDR[8]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_waddr[9]),
        .Q(M_AXI_AWADDR[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF4C4C4C)) 
    m_axi_awvalid_i_1
       (.I0(\FSM_onehot_write_state_reg_n_0_[1] ),
        .I1(M_AXI_AWVALID),
        .I2(M_AXI_AWREADY),
        .I3(amci_write_reg_n_0),
        .I4(\FSM_onehot_write_state_reg_n_0_[0] ),
        .O(m_axi_awvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_axi_awvalid_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(m_axi_awvalid_i_1_n_0),
        .Q(M_AXI_AWVALID),
        .R(xmit_wren_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFF707070)) 
    m_axi_bready_i_1
       (.I0(\FSM_onehot_write_state_reg_n_0_[2] ),
        .I1(M_AXI_BVALID),
        .I2(m_axi_bready_reg_0),
        .I3(amci_write_reg_n_0),
        .I4(\FSM_onehot_write_state_reg_n_0_[0] ),
        .O(m_axi_bready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_axi_bready_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(m_axi_bready_i_1_n_0),
        .Q(m_axi_bready_reg_0),
        .R(xmit_wren_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h44F00000)) 
    m_axi_rready_i_1
       (.I0(M_AXI_RVALID),
        .I1(m_axi_rready_reg_0),
        .I2(amci_read_reg_n_0),
        .I3(read_state),
        .I4(M_AXI_ARESETN),
        .O(m_axi_rready_i_1_n_0));
  FDRE m_axi_rready_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(m_axi_rready_i_1_n_0),
        .Q(m_axi_rready_reg_0),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[0]),
        .Q(M_AXI_WDATA[0]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[10]),
        .Q(M_AXI_WDATA[10]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[11]),
        .Q(M_AXI_WDATA[11]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[12]),
        .Q(M_AXI_WDATA[12]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[13]),
        .Q(M_AXI_WDATA[13]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[14]),
        .Q(M_AXI_WDATA[14]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[15]),
        .Q(M_AXI_WDATA[15]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[16] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[16]),
        .Q(M_AXI_WDATA[16]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[17] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[17]),
        .Q(M_AXI_WDATA[17]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[18] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[18]),
        .Q(M_AXI_WDATA[18]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[19] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[19]),
        .Q(M_AXI_WDATA[19]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[1]),
        .Q(M_AXI_WDATA[1]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[20] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[20]),
        .Q(M_AXI_WDATA[20]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[21] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[21]),
        .Q(M_AXI_WDATA[21]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[22] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[22]),
        .Q(M_AXI_WDATA[22]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[23] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[23]),
        .Q(M_AXI_WDATA[23]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[24] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[24]),
        .Q(M_AXI_WDATA[24]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[25] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[25]),
        .Q(M_AXI_WDATA[25]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[26] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[26]),
        .Q(M_AXI_WDATA[26]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[27] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[27]),
        .Q(M_AXI_WDATA[27]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[28] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[28]),
        .Q(M_AXI_WDATA[28]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[29] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[29]),
        .Q(M_AXI_WDATA[29]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[2]),
        .Q(M_AXI_WDATA[2]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[30] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[30]),
        .Q(M_AXI_WDATA[30]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[31] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[31]),
        .Q(M_AXI_WDATA[31]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[3]),
        .Q(M_AXI_WDATA[3]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[4]),
        .Q(M_AXI_WDATA[4]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[5]),
        .Q(M_AXI_WDATA[5]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[6]),
        .Q(M_AXI_WDATA[6]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[7]),
        .Q(M_AXI_WDATA[7]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[8]),
        .Q(M_AXI_WDATA[8]),
        .R(1'b0));
  FDRE \m_axi_wdata_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(amci_wdata[9]),
        .Q(M_AXI_WDATA[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF4C4C4C)) 
    m_axi_wvalid_i_1
       (.I0(\FSM_onehot_write_state_reg_n_0_[1] ),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(amci_write_reg_n_0),
        .I4(\FSM_onehot_write_state_reg_n_0_[0] ),
        .O(m_axi_wvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_axi_wvalid_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(m_axi_wvalid_i_1_n_0),
        .Q(M_AXI_WVALID),
        .R(xmit_wren_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \read_data[31]_i_1 
       (.I0(inp_state__0[0]),
        .I1(inp_state__0[2]),
        .I2(inp_state__0[1]),
        .I3(amci_read_reg_n_0),
        .I4(read_state),
        .I5(M_AXI_ARESETN),
        .O(\read_data[31]_i_1_n_0 ));
  FDRE \read_data_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[0]),
        .Q(read_data[0]),
        .R(1'b0));
  FDRE \read_data_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[10]),
        .Q(read_data[10]),
        .R(1'b0));
  FDRE \read_data_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[11]),
        .Q(read_data[11]),
        .R(1'b0));
  FDRE \read_data_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[12]),
        .Q(read_data[12]),
        .R(1'b0));
  FDRE \read_data_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[13]),
        .Q(read_data[13]),
        .R(1'b0));
  FDRE \read_data_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[14]),
        .Q(read_data[14]),
        .R(1'b0));
  FDRE \read_data_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[15]),
        .Q(read_data[15]),
        .R(1'b0));
  FDRE \read_data_reg[16] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[16]),
        .Q(read_data[16]),
        .R(1'b0));
  FDRE \read_data_reg[17] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[17]),
        .Q(read_data[17]),
        .R(1'b0));
  FDRE \read_data_reg[18] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[18]),
        .Q(read_data[18]),
        .R(1'b0));
  FDRE \read_data_reg[19] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[19]),
        .Q(read_data[19]),
        .R(1'b0));
  FDRE \read_data_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[1]),
        .Q(read_data[1]),
        .R(1'b0));
  FDRE \read_data_reg[20] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[20]),
        .Q(read_data[20]),
        .R(1'b0));
  FDRE \read_data_reg[21] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[21]),
        .Q(read_data[21]),
        .R(1'b0));
  FDRE \read_data_reg[22] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[22]),
        .Q(read_data[22]),
        .R(1'b0));
  FDRE \read_data_reg[23] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[23]),
        .Q(read_data[23]),
        .R(1'b0));
  FDRE \read_data_reg[24] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[24]),
        .Q(read_data[24]),
        .R(1'b0));
  FDRE \read_data_reg[25] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[25]),
        .Q(read_data[25]),
        .R(1'b0));
  FDRE \read_data_reg[26] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[26]),
        .Q(read_data[26]),
        .R(1'b0));
  FDRE \read_data_reg[27] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[27]),
        .Q(read_data[27]),
        .R(1'b0));
  FDRE \read_data_reg[28] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[28]),
        .Q(read_data[28]),
        .R(1'b0));
  FDRE \read_data_reg[29] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[29]),
        .Q(read_data[29]),
        .R(1'b0));
  FDRE \read_data_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[2]),
        .Q(read_data[2]),
        .R(1'b0));
  FDRE \read_data_reg[30] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[30]),
        .Q(read_data[30]),
        .R(1'b0));
  FDRE \read_data_reg[31] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[31]),
        .Q(read_data[31]),
        .R(1'b0));
  FDRE \read_data_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[3]),
        .Q(read_data[3]),
        .R(1'b0));
  FDRE \read_data_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[4]),
        .Q(read_data[4]),
        .R(1'b0));
  FDRE \read_data_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[5]),
        .Q(read_data[5]),
        .R(1'b0));
  FDRE \read_data_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[6]),
        .Q(read_data[6]),
        .R(1'b0));
  FDRE \read_data_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[7]),
        .Q(read_data[7]),
        .R(1'b0));
  FDRE \read_data_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[8]),
        .Q(read_data[8]),
        .R(1'b0));
  FDRE \read_data_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(amci_rdata[9]),
        .Q(read_data[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h3FAA)) 
    read_state_i_1
       (.I0(amci_read_reg_n_0),
        .I1(m_axi_rready_reg_0),
        .I2(M_AXI_RVALID),
        .I3(read_state),
        .O(read_state_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    read_state_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(read_state_i_1_n_0),
        .Q(read_state),
        .R(xmit_wren_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    recv_rden_i_1
       (.I0(RECV_EMPTY_N),
        .I1(inp_state__0[1]),
        .I2(\inp_read_delay_reg_n_0_[1] ),
        .I3(\inp_read_delay_reg_n_0_[0] ),
        .I4(inp_state__0[0]),
        .I5(inp_state__0[2]),
        .O(recv_rden));
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 UART_RX_FIFO RD_EN" *) 
  FDRE recv_rden_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(recv_rden),
        .Q(RECV_RDEN),
        .R(xmit_wren_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 reset_clk_counter0_carry
       (.CI(\reset_clk_counter_reg_n_0_[0] ),
        .CI_TOP(1'b0),
        .CO({reset_clk_counter0_carry_n_0,reset_clk_counter0_carry_n_1,reset_clk_counter0_carry_n_2,reset_clk_counter0_carry_n_3,reset_clk_counter0_carry_n_4,reset_clk_counter0_carry_n_5,reset_clk_counter0_carry_n_6,reset_clk_counter0_carry_n_7}),
        .DI({\reset_clk_counter_reg_n_0_[8] ,\reset_clk_counter_reg_n_0_[7] ,\reset_clk_counter_reg_n_0_[6] ,\reset_clk_counter_reg_n_0_[5] ,\reset_clk_counter_reg_n_0_[4] ,\reset_clk_counter_reg_n_0_[3] ,\reset_clk_counter_reg_n_0_[2] ,\reset_clk_counter_reg_n_0_[1] }),
        .O(in16[8:1]),
        .S({reset_clk_counter0_carry_i_1_n_0,reset_clk_counter0_carry_i_2_n_0,reset_clk_counter0_carry_i_3_n_0,reset_clk_counter0_carry_i_4_n_0,reset_clk_counter0_carry_i_5_n_0,reset_clk_counter0_carry_i_6_n_0,reset_clk_counter0_carry_i_7_n_0,reset_clk_counter0_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 reset_clk_counter0_carry__0
       (.CI(reset_clk_counter0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({reset_clk_counter0_carry__0_n_0,reset_clk_counter0_carry__0_n_1,reset_clk_counter0_carry__0_n_2,reset_clk_counter0_carry__0_n_3,reset_clk_counter0_carry__0_n_4,reset_clk_counter0_carry__0_n_5,reset_clk_counter0_carry__0_n_6,reset_clk_counter0_carry__0_n_7}),
        .DI({\reset_clk_counter_reg_n_0_[16] ,\reset_clk_counter_reg_n_0_[15] ,\reset_clk_counter_reg_n_0_[14] ,\reset_clk_counter_reg_n_0_[13] ,\reset_clk_counter_reg_n_0_[12] ,\reset_clk_counter_reg_n_0_[11] ,\reset_clk_counter_reg_n_0_[10] ,\reset_clk_counter_reg_n_0_[9] }),
        .O(in16[16:9]),
        .S({reset_clk_counter0_carry__0_i_1_n_0,reset_clk_counter0_carry__0_i_2_n_0,reset_clk_counter0_carry__0_i_3_n_0,reset_clk_counter0_carry__0_i_4_n_0,reset_clk_counter0_carry__0_i_5_n_0,reset_clk_counter0_carry__0_i_6_n_0,reset_clk_counter0_carry__0_i_7_n_0,reset_clk_counter0_carry__0_i_8_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry__0_i_1
       (.I0(\reset_clk_counter_reg_n_0_[16] ),
        .O(reset_clk_counter0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry__0_i_2
       (.I0(\reset_clk_counter_reg_n_0_[15] ),
        .O(reset_clk_counter0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry__0_i_3
       (.I0(\reset_clk_counter_reg_n_0_[14] ),
        .O(reset_clk_counter0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry__0_i_4
       (.I0(\reset_clk_counter_reg_n_0_[13] ),
        .O(reset_clk_counter0_carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry__0_i_5
       (.I0(\reset_clk_counter_reg_n_0_[12] ),
        .O(reset_clk_counter0_carry__0_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry__0_i_6
       (.I0(\reset_clk_counter_reg_n_0_[11] ),
        .O(reset_clk_counter0_carry__0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry__0_i_7
       (.I0(\reset_clk_counter_reg_n_0_[10] ),
        .O(reset_clk_counter0_carry__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry__0_i_8
       (.I0(\reset_clk_counter_reg_n_0_[9] ),
        .O(reset_clk_counter0_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 reset_clk_counter0_carry__1
       (.CI(reset_clk_counter0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({reset_clk_counter0_carry__1_n_0,reset_clk_counter0_carry__1_n_1,reset_clk_counter0_carry__1_n_2,reset_clk_counter0_carry__1_n_3,reset_clk_counter0_carry__1_n_4,reset_clk_counter0_carry__1_n_5,reset_clk_counter0_carry__1_n_6,reset_clk_counter0_carry__1_n_7}),
        .DI({\reset_clk_counter_reg_n_0_[24] ,\reset_clk_counter_reg_n_0_[23] ,\reset_clk_counter_reg_n_0_[22] ,\reset_clk_counter_reg_n_0_[21] ,\reset_clk_counter_reg_n_0_[20] ,\reset_clk_counter_reg_n_0_[19] ,\reset_clk_counter_reg_n_0_[18] ,\reset_clk_counter_reg_n_0_[17] }),
        .O(in16[24:17]),
        .S({reset_clk_counter0_carry__1_i_1_n_0,reset_clk_counter0_carry__1_i_2_n_0,reset_clk_counter0_carry__1_i_3_n_0,reset_clk_counter0_carry__1_i_4_n_0,reset_clk_counter0_carry__1_i_5_n_0,reset_clk_counter0_carry__1_i_6_n_0,reset_clk_counter0_carry__1_i_7_n_0,reset_clk_counter0_carry__1_i_8_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry__1_i_1
       (.I0(\reset_clk_counter_reg_n_0_[24] ),
        .O(reset_clk_counter0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry__1_i_2
       (.I0(\reset_clk_counter_reg_n_0_[23] ),
        .O(reset_clk_counter0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry__1_i_3
       (.I0(\reset_clk_counter_reg_n_0_[22] ),
        .O(reset_clk_counter0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry__1_i_4
       (.I0(\reset_clk_counter_reg_n_0_[21] ),
        .O(reset_clk_counter0_carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry__1_i_5
       (.I0(\reset_clk_counter_reg_n_0_[20] ),
        .O(reset_clk_counter0_carry__1_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry__1_i_6
       (.I0(\reset_clk_counter_reg_n_0_[19] ),
        .O(reset_clk_counter0_carry__1_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry__1_i_7
       (.I0(\reset_clk_counter_reg_n_0_[18] ),
        .O(reset_clk_counter0_carry__1_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry__1_i_8
       (.I0(\reset_clk_counter_reg_n_0_[17] ),
        .O(reset_clk_counter0_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 reset_clk_counter0_carry__2
       (.CI(reset_clk_counter0_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_reset_clk_counter0_carry__2_CO_UNCONNECTED[7:6],reset_clk_counter0_carry__2_n_2,reset_clk_counter0_carry__2_n_3,reset_clk_counter0_carry__2_n_4,reset_clk_counter0_carry__2_n_5,reset_clk_counter0_carry__2_n_6,reset_clk_counter0_carry__2_n_7}),
        .DI({1'b0,1'b0,\reset_clk_counter_reg_n_0_[30] ,\reset_clk_counter_reg_n_0_[29] ,\reset_clk_counter_reg_n_0_[28] ,\reset_clk_counter_reg_n_0_[27] ,\reset_clk_counter_reg_n_0_[26] ,\reset_clk_counter_reg_n_0_[25] }),
        .O({NLW_reset_clk_counter0_carry__2_O_UNCONNECTED[7],in16[31:25]}),
        .S({1'b0,reset_clk_counter0_carry__2_i_1_n_0,reset_clk_counter0_carry__2_i_2_n_0,reset_clk_counter0_carry__2_i_3_n_0,reset_clk_counter0_carry__2_i_4_n_0,reset_clk_counter0_carry__2_i_5_n_0,reset_clk_counter0_carry__2_i_6_n_0,reset_clk_counter0_carry__2_i_7_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry__2_i_1
       (.I0(\reset_clk_counter_reg_n_0_[31] ),
        .O(reset_clk_counter0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry__2_i_2
       (.I0(\reset_clk_counter_reg_n_0_[30] ),
        .O(reset_clk_counter0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry__2_i_3
       (.I0(\reset_clk_counter_reg_n_0_[29] ),
        .O(reset_clk_counter0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry__2_i_4
       (.I0(\reset_clk_counter_reg_n_0_[28] ),
        .O(reset_clk_counter0_carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry__2_i_5
       (.I0(\reset_clk_counter_reg_n_0_[27] ),
        .O(reset_clk_counter0_carry__2_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry__2_i_6
       (.I0(\reset_clk_counter_reg_n_0_[26] ),
        .O(reset_clk_counter0_carry__2_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry__2_i_7
       (.I0(\reset_clk_counter_reg_n_0_[25] ),
        .O(reset_clk_counter0_carry__2_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry_i_1
       (.I0(\reset_clk_counter_reg_n_0_[8] ),
        .O(reset_clk_counter0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry_i_2
       (.I0(\reset_clk_counter_reg_n_0_[7] ),
        .O(reset_clk_counter0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry_i_3
       (.I0(\reset_clk_counter_reg_n_0_[6] ),
        .O(reset_clk_counter0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry_i_4
       (.I0(\reset_clk_counter_reg_n_0_[5] ),
        .O(reset_clk_counter0_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry_i_5
       (.I0(\reset_clk_counter_reg_n_0_[4] ),
        .O(reset_clk_counter0_carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry_i_6
       (.I0(\reset_clk_counter_reg_n_0_[3] ),
        .O(reset_clk_counter0_carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry_i_7
       (.I0(\reset_clk_counter_reg_n_0_[2] ),
        .O(reset_clk_counter0_carry_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_clk_counter0_carry_i_8
       (.I0(\reset_clk_counter_reg_n_0_[1] ),
        .O(reset_clk_counter0_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reset_clk_counter[0]_i_1 
       (.I0(\reset_clk_counter[31]_i_6_n_0 ),
        .I1(\reset_clk_counter_reg_n_0_[0] ),
        .O(reset_clk_counter[0]));
  LUT5 #(
    .INIT(32'hFFFF2AAA)) 
    \reset_clk_counter[10]_i_1 
       (.I0(in16[10]),
        .I1(inp_state__0[2]),
        .I2(inp_state__0[0]),
        .I3(inp_state__0[1]),
        .I4(recv_rden),
        .O(reset_clk_counter[10]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reset_clk_counter[11]_i_1 
       (.I0(\reset_clk_counter[31]_i_6_n_0 ),
        .I1(in16[11]),
        .O(reset_clk_counter[11]));
  LUT5 #(
    .INIT(32'hFFFF2AAA)) 
    \reset_clk_counter[12]_i_1 
       (.I0(in16[12]),
        .I1(inp_state__0[2]),
        .I2(inp_state__0[0]),
        .I3(inp_state__0[1]),
        .I4(recv_rden),
        .O(reset_clk_counter[12]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reset_clk_counter[13]_i_1 
       (.I0(\reset_clk_counter[31]_i_6_n_0 ),
        .I1(in16[13]),
        .O(reset_clk_counter[13]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reset_clk_counter[14]_i_1 
       (.I0(\reset_clk_counter[31]_i_6_n_0 ),
        .I1(in16[14]),
        .O(reset_clk_counter[14]));
  LUT5 #(
    .INIT(32'hFFFF2AAA)) 
    \reset_clk_counter[15]_i_1 
       (.I0(in16[15]),
        .I1(inp_state__0[2]),
        .I2(inp_state__0[0]),
        .I3(inp_state__0[1]),
        .I4(recv_rden),
        .O(reset_clk_counter[15]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reset_clk_counter[16]_i_1 
       (.I0(\reset_clk_counter[31]_i_6_n_0 ),
        .I1(in16[16]),
        .O(reset_clk_counter[16]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reset_clk_counter[17]_i_1 
       (.I0(\reset_clk_counter[31]_i_6_n_0 ),
        .I1(in16[17]),
        .O(reset_clk_counter[17]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reset_clk_counter[18]_i_1 
       (.I0(\reset_clk_counter[31]_i_6_n_0 ),
        .I1(in16[18]),
        .O(reset_clk_counter[18]));
  LUT5 #(
    .INIT(32'hFFFF2AAA)) 
    \reset_clk_counter[19]_i_1 
       (.I0(in16[19]),
        .I1(inp_state__0[2]),
        .I2(inp_state__0[0]),
        .I3(inp_state__0[1]),
        .I4(recv_rden),
        .O(reset_clk_counter[19]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reset_clk_counter[1]_i_1 
       (.I0(\reset_clk_counter[31]_i_6_n_0 ),
        .I1(in16[1]),
        .O(reset_clk_counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFF2AAA)) 
    \reset_clk_counter[20]_i_1 
       (.I0(in16[20]),
        .I1(inp_state__0[2]),
        .I2(inp_state__0[0]),
        .I3(inp_state__0[1]),
        .I4(recv_rden),
        .O(reset_clk_counter[20]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reset_clk_counter[21]_i_1 
       (.I0(\reset_clk_counter[31]_i_6_n_0 ),
        .I1(in16[21]),
        .O(reset_clk_counter[21]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reset_clk_counter[22]_i_1 
       (.I0(\reset_clk_counter[31]_i_6_n_0 ),
        .I1(in16[22]),
        .O(reset_clk_counter[22]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFF2AAA)) 
    \reset_clk_counter[23]_i_1 
       (.I0(in16[23]),
        .I1(inp_state__0[2]),
        .I2(inp_state__0[0]),
        .I3(inp_state__0[1]),
        .I4(recv_rden),
        .O(reset_clk_counter[23]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reset_clk_counter[24]_i_1 
       (.I0(\reset_clk_counter[31]_i_6_n_0 ),
        .I1(in16[24]),
        .O(reset_clk_counter[24]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reset_clk_counter[25]_i_1 
       (.I0(\reset_clk_counter[31]_i_6_n_0 ),
        .I1(in16[25]),
        .O(reset_clk_counter[25]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reset_clk_counter[26]_i_1 
       (.I0(\reset_clk_counter[31]_i_6_n_0 ),
        .I1(in16[26]),
        .O(reset_clk_counter[26]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reset_clk_counter[27]_i_1 
       (.I0(\reset_clk_counter[31]_i_6_n_0 ),
        .I1(in16[27]),
        .O(reset_clk_counter[27]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reset_clk_counter[28]_i_1 
       (.I0(\reset_clk_counter[31]_i_6_n_0 ),
        .I1(in16[28]),
        .O(reset_clk_counter[28]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reset_clk_counter[29]_i_1 
       (.I0(\reset_clk_counter[31]_i_6_n_0 ),
        .I1(in16[29]),
        .O(reset_clk_counter[29]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reset_clk_counter[2]_i_1 
       (.I0(\reset_clk_counter[31]_i_6_n_0 ),
        .I1(in16[2]),
        .O(reset_clk_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reset_clk_counter[30]_i_1 
       (.I0(\reset_clk_counter[31]_i_6_n_0 ),
        .I1(in16[30]),
        .O(reset_clk_counter[30]));
  LUT6 #(
    .INIT(64'hFAFAFAFAFAFAFAEA)) 
    \reset_clk_counter[31]_i_1 
       (.I0(recv_rden),
        .I1(\reset_clk_counter_reg_n_0_[0] ),
        .I2(\reset_clk_counter[31]_i_3_n_0 ),
        .I3(\reset_clk_counter[31]_i_4_n_0 ),
        .I4(\reset_clk_counter[31]_i_5_n_0 ),
        .I5(\inp_count[3]_i_4_n_0 ),
        .O(\reset_clk_counter[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reset_clk_counter[31]_i_2 
       (.I0(\reset_clk_counter[31]_i_6_n_0 ),
        .I1(in16[31]),
        .O(reset_clk_counter[31]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \reset_clk_counter[31]_i_3 
       (.I0(inp_state__0[2]),
        .I1(inp_state__0[0]),
        .I2(inp_state__0[1]),
        .O(\reset_clk_counter[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \reset_clk_counter[31]_i_4 
       (.I0(\reset_clk_counter_reg_n_0_[12] ),
        .I1(\reset_clk_counter_reg_n_0_[13] ),
        .I2(\reset_clk_counter_reg_n_0_[10] ),
        .I3(\reset_clk_counter_reg_n_0_[11] ),
        .I4(\inp_count[3]_i_11_n_0 ),
        .O(\reset_clk_counter[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \reset_clk_counter[31]_i_5 
       (.I0(\reset_clk_counter_reg_n_0_[4] ),
        .I1(\reset_clk_counter_reg_n_0_[5] ),
        .I2(\reset_clk_counter_reg_n_0_[2] ),
        .I3(\reset_clk_counter_reg_n_0_[3] ),
        .I4(\inp_count[3]_i_9_n_0 ),
        .O(\reset_clk_counter[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F0FFEFFFFFFFFFF)) 
    \reset_clk_counter[31]_i_6 
       (.I0(\inp_read_delay_reg_n_0_[0] ),
        .I1(\inp_read_delay_reg_n_0_[1] ),
        .I2(inp_state__0[1]),
        .I3(RECV_EMPTY_N),
        .I4(inp_state__0[2]),
        .I5(inp_state__0[0]),
        .O(\reset_clk_counter[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reset_clk_counter[3]_i_1 
       (.I0(\reset_clk_counter[31]_i_6_n_0 ),
        .I1(in16[3]),
        .O(reset_clk_counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reset_clk_counter[4]_i_1 
       (.I0(\reset_clk_counter[31]_i_6_n_0 ),
        .I1(in16[4]),
        .O(reset_clk_counter[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reset_clk_counter[5]_i_1 
       (.I0(\reset_clk_counter[31]_i_6_n_0 ),
        .I1(in16[5]),
        .O(reset_clk_counter[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reset_clk_counter[6]_i_1 
       (.I0(\reset_clk_counter[31]_i_6_n_0 ),
        .I1(in16[6]),
        .O(reset_clk_counter[6]));
  LUT5 #(
    .INIT(32'hFFFF2AAA)) 
    \reset_clk_counter[7]_i_1 
       (.I0(in16[7]),
        .I1(inp_state__0[2]),
        .I2(inp_state__0[0]),
        .I3(inp_state__0[1]),
        .I4(recv_rden),
        .O(reset_clk_counter[7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reset_clk_counter[8]_i_1 
       (.I0(\reset_clk_counter[31]_i_6_n_0 ),
        .I1(in16[8]),
        .O(reset_clk_counter[8]));
  LUT5 #(
    .INIT(32'hFFFF2AAA)) 
    \reset_clk_counter[9]_i_1 
       (.I0(in16[9]),
        .I1(inp_state__0[2]),
        .I2(inp_state__0[0]),
        .I3(inp_state__0[1]),
        .I4(recv_rden),
        .O(reset_clk_counter[9]));
  FDRE \reset_clk_counter_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[0]),
        .Q(\reset_clk_counter_reg_n_0_[0] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[10]),
        .Q(\reset_clk_counter_reg_n_0_[10] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[11]),
        .Q(\reset_clk_counter_reg_n_0_[11] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[12]),
        .Q(\reset_clk_counter_reg_n_0_[12] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[13]),
        .Q(\reset_clk_counter_reg_n_0_[13] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[14]),
        .Q(\reset_clk_counter_reg_n_0_[14] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[15]),
        .Q(\reset_clk_counter_reg_n_0_[15] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[16] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[16]),
        .Q(\reset_clk_counter_reg_n_0_[16] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[17] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[17]),
        .Q(\reset_clk_counter_reg_n_0_[17] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[18] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[18]),
        .Q(\reset_clk_counter_reg_n_0_[18] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[19] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[19]),
        .Q(\reset_clk_counter_reg_n_0_[19] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[1]),
        .Q(\reset_clk_counter_reg_n_0_[1] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[20] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[20]),
        .Q(\reset_clk_counter_reg_n_0_[20] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[21] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[21]),
        .Q(\reset_clk_counter_reg_n_0_[21] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[22] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[22]),
        .Q(\reset_clk_counter_reg_n_0_[22] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[23] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[23]),
        .Q(\reset_clk_counter_reg_n_0_[23] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[24] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[24]),
        .Q(\reset_clk_counter_reg_n_0_[24] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[25] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[25]),
        .Q(\reset_clk_counter_reg_n_0_[25] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[26] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[26]),
        .Q(\reset_clk_counter_reg_n_0_[26] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[27] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[27]),
        .Q(\reset_clk_counter_reg_n_0_[27] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[28] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[28]),
        .Q(\reset_clk_counter_reg_n_0_[28] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[29] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[29]),
        .Q(\reset_clk_counter_reg_n_0_[29] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[2]),
        .Q(\reset_clk_counter_reg_n_0_[2] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[30] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[30]),
        .Q(\reset_clk_counter_reg_n_0_[30] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[31] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[31]),
        .Q(\reset_clk_counter_reg_n_0_[31] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[3]),
        .Q(\reset_clk_counter_reg_n_0_[3] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[4]),
        .Q(\reset_clk_counter_reg_n_0_[4] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[5]),
        .Q(\reset_clk_counter_reg_n_0_[5] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[6]),
        .Q(\reset_clk_counter_reg_n_0_[6] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[7]),
        .Q(\reset_clk_counter_reg_n_0_[7] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[8]),
        .Q(\reset_clk_counter_reg_n_0_[8] ),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_clk_counter_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(\reset_clk_counter[31]_i_1_n_0 ),
        .D(reset_clk_counter[9]),
        .Q(\reset_clk_counter_reg_n_0_[9] ),
        .R(xmit_wren_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    \reset_stretch[0]_i_1 
       (.I0(\reset_stretch[7]_i_4_n_0 ),
        .I1(reset_stretch[0]),
        .O(\reset_stretch[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \reset_stretch[1]_i_1 
       (.I0(reset_stretch[1]),
        .I1(reset_stretch[0]),
        .I2(\reset_stretch[7]_i_4_n_0 ),
        .O(\reset_stretch[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \reset_stretch[2]_i_1 
       (.I0(reset_stretch[2]),
        .I1(reset_stretch[0]),
        .I2(reset_stretch[1]),
        .I3(\reset_stretch[7]_i_4_n_0 ),
        .O(\reset_stretch[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \reset_stretch[3]_i_1 
       (.I0(reset_stretch[3]),
        .I1(reset_stretch[1]),
        .I2(reset_stretch[0]),
        .I3(reset_stretch[2]),
        .I4(\reset_stretch[7]_i_4_n_0 ),
        .O(\reset_stretch[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \reset_stretch[4]_i_1 
       (.I0(reset_stretch[4]),
        .I1(reset_stretch[2]),
        .I2(reset_stretch[0]),
        .I3(reset_stretch[1]),
        .I4(reset_stretch[3]),
        .I5(\reset_stretch[7]_i_4_n_0 ),
        .O(\reset_stretch[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \reset_stretch[5]_i_1 
       (.I0(reset_stretch[5]),
        .I1(\reset_stretch[7]_i_5_n_0 ),
        .I2(reset_stretch[4]),
        .I3(\reset_stretch[7]_i_4_n_0 ),
        .O(\reset_stretch[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \reset_stretch[6]_i_1 
       (.I0(reset_stretch[6]),
        .I1(reset_stretch[5]),
        .I2(reset_stretch[4]),
        .I3(\reset_stretch[7]_i_5_n_0 ),
        .I4(\reset_stretch[7]_i_4_n_0 ),
        .O(\reset_stretch[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \reset_stretch[7]_i_1 
       (.I0(\reset_stretch[7]_i_3_n_0 ),
        .I1(recv_rden),
        .I2(\reset_stretch[7]_i_4_n_0 ),
        .O(reset_stretch_0));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \reset_stretch[7]_i_2 
       (.I0(reset_stretch[7]),
        .I1(reset_stretch[4]),
        .I2(reset_stretch[5]),
        .I3(reset_stretch[6]),
        .I4(\reset_stretch[7]_i_5_n_0 ),
        .I5(\reset_stretch[7]_i_4_n_0 ),
        .O(\reset_stretch[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \reset_stretch[7]_i_3 
       (.I0(reset_stretch[2]),
        .I1(reset_stretch[3]),
        .I2(reset_stretch[0]),
        .I3(reset_stretch[1]),
        .I4(\inp_count[3]_i_16_n_0 ),
        .O(\reset_stretch[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    \reset_stretch[7]_i_4 
       (.I0(RECV_DATA[4]),
        .I1(RECV_DATA[6]),
        .I2(RECV_DATA[0]),
        .I3(RECV_DATA[3]),
        .I4(RECV_DATA[1]),
        .I5(\inp_last_idx[3]_i_4_n_0 ),
        .O(\reset_stretch[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \reset_stretch[7]_i_5 
       (.I0(reset_stretch[2]),
        .I1(reset_stretch[0]),
        .I2(reset_stretch[1]),
        .I3(reset_stretch[3]),
        .O(\reset_stretch[7]_i_5_n_0 ));
  FDRE \reset_stretch_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(reset_stretch_0),
        .D(\reset_stretch[0]_i_1_n_0 ),
        .Q(reset_stretch[0]),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_stretch_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(reset_stretch_0),
        .D(\reset_stretch[1]_i_1_n_0 ),
        .Q(reset_stretch[1]),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_stretch_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(reset_stretch_0),
        .D(\reset_stretch[2]_i_1_n_0 ),
        .Q(reset_stretch[2]),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_stretch_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(reset_stretch_0),
        .D(\reset_stretch[3]_i_1_n_0 ),
        .Q(reset_stretch[3]),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_stretch_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(reset_stretch_0),
        .D(\reset_stretch[4]_i_1_n_0 ),
        .Q(reset_stretch[4]),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_stretch_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(reset_stretch_0),
        .D(\reset_stretch[5]_i_1_n_0 ),
        .Q(reset_stretch[5]),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_stretch_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(reset_stretch_0),
        .D(\reset_stretch[6]_i_1_n_0 ),
        .Q(reset_stretch[6]),
        .R(xmit_wren_i_1_n_0));
  FDRE \reset_stretch_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(reset_stretch_0),
        .D(\reset_stretch[7]_i_2_n_0 ),
        .Q(reset_stretch[7]),
        .R(xmit_wren_i_1_n_0));
  LUT6 #(
    .INIT(64'hBABABABAFFAAAAAA)) 
    \xmit_data[0]_i_1 
       (.I0(\xmit_data[0]_i_2_n_0 ),
        .I1(inp_state__0[2]),
        .I2(amci_rresp[0]),
        .I3(amci_wresp[0]),
        .I4(inp_state__0[1]),
        .I5(inp_state__0[0]),
        .O(xmit_data0_in[0]));
  LUT6 #(
    .INIT(64'hFAAAEAAAAAAAEAAA)) 
    \xmit_data[0]_i_2 
       (.I0(\xmit_data[0]_i_3_n_0 ),
        .I1(read_data[8]),
        .I2(\xmit_data[1]_i_4_n_0 ),
        .I3(\inp_count_reg_n_0_[1] ),
        .I4(\inp_count_reg_n_0_[0] ),
        .I5(read_data[0]),
        .O(\xmit_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000020200000300)) 
    \xmit_data[0]_i_3 
       (.I0(read_data[16]),
        .I1(inp_state__0[0]),
        .I2(inp_state__0[1]),
        .I3(read_data[24]),
        .I4(\inp_count_reg_n_0_[1] ),
        .I5(\inp_count_reg_n_0_[0] ),
        .O(\xmit_data[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABAFFAAAAAA)) 
    \xmit_data[1]_i_1 
       (.I0(\xmit_data[1]_i_2_n_0 ),
        .I1(inp_state__0[2]),
        .I2(amci_rresp[1]),
        .I3(amci_wresp[1]),
        .I4(inp_state__0[1]),
        .I5(inp_state__0[0]),
        .O(xmit_data0_in[1]));
  LUT6 #(
    .INIT(64'hFAAAEAAAAAAAEAAA)) 
    \xmit_data[1]_i_2 
       (.I0(\xmit_data[1]_i_3_n_0 ),
        .I1(read_data[9]),
        .I2(\xmit_data[1]_i_4_n_0 ),
        .I3(\inp_count_reg_n_0_[1] ),
        .I4(\inp_count_reg_n_0_[0] ),
        .I5(read_data[1]),
        .O(\xmit_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000020200000300)) 
    \xmit_data[1]_i_3 
       (.I0(read_data[17]),
        .I1(inp_state__0[0]),
        .I2(inp_state__0[1]),
        .I3(read_data[25]),
        .I4(\inp_count_reg_n_0_[1] ),
        .I5(\inp_count_reg_n_0_[0] ),
        .O(\xmit_data[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \xmit_data[1]_i_4 
       (.I0(inp_state__0[0]),
        .I1(inp_state__0[1]),
        .O(\xmit_data[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \xmit_data[2]_i_1 
       (.I0(read_data[2]),
        .I1(inp_state__0[1]),
        .I2(\inp_count_reg_n_0_[0] ),
        .I3(\inp_count_reg_n_0_[1] ),
        .I4(\xmit_data[2]_i_2_n_0 ),
        .O(xmit_data0_in[2]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \xmit_data[2]_i_2 
       (.I0(read_data[26]),
        .I1(read_data[18]),
        .I2(read_data[10]),
        .I3(\inp_count_reg_n_0_[0] ),
        .I4(\inp_count_reg_n_0_[1] ),
        .I5(inp_state__0[1]),
        .O(\xmit_data[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \xmit_data[3]_i_1 
       (.I0(read_data[3]),
        .I1(inp_state__0[1]),
        .I2(\inp_count_reg_n_0_[0] ),
        .I3(\inp_count_reg_n_0_[1] ),
        .I4(\xmit_data[3]_i_2_n_0 ),
        .O(xmit_data0_in[3]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \xmit_data[3]_i_2 
       (.I0(read_data[27]),
        .I1(read_data[19]),
        .I2(read_data[11]),
        .I3(\inp_count_reg_n_0_[0] ),
        .I4(\inp_count_reg_n_0_[1] ),
        .I5(inp_state__0[1]),
        .O(\xmit_data[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \xmit_data[4]_i_1 
       (.I0(read_data[4]),
        .I1(inp_state__0[1]),
        .I2(\inp_count_reg_n_0_[0] ),
        .I3(\inp_count_reg_n_0_[1] ),
        .I4(\xmit_data[4]_i_2_n_0 ),
        .O(xmit_data0_in[4]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \xmit_data[4]_i_2 
       (.I0(read_data[28]),
        .I1(read_data[20]),
        .I2(read_data[12]),
        .I3(\inp_count_reg_n_0_[0] ),
        .I4(\inp_count_reg_n_0_[1] ),
        .I5(inp_state__0[1]),
        .O(\xmit_data[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \xmit_data[5]_i_1 
       (.I0(read_data[5]),
        .I1(inp_state__0[1]),
        .I2(\inp_count_reg_n_0_[0] ),
        .I3(\inp_count_reg_n_0_[1] ),
        .I4(\xmit_data[5]_i_2_n_0 ),
        .O(xmit_data0_in[5]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \xmit_data[5]_i_2 
       (.I0(read_data[29]),
        .I1(read_data[21]),
        .I2(read_data[13]),
        .I3(\inp_count_reg_n_0_[0] ),
        .I4(\inp_count_reg_n_0_[1] ),
        .I5(inp_state__0[1]),
        .O(\xmit_data[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \xmit_data[6]_i_1 
       (.I0(read_data[6]),
        .I1(inp_state__0[1]),
        .I2(\inp_count_reg_n_0_[0] ),
        .I3(\inp_count_reg_n_0_[1] ),
        .I4(\xmit_data[6]_i_2_n_0 ),
        .O(xmit_data0_in[6]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \xmit_data[6]_i_2 
       (.I0(read_data[30]),
        .I1(read_data[22]),
        .I2(read_data[14]),
        .I3(\inp_count_reg_n_0_[0] ),
        .I4(\inp_count_reg_n_0_[1] ),
        .I5(inp_state__0[1]),
        .O(\xmit_data[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \xmit_data[7]_i_1 
       (.I0(xmit_wren),
        .I1(M_AXI_ARESETN),
        .O(\xmit_data[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \xmit_data[7]_i_2 
       (.I0(read_data[7]),
        .I1(inp_state__0[1]),
        .I2(\inp_count_reg_n_0_[0] ),
        .I3(\inp_count_reg_n_0_[1] ),
        .I4(\xmit_data[7]_i_3_n_0 ),
        .O(xmit_data0_in[7]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \xmit_data[7]_i_3 
       (.I0(read_data[31]),
        .I1(read_data[23]),
        .I2(read_data[15]),
        .I3(\inp_count_reg_n_0_[0] ),
        .I4(\inp_count_reg_n_0_[1] ),
        .I5(inp_state__0[1]),
        .O(\xmit_data[7]_i_3_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 UART_TX_FIFO WR_DATA" *) 
  (* X_INTERFACE_MODE = "master" *) 
  FDRE \xmit_data_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(\xmit_data[7]_i_1_n_0 ),
        .D(xmit_data0_in[0]),
        .Q(XMIT_DATA[0]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 UART_TX_FIFO WR_DATA" *) 
  (* X_INTERFACE_MODE = "master" *) 
  FDRE \xmit_data_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(\xmit_data[7]_i_1_n_0 ),
        .D(xmit_data0_in[1]),
        .Q(XMIT_DATA[1]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 UART_TX_FIFO WR_DATA" *) 
  (* X_INTERFACE_MODE = "master" *) 
  FDRE \xmit_data_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(\xmit_data[7]_i_1_n_0 ),
        .D(xmit_data0_in[2]),
        .Q(XMIT_DATA[2]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 UART_TX_FIFO WR_DATA" *) 
  (* X_INTERFACE_MODE = "master" *) 
  FDRE \xmit_data_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(\xmit_data[7]_i_1_n_0 ),
        .D(xmit_data0_in[3]),
        .Q(XMIT_DATA[3]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 UART_TX_FIFO WR_DATA" *) 
  (* X_INTERFACE_MODE = "master" *) 
  FDRE \xmit_data_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(\xmit_data[7]_i_1_n_0 ),
        .D(xmit_data0_in[4]),
        .Q(XMIT_DATA[4]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 UART_TX_FIFO WR_DATA" *) 
  (* X_INTERFACE_MODE = "master" *) 
  FDRE \xmit_data_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(\xmit_data[7]_i_1_n_0 ),
        .D(xmit_data0_in[5]),
        .Q(XMIT_DATA[5]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 UART_TX_FIFO WR_DATA" *) 
  (* X_INTERFACE_MODE = "master" *) 
  FDRE \xmit_data_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(\xmit_data[7]_i_1_n_0 ),
        .D(xmit_data0_in[6]),
        .Q(XMIT_DATA[6]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 UART_TX_FIFO WR_DATA" *) 
  (* X_INTERFACE_MODE = "master" *) 
  FDRE \xmit_data_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(\xmit_data[7]_i_1_n_0 ),
        .D(xmit_data0_in[7]),
        .Q(XMIT_DATA[7]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    xmit_wren_i_1
       (.I0(M_AXI_ARESETN),
        .O(xmit_wren_i_1_n_0));
  LUT6 #(
    .INIT(64'h00E2CC0000E20000)) 
    xmit_wren_i_2
       (.I0(xmit_wren_i_3_n_0),
        .I1(inp_state__0[1]),
        .I2(xmit_wren_i_4_n_0),
        .I3(inp_state__0[0]),
        .I4(inp_state__0[2]),
        .I5(xmit_wren_i_5_n_0),
        .O(xmit_wren));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    xmit_wren_i_3
       (.I0(\inp_count_reg_n_0_[2] ),
        .I1(\inp_count_reg_n_0_[3] ),
        .I2(\inp_count_reg_n_0_[1] ),
        .I3(\inp_count_reg_n_0_[0] ),
        .O(xmit_wren_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    xmit_wren_i_4
       (.I0(\FSM_onehot_write_state_reg_n_0_[0] ),
        .I1(amci_write_reg_n_0),
        .O(xmit_wren_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    xmit_wren_i_5
       (.I0(read_state),
        .I1(amci_read_reg_n_0),
        .O(xmit_wren_i_5_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 UART_TX_FIFO WR_EN" *) 
  FDRE xmit_wren_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(xmit_wren),
        .Q(XMIT_WREN),
        .R(xmit_wren_i_1_n_0));
endmodule
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
