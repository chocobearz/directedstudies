LIBRARY ieee ;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.all;

ENTITY test_alu IS
  PORT(
    SW:                                       IN  STD_LOGIC_VECTOR(17 downto 0);
    HEX1, HEX0, HEX7, HEX6, HEX5, HEX4, HEX2: OUT STD_LOGIC_VECTOR(6 downto 0);
	 LEDR, LEDG:                               OUT STD_LOGIC_VECTOR(17 downto 0)
  );
END test_alu;

ARCHITECTURE LogicFunction OF test_alu IS
COMPONENT ALU_64 IS
  PORT(
    opcode:        IN  STD_LOGIC_VECTOR(3 downto 0);
    inputA,inputB: IN  STD_LOGIC_VECTOR(7 downto 0);
    result:        OUT STD_LOGIC_VECTOR(7 downto 0);
	 z,c:           OUT STD_LOGIC
  );
 END COMPONENT;
COMPONENT seven_segments IS
  PORT(
		input:      IN  STD_LOGIC_VECTOR(7 downto 0);
		seg1, seg2: OUT STD_LOGIC_VECTOR(6 downto 0)
   );	
END COMPONENT;
SIGNAL opconverter:                                              STD_LOGIC_VECTOR(3 downto 0);
SIGNAL inputbufferA, inputbufferB, result:                       STD_LOGIC_VECTOR(7 downto 0);
SIGNAL resultupper, resultlower, Alower, Aupper, Blower, Bupper: STD_LOGIC_VECTOR(6 downto 0);
BEGIN
  inputbufferA <= SW(17 downto 10);
  inputbufferB <= SW(10 downto 3);
  opconverter  <= '0' & SW(2 downto 0);
  U1: ALU_64 PORT MAP (opcode => opconverter,
                       inputA => inputbufferA,
                       inputB => inputbufferB,
                       result => result,
							  z      => LEDG(0),
							  c      => LEDG(1)
              );
  	U2: seven_segments PORT MAP (input => result,
	                             seg1 => resultupper,
										  seg2 => resultlower
							 );
  	U3: seven_segments PORT MAP (input => inputbufferA,
	                             seg1 => Aupper,
										  seg2 => Alower
							 );
  	U4: seven_segments PORT MAP (input => inputbufferB,
	                             seg1 => Bupper,
										  seg2 => Blower
							 );
	HEX1  <= resultupper;
	HEX0  <= resultlower;
	HEX5  <= Bupper;
	HEX4  <= Blower;
	HEX7  <= Aupper;
	HEX6  <= Alower;
	LEDR(0) <= inputbufferA(7);
	LEDR(1) <= inputbufferB(7);
	HEX2  <= "1000000" WHEN (result(7) = '0') ELSE
	         "1111001" WHEN (result(7) = '1');
END LogicFunction;

