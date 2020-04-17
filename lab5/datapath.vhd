LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;
USE ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY datapath IS
  PORT(
    load, clear, clock : IN STD_LOGIC
    );
END datapath;

ARCHITECTURE logic_function OF datapath IS
COMPONENT instruction_fetch IS
  PORT (
    addr: IN  STD_LOGIC_VECTOR(7 downto 0);
    inst: OUT STD_LOGIC_VECTOR(31 downto 0);
    pc, pcinc: OUT STD_LOGIC_VECTOR(7 downto 0);
    ld:   IN  STD_LOGIC := '0';
    clr:  IN  STD_LOGIC := '0';
    clk:  IN  STD_LOGIC := '0'
  );
END COMPONENT;
COMPONENT risc_v_decoder IS
  PORT(
    instruction    : in  STD_LOGIC_VECTOR(31 downto 0);
    rs1, rs2, rd   : out STD_LOGIC_VECTOR(4 downto 0);
   immediate      : out STD_LOGIC_VECTOR(31 downto 0);
   opcode, funct7 : out STD_LOGIC_VECTOR(6 downto 0);
   funct3         : out STD_LOGIC_VECTOR(2 downto 0) ;
	clr            : in STD_LOGIC
  );
END COMPONENT;
COMPONENT register_file IS
  PORT(
    data1, data2                  : out STD_LOGIC_VECTOR(63 downto 0);
    writedata                     : in  STD_LOGIC_VECTOR(63 downto 0);
    regwrite, clk, clr            : in  STD_LOGIC;
    readreg1, readreg2, writereg  : in  STD_LOGIC_VECTOR(4 downto 0)
    );
END COMPONENT;
COMPONENT ALU_64 IS
  GENERIC(n: INTEGER:= 64);
  PORT(
    opcode:        IN  STD_LOGIC_VECTOR (3 downto 0);
    inputA,inputB: IN  STD_LOGIC_VECTOR(n-1 downto 0);
    result:        OUT STD_LOGIC_VECTOR(n-1 downto 0);
    z,c:           OUT STD_LOGIC;
	 clr:           IN  STD_LOGIC
  );
END COMPONENT;
COMPONENT control_unit IS
  PORT(
    Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite : out STD_LOGIC;
    ALUOp                                                : out  STD_LOGIC_VECTOR(1 downto 0);
    I                                                     : in  STD_LOGIC_VECTOR(6 downto 0);
    clock, clr                                                 : in  STD_LOGIC
    );
END COMPONENT;
  COMPONENT ALU_control IS
    PORT(
      Opcode : out STD_LOGIC_VECTOR(3 downto 0);
      ALUOp  : in  STD_LOGIC_VECTOR(1 downto 0);
      Funct7 : in  STD_LOGIC_VECTOR(6 downto 0);
      Funct3 : in  STD_LOGIC_VECTOR(2 downto 0);
	   clr    : in  STD_LOGIC
      );
  END COMPONENT;
  COMPONENT imm_gen IS
    PORT(
      immediate32 : IN  STD_LOGIC_VECTOR(31 downto 0);
      immediate64 : OUT STD_LOGIC_VECTOR(63 downto 0);
      clk, clr    : IN  STD_LOGIC
      );
  END COMPONENT;
  COMPONENT data_mem IS
    PORT(
      address  : IN STD_LOGIC_VECTOR (6 DOWNTO 0);
      clock    : IN STD_LOGIC  := '1';
      data    : IN STD_LOGIC_VECTOR (63 DOWNTO 0);
      rden    : IN STD_LOGIC  := '1';
      wren    : IN STD_LOGIC ;
      q       : OUT STD_LOGIC_VECTOR (63 DOWNTO 0)
      );
  END COMPONENT;
