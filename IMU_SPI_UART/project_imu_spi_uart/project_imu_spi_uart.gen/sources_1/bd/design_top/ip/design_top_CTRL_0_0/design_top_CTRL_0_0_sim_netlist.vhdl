-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1.1 (lin64) Build 3286242 Wed Jul 28 13:09:46 MDT 2021
-- Date        : Mon Oct 25 17:20:33 2021
-- Host        : adm-127190 running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/esme/Desktop/VivadoProjects/EmbeddedSystems/IMU_SPI_UART/project_imu_spi_uart/project_imu_spi_uart.gen/sources_1/bd/design_top/ip/design_top_CTRL_0_0/design_top_CTRL_0_0_sim_netlist.vhdl
-- Design      : design_top_CTRL_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_top_CTRL_0_0_CTRL is
  port (
    data1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    data_ready : out STD_LOGIC;
    cs : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    MOSI : out STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    addr1 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    MISO : in STD_LOGIC;
    en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_top_CTRL_0_0_CTRL : entity is "CTRL";
end design_top_CTRL_0_0_CTRL;

architecture STRUCTURE of design_top_CTRL_0_0_CTRL is
  signal \FSM_onehot_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[9]\ : STD_LOGIC;
  signal MOSI_reg_i_1_n_0 : STD_LOGIC;
  signal MOSI_reg_i_2_n_0 : STD_LOGIC;
  signal SCLK_reg_i_1_n_0 : STD_LOGIC;
  signal SCLK_reg_i_2_n_0 : STD_LOGIC;
  signal SCLK_reg_i_3_n_0 : STD_LOGIC;
  signal addr_reg : STD_LOGIC;
  signal \addr_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal addr_reg_conf0 : STD_LOGIC;
  signal \addr_reg_conf[10]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg_conf[15]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg_conf[8]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg_conf[9]_i_1_n_0\ : STD_LOGIC;
  signal conf_flag : STD_LOGIC;
  signal \conf_flag__0\ : STD_LOGIC;
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_2_n_0\ : STD_LOGIC;
  signal count_conf : STD_LOGIC;
  signal \count_conf[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_conf[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_conf[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_conf[3]_i_2_n_0\ : STD_LOGIC;
  signal \count_conf_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_conf_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_conf_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_conf_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal cs_reg_i_1_n_0 : STD_LOGIC;
  signal cs_reg_i_2_n_0 : STD_LOGIC;
  signal \data1_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \data1_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \data1_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \data1_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \data1_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \data1_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \data1_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \data1_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \data1_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal data_reg : STD_LOGIC;
  signal \data_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal in10 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal in11 : STD_LOGIC_VECTOR ( 15 downto 9 );
  signal in13 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[8]_i_1\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[0]\ : label is "s3:0001000000,s4:0010000000,s2:0000100000,s1:0000010000,s0:0000000001,s_conf_1:0000000010,s_conf_3:0000001000,s6:1000000000,s_conf_2:0000000100,s5:0100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[1]\ : label is "s3:0001000000,s4:0010000000,s2:0000100000,s1:0000010000,s0:0000000001,s_conf_1:0000000010,s_conf_3:0000001000,s6:1000000000,s_conf_2:0000000100,s5:0100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[2]\ : label is "s3:0001000000,s4:0010000000,s2:0000100000,s1:0000010000,s0:0000000001,s_conf_1:0000000010,s_conf_3:0000001000,s6:1000000000,s_conf_2:0000000100,s5:0100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[3]\ : label is "s3:0001000000,s4:0010000000,s2:0000100000,s1:0000010000,s0:0000000001,s_conf_1:0000000010,s_conf_3:0000001000,s6:1000000000,s_conf_2:0000000100,s5:0100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[4]\ : label is "s3:0001000000,s4:0010000000,s2:0000100000,s1:0000010000,s0:0000000001,s_conf_1:0000000010,s_conf_3:0000001000,s6:1000000000,s_conf_2:0000000100,s5:0100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[5]\ : label is "s3:0001000000,s4:0010000000,s2:0000100000,s1:0000010000,s0:0000000001,s_conf_1:0000000010,s_conf_3:0000001000,s6:1000000000,s_conf_2:0000000100,s5:0100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[6]\ : label is "s3:0001000000,s4:0010000000,s2:0000100000,s1:0000010000,s0:0000000001,s_conf_1:0000000010,s_conf_3:0000001000,s6:1000000000,s_conf_2:0000000100,s5:0100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[7]\ : label is "s3:0001000000,s4:0010000000,s2:0000100000,s1:0000010000,s0:0000000001,s_conf_1:0000000010,s_conf_3:0000001000,s6:1000000000,s_conf_2:0000000100,s5:0100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[8]\ : label is "s3:0001000000,s4:0010000000,s2:0000100000,s1:0000010000,s0:0000000001,s_conf_1:0000000010,s_conf_3:0000001000,s6:1000000000,s_conf_2:0000000100,s5:0100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[9]\ : label is "s3:0001000000,s4:0010000000,s2:0000100000,s1:0000010000,s0:0000000001,s_conf_1:0000000010,s_conf_3:0000001000,s6:1000000000,s_conf_2:0000000100,s5:0100000000";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of MOSI_reg : label is "LD";
  attribute SOFT_HLUTNM of MOSI_reg_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of MOSI_reg_i_2 : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of SCLK_reg : label is "LD";
  attribute SOFT_HLUTNM of SCLK_reg_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \addr_reg[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \addr_reg[7]_i_2\ : label is "soft_lutpair10";
  attribute XILINX_LEGACY_PRIM of conf_flag_reg : label is "LD";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[2]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count_conf[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_conf[2]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of cs_reg : label is "LD";
  attribute SOFT_HLUTNM of cs_reg_i_2 : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \data1_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \data1_reg[0]_i_1\ : label is "soft_lutpair6";
  attribute XILINX_LEGACY_PRIM of \data1_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \data1_reg[1]_i_1\ : label is "soft_lutpair6";
  attribute XILINX_LEGACY_PRIM of \data1_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \data1_reg[2]_i_1\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of \data1_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \data1_reg[3]_i_1\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of \data1_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \data1_reg[4]_i_1\ : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of \data1_reg[5]\ : label is "LD";
  attribute SOFT_HLUTNM of \data1_reg[5]_i_1\ : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of \data1_reg[6]\ : label is "LD";
  attribute SOFT_HLUTNM of \data1_reg[6]_i_1\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of \data1_reg[7]\ : label is "LD";
  attribute SOFT_HLUTNM of \data1_reg[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data1_reg[7]_i_2\ : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of data_ready_reg : label is "LD";
  attribute SOFT_HLUTNM of \data_reg[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_reg[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_reg[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_reg[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_reg[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_reg[5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_reg[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_reg[7]_i_2\ : label is "soft_lutpair12";
begin
\FSM_onehot_current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00800000"
    )
        port map (
      I0 => \conf_flag__0\,
      I1 => \count_conf_reg_n_0_[2]\,
      I2 => \count_conf_reg_n_0_[1]\,
      I3 => \count_conf_reg_n_0_[0]\,
      I4 => \count_conf_reg_n_0_[3]\,
      I5 => \FSM_onehot_current_state_reg_n_0_[9]\,
      O => \FSM_onehot_current_state[0]_i_1_n_0\
    );
\FSM_onehot_current_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => conf_flag,
      I1 => en,
      I2 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \FSM_onehot_current_state[1]_i_1_n_0\
    );
\FSM_onehot_current_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2AAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I1 => \count_conf_reg_n_0_[2]\,
      I2 => \count_conf_reg_n_0_[0]\,
      I3 => \count_conf_reg_n_0_[1]\,
      I4 => \count_conf_reg_n_0_[3]\,
      I5 => \FSM_onehot_current_state_reg_n_0_[1]\,
      O => \FSM_onehot_current_state[2]_i_1_n_0\
    );
\FSM_onehot_current_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2AAAAAAA2AAAAAA"
    )
        port map (
      I0 => \conf_flag__0\,
      I1 => \count_conf_reg_n_0_[3]\,
      I2 => \count_conf_reg_n_0_[0]\,
      I3 => \count_conf_reg_n_0_[1]\,
      I4 => \count_conf_reg_n_0_[2]\,
      I5 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \FSM_onehot_current_state[3]_i_1_n_0\
    );
\FSM_onehot_current_state[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => en,
      I1 => conf_flag,
      I2 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \FSM_onehot_current_state[4]_i_1_n_0\
    );
\FSM_onehot_current_state[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2AAA"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[2]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[4]\,
      O => \FSM_onehot_current_state[5]_i_1_n_0\
    );
\FSM_onehot_current_state[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I1 => \count_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[1]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[6]\,
      O => \FSM_onehot_current_state[6]_i_1_n_0\
    );
\FSM_onehot_current_state[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA2AAA"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I1 => \count_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[0]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[6]\,
      O => \FSM_onehot_current_state[7]_i_1_n_0\
    );
\FSM_onehot_current_state[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[7]\,
      O => \FSM_onehot_current_state[8]_i_1_n_0\
    );
\FSM_onehot_current_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_current_state[0]_i_1_n_0\,
      PRE => rst,
      Q => \FSM_onehot_current_state_reg_n_0_[0]\
    );
\FSM_onehot_current_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_current_state[1]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[1]\
    );
\FSM_onehot_current_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_current_state[2]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[2]\
    );
\FSM_onehot_current_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_current_state[3]_i_1_n_0\,
      Q => \conf_flag__0\
    );
\FSM_onehot_current_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_current_state[4]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[4]\
    );
\FSM_onehot_current_state_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_current_state[5]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[5]\
    );
\FSM_onehot_current_state_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_current_state[6]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[6]\
    );
\FSM_onehot_current_state_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_current_state[7]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[7]\
    );
\FSM_onehot_current_state_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_current_state[8]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[8]\
    );
\FSM_onehot_current_state_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_current_state_reg_n_0_[8]\,
      Q => \FSM_onehot_current_state_reg_n_0_[9]\
    );
