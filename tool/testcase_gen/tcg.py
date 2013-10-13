import sys;
import random;

array_src0 = [];
array_src1 = [];
array_expect = [];
operate_list = ["add", "sub", "mull", "mulh", "div", "udiv", "mod", "umod", "neg", "max", "min", "and", "or", "xor"]
div_list = ["div", "udiv", "mod", "umod"];



def argv_check(argv_d1, argv_d2, argv_d3, argv_d4, argv_d5):
	if(not(int(argv_d1) > 0 and int(argv_d1) <= 32)):
		print("Error : bit length");
		sys.exit();
	if(not(int(argv_d2) == 0 or int(argv_d2) == 1)):
		print("Error : sign extend error");
		sys.exit();
	if(int(argv_d3) < 0):
		print("Error : Number of Random");
		sys.exit();
	if(not(argv_d4 in operate_list)):
		print("Error : Operate");
		sys.exit();
	if(argv_d5==""):
		print("Error : SaveName");
		sys.exit();


def gen_expect_add(src0, src1):
	return (src0+src1) & 0xFFFFFFFF;

def gen_expect_sub(src0, src1):
	return (src0-src1) & 0xFFFFFFFF;

def gen_expect_mull(src0, src1):
	return (src0*src1) & 0xFFFFFFFF;

def gen_expect_mulh(src0, src1):
	return ((src0*src1) >> 32) & 0xFFFFFFFF;

def gen_expect_div(src0, src1, debug):
	tmp0 = src0;
	tmp1 = src1;

	if(src0 >> 31):
		src0 = -((~src0)+1);
	if(src1 >> 31):
		src1 = -((~src1)+1);
	result = 0xffffffff & (src0/src1);
	
	if(debug):
		print(src0 >> 31, src1 >> 31);
		print("src0 -> ", tmp0, "src1 -> ", tmp1, "result -> ", result);
	

	return result;


def gen_expect_udiv(src0, src1):
	#print(str(src0) + ", " + str(src1));
	return (src0/src1) & 0xFFFFFFFF;

"""
def gen_expect_mod(src0, src1):
	result = src0%src1;
	if((src0 >> 31) ^ (src1 >> 31)):
		result = (~result + 1) & 0xffffffff;#result = result | 0x80000000;
	else:
		result = result & 0xffffffff;
	return result;
"""
def gen_expect_mod(src0, src1):
	if(src0 >> 31):
		src0 = -((~src0)+1);
	if(src1 >> 31):
		src1 = -((~src1)+1);
	result = 0xffffffff & (src0%src1);

	return result;



def gen_expect_umod(src0, src1):
	return (src0%src1) & 0xFFFFFFFF;

def gen_expect_neg(src1):
	return ((~src1) + 1) & 0xFFFFFFFF;

def gen_expect_max(src0, src1):
	if(src0 > src1):
		return src0;
	else:
		return src1;

def gen_expect_min(src0, src1):
	if(src0 > src1):
		return src1;
	else:
		return src0;

def gen_expect_and(src0, src1):
	return src0 & src1;

def gen_expect_or(src0, src1):
	return src0 | src1;

def gen_expect_xor(src0, src1):
	return src0 ^ src1;

def sign_extend(bit, src_imm):
	sign = src_imm >> (bit-1);
	result = src_imm;
	for cnt in range(32-bit):
		result = result | sign << bit + cnt;
	return result;



def gen_expect_data(bit, sig_extend, operate):
	global array_expect;
	cnt = 0;
	for line in array_src0:
		#Sign Extend
		src1_imm = array_src1[cnt];
		if(sig_extend == "1"):
			src1_imm = sign_extend(int(bit), src1_imm);		
		#Operation
		if(operate == "add"):
			array_expect.append(gen_expect_add(array_src0[cnt], src1_imm));
		elif(operate == "sub"):
			array_expect.append(gen_expect_sub(array_src0[cnt], src1_imm));
		elif(operate == "mull"):
			array_expect.append(gen_expect_mull(array_src0[cnt], src1_imm));
		elif(operate == "mulh"):
			array_expect.append(gen_expect_mulh(array_src0[cnt], src1_imm));
		elif(operate == "umull"):
			array_expect.append(gen_expect_mull(array_src0[cnt], src1_imm));
		elif(operate == "umulh"):
			array_expect.append(gen_expect_mulh(array_src0[cnt], src1_imm));
		elif(operate == "div"):
			array_expect.append(gen_expect_div(array_src0[cnt], src1_imm, cnt == 1024));
		elif(operate == "udiv"):
			array_expect.append(gen_expect_udiv(array_src0[cnt], src1_imm));
		elif(operate == "mod"):
			array_expect.append(gen_expect_mod(array_src0[cnt], src1_imm));
		elif(operate == "umod"):
			array_expect.append(gen_expect_umod(array_src0[cnt], src1_imm));
		elif(operate == "neg"):
			array_expect.append(gen_expect_neg(array_src1[cnt]));
		elif(operate == "max"):
			array_expect.append(gen_expect_max(array_src0[cnt], src1_imm));
		elif(operate == "min"):
			array_expect.append(gen_expect_min(array_src0[cnt], src1_imm));	
		elif(operate == "and"):
			array_expect.append(gen_expect_and(array_src0[cnt], src1_imm));
		elif(operate == "or"):
			array_expect.append(gen_expect_or(array_src0[cnt], src1_imm));
		elif(operate == "xor"):
			array_expect.append(gen_expect_xor(array_src0[cnt], src1_imm));
		else:
			array_expect.append(0);
		cnt = cnt + 1;

