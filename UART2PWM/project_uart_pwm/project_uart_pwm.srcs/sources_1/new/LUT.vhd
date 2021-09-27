----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/27/2021 02:51:56 PM
-- Design Name: 
-- Module Name: LUT - Behavioral
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

entity LUT is
    Port ( percent : in STD_LOGIC_VECTOR (3 downto 0);
           bits : out STD_LOGIC_VECTOR (26 downto 0));
end LUT;

architecture Behavioral of LUT is

begin
    process(percent)
        begin
            case percent is
                when "0000" => bits <= std_logic_vector(to_unsigned(000000, 27)); --0%
                when "0001" => bits <= std_logic_vector(to_unsigned(250000, 27)); --10% duty 2ms
                when "0010" => bits <= std_logic_vector(to_unsigned(500000, 27)); --20%
                when "0011" => bits <= std_logic_vector(to_unsigned(750000, 27));
                when "0100" => bits <= std_logic_vector(to_unsigned(1000000, 27));
                when "0101" => bits <= std_logic_vector(to_unsigned(1250000, 27));
                when "0110" => bits <= std_logic_vector(to_unsigned(1500000, 27));
                when "0111" => bits <= std_logic_vector(to_unsigned(1750000, 27));
                when "1000" => bits <= std_logic_vector(to_unsigned(2000000, 27));
                when "1001" => bits <= std_logic_vector(to_unsigned(2250000, 27));
                when "1010" => bits <= std_logic_vector(to_unsigned(125000, 27));--A 1msec
                when "1011" => bits <= std_logic_vector(to_unsigned(137500, 27));--B 1.1msec
                when "1100" => bits <= std_logic_vector(to_unsigned(150000, 27));--C 1.2msec
                when "1101" => bits <= std_logic_vector(to_unsigned(162500, 27));--D 1.3msec
                when "1110" => bits <= std_logic_vector(to_unsigned(175000, 27));--E 1.3msec
                when "1111" => bits <= std_logic_vector(to_unsigned(187500, 27));--F 1.4msec
                when others => bits <= std_logic_vector(to_unsigned(121875, 27));-- 0.975ms
                
            end case;
     end process;


end Behavioral;
