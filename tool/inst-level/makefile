default: gen_asm all_make conv_bin
#default: gen_asm

gen_asm:
	python genasm.py o2i11\
		asmsrc/add_o2.expect.txt asmsrc/add_o2.src0.txt asmsrc/add_o2.src1.txt\
		asmsrc/add_i11.expect.txt asmsrc/add_i11.src0.txt asmsrc/add_i11.src1.txt > asm/add.s

	python genasm.py o2i11\
		asmsrc/sub_o2.expect.txt asmsrc/sub_o2.src0.txt asmsrc/sub_o2.src1.txt\
		asmsrc/sub_i11.expect.txt asmsrc/sub_i11.src0.txt asmsrc/sub_i11.src1.txt > asm/sub.s

	python genasm.py o2i11\
		asmsrc/mull_o2.expect.txt asmsrc/mull_o2.src0.txt asmsrc/mull_o2.src1.txt\
		asmsrc/mull_i11.expect.txt asmsrc/mull_i11.src0.txt asmsrc/mull_i11.src1.txt > asm/mull.s

	python genasm.py o2i11\
		asmsrc/mulh_o2.expect.txt asmsrc/mulh_o2.src0.txt asmsrc/mulh_o2.src1.txt\
		asmsrc/mulh_i11.expect.txt asmsrc/mulh_i11.src0.txt asmsrc/mulh_i11.src1.txt > asm/mulh.s

	python genasm.py o2i11\
		asmsrc/udiv_o2.expect.txt asmsrc/udiv_o2.src0.txt asmsrc/udiv_o2.src1.txt\
		asmsrc/udiv_i11.expect.txt asmsrc/udiv_i11.src0.txt asmsrc/udiv_i11.src1.txt > asm/udiv.s

	python genasm.py o2i11\
		asmsrc/umod_o2.expect.txt asmsrc/umod_o2.src0.txt asmsrc/umod_o2.src1.txt\
		asmsrc/umod_i11.expect.txt asmsrc/umod_i11.src0.txt asmsrc/umod_i11.src1.txt > asm/umod.s

	python genasm.py o2i11\
		asmsrc/div_o2.expect.txt asmsrc/div_o2.src0.txt asmsrc/div_o2.src1.txt\
		asmsrc/div_i11.expect.txt asmsrc/div_i11.src0.txt asmsrc/div_i11.src1.txt > asm/div.s

	python genasm.py o2i11\
		asmsrc/mod_o2.expect.txt asmsrc/mod_o2.src0.txt asmsrc/mod_o2.src1.txt\
		asmsrc/mod_i11.expect.txt asmsrc/mod_i11.src0.txt asmsrc/mod_i11.src1.txt > asm/mod.s


	python genasm.py o2\
		asmsrc/neg_o2.expect.txt asmsrc/neg_o2.src0.txt asmsrc/neg_o2.src1.txt\
		0 0 0 > asm/neg.s


	python genasm.py o2i11\
		asmsrc/umull_o2.expect.txt asmsrc/umull_o2.src0.txt asmsrc/umull_o2.src1.txt\
		asmsrc/umull_i11.expect.txt asmsrc/umull_i11.src0.txt asmsrc/umull_i11.src1.txt > asm/umull.s

	python genasm.py o2i11\
		asmsrc/umulh_o2.expect.txt asmsrc/umulh_o2.src0.txt asmsrc/umulh_o2.src1.txt\
		asmsrc/umulh_i11.expect.txt asmsrc/umulh_i11.src0.txt asmsrc/umulh_i11.src1.txt > asm/umulh.s


	python genasm.py o2\
		asmsrc/ld8_o2.expect.txt asmsrc/ld8_o2.src0.txt asmsrc/ld8_o2.src1.txt\
		0 0 0 > asm/ld8.s 																	#need test for i11

all_make:
	rm -rf out
	mkdir out
	python allassemble.py

conv_bin:
	python elf2bin.py