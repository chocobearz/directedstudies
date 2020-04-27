LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;

ENTITY static_prediction_unit IS
PORT (static_type, clr, clock: IN  STD_LOGIC;
      predict   : OUT STD_LOGIC);
END static_prediction_unit;

ARCHITECTURE LogicFunction OF static_prediction_unit IS 
BEGIN 
-- multi use predictor static_type = '1' will always branch
-- produces '1' on rising edge
-- static_type = '0' will never branch
-- produces '0' on rising edge
  PROCESS (clr, clock) 
  BEGIN 
    IF clr = '1' THEN
	   predict <= '0';
	 ELSIF(rising_edge(clock)) THEN
	   IF static_type = '0' THEN
	     predict <= '0';
		ELSE
		  predict <= '1';
		END IF;
	 END IF;
  END PROCESS;
END LogicFunction;