----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/15/2021 04:24:40 PM
-- Design Name: 
-- Module Name: counter_27_m - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter_27_m is
   Port ( en : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR (26 downto 0));
end counter_27_m;

architecture Behavioral of counter_27_m is

signal count_bin: unsigned(26 downto 0);
begin
    process(clk,rst)
        begin
        if(rst='1')then
            count_bin<=(others=>'0');
        elsif(rising_edge(clk))then
            if(en='1')then
                if(count_bin<=5000000)then
                count_bin<=count_bin+1;
                else
                    count_bin <= (others=>'0');
                end if;
            end if;    
        end if;
    end process;
  count<=std_logic_vector(count_bin);  


end Behavioral;
