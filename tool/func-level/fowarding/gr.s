;********************************************
;Instruction Section
;********************************************
	.align	2
	.text



check:
	;********************************************
	;Initial
	;********************************************
	xor		r2, r2
	lil		r9, lo(0x000f)	;Except Data
	lih		r9, hi(0x0000)	;Except Data
	
	;********************************************
	;[0]Check
	;********************************************
	xor		r8, r8	
	;Execution - begin
	add		r8,	0x1
	add		r8,	0x1
	add		r8,	0x1
	add		r8,	0x1
	add		r8,	0x1
	add		r8,	0x1
	add		r8,	0x1
	add		r8,	0x1
	add		r8,	0x1
	add		r8,	0x1
	add		r8,	0x1
	add		r8,	0x1
	add		r8,	0x1
	add		r8,	0x1
	add		r8,	0x1
	;Execution - End
	movepc	rret, 8
	br		compare, #al	;Start Compare
	add		r2, 1			;Check Counter Inclement
	
	;********************************************
	;[1]Check
	;********************************************
	xor		r0, r0
	xor		r8, r8
	;Execution - begin
	add		r0,	0x1
	add		r0,	0x1
	add		r0,	0x1
	add		r0,	0x1
	add		r0,	0x1
	add		r0,	0x1
	add		r0,	0x1
	add		r0,	0x1
	add		r0,	0x1
	add		r0,	0x1
	add		r0,	0x1
	add		r0,	0x1
	add		r0,	0x1
	add		r0,	0x1
	add		r0,	0x1
	move	r8, r0
	;Execution - End
	movepc	rret, 8
	br		compare, #al	;Start Compare
	add		r2, 1			;Check Counter Inclement

	;********************************************
	;Finish
	;********************************************
	br		finish, #al
