	.file	"error_code.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.section .text$ERRLIST_getFirst
	.type	.text$ERRLIST_getFirst$scode_local_1, @function
	.text$ERRLIST_getFirst$scode_local_1:
	.align	1
	.export	ERRLIST_getFirst
	.type	ERRLIST_getFirst, @function
ERRLIST_getFirst:
.LFB0:
.LM1:
	.cfi_startproc
.LM2:
	LD	r5,#eList
	LD.b	r0,[r5]
	JMP	lr
	.cfi_endproc
.LFE0:
	.size	ERRLIST_getFirst, .-ERRLIST_getFirst
	.section .text$ERRLIST_getAll
	.type	.text$ERRLIST_getAll$scode_local_2, @function
	.text$ERRLIST_getAll$scode_local_2:
	.align	1
	.export	ERRLIST_getAll
	.type	ERRLIST_getAll, @function
ERRLIST_getAll:
.LFB1:
.LM3:
	.cfi_startproc
.LM4:
	LD	r0,#eList
	JMP	lr
	.cfi_endproc
.LFE1:
	.size	ERRLIST_getAll, .-ERRLIST_getAll
	.section .text$ERRLIST_add
	.type	.text$ERRLIST_add$scode_local_3, @function
	.text$ERRLIST_add$scode_local_3:
	.align	1
	.export	ERRLIST_add
	.type	ERRLIST_add, @function
ERRLIST_add:
.LFB2:
.LM5:
	.cfi_startproc
.LVL0:
.LM6:
	LD	r5,#eList
	ST.b	[r5],r0
.LM7:
	JMP	lr
	.cfi_endproc
.LFE2:
	.size	ERRLIST_add, .-ERRLIST_add
	.section .text$ERRLIST_delete
	.type	.text$ERRLIST_delete$scode_local_4, @function
	.text$ERRLIST_delete$scode_local_4:
	.align	1
	.export	ERRLIST_delete
	.type	ERRLIST_delete, @function
ERRLIST_delete:
.LFB3:
.LM8:
	.cfi_startproc
.LVL1:
.LM9:
	MOV	r4,#0
	LD	r5,#eList
	ST.b	[r5],r4
.LM10:
	JMP	lr
	.cfi_endproc
.LFE3:
	.size	ERRLIST_delete, .-ERRLIST_delete
	.section .text$ERRLIST_modify
	.type	.text$ERRLIST_modify$scode_local_5, @function
	.text$ERRLIST_modify$scode_local_5:
	.align	1
	.export	ERRLIST_modify
	.type	ERRLIST_modify, @function
ERRLIST_modify:
.LFB4:
.LM11:
	.cfi_startproc
.LVL2:
.LBB6:
.LBB7:
.LM12:
	LD	r5,#eList
	ST.b	[r5],r1
.LBE7:
.LBE6:
.LM13:
	JMP	lr
	.cfi_endproc
.LFE4:
	.size	ERRLIST_modify, .-ERRLIST_modify
	.section .text$ERRLIST_seek
	.type	.text$ERRLIST_seek$scode_local_6, @function
	.text$ERRLIST_seek$scode_local_6:
	.align	1
	.export	ERRLIST_seek
	.type	ERRLIST_seek, @function
ERRLIST_seek:
.LFB5:
.LM14:
	.cfi_startproc
.LVL3:
.LM15:
	MOV	r0,#255
.LVL4:
	JMP	lr
	.cfi_endproc
.LFE5:
	.size	ERRLIST_seek, .-ERRLIST_seek
	.export	eList
	.section .bss$comm$eList
	.type	.bss$comm$eList$scode_local_7, @function
	.bss$comm$eList$scode_local_7:
	.align	2
	.type	eList, @object
	.size	eList, 1
eList:
	.fill 1, 1
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_8, @function
	.debug_info$scode_local_8:
