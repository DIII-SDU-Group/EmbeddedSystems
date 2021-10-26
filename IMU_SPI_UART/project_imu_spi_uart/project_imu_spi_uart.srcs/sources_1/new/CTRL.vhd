----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/17/2020 01:33:28 PM
-- Design Name: 
-- Module Name: CTRL - Behavioral
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
USE ieee.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CTRL is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           en : in STD_LOGIC;
--           next_reg: in STD_LOGIC;
           addr1 : in STD_LOGIC_VECTOR (7 downto 0);
           
           data1 : out STD_LOGIC_VECTOR (7 downto 0);
           data_ready : out STD_LOGIC;
           cs : out STD_LOGIC;
           SCLK : out STD_LOGIC;
           MOSI : out STD_LOGIC;
           MISO : in STD_LOGIC);
end CTRL;

architecture fsm_ctrl of CTRL is

   -- Architecture Declarations
   signal addr_reg, data_reg :std_logic_vector(7 downto 0);
   signal addr_reg_conf:std_logic_vector(15 downto 0):=x"0300";
   signal count :unsigned(2 downto 0);
   signal count_conf :unsigned(3 downto 0);
  -- signal count_long :unsigned(27 downto 0);
      
   signal conf_flag: std_logic:='0';
   TYPE STATE_TYPE IS (
      s0,
      s1,
      s2,
      s3,
      s4,
      s5,
      s6,
      s_conf_1,
      s_conf_2,
      s_conf_3 --delay 15
   );

   -- State vector declaration
   ATTRIBUTE state_vector : string;
   ATTRIBUTE state_vector OF fsm_ctrl : ARCHITECTURE IS "current_state" ;


   -- Declare current and next state signals
   SIGNAL current_state : STATE_TYPE ;
   SIGNAL next_state : STATE_TYPE ;


begin

   ----------------------------------------------------------------------------
   clocked : PROCESS(
      clk,
      rst
   )
   ----------------------------------------------------------------------------
   BEGIN
      IF (rst = '1') THEN
         current_state <= s0;
         -- Reset Values
         count <= (others=>'0');
         count_conf <= (others=>'0');
         addr_reg<= (others=>'0');
         data_reg<= (others=>'0');

      ELSIF (clk'EVENT AND clk = '1') THEN
         current_state <= next_state;
         -- Default Assignment To Internals

         -- Combined Actions for internal signals only
         CASE current_state IS
         WHEN s0 =>
            count <= (others=>'0');
            count_conf <= (others=>'0');
         addr_reg<= (others=>'1');
         addr_reg_conf<= (others=>'0');
         data_reg<= (others=>'0');
         WHEN s1 =>
            addr_reg <= '1' & addr1(6 downto 0);
           --addr_reg <= '1' & "0110100";
         WHEN s2 =>
            addr_reg <= addr_reg(6 downto 0) & '0';
            count <= count +1;
         WHEN s3 =>
             count <= count +1;
         WHEN s4 =>
            data_reg <= data_reg(6 downto 0) & MISO ;
            count <= count +1;             
            
          WHEN s_conf_1 =>
            addr_reg_conf <= x"06"&"00000000";
         WHEN s_conf_2 =>
            addr_reg_conf <= addr_reg_conf(14 downto 0) & '0';
            count_conf <= count_conf +1;        
         WHEN s_conf_3 =>
             count_conf <= count_conf +1;            
         
         WHEN OTHERS =>
            NULL;
         END CASE;

      END IF;

   END PROCESS clocked;


   ----------------------------------------------------------------------------
   nextstate : PROCESS (
      current_state,
      en,
      count,
      count_conf
   )
   ----------------------------------------------------------------------------
   BEGIN
      CASE current_state IS
      WHEN s0 =>
         IF (conf_flag='0' or en='1') THEN
            next_state <= s_conf_1;
         ELSE
            next_state <= s1;
         END IF;
      WHEN s1 =>
            next_state <= s2;
      WHEN s2 =>
         IF (count = 7) THEN
            next_state <= s3;
         ELSE
            next_state <= s2;
         END IF;
      WHEN s3 =>
         IF (count = 7) THEN
            next_state <= s4;
         ELSE
            next_state <= s3;
         END IF;
      WHEN s4 =>
         IF (count = 7) THEN
            next_state <= s5;
         ELSE
            next_state <= s4;
         END IF;
       
      WHEN s5 =>
            next_state <= s6;
      WHEN s6 =>
 --       IF (next_reg = '1' ) THEN
            next_state <= s0;
 --       ELSE
   --       next_state <= s6;
   --      END IF;
 --configuration phase     
      
      WHEN s_conf_1 =>
            next_state <= s_conf_2; 
                
      WHEN s_conf_2 =>
         IF (count_conf = 15) THEN
            next_state <= s_conf_3;
         ELSE
            next_state <= s_conf_2;
         END IF;
      WHEN s_conf_3 =>
         IF (count_conf = 14) THEN
            next_state <= s0;
            conf_flag<='1';
         ELSE
            next_state <= s_conf_3;
            conf_flag<='1';
         END IF;                                
      WHEN OTHERS =>
         next_state <= s0;
      END CASE;

   END PROCESS nextstate;


   ----------------------------------------------------------------------------
   output : PROCESS (
      current_state, clk, addr_reg, data_reg
   )
   ----------------------------------------------------------------------------
   BEGIN
      -- Default Assignment
      --cs<= '1';
      -- Default Assignment To Internals

      -- Combined Actions
      CASE current_state IS
      WHEN s0 =>
         cs<= '1';
         MOSI<='0';
         data1 <= (others=>'0');
         SCLK<='0';
         data_ready <='0';
      WHEN s1 =>
         cs<= '0';
      WHEN s2 =>
         MOSI<= addr_reg(7);
         SCLK <= not clk;
         cs<= '0'; 
      WHEN s3 =>
         SCLK<='1';
         cs<= '0';  
      WHEN s4 =>
         SCLK<= not clk;
         cs<= '0';  
      WHEN s5 =>
         SCLK<='1';
         data1<=data_reg; 
         data_ready <='1';  
       WHEN s6 =>
         SCLK<='1';
         data1<=data_reg; 
         data_ready <='0';  

       WHEN s_conf_1 =>
         cs<= '0';   
       WHEN s_conf_2 =>
         MOSI<= addr_reg_conf(15);
         SCLK <= not clk;
         cs<= '0';        
       WHEN s_conf_3 =>
         SCLK<='1';
         
              
      WHEN OTHERS =>
         NULL;
      END CASE;
   
   END PROCESS output;

   -- Concurrent Statements

end fsm_ctrl;
