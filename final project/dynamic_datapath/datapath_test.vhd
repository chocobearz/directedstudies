LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;
USE ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY datapath_test IS
  PORT(
    clear, clock : IN STD_LOGIC;
    car, zer, bran, increment, stl, prdct, selec: BUFFER STD_LOGIC;
    writedata,imm      : BUFFER STD_LOGIC_VECTOR(63 downto 0);
    writeaddr         : BUFFER STD_LOGIC_VECTOR(4 downto 0);
	 addr,pc  , pc1,branchaddr     : BUFFER STD_LOGIC_VECTOR(7 downto 0);
    rd1, rd2           : BUFFER STD_LOGIC_VECTOR(4 downto 0);
	 alu22, alu11       : BUFFER STD_LOGIC_VECTOR(63 downto 0);
	 sel1, sel2  : buffer STD_LOGIC_VECTOR(1 downto 0)
    );
END datapath_test;

ARCHITECTURE logic_function OF datapath_test IS
COMPONENT instruction_fetch IS
  PORT (
    addr: IN  STD_LOGIC_VECTOR(7 downto 0);
    inst: OUT STD_LOGIC_VECTOR(31 downto 0);
    pc : OUT STD_LOGIC_VECTOR(7 downto 0);
    ld:   IN  STD_LOGIC := '0';
    clr:  IN  STD_LOGIC := '0';
    inc:  IN  STD_LOGIC := '0';
    clk,stall:  IN  STD_LOGIC := '0';
	 predict : IN STD_LOGIC;
	 branch : IN STD_LOGIC_VECTOR(6 downto 0)
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
    regwrite, clr,clk             : in  STD_LOGIC;
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
    ALUOp                                                 : out  STD_LOGIC_VECTOR(1 downto 0);
    I                                                     : in  STD_LOGIC_VECTOR(6 downto 0);
    clr,clock, stall, staystall, morestall                : in  STD_LOGIC
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
      clr         : IN  STD_LOGIC
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
  COMPONENT IF_reg IS
    PORT(
      clear, clock    : IN STD_LOGIC;	
	   pc_in           : IN STD_LOGIC_VECTOR(7 downto 0);
	   pc_out          : OUT STD_LOGIC_VECTOR(7 downto 0);
		stall,staystall          : IN STD_LOGIC;
	   rd1_in, rd2_in,wraddr_in    :IN  STD_LOGIC_VECTOR(4 downto 0);
	   rd1_out, rd2_out,wraddr_out :OUT STD_LOGIC_VECTOR(4 downto 0);
	   control_in, fun7_in         :IN  STD_LOGIC_VECTOR(6 downto 0);
	   control_out, fun7_out       :OUT STD_LOGIC_VECTOR(6 downto 0);
	   fun3_in                     :IN  STD_LOGIC_VECTOR(2 downto 0);
	   fun3_out                    :OUT STD_LOGIC_VECTOR(2 downto 0);
	   imm_in                      :IN  STD_LOGIC_VECTOR(63 downto 0);
	   imm_out                     :OUT STD_LOGIC_VECTOR(63 downto 0)
    );
  END COMPONENT;
  COMPONENT RD_reg IS
    PORT(
      clear, clock, stall, staystall, morestall           : IN  STD_LOGIC;
	   Data1_in, Data2_in, imm_in    : IN  STD_LOGIC_VECTOR(63 downto 0);
	   wradd_in                      : IN  STD_LOGIC_VECTOR(4 downto 0);
      Data1_out, Data2_out, imm_out : OUT STD_LOGIC_VECTOR(63 downto 0);
	   wradd_out                     : OUT STD_LOGIC_VECTOR(4 downto 0);
		fun7_in                       : IN  STD_LOGIC_VECTOR(6 downto 0);
		fun7_out                      : OUT STD_LOGIC_VECTOR(6 downto 0);
		fun3_in                       : IN  STD_LOGIC_VECTOR(2 downto 0);
		fun3_out                      : OUT STD_LOGIC_VECTOR(2 downto 0);
	   src1_in                       : IN  STD_LOGIC_VECTOR(4 downto 0);
	   src1_out                      : OUT STD_LOGIC_VECTOR(4 downto 0);
	   src2_in                       : IN  STD_LOGIC_VECTOR(4 downto 0);
	   src2_out                      : OUT STD_LOGIC_VECTOR(4 downto 0)
     );
  END COMPONENT;
  COMPONENT control_RD_reg IS
    PORT(
      clear, clock, ALUSrc_in, RegWrite_in, staystall  : IN  STD_LOGIC;
      MemRead_in, MemtoReg_in, MemWrite_in             : IN  STD_LOGIC;
      ALUOp_in	                                        : IN  STD_LOGIC_VECTOR(1 downto 0);
	   ALUSrc_out, RegWrite_out, MemWrite_out           : OUT STD_LOGIC;
      MemRead_out, MemtoReg_out                        : OUT STD_LOGIC;
      ALUOp_out	                                     : OUT STD_LOGIC_VECTOR(1 downto 0)
    );
  END COMPONENT;
  COMPONENT EXE_reg IS
    PORT(
      clear, clock, MemtoReg_in, RegWrite_in : IN  STD_LOGIC;
	   output_in                              : IN  STD_LOGIC_VECTOR(63 downto 0);
	   wradd_in                               : IN  STD_LOGIC_VECTOR(4 downto 0);
      output_out                             : OUT STD_LOGIC_VECTOR(63 downto 0);
	   wradd_out                              : OUT STD_LOGIC_VECTOR(4 downto 0);
		MemtoReg_out, RegWrite_out             : OUT STD_LOGIC
    );
  END COMPONENT;
  COMPONENT MEM_reg IS
    PORT(
      clear, clock, MemtoReg_in, RegWrite_in : IN  STD_LOGIC;
	   output_in, memdata_in                  : IN  STD_LOGIC_VECTOR(63 downto 0);
	   wradd_in                               : IN  STD_LOGIC_VECTOR(4 downto 0);
	   MemtoReg_out, RegWrite_out             : OUT STD_LOGIC;
      output_out, memdata_out                : OUT STD_LOGIC_VECTOR(63 downto 0);
	   wradd_out                              : OUT STD_LOGIC_VECTOR(4 downto 0)
    );
  END COMPONENT;
  COMPONENT forwarding_unit IS
  PORT (
    EXE_wraddr, MEM_wraddr : IN  STD_LOGIC_VECTOR( 4 downto 0 );
	 ALUsrc                 : IN  STD_LOGIC;
    src1, src2             : IN  STD_LOGIC_VECTOR( 4 downto 0);
    fwdA,fwdB              : OUT STD_LOGIC_VECTOR( 1 downto 0)
  );
  END COMPONENT;
  COMPONENT dynamic_prediction_unit IS
  PORT (taken, clr, clock, branch: IN  STD_LOGIC;
        predict          : OUT STD_LOGIC);
  END COMPONENT;
  COMPONENT ALU_branch IS
  GENERIC(n: INTEGER:= 64);
  PORT(
    inputA,inputB: IN  STD_LOGIC_VECTOR(n-1 downto 0);
    result:        OUT STD_LOGIC_VECTOR(n-1 downto 0);
	 z,c:           OUT STD_LOGIC;
	 clr:           IN  STD_LOGIC
  );
  END COMPONENT;
  COMPONENT early_forwarding_unit IS
  PORT (
    EXE_wraddr, MEM_wraddr, RD_wraddr : IN  STD_LOGIC_VECTOR( 4 downto 0 );
	 clr            : IN  STD_LOGIC;
    src1, src2             : IN  STD_LOGIC_VECTOR( 4 downto 0);
    fwdA,fwdB              : OUT STD_LOGIC_VECTOR( 1 downto 0)
  );
  END COMPONENT;
SIGNAL lacie, simon                                  : STD_LOGIC_VECTOR(31 downto 0);
SIGNAL lily,bad,cat, sashay ,away, lipsync, forurlyf : STD_LOGIC_VECTOR(4 downto 0);
SIGNAL drew, hardy, mystery, boys, ghost             : STD_LOGIC_VECTOR(4 downto 0);
SIGNAL penny, abbie, slaayyy,hawt, nancy, frank      : STD_LOGIC_VECTOR(6 downto 0);
SIGNAL gex, feirce, funky3, joe                      : STD_LOGIC_VECTOR(2 downto 0);
SIGNAL sir, mix, alot, baby, got, back,stall         : STD_LOGIC;
SIGNAL condragulations,sel, help, halp, z, c         : STD_LOGIC;
SIGNAL kween, fwdA, fwdB, fwdAA, fwdBB               : STD_LOGIC_VECTOR(1 downto 0);
SIGNAL banana                                        : STD_LOGIC_VECTOR(3 downto 0);
SIGNAL punk, rock, lives, hola, hippos, hungry, clues: STD_LOGIC_VECTOR(63 downto 0);
SIGNAL she, done, already, had, herses, detective    : STD_LOGIC_VECTOR(63 downto 0);
SIGNAL carry, zero, branch, predict, suzy            : STD_LOGIC;
SIGNAL garbage, werk, another,choice, guess          : STD_LOGIC_VECTOR(7 downto 0);
SIGNAL more,address, pctemp, nextaddr,werkit         : STD_LOGIC_VECTOR(7 downto 0);
--pipeline signals
SIGNAL its                                           : STD_LOGIC_VECTOR(31 downto 0);
SIGNAL gunna, take, lots                             : STD_LOGIC_VECTOR(63 downto 0);
SIGNAL todrag                                        : STD_LOGIC_VECTOR(7 downto 0);
SIGNAL meaway, from, you, theres                     : STD_LOGIC;
SIGNAL nothing                                       : STD_LOGIC_VECTOR(1 downto 0);
SIGNAL that, onehundred                              : STD_LOGIC_VECTOR(63 downto 0);
SIGNAL men                                           : STD_LOGIC_VECTOR(4 downto 0);
SIGNAL ormore, could, ever, do, ibless, therains     : STD_LOGIC;
SIGNAL down                                          : STD_LOGIC_VECTOR(63 downto 0);
SIGNAL inafrica                                      : STD_LOGIC_VECTOR(4 downto 0);

BEGIN 
  u1: instruction_fetch PORT MAP (addr => nextaddr,
                                  predict => predict,
                                  inst => lacie,
                                  pc => garbage,
                                  ld   => '1',
                                  clr  => clear,
											 inc => suzy,
                                  clk  => clock,
											 branch => penny,
											 stall => stall);
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
                            regwrite  => therains,
                            readreg1  => drew,
                            readreg2  => hardy,
                            writereg  => inafrica,
									 clr       => clear,
									 clk       => clock);
  u4: imm_gen PORT MAP(immediate32 => simon,
                      immediate64  => lives,
							 clr          => clear);
  u5 : ALU_64 PORT MAP(opcode => banana,
                      inputA  => hola,
                      inputB  => she,
                      result  => done,
                      z       => zero,
                      c       => carry,
							 clr     => clear );
  u6 : data_mem  PORT MAP(wren => from,
                          rden => theres,
                          clock => clock,
                          address => done(6 downto 0),
                          data => take,
                          q  => already );
  u7 : control_unit PORT MAP(Branch  => branch,
                            MemRead  => sir,
                            MemtoReg => mix,
                            MemWrite => alot,
                            ALUSrc   => baby,
                            RegWrite => got,
                            ALUOp    => kween,
                            I        => nancy,
									 clr      => clear,
									 clock    => clock,
									 stall => stall,
							       staystall => help,
							       morestall => halp);
  u8 : ALU_control PORT MAP(Opcode => banana,
                           ALUOp   => nothing,
                           Funct7  => slaayyy,
                           Funct3  => feirce,
									clr     => clear);
  u9: IF_reg PORT MAP(clear => clear,
                      clock => clock,
	                   pc_in => garbage,        
	                   pc_out =>  werk,
							 stall => stall,
							 staystall => help,
							 rd1_out => drew,
							 rd1_in => lily,
		                rd2_out => hardy,
			             rd2_in => bad,
		                wraddr_out => mystery,
			             wraddr_in => cat,
		                control_out => nancy,
			             control_in => penny,
		                fun7_out => frank,
			             fun7_in => abbie,
		                fun3_out => joe,
			             fun3_in => gex,
		                imm_out => detective, 
			             imm_in => lives);
  u10: RD_reg PORT MAP(clear => clear,
                       clock => clock,
							  stall => stall,
	                    Data1_in => punk,
		                 Data2_in => rock,
		                 imm_in => clues,
	                    wradd_in => mystery,
                       Data1_out => gunna,
	                    Data2_out => take,
	                    imm_out => lots,
	                    wradd_out => sashay,
							  fun7_in => frank,
							  fun7_out => slaayyy,
							  fun3_in => funky3,
							  fun3_out => feirce,
							  src1_in => ghost,
							  src1_out => lipsync,
							  src2_in => boys,
							  src2_out => forurlyf,
							  staystall => help,
							  morestall => halp);
  u11: control_RD_reg PORT MAP(clear => clear,
                               clock => clock,
										 staystall => help,
                               ALUSrc_in => baby,
                               RegWrite_in => got,
                               MemRead_in => sir,
                               MemtoReg_in => mix,
                               MemWrite_in => alot,
                               ALUOp_in => kween,
                               ALUSrc_out => meaway,
                               RegWrite_out => back,
                               MemWrite_out => from,
                               MemRead_out => theres,
                               MemtoReg_out => condragulations,
                               ALUOp_out => nothing);
  u12: EXE_reg PORT MAP(clear => clear,
                        clock => clock,
                        wradd_in => sashay,
                        wradd_out => men,
                        RegWrite_in => back,
								RegWrite_out => do,                               
								MemtoReg_in => condragulations,
								MemtoReg_out => could,
								output_in => done,
								output_out => that);
  u14: MEM_reg PORT MAP(clear => clear,
                        clock => clock,
                        MemtoReg_in => could,
                        RegWrite_in => do,
                        output_in => that,
                        memdata_in => already,
                        wradd_in => men,
                        MemtoReg_out => Ibless,
                        RegWrite_out => therains,
                        output_out => had,
                        memdata_out => down,
                        wradd_out =>inafrica);
	u15: forwarding_unit PORT MAP (EXE_wraddr => men,
	                               MEM_wraddr => inafrica,
	                               ALUsrc => meaway,
                                  src1 => lipsync,
	                               src2 => forurlyf,
                                  fwdA => fwdA,
	                               fwdB => fwdB);
   u16: dynamic_prediction_unit PORT MAP (taken => sel,
	                                  clr => clear,
												 clock => clock,
                                     predict => predict,
												 branch => branch);
   u17: ALU_branch PORT MAP (inputA => hippos,
	                          inputB => hungry,
	                          z => z,
									  c => c,
	                          clr => clear);
	u18: early_forwarding_unit PORT MAP (EXE_wraddr => men,
	                                 MEM_wraddr => inafrica,
	                                 RD_wraddr => sashay,
	                                 clr => clear,
                                    src1 => ghost,
	                                 src2 => boys,
                                    fwdA => fwdAA,
	                                 fwdB => fwdBB);
	--forwarding for the branching ALU
	Branch_ALU_select2 : PROCESS(fwdBB, clear) IS 
    BEGIN
      IF clear = '1' THEN
	     hungry <= (others => '0');
      ELSIF fwdBB = "00" THEN
        hungry <= rock;
	   ELSIF fwdBB = "01" THEN
	     hungry <= herses;
	   ELSIF fwdBB = "10" THEN
	     hungry <=  that;
      ELSIF fwdBB = "11" THEN
        hungry <= done;
      END IF;
    END PROCESS;
  
  Branch_ALU_select1 : PROCESS(fwdAA, clear) IS 
  BEGIN
    IF clear = '1' THEN
	   hippos <= (others => '0');
    ELSIF fwdAA = "00" THEN
      hippos <= punk;
	 ELSIF fwdAA = "01" THEN
	   hippos <= herses;
	 ELSIF fwdAA = "10" THEN
	   hippos <=  that;
	 ELSIF fwdAA = "11" THEN
	   hippos <=  done;
    END IF;
  END PROCESS;	
  
  -- forwarding for the execution ALU
	ALU_select2 : PROCESS(fwdB, clear) IS 
    BEGIN
      IF clear = '1' THEN
	     she <= (others => '0');
      ELSIF fwdB = "00" THEN
        she <= take;
	   ELSIF fwdB = "01" THEN
	     she <= herses;
	   ELSIF fwdB = "10" THEN
	     she <=  that;
      ELSIF fwdB = "11" THEN
        she <= lots;
      END IF;
    END PROCESS;
  
  ALU_select1 : PROCESS(fwdA, clear) IS 
  BEGIN
    IF clear = '1' THEN
	   hola <= (others => '0');
    ELSIF fwdA = "00" THEN
      hola <= gunna;
	 ELSIF fwdA = "01" THEN
	   hola <= herses;
	 ELSIF fwdA = "10" THEN
	   hola <=  that;
    END IF;
  END PROCESS;

  
  Write_select : PROCESS(ibless, clear) IS
  BEGIN
    IF clear = '1' THEN
	   herses <= (others => '0');
    ELSIF ibless = '1' THEN
      herses <= down;
    ELSE 
      herses <= had;
    END IF;
  END PROCESS;

 --brnahcing is now moved up
