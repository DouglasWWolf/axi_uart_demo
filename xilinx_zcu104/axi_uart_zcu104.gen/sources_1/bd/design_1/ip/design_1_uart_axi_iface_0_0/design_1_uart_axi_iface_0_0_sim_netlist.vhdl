-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Fri Jun 10 18:14:46 2022
-- Host        : simtool5-2 running 64-bit Ubuntu 20.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /fpga/axi_uart_demo/xilinx_zcu104/axi_uart_zcu104.gen/sources_1/bd/design_1/ip/design_1_uart_axi_iface_0_0/design_1_uart_axi_iface_0_0_sim_netlist.vhdl
-- Design      : design_1_uart_axi_iface_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_axi_iface_0_0_uart_axi_iface is
  port (
    XMIT_DATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    XMIT_WREN : out STD_LOGIC;
    RECV_RDEN : out STD_LOGIC;
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rready_reg_0 : out STD_LOGIC;
    M_AXI_ARVALID : out STD_LOGIC;
    M_AXI_AWVALID : out STD_LOGIC;
    M_AXI_WVALID : out STD_LOGIC;
    m_axi_bready_reg_0 : out STD_LOGIC;
    RECV_DATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_ACLK : in STD_LOGIC;
    M_AXI_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_RVALID : in STD_LOGIC;
    M_AXI_ARESETN : in STD_LOGIC;
    M_AXI_ARREADY : in STD_LOGIC;
    RECV_EMPTY_N : in STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_BVALID : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_axi_iface_0_0_uart_axi_iface : entity is "uart_axi_iface";
end design_1_uart_axi_iface_0_0_uart_axi_iface;

architecture STRUCTURE of design_1_uart_axi_iface_0_0_uart_axi_iface is
  signal \FSM_onehot_write_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_write_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_write_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_write_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_write_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_sequential_inp_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_inp_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_inp_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_inp_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_inp_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_inp_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_inp_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \^m_axi_arvalid\ : STD_LOGIC;
  signal \^m_axi_awvalid\ : STD_LOGIC;
  signal \^m_axi_wvalid\ : STD_LOGIC;
  signal amci_raddr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal amci_raddr0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \amci_raddr[31]_i_1_n_0\ : STD_LOGIC;
  signal amci_rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal amci_rdata_1 : STD_LOGIC;
  signal amci_read : STD_LOGIC;
  signal amci_read_reg_n_0 : STD_LOGIC;
  signal amci_rresp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal amci_waddr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \amci_waddr[31]_i_1_n_0\ : STD_LOGIC;
  signal amci_wdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal amci_wdata0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal amci_wresp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \amci_wresp[1]_i_1_n_0\ : STD_LOGIC;
  signal amci_write : STD_LOGIC;
  signal amci_write_reg_n_0 : STD_LOGIC;
  signal in16 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \inp_buff[0][7]_i_1_n_0\ : STD_LOGIC;
  signal \inp_buff[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \inp_buff[2][7]_i_1_n_0\ : STD_LOGIC;
  signal \inp_buff[3][7]_i_1_n_0\ : STD_LOGIC;
  signal \inp_buff[4][7]_i_1_n_0\ : STD_LOGIC;
  signal \inp_buff[5][7]_i_1_n_0\ : STD_LOGIC;
  signal \inp_buff[6][7]_i_1_n_0\ : STD_LOGIC;
  signal \inp_buff[7][7]_i_1_n_0\ : STD_LOGIC;
  signal \inp_buff[8][7]_i_1_n_0\ : STD_LOGIC;
  signal \inp_buff_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \inp_buff_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \inp_buff_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \inp_buff_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \inp_buff_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \inp_buff_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \inp_buff_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \inp_buff_reg_n_0_[0][7]\ : STD_LOGIC;
  signal inp_count : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \inp_count[0]_i_2_n_0\ : STD_LOGIC;
  signal \inp_count[0]_i_3_n_0\ : STD_LOGIC;
  signal \inp_count[0]_i_4_n_0\ : STD_LOGIC;
  signal \inp_count[0]_i_5_n_0\ : STD_LOGIC;
  signal \inp_count[0]_i_6_n_0\ : STD_LOGIC;
  signal \inp_count[3]_i_10_n_0\ : STD_LOGIC;
  signal \inp_count[3]_i_11_n_0\ : STD_LOGIC;
  signal \inp_count[3]_i_12_n_0\ : STD_LOGIC;
  signal \inp_count[3]_i_13_n_0\ : STD_LOGIC;
  signal \inp_count[3]_i_14_n_0\ : STD_LOGIC;
  signal \inp_count[3]_i_15_n_0\ : STD_LOGIC;
  signal \inp_count[3]_i_16_n_0\ : STD_LOGIC;
  signal \inp_count[3]_i_17_n_0\ : STD_LOGIC;
  signal \inp_count[3]_i_18_n_0\ : STD_LOGIC;
  signal \inp_count[3]_i_19_n_0\ : STD_LOGIC;
  signal \inp_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \inp_count[3]_i_20_n_0\ : STD_LOGIC;
  signal \inp_count[3]_i_3_n_0\ : STD_LOGIC;
  signal \inp_count[3]_i_4_n_0\ : STD_LOGIC;
  signal \inp_count[3]_i_5_n_0\ : STD_LOGIC;
  signal \inp_count[3]_i_6_n_0\ : STD_LOGIC;
  signal \inp_count[3]_i_7_n_0\ : STD_LOGIC;
  signal \inp_count[3]_i_8_n_0\ : STD_LOGIC;
  signal \inp_count[3]_i_9_n_0\ : STD_LOGIC;
  signal \inp_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \inp_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \inp_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \inp_count_reg_n_0_[3]\ : STD_LOGIC;
  signal inp_last_idx : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \inp_last_idx[2]_i_1_n_0\ : STD_LOGIC;
  signal \inp_last_idx[3]_i_1_n_0\ : STD_LOGIC;
  signal \inp_last_idx[3]_i_3_n_0\ : STD_LOGIC;
  signal \inp_last_idx[3]_i_4_n_0\ : STD_LOGIC;
  signal \inp_last_idx[3]_i_5_n_0\ : STD_LOGIC;
  signal inp_last_idx_2 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal inp_read_delay : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \inp_read_delay[1]_i_1_n_0\ : STD_LOGIC;
  signal \inp_read_delay_reg_n_0_[0]\ : STD_LOGIC;
  signal \inp_read_delay_reg_n_0_[1]\ : STD_LOGIC;
  signal \inp_state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \inp_state__1\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^m_axi_araddr\ : STD_LOGIC;
  signal m_axi_arvalid_i_1_n_0 : STD_LOGIC;
  signal \m_axi_awaddr[31]_i_1_n_0\ : STD_LOGIC;
  signal m_axi_awvalid_i_1_n_0 : STD_LOGIC;
  signal m_axi_bready_i_1_n_0 : STD_LOGIC;
  signal \^m_axi_bready_reg_0\ : STD_LOGIC;
  signal m_axi_rready_i_1_n_0 : STD_LOGIC;
  signal \^m_axi_rready_reg_0\ : STD_LOGIC;
  signal m_axi_wvalid_i_1_n_0 : STD_LOGIC;
  signal read_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \read_data[31]_i_1_n_0\ : STD_LOGIC;
  signal read_state : STD_LOGIC;
  signal read_state_i_1_n_0 : STD_LOGIC;
  signal \^recv_rden\ : STD_LOGIC;
  signal reset_clk_counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reset_clk_counter0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__0_n_4\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__0_n_5\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__0_n_6\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__0_n_7\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__1_n_0\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__1_n_1\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__1_n_3\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__1_n_4\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__1_n_5\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__1_n_6\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__1_n_7\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__2_n_2\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__2_n_3\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__2_n_4\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__2_n_5\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__2_n_6\ : STD_LOGIC;
  signal \reset_clk_counter0_carry__2_n_7\ : STD_LOGIC;
  signal reset_clk_counter0_carry_i_1_n_0 : STD_LOGIC;
  signal reset_clk_counter0_carry_i_2_n_0 : STD_LOGIC;
  signal reset_clk_counter0_carry_i_3_n_0 : STD_LOGIC;
  signal reset_clk_counter0_carry_i_4_n_0 : STD_LOGIC;
  signal reset_clk_counter0_carry_i_5_n_0 : STD_LOGIC;
  signal reset_clk_counter0_carry_i_6_n_0 : STD_LOGIC;
  signal reset_clk_counter0_carry_i_7_n_0 : STD_LOGIC;
  signal reset_clk_counter0_carry_i_8_n_0 : STD_LOGIC;
  signal reset_clk_counter0_carry_n_0 : STD_LOGIC;
  signal reset_clk_counter0_carry_n_1 : STD_LOGIC;
  signal reset_clk_counter0_carry_n_2 : STD_LOGIC;
  signal reset_clk_counter0_carry_n_3 : STD_LOGIC;
  signal reset_clk_counter0_carry_n_4 : STD_LOGIC;
  signal reset_clk_counter0_carry_n_5 : STD_LOGIC;
  signal reset_clk_counter0_carry_n_6 : STD_LOGIC;
  signal reset_clk_counter0_carry_n_7 : STD_LOGIC;
  signal \reset_clk_counter[31]_i_1_n_0\ : STD_LOGIC;
  signal \reset_clk_counter[31]_i_3_n_0\ : STD_LOGIC;
  signal \reset_clk_counter[31]_i_4_n_0\ : STD_LOGIC;
  signal \reset_clk_counter[31]_i_5_n_0\ : STD_LOGIC;
  signal \reset_clk_counter[31]_i_6_n_0\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[16]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[17]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[18]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[19]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[20]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[21]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[22]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[23]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[24]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[25]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[26]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[27]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[28]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[29]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[30]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[31]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \reset_clk_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal reset_stretch : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \reset_stretch[0]_i_1_n_0\ : STD_LOGIC;
  signal \reset_stretch[1]_i_1_n_0\ : STD_LOGIC;
  signal \reset_stretch[2]_i_1_n_0\ : STD_LOGIC;
  signal \reset_stretch[3]_i_1_n_0\ : STD_LOGIC;
  signal \reset_stretch[4]_i_1_n_0\ : STD_LOGIC;
  signal \reset_stretch[5]_i_1_n_0\ : STD_LOGIC;
  signal \reset_stretch[6]_i_1_n_0\ : STD_LOGIC;
  signal \reset_stretch[7]_i_2_n_0\ : STD_LOGIC;
  signal \reset_stretch[7]_i_3_n_0\ : STD_LOGIC;
  signal \reset_stretch[7]_i_4_n_0\ : STD_LOGIC;
  signal \reset_stretch[7]_i_5_n_0\ : STD_LOGIC;
  signal reset_stretch_0 : STD_LOGIC;
  signal xmit_data0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \xmit_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \xmit_data[0]_i_3_n_0\ : STD_LOGIC;
  signal \xmit_data[1]_i_2_n_0\ : STD_LOGIC;
  signal \xmit_data[1]_i_3_n_0\ : STD_LOGIC;
  signal \xmit_data[1]_i_4_n_0\ : STD_LOGIC;
  signal \xmit_data[2]_i_2_n_0\ : STD_LOGIC;
  signal \xmit_data[3]_i_2_n_0\ : STD_LOGIC;
  signal \xmit_data[4]_i_2_n_0\ : STD_LOGIC;
  signal \xmit_data[5]_i_2_n_0\ : STD_LOGIC;
  signal \xmit_data[6]_i_2_n_0\ : STD_LOGIC;
  signal \xmit_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \xmit_data[7]_i_3_n_0\ : STD_LOGIC;
  signal \^xmit_wren\ : STD_LOGIC;
  signal xmit_wren_i_1_n_0 : STD_LOGIC;
  signal xmit_wren_i_3_n_0 : STD_LOGIC;
  signal xmit_wren_i_4_n_0 : STD_LOGIC;
  signal xmit_wren_i_5_n_0 : STD_LOGIC;
  signal \NLW_reset_clk_counter0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_reset_clk_counter0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_write_state[2]_i_2\ : label is "soft_lutpair12";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_write_state_reg[0]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_write_state_reg[1]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_write_state_reg[2]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:100,";
  attribute SOFT_HLUTNM of \FSM_sequential_inp_state[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_sequential_inp_state[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_sequential_inp_state[2]_i_2\ : label is "soft_lutpair15";
  attribute FSM_ENCODED_STATES of \FSM_sequential_inp_state_reg[0]\ : label is "S_NEW_COMMAND:000,S_WAIT_NEXT_CHAR:001,iSTATE:011,iSTATE0:100,iSTATE1:110,S_AXI_WRITE:101,S_AXI_READ:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_inp_state_reg[1]\ : label is "S_NEW_COMMAND:000,S_WAIT_NEXT_CHAR:001,iSTATE:011,iSTATE0:100,iSTATE1:110,S_AXI_WRITE:101,S_AXI_READ:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_inp_state_reg[2]\ : label is "S_NEW_COMMAND:000,S_WAIT_NEXT_CHAR:001,iSTATE:011,iSTATE0:100,iSTATE1:110,S_AXI_WRITE:101,S_AXI_READ:010";
  attribute SOFT_HLUTNM of amci_write_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \inp_count[0]_i_6\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \inp_count[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \inp_count[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \inp_count[3]_i_10\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \inp_count[3]_i_12\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \inp_count[3]_i_17\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \inp_count[3]_i_19\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \inp_count[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \inp_last_idx[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \inp_last_idx[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \inp_last_idx[3]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \inp_read_delay[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of m_axi_bready_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of m_axi_rready_i_1 : label is "soft_lutpair1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of recv_rden_reg : label is "xilinx.com:interface:acc_fifo_read:1.0 UART_RX_FIFO RD_EN";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of reset_clk_counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \reset_clk_counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \reset_clk_counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \reset_clk_counter0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \reset_clk_counter[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \reset_clk_counter[11]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \reset_clk_counter[13]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \reset_clk_counter[14]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \reset_clk_counter[16]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \reset_clk_counter[17]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \reset_clk_counter[18]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \reset_clk_counter[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \reset_clk_counter[20]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \reset_clk_counter[21]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \reset_clk_counter[22]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \reset_clk_counter[23]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \reset_clk_counter[24]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \reset_clk_counter[25]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \reset_clk_counter[26]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \reset_clk_counter[27]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \reset_clk_counter[28]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \reset_clk_counter[29]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \reset_clk_counter[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \reset_clk_counter[30]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \reset_clk_counter[31]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \reset_clk_counter[31]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \reset_clk_counter[31]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \reset_clk_counter[31]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \reset_clk_counter[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \reset_clk_counter[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \reset_clk_counter[5]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \reset_clk_counter[6]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \reset_clk_counter[8]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \reset_stretch[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \reset_stretch[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \reset_stretch[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \reset_stretch[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \reset_stretch[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \reset_stretch[7]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \reset_stretch[7]_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \xmit_data[1]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \xmit_data[2]_i_1\ : label is "soft_lutpair2";
  attribute X_INTERFACE_INFO of \xmit_data_reg[0]\ : label is "xilinx.com:interface:acc_fifo_write:1.0 UART_TX_FIFO WR_DATA";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of \xmit_data_reg[0]\ : label is "master";
  attribute X_INTERFACE_INFO of \xmit_data_reg[1]\ : label is "xilinx.com:interface:acc_fifo_write:1.0 UART_TX_FIFO WR_DATA";
  attribute X_INTERFACE_MODE of \xmit_data_reg[1]\ : label is "master";
  attribute X_INTERFACE_INFO of \xmit_data_reg[2]\ : label is "xilinx.com:interface:acc_fifo_write:1.0 UART_TX_FIFO WR_DATA";
  attribute X_INTERFACE_MODE of \xmit_data_reg[2]\ : label is "master";
  attribute X_INTERFACE_INFO of \xmit_data_reg[3]\ : label is "xilinx.com:interface:acc_fifo_write:1.0 UART_TX_FIFO WR_DATA";
  attribute X_INTERFACE_MODE of \xmit_data_reg[3]\ : label is "master";
  attribute X_INTERFACE_INFO of \xmit_data_reg[4]\ : label is "xilinx.com:interface:acc_fifo_write:1.0 UART_TX_FIFO WR_DATA";
  attribute X_INTERFACE_MODE of \xmit_data_reg[4]\ : label is "master";
  attribute X_INTERFACE_INFO of \xmit_data_reg[5]\ : label is "xilinx.com:interface:acc_fifo_write:1.0 UART_TX_FIFO WR_DATA";
  attribute X_INTERFACE_MODE of \xmit_data_reg[5]\ : label is "master";
  attribute X_INTERFACE_INFO of \xmit_data_reg[6]\ : label is "xilinx.com:interface:acc_fifo_write:1.0 UART_TX_FIFO WR_DATA";
  attribute X_INTERFACE_MODE of \xmit_data_reg[6]\ : label is "master";
  attribute X_INTERFACE_INFO of \xmit_data_reg[7]\ : label is "xilinx.com:interface:acc_fifo_write:1.0 UART_TX_FIFO WR_DATA";
  attribute X_INTERFACE_MODE of \xmit_data_reg[7]\ : label is "master";
  attribute SOFT_HLUTNM of xmit_wren_i_3 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of xmit_wren_i_4 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of xmit_wren_i_5 : label is "soft_lutpair1";
  attribute X_INTERFACE_INFO of xmit_wren_reg : label is "xilinx.com:interface:acc_fifo_write:1.0 UART_TX_FIFO WR_EN";
begin
  M_AXI_ARVALID <= \^m_axi_arvalid\;
  M_AXI_AWVALID <= \^m_axi_awvalid\;
  M_AXI_WVALID <= \^m_axi_wvalid\;
  m_axi_bready_reg_0 <= \^m_axi_bready_reg_0\;
  m_axi_rready_reg_0 <= \^m_axi_rready_reg_0\;
\FSM_onehot_write_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBB0B0000"
    )
        port map (
      I0 => M_AXI_AWREADY,
      I1 => \^m_axi_awvalid\,
      I2 => \^m_axi_wvalid\,
      I3 => M_AXI_WREADY,
      I4 => \FSM_onehot_write_state_reg_n_0_[1]\,
      I5 => \FSM_onehot_write_state[2]_i_2_n_0\,
      O => \FSM_onehot_write_state[2]_i_1_n_0\
    );
\FSM_onehot_write_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => \FSM_onehot_write_state_reg_n_0_[2]\,
      I1 => M_AXI_BVALID,
      I2 => \^m_axi_bready_reg_0\,
      I3 => amci_write_reg_n_0,
      I4 => \FSM_onehot_write_state_reg_n_0_[0]\,
      O => \FSM_onehot_write_state[2]_i_2_n_0\
    );
\FSM_onehot_write_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => M_AXI_ACLK,
      CE => \FSM_onehot_write_state[2]_i_1_n_0\,
      D => \FSM_onehot_write_state_reg_n_0_[2]\,
      Q => \FSM_onehot_write_state_reg_n_0_[0]\,
      S => xmit_wren_i_1_n_0
    );
\FSM_onehot_write_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => \FSM_onehot_write_state[2]_i_1_n_0\,
      D => \FSM_onehot_write_state_reg_n_0_[0]\,
      Q => \FSM_onehot_write_state_reg_n_0_[1]\,
      R => xmit_wren_i_1_n_0
    );
\FSM_onehot_write_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => \FSM_onehot_write_state[2]_i_1_n_0\,
      D => \FSM_onehot_write_state_reg_n_0_[1]\,
      Q => \FSM_onehot_write_state_reg_n_0_[2]\,
      R => xmit_wren_i_1_n_0
    );
\FSM_sequential_inp_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0705"
    )
        port map (
      I0 => \inp_state__0\(0),
      I1 => \inp_state__0\(1),
      I2 => \inp_state__0\(2),
      I3 => \FSM_sequential_inp_state[2]_i_7_n_0\,
      O => \inp_state__1\(0)
    );
\FSM_sequential_inp_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"05B0"
    )
        port map (
      I0 => \inp_state__0\(2),
      I1 => \FSM_sequential_inp_state[2]_i_7_n_0\,
      I2 => \inp_state__0\(0),
      I3 => \inp_state__0\(1),
      O => \inp_state__1\(1)
    );
\FSM_sequential_inp_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \FSM_sequential_inp_state[2]_i_3_n_0\,
      I1 => \FSM_sequential_inp_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_inp_state[2]_i_5_n_0\,
      I3 => \FSM_sequential_inp_state[2]_i_6_n_0\,
      O => \FSM_sequential_inp_state[2]_i_1_n_0\
    );
\FSM_sequential_inp_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4C48"
    )
        port map (
      I0 => \inp_state__0\(1),
      I1 => \inp_state__0\(0),
      I2 => \inp_state__0\(2),
      I3 => \FSM_sequential_inp_state[2]_i_7_n_0\,
      O => \inp_state__1\(2)
    );
\FSM_sequential_inp_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000001000"
    )
        port map (
      I0 => \inp_count_reg_n_0_[0]\,
      I1 => \inp_count_reg_n_0_[1]\,
      I2 => inp_last_idx(3),
      I3 => \inp_count_reg_n_0_[3]\,
      I4 => \inp_count_reg_n_0_[2]\,
      I5 => inp_last_idx(2),
      O => \FSM_sequential_inp_state[2]_i_3_n_0\
    );
