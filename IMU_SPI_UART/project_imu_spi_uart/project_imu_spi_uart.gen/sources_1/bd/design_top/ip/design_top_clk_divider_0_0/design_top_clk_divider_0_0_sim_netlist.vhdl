-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1.1 (lin64) Build 3286242 Wed Jul 28 13:09:46 MDT 2021
-- Date        : Mon Oct 25 17:20:33 2021
-- Host        : adm-127190 running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/esme/Desktop/VivadoProjects/EmbeddedSystems/IMU_SPI_UART/project_imu_spi_uart/project_imu_spi_uart.gen/sources_1/bd/design_top/ip/design_top_clk_divider_0_0/design_top_clk_divider_0_0_sim_netlist.vhdl
-- Design      : design_top_clk_divider_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_top_clk_divider_0_0_clk_divider is
  port (
    clk_div : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_top_clk_divider_0_0_clk_divider : entity is "clk_divider";
end design_top_clk_divider_0_0_clk_divider;

architecture STRUCTURE of design_top_clk_divider_0_0_clk_divider is
  signal \^clk_div\ : STD_LOGIC;
  signal clk_div_sig_i_1_n_0 : STD_LOGIC;
  signal clk_div_sig_i_2_n_0 : STD_LOGIC;
  signal clk_div_sig_i_3_n_0 : STD_LOGIC;
  signal clk_div_sig_i_4_n_0 : STD_LOGIC;
  signal clk_div_sig_i_5_n_0 : STD_LOGIC;
  signal \count_sig[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_sig[0]_i_3_n_0\ : STD_LOGIC;
  signal \count_sig[0]_i_4_n_0\ : STD_LOGIC;
  signal \count_sig[0]_i_5_n_0\ : STD_LOGIC;
  signal \count_sig[0]_i_6_n_0\ : STD_LOGIC;
  signal \count_sig[12]_i_2_n_0\ : STD_LOGIC;
  signal \count_sig[12]_i_3_n_0\ : STD_LOGIC;
  signal \count_sig[12]_i_4_n_0\ : STD_LOGIC;
  signal \count_sig[12]_i_5_n_0\ : STD_LOGIC;
  signal \count_sig[4]_i_2_n_0\ : STD_LOGIC;
  signal \count_sig[4]_i_3_n_0\ : STD_LOGIC;
  signal \count_sig[4]_i_4_n_0\ : STD_LOGIC;
  signal \count_sig[4]_i_5_n_0\ : STD_LOGIC;
  signal \count_sig[8]_i_2_n_0\ : STD_LOGIC;
  signal \count_sig[8]_i_3_n_0\ : STD_LOGIC;
  signal \count_sig[8]_i_4_n_0\ : STD_LOGIC;
  signal \count_sig[8]_i_5_n_0\ : STD_LOGIC;
  signal count_sig_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \count_sig_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \count_sig_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \count_sig_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \count_sig_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \count_sig_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \count_sig_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \count_sig_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_count_sig_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_sig_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_sig_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_sig_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_sig_reg[8]_i_1\ : label is 11;
begin
  clk_div <= \^clk_div\;
clk_div_sig_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF10000000"
    )
        port map (
      I0 => rst,
      I1 => clk_div_sig_i_2_n_0,
      I2 => clk_div_sig_i_3_n_0,
      I3 => clk_div_sig_i_4_n_0,
      I4 => clk_div_sig_i_5_n_0,
      I5 => \^clk_div\,
      O => clk_div_sig_i_1_n_0
    );
clk_div_sig_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_sig_reg(9),
      I1 => count_sig_reg(8),
      I2 => count_sig_reg(11),
      I3 => count_sig_reg(10),
      O => clk_div_sig_i_2_n_0
    );
clk_div_sig_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => count_sig_reg(14),
      I1 => count_sig_reg(15),
      I2 => count_sig_reg(13),
      I3 => count_sig_reg(12),
      O => clk_div_sig_i_3_n_0
    );
