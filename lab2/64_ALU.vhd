LIBRARY ieee ;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.all;

ENTITY ALU_64 IS
  GENERIC(n: INTEGER:= 64);
  PORT(
    opcode:        IN  STD_LOGIC_VECTOR (3 downto 0);
    inputA,inputB: IN  STD_LOGIC_VECTOR(n-1 downto 0);
    result:        OUT STD_LOGIC_VECTOR(n-1 downto 0);
	 z,c:           OUT STD_LOGIC
  );
END ALU_64;

ARCHITECTURE LogicFunction OF ALU_64 IS
COMPONENT addsub IS
  PORT(
    OP:   IN  STD_LOGIC;
    A,B:  IN  STD_LOGIC_VECTOR(n-1 downto 0);
    R:    OUT STD_LOGIC_VECTOR(n-1 downto 0);
    COUT: OUT STD_LOGIC
  );
END COMPONENT;
COMPONENT logicShift IS
  PORT(
    OP:  IN  STD_LOGIC_VECTOR (1 downto 0);
    A,B: IN  STD_LOGIC_VECTOR(n-1 downto 0);
    R:   OUT STD_LOGIC_VECTOR(n-1 downto 0)
  );
END COMPONENT;
SIGNAL sum, diff, shiftll, shiftrl, shiftra, r: STD_LOGIC_VECTOR(n-1 downto 0);
CONSTANT all_zeros                            : STD_LOGIC_VECTOR(n-1 downto 0) := (others => '0');
BEGIN
PROCESS(opcode, inputA, inputB)
BEGIN
  IF opcode = "0000" THEN
    r <= sum;
  ELSIF opcode = "0001" THEN
    r <= shiftll;
  ELSIF opcode = "0010" THEN
    r <= diff;
  ELSIF opcode = "0011" THEN
    r <= shiftra;
  ELSIF opcode = "0100" THEN
    r <= inputA XOR inputB;
  ELSIF opcode = "0101" THEN
    r <= shiftrl;
  ELSIF opcode = "0110" THEN
    r <= inputA OR inputB;
  ELSIF opcode = "0111" THEN
    r <= inputA  AND inputB;
  END IF;
END PROCESS;

U1: addsub PORT MAP(OP => '0',
                    A => inputA,
                    B => inputB,
                    R => sum,
                    COUT => c
            );
U2: addsub PORT MAP(OP => '1',
                    A => inputA,
                    B => inputB,
                    R => diff,
                    COUT => c
          );
U3: logicShift PORT MAP (OP => "00",
                         A => inputA,
                         B => inputB,
                         R => shiftll
);
U4: logicShift PORT MAP (OP => "01",
                         A => inputA,
                         B => inputB,
                         R => shiftrl
             );
U5: logicShift PORT MAP (OP => "10",
                         A => inputA,
                         B => inputB,
                         R => shiftra
              );
z <= '1' WHEN r = all_zeros ELSE '0';
result <= r;
END LogicFunction;