MOSI_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => MOSI_reg_i_1_n_0,
      G => MOSI_reg_i_2_n_0,
      GE => '1',
      Q => MOSI
    );
MOSI_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I1 => p_0_in,
      I2 => p_1_in,
      I3 => \FSM_onehot_current_state_reg_n_0_[5]\,
      O => MOSI_reg_i_1_n_0
    );
MOSI_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => MOSI_reg_i_2_n_0
    );
SCLK_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => SCLK_reg_i_1_n_0,
      G => SCLK_reg_i_2_n_0,
      GE => '1',
      Q => SCLK
    );
SCLK_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEEEEE2"
    )
        port map (
      I0 => SCLK_reg_i_3_n_0,
      I1 => clk,
      I2 => \FSM_onehot_current_state_reg_n_0_[8]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I4 => \conf_flag__0\,
      I5 => \FSM_onehot_current_state_reg_n_0_[9]\,
      O => SCLK_reg_i_1_n_0
    );
SCLK_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[9]\,
      I1 => SCLK_reg_i_3_n_0,
      I2 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => SCLK_reg_i_2_n_0
    );
SCLK_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I4 => \conf_flag__0\,
      I5 => \FSM_onehot_current_state_reg_n_0_[8]\,
      O => SCLK_reg_i_3_n_0
    );
