default: make_init utim64_make conv_bin

make_init:
	rm -rf out
	mkdir out

utim64_make:
	mist32-gcc -nostdlib -Wall -o out/utim64.o com/start.s lib/*.c testcase/utim64.c 
	mist32-elf-ld -Tcom/linker_script.ld -o out/utim64.out out/utim64.o
	mist32-elf-objdump -D ./out/utim64.out > ./out/utim64.asm
	rm out/utim64.o;

conv_bin:
	python elf2bin.py