branching: PROCESS(funky3, clear, z, c, branch)
  BEGIN
 IF clear = '1' THEN
  sel <= '0'; 
 ELSIF branch = ('1') THEN
   IF (funky3 = "000") THEN
	  IF z = '1' THEN
	    sel <= '1';
	  ELSE
	    sel <= '0';
	  END IF;
	ELSIF (funky3 = "001") THEN
	  IF z = '0' THEN
	    sel <= '1';
	  ELSE 
	    sel <= '0';
	  END IF;
	ELSIF (funky3 = "100") THEN
	  IF ( z = '0' and c = '0') THEN
	    sel <= '1';
	  ELSE
	    sel <= '0';
	  END IF;
	END IF;
  ELSE
    sel <= '0';
  END IF;
END PROCESS;

--choose ext address
multiplexer: PROCESS(sel, clear)
  BEGIN
    IF clear = '1' THEN
	   address <= (others => '0');
    ELSIF(sel = '1') THEN
	   address <= choice;
	 ELSE 
	   address <= more;
    END IF;
END PROCESS;

--stall

branch_stall : PROCESS(clear, branch, predict)
 BEGIN
  IF clear = '1' THEN
    stall <= '0';
  ELSIF branch = '1' THEN
    IF predict = '0' THEN
	   stall <= sel;
	 ELSE
	   stall <= NOT sel;
	 END IF;
  ELSE 
   stall <= '0';
  END IF;
