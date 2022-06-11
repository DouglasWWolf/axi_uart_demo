//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Fri Jun 10 18:13:32 2022
//Host        : simtool5-2 running 64-bit Ubuntu 20.04.4 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,da_board_cnt=3,da_clkrst_cnt=4,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (CLK_125_N,
    CLK_125_P,
    CPU_RESET,
    GPIO_LED,
    GPIO_PB2,
    GPIO_SW,
    UART2_RXD,
    UART2_TXD);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_125_N CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_125_N, CLK_DOMAIN design_1_clk_in1_n_0, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input CLK_125_N;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_125_P CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_125_P, ASSOCIATED_RESET CPU_RESET, CLK_DOMAIN design_1_clk_in1_p_0, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input CLK_125_P;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.CPU_RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.CPU_RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input CPU_RESET;
  output [3:0]GPIO_LED;
  input GPIO_PB2;
  input [3:0]GPIO_SW;
  input UART2_RXD;
  output UART2_TXD;

  wire PIN_0_1;
  wire [3:0]axi_gpio_0_gpio_io_o;
  wire axi_uart_tx;
  wire axi_uartlite_0_interrupt;
  wire button_0_Q;
  wire clk_in1_n_0_1;
  wire clk_in1_p_0_1;
  wire ext_reset_in_0_1;
  wire [31:0]fifo_to_uart_0_M_AXI_ARADDR;
  wire fifo_to_uart_0_M_AXI_ARREADY;
  wire fifo_to_uart_0_M_AXI_ARVALID;
  wire [31:0]fifo_to_uart_0_M_AXI_AWADDR;
  wire fifo_to_uart_0_M_AXI_AWREADY;
  wire fifo_to_uart_0_M_AXI_AWVALID;
  wire fifo_to_uart_0_M_AXI_BREADY;
  wire [1:0]fifo_to_uart_0_M_AXI_BRESP;
  wire fifo_to_uart_0_M_AXI_BVALID;
  wire [31:0]fifo_to_uart_0_M_AXI_RDATA;
  wire fifo_to_uart_0_M_AXI_RREADY;
  wire [1:0]fifo_to_uart_0_M_AXI_RRESP;
  wire fifo_to_uart_0_M_AXI_RVALID;
  wire [31:0]fifo_to_uart_0_M_AXI_WDATA;
  wire fifo_to_uart_0_M_AXI_WREADY;
  wire [3:0]fifo_to_uart_0_M_AXI_WSTRB;
  wire fifo_to_uart_0_M_AXI_WVALID;
  wire [3:0]gpio_io_i_0_1;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire rx_0_1;
  wire [8:0]smartconnect_0_M00_AXI_ARADDR;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [8:0]smartconnect_0_M00_AXI_AWADDR;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [31:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [31:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WREADY;
  wire [3:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
  wire [8:0]smartconnect_0_M01_AXI_ARADDR;
  wire smartconnect_0_M01_AXI_ARREADY;
  wire smartconnect_0_M01_AXI_ARVALID;
  wire [8:0]smartconnect_0_M01_AXI_AWADDR;
  wire smartconnect_0_M01_AXI_AWREADY;
  wire smartconnect_0_M01_AXI_AWVALID;
  wire smartconnect_0_M01_AXI_BREADY;
  wire [1:0]smartconnect_0_M01_AXI_BRESP;
  wire smartconnect_0_M01_AXI_BVALID;
  wire [31:0]smartconnect_0_M01_AXI_RDATA;
  wire smartconnect_0_M01_AXI_RREADY;
  wire [1:0]smartconnect_0_M01_AXI_RRESP;
  wire smartconnect_0_M01_AXI_RVALID;
  wire [31:0]smartconnect_0_M01_AXI_WDATA;
  wire smartconnect_0_M01_AXI_WREADY;
  wire [3:0]smartconnect_0_M01_AXI_WSTRB;
  wire smartconnect_0_M01_AXI_WVALID;
  wire system_clock_clk_100mhz;
  wire [0:0]system_reset_interconnect_aresetn;
  wire [31:0]uart_axi_iface_M_AXI_ARADDR;
  wire [2:0]uart_axi_iface_M_AXI_ARPROT;
  wire uart_axi_iface_M_AXI_ARREADY;
  wire uart_axi_iface_M_AXI_ARVALID;
  wire [31:0]uart_axi_iface_M_AXI_AWADDR;
  wire [2:0]uart_axi_iface_M_AXI_AWPROT;
  wire uart_axi_iface_M_AXI_AWREADY;
  wire uart_axi_iface_M_AXI_AWVALID;
  wire uart_axi_iface_M_AXI_BREADY;
  wire [1:0]uart_axi_iface_M_AXI_BRESP;
  wire uart_axi_iface_M_AXI_BVALID;
  wire [31:0]uart_axi_iface_M_AXI_RDATA;
  wire uart_axi_iface_M_AXI_RREADY;
  wire [1:0]uart_axi_iface_M_AXI_RRESP;
  wire uart_axi_iface_M_AXI_RVALID;
  wire [31:0]uart_axi_iface_M_AXI_WDATA;
  wire uart_axi_iface_M_AXI_WREADY;
  wire [3:0]uart_axi_iface_M_AXI_WSTRB;
  wire uart_axi_iface_M_AXI_WVALID;
  wire uart_axi_iface_UART_RX_FIFO_EMPTY_N;
  wire [7:0]uart_axi_iface_UART_RX_FIFO_RD_DATA;
  wire uart_axi_iface_UART_RX_FIFO_RD_EN;
  wire uart_axi_iface_UART_TX_FIFO_FULL_N;
  wire [7:0]uart_axi_iface_UART_TX_FIFO_WR_DATA;
  wire uart_axi_iface_UART_TX_FIFO_WR_EN;

  assign GPIO_LED[3:0] = axi_gpio_0_gpio_io_o;
  assign PIN_0_1 = GPIO_PB2;
  assign UART2_TXD = axi_uart_tx;
  assign clk_in1_n_0_1 = CLK_125_N;
  assign clk_in1_p_0_1 = CLK_125_P;
  assign ext_reset_in_0_1 = CPU_RESET;
  assign gpio_io_i_0_1 = GPIO_SW[3:0];
  assign rx_0_1 = UART2_RXD;
  design_1_axi_gpio_0_0 axi_gpio_inputs
       (.gpio_io_i(gpio_io_i_0_1),
        .s_axi_aclk(system_clock_clk_100mhz),
        .s_axi_araddr(smartconnect_0_M00_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(smartconnect_0_M00_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M00_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M00_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M00_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M00_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M00_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M00_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M00_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M00_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M00_AXI_WVALID));
  design_1_axi_gpio_0_1 axi_gpio_outputs
       (.gpio_io_o(axi_gpio_0_gpio_io_o),
        .s_axi_aclk(system_clock_clk_100mhz),
        .s_axi_araddr(smartconnect_0_M01_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(smartconnect_0_M01_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M01_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M01_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M01_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M01_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M01_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M01_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M01_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M01_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M01_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M01_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M01_AXI_WVALID));
  design_1_axi_uartlite_0_0 axi_uart
       (.interrupt(axi_uartlite_0_interrupt),
        .rx(rx_0_1),
        .s_axi_aclk(system_clock_clk_100mhz),
        .s_axi_araddr(fifo_to_uart_0_M_AXI_ARADDR[3:0]),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(fifo_to_uart_0_M_AXI_ARREADY),
        .s_axi_arvalid(fifo_to_uart_0_M_AXI_ARVALID),
        .s_axi_awaddr(fifo_to_uart_0_M_AXI_AWADDR[3:0]),
        .s_axi_awready(fifo_to_uart_0_M_AXI_AWREADY),
        .s_axi_awvalid(fifo_to_uart_0_M_AXI_AWVALID),
        .s_axi_bready(fifo_to_uart_0_M_AXI_BREADY),
        .s_axi_bresp(fifo_to_uart_0_M_AXI_BRESP),
        .s_axi_bvalid(fifo_to_uart_0_M_AXI_BVALID),
        .s_axi_rdata(fifo_to_uart_0_M_AXI_RDATA),
        .s_axi_rready(fifo_to_uart_0_M_AXI_RREADY),
        .s_axi_rresp(fifo_to_uart_0_M_AXI_RRESP),
        .s_axi_rvalid(fifo_to_uart_0_M_AXI_RVALID),
        .s_axi_wdata(fifo_to_uart_0_M_AXI_WDATA),
        .s_axi_wready(fifo_to_uart_0_M_AXI_WREADY),
        .s_axi_wstrb(fifo_to_uart_0_M_AXI_WSTRB),
        .s_axi_wvalid(fifo_to_uart_0_M_AXI_WVALID),
        .tx(axi_uart_tx));
  design_1_button_0_0 button
       (.CLK(system_clock_clk_100mhz),
        .PIN(PIN_0_1),
        .Q(button_0_Q));
  design_1_fifo_to_uart_0_0 fifo_to_uart_0
       (.BUTTON(button_0_Q),
        .M_AXI_ACLK(system_clock_clk_100mhz),
        .M_AXI_ARADDR(fifo_to_uart_0_M_AXI_ARADDR),
        .M_AXI_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M_AXI_ARREADY(fifo_to_uart_0_M_AXI_ARREADY),
        .M_AXI_ARVALID(fifo_to_uart_0_M_AXI_ARVALID),
        .M_AXI_AWADDR(fifo_to_uart_0_M_AXI_AWADDR),
        .M_AXI_AWREADY(fifo_to_uart_0_M_AXI_AWREADY),
        .M_AXI_AWVALID(fifo_to_uart_0_M_AXI_AWVALID),
        .M_AXI_BREADY(fifo_to_uart_0_M_AXI_BREADY),
        .M_AXI_BRESP(fifo_to_uart_0_M_AXI_BRESP),
        .M_AXI_BVALID(fifo_to_uart_0_M_AXI_BVALID),
        .M_AXI_RDATA(fifo_to_uart_0_M_AXI_RDATA),
        .M_AXI_RREADY(fifo_to_uart_0_M_AXI_RREADY),
        .M_AXI_RRESP(fifo_to_uart_0_M_AXI_RRESP),
        .M_AXI_RVALID(fifo_to_uart_0_M_AXI_RVALID),
        .M_AXI_WDATA(fifo_to_uart_0_M_AXI_WDATA),
        .M_AXI_WREADY(fifo_to_uart_0_M_AXI_WREADY),
        .M_AXI_WSTRB(fifo_to_uart_0_M_AXI_WSTRB),
        .M_AXI_WVALID(fifo_to_uart_0_M_AXI_WVALID),
        .RECV_DATA(uart_axi_iface_UART_RX_FIFO_RD_DATA),
        .RECV_EMPTY_N(uart_axi_iface_UART_RX_FIFO_EMPTY_N),
        .RECV_RDEN(uart_axi_iface_UART_RX_FIFO_RD_EN),
        .UART_INT(axi_uartlite_0_interrupt),
        .XMIT_DATA(uart_axi_iface_UART_TX_FIFO_WR_DATA),
        .XMIT_FULL_N(uart_axi_iface_UART_TX_FIFO_FULL_N),
        .XMIT_WREN(uart_axi_iface_UART_TX_FIFO_WR_EN));
  design_1_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arready(smartconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awready(smartconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_0_M01_AXI_RDATA),
        .M01_AXI_rready(smartconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_0_M01_AXI_WDATA),
        .M01_AXI_wready(smartconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_0_M01_AXI_WVALID),
        .S00_AXI_araddr(uart_axi_iface_M_AXI_ARADDR),
        .S00_AXI_arprot(uart_axi_iface_M_AXI_ARPROT),
        .S00_AXI_arready(uart_axi_iface_M_AXI_ARREADY),
        .S00_AXI_arvalid(uart_axi_iface_M_AXI_ARVALID),
        .S00_AXI_awaddr(uart_axi_iface_M_AXI_AWADDR),
        .S00_AXI_awprot(uart_axi_iface_M_AXI_AWPROT),
        .S00_AXI_awready(uart_axi_iface_M_AXI_AWREADY),
        .S00_AXI_awvalid(uart_axi_iface_M_AXI_AWVALID),
        .S00_AXI_bready(uart_axi_iface_M_AXI_BREADY),
        .S00_AXI_bresp(uart_axi_iface_M_AXI_BRESP),
        .S00_AXI_bvalid(uart_axi_iface_M_AXI_BVALID),
        .S00_AXI_rdata(uart_axi_iface_M_AXI_RDATA),
        .S00_AXI_rready(uart_axi_iface_M_AXI_RREADY),
        .S00_AXI_rresp(uart_axi_iface_M_AXI_RRESP),
        .S00_AXI_rvalid(uart_axi_iface_M_AXI_RVALID),
        .S00_AXI_wdata(uart_axi_iface_M_AXI_WDATA),
        .S00_AXI_wready(uart_axi_iface_M_AXI_WREADY),
        .S00_AXI_wstrb(uart_axi_iface_M_AXI_WSTRB),
        .S00_AXI_wvalid(uart_axi_iface_M_AXI_WVALID),
        .aclk(system_clock_clk_100mhz),
        .aresetn(system_reset_interconnect_aresetn));
  design_1_clk_wiz_0_0 system_clock
       (.clk_100mhz(system_clock_clk_100mhz),
        .clk_in1_n(clk_in1_n_0_1),
        .clk_in1_p(clk_in1_p_0_1));
  design_1_proc_sys_reset_0_0 system_reset
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_0_1),
        .interconnect_aresetn(system_reset_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(system_clock_clk_100mhz));
  design_1_uart_axi_iface_0_0 uart_axi_iface
       (.M_AXI_ACLK(system_clock_clk_100mhz),
        .M_AXI_ARADDR(uart_axi_iface_M_AXI_ARADDR),
        .M_AXI_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M_AXI_ARPROT(uart_axi_iface_M_AXI_ARPROT),
        .M_AXI_ARREADY(uart_axi_iface_M_AXI_ARREADY),
        .M_AXI_ARVALID(uart_axi_iface_M_AXI_ARVALID),
        .M_AXI_AWADDR(uart_axi_iface_M_AXI_AWADDR),
        .M_AXI_AWPROT(uart_axi_iface_M_AXI_AWPROT),
        .M_AXI_AWREADY(uart_axi_iface_M_AXI_AWREADY),
        .M_AXI_AWVALID(uart_axi_iface_M_AXI_AWVALID),
        .M_AXI_BREADY(uart_axi_iface_M_AXI_BREADY),
        .M_AXI_BRESP(uart_axi_iface_M_AXI_BRESP),
        .M_AXI_BVALID(uart_axi_iface_M_AXI_BVALID),
        .M_AXI_RDATA(uart_axi_iface_M_AXI_RDATA),
        .M_AXI_RREADY(uart_axi_iface_M_AXI_RREADY),
        .M_AXI_RRESP(uart_axi_iface_M_AXI_RRESP),
        .M_AXI_RVALID(uart_axi_iface_M_AXI_RVALID),
        .M_AXI_WDATA(uart_axi_iface_M_AXI_WDATA),
        .M_AXI_WREADY(uart_axi_iface_M_AXI_WREADY),
        .M_AXI_WSTRB(uart_axi_iface_M_AXI_WSTRB),
        .M_AXI_WVALID(uart_axi_iface_M_AXI_WVALID),
        .RECV_DATA(uart_axi_iface_UART_RX_FIFO_RD_DATA),
        .RECV_EMPTY_N(uart_axi_iface_UART_RX_FIFO_EMPTY_N),
        .RECV_RDEN(uart_axi_iface_UART_RX_FIFO_RD_EN),
        .XMIT_DATA(uart_axi_iface_UART_TX_FIFO_WR_DATA),
        .XMIT_FULL_N(uart_axi_iface_UART_TX_FIFO_FULL_N),
        .XMIT_WREN(uart_axi_iface_UART_TX_FIFO_WR_EN));
endmodule
