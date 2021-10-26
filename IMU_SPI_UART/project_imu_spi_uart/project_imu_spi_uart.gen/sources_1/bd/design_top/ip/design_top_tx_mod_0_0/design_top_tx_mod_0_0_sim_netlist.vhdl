-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1.1 (lin64) Build 3286242 Wed Jul 28 13:09:46 MDT 2021
-- Date        : Mon Oct 25 17:20:33 2021
-- Host        : adm-127190 running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/esme/Desktop/VivadoProjects/EmbeddedSystems/IMU_SPI_UART/project_imu_spi_uart/project_imu_spi_uart.gen/sources_1/bd/design_top/ip/design_top_tx_mod_0_0/design_top_tx_mod_0_0_sim_netlist.vhdl
-- Design      : design_top_tx_mod_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_top_tx_mod_0_0_tx_mod is
  port (
    sout : out STD_LOGIC;
    xmitmt : out STD_LOGIC;
    clkfast : in STD_LOGIC;
    rst : in STD_LOGIC;
    shift_load : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_top_tx_mod_0_0_tx_mod : entity is "tx_mod";
end design_top_tx_mod_0_0_tx_mod;

architecture STRUCTURE of design_top_tx_mod_0_0_tx_mod is
  signal \FSM_sequential_current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_bit[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_bit[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_bit[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_bit[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_bit[3]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_bit_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_bit_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_bit_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_bit_reg_n_0_[3]\ : STD_LOGIC;
  signal count : STD_LOGIC;
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal \count[3]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal in9 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal next_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal reg_data : STD_LOGIC;
  signal reg_data0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "s2:010,s1:001,s3:011,s4:100,s0:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "s2:010,s1:001,s3:011,s4:100,s0:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "s2:010,s1:001,s3:011,s4:100,s0:000";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_bit[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt_bit[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt_bit[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt_bit[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \reg_data[0]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \reg_data[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \reg_data[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \reg_data[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \reg_data[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \reg_data[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \reg_data[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \reg_data[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \reg_data[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \reg_data[9]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of xmitmt_INST_0 : label is "soft_lutpair1";
begin
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CC0030008800B8"
    )
        port map (
      I0 => \count_reg_n_0_[3]\,
      I1 => current_state(1),
      I2 => shift_load,
      I3 => current_state(2),
      I4 => current_state(0),
      I5 => \FSM_sequential_current_state[2]_i_2_n_0\,
      O => next_state(0)
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFF9AAAA"
    )
        port map (
      I0 => current_state(0),
      I1 => \count_reg_n_0_[3]\,
      I2 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I3 => \FSM_sequential_current_state[2]_i_2_n_0\,
      I4 => current_state(1),
      I5 => current_state(2),
      O => next_state(1)
    );
\FSM_sequential_current_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \cnt_bit_reg_n_0_[0]\,
      I1 => \cnt_bit_reg_n_0_[1]\,
      I2 => \cnt_bit_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \cnt_bit_reg_n_0_[3]\,
      O => \FSM_sequential_current_state[1]_i_2_n_0\
    );
\FSM_sequential_current_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80808080A3A0A0A0"
    )
        port map (
      I0 => shift_load,
      I1 => \FSM_sequential_current_state[2]_i_2_n_0\,
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => \count_reg_n_0_[3]\,
      O => next_state(2)
    );
\FSM_sequential_current_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[2]\,
      O => \FSM_sequential_current_state[2]_i_2_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clkfast,
      CE => '1',
      CLR => rst,
      D => next_state(0),
      Q => current_state(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clkfast,
      CE => '1',
      CLR => rst,
      D => next_state(1),
      Q => current_state(1)
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clkfast,
      CE => '1',
      CLR => rst,
      D => next_state(2),
      Q => current_state(2)
    );
\cnt_bit[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(0),
      I1 => \cnt_bit_reg_n_0_[0]\,
      O => \cnt_bit[0]_i_1_n_0\
    );
\cnt_bit[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => current_state(0),
      I1 => \cnt_bit_reg_n_0_[1]\,
      I2 => \cnt_bit_reg_n_0_[0]\,
      O => \cnt_bit[1]_i_1_n_0\
    );
\cnt_bit[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => current_state(0),
      I1 => \cnt_bit_reg_n_0_[2]\,
      I2 => \cnt_bit_reg_n_0_[0]\,
      I3 => \cnt_bit_reg_n_0_[1]\,
      O => \cnt_bit[2]_i_1_n_0\
    );
\cnt_bit[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(2),
      O => \cnt_bit[3]_i_1_n_0\
    );
\cnt_bit[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => current_state(0),
      I1 => \cnt_bit_reg_n_0_[3]\,
      I2 => \cnt_bit_reg_n_0_[2]\,
      I3 => \cnt_bit_reg_n_0_[1]\,
      I4 => \cnt_bit_reg_n_0_[0]\,
      O => \cnt_bit[3]_i_2_n_0\
    );
\cnt_bit_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clkfast,
      CE => \cnt_bit[3]_i_1_n_0\,
      CLR => rst,
      D => \cnt_bit[0]_i_1_n_0\,
      Q => \cnt_bit_reg_n_0_[0]\
    );
\cnt_bit_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clkfast,
      CE => \cnt_bit[3]_i_1_n_0\,
      CLR => rst,
      D => \cnt_bit[1]_i_1_n_0\,
      Q => \cnt_bit_reg_n_0_[1]\
    );
\cnt_bit_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clkfast,
      CE => \cnt_bit[3]_i_1_n_0\,
      CLR => rst,
      D => \cnt_bit[2]_i_1_n_0\,
      Q => \cnt_bit_reg_n_0_[2]\
    );
\cnt_bit_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clkfast,
      CE => \cnt_bit[3]_i_1_n_0\,
      CLR => rst,
      D => \cnt_bit[3]_i_2_n_0\,
      Q => \cnt_bit_reg_n_0_[3]\
    );
\count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0036"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => \count_reg_n_0_[0]\,
      O => \count[0]_i_1_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00363600"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => \count_reg_n_0_[1]\,
      I4 => \count_reg_n_0_[0]\,
      O => \count[1]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0036360036003600"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => \count_reg_n_0_[2]\,
      I4 => \count_reg_n_0_[0]\,
      I5 => \count_reg_n_0_[1]\,
      O => \count[2]_i_1_n_0\
    );
\count[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => current_state(2),
      O => count
    );
\count[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"36000036"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => \count_reg_n_0_[3]\,
      I4 => \FSM_sequential_current_state[2]_i_2_n_0\,
      O => \count[3]_i_2_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clkfast,
      CE => count,
      CLR => rst,
      D => \count[0]_i_1_n_0\,
      Q => \count_reg_n_0_[0]\
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clkfast,
      CE => count,
      CLR => rst,
      D => \count[1]_i_1_n_0\,
      Q => \count_reg_n_0_[1]\
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clkfast,
      CE => count,
      CLR => rst,
      D => \count[2]_i_1_n_0\,
      Q => \count_reg_n_0_[2]\
    );
\count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clkfast,
      CE => count,
      CLR => rst,
      D => \count[3]_i_2_n_0\,
      Q => \count_reg_n_0_[3]\
    );
\reg_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"31"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(2),
      I2 => current_state(0),
      O => reg_data
    );
\reg_data[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => in9(0),
      I1 => current_state(0),
      O => reg_data0_in(0)
    );
\reg_data[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_state(0),
      I1 => in9(1),
      O => reg_data0_in(1)
    );
\reg_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in9(2),
      I1 => data_in(0),
      I2 => current_state(0),
      O => reg_data0_in(2)
    );
\reg_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in9(3),
      I1 => data_in(1),
      I2 => current_state(0),
      O => reg_data0_in(3)
    );
\reg_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in9(4),
      I1 => data_in(2),
      I2 => current_state(0),
      O => reg_data0_in(4)
    );
\reg_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in9(5),
      I1 => data_in(3),
      I2 => current_state(0),
      O => reg_data0_in(5)
    );
\reg_data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in9(6),
      I1 => data_in(4),
      I2 => current_state(0),
      O => reg_data0_in(6)
    );
\reg_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in9(7),
      I1 => data_in(5),
      I2 => current_state(0),
      O => reg_data0_in(7)
    );
\reg_data[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in9(8),
      I1 => data_in(6),
      I2 => current_state(0),
      O => reg_data0_in(8)
    );
\reg_data[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_in(7),
      I1 => current_state(0),
      O => reg_data0_in(9)
    );
\reg_data_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clkfast,
      CE => reg_data,
      D => reg_data0_in(0),
      PRE => rst,
      Q => sout
    );
