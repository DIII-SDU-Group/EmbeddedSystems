-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1.1 (lin64) Build 3286242 Wed Jul 28 13:09:46 MDT 2021
-- Date        : Mon Oct 25 17:20:33 2021
-- Host        : adm-127190 running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/esme/Desktop/VivadoProjects/EmbeddedSystems/IMU_SPI_UART/project_imu_spi_uart/project_imu_spi_uart.gen/sources_1/bd/design_top/ip/design_top_Addr_ctrl_0_0/design_top_Addr_ctrl_0_0_sim_netlist.vhdl
-- Design      : design_top_Addr_ctrl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_top_Addr_ctrl_0_0_Addr_ctrl is
  port (
    dout : out STD_LOGIC_VECTOR ( 5 downto 0 );
    addr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_top_Addr_ctrl_0_0_Addr_ctrl : entity is "Addr_ctrl";
end design_top_Addr_ctrl_0_0_Addr_ctrl;

architecture STRUCTURE of design_top_Addr_ctrl_0_0_Addr_ctrl is
  signal \dout[5]_i_1_n_0\ : STD_LOGIC;
  signal \rom[0]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dout[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \dout[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \dout[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \dout[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \dout[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \dout[5]_i_1\ : label is "soft_lutpair0";
begin
\dout[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F00"
    )
        port map (
      I0 => addr(1),
      I1 => addr(2),
      I2 => addr(3),
      I3 => addr(0),
      O => \rom[0]_0\(0)
    );
\dout[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F00"
    )
        port map (
      I0 => addr(0),
      I1 => addr(2),
      I2 => addr(3),
      I3 => addr(1),
      O => \rom[0]_0\(1)
    );
\dout[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr(2),
      O => \rom[0]_0\(2)
    );
\dout[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A54"
    )
        port map (
      I0 => addr(3),
      I1 => addr(1),
      I2 => addr(0),
      I3 => addr(2),
      O => \rom[0]_0\(3)
    );
\dout[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6EEF"
    )
        port map (
      I0 => addr(3),
      I1 => addr(2),
      I2 => addr(0),
      I3 => addr(1),
      O => \rom[0]_0\(4)
    );
\dout[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => addr(2),
      I1 => addr(1),
      I2 => addr(0),
      I3 => addr(3),
      O => \dout[5]_i_1_n_0\
    );
\dout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rom[0]_0\(0),
      Q => dout(0),
      R => '0'
    );
\dout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rom[0]_0\(1),
      Q => dout(1),
      R => '0'
    );
\dout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rom[0]_0\(2),
      Q => dout(2),
      R => '0'
    );
\dout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rom[0]_0\(3),
      Q => dout(3),
      R => '0'
    );
\dout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rom[0]_0\(4),
      Q => dout(4),
      R => '0'
    );
\dout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dout[5]_i_1_n_0\,
      Q => dout(5),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_top_Addr_ctrl_0_0 is
  port (
    clk : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_top_Addr_ctrl_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_top_Addr_ctrl_0_0 : entity is "design_top_Addr_ctrl_0_0,Addr_ctrl,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_top_Addr_ctrl_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_top_Addr_ctrl_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_top_Addr_ctrl_0_0 : entity is "Addr_ctrl,Vivado 2021.1.1";
end design_top_Addr_ctrl_0_0;

architecture STRUCTURE of design_top_Addr_ctrl_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^dout\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
begin
  dout(7) <= \<const0>\;
  dout(6) <= \<const0>\;
  dout(5 downto 0) <= \^dout\(5 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_top_Addr_ctrl_0_0_Addr_ctrl
     port map (
      addr(3 downto 0) => addr(3 downto 0),
      clk => clk,
      dout(5 downto 0) => \^dout\(5 downto 0)
    );
end STRUCTURE;
