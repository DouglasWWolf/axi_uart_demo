-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Fri Jun 10 18:14:45 2022
-- Host        : simtool5-2 running 64-bit Ubuntu 20.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /fpga/axi_uart_demo/xilinx_zcu104/axi_uart_zcu104.gen/sources_1/bd/design_1/ip/design_1_button_0_0/design_1_button_0_0_sim_netlist.vhdl
-- Design      : design_1_button_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_button_0_0_button is
  port (
    Q : out STD_LOGIC;
    CLK : in STD_LOGIC;
    PIN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_button_0_0_button : entity is "button";
end design_1_button_0_0_button;

architecture STRUCTURE of design_1_button_0_0_button is
  signal button_sync : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of button_sync : signal is "true";
  signal data0 : STD_LOGIC_VECTOR ( 20 downto 1 );
  signal debounce_clock : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \debounce_clock0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \debounce_clock0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \debounce_clock0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \debounce_clock0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \debounce_clock0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \debounce_clock0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \debounce_clock0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \debounce_clock0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \debounce_clock0_carry__0_n_0\ : STD_LOGIC;
  signal \debounce_clock0_carry__0_n_1\ : STD_LOGIC;
  signal \debounce_clock0_carry__0_n_2\ : STD_LOGIC;
  signal \debounce_clock0_carry__0_n_3\ : STD_LOGIC;
  signal \debounce_clock0_carry__0_n_4\ : STD_LOGIC;
  signal \debounce_clock0_carry__0_n_5\ : STD_LOGIC;
  signal \debounce_clock0_carry__0_n_6\ : STD_LOGIC;
  signal \debounce_clock0_carry__0_n_7\ : STD_LOGIC;
  signal \debounce_clock0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \debounce_clock0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \debounce_clock0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \debounce_clock0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \debounce_clock0_carry__1_n_5\ : STD_LOGIC;
  signal \debounce_clock0_carry__1_n_6\ : STD_LOGIC;
  signal \debounce_clock0_carry__1_n_7\ : STD_LOGIC;
  signal debounce_clock0_carry_i_1_n_0 : STD_LOGIC;
  signal debounce_clock0_carry_i_2_n_0 : STD_LOGIC;
  signal debounce_clock0_carry_i_3_n_0 : STD_LOGIC;
  signal debounce_clock0_carry_i_4_n_0 : STD_LOGIC;
  signal debounce_clock0_carry_i_5_n_0 : STD_LOGIC;
  signal debounce_clock0_carry_i_6_n_0 : STD_LOGIC;
  signal debounce_clock0_carry_i_7_n_0 : STD_LOGIC;
  signal debounce_clock0_carry_i_8_n_0 : STD_LOGIC;
  signal debounce_clock0_carry_n_0 : STD_LOGIC;
  signal debounce_clock0_carry_n_1 : STD_LOGIC;
  signal debounce_clock0_carry_n_2 : STD_LOGIC;
  signal debounce_clock0_carry_n_3 : STD_LOGIC;
  signal debounce_clock0_carry_n_4 : STD_LOGIC;
  signal debounce_clock0_carry_n_5 : STD_LOGIC;
  signal debounce_clock0_carry_n_6 : STD_LOGIC;
  signal debounce_clock0_carry_n_7 : STD_LOGIC;
  signal \debounce_clock[0]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_clock[10]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_clock[11]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_clock[12]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_clock[13]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_clock[14]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_clock[15]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_clock[16]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_clock[17]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_clock[18]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_clock[19]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_clock[1]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_clock[20]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_clock[20]_i_3_n_0\ : STD_LOGIC;
  signal \debounce_clock[20]_i_4_n_0\ : STD_LOGIC;
  signal \debounce_clock[2]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_clock[3]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_clock[4]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_clock[5]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_clock[6]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_clock[7]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_clock[8]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_clock[9]_i_1_n_0\ : STD_LOGIC;
  signal debounce_clock_0 : STD_LOGIC;
  signal edge_detected_i_1_n_0 : STD_LOGIC;
  signal edge_detected_i_2_n_0 : STD_LOGIC;
  signal edge_detected_i_3_n_0 : STD_LOGIC;
  signal edge_detected_i_4_n_0 : STD_LOGIC;
  signal edge_detected_i_5_n_0 : STD_LOGIC;
  signal edge_detected_i_6_n_0 : STD_LOGIC;
  signal \NLW_debounce_clock0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_debounce_clock0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \button_sync_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \button_sync_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \button_sync_reg[1]\ : label is std.standard.true;
  attribute KEEP of \button_sync_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \button_sync_reg[2]\ : label is std.standard.true;
  attribute KEEP of \button_sync_reg[2]\ : label is "yes";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of debounce_clock0_carry : label is 35;
  attribute ADDER_THRESHOLD of \debounce_clock0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \debounce_clock0_carry__1\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \debounce_clock[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \debounce_clock[20]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of edge_detected_i_3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of edge_detected_i_5 : label is "soft_lutpair1";
begin
\button_sync_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => PIN,
      Q => button_sync(0),
      R => '0'
    );
\button_sync_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => button_sync(0),
      Q => button_sync(1),
      R => '0'
    );
