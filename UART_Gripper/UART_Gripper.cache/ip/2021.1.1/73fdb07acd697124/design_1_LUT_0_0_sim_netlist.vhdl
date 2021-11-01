-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1.1 (lin64) Build 3286242 Wed Jul 28 13:09:46 MDT 2021
-- Date        : Mon Nov  1 18:23:09 2021
-- Host        : adm-127190 running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_LUT_0_0_sim_netlist.vhdl
-- Design      : design_1_LUT_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LUT is
  port (
    bits : out STD_LOGIC_VECTOR ( 20 downto 0 );
    percent : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LUT;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LUT is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bits[10]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bits[11]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bits[12]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bits[13]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bits[14]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bits[15]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bits[16]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bits[17]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bits[18]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bits[19]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bits[1]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bits[20]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \bits[21]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \bits[2]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bits[3]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bits[4]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bits[5]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bits[6]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bits[8]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bits[9]_INST_0\ : label is "soft_lutpair3";
begin
\bits[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => percent(3),
      I1 => percent(1),
      I2 => percent(2),
      O => bits(9)
    );
\bits[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08A8"
    )
        port map (
      I0 => percent(3),
      I1 => percent(1),
      I2 => percent(2),
      I3 => percent(0),
      O => bits(10)
    );
\bits[12]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => percent(1),
      I1 => percent(2),
      I2 => percent(3),
      I3 => percent(0),
      O => bits(11)
    );
\bits[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F80"
    )
        port map (
      I0 => percent(2),
      I1 => percent(0),
      I2 => percent(3),
      I3 => percent(1),
      O => bits(12)
    );
\bits[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47F0"
    )
        port map (
      I0 => percent(1),
      I1 => percent(3),
      I2 => percent(2),
      I3 => percent(0),
      O => bits(13)
    );
\bits[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C512"
    )
        port map (
      I0 => percent(3),
      I1 => percent(2),
      I2 => percent(0),
      I3 => percent(1),
      O => bits(14)
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
      O => bits(15)
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
      O => bits(16)
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
      O => bits(17)
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
      O => bits(18)
    );
\bits[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => percent(3),
      I1 => percent(0),
      I2 => percent(2),
      O => bits(0)
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
      O => bits(19)
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
      O => bits(20)
    );
\bits[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A080"
    )
        port map (
      I0 => percent(3),
      I1 => percent(0),
      I2 => percent(1),
      I3 => percent(2),
      O => bits(1)
    );
\bits[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => percent(3),
      I1 => percent(0),
      I2 => percent(1),
      I3 => percent(2),
      O => bits(2)
    );
\bits[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F40"
    )
        port map (
      I0 => percent(1),
      I1 => percent(2),
      I2 => percent(3),
      I3 => percent(0),
      O => bits(3)
    );
\bits[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F20"
    )
        port map (
      I0 => percent(2),
      I1 => percent(0),
      I2 => percent(3),
      I3 => percent(1),
      O => bits(4)
    );
\bits[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F00"
    )
        port map (
      I0 => percent(1),
      I1 => percent(0),
      I2 => percent(3),
      I3 => percent(2),
      O => bits(5)
    );
\bits[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => percent(3),
      I1 => percent(0),
      O => bits(6)
    );
\bits[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF60"
    )
        port map (
      I0 => percent(2),
      I1 => percent(0),
      I2 => percent(3),
      I3 => percent(1),
      O => bits(7)
    );
\bits[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => percent(0),
      I1 => percent(1),
      I2 => percent(3),
      I3 => percent(2),
      O => bits(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    percent : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bits : out STD_LOGIC_VECTOR ( 26 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_LUT_0_0,LUT,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "LUT,Vivado 2021.1.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^bits\ : STD_LOGIC_VECTOR ( 21 downto 1 );
begin
  bits(26) <= \<const0>\;
  bits(25) <= \<const0>\;
  bits(24) <= \<const0>\;
  bits(23) <= \<const0>\;
  bits(22) <= \<const0>\;
  bits(21 downto 1) <= \^bits\(21 downto 1);
  bits(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LUT
     port map (
      bits(20 downto 0) => \^bits\(21 downto 1),
      percent(3 downto 0) => percent(3 downto 0)
    );
end STRUCTURE;
