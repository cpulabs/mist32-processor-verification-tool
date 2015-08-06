;********************************************
;Data Section
;********************************************
	.data
	.align 2
;***********************************
;O2 Format
;***********************************

;Source0
T_SRC0_0		:		.long 0
T_SRC0_1		:		.long 0
T_SRC0_2		:		.long 0
T_SRC0_3		:		.long 0
T_SRC0_4		:		.long 0
T_SRC0_5		:		.long 0
T_SRC0_6		:		.long 1
T_SRC0_7		:		.long 1
T_SRC0_8		:		.long 1
T_SRC0_9		:		.long 1
T_SRC0_10		:		.long 1
T_SRC0_11		:		.long 1
T_SRC0_12		:		.long 2
T_SRC0_13		:		.long 2
T_SRC0_14		:		.long 2
T_SRC0_15		:		.long 2
T_SRC0_16		:		.long 2
T_SRC0_17		:		.long 2
T_SRC0_18		:		.long 4
T_SRC0_19		:		.long 4
T_SRC0_20		:		.long 4
T_SRC0_21		:		.long 4
T_SRC0_22		:		.long 4
T_SRC0_23		:		.long 4
T_SRC0_24		:		.long 8
T_SRC0_25		:		.long 8
T_SRC0_26		:		.long 8
T_SRC0_27		:		.long 8
T_SRC0_28		:		.long 8
T_SRC0_29		:		.long 8
T_SRC0_30		:		.long 16
T_SRC0_31		:		.long 16
T_SRC0_32		:		.long 16
T_SRC0_33		:		.long 16
T_SRC0_34		:		.long 16
T_SRC0_35		:		.long 16
T_SRC0_36		:		.long 32
T_SRC0_37		:		.long 32
T_SRC0_38		:		.long 32
T_SRC0_39		:		.long 32
T_SRC0_40		:		.long 32
T_SRC0_41		:		.long 32
T_SRC0_42		:		.long 3
T_SRC0_43		:		.long 7
T_SRC0_44		:		.long 15
T_SRC0_45		:		.long 31
T_SRC0_46		:		.long 63

;Source1
T_SRC1_0		:		.long 1
T_SRC1_1		:		.long 2
T_SRC1_2		:		.long 4
T_SRC1_3		:		.long 8
T_SRC1_4		:		.long 16
T_SRC1_5		:		.long 32
T_SRC1_6		:		.long 1
T_SRC1_7		:		.long 2
T_SRC1_8		:		.long 4
T_SRC1_9		:		.long 8
T_SRC1_10		:		.long 16
T_SRC1_11		:		.long 32
T_SRC1_12		:		.long 1
T_SRC1_13		:		.long 2
T_SRC1_14		:		.long 4
T_SRC1_15		:		.long 8
T_SRC1_16		:		.long 16
T_SRC1_17		:		.long 32
T_SRC1_18		:		.long 1
T_SRC1_19		:		.long 2
T_SRC1_20		:		.long 4
T_SRC1_21		:		.long 8
T_SRC1_22		:		.long 16
T_SRC1_23		:		.long 32
T_SRC1_24		:		.long 1
T_SRC1_25		:		.long 2
T_SRC1_26		:		.long 4
T_SRC1_27		:		.long 8
T_SRC1_28		:		.long 16
T_SRC1_29		:		.long 32
T_SRC1_30		:		.long 1
T_SRC1_31		:		.long 2
T_SRC1_32		:		.long 4
T_SRC1_33		:		.long 8
T_SRC1_34		:		.long 16
T_SRC1_35		:		.long 32
T_SRC1_36		:		.long 1
T_SRC1_37		:		.long 2
T_SRC1_38		:		.long 4
T_SRC1_39		:		.long 8
T_SRC1_40		:		.long 16
T_SRC1_41		:		.long 32
T_SRC1_42		:		.long 3
T_SRC1_43		:		.long 7
T_SRC1_44		:		.long 15
T_SRC1_45		:		.long 31
T_SRC1_46		:		.long 63

