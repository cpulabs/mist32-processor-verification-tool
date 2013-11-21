;********************************************
;Instruction Section
;********************************************
	.align	2
	.text

.macro gr_0to15_clear
	clr		r0
	clr		r1
	clr		r2
	clr		r3
	clr		r4
	clr		r5
	clr		r6
	clr		r7
	clr		r8
	clr		r9
	clr		r10
	clr		r11
	clr		r12
	clr		r13
	clr		r14
	clr		r15
.endm

.macro gr_16to31_clear
	clr		r16
	clr		r17
	clr		r18
	clr		r19
	clr		r20
	clr		r21
	clr		r22
	clr		r23
	clr		r24
	clr		r25
	clr		r26
	clr		r27
	clr		r28
	clr		r29
	clr		r30
	clr		r31
.endm

.macro compare
	movepc	rret, 12
	cmp		r29, r30
	br		error, #neq
.endm

target:
	;********************************************
	;Initial
	;********************************************
	gr_0to15_clear
	gr_16to31_clear
	
	;********************************************
	;General Register [0]Check
	;********************************************
	;Expect Set
	clr		r30
	lil		r30, 1
	;Initial
	move	r0, r30
	;Execute
	add		r0, 0
	add		r1, r0
	add		r2, r1
	add		r3, r2
	add		r4, r3
	add		r5, r4
	add		r6, r5
	add		r7, r6
	add		r8, r7
	add		r9, r8
	add		r10, r9
	add		r11, r10
	add		r12, r11
	add		r13, r12
	add		r14, r13
	add		r15, r14
	move	r29, r15
	;Compare Macro
	compare
	;Initial
	add		r27, 1			;Check Counter Inclement

	;********************************************
	;General Register [1]Check
	;********************************************
	gr_0to15_clear
	
	;Expect Set
	clr		r30
	lil		r30, 16
	;Execute
	add		r0, 1
	add		r1, 1
	add		r2, 1
	add		r3, 1
	add		r4, 1
	add		r5, 1
	add		r6, 1
	add		r7, 1
	add		r8, 1
	add		r9, 1
	add		r10, 1
	add		r11, 1
	add		r12, 1
	add		r13, 1
	add		r14, 1
	add		r15, 1
	move	r29, r15
	;Compare Macro
	compare
	;Initial
	add		r27, 1			;Check Counter Inclement


	;********************************************
	;Stack Pointer [0]Check
	;********************************************
	;Initial General Register
	gr_0to15_clear
	clr		r27
	lil		r28, 1
	;Test
	srspr	r30
	sub		r30, 4
	srspw	r30
	srspr	r29
	compare
	;Flag Update
	add		r27, 1			;Check Counter Inclement

	;********************************************
	;Stack Pointer [0]Check
	;********************************************
	;Initial General Register
	gr_0to15_clear
	;Test
	srspr	r30
	push	r30
	push	r30
	push	r30
	push	r30
	sub		r30, 16
	srspr	r29
	compare
	;Flag Update
	add		r27, 1			;Check Counter Inclement

	;********************************************
	;Finish
	;********************************************
	br		finish, #al
