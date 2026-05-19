	.file	"ota_boot.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.section .text$is_app_valid
	.type	.text$is_app_valid$scode_local_1, @function
	.text$is_app_valid$scode_local_1:
	.align	1
	.export	is_app_valid
	.type	is_app_valid, @function
is_app_valid:
.LFB3:
.LM1:
	.cfi_startproc
.LVL0:
.LBB6:
.LBB7:
.LM2:
	LD.w	r5,[r0]
.LBE7:
.LBE6:
.LM3:
	MOV	r3,#1
	LSL	r3,#28
	SUB	r3,r5,r3
.LM4:
	MOV	r0,#0
.LVL1:
.LM5:
	LD	r4,#98304
	CMP	r3,r4
	JHI	.L2
.LM6:
	MOV	r4,#3
	ANL	r5,r5,r4
	MOV	r4,#1
	CMP	r5,r0
	JNZ	.L9
.LM7:
	ZXT.b	r0,r4
.L2:
.LM8:
	JMP	lr
.L9:
.LM9:
	MOV	r4,r0
.LM10:
	ZXT.b	r0,r4
	JMP	.L2
	.cfi_endproc
.LFE3:
	.size	is_app_valid, .-is_app_valid
	.section .text$jump_to_app
	.type	.text$jump_to_app$scode_local_2, @function
	.text$jump_to_app$scode_local_2:
	.align	1
	.export	jump_to_app
	.type	jump_to_app, @function
jump_to_app:
.LFB4:
.LM11:
	.cfi_startproc
.LVL2:
	PUSH	lr
	.cfi_def_cfa_offset 4
