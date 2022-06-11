-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Fri Jun 10 18:14:45 2022
-- Host        : simtool5-2 running 64-bit Ubuntu 20.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /fpga/axi_uart_demo/xilinx_zcu104/axi_uart_zcu104.gen/sources_1/bd/design_1/ip/design_1_button_0_0/design_1_button_0_0_stub.vhdl
-- Design      : design_1_button_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_button_0_0 is
  Port ( 
    CLK : in STD_LOGIC;
    PIN : in STD_LOGIC;
    Q : out STD_LOGIC
  );

end design_1_button_0_0;

architecture stub of design_1_button_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,PIN,Q";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "button,Vivado 2021.1";
begin
end;
