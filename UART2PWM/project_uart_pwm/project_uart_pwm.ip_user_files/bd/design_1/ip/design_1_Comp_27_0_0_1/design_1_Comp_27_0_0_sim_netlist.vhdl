-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1.1 (lin64) Build 3286242 Wed Jul 28 13:09:46 MDT 2021
-- Date        : Wed Sep 15 15:57:11 2021
-- Host        : adm-127190 running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/esme/Downloads/Lecture3/Lecture_3_PWM_UART/Lecture_3_PWM_UART.gen/sources_1/bd/design_1/ip/design_1_Comp_27_0_0_1/design_1_Comp_27_0_0_sim_netlist.vhdl
-- Design      : design_1_Comp_27_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Comp_27_0_0_Comp_27 is
  port (
    z : out STD_LOGIC;
    y : in STD_LOGIC_VECTOR ( 26 downto 0 );
    x : in STD_LOGIC_VECTOR ( 26 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Comp_27_0_0_Comp_27 : entity is "Comp_27";
end design_1_Comp_27_0_0_Comp_27;

architecture STRUCTURE of design_1_Comp_27_0_0_Comp_27 is
  signal z_INST_0_i_10_n_0 : STD_LOGIC;
  signal z_INST_0_i_11_n_0 : STD_LOGIC;
  signal z_INST_0_i_12_n_0 : STD_LOGIC;
  signal z_INST_0_i_13_n_0 : STD_LOGIC;
  signal z_INST_0_i_14_n_0 : STD_LOGIC;
  signal z_INST_0_i_15_n_0 : STD_LOGIC;
  signal z_INST_0_i_15_n_1 : STD_LOGIC;
  signal z_INST_0_i_15_n_2 : STD_LOGIC;
  signal z_INST_0_i_15_n_3 : STD_LOGIC;
  signal z_INST_0_i_16_n_0 : STD_LOGIC;
  signal z_INST_0_i_17_n_0 : STD_LOGIC;
  signal z_INST_0_i_18_n_0 : STD_LOGIC;
  signal z_INST_0_i_19_n_0 : STD_LOGIC;
  signal z_INST_0_i_1_n_0 : STD_LOGIC;
  signal z_INST_0_i_1_n_1 : STD_LOGIC;
  signal z_INST_0_i_1_n_2 : STD_LOGIC;
  signal z_INST_0_i_1_n_3 : STD_LOGIC;
  signal z_INST_0_i_20_n_0 : STD_LOGIC;
  signal z_INST_0_i_21_n_0 : STD_LOGIC;
  signal z_INST_0_i_22_n_0 : STD_LOGIC;
  signal z_INST_0_i_23_n_0 : STD_LOGIC;
  signal z_INST_0_i_24_n_0 : STD_LOGIC;
  signal z_INST_0_i_25_n_0 : STD_LOGIC;
  signal z_INST_0_i_26_n_0 : STD_LOGIC;
  signal z_INST_0_i_27_n_0 : STD_LOGIC;
  signal z_INST_0_i_28_n_0 : STD_LOGIC;
  signal z_INST_0_i_29_n_0 : STD_LOGIC;
  signal z_INST_0_i_2_n_0 : STD_LOGIC;
  signal z_INST_0_i_30_n_0 : STD_LOGIC;
  signal z_INST_0_i_31_n_0 : STD_LOGIC;
  signal z_INST_0_i_3_n_0 : STD_LOGIC;
  signal z_INST_0_i_4_n_0 : STD_LOGIC;
  signal z_INST_0_i_5_n_0 : STD_LOGIC;
  signal z_INST_0_i_6_n_0 : STD_LOGIC;
  signal z_INST_0_i_6_n_1 : STD_LOGIC;
  signal z_INST_0_i_6_n_2 : STD_LOGIC;
  signal z_INST_0_i_6_n_3 : STD_LOGIC;
  signal z_INST_0_i_7_n_0 : STD_LOGIC;
  signal z_INST_0_i_8_n_0 : STD_LOGIC;
  signal z_INST_0_i_9_n_0 : STD_LOGIC;
  signal z_INST_0_n_3 : STD_LOGIC;
  signal NLW_z_INST_0_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_z_INST_0_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_z_INST_0_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_z_INST_0_i_15_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_z_INST_0_i_6_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of z_INST_0 : label is 11;
  attribute COMPARATOR_THRESHOLD of z_INST_0_i_1 : label is 11;
  attribute COMPARATOR_THRESHOLD of z_INST_0_i_15 : label is 11;
  attribute COMPARATOR_THRESHOLD of z_INST_0_i_6 : label is 11;
begin
z_INST_0: unisim.vcomponents.CARRY4
     port map (
      CI => z_INST_0_i_1_n_0,
      CO(3 downto 2) => NLW_z_INST_0_CO_UNCONNECTED(3 downto 2),
      CO(1) => z,
      CO(0) => z_INST_0_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => z_INST_0_i_2_n_0,
      DI(0) => z_INST_0_i_3_n_0,
      O(3 downto 0) => NLW_z_INST_0_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => z_INST_0_i_4_n_0,
      S(0) => z_INST_0_i_5_n_0
    );
z_INST_0_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => z_INST_0_i_6_n_0,
      CO(3) => z_INST_0_i_1_n_0,
      CO(2) => z_INST_0_i_1_n_1,
      CO(1) => z_INST_0_i_1_n_2,
      CO(0) => z_INST_0_i_1_n_3,
      CYINIT => '0',
      DI(3) => z_INST_0_i_7_n_0,
      DI(2) => z_INST_0_i_8_n_0,
      DI(1) => z_INST_0_i_9_n_0,
      DI(0) => z_INST_0_i_10_n_0,
      O(3 downto 0) => NLW_z_INST_0_i_1_O_UNCONNECTED(3 downto 0),
      S(3) => z_INST_0_i_11_n_0,
      S(2) => z_INST_0_i_12_n_0,
      S(1) => z_INST_0_i_13_n_0,
      S(0) => z_INST_0_i_14_n_0
    );
z_INST_0_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => y(16),
      I1 => x(16),
      I2 => x(17),
      I3 => y(17),
      O => z_INST_0_i_10_n_0
    );
