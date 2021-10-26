--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.1.1 (lin64) Build 3286242 Wed Jul 28 13:09:46 MDT 2021
--Date        : Mon Oct 25 17:27:00 2021
--Host        : adm-127190 running 64-bit Ubuntu 20.04.3 LTS
--Command     : generate_target design_top.bd
--Design      : design_top
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Address_handler_imp_1YP68T6 is
  port (
    clk : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    next_reg : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end Address_handler_imp_1YP68T6;

architecture STRUCTURE of Address_handler_imp_1YP68T6 is
  component design_top_Addr_Counter_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    addr : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_top_Addr_Counter_0_0;
  component design_top_fsm_intr_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    strobe : in STD_LOGIC;
    intr : out STD_LOGIC
  );
  end component design_top_fsm_intr_0_0;
  component design_top_Addr_ctrl_0_0 is
  port (
    clk : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_top_Addr_ctrl_0_0;
  signal Addr_Counter_0_addr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Addr_ctrl_0_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clk_divider_0_clk_div : STD_LOGIC;
  signal fsm_intr_0_intr : STD_LOGIC;
  signal rst_0_1 : STD_LOGIC;
  signal strobe_0_1 : STD_LOGIC;
begin
  clk_divider_0_clk_div <= clk;
  dout(7 downto 0) <= Addr_ctrl_0_dout(7 downto 0);
  rst_0_1 <= rst;
  strobe_0_1 <= next_reg;
Addr_Counter_0: component design_top_Addr_Counter_0_0
     port map (
      addr(3 downto 0) => Addr_Counter_0_addr(3 downto 0),
      clk => clk_divider_0_clk_div,
      en => fsm_intr_0_intr,
      rst => rst_0_1
    );
Addr_ctrl_0: component design_top_Addr_ctrl_0_0
     port map (
      addr(3 downto 0) => Addr_Counter_0_addr(3 downto 0),
      clk => clk_divider_0_clk_div,
      dout(7 downto 0) => Addr_ctrl_0_dout(7 downto 0)
    );
fsm_intr_0: component design_top_fsm_intr_0_0
     port map (
      clk => clk_divider_0_clk_div,
      intr => fsm_intr_0_intr,
      rst => rst_0_1,
      strobe => strobe_0_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_TX_imp_12I32OE is
  port (
    clk : in STD_LOGIC;
    data1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC;
    shift_load : in STD_LOGIC;
    sout : out STD_LOGIC
  );
end UART_TX_imp_12I32OE;

architecture STRUCTURE of UART_TX_imp_12I32OE is
  component design_top_tx_mod_0_0 is
  port (
    clkfast : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC;
    shift_load : in STD_LOGIC;
    sout : out STD_LOGIC;
    xmitmt : out STD_LOGIC
  );
  end component design_top_tx_mod_0_0;
  component design_top_clk_divider_UART_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk_div : out STD_LOGIC
  );
  end component design_top_clk_divider_UART_0_0;
  signal CTRL_0_data1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal CTRL_0_data_ready : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal clk_divider_UART_0_clk_div : STD_LOGIC;
  signal rst_0_1 : STD_LOGIC;
  signal tx_mod_0_sout : STD_LOGIC;
  signal NLW_tx_mod_0_xmitmt_UNCONNECTED : STD_LOGIC;
begin
  CTRL_0_data1(7 downto 0) <= data1(7 downto 0);
  CTRL_0_data_ready <= shift_load;
  clk_1 <= clk;
  rst_0_1 <= rst;
  sout <= tx_mod_0_sout;
clk_divider_UART_0: component design_top_clk_divider_UART_0_0
     port map (
      clk => clk_1,
      clk_div => clk_divider_UART_0_clk_div,
      rst => rst_0_1
    );
tx_mod_0: component design_top_tx_mod_0_0
     port map (
      clkfast => clk_divider_UART_0_clk_div,
      data_in(7 downto 0) => CTRL_0_data1(7 downto 0),
      rst => rst_0_1,
      shift_load => CTRL_0_data_ready,
      sout => tx_mod_0_sout,
      xmitmt => NLW_tx_mod_0_xmitmt_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_top is
  port (
    CS : out STD_LOGIC;
    LEDs : out STD_LOGIC_VECTOR ( 7 downto 0 );
    MISO : in STD_LOGIC;
    MOSI : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    next_reg_switch : in STD_LOGIC;
    rst : in STD_LOGIC;
    sout : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_top : entity is "design_top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_top,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=9,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=7,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_bram_cntlr_cnt=2,da_ps7_cnt=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_top : entity is "design_top.hwdef";
end design_top;

architecture STRUCTURE of design_top is
  component design_top_CTRL_0_0 is
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
  end component design_top_CTRL_0_0;
  component design_top_clk_divider_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk_div : out STD_LOGIC
  );
  end component design_top_clk_divider_0_0;
  signal Addr_ctrl_0_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal CTRL_0_CS : STD_LOGIC;
  signal CTRL_0_MOSI : STD_LOGIC;
  signal CTRL_0_SCLK : STD_LOGIC;
  signal CTRL_0_data1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal MISO_0_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal clk_divider_0_clk_div : STD_LOGIC;
  signal en_0_1 : STD_LOGIC;
  signal rst_0_1 : STD_LOGIC;
  signal shift_load_1 : STD_LOGIC;
  signal strobe_0_1 : STD_LOGIC;
  signal tx_mod_0_sout : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN design_top_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 RST.RST RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  CS <= CTRL_0_CS;
  LEDs(7 downto 0) <= CTRL_0_data1(7 downto 0);
  MISO_0_1 <= MISO;
  MOSI <= CTRL_0_MOSI;
  SCLK <= CTRL_0_SCLK;
  clk_1 <= clk;
  en_0_1 <= en;
  rst_0_1 <= rst;
  sout <= tx_mod_0_sout;
  strobe_0_1 <= next_reg_switch;
Address_handler: entity work.Address_handler_imp_1YP68T6
     port map (
      clk => clk_divider_0_clk_div,
      dout(7 downto 0) => Addr_ctrl_0_dout(7 downto 0),
      next_reg => strobe_0_1,
      rst => rst_0_1
    );
IMU_CTRL: component design_top_CTRL_0_0
     port map (
      MISO => MISO_0_1,
      MOSI => CTRL_0_MOSI,
      SCLK => CTRL_0_SCLK,
      addr1(7 downto 0) => Addr_ctrl_0_dout(7 downto 0),
      clk => clk_divider_0_clk_div,
      cs => CTRL_0_CS,
      data1(7 downto 0) => CTRL_0_data1(7 downto 0),
      data_ready => shift_load_1,
      en => en_0_1,
      rst => rst_0_1
    );
UART_TX: entity work.UART_TX_imp_12I32OE
     port map (
      clk => clk_1,
      data1(7 downto 0) => CTRL_0_data1(7 downto 0),
      rst => rst_0_1,
      shift_load => shift_load_1,
      sout => tx_mod_0_sout
    );
clk_divider: component design_top_clk_divider_0_0
     port map (
      clk => clk_1,
      clk_div => clk_divider_0_clk_div,
      rst => rst_0_1
    );
end STRUCTURE;