.LM12:
	LD	r5,#1075839152
	ST.w	[r5+#3],r0
.LVL3:
.LBB8:
.LBB9:
.LM13:
	LD.w	r5,[r0+#1]
.LVL4:
.LBE9:
.LBE8:
.LM14:
	LJMP	r5
.LVL5:
	.cfi_endproc
.LFE4:
	.size	jump_to_app, .-jump_to_app
	.section .text$ota_app_verify
	.type	.text$ota_app_verify$scode_local_3, @function
	.text$ota_app_verify$scode_local_3:
	.align	1
	.export	ota_app_verify
	.type	ota_app_verify, @function
ota_app_verify:
.LFB5:
.LM15:
	.cfi_startproc
	PUSH	{r6, lr}
	.cfi_def_cfa_offset 8
	SUB	sp,#16
	.cfi_def_cfa_offset 24
.LVL6:
.LM16:
	LD	r6,#ota_info
	LD	r0,#260096
	MOV	r1,r6
	MOV	r2,#24
	LJMP	flash_read_buf
.LVL7:
.LM17:
	LD.w	r4,[r6]
.LM18:
	MOV	r0,#1
.LM19:
	LD	r5,#1454069419
	CMP	r4,r5
	JZ	.L15
.L12:
.LM20:
	ADD	sp,#16
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	POP	r6
	.cfi_def_cfa_offset 4
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
.L15:
	.cfi_restore_state
.LM21:
	LD.w	r1,[r6+#1]
	SUB	r4,r1,r0
	LD	r5,#100351
	CMP	r4,r5
	JHI	.L12
.LM22:
	LD	r0,#112640
	MOV	r2,sp
	LJMP	md5_flash
.LVL8:
.LM23:
	MOV	r0,sp
	LD	r1,#ota_info+8
	MOV	r2,#16
	LJMP	memcmp
.LVL9:
	MOV	r5,#0
	SUB	r5,r5,r0
	ORL	r0,r5,r0
.LM24:
	LSR	r0,#31
.LM25:
	ADD	sp,#16
	.cfi_def_cfa_offset 8
	POP	r6
	.cfi_def_cfa_offset 4
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
	.cfi_endproc
.LFE5:
	.size	ota_app_verify, .-ota_app_verify
	.section .text$ota_info_clear
	.type	.text$ota_info_clear$scode_local_4, @function
	.text$ota_info_clear$scode_local_4:
	.align	1
	.export	ota_info_clear
	.type	ota_info_clear, @function
ota_info_clear:
.LFB6:
.LM26:
	.cfi_startproc
	PUSH	lr
	.cfi_def_cfa_offset 4
.LM27:
	LD	r0,#260096
	LJMP	flash_erase_page
.LVL10:
.LM28:
	MOV	r4,#0
	LD	r5,#ota_info
	ST.w	[r5],r4
	LD	r5,#ota_info+4
	ST.w	[r5],r4
	LD	r5,#ota_info+8
	ST.w	[r5],r4
	LD	r5,#ota_info+12
	ST.w	[r5],r4
	LD	r5,#ota_info+16
	ST.w	[r5],r4
	LD	r5,#ota_info+20
	ST.w	[r5],r4
.LM29:
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
	.cfi_endproc
.LFE6:
	.size	ota_info_clear, .-ota_info_clear
	.section .text$ota_app_update
	.type	.text$ota_app_update$scode_local_5, @function
	.text$ota_app_update$scode_local_5:
	.align	1
	.export	ota_app_update
	.type	ota_app_update, @function
ota_app_update:
.LFB7:
.LM30:
	.cfi_startproc
	PUSH	{r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 24
	MOV	r5,#1
	LSL	r5,#10
	SUB	sp,r5
	.cfi_def_cfa_offset 1048
.LM31:
	LD	r5,#ota_info
	LD.w	r6,[r5+#1]
.LVL11:
.LM32:
	LD	r0,#12288
	LD	r1,#112640
	LJMP	flash_erase_range
.LVL12:
.LM33:
	CMP	r6,#0
	JZ	.L17
.LM34:
	LD	r5,#1023
	CMP	r6,r5
	JLS	.L25
	LD	r4,#12288
	MOV	r8,r4
	LD	r7,#112640
.LM35:
	MOV	r9,#1
	LSL	r9,#10
.LM36:
	MOV	r10,r5
	JMP	.L23
.LVL13:
.L21:
	CMP	r6,r10
	JLS	.L20
.LVL14:
.L23:
.LM37:
	MOV	r0,r7
	MOV	r1,sp
	MOV	r2,#1
	LSL	r2,#10
	LJMP	flash_read_buf
.LVL15:
.LM38:
	MOV	r0,r8
	MOV	r1,sp
	LJMP	flash_write_page
.LVL16:
.LM39:
	SUB	r6,r9
.LVL17:
.LM40:
	ADD	r7,r9
.LVL18:
.LM41:
	ADD	r8,r9
.LVL19:
.LM42:
	CMP	r6,#0
	JNZ	.L21
.LVL20:
.L17:
.LM43:
	MOV	r5,#1
	LSL	r5,#10
	ADD	sp,r5
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	POP	{r6, r7, r8, r9, r10}
	.cfi_def_cfa_offset 4
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
.LVL21:
.L25:
	.cfi_restore_state
.LM44:
	LD	r5,#12288
	MOV	r8,r5
.LM45:
	LD	r7,#112640
.LVL22:
.L20:
.LM46:
	MOV	r0,r7
	MOV	r1,sp
	MOV	r2,r6
	LJMP	flash_read_buf
.LVL23:
.LM47:
	MOV	r0,r8
	MOV	r1,sp
	MOV	r2,r6
	LJMP	flash_write_buf
.LVL24:
.LM48:
	MOV	r5,#1
	LSL	r5,#10
	ADD	sp,r5
	.cfi_def_cfa_offset 24
	POP	{r6, r7, r8, r9, r10}
	.cfi_def_cfa_offset 4
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
	.cfi_endproc
.LFE7:
	.size	ota_app_update, .-ota_app_update
	.section .bss$static$ota_info
	.type	.bss$static$ota_info$scode_local_6, @function
	.bss$static$ota_info$scode_local_6:
	.align	2
	.type	ota_info, @object
	.size	ota_info, 24
ota_info:
	.fill 24, 1
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_7, @function
	.debug_info$scode_local_7:
.Ldebug_info0:
	.long	0x3f2
	.short	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF39
	.byte	0x1
	.long	.LASF40
	.long	.LASF41
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
	.long	0x5e
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x6
	.long	.LASF42
	.byte	0x1c
	.byte	0x3
	.short	0xced
	.long	0xf3
	.uleb128 0x7
	.string	"PSW"
	.byte	0x3
	.short	0xcee
	.long	0x7e
	.byte	0
	.uleb128 0x8
	.long	.LASF11
	.byte	0x3
	.short	0xcef
	.long	0x7e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF12
	.byte	0x3
	.short	0xcf0
	.long	0x7e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF13
	.byte	0x3
	.short	0xcf1
	.long	0x7e
	.byte	0xc
	.uleb128 0x8
	.long	.LASF14
	.byte	0x3
	.short	0xcf2
	.long	0x5e
	.byte	0x10
	.uleb128 0x8
	.long	.LASF15
	.byte	0x3
	.short	0xcf3
	.long	0x7e
	.byte	0x14
	.uleb128 0x8
	.long	.LASF16
	.byte	0x3
	.short	0xcf4
	.long	0x7e
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.long	.LASF17
	.byte	0x3
	.short	0xcf5
	.long	0x8a
	.uleb128 0x4
	.long	.LASF18
	.byte	0x1
	.byte	0x8
	.long	0x10a
	.uleb128 0xa
	.byte	0x4
	.long	0x110
	.uleb128 0x5
	.long	0x115
	.uleb128 0xb
	.byte	0x1
	.uleb128 0xc
	.byte	0x18
	.byte	0x1
	.byte	0x42
	.long	0x144
	.uleb128 0xd
	.long	.LASF19
	.byte	0x1
	.byte	0x44
	.long	0x5e
	.byte	0
	.uleb128 0xd
	.long	.LASF20
	.byte	0x1
	.byte	0x45
	.long	0x5e
	.byte	0x4
	.uleb128 0xe
	.string	"md5"
	.byte	0x1
	.byte	0x47
	.long	0x144
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.long	0x45
	.long	0x154
	.uleb128 0x10
	.long	0x83
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	.LASF21
	.byte	0x1
	.byte	0x48
	.long	0x117
	.uleb128 0x11
	.long	.LASF22
	.byte	0x1
	.byte	0xf
	.byte	0x1
	.long	0x5e
	.byte	0x1
	.long	0x17c
	.uleb128 0x12
	.long	.LASF24
	.byte	0x1
	.byte	0xf
	.long	0x5e
	.byte	0
	.uleb128 0x11
	.long	.LASF23
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.long	0x5e
	.byte	0x1
	.long	0x199
	.uleb128 0x12
	.long	.LASF24
	.byte	0x1
	.byte	0x19
	.long	0x5e
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF28
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.long	0x45
	.long	.LFB3
	.long	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1eb
	.uleb128 0x14
	.long	.LASF24
	.byte	0x1
	.byte	0x24
	.long	0x5e
	.long	.LLST0
	.uleb128 0x15
	.long	.LASF25
	.byte	0x1
	.byte	0x26
	.long	0x5e
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.long	0x15f
	.long	.LBB6
	.long	.LBE6
	.byte	0x1
	.byte	0x26
	.uleb128 0x17
	.long	0x170
	.long	.LLST0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF27
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x248
	.uleb128 0x14
	.long	.LASF24
	.byte	0x1
	.byte	0x35
	.long	0x5e
	.long	.LLST2
	.uleb128 0x15
	.long	.LASF26
	.byte	0x1
	.byte	0x38
	.long	0x5e
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.long	.LASF27
	.byte	0x1
	.byte	0x39
	.long	0xff
	.long	.LLST3
	.uleb128 0x16
	.long	0x17c
	.long	.LBB8
	.long	.LBE8
	.byte	0x1
	.byte	0x38
	.uleb128 0x17
	.long	0x18d
	.long	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF29
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.long	0x45
	.long	.LFB5
	.long	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2da
	.uleb128 0x1a
	.long	.LASF30
	.byte	0x1
	.byte	0x53
	.long	0x5e
	.byte	0
	.uleb128 0x1a
	.long	.LASF31
	.byte	0x1
	.byte	0x54
	.long	0x5e
	.byte	0
	.uleb128 0x15
	.long	.LASF32
	.byte	0x1
	.byte	0x55
	.long	0x144
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.long	.LVL7
	.long	0x2a7
	.uleb128 0x1c
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x48
	.uleb128 0x1c
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x4
	.byte	0x8
	.byte	0xfe
	.byte	0x3a
	.byte	0x24
	.byte	0
	.uleb128 0x1b
	.long	.LVL8
	.long	0x2bf
	.uleb128 0x1c
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x4
	.byte	0x8
	.byte	0xdc
	.byte	0x39
	.byte	0x24
	.byte	0
	.uleb128 0x1d
	.long	.LVL9
	.uleb128 0x1c
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x40
	.uleb128 0x1c
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	ota_info+8
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF33
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x301
	.uleb128 0x1d
	.long	.LVL10
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x4
	.byte	0x8
	.byte	0xfe
	.byte	0x3a
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF34
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x3d4
	.uleb128 0x15
	.long	.LASF35
	.byte	0x1
	.byte	0x8d
	.long	0x3d4
	.byte	0x3
	.byte	0x91
	.sleb128 -1048
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.byte	0x8e
	.long	0x5e
	.byte	0x1
	.byte	0x56
	.uleb128 0x19
	.long	.LASF36
	.byte	0x1
	.byte	0x8f
	.long	0x5e
	.long	.LLST5
	.uleb128 0x19
	.long	.LASF37
	.byte	0x1
	.byte	0x90
	.long	0x5e
	.long	.LLST6
	.uleb128 0x1b
	.long	.LVL12
	.long	0x36c
	.uleb128 0x1c
	.byte	0x1
	.byte	0x51
	.byte	0x4
	.byte	0x8
	.byte	0xdc
	.byte	0x39
	.byte	0x24
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xa
	.short	0x3000
	.byte	0
	.uleb128 0x1b
	.long	.LVL15
	.long	0x389
	.uleb128 0x1c
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xa
	.short	0x400
	.uleb128 0x1c
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.long	.LVL16
	.long	0x39f
	.uleb128 0x1c
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.long	.LVL23
	.long	0x3bb
	.uleb128 0x1c
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL24
	.uleb128 0x1c
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x5e
	.long	0x3e4
	.uleb128 0x10
	.long	0x83
	.byte	0xff
	.byte	0
	.uleb128 0x15
	.long	.LASF38
	.byte	0x1
	.byte	0x4a
	.long	0x154
	.byte	0x5
	.byte	0x3
	.long	ota_info
	.byte	0
	.section .debug_abbrev
	.type	.debug_abbrev$scode_local_8, @function
	.debug_abbrev$scode_local_8:
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.byte	0
	.section .debug_loc
	.type	.debug_loc$scode_local_9, @function
	.debug_loc$scode_local_9:
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.short	0x1
	.byte	0x50
	.long	.LVL1
	.long	.LFE3
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL2
	.long	.LVL5-1
	.short	0x1
	.byte	0x50
	.long	.LVL5-1
	.long	.LFE4
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL4
	.long	.LVL5-1
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
.LLST4:
	.long	.LVL3
	.long	.LVL5-1
	.short	0x1
	.byte	0x50
	.long	.LVL5-1
	.long	.LFE4
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL11
	.long	.LVL13
	.short	0x5
	.byte	0x8
	.byte	0xdc
	.byte	0x39
	.byte	0x24
	.byte	0x9f
	.long	.LVL13
	.long	.LVL14
	.short	0x1
	.byte	0x57
	.long	.LVL18
	.long	.LVL20
	.short	0x1
	.byte	0x57
	.long	.LVL21
	.long	.LVL22
	.short	0x5
	.byte	0x8
	.byte	0xdc
	.byte	0x39
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL11
	.long	.LVL13
	.short	0x4
	.byte	0xa
	.short	0x3000
	.byte	0x9f
	.long	.LVL13
	.long	.LVL14
	.short	0x1
	.byte	0x58
	.long	.LVL19
	.long	.LVL20
	.short	0x1
	.byte	0x58
	.long	.LVL21
	.long	.LVL22
	.short	0x4
	.byte	0xa
	.short	0x3000
	.byte	0x9f
	.long	0
	.long	0
	.section .debug_aranges
	.type	.debug_aranges$scode_local_10, @function
	.debug_aranges$scode_local_10:
	.long	0x3c
	.short	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.short	0
	.short	0
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	0
	.long	0
	.section .debug_ranges
	.type	.debug_ranges$scode_local_11, @function
	.debug_ranges$scode_local_11:
.Ldebug_ranges0:
	.long	.LFB3
	.long	.LFE3
	.long	.LFB4
	.long	.LFE4
	.long	.LFB5
	.long	.LFE5
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	0
	.long	0
	.section .debug_line
	.type	.debug_line$scode_local_12, @function
	.debug_line$scode_local_12:
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
	.ascii	"E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripher"
	.ascii	"als\\inc"
	.byte	0
	.byte	0
	.string	"ota_boot.c"
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
	.byte	0
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM1
	.byte	0x3b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM2
	.byte	0x3
	.sleb128 -20
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM3
	.byte	0x2e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM4
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM5
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM6
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM7
	.byte	0x6
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM8
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM9
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x11
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
	.byte	0x4c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM12
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x3
	.sleb128 -28
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM14
	.byte	0x37
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
	.long	.LM15
	.byte	0x68
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM16
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM17
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM18
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM19
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM20
	.byte	0x2f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM21
	.byte	0x3
	.sleb128 -19
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM22
	.byte	0x22
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM23
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM24
	.byte	0x3
	.sleb128 -16
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM25
	.byte	0x2d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE5
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM26
	.byte	0x97
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM27
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM28
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM29
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE6
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM30
	.byte	0xa2
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM31
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM32
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM33
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM34
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM35
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM36
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM37
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM38
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM39
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM40
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM41
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM42
	.byte	0xd
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM43
	.byte	0x2c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM44
	.byte	0x3
	.sleb128 -27
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM45
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM46
	.byte	0x2c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM47
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM48
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE7
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section .debug_str
	.type	.debug_str$scode_local_13, @function
	.debug_str$scode_local_13:
.LASF26:
	.string	"jump_address"
.LASF34:
	.string	"ota_app_update"
.LASF20:
	.string	"fw_len"
.LASF22:
	.string	"get_appstackpointer"
.LASF27:
	.string	"jump_to_app"
.LASF31:
	.string	"checksum"
.LASF12:
	.string	"ARCTL"
.LASF3:
	.string	"unsigned char"
.LASF29:
	.string	"ota_app_verify"
.LASF23:
	.string	"get_jumpaddress"
.LASF1:
	.string	"short unsigned int"
.LASF21:
	.string	"ota_infor_t"
.LASF25:
	.string	"app_stack"
.LASF33:
	.string	"ota_info_clear"
.LASF41:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\KF32F330_EVAL\\\\Release"
.LASF37:
	.string	"addr_write"
.LASF18:
	.string	"pFunction"
.LASF17:
	.string	"SYSCTL_SFRmap"
.LASF28:
	.string	"is_app_valid"
.LASF24:
	.string	"app_addr"
.LASF30:
	.string	"byte_index"
.LASF0:
	.string	"unsigned int"
.LASF40:
	.string	"../Driver/ota_boot.c"
.LASF8:
	.string	"long long unsigned int"
.LASF5:
	.string	"uint8_t"
.LASF13:
	.string	"VECTOFF"
.LASF10:
	.string	"sizetype"
.LASF36:
	.string	"addr_read"
.LASF7:
	.string	"long long int"
.LASF15:
	.string	"RAMSPA"
.LASF19:
	.string	"iap_flg"
.LASF9:
	.string	"char"
.LASF39:
	.string	"GNU C 4.7.0"
.LASF14:
	.string	"RESEVRVE1"
.LASF38:
	.string	"ota_info"
.LASF4:
	.string	"short int"
.LASF35:
	.string	"buffer"
.LASF16:
	.string	"MEMCTL"
.LASF6:
	.string	"uint32_t"
.LASF42:
	.string	"SYSCTL_MemMap"
.LASF32:
	.string	"md5_result"
.LASF2:
	.string	"signed char"
.LASF11:
	.string	"MCTL"
	.ident	"GCC: (GNU) 4.7.0-Dec 25 2025-16:17:10"
