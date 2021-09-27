--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.1.1 (lin64) Build 3286242 Wed Jul 28 13:09:46 MDT 2021
--Date        : Mon Sep 27 16:37:01 2021
--Host        : adm-127190 running 64-bit Ubuntu 20.04.2 LTS
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    LED : out STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    motor : out STD_LOGIC;
    rst : in STD_LOGIC;
    sin : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    LED : out STD_LOGIC;
    sin : in STD_LOGIC;
    motor : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      LED => LED,
      clk => clk,
      en => en,
      motor => motor,
      rst => rst,
      sin => sin
    );
end STRUCTURE;
