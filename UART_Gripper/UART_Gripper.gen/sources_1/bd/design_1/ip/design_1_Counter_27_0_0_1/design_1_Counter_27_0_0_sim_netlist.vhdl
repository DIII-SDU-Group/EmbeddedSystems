-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1.1 (lin64) Build 3286242 Wed Jul 28 13:09:46 MDT 2021
-- Date        : Mon Nov  1 18:23:11 2021
-- Host        : adm-127190 running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/esme/Desktop/VivadoProjects/EmbeddedSystems/UART_Gripper/UART_Gripper.gen/sources_1/bd/design_1/ip/design_1_Counter_27_0_0_1/design_1_Counter_27_0_0_sim_netlist.vhdl
-- Design      : design_1_Counter_27_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Counter_27_0_0_Counter_27 is
  port (
    Q : out STD_LOGIC_VECTOR ( 21 downto 0 );
    en : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Counter_27_0_0_Counter_27 : entity is "Counter_27";
end design_1_Counter_27_0_0_Counter_27;

architecture STRUCTURE of design_1_Counter_27_0_0_Counter_27 is
  signal \^q\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \count_bin[21]_i_2_n_0\ : STD_LOGIC;
  signal \count_bin[21]_i_3_n_0\ : STD_LOGIC;
  signal \count_bin[21]_i_4_n_0\ : STD_LOGIC;
  signal \count_bin[21]_i_5_n_0\ : STD_LOGIC;
  signal \count_bin[21]_i_7_n_0\ : STD_LOGIC;
  signal \count_bin[21]_i_8_n_0\ : STD_LOGIC;
  signal \count_bin[21]_i_9_n_0\ : STD_LOGIC;
  signal \count_bin_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \count_bin_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \count_bin_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \count_bin_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \count_bin_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \count_bin_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \count_bin_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \count_bin_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \count_bin_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \count_bin_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \count_bin_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \count_bin_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \count_bin_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \count_bin_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \count_bin_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \count_bin_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \count_bin_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \count_bin_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \count_bin_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \count_bin_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 21 downto 1 );
  signal \NLW_count_bin_reg[21]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_bin_reg[21]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_bin_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \count_bin_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \count_bin_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \count_bin_reg[21]_i_6\ : label is 35;
  attribute ADDER_THRESHOLD of \count_bin_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \count_bin_reg[8]_i_2\ : label is 35;
begin
  Q(21 downto 0) <= \^q\(21 downto 0);
\count_bin[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DDD5D5D5"
    )
        port map (
      I0 => \^q\(21),
      I1 => \count_bin[21]_i_2_n_0\,
      I2 => \count_bin[21]_i_3_n_0\,
      I3 => \count_bin[21]_i_4_n_0\,
      I4 => \count_bin[21]_i_5_n_0\,
      I5 => \^q\(0),
      O => p_0_in(0)
    );
\count_bin[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD5D5D500000000"
    )
        port map (
      I0 => \^q\(21),
      I1 => \count_bin[21]_i_2_n_0\,
      I2 => \count_bin[21]_i_3_n_0\,
      I3 => \count_bin[21]_i_4_n_0\,
      I4 => \count_bin[21]_i_5_n_0\,
      I5 => plusOp(10),
      O => p_0_in(10)
    );
\count_bin[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD5D5D500000000"
    )
        port map (
      I0 => \^q\(21),
      I1 => \count_bin[21]_i_2_n_0\,
      I2 => \count_bin[21]_i_3_n_0\,
      I3 => \count_bin[21]_i_4_n_0\,
      I4 => \count_bin[21]_i_5_n_0\,
      I5 => plusOp(11),
      O => p_0_in(11)
    );
\count_bin[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD5D5D500000000"
    )
        port map (
      I0 => \^q\(21),
      I1 => \count_bin[21]_i_2_n_0\,
      I2 => \count_bin[21]_i_3_n_0\,
      I3 => \count_bin[21]_i_4_n_0\,
      I4 => \count_bin[21]_i_5_n_0\,
      I5 => plusOp(12),
      O => p_0_in(12)
    );
\count_bin[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD5D5D500000000"
    )
        port map (
      I0 => \^q\(21),
      I1 => \count_bin[21]_i_2_n_0\,
      I2 => \count_bin[21]_i_3_n_0\,
      I3 => \count_bin[21]_i_4_n_0\,
      I4 => \count_bin[21]_i_5_n_0\,
      I5 => plusOp(13),
      O => p_0_in(13)
    );