\FSM_sequential_inp_state[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \inp_read_delay_reg_n_0_[0]\,
      I1 => \inp_read_delay_reg_n_0_[1]\,
      I2 => \inp_state__0\(1),
      I3 => RECV_EMPTY_N,
      I4 => \inp_state__0\(2),
      O => \FSM_sequential_inp_state[2]_i_4_n_0\
    );
\FSM_sequential_inp_state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAA020200000202"
    )
        port map (
      I0 => \inp_state__0\(1),
      I1 => amci_read_reg_n_0,
      I2 => read_state,
      I3 => \inp_state__0\(0),
      I4 => \inp_state__0\(2),
      I5 => xmit_wren_i_4_n_0,
      O => \FSM_sequential_inp_state[2]_i_5_n_0\
    );
\FSM_sequential_inp_state[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFF04000400"
    )
        port map (
      I0 => xmit_wren_i_3_n_0,
      I1 => inp_last_idx(2),
      I2 => inp_last_idx(3),
      I3 => \FSM_sequential_inp_state[2]_i_4_n_0\,
      I4 => \inp_state__0\(2),
      I5 => \xmit_data[1]_i_4_n_0\,
      O => \FSM_sequential_inp_state[2]_i_6_n_0\
    );
\FSM_sequential_inp_state[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \inp_buff_reg_n_0_[0][2]\,
      I1 => \inp_buff_reg_n_0_[0][3]\,
      I2 => \inp_buff_reg_n_0_[0][1]\,
      I3 => \inp_buff_reg_n_0_[0][0]\,
      I4 => \FSM_sequential_inp_state[2]_i_8_n_0\,
      O => \FSM_sequential_inp_state[2]_i_7_n_0\
    );
\FSM_sequential_inp_state[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \inp_buff_reg_n_0_[0][5]\,
      I1 => \inp_buff_reg_n_0_[0][4]\,
      I2 => \inp_buff_reg_n_0_[0][7]\,
      I3 => \inp_buff_reg_n_0_[0][6]\,
      O => \FSM_sequential_inp_state[2]_i_8_n_0\
    );
\FSM_sequential_inp_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \FSM_sequential_inp_state[2]_i_1_n_0\,
      D => \inp_state__1\(0),
      Q => \inp_state__0\(0),
      R => xmit_wren_i_1_n_0
    );
\FSM_sequential_inp_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \FSM_sequential_inp_state[2]_i_1_n_0\,
      D => \inp_state__1\(1),
      Q => \inp_state__0\(1),
      R => xmit_wren_i_1_n_0
    );
\FSM_sequential_inp_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \FSM_sequential_inp_state[2]_i_1_n_0\,
      D => \inp_state__1\(2),
      Q => \inp_state__0\(2),
      R => xmit_wren_i_1_n_0
    );
\amci_raddr[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => M_AXI_ARESETN,
      I1 => read_state,
      I2 => \inp_state__0\(2),
      I3 => amci_read_reg_n_0,
      I4 => \inp_state__0\(0),
      I5 => \inp_state__0\(1),
      O => \amci_raddr[31]_i_1_n_0\
    );
\amci_raddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(0),
      Q => amci_raddr(0),
      R => '0'
    );
\amci_raddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(10),
      Q => amci_raddr(10),
      R => '0'
    );
\amci_raddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(11),
      Q => amci_raddr(11),
      R => '0'
    );
\amci_raddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(12),
      Q => amci_raddr(12),
      R => '0'
    );
\amci_raddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(13),
      Q => amci_raddr(13),
      R => '0'
    );
\amci_raddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(14),
      Q => amci_raddr(14),
      R => '0'
    );
\amci_raddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(15),
      Q => amci_raddr(15),
      R => '0'
    );
\amci_raddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(16),
      Q => amci_raddr(16),
      R => '0'
    );
\amci_raddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(17),
      Q => amci_raddr(17),
      R => '0'
    );
\amci_raddr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(18),
      Q => amci_raddr(18),
      R => '0'
    );
\amci_raddr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(19),
      Q => amci_raddr(19),
      R => '0'
    );
\amci_raddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(1),
      Q => amci_raddr(1),
      R => '0'
    );
\amci_raddr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(20),
      Q => amci_raddr(20),
      R => '0'
    );
\amci_raddr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(21),
      Q => amci_raddr(21),
      R => '0'
    );
\amci_raddr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(22),
      Q => amci_raddr(22),
      R => '0'
    );
\amci_raddr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(23),
      Q => amci_raddr(23),
      R => '0'
    );
\amci_raddr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(24),
      Q => amci_raddr(24),
      R => '0'
    );
\amci_raddr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(25),
      Q => amci_raddr(25),
      R => '0'
    );
\amci_raddr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(26),
      Q => amci_raddr(26),
      R => '0'
    );
\amci_raddr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(27),
      Q => amci_raddr(27),
      R => '0'
    );
\amci_raddr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(28),
      Q => amci_raddr(28),
      R => '0'
    );
\amci_raddr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(29),
      Q => amci_raddr(29),
      R => '0'
    );
\amci_raddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(2),
      Q => amci_raddr(2),
      R => '0'
    );
\amci_raddr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(30),
      Q => amci_raddr(30),
      R => '0'
    );
\amci_raddr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(31),
      Q => amci_raddr(31),
      R => '0'
    );
\amci_raddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(3),
      Q => amci_raddr(3),
      R => '0'
    );
\amci_raddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(4),
      Q => amci_raddr(4),
      R => '0'
    );
\amci_raddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(5),
      Q => amci_raddr(5),
      R => '0'
    );
\amci_raddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(6),
      Q => amci_raddr(6),
      R => '0'
    );
\amci_raddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(7),
      Q => amci_raddr(7),
      R => '0'
    );
\amci_raddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(8),
      Q => amci_raddr(8),
      R => '0'
    );
\amci_raddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_raddr[31]_i_1_n_0\,
      D => amci_raddr0(9),
      Q => amci_raddr(9),
      R => '0'
    );
\amci_rdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => M_AXI_ARESETN,
      I1 => read_state,
      I2 => \^m_axi_rready_reg_0\,
      I3 => M_AXI_RVALID,
      O => amci_rdata_1
    );
\amci_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(0),
      Q => amci_rdata(0),
      R => '0'
    );
\amci_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(10),
      Q => amci_rdata(10),
      R => '0'
    );
\amci_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(11),
      Q => amci_rdata(11),
      R => '0'
    );
\amci_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(12),
      Q => amci_rdata(12),
      R => '0'
    );
\amci_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(13),
      Q => amci_rdata(13),
      R => '0'
    );
\amci_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(14),
      Q => amci_rdata(14),
      R => '0'
    );
\amci_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(15),
      Q => amci_rdata(15),
      R => '0'
    );
\amci_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(16),
      Q => amci_rdata(16),
      R => '0'
    );
\amci_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(17),
      Q => amci_rdata(17),
      R => '0'
    );
\amci_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(18),
      Q => amci_rdata(18),
      R => '0'
    );
\amci_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(19),
      Q => amci_rdata(19),
      R => '0'
    );
\amci_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(1),
      Q => amci_rdata(1),
      R => '0'
    );
\amci_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(20),
      Q => amci_rdata(20),
      R => '0'
    );
\amci_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(21),
      Q => amci_rdata(21),
      R => '0'
    );
\amci_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(22),
      Q => amci_rdata(22),
      R => '0'
    );
\amci_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(23),
      Q => amci_rdata(23),
      R => '0'
    );
\amci_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(24),
      Q => amci_rdata(24),
      R => '0'
    );
\amci_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(25),
      Q => amci_rdata(25),
      R => '0'
    );
\amci_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(26),
      Q => amci_rdata(26),
      R => '0'
    );
\amci_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(27),
      Q => amci_rdata(27),
      R => '0'
    );
\amci_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(28),
      Q => amci_rdata(28),
      R => '0'
    );
\amci_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(29),
      Q => amci_rdata(29),
      R => '0'
    );
\amci_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(2),
      Q => amci_rdata(2),
      R => '0'
    );
\amci_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(30),
      Q => amci_rdata(30),
      R => '0'
    );
\amci_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(31),
      Q => amci_rdata(31),
      R => '0'
    );
\amci_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(3),
      Q => amci_rdata(3),
      R => '0'
    );
\amci_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(4),
      Q => amci_rdata(4),
      R => '0'
    );
\amci_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(5),
      Q => amci_rdata(5),
      R => '0'
    );
\amci_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(6),
      Q => amci_rdata(6),
      R => '0'
    );
\amci_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(7),
      Q => amci_rdata(7),
      R => '0'
    );
\amci_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(8),
      Q => amci_rdata(8),
      R => '0'
    );
\amci_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RDATA(9),
      Q => amci_rdata(9),
      R => '0'
    );
amci_read_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \inp_state__0\(2),
      I1 => read_state,
      I2 => amci_read_reg_n_0,
      I3 => \inp_state__0\(0),
      I4 => \inp_state__0\(1),
      O => amci_read
    );
amci_read_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => amci_read,
      Q => amci_read_reg_n_0,
      R => xmit_wren_i_1_n_0
    );
\amci_rresp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RRESP(0),
      Q => amci_rresp(0),
      R => '0'
    );
\amci_rresp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => amci_rdata_1,
      D => M_AXI_RRESP(1),
      Q => amci_rresp(1),
      R => '0'
    );
\amci_waddr[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \inp_state__0\(0),
      I1 => \inp_state__0\(2),
      I2 => M_AXI_ARESETN,
      I3 => \inp_state__0\(1),
      I4 => amci_write_reg_n_0,
      I5 => \FSM_onehot_write_state_reg_n_0_[0]\,
      O => \amci_waddr[31]_i_1_n_0\
    );
