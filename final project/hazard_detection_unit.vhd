LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;

ENTITY hazard_detection_unit IS
PORT (clock, clr, branch: IN  STD_LOGIC;
      predicted, actual : IN  STD_LOGIC_VECTOR(7 downto 0);
      hazard            : OUT STD_LOGIC);
END hazard_detection_unit;

ARCHITECTURE LogicFunction OF hazard_detection_unit IS
  SIGNAL predicted_hold : STD_LOGIC_VECTOR(7 downto 0);
BEGIN 
  PROCESS (clock, clr)
  BEGIN 
    IF clr = '1' THEN
	   hazard <= '0';
	 ELSIF rising_edge(clock) THEN
	 -- must compare with the address currently in the RD register
	   IF (branch = '1' AND predicted /= actual) THEN
		  hazard <= '1';
		ELSE 
		  hazard <= '0';
		END IF;
    END IF;
	END PROCESS;
END LogicFunction;