\addr_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I1 => addr1(0),
      I2 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \addr_reg[0]_i_1_n_0\
    );
\addr_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I1 => in13(1),
      I2 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I3 => addr1(1),
      I4 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \addr_reg[1]_i_1_n_0\
    );
\addr_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I1 => in13(2),
      I2 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I3 => addr1(2),
      I4 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \addr_reg[2]_i_1_n_0\
    );
\addr_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I1 => in13(3),
      I2 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I3 => addr1(3),
      I4 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \addr_reg[3]_i_1_n_0\
    );
\addr_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I1 => in13(4),
      I2 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I3 => addr1(4),
      I4 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \addr_reg[4]_i_1_n_0\
    );
\addr_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I1 => in13(5),
      I2 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I3 => addr1(5),
      I4 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \addr_reg[5]_i_1_n_0\
    );
\addr_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I1 => in13(6),
      I2 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I3 => addr1(6),
      I4 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \addr_reg[6]_i_1_n_0\
    );
\addr_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => addr_reg
    );
\addr_reg[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I1 => in13(7),
      I2 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \addr_reg[7]_i_2_n_0\
    );
\addr_reg_conf[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFECEF0000ECEC"
    )
        port map (
      I0 => in11(10),
      I1 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => rst,
      I5 => in11(11),
      O => \addr_reg_conf[10]_i_1_n_0\
    );
