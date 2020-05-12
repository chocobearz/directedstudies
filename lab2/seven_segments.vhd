LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY seven_segments IS
	PORT(
		input:      IN  STD_LOGIC_VECTOR(7 downto 0);
		seg1, seg2: OUT STD_LOGIC_VECTOR(6 downto 0)
   );		
END seven_segments;

ARCHITECTURE LogicFunction OF seven_segments IS
 SIGNAL inputupper, inputlower : STD_LOGIC_VECTOR(3 downto 0);
BEGIN
inputupper <= input(7 downto 4);
inputlower <= input(3 downto 0);

seg1 <= "1000000" WHEN (inputupper = "0000") ELSE -- '0X'
        "1111001" WHEN (inputupper = "0001") ELSE -- '1X'
        "0100100" WHEN (inputupper = "0010") ELSE -- '2X'
        "0110000" WHEN (inputupper = "0011") ELSE -- '3X'
        "0011001" WHEN (inputupper = "0100") ELSE -- '4X' 
        "0010010" WHEN (inputupper = "0101") ELSE -- '5X'
        "0000010" WHEN (inputupper = "0110") ELSE -- '6X'
        "1111000" WHEN (inputupper = "0111") ELSE -- '7X'
        "1000000" WHEN (inputupper = "1111" AND inputlower /= "0000") ELSE -- '-0X'
        "1111001" WHEN ((inputupper = "1110" AND inputlower /= "0000") OR (inputupper = "1111" AND inputlower = "0000")) ELSE -- '-1X'
        "0100100" WHEN ((inputupper = "1101" AND inputlower /= "0000") OR (inputupper = "1110" AND inputlower = "0000")) ELSE -- '-2X'
        "0110000" WHEN ((inputupper = "1100" AND inputlower /= "0000") OR (inputupper = "1101" AND inputlower = "0000")) ELSE -- '-3X'
        "0011001" WHEN ((inputupper = "1011" AND inputlower /= "0000") OR (inputupper = "1100" AND inputlower = "0000")) ELSE -- '-4X'
        "0010010" WHEN ((inputupper = "1010" AND inputlower /= "0000") OR (inputupper = "1011" AND inputlower = "0000")) ELSE -- '-5X'
        "0000010" WHEN ((inputupper = "1001" AND inputlower /= "0000") OR (inputupper = "1010" AND inputlower = "0000")) ELSE -- '-6X
        "1111000" WHEN ((inputupper = "1000" AND inputlower /= "0000") OR (inputupper = "1001" AND inputlower = "0000")) ELSE --'7X'
        "0000000" WHEN (inputupper = "1000" AND inputlower = "0000"); -- '-80' --whyyyyyy????? 
		  --null
			 
seg2 <= "1000000" WHEN (inputlower = "0000") ELSE -- '0'
        "1111001" WHEN (inputlower = "0001" AND inputupper(3) = '0') ELSE -- '1'
        "0100100" WHEN (inputlower = "0010" AND inputupper(3) = '0') ELSE -- '2'
        "0110000" WHEN (inputlower = "0011" AND inputupper(3) = '0') ELSE -- '3'
        "0011001" WHEN (inputlower = "0100" AND inputupper(3) = '0') ELSE -- '4' 
        "0010010" WHEN (inputlower = "0101" AND inputupper(3) = '0') ELSE -- '5'
        "0000010" WHEN (inputlower = "0110" AND inputupper(3) = '0') ELSE -- '6'
        "1111000" WHEN (inputlower = "0111" AND inputupper(3) = '0') ELSE -- '7'
        "0000000" WHEN (inputlower = "1000" AND inputupper(3) = '0') ELSE -- '8'
        "0010000" WHEN (inputlower = "1001" AND inputupper(3) = '0') ELSE -- '9'
        "0001000" WHEN (inputlower = "1010" AND inputupper(3) = '0') ELSE -- 'A'
        "0000011" WHEN (inputlower = "1011" AND inputupper(3) = '0') ELSE -- 'b'
        "1000110" WHEN (inputlower = "1100" AND inputupper(3) = '0') ELSE -- 'C'
        "0100001" WHEN (inputlower = "1101" AND inputupper(3) = '0') ELSE -- 'd'
        "0000110" WHEN (inputlower = "1110" AND inputupper(3) = '0') ELSE -- 'E'
        "0001110" WHEN (inputlower = "1111" AND inputupper(3) = '0') ELSE -- 'F'
        "1111001" WHEN (inputlower = "1111" AND inputupper(3) = '1') ELSE -- '-1'
        "0100100" WHEN (inputlower = "1110" AND inputupper(3) = '1') ELSE -- '-2'
        "0110000" WHEN (inputlower = "1101" AND inputupper(3) = '1') ELSE -- '-3'
        "0011001" WHEN (inputlower = "1100" AND inputupper(3) = '1') ELSE -- '-4' 
        "0010010" WHEN (inputlower = "1011" AND inputupper(3) = '1') ELSE -- '-5'
        "0000010" WHEN (inputlower = "1010" AND inputupper(3) = '1') ELSE -- '-6'
        "1111000" WHEN (inputlower = "1001" AND inputupper(3) = '1') ELSE -- '-7'
        "0000000" WHEN (inputlower = "1000" AND inputupper(3) = '1') ELSE -- '-8'
        "0010000" WHEN (inputlower = "0111" AND inputupper(3) = '1') ELSE -- '-9'
        "0001000" WHEN (inputlower = "0110" AND inputupper(3) = '1') ELSE -- '-A'
        "0000011" WHEN (inputlower = "0101" AND inputupper(3) = '1') ELSE -- '-b'
        "1000110" WHEN (inputlower = "0100" AND inputupper(3) = '1') ELSE -- '-C'
        "0100001" WHEN (inputlower = "0011" AND inputupper(3) = '1') ELSE -- '-d'
        "0000110" WHEN (inputlower = "0010" AND inputupper(3) = '1') ELSE -- '-E'
        "0001110" WHEN (inputlower = "0001" AND inputupper(3) = '1'); -- '-F'
END LogicFunction;