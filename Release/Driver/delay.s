	.file	"delay.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.section .text$delay_us
	.type	.text$delay_us$scode_local_1, @function
	.text$delay_us$scode_local_1:
	.align	1
	.export	delay_us
	.type	delay_us, @function
delay_us:
.LFB1:
.LM1:
	.cfi_startproc
.LVL0:
	SUB	sp,#4
	.cfi_def_cfa_offset 4
	ST.w	[sp],r0
.LM2:
	LD.w	r5,[sp]
.LVL1:
.LBB4:
.LBB5:
.LM3:
	LD	r4,#fac_us
	LD.b	r4,[r4]
	MULS	r5,r4,r5 ;
	NOP
.LVL2:
	LD	r2,#1075839136
	ST.w	[r2+#1],r5
.LM4:
	MOV	r5,#0
	ST.w	[r2+#2],r5
.LM5:
	LD.w	r5,[r2]
	SET	r5,#0
	ST.w	[r2],r5
.LM6:
	LD	r3,#65537
.L2:
.LM7:
	LD	r4,#1075839136
	LD.w	r5,[r2]
.LVL3:
.LM8:
	ANL	r5,r5,r3
.LVL4:
	CMP	r5,#1
	JZ	.L2
.LM9:
	LD.w	r5,[r4]
	CLR	r5,#0
	ST.w	[r4],r5
.LM10:
	MOV	r5,#0
	ST.w	[r4+#2],r5
.LBE5:
.LBE4:
.LM11:
	ADD	sp,#4
	.cfi_def_cfa_offset 0
	JMP	lr
	.cfi_endproc
.LFE1:
	.size	delay_us, .-delay_us
	.section .text$delay_ms
	.type	.text$delay_ms$scode_local_2, @function
	.text$delay_ms$scode_local_2:
	.align	1
	.export	delay_ms
	.type	delay_ms, @function
delay_ms:
.LFB2:
.LM12:
	.cfi_startproc
.LVL5:
	PUSH	{r6, r7, lr}
	.cfi_def_cfa_offset 12
	SUB	sp,#4
	.cfi_def_cfa_offset 16
	ST.w	[sp],r0
.LM13:
	LD.w	r7,[sp]
.LVL6:
.LBB8:
.LBB9:
.LM14:
	LJMP	systick_tick_get
.LVL7:
	MOV	r6,r0
.LVL8:
.L9:
.LM15:
	LJMP	systick_tick_get
.LVL9:
	SUB	r0,r0,r6
	CMP	r7,r0
	JHI	.L9
.LBE9:
.LBE8:
.LM16:
	ADD	sp,#4
	.cfi_def_cfa_offset 12
	POP	{r6, r7}
	.cfi_def_cfa_offset 4
.LVL10:
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
	.cfi_endproc
.LFE2:
	.size	delay_ms, .-delay_ms
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_3, @function
	.debug_info$scode_local_3:
.Ldebug_info0:
	.long	0x1e5
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
	.long	.LASF15
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.byte	0x1
	.long	0x106
	.uleb128 0xb
	.string	"nus"
	.byte	0x1
	.byte	0x43
	.long	0x30
	.uleb128 0xc
	.long	.LASF17
	.byte	0x1
	.byte	0x45
	.long	0x69
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF19
	.byte	0x1
	.byte	0xb
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x158
	.uleb128 0xe
	.string	"nus"
	.byte	0x1
	.byte	0xb
	.long	0x89
	.byte	0x1
	.byte	0x50
	.uleb128 0xf
	.long	0xe2
	.long	.LBB4
	.long	.LBE4
	.byte	0x1
	.byte	0xd
	.uleb128 0x10
	.long	0xef
	.long	.LLST0
	.uleb128 0x11
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x12
	.long	0xfa
	.long	.LLST1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	.LASF16
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.byte	0x1
	.long	0x17c
	.uleb128 0xb
	.string	"nms"
	.byte	0x1
	.byte	0x1d
	.long	0x89
	.uleb128 0xc
	.long	.LASF18
	.byte	0x1
	.byte	0x1f
	.long	0x69
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF20
	.byte	0x1
	.byte	0x10
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1ce
	.uleb128 0x14
	.string	"nms"
	.byte	0x1
	.byte	0x10
	.long	0x89
	.long	.LLST2
	.uleb128 0xf
	.long	0x158
	.long	.LBB8
	.long	.LBE8
	.byte	0x1
	.byte	0x12
	.uleb128 0x10
	.long	0x165
	.long	.LLST3
	.uleb128 0x11
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x15
	.long	0x170
	.byte	0x1
	.byte	0x56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LASF21
	.byte	0x4
	.byte	0x7
	.long	0x45
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.long	.LASF22
	.byte	0x4
	.byte	0x8
	.long	0x5e
	.byte	0x1
	.byte	0x1
	.byte	0
	.section .debug_abbrev
	.type	.debug_abbrev$scode_local_4, @function
	.debug_abbrev$scode_local_4:
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
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.type	.debug_loc$scode_local_5, @function
	.debug_loc$scode_local_5:
.Ldebug_loc0:
.LLST0:
	.long	.LVL1
	.long	.LVL2
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
.LLST1:
	.long	.LVL3
	.long	.LVL4
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
.LLST2:
	.long	.LVL5
	.long	.LVL7-1
	.short	0x1
	.byte	0x50
	.long	.LVL7-1
	.long	.LFE2
	.short	0x2
	.byte	0x91
	.sleb128 -16
	.long	0
	.long	0
.LLST3:
	.long	.LVL6
	.long	.LVL10
	.short	0x1
	.byte	0x57
	.long	0
	.long	0
	.section .debug_aranges
	.type	.debug_aranges$scode_local_6, @function
	.debug_aranges$scode_local_6:
	.long	0x24
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
	.long	0
	.long	0
	.section .debug_ranges
	.type	.debug_ranges$scode_local_7, @function
	.debug_ranges$scode_local_7:
.Ldebug_ranges0:
	.long	.LFB1
	.long	.LFE1
	.long	.LFB2
	.long	.LFE2
	.long	0
	.long	0
	.section .debug_line
	.type	.debug_line$scode_local_8, @function
	.debug_line$scode_local_8:
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
	.ascii	"../Driver"
	.byte	0
	.ascii	"D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys"
	.byte	0
	.ascii	"E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\BSP"
	.byte	0
	.ascii	"E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripher"
	.ascii	"als\\inc"
	.byte	0
	.byte	0
	.string	"delay.c"
	.uleb128 0x1
	.uleb128 0
	.uleb128 0
	.string	"stdint.h"
	.uleb128 0x2
	.uleb128 0
	.uleb128 0
	.string	"KF32F_BASIC.h"
	.uleb128 0x4
	.uleb128 0
	.uleb128 0
	.string	"bsp_systick.h"
	.uleb128 0x3
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
	.byte	0x50
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM4
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM5
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM6
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM7
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM9
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM10
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM11
	.byte	0x3
	.sleb128 -64
	.byte	0x1
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
	.long	.LM12
	.byte	0x27
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM14
	.byte	0x24
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM15
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM16
	.byte	0x3
	.sleb128 -14
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE2
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section .debug_str
	.type	.debug_str$scode_local_9, @function
	.debug_str$scode_local_9:
.LASF18:
	.string	"start_tick"
.LASF16:
	.string	"delay_ms_timer"
.LASF3:
	.string	"unsigned char"
.LASF20:
	.string	"delay_ms"
.LASF14:
	.string	"SYSTICK_SFRmap"
.LASF17:
	.string	"temp"
.LASF1:
	.string	"short unsigned int"
.LASF22:
	.string	"fac_ms"
.LASF24:
	.string	"../Driver/delay.c"
.LASF25:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\KF32F330_EVAL\\\\Release"
.LASF19:
	.string	"delay_us"
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
.LASF15:
	.string	"delay_us_systick"
.LASF11:
	.string	"sizetype"
.LASF8:
	.string	"long long int"
.LASF10:
	.string	"char"
.LASF23:
	.string	"GNU C 4.7.0"
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
