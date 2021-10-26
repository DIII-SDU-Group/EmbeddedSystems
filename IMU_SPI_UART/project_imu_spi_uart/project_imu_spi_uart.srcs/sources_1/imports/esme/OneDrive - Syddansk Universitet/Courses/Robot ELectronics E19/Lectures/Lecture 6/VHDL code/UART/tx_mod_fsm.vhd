-- hds header_start
--
-- VHDL Entity uart_trials.tx_mod.symbol
--
-- Created:
--          by - Emad.Samuel (EMAD_SAMUEL)
--          at - 07:58:22 10/10/2019
--
--
-- hds header_end
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;


ENTITY tx_mod IS
   PORT( 
      clkfast    : IN     std_logic;
      data_in    : IN     std_logic_vector (7 DOWNTO 0);
      rst        : IN     std_logic;
      shift_load : IN     std_logic;
      sout       : OUT    std_logic;
      xmitmt     : OUT    std_logic
   );

-- Declarations

END tx_mod ;

-- hds interface_end
--
-- VHDL Architecture uart_trials.tx_mod.fsm
--
-- Created:
--          by - Emad.Samuel (EMAD_SAMUEL)
--          at - 07:58:22 10/10/2019
--
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;


ARCHITECTURE fsm OF tx_mod IS

   -- Architecture Declarations
   signal count: unsigned(3 downto 0);
   signal cnt_bit:unsigned(3 downto 0);
   signal reg_data:std_logic_vector(9 downto 0);

   TYPE STATE_TYPE IS (
      s0,
      s1,
      s2,
      s3,
      s4
   );

   -- State vector declaration
   ATTRIBUTE state_vector : string;
   ATTRIBUTE state_vector OF fsm : ARCHITECTURE IS "current_state" ;


   -- Declare current and next state signals
   SIGNAL current_state : STATE_TYPE ;
   SIGNAL next_state : STATE_TYPE ;

BEGIN

   ----------------------------------------------------------------------------
   clocked : PROCESS(
      clkfast,
      rst
   )
   ----------------------------------------------------------------------------
   BEGIN
      IF (rst = '1') THEN
         current_state <= s0;
         -- Reset Values
         cnt_bit <= (others=>'0');
         count <= (others=>'0');
         reg_data <= (others=>'1');
      ELSIF (clkfast'EVENT AND clkfast = '1') THEN
         current_state <= next_state;
         -- Default Assignment To Internals

         -- Combined Actions for internal signals only
         CASE current_state IS
         WHEN s0 =>
            --reg_data<= (others => '1');
            reg_data<= data_in & "01";
            count<= (others=>'0');
            cnt_bit<= (others=>'0');
         WHEN s1 =>
            reg_data <= '1' & reg_data(9 downto 1);
            cnt_bit <= cnt_bit + 1;
            count<= count+1;
         WHEN s2 =>
            count <= count + 1;
         WHEN s3 =>
            count <= count + 1;
            reg_data <= '1' & reg_data(9 downto 1);
         WHEN s4 =>
            count <= count + 1;
         WHEN OTHERS =>
            NULL;
         END CASE;

      END IF;

   END PROCESS clocked;

   ----------------------------------------------------------------------------
   nextstate : PROCESS (
      cnt_bit,
      count,
      current_state,
      shift_load
   )
   ----------------------------------------------------------------------------
   BEGIN
      CASE current_state IS
      WHEN s0 =>
         IF (shift_load = '1') THEN
            next_state <= s1;
         ELSE
            next_state <= s0;
         END IF;
      WHEN s1 =>
            next_state <= s2;
      WHEN s2 =>
         IF (cnt_bit = 9 and count =15) THEN
            next_state <= s3;
         ELSIF (count = 15) THEN
            next_state <= s1;
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
         IF (shift_load = '0') THEN
            next_state <= s0;
         ELSIF (count = 15) THEN
            next_state <= s0;
         ELSE
            next_state <= s4;
         END IF;
      WHEN OTHERS =>
         next_state <= s0;
      END CASE;

   END PROCESS nextstate;

   ----------------------------------------------------------------------------
   output : PROCESS (
      current_state
   )
   ----------------------------------------------------------------------------
   BEGIN
      -- Default Assignment
      xmitmt <= '0';
      -- Default Assignment To Internals

      -- Combined Actions
      CASE current_state IS
      WHEN s0 =>
         xmitmt <= '1';
      WHEN s4 =>
         xmitmt <= '1';
      WHEN OTHERS =>
         NULL;
      END CASE;

   END PROCESS output;

   -- Concurrent Statements
sout <=reg_data(0);

END fsm;