z_INST_0_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => y(22),
      I1 => x(22),
      I2 => y(23),
      I3 => x(23),
      O => z_INST_0_i_11_n_0
    );
z_INST_0_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => y(20),
      I1 => x(20),
      I2 => y(21),
      I3 => x(21),
      O => z_INST_0_i_12_n_0
    );
z_INST_0_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => y(18),
      I1 => x(18),
      I2 => y(19),
      I3 => x(19),
      O => z_INST_0_i_13_n_0
    );
z_INST_0_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => y(16),
      I1 => x(16),
      I2 => y(17),
      I3 => x(17),
      O => z_INST_0_i_14_n_0
    );
z_INST_0_i_15: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => z_INST_0_i_15_n_0,
      CO(2) => z_INST_0_i_15_n_1,
      CO(1) => z_INST_0_i_15_n_2,
      CO(0) => z_INST_0_i_15_n_3,
      CYINIT => '1',
      DI(3) => z_INST_0_i_24_n_0,
      DI(2) => z_INST_0_i_25_n_0,
      DI(1) => z_INST_0_i_26_n_0,
      DI(0) => z_INST_0_i_27_n_0,
      O(3 downto 0) => NLW_z_INST_0_i_15_O_UNCONNECTED(3 downto 0),
      S(3) => z_INST_0_i_28_n_0,
      S(2) => z_INST_0_i_29_n_0,
      S(1) => z_INST_0_i_30_n_0,
      S(0) => z_INST_0_i_31_n_0
    );
z_INST_0_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => y(14),
      I1 => x(14),
      I2 => x(15),
      I3 => y(15),
      O => z_INST_0_i_16_n_0
    );
z_INST_0_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => y(12),
      I1 => x(12),
      I2 => x(13),
      I3 => y(13),
      O => z_INST_0_i_17_n_0
    );
z_INST_0_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => y(10),
      I1 => x(10),
      I2 => x(11),
      I3 => y(11),
      O => z_INST_0_i_18_n_0
    );
z_INST_0_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => y(8),
      I1 => x(8),
      I2 => x(9),
      I3 => y(9),
      O => z_INST_0_i_19_n_0
    );
z_INST_0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y(26),
      I1 => x(26),
      O => z_INST_0_i_2_n_0
    );
z_INST_0_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => y(14),
      I1 => x(14),
      I2 => y(15),
      I3 => x(15),
      O => z_INST_0_i_20_n_0
    );
z_INST_0_i_21: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => y(12),
      I1 => x(12),
      I2 => y(13),
      I3 => x(13),
      O => z_INST_0_i_21_n_0
    );
