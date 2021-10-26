----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/18/2020 01:23:46 PM
-- Design Name: 
-- Module Name: Addr_ctrl - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Addr_ctrl is
    Port ( clk  : in STD_LOGIC;
           addr : in std_logic_vector(3 downto 0);
           dout : out std_logic_vector(7 downto 0));
end Addr_ctrl;

architecture Behavioral of Addr_ctrl is
type rom_type is array (0 to 15) of std_logic_vector(7 downto 0);
constant rom : rom_type:=(
                    x"34",  --GYRO_XOUT_L
                    x"2D", --ACCEL_XOUT_H
                    x"2E", --ACCEL_XOUT_L
                    x"2F", --ACCEL_YOUT_H
                    x"30", --ACCEL_YOUT_L
                    x"31", --ACCEL_ZOUT_H
                    x"32", --ACCEL_ZOUT_L
                    x"33", --GYRO_XOUT_H
                    x"34", --GYRO_XOUT_L
                    x"35", --GYRO_YOUT_H
                    x"36", --GYRO_YOUT_L
                    x"37", --GYRO_ZOUT_H
                    x"38", --GYRO_ZOUT_L
                    x"39", --TEMP_OUT_H
                    x"3A", --TEMP_OUT_L
                    x"00"  --WHO AM I?
                          );
BEGIN
    process(clk)
    begin
        if(rising_edge(clk))then
        dout<=rom(conv_integer(unsigned(addr)));
    end if;
end process;

end Behavioral;
