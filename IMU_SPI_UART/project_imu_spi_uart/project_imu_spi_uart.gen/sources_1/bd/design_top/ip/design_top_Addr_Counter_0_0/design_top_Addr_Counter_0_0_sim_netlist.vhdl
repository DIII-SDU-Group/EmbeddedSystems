-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1.1 (lin64) Build 3286242 Wed Jul 28 13:09:46 MDT 2021
-- Date        : Mon Oct 25 17:20:34 2021
-- Host        : adm-127190 running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/esme/Desktop/VivadoProjects/EmbeddedSystems/IMU_SPI_UART/project_imu_spi_uart/project_imu_spi_uart.gen/sources_1/bd/design_top/ip/design_top_Addr_Counter_0_0/design_top_Addr_Counter_0_0_sim_netlist.vhdl
-- Design      : design_top_Addr_Counter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_top_Addr_Counter_0_0_Addr_Counter is
  port (
    addr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    en : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_top_Addr_Counter_0_0_Addr_Counter : entity is "Addr_Counter";
end design_top_Addr_Counter_0_0_Addr_Counter;

architecture STRUCTURE of design_top_Addr_Counter_0_0_Addr_Counter is
  signal \^addr\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_bin[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_bin[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_bin[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count_bin[3]_i_1\ : label is "soft_lutpair0";
begin
  addr(3 downto 0) <= \^addr\(3 downto 0);
\count_bin[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^addr\(0),
      O => plusOp(0)
    );
\count_bin[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^addr\(0),
      I1 => \^addr\(1),
      O => plusOp(1)
    );
\count_bin[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^addr\(0),
      I1 => \^addr\(1),
      I2 => \^addr\(2),
      O => plusOp(2)
    );
\count_bin[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^addr\(1),
      I1 => \^addr\(0),
      I2 => \^addr\(2),
      I3 => \^addr\(3),
      O => plusOp(3)
    );
\count_bin_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => plusOp(0),
      Q => \^addr\(0)
    );
\count_bin_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => plusOp(1),
      Q => \^addr\(1)
    );
\count_bin_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => plusOp(2),
      Q => \^addr\(2)
    );
\count_bin_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => plusOp(3),
      Q => \^addr\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_top_Addr_Counter_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    addr : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_top_Addr_Counter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_top_Addr_Counter_0_0 : entity is "design_top_Addr_Counter_0_0,Addr_Counter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_top_Addr_Counter_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_top_Addr_Counter_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_top_Addr_Counter_0_0 : entity is "Addr_Counter,Vivado 2021.1.1";
end design_top_Addr_Counter_0_0;

architecture STRUCTURE of design_top_Addr_Counter_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_top_Addr_Counter_0_0_Addr_Counter
     port map (
      addr(3 downto 0) => addr(3 downto 0),
      clk => clk,
      en => en,
      rst => rst
    );
end STRUCTURE;
