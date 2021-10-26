----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/18/2020 01:53:58 PM
-- Design Name: 
-- Module Name: Addr_Counter - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Addr_Counter is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           en : in STD_LOGIC;
           addr : out STD_LOGIC_VECTOR (3 downto 0));
end Addr_Counter;

architecture Behavioral of Addr_Counter is

signal count_bin: unsigned(3 downto 0);
begin
    process(clk,rst)
        begin
        if(rst='1')then
            count_bin<=(others=>'0');
        elsif(rising_edge(clk))then
            if(en='1')then
                 count_bin<=count_bin+1;
            end if;    
        end if;
    end process;
  addr<=std_logic_vector(count_bin);
end Behavioral;