\button_sync_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => button_sync(1),
      Q => button_sync(2),
      R => '0'
    );
debounce_clock0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => debounce_clock(0),
      CI_TOP => '0',
      CO(7) => debounce_clock0_carry_n_0,
      CO(6) => debounce_clock0_carry_n_1,
      CO(5) => debounce_clock0_carry_n_2,
      CO(4) => debounce_clock0_carry_n_3,
      CO(3) => debounce_clock0_carry_n_4,
      CO(2) => debounce_clock0_carry_n_5,
      CO(1) => debounce_clock0_carry_n_6,
      CO(0) => debounce_clock0_carry_n_7,
      DI(7 downto 0) => debounce_clock(8 downto 1),
      O(7 downto 0) => data0(8 downto 1),
      S(7) => debounce_clock0_carry_i_1_n_0,
      S(6) => debounce_clock0_carry_i_2_n_0,
      S(5) => debounce_clock0_carry_i_3_n_0,
      S(4) => debounce_clock0_carry_i_4_n_0,
      S(3) => debounce_clock0_carry_i_5_n_0,
      S(2) => debounce_clock0_carry_i_6_n_0,
      S(1) => debounce_clock0_carry_i_7_n_0,
      S(0) => debounce_clock0_carry_i_8_n_0
    );
\debounce_clock0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => debounce_clock0_carry_n_0,
      CI_TOP => '0',
      CO(7) => \debounce_clock0_carry__0_n_0\,
      CO(6) => \debounce_clock0_carry__0_n_1\,
      CO(5) => \debounce_clock0_carry__0_n_2\,
      CO(4) => \debounce_clock0_carry__0_n_3\,
      CO(3) => \debounce_clock0_carry__0_n_4\,
      CO(2) => \debounce_clock0_carry__0_n_5\,
      CO(1) => \debounce_clock0_carry__0_n_6\,
      CO(0) => \debounce_clock0_carry__0_n_7\,
      DI(7 downto 0) => debounce_clock(16 downto 9),
      O(7 downto 0) => data0(16 downto 9),
      S(7) => \debounce_clock0_carry__0_i_1_n_0\,
      S(6) => \debounce_clock0_carry__0_i_2_n_0\,
      S(5) => \debounce_clock0_carry__0_i_3_n_0\,
      S(4) => \debounce_clock0_carry__0_i_4_n_0\,
      S(3) => \debounce_clock0_carry__0_i_5_n_0\,
      S(2) => \debounce_clock0_carry__0_i_6_n_0\,
      S(1) => \debounce_clock0_carry__0_i_7_n_0\,
      S(0) => \debounce_clock0_carry__0_i_8_n_0\
    );
\debounce_clock0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_clock(16),
      O => \debounce_clock0_carry__0_i_1_n_0\
    );
\debounce_clock0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_clock(15),
      O => \debounce_clock0_carry__0_i_2_n_0\
    );
\debounce_clock0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_clock(14),
      O => \debounce_clock0_carry__0_i_3_n_0\
    );
\debounce_clock0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_clock(13),
      O => \debounce_clock0_carry__0_i_4_n_0\
    );
\debounce_clock0_carry__0_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_clock(12),
      O => \debounce_clock0_carry__0_i_5_n_0\
    );
\debounce_clock0_carry__0_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_clock(11),
      O => \debounce_clock0_carry__0_i_6_n_0\
    );