clk_div_sig_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => count_sig_reg(7),
      I1 => count_sig_reg(6),
      I2 => count_sig_reg(4),
      I3 => count_sig_reg(3),
      O => clk_div_sig_i_4_n_0
    );
clk_div_sig_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => count_sig_reg(2),
      I1 => count_sig_reg(1),
      I2 => count_sig_reg(5),
      I3 => count_sig_reg(0),
      O => clk_div_sig_i_5_n_0
    );
clk_div_sig_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => clk_div_sig_i_1_n_0,
      Q => \^clk_div\,
      R => '0'
    );
\count_sig[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => count_sig_reg(0),
      I1 => clk_div_sig_i_5_n_0,
      I2 => clk_div_sig_i_4_n_0,
      I3 => clk_div_sig_i_3_n_0,
      I4 => clk_div_sig_i_2_n_0,
      O => \count_sig[0]_i_2_n_0\
    );
\count_sig[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => count_sig_reg(3),
      I1 => clk_div_sig_i_5_n_0,
      I2 => clk_div_sig_i_4_n_0,
      I3 => clk_div_sig_i_3_n_0,
      I4 => clk_div_sig_i_2_n_0,
      O => \count_sig[0]_i_3_n_0\
    );
\count_sig[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => count_sig_reg(2),
      I1 => clk_div_sig_i_5_n_0,
      I2 => clk_div_sig_i_4_n_0,
      I3 => clk_div_sig_i_3_n_0,
      I4 => clk_div_sig_i_2_n_0,
      O => \count_sig[0]_i_4_n_0\
    );
\count_sig[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => count_sig_reg(1),
      I1 => clk_div_sig_i_5_n_0,
      I2 => clk_div_sig_i_4_n_0,
      I3 => clk_div_sig_i_3_n_0,
      I4 => clk_div_sig_i_2_n_0,
      O => \count_sig[0]_i_5_n_0\
    );
\count_sig[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55551555"
    )
        port map (
      I0 => count_sig_reg(0),
      I1 => clk_div_sig_i_5_n_0,
      I2 => clk_div_sig_i_4_n_0,
      I3 => clk_div_sig_i_3_n_0,
      I4 => clk_div_sig_i_2_n_0,
      O => \count_sig[0]_i_6_n_0\
    );
\count_sig[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => count_sig_reg(15),
      I1 => clk_div_sig_i_5_n_0,
      I2 => clk_div_sig_i_4_n_0,
      I3 => clk_div_sig_i_3_n_0,
      I4 => clk_div_sig_i_2_n_0,
      O => \count_sig[12]_i_2_n_0\
    );
\count_sig[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => count_sig_reg(14),
      I1 => clk_div_sig_i_5_n_0,
      I2 => clk_div_sig_i_4_n_0,
      I3 => clk_div_sig_i_3_n_0,
      I4 => clk_div_sig_i_2_n_0,
      O => \count_sig[12]_i_3_n_0\
    );
\count_sig[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => count_sig_reg(13),
      I1 => clk_div_sig_i_5_n_0,
      I2 => clk_div_sig_i_4_n_0,
      I3 => clk_div_sig_i_3_n_0,
      I4 => clk_div_sig_i_2_n_0,
      O => \count_sig[12]_i_4_n_0\
    );
\count_sig[12]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => count_sig_reg(12),
      I1 => clk_div_sig_i_5_n_0,
      I2 => clk_div_sig_i_4_n_0,
      I3 => clk_div_sig_i_3_n_0,
      I4 => clk_div_sig_i_2_n_0,
      O => \count_sig[12]_i_5_n_0\
    );
\count_sig[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => count_sig_reg(7),
      I1 => clk_div_sig_i_5_n_0,
      I2 => clk_div_sig_i_4_n_0,
      I3 => clk_div_sig_i_3_n_0,
      I4 => clk_div_sig_i_2_n_0,
      O => \count_sig[4]_i_2_n_0\
    );
