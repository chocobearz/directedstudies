LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;
USE ieee.numeric_std.all;

ENTITY imm_gen IS
  PORT(
    immediate32 : IN  STD_LOGIC_VECTOR(31 downto 0);
	 immediate64 : OUT STD_LOGIC_VECTOR(63 downto 0);
    clr         : IN  STD_LOGIC
    );
END imm_gen;

ARCHITECTURE logic_function OF imm_gen IS
BEGIN
  PROCESS(clr, immediate32) IS
  BEGIN
    IF clr = '1' THEN
	   immediate64 <= (others => '0');
	 ELSIF immediate32(31) = '0' THEN
	   immediate64 <= "00000000000000000000000000000000" & immediate32;
	 ELSE
		  immediate64 <= "11111111111111111111111111111111" & immediate32;
    END IF;
  END PROCESS;
END logic_function;