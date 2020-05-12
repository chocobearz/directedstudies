library ieee;
use ieee.std_logic_1164.all;


ENTITY ALU_64_tb IS
END ALU_64_tb;

ARCHITECTURE tb OF ALU_64_tb IS
  SIGNAL opcode:          STD_LOGIC_VECTOR (3 downto 0);
  SIGNAL inputA,inputB:   STD_LOGIC_VECTOR(63 downto 0);
  SIGNAL result:          STD_LOGIC_VECTOR(63 downto 0);
  SIGNAL z,c:             STD_LOGIC;
BEGIN
  -- connecting testbench signals with ALU_64.vhd
  UUT : ENTITY work.ALU_64 PORT MAP (
	 opcode => opcode, 
	 inputA => inputA, 
	 inputB => inputB, 
	 result => result, 
	 z => z, 
	 c => c
  );
   tb1 : PROCESS
     CONSTANT period: time := 50 ns;
     BEGIN
	    inputA <= "0000000000000000000000000000000000000000000000000000000000000000"; 
       inputB <= "0000000000000000000000000000000000000000000000000000000000000000";  
       opcode <= "0000";
       WAIT FOR period;
       ASSERT (
		   (result = "0000000000000000000000000000000000000000000000000000000000000000") and 
			(z = '1') and 
			(c = '0')
		 )  -- expected output
       REPORT "addition test failed for 0 input" SEVERITY error;
		 
		 inputA <= "1000000000000000000000000000000000000000000000000000000000000000"; 
       inputB <= "1000000000000000000000000000000000000000000000000000000000000000";
       WAIT FOR period;
       ASSERT (
		   (result = "1000000000000000000000000000000000000000000000000000000000000000") and 
			(z = '0') and 
			(c = '1')
		 )  -- expected output
       REPORT "addition test failed for carry out with negative sign change" SEVERITY error;
		 
		 inputB <= "0111111111111111111111111111111111111111111111111111111111111111";
       WAIT FOR period;
       ASSERT (
		   (result = "1111111111111111111111111111111111111111111111111111111111111111") and 
			(z = '0') and 
			(c = '0')
		)  -- expected output
       REPORT "addition test failed for regular case" SEVERITY error;
		 
		 inputA <= "0111111111111111111111111111111111111111111111111111111111111111";
       WAIT FOR period;
       ASSERT (
		   (result = "0111111111111111111111111111111111111111111111111111111111111110") and 
			(z = '0') and 
			(c = '1')
		 )  -- expected output
       REPORT "addition test failed for carry out with positive sign change" SEVERITY error;
		 
		 inputB <= "1111111111111111111111111111111111111111111111111111111111111111";
       WAIT FOR period;
       ASSERT (
		   (result = "0111111111111111111111111111111111111111111111111111111111111110") and 
			(z = '0') and 
			(c = '1'))  -- expected output
       REPORT "addition test failed for carry with no sign change" SEVERITY error;
		 
		 inputA <= "0000000000000000000000000000000000000000000000000000000000000001"; 
       inputB <= "0000000000000000000000000000000000000000000000000000000000000001";  
       opcode <= "0001";
       WAIT FOR period;
       ASSERT (
		   (result = "0000000000000000000000000000000000000000000000000000000000000010") and 
			(z = '0') and 
			(c = '0')
		  )  -- expected output
       REPORT "logical shift left test failed for shift by 1" SEVERITY error;
		 
		 inputB <= "0000000000000000000000000000000000000000000000000000000000010000";
       WAIT FOR period;
       ASSERT (
		   (result = "0000000000000000000000000000000000000000000000010000000000000000") and 
			(z = '0') and 
			(c = '0')
		 )  -- expected output
       REPORT "logical shift left test failed for shift by 16" SEVERITY error;
		 
		 inputB <= "0000000000000000000000000000000000000000000000000000000000111111";
       WAIT FOR period;
       ASSERT (
		   (result = "1000000000000000000000000000000000000000000000000000000000000000") and 
			(z = '0') and 
			(c = '0')
		 )  -- expected output
       REPORT "logical shift left test failed for shift by 63" SEVERITY error;
		 
		 inputA <= "1111111111111111111111111111111111111111111111111111111111111111";
		 inputB <= "0000000000000000000000000000000000000000000000000000000000001000";
       WAIT FOR period;
       ASSERT (
		   (result = "1111111111111111111111111111111111111111111111111111111100000000") and 
			(z = '0') and 
			(c = '0')
		  )  -- expected output
       REPORT "logical shift left test failed for shift by 8 with ones" SEVERITY error;
		 
		 inputB <= "0000000000000000000000000000000000000000000000000001000000000000";
       WAIT FOR period;
       ASSERT (
		   (result = "0000000000000000000000000000000000000000000000000000000000000000") and 
			(z = '1') and 
			(c = '0')
		  )  -- expected output
       REPORT "logical shift left test failed for shift by 64 or more" SEVERITY error;

       inputA <= "0000000000000000000000000000000000000000000000000000000000000000"; 
       inputB <= "0000000000000000000000000000000000000000000000000000000000000000";  
       opcode <= "0010";
       WAIT FOR period;
       ASSERT (
		   (result = "0000000000000000000000000000000000000000000000000000000000000000") and 
			(z = '1') and 
			(c = '0')
		 )  -- expected output
       REPORT "subtraction test failed for 0 input" SEVERITY error;
		 
		 inputA <= "1000000000000000000000000000000000000000000000000000000000000000"; 
       inputB <= "1000000000000000000000000000000000000000000000000000000000000000";
       WAIT FOR period;
       ASSERT (
		   (result = "1000000000000000000000000000000000000000000000000000000000000000") and 
			(z = '0') and 
			(c = '1')
		 )  -- expected output
       REPORT "subtraction test failed for carry out with two negatives" SEVERITY error;
		 
		 inputB <= "0111111111111111111111111111111111111111111111111111111111111111";
       WAIT FOR period;
       ASSERT (
		   (result = "1000000000000000000000000000000000000000000000000000000000000001") and 
			(z = '0') and 
			(c = '1')
		)  -- expected output
       REPORT "subtraction test failed for carry out sign change with negative result" SEVERITY error;
		 
		 inputA <= "0111111111111111111111111111111111111111111111111111111111111111";
		 inputB <= "1000000000000000000000000000000000000000000000000000000000000001";
       WAIT FOR period;
       ASSERT (
		   (result = "0111111111111111111111111111111111111111111111111111111111111110") and 
			(z = '0') and 
			(c = '1')
		 )  -- expected output
       REPORT "subtraction test failed for carry out sign change with positive result" SEVERITY error;
		 
		 inputB <= "0000000000000000000000000000000000000000000000000000000000000001";
       WAIT FOR period;
       ASSERT (
		   (result = "0111111111111111111111111111111111111111111111111111111111111110") and 
			(z = '0') and 
			(c = '1'))  -- expected output
       REPORT "subtraction test failed for carry out with two positives" SEVERITY error;
		 
		 inputA <= "1000000000000000000000000000000000000000000000000000000000000000"; 
       inputB <= "0000000000000000000000000000000000000000000000000000000000000001";
	    opcode <= "0011";	 
       WAIT FOR period;
       ASSERT (
		   (result = "1100000000000000000000000000000000000000000000000000000000000000") and 
			(z = '0') and 
			(c = '0')
		 )  -- expected output
       REPORT "arithmetic shift right test for negative failed for shift by 1" SEVERITY error;
	    
		 inputB <= "1000000000000000000000000000000000000000000000000000000000010000";
       WAIT FOR period;
       ASSERT (
		   (result = "1111111111111111000000000000000000000000000000000000000000000000") and 
			(z = '0') and 
			(c = '0')
		 )  -- expected output
       REPORT "arithmetic shift right test for negative failed for shift by 16" SEVERITY error;
		 
		 inputB <= "0000000000000000000000000000000000000000000000000000000001000000";
       WAIT FOR period;
       ASSERT (
		   (result = "1111111111111111111111111111111111111111111111111111111111111110") and 
			(z = '0') and 
			(c = '0')
		 )  -- expected output
       REPORT "arithmetic shift right test for negative failed for shift by 64" SEVERITY error;
		 
		 inputB <= "0000000000000000000000000000000000000000000000000001000000000000";
       WAIT FOR period;
       ASSERT (
		   (result = "1111111111111111111111111111111111111111111111111111111111111111") and 
			(z = '0') and 
			(c = '0')
		  )  -- expected output
       REPORT "arithmetic shift right test for negative failed for shift by more than 64" SEVERITY error;

		 inputA <= "0100000000000000000000000000000000000000000000000000000000000000"; 
       inputB <= "0000000000000000000000000000000000000000000000000000000000000001";  
       WAIT FOR period;
       ASSERT (
		   (result = "0010000000000000000000000000000000000000000000000000000000000000") and 
			(z = '0') and 
			(c = '0')
		 )  -- expected output
       REPORT "arithmetic shift right test for positive failed for shift by 1" SEVERITY error;
	    
		 inputB <= "1000000000000000000000000000000000000000000000000000000000010000";
       WAIT FOR period;
       ASSERT (
		   (result = "0000000000000000100000000000000000000000000000000000000000000000") and 
			(z = '0') and 
			(c = '0')
		 )  -- expected output
       REPORT "arithmetic shift right test for positive failed for shift by 16" SEVERITY error;
		 
		 inputB <= "0000000000000000000000000000000000000000000000000000000000111111";
       WAIT FOR period;
       ASSERT ( 
		   (result = "0000000000000000000000000000000000000000000000000000000000000001") and 
			(z = '0') and 
			(c = '0')
		 )  -- expected output
       REPORT "arithmetic shift right test for positive failed for shift by 63" SEVERITY error;
		 
		 inputB <= "0000000000000000000000000000000000000000000000000001000000000000";
       WAIT FOR period;
       ASSERT (
		   (result = "0000000000000000000000000000000000000000000000000000000000000000") and 
			(z = '1') and 
			(c = '0')
		  )  -- expected output
       REPORT "arithmetic shift right test for positive failed for shift by more than 64" SEVERITY error;
		 
		 inputA <= "0101010101010101010101010101010101010111111111110000000000000000"; 
       inputB <= "1010101010101010101010101010101010101111111111110000000000000000";
	    opcode <= "0100";	 
       WAIT FOR period;
       ASSERT (
		   (result = "1111111111111111111111111111111111111000000000000000000000000000") and 
			(z = '0') and 
			(c = '0')
		 )  -- expected output
       REPORT "XOR test failed" SEVERITY error;
		 
		 inputA <= "1000000000000000000000000000000000000000000000000000000000000000"; 
       inputB <= "0000000000000000000000000000000000000000000000000000000000000001";
	    opcode <= "0101";	 
       WAIT FOR period;
       ASSERT (
		   (result = "0100000000000000000000000000000000000000000000000000000000000000") and 
			(z = '0') and 
			(c = '0')
		 )  -- expected output
       REPORT "logic shift right test failed for shift by 1" SEVERITY error;
	    
		 inputB <= "1000000000000000000000000000000000000000000000000000000000010000";
       WAIT FOR period;
       ASSERT (
		   (result = "0000000000000000100000000000000000000000000000000000000000000000") and 
			(z = '0') and 
			(c = '0')
		 )  -- expected output
       REPORT "logic shift right test failed for shift by 16" SEVERITY error;
		 
		 inputB <= "0000000000000000000000000000000000000000000000000000000000111111";
       WAIT FOR period;
       ASSERT ( 
		   (result = "0000000000000000000000000000000000000000000000000000000000000001") and 
			(z = '0') and 
			(c = '0')
		 )  -- expected output
       REPORT "logic shift right test failed for shift by 63" SEVERITY error;
		 
		 inputB <= "0000000000000000000000000000000000000000000000000001000000000000";
       WAIT FOR period;
       ASSERT (
		   (result = "0000000000000000000000000000000000000000000000000000000000000000") and 
			(z = '1') and 
			(c = '0')
		  )  -- expected output
       REPORT "logic shift right test failed for shift by more than 64" SEVERITY error;
		 
		 inputA <= "0100000000000000000000000000000000000000000000000000000000000000";
		 inputB <= "0000000000000000000000000000000000000000000000000000000000000001";
       WAIT FOR period;
       ASSERT (
		   (result = "0010000000000000000000000000000000000000000000000000000000000000") and 
			(z = '1') and 
			(c = '0')
		  )  -- expected output
       REPORT "logic shift right test failed for shift by 1 with positive" SEVERITY error;
	    
		 inputA <= "0101010101010101010101010101010101010111111111110000000000000000"; 
       inputB <= "1010101010101010101010101010101010101111111111110000000000000000";
	    opcode <= "0110";	 
       WAIT FOR period;
       ASSERT (
		   (result = "1111111111111111111111111111111111111111111111110000000000000000") and 
			(z = '0') and 
			(c = '0')
		 )  -- expected output
       REPORT "OR test failed" SEVERITY error;
		 
		 inputA <= "0101010101010101010101010101010101010111111111110000000000000000"; 
       inputB <= "1010101010101010101010101010101010101111111111110000000000000000";
	    opcode <= "0111";	 
       WAIT FOR period;
       ASSERT (
		   (result = "0000000000000000000000000000000000000111111111110000000000000000") and 
			(z = '0') and 
			(c = '0')
		 )  -- expected output
       REPORT "AND test failed" SEVERITY error;
		 
		 --worst case delay 1 and 0 with a carry, use 1 and 1 in the first bit to create carry for other bits
		 inputA <= "1111111111111111111111111111111111111111111111111111111111111111"; 
       inputB <= "1111111111111111111111111111111111111111111111111111111111111111";  
       opcode <= "0010";
       WAIT FOR period;
       ASSERT (
		   (result = "0000000000000000000000000000000000000000000000000000000000000000") and 
			(z = '1') and 
			(c = '1')
		 )  -- expected output
       REPORT "worst case delay test failed" SEVERITY error;
		 
		 WAIT;
		 
	END PROCESS;
END tb;
