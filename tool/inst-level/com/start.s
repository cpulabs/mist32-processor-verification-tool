;********************************************
;MIST32 Processor Instruction Level Check
;Common File
;
;-Register
;--r0, r1	: Tmp
;--r2		: Check Number
;--r3		: Check Type
;--r8		: Result Data
;--r9		: Expect Data
;--rret		: Return Addr
;********************************************
;rret : Return Addr


	.globl _start
;********************************************
;Data Section
;********************************************
	.section .assert
	.align 2

CHECK_FLAG		: .long 0x00000001	;(0):Error, (1):Ok
CHECK_FINISH	: .long 0x00000000	;(0):Working, (1)Finish
ERROR_TYPE		: .long 0x00000000	;(0):General Register, (1)Stack Point Register
ERROR_NUMBER	: .long 0x00000000
ERROR_RESULT	: .long 0x00000000
ERROR_EXPECT	: .long 0x00000000

;********************************************
;Stack Section
;********************************************
	.section .stack
	.align 2
	
STACK_INDEX		: .long 0x00000000	;<-Damy Data (Read me LinkerScript)


;********************************************
;Instruction Section
;********************************************
	.align	2
	.text

_start:
	wl16	r0,	lo(STACK_INDEX)
	wh16	r0,	hi(STACK_INDEX)
	srspw	r0						;Set SPR
	br		check, #al 				;Insctruction Check Routine

compare:
	cmp		r8, r9
	b		rret, #eq

error:
	;Store Error Flag
	wl16	r0,	lo(CHECK_FLAG)
	wh16	r0,	hi(CHECK_FLAG)
	lil		r1, 0x0
	st32	r1, r0
	;Store Error Number
	;sub		r2, 0x1
	wl16	r0,	lo(ERROR_NUMBER)
	wh16	r0,	hi(ERROR_NUMBER)
	st32	r2,	r0
	;Store Error Type
	wl16	r0,	lo(ERROR_TYPE)
	wh16	r0,	hi(ERROR_TYPE)
	st32	r3,	r0
	;Store Error Result
	wl16	r0,	lo(ERROR_RESULT)
	wh16	r0,	hi(ERROR_RESULT)
	st32	r8,	r0
	;Store Error Expect
	wl16	r0,	lo(ERROR_EXPECT)
	wh16	r0,	hi(ERROR_EXPECT)
	st32	r9,	r0

finish:
	;Check Finish
	wl16	r0,	lo(CHECK_FINISH)
	wh16	r0,	hi(CHECK_FINISH)
	lil		r1, 0x1
	st32	r1, r0

	br		0,	#al