\amci_waddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(0),
      Q => amci_waddr(0),
      R => '0'
    );
\amci_waddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(10),
      Q => amci_waddr(10),
      R => '0'
    );
\amci_waddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(11),
      Q => amci_waddr(11),
      R => '0'
    );
\amci_waddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(12),
      Q => amci_waddr(12),
      R => '0'
    );
\amci_waddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(13),
      Q => amci_waddr(13),
      R => '0'
    );
\amci_waddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(14),
      Q => amci_waddr(14),
      R => '0'
    );
\amci_waddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(15),
      Q => amci_waddr(15),
      R => '0'
    );
\amci_waddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(16),
      Q => amci_waddr(16),
      R => '0'
    );
\amci_waddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(17),
      Q => amci_waddr(17),
      R => '0'
    );
\amci_waddr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(18),
      Q => amci_waddr(18),
      R => '0'
    );
\amci_waddr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(19),
      Q => amci_waddr(19),
      R => '0'
    );
\amci_waddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(1),
      Q => amci_waddr(1),
      R => '0'
    );
\amci_waddr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(20),
      Q => amci_waddr(20),
      R => '0'
    );
\amci_waddr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(21),
      Q => amci_waddr(21),
      R => '0'
    );
\amci_waddr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(22),
      Q => amci_waddr(22),
      R => '0'
    );
\amci_waddr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(23),
      Q => amci_waddr(23),
      R => '0'
    );
\amci_waddr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(24),
      Q => amci_waddr(24),
      R => '0'
    );
\amci_waddr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(25),
      Q => amci_waddr(25),
      R => '0'
    );
\amci_waddr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(26),
      Q => amci_waddr(26),
      R => '0'
    );
\amci_waddr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(27),
      Q => amci_waddr(27),
      R => '0'
    );
\amci_waddr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(28),
      Q => amci_waddr(28),
      R => '0'
    );
\amci_waddr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(29),
      Q => amci_waddr(29),
      R => '0'
    );
\amci_waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(2),
      Q => amci_waddr(2),
      R => '0'
    );
\amci_waddr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(30),
      Q => amci_waddr(30),
      R => '0'
    );
\amci_waddr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(31),
      Q => amci_waddr(31),
      R => '0'
    );
\amci_waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(3),
      Q => amci_waddr(3),
      R => '0'
    );
\amci_waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(4),
      Q => amci_waddr(4),
      R => '0'
    );
\amci_waddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(5),
      Q => amci_waddr(5),
      R => '0'
    );
\amci_waddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(6),
      Q => amci_waddr(6),
      R => '0'
    );
\amci_waddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(7),
      Q => amci_waddr(7),
      R => '0'
    );
\amci_waddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(8),
      Q => amci_waddr(8),
      R => '0'
    );
\amci_waddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_raddr0(9),
      Q => amci_waddr(9),
      R => '0'
    );
\amci_wdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(0),
      Q => amci_wdata(0),
      R => '0'
    );
\amci_wdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(10),
      Q => amci_wdata(10),
      R => '0'
    );
\amci_wdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(11),
      Q => amci_wdata(11),
      R => '0'
    );
\amci_wdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(12),
      Q => amci_wdata(12),
      R => '0'
    );
\amci_wdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(13),
      Q => amci_wdata(13),
      R => '0'
    );
\amci_wdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(14),
      Q => amci_wdata(14),
      R => '0'
    );
\amci_wdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(15),
      Q => amci_wdata(15),
      R => '0'
    );
\amci_wdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(16),
      Q => amci_wdata(16),
      R => '0'
    );
\amci_wdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(17),
      Q => amci_wdata(17),
      R => '0'
    );
\amci_wdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(18),
      Q => amci_wdata(18),
      R => '0'
    );
\amci_wdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(19),
      Q => amci_wdata(19),
      R => '0'
    );
\amci_wdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(1),
      Q => amci_wdata(1),
      R => '0'
    );
\amci_wdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(20),
      Q => amci_wdata(20),
      R => '0'
    );
\amci_wdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(21),
      Q => amci_wdata(21),
      R => '0'
    );
\amci_wdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(22),
      Q => amci_wdata(22),
      R => '0'
    );
\amci_wdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(23),
      Q => amci_wdata(23),
      R => '0'
    );
\amci_wdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(24),
      Q => amci_wdata(24),
      R => '0'
    );
\amci_wdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(25),
      Q => amci_wdata(25),
      R => '0'
    );
\amci_wdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(26),
      Q => amci_wdata(26),
      R => '0'
    );
\amci_wdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(27),
      Q => amci_wdata(27),
      R => '0'
    );
\amci_wdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(28),
      Q => amci_wdata(28),
      R => '0'
    );
\amci_wdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(29),
      Q => amci_wdata(29),
      R => '0'
    );
\amci_wdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(2),
      Q => amci_wdata(2),
      R => '0'
    );
\amci_wdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(30),
      Q => amci_wdata(30),
      R => '0'
    );
\amci_wdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(31),
      Q => amci_wdata(31),
      R => '0'
    );
\amci_wdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(3),
      Q => amci_wdata(3),
      R => '0'
    );
\amci_wdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(4),
      Q => amci_wdata(4),
      R => '0'
    );
\amci_wdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(5),
      Q => amci_wdata(5),
      R => '0'
    );
\amci_wdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(6),
      Q => amci_wdata(6),
      R => '0'
    );
\amci_wdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(7),
      Q => amci_wdata(7),
      R => '0'
    );
\amci_wdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(8),
      Q => amci_wdata(8),
      R => '0'
    );
\amci_wdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_waddr[31]_i_1_n_0\,
      D => amci_wdata0(9),
      Q => amci_wdata(9),
      R => '0'
    );
\amci_wresp[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => M_AXI_BVALID,
      I1 => \FSM_onehot_write_state_reg_n_0_[2]\,
      I2 => M_AXI_ARESETN,
      I3 => \^m_axi_bready_reg_0\,
      O => \amci_wresp[1]_i_1_n_0\
    );
\amci_wresp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_wresp[1]_i_1_n_0\,
      D => M_AXI_BRESP(0),
      Q => amci_wresp(0),
      R => '0'
    );
\amci_wresp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \amci_wresp[1]_i_1_n_0\,
      D => M_AXI_BRESP(1),
      Q => amci_wresp(1),
      R => '0'
    );
amci_write_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \inp_state__0\(1),
      I1 => \inp_state__0\(0),
      I2 => \inp_state__0\(2),
      I3 => amci_write_reg_n_0,
      I4 => \FSM_onehot_write_state_reg_n_0_[0]\,
      O => amci_write
    );
amci_write_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => amci_write,
      Q => amci_write_reg_n_0,
      R => xmit_wren_i_1_n_0
    );
\inp_buff[0][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \inp_count_reg_n_0_[3]\,
      I1 => M_AXI_ARESETN,
      I2 => \^recv_rden\,
      I3 => \inp_count_reg_n_0_[2]\,
      I4 => \inp_count_reg_n_0_[1]\,
      I5 => \inp_count_reg_n_0_[0]\,
      O => \inp_buff[0][7]_i_1_n_0\
    );
\inp_buff[1][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => \inp_count_reg_n_0_[1]\,
      I1 => \inp_count_reg_n_0_[0]\,
      I2 => \inp_count_reg_n_0_[3]\,
      I3 => M_AXI_ARESETN,
      I4 => \^recv_rden\,
      I5 => \inp_count_reg_n_0_[2]\,
      O => \inp_buff[1][7]_i_1_n_0\
    );
\inp_buff[2][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => \inp_count_reg_n_0_[3]\,
      I1 => M_AXI_ARESETN,
      I2 => \^recv_rden\,
      I3 => \inp_count_reg_n_0_[2]\,
      I4 => \inp_count_reg_n_0_[0]\,
      I5 => \inp_count_reg_n_0_[1]\,
      O => \inp_buff[2][7]_i_1_n_0\
    );
\inp_buff[3][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => \inp_count_reg_n_0_[3]\,
      I1 => M_AXI_ARESETN,
      I2 => \^recv_rden\,
      I3 => \inp_count_reg_n_0_[2]\,
      I4 => \inp_count_reg_n_0_[1]\,
      I5 => \inp_count_reg_n_0_[0]\,
      O => \inp_buff[3][7]_i_1_n_0\
    );
\inp_buff[4][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => M_AXI_ARESETN,
      I1 => \^recv_rden\,
      I2 => \inp_count_reg_n_0_[0]\,
      I3 => \inp_count_reg_n_0_[1]\,
      I4 => \inp_count_reg_n_0_[3]\,
      I5 => \inp_count_reg_n_0_[2]\,
      O => \inp_buff[4][7]_i_1_n_0\
    );
\inp_buff[5][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => \inp_count_reg_n_0_[3]\,
      I1 => \inp_count_reg_n_0_[2]\,
      I2 => \inp_count_reg_n_0_[0]\,
      I3 => \inp_count_reg_n_0_[1]\,
      I4 => M_AXI_ARESETN,
      I5 => \^recv_rden\,
      O => \inp_buff[5][7]_i_1_n_0\
    );
\inp_buff[6][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => \inp_count_reg_n_0_[3]\,
      I1 => \inp_count_reg_n_0_[2]\,
      I2 => \inp_count_reg_n_0_[1]\,
      I3 => \inp_count_reg_n_0_[0]\,
      I4 => M_AXI_ARESETN,
      I5 => \^recv_rden\,
      O => \inp_buff[6][7]_i_1_n_0\
    );
\inp_buff[7][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \inp_count_reg_n_0_[3]\,
      I1 => \inp_count_reg_n_0_[2]\,
      I2 => \inp_count_reg_n_0_[0]\,
      I3 => \inp_count_reg_n_0_[1]\,
      I4 => M_AXI_ARESETN,
      I5 => \^recv_rden\,
      O => \inp_buff[7][7]_i_1_n_0\
    );
\inp_buff[8][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \inp_count_reg_n_0_[0]\,
      I1 => \inp_count_reg_n_0_[1]\,
      I2 => \inp_count_reg_n_0_[3]\,
      I3 => \inp_count_reg_n_0_[2]\,
      I4 => \^recv_rden\,
      I5 => M_AXI_ARESETN,
      O => \inp_buff[8][7]_i_1_n_0\
    );
\inp_buff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[0][7]_i_1_n_0\,
      D => RECV_DATA(0),
      Q => \inp_buff_reg_n_0_[0][0]\,
      R => '0'
    );
\inp_buff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[0][7]_i_1_n_0\,
      D => RECV_DATA(1),
      Q => \inp_buff_reg_n_0_[0][1]\,
      R => '0'
    );
\inp_buff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[0][7]_i_1_n_0\,
      D => RECV_DATA(2),
      Q => \inp_buff_reg_n_0_[0][2]\,
      R => '0'
    );
\inp_buff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[0][7]_i_1_n_0\,
      D => RECV_DATA(3),
      Q => \inp_buff_reg_n_0_[0][3]\,
      R => '0'
    );
\inp_buff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[0][7]_i_1_n_0\,
      D => RECV_DATA(4),
      Q => \inp_buff_reg_n_0_[0][4]\,
      R => '0'
    );
\inp_buff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[0][7]_i_1_n_0\,
      D => RECV_DATA(5),
      Q => \inp_buff_reg_n_0_[0][5]\,
      R => '0'
    );
\inp_buff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[0][7]_i_1_n_0\,
      D => RECV_DATA(6),
      Q => \inp_buff_reg_n_0_[0][6]\,
      R => '0'
    );
\inp_buff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[0][7]_i_1_n_0\,
      D => RECV_DATA(7),
      Q => \inp_buff_reg_n_0_[0][7]\,
      R => '0'
    );
\inp_buff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[1][7]_i_1_n_0\,
      D => RECV_DATA(0),
      Q => amci_raddr0(24),
      R => '0'
    );
\inp_buff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[1][7]_i_1_n_0\,
      D => RECV_DATA(1),
      Q => amci_raddr0(25),
      R => '0'
    );
\inp_buff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[1][7]_i_1_n_0\,
      D => RECV_DATA(2),
      Q => amci_raddr0(26),
      R => '0'
    );
\inp_buff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[1][7]_i_1_n_0\,
      D => RECV_DATA(3),
      Q => amci_raddr0(27),
      R => '0'
    );
\inp_buff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[1][7]_i_1_n_0\,
      D => RECV_DATA(4),
      Q => amci_raddr0(28),
      R => '0'
    );
\inp_buff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[1][7]_i_1_n_0\,
      D => RECV_DATA(5),
      Q => amci_raddr0(29),
      R => '0'
    );
\inp_buff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[1][7]_i_1_n_0\,
      D => RECV_DATA(6),
      Q => amci_raddr0(30),
      R => '0'
    );
\inp_buff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[1][7]_i_1_n_0\,
      D => RECV_DATA(7),
      Q => amci_raddr0(31),
      R => '0'
    );
\inp_buff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[2][7]_i_1_n_0\,
      D => RECV_DATA(0),
      Q => amci_raddr0(16),
      R => '0'
    );
\inp_buff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[2][7]_i_1_n_0\,
      D => RECV_DATA(1),
      Q => amci_raddr0(17),
      R => '0'
    );
\inp_buff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[2][7]_i_1_n_0\,
      D => RECV_DATA(2),
      Q => amci_raddr0(18),
      R => '0'
    );
\inp_buff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[2][7]_i_1_n_0\,
      D => RECV_DATA(3),
      Q => amci_raddr0(19),
      R => '0'
    );
\inp_buff_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[2][7]_i_1_n_0\,
      D => RECV_DATA(4),
      Q => amci_raddr0(20),
      R => '0'
    );
\inp_buff_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[2][7]_i_1_n_0\,
      D => RECV_DATA(5),
      Q => amci_raddr0(21),
      R => '0'
    );
\inp_buff_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[2][7]_i_1_n_0\,
      D => RECV_DATA(6),
      Q => amci_raddr0(22),
      R => '0'
    );
\inp_buff_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[2][7]_i_1_n_0\,
      D => RECV_DATA(7),
      Q => amci_raddr0(23),
      R => '0'
    );
\inp_buff_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[3][7]_i_1_n_0\,
      D => RECV_DATA(0),
      Q => amci_raddr0(8),
      R => '0'
    );
\inp_buff_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[3][7]_i_1_n_0\,
      D => RECV_DATA(1),
      Q => amci_raddr0(9),
      R => '0'
    );
\inp_buff_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[3][7]_i_1_n_0\,
      D => RECV_DATA(2),
      Q => amci_raddr0(10),
      R => '0'
    );
\inp_buff_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[3][7]_i_1_n_0\,
      D => RECV_DATA(3),
      Q => amci_raddr0(11),
      R => '0'
    );
\inp_buff_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[3][7]_i_1_n_0\,
      D => RECV_DATA(4),
      Q => amci_raddr0(12),
      R => '0'
    );
\inp_buff_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[3][7]_i_1_n_0\,
      D => RECV_DATA(5),
      Q => amci_raddr0(13),
      R => '0'
    );
\inp_buff_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[3][7]_i_1_n_0\,
      D => RECV_DATA(6),
      Q => amci_raddr0(14),
      R => '0'
    );
\inp_buff_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[3][7]_i_1_n_0\,
      D => RECV_DATA(7),
      Q => amci_raddr0(15),
      R => '0'
    );
