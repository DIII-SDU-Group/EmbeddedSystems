-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1.1 (lin64) Build 3286242 Wed Jul 28 13:09:46 MDT 2021
-- Date        : Mon Oct 25 17:20:33 2021
-- Host        : adm-127190 running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/esme/Desktop/VivadoProjects/EmbeddedSystems/IMU_SPI_UART/project_imu_spi_uart/project_imu_spi_uart.gen/sources_1/bd/design_top/ip/design_top_fsm_intr_0_0/design_top_fsm_intr_0_0_sim_netlist.vhdl
-- Design      : design_top_fsm_intr_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_top_fsm_intr_0_0_fsm_intr is
  port (
    intr : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    strobe : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_top_fsm_intr_0_0_fsm_intr : entity is "fsm_intr";
end design_top_fsm_intr_0_0_fsm_intr;

architecture STRUCTURE of design_top_fsm_intr_0_0_fsm_intr is
  signal current_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "s1:01,s2:10,s0:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "s1:01,s2:10,s0:00";
begin
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => strobe,
      I1 => current_state(0),
      I2 => current_state(1),
      O => next_state(0)
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      I2 => strobe,
      O => next_state(1)
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => next_state(0),
      Q => current_state(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => next_state(1),
      Q => current_state(1)
    );
intr_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      O => intr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_top_fsm_intr_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    strobe : in STD_LOGIC;
    intr : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_top_fsm_intr_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_top_fsm_intr_0_0 : entity is "design_top_fsm_intr_0_0,fsm_intr,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_top_fsm_intr_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_top_fsm_intr_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_top_fsm_intr_0_0 : entity is "fsm_intr,Vivado 2021.1.1";
end design_top_fsm_intr_0_0;

architecture STRUCTURE of design_top_fsm_intr_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of intr : signal is "xilinx.com:signal:interrupt:1.0 intr INTERRUPT";
  attribute x_interface_parameter of intr : signal is "XIL_INTERFACENAME intr, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_top_fsm_intr_0_0_fsm_intr
     port map (
      clk => clk,
      intr => intr,
      rst => rst,
      strobe => strobe
    );
end STRUCTURE;
