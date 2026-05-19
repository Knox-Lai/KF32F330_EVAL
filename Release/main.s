	.file	"main.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.section .rodata.str1.4
	.type	.rodata.str1.4$scode_local_1, @function
	.rodata.str1.4$scode_local_1:
	.align	2
.LC0:
	.string	"Flash MD5 test\r\n"
	.align	2
.LC1:
	.string	"addr=0x%08lX, size=%lu bytes\r\n"
	.align	2
.LC2:
	.string	"md5="
	.align	2
.LC3:
	.string	"%02X"
	.align	2
.LC4:
	.string	"\r\n"
	.section .text$md5_flash_test
	.type	.text$md5_flash_test$scode_local_2, @function
	.text$md5_flash_test$scode_local_2:
	.align	1
	.export	md5_flash_test
	.type	md5_flash_test, @function
md5_flash_test:
.LFB1:
.LM1:
	.cfi_startproc
	PUSH	{r6, r7, lr}
	.cfi_def_cfa_offset 12
	SUB	sp,#16
	.cfi_def_cfa_offset 28
.LM2:
	LD	r0,#12288
	LD	r1,#100352
	MOV	r2,sp
	LJMP	md5_flash
.LVL0:
.LM3:
	LD	r0,#1073744256
	LD	r1,#.LC0
	LJMP	fprintf
.LVL1:
.LM4:
	LD	r0,#1073744256
	LD	r1,#.LC1
	LD	r2,#12288
	LD	r3,#100352
	LJMP	fprintf
.LVL2:
.LM5:
	LD	r0,#1073744256
	LD	r1,#.LC2
	LJMP	fprintf
.LVL3:
	MOV	r6,sp
.LM6:
	MOV	r7,sp
	ADD	r7,#16
.LVL4:
.L2:
.LM7:
	LD	r0,#1073744256
	LD	r1,#.LC3
	LD.b	r2,[r6++]
	LJMP	fprintf
.LVL5:
.LM8:
	CMP	r6,r7
	JNZ	.L2
.LM9:
	LD	r0,#1073744256
	LD	r1,#.LC4
	LJMP	fprintf
.LVL6:
.LM10:
	ADD	sp,#16
	.cfi_def_cfa_offset 12
	POP	{r6, r7}
	.cfi_def_cfa_offset 4
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
	.cfi_endproc
.LFE1:
	.size	md5_flash_test, .-md5_flash_test
	.section .text$runtime_param_set_default
	.type	.text$runtime_param_set_default$scode_local_3, @function
	.text$runtime_param_set_default$scode_local_3:
	.align	1
	.export	runtime_param_set_default
	.type	runtime_param_set_default, @function
runtime_param_set_default:
.LFB2:
.LM11:
	.cfi_startproc
.LM12:
	LD	r5,#g_runtime_param
	MOV	r4,#0
	ST.w	[r5],r4
