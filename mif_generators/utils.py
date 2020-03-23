import random

def instructiongenerator(seeds):
  
  random.seed(seeds[0])
  
  rtypeop = "0110011"
  rtypefun3 = ["000", "000", "001", "100", "101", "101", "110", "111"]
  rtypefun7 = ["0000000", "0100000", "0000000", "0000000", "0000000", "0000000", "0000000", "0000000"]
  ldtypeop = "0000011"
  ldtypefun3 = ["000", "001", "010", "011", "100", "101", "110"]
  itypeop = "0010011"
  itypefun3 = ["000", "001", "100", "101", "101", "110", "111"]
  itypefun7 = ["0000000", "0000000", "0000000", "0000000", "0100000", "0000000", "0000000"]
  stypeop = "0100011"
  stypefun3 = ["000", "001", "010", "111"]
  sbtypeop = "1100011"
  sbtypefun3 = ["000", "001", "100"]
  #read and write register numbers availible for use, also used for 5 bit immediates
  addresses = [ "00101", "00110", "00111", "01000", "01001", "10010","10011", "10100", "10101", "10110", "10111", "11000", "11001", "11010", "11011", "11100", "11101", "11110", "11111", ]
  #random 12 bit numbers
  immediate12 = ["001010000111", "010010101001", "111011101100", "000100010100", "011100001011", "100111010100", "101001001001", "000101101101", "100001100010", "011001100101", "101111100101", "101111011000", "100110110101", "000110110011", "111101011110"]
  # random 7 bit numbers
  immediate7 = ["0001001", "0010000", "1100111", "1110100", "1101100", "1000100", "0010100", "0110111", "1000101", "0111010", "0100100", "1101000", "0001010", "0001000", "0110110"]
  rtypeinst = []
  ldtypeinst = []
  itypeinst = []
  stypeinst = []
  sbtypeinst = []
  
  #Build R-type instructions
  
  #rs combinations
  readloc = []
  for i in range(0,len(rtypefun3)):
    readloc.append(random.choice(addresses) + random.choice(addresses))
  
  # concatenate rtype opcode and rd with all temp register locations
  r_op_rd = []
  for i in range(0,len(rtypefun3)):
    r_op_rd.append( random.choice(addresses) + rtypeop)
  
  # concatenate with funct 3
  r_op_rd_fun3 = []
  for i,funct in enumerate(rtypefun3):
    r_op_rd_fun3.append(funct + r_op_rd[i])
  
  # concatonate with read addresses
  r_op_rd_fun3_rs = []
  for i, loc in enumerate(readloc):
    r_op_rd_fun3_rs.append(loc + r_op_rd_fun3[i])
  
  # concatonate with funct 7
  for i, funct7 in enumerate(rtypefun7):
    rtypeinst.append(funct7 + r_op_rd_fun3_rs[i])
  
  #Build ld-type instructions
  
  # concatenate rtype opcode and rd with all temp register locations
  ld_op_rd = []
  for i in range(0,len(ldtypefun3)):
    ld_op_rd.append( random.choice(addresses) + ldtypeop)
  
  # concatenate with funct 3
  ld_op_rd_fun3 = []
  for i,funct in enumerate(ldtypefun3):
    ld_op_rd_fun3.append(funct + ld_op_rd[i])
  
  # concatonate with read addresses
  ld_op_rd_fun3_rs = []
  for i in range(0,len(ldtypefun3)):
    ld_op_rd_fun3_rs.append(random.choice(addresses) + ld_op_rd_fun3[i])
  
  # concatonate with immediate
  for i in range(0,len(ldtypefun3)):
    ldtypeinst.append(random.choice(immediate12) + ld_op_rd_fun3_rs[i])
  
  random.seed(seeds[1])
  
  #Build I-type instructions
  
  #rs combinations
  readloc = []
  for i in range(0,len(itypefun3)):
    readloc.append(random.choice(addresses) + random.choice(addresses))
  
  # concatenate rtype opcode and rd with all temp register locations
  i_op_rd = []
  for i in range(0,len(itypefun3)):
    i_op_rd.append( random.choice(addresses) + itypeop)
  
  # concatenate with funct 3
  i_op_rd_fun3 = []
  for i,funct in enumerate(itypefun3):
    i_op_rd_fun3.append(funct + i_op_rd[i])
  
  # concatonate with read address
  i_op_rd_fun3_rs = []
  for i, loc in enumerate(readloc):
    i_op_rd_fun3_rs.append(loc + i_op_rd_fun3[i])
  
  # concatonate with funct 7/immediate
  for i, funct7 in enumerate(itypefun7):
    itypeinst.append(funct7 + i_op_rd_fun3_rs[i])
  
  random.seed(seeds[2])
  
  #Build S-type instructions
  
  #rs combinations
  readloc = []
  for i in range(0,len(stypefun3)):
    readloc.append(random.choice(addresses) + random.choice(addresses))
  
  # concatenate rtype opcode and immediate
  s_op_imm = []
  for i in range(0,len(stypefun3)):
    s_op_imm.append( random.choice(addresses) + stypeop)
  
  # concatenate with funct 3
  s_op_imm_fun3 = []
  for i,funct in enumerate(stypefun3):
    s_op_imm_fun3.append(funct + s_op_imm[i])
  
  # concatonate with read addresses
  s_op_imm_fun3_rs = []
  for i, loc in enumerate(readloc):
    s_op_imm_fun3_rs.append(loc + s_op_imm_fun3[i])
  
  # concatonate with immediate
  for i in range(0,len(stypefun3)):
    stypeinst.append(random.choice(immediate7) + s_op_imm_fun3_rs[i])
  
  #Build Sb-type instructions
  
  #rs combinations
  readloc = []
  for i in range(0,len(sbtypefun3)):
    readloc.append(random.choice(addresses) + random.choice(addresses))
  
  # concatenate rtype opcode and immediate
  sb_op_imm = []
  for i in range(0,len(sbtypefun3)):
    sb_op_imm.append( random.choice(addresses) + sbtypeop)
  
  # concatenate with funct 3
  sb_op_imm_fun3 = []
  for i,funct in enumerate(sbtypefun3):
    sb_op_imm_fun3.append(funct + sb_op_imm[i])
  
  # concatonate with read addresses
  sb_op_imm_fun3_rs = []
  for i, loc in enumerate(readloc):
    sb_op_imm_fun3_rs.append(loc + sb_op_imm_fun3[i])
  
  # concatonate with immediate
  for i in range(0,len(sbtypefun3)):
    sbtypeinst.append(random.choice(immediate7) + sb_op_imm_fun3_rs[i])

  return(rtypeinst+ldtypeinst+itypeinst+stypeinst+sbtypeinst)

def padinstruction(baselist, depth):
  
  instruction = baselist

  random.seed(8)

  # continually call the base constructor in order to fill mif
  while (depth - len(instruction) > 0):
    seeds = [random.randint(1,50),random.randint(1,50), random.randint(1,50)]
    newlist = instructiongenerator(seeds)
    instruction = instruction + newlist

  #likley this will result in overflow, reduce to necessary depth
  while (len(instruction) - depth > 0):
    instruction.pop()

  #double check nothing went wrong when filling to correct depth
  if (depth - len(instruction) != 0):
    print("there is an issue constructing the instructions")

  return(instruction)

def binarytonumeric(instruction):

  numericinstruction = []
  for i in instruction:
    numeric = int(i,2)
    numericinstruction.append(numeric)
  return(numericinstruction)