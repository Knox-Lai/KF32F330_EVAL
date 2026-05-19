	.file	"bsp_delay.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.section .text$delay_ms_timer
	.type	.text$delay_ms_timer$scode_local_1, @function
	.text$delay_ms_timer$scode_local_1:
	.align	1
	.export	delay_ms_timer
	.type	delay_ms_timer, @function
delay_ms_timer:
.LFB1:
.LM1:
	.cfi_startproc
.LVL0:
	PUSH	{r6, lr}
	.cfi_def_cfa_offset 8
	SUB	sp,#4
	.cfi_def_cfa_offset 12
	ST.w	[sp],r0
.LM2:
	LJMP	systick_tick_get
.LVL1:
	MOV	r6,r0
.LVL2:
.L2:
.LM3:
	LJMP	systick_tick_get
.LVL3:
	LD.w	r5,[sp]
	SUB	r0,r0,r6
	CMP	r5,r0
	JHI	.L2
.LM4:
	ADD	sp,#4
	.cfi_def_cfa_offset 8
	POP	r6
	.cfi_def_cfa_offset 4
.LVL4:
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
	.cfi_endproc
.LFE1:
	.size	delay_ms_timer, .-delay_ms_timer
	.section .text$delay_ms_for
	.type	.text$delay_ms_for$scode_local_2, @function
	.text$delay_ms_for$scode_local_2:
	.align	1
	.export	delay_ms_for
	.type	delay_ms_for, @function
delay_ms_for:
.LFB2:
.LM5:
	.cfi_startproc