\inp_buff_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[4][7]_i_1_n_0\,
      D => RECV_DATA(0),
      Q => amci_raddr0(0),
      R => '0'
    );
\inp_buff_reg[4][1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[4][7]_i_1_n_0\,
      D => RECV_DATA(1),
      Q => amci_raddr0(1),
      R => '0'
    );
\inp_buff_reg[4][2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[4][7]_i_1_n_0\,
      D => RECV_DATA(2),
      Q => amci_raddr0(2),
      R => '0'
    );
\inp_buff_reg[4][3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[4][7]_i_1_n_0\,
      D => RECV_DATA(3),
      Q => amci_raddr0(3),
      R => '0'
    );
\inp_buff_reg[4][4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[4][7]_i_1_n_0\,
      D => RECV_DATA(4),
      Q => amci_raddr0(4),
      R => '0'
    );
\inp_buff_reg[4][5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[4][7]_i_1_n_0\,
      D => RECV_DATA(5),
      Q => amci_raddr0(5),
      R => '0'
    );
\inp_buff_reg[4][6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[4][7]_i_1_n_0\,
      D => RECV_DATA(6),
      Q => amci_raddr0(6),
      R => '0'
    );
\inp_buff_reg[4][7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[4][7]_i_1_n_0\,
      D => RECV_DATA(7),
      Q => amci_raddr0(7),
      R => '0'
    );
\inp_buff_reg[5][0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[5][7]_i_1_n_0\,
      D => RECV_DATA(0),
      Q => amci_wdata0(24),
      R => '0'
    );
\inp_buff_reg[5][1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[5][7]_i_1_n_0\,
      D => RECV_DATA(1),
      Q => amci_wdata0(25),
      R => '0'
    );
\inp_buff_reg[5][2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[5][7]_i_1_n_0\,
      D => RECV_DATA(2),
      Q => amci_wdata0(26),
      R => '0'
    );
\inp_buff_reg[5][3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[5][7]_i_1_n_0\,
      D => RECV_DATA(3),
      Q => amci_wdata0(27),
      R => '0'
    );
\inp_buff_reg[5][4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[5][7]_i_1_n_0\,
      D => RECV_DATA(4),
      Q => amci_wdata0(28),
      R => '0'
    );
\inp_buff_reg[5][5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[5][7]_i_1_n_0\,
      D => RECV_DATA(5),
      Q => amci_wdata0(29),
      R => '0'
    );
\inp_buff_reg[5][6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[5][7]_i_1_n_0\,
      D => RECV_DATA(6),
      Q => amci_wdata0(30),
      R => '0'
    );
\inp_buff_reg[5][7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[5][7]_i_1_n_0\,
      D => RECV_DATA(7),
      Q => amci_wdata0(31),
      R => '0'
    );
\inp_buff_reg[6][0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[6][7]_i_1_n_0\,
      D => RECV_DATA(0),
      Q => amci_wdata0(16),
      R => '0'
    );
\inp_buff_reg[6][1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[6][7]_i_1_n_0\,
      D => RECV_DATA(1),
      Q => amci_wdata0(17),
      R => '0'
    );
\inp_buff_reg[6][2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[6][7]_i_1_n_0\,
      D => RECV_DATA(2),
      Q => amci_wdata0(18),
      R => '0'
    );
\inp_buff_reg[6][3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[6][7]_i_1_n_0\,
      D => RECV_DATA(3),
      Q => amci_wdata0(19),
      R => '0'
    );
\inp_buff_reg[6][4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[6][7]_i_1_n_0\,
      D => RECV_DATA(4),
      Q => amci_wdata0(20),
      R => '0'
    );
\inp_buff_reg[6][5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[6][7]_i_1_n_0\,
      D => RECV_DATA(5),
      Q => amci_wdata0(21),
      R => '0'
    );
\inp_buff_reg[6][6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[6][7]_i_1_n_0\,
      D => RECV_DATA(6),
      Q => amci_wdata0(22),
      R => '0'
    );
\inp_buff_reg[6][7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[6][7]_i_1_n_0\,
      D => RECV_DATA(7),
      Q => amci_wdata0(23),
      R => '0'
    );
\inp_buff_reg[7][0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[7][7]_i_1_n_0\,
      D => RECV_DATA(0),
      Q => amci_wdata0(8),
      R => '0'
    );
\inp_buff_reg[7][1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[7][7]_i_1_n_0\,
      D => RECV_DATA(1),
      Q => amci_wdata0(9),
      R => '0'
    );
\inp_buff_reg[7][2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[7][7]_i_1_n_0\,
      D => RECV_DATA(2),
      Q => amci_wdata0(10),
      R => '0'
    );
\inp_buff_reg[7][3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[7][7]_i_1_n_0\,
      D => RECV_DATA(3),
      Q => amci_wdata0(11),
      R => '0'
    );
\inp_buff_reg[7][4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[7][7]_i_1_n_0\,
      D => RECV_DATA(4),
      Q => amci_wdata0(12),
      R => '0'
    );
\inp_buff_reg[7][5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[7][7]_i_1_n_0\,
      D => RECV_DATA(5),
      Q => amci_wdata0(13),
      R => '0'
    );
\inp_buff_reg[7][6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[7][7]_i_1_n_0\,
      D => RECV_DATA(6),
      Q => amci_wdata0(14),
      R => '0'
    );
\inp_buff_reg[7][7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[7][7]_i_1_n_0\,
      D => RECV_DATA(7),
      Q => amci_wdata0(15),
      R => '0'
    );
\inp_buff_reg[8][0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[8][7]_i_1_n_0\,
      D => RECV_DATA(0),
      Q => amci_wdata0(0),
      R => '0'
    );
\inp_buff_reg[8][1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[8][7]_i_1_n_0\,
      D => RECV_DATA(1),
      Q => amci_wdata0(1),
      R => '0'
    );
\inp_buff_reg[8][2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[8][7]_i_1_n_0\,
      D => RECV_DATA(2),
      Q => amci_wdata0(2),
      R => '0'
    );
\inp_buff_reg[8][3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[8][7]_i_1_n_0\,
      D => RECV_DATA(3),
      Q => amci_wdata0(3),
      R => '0'
    );
\inp_buff_reg[8][4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[8][7]_i_1_n_0\,
      D => RECV_DATA(4),
      Q => amci_wdata0(4),
      R => '0'
    );
\inp_buff_reg[8][5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[8][7]_i_1_n_0\,
      D => RECV_DATA(5),
      Q => amci_wdata0(5),
      R => '0'
    );
\inp_buff_reg[8][6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[8][7]_i_1_n_0\,
      D => RECV_DATA(6),
      Q => amci_wdata0(6),
      R => '0'
    );
\inp_buff_reg[8][7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_buff[8][7]_i_1_n_0\,
      D => RECV_DATA(7),
      Q => amci_wdata0(7),
      R => '0'
    );
\inp_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040FFFF4040F040"
    )
        port map (
      I0 => \inp_count[0]_i_2_n_0\,
      I1 => \inp_count[0]_i_3_n_0\,
      I2 => \inp_count[0]_i_4_n_0\,
      I3 => \inp_count_reg_n_0_[1]\,
      I4 => \inp_count_reg_n_0_[0]\,
      I5 => \inp_count[0]_i_5_n_0\,
      O => inp_count(0)
    );
\inp_count[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => RECV_DATA(6),
      I1 => RECV_DATA(4),
      I2 => RECV_DATA(3),
      O => \inp_count[0]_i_2_n_0\
    );
\inp_count[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004700"
    )
        port map (
      I0 => \inp_count_reg_n_0_[2]\,
      I1 => inp_last_idx(2),
      I2 => \inp_count_reg_n_0_[3]\,
      I3 => \inp_count[0]_i_6_n_0\,
      I4 => \inp_count_reg_n_0_[0]\,
      I5 => \inp_last_idx[3]_i_4_n_0\,
      O => \inp_count[0]_i_3_n_0\
    );
\inp_count[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \inp_state__0\(0),
      I1 => \inp_read_delay_reg_n_0_[0]\,
      I2 => \inp_read_delay_reg_n_0_[1]\,
      I3 => \inp_state__0\(1),
      I4 => RECV_EMPTY_N,
      O => \inp_count[0]_i_4_n_0\
    );
\inp_count[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \inp_count[0]_i_4_n_0\,
      I1 => \inp_count[3]_i_20_n_0\,
      I2 => \inp_state__0\(1),
      I3 => \inp_state__0\(2),
      O => \inp_count[0]_i_5_n_0\
    );
\inp_count[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => RECV_DATA(0),
      I1 => RECV_DATA(1),
      O => \inp_count[0]_i_6_n_0\
    );
\inp_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \inp_count[3]_i_8_n_0\,
      I1 => \inp_count_reg_n_0_[1]\,
      I2 => \inp_count_reg_n_0_[0]\,
      O => inp_count(1)
    );
\inp_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \inp_count[3]_i_8_n_0\,
      I1 => \inp_count_reg_n_0_[2]\,
      I2 => \inp_count_reg_n_0_[0]\,
      I3 => \inp_count_reg_n_0_[1]\,
      O => inp_count(2)
    );
\inp_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFABAA"
    )
        port map (
      I0 => \read_data[31]_i_1_n_0\,
      I1 => \inp_count[3]_i_3_n_0\,
      I2 => \inp_count[3]_i_4_n_0\,
      I3 => \inp_count[3]_i_5_n_0\,
      I4 => \inp_count[3]_i_6_n_0\,
      I5 => \inp_count[3]_i_7_n_0\,
      O => \inp_count[3]_i_1_n_0\
    );
\inp_count[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[3]\,
      I1 => \reset_clk_counter_reg_n_0_[2]\,
      I2 => \reset_clk_counter_reg_n_0_[5]\,
      I3 => \reset_clk_counter_reg_n_0_[4]\,
      O => \inp_count[3]_i_10_n_0\
    );
\inp_count[3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[15]\,
      I1 => \reset_clk_counter_reg_n_0_[14]\,
      I2 => \reset_clk_counter_reg_n_0_[17]\,
      I3 => \reset_clk_counter_reg_n_0_[16]\,
      O => \inp_count[3]_i_11_n_0\
    );
\inp_count[3]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[11]\,
      I1 => \reset_clk_counter_reg_n_0_[10]\,
      I2 => \reset_clk_counter_reg_n_0_[13]\,
      I3 => \reset_clk_counter_reg_n_0_[12]\,
      O => \inp_count[3]_i_12_n_0\
    );
\inp_count[3]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[23]\,
      I1 => \reset_clk_counter_reg_n_0_[22]\,
      I2 => \reset_clk_counter_reg_n_0_[25]\,
      I3 => \reset_clk_counter_reg_n_0_[24]\,
      O => \inp_count[3]_i_13_n_0\
    );
\inp_count[3]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[19]\,
      I1 => \reset_clk_counter_reg_n_0_[18]\,
      I2 => \reset_clk_counter_reg_n_0_[21]\,
      I3 => \reset_clk_counter_reg_n_0_[20]\,
      O => \inp_count[3]_i_14_n_0\
    );
\inp_count[3]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[27]\,
      I1 => \reset_clk_counter_reg_n_0_[26]\,
      I2 => \reset_clk_counter_reg_n_0_[29]\,
      I3 => \reset_clk_counter_reg_n_0_[28]\,
      O => \inp_count[3]_i_15_n_0\
    );
\inp_count[3]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => reset_stretch(4),
      I1 => reset_stretch(5),
      I2 => reset_stretch(7),
      I3 => reset_stretch(6),
      O => \inp_count[3]_i_16_n_0\
    );
\inp_count[3]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => reset_stretch(1),
      I1 => reset_stretch(0),
      I2 => reset_stretch(3),
      I3 => reset_stretch(2),
      O => \inp_count[3]_i_17_n_0\
    );
\inp_count[3]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF6FC4"
    )
        port map (
      I0 => inp_last_idx(2),
      I1 => \inp_count_reg_n_0_[2]\,
      I2 => inp_last_idx(3),
      I3 => \inp_count_reg_n_0_[3]\,
      I4 => \inp_count_reg_n_0_[1]\,
      I5 => \inp_count_reg_n_0_[0]\,
      O => \inp_count[3]_i_18_n_0\
    );
\inp_count[3]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001D1D00"
    )
        port map (
      I0 => \inp_count_reg_n_0_[3]\,
      I1 => inp_last_idx(2),
      I2 => \inp_count_reg_n_0_[2]\,
      I3 => RECV_DATA(1),
      I4 => RECV_DATA(0),
      O => \inp_count[3]_i_19_n_0\
    );
\inp_count[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \inp_count[3]_i_8_n_0\,
      I1 => \inp_count_reg_n_0_[3]\,
      I2 => \inp_count_reg_n_0_[1]\,
      I3 => \inp_count_reg_n_0_[0]\,
      I4 => \inp_count_reg_n_0_[2]\,
      O => inp_count(3)
    );
\inp_count[3]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AF2"
    )
        port map (
      I0 => \inp_count_reg_n_0_[3]\,
      I1 => inp_last_idx(3),
      I2 => \inp_count_reg_n_0_[2]\,
      I3 => inp_last_idx(2),
      O => \inp_count[3]_i_20_n_0\
    );
\inp_count[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \inp_count[3]_i_9_n_0\,
      I1 => \inp_count[3]_i_10_n_0\,
      I2 => \inp_count[3]_i_11_n_0\,
      I3 => \inp_count[3]_i_12_n_0\,
      O => \inp_count[3]_i_3_n_0\
    );
\inp_count[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \inp_count[3]_i_13_n_0\,
      I1 => \inp_count[3]_i_14_n_0\,
      I2 => \reset_clk_counter_reg_n_0_[31]\,
      I3 => \reset_clk_counter_reg_n_0_[30]\,
      I4 => \reset_clk_counter_reg_n_0_[1]\,
      I5 => \inp_count[3]_i_15_n_0\,
      O => \inp_count[3]_i_4_n_0\
    );
\inp_count[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \inp_state__0\(1),
      I1 => \inp_state__0\(2),
      I2 => \reset_clk_counter_reg_n_0_[0]\,
      I3 => M_AXI_ARESETN,
      I4 => \inp_count[3]_i_16_n_0\,
      I5 => \inp_count[3]_i_17_n_0\,
      O => \inp_count[3]_i_5_n_0\
    );
\inp_count[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808080888080"
    )
        port map (
      I0 => M_AXI_ARESETN,
      I1 => \FSM_sequential_inp_state[2]_i_4_n_0\,
      I2 => \inp_count[3]_i_18_n_0\,
      I3 => \inp_last_idx[3]_i_4_n_0\,
      I4 => \inp_count[3]_i_19_n_0\,
      I5 => \inp_count[0]_i_2_n_0\,
      O => \inp_count[3]_i_6_n_0\
    );
\inp_count[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888880888"
    )
        port map (
      I0 => M_AXI_ARESETN,
      I1 => \xmit_data[1]_i_4_n_0\,
      I2 => \inp_state__0\(2),
      I3 => \inp_count_reg_n_0_[2]\,
      I4 => \inp_count_reg_n_0_[3]\,
      I5 => \inp_last_idx[3]_i_3_n_0\,
      O => \inp_count[3]_i_7_n_0\
    );
\inp_count[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEFE00F000F0"
    )
        port map (
      I0 => \inp_count_reg_n_0_[0]\,
      I1 => \inp_count_reg_n_0_[1]\,
      I2 => \inp_state__0\(2),
      I3 => \inp_state__0\(1),
      I4 => \inp_count[3]_i_20_n_0\,
      I5 => \inp_count[0]_i_4_n_0\,
      O => \inp_count[3]_i_8_n_0\
    );