\debounce_clock0_carry__0_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_clock(10),
      O => \debounce_clock0_carry__0_i_7_n_0\
    );
\debounce_clock0_carry__0_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_clock(9),
      O => \debounce_clock0_carry__0_i_8_n_0\
    );
\debounce_clock0_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \debounce_clock0_carry__0_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_debounce_clock0_carry__1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \debounce_clock0_carry__1_n_5\,
      CO(1) => \debounce_clock0_carry__1_n_6\,
      CO(0) => \debounce_clock0_carry__1_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2 downto 0) => debounce_clock(19 downto 17),
      O(7 downto 4) => \NLW_debounce_clock0_carry__1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => data0(20 downto 17),
      S(7 downto 4) => B"0000",
      S(3) => \debounce_clock0_carry__1_i_1_n_0\,
      S(2) => \debounce_clock0_carry__1_i_2_n_0\,
      S(1) => \debounce_clock0_carry__1_i_3_n_0\,
      S(0) => \debounce_clock0_carry__1_i_4_n_0\
    );
\debounce_clock0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_clock(20),
      O => \debounce_clock0_carry__1_i_1_n_0\
    );
\debounce_clock0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_clock(19),
      O => \debounce_clock0_carry__1_i_2_n_0\
    );
\debounce_clock0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_clock(18),
      O => \debounce_clock0_carry__1_i_3_n_0\
    );
\debounce_clock0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_clock(17),
      O => \debounce_clock0_carry__1_i_4_n_0\
    );
debounce_clock0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_clock(8),
      O => debounce_clock0_carry_i_1_n_0
    );
debounce_clock0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_clock(7),
      O => debounce_clock0_carry_i_2_n_0
    );
debounce_clock0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_clock(6),
      O => debounce_clock0_carry_i_3_n_0
    );
debounce_clock0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_clock(5),
      O => debounce_clock0_carry_i_4_n_0
    );
debounce_clock0_carry_i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_clock(4),
      O => debounce_clock0_carry_i_5_n_0
    );
debounce_clock0_carry_i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_clock(3),
      O => debounce_clock0_carry_i_6_n_0
    );
debounce_clock0_carry_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_clock(2),
      O => debounce_clock0_carry_i_7_n_0
    );
debounce_clock0_carry_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_clock(1),
      O => debounce_clock0_carry_i_8_n_0
    );
\debounce_clock[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_clock(0),
      O => \debounce_clock[0]_i_1_n_0\
    );
\debounce_clock[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => edge_detected_i_2_n_0,
      I1 => edge_detected_i_3_n_0,
      I2 => edge_detected_i_4_n_0,
      I3 => edge_detected_i_5_n_0,
      I4 => edge_detected_i_6_n_0,
      I5 => data0(10),
      O => \debounce_clock[10]_i_1_n_0\
    );
\debounce_clock[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => edge_detected_i_2_n_0,
      I1 => edge_detected_i_3_n_0,
      I2 => edge_detected_i_4_n_0,
      I3 => edge_detected_i_5_n_0,
      I4 => edge_detected_i_6_n_0,
      I5 => data0(11),
      O => \debounce_clock[11]_i_1_n_0\
    );
\debounce_clock[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => edge_detected_i_2_n_0,
      I1 => edge_detected_i_3_n_0,
      I2 => edge_detected_i_4_n_0,
      I3 => edge_detected_i_5_n_0,
      I4 => edge_detected_i_6_n_0,
      I5 => data0(12),
      O => \debounce_clock[12]_i_1_n_0\
    );
\debounce_clock[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => edge_detected_i_2_n_0,
      I1 => edge_detected_i_3_n_0,
      I2 => edge_detected_i_4_n_0,
      I3 => edge_detected_i_5_n_0,
      I4 => edge_detected_i_6_n_0,
      I5 => data0(13),
      O => \debounce_clock[13]_i_1_n_0\
    );
\debounce_clock[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => edge_detected_i_2_n_0,
      I1 => edge_detected_i_3_n_0,
      I2 => edge_detected_i_4_n_0,
      I3 => edge_detected_i_5_n_0,
      I4 => edge_detected_i_6_n_0,
      I5 => data0(14),
      O => \debounce_clock[14]_i_1_n_0\
    );