.LM13:
	ST.w	[r5+#1],r4
.LM14:
	MOV	r3,#10
	ST.h	[r5+#4],r3
.LM15:
	MOV	r3,#1
	ST.b	[r5+#10],r3
.LM16:
	ST.b	[r5+#11],r4
.LM17:
	JMP	lr
	.cfi_endproc
.LFE2:
	.size	runtime_param_set_default, .-runtime_param_set_default
	.section .rodata.str1.4
	.type	.rodata.str1.4$scode_local_4, @function
	.rodata.str1.4$scode_local_4:
	.align	2
.LC5:
	.string	"\r\nruntime param test start\r\n"
	.align	2
.LC6:
	.string	"load ret=%d\r\n"
	.align	2
.LC7:
	.string	"load: run_time=%lu, save_count=%lu, brightness=%u, mode=%u\r\n"
	.align	2
.LC8:
	.string	"use default runtime param\r\n"
	.align	2
.LC9:
	.string	"save ret=%d\r\n"
	.align	2
.LC10:
	.string	"save: run_time=%lu, save_count=%lu, brightness=%u, mode=%u\r\n"
	.align	2
.LC11:
	.string	"runtime param test done\r\n"
	.section .text$runtime_param_test
	.type	.text$runtime_param_test$scode_local_5, @function
	.text$runtime_param_test$scode_local_5:
	.align	1
	.export	runtime_param_test
	.type	runtime_param_test, @function
runtime_param_test:
.LFB3:
.LM18:
	.cfi_startproc
	PUSH	{r6, r7, lr}
	.cfi_def_cfa_offset 12
	SUB	sp,#4
	.cfi_def_cfa_offset 16
.LM19:
	LD	r0,#1073744256
	LD	r1,#.LC5
	LJMP	fprintf
.LVL7:
.LM20:
	LD	r6,#g_runtime_param
	MOV	r0,#0
	MOV	r1,r6
	MOV	r2,#12
	LJMP	ee_load
.LVL8:
	MOV	r7,r0
.LVL9:
.LM21:
	LD	r0,#1073744256
.LVL10:
	LD	r1,#.LC6
	MOV	r2,r7
	LJMP	fprintf
.LVL11:
.LM22:
	CMP	r7,#0
	JZ	.L9
.LBB4:
.LBB5:
.LM23:
	MOV	r5,#0
	ST.w	[r6],r5
.LM24:
	ST.w	[r6+#1],r5
.LM25:
	MOV	r4,#10
	ST.h	[r6+#4],r4
.LM26:
	MOV	r4,#1
	ST.b	[r6+#10],r4
.LM27:
	ST.b	[r6+#11],r5
.LBE5:
.LBE4:
.LM28:
	LD	r0,#1073744256
	LD	r1,#.LC8
	LJMP	fprintf
.LVL12:
.L8:
.LM29:
	LD.w	r5,[r6]
	ADD	r5,#60
	ST.w	[r6],r5
.LM30:
	LD.w	r4,[r6+#1]
	ADD	r5,r4,#1
	ST.w	[r6+#1],r5
.LM31:
	LD.h	r4,[r6+#4]
	ADD	r5,r4,#1
	ST.h	[r6+#4],r5
.LM32:
	LD.b	r5,[r6+#10]
	ADD	r5,r5,#1
	ST.b	[r6+#10],r5
.LM33:
	MOV	r0,#0
	LD	r1,#g_runtime_param
	MOV	r2,#12
	LJMP	ee_save
.LVL13:
	MOV	r2,r0
.LVL14:
.LM34:
	LD	r0,#1073744256
.LVL15:
	LD	r1,#.LC9
	LJMP	fprintf
.LVL16:
.LM35:
	LD.w	r3,[r6+#1]
	LD.h	r4,[r6+#4]
	LD.b	r5,[r6+#10]
	ST.w	[sp],r5
	LD	r0,#1073744256
	LD	r1,#.LC10
	LD.w	r2,[r6]
	LJMP	fprintf
.LVL17:
.LM36:
	LD	r0,#1073744256
	LD	r1,#.LC11
	LJMP	fprintf
.LVL18:
.LM37:
	ADD	sp,#4
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	POP	{r6, r7}
	.cfi_def_cfa_offset 4
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
.LVL19:
.L9:
	.cfi_restore_state
.LM38:
	LD.w	r3,[r6+#1]
	LD.h	r4,[r6+#4]
	LD.b	r5,[r6+#10]
	ST.w	[sp],r5
	LD	r0,#1073744256
	LD	r1,#.LC7
	LD.w	r2,[r6]
	LJMP	fprintf
.LVL20:
	JMP	.L8
	.cfi_endproc
.LFE3:
	.size	runtime_param_test, .-runtime_param_test
	.section .rodata.str1.4
	.type	.rodata.str1.4$scode_local_6, @function
	.rodata.str1.4$scode_local_6:
	.align	2
.LC12:
	.string	"Bootloader Init!\r\n"
	.align	2
.LC13:
	.string	"app verify ok\r\n"
	.align	2
.LC14:
	.string	"update fw start\r\n"
	.align	2
.LC15:
	.string	"update fw done\r\n"
	.align	2
.LC16:
	.string	"clear flg\r\n"
	.align	2
.LC17:
	.string	"jump to app\r\n"
	.section .text.startup.main
	.type	.text.startup.main$scode_local_7, @function
	.text.startup.main$scode_local_7:
	.align	1
	.export	main
	.type	main, @function
main:
.LFB4:
.LM39:
	.cfi_startproc
	PUSH	{r6, r7, r8, r9, r10, r11, lr}
	.cfi_def_cfa_offset 28
.LM40:
	LJMP	SystemInit
.LVL21:
.LM41:
	LD	r5,#SystemCoreClock
	LD.w	r0,[r5]
	LD	r3,#1000
	MOV	r8,r3
	DIVU	r0,r0,r3
	LJMP	systick_timer_init
.LVL22:
.LM42:
	MOV	r0,#2
	LJMP	kf_eval_usart_init
.LVL23:
.LM43:
	MOV	r0,#0
	LJMP	kf_eval_led_init
.LVL24:
.LM44:
	MOV	r0,#1
	LJMP	kf_eval_led_init
.LVL25:
.LM45:
	MOV	r0,#2
	LJMP	kf_eval_led_init
.LVL26:
.LM46:
	LD	r0,#1073744256
	LD	r1,#.LC12
	LJMP	fprintf
.LVL27:
.LM47:
	LJMP	runtime_param_test
.LVL28:
	LD	r6,#last_tick.4974
	LD	r7,#cnt1.4976
.LBB6:
.LM48:
	MOV	r9,r6
.LBB7:
.LM49:
	MOV	r11,r7
.LM50:
	LD	r4,#2999
	MOV	r10,r4
	JMP	.L22
.L12:
.LBE7:
.LM51:
	LD	r0,#12288
	LJMP	is_app_valid
.LVL29:
	CMP	r0,#0
	JNZ	.L23
.L13:
.LM52:
	LJMP	systick_tick_get
.LVL30:
.LM53:
	LD.w	r5,[r6]
	CMP	r0,r5
	JNZ	.L24
.LVL31:
.L22:
.LM54:
	LJMP	ota_app_verify
.LVL32:
	CMP	r0,#0
	JNZ	.L12
.LM55:
	LD	r0,#1073744256
	LD	r1,#.LC13
	LJMP	fprintf
.LVL33:
.LM56:
	LD	r0,#1073744256
	LD	r1,#.LC14
	LJMP	fprintf
.LVL34:
.LM57:
	LJMP	ota_app_update
.LVL35:
.LM58:
	LD	r0,#1073744256
	LD	r1,#.LC15
	LJMP	fprintf
.LVL36:
.LM59:
	LJMP	ota_info_clear
.LVL37:
.LM60:
	LD	r0,#1073744256
	LD	r1,#.LC16
	LJMP	fprintf
.LVL38:
.LM61:
	LD	r0,#12288
	LJMP	is_app_valid
.LVL39:
	CMP	r0,#0
	JZ	.L13
.L23:
.LM62:
	LD	r0,#1073744256
	LD	r1,#.LC17
	LJMP	fprintf
.LVL40:
.LM63:
	LD	r0,#12288
	LJMP	jump_to_app
.LVL41:
.LM64:
	LJMP	systick_tick_get
.LVL42:
.LM65:
	LD.w	r5,[r6]
	CMP	r0,r5
	JZ	.L22
.L24:
.LBB8:
.LM66:
	ST.w	[r9],r0
.LM67:
	LD.h	r3,[r7]
	ADD	r5,r3,#1
	ZXT.h	r5,r5
	ST.h	[r7],r5
.LM68:
	MOV	r3,r8
	DIVU	r4,r5,r3
	MULS	r4,r4,r3 ;
	NOP
	SUB	r4,r5,r4
	ZXT.h	r4,r4
	CMP	r4,#0
	JZ	.L25
.LM69:
	CMP	r5,r10
	JLS	.L22
.LM70:
	MOV	r5,#0
	ST.h	[r11],r5
	JMP	.L22
.L25:
.LM71:
	MOV	r0,#2
.LVL43:
	LJMP	kf_eval_led_toggle
.LVL44:
	JMP	.L22
.LBE8:
.LBE6:
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.export	g_runtime_param
	.section .bss$comm$g_runtime_param
	.type	.bss$comm$g_runtime_param$scode_local_8, @function
	.bss$comm$g_runtime_param$scode_local_8:
	.align	2
	.type	g_runtime_param, @object
	.size	g_runtime_param, 12
g_runtime_param:
	.fill 12, 1
	.section .bss$data.static$last_tick.4974
	.type	.bss$data.static$last_tick.4974$scode_local_9, @function
	.bss$data.static$last_tick.4974$scode_local_9:
	.align	2
	.type	last_tick.4974, @object
	.size	last_tick.4974, 4
last_tick.4974:
	.fill 4, 1
	.section .bss$data.static$cnt1.4976
	.type	.bss$data.static$cnt1.4976$scode_local_10, @function
	.bss$data.static$cnt1.4976$scode_local_10:
	.align	1
	.type	cnt1.4976, @object
	.size	cnt1.4976, 2
cnt1.4976:
	.fill 2, 1
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_11, @function
	.debug_info$scode_local_11:
.Ldebug_info0:
	.long	0x5a4
	.short	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF46
	.byte	0x1
	.long	.LASF47
	.long	.LASF48
	.long	.Ldebug_ranges0+0x18
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF4
	.byte	0x2
	.byte	0x20
	.long	0x3b
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x3
	.long	.LASF5
	.byte	0x3
	.byte	0x16
	.long	0x29
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.long	.LASF7
	.byte	0x3
	.byte	0x18
	.long	0x4b
	.uleb128 0x3
	.long	.LASF8
	.byte	0x3
	.byte	0x1a
	.long	0x3d
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF11
	.uleb128 0x6
	.long	0x76
	.long	0xa6
	.uleb128 0x7
	.long	0xa6
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF12
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	0xc8
	.uleb128 0x9
	.long	.LASF13
	.sleb128 0
	.uleb128 0x9
	.long	.LASF14
	.sleb128 1
	.uleb128 0x9
	.long	.LASF15
	.sleb128 2
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.byte	0xf
	.long	0xe9
	.uleb128 0x9
	.long	.LASF16
	.sleb128 0
	.uleb128 0x9
	.long	.LASF17
	.sleb128 1
	.uleb128 0x9
	.long	.LASF18
	.sleb128 2
	.uleb128 0x9
	.long	.LASF19
	.sleb128 3
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0xe
	.long	0x116
	.uleb128 0x9
	.long	.LASF20
	.sleb128 0
	.uleb128 0x9
	.long	.LASF21
	.sleb128 1
	.uleb128 0x9
	.long	.LASF22
	.sleb128 2
	.uleb128 0x9
	.long	.LASF23
	.sleb128 3
	.uleb128 0x9
	.long	.LASF24
	.sleb128 4
	.uleb128 0x9
	.long	.LASF25
	.sleb128 5
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.long	0x137
	.uleb128 0x9
	.long	.LASF26
	.sleb128 0
	.uleb128 0x9
	.long	.LASF27
	.sleb128 1
	.uleb128 0x9
	.long	.LASF28
	.sleb128 2
	.uleb128 0x9
	.long	.LASF29
	.sleb128 3
	.byte	0
	.uleb128 0xa
	.byte	0xc
	.byte	0x1
	.byte	0x32
	.long	0x17c
	.uleb128 0xb
	.long	.LASF30
	.byte	0x1
	.byte	0x34
	.long	0x76
	.byte	0
	.uleb128 0xb
	.long	.LASF31
	.byte	0x1
	.byte	0x35
	.long	0x76
	.byte	0x4
	.uleb128 0xb
	.long	.LASF32
	.byte	0x1
	.byte	0x36
	.long	0x6b
	.byte	0x8
	.uleb128 0xb
	.long	.LASF33
	.byte	0x1
	.byte	0x37
	.long	0x59
	.byte	0xa
	.uleb128 0xb
	.long	.LASF34
	.byte	0x1
	.byte	0x38
	.long	0x59
	.byte	0xb
	.byte	0
	.uleb128 0x3
	.long	.LASF35
	.byte	0x1
	.byte	0x39
	.long	0x137
	.uleb128 0xc
	.byte	0x1
	.long	.LASF49
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.byte	0x1
	.long	.LASF37
	.byte	0x1
	.byte	0x1f
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x27b
	.uleb128 0xe
	.long	.LASF36
	.byte	0x1
	.byte	0x21
	.long	0x27b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x22
	.long	0x59
	.long	.LLST0
	.uleb128 0x10
	.long	.LVL0
	.long	0x1e3
	.uleb128 0x11
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x11
	.byte	0x1
	.byte	0x51
	.byte	0x4
	.byte	0x8
	.byte	0xc4
	.byte	0x39
	.byte	0x24
	.uleb128 0x11
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xa
	.short	0x3000
	.byte	0
	.uleb128 0x10
	.long	.LVL1
	.long	0x1ff
	.uleb128 0x11
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	.LC0
	.uleb128 0x11
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0xc
	.long	0x40000980
	.byte	0
	.uleb128 0x10
	.long	.LVL2
	.long	0x22a
	.uleb128 0x11
	.byte	0x1
	.byte	0x53
	.byte	0x4
	.byte	0x8
	.byte	0xc4
	.byte	0x39
	.byte	0x24
	.uleb128 0x11
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xa
	.short	0x3000
	.uleb128 0x11
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	.LC1
	.uleb128 0x11
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0xc
	.long	0x40000980
	.byte	0
	.uleb128 0x10
	.long	.LVL3
	.long	0x246
	.uleb128 0x11
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	.LC2
	.uleb128 0x11
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0xc
	.long	0x40000980
	.byte	0
	.uleb128 0x10
	.long	.LVL5
	.long	0x262
	.uleb128 0x11
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	.LC3
	.uleb128 0x11
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0xc
	.long	0x40000980
	.byte	0
	.uleb128 0x12
	.long	.LVL6
	.uleb128 0x11
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	.LC4
	.uleb128 0x11
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0xc
	.long	0x40000980
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x59
	.long	0x28b
	.uleb128 0x7
	.long	0xa6
	.byte	0xf
	.byte	0
	.uleb128 0x13
	.long	0x187
	.long	.LFB2
	.long	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xd
	.byte	0x1
	.long	.LASF38
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x3cc
	.uleb128 0xf
	.string	"ret"
	.byte	0x1
	.byte	0x48
	.long	0x59
	.long	.LLST1
	.uleb128 0x14
	.long	0x187
	.long	.LBB4
	.long	.LBE4
	.byte	0x1
	.byte	0x58
	.uleb128 0x10
	.long	.LVL7
	.long	0x2ed
	.uleb128 0x11
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	.LC5
	.uleb128 0x11
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0xc
	.long	0x40000980
	.byte	0
	.uleb128 0x10
	.long	.LVL8
	.long	0x307
	.uleb128 0x11
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x3c
	.uleb128 0x11
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x11
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x10
	.long	.LVL11
	.long	0x329
	.uleb128 0x11
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x11
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	.LC6
	.uleb128 0x11
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0xc
	.long	0x40000980
	.byte	0
	.uleb128 0x10
	.long	.LVL12
	.long	0x345
	.uleb128 0x11
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	.LC8
	.uleb128 0x11
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0xc
	.long	0x40000980
	.byte	0
	.uleb128 0x10
	.long	.LVL13
	.long	0x35f
	.uleb128 0x11
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x3c
	.uleb128 0x11
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x11
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x10
	.long	.LVL16
	.long	0x37b
	.uleb128 0x11
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	.LC9
	.uleb128 0x11
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0xc
	.long	0x40000980
	.byte	0
	.uleb128 0x10
	.long	.LVL17
	.long	0x397
	.uleb128 0x11
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	.LC10
	.uleb128 0x11
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0xc
	.long	0x40000980
	.byte	0
	.uleb128 0x10
	.long	.LVL18
	.long	0x3b3
	.uleb128 0x11
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	.LC11
	.uleb128 0x11
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0xc
	.long	0x40000980
	.byte	0
	.uleb128 0x12
	.long	.LVL20
	.uleb128 0x11
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	.LC7
	.uleb128 0x11
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0xc
	.long	0x40000980
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF50
	.byte	0x1
	.byte	0x6c
	.long	.LFB4
	.long	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x568
	.uleb128 0x16
	.string	"buf"
	.byte	0x1
	.byte	0x7e
	.long	0x568
	.uleb128 0x17
	.long	.LASF39
	.byte	0x1
	.byte	0x7f
	.long	0x578
	.uleb128 0x17
	.long	.LASF40
	.byte	0x1
	.byte	0x80
	.long	0x96
	.uleb128 0x18
	.long	.LBB6
	.long	.LBE6
	.long	0x513
	.uleb128 0xe
	.long	.LASF41
	.byte	0x1
	.byte	0xb8
	.long	0x76
	.byte	0x5
	.byte	0x3
	.long	last_tick.4974
	.uleb128 0x19
	.long	.LASF42
	.byte	0x1
	.byte	0xb9
	.long	0x76
	.long	.LLST2
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0
	.long	0x457
	.uleb128 0xe
	.long	.LASF43
	.byte	0x1
	.byte	0xbe
	.long	0x6b
	.byte	0x5
	.byte	0x3
	.long	cnt1.4976
	.uleb128 0x12
	.long	.LVL44
	.uleb128 0x11
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LVL29
	.long	0x468
	.uleb128 0x11
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xa
	.short	0x3000
	.byte	0
	.uleb128 0x10
	.long	.LVL33
	.long	0x484
	.uleb128 0x11
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	.LC13
	.uleb128 0x11
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0xc
	.long	0x40000980
	.byte	0
	.uleb128 0x10
	.long	.LVL34
	.long	0x4a0
	.uleb128 0x11
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	.LC14
	.uleb128 0x11
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0xc
	.long	0x40000980
	.byte	0
	.uleb128 0x10
	.long	.LVL36
	.long	0x4bc
	.uleb128 0x11
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	.LC15
	.uleb128 0x11
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0xc
	.long	0x40000980
	.byte	0
	.uleb128 0x10
	.long	.LVL38
	.long	0x4d8
	.uleb128 0x11
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	.LC16
	.uleb128 0x11
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0xc
	.long	0x40000980
	.byte	0
	.uleb128 0x10
	.long	.LVL39
	.long	0x4e9
	.uleb128 0x11
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xa
	.short	0x3000
	.byte	0
	.uleb128 0x10
	.long	.LVL40
	.long	0x505
	.uleb128 0x11
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	.LC17
	.uleb128 0x11
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0xc
	.long	0x40000980
	.byte	0
	.uleb128 0x12
	.long	.LVL41
	.uleb128 0x11
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xa
	.short	0x3000
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LVL23
	.long	0x522
	.uleb128 0x11
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x10
	.long	.LVL24
	.long	0x531
	.uleb128 0x11
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x10
	.long	.LVL25
	.long	0x540
	.uleb128 0x11
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x10
	.long	.LVL26
	.long	0x54f
	.uleb128 0x11
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x12
	.long	.LVL27
	.uleb128 0x11
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	.LC12
	.uleb128 0x11
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0xc
	.long	0x40000980
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x76
	.long	0x578
	.uleb128 0x7
	.long	0xa6
	.byte	0xff
	.byte	0
	.uleb128 0x6
	.long	0x59
	.long	0x588
	.uleb128 0x7
	.long	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0x1b
	.long	.LASF44
	.byte	0x6
	.byte	0x5b
	.long	0x76
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF45
	.byte	0x1
	.byte	0x3b
	.long	0x17c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	g_runtime_param
	.byte	0
	.section .debug_abbrev
	.type	.debug_abbrev$scode_local_12, @function
	.debug_abbrev$scode_local_12:
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x4
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.type	.debug_loc$scode_local_13, @function
	.debug_loc$scode_local_13:
.Ldebug_loc0:
.LLST0:
	.long	.LVL3
	.long	.LVL4
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL9
	.long	.LVL10
	.short	0x1
	.byte	0x50
	.long	.LVL10
	.long	.LVL14
	.short	0x1
	.byte	0x57
	.long	.LVL14
	.long	.LVL15
	.short	0x1
	.byte	0x50
	.long	.LVL15
	.long	.LVL16-1
	.short	0x1
	.byte	0x52
	.long	.LVL19
	.long	.LFE3
	.short	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST2:
	.long	.LVL30
	.long	.LVL31
	.short	0x1
	.byte	0x50
	.long	.LVL42
	.long	.LVL43
	.short	0x1
	.byte	0x50
	.long	.LVL43
	.long	.LVL44-1
	.short	0x5
	.byte	0x3
	.long	last_tick.4974
	.long	0
	.long	0
	.section .debug_aranges
	.type	.debug_aranges$scode_local_14, @function
	.debug_aranges$scode_local_14:
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
	.type	.debug_ranges$scode_local_15, @function
	.debug_ranges$scode_local_15:
.Ldebug_ranges0:
	.long	.LBB7
	.long	.LBE7
	.long	.LBB8
	.long	.LBE8
	.long	0
	.long	0
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
	.type	.debug_line$scode_local_16, @function
	.debug_line$scode_local_16:
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
	.ascii	"E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Driver"
	.byte	0
	.ascii	"E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripher"
	.ascii	"als"
	.byte	0
	.byte	0
	.string	"main.c"
	.uleb128 0x1
	.uleb128 0
	.uleb128 0
	.string	"stdio.h"
	.uleb128 0x2
	.uleb128 0
	.uleb128 0
	.string	"stdint.h"
	.uleb128 0x2
	.uleb128 0
	.uleb128 0
	.string	"KF32_EVAL.h"
	.uleb128 0x1
	.uleb128 0
	.uleb128 0
	.string	"flash_eeprom.h"
	.uleb128 0x3
	.uleb128 0
	.uleb128 0
	.string	"system_init.h"
	.uleb128 0x4
	.uleb128 0
	.uleb128 0
	.byte	0
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM1
	.byte	0x36
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM2
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM3
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM4
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM5
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM6
	.byte	0x3
	.sleb128 -11
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x25
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM8
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM9
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM10
	.byte	0x18
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
	.long	.LM11
	.byte	0x54
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM12
	.byte	0x18
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
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM16
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM17
	.byte	0x18
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
	.byte	0x5d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM19
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM20
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM21
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM22
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM23
	.byte	0x3
	.sleb128 -15
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM24
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM25
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM26
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM27
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM28
	.byte	0x2d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM29
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM30
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM31
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM32
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM33
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM34
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM35
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM36
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM37
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM38
	.byte	0x3
	.sleb128 -26
	.byte	0x1
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
	.long	.LM39
	.byte	0x83
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
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM43
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM44
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM45
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM46
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM47
	.byte	0x37
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM48
	.byte	0x37
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM49
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM50
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM51
	.byte	0x3
	.sleb128 -25
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM52
	.byte	0x23
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM53
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM54
	.byte	0x3
	.sleb128 -24
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM55
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM56
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM57
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM58
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM59
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM60
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM61
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM62
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM63
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM64
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM65
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM66
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM67
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM68
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM69
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM70
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM71
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE4
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section .debug_str
	.type	.debug_str$scode_local_17, @function
	.debug_str$scode_local_17:
.LASF31:
	.string	"save_count"
.LASF44:
	.string	"SystemCoreClock"
.LASF48:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\KF32F330_EVAL\\\\Release"
.LASF22:
	.string	"EEPROM_ERR_SEC"
.LASF37:
	.string	"md5_flash_test"
.LASF4:
	.string	"STREAM"
.LASF35:
	.string	"runtime_param_t"
.LASF34:
	.string	"reserve"
.LASF43:
	.string	"cnt1"
.LASF21:
	.string	"EEPROM_ERR_PARAM"
.LASF41:
	.string	"last_tick"
.LASF3:
	.string	"signed char"
.LASF0:
	.string	"unsigned char"
.LASF49:
	.string	"runtime_param_set_default"
.LASF26:
	.string	"EEPROM_SEC_RUNTIME"
.LASF2:
	.string	"short unsigned int"
.LASF24:
	.string	"EEPROM_ERR_NO_SPACE"
.LASF20:
	.string	"EEPROM_OK"
.LASF32:
	.string	"brightness"
.LASF23:
	.string	"EEPROM_ERR_NO_DATA"
.LASF45:
	.string	"g_runtime_param"
.LASF50:
	.string	"main"
.LASF30:
	.string	"run_time"
.LASF28:
	.string	"EEPROM_SEC_CCT_TABLE"
.LASF1:
	.string	"unsigned int"
.LASF11:
	.string	"char"
.LASF5:
	.string	"uint8_t"
.LASF33:
	.string	"mode"
.LASF25:
	.string	"EEPROM_ERR_FLASH"
.LASF12:
	.string	"sizetype"
.LASF9:
	.string	"long long int"
.LASF39:
	.string	"iap_flg"
.LASF46:
	.string	"GNU C 4.7.0"
.LASF47:
	.string	"../main.c"
.LASF13:
	.string	"LED1"
.LASF14:
	.string	"LED2"
.LASF15:
	.string	"LED3"
.LASF6:
	.string	"short int"
.LASF7:
	.string	"uint16_t"
.LASF42:
	.string	"current_tick"
.LASF8:
	.string	"uint32_t"
.LASF16:
	.string	"EVAL_COM1"
.LASF17:
	.string	"EVAL_COM2"
.LASF18:
	.string	"EVAL_COM3"
.LASF19:
	.string	"EVAL_COM4"
.LASF36:
	.string	"md5_result"
.LASF38:
	.string	"runtime_param_test"
.LASF40:
	.string	"word_test"
.LASF29:
	.string	"EEPROM_SEC_OTA_FLAG"
.LASF27:
	.string	"EEPROM_SEC_FACTORY"
.LASF10:
	.string	"long long unsigned int"
	.ident	"GCC: (GNU) 4.7.0-Dec 25 2025-16:17:10"