\inp_count[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[7]\,
      I1 => \reset_clk_counter_reg_n_0_[6]\,
      I2 => \reset_clk_counter_reg_n_0_[9]\,
      I3 => \reset_clk_counter_reg_n_0_[8]\,
      O => \inp_count[3]_i_9_n_0\
    );
\inp_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_count[3]_i_1_n_0\,
      D => inp_count(0),
      Q => \inp_count_reg_n_0_[0]\,
      R => '0'
    );
\inp_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_count[3]_i_1_n_0\,
      D => inp_count(1),
      Q => \inp_count_reg_n_0_[1]\,
      R => '0'
    );
\inp_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_count[3]_i_1_n_0\,
      D => inp_count(2),
      Q => \inp_count_reg_n_0_[2]\,
      R => '0'
    );
\inp_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_count[3]_i_1_n_0\,
      D => inp_count(3),
      Q => \inp_count_reg_n_0_[3]\,
      R => '0'
    );
\inp_last_idx[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => RECV_DATA(1),
      I1 => RECV_DATA(3),
      I2 => RECV_DATA(4),
      I3 => RECV_DATA(6),
      I4 => RECV_DATA(0),
      O => \inp_last_idx[2]_i_1_n_0\
    );
\inp_last_idx[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000011000000000"
    )
        port map (
      I0 => \inp_count[0]_i_2_n_0\,
      I1 => \inp_last_idx[3]_i_3_n_0\,
      I2 => RECV_DATA(0),
      I3 => RECV_DATA(1),
      I4 => \inp_last_idx[3]_i_4_n_0\,
      I5 => \inp_last_idx[3]_i_5_n_0\,
      O => \inp_last_idx[3]_i_1_n_0\
    );
\inp_last_idx[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => RECV_DATA(0),
      I1 => RECV_DATA(6),
      I2 => RECV_DATA(4),
      I3 => RECV_DATA(3),
      I4 => RECV_DATA(1),
      O => inp_last_idx_2(3)
    );
\inp_last_idx[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \inp_count_reg_n_0_[0]\,
      I1 => \inp_count_reg_n_0_[1]\,
      O => \inp_last_idx[3]_i_3_n_0\
    );
\inp_last_idx[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => RECV_DATA(7),
      I1 => RECV_DATA(5),
      I2 => RECV_DATA(2),
      O => \inp_last_idx[3]_i_4_n_0\
    );
\inp_last_idx[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \inp_count_reg_n_0_[2]\,
      I1 => \^recv_rden\,
      I2 => M_AXI_ARESETN,
      I3 => \inp_count_reg_n_0_[3]\,
      O => \inp_last_idx[3]_i_5_n_0\
    );
\inp_last_idx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_last_idx[3]_i_1_n_0\,
      D => \inp_last_idx[2]_i_1_n_0\,
      Q => inp_last_idx(2),
      R => '0'
    );
\inp_last_idx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_last_idx[3]_i_1_n_0\,
      D => inp_last_idx_2(3),
      Q => inp_last_idx(3),
      R => '0'
    );
\inp_read_delay[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"007F"
    )
        port map (
      I0 => \inp_state__0\(1),
      I1 => \inp_state__0\(0),
      I2 => \inp_state__0\(2),
      I3 => \inp_read_delay_reg_n_0_[0]\,
      O => inp_read_delay(0)
    );
\inp_read_delay[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0EEEEEEFEEEEEE"
    )
        port map (
      I0 => \inp_read_delay_reg_n_0_[0]\,
      I1 => \inp_read_delay_reg_n_0_[1]\,
      I2 => \inp_state__0\(1),
      I3 => RECV_EMPTY_N,
      I4 => \inp_state__0\(0),
      I5 => \inp_state__0\(2),
      O => \inp_read_delay[1]_i_1_n_0\
    );
\inp_read_delay[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FF0000000077DF"
    )
        port map (
      I0 => \inp_state__0\(0),
      I1 => \inp_state__0\(2),
      I2 => RECV_EMPTY_N,
      I3 => \inp_state__0\(1),
      I4 => \inp_read_delay_reg_n_0_[1]\,
      I5 => \inp_read_delay_reg_n_0_[0]\,
      O => inp_read_delay(1)
    );
\inp_read_delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_read_delay[1]_i_1_n_0\,
      D => inp_read_delay(0),
      Q => \inp_read_delay_reg_n_0_[0]\,
      R => xmit_wren_i_1_n_0
    );
\inp_read_delay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \inp_read_delay[1]_i_1_n_0\,
      D => inp_read_delay(1),
      Q => \inp_read_delay_reg_n_0_[1]\,
      R => xmit_wren_i_1_n_0
    );
\m_axi_araddr[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => read_state,
      I1 => M_AXI_ARESETN,
      I2 => amci_read_reg_n_0,
      O => \^m_axi_araddr\
    );
\m_axi_araddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(0),
      Q => M_AXI_ARADDR(0),
      R => '0'
    );
\m_axi_araddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(10),
      Q => M_AXI_ARADDR(10),
      R => '0'
    );
\m_axi_araddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(11),
      Q => M_AXI_ARADDR(11),
      R => '0'
    );
\m_axi_araddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(12),
      Q => M_AXI_ARADDR(12),
      R => '0'
    );
\m_axi_araddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(13),
      Q => M_AXI_ARADDR(13),
      R => '0'
    );
\m_axi_araddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(14),
      Q => M_AXI_ARADDR(14),
      R => '0'
    );
\m_axi_araddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(15),
      Q => M_AXI_ARADDR(15),
      R => '0'
    );
\m_axi_araddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(16),
      Q => M_AXI_ARADDR(16),
      R => '0'
    );
\m_axi_araddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(17),
      Q => M_AXI_ARADDR(17),
      R => '0'
    );
\m_axi_araddr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(18),
      Q => M_AXI_ARADDR(18),
      R => '0'
    );
\m_axi_araddr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(19),
      Q => M_AXI_ARADDR(19),
      R => '0'
    );
\m_axi_araddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(1),
      Q => M_AXI_ARADDR(1),
      R => '0'
    );
\m_axi_araddr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(20),
      Q => M_AXI_ARADDR(20),
      R => '0'
    );
\m_axi_araddr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(21),
      Q => M_AXI_ARADDR(21),
      R => '0'
    );
\m_axi_araddr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(22),
      Q => M_AXI_ARADDR(22),
      R => '0'
    );
\m_axi_araddr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(23),
      Q => M_AXI_ARADDR(23),
      R => '0'
    );
\m_axi_araddr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(24),
      Q => M_AXI_ARADDR(24),
      R => '0'
    );
\m_axi_araddr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(25),
      Q => M_AXI_ARADDR(25),
      R => '0'
    );
\m_axi_araddr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(26),
      Q => M_AXI_ARADDR(26),
      R => '0'
    );
\m_axi_araddr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(27),
      Q => M_AXI_ARADDR(27),
      R => '0'
    );
\m_axi_araddr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(28),
      Q => M_AXI_ARADDR(28),
      R => '0'
    );
\m_axi_araddr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(29),
      Q => M_AXI_ARADDR(29),
      R => '0'
    );
\m_axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(2),
      Q => M_AXI_ARADDR(2),
      R => '0'
    );
\m_axi_araddr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(30),
      Q => M_AXI_ARADDR(30),
      R => '0'
    );
\m_axi_araddr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(31),
      Q => M_AXI_ARADDR(31),
      R => '0'
    );
\m_axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(3),
      Q => M_AXI_ARADDR(3),
      R => '0'
    );
\m_axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(4),
      Q => M_AXI_ARADDR(4),
      R => '0'
    );
\m_axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(5),
      Q => M_AXI_ARADDR(5),
      R => '0'
    );
\m_axi_araddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(6),
      Q => M_AXI_ARADDR(6),
      R => '0'
    );
\m_axi_araddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(7),
      Q => M_AXI_ARADDR(7),
      R => '0'
    );
\m_axi_araddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(8),
      Q => M_AXI_ARADDR(8),
      R => '0'
    );
\m_axi_araddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \^m_axi_araddr\,
      D => amci_raddr(9),
      Q => M_AXI_ARADDR(9),
      R => '0'
    );
m_axi_arvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F400000"
    )
        port map (
      I0 => M_AXI_ARREADY,
      I1 => \^m_axi_arvalid\,
      I2 => read_state,
      I3 => amci_read_reg_n_0,
      I4 => M_AXI_ARESETN,
      O => m_axi_arvalid_i_1_n_0
    );
m_axi_arvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => m_axi_arvalid_i_1_n_0,
      Q => \^m_axi_arvalid\,
      R => '0'
    );
\m_axi_awaddr[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => amci_write_reg_n_0,
      I1 => \FSM_onehot_write_state_reg_n_0_[0]\,
      I2 => M_AXI_ARESETN,
      O => \m_axi_awaddr[31]_i_1_n_0\
    );
\m_axi_awaddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(0),
      Q => M_AXI_AWADDR(0),
      R => '0'
    );
\m_axi_awaddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(10),
      Q => M_AXI_AWADDR(10),
      R => '0'
    );
\m_axi_awaddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(11),
      Q => M_AXI_AWADDR(11),
      R => '0'
    );
\m_axi_awaddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(12),
      Q => M_AXI_AWADDR(12),
      R => '0'
    );
\m_axi_awaddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(13),
      Q => M_AXI_AWADDR(13),
      R => '0'
    );
\m_axi_awaddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(14),
      Q => M_AXI_AWADDR(14),
      R => '0'
    );
\m_axi_awaddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(15),
      Q => M_AXI_AWADDR(15),
      R => '0'
    );
\m_axi_awaddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(16),
      Q => M_AXI_AWADDR(16),
      R => '0'
    );
\m_axi_awaddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(17),
      Q => M_AXI_AWADDR(17),
      R => '0'
    );
\m_axi_awaddr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(18),
      Q => M_AXI_AWADDR(18),
      R => '0'
    );
\m_axi_awaddr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(19),
      Q => M_AXI_AWADDR(19),
      R => '0'
    );
\m_axi_awaddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(1),
      Q => M_AXI_AWADDR(1),
      R => '0'
    );
\m_axi_awaddr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(20),
      Q => M_AXI_AWADDR(20),
      R => '0'
    );
\m_axi_awaddr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(21),
      Q => M_AXI_AWADDR(21),
      R => '0'
    );
\m_axi_awaddr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(22),
      Q => M_AXI_AWADDR(22),
      R => '0'
    );
\m_axi_awaddr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(23),
      Q => M_AXI_AWADDR(23),
      R => '0'
    );
\m_axi_awaddr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(24),
      Q => M_AXI_AWADDR(24),
      R => '0'
    );
\m_axi_awaddr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(25),
      Q => M_AXI_AWADDR(25),
      R => '0'
    );
\m_axi_awaddr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(26),
      Q => M_AXI_AWADDR(26),
      R => '0'
    );
\m_axi_awaddr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(27),
      Q => M_AXI_AWADDR(27),
      R => '0'
    );
\m_axi_awaddr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(28),
      Q => M_AXI_AWADDR(28),
      R => '0'
    );
\m_axi_awaddr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(29),
      Q => M_AXI_AWADDR(29),
      R => '0'
    );
\m_axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(2),
      Q => M_AXI_AWADDR(2),
      R => '0'
    );
\m_axi_awaddr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(30),
      Q => M_AXI_AWADDR(30),
      R => '0'
    );
\m_axi_awaddr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(31),
      Q => M_AXI_AWADDR(31),
      R => '0'
    );
\m_axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(3),
      Q => M_AXI_AWADDR(3),
      R => '0'
    );
\m_axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(4),
      Q => M_AXI_AWADDR(4),
      R => '0'
    );
\m_axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(5),
      Q => M_AXI_AWADDR(5),
      R => '0'
    );
\m_axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(6),
      Q => M_AXI_AWADDR(6),
      R => '0'
    );
\m_axi_awaddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(7),
      Q => M_AXI_AWADDR(7),
      R => '0'
    );
\m_axi_awaddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(8),
      Q => M_AXI_AWADDR(8),
      R => '0'
    );
\m_axi_awaddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_waddr(9),
      Q => M_AXI_AWADDR(9),
      R => '0'
    );
m_axi_awvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4C4C4C"
    )
        port map (
      I0 => \FSM_onehot_write_state_reg_n_0_[1]\,
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_AWREADY,
      I3 => amci_write_reg_n_0,
      I4 => \FSM_onehot_write_state_reg_n_0_[0]\,
      O => m_axi_awvalid_i_1_n_0
    );
m_axi_awvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => m_axi_awvalid_i_1_n_0,
      Q => \^m_axi_awvalid\,
      R => xmit_wren_i_1_n_0
    );
m_axi_bready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF707070"
    )
        port map (
      I0 => \FSM_onehot_write_state_reg_n_0_[2]\,
      I1 => M_AXI_BVALID,
      I2 => \^m_axi_bready_reg_0\,
      I3 => amci_write_reg_n_0,
      I4 => \FSM_onehot_write_state_reg_n_0_[0]\,
      O => m_axi_bready_i_1_n_0
    );
m_axi_bready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => m_axi_bready_i_1_n_0,
      Q => \^m_axi_bready_reg_0\,
      R => xmit_wren_i_1_n_0
    );
m_axi_rready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44F00000"
    )
        port map (
      I0 => M_AXI_RVALID,
      I1 => \^m_axi_rready_reg_0\,
      I2 => amci_read_reg_n_0,
      I3 => read_state,
      I4 => M_AXI_ARESETN,
      O => m_axi_rready_i_1_n_0
    );
m_axi_rready_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => m_axi_rready_i_1_n_0,
      Q => \^m_axi_rready_reg_0\,
      R => '0'
    );
\m_axi_wdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(0),
      Q => M_AXI_WDATA(0),
      R => '0'
    );
\m_axi_wdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(10),
      Q => M_AXI_WDATA(10),
      R => '0'
    );
\m_axi_wdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(11),
      Q => M_AXI_WDATA(11),
      R => '0'
    );
\m_axi_wdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(12),
      Q => M_AXI_WDATA(12),
      R => '0'
    );
\m_axi_wdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(13),
      Q => M_AXI_WDATA(13),
      R => '0'
    );
\m_axi_wdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(14),
      Q => M_AXI_WDATA(14),
      R => '0'
    );
\m_axi_wdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(15),
      Q => M_AXI_WDATA(15),
      R => '0'
    );
\m_axi_wdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(16),
      Q => M_AXI_WDATA(16),
      R => '0'
    );
\m_axi_wdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(17),
      Q => M_AXI_WDATA(17),
      R => '0'
    );
\m_axi_wdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(18),
      Q => M_AXI_WDATA(18),
      R => '0'
    );
\m_axi_wdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(19),
      Q => M_AXI_WDATA(19),
      R => '0'
    );
\m_axi_wdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(1),
      Q => M_AXI_WDATA(1),
      R => '0'
    );
\m_axi_wdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(20),
      Q => M_AXI_WDATA(20),
      R => '0'
    );
\m_axi_wdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(21),
      Q => M_AXI_WDATA(21),
      R => '0'
    );
\m_axi_wdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(22),
      Q => M_AXI_WDATA(22),
      R => '0'
    );
\m_axi_wdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(23),
      Q => M_AXI_WDATA(23),
      R => '0'
    );
\m_axi_wdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(24),
      Q => M_AXI_WDATA(24),
      R => '0'
    );