\addr_reg_conf[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0054"
    )
        port map (
      I0 => rst,
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \addr_reg_conf[15]_i_1_n_0\
    );
\addr_reg_conf[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I3 => rst,
      O => addr_reg_conf0
    );
\addr_reg_conf[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF010000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I3 => rst,
      I4 => in11(9),
      O => \addr_reg_conf[8]_i_1_n_0\
    );
\addr_reg_conf[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFECEF0000ECEC"
    )
        port map (
      I0 => in11(9),
      I1 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => rst,
      I5 => in11(10),
      O => \addr_reg_conf[9]_i_1_n_0\
    );
\addr_reg_conf_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \addr_reg_conf[10]_i_1_n_0\,
      Q => in11(11),
      R => '0'
    );
\addr_reg_conf_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_reg_conf0,
      D => in11(11),
      Q => in11(12),
      R => \addr_reg_conf[15]_i_1_n_0\
    );
\addr_reg_conf_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_reg_conf0,
      D => in11(12),
      Q => in11(13),
      R => \addr_reg_conf[15]_i_1_n_0\
    );
\addr_reg_conf_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_reg_conf0,
      D => in11(13),
      Q => in11(14),
      R => \addr_reg_conf[15]_i_1_n_0\
    );
\addr_reg_conf_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_reg_conf0,
      D => in11(14),
      Q => in11(15),
      R => \addr_reg_conf[15]_i_1_n_0\
    );
\addr_reg_conf_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_reg_conf0,
      D => in11(15),
      Q => p_0_in,
      R => \addr_reg_conf[15]_i_1_n_0\
    );
\addr_reg_conf_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \addr_reg_conf[8]_i_1_n_0\,
      Q => in11(9),
      R => '0'
    );
\addr_reg_conf_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \addr_reg_conf[9]_i_1_n_0\,
      Q => in11(10),
      R => '0'
    );
\addr_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_reg,
      CLR => rst,
      D => \addr_reg[0]_i_1_n_0\,
      Q => in13(1)
    );
\addr_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_reg,
      CLR => rst,
      D => \addr_reg[1]_i_1_n_0\,
      Q => in13(2)
    );
\addr_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_reg,
      CLR => rst,
      D => \addr_reg[2]_i_1_n_0\,
      Q => in13(3)
    );
\addr_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_reg,
      CLR => rst,
      D => \addr_reg[3]_i_1_n_0\,
      Q => in13(4)
    );
\addr_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_reg,
      CLR => rst,
      D => \addr_reg[4]_i_1_n_0\,
      Q => in13(5)
    );
\addr_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_reg,
      CLR => rst,
      D => \addr_reg[5]_i_1_n_0\,
      Q => in13(6)
    );
\addr_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_reg,
      CLR => rst,
      D => \addr_reg[6]_i_1_n_0\,
      Q => in13(7)
    );
\addr_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_reg,
      CLR => rst,
      D => \addr_reg[7]_i_2_n_0\,
      Q => p_1_in
    );
conf_flag_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => '1',
      G => \conf_flag__0\,
      GE => '1',
      Q => conf_flag
    );
\count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FEFE"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => \count_reg_n_0_[0]\,
      O => \count[0]_i_1_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55545557AAA8AAA8"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I5 => \count_reg_n_0_[1]\,
      O => \count[1]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8AAABAAA8AAA8"
    )
        port map (
      I0 => \count[2]_i_2_n_0\,
      I1 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I5 => \count_reg_n_0_[2]\,
      O => \count[2]_i_1_n_0\
    );
