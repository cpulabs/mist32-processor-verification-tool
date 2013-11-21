import sys;
import random;
import instruction

globl_src0 = [];
globl_src1 = [];
globl_expect = [];



def save_expect(save_name):
	#Expect
	fh = open(save_name + ".expect.txt", "w");
	for cnt in range(len(globl_expect)):
		fh.write(str(globl_expect[cnt]) + "\n");
	fh.close();



def gen_expect_data(operate):
	global globl_expect;
	for cnt in range(len(globl_src0)):	
		#Operation
		if(operate == "add"):
			globl_expect.append(instruction.gen_expect_add(globl_src0[cnt], globl_src1[cnt]));
		elif(operate == "sub"):
			globl_expect.append(instruction.gen_expect_sub(globl_src0[cnt], globl_src1[cnt]));
		elif(operate == "mull"):
			globl_expect.append(instruction.gen_expect_mull(globl_src0[cnt], globl_src1[cnt]));
		elif(operate == "mulh"):
			globl_expect.append(instruction.gen_expect_mulh(globl_src0[cnt], globl_src1[cnt]));
		elif(operate == "umull"):
			globl_expect.append(instruction.gen_expect_mull(globl_src0[cnt], globl_src1[cnt]));
		elif(operate == "umulh"):
			globl_expect.append(instruction.gen_expect_mulh(globl_src0[cnt], globl_src1[cnt]));
		elif(operate == "div"):
			globl_expect.append(instruction.gen_expect_div(globl_src0[cnt], globl_src1[cnt]));
		elif(operate == "udiv"):
			globl_expect.append(instruction.gen_expect_udiv(globl_src0[cnt], globl_src1[cnt]));
		elif(operate == "mod"):
			globl_expect.append(instruction.gen_expect_mod(globl_src0[cnt], globl_src1[cnt]));
		elif(operate == "umod"):
			globl_expect.append(instruction.gen_expect_umod(globl_src0[cnt], globl_src1[cnt]));
		elif(operate == "neg"):
			globl_expect.append(instruction.gen_expect_neg(globl_src0[cnt]));
		elif(operate == "max"):
			globl_expect.append(instruction.gen_expect_max(globl_src0[cnt], globl_src1[cnt]));
		elif(operate == "min"):
			globl_expect.append(instruction.gen_expect_min(globl_src0[cnt], globl_src1[cnt]));
		elif(operate == "umax"):
			globl_expect.append(instruction.gen_expect_umax(globl_src0[cnt], globl_src1[cnt]));
		elif(operate == "umin"):
			globl_expect.append(instruction.gen_expect_umin(globl_src0[cnt], globl_src1[cnt]));	
		elif(operate == "and"):
			globl_expect.append(instruction.gen_expect_and(globl_src0[cnt], globl_src1[cnt]));
		elif(operate == "or"):
			globl_expect.append(instruction.gen_expect_or(globl_src0[cnt], globl_src1[cnt]));
		elif(operate == "xor"):
			globl_expect.append(instruction.gen_expect_xor(globl_src0[cnt], globl_src1[cnt]));
		elif(operate == "not"):
			globl_expect.append(instruction.gen_expect_not(globl_src0[cnt]));
		elif(operate == "nand"):
			globl_expect.append(instruction.gen_expect_nand(globl_src0[cnt], globl_src1[cnt]));
		elif(operate == "nor"):
			globl_expect.append(instruction.gen_expect_nor(globl_src0[cnt], globl_src1[cnt]));
		elif(operate == "xnor"):
			globl_expect.append(instruction.gen_expect_xnor(globl_src0[cnt], globl_src1[cnt]));
		elif(operate == "hi16"):
			globl_expect.append(instruction.gen_expect_hi16(globl_src0[cnt]));
		elif(operate == "lo16"):
			globl_expect.append(instruction.gen_expect_lo16(globl_src0[cnt]));
		elif(operate == "hihi8"):
			globl_expect.append(instruction.gen_expect_hihi8(globl_src0[cnt]));
		elif(operate == "hilo8"):
			globl_expect.append(instruction.gen_expect_hilo8(globl_src0[cnt]));
		elif(operate == "lohi8"):
			globl_expect.append(instruction.gen_expect_lohi8(globl_src0[cnt]));
		elif(operate == "lolo8"):
			globl_expect.append(instruction.gen_expect_lolo8(globl_src0[cnt]));
		elif(operate == "clear"):
			globl_expect.append(instruction.gen_expect_clear());
		elif(operate == "set"):
			globl_expect.append(instruction.gen_expect_set());
		elif(operate == "rev8"):
			globl_expect.append(instruction.gen_expect_rev_byte(globl_src0[cnt]));
		elif(operate == "revb"):
			globl_expect.append(instruction.gen_expect_rev_bit(globl_src0[cnt]));
		elif(operate == "shl"):
			globl_expect.append(instruction.gen_expect_shl(globl_src0[cnt], globl_src1[cnt]));
		elif(operate == "shr"):
			globl_expect.append(instruction.gen_expect_shr(globl_src0[cnt], globl_src1[cnt]));
		elif(operate == "sal"):
			globl_expect.append(instruction.gen_expect_sal(globl_src0[cnt], globl_src1[cnt]));
		elif(operate == "sar"):
			globl_expect.append(instruction.gen_expect_sar(globl_src0[cnt], globl_src1[cnt]));
		elif(operate == "rol"):
			globl_expect.append(instruction.gen_expect_rol(globl_src0[cnt], globl_src1[cnt]));
		elif(operate == "ror"):
			globl_expect.append(instruction.gen_expect_ror(globl_src0[cnt], globl_src1[cnt]));
		
		else:
			globl_expect.append(0);
			print("Error Command");