\count_bin[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD5D5D500000000"
    )
        port map (
      I0 => \^q\(21),
      I1 => \count_bin[21]_i_2_n_0\,
      I2 => \count_bin[21]_i_3_n_0\,
      I3 => \count_bin[21]_i_4_n_0\,
      I4 => \count_bin[21]_i_5_n_0\,
      I5 => plusOp(14),
      O => p_0_in(14)
    );
\count_bin[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD5D5D500000000"
    )
        port map (
      I0 => \^q\(21),
      I1 => \count_bin[21]_i_2_n_0\,
      I2 => \count_bin[21]_i_3_n_0\,
      I3 => \count_bin[21]_i_4_n_0\,
      I4 => \count_bin[21]_i_5_n_0\,
      I5 => plusOp(15),
      O => p_0_in(15)
    );
\count_bin[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD5D5D500000000"
    )
        port map (
      I0 => \^q\(21),
      I1 => \count_bin[21]_i_2_n_0\,
      I2 => \count_bin[21]_i_3_n_0\,
      I3 => \count_bin[21]_i_4_n_0\,
      I4 => \count_bin[21]_i_5_n_0\,
      I5 => plusOp(16),
      O => p_0_in(16)
    );
\count_bin[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD5D5D500000000"
    )
        port map (
      I0 => \^q\(21),
      I1 => \count_bin[21]_i_2_n_0\,
      I2 => \count_bin[21]_i_3_n_0\,
      I3 => \count_bin[21]_i_4_n_0\,
      I4 => \count_bin[21]_i_5_n_0\,
      I5 => plusOp(17),
      O => p_0_in(17)
    );
\count_bin[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD5D5D500000000"
    )
        port map (
      I0 => \^q\(21),
      I1 => \count_bin[21]_i_2_n_0\,
      I2 => \count_bin[21]_i_3_n_0\,
      I3 => \count_bin[21]_i_4_n_0\,
      I4 => \count_bin[21]_i_5_n_0\,
      I5 => plusOp(18),
      O => p_0_in(18)
    );
\count_bin[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD5D5D500000000"
    )
        port map (
      I0 => \^q\(21),
      I1 => \count_bin[21]_i_2_n_0\,
      I2 => \count_bin[21]_i_3_n_0\,
      I3 => \count_bin[21]_i_4_n_0\,
      I4 => \count_bin[21]_i_5_n_0\,
      I5 => plusOp(19),
      O => p_0_in(19)
    );
\count_bin[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD5D5D500000000"
    )
        port map (
      I0 => \^q\(21),
      I1 => \count_bin[21]_i_2_n_0\,
      I2 => \count_bin[21]_i_3_n_0\,
      I3 => \count_bin[21]_i_4_n_0\,
      I4 => \count_bin[21]_i_5_n_0\,
      I5 => plusOp(1),
      O => p_0_in(1)
    );
\count_bin[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD5D5D500000000"
    )
        port map (
      I0 => \^q\(21),
      I1 => \count_bin[21]_i_2_n_0\,
      I2 => \count_bin[21]_i_3_n_0\,
      I3 => \count_bin[21]_i_4_n_0\,
      I4 => \count_bin[21]_i_5_n_0\,
      I5 => plusOp(20),
      O => p_0_in(20)
    );
\count_bin[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD5D5D500000000"
    )
        port map (
      I0 => \^q\(21),
      I1 => \count_bin[21]_i_2_n_0\,
      I2 => \count_bin[21]_i_3_n_0\,
      I3 => \count_bin[21]_i_4_n_0\,
      I4 => \count_bin[21]_i_5_n_0\,
      I5 => plusOp(21),
      O => p_0_in(21)
    );
\count_bin[21]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(19),
      I1 => \^q\(20),
      O => \count_bin[21]_i_2_n_0\
    );
\count_bin[21]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(17),
      I1 => \^q\(18),
      O => \count_bin[21]_i_3_n_0\
    );
\count_bin[21]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^q\(16),
      I1 => \^q\(15),
      I2 => \^q\(14),
      O => \count_bin[21]_i_4_n_0\
    );