\count_sig[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => count_sig_reg(6),
      I1 => clk_div_sig_i_5_n_0,
      I2 => clk_div_sig_i_4_n_0,
      I3 => clk_div_sig_i_3_n_0,
      I4 => clk_div_sig_i_2_n_0,
      O => \count_sig[4]_i_3_n_0\
    );
\count_sig[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => count_sig_reg(5),
      I1 => clk_div_sig_i_5_n_0,
      I2 => clk_div_sig_i_4_n_0,
      I3 => clk_div_sig_i_3_n_0,
      I4 => clk_div_sig_i_2_n_0,
      O => \count_sig[4]_i_4_n_0\
    );
\count_sig[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => count_sig_reg(4),
      I1 => clk_div_sig_i_5_n_0,
      I2 => clk_div_sig_i_4_n_0,
      I3 => clk_div_sig_i_3_n_0,
      I4 => clk_div_sig_i_2_n_0,
      O => \count_sig[4]_i_5_n_0\
    );
\count_sig[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => count_sig_reg(11),
      I1 => clk_div_sig_i_5_n_0,
      I2 => clk_div_sig_i_4_n_0,
      I3 => clk_div_sig_i_3_n_0,
      I4 => clk_div_sig_i_2_n_0,
      O => \count_sig[8]_i_2_n_0\
    );
\count_sig[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => count_sig_reg(10),
      I1 => clk_div_sig_i_5_n_0,
      I2 => clk_div_sig_i_4_n_0,
      I3 => clk_div_sig_i_3_n_0,
      I4 => clk_div_sig_i_2_n_0,
      O => \count_sig[8]_i_3_n_0\
    );
\count_sig[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => count_sig_reg(9),
      I1 => clk_div_sig_i_5_n_0,
      I2 => clk_div_sig_i_4_n_0,
      I3 => clk_div_sig_i_3_n_0,
      I4 => clk_div_sig_i_2_n_0,
      O => \count_sig[8]_i_4_n_0\
    );
\count_sig[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => count_sig_reg(8),
      I1 => clk_div_sig_i_5_n_0,
      I2 => clk_div_sig_i_4_n_0,
      I3 => clk_div_sig_i_3_n_0,
      I4 => clk_div_sig_i_2_n_0,
      O => \count_sig[8]_i_5_n_0\
    );
\count_sig_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_sig_reg[0]_i_1_n_7\,
      Q => count_sig_reg(0)
    );
\count_sig_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_sig_reg[0]_i_1_n_0\,
      CO(2) => \count_sig_reg[0]_i_1_n_1\,
      CO(1) => \count_sig_reg[0]_i_1_n_2\,
      CO(0) => \count_sig_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \count_sig[0]_i_2_n_0\,
      O(3) => \count_sig_reg[0]_i_1_n_4\,
      O(2) => \count_sig_reg[0]_i_1_n_5\,
      O(1) => \count_sig_reg[0]_i_1_n_6\,
      O(0) => \count_sig_reg[0]_i_1_n_7\,
      S(3) => \count_sig[0]_i_3_n_0\,
      S(2) => \count_sig[0]_i_4_n_0\,
      S(1) => \count_sig[0]_i_5_n_0\,
      S(0) => \count_sig[0]_i_6_n_0\
    );
\count_sig_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_sig_reg[8]_i_1_n_5\,
      Q => count_sig_reg(10)
    );
\count_sig_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_sig_reg[8]_i_1_n_4\,
      Q => count_sig_reg(11)
    );
\count_sig_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_sig_reg[12]_i_1_n_7\,
      Q => count_sig_reg(12)
    );
\count_sig_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig_reg[8]_i_1_n_0\,
      CO(3) => \NLW_count_sig_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \count_sig_reg[12]_i_1_n_1\,
      CO(1) => \count_sig_reg[12]_i_1_n_2\,
      CO(0) => \count_sig_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_sig_reg[12]_i_1_n_4\,
      O(2) => \count_sig_reg[12]_i_1_n_5\,
      O(1) => \count_sig_reg[12]_i_1_n_6\,
      O(0) => \count_sig_reg[12]_i_1_n_7\,
      S(3) => \count_sig[12]_i_2_n_0\,
      S(2) => \count_sig[12]_i_3_n_0\,
      S(1) => \count_sig[12]_i_4_n_0\,
      S(0) => \count_sig[12]_i_5_n_0\
    );
