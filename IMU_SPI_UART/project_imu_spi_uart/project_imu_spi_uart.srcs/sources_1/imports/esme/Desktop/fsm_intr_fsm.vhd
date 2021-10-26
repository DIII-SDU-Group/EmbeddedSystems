-- hds header_start
--
-- VHDL Entity key_encoder_4_4.fsm_intr.interface
--
-- Created:
--          by - Emad
--          at - 08:22:39 10/10/2019
--
--
-- hds header_end
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;


ENTITY fsm_intr IS
   PORT( 
      clk    : IN     std_logic;
      rst    : IN     std_logic;
      strobe : IN     std_logic;
      intr   : OUT    std_logic
   );

-- Declarations

END fsm_intr ;

-- hds interface_end
--
-- VHDL Architecture key_encoder_4_4.fsm_intr.fsm
--
-- Created:
--          by - Emad
--          at - 08:22:39 10/10/2019
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;


ARCHITECTURE fsm OF fsm_intr IS

   -- Architecture Declarations
   TYPE STATE_TYPE IS (s0, s1, s2);

   -- State vector declaration
   ATTRIBUTE state_vector : string;
   ATTRIBUTE state_vector OF fsm : ARCHITECTURE IS "current_state" ;


   -- Declare current and next state signals
   SIGNAL current_state : STATE_TYPE ;
   SIGNAL next_state : STATE_TYPE ;

BEGIN

   ----------------------------------------------------------------------------
   clocked : PROCESS(clk, rst)
   ----------------------------------------------------------------------------
   BEGIN
      IF (rst = '1') THEN
         current_state <= s0;
         -- Reset Values
      ELSIF (rising_edge(clk)) THEN
         current_state <= next_state;
         -- Default Assignment To Internals

      END IF;

   END PROCESS clocked;

   ----------------------------------------------------------------------------
   nextstate : PROCESS (current_state, strobe)
   ----------------------------------------------------------------------------
   BEGIN
      CASE current_state IS
      WHEN s0 =>
         IF (strobe = '1') THEN
            next_state <= s1;
         ELSE
            next_state <= s0;
         END IF;
      WHEN s1 =>
            next_state <= s2;
      WHEN s2 =>
         IF (strobe = '0') THEN
            next_state <= s0;
         ELSE
            next_state <= s2;
         END IF;
      WHEN OTHERS =>
         next_state <= s0;
      END CASE;

   END PROCESS nextstate;

   ----------------------------------------------------------------------------
   output : PROCESS (current_state)
   ----------------------------------------------------------------------------
   BEGIN
      -- Default Assignment
      intr <= '0';
      -- Default Assignment To Internals

      -- Combined Actions
      CASE current_state IS
      WHEN s0 =>
         intr <= '0';
      WHEN s1 =>
         intr <= '1';
      WHEN s2 =>
         intr <= '0';
      WHEN OTHERS =>
         NULL;
      END CASE;

   END PROCESS output;

   -- Concurrent Statements

END fsm;