\count_bin[21]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"54FF0000FFFFFFFF"
    )
        port map (
      I0 => \^q\(9),
      I1 => \count_bin[21]_i_7_n_0\,
      I2 => \count_bin[21]_i_8_n_0\,
      I3 => \^q\(10),
      I4 => \count_bin[21]_i_9_n_0\,
      I5 => \^q\(13),
      O => \count_bin[21]_i_5_n_0\
    );
\count_bin[21]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"777F"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(7),
      I2 => \^q\(5),
      I3 => \^q\(6),
      O => \count_bin[21]_i_7_n_0\
    );
\count_bin[21]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(6),
      I3 => \^q\(0),
      I4 => \^q\(4),
      I5 => \^q\(3),
      O => \count_bin[21]_i_8_n_0\
    );
\count_bin[21]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^q\(12),
      O => \count_bin[21]_i_9_n_0\
    );
\count_bin[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD5D5D500000000"
    )
        port map (
      I0 => \^q\(21),
      I1 => \count_bin[21]_i_2_n_0\,
      I2 => \count_bin[21]_i_3_n_0\,
      I3 => \count_bin[21]_i_4_n_0\,
      I4 => \count_bin[21]_i_5_n_0\,
      I5 => plusOp(2),
      O => p_0_in(2)
    );
\count_bin[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD5D5D500000000"
    )
        port map (
      I0 => \^q\(21),
      I1 => \count_bin[21]_i_2_n_0\,
      I2 => \count_bin[21]_i_3_n_0\,
      I3 => \count_bin[21]_i_4_n_0\,
      I4 => \count_bin[21]_i_5_n_0\,
      I5 => plusOp(3),
      O => p_0_in(3)
    );
\count_bin[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD5D5D500000000"
    )
        port map (
      I0 => \^q\(21),
      I1 => \count_bin[21]_i_2_n_0\,
      I2 => \count_bin[21]_i_3_n_0\,
      I3 => \count_bin[21]_i_4_n_0\,
      I4 => \count_bin[21]_i_5_n_0\,
      I5 => plusOp(4),
      O => p_0_in(4)
    );
\count_bin[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD5D5D500000000"
    )
        port map (
      I0 => \^q\(21),
      I1 => \count_bin[21]_i_2_n_0\,
      I2 => \count_bin[21]_i_3_n_0\,
      I3 => \count_bin[21]_i_4_n_0\,
      I4 => \count_bin[21]_i_5_n_0\,
      I5 => plusOp(5),
      O => p_0_in(5)
    );
\count_bin[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD5D5D500000000"
    )
        port map (
      I0 => \^q\(21),
      I1 => \count_bin[21]_i_2_n_0\,
      I2 => \count_bin[21]_i_3_n_0\,
      I3 => \count_bin[21]_i_4_n_0\,
      I4 => \count_bin[21]_i_5_n_0\,
      I5 => plusOp(6),
      O => p_0_in(6)
    );
\count_bin[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD5D5D500000000"
    )
        port map (
      I0 => \^q\(21),
      I1 => \count_bin[21]_i_2_n_0\,
      I2 => \count_bin[21]_i_3_n_0\,
      I3 => \count_bin[21]_i_4_n_0\,
      I4 => \count_bin[21]_i_5_n_0\,
      I5 => plusOp(7),
      O => p_0_in(7)
    );
\count_bin[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD5D5D500000000"
    )
        port map (
      I0 => \^q\(21),
      I1 => \count_bin[21]_i_2_n_0\,
      I2 => \count_bin[21]_i_3_n_0\,
      I3 => \count_bin[21]_i_4_n_0\,
      I4 => \count_bin[21]_i_5_n_0\,
      I5 => plusOp(8),
      O => p_0_in(8)
    );
\count_bin[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD5D5D500000000"
    )
        port map (
      I0 => \^q\(21),
      I1 => \count_bin[21]_i_2_n_0\,
      I2 => \count_bin[21]_i_3_n_0\,
      I3 => \count_bin[21]_i_4_n_0\,
      I4 => \count_bin[21]_i_5_n_0\,
      I5 => plusOp(9),
      O => p_0_in(9)
    );
\count_bin_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(0),
      Q => \^q\(0)
    );
\count_bin_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(10),
      Q => \^q\(10)
    );
\count_bin_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(11),
      Q => \^q\(11)
    );
\count_bin_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(12),
      Q => \^q\(12)
    );