\debounce_clock[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => edge_detected_i_2_n_0,
      I1 => edge_detected_i_3_n_0,
      I2 => edge_detected_i_4_n_0,
      I3 => edge_detected_i_5_n_0,
      I4 => edge_detected_i_6_n_0,
      I5 => data0(15),
      O => \debounce_clock[15]_i_1_n_0\
    );
\debounce_clock[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => edge_detected_i_2_n_0,
      I1 => edge_detected_i_3_n_0,
      I2 => edge_detected_i_4_n_0,
      I3 => edge_detected_i_5_n_0,
      I4 => edge_detected_i_6_n_0,
      I5 => data0(16),
      O => \debounce_clock[16]_i_1_n_0\
    );
\debounce_clock[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => edge_detected_i_2_n_0,
      I1 => edge_detected_i_3_n_0,
      I2 => edge_detected_i_4_n_0,
      I3 => edge_detected_i_5_n_0,
      I4 => edge_detected_i_6_n_0,
      I5 => data0(17),
      O => \debounce_clock[17]_i_1_n_0\
    );
\debounce_clock[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => edge_detected_i_2_n_0,
      I1 => edge_detected_i_3_n_0,
      I2 => edge_detected_i_4_n_0,
      I3 => edge_detected_i_5_n_0,
      I4 => edge_detected_i_6_n_0,
      I5 => data0(18),
      O => \debounce_clock[18]_i_1_n_0\
    );
\debounce_clock[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => edge_detected_i_2_n_0,
      I1 => edge_detected_i_3_n_0,
      I2 => edge_detected_i_4_n_0,
      I3 => edge_detected_i_5_n_0,
      I4 => edge_detected_i_6_n_0,
      I5 => data0(19),
      O => \debounce_clock[19]_i_1_n_0\
    );
\debounce_clock[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => edge_detected_i_2_n_0,
      I1 => edge_detected_i_3_n_0,
      I2 => edge_detected_i_4_n_0,
      I3 => edge_detected_i_5_n_0,
      I4 => edge_detected_i_6_n_0,
      I5 => data0(1),
      O => \debounce_clock[1]_i_1_n_0\
    );
\debounce_clock[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => button_sync(1),
      I1 => button_sync(2),
      O => \debounce_clock[20]_i_1_n_0\
    );
\debounce_clock[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \debounce_clock[20]_i_4_n_0\,
      I1 => debounce_clock(4),
      I2 => debounce_clock(5),
      I3 => debounce_clock(20),
      I4 => debounce_clock(0),
      I5 => edge_detected_i_6_n_0,
      O => debounce_clock_0
    );
\debounce_clock[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => edge_detected_i_2_n_0,
      I1 => edge_detected_i_3_n_0,
      I2 => edge_detected_i_4_n_0,
      I3 => edge_detected_i_5_n_0,
      I4 => edge_detected_i_6_n_0,
      I5 => data0(20),
      O => \debounce_clock[20]_i_3_n_0\
    );
\debounce_clock[20]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => edge_detected_i_4_n_0,
      I1 => debounce_clock(18),
      I2 => debounce_clock(16),
      I3 => debounce_clock(17),
      I4 => edge_detected_i_2_n_0,
      O => \debounce_clock[20]_i_4_n_0\
    );
\debounce_clock[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => edge_detected_i_2_n_0,
      I1 => edge_detected_i_3_n_0,
      I2 => edge_detected_i_4_n_0,
      I3 => edge_detected_i_5_n_0,
      I4 => edge_detected_i_6_n_0,
      I5 => data0(2),
      O => \debounce_clock[2]_i_1_n_0\
    );
\debounce_clock[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => edge_detected_i_2_n_0,
      I1 => edge_detected_i_3_n_0,
      I2 => edge_detected_i_4_n_0,
      I3 => edge_detected_i_5_n_0,
      I4 => edge_detected_i_6_n_0,
      I5 => data0(3),
      O => \debounce_clock[3]_i_1_n_0\
    );
\debounce_clock[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => edge_detected_i_2_n_0,
      I1 => edge_detected_i_3_n_0,
      I2 => edge_detected_i_4_n_0,
      I3 => edge_detected_i_5_n_0,
      I4 => edge_detected_i_6_n_0,
      I5 => data0(4),
      O => \debounce_clock[4]_i_1_n_0\
    );