.LVL5:
	SUB	sp,#12
	.cfi_def_cfa_offset 12
	ST.w	[sp+#2],r0
.LM6:
	MOV	r5,#0
	ST.w	[sp+#1],r5
.LVL6:
	LD.w	r5,[sp+#1]
	LD.w	r4,[sp+#2]
	CMP	r4,r5
	JLS	.L5
.LM7:
	LD	r3,#6050
.LVL7:
.L9:
	ST.w	[sp],r3
.L7:
.LM8:
	LD.w	r5,[sp]
	SUB	r4,r5,#1
.LVL8:
	ST.w	[sp],r4
.LVL9:
	CMP	r5,#0
	JNZ	.L7
.LM9:
	LD.w	r5,[sp+#1]
	ADD	r5,r5,#1
.LVL10:
	ST.w	[sp+#1],r5
.LVL11:
	LD.w	r5,[sp+#1]
.LVL12:
	LD.w	r4,[sp+#2]
	CMP	r4,r5
	JHI	.L9
.L5:
.LM10:
	ADD	sp,#12
	.cfi_def_cfa_offset 0
	JMP	lr
	.cfi_endproc
.LFE2:
	.size	delay_ms_for, .-delay_ms_for
	.section .text$delay_us_systick
	.type	.text$delay_us_systick$scode_local_3, @function
	.text$delay_us_systick$scode_local_3:
	.align	1
	.export	delay_us_systick
	.type	delay_us_systick, @function
delay_us_systick:
.LFB3:
.LM11:
	.cfi_startproc
.LVL13:
.LM12:
	LD	r5,#fac_us
	LD.b	r5,[r5]
	MULS	r0,r0,r5 ;
	NOP
.LVL14:
	LD	r2,#1075839136
	ST.w	[r2+#1],r0
.LM13:
	MOV	r5,#0
	ST.w	[r2+#2],r5
.LM14:
	LD.w	r5,[r2]
	SET	r5,#0
	ST.w	[r2],r5
.LM15:
	LD	r3,#65537
.L13:
.LM16:
	LD	r4,#1075839136
	LD.w	r5,[r2]
.LVL15:
.LM17:
	ANL	r5,r5,r3
.LVL16:
	CMP	r5,#1
	JZ	.L13
.LM18:
	LD.w	r5,[r4]
	CLR	r5,#0
	ST.w	[r4],r5
.LM19:
	MOV	r5,#0
	ST.w	[r4+#2],r5
.LM20:
	JMP	lr
	.cfi_endproc
.LFE3:
	.size	delay_us_systick, .-delay_us_systick
	.section .text$delay_ms_systick
	.type	.text$delay_ms_systick$scode_local_4, @function
	.text$delay_ms_systick$scode_local_4:
	.align	1
	.export	delay_ms_systick
	.type	delay_ms_systick, @function
delay_ms_systick:
.LFB4:
.LM21:
	.cfi_startproc
.LVL17:
.LM22:
	LD	r5,#fac_ms
	LD.h	r5,[r5]
	MULS	r0,r0,r5 ;
	NOP
.LVL18:
	LD	r2,#1075839136
	ST.w	[r2+#1],r0
.LM23:
	MOV	r5,#0
	ST.w	[r2+#2],r5
.LM24:
	LD.w	r5,[r2]
	SET	r5,#0
	ST.w	[r2],r5
.LM25:
	LD	r3,#65537
.L19:
.LM26:
	LD	r4,#1075839136
	LD.w	r5,[r2]
.LVL19:
.LM27:
	ANL	r5,r5,r3
.LVL20:
	CMP	r5,#1
	JZ	.L19
.LM28:
	LD.w	r5,[r4]
	CLR	r5,#0
	ST.w	[r4],r5
.LM29:
	MOV	r5,#0
	ST.w	[r4+#2],r5
.LM30:
	JMP	lr
	.cfi_endproc
.LFE4:
	.size	delay_ms_systick, .-delay_ms_systick
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_5, @function
	.debug_info$scode_local_5:
.Ldebug_info0:
	.long	0x1de
	.short	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF23
	.byte	0x1
	.long	.LASF24
	.long	.LASF25
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x4
	.long	.LASF5
	.byte	0x2
	.byte	0x16
	.long	0x50
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF4
	.uleb128 0x4
	.long	.LASF6
	.byte	0x2
	.byte	0x18
	.long	0x37
	.uleb128 0x4
	.long	.LASF7
	.byte	0x2
	.byte	0x1a
	.long	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF10
	.uleb128 0x5
	.long	0x69
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x6
	.long	.LASF26
	.byte	0x10
	.byte	0x3
	.short	0x1269
	.long	0xd6
	.uleb128 0x7
	.string	"CTL"
	.byte	0x3
	.short	0x126a
	.long	0x89
	.byte	0
	.uleb128 0x8
	.long	.LASF12
	.byte	0x3
	.short	0x126b
	.long	0x89
	.byte	0x4
	.uleb128 0x7
	.string	"CV"
	.byte	0x3
	.short	0x126c
	.long	0x89
	.byte	0x8
	.uleb128 0x8
	.long	.LASF13
	.byte	0x3
	.short	0x126d
	.long	0x89
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.long	.LASF14
	.byte	0x3
	.short	0x126e
	.long	0x95
	.uleb128 0xa
	.byte	0x1
	.long	.LASF15
	.byte	0x1
	.byte	0xb
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x119
	.uleb128 0xb
	.string	"nms"
	.byte	0x1
	.byte	0xb
	.long	0x89
	.long	.LLST0
	.uleb128 0xc
	.long	.LASF17
	.byte	0x1
	.byte	0xd
	.long	0x69
	.long	.LLST1
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF16
	.byte	0x1
	.byte	0x1b
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x159
	.uleb128 0xe
	.string	"nms"
	.byte	0x1
	.byte	0x1b
	.long	0x89
	.byte	0x1
	.byte	0x50
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x1d
	.long	0x89
	.long	.LLST2
	.uleb128 0xf
	.string	"j"
	.byte	0x1
	.byte	0x1d
	.long	0x89
	.long	.LLST3
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF18
	.byte	0x1
	.byte	0x31
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x190
	.uleb128 0xb
	.string	"nus"
	.byte	0x1
	.byte	0x31
	.long	0x30
	.long	.LLST4
	.uleb128 0xc
	.long	.LASF19
	.byte	0x1
	.byte	0x33
	.long	0x69
	.long	.LLST5
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF20
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1c7
	.uleb128 0xb
	.string	"nms"
	.byte	0x1
	.byte	0x4a
	.long	0x30
	.long	.LLST6
	.uleb128 0xc
	.long	.LASF19
	.byte	0x1
	.byte	0x4c
	.long	0x69
	.long	.LLST7
	.byte	0
	.uleb128 0x10
	.long	.LASF21
	.byte	0x4
	.byte	0x7
	.long	0x45
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	.LASF22
	.byte	0x4
	.byte	0x8
	.long	0x5e
	.byte	0x1
	.byte	0x1
	.byte	0
	.section .debug_abbrev
	.type	.debug_abbrev$scode_local_6, @function
	.debug_abbrev$scode_local_6:
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section .debug_loc
	.type	.debug_loc$scode_local_7, @function
	.debug_loc$scode_local_7:
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1-1
	.short	0x1
	.byte	0x50
	.long	.LVL1-1
	.long	.LFE1
	.short	0x2
	.byte	0x91
	.sleb128 -12
	.long	0
	.long	0
.LLST1:
	.long	.LVL2
	.long	.LVL4
	.short	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST2:
	.long	.LVL6
	.long	.LVL10
	.short	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL11
	.long	.LVL12
	.short	0x1
	.byte	0x55
	.long	.LVL12
	.long	.LFE2
	.short	0x2
	.byte	0x91
	.sleb128 -8
	.long	0
	.long	0
.LLST3:
	.long	.LVL7
	.long	.LVL8
	.short	0x2
	.byte	0x91
	.sleb128 -12
	.long	.LVL9
	.long	.LFE2
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST4:
	.long	.LVL13
	.long	.LVL14
	.short	0x1
	.byte	0x50
	.long	.LVL14
	.long	.LFE3
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL15
	.long	.LVL16
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
.LLST6:
	.long	.LVL17
	.long	.LVL18
	.short	0x1
	.byte	0x50
	.long	.LVL18
	.long	.LFE4
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL19
	.long	.LVL20
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
	.section .debug_aranges
	.type	.debug_aranges$scode_local_8, @function
	.debug_aranges$scode_local_8:
	.long	0x34
	.short	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.short	0
	.short	0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	0
	.long	0
	.section .debug_ranges
	.type	.debug_ranges$scode_local_9, @function
	.debug_ranges$scode_local_9:
.Ldebug_ranges0:
	.long	.LFB1
	.long	.LFE1
	.long	.LFB2
	.long	.LFE2
	.long	.LFB3
	.long	.LFE3
	.long	.LFB4
	.long	.LFE4
	.long	0
	.long	0
	.section .debug_line
	.type	.debug_line$scode_local_10, @function
	.debug_line$scode_local_10:
.Ldebug_line0:
	.long	.LELT0-.LSLT0
.LSLT0:
	.short	0x3
	.long	.LELTP0-.LASLTP0
.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf2
	.byte	0xd
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1
	.ascii	"../BSP"
	.byte	0
	.ascii	"D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys"
	.byte	0
	.ascii	"E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripher"
	.ascii	"als\\inc"
	.byte	0
	.byte	0
	.string	"bsp_delay.c"
	.uleb128 0x1
	.uleb128 0
	.uleb128 0
	.string	"stdint.h"
	.uleb128 0x2
	.uleb128 0
	.uleb128 0
	.string	"KF32F_BASIC.h"
	.uleb128 0x3
	.uleb128 0
	.uleb128 0
	.string	"bsp_systick.h"
	.uleb128 0x1
	.uleb128 0
	.uleb128 0
	.byte	0
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM1
	.byte	0x22
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM2
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM4
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE1
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM5
	.byte	0x32
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM6
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM7
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM8
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM9
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM10
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE2
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM11
	.byte	0x48
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM12
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM14
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM15
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM16
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM17
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM18
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM19
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM20
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE3
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM21
	.byte	0x61
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM22
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM23
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM24
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM25
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM26
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM27
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM28
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM29
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM30
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE4
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section .debug_str
	.type	.debug_str$scode_local_11, @function
	.debug_str$scode_local_11:
.LASF16:
	.string	"delay_ms_for"
.LASF17:
	.string	"start_tick"
.LASF15:
	.string	"delay_ms_timer"
.LASF3:
	.string	"unsigned char"
.LASF24:
	.string	"../BSP/bsp_delay.c"
.LASF19:
	.string	"temp"
.LASF1:
	.string	"short unsigned int"
.LASF22:
	.string	"fac_ms"
.LASF14:
	.string	"SYSTICK_SFRmap"
.LASF25:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\KF32F330_EVAL\\\\Release"
.LASF26:
	.string	"SYSTICK_MemMap"
.LASF0:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF5:
	.string	"uint8_t"
.LASF21:
	.string	"fac_us"
.LASF18:
	.string	"delay_us_systick"
.LASF11:
	.string	"sizetype"
.LASF8:
	.string	"long long int"
.LASF10:
	.string	"char"
.LASF23:
	.string	"GNU C 4.7.0"
.LASF20:
	.string	"delay_ms_systick"
.LASF4:
	.string	"short int"
.LASF12:
	.string	"RELOAD"
.LASF6:
	.string	"uint16_t"
.LASF7:
	.string	"uint32_t"
.LASF13:
	.string	"CALI"
.LASF2:
	.string	"signed char"
	.ident	"GCC: (GNU) 4.7.0-Dec 25 2025-16:17:10"
