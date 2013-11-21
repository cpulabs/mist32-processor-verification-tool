;********************************************
;MIST32 Processor Function Level Check
;Common File
;
;-Register
;--r25			: Temporary Register0
;--r26			: Temporary Register1
;--r27			: Error Number
;--r28			: Error Type
;--r29			: Result
;--r30			: Expect
;--rret(r31)	: Return Addr
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
CHECK_LOG		: .long 0x00000000	;Streaming Memory out
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
	br		target, #al 			;Insctruction Check Routine

mem_print:
	wl16	r16, lo(CHECK_LOG)
	wh16	r16, hi(CHECK_LOG)
	st32	r0, r16
	b		rret, #al

error:
	;Store Error Flag
	wl16	r25, lo(CHECK_FLAG)
	wh16	r25, hi(CHECK_FLAG)
	lil		r26, 0x0
	st32	r26, r25
	;Store Error Number
	wl16	r25, lo(ERROR_NUMBER)
	wh16	r25, hi(ERROR_NUMBER)
	st32	r27, r25
	;Store Error Type
	wl16	r25, lo(ERROR_TYPE)
	wh16	r25, hi(ERROR_TYPE)
	st32	r28, r25
	;Store Error Result
	wl16	r25, lo(ERROR_RESULT)
	wh16	r25, hi(ERROR_RESULT)
	st32	r29, r25
	;Store Error Expect
	wl16	r25, lo(ERROR_EXPECT)
	wh16	r25, hi(ERROR_EXPECT)
	st32	r30, r25

finish:
	;Check Finish
	wl16	r25, lo(CHECK_FINISH)
	wh16	r25, hi(CHECK_FINISH)
	lil		r26, 0x1
	st32	r26, r25
	br		0, #al