\count[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[1]\,
      O => \count[2]_i_2_n_0\
    );
\count_conf[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \conf_flag__0\,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => \count_conf_reg_n_0_[0]\,
      O => \count_conf[0]_i_1_n_0\
    );
\count_conf[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3C28"
    )
        port map (
      I0 => \conf_flag__0\,
      I1 => \count_conf_reg_n_0_[0]\,
      I2 => \count_conf_reg_n_0_[1]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \count_conf[1]_i_1_n_0\
    );
\count_conf[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FC02A80"
    )
        port map (
      I0 => \conf_flag__0\,
      I1 => \count_conf_reg_n_0_[1]\,
      I2 => \count_conf_reg_n_0_[0]\,
      I3 => \count_conf_reg_n_0_[2]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \count_conf[2]_i_1_n_0\
    );
\count_conf[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \conf_flag__0\,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => count_conf
    );
\count_conf[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FFFC0002AAA8000"
    )
        port map (
      I0 => \conf_flag__0\,
      I1 => \count_conf_reg_n_0_[2]\,
      I2 => \count_conf_reg_n_0_[1]\,
      I3 => \count_conf_reg_n_0_[0]\,
      I4 => \count_conf_reg_n_0_[3]\,
      I5 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \count_conf[3]_i_2_n_0\
    );
\count_conf_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count_conf,
      CLR => rst,
      D => \count_conf[0]_i_1_n_0\,
      Q => \count_conf_reg_n_0_[0]\
    );
\count_conf_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count_conf,
      CLR => rst,
      D => \count_conf[1]_i_1_n_0\,
      Q => \count_conf_reg_n_0_[1]\
    );
\count_conf_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count_conf,
      CLR => rst,
      D => \count_conf[2]_i_1_n_0\,
      Q => \count_conf_reg_n_0_[2]\
    );
\count_conf_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count_conf,
      CLR => rst,
      D => \count_conf[3]_i_2_n_0\,
      Q => \count_conf_reg_n_0_[3]\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count[0]_i_1_n_0\,
      Q => \count_reg_n_0_[0]\
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count[1]_i_1_n_0\,
      Q => \count_reg_n_0_[1]\
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count[2]_i_1_n_0\,
      Q => \count_reg_n_0_[2]\
    );
cs_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_current_state_reg_n_0_[0]\,
      G => cs_reg_i_1_n_0,
      GE => '1',
      Q => cs
    );
cs_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => cs_reg_i_2_n_0,
      I3 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I5 => \FSM_onehot_current_state_reg_n_0_[1]\,
      O => cs_reg_i_1_n_0
    );
cs_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[5]\,
      O => cs_reg_i_2_n_0
    );
\data1_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \data1_reg[0]_i_1_n_0\,
      G => \data1_reg[7]_i_2_n_0\,
      GE => '1',
      Q => data1(0)
    );
\data1_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[8]\,
      I2 => in10(1),
      O => \data1_reg[0]_i_1_n_0\
    );
\data1_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \data1_reg[1]_i_1_n_0\,
      G => \data1_reg[7]_i_2_n_0\,
      GE => '1',
      Q => data1(1)
    );
\data1_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[8]\,
      I2 => in10(2),
      O => \data1_reg[1]_i_1_n_0\
    );
\data1_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \data1_reg[2]_i_1_n_0\,
      G => \data1_reg[7]_i_2_n_0\,
      GE => '1',
      Q => data1(2)
    );
\data1_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[8]\,
      I2 => in10(3),
      O => \data1_reg[2]_i_1_n_0\
    );
\data1_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \data1_reg[3]_i_1_n_0\,
      G => \data1_reg[7]_i_2_n_0\,
      GE => '1',
      Q => data1(3)
    );
\data1_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[8]\,
      I2 => in10(4),
      O => \data1_reg[3]_i_1_n_0\
    );
\data1_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \data1_reg[4]_i_1_n_0\,
      G => \data1_reg[7]_i_2_n_0\,
      GE => '1',
      Q => data1(4)
    );
