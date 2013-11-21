

;********************************************
;Instruction Section
;********************************************
	.align 2
	.text
	
.macro get_time_defference begin_hi, begin_lo, end_hi, end_lo, result_hi, result_lo
	move	\result_lo, \end_lo
	sub		\result_lo, \begin_lo
	clr		\result_hi
.endm


.macro check_predictor time_hi, time_lo, expect_time, result
	clr		\result
	add		\result,	1				;1 is Predictor OK!
	cmp		\time_lo, \expect_time
	br		predict_ok, #ueu
	clr		\result
predict_ok:
	move	r0, r0					;Dumy
.endm




;r0~r7 : parameter register

.macro get_branch_latency
	clr		r6
	clr		r7
	;Begin time
	srfrcr
	srfrchr	r0
	srfrclr	r1
	cmp		r7, 0
	br		lat0, #eq
lat0:
	;End time
	srfrcr
	srfrchr	r2
	srfrclr	r3
	get_time_defference r0, r1, r2, r3, r4, r5
	add		r6, r5
	;Begin time
	srfrcr
	srfrchr	r0
	srfrclr	r1
	cmp		r7, 0
	br		lat1, #eq
lat1:
	;End time
	srfrcr
	srfrchr	r2
	srfrclr	r3
	get_time_defference r0, r1, r2, r3, r4, r5
	add		r6, r5
	;Begin time
	srfrcr
	srfrchr	r0
	srfrclr	r1
	cmp		r7, 0
	br		lat2, #eq
lat2:
	;End time
	srfrcr
	srfrchr	r2
	srfrclr	r3
	get_time_defference r0, r1, r2, r3, r4, r5
	add		r6, r5
	;Begin time
	srfrcr
	srfrchr	r0
	srfrclr	r1
	cmp		r7, 0
	br		lat3, #eq
lat3:
	;End time
	srfrcr
	srfrchr	r2
	srfrclr	r3
	get_time_defference r0, r1, r2, r3, r4, r5
	add		r6, r5
lat_average:
	shr		r6, 2
	move	r0, r6
.endm



.macro check_branch_predictor cnt, sleshold
	.align 2
	
	;initial
	clr		r8
	wl16	r8, \cnt
	clr		r0
	clr		r1
	
	;Loop
lp0:
	;End time
	srfrcr
	srfrchr	r2
	srfrclr	r3
	
	;Check
	get_time_defference r0, r1, r2, r3, r4, r5

	;check_predictor r4, r5, \sleshold, r0
	move r0, r5


	;Print
	movepc	rret, 8
	br		mem_print, #al
	
	;Begin time
	srfrcr
	srfrchr	r0
	srfrclr	r1
	;Compare
	sub		r8, 1
	br		lp0, #ueo		
.endm


	
target:
	;***********************************
	;Initial
	;***********************************	
	get_branch_latency
	add		r0, 2			;Plus sometime latency
	move 	r11, r0
	
	;***********************************
	;Branch Predictor
	;***********************************
	check_branch_predictor 32, r11
	
;********************************************
;Finish
;********************************************
	br		finish, #al