END PROCESS;

predbranch: PROCESS(clear)
BEGIN
  IF clear = '1' THEN
    guess <= (OTHERS => '0');
  ELSE
    guess <= garbage + lives(7 downto 0);
  END IF;
END PROCESS;

--this creates a signal that makes the instruction stay zeroed for enough cycles clears IF_reg
PROCESS(clock)
BEGIN
 IF rising_edge(clock) THEN
    help <= stall;
	 halp <= help;
 END IF;
END PROCESS;

address_milti: PROCESS(stall, clear)
BEGIN
    IF clear = '1' THEN
	   nextaddr <= (OTHERS => '0');
	 ELSIF stall = '1' THEN
	   nextaddr <= address;
	 ELSE
	   nextaddr <= guess;
    END IF;
END PROCESS;
	   
increment_select: PROCESS(stall, clear)
BEGIN
  IF clear = '1' THEN
    suzy <= '0';
  -- misprediction take address
  ELSIF stall = '1' THEN
    suzy <= '1';
  ELSIF penny = "1100011" THEN
    suzy <= predict;
  ELSE 
    suzy <= '0';
  END IF;
END PROCESS;

addrCalculate: PROCESS(todrag, you, clear)
  BEGIN
    IF clear = '1' THEN
	   choice <= (others => '0');
		more <=  (OTHERS => '0');
	 ELSE
      choice <= werkit +  clues(7 downto 0);
		more <= werkit + 1;
	 END IF;