SIGNAL lacie, simon                                  : STD_LOGIC_VECTOR(31 downto 0);
SIGNAL lily, bad, cat, sashay, away                  : STD_LOGIC_VECTOR(4 downto 0);
SIGNAL penny, abbie, slaayyy                         : STD_LOGIC_VECTOR(6 downto 0);
SIGNAL gex, feirce                                   : STD_LOGIC_VECTOR(2 downto 0);
SIGNAL sir, mix, alot, baby, got, back               : STD_LOGIC;
SIGNAL condragulations, incr                          : STD_LOGIC;
SIGNAL kween                                         : STD_LOGIC_VECTOR(1 downto 0);
SIGNAL banana                                        : STD_LOGIC_VECTOR(3 downto 0);
SIGNAL punk, rock, lives                             : STD_LOGIC_VECTOR(63 downto 0);
SIGNAL she, done, already, had, herses               : STD_LOGIC_VECTOR(63 downto 0);
SIGNAL carry, zero, branch                           : STD_LOGIC;
SIGNAL garbage, address, werk, another,choice , more : STD_LOGIC_VECTOR(7 downto 0);
BEGIN
  u1: instruction_fetch PORT MAP (addr => address,
                                  inst => lacie,
                                  pc => garbage,
											 pcinc =>another,
                                  ld   => load,
                                  clr  => clear,
                                  clk  => clock );
  u2: risc_v_decoder PORT MAP (instruction    => lacie,
                               rs1            => lily,
                               rs2            => bad,
                               rd             => cat,
                               immediate      => simon,
                               opcode         => penny,
                               funct7         => abbie,
                               funct3         => gex,
										 clr            => clear);
  u3: register_file PORT MAP(data1    => punk,
                            data2     => rock,
                            writedata => herses,
                            regwrite  => back,
                            clk       => clock,
                            readreg1  => lily,
                            readreg2  => bad,
                            writereg  => away,
									 clr       => clear );
  u4: imm_gen PORT MAP(immediate32 => simon,
                      immediate64  => lives,
                      clk          => clock,
							 clr          => clear);
  u5 : ALU_64 PORT MAP(opcode => banana,
                      inputA  => punk,
                      inputB  => she,
                      result  => done,
                      z       => zero,
                      c       => carry,
							clr      => clear );
  u6 : data_mem  PORT MAP(wren => alot,
                          rden => sir,
                          clock => clock,
                          address => done(6 downto 0),
                          data => rock,
                          q  => already );
  u7 : control_unit PORT MAP(Branch  => branch,
                            MemRead  => sir,
                            MemtoReg => mix,
                            MemWrite => alot,
                            ALUSrc   => baby,
                            RegWrite => got,
                            ALUOp    => kween,
                            I        => penny,
                            clock    => clock,
									 clr      => clear );
  u8 : ALU_control PORT MAP(Opcode => banana,
                           ALUOp   => kween,
                           Funct7  => slaayyy,
                           Funct3  => feirce,
									clr     => clear);
									
  ALU_select : PROCESS(baby, clear) IS 
  BEGIN
    IF clear = '1' THEN
	   she <= (others => '0');
    ELSIF baby = '1' THEN
      she <= lives;
    ELSE
      she <= rock;
    END IF;
  END PROCESS;
  
  Write_select : PROCESS(condragulations, clear) IS
  BEGIN
    IF clear = '1' THEN
	   herses <= (others => '0');
    ELSIF condragulations = '1' THEN
      herses <= already;
    ELSE 
      herses <= had;
    END IF;
  END PROCESS;
  
  temp_regs: PROCESS(clock, clear)
  BEGIN
    IF clear = '1' THEN
	   --RegWr
      back <= '0'; 
      --MemSel
      condragulations <= '0'; 
      --Ibuf
      feirce <= (others => '0'); 
      slaayyy <= (others => '0'); 
      --Result_reg
      had <= (others => '0'); 
      --Wr_addr
      sashay <= (others => '0'); 
      away <= sashay;
		--address from pc
		werk<= (others => '0');
		more <= (others => '0');
    ELSIF rising_edge(clock) THEN
      --RegWr
      back <= got; 
      --MemSel
      condragulations <= mix; 
      --Ibuf
      feirce <= gex; 
      slaayyy <= abbie; 
      --Result_reg
      had <= done; 
      --Wr_addr
      sashay <= cat; 
      away <= sashay;
		--address from pc
		werk<=garbage;
		more <= another;
    END IF;
  END PROCESS;
  
  addrCaculate: PROCESS(werk, lives, clear)
  BEGIN
    IF clear = '1' THEN
	   choice <= (others => '0');
	 ELSE
      choice <= werk + lives(7 downto 0);
	 END IF;
  END PROCESS;
  
branching: PROCESS(branch, feirce, clear )
  BEGIN
 IF clear = '1' THEN
  incr <= '0'; 
 ELSIF branch = ('1') THEN
   IF (feirce = "000") THEN
	  IF zero = '1' THEN
	    incr <= '1';
	  ELSE
	    incr <= '0';
	  END IF;
	ELSIF (feirce = "001") THEN
	  IF zero = '0' THEN
	    incr <= '1';
	  ELSE 
	    incr <= '0';
	  END IF;
	ELSIF (feirce = "100") THEN
	  IF ( zero = '0' and carry = '0') THEN
	    incr <= '1';
	  ELSE
	    incr <= '0';
	  END IF;
	END IF;
  ELSE
    incr <= '0';
  END IF;
END PROCESS;
  
multiplexer: PROCESS(incr, choice, another, clear)
  BEGIN
    IF clear = '1' THEN
	   address <= (others => '0');
    ELSIF(incr = '1') THEN
	   address <= choice;
	 ELSE 
	   address <= more;
    END IF;
END PROCESS;
END logic_function;