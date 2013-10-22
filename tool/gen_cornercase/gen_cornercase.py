import sys;
import random;

array_src0 = [];
array_src1 = [];


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

			
def save_info(save_name):
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

if __name__ == "__main__":
	#gen_coner_testor(0, 32);
	#sys.exit();

	if(len(sys.argv) == 2 and sys.argv[1] == "-help"):
		print("#argv[1]=bit");
		print("#argv[2]=Random : 0~");
		print("#argv[3]=Mode={0=Nomal, 1:Div Mode}");
		print("#argv[4]=Log Output name");
		sys.exit();

	if(len(sys.argv) != 5):
		print("Error : Number of argv");
		sys.exit();

	#argv_check(sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4], sys.argv[5]);
	
	div = 0;
	if(sys.argv[3] != 1):
		div = 1

	gen_random_testor(div , sys.argv[1], sys.argv[2]);
	gen_conner_testor(div, int(sys.argv[1]));
	
	#File Save
	save_info(sys.argv[4]);

	print("done.");


