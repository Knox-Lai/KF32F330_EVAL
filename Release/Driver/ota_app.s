	.file	"ota_app.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.section .rodata.str1.4
	.type	.rodata.str1.4$scode_local_1, @function
	.rodata.str1.4$scode_local_1:
	.align	2
.LC0:
	.string	"ota_app_start\r\n"
	.section .text$ota_app_start
	.type	.text$ota_app_start$scode_local_2, @function
	.text$ota_app_start$scode_local_2:
	.align	1
	.export	ota_app_start
	.type	ota_app_start, @function
ota_app_start:
.LFB1:
.LM1:
	.cfi_startproc
	PUSH	lr
	.cfi_def_cfa_offset 4
.LM2:
	LD	r0,#1073744256
	LD	r1,#.LC0
	LJMP	fprintf
.LVL0:
.LM3:
	LD	r5,#ota
	MOV	r4,#0
	ST.w	[r5+#1],r4
.LM4:
	ST.w	[r5+#2],r4
.LM5:
	ST.w	[r5+#3],r4
.LM6:
	LD	r3,#800
	ST.h	[r5+#8],r3
.LM7:
	ST.b	[r5+#18],r4
.LM8:
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
	.cfi_endproc
.LFE1:
	.size	ota_app_start, .-ota_app_start
	.section .text$ota_app_set_info
	.type	.text$ota_app_set_info$scode_local_3, @function
	.text$ota_app_set_info$scode_local_3:
	.align	1
	.export	ota_app_set_info
	.type	ota_app_set_info, @function
ota_app_set_info:
.LFB2:
.LM9:
	.cfi_startproc
.LVL1:
	PUSH	{r6, r7, lr}
	.cfi_def_cfa_offset 12
	MOV	r7,r0
.LM10:
	MOV	r1,#4
	LJMP	uint8_to_uint32
.LVL2:
.LM11:
	LD	r5,#100352
	CMP	r0,r5
	JHI	.L6
.LM12:
	LD	r6,#ota
	ST.w	[r6+#2],r0
.LM13:
	ADD	r0,r7,#4
.LVL3:
	MOV	r1,#4
	LJMP	uint8_to_uint32
.LVL4:
	ST.w	[r6],r0
.LM14:
	MOV	r5,#1
	ST.b	[r6+#18],r5
.LM15:
	POP	{r6, r7}
	.cfi_remember_state
	.cfi_def_cfa_offset 4
.LVL5:
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
.LVL6:
.L6:
	.cfi_restore_state
.LM16:
	MOV	r0,#22
.LVL7:
	LJMP	ERRLIST_add
.LVL8:
.LM17:
	POP	{r6, r7}
	.cfi_def_cfa_offset 4
.LVL9:
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
	.cfi_endproc
.LFE2:
	.size	ota_app_set_info, .-ota_app_set_info
	.section .rodata.str1.4
	.type	.rodata.str1.4$scode_local_4, @function
	.rodata.str1.4$scode_local_4:
	.align	2
.LC1:
	.string	"firmwareId error!!!\r\n"
	.align	2
.LC2:
	.string	"write data %d\r\n"
	.section .text$ota_app_recvpkg
	.type	.text$ota_app_recvpkg$scode_local_5, @function
	.text$ota_app_recvpkg$scode_local_5:
	.align	1
	.export	ota_app_recvpkg
	.type	ota_app_recvpkg, @function
ota_app_recvpkg:
.LFB3:
.LM18:
	.cfi_startproc
.LVL10:
	PUSH	{r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 20
.LM19:
	LD	r6,#ota
	LD.b	r5,[r6+#18]
	CMP	r5,#0
	JZ	.L14
.LM20:
	LD.b	r7,[r0+#1]
	LSL	r7,#8
	LD.b	r5,[r0]
	ORL	r7,r7,r5
.LVL11:
.LM21:
	LD	r5,#800
	CMP	r7,r5
	JHI	.L15
.LM22:
	LD.h	r5,[r6+#8]
	CMP	r5,r7
	JZ	.L7
.LM23:
	ST.h	[r6+#8],r7
.LM24:
	ADD	r0,r0,#2
.LVL12:
	MOV	r8,r0
.LVL13:
.LM25:
	LD.w	r5,[r6+#3]
	MOV	r1,#128
	ADD	r3,r5,r1
	LD.w	r4,[r6+#2]
	CMP	r3,r4
	JLS	.L16
.LM26:
	LD.w	r3,[r6+#1]
	MOV	r9,r3
	SUB	r1,r4,r5
	LJMP	CalChecksum
.LVL14:
	ADD	r0,r9
	ST.w	[r6+#1],r0
.LM27:
	LD	r5,#880
	ADD	r7,r7,r5
.LVL15:
	LSL	r7,#7
.LVL16:
.LM28:
	LD	r5,#1023
	ANL	r5,r7,r5
	JZ	.L17
.L13:
.LM29:
	MOV	r0,r7
	MOV	r1,r8
	MOV	r2,#128
	LJMP	flash_write_buf
.LVL17:
.LM30:
	LD	r0,#1073744256
	LD	r1,#.LC2
	LD.h	r2,[r6+#8]
	LJMP	fprintf
.LVL18:
.L7:
.LM31:
	POP	{r6, r7, r8, r9}
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
.LVL19:
.L16:
	.cfi_restore_state
.LM32:
	ST.w	[r6+#3],r3
.LM33:
	LD.w	r3,[r6+#1]
	MOV	r9,r3
	LJMP	CalChecksum
.LVL20:
	ADD	r0,r9
	ST.w	[r6+#1],r0
.LM34:
	LD	r5,#880
	ADD	r7,r7,r5
.LVL21:
	LSL	r7,#7
.LVL22:
.LM35:
	LD	r5,#1023
	ANL	r5,r7,r5
	JNZ	.L13
.L17:
.LM36:
	MOV	r0,r7
	LJMP	flash_erase_page
.LVL23:
	JMP	.L13
.LVL24:
.L14:
.LM37:
	LD	r0,#1073744256
.LVL25:
	LD	r1,#.LC1
	LJMP	fprintf
.LVL26:
.LM38:
	POP	{r6, r7, r8, r9}
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
.LVL27:
.L15:
	.cfi_restore_state
.LM39:
	MOV	r0,#20
.LVL28:
	LJMP	ERRLIST_add
.LVL29:
.LM40:
	POP	{r6, r7, r8, r9}
	.cfi_def_cfa_offset 4
.LVL30:
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
	.cfi_endproc
.LFE3:
	.size	ota_app_recvpkg, .-ota_app_recvpkg
	.section .rodata.str1.4
	.type	.rodata.str1.4$scode_local_6, @function
	.rodata.str1.4$scode_local_6:
	.align	2
.LC3:
	.string	"md5:"
	.align	2
.LC4:
	.string	"%02x"
	.align	2
.LC5:
	.string	"\r\n"
	.align	2
.LC6:
	.string	"ota_app_end\r\n"
	.section .text$ota_app_end
	.type	.text$ota_app_end$scode_local_7, @function
	.text$ota_app_end$scode_local_7:
	.align	1
	.export	ota_app_end
	.type	ota_app_end, @function
ota_app_end:
.LFB4:
.LM41:
	.cfi_startproc
	PUSH	{r6, r7, lr}
	.cfi_def_cfa_offset 12
	SUB	sp,#44
	.cfi_def_cfa_offset 56
.LVL31:
.LM42:
	LD	r4,#1454069419
	ST.w	[sp+#10],r4
.LVL32:
.LM43:
	MOV	r5,#0
	MOV	r6,sp
	ST.w	[r6++],r5
	ST.w	[sp+#1],r5
	ADD	r6,r6,#4
	ST.w	[r6++],r5
	ST.w	[r6++],r5
	ST.w	[r6++],r5
	ST.w	[r6],r5
.LM44:
	ST.w	[sp+#6],r5
	ST.w	[sp+#7],r5
	ST.w	[sp+#8],r5
	ST.w	[sp+#9],r5
.LM45:
	LD	r5,#ota
	LD.b	r6,[r5+#18]
	CMP	r6,#0
	JZ	.L24
.LM46:
	LD.w	r3,[r5]
	LD.w	r5,[r5+#1]
.LM47:
	MOV	r0,#21
.LM48:
	CMP	r3,r5
	JZ	.L25
.LVL33:
.L20:
.LM49:
	ADD	sp,#44
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	POP	{r6, r7}
	.cfi_def_cfa_offset 4
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
.LVL34:
.L24:
	.cfi_restore_state
.LM50:
	LD	r0,#1073744256
	LD	r1,#.LC1
	LJMP	fprintf
.LVL35:
.LM51:
	MOV	r0,r6
.LM52:
	ADD	sp,#44
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	POP	{r6, r7}
	.cfi_def_cfa_offset 4
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
.L25:
	.cfi_restore_state
.LM53:
	MOV	r7,sp
	ADD	r7,#40
	ST.w	[sp],r4
.LVL36:
.LM54:
	LD	r5,#ota+8
	LD.w	r1,[r5]
	ST.w	[sp+#1],r1
.LVL37:
.LM55:
	LD	r0,#112640
	MOV	r2,sp
	ADD	r2,#24
	LJMP	md5_flash
.LVL38:
.LM56:
	LD.w	r5,[sp+#6]
	ST.w	[sp+#2],r5
	LD.w	r5,[sp+#7]
	ST.w	[sp+#3],r5
	LD.w	r5,[sp+#8]
	ST.w	[sp+#4],r5
	LD.w	r5,[sp+#9]
	ST.w	[sp+#5],r5
.LVL39:
.LM57:
	LD	r0,#260096
	MOV	r1,sp
	MOV	r2,#24
	LJMP	flash_write_buf
.LVL40:
.LM58:
	LD	r0,#1073744256
	LD	r1,#.LC3
	LJMP	fprintf
.LVL41:
	MOV	r6,sp
	ADD	r6,#24
.LVL42:
.L21:
.LBB2:
.LM59:
	LD	r0,#1073744256
	LD	r1,#.LC4
	LD.b	r2,[r6++]
	LJMP	fprintf
.LVL43:
.LM60:
	CMP	r7,r6
	JNZ	.L21
.LBE2:
.LM61:
	LD	r0,#1073744256
	LD	r1,#.LC5
	LJMP	fprintf
.LVL44:
.LM62:
	LD	r0,#1073744256
	LD	r1,#.LC6
	LJMP	fprintf
.LVL45:
.LM63:
	MOV	r0,#0
	JMP	.L20
	.cfi_endproc
.LFE4:
	.size	ota_app_end, .-ota_app_end
	.section .bss$static$ota
	.type	.bss$static$ota$scode_local_8, @function
	.bss$static$ota$scode_local_8:
	.align	2
	.type	ota, @object
	.size	ota, 20
ota:
	.fill 20, 1
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_9, @function
	.debug_info$scode_local_9:
.Ldebug_info0:
	.long	0x3b9
	.short	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF31
	.byte	0x1
	.long	.LASF32
	.long	.LASF33
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x4
	.long	.LASF12
	.byte	0x3
	.byte	0x20
	.long	0x9b
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x14
	.byte	0x1
	.byte	0xb
	.long	0xee
	.uleb128 0x7
	.long	.LASF13
	.byte	0x1
	.byte	0xd
	.long	0x69
	.byte	0
	.uleb128 0x7
	.long	.LASF14
	.byte	0x1
	.byte	0xe
	.long	0x69
	.byte	0x4
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.byte	0xf
	.long	0x69
	.byte	0x8
	.uleb128 0x7
	.long	.LASF16
	.byte	0x1
	.byte	0x10
	.long	0x69
	.byte	0xc
	.uleb128 0x7
	.long	.LASF17
	.byte	0x1
	.byte	0x11
	.long	0x5e
	.byte	0x10
	.uleb128 0x7
	.long	.LASF18
	.byte	0x1
	.byte	0x12
	.long	0x45
	.byte	0x12
	.byte	0
	.uleb128 0x4
	.long	.LASF19
	.byte	0x1
	.byte	0x13
	.long	0x9d
	.uleb128 0x8
	.byte	0x1
	.long	.LASF20
	.byte	0x1
	.byte	0x17
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x12a
	.uleb128 0x9
	.long	.LVL0
	.uleb128 0xa
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	.LC0
	.uleb128 0xa
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0xc
	.long	0x40000980
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF21
	.byte	0x1
	.byte	0x25
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x196
	.uleb128 0xb
	.long	.LASF23
	.byte	0x1
	.byte	0x25
	.long	0x196
	.long	.LLST0
	.uleb128 0xc
	.long	.LASF24
	.byte	0x1
	.byte	0x27
	.long	0x69
	.long	.LLST1
	.uleb128 0xd
	.long	.LVL2
	.long	0x175
	.uleb128 0xa
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x34
	.uleb128 0xa
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.long	.LVL4
	.long	0x18a
	.uleb128 0xa
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x34
	.uleb128 0xa
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 4
	.byte	0
	.uleb128 0x9
	.long	.LVL8
	.uleb128 0xa
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x46
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.long	0x45
	.uleb128 0xf
	.byte	0x1
	.long	.LASF22
	.byte	0x1
	.byte	0x36
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x261
	.uleb128 0xb
	.long	.LASF23
	.byte	0x1
	.byte	0x36
	.long	0x196
	.long	.LLST2
	.uleb128 0xc
	.long	.LASF25
	.byte	0x1
	.byte	0x38
	.long	0x5e
	.long	.LLST3
	.uleb128 0xc
	.long	.LASF26
	.byte	0x1
	.byte	0x39
	.long	0x69
	.long	.LLST4
	.uleb128 0xd
	.long	.LVL14
	.long	0x1f1
	.uleb128 0xa
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.long	.LVL17
	.long	0x20d
	.uleb128 0xa
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0xa
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0xa
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.long	.LVL18
	.long	0x229
	.uleb128 0xa
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	.LC2
	.uleb128 0xa
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0xc
	.long	0x40000980
	.byte	0
	.uleb128 0xd
	.long	.LVL23
	.long	0x239
	.uleb128 0xa
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.long	.LVL26
	.long	0x255
	.uleb128 0xa
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	.LC1
	.uleb128 0xa
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0xc
	.long	0x40000980
	.byte	0
	.uleb128 0x9
	.long	.LVL29
	.uleb128 0xa
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF34
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.long	0x45
	.long	.LFB4
	.long	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x38b
	.uleb128 0xc
	.long	.LASF27
	.byte	0x1
	.byte	0x6d
	.long	0x45
	.long	.LLST5
	.uleb128 0x11
	.long	.LASF28
	.byte	0x1
	.byte	0x6e
	.long	0x69
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x11
	.long	.LASF29
	.byte	0x1
	.byte	0x6f
	.long	0x38b
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.long	.LASF30
	.byte	0x1
	.byte	0x70
	.long	0x39b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.long	.LBB2
	.long	.LBE2
	.long	0x2e9
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x9f
	.long	0x29
	.long	.LLST6
	.uleb128 0x9
	.long	.LVL43
	.uleb128 0xa
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	.LC4
	.uleb128 0xa
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0xc
	.long	0x40000980
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LVL35
	.long	0x305
	.uleb128 0xa
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	.LC1
	.uleb128 0xa
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0xc
	.long	0x40000980
	.byte	0
	.uleb128 0xd
	.long	.LVL38
	.long	0x31d
	.uleb128 0xa
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x7e
	.sleb128 24
	.uleb128 0xa
	.byte	0x1
	.byte	0x50
	.byte	0x4
	.byte	0x8
	.byte	0xdc
	.byte	0x39
	.byte	0x24
	.byte	0
	.uleb128 0xd
	.long	.LVL40
	.long	0x33a
	.uleb128 0xa
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x48
	.uleb128 0xa
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0xa
	.byte	0x1
	.byte	0x50
	.byte	0x4
	.byte	0x8
	.byte	0xfe
	.byte	0x3a
	.byte	0x24
	.byte	0
	.uleb128 0xd
	.long	.LVL41
	.long	0x356
	.uleb128 0xa
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	.LC3
	.uleb128 0xa
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0xc
	.long	0x40000980
	.byte	0
	.uleb128 0xd
	.long	.LVL44
	.long	0x372
	.uleb128 0xa
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	.LC5
	.uleb128 0xa
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0xc
	.long	0x40000980
	.byte	0
	.uleb128 0x9
	.long	.LVL45
	.uleb128 0xa
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	.LC6
	.uleb128 0xa
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0xc
	.long	0x40000980
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x45
	.long	0x39b
	.uleb128 0x15
	.long	0x89
	.byte	0x17
	.byte	0
	.uleb128 0x14
	.long	0x45
	.long	0x3ab
	.uleb128 0x15
	.long	0x89
	.byte	0xf
	.byte	0
	.uleb128 0x16
	.string	"ota"
	.byte	0x1
	.byte	0x15
	.long	0xee
	.byte	0x5
	.byte	0x3
	.long	ota
	.byte	0
	.section .debug_abbrev
	.type	.debug_abbrev$scode_local_10, @function
	.debug_abbrev$scode_local_10:
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.type	.debug_loc$scode_local_11, @function
	.debug_loc$scode_local_11:
.Ldebug_loc0:
.LLST0:
	.long	.LVL1
	.long	.LVL2-1
	.short	0x1
	.byte	0x50
	.long	.LVL2-1
	.long	.LVL5
	.short	0x1
	.byte	0x57
	.long	.LVL5
	.long	.LVL6
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL6
	.long	.LVL9
	.short	0x1
	.byte	0x57
	.long	.LVL9
	.long	.LFE2
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL2
	.long	.LVL3
	.short	0x1
	.byte	0x50
	.long	.LVL3
	.long	.LVL4-1
	.short	0x5
	.byte	0x3
	.long	ota+8
	.long	.LVL6
	.long	.LVL7
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST2:
	.long	.LVL10
	.long	.LVL12
	.short	0x1
	.byte	0x50
	.long	.LVL12
	.long	.LVL13
	.short	0x3
	.byte	0x70
	.sleb128 -2
	.byte	0x9f
	.long	.LVL13
	.long	.LVL14-1
	.short	0x1
	.byte	0x50
	.long	.LVL14-1
	.long	.LVL18
	.short	0x1
	.byte	0x58
	.long	.LVL19
	.long	.LVL20-1
	.short	0x1
	.byte	0x50
	.long	.LVL20-1
	.long	.LVL24
	.short	0x1
	.byte	0x58
	.long	.LVL24
	.long	.LVL25
	.short	0x1
	.byte	0x50
	.long	.LVL25
	.long	.LVL27
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL27
	.long	.LVL28
	.short	0x1
	.byte	0x50
	.long	.LVL28
	.long	.LFE3
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL11
	.long	.LVL15
	.short	0x1
	.byte	0x57
	.long	.LVL15
	.long	.LVL16
	.short	0x4
	.byte	0x77
	.sleb128 -880
	.byte	0x9f
	.long	.LVL19
	.long	.LVL21
	.short	0x1
	.byte	0x57
	.long	.LVL21
	.long	.LVL22
	.short	0x4
	.byte	0x77
	.sleb128 -880
	.byte	0x9f
	.long	.LVL27
	.long	.LVL30
	.short	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST4:
	.long	.LVL16
	.long	.LVL18
	.short	0x1
	.byte	0x57
	.long	.LVL22
	.long	.LVL24
	.short	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST5:
	.long	.LVL31
	.long	.LVL33
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL34
	.long	.LVL36
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL36
	.long	.LVL37
	.short	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL37
	.long	.LVL39
	.short	0x2
	.byte	0x38
	.byte	0x9f
	.long	.LVL39
	.long	.LFE4
	.short	0x2
	.byte	0x48
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL41
	.long	.LVL42
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
	.section .debug_aranges
	.type	.debug_aranges$scode_local_12, @function
	.debug_aranges$scode_local_12:
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
	.type	.debug_ranges$scode_local_13, @function
	.debug_ranges$scode_local_13:
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
	.type	.debug_line$scode_local_14, @function
	.debug_line$scode_local_14:
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
	.string	"ota_app.c"
	.uleb128 0x1
	.uleb128 0
	.uleb128 0
	.string	"stdint.h"
	.uleb128 0x2
	.uleb128 0
	.uleb128 0
	.string	"stdio.h"
	.uleb128 0x2
	.uleb128 0
	.uleb128 0
	.byte	0
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM1
	.byte	0x2e
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
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM7
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM8
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
	.long	.LM9
	.byte	0x3c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM10
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM11
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM12
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM14
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM15
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM16
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM17
	.byte	0x1f
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
	.long	.LM18
	.byte	0x4d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM19
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM20
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM21
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM22
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM23
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM24
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM25
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM26
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM27
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM28
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM29
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM30
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM31
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM32
	.byte	0x3
	.sleb128 -21
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM33
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM34
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM35
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM36
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM37
	.byte	0x3
	.sleb128 -37
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM38
	.byte	0x43
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM39
	.byte	0x3
	.sleb128 -36
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM40
	.byte	0x3b
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
	.long	.LM41
	.byte	0x82
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM42
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM43
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM44
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM45
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM46
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM47
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM48
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM49
	.byte	0x46
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM50
	.byte	0x3
	.sleb128 -51
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM51
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM52
	.byte	0x49
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM53
	.byte	0x3
	.sleb128 -25
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM54
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM55
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM56
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM57
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM58
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM59
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM60
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM61
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM62
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM63
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE4
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section .debug_str
	.type	.debug_str$scode_local_15, @function
	.debug_str$scode_local_15:
.LASF19:
	.string	"ota_handle_t"
.LASF17:
	.string	"lastPktIndex"
.LASF12:
	.string	"STREAM"
.LASF1:
	.string	"short unsigned int"
.LASF32:
	.string	"../Driver/ota_app.c"
.LASF23:
	.string	"data"
.LASF3:
	.string	"unsigned char"
.LASF30:
	.string	"md5Result"
.LASF24:
	.string	"temp"
.LASF26:
	.string	"addr"
.LASF20:
	.string	"ota_app_start"
.LASF25:
	.string	"packageIndex"
.LASF16:
	.string	"bytesCount"
.LASF29:
	.string	"flgData"
.LASF33:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\KF32F330_EVAL\\\\Release"
.LASF0:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF5:
	.string	"uint8_t"
.LASF11:
	.string	"sizetype"
.LASF15:
	.string	"fileBytesNum"
.LASF8:
	.string	"long long int"
.LASF10:
	.string	"char"
.LASF31:
	.string	"GNU C 4.7.0"
.LASF27:
	.string	"index"
.LASF21:
	.string	"ota_app_set_info"
.LASF4:
	.string	"short int"
.LASF28:
	.string	"iapFlg"
.LASF22:
	.string	"ota_app_recvpkg"
.LASF6:
	.string	"uint16_t"
.LASF7:
	.string	"uint32_t"
.LASF14:
	.string	"fileChecksum"
.LASF34:
	.string	"ota_app_end"
.LASF2:
	.string	"signed char"
.LASF13:
	.string	"fileRecChecksum"
.LASF18:
	.string	"firmwareIdFlag"
	.ident	"GCC: (GNU) 4.7.0-Dec 25 2025-16:17:10"