\m_axi_wdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(25),
      Q => M_AXI_WDATA(25),
      R => '0'
    );
\m_axi_wdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(26),
      Q => M_AXI_WDATA(26),
      R => '0'
    );
\m_axi_wdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(27),
      Q => M_AXI_WDATA(27),
      R => '0'
    );
\m_axi_wdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(28),
      Q => M_AXI_WDATA(28),
      R => '0'
    );
\m_axi_wdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(29),
      Q => M_AXI_WDATA(29),
      R => '0'
    );
\m_axi_wdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(2),
      Q => M_AXI_WDATA(2),
      R => '0'
    );
\m_axi_wdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(30),
      Q => M_AXI_WDATA(30),
      R => '0'
    );
\m_axi_wdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(31),
      Q => M_AXI_WDATA(31),
      R => '0'
    );
\m_axi_wdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(3),
      Q => M_AXI_WDATA(3),
      R => '0'
    );
\m_axi_wdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(4),
      Q => M_AXI_WDATA(4),
      R => '0'
    );
\m_axi_wdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(5),
      Q => M_AXI_WDATA(5),
      R => '0'
    );
\m_axi_wdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(6),
      Q => M_AXI_WDATA(6),
      R => '0'
    );
\m_axi_wdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(7),
      Q => M_AXI_WDATA(7),
      R => '0'
    );
\m_axi_wdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(8),
      Q => M_AXI_WDATA(8),
      R => '0'
    );
\m_axi_wdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => amci_wdata(9),
      Q => M_AXI_WDATA(9),
      R => '0'
    );
m_axi_wvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4C4C4C"
    )
        port map (
      I0 => \FSM_onehot_write_state_reg_n_0_[1]\,
      I1 => \^m_axi_wvalid\,
      I2 => M_AXI_WREADY,
      I3 => amci_write_reg_n_0,
      I4 => \FSM_onehot_write_state_reg_n_0_[0]\,
      O => m_axi_wvalid_i_1_n_0
    );
m_axi_wvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => m_axi_wvalid_i_1_n_0,
      Q => \^m_axi_wvalid\,
      R => xmit_wren_i_1_n_0
    );
\read_data[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \inp_state__0\(0),
      I1 => \inp_state__0\(2),
      I2 => \inp_state__0\(1),
      I3 => amci_read_reg_n_0,
      I4 => read_state,
      I5 => M_AXI_ARESETN,
      O => \read_data[31]_i_1_n_0\
    );
\read_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(0),
      Q => read_data(0),
      R => '0'
    );
\read_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(10),
      Q => read_data(10),
      R => '0'
    );
\read_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(11),
      Q => read_data(11),
      R => '0'
    );
\read_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(12),
      Q => read_data(12),
      R => '0'
    );
\read_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(13),
      Q => read_data(13),
      R => '0'
    );
\read_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(14),
      Q => read_data(14),
      R => '0'
    );
\read_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(15),
      Q => read_data(15),
      R => '0'
    );
\read_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(16),
      Q => read_data(16),
      R => '0'
    );
\read_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(17),
      Q => read_data(17),
      R => '0'
    );
\read_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(18),
      Q => read_data(18),
      R => '0'
    );
\read_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(19),
      Q => read_data(19),
      R => '0'
    );
\read_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(1),
      Q => read_data(1),
      R => '0'
    );
\read_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(20),
      Q => read_data(20),
      R => '0'
    );
\read_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(21),
      Q => read_data(21),
      R => '0'
    );
\read_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(22),
      Q => read_data(22),
      R => '0'
    );
\read_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(23),
      Q => read_data(23),
      R => '0'
    );
\read_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(24),
      Q => read_data(24),
      R => '0'
    );
\read_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(25),
      Q => read_data(25),
      R => '0'
    );
\read_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(26),
      Q => read_data(26),
      R => '0'
    );
\read_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(27),
      Q => read_data(27),
      R => '0'
    );
\read_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(28),
      Q => read_data(28),
      R => '0'
    );
\read_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(29),
      Q => read_data(29),
      R => '0'
    );
\read_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(2),
      Q => read_data(2),
      R => '0'
    );
\read_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(30),
      Q => read_data(30),
      R => '0'
    );
\read_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(31),
      Q => read_data(31),
      R => '0'
    );
\read_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(3),
      Q => read_data(3),
      R => '0'
    );
\read_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(4),
      Q => read_data(4),
      R => '0'
    );
\read_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(5),
      Q => read_data(5),
      R => '0'
    );
\read_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(6),
      Q => read_data(6),
      R => '0'
    );
\read_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(7),
      Q => read_data(7),
      R => '0'
    );
\read_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(8),
      Q => read_data(8),
      R => '0'
    );
\read_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \read_data[31]_i_1_n_0\,
      D => amci_rdata(9),
      Q => read_data(9),
      R => '0'
    );
read_state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3FAA"
    )
        port map (
      I0 => amci_read_reg_n_0,
      I1 => \^m_axi_rready_reg_0\,
      I2 => M_AXI_RVALID,
      I3 => read_state,
      O => read_state_i_1_n_0
    );
read_state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => read_state_i_1_n_0,
      Q => read_state,
      R => xmit_wren_i_1_n_0
    );
recv_rden_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => RECV_EMPTY_N,
      I1 => \inp_state__0\(1),
      I2 => \inp_read_delay_reg_n_0_[1]\,
      I3 => \inp_read_delay_reg_n_0_[0]\,
      I4 => \inp_state__0\(0),
      I5 => \inp_state__0\(2),
      O => \^recv_rden\
    );
recv_rden_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \^recv_rden\,
      Q => RECV_RDEN,
      R => xmit_wren_i_1_n_0
    );
reset_clk_counter0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => \reset_clk_counter_reg_n_0_[0]\,
      CI_TOP => '0',
      CO(7) => reset_clk_counter0_carry_n_0,
      CO(6) => reset_clk_counter0_carry_n_1,
      CO(5) => reset_clk_counter0_carry_n_2,
      CO(4) => reset_clk_counter0_carry_n_3,
      CO(3) => reset_clk_counter0_carry_n_4,
      CO(2) => reset_clk_counter0_carry_n_5,
      CO(1) => reset_clk_counter0_carry_n_6,
      CO(0) => reset_clk_counter0_carry_n_7,
      DI(7) => \reset_clk_counter_reg_n_0_[8]\,
      DI(6) => \reset_clk_counter_reg_n_0_[7]\,
      DI(5) => \reset_clk_counter_reg_n_0_[6]\,
      DI(4) => \reset_clk_counter_reg_n_0_[5]\,
      DI(3) => \reset_clk_counter_reg_n_0_[4]\,
      DI(2) => \reset_clk_counter_reg_n_0_[3]\,
      DI(1) => \reset_clk_counter_reg_n_0_[2]\,
      DI(0) => \reset_clk_counter_reg_n_0_[1]\,
      O(7 downto 0) => in16(8 downto 1),
      S(7) => reset_clk_counter0_carry_i_1_n_0,
      S(6) => reset_clk_counter0_carry_i_2_n_0,
      S(5) => reset_clk_counter0_carry_i_3_n_0,
      S(4) => reset_clk_counter0_carry_i_4_n_0,
      S(3) => reset_clk_counter0_carry_i_5_n_0,
      S(2) => reset_clk_counter0_carry_i_6_n_0,
      S(1) => reset_clk_counter0_carry_i_7_n_0,
      S(0) => reset_clk_counter0_carry_i_8_n_0
    );
\reset_clk_counter0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => reset_clk_counter0_carry_n_0,
      CI_TOP => '0',
      CO(7) => \reset_clk_counter0_carry__0_n_0\,
      CO(6) => \reset_clk_counter0_carry__0_n_1\,
      CO(5) => \reset_clk_counter0_carry__0_n_2\,
      CO(4) => \reset_clk_counter0_carry__0_n_3\,
      CO(3) => \reset_clk_counter0_carry__0_n_4\,
      CO(2) => \reset_clk_counter0_carry__0_n_5\,
      CO(1) => \reset_clk_counter0_carry__0_n_6\,
      CO(0) => \reset_clk_counter0_carry__0_n_7\,
      DI(7) => \reset_clk_counter_reg_n_0_[16]\,
      DI(6) => \reset_clk_counter_reg_n_0_[15]\,
      DI(5) => \reset_clk_counter_reg_n_0_[14]\,
      DI(4) => \reset_clk_counter_reg_n_0_[13]\,
      DI(3) => \reset_clk_counter_reg_n_0_[12]\,
      DI(2) => \reset_clk_counter_reg_n_0_[11]\,
      DI(1) => \reset_clk_counter_reg_n_0_[10]\,
      DI(0) => \reset_clk_counter_reg_n_0_[9]\,
      O(7 downto 0) => in16(16 downto 9),
      S(7) => \reset_clk_counter0_carry__0_i_1_n_0\,
      S(6) => \reset_clk_counter0_carry__0_i_2_n_0\,
      S(5) => \reset_clk_counter0_carry__0_i_3_n_0\,
      S(4) => \reset_clk_counter0_carry__0_i_4_n_0\,
      S(3) => \reset_clk_counter0_carry__0_i_5_n_0\,
      S(2) => \reset_clk_counter0_carry__0_i_6_n_0\,
      S(1) => \reset_clk_counter0_carry__0_i_7_n_0\,
      S(0) => \reset_clk_counter0_carry__0_i_8_n_0\
    );
\reset_clk_counter0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[16]\,
      O => \reset_clk_counter0_carry__0_i_1_n_0\
    );
\reset_clk_counter0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[15]\,
      O => \reset_clk_counter0_carry__0_i_2_n_0\
    );
\reset_clk_counter0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[14]\,
      O => \reset_clk_counter0_carry__0_i_3_n_0\
    );
\reset_clk_counter0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[13]\,
      O => \reset_clk_counter0_carry__0_i_4_n_0\
    );
\reset_clk_counter0_carry__0_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[12]\,
      O => \reset_clk_counter0_carry__0_i_5_n_0\
    );
\reset_clk_counter0_carry__0_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[11]\,
      O => \reset_clk_counter0_carry__0_i_6_n_0\
    );
\reset_clk_counter0_carry__0_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[10]\,
      O => \reset_clk_counter0_carry__0_i_7_n_0\
    );
\reset_clk_counter0_carry__0_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[9]\,
      O => \reset_clk_counter0_carry__0_i_8_n_0\
    );
\reset_clk_counter0_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \reset_clk_counter0_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \reset_clk_counter0_carry__1_n_0\,
      CO(6) => \reset_clk_counter0_carry__1_n_1\,
      CO(5) => \reset_clk_counter0_carry__1_n_2\,
      CO(4) => \reset_clk_counter0_carry__1_n_3\,
      CO(3) => \reset_clk_counter0_carry__1_n_4\,
      CO(2) => \reset_clk_counter0_carry__1_n_5\,
      CO(1) => \reset_clk_counter0_carry__1_n_6\,
      CO(0) => \reset_clk_counter0_carry__1_n_7\,
      DI(7) => \reset_clk_counter_reg_n_0_[24]\,
      DI(6) => \reset_clk_counter_reg_n_0_[23]\,
      DI(5) => \reset_clk_counter_reg_n_0_[22]\,
      DI(4) => \reset_clk_counter_reg_n_0_[21]\,
      DI(3) => \reset_clk_counter_reg_n_0_[20]\,
      DI(2) => \reset_clk_counter_reg_n_0_[19]\,
      DI(1) => \reset_clk_counter_reg_n_0_[18]\,
      DI(0) => \reset_clk_counter_reg_n_0_[17]\,
      O(7 downto 0) => in16(24 downto 17),
      S(7) => \reset_clk_counter0_carry__1_i_1_n_0\,
      S(6) => \reset_clk_counter0_carry__1_i_2_n_0\,
      S(5) => \reset_clk_counter0_carry__1_i_3_n_0\,
      S(4) => \reset_clk_counter0_carry__1_i_4_n_0\,
      S(3) => \reset_clk_counter0_carry__1_i_5_n_0\,
      S(2) => \reset_clk_counter0_carry__1_i_6_n_0\,
      S(1) => \reset_clk_counter0_carry__1_i_7_n_0\,
      S(0) => \reset_clk_counter0_carry__1_i_8_n_0\
    );
\reset_clk_counter0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[24]\,
      O => \reset_clk_counter0_carry__1_i_1_n_0\
    );
\reset_clk_counter0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[23]\,
      O => \reset_clk_counter0_carry__1_i_2_n_0\
    );
\reset_clk_counter0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[22]\,
      O => \reset_clk_counter0_carry__1_i_3_n_0\
    );
\reset_clk_counter0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[21]\,
      O => \reset_clk_counter0_carry__1_i_4_n_0\
    );
\reset_clk_counter0_carry__1_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[20]\,
      O => \reset_clk_counter0_carry__1_i_5_n_0\
    );
\reset_clk_counter0_carry__1_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[19]\,
      O => \reset_clk_counter0_carry__1_i_6_n_0\
    );
\reset_clk_counter0_carry__1_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[18]\,
      O => \reset_clk_counter0_carry__1_i_7_n_0\
    );
\reset_clk_counter0_carry__1_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[17]\,
      O => \reset_clk_counter0_carry__1_i_8_n_0\
    );
\reset_clk_counter0_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \reset_clk_counter0_carry__1_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_reset_clk_counter0_carry__2_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \reset_clk_counter0_carry__2_n_2\,
      CO(4) => \reset_clk_counter0_carry__2_n_3\,
      CO(3) => \reset_clk_counter0_carry__2_n_4\,
      CO(2) => \reset_clk_counter0_carry__2_n_5\,
      CO(1) => \reset_clk_counter0_carry__2_n_6\,
      CO(0) => \reset_clk_counter0_carry__2_n_7\,
      DI(7 downto 6) => B"00",
      DI(5) => \reset_clk_counter_reg_n_0_[30]\,
      DI(4) => \reset_clk_counter_reg_n_0_[29]\,
      DI(3) => \reset_clk_counter_reg_n_0_[28]\,
      DI(2) => \reset_clk_counter_reg_n_0_[27]\,
      DI(1) => \reset_clk_counter_reg_n_0_[26]\,
      DI(0) => \reset_clk_counter_reg_n_0_[25]\,
      O(7) => \NLW_reset_clk_counter0_carry__2_O_UNCONNECTED\(7),
      O(6 downto 0) => in16(31 downto 25),
      S(7) => '0',
      S(6) => \reset_clk_counter0_carry__2_i_1_n_0\,
      S(5) => \reset_clk_counter0_carry__2_i_2_n_0\,
      S(4) => \reset_clk_counter0_carry__2_i_3_n_0\,
      S(3) => \reset_clk_counter0_carry__2_i_4_n_0\,
      S(2) => \reset_clk_counter0_carry__2_i_5_n_0\,
      S(1) => \reset_clk_counter0_carry__2_i_6_n_0\,
      S(0) => \reset_clk_counter0_carry__2_i_7_n_0\
    );
\reset_clk_counter0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[31]\,
      O => \reset_clk_counter0_carry__2_i_1_n_0\
    );
\reset_clk_counter0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[30]\,
      O => \reset_clk_counter0_carry__2_i_2_n_0\
    );
\reset_clk_counter0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[29]\,
      O => \reset_clk_counter0_carry__2_i_3_n_0\
    );
\reset_clk_counter0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[28]\,
      O => \reset_clk_counter0_carry__2_i_4_n_0\
    );
