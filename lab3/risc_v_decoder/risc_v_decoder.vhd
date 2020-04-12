LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
 
ENTITY risc_v_decoder IS
  PORT(
    instruction    : in  STD_LOGIC_VECTOR(31 downto 0);
    rs1, rs2, rd   : out STD_LOGIC_VECTOR(4 downto 0);
	 immediate      : out STD_LOGIC_VECTOR(31 downto 0);
	 opcode, funct7 : out STD_LOGIC_VECTOR(6 downto 0);
	 funct3         : out STD_LOGIC_VECTOR(2 downto 0);
    clr            : in  STD_LOGIC 
  );
END risc_v_decoder;
 
ARCHITECTURE logic_function OF risc_v_decoder IS
SIGNAL inst_type      :  STD_LOGIC_VECTOR(6 downto 0);
BEGIN
  
  inst_type <= instruction(6 downto 0);
  PROCESS(inst_type, instruction, clr)
  BEGIN
    IF clr = '1' THEN
	   immediate  <= (OTHERS => '0');
		funct7     <= (OTHERS => '0');
		rs2        <= (OTHERS => '0');
		rs1        <= (OTHERS => '0');
		funct3     <= (OTHERS => '0');
		rd         <= (OTHERS => '0');
		opcode     <= (OTHERS => '0');
    -- R-type
    ELSIF (inst_type = "0110011") THEN
	   immediate  <= instruction;
		funct7     <= instruction(31 downto 25);
		rs2        <= instruction(24 downto 20);
		rs1        <= instruction(19 downto 15);
		funct3     <= instruction(14 downto 12);
		rd         <= instruction(11 downto 7);
		opcode     <= inst_type;
	 -- ld
	 ELSIF (inst_type = "0000011") THEN 	   
		funct7     <= "0000000";
		rs2        <= "00000";
		immediate(11 downto 0)  <= instruction(31 downto 20);
		IF(instruction(31) = '1') THEN
		  immediate(31 downto 12) <= "11111111111111111111";
		ELSE
		  immediate(31 downto 12) <= (others => '0');
		END IF;
		rs1        <= instruction(19 downto 15);
		funct3     <= instruction(14 downto 12);
		rd         <= instruction(11 downto 7);
		opcode     <= inst_type;
	 -- I-type	
	 ELSIF (inst_type = "0010011") THEN 	   
		funct7     <= instruction(31 downto 25);
		rs2        <= "00000";
		immediate(11 downto 0)  <= instruction(31 downto 20);
		IF(instruction(31) = '1') THEN
		  immediate(31 downto 12) <= "11111111111111111111";
		ELSE
		  immediate(31 downto 12) <= (others => '0');
		END IF;
		rs1        <= instruction(19 downto 15);
		funct3     <= instruction(14 downto 12);
		rd         <= instruction(11 downto 7);
		opcode     <= inst_type;
	 -- S-type
	 ELSIF (inst_type = "0100011") THEN
		immediate(11 downto 5)  <= instruction(31 downto 25); 
		immediate(4 downto 0)   <= instruction(11 downto 7); 
		IF(instruction(31) = '1') THEN
		  immediate(31 downto 12) <= "11111111111111111111";
		ELSE
		  immediate(31 downto 12) <= (others => '0');
		END IF;
		funct7                  <= "0000000";
		rd                      <= "00000";
		rs2                     <= instruction(24 downto 20);
		rs1                     <= instruction(19 downto 15);
		funct3                  <= instruction(14 downto 12);
		opcode                  <= inst_type;
	 -- SB-type
	 ELSIF (inst_type = "1100011") THEN
		immediate(12)           <= instruction(31); 
		immediate(11)           <= instruction(7);
		immediate(10 downto 5)  <= instruction(30 downto 25); 
		immediate(4 downto 1)   <= instruction(11 downto 8);
		IF(instruction(31) = '1') THEN
		  immediate(31 downto 13) <= "1111111111111111111";
		ELSE
		  immediate(31 downto 13) <= (others => '0');
		END IF;
		immediate(0)            <= '0';
		funct7                  <= "0000000";
		rd                      <= "00000";
		rs2                     <= instruction(24 downto 20);
		rs1                     <= instruction(19 downto 15);
		funct3                  <= instruction(14 downto 12);
		opcode                  <= inst_type;
	 END IF;
  END PROCESS;
END logic_function;
