default: gen_testset all_make conv_bin

gen_testset:
	#ADD
	python gen_expect/gen_expect.py 2 32 0 32 0 add asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt asmsrc/expect/add_o2.expect.txt
	python gen_expect/gen_expect.py 2 32 0 11 1 add asmsrc/src/default_i11.src0.txt asmsrc/src/default_i11.src1.txt asmsrc/expect/add_i11.expect.txt
	python genasm.py o2i11\
		asmsrc/expect/add_o2.expect.txt asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt\
		asmsrc/expect/add_i11.expect.txt asmsrc/src/default_i11.src0.txt asmsrc/src/default_i11.src1.txt > asm/add.s
	#SUB
	python gen_expect/gen_expect.py 2 32 0 32 0 sub asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt asmsrc/expect/sub_o2.expect.txt
	python gen_expect/gen_expect.py 2 32 0 11 1 sub asmsrc/src/default_i11.src0.txt asmsrc/src/default_i11.src1.txt asmsrc/expect/sub_i11.expect.txt
	python genasm.py o2i11\
		asmsrc/expect/sub_o2.expect.txt asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt\
		asmsrc/expect/sub_i11.expect.txt asmsrc/src/default_i11.src0.txt asmsrc/src/default_i11.src1.txt > asm/sub.s
	#MULL
	python gen_expect/gen_expect.py 2 32 0 32 0 mull asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt asmsrc/expect/mull_o2.expect.txt
	python gen_expect/gen_expect.py 2 32 0 11 1 mull asmsrc/src/default_i11.src0.txt asmsrc/src/default_i11.src1.txt asmsrc/expect/mull_i11.expect.txt
	python genasm.py o2i11\
		asmsrc/expect/mull_o2.expect.txt asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt\
		asmsrc/expect/mull_i11.expect.txt asmsrc/src/default_i11.src0.txt asmsrc/src/default_i11.src1.txt > asm/mull.s
	#MULH
	python gen_expect/gen_expect.py 2 32 0 32 0 mulh asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt asmsrc/expect/mulh_o2.expect.txt
	python gen_expect/gen_expect.py 2 32 0 11 1 mulh asmsrc/src/default_i11.src0.txt asmsrc/src/default_i11.src1.txt asmsrc/expect/mulh_i11.expect.txt
	python genasm.py o2i11\
		asmsrc/expect/mulh_o2.expect.txt asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt\
		asmsrc/expect/mulh_i11.expect.txt asmsrc/src/default_i11.src0.txt asmsrc/src/default_i11.src1.txt > asm/mulh.s
	#UDIV
	python gen_expect/gen_expect.py 2 32 0 32 0 udiv asmsrc/src/div_o2.src0.txt asmsrc/src/div_o2.src1.txt asmsrc/expect/udiv_o2.expect.txt
	python gen_expect/gen_expect.py 2 32 0 11 0 udiv asmsrc/src/div_i11.src0.txt asmsrc/src/div_i11.src1.txt asmsrc/expect/udiv_i11.expect.txt
	python genasm.py o2i11\
		asmsrc/expect/udiv_o2.expect.txt asmsrc/src/div_o2.src0.txt asmsrc/src/div_o2.src1.txt\
		asmsrc/expect/udiv_i11.expect.txt asmsrc/src/div_i11.src0.txt asmsrc/src/div_i11.src1.txt > asm/udiv.s
	#UMOD
	python gen_expect/gen_expect.py 2 32 0 32 0 umod asmsrc/src/div_o2.src0.txt asmsrc/src/div_o2.src1.txt asmsrc/expect/umod_o2.expect.txt
	python gen_expect/gen_expect.py 2 32 0 11 0 umod asmsrc/src/div_i11.src0.txt asmsrc/src/div_i11.src1.txt asmsrc/expect/umod_i11.expect.txt
	python genasm.py o2i11\
		asmsrc/expect/umod_o2.expect.txt asmsrc/src/div_o2.src0.txt asmsrc/src/div_o2.src1.txt\
		asmsrc/expect/umod_i11.expect.txt asmsrc/src/div_i11.src0.txt asmsrc/src/div_i11.src1.txt > asm/umod.s
	#CMP
	#DIV
	python gen_expect/gen_expect.py 2 32 0 32 0 div asmsrc/src/div_o2.src0.txt asmsrc/src/div_o2.src1.txt asmsrc/expect/div_o2.expect.txt
	python gen_expect/gen_expect.py 2 32 0 11 1 div asmsrc/src/div_i11.src0.txt asmsrc/src/div_i11.src1.txt asmsrc/expect/div_i11.expect.txt
	python genasm.py o2i11\
		asmsrc/expect/div_o2.expect.txt asmsrc/src/div_o2.src0.txt asmsrc/src/div_o2.src1.txt\
		asmsrc/expect/div_i11.expect.txt asmsrc/src/div_i11.src0.txt asmsrc/src/div_i11.src1.txt > asm/div.s
	#MOD
	python gen_expect/gen_expect.py 2 32 0 32 0 mod asmsrc/src/div_o2.src0.txt asmsrc/src/div_o2.src1.txt asmsrc/expect/mod_o2.expect.txt
	python gen_expect/gen_expect.py 2 32 0 11 1 mod asmsrc/src/div_i11.src0.txt asmsrc/src/div_i11.src1.txt asmsrc/expect/mod_i11.expect.txt
	python genasm.py o2i11\
		asmsrc/expect/mod_o2.expect.txt asmsrc/src/div_o2.src0.txt asmsrc/src/div_o2.src1.txt\
		asmsrc/expect/mod_i11.expect.txt asmsrc/src/div_i11.src0.txt asmsrc/src/div_i11.src1.txt > asm/mod.s
	#NEG
	python gen_expect/gen_expect.py 1 32 0 32 0 neg asmsrc/src/default_o2.src0.txt none asmsrc/expect/neg_o2.expect.txt
	python genasm.py o2\
		asmsrc/expect/neg_o2.expect.txt asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src0.txt\
		0 0 0 > asm/neg.s
	#UMULL
	#python gen_expect/gen_expect.py 2 32 0 32 0 umull asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt asmsrc/expect/umull_o2.expect.txt
	#python gen_expect/gen_expect.py 2 32 0 11 0 umull asmsrc/src/default_i11.src0.txt asmsrc/src/default_i11.src1.txt asmsrc/expect/umull_i11.expect.txt
	#python genasm.py o2i11\
	#	asmsrc/expect/umull_o2.expect.txt asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt\
	#	asmsrc/expect/umull_i11.expect.txt asmsrc/src/default_i11.src0.txt asmsrc/src/default_i11.src1.txt > asm/umull.s
	#UMULH
	#python gen_expect/gen_expect.py 2 32 0 32 0 umulh asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt asmsrc/expect/umulh_o2.expect.txt
	#python gen_expect/gen_expect.py 2 32 0 11 0 umulh asmsrc/src/default_i11.src0.txt asmsrc/src/default_i11.src1.txt asmsrc/expect/umulh_i11.expect.txt
	#python genasm.py o2i11\
	#	asmsrc/expect/umulh_o2.expect.txt asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt\
	#	asmsrc/expect/umulh_i11.expect.txt asmsrc/src/default_i11.src0.txt asmsrc/src/default_i11.src1.txt > asm/umulh.s
	#IC
	#ADDC
	#INC
	#DEC
	#MAX
	python gen_expect/gen_expect.py 2 32 0 32 0 max asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt asmsrc/expect/max_o2.expect.txt
	python gen_expect/gen_expect.py 2 32 0 11 1 max asmsrc/src/default_i11.src0.txt asmsrc/src/default_i11.src1.txt asmsrc/expect/max_i11.expect.txt
	python genasm.py o2i11\
		asmsrc/expect/max_o2.expect.txt asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt\
		asmsrc/expect/max_i11.expect.txt asmsrc/src/default_i11.src0.txt asmsrc/src/default_i11.src1.txt > asm/max.s
	#MIN
	python gen_expect/gen_expect.py 2 32 0 32 0 min asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt asmsrc/expect/min_o2.expect.txt
	python gen_expect/gen_expect.py 2 32 0 11 1 min asmsrc/src/default_i11.src0.txt asmsrc/src/default_i11.src1.txt asmsrc/expect/min_i11.expect.txt
	python genasm.py o2i11\
		asmsrc/expect/min_o2.expect.txt asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt\
		asmsrc/expect/min_i11.expect.txt asmsrc/src/default_i11.src0.txt asmsrc/src/default_i11.src1.txt > asm/min.s
	#UMAX
	python gen_expect/gen_expect.py 2 32 0 32 0 umax asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt asmsrc/expect/umax_o2.expect.txt
	python gen_expect/gen_expect.py 2 32 0 11 1 umax asmsrc/src/default_i11.src0.txt asmsrc/src/default_i11.src1.txt asmsrc/expect/umax_i11.expect.txt
	python genasm.py o2i11\
		asmsrc/expect/umax_o2.expect.txt asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt\
		asmsrc/expect/umax_i11.expect.txt asmsrc/src/default_i11.src0.txt asmsrc/src/default_i11.src1.txt > asm/umax.s
	#UMIN
	python gen_expect/gen_expect.py 2 32 0 32 0 umin asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt asmsrc/expect/umin_o2.expect.txt
	python gen_expect/gen_expect.py 2 32 0 11 1 umin asmsrc/src/default_i11.src0.txt asmsrc/src/default_i11.src1.txt asmsrc/expect/umin_i11.expect.txt
	python genasm.py o2i11\
		asmsrc/expect/umin_o2.expect.txt asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt\
		asmsrc/expect/umin_i11.expect.txt asmsrc/src/default_i11.src0.txt asmsrc/src/default_i11.src1.txt > asm/umin.s
	#SEXT8
	#python gen_expect/gen_expect.py 2 32 0 32 0 sext8 asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt asmsrc/expect/sext8_o2.expect.txt
	#SEXT16
	#python gen_expect/gen_expect.py 2 32 0 32 0 sext16 asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt asmsrc/expect/sext16_o2.expect.txt
	#SHL
	python gen_expect/gen_expect.py 2 32 0 32 0 shl asmsrc/src/shift_o2.src0.txt asmsrc/src/shift_o2.src1.txt asmsrc/expect/shl_o2.expect.txt
	python gen_expect/gen_expect.py 2 32 0 11 1 shl asmsrc/src/shift_i11.src0.txt asmsrc/src/shift_i11.src1.txt asmsrc/expect/shl_i11.expect.txt
	python genasm.py o2i11\
		asmsrc/expect/shl_o2.expect.txt asmsrc/src/shift_o2.src0.txt asmsrc/src/shift_o2.src1.txt\
		asmsrc/expect/shl_i11.expect.txt asmsrc/src/shift_i11.src0.txt asmsrc/src/shift_i11.src1.txt > asm/shl.s
	#SHR
	python gen_expect/gen_expect.py 2 32 0 32 0 shr asmsrc/src/shift_o2.src0.txt asmsrc/src/shift_o2.src1.txt asmsrc/expect/shr_o2.expect.txt
	python gen_expect/gen_expect.py 2 32 0 11 1 shr asmsrc/src/shift_i11.src0.txt asmsrc/src/shift_i11.src1.txt asmsrc/expect/shr_i11.expect.txt
	python genasm.py o2i11\
		asmsrc/expect/shr_o2.expect.txt asmsrc/src/shift_o2.src0.txt asmsrc/src/shift_o2.src1.txt\
		asmsrc/expect/shr_i11.expect.txt asmsrc/src/shift_i11.src0.txt asmsrc/src/shift_i11.src1.txt > asm/shr.s
	#SAR
	python gen_expect/gen_expect.py 2 32 0 32 0 sar asmsrc/src/shift_o2.src0.txt asmsrc/src/shift_o2.src1.txt asmsrc/expect/sar_o2.expect.txt
	python gen_expect/gen_expect.py 2 32 0 11 1 sar asmsrc/src/shift_i11.src0.txt asmsrc/src/shift_i11.src1.txt asmsrc/expect/sar_i11.expect.txt
	python genasm.py o2i11\
		asmsrc/expect/sar_o2.expect.txt asmsrc/src/shift_o2.src0.txt asmsrc/src/shift_o2.src1.txt\
		asmsrc/expect/sar_i11.expect.txt asmsrc/src/shift_i11.src0.txt asmsrc/src/shift_i11.src1.txt > asm/sar.s
	#ROL
	python gen_expect/gen_expect.py 2 32 0 32 0 rol asmsrc/src/shift_o2.src0.txt asmsrc/src/shift_o2.src1.txt asmsrc/expect/rol_o2.expect.txt
	python gen_expect/gen_expect.py 2 32 0 11 1 rol asmsrc/src/shift_i11.src0.txt asmsrc/src/shift_i11.src1.txt asmsrc/expect/rol_i11.expect.txt
	python genasm.py o2i11\
		asmsrc/expect/rol_o2.expect.txt asmsrc/src/shift_o2.src0.txt asmsrc/src/shift_o2.src1.txt\
		asmsrc/expect/rol_i11.expect.txt asmsrc/src/shift_i11.src0.txt asmsrc/src/shift_i11.src1.txt > asm/rol.s
	#ROR
	python gen_expect/gen_expect.py 2 32 0 32 0 ror asmsrc/src/shift_o2.src0.txt asmsrc/src/shift_o2.src1.txt asmsrc/expect/ror_o2.expect.txt
	python gen_expect/gen_expect.py 2 32 0 11 1 ror asmsrc/src/shift_i11.src0.txt asmsrc/src/shift_i11.src1.txt asmsrc/expect/ror_i11.expect.txt
	python genasm.py o2i11\
		asmsrc/expect/ror_o2.expect.txt asmsrc/src/shift_o2.src0.txt asmsrc/src/shift_o2.src1.txt\
		asmsrc/expect/ror_i11.expect.txt asmsrc/src/shift_i11.src0.txt asmsrc/src/shift_i11.src1.txt > asm/ror.s
	#AND
	python gen_expect/gen_expect.py 2 32 0 32 0 and asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt asmsrc/expect/and_o2.expect.txt
	python genasm.py o2\
		asmsrc/expect/and_o2.expect.txt asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt\
		0 0 0 > asm/and.s 
	#OR
	python gen_expect/gen_expect.py 2 32 0 32 0 or asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt asmsrc/expect/or_o2.expect.txt
	python genasm.py o2\
		asmsrc/expect/or_o2.expect.txt asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt\
		0 0 0 > asm/or.s 
	#XOR
	python gen_expect/gen_expect.py 2 32 0 32 0 xor asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt asmsrc/expect/xor_o2.expect.txt
	python genasm.py o2\
		asmsrc/expect/xor_o2.expect.txt asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt\
		0 0 0 > asm/xor.s 
	#NOT
	python gen_expect/gen_expect.py 1 32 0 32 0 not asmsrc/src/default_o2.src0.txt none asmsrc/expect/not_o2.expect.txt
	python genasm.py o2\
		asmsrc/expect/not_o2.expect.txt asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src0.txt\
		0 0 0 > asm/not.s 
	#NAND
	python gen_expect/gen_expect.py 2 32 0 32 0 nand asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt asmsrc/expect/nand_o2.expect.txt
	python genasm.py o2\
		asmsrc/expect/nand_o2.expect.txt asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt\
		0 0 0 > asm/nand.s 
	#NOR
	python gen_expect/gen_expect.py 2 32 0 32 0 nor asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt asmsrc/expect/nor_o2.expect.txt
	python genasm.py o2\
		asmsrc/expect/nor_o2.expect.txt asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt\
		0 0 0 > asm/nor.s 
	#XNOR
	python gen_expect/gen_expect.py 2 32 0 32 0 xnor asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt asmsrc/expect/xnor_o2.expect.txt
	python genasm.py o2\
		asmsrc/expect/xnor_o2.expect.txt asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src1.txt\
		0 0 0 > asm/xnor.s 
	#TEST
	#WL16
	#WH16
	#CLRB
	#SETB
	#CLR

	#SET
	
	#REVB
	python gen_expect/gen_expect.py 1 32 0 32 0 revb asmsrc/src/default_o2.src0.txt none asmsrc/expect/revb_o2.expect.txt
	python genasm.py o2\
		asmsrc/expect/revb_o2.expect.txt asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src0.txt\
		0 0 0 > asm/revb.s 
	#REV8
	python gen_expect/gen_expect.py 1 32 0 32 0 rev8 asmsrc/src/default_o2.src0.txt none asmsrc/expect/rev8_o2.expect.txt
	python genasm.py o2\
		asmsrc/expect/rev8_o2.expect.txt asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src0.txt\
		0 0 0 > asm/rev8.s 
	#GETB
	#GET8
	#LIL
	#LIH
	#LD8
	python gen_expect/gen_expect.py 1 32 0 32 0 hihi8 asmsrc/src/default_o2.src0.txt none asmsrc/expect/ld8_o2.expect.txt
	python genasm.py o2\
		asmsrc/expect/ld8_o2.expect.txt asmsrc/src/default_o2.src0.txt asmsrc/src/default_o2.src0.txt\
		0 0 0 > asm/ld8.s 	
	#--i11
	#LD16
	#LD32
	#ST8
	#ST16
	#ST32

	#PUSH
	#PUSHPC
	#POP
	#LDD8
	#LDD16
	#LDD32
	#STD8
	#STD16
	#STD32

	#BUR
	#BR
	#B
	#IB
	#BURN
	#BRN
	#BN
	#------
	#System Register
	#------
	#NOP
	#HALT
	#MOVE
	#MOVEPC


											

all_make:
	rm -rf out
	mkdir out
	python allassemble.py

conv_bin:
	python elf2bin.py