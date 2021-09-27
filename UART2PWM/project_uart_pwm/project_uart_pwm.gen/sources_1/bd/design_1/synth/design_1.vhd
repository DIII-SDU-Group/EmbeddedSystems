--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.1.1 (lin64) Build 3286242 Wed Jul 28 13:09:46 MDT 2021
--Date        : Mon Sep 27 17:24:48 2021
--Host        : adm-127190 running 64-bit Ubuntu 20.04.2 LTS
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PWM_imp_BGUKI is
  port (
    LED : out STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    y : in STD_LOGIC_VECTOR ( 26 downto 0 )
  );
end PWM_imp_BGUKI;

architecture STRUCTURE of PWM_imp_BGUKI is
  component design_1_Comp_27_0_0 is
  port (
    x : in STD_LOGIC_VECTOR ( 26 downto 0 );
    y : in STD_LOGIC_VECTOR ( 26 downto 0 );
    z : out STD_LOGIC
  );
  end component design_1_Comp_27_0_0;
  component design_1_Counter_27_0_0 is
  port (
    en : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    count : out STD_LOGIC_VECTOR ( 26 downto 0 )
  );
  end component design_1_Counter_27_0_0;
  signal Comp_27_0_z : STD_LOGIC;
  signal Counter_27_0_count : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal clk_0_1 : STD_LOGIC;
  signal en_0_1 : STD_LOGIC;
  signal rst_0_1 : STD_LOGIC;
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 26 downto 0 );
begin
  LED <= Comp_27_0_z;
  clk_0_1 <= clk;
  en_0_1 <= en;
  rst_0_1 <= rst;
  xlconstant_0_dout(26 downto 0) <= y(26 downto 0);
Comp_27_0: component design_1_Comp_27_0_0
     port map (
      x(26 downto 0) => Counter_27_0_count(26 downto 0),
      y(26 downto 0) => xlconstant_0_dout(26 downto 0),
      z => Comp_27_0_z
    );
Counter_27_0: component design_1_Counter_27_0_0
     port map (
      clk => clk_0_1,
      count(26 downto 0) => Counter_27_0_count(26 downto 0),
      en => en_0_1,
      rst => rst_0_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_Percent_imp_L67TDU is
  port (
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    sin_0 : in STD_LOGIC
  );
end UART_Percent_imp_L67TDU;

architecture STRUCTURE of UART_Percent_imp_L67TDU is
  component design_1_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1_xlslice_0_0;
  component design_1_rx_mod_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    sin : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    intr : out STD_LOGIC
  );
  end component design_1_rx_mod_0_0;
  component design_1_clk_divider_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk_div : out STD_LOGIC
  );
  end component design_1_clk_divider_0_0;
  signal clk_0_1 : STD_LOGIC;
  signal clk_divider_0_clk_div : STD_LOGIC;
  signal rst_0_1 : STD_LOGIC;
  signal rx_mod_0_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sin_0_1 : STD_LOGIC;
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_rx_mod_0_intr_UNCONNECTED : STD_LOGIC;
begin
  Dout(3 downto 0) <= xlslice_0_Dout(3 downto 0);
  clk_0_1 <= clk;
  rst_0_1 <= rst;
  sin_0_1 <= sin_0;
clk_divider_0: component design_1_clk_divider_0_0
     port map (
      clk => clk_0_1,
      clk_div => clk_divider_0_clk_div,
      rst => rst_0_1
    );
rx_mod_0: component design_1_rx_mod_0_0
     port map (
      clk => clk_divider_0_clk_div,
      data_out(7 downto 0) => rx_mod_0_data_out(7 downto 0),
      intr => NLW_rx_mod_0_intr_UNCONNECTED,
      rst => rst_0_1,
      sin => sin_0_1
    );
xlslice_0: component design_1_xlslice_0_0
     port map (
      Din(7 downto 0) => rx_mod_0_data_out(7 downto 0),
      Dout(3 downto 0) => xlslice_0_Dout(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    LED : out STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    motor : out STD_LOGIC;
    rst : in STD_LOGIC;
    sin : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=8,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_LUT_0_0 is
  port (
    percent : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bits : out STD_LOGIC_VECTOR ( 26 downto 0 )
  );
  end component design_1_LUT_0_0;
  signal Comp_27_0_z : STD_LOGIC;
  signal LUT_0_bits : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal clk_0_1 : STD_LOGIC;
  signal en_0_1 : STD_LOGIC;
  signal rst_0_1 : STD_LOGIC;
  signal sin_0_1 : STD_LOGIC;
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN design_1_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 RST.RST RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  LED <= Comp_27_0_z;
  clk_0_1 <= clk;
  en_0_1 <= en;
  motor <= Comp_27_0_z;
  rst_0_1 <= rst;
  sin_0_1 <= sin;
LUT_0: component design_1_LUT_0_0
     port map (
      bits(26 downto 0) => LUT_0_bits(26 downto 0),
      percent(3 downto 0) => xlslice_0_Dout(3 downto 0)
    );
PWM: entity work.PWM_imp_BGUKI
     port map (
      LED => Comp_27_0_z,
      clk => clk_0_1,
      en => en_0_1,
      rst => rst_0_1,
      y(26 downto 0) => LUT_0_bits(26 downto 0)
    );
UART_Percent: entity work.UART_Percent_imp_L67TDU
     port map (
      Dout(3 downto 0) => xlslice_0_Dout(3 downto 0),
      clk => clk_0_1,
      rst => rst_0_1,
      sin_0 => sin_0_1
    );
end STRUCTURE;