;Expect
T_EXPECT0		:		.long 0
T_EXPECT1		:		.long 0
T_EXPECT2		:		.long 0
T_EXPECT3		:		.long 0
T_EXPECT4		:		.long 0
T_EXPECT5		:		.long 0
T_EXPECT6		:		.long 2
T_EXPECT7		:		.long 4
T_EXPECT8		:		.long 16
T_EXPECT9		:		.long 256
T_EXPECT10		:		.long 65536
T_EXPECT11		:		.long 0
T_EXPECT12		:		.long 4
T_EXPECT13		:		.long 8
T_EXPECT14		:		.long 32
T_EXPECT15		:		.long 512
T_EXPECT16		:		.long 131072
T_EXPECT17		:		.long 0
T_EXPECT18		:		.long 8
T_EXPECT19		:		.long 16
T_EXPECT20		:		.long 64
T_EXPECT21		:		.long 1024
T_EXPECT22		:		.long 262144
T_EXPECT23		:		.long 0
T_EXPECT24		:		.long 16
T_EXPECT25		:		.long 32
T_EXPECT26		:		.long 128
T_EXPECT27		:		.long 2048
T_EXPECT28		:		.long 524288
T_EXPECT29		:		.long 0
T_EXPECT30		:		.long 32
T_EXPECT31		:		.long 64
T_EXPECT32		:		.long 256
T_EXPECT33		:		.long 4096
T_EXPECT34		:		.long 1048576
T_EXPECT35		:		.long 0
T_EXPECT36		:		.long 64
T_EXPECT37		:		.long 128
T_EXPECT38		:		.long 512
T_EXPECT39		:		.long 8192
T_EXPECT40		:		.long 2097152
T_EXPECT41		:		.long 0
T_EXPECT42		:		.long 24
T_EXPECT43		:		.long 896
T_EXPECT44		:		.long 491520
T_EXPECT45		:		.long 2147483648
T_EXPECT46		:		.long 0

;***********************************
;I11 Format
;***********************************
;Destination
T_IMM_DST0		:		.long 0
T_IMM_DST1		:		.long 0
T_IMM_DST2		:		.long 0
T_IMM_DST3		:		.long 0
T_IMM_DST4		:		.long 0
T_IMM_DST5		:		.long 0
T_IMM_DST6		:		.long 1
T_IMM_DST7		:		.long 1
T_IMM_DST8		:		.long 1
T_IMM_DST9		:		.long 1
T_IMM_DST10		:		.long 1
T_IMM_DST11		:		.long 1
T_IMM_DST12		:		.long 2
T_IMM_DST13		:		.long 2
T_IMM_DST14		:		.long 2
T_IMM_DST15		:		.long 2
T_IMM_DST16		:		.long 2
T_IMM_DST17		:		.long 2
T_IMM_DST18		:		.long 4
T_IMM_DST19		:		.long 4
T_IMM_DST20		:		.long 4
T_IMM_DST21		:		.long 4
T_IMM_DST22		:		.long 4
T_IMM_DST23		:		.long 4
T_IMM_DST24		:		.long 8
T_IMM_DST25		:		.long 8
T_IMM_DST26		:		.long 8
T_IMM_DST27		:		.long 8
T_IMM_DST28		:		.long 8
T_IMM_DST29		:		.long 8
T_IMM_DST30		:		.long 16
T_IMM_DST31		:		.long 16
T_IMM_DST32		:		.long 16
T_IMM_DST33		:		.long 16
T_IMM_DST34		:		.long 16
T_IMM_DST35		:		.long 16
T_IMM_DST36		:		.long 32
T_IMM_DST37		:		.long 32
T_IMM_DST38		:		.long 32
T_IMM_DST39		:		.long 32
T_IMM_DST40		:		.long 32
T_IMM_DST41		:		.long 32
T_IMM_DST42		:		.long 3
T_IMM_DST43		:		.long 7
T_IMM_DST44		:		.long 15
T_IMM_DST45		:		.long 31
T_IMM_DST46		:		.long 63

;Expect
T_IMM_EXPECT0		:		.long 0
T_IMM_EXPECT1		:		.long 0
T_IMM_EXPECT2		:		.long 0
T_IMM_EXPECT3		:		.long 0
T_IMM_EXPECT4		:		.long 0
T_IMM_EXPECT5		:		.long 0
T_IMM_EXPECT6		:		.long 2
T_IMM_EXPECT7		:		.long 4
T_IMM_EXPECT8		:		.long 16
T_IMM_EXPECT9		:		.long 256
T_IMM_EXPECT10		:		.long 65536
T_IMM_EXPECT11		:		.long 0
T_IMM_EXPECT12		:		.long 4
T_IMM_EXPECT13		:		.long 8
T_IMM_EXPECT14		:		.long 32
T_IMM_EXPECT15		:		.long 512
T_IMM_EXPECT16		:		.long 131072
T_IMM_EXPECT17		:		.long 0
T_IMM_EXPECT18		:		.long 8
T_IMM_EXPECT19		:		.long 16
T_IMM_EXPECT20		:		.long 64
T_IMM_EXPECT21		:		.long 1024
T_IMM_EXPECT22		:		.long 262144
T_IMM_EXPECT23		:		.long 0
T_IMM_EXPECT24		:		.long 16
T_IMM_EXPECT25		:		.long 32
T_IMM_EXPECT26		:		.long 128
T_IMM_EXPECT27		:		.long 2048
T_IMM_EXPECT28		:		.long 524288
T_IMM_EXPECT29		:		.long 0
T_IMM_EXPECT30		:		.long 32
T_IMM_EXPECT31		:		.long 64
T_IMM_EXPECT32		:		.long 256
T_IMM_EXPECT33		:		.long 4096
T_IMM_EXPECT34		:		.long 1048576
T_IMM_EXPECT35		:		.long 0
T_IMM_EXPECT36		:		.long 64
T_IMM_EXPECT37		:		.long 128
T_IMM_EXPECT38		:		.long 512
T_IMM_EXPECT39		:		.long 8192
T_IMM_EXPECT40		:		.long 2097152
T_IMM_EXPECT41		:		.long 0
T_IMM_EXPECT42		:		.long 24
T_IMM_EXPECT43		:		.long 896
T_IMM_EXPECT44		:		.long 491520
T_IMM_EXPECT45		:		.long 2147483648
T_IMM_EXPECT46		:		.long 0

