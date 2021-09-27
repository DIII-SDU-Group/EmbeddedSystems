-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1.1 (lin64) Build 3286242 Wed Jul 28 13:09:46 MDT 2021
-- Date        : Mon Sep 27 17:25:30 2021
-- Host        : adm-127190 running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/esme/Desktop/VivadoProjects/EmbeddedSystems/UART2PWM/project_uart_pwm/project_uart_pwm.gen/sources_1/bd/design_1/ip/design_1_Counter_27_0_0_1/design_1_Counter_27_0_0_stub.vhdl
-- Design      : design_1_Counter_27_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_Counter_27_0_0 is
  Port ( 
    en : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    count : out STD_LOGIC_VECTOR ( 26 downto 0 )
  );

end design_1_Counter_27_0_0;

architecture stub of design_1_Counter_27_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "en,clk,rst,count[26:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Counter_27,Vivado 2021.1.1";
begin
end;
