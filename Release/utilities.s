	.file	"utilities.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.section .text$uint8_to_uint32
	.type	.text$uint8_to_uint32$scode_local_1, @function
	.text$uint8_to_uint32$scode_local_1:
	.align	1
	.export	uint8_to_uint32
	.type	uint8_to_uint32, @function
uint8_to_uint32:
.LFB0:
.LM1:
	.cfi_startproc
.LVL0:
	PUSH	r6
	.cfi_def_cfa_offset 4
	SUB	sp,#4
	.cfi_def_cfa_offset 8
	ZXT.b	r1,r1
.LM2:
	MOV	r5,#0
	ST.w	[sp],r5
.LVL1:
.LM3:
	CMP	r1,#4
	JHI	.L2
.LM4:
	SUB	r4,r1,#1
	ZXT.b	r4,r4
.LVL2:
	CMP	r1,r5
	JZ	.L2
.LM5:
	ADD	r4,r4,#1
.LVL3:
	ADD	r4,sp
.LVL4:
	MOV	r6,sp
.LVL5:
.L3:
.LM6:
	LD.b	r5,[r0++]
	ST.b	[r6++],r5
.LVL6:
.LM7:
	CMP	r6,r4
	JNZ	.L3
	LD.w	r5,[sp]
.LVL7:
.L2:
.LM8:
	MOV	r0,r5
	ADD	sp,#4
	.cfi_def_cfa_offset 4
	POP	r6
	.cfi_def_cfa_offset 0
	JMP	lr
	.cfi_endproc
.LFE0:
	.size	uint8_to_uint32, .-uint8_to_uint32
	.section .text$CalChecksum
	.type	.text$CalChecksum$scode_local_2, @function
	.text$CalChecksum$scode_local_2:
	.align	1
	.export	CalChecksum
	.type	CalChecksum, @function
CalChecksum:
.LFB1:
.LM9:
	.cfi_startproc
.LVL8:
	MOV	r5,r0
.LVL9:
.LM10:
	ADD	r1,r0,r1
.LVL10:
.LM11:
	MOV	r0,#0
.LVL11:
	CMP	r1,r5
	JLS	.L9
.LVL12:
.L10:
.LM12:
	LD.b	r4,[r5++]
.LVL13:
	ADD	r0,r0,r4
.LVL14:
.LM13:
	CMP	r5,r1
	JNZ	.L10
.LVL15:
.L9:
.LM14:
	JMP	lr
	.cfi_endproc
.LFE1:
	.size	CalChecksum, .-CalChecksum
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_3, @function
	.debug_info$scode_local_3:
.Ldebug_info0:
	.long	0x13b
	.short	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF16
	.byte	0x1
	.long	.LASF17
	.long	.LASF18
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
	.byte	0x1a
	.long	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF9
	.uleb128 0x5
	.byte	0x1
	.long	.LASF12
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.long	0x5e
	.long	.LFB0
	.long	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xd6
	.uleb128 0x6
	.long	.LASF10
	.byte	0x1
	.byte	0x3
	.long	0xd6
	.long	.LLST0
	.uleb128 0x7
	.string	"len"
	.byte	0x1
	.byte	0x3
	.long	0x45
	.long	.LLST1
	.uleb128 0x8
	.string	"ret"
	.byte	0x1
	.byte	0x5
	.long	0x5e
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x9
	.long	.LASF11
	.byte	0x1
	.byte	0x6
	.long	0xd6
	.long	.LLST2
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x45
	.uleb128 0x5
	.byte	0x1
	.long	.LASF13
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.long	0x5e
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x133
	.uleb128 0x6
	.long	.LASF10
	.byte	0x1
	.byte	0x19
	.long	0x133
	.long	.LLST3
	.uleb128 0x6
	.long	.LASF14
	.byte	0x1
	.byte	0x19
	.long	0x5e
	.long	.LLST4
	.uleb128 0xb
	.string	"sum"
	.byte	0x1
	.byte	0x1b
	.long	0x5e
	.long	.LLST5
	.uleb128 0xc
	.long	.LASF15
	.byte	0x1
	.byte	0x1c
	.long	0x133
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x139
	.uleb128 0xd
	.long	0x45
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x6
	.uleb128 0x5
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section .debug_loc
	.type	.debug_loc$scode_local_5, @function
	.debug_loc$scode_local_5:
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL5
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL2
	.short	0x1
	.byte	0x51
	.long	.LVL2
	.long	.LVL3
	.short	0x1
	.byte	0x54
	.long	.LVL3
	.long	.LVL4
	.short	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.long	.LVL4
	.long	.LVL5
	.short	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL1
	.long	.LVL5
	.short	0x1
	.byte	0x5e
	.long	.LVL5
	.long	.LVL7
	.short	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST3:
	.long	.LVL8
	.long	.LVL11
	.short	0x1
	.byte	0x50
	.long	.LVL11
	.long	.LVL13
	.short	0x1
	.byte	0x55
	.long	.LVL13
	.long	.LVL14
	.short	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.long	.LVL14
	.long	.LFE1
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
.LLST4:
	.long	.LVL8
	.long	.LVL10
	.short	0x1
	.byte	0x51
	.long	.LVL10
	.long	.LFE1
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL9
	.long	.LVL12
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL14
	.long	.LVL15
	.short	0x1
	.byte	0x50
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
	.long	.LFB0
	.long	.LFE0-.LFB0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	0
	.long	0
	.section .debug_ranges
	.type	.debug_ranges$scode_local_7, @function
	.debug_ranges$scode_local_7:
.Ldebug_ranges0:
	.long	.LFB0
	.long	.LFE0
	.long	.LFB1
	.long	.LFE1
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
	.ascii	".."
	.byte	0
	.ascii	"D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys"
	.byte	0
	.byte	0
	.string	"utilities.c"
	.uleb128 0x1
	.uleb128 0
	.uleb128 0
	.string	"stdint.h"
	.uleb128 0x2
	.uleb128 0
	.uleb128 0
	.byte	0
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM1
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM2
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM3
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM4
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM5
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM6
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM7
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM8
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE0
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM9
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM10
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM11
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM12
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM14
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE1
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section .debug_str
	.type	.debug_str$scode_local_9, @function
	.debug_str$scode_local_9:
.LASF15:
	.string	"dataEnd"
.LASF10:
	.string	"data"
.LASF3:
	.string	"unsigned char"
.LASF1:
	.string	"short unsigned int"
.LASF17:
	.string	"../utilities.c"
.LASF18:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\KF32F330_EVAL\\\\Release"
.LASF12:
	.string	"uint8_to_uint32"
.LASF11:
	.string	"p_data"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF5:
	.string	"uint8_t"
.LASF13:
	.string	"CalChecksum"
.LASF7:
	.string	"long long int"
.LASF9:
	.string	"char"
.LASF16:
	.string	"GNU C 4.7.0"
.LASF4:
	.string	"short int"
.LASF6:
	.string	"uint32_t"
.LASF2:
	.string	"signed char"
.LASF14:
	.string	"size"
	.ident	"GCC: (GNU) 4.7.0-Dec 25 2025-16:17:10"