\debounce_clock[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => edge_detected_i_2_n_0,
      I1 => edge_detected_i_3_n_0,
      I2 => edge_detected_i_4_n_0,
      I3 => edge_detected_i_5_n_0,
      I4 => edge_detected_i_6_n_0,
      I5 => data0(5),
      O => \debounce_clock[5]_i_1_n_0\
    );
\debounce_clock[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => edge_detected_i_2_n_0,
      I1 => edge_detected_i_3_n_0,
      I2 => edge_detected_i_4_n_0,
      I3 => edge_detected_i_5_n_0,
      I4 => edge_detected_i_6_n_0,
      I5 => data0(6),
      O => \debounce_clock[6]_i_1_n_0\
    );
\debounce_clock[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => edge_detected_i_2_n_0,
      I1 => edge_detected_i_3_n_0,
      I2 => edge_detected_i_4_n_0,
      I3 => edge_detected_i_5_n_0,
      I4 => edge_detected_i_6_n_0,
      I5 => data0(7),
      O => \debounce_clock[7]_i_1_n_0\
    );
\debounce_clock[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => edge_detected_i_2_n_0,
      I1 => edge_detected_i_3_n_0,
      I2 => edge_detected_i_4_n_0,
      I3 => edge_detected_i_5_n_0,
      I4 => edge_detected_i_6_n_0,
      I5 => data0(8),
      O => \debounce_clock[8]_i_1_n_0\
    );
\debounce_clock[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => edge_detected_i_2_n_0,
      I1 => edge_detected_i_3_n_0,
      I2 => edge_detected_i_4_n_0,
      I3 => edge_detected_i_5_n_0,
      I4 => edge_detected_i_6_n_0,
      I5 => data0(9),
      O => \debounce_clock[9]_i_1_n_0\
    );
\debounce_clock_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => debounce_clock_0,
      D => \debounce_clock[0]_i_1_n_0\,
      Q => debounce_clock(0),
      R => \debounce_clock[20]_i_1_n_0\
    );
\debounce_clock_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => debounce_clock_0,
      D => \debounce_clock[10]_i_1_n_0\,
      Q => debounce_clock(10),
      R => \debounce_clock[20]_i_1_n_0\
    );
\debounce_clock_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => debounce_clock_0,
      D => \debounce_clock[11]_i_1_n_0\,
      Q => debounce_clock(11),
      R => \debounce_clock[20]_i_1_n_0\
    );
\debounce_clock_reg[12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => debounce_clock_0,
      D => \debounce_clock[12]_i_1_n_0\,
      Q => debounce_clock(12),
      S => \debounce_clock[20]_i_1_n_0\
    );
\debounce_clock_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => debounce_clock_0,
      D => \debounce_clock[13]_i_1_n_0\,
      Q => debounce_clock(13),
      R => \debounce_clock[20]_i_1_n_0\
    );
\debounce_clock_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => debounce_clock_0,
      D => \debounce_clock[14]_i_1_n_0\,
      Q => debounce_clock(14),
      R => \debounce_clock[20]_i_1_n_0\
    );
\debounce_clock_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => debounce_clock_0,
      D => \debounce_clock[15]_i_1_n_0\,
      Q => debounce_clock(15),
      R => \debounce_clock[20]_i_1_n_0\
    );
\debounce_clock_reg[16]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => debounce_clock_0,
      D => \debounce_clock[16]_i_1_n_0\,
      Q => debounce_clock(16),
      S => \debounce_clock[20]_i_1_n_0\
    );
\debounce_clock_reg[17]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => debounce_clock_0,
      D => \debounce_clock[17]_i_1_n_0\,
      Q => debounce_clock(17),
      S => \debounce_clock[20]_i_1_n_0\
    );
\debounce_clock_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => debounce_clock_0,
      D => \debounce_clock[18]_i_1_n_0\,
      Q => debounce_clock(18),
      R => \debounce_clock[20]_i_1_n_0\
    );
\debounce_clock_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => debounce_clock_0,
      D => \debounce_clock[19]_i_1_n_0\,
      Q => debounce_clock(19),
      R => \debounce_clock[20]_i_1_n_0\
    );
