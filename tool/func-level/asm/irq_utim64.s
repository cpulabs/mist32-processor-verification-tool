

;********************************************
;IDT Section
;********************************************
	.align 2
	.section .idt
idt_label:
		nop
		nop



;********************************************
;Instruction Section
;********************************************
	.align 2
	.text

.macro idt_section_write addr_hi, addr_lo, offset, v63to32_hi, v63to32_lo, v31to0_hi, v31to0_lo
	;Address

	wl16	r16,			\addr_lo
	wh16	r16,			\addr_hi

	;Add Affset
	add		r16,			\offset
		
	;Data
	wl16	r17,			\v31to0_lo
	wh16	r17,			\v31to0_hi
	wl16	r18,			\v63to32_lo
	wh16	r18,			\v63to32_hi

	;Store Single IDT Section 
	st32	r17, 			r16
	add		r16, 			4	
	st32	r18, 			r16
.endm

.macro clr_idt
	clr		r0
	clr		r1
clr_idt_lp:
	idt_section_write hi(idt_label), lo(idt_label), r1, hi(0), lo(0), hi(0), lo(0)
	add		r1,				8
	inc		r0,				r0
	cmp		r0,				128
	br		clr_idt_lp,		#ueu
.endm

.macro idt_enable
	wl16	r0,				lo(idt_label)
	wh16	r0,				hi(idt_label)
	sridtw	r0
	idts
	srieiw	1								;Interrupt Enable
.endm
	
;io_addr = r1, mode = r2
.macro start_utim64 io_addr mode
	;UTIM64AMCFGR - Stop Main Counter
	clr		r7
	st32	r7,				\io_addr

	;UTIM64AMCR - Counter Clear
	clr		r7
	move	r0,				\io_addr
	add		r0,				0x4
	st32	r7,				r0

	add		r0,				0x4
	st32	r7,				r0

	;UTIM64ACC0R - Compare Set
	clr		r7
	move	r0,				\io_addr
	add		r0,				0xc
	add		r7,				0x0				;Compare Number63-32
	st32	r7,				r0

	clr		r7
	move	r0,				\io_addr
	add		r0,				0x10
	add		r7,				0x20			;Compare Number31-0
	st32	r7,				r0				

	;UTIM64ACC0CFGR - Compare Counter Settings
	clr		r7
	move	r0,				\io_addr
	add		r0,				0x2c
	add		r7,				\mode
	st32	r7,				r0

	;UTIM64AMCFGR - Start Main Counter
	clr		r7
	add		r7,				1
	st32	r7,				\io_addr
.endm

;io_addr = r1, mode = r2
.macro stop_utim64 io_addr
	;UTIM64AMCFGR - Stop Main Counter
	clr		r7
	st32	r7,				\io_addr
.endm


.macro read_flag_utim64 io_addr
	;UTIM64FLAGS - Load Flag
	move	r0,				\io_addr
	add		r0,				0x7c
	ld32	r7,				r0
	move	r0,				r7
.endm


target:
	;Clear IDT
	clr_idt
;********************************************
;Check - 0(Non Predict Interrupt Check)
;********************************************
check0:
	;Set IDT
	clr		r0
	wl16	r0,				288		;offset is Interrupt Num = 36 * 8
	idt_section_write hi(idt_label), lo(idt_label), r0, hi(check0_hdl), lo(check0_hdl), hi(3), lo(3) 

	;IDT Enable
	idt_enable

	;Timer Start
	clr		r2		
	add		r2,				3		;Non Predict | 32bit mode | IRQ Ena | Counter 0 Enable
	sriosr	r1
	start_utim64 r1, r2
	br		0,				#al

check0_hdl:							;IF not error came here
	;UTIM64FLAG Register Load
	sriosr	r1
	read_flag_utim64 r1
	cmp		r0,				1
	br		error, 			#neq	;ERROR



;********************************************
;Check - 1(Non Predict Interrupt Check with Return)
;********************************************
check1:
	;Set IDT
	clr		r0
	wl16	r0,				288		;offset is Interrupt Num = 36 * 8
	idt_section_write hi(idt_label), lo(idt_label), r0, hi(check1_hdl), lo(check1_hdl), hi(3), lo(3) 

	;IDT Enable
	idt_enable

	;Timer Start
	clr		r2		
	add		r2,				3		;Non Predict | 32bit mode | IRQ Ena | Counter 0 Enable
	sriosr	r1
	start_utim64 r1, r2
	clr		r8

check1_wait:
	cmp		r8,				1
	br		check1_wait,	#neq
	br		check1_ok,		#al		;IF not error came here

check1_hdl:					
	;UTIM64FLAG Register Load
	sriosr	r1
	read_flag_utim64 r1
	cmp		r0,				1
	br		error, 			#neq	;ERROR
	ib

check1_ok:
	nop


;********************************************
;Check - 2(Predict Interrupt Check)
;********************************************
check2:
	;Set IDT
	clr		r0
	wl16	r0,				288		;offset is Interrupt Num = 36 * 8
	idt_section_write hi(idt_label), lo(idt_label), r0, hi(check2_hdl), lo(check2_hdl), hi(3), lo(3) 

	;IDT Enable
	idt_enable

	;Timer Start
	clr		r2		
	add		r2,				0xb		;Predict | 32bit mode | IRQ Ena | Counter 0 Enable
	sriosr	r1
	start_utim64 r1, r2
	clr		r8

check2_wait:
	cmp		r8,				4
	br		check2_wait,	#neq

	;Stop Counter
	sriosr	r1
	stop_utim64 r1
	br		check2_ok,		#al		;IF not error came here

check2_hdl:							;IF not error came here
	;UTIM64FLAG Register Load
	sriosr	r1
	read_flag_utim64 r1
	cmp		r0,				1
	br		error, 			#neq	;ERROR
	inc		r8,				r8

check2_ok:
	nop

;********************************************
;Finish
;********************************************
test_end:	
	br		finish, #al