\reg_data_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => clkfast,
      CE => reg_data,
      D => reg_data0_in(1),
      PRE => rst,
      Q => in9(0)
    );
\reg_data_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => clkfast,
      CE => reg_data,
      D => reg_data0_in(2),
      PRE => rst,
      Q => in9(1)
    );
\reg_data_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => clkfast,
      CE => reg_data,
      D => reg_data0_in(3),
      PRE => rst,
      Q => in9(2)
    );
\reg_data_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => clkfast,
      CE => reg_data,
      D => reg_data0_in(4),
      PRE => rst,
      Q => in9(3)
    );
\reg_data_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => clkfast,
      CE => reg_data,
      D => reg_data0_in(5),
      PRE => rst,
      Q => in9(4)
    );
\reg_data_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => clkfast,
      CE => reg_data,
      D => reg_data0_in(6),
      PRE => rst,
      Q => in9(5)
    );
\reg_data_reg[7]\: unisim.vcomponents.FDPE
     port map (
      C => clkfast,
      CE => reg_data,
      D => reg_data0_in(7),
      PRE => rst,
      Q => in9(6)
    );
\reg_data_reg[8]\: unisim.vcomponents.FDPE
     port map (
      C => clkfast,
      CE => reg_data,
      D => reg_data0_in(8),
      PRE => rst,
      Q => in9(7)
    );
\reg_data_reg[9]\: unisim.vcomponents.FDPE
     port map (
      C => clkfast,
      CE => reg_data,
      D => reg_data0_in(9),
      PRE => rst,
      Q => in9(8)
    );
xmitmt_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      O => xmitmt
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_top_tx_mod_0_0 is
  port (
    clkfast : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC;
    shift_load : in STD_LOGIC;
    sout : out STD_LOGIC;
    xmitmt : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_top_tx_mod_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_top_tx_mod_0_0 : entity is "design_top_tx_mod_0_0,tx_mod,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_top_tx_mod_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_top_tx_mod_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_top_tx_mod_0_0 : entity is "tx_mod,Vivado 2021.1.1";
end design_top_tx_mod_0_0;

architecture STRUCTURE of design_top_tx_mod_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_top_tx_mod_0_0_tx_mod
     port map (
      clkfast => clkfast,
      data_in(7 downto 0) => data_in(7 downto 0),
      rst => rst,
      shift_load => shift_load,
      sout => sout,
      xmitmt => xmitmt
    );
end STRUCTURE;