;********************************************
;Instruction Section(Macro)
;********************************************
	.align 2
	.text
check:
	;***********************************
	;Initial
	;***********************************
	xor		r2, r2
	xor		r3, r3
	;***********************************
	;Check - O2
	;***********************************
	check_o2_format T_SRC0_0, T_SRC1_0, T_EXPECT0
	check_o2_format T_SRC0_1, T_SRC1_1, T_EXPECT1
	check_o2_format T_SRC0_2, T_SRC1_2, T_EXPECT2
	check_o2_format T_SRC0_3, T_SRC1_3, T_EXPECT3
	check_o2_format T_SRC0_4, T_SRC1_4, T_EXPECT4
	check_o2_format T_SRC0_5, T_SRC1_5, T_EXPECT5
	check_o2_format T_SRC0_6, T_SRC1_6, T_EXPECT6
	check_o2_format T_SRC0_7, T_SRC1_7, T_EXPECT7
	check_o2_format T_SRC0_8, T_SRC1_8, T_EXPECT8
	check_o2_format T_SRC0_9, T_SRC1_9, T_EXPECT9
	check_o2_format T_SRC0_10, T_SRC1_10, T_EXPECT10
	check_o2_format T_SRC0_11, T_SRC1_11, T_EXPECT11
	check_o2_format T_SRC0_12, T_SRC1_12, T_EXPECT12
	check_o2_format T_SRC0_13, T_SRC1_13, T_EXPECT13
	check_o2_format T_SRC0_14, T_SRC1_14, T_EXPECT14
	check_o2_format T_SRC0_15, T_SRC1_15, T_EXPECT15
	check_o2_format T_SRC0_16, T_SRC1_16, T_EXPECT16
	check_o2_format T_SRC0_17, T_SRC1_17, T_EXPECT17
	check_o2_format T_SRC0_18, T_SRC1_18, T_EXPECT18
	check_o2_format T_SRC0_19, T_SRC1_19, T_EXPECT19
	check_o2_format T_SRC0_20, T_SRC1_20, T_EXPECT20
	check_o2_format T_SRC0_21, T_SRC1_21, T_EXPECT21
	check_o2_format T_SRC0_22, T_SRC1_22, T_EXPECT22
	check_o2_format T_SRC0_23, T_SRC1_23, T_EXPECT23
	check_o2_format T_SRC0_24, T_SRC1_24, T_EXPECT24
	check_o2_format T_SRC0_25, T_SRC1_25, T_EXPECT25
	check_o2_format T_SRC0_26, T_SRC1_26, T_EXPECT26
	check_o2_format T_SRC0_27, T_SRC1_27, T_EXPECT27
	check_o2_format T_SRC0_28, T_SRC1_28, T_EXPECT28
	check_o2_format T_SRC0_29, T_SRC1_29, T_EXPECT29
	check_o2_format T_SRC0_30, T_SRC1_30, T_EXPECT30
	check_o2_format T_SRC0_31, T_SRC1_31, T_EXPECT31
	check_o2_format T_SRC0_32, T_SRC1_32, T_EXPECT32
	check_o2_format T_SRC0_33, T_SRC1_33, T_EXPECT33
	check_o2_format T_SRC0_34, T_SRC1_34, T_EXPECT34
	check_o2_format T_SRC0_35, T_SRC1_35, T_EXPECT35
	check_o2_format T_SRC0_36, T_SRC1_36, T_EXPECT36
	check_o2_format T_SRC0_37, T_SRC1_37, T_EXPECT37
	check_o2_format T_SRC0_38, T_SRC1_38, T_EXPECT38
	check_o2_format T_SRC0_39, T_SRC1_39, T_EXPECT39
	check_o2_format T_SRC0_40, T_SRC1_40, T_EXPECT40
	check_o2_format T_SRC0_41, T_SRC1_41, T_EXPECT41
	check_o2_format T_SRC0_42, T_SRC1_42, T_EXPECT42
	check_o2_format T_SRC0_43, T_SRC1_43, T_EXPECT43
	check_o2_format T_SRC0_44, T_SRC1_44, T_EXPECT44
	check_o2_format T_SRC0_45, T_SRC1_45, T_EXPECT45
	check_o2_format T_SRC0_46, T_SRC1_46, T_EXPECT46

	;***********************************
	;Check - I11
	;***********************************
	xor		r2, r2
	add		r3, 1
	check_imm11_format T_IMM_DST0, 1, T_IMM_EXPECT0
	check_imm11_format T_IMM_DST1, 2, T_IMM_EXPECT1
	check_imm11_format T_IMM_DST2, 4, T_IMM_EXPECT2
	check_imm11_format T_IMM_DST3, 8, T_IMM_EXPECT3
	check_imm11_format T_IMM_DST4, 16, T_IMM_EXPECT4
	check_imm11_format T_IMM_DST5, 32, T_IMM_EXPECT5
	check_imm11_format T_IMM_DST6, 1, T_IMM_EXPECT6
	check_imm11_format T_IMM_DST7, 2, T_IMM_EXPECT7
	check_imm11_format T_IMM_DST8, 4, T_IMM_EXPECT8
	check_imm11_format T_IMM_DST9, 8, T_IMM_EXPECT9
	check_imm11_format T_IMM_DST10, 16, T_IMM_EXPECT10
	check_imm11_format T_IMM_DST11, 32, T_IMM_EXPECT11
	check_imm11_format T_IMM_DST12, 1, T_IMM_EXPECT12
	check_imm11_format T_IMM_DST13, 2, T_IMM_EXPECT13
	check_imm11_format T_IMM_DST14, 4, T_IMM_EXPECT14
	check_imm11_format T_IMM_DST15, 8, T_IMM_EXPECT15
	check_imm11_format T_IMM_DST16, 16, T_IMM_EXPECT16
	check_imm11_format T_IMM_DST17, 32, T_IMM_EXPECT17
	check_imm11_format T_IMM_DST18, 1, T_IMM_EXPECT18
	check_imm11_format T_IMM_DST19, 2, T_IMM_EXPECT19
	check_imm11_format T_IMM_DST20, 4, T_IMM_EXPECT20
	check_imm11_format T_IMM_DST21, 8, T_IMM_EXPECT21
	check_imm11_format T_IMM_DST22, 16, T_IMM_EXPECT22
	check_imm11_format T_IMM_DST23, 32, T_IMM_EXPECT23
	check_imm11_format T_IMM_DST24, 1, T_IMM_EXPECT24
	check_imm11_format T_IMM_DST25, 2, T_IMM_EXPECT25
	check_imm11_format T_IMM_DST26, 4, T_IMM_EXPECT26
	check_imm11_format T_IMM_DST27, 8, T_IMM_EXPECT27
	check_imm11_format T_IMM_DST28, 16, T_IMM_EXPECT28
	check_imm11_format T_IMM_DST29, 32, T_IMM_EXPECT29
	check_imm11_format T_IMM_DST30, 1, T_IMM_EXPECT30
	check_imm11_format T_IMM_DST31, 2, T_IMM_EXPECT31
	check_imm11_format T_IMM_DST32, 4, T_IMM_EXPECT32
	check_imm11_format T_IMM_DST33, 8, T_IMM_EXPECT33
	check_imm11_format T_IMM_DST34, 16, T_IMM_EXPECT34
	check_imm11_format T_IMM_DST35, 32, T_IMM_EXPECT35
	check_imm11_format T_IMM_DST36, 1, T_IMM_EXPECT36
	check_imm11_format T_IMM_DST37, 2, T_IMM_EXPECT37
	check_imm11_format T_IMM_DST38, 4, T_IMM_EXPECT38
	check_imm11_format T_IMM_DST39, 8, T_IMM_EXPECT39
	check_imm11_format T_IMM_DST40, 16, T_IMM_EXPECT40
	check_imm11_format T_IMM_DST41, 32, T_IMM_EXPECT41
	check_imm11_format T_IMM_DST42, 3, T_IMM_EXPECT42
	check_imm11_format T_IMM_DST43, 7, T_IMM_EXPECT43
	check_imm11_format T_IMM_DST44, 15, T_IMM_EXPECT44
	check_imm11_format T_IMM_DST45, 31, T_IMM_EXPECT45
	check_imm11_format T_IMM_DST46, 63, T_IMM_EXPECT46
;********************************************
;Finish
;********************************************
	br		finish, #al
