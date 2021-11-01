-- hds header_start
--
-- VHDL Entity uart_trials.tx_mod.symbol
--
-- Created:
--          by - Emad.Samuel (EMAD_SAMUEL)
--          at - 07:58:20 10/10/2019
--
--
--
-- hds header_end
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;


ENTITY rx_mod IS
   PORT( 
      clk      : IN     std_logic;
      rst      : IN     std_logic;
      sin      : IN     std_logic;
      data_out : OUT    std_logic_vector (7 DOWNTO 0);
      intr     : OUT    std_logic);

END rx_mod ;

-- hds interface_end
ARCHITECTURE rtl OF rx_mod IS
	signal rxreg: std_logic_vector(9 downto 0);
  	signal count: unsigned (3 downto 0);
  	signal rxmt: std_logic;
  	signal rxin,start_flag: std_logic;
	begin
  		process (clk, rst)
  			begin
    			if (rst = '1') then
	  				count <= (others => '0');
	  				rxmt <= '1';
	  				rxreg <= (others => '1');
	  				intr <= '0';
	  				rxin <= '1';
					start_flag<='0';
				elsif (rising_edge(clk)) then
					rxin<=sin;
	  				if (rxmt = '1' and rxin = '0') then
						count <= (others => '0');
						rxmt <= '0';
						rxreg <= (others => '1');
						start_flag<='0';
	  				elsif (count = 7 and rxmt = '0' and rxin = '0' and start_flag='0') then
	    				rxreg <= rxin & rxreg(9 downto 1);
						count <= (others => '0');
						start_flag<='1';
					elsif (count = 15 and rxmt = '0') then
	    				rxreg <= rxin & rxreg(9 downto 1);
						count <= count + 1;
					else
	    				count <= count + 1;
	  				end if;
	  				if (rxmt = '0' and rxreg(9) = '1' and rxreg(0) = '0') then
	    				intr <= '1';
						rxmt <= '1';
	  				else
	    				intr <= '0';
	  				end if;
				end if;
  		end process;
  		data_out <= rxreg(8 downto 1);
END rtl;
