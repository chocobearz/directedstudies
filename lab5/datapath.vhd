LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;
USE ieee.numeric_std.all;

ENTITY datapath IS 
  PORT(
    load, clear, clock      : IN STD_LOGIC;
	 test: OUT STD_LOGIC_VECTOR(63 downto 0)
    );
END datapath;

ARCHITECTURE logic_function OF datapath IS
COMPONENT instruction_fetch IS
  PORT (
    addr: IN  STD_LOGIC_VECTOR(7 downto 0);
    inst: OUT STD_LOGIC_VECTOR(31 downto 0);
	 pc  : OUT STD_LOGIC_VECTOR(7 downto 0);
    ld:   IN  STD_LOGIC := '0';
    clr:  IN  STD_LOGIC := '0';
    inc:  IN  STD_LOGIC := '0';
    clk:  IN  STD_LOGIC := '0'
  );
END COMPONENT;
COMPONENT risc_v_decoder IS
  PORT(
    instruction    : in  STD_LOGIC_VECTOR(31 downto 0);
    rs1, rs2, rd   : out STD_LOGIC_VECTOR(4 downto 0);
	 immediate      : out STD_LOGIC_VECTOR(31 downto 0);
	 opcode, funct7 : out STD_LOGIC_VECTOR(6 downto 0);
	 funct3         : out STD_LOGIC_VECTOR(2 downto 0) 
  );
END COMPONENT;
COMPONENT register_file IS
  PORT(
    data1, data2                  : out STD_LOGIC_VECTOR(63 downto 0);
    writedata                     : in  STD_LOGIC_VECTOR(63 downto 0);
    regwrite, clk                 : in  STD_LOGIC;
    readreg1, readreg2, writereg  : in  STD_LOGIC_VECTOR(4 downto 0)
    );
END COMPONENT;
COMPONENT ALU_64 IS
  GENERIC(n: INTEGER:= 64);
  PORT(
    opcode:        IN  STD_LOGIC_VECTOR (3 downto 0);
    inputA,inputB: IN  STD_LOGIC_VECTOR(n-1 downto 0);
    result:        OUT STD_LOGIC_VECTOR(n-1 downto 0);
	 z,c:           OUT STD_LOGIC
  );
END COMPONENT;
COMPONENT control_unit IS
  PORT(
    Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite : out STD_LOGIC;
    ALUOp	                                              : out  STD_LOGIC_VECTOR(1 downto 0);
    I                                                     : in  STD_LOGIC_VECTOR(6 downto 0);
    clock                                                 : in  STD_LOGIC
    );
END COMPONENT;
COMPONENT ALU_control IS
  PORT(
    Opcode : out STD_LOGIC_VECTOR(3 downto 0);
    ALUOp  : in  STD_LOGIC_VECTOR(1 downto 0);
    Funct7 : in  STD_LOGIC_VECTOR(6 downto 0);
	 Funct3 : in  STD_LOGIC_VECTOR(2 downto 0)
    );
END COMPONENT;
COMPONENT imm_gen IS
  PORT(
    immediate32 : IN  STD_LOGIC_VECTOR(31 downto 0);
	immediate64 : OUT STD_LOGIC_VECTOR(63 downto 0);
    clk         : IN  STD_LOGIC
    );
