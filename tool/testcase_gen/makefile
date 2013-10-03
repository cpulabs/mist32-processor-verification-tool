default: gen_operand_testdata gen_imm_testdata

gen_operand_testdata:
	python tcg.py 32 0 0 add testcase/add_o2
	python tcg.py 32 0 0 sub testcase/sub_o2
	python tcg.py 32 0 0 mull testcase/mull_o2
	python tcg.py 32 0 0 mulh testcase/mulh_o2
	python tcg.py 32 0 0 udiv testcase/udiv_o2	
	python tcg.py 32 0 0 umod testcase/umod_o2
	#cmp
	python tcg.py 32 0 0 div testcase/div_o2	
	python tcg.py 32 0 0 mod testcase/mod_o2
	#neg
	#umull
	#umulh


gen_imm_testdata:
	python tcg.py 11 1 0 add testcase/add_i11
	python tcg.py 11 1 0 sub testcase/sub_i11
	python tcg.py 11 1 0 mull testcase/mull_i11
	python tcg.py 11 1 0 mulh testcase/mulh_i11
	python tcg.py 11 0 0 udiv testcase/udiv_i11
	python tcg.py 11 0 0 umod testcase/umod_i11
	#cmp
	python tcg.py 11 1 0 div testcase/div_i11
	python tcg.py 11 1 0 mod testcase/mod_i11
	#neg
	#umull
	#umulh


	