END PROCESS;
	 
--temp reg for funct 3 so it is times with register outputs for branching
PROCESS(clock, clear, stall)
BEGIN
  IF clear = '1' THEN
    funky3 <= (OTHERS => '0');
	 werkit <= (OTHERS => '0');
	 clues <= (OTHERS => '0');
	 boys <= (OTHERS => '0');
	 ghost <= (OTHERS => '0');
  ELSIF rising_edge(clock) THEN
    IF  stall = '1' OR help = '1' OR halp = '1' THEN
	   funky3 <= (OTHERS => '0');
	   werkit <= (OTHERS => '0');
	   clues <= (OTHERS => '0');
	   boys <= (OTHERS => '0');
	   ghost <= (OTHERS => '0');
	 ELSE
      funky3 <= joe;
	   werkit <= werk;
	   clues <= detective;
	   boys <= hardy;
	   ghost <= drew;
	END IF;
  END IF;
END PROCESS;

car <= c;
zer <= z;
bran <= branch;
increment <= sel;
writedata <= herses;
imm <= lots;
writeaddr <= inafrica;
addr <= address;
pc <= werkit;
rd1 <= drew;
rd2 <= hardy;
alu11 <= hungry;
alu22 <= hippos;
stl <= stall;
sel1 <= fwdA;
sel2 <= fwdB;
prdct <= predict;
pc1 <= garbage;
selec <= suzy;
branchaddr <= guess;
END logic_function;