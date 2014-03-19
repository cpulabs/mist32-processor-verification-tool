;********************************************
;Instruction Section
;********************************************
;--r29			: Result
;--r30			: Expect
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

.macro fowarding_cancel
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	move	r1, r0
	add		r1, 1
	move	r2, r1
	add		r2, 1
	move	r3, r2
	add		r3, 1
	move	r4, r3
	add		r4, 1
	move	r5, r4
	add		r5, 1
	move	r6, r5
	add		r6, 1
	move	r7, r6
	add		r7, 1
	move	r8, r7
	add		r8, 1
	move	r9, r8
	add		r9, 1
	move	r10, r9
	add		r10, 1
	move	r11, r10
	add		r11, 1
	move	r12, r11
	add		r12, 1
	move	r13, r12
	add		r13, 1
	move	r14, r13
	add		r14, 1
	move	r15, r14
	add		r15, 1
	move	r29, r15
	;Compare Macro
	compare
	;Initial
	add		r27, 1			;Check Counter Inclement

	;********************************************
	;Stack Pointer [0]Check 
	;	(SPR->GR Fowarding Test)
	;********************************************
	;Initial General Register
	gr_0to15_clear
	clr		r27
	clr		r28
	lil		r28, 1

	;SPR Load(non fowarding)
	srspr	r0
	fowarding_cancel
	move	r30, r0
	sub		r30, 4

	;SPR Store(fowarding)
	srspr	r29
	sub		r29, 4

	compare

	;Flag Update
	add		r27, 1			;Check Counter Inclement

	;********************************************
	;Stack Pointer [1]Check 
	;	(GR->SPR Fowarding Test)
	;********************************************
	;Expect SPR Store
	srspr	r0
	move	r30, r0
	fowarding_cancel
	srspw	r30
	srspr	r30

	;Test SPR Store
	move	r29, r0
	sub		r29, 32
	srspw	r29
	srspr	r29
	add		r29, 32

	compare
	;Flag Update
	add		r27, 1			;Check Counter Inclement


	;********************************************
	;Stack Pointer [2]Check 
	;	(SPR Write after Read Fowarding Test)
	;********************************************
	gr_0to15_clear
	clr		r29
	clr		r30

	;SPR Load(non fowarding)
	srspr	r0
	move	r1, r0
	sub		r1,	16
	srspw	r1
	fowarding_cancel
	srspr	r30

	;Reset SPR
	srspw	r0
	fowarding_cancel

	;Test SPR Load(fowarding)
	move	r1, r0
	sub		r1,	32
	srspw	r1
	srspr	r29
	add		r29, 16

	;Compare
	compare
	;Flag Update
	add		r27, 1			;Check Counter Inclement

	;********************************************
	;Stack Pointer [3]Check
	;	Push Check
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
	;Stack Pointer [4]Check
	;	Pop Check
	;********************************************
	;Initial General Register
	gr_0to15_clear
	
	;Test
	srspr	r30
	pop		r15
	pop		r15
	pop		r15
	pop		r15
	add		r30, 16
	srspr	r29
	
	compare

	;Flag Update
	add		r27, 1			;Check Counter Inclement


	;********************************************
	;Stack Pointer [5]Check
	;	Push/Pop Check
	;********************************************
	;Initial General Register
	gr_0to15_clear
	
	;Expect
	srspr	r30

	;Test
	push	r30
	pop		r30
	push	r30
	pop		r30
	push	r30
	pop		r30
	push	r30
	pop		r30

	;Result
	srspr	r29
	
	compare

	;Flag Update
	add		r27, 1			;Check Counter Inclement

	;********************************************
	;Stack Pointer [6]Check
	;	Push/Pop Data Check
	;********************************************
	;Initial General Register
	gr_0to15_clear
	
	;initial
	lil		r0, 0
	lil		r1, 1
	lil		r2, 2 
	lil		r3, 3


	;Test
	push	r0
	push	r1
	push	r2
	push	r3

	fowarding_cancel
	pop		r4
	move	r30, r3
	move	r29, r4
	compare
	fowarding_cancel
	pop		r4
	move	r30, r2
	move	r29, r4
	compare
	fowarding_cancel
	pop		r4
	move	r30, r1
	move	r29, r4
	compare
	fowarding_cancel
	pop		r4
	move	r30, r0
	move	r29, r4
	compare

	;Flag Update
	add		r27, 1			;Check Counter Inclement

	;********************************************
	;Stack Pointer [7]Check
	;	SPR Write after Push/Pop Data Check
	;********************************************
	;Initial General Register
	gr_0to15_clear
	
	;initial
	lil		r0, 0
	lil		r1, 1
	lil		r2, 2 
	lil		r3, 3
	srspr	r30
	move	r29, r30
	sub		r30, 32
	srspw	r30
	fowarding_cancel

	;Test
	srspw	r29
	push	r0
	push	r1
	push	r2
	push	r3

	fowarding_cancel
	pop		r4
	move	r30, r3
	move	r29, r4
	compare
	fowarding_cancel
	pop		r4
	move	r30, r2
	move	r29, r4
	compare
	fowarding_cancel
	pop		r4
	move	r30, r1
	move	r29, r4
	compare
	fowarding_cancel
	pop		r4
	move	r30, r0
	move	r29, r4
	compare

	;Flag Update
	add		r27, 1			;Check Counter Inclement


	;********************************************
	;Finish
	;********************************************
	br		finish, #al
