----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/22/2020 09:13:04 AM
-- Design Name: 
-- Module Name: Comp_27 - Behavioral
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

entity Comp_27 is
    Port ( x : in STD_LOGIC_VECTOR (26 downto 0);
           y : in STD_LOGIC_VECTOR (26 downto 0);
           z : out STD_LOGIC);
end Comp_27;

architecture Behavioral of Comp_27 is
signal x_sig,y_sig: unsigned(26 downto 0);
begin
    process(x,y)
    begin
        if(x_sig<=y_sig)then 
            z<='1';
        else
            z<='0';
        end if;
    end process;
x_sig<=unsigned(x);            
y_sig<=unsigned(y);
end Behavioral;
