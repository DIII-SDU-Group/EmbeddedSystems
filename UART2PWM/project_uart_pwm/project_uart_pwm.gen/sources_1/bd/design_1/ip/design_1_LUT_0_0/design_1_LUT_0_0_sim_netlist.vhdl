-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1.1 (lin64) Build 3286242 Wed Jul 28 13:09:46 MDT 2021
-- Date        : Mon Sep 27 17:25:31 2021
-- Host        : adm-127190 running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/esme/Desktop/VivadoProjects/EmbeddedSystems/UART2PWM/project_uart_pwm/project_uart_pwm.gen/sources_1/bd/design_1/ip/design_1_LUT_0_0/design_1_LUT_0_0_sim_netlist.vhdl
-- Design      : design_1_LUT_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_LUT_0_0_LUT is
  port (
    bits : out STD_LOGIC_VECTOR ( 18 downto 0 );
    percent : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_LUT_0_0_LUT : entity is "LUT";
end design_1_LUT_0_0_LUT;

architecture STRUCTURE of design_1_LUT_0_0_LUT is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bits[10]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bits[11]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \bits[13]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bits[14]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bits[15]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bits[16]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bits[17]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bits[18]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bits[19]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bits[20]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bits[21]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bits[2]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bits[4]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \bits[5]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bits[6]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bits[7]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bits[8]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bits[9]_INST_0\ : label is "soft_lutpair2";
begin
\bits[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8202"
    )
        port map (
      I0 => percent(3),
      I1 => percent(1),
      I2 => percent(2),
      I3 => percent(0),
      O => bits(8)
    );
\bits[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => percent(3),
      I1 => percent(1),
      I2 => percent(2),
      O => bits(9)
    );
\bits[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F80"
    )
        port map (
      I0 => percent(2),
      I1 => percent(0),
      I2 => percent(3),
      I3 => percent(1),
      O => bits(10)
    );
\bits[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C778"
    )
        port map (
      I0 => percent(1),
      I1 => percent(3),
      I2 => percent(2),
      I3 => percent(0),
      O => bits(11)
    );
\bits[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CF12"
    )
        port map (
      I0 => percent(3),
      I1 => percent(2),
      I2 => percent(0),
      I3 => percent(1),
      O => bits(12)
    );
\bits[16]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1534"
    )
        port map (
      I0 => percent(3),
      I1 => percent(2),
      I2 => percent(1),
      I3 => percent(0),
      O => bits(13)
    );
\bits[17]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFE"
    )
        port map (
      I0 => percent(3),
      I1 => percent(2),
      I2 => percent(0),
      I3 => percent(1),
      O => bits(14)
    );
\bits[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0056"
    )
        port map (
      I0 => percent(3),
      I1 => percent(2),
      I2 => percent(1),
      I3 => percent(0),
      O => bits(15)
    );
\bits[19]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5006"
    )
        port map (
      I0 => percent(3),
      I1 => percent(2),
      I2 => percent(1),
      I3 => percent(0),
      O => bits(16)
    );
\bits[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4442"
    )
        port map (
      I0 => percent(3),
      I1 => percent(2),
      I2 => percent(0),
      I3 => percent(1),
      O => bits(17)
    );
\bits[21]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => percent(3),
      I1 => percent(2),
      I2 => percent(0),
      I3 => percent(1),
      O => bits(18)
    );
\bits[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => percent(3),
      I1 => percent(0),
      I2 => percent(1),
      I3 => percent(2),
      O => bits(0)
    );
\bits[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => percent(3),
      I1 => percent(1),
      O => bits(1)
    );
\bits[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => percent(2),
      I1 => percent(3),
      I2 => percent(0),
      O => bits(2)
    );
\bits[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F20"
    )
        port map (
      I0 => percent(2),
      I1 => percent(0),
      I2 => percent(3),
      I3 => percent(1),
      O => bits(3)
    );
\bits[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => percent(0),
      I1 => percent(1),
      I2 => percent(3),
      I3 => percent(2),
      O => bits(4)
    );
\bits[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2FB0"
    )
        port map (
      I0 => percent(2),
      I1 => percent(1),
      I2 => percent(3),
      I3 => percent(0),
      O => bits(5)
    );
\bits[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => percent(2),
      I1 => percent(0),
      I2 => percent(3),
      I3 => percent(1),
      O => bits(6)
    );
\bits[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F00"
    )
        port map (
      I0 => percent(1),
      I1 => percent(0),
      I2 => percent(3),
      I3 => percent(2),
      O => bits(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_LUT_0_0 is
  port (
    percent : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bits : out STD_LOGIC_VECTOR ( 26 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_LUT_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_LUT_0_0 : entity is "design_1_LUT_0_0,LUT,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_LUT_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_LUT_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_LUT_0_0 : entity is "LUT,Vivado 2021.1.1";
end design_1_LUT_0_0;

architecture STRUCTURE of design_1_LUT_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^bits\ : STD_LOGIC_VECTOR ( 21 downto 2 );
  signal \^percent\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  \^percent\(3 downto 0) <= percent(3 downto 0);
  bits(26) <= \<const0>\;
  bits(25) <= \<const0>\;
  bits(24) <= \<const0>\;
  bits(23) <= \<const0>\;
  bits(22) <= \<const0>\;
  bits(21 downto 13) <= \^bits\(21 downto 13);
  bits(12) <= \^percent\(0);
  bits(11 downto 2) <= \^bits\(11 downto 2);
  bits(1) <= \<const0>\;
  bits(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_LUT_0_0_LUT
     port map (
      bits(18 downto 10) => \^bits\(21 downto 13),
      bits(9 downto 0) => \^bits\(11 downto 2),
      percent(3 downto 0) => \^percent\(3 downto 0)
    );
end STRUCTURE;