\count_sig_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_sig_reg[12]_i_1_n_6\,
      Q => count_sig_reg(13)
    );
\count_sig_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_sig_reg[12]_i_1_n_5\,
      Q => count_sig_reg(14)
    );
\count_sig_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_sig_reg[12]_i_1_n_4\,
      Q => count_sig_reg(15)
    );
\count_sig_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_sig_reg[0]_i_1_n_6\,
      Q => count_sig_reg(1)
    );
\count_sig_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_sig_reg[0]_i_1_n_5\,
      Q => count_sig_reg(2)
    );
\count_sig_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_sig_reg[0]_i_1_n_4\,
      Q => count_sig_reg(3)
    );
\count_sig_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_sig_reg[4]_i_1_n_7\,
      Q => count_sig_reg(4)
    );
\count_sig_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig_reg[0]_i_1_n_0\,
      CO(3) => \count_sig_reg[4]_i_1_n_0\,
      CO(2) => \count_sig_reg[4]_i_1_n_1\,
      CO(1) => \count_sig_reg[4]_i_1_n_2\,
      CO(0) => \count_sig_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_sig_reg[4]_i_1_n_4\,
      O(2) => \count_sig_reg[4]_i_1_n_5\,
      O(1) => \count_sig_reg[4]_i_1_n_6\,
      O(0) => \count_sig_reg[4]_i_1_n_7\,
      S(3) => \count_sig[4]_i_2_n_0\,
      S(2) => \count_sig[4]_i_3_n_0\,
      S(1) => \count_sig[4]_i_4_n_0\,
      S(0) => \count_sig[4]_i_5_n_0\
    );
\count_sig_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_sig_reg[4]_i_1_n_6\,
      Q => count_sig_reg(5)
    );
\count_sig_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_sig_reg[4]_i_1_n_5\,
      Q => count_sig_reg(6)
    );
\count_sig_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_sig_reg[4]_i_1_n_4\,
      Q => count_sig_reg(7)
    );
\count_sig_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_sig_reg[8]_i_1_n_7\,
      Q => count_sig_reg(8)
    );
\count_sig_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig_reg[4]_i_1_n_0\,
      CO(3) => \count_sig_reg[8]_i_1_n_0\,
      CO(2) => \count_sig_reg[8]_i_1_n_1\,
      CO(1) => \count_sig_reg[8]_i_1_n_2\,
      CO(0) => \count_sig_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_sig_reg[8]_i_1_n_4\,
      O(2) => \count_sig_reg[8]_i_1_n_5\,
      O(1) => \count_sig_reg[8]_i_1_n_6\,
      O(0) => \count_sig_reg[8]_i_1_n_7\,
      S(3) => \count_sig[8]_i_2_n_0\,
      S(2) => \count_sig[8]_i_3_n_0\,
      S(1) => \count_sig[8]_i_4_n_0\,
      S(0) => \count_sig[8]_i_5_n_0\
    );
\count_sig_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_sig_reg[8]_i_1_n_6\,
      Q => count_sig_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_top_clk_divider_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk_div : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_top_clk_divider_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_top_clk_divider_0_0 : entity is "design_top_clk_divider_0_0,clk_divider,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_top_clk_divider_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_top_clk_divider_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_top_clk_divider_0_0 : entity is "clk_divider,Vivado 2021.1.1";
end design_top_clk_divider_0_0;

architecture STRUCTURE of design_top_clk_divider_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_top_clk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_top_clk_divider_0_0_clk_divider
     port map (
      clk => clk,
      clk_div => clk_div,
      rst => rst
    );
end STRUCTURE;