\debounce_clock_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => debounce_clock_0,
      D => \debounce_clock[1]_i_1_n_0\,
      Q => debounce_clock(1),
      R => \debounce_clock[20]_i_1_n_0\
    );
\debounce_clock_reg[20]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => debounce_clock_0,
      D => \debounce_clock[20]_i_3_n_0\,
      Q => debounce_clock(20),
      S => \debounce_clock[20]_i_1_n_0\
    );
\debounce_clock_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => debounce_clock_0,
      D => \debounce_clock[2]_i_1_n_0\,
      Q => debounce_clock(2),
      R => \debounce_clock[20]_i_1_n_0\
    );
\debounce_clock_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => debounce_clock_0,
      D => \debounce_clock[3]_i_1_n_0\,
      Q => debounce_clock(3),
      R => \debounce_clock[20]_i_1_n_0\
    );
\debounce_clock_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => debounce_clock_0,
      D => \debounce_clock[4]_i_1_n_0\,
      Q => debounce_clock(4),
      S => \debounce_clock[20]_i_1_n_0\
    );
\debounce_clock_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => debounce_clock_0,
      D => \debounce_clock[5]_i_1_n_0\,
      Q => debounce_clock(5),
      R => \debounce_clock[20]_i_1_n_0\
    );
\debounce_clock_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => debounce_clock_0,
      D => \debounce_clock[6]_i_1_n_0\,
      Q => debounce_clock(6),
      S => \debounce_clock[20]_i_1_n_0\
    );
\debounce_clock_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => debounce_clock_0,
      D => \debounce_clock[7]_i_1_n_0\,
      Q => debounce_clock(7),
      S => \debounce_clock[20]_i_1_n_0\
    );
\debounce_clock_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => debounce_clock_0,
      D => \debounce_clock[8]_i_1_n_0\,
      Q => debounce_clock(8),
      R => \debounce_clock[20]_i_1_n_0\
    );
\debounce_clock_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => debounce_clock_0,
      D => \debounce_clock[9]_i_1_n_0\,
      Q => debounce_clock(9),
      S => \debounce_clock[20]_i_1_n_0\
    );
edge_detected_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => edge_detected_i_2_n_0,
      I1 => edge_detected_i_3_n_0,
      I2 => edge_detected_i_4_n_0,
      I3 => edge_detected_i_5_n_0,
      I4 => edge_detected_i_6_n_0,
      I5 => button_sync(1),
      O => edge_detected_i_1_n_0
    );
edge_detected_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => debounce_clock(12),
      I1 => debounce_clock(13),
      I2 => debounce_clock(14),
      I3 => debounce_clock(15),
      O => edge_detected_i_2_n_0
    );
edge_detected_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => debounce_clock(18),
      I1 => debounce_clock(16),
      I2 => debounce_clock(17),
      O => edge_detected_i_3_n_0
    );
edge_detected_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => debounce_clock(2),
      I1 => debounce_clock(6),
      I2 => debounce_clock(7),
      I3 => debounce_clock(1),
      I4 => debounce_clock(10),
      I5 => debounce_clock(9),
      O => edge_detected_i_4_n_0
    );
edge_detected_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => debounce_clock(0),
      I1 => debounce_clock(20),
      I2 => debounce_clock(4),
      I3 => debounce_clock(5),
      O => edge_detected_i_5_n_0
    );
edge_detected_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => debounce_clock(3),
      I1 => debounce_clock(8),
      I2 => debounce_clock(11),
      I3 => debounce_clock(19),
      O => edge_detected_i_6_n_0
    );
edge_detected_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => edge_detected_i_1_n_0,
      Q => Q,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_button_0_0 is
  port (
    CLK : in STD_LOGIC;
    PIN : in STD_LOGIC;
    Q : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_button_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_button_0_0 : entity is "design_1_button_0_0,button,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_button_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_button_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_button_0_0 : entity is "button,Vivado 2021.1";
end design_1_button_0_0;

architecture STRUCTURE of design_1_button_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_100mhz, INSERT_VIP 0";
begin
inst: entity work.design_1_button_0_0_button
     port map (
      CLK => CLK,
      PIN => PIN,
      Q => Q
    );
end STRUCTURE;
