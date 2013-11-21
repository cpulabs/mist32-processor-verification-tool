import sys;
import subprocess;
import glob;

make_list = [];

def listup():
	global make_list;
	make_list = glob.glob("./out/*.out");
		

if __name__ == "__main__":
	listup();

	for line in make_list:
		fname = line.replace(".out", "");
		#elf2bin
		cmd = "mist32-elf-objcopy -O binary " + fname + ".out " + fname + ".bin";
		subprocess.call(cmd, shell=True);

	print("elf2bin : " + str(len(make_list)));
	print("done");