.Ldebug_info0:
	.long	0x1bc
	.short	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF18
	.byte	0x1
	.long	.LASF19
	.long	.LASF20
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
	.uleb128 0x4
	.long	.LASF3
	.byte	0x2
	.byte	0x15
	.long	0x49
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x4
	.long	.LASF4
	.byte	0x2
	.byte	0x16
	.long	0x5b
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF6
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
	.long	.LASF10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x1
	.long	0x98
	.uleb128 0x6
	.long	.LASF12
	.byte	0x1
	.byte	0x5b
	.long	0x50
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.long	.LASF11
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.byte	0x1
	.long	0xb2
	.uleb128 0x6
	.long	.LASF12
	.byte	0x1
	.byte	0x32
	.long	0x50
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF13
	.byte	0x1
	.byte	0x18
	.byte	0x1
	.long	0x50
	.long	.LFB0
	.long	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.long	.LASF14
	.byte	0x1
	.byte	0x25
	.byte	0x1
	.long	0xe2
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x8
	.byte	0x4
	.long	0x50
	.uleb128 0x9
	.long	0x98
	.long	.LFB2
	.long	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x104
	.uleb128 0xa
	.long	0xa6
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x9
	.long	0x7e
	.long	.LFB3
	.long	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x120
	.uleb128 0xa
	.long	0x8c
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF21
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x16a
	.uleb128 0xc
	.long	.LASF15
	.byte	0x1
	.byte	0x92
	.long	0x50
	.byte	0x1
	.byte	0x50
	.uleb128 0xc
	.long	.LASF16
	.byte	0x1
	.byte	0x92
	.long	0x50
	.byte	0x1
	.byte	0x51
	.uleb128 0xd
	.long	0x98
	.long	.LBB6
	.long	.LBE6
	.byte	0x1
	.byte	0x95
	.uleb128 0xa
	.long	0xa6
	.byte	0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF22
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.long	0x3e
	.long	.LFB5
	.long	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x196
	.uleb128 0xf
	.long	.LASF12
	.byte	0x1
	.byte	0xa1
	.long	0x50
	.long	.LLST0
	.byte	0
	.uleb128 0x10
	.long	0x50
	.long	0x1a6
	.uleb128 0x11
	.long	0x1a6
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF17
	.uleb128 0x12
	.long	.LASF23
	.byte	0x1
	.byte	0xa
	.long	0x196
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	eList
	.byte	0
	.section .debug_abbrev
	.type	.debug_abbrev$scode_local_9, @function
	.debug_abbrev$scode_local_9:
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section .debug_loc
	.type	.debug_loc$scode_local_10, @function
	.debug_loc$scode_local_10:
.Ldebug_loc0:
.LLST0:
	.long	.LVL3
	.long	.LVL4
	.short	0x1
	.byte	0x50
	.long	.LVL4
	.long	.LFE5
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
	.section .debug_aranges
	.type	.debug_aranges$scode_local_11, @function
	.debug_aranges$scode_local_11:
	.long	0x44
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
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	0
	.long	0
	.section .debug_ranges
	.type	.debug_ranges$scode_local_12, @function
	.debug_ranges$scode_local_12:
.Ldebug_ranges0:
	.long	.LFB0
	.long	.LFE0
	.long	.LFB1
	.long	.LFE1
	.long	.LFB2
	.long	.LFE2
	.long	.LFB3
	.long	.LFE3
	.long	.LFB4
	.long	.LFE4
	.long	.LFB5
	.long	.LFE5
	.long	0
	.long	0
	.section .debug_line
	.type	.debug_line$scode_local_13, @function
	.debug_line$scode_local_13:
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
	.byte	0
	.string	"error_code.c"
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
	.byte	0x2f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM2
	.byte	0x19
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
	.long	.LM3
	.byte	0x3c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM4
	.byte	0x19
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
	.byte	0x49
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM6
	.byte	0x32
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM7
	.byte	0x19
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
	.long	.LM8
	.byte	0x72
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM9
	.byte	0x41
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM10
	.byte	0x19
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
	.long	.LM11
	.byte	0xa9
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM12
	.byte	0x3
	.sleb128 -69
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x5f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE4
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM14
	.byte	0xb8
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM15
	.byte	0x24
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE5
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section .debug_str
	.type	.debug_str$scode_local_14, @function
	.debug_str$scode_local_14:
.LASF10:
	.string	"ERRLIST_delete"
.LASF16:
	.string	"newValue"
.LASF15:
	.string	"oldValue"
.LASF3:
	.string	"int8_t"
.LASF19:
	.string	"../Driver/error_code.c"
.LASF21:
	.string	"ERRLIST_modify"
.LASF5:
	.string	"unsigned char"
.LASF1:
	.string	"short unsigned int"
.LASF22:
	.string	"ERRLIST_seek"
.LASF13:
	.string	"ERRLIST_getFirst"
.LASF20:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\KF32F330_EVAL\\\\Release"
.LASF12:
	.string	"eValue"
.LASF0:
	.string	"unsigned int"
.LASF11:
	.string	"ERRLIST_add"
.LASF8:
	.string	"long long unsigned int"
.LASF4:
	.string	"uint8_t"
.LASF23:
	.string	"eList"
.LASF17:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF9:
	.string	"char"
.LASF18:
	.string	"GNU C 4.7.0"
.LASF14:
	.string	"ERRLIST_getAll"
.LASF6:
	.string	"short int"
.LASF2:
	.string	"signed char"
	.ident	"GCC: (GNU) 4.7.0-Dec 25 2025-16:17:10"