END COMPONENT;
COMPONENT data_mem IS
  PORT(
		address	: IN STD_LOGIC_VECTOR (6 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (63 DOWNTO 0);
		rden		: IN STD_LOGIC  := '1';
		wren		: IN STD_LOGIC ;
		q		   : OUT STD_LOGIC_VECTOR (63 DOWNTO 0)
    );
COMPONENT fulladder IS
  PORT(
    A,B, CIN: IN  STD_LOGIC;
    SUM,COUT: OUT STD_LOGIC
  );
 END COMPONENT;
END COMPONENT;
SIGNAL lacie, simon                                  : STD_LOGIC_VECTOR(31 downto 0);
SIGNAL lily, bad, cat, nawt, today, satan            : STD_LOGIC_VECTOR(4 downto 0);
SIGNAL penny, abbie, sashay, away                    : STD_LOGIC_VECTOR(6 downto 0);
SIGNAL gex, slaayyy, feirce                          : STD_LOGIC_VECTOR(2 downto 0);
SIGNAL sir, mix, alot, baby, got, back               : STD_LOGIC;
SIGNAL con, drag, ulations, you, gotta, werk, diva   : STD_LOGIC;
SIGNAL kween                                         : STD_LOGIC_VECTOR(1 downto 0);
SIGNAL banana, hammock                               : STD_LOGIC_VECTOR(3 downto 0);
SIGNAL punk, rock, lives, forever                    : STD_LOGIC_VECTOR(63 downto 0);
SIGNAL she, done, already, dun, had, herses          : STD_LOGIC_VECTOR(63 downto 0);
SIGNAL carry, zero, branch, dc                       : STD_LOGIC;
SIGNAL dayum, gurl                                   : STD_LOGIC_VECTOR(7 downto 0);
SIGNAL address                                       : STD_LOGIC_VECTOR(11 downto 0);
BEGIN
  u1: instruction_fetch PORT MAP (addr => address,
                                  pc   => dayum,
                                  inst => lacie,
                                  ld   => load,
                                  clr  => clear,
                                  inc  => inc,
                                  clk  => clock );
  u2: risc_v_decoder PORT MAP (instruction    => lacie,
                               rs1            => lily,
                               rs2            => bad,
                               rd             => cat,
                               immediate      => simon,
                               opcode         => penny,
                               funct7         => abbie,
                               funct3         => gex );
  u3: register_file PORT MAP(data1    => punk,
                            data2     => rock,
                            writedata => had,
                            regwrite  => con,
                            clk       => clock,
                            readreg1  => lily,
                            readreg2  => bad,
                            writereg  => satan );
  u4: imm_gen PORT MAP(immediate32 => simon,
                      immediate64  => lives,
                      clk          => clock );
  u5 : ALU_64 PORT MAP(opcode => banana,
                      inputA  => punk,
                      inputB  => she,
                      result  => done,
                      z       => zero,
                      c       => carry );
  u6 : data_mem  PORT MAP(wren => gotta,
                          rden => ulations,
                          clock => clock,
                          address => done(6 downto 0),
                          data => rock,
                          q  => dun );
  u7 : control_unit PORT MAP(Branch  => branch,
                            MemRead  => sir,
                            MemtoReg => mix,
                            MemWrite => alot,
                            ALUSrc   => baby,
                            RegWrite => got,
                            ALUOp    => kween,
                            I        => penny,
                            clock    => clock );
  u8 : ALU_control PORT MAP(Opcode => banana,
                           ALUOp   => kween,
                           Funct7  => away,
                           Funct3  => feirce);
  u9 : fulladder PORT MAP(A => gurl,
                          B => lives(11 downto 0),
								  CIN => '0',
                          SUM => address,
								  COUT => dc);
  ALU_select : PROCESS(baby) IS 
  BEGIN
    IF baby = '1' THEN
      she <= lives;
    ELSE
      she <= rock;
    END IF;
  END PROCESS;
  Write_select : PROCESS(diva) IS
  BEGIN
    IF diva = '1' THEN
      had <= dun;
    ELSE 
      had <= forever;
    END IF;
  END PROCESS;
  test <= had;
  
temp_regs: PROCESS(clock)
  BEGIN
    IF rising_edge(clock) THEN
	    --RegWr
       back <= got; 
       con <= back;
		 --MRd
       drag <= sir; 
       ulations <= drag;		 
		 --MWr
		 you <= alot; 
       gotta <= you;
		 --MemSel
		 werk <= mix; 
       diva <= werk;
		 --Ibuf
		 slaayyy <= gex; 
       feirce <= slaayyy;
		 sashay <= abbie; 
       away <= sashay;
		 --Result_reg
		 herses <= done; 
       forever <= herses;
		 --Wr_addr
		 nawt <= cat; 
       today <= nawt;
		 satan <= today;
		 --pc_temp
		 gurl <= dayum;
     END IF;
  END PROCESS;
  branching: PROCESS(branch, feirce )
    BEGIN
	 IF branch = ('1') THEN
	   IF (feirce = "000") THEN
		  IF z = '1' THEN
		    inc <= '0';
		  ELSE
		    inc <= '1';
		  END IF;
		ELSIF (feirce = "001") THEN
		  IF z = '0' THEN
		    inc <= '0';
		  ELSE 
		    inv <= '1';
		  END IF;
		ELSIF (feirce = "100") THEN
		  IF ( z = '0' and c = '0') THEN
		    inc <= '0';
		  ELSE
		    inc <= '1';
		  END IF;
		END IF;
  END PROCESS;
END logic_function;