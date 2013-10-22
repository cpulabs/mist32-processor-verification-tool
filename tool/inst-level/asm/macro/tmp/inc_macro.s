;********************************************
;Instruction Section Macro
;********************************************
	.align	2
	.text

.macro check_o2_format src0, src1, expect
	.align 2

	wl16	r8, lo(\src0)
	wh16	r8, hi(\src0)
	ld32	r8, r8
	wl16	r9, lo(\expect)
	wh16	r9, hi(\expect)
	ld32	r9, r9	
	;Execution - Begin
	inc		r8, r8
	;Execution - End
	movepc	rret, 8
	br		compare, #al	;Start Compare
	add		r2, 1			;Check Counter Inclement
.endm

