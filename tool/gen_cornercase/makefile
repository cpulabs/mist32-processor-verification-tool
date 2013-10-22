default: gen_src cp_instlevel

gen_src:
	python gen_cornercase.py 32 0 0 testcase/default_o2
	python gen_cornercase.py 11 0 0 testcase/default_i11
	python gen_cornercase.py 32 0 1 testcase/div_o2
	python gen_cornercase.py 11 0 1 testcase/div_i11



cp_instlevel:
	rm ../inst-level/asmsrc/src/*.*
	cp -r testcase/. ../inst-level/asmsrc/src/


	