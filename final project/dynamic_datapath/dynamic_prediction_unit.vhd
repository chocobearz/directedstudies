LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;

ENTITY dynamic_prediction_unit IS
PORT (taken, clr, clock, branch: IN  STD_LOGIC;
      predict                  : OUT STD_LOGIC);
END dynamic_prediction_unit;

ARCHITECTURE LogicFunction OF dynamic_prediction_unit IS
 TYPE State_type IS (A, B, C, D);
	SIGNAL state_present, state_next : State_Type; 
BEGIN 
  PROCESS (taken, state_present) 
  BEGIN 
	 --predict taken
	 CASE state_present IS
		WHEN A => 
		   --taken again
			IF branch = '0' THEN
			   state_next <= A;
			ELSIF taken ='1' AND branch = '1' THEN 
				state_next <= A;
			--not taken
			ELSIF taken ='0' AND branch = '1' THEN 
		      state_next <= B;	
			END IF; 
      --predict taken once but not taken once intermediate
		WHEN B => 
		   --predict taken
			IF branch = '0' THEN
			   state_next <= B;
			ELSIF taken='1' AND branch = '1' THEN 
				state_next <= A; 
			--not taken
			ELSIF taken ='0' AND branch = '1' THEN 
			   state_next <= C;
			END IF; 
      -- predict taken once but not taken once intermediate
		WHEN C => 
		   -- taken
			IF branch = '0' THEN
			   state_next <= C;
			ELSIF taken='1' AND branch = '1' THEN 
				state_next <= B;
			ELSIF taken= '0' AND branch = '1' THEN 
		      state_next<= D;	
			END IF; 
      -- predict not taken twice
		WHEN D => 
		   --taken
			IF branch = '0' THEN
			   state_next <= D;
			ELSIF taken='1' AND branch = '1' THEN 
				state_next <= C; 
			ELSIF taken ='0' AND branch = '1' THEN 
				state_next <= D; 
			END IF;	
	  END CASE; 
  END PROCESS;
  
  PROCESS(clock, clr)
  BEGIN
    IF clr = '1'THEN
	   state_present <= D;
	 ELSIF (rising_edge(clock)) THEN
	    state_present <= state_next;
	 END IF;
  END PROCESS;
  
  predict <= '0' WHEN (state_present = D OR state_present = C) ELSE '1';
END LogicFunction;