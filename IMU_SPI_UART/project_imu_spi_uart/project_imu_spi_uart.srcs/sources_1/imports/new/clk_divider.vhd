----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/13/2019 11:25:17 AM
-- Design Name: 
-- Module Name: clk_divider - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clk_divider is
----------------------------------------------------------------------------------
-- Genrics
----------------------------------------------------------------------------------


    Port ( clk,rst : in STD_LOGIC;
           clk_div : out STD_LOGIC);
end clk_divider;

architecture Behavioral of clk_divider is
signal divisor: unsigned(15 downto 0);
signal count_sig: unsigned(15 downto 0);
signal clk_div_sig: std_logic :='1';
begin
    divisor<=x"0043"; -- 4800 b/s (125M/16/4800=1627) --115200 
    -----------------------------------------------------------
    process(clk, rst)
-----------------------------------------------------------
        begin
        if(rst='1') then
        count_sig <=(others=>'0');
        elsif(rising_edge(clk))then
            if(count_sig=divisor(15 downto 1)-1) then
                clk_div_sig<=not(clk_div_sig);
                count_sig <=(others=>'0');
            else
                count_sig<=count_sig+1;
             end if;
         end if;
     end process;
  clk_div<=clk_div_sig;
            
end Behavioral;
