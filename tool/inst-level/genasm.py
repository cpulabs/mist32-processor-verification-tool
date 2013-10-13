import sys;

if __name__ == "__main__":
	cnt = 0;
	if(len(sys.argv) == 2 and sys.argv[1] == "-help"):
		print("#argv[1]=Type(o1, o2, o2i11)");
		print("#argv[2]=[Operand format] Expect Data, if not use operand is 0");
		print("#argv[3]=[Operand Format] Source0 (Destination, if not use operand is 0");
		print("#argv[4]=[Operand Format] Source1 (Source), if not use operand is 0");
		print("#argv[5]=[Immediate format] Expect Data, if not use operand is 0");
		print("#argv[6]=[Immediate Format] Source0 (Destination, if not use operand is 0");
		print("#argv[7]=[Immediate Format] Source1 (Immediate), if not use operand is 0");
		sys.exit();	


	#Datasection
	data_sec = ";********************************************\n";
	data_sec = data_sec + ";Data Section\n";
	data_sec = data_sec + ";********************************************\n";
	data_sec = data_sec + "\t.data\n";
	data_sec = data_sec + "\t.align 2\n";
	#O2 Format
	data_sec = data_sec + ";***********************************\n";
	data_sec = data_sec + ";O2 Format\n";
	data_sec = data_sec + ";***********************************\n";

	#O2 Data Read
	if(sys.argv[1] == "o2" or sys.argv[1] == "o2i11"):
		cnt = 0;
		data_sec = data_sec + "\n;Source0\n";
		fh = open(sys.argv[3], 'r');
		for line in fh:
			data_sec = data_sec + "T_SRC0_" + str(cnt) + "\t\t:\t\t.long " + line;
			cnt = cnt + 1;

		cnt = 0;
		data_sec = data_sec + "\n;Source1\n";
		fh = open(sys.argv[4], 'r');
		for line in fh:
			data_sec = data_sec + "T_SRC1_" + str(cnt) + "\t\t:\t\t.long " + line;
			cnt = cnt + 1;

		cnt = 0;
		data_sec = data_sec + "\n;Expect\n";
		fh = open(sys.argv[2], 'r');
		for line in fh:
			data_sec = data_sec + "T_EXPECT" + str(cnt) + "\t\t:\t\t.long " + line;
			cnt = cnt + 1;
		data_sec = data_sec + "\n";
	else:
		data_sec = data_sec + ";No O2 Format\n";


	#Imm Format
	data_sec = data_sec + ";***********************************\n";
	data_sec = data_sec + ";I11 Format\n";
	data_sec = data_sec + ";***********************************\n";

	#IMM Data Read
	if(sys.argv[1] == "i11" or sys.argv[1] == "o2i11"):
		data_sec = data_sec + ";Destination\n";
		cnt = 0;
		fh = open(sys.argv[6], 'r');
		for line in fh:
			data_sec = data_sec + "T_IMM_DST" + str(cnt) + "\t\t:\t\t.long " + line;
			cnt = cnt + 1;

		"""
		cnt = 0;
		data_sec = data_sec + "\n;Imm\n";
		fh = open(sys.argv[7], 'r');
		for line in fh:
			data_sec = data_sec + "T_IMM_IMM" + str(cnt) + "\t\t:\t\t.long " + line;
			cnt = cnt + 1;
		"""

		cnt = 0;
		data_sec = data_sec + "\n;Expect\n";
		fh = open(sys.argv[5], 'r');
		for line in fh:
			data_sec = data_sec + "T_IMM_EXPECT" + str(cnt) + "\t\t:\t\t.long " + line;
			cnt = cnt + 1;
		data_sec = data_sec + "\n";
	else:
		data_sec = data_sec + ";No I11 Format\n";



	#Text Section
	inst_sec = ";********************************************\n";
	inst_sec = inst_sec + ";Instruction Section(Macro)\n";
	inst_sec = inst_sec + ";********************************************\n";
	inst_sec = inst_sec + "\t.align 2\n";
	inst_sec = inst_sec + "\t.text\n";
	inst_sec = inst_sec + "check:\n";
	#Initial
	inst_sec = inst_sec + "\t;***********************************\n";
	inst_sec = inst_sec + "\t;Initial\n";
	inst_sec = inst_sec + "\t;***********************************\n";
	inst_sec = inst_sec + "\txor\t\tr2, r2\n";
	inst_sec = inst_sec + "\txor\t\tr3, r3\n";
	#Check O2
	inst_sec = inst_sec + "\t;***********************************\n";
	inst_sec = inst_sec + "\t;Check - O2\n";
	inst_sec = inst_sec + "\t;***********************************\n";
	#O2 Macro
	cnt = 0;
	if(sys.argv[1] == "o2" or sys.argv[1] == "o2i11"):
		fh = open(sys.argv[3], 'r');
		for line in fh:
			inst_sec = inst_sec + "\tcheck_o2_format T_SRC0_" + str(cnt) + ", " + "T_SRC1_" + str(cnt) + ", " + "T_EXPECT" + str(cnt) + "\n";
			cnt = cnt + 1;
	#Check I11
	inst_sec = inst_sec + "\n\t;***********************************\n";
	inst_sec = inst_sec + "\t;Check - I11\n";
	inst_sec = inst_sec + "\t;***********************************\n";
	inst_sec = inst_sec + "\txor\t\tr2, r2\n";
	inst_sec = inst_sec + "\tadd\t\tr3, 1\n";
	#O2 Macro
	cnt = 0;
	if(sys.argv[1] == "i11" or sys.argv[1] == "o2i11"):
		fh = open(sys.argv[7], 'r');
		for line in fh:
			inst_sec = inst_sec + "\tcheck_imm11_format T_IMM_DST" + str(cnt) + ", " + line.replace("\n", "") + ", " + "T_IMM_EXPECT" + str(cnt) + "\n";
			cnt = cnt + 1;

	fin_sec = ";********************************************\n";
	fin_sec = fin_sec + ";Finish\n";
	fin_sec = fin_sec + ";********************************************\n";
	fin_sec = fin_sec + "\tbr\t\tfinish, #al";


	print(data_sec + inst_sec + fin_sec);