def argv_check(argv_d1, argv_d2, argv_d3, argv_d4, argv_d5, argv_d6, argv_d7):
	if(not(argv_d1 > 0 and argv_d1 <= 32)):
		print("Error : bit length");
		sys.exit();
	if(not(argv_d2 == 0 or argv_d2 == 1)):
		print("Error : sign extend error");
		sys.exit();
	if(not(argv_d3 == 1 or argv_d3 == 2)):
		print("Error : Instruction Source");
		sys.exit();
	if(not(argv_d4 in operate_list)):
		print("Error : Operate");
		sys.exit();
	if(argv_d5==""):
		print("Error : Source0 Name");
		sys.exit();
	if(argv_d6=="0" and argv_d3 == 2):
		print("Error : Source1 Name");
		sys.exit();
	if(argv_d7==""):
		print("Error : Save Name");
		sys.exit();

def src_loed(sourcecnt, src0, src1):
	global globl_src0;
	global globl_src1;

	fh_src0 = open(src0, "r");
	for line in fh_src0:
		globl_src0.append(int(line));

	if(sourcecnt == 2):
		fh_src1 = open(src1, "r");
		for line in fh_src1:
			globl_src1.append(int(line));
		if(len(globl_src0) != len(globl_src1)):
			print("Non Match Src0, Src1");
			sys.exit();



def sign_extend(src, bit):
	global globl_src0;
	global globl_src1;

	for cnt0 in range(len(globl_src0)):
		data = 0;
		if(src == 0):
			data = int(globl_src0[cnt0]);
		else:
			data = int(globl_src1[cnt0]);
		sign = data >> (bit-1);
		result = data;
		for cnt1 in range(32-bit):
			result = result | sign << bit + cnt1;
		if(src == 0):
			globl_src0[cnt0] = result;
		else:
			globl_src1[cnt0] = result;


def save_expect(save_name):
	#Expect
	fh = open(save_name, "w");
	for cnt in range(len(globl_expect)):
		fh.write(str(globl_expect[cnt]) + "\n");
	fh.close();

def print_info(count, sep):
	if(sep == 1):
		print("\nSource0");
		for cnt in range(len(globl_src0)):
			print(str(cnt) + " : " + str(globl_src0[cnt]));

		print("\nSource1");
		for cnt in range(len(globl_src1)):
			print(str(cnt) + " : " + str(globl_src1[cnt]));

		print("\nExpect");
		for cnt in range(len(globl_expect)):
			print(str(cnt) + " : " + str(globl_expect[cnt]));
	else:
		print("\nExpect, Source0, Source1");
		#print(len(globl_expect), len(globl_src0), len(globl_src1))

		for cnt in range(len(globl_src0)):
			if(count == 2):
				print(str(cnt) + " : " + str(globl_expect[cnt]) + ", " + str(globl_src0[cnt]) + ", " + str(globl_src1[cnt]));
			else:
				print(str(cnt) + " : " + str(globl_expect[cnt]) + ", " + str(globl_src0[cnt]));


if __name__ == "__main__":
	#gen_coner_testor(0, 32);
	#sys.exit();

	if(len(sys.argv) == 2 and sys.argv[1] == "--help" or sys.argv[1] == "-h" or len(sys.argv) == 1):
		print("#argv[1]=Instruction Source{1 ,2}")
		print("#argv[2]=bit");
		print("#argv[3]=Sign Extend : 0=no extend, 1=extend");
		print("#argv[4]=bit");
		print("#argv[5]=Sign Extend : 0=no extend, 1=extend");
		print("#argv[6]=Operate Type{add, sub, mull, mulh, div, udiv, mod, umod, neg, max, min, umax, umin, and, or, xor, nand, nor, xnor, hi16, lo16, hihi8, hilo8, loho8, lolo8, shl, shr, sal, sar, rol, ror}");
		print("#argv[7]=Source0 file name");
		print("#argv[8]=Source1 file name");
		print("#argv[9]=Log Output name");
		sys.exit();

	argv_d1 = int(sys.argv[1])
	argv_d2 = int(sys.argv[2])
	argv_d3 = int(sys.argv[3])
	argv_d4 = int(sys.argv[4])
	argv_d5 = int(sys.argv[5])
	argv_d6 = sys.argv[6]
	argv_d7 = sys.argv[7]
	argv_d8 = sys.argv[8]
	argv_d9 = sys.argv[9]

	#argv check
	#argv_check(argv_d1, argv_d2, argv_d3, argv_d4, argv_d5, argv_d6, argv_d7);
	#file check
	#file_check(argv_d1, argv_d2, argv_d3, argv_d5, argv_d6);
	#load
	src_loed(argv_d1, argv_d7, argv_d8);
	#signed extend
	if(argv_d3 == 1):
		sign_extend(0, argv_d2);
	if(argv_d5 == 1):
		sign_extend(1, argv_d4);
	

	#gen expect
	gen_expect_data(sys.argv[6]);
	#save expect
	save_expect(argv_d9);

	print_info(argv_d1, 0);

	print("done");


