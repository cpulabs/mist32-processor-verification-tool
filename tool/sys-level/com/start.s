;********************************************
;MIST32 Processor System Level Check
;Common File
;********************************************

	.globl _start
;********************************************
;Data Section
;********************************************
	.section .assert
	.align 2

CHECK_FLAG		: .long 0x00000001	;(0):Error, (1):Ok
CHECK_FINISH	: .long 0x00000000	;(0):Working, (1)Finish

;********************************************
;Instruction Section
;********************************************
	.align	2
	.text

_start:
	lil		r0,		0x400
	srspw	r0
	movepc	rret,	8
	br		main,	#al
finished:
	;Store Error Flag
	wl16	r25, lo(CHECK_FLAG)
	wh16	r25, hi(CHECK_FLAG)
	lil		r26, 0x1
	st32	r26, r25
	;Check Finish Flag
	wl16	r25, lo(CHECK_FINISH)
	wh16	r25, hi(CHECK_FINISH)
	lil		r26, 0x1
	st32	r26, r25
	br		0,		#al

