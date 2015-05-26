

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
	
target:
	;***********************************
	;Initial - Clear IDT
	;***********************************	
	clr_idt


;********************************************
;Check - 0
;********************************************
	;Set IDT
	clr		r0
	wl16	r0,				408		;offset is Interrupt Num = 51 * 8
	idt_section_write hi(idt_label), lo(idt_label), r0, hi(test0), lo(test0), hi(3), lo(3) 

	;IDT Enable
	idt_enable

	;Check
	clr		r0
	clr		r1
	div		r0,				r1
	br		0,				#al
	
test0:
	nop

;********************************************
;Check - 1
;********************************************
	;Set IDT
	clr		r0
	wl16	r0,				408		;offset is Interrupt Num = 51 * 8
	idt_section_write hi(idt_label), lo(idt_label), r0, hi(test1_irq), lo(test1_irq), hi(3), lo(3) 

	;IDT Enable
	idt_enable

	;Check
	clr		r0
	clr		r1
	div		r0,				r1
	br		test1_return,	#al

test1_irq:
	nop
	ib
	br		0,				#al


test1_return:
	nop

;********************************************
;Finish
;********************************************
test_end:	
	br		finish, #al