\data1_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[8]\,
      I2 => in10(5),
      O => \data1_reg[4]_i_1_n_0\
    );
\data1_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \data1_reg[5]_i_1_n_0\,
      G => \data1_reg[7]_i_2_n_0\,
      GE => '1',
      Q => data1(5)
    );
\data1_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[8]\,
      I2 => in10(6),
      O => \data1_reg[5]_i_1_n_0\
    );
\data1_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \data1_reg[6]_i_1_n_0\,
      G => \data1_reg[7]_i_2_n_0\,
      GE => '1',
      Q => data1(6)
    );
\data1_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[8]\,
      I2 => in10(7),
      O => \data1_reg[6]_i_1_n_0\
    );
\data1_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \data1_reg[7]_i_1_n_0\,
      G => \data1_reg[7]_i_2_n_0\,
      GE => '1',
      Q => data1(7)
    );
\data1_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[8]\,
      I2 => \data_reg_reg_n_0_[7]\,
      O => \data1_reg[7]_i_1_n_0\
    );
\data1_reg[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[8]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \data1_reg[7]_i_2_n_0\
    );
data_ready_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_current_state_reg_n_0_[8]\,
      G => \data1_reg[7]_i_2_n_0\,
      GE => '1',
      Q => data_ready
    );
\data_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I1 => MISO,
      O => \data_reg[0]_i_1_n_0\
    );
\data_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I1 => in10(1),
      O => \data_reg[1]_i_1_n_0\
    );
\data_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I1 => in10(2),
      O => \data_reg[2]_i_1_n_0\
    );
\data_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I1 => in10(3),
      O => \data_reg[3]_i_1_n_0\
    );
\data_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I1 => in10(4),
      O => \data_reg[4]_i_1_n_0\
    );
\data_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I1 => in10(5),
      O => \data_reg[5]_i_1_n_0\
    );
\data_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I1 => in10(6),
      O => \data_reg[6]_i_1_n_0\
    );
\data_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => data_reg
    );
\data_reg[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I1 => in10(7),
      O => \data_reg[7]_i_2_n_0\
    );
\data_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_reg,
      CLR => rst,
      D => \data_reg[0]_i_1_n_0\,
      Q => in10(1)
    );
\data_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_reg,
      CLR => rst,
      D => \data_reg[1]_i_1_n_0\,
      Q => in10(2)
    );
\data_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_reg,
      CLR => rst,
      D => \data_reg[2]_i_1_n_0\,
      Q => in10(3)
    );
\data_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_reg,
      CLR => rst,
      D => \data_reg[3]_i_1_n_0\,
      Q => in10(4)
    );
\data_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_reg,
      CLR => rst,
      D => \data_reg[4]_i_1_n_0\,
      Q => in10(5)
    );
\data_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_reg,
      CLR => rst,
      D => \data_reg[5]_i_1_n_0\,
      Q => in10(6)
    );
\data_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_reg,
      CLR => rst,
      D => \data_reg[6]_i_1_n_0\,
      Q => in10(7)
    );
\data_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_reg,
      CLR => rst,
      D => \data_reg[7]_i_2_n_0\,
      Q => \data_reg_reg_n_0_[7]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_top_CTRL_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    addr1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    data_ready : out STD_LOGIC;
    cs : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    MOSI : out STD_LOGIC;
    MISO : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_top_CTRL_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_top_CTRL_0_0 : entity is "design_top_CTRL_0_0,CTRL,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_top_CTRL_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_top_CTRL_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_top_CTRL_0_0 : entity is "CTRL,Vivado 2021.1.1";
end design_top_CTRL_0_0;

architecture STRUCTURE of design_top_CTRL_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_top_CTRL_0_0_CTRL
     port map (
      MISO => MISO,
      MOSI => MOSI,
      SCLK => SCLK,
      addr1(6 downto 0) => addr1(6 downto 0),
      clk => clk,
      cs => cs,
      data1(7 downto 0) => data1(7 downto 0),
      data_ready => data_ready,
      en => en,
      rst => rst
    );
end STRUCTURE;
