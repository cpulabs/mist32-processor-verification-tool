default: make_init branch_predictor_make fowarding_make irq_div_make conv_bin

make_init:
	rm -rf out
	mkdir out

branch_predictor_make:
	mist32-elf-as -o out/branch_predictor.o com/start.s asm/branch_predictor.s
	mist32-elf-ld -Tcom/linker_script.ld -o out/branch_predictor.out out/branch_predictor.o
	mist32-elf-objdump -D ./out/branch_predictor.out > ./out/branch_predictor.asm
	rm out/branch_predictor.o;


fowarding_make:
	mist32-elf-as -o out/forwarding.o com/start.s asm/forwarding.s
	mist32-elf-ld -Tcom/linker_script.ld -o out/forwarding.out out/forwarding.o
	mist32-elf-objdump -D ./out/forwarding.out > ./out/forwarding.asm
	rm out/forwarding.o;

irq_div_make:
	mist32-elf-as -o out/irq_div.o com/start.s asm/irq_div.s
	mist32-elf-ld -Tcom/linker_script.ld -o out/irq_div.out out/irq_div.o
	mist32-elf-objdump -D ./out/irq_div.out > ./out/irq_div.asm
	rm out/irq_div.o;


	


conv_bin:
	python elf2bin.py