\reset_clk_counter0_carry__2_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[27]\,
      O => \reset_clk_counter0_carry__2_i_5_n_0\
    );
\reset_clk_counter0_carry__2_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[26]\,
      O => \reset_clk_counter0_carry__2_i_6_n_0\
    );
\reset_clk_counter0_carry__2_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[25]\,
      O => \reset_clk_counter0_carry__2_i_7_n_0\
    );
reset_clk_counter0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[8]\,
      O => reset_clk_counter0_carry_i_1_n_0
    );
reset_clk_counter0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[7]\,
      O => reset_clk_counter0_carry_i_2_n_0
    );
reset_clk_counter0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[6]\,
      O => reset_clk_counter0_carry_i_3_n_0
    );
reset_clk_counter0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[5]\,
      O => reset_clk_counter0_carry_i_4_n_0
    );
reset_clk_counter0_carry_i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[4]\,
      O => reset_clk_counter0_carry_i_5_n_0
    );
reset_clk_counter0_carry_i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[3]\,
      O => reset_clk_counter0_carry_i_6_n_0
    );
reset_clk_counter0_carry_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[2]\,
      O => reset_clk_counter0_carry_i_7_n_0
    );
reset_clk_counter0_carry_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[1]\,
      O => reset_clk_counter0_carry_i_8_n_0
    );
\reset_clk_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \reset_clk_counter[31]_i_6_n_0\,
      I1 => \reset_clk_counter_reg_n_0_[0]\,
      O => reset_clk_counter(0)
    );
\reset_clk_counter[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2AAA"
    )
        port map (
      I0 => in16(10),
      I1 => \inp_state__0\(2),
      I2 => \inp_state__0\(0),
      I3 => \inp_state__0\(1),
      I4 => \^recv_rden\,
      O => reset_clk_counter(10)
    );
\reset_clk_counter[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reset_clk_counter[31]_i_6_n_0\,
      I1 => in16(11),
      O => reset_clk_counter(11)
    );
\reset_clk_counter[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2AAA"
    )
        port map (
      I0 => in16(12),
      I1 => \inp_state__0\(2),
      I2 => \inp_state__0\(0),
      I3 => \inp_state__0\(1),
      I4 => \^recv_rden\,
      O => reset_clk_counter(12)
    );
\reset_clk_counter[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reset_clk_counter[31]_i_6_n_0\,
      I1 => in16(13),
      O => reset_clk_counter(13)
    );
\reset_clk_counter[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reset_clk_counter[31]_i_6_n_0\,
      I1 => in16(14),
      O => reset_clk_counter(14)
    );
\reset_clk_counter[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2AAA"
    )
        port map (
      I0 => in16(15),
      I1 => \inp_state__0\(2),
      I2 => \inp_state__0\(0),
      I3 => \inp_state__0\(1),
      I4 => \^recv_rden\,
      O => reset_clk_counter(15)
    );
\reset_clk_counter[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reset_clk_counter[31]_i_6_n_0\,
      I1 => in16(16),
      O => reset_clk_counter(16)
    );
\reset_clk_counter[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reset_clk_counter[31]_i_6_n_0\,
      I1 => in16(17),
      O => reset_clk_counter(17)
    );
\reset_clk_counter[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reset_clk_counter[31]_i_6_n_0\,
      I1 => in16(18),
      O => reset_clk_counter(18)
    );
\reset_clk_counter[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2AAA"
    )
        port map (
      I0 => in16(19),
      I1 => \inp_state__0\(2),
      I2 => \inp_state__0\(0),
      I3 => \inp_state__0\(1),
      I4 => \^recv_rden\,
      O => reset_clk_counter(19)
    );
\reset_clk_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reset_clk_counter[31]_i_6_n_0\,
      I1 => in16(1),
      O => reset_clk_counter(1)
    );
\reset_clk_counter[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2AAA"
    )
        port map (
      I0 => in16(20),
      I1 => \inp_state__0\(2),
      I2 => \inp_state__0\(0),
      I3 => \inp_state__0\(1),
      I4 => \^recv_rden\,
      O => reset_clk_counter(20)
    );
\reset_clk_counter[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reset_clk_counter[31]_i_6_n_0\,
      I1 => in16(21),
      O => reset_clk_counter(21)
    );
\reset_clk_counter[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reset_clk_counter[31]_i_6_n_0\,
      I1 => in16(22),
      O => reset_clk_counter(22)
    );
\reset_clk_counter[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2AAA"
    )
        port map (
      I0 => in16(23),
      I1 => \inp_state__0\(2),
      I2 => \inp_state__0\(0),
      I3 => \inp_state__0\(1),
      I4 => \^recv_rden\,
      O => reset_clk_counter(23)
    );
\reset_clk_counter[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reset_clk_counter[31]_i_6_n_0\,
      I1 => in16(24),
      O => reset_clk_counter(24)
    );
\reset_clk_counter[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reset_clk_counter[31]_i_6_n_0\,
      I1 => in16(25),
      O => reset_clk_counter(25)
    );
\reset_clk_counter[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reset_clk_counter[31]_i_6_n_0\,
      I1 => in16(26),
      O => reset_clk_counter(26)
    );
\reset_clk_counter[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reset_clk_counter[31]_i_6_n_0\,
      I1 => in16(27),
      O => reset_clk_counter(27)
    );
\reset_clk_counter[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reset_clk_counter[31]_i_6_n_0\,
      I1 => in16(28),
      O => reset_clk_counter(28)
    );
\reset_clk_counter[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reset_clk_counter[31]_i_6_n_0\,
      I1 => in16(29),
      O => reset_clk_counter(29)
    );
\reset_clk_counter[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reset_clk_counter[31]_i_6_n_0\,
      I1 => in16(2),
      O => reset_clk_counter(2)
    );
\reset_clk_counter[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reset_clk_counter[31]_i_6_n_0\,
      I1 => in16(30),
      O => reset_clk_counter(30)
    );
\reset_clk_counter[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFAFAFAFAFAEA"
    )
        port map (
      I0 => \^recv_rden\,
      I1 => \reset_clk_counter_reg_n_0_[0]\,
      I2 => \reset_clk_counter[31]_i_3_n_0\,
      I3 => \reset_clk_counter[31]_i_4_n_0\,
      I4 => \reset_clk_counter[31]_i_5_n_0\,
      I5 => \inp_count[3]_i_4_n_0\,
      O => \reset_clk_counter[31]_i_1_n_0\
    );
\reset_clk_counter[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reset_clk_counter[31]_i_6_n_0\,
      I1 => in16(31),
      O => reset_clk_counter(31)
    );
\reset_clk_counter[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \inp_state__0\(2),
      I1 => \inp_state__0\(0),
      I2 => \inp_state__0\(1),
      O => \reset_clk_counter[31]_i_3_n_0\
    );
\reset_clk_counter[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[12]\,
      I1 => \reset_clk_counter_reg_n_0_[13]\,
      I2 => \reset_clk_counter_reg_n_0_[10]\,
      I3 => \reset_clk_counter_reg_n_0_[11]\,
      I4 => \inp_count[3]_i_11_n_0\,
      O => \reset_clk_counter[31]_i_4_n_0\
    );
\reset_clk_counter[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \reset_clk_counter_reg_n_0_[4]\,
      I1 => \reset_clk_counter_reg_n_0_[5]\,
      I2 => \reset_clk_counter_reg_n_0_[2]\,
      I3 => \reset_clk_counter_reg_n_0_[3]\,
      I4 => \inp_count[3]_i_9_n_0\,
      O => \reset_clk_counter[31]_i_5_n_0\
    );
\reset_clk_counter[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0FFEFFFFFFFFFF"
    )
        port map (
      I0 => \inp_read_delay_reg_n_0_[0]\,
      I1 => \inp_read_delay_reg_n_0_[1]\,
      I2 => \inp_state__0\(1),
      I3 => RECV_EMPTY_N,
      I4 => \inp_state__0\(2),
      I5 => \inp_state__0\(0),
      O => \reset_clk_counter[31]_i_6_n_0\
    );
\reset_clk_counter[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reset_clk_counter[31]_i_6_n_0\,
      I1 => in16(3),
      O => reset_clk_counter(3)
    );
\reset_clk_counter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reset_clk_counter[31]_i_6_n_0\,
      I1 => in16(4),
      O => reset_clk_counter(4)
    );
\reset_clk_counter[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reset_clk_counter[31]_i_6_n_0\,
      I1 => in16(5),
      O => reset_clk_counter(5)
    );
\reset_clk_counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reset_clk_counter[31]_i_6_n_0\,
      I1 => in16(6),
      O => reset_clk_counter(6)
    );
\reset_clk_counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2AAA"
    )
        port map (
      I0 => in16(7),
      I1 => \inp_state__0\(2),
      I2 => \inp_state__0\(0),
      I3 => \inp_state__0\(1),
      I4 => \^recv_rden\,
      O => reset_clk_counter(7)
    );
\reset_clk_counter[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reset_clk_counter[31]_i_6_n_0\,
      I1 => in16(8),
      O => reset_clk_counter(8)
    );
\reset_clk_counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2AAA"
    )
        port map (
      I0 => in16(9),
      I1 => \inp_state__0\(2),
      I2 => \inp_state__0\(0),
      I3 => \inp_state__0\(1),
      I4 => \^recv_rden\,
      O => reset_clk_counter(9)
    );
\reset_clk_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(0),
      Q => \reset_clk_counter_reg_n_0_[0]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(10),
      Q => \reset_clk_counter_reg_n_0_[10]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(11),
      Q => \reset_clk_counter_reg_n_0_[11]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(12),
      Q => \reset_clk_counter_reg_n_0_[12]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(13),
      Q => \reset_clk_counter_reg_n_0_[13]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(14),
      Q => \reset_clk_counter_reg_n_0_[14]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(15),
      Q => \reset_clk_counter_reg_n_0_[15]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(16),
      Q => \reset_clk_counter_reg_n_0_[16]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(17),
      Q => \reset_clk_counter_reg_n_0_[17]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(18),
      Q => \reset_clk_counter_reg_n_0_[18]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(19),
      Q => \reset_clk_counter_reg_n_0_[19]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(1),
      Q => \reset_clk_counter_reg_n_0_[1]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(20),
      Q => \reset_clk_counter_reg_n_0_[20]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(21),
      Q => \reset_clk_counter_reg_n_0_[21]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(22),
      Q => \reset_clk_counter_reg_n_0_[22]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(23),
      Q => \reset_clk_counter_reg_n_0_[23]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(24),
      Q => \reset_clk_counter_reg_n_0_[24]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(25),
      Q => \reset_clk_counter_reg_n_0_[25]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(26),
      Q => \reset_clk_counter_reg_n_0_[26]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(27),
      Q => \reset_clk_counter_reg_n_0_[27]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(28),
      Q => \reset_clk_counter_reg_n_0_[28]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(29),
      Q => \reset_clk_counter_reg_n_0_[29]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(2),
      Q => \reset_clk_counter_reg_n_0_[2]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(30),
      Q => \reset_clk_counter_reg_n_0_[30]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(31),
      Q => \reset_clk_counter_reg_n_0_[31]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(3),
      Q => \reset_clk_counter_reg_n_0_[3]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(4),
      Q => \reset_clk_counter_reg_n_0_[4]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(5),
      Q => \reset_clk_counter_reg_n_0_[5]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(6),
      Q => \reset_clk_counter_reg_n_0_[6]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(7),
      Q => \reset_clk_counter_reg_n_0_[7]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(8),
      Q => \reset_clk_counter_reg_n_0_[8]\,
      R => xmit_wren_i_1_n_0
    );
\reset_clk_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \reset_clk_counter[31]_i_1_n_0\,
      D => reset_clk_counter(9),
      Q => \reset_clk_counter_reg_n_0_[9]\,
      R => xmit_wren_i_1_n_0
    );
\reset_stretch[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_stretch[7]_i_4_n_0\,
      I1 => reset_stretch(0),
      O => \reset_stretch[0]_i_1_n_0\
    );
\reset_stretch[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => reset_stretch(1),
      I1 => reset_stretch(0),
      I2 => \reset_stretch[7]_i_4_n_0\,
      O => \reset_stretch[1]_i_1_n_0\
    );
\reset_stretch[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => reset_stretch(2),
      I1 => reset_stretch(0),
      I2 => reset_stretch(1),
      I3 => \reset_stretch[7]_i_4_n_0\,
      O => \reset_stretch[2]_i_1_n_0\
    );
\reset_stretch[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => reset_stretch(3),
      I1 => reset_stretch(1),
      I2 => reset_stretch(0),
      I3 => reset_stretch(2),
      I4 => \reset_stretch[7]_i_4_n_0\,
      O => \reset_stretch[3]_i_1_n_0\
    );
\reset_stretch[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => reset_stretch(4),
      I1 => reset_stretch(2),
      I2 => reset_stretch(0),
      I3 => reset_stretch(1),
      I4 => reset_stretch(3),
      I5 => \reset_stretch[7]_i_4_n_0\,
      O => \reset_stretch[4]_i_1_n_0\
    );
\reset_stretch[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => reset_stretch(5),
      I1 => \reset_stretch[7]_i_5_n_0\,
      I2 => reset_stretch(4),
      I3 => \reset_stretch[7]_i_4_n_0\,
      O => \reset_stretch[5]_i_1_n_0\
    );
\reset_stretch[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => reset_stretch(6),
      I1 => reset_stretch(5),
      I2 => reset_stretch(4),
      I3 => \reset_stretch[7]_i_5_n_0\,
      I4 => \reset_stretch[7]_i_4_n_0\,
      O => \reset_stretch[6]_i_1_n_0\
    );
\reset_stretch[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \reset_stretch[7]_i_3_n_0\,
      I1 => \^recv_rden\,
      I2 => \reset_stretch[7]_i_4_n_0\,
      O => reset_stretch_0
    );
\reset_stretch[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => reset_stretch(7),
      I1 => reset_stretch(4),
      I2 => reset_stretch(5),
      I3 => reset_stretch(6),
      I4 => \reset_stretch[7]_i_5_n_0\,
      I5 => \reset_stretch[7]_i_4_n_0\,
      O => \reset_stretch[7]_i_2_n_0\
    );
\reset_stretch[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => reset_stretch(2),
      I1 => reset_stretch(3),
      I2 => reset_stretch(0),
      I3 => reset_stretch(1),
      I4 => \inp_count[3]_i_16_n_0\,
      O => \reset_stretch[7]_i_3_n_0\
    );
\reset_stretch[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF7FF"
    )
        port map (
      I0 => RECV_DATA(4),
      I1 => RECV_DATA(6),
      I2 => RECV_DATA(0),
      I3 => RECV_DATA(3),
      I4 => RECV_DATA(1),
      I5 => \inp_last_idx[3]_i_4_n_0\,
      O => \reset_stretch[7]_i_4_n_0\
    );
\reset_stretch[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => reset_stretch(2),
      I1 => reset_stretch(0),
      I2 => reset_stretch(1),
      I3 => reset_stretch(3),
      O => \reset_stretch[7]_i_5_n_0\
    );
\reset_stretch_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => reset_stretch_0,
      D => \reset_stretch[0]_i_1_n_0\,
      Q => reset_stretch(0),
      R => xmit_wren_i_1_n_0
    );
\reset_stretch_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => reset_stretch_0,
      D => \reset_stretch[1]_i_1_n_0\,
      Q => reset_stretch(1),
      R => xmit_wren_i_1_n_0
    );