def gen_random_testor(div, n_bit, num):
	global array_src0;
	global array_src1;
	for cnt in range(int(num)):
		if(div == 1):
			array_src0.append(random.randint(0, (2**int(n_bit))-1));
			array_src1.append(random.randint(1, (2**int(n_bit))-1));
		else:
			array_src0.append(random.randint(0, (2**int(n_bit))-1));
			array_src1.append(random.randint(0, (2**int(n_bit))-1));



def gen_conner_testor(div, n_bit):
	global array_src0;
	global array_src1;

	#Coner Case
	if(div != 1):
		array_src0.append(0);
		array_src1.append(0);
		#print(0, 0);
	for cnt0 in range(n_bit):
		array_src0.append(0);
		array_src1.append(2**cnt0);
		#print(0, 2**cnt0);
	for cnt0 in range(n_bit):
		if(div == 0):
			array_src0.append(2**cnt0);
			array_src1.append(0);
			#print(2**cnt0, 0);
		for cnt1 in range(n_bit):
			array_src0.append(2**cnt0);
			array_src1.append(2**cnt1);
			#print(2**cnt0, 2**cnt1);
	#Coner number
	for cnt0 in range(2, n_bit+1):
		#Normal
		if(div != 1 or (2**cnt0)-1 != 0):
			array_src0.append((2**cnt0)-1);
			array_src1.append((2**cnt0)-1);
			#print((2**cnt0)-1, (2**cnt0)-1);

def print_info(sep):
	if(sep == 1):
		print("\nSource0");
		for cnt in range(len(array_src0)):
			print(str(cnt) + " : " + str(array_src0[cnt]));

		print("\nSource1");
		for cnt in range(len(array_src1)):
			print(str(cnt) + " : " + str(array_src1[cnt]));

		print("\nExpect");
		for cnt in range(len(array_expect)):
			print(str(cnt) + " : " + str(array_expect[cnt]));
	else:
		print("\nExpect, Source0, Source1");
		for cnt in range(len(array_src0)):
			print(str(cnt) + " : " + str(array_expect[cnt]) + ", " + str(array_src0[cnt]) + ", " + str(array_src1[cnt]));
			
def save_info(save_name):
	#Expect
	fh = open(save_name + ".expect.txt", "w");
	for cnt in range(len(array_expect)):
		fh.write(str(array_expect[cnt]) + "\n");
	fh.close();
	#Source0
	fh = open(save_name + ".src0.txt", "w");
	for cnt in range(len(array_src0)):
		fh.write(str(array_src0[cnt]) + "\n");
	fh.close();
	#Source1
	fh = open(save_name + ".src1.txt", "w");
	for cnt in range(len(array_src1)):
		fh.write(str(array_src1[cnt]) + "\n");
	fh.close();

def dev_check(div):
	return (div in div_list);

if __name__ == "__main__":
	#gen_coner_testor(0, 32);
	#sys.exit();

	if(len(sys.argv) == 2 and sys.argv[1] == "-help"):
		print("#argv[1]=bit");
		print("#argv[2]=Sign Extend : 0=no extend, 1=extend");
		print("#argv[3]=Random : 0~");
		print("#argv[4]=ExpectType{add, sub, mull, mulh, div, udiv, mod, umod, neg, max, min, and, or, xor}");
		print("#argv[5]=Log Output name");
		sys.exit();

	if(len(sys.argv) != 6):
		print("Error : Number of argv");
		sys.exit();

	argv_check(sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4], sys.argv[5]);
	div = dev_check(sys.argv[4])

	gen_random_testor(div , sys.argv[1], sys.argv[3]);
	gen_conner_testor(div, int(sys.argv[1]));

	gen_expect_data(sys.argv[1], sys.argv[2], sys.argv[4]);
	#print_info(0);
	
	#File Save
	save_info(sys.argv[5]);

	print("Finished");