\count_bin_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_bin_reg[8]_i_2_n_0\,
      CO(3) => \count_bin_reg[12]_i_2_n_0\,
      CO(2) => \count_bin_reg[12]_i_2_n_1\,
      CO(1) => \count_bin_reg[12]_i_2_n_2\,
      CO(0) => \count_bin_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(12 downto 9),
      S(3 downto 0) => \^q\(12 downto 9)
    );
\count_bin_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(13),
      Q => \^q\(13)
    );
\count_bin_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(14),
      Q => \^q\(14)
    );
\count_bin_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(15),
      Q => \^q\(15)
    );
\count_bin_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(16),
      Q => \^q\(16)
    );
\count_bin_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_bin_reg[12]_i_2_n_0\,
      CO(3) => \count_bin_reg[16]_i_2_n_0\,
      CO(2) => \count_bin_reg[16]_i_2_n_1\,
      CO(1) => \count_bin_reg[16]_i_2_n_2\,
      CO(0) => \count_bin_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(16 downto 13),
      S(3 downto 0) => \^q\(16 downto 13)
    );
\count_bin_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(17),
      Q => \^q\(17)
    );
\count_bin_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(18),
      Q => \^q\(18)
    );
\count_bin_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(19),
      Q => \^q\(19)
    );
\count_bin_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(1),
      Q => \^q\(1)
    );
\count_bin_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(20),
      Q => \^q\(20)
    );
\count_bin_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_bin_reg[16]_i_2_n_0\,
      CO(3) => \count_bin_reg[20]_i_2_n_0\,
      CO(2) => \count_bin_reg[20]_i_2_n_1\,
      CO(1) => \count_bin_reg[20]_i_2_n_2\,
      CO(0) => \count_bin_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(20 downto 17),
      S(3 downto 0) => \^q\(20 downto 17)
    );
\count_bin_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(21),
      Q => \^q\(21)
    );
\count_bin_reg[21]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_bin_reg[20]_i_2_n_0\,
      CO(3 downto 0) => \NLW_count_bin_reg[21]_i_6_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_count_bin_reg[21]_i_6_O_UNCONNECTED\(3 downto 1),
      O(0) => plusOp(21),
      S(3 downto 1) => B"000",
      S(0) => \^q\(21)
    );
\count_bin_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(2),
      Q => \^q\(2)
    );
\count_bin_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(3),
      Q => \^q\(3)
    );
\count_bin_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(4),
      Q => \^q\(4)
    );
\count_bin_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_bin_reg[4]_i_2_n_0\,
      CO(2) => \count_bin_reg[4]_i_2_n_1\,
      CO(1) => \count_bin_reg[4]_i_2_n_2\,
      CO(0) => \count_bin_reg[4]_i_2_n_3\,
      CYINIT => \^q\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(4 downto 1),
      S(3 downto 0) => \^q\(4 downto 1)
    );
\count_bin_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(5),
      Q => \^q\(5)
    );
\count_bin_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(6),
      Q => \^q\(6)
    );
\count_bin_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(7),
      Q => \^q\(7)
    );
\count_bin_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(8),
      Q => \^q\(8)
    );
\count_bin_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_bin_reg[4]_i_2_n_0\,
      CO(3) => \count_bin_reg[8]_i_2_n_0\,
      CO(2) => \count_bin_reg[8]_i_2_n_1\,
      CO(1) => \count_bin_reg[8]_i_2_n_2\,
      CO(0) => \count_bin_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(8 downto 5),
      S(3 downto 0) => \^q\(8 downto 5)
    );
\count_bin_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(9),
      Q => \^q\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Counter_27_0_0 is
  port (
    en : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    count : out STD_LOGIC_VECTOR ( 26 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Counter_27_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Counter_27_0_0 : entity is "design_1_Counter_27_0_0,Counter_27,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_Counter_27_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_Counter_27_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_Counter_27_0_0 : entity is "Counter_27,Vivado 2021.1.1";
end design_1_Counter_27_0_0;

architecture STRUCTURE of design_1_Counter_27_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^count\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  count(26) <= \<const0>\;
  count(25) <= \<const0>\;
  count(24) <= \<const0>\;
  count(23) <= \<const0>\;
  count(22) <= \<const0>\;
  count(21 downto 0) <= \^count\(21 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_Counter_27_0_0_Counter_27
     port map (
      Q(21 downto 0) => \^count\(21 downto 0),
      clk => clk,
      en => en,
      rst => rst
    );
end STRUCTURE;