z_INST_0_i_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => y(10),
      I1 => x(10),
      I2 => y(11),
      I3 => x(11),
      O => z_INST_0_i_22_n_0
    );
z_INST_0_i_23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => y(8),
      I1 => x(8),
      I2 => y(9),
      I3 => x(9),
      O => z_INST_0_i_23_n_0
    );
z_INST_0_i_24: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => y(6),
      I1 => x(6),
      I2 => x(7),
      I3 => y(7),
      O => z_INST_0_i_24_n_0
    );
z_INST_0_i_25: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => y(4),
      I1 => x(4),
      I2 => x(5),
      I3 => y(5),
      O => z_INST_0_i_25_n_0
    );
z_INST_0_i_26: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => y(2),
      I1 => x(2),
      I2 => x(3),
      I3 => y(3),
      O => z_INST_0_i_26_n_0
    );
z_INST_0_i_27: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => y(0),
      I1 => x(0),
      I2 => x(1),
      I3 => y(1),
      O => z_INST_0_i_27_n_0
    );
z_INST_0_i_28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => y(6),
      I1 => x(6),
      I2 => y(7),
      I3 => x(7),
      O => z_INST_0_i_28_n_0
    );
z_INST_0_i_29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => y(4),
      I1 => x(4),
      I2 => y(5),
      I3 => x(5),
      O => z_INST_0_i_29_n_0
    );
z_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => y(24),
      I1 => x(24),
      I2 => x(25),
      I3 => y(25),
      O => z_INST_0_i_3_n_0
    );
z_INST_0_i_30: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => y(2),
      I1 => x(2),
      I2 => y(3),
      I3 => x(3),
      O => z_INST_0_i_30_n_0
    );
z_INST_0_i_31: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => y(0),
      I1 => x(0),
      I2 => y(1),
      I3 => x(1),
      O => z_INST_0_i_31_n_0
    );
z_INST_0_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => x(26),
      I1 => y(26),
      O => z_INST_0_i_4_n_0
    );
z_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => y(24),
      I1 => x(24),
      I2 => y(25),
      I3 => x(25),
      O => z_INST_0_i_5_n_0
    );
z_INST_0_i_6: unisim.vcomponents.CARRY4
     port map (
      CI => z_INST_0_i_15_n_0,
      CO(3) => z_INST_0_i_6_n_0,
      CO(2) => z_INST_0_i_6_n_1,
      CO(1) => z_INST_0_i_6_n_2,
      CO(0) => z_INST_0_i_6_n_3,
      CYINIT => '0',
      DI(3) => z_INST_0_i_16_n_0,
      DI(2) => z_INST_0_i_17_n_0,
      DI(1) => z_INST_0_i_18_n_0,
      DI(0) => z_INST_0_i_19_n_0,
      O(3 downto 0) => NLW_z_INST_0_i_6_O_UNCONNECTED(3 downto 0),
      S(3) => z_INST_0_i_20_n_0,
      S(2) => z_INST_0_i_21_n_0,
      S(1) => z_INST_0_i_22_n_0,
      S(0) => z_INST_0_i_23_n_0
    );
z_INST_0_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => y(22),
      I1 => x(22),
      I2 => x(23),
      I3 => y(23),
      O => z_INST_0_i_7_n_0
    );
z_INST_0_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => y(20),
      I1 => x(20),
      I2 => x(21),
      I3 => y(21),
      O => z_INST_0_i_8_n_0
    );
z_INST_0_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => y(18),
      I1 => x(18),
      I2 => x(19),
      I3 => y(19),
      O => z_INST_0_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Comp_27_0_0 is
  port (
    x : in STD_LOGIC_VECTOR ( 26 downto 0 );
    y : in STD_LOGIC_VECTOR ( 26 downto 0 );
    z : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Comp_27_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Comp_27_0_0 : entity is "design_1_Comp_27_0_0,Comp_27,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_Comp_27_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_Comp_27_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_Comp_27_0_0 : entity is "Comp_27,Vivado 2021.1.1";
end design_1_Comp_27_0_0;

architecture STRUCTURE of design_1_Comp_27_0_0 is
begin
U0: entity work.design_1_Comp_27_0_0_Comp_27
     port map (
      x(26 downto 0) => x(26 downto 0),
      y(26 downto 0) => y(26 downto 0),
      z => z
    );
end STRUCTURE;