\reset_stretch_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => reset_stretch_0,
      D => \reset_stretch[2]_i_1_n_0\,
      Q => reset_stretch(2),
      R => xmit_wren_i_1_n_0
    );
\reset_stretch_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => reset_stretch_0,
      D => \reset_stretch[3]_i_1_n_0\,
      Q => reset_stretch(3),
      R => xmit_wren_i_1_n_0
    );
\reset_stretch_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => reset_stretch_0,
      D => \reset_stretch[4]_i_1_n_0\,
      Q => reset_stretch(4),
      R => xmit_wren_i_1_n_0
    );
\reset_stretch_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => reset_stretch_0,
      D => \reset_stretch[5]_i_1_n_0\,
      Q => reset_stretch(5),
      R => xmit_wren_i_1_n_0
    );
\reset_stretch_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => reset_stretch_0,
      D => \reset_stretch[6]_i_1_n_0\,
      Q => reset_stretch(6),
      R => xmit_wren_i_1_n_0
    );
\reset_stretch_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => reset_stretch_0,
      D => \reset_stretch[7]_i_2_n_0\,
      Q => reset_stretch(7),
      R => xmit_wren_i_1_n_0
    );
\xmit_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABABAFFAAAAAA"
    )
        port map (
      I0 => \xmit_data[0]_i_2_n_0\,
      I1 => \inp_state__0\(2),
      I2 => amci_rresp(0),
      I3 => amci_wresp(0),
      I4 => \inp_state__0\(1),
      I5 => \inp_state__0\(0),
      O => xmit_data0_in(0)
    );
\xmit_data[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAAAEAAAAAAAEAAA"
    )
        port map (
      I0 => \xmit_data[0]_i_3_n_0\,
      I1 => read_data(8),
      I2 => \xmit_data[1]_i_4_n_0\,
      I3 => \inp_count_reg_n_0_[1]\,
      I4 => \inp_count_reg_n_0_[0]\,
      I5 => read_data(0),
      O => \xmit_data[0]_i_2_n_0\
    );
\xmit_data[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020200000300"
    )
        port map (
      I0 => read_data(16),
      I1 => \inp_state__0\(0),
      I2 => \inp_state__0\(1),
      I3 => read_data(24),
      I4 => \inp_count_reg_n_0_[1]\,
      I5 => \inp_count_reg_n_0_[0]\,
      O => \xmit_data[0]_i_3_n_0\
    );
\xmit_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABABAFFAAAAAA"
    )
        port map (
      I0 => \xmit_data[1]_i_2_n_0\,
      I1 => \inp_state__0\(2),
      I2 => amci_rresp(1),
      I3 => amci_wresp(1),
      I4 => \inp_state__0\(1),
      I5 => \inp_state__0\(0),
      O => xmit_data0_in(1)
    );
\xmit_data[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAAAEAAAAAAAEAAA"
    )
        port map (
      I0 => \xmit_data[1]_i_3_n_0\,
      I1 => read_data(9),
      I2 => \xmit_data[1]_i_4_n_0\,
      I3 => \inp_count_reg_n_0_[1]\,
      I4 => \inp_count_reg_n_0_[0]\,
      I5 => read_data(1),
      O => \xmit_data[1]_i_2_n_0\
    );
\xmit_data[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020200000300"
    )
        port map (
      I0 => read_data(17),
      I1 => \inp_state__0\(0),
      I2 => \inp_state__0\(1),
      I3 => read_data(25),
      I4 => \inp_count_reg_n_0_[1]\,
      I5 => \inp_count_reg_n_0_[0]\,
      O => \xmit_data[1]_i_3_n_0\
    );
\xmit_data[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \inp_state__0\(0),
      I1 => \inp_state__0\(1),
      O => \xmit_data[1]_i_4_n_0\
    );
\xmit_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => read_data(2),
      I1 => \inp_state__0\(1),
      I2 => \inp_count_reg_n_0_[0]\,
      I3 => \inp_count_reg_n_0_[1]\,
      I4 => \xmit_data[2]_i_2_n_0\,
      O => xmit_data0_in(2)
    );
\xmit_data[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => read_data(26),
      I1 => read_data(18),
      I2 => read_data(10),
      I3 => \inp_count_reg_n_0_[0]\,
      I4 => \inp_count_reg_n_0_[1]\,
      I5 => \inp_state__0\(1),
      O => \xmit_data[2]_i_2_n_0\
    );
\xmit_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => read_data(3),
      I1 => \inp_state__0\(1),
      I2 => \inp_count_reg_n_0_[0]\,
      I3 => \inp_count_reg_n_0_[1]\,
      I4 => \xmit_data[3]_i_2_n_0\,
      O => xmit_data0_in(3)
    );
\xmit_data[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => read_data(27),
      I1 => read_data(19),
      I2 => read_data(11),
      I3 => \inp_count_reg_n_0_[0]\,
      I4 => \inp_count_reg_n_0_[1]\,
      I5 => \inp_state__0\(1),
      O => \xmit_data[3]_i_2_n_0\
    );
\xmit_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => read_data(4),
      I1 => \inp_state__0\(1),
      I2 => \inp_count_reg_n_0_[0]\,
      I3 => \inp_count_reg_n_0_[1]\,
      I4 => \xmit_data[4]_i_2_n_0\,
      O => xmit_data0_in(4)
    );
\xmit_data[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => read_data(28),
      I1 => read_data(20),
      I2 => read_data(12),
      I3 => \inp_count_reg_n_0_[0]\,
      I4 => \inp_count_reg_n_0_[1]\,
      I5 => \inp_state__0\(1),
      O => \xmit_data[4]_i_2_n_0\
    );
\xmit_data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => read_data(5),
      I1 => \inp_state__0\(1),
      I2 => \inp_count_reg_n_0_[0]\,
      I3 => \inp_count_reg_n_0_[1]\,
      I4 => \xmit_data[5]_i_2_n_0\,
      O => xmit_data0_in(5)
    );
\xmit_data[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => read_data(29),
      I1 => read_data(21),
      I2 => read_data(13),
      I3 => \inp_count_reg_n_0_[0]\,
      I4 => \inp_count_reg_n_0_[1]\,
      I5 => \inp_state__0\(1),
      O => \xmit_data[5]_i_2_n_0\
    );
\xmit_data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => read_data(6),
      I1 => \inp_state__0\(1),
      I2 => \inp_count_reg_n_0_[0]\,
      I3 => \inp_count_reg_n_0_[1]\,
      I4 => \xmit_data[6]_i_2_n_0\,
      O => xmit_data0_in(6)
    );
\xmit_data[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => read_data(30),
      I1 => read_data(22),
      I2 => read_data(14),
      I3 => \inp_count_reg_n_0_[0]\,
      I4 => \inp_count_reg_n_0_[1]\,
      I5 => \inp_state__0\(1),
      O => \xmit_data[6]_i_2_n_0\
    );
\xmit_data[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^xmit_wren\,
      I1 => M_AXI_ARESETN,
      O => \xmit_data[7]_i_1_n_0\
    );
\xmit_data[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => read_data(7),
      I1 => \inp_state__0\(1),
      I2 => \inp_count_reg_n_0_[0]\,
      I3 => \inp_count_reg_n_0_[1]\,
      I4 => \xmit_data[7]_i_3_n_0\,
      O => xmit_data0_in(7)
    );
\xmit_data[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => read_data(31),
      I1 => read_data(23),
      I2 => read_data(15),
      I3 => \inp_count_reg_n_0_[0]\,
      I4 => \inp_count_reg_n_0_[1]\,
      I5 => \inp_state__0\(1),
      O => \xmit_data[7]_i_3_n_0\
    );
\xmit_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \xmit_data[7]_i_1_n_0\,
      D => xmit_data0_in(0),
      Q => XMIT_DATA(0),
      R => '0'
    );
\xmit_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \xmit_data[7]_i_1_n_0\,
      D => xmit_data0_in(1),
      Q => XMIT_DATA(1),
      R => '0'
    );
\xmit_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \xmit_data[7]_i_1_n_0\,
      D => xmit_data0_in(2),
      Q => XMIT_DATA(2),
      R => '0'
    );
\xmit_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \xmit_data[7]_i_1_n_0\,
      D => xmit_data0_in(3),
      Q => XMIT_DATA(3),
      R => '0'
    );
\xmit_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \xmit_data[7]_i_1_n_0\,
      D => xmit_data0_in(4),
      Q => XMIT_DATA(4),
      R => '0'
    );
\xmit_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \xmit_data[7]_i_1_n_0\,
      D => xmit_data0_in(5),
      Q => XMIT_DATA(5),
      R => '0'
    );
\xmit_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \xmit_data[7]_i_1_n_0\,
      D => xmit_data0_in(6),
      Q => XMIT_DATA(6),
      R => '0'
    );
\xmit_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \xmit_data[7]_i_1_n_0\,
      D => xmit_data0_in(7),
      Q => XMIT_DATA(7),
      R => '0'
    );
xmit_wren_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => M_AXI_ARESETN,
      O => xmit_wren_i_1_n_0
    );
xmit_wren_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2CC0000E20000"
    )
        port map (
      I0 => xmit_wren_i_3_n_0,
      I1 => \inp_state__0\(1),
      I2 => xmit_wren_i_4_n_0,
      I3 => \inp_state__0\(0),
      I4 => \inp_state__0\(2),
      I5 => xmit_wren_i_5_n_0,
      O => \^xmit_wren\
    );
xmit_wren_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \inp_count_reg_n_0_[2]\,
      I1 => \inp_count_reg_n_0_[3]\,
      I2 => \inp_count_reg_n_0_[1]\,
      I3 => \inp_count_reg_n_0_[0]\,
      O => xmit_wren_i_3_n_0
    );
xmit_wren_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_write_state_reg_n_0_[0]\,
      I1 => amci_write_reg_n_0,
      O => xmit_wren_i_4_n_0
    );
xmit_wren_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_state,
      I1 => amci_read_reg_n_0,
      O => xmit_wren_i_5_n_0
    );
xmit_wren_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \^xmit_wren\,
      Q => XMIT_WREN,
      R => xmit_wren_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_axi_iface_0_0 is
  port (
    XMIT_DATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    XMIT_FULL_N : in STD_LOGIC;
    XMIT_WREN : out STD_LOGIC;
    RECV_DATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RECV_EMPTY_N : in STD_LOGIC;
    RECV_RDEN : out STD_LOGIC;
    M_AXI_ACLK : in STD_LOGIC;
    M_AXI_ARESETN : in STD_LOGIC;
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_AWVALID : out STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    M_AXI_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_WVALID : out STD_LOGIC;
    M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_BVALID : in STD_LOGIC;
    M_AXI_BREADY : out STD_LOGIC;
    M_AXI_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_ARVALID : out STD_LOGIC;
    M_AXI_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARREADY : in STD_LOGIC;
    M_AXI_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_RVALID : in STD_LOGIC;
    M_AXI_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_RREADY : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_uart_axi_iface_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_uart_axi_iface_0_0 : entity is "design_1_uart_axi_iface_0_0,uart_axi_iface,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_uart_axi_iface_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_uart_axi_iface_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_uart_axi_iface_0_0 : entity is "uart_axi_iface,Vivado 2021.1";
end design_1_uart_axi_iface_0_0;

architecture STRUCTURE of design_1_uart_axi_iface_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 M_AXI_ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of M_AXI_ACLK : signal is "XIL_INTERFACENAME M_AXI_ACLK, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET M_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_100mhz, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 M_AXI_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of M_AXI_ARESETN : signal is "XIL_INTERFACENAME M_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute X_INTERFACE_INFO of M_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute X_INTERFACE_INFO of M_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of M_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of M_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_INFO of M_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of M_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of M_AXI_RREADY : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_100mhz, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute X_INTERFACE_INFO of M_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of M_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of RECV_EMPTY_N : signal is "xilinx.com:interface:acc_fifo_read:1.0 UART_RX_FIFO EMPTY_N";
  attribute X_INTERFACE_INFO of RECV_RDEN : signal is "xilinx.com:interface:acc_fifo_read:1.0 UART_RX_FIFO RD_EN";
  attribute X_INTERFACE_INFO of XMIT_FULL_N : signal is "xilinx.com:interface:acc_fifo_write:1.0 UART_TX_FIFO FULL_N";
  attribute X_INTERFACE_INFO of XMIT_WREN : signal is "xilinx.com:interface:acc_fifo_write:1.0 UART_TX_FIFO WR_EN";
  attribute X_INTERFACE_INFO of M_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute X_INTERFACE_INFO of M_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute X_INTERFACE_INFO of M_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_INFO of M_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute X_INTERFACE_INFO of M_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of M_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute X_INTERFACE_INFO of M_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute X_INTERFACE_INFO of M_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of M_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  attribute X_INTERFACE_INFO of RECV_DATA : signal is "xilinx.com:interface:acc_fifo_read:1.0 UART_RX_FIFO RD_DATA";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of RECV_DATA : signal is "master";
  attribute X_INTERFACE_INFO of XMIT_DATA : signal is "xilinx.com:interface:acc_fifo_write:1.0 UART_TX_FIFO WR_DATA";
begin
  M_AXI_ARPROT(2) <= \<const0>\;
  M_AXI_ARPROT(1) <= \<const0>\;
  M_AXI_ARPROT(0) <= \<const1>\;
  M_AXI_AWPROT(2) <= \<const0>\;
  M_AXI_AWPROT(1) <= \<const0>\;
  M_AXI_AWPROT(0) <= \<const0>\;
  M_AXI_WSTRB(3) <= \<const1>\;
  M_AXI_WSTRB(2) <= \<const1>\;
  M_AXI_WSTRB(1) <= \<const1>\;
  M_AXI_WSTRB(0) <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_uart_axi_iface_0_0_uart_axi_iface
     port map (
      M_AXI_ACLK => M_AXI_ACLK,
      M_AXI_ARADDR(31 downto 0) => M_AXI_ARADDR(31 downto 0),
      M_AXI_ARESETN => M_AXI_ARESETN,
      M_AXI_ARREADY => M_AXI_ARREADY,
      M_AXI_ARVALID => M_AXI_ARVALID,
      M_AXI_AWADDR(31 downto 0) => M_AXI_AWADDR(31 downto 0),
      M_AXI_AWREADY => M_AXI_AWREADY,
      M_AXI_AWVALID => M_AXI_AWVALID,
      M_AXI_BRESP(1 downto 0) => M_AXI_BRESP(1 downto 0),
      M_AXI_BVALID => M_AXI_BVALID,
      M_AXI_RDATA(31 downto 0) => M_AXI_RDATA(31 downto 0),
      M_AXI_RRESP(1 downto 0) => M_AXI_RRESP(1 downto 0),
      M_AXI_RVALID => M_AXI_RVALID,
      M_AXI_WDATA(31 downto 0) => M_AXI_WDATA(31 downto 0),
      M_AXI_WREADY => M_AXI_WREADY,
      M_AXI_WVALID => M_AXI_WVALID,
      RECV_DATA(7 downto 0) => RECV_DATA(7 downto 0),
      RECV_EMPTY_N => RECV_EMPTY_N,
      RECV_RDEN => RECV_RDEN,
      XMIT_DATA(7 downto 0) => XMIT_DATA(7 downto 0),
      XMIT_WREN => XMIT_WREN,
      m_axi_bready_reg_0 => M_AXI_BREADY,
      m_axi_rready_reg_0 => M_AXI_RREADY
    );
end STRUCTURE;
