import sys;
import subprocess;
import glob;
import os;

make_list = [];

def listup():
	global make_list;
	make_list = glob.glob("./asm/*_macro.s");
	
	print("File : " + str(len(make_list)));

if __name__ == "__main__":
	listup();

	for line in make_list:
		fname = os.path.basename(line);
		fname = fname.replace(".s", "");
		fname = fname.replace("_macro", "");
		#Assemble
		cmd = "mist32-elf-as -o out/" + fname + ".o " + "com/start.s ./asm/" + fname + "_macro.s " + "./asm/" + fname + ".s";		
		subprocess.call(cmd, shell=True);
		#Linker
		cmd = "mist32-elf-ld -Tcom/linker_script.ld -o out/" + fname + ".out out/" + fname + ".o"
		subprocess.call(cmd, shell=True);
		#Copy Assembly File
		cmd = "mist32-elf-objdump -D ./out/" + fname + ".out > ./out/" + fname + ".asm";
		subprocess.call(cmd, shell=True);
		#Remove .o File
		cmd = "rm out/" + fname + ".o";
		subprocess.call(cmd, shell=True);
		
	print("Assemble : " + str(len((make_list))));
	print("Finished");
	
