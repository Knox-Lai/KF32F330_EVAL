	.file	"bsp_systick.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.section .text$systick_timer_init
	.type	.text$systick_timer_init$scode_local_1, @function
	.text$systick_timer_init$scode_local_1:
	.align	1
	.export	systick_timer_init
	.type	systick_timer_init, @function
systick_timer_init:
.LFB1:
.LM1:
	.cfi_startproc
.LVL0:
	PUSH	lr
	.cfi_def_cfa_offset 4
	MOV	r2,r0
.LM2:
	MOV	r0,#4
.LVL1:
	MOV	r1,#1
	LJMP	SYSTICK_Configuration
.LVL2:
.LM3:
	MOV	r0,#1
	LJMP	SYSTICK_Cmd
.LVL3:
.LM4:
	MOV	r0,#15
	MOV	r1,#1
	LJMP	INT_Interrupt_Enable
.LVL4:
.LM5:
	MOV	r0,#1
	LJMP	INT_All_Enable
.LVL5:
.LM6:
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
	.cfi_endproc
.LFE1:
	.size	systick_timer_init, .-systick_timer_init
	.section .text$systick_tick_cnt_up
	.type	.text$systick_tick_cnt_up$scode_local_2, @function
	.text$systick_tick_cnt_up$scode_local_2:
	.align	1
	.export	systick_tick_cnt_up
	.type	systick_tick_cnt_up, @function
systick_tick_cnt_up:
.LFB2:
.LM7:
	.cfi_startproc
.LM8:
	LD	r5,#systick_tick_count
	LD.w	r4,[r5]
	ADD	r4,r4,#1
	ST.w	[r5],r4
.LM9:
	JMP	lr
	.cfi_endproc
.LFE2:
	.size	systick_tick_cnt_up, .-systick_tick_cnt_up
	.section .text$systick_tick_get
	.type	.text$systick_tick_get$scode_local_3, @function
	.text$systick_tick_get$scode_local_3:
	.align	1
	.export	systick_tick_get
	.type	systick_tick_get, @function
systick_tick_get:
.LFB3:
.LM10:
	.cfi_startproc
.LM11:
	LD	r5,#systick_tick_count
	LD.w	r0,[r5]
.LM12:
	JMP	lr
	.cfi_endproc
.LFE3:
	.size	systick_tick_get, .-systick_tick_get
	.section .text$systick_delay_init
	.type	.text$systick_delay_init$scode_local_4, @function
	.text$systick_delay_init$scode_local_4:
	.align	1
	.export	systick_delay_init
	.type	systick_delay_init, @function
systick_delay_init:
.LFB4:
.LM13:
	.cfi_startproc
	PUSH	lr
	.cfi_def_cfa_offset 4
.LM14:
	MOV	r0,#0
	LJMP	SYSTICK_Cmd
.LVL6:
.LM15:
	MOV	r0,#4
	LJMP	SYSTICK_Clock_Config
.LVL7:
.LM16:
	LD	r5,#1075839148
// inline asm begin
	// 37 "../BSP/bsp_systick.c" 1
	CLR [r5], #31
	// 0 "" 2
.LM17:
// inline asm end
	LD	r5,#SystemCoreClock
	LD.w	r4,[r5]
	LD	r5,#1000000
	DIVU	r5,r4,r5
	ZXT.b	r5,r5
	LD	r4,#fac_us
	ST.b	[r4],r5
.LM18:
	LD	r4,#1000
	MULS	r5,r5,r4 ;
	NOP
	LD	r4,#fac_ms
	ST.h	[r4],r5
.LM19:
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
	.cfi_endproc
.LFE4:
	.size	systick_delay_init, .-systick_delay_init
	.export	fac_ms
	.section .bss$comm$fac_ms
	.type	.bss$comm$fac_ms$scode_local_5, @function
	.bss$comm$fac_ms$scode_local_5:
	.align	1
	.type	fac_ms, @object
	.size	fac_ms, 2
fac_ms:
	.fill 2, 1
	.export	fac_us
	.section .bss$comm$fac_us
	.type	.bss$comm$fac_us$scode_local_6, @function
	.bss$comm$fac_us$scode_local_6:
	.type	fac_us, @object
	.size	fac_us, 1
fac_us:
	.fill 1, 1
	.section .bss$data.static$systick_tick_count
	.type	.bss$data.static$systick_tick_count$scode_local_7, @function
	.bss$data.static$systick_tick_count$scode_local_7:
	.align	2
	.type	systick_tick_count, @object
	.size	systick_tick_count, 4
systick_tick_count:
	.fill 4, 1
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_8, @function
	.debug_info$scode_local_8:
.Ldebug_info0:
	.long	0x434
	.short	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF110
	.byte	0x1
	.long	.LASF111
	.long	.LASF112
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x3
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
	.uleb128 0x4
	.long	.LASF5
	.byte	0x2
	.byte	0x16
	.long	0x29
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF4
	.uleb128 0x4
	.long	.LASF6
	.byte	0x2
	.byte	0x18
	.long	0x3e
	.uleb128 0x4
	.long	.LASF7
	.byte	0x2
	.byte	0x1a
	.long	0x30
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF10
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
	.byte	0x25
	.long	0x9e
	.uleb128 0x6
	.long	.LASF11
	.sleb128 0
	.uleb128 0x6
	.long	.LASF12
	.sleb128 1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
	.byte	0x45
	.long	0x2cc
	.uleb128 0x6
	.long	.LASF13
	.sleb128 0
	.uleb128 0x6
	.long	.LASF14
	.sleb128 1
	.uleb128 0x6
	.long	.LASF15
	.sleb128 2
	.uleb128 0x6
	.long	.LASF16
	.sleb128 3
	.uleb128 0x6
	.long	.LASF17
	.sleb128 4
	.uleb128 0x6
	.long	.LASF18
	.sleb128 5
	.uleb128 0x6
	.long	.LASF19
	.sleb128 6
	.uleb128 0x6
	.long	.LASF20
	.sleb128 7
	.uleb128 0x6
	.long	.LASF21
	.sleb128 8
	.uleb128 0x6
	.long	.LASF22
	.sleb128 9
	.uleb128 0x6
	.long	.LASF23
	.sleb128 10
	.uleb128 0x6
	.long	.LASF24
	.sleb128 11
	.uleb128 0x6
	.long	.LASF25
	.sleb128 12
	.uleb128 0x6
	.long	.LASF26
	.sleb128 13
	.uleb128 0x6
	.long	.LASF27
	.sleb128 14
	.uleb128 0x6
	.long	.LASF28
	.sleb128 15
	.uleb128 0x6
	.long	.LASF29
	.sleb128 16
	.uleb128 0x6
	.long	.LASF30
	.sleb128 17
	.uleb128 0x6
	.long	.LASF31
	.sleb128 18
	.uleb128 0x6
	.long	.LASF32
	.sleb128 19
	.uleb128 0x6
	.long	.LASF33
	.sleb128 20
	.uleb128 0x6
	.long	.LASF34
	.sleb128 21
	.uleb128 0x6
	.long	.LASF35
	.sleb128 22
	.uleb128 0x6
	.long	.LASF36
	.sleb128 23
	.uleb128 0x6
	.long	.LASF37
	.sleb128 24
	.uleb128 0x6
	.long	.LASF38
	.sleb128 25
	.uleb128 0x6
	.long	.LASF39
	.sleb128 26
	.uleb128 0x6
	.long	.LASF40
	.sleb128 27
	.uleb128 0x6
	.long	.LASF41
	.sleb128 28
	.uleb128 0x6
	.long	.LASF42
	.sleb128 29
	.uleb128 0x6
	.long	.LASF43
	.sleb128 29
	.uleb128 0x6
	.long	.LASF44
	.sleb128 29
	.uleb128 0x6
	.long	.LASF45
	.sleb128 30
	.uleb128 0x6
	.long	.LASF46
	.sleb128 31
	.uleb128 0x6
	.long	.LASF47
	.sleb128 32
	.uleb128 0x6
	.long	.LASF48
	.sleb128 33
	.uleb128 0x6
	.long	.LASF49
	.sleb128 34
	.uleb128 0x6
	.long	.LASF50
	.sleb128 35
	.uleb128 0x6
	.long	.LASF51
	.sleb128 36
	.uleb128 0x6
	.long	.LASF52
	.sleb128 37
	.uleb128 0x6
	.long	.LASF53
	.sleb128 38
	.uleb128 0x6
	.long	.LASF54
	.sleb128 39
	.uleb128 0x6
	.long	.LASF55
	.sleb128 40
	.uleb128 0x6
	.long	.LASF56
	.sleb128 41
	.uleb128 0x6
	.long	.LASF57
	.sleb128 42
	.uleb128 0x6
	.long	.LASF58
	.sleb128 43
	.uleb128 0x6
	.long	.LASF59
	.sleb128 44
	.uleb128 0x6
	.long	.LASF60
	.sleb128 45
	.uleb128 0x6
	.long	.LASF61
	.sleb128 46
	.uleb128 0x6
	.long	.LASF62
	.sleb128 47
	.uleb128 0x6
	.long	.LASF63
	.sleb128 48
	.uleb128 0x6
	.long	.LASF64
	.sleb128 49
	.uleb128 0x6
	.long	.LASF65
	.sleb128 50
	.uleb128 0x6
	.long	.LASF66
	.sleb128 51
	.uleb128 0x6
	.long	.LASF67
	.sleb128 52
	.uleb128 0x6
	.long	.LASF68
	.sleb128 53
	.uleb128 0x6
	.long	.LASF69
	.sleb128 54
	.uleb128 0x6
	.long	.LASF70
	.sleb128 55
	.uleb128 0x6
	.long	.LASF71
	.sleb128 56
	.uleb128 0x6
	.long	.LASF72
	.sleb128 56
	.uleb128 0x6
	.long	.LASF73
	.sleb128 57
	.uleb128 0x6
	.long	.LASF74
	.sleb128 58
	.uleb128 0x6
	.long	.LASF75
	.sleb128 59
	.uleb128 0x6
	.long	.LASF76
	.sleb128 60
	.uleb128 0x6
	.long	.LASF77
	.sleb128 61
	.uleb128 0x6
	.long	.LASF78
	.sleb128 62
	.uleb128 0x6
	.long	.LASF79
	.sleb128 63
	.uleb128 0x6
	.long	.LASF80
	.sleb128 64
	.uleb128 0x6
	.long	.LASF81
	.sleb128 65
	.uleb128 0x6
	.long	.LASF82
	.sleb128 66
	.uleb128 0x6
	.long	.LASF83
	.sleb128 67
	.uleb128 0x6
	.long	.LASF84
	.sleb128 68
	.uleb128 0x6
	.long	.LASF85
	.sleb128 69
	.uleb128 0x6
	.long	.LASF86
	.sleb128 70
	.uleb128 0x6
	.long	.LASF87
	.sleb128 71
	.uleb128 0x6
	.long	.LASF88
	.sleb128 72
	.uleb128 0x6
	.long	.LASF89
	.sleb128 72
	.uleb128 0x6
	.long	.LASF90
	.sleb128 73
	.uleb128 0x6
	.long	.LASF91
	.sleb128 73
	.uleb128 0x6
	.long	.LASF92
	.sleb128 73
	.uleb128 0x6
	.long	.LASF93
	.sleb128 73
	.uleb128 0x6
	.long	.LASF94
	.sleb128 73
	.uleb128 0x6
	.long	.LASF95
	.sleb128 74
	.uleb128 0x6
	.long	.LASF96
	.sleb128 75
	.uleb128 0x6
	.long	.LASF97
	.sleb128 76
	.uleb128 0x6
	.long	.LASF98
	.sleb128 77
	.uleb128 0x6
	.long	.LASF99
	.sleb128 78
	.uleb128 0x6
	.long	.LASF100
	.sleb128 79
	.byte	0
	.uleb128 0x7
	.long	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF101
	.uleb128 0x8
	.long	.LASF113
	.byte	0x10
	.byte	0x3
	.short	0x1269
	.long	0x319
	.uleb128 0x9
	.string	"CTL"
	.byte	0x3
	.short	0x126a
	.long	0x2cc
	.byte	0
	.uleb128 0xa
	.long	.LASF102
	.byte	0x3
	.short	0x126b
	.long	0x2cc
	.byte	0x4
	.uleb128 0x9
	.string	"CV"
	.byte	0x3
	.short	0x126c
	.long	0x2cc
	.byte	0x8
	.uleb128 0xa
	.long	.LASF103
	.byte	0x3
	.short	0x126d
	.long	0x2cc
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	.LASF104
	.byte	0x3
	.short	0x126e
	.long	0x2d8
	.uleb128 0xc
	.byte	0x1
	.long	.LASF105
	.byte	0x1
	.byte	0x5
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x396
	.uleb128 0xd
	.long	.LASF114
	.byte	0x1
	.byte	0x5
	.long	0x69
	.long	.LLST0
	.uleb128 0xe
	.long	.LVL2
	.long	0x367
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0xe
	.long	.LVL3
	.long	0x376
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xe
	.long	.LVL4
	.long	0x38a
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x10
	.long	.LVL5
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF115
	.byte	0x1
	.byte	0xd
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.long	.LASF116
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.long	0x69
	.long	.LFB3
	.long	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.long	.LASF106
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x3f5
	.uleb128 0xe
	.long	.LVL6
	.long	0x3e9
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x10
	.long	.LVL7
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	.LASF117
	.byte	0x1
	.byte	0x3
	.long	0x2cc
	.byte	0x5
	.byte	0x3
	.long	systick_tick_count
	.uleb128 0x14
	.long	.LASF107
	.byte	0x4
	.byte	0x5b
	.long	0x69
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.long	.LASF108
	.byte	0x1
	.byte	0x19
	.long	0x4c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	fac_us
	.uleb128 0x15
	.long	.LASF109
	.byte	0x1
	.byte	0x1a
	.long	0x5e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	fac_ms
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
	.uleb128 0xe
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
	.uleb128 0x8
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.long	.LVL0
	.long	.LVL1
	.short	0x1
	.byte	0x50
	.long	.LVL1
	.long	.LVL2-1
	.short	0x1
	.byte	0x52
	.long	.LVL2-1
	.long	.LFE1
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
	.type	.debug_ranges$scode_local_12, @function
	.debug_ranges$scode_local_12:
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
	.ascii	"../BSP"
	.byte	0
	.ascii	"D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys"
	.byte	0
	.ascii	"E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripher"
	.ascii	"als"
	.byte	0
	.ascii	"E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripher"
	.ascii	"als\\inc"
	.byte	0
	.byte	0
	.string	"bsp_systick.c"
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
	.string	"system_init.h"
	.uleb128 0x3
	.uleb128 0
	.uleb128 0
	.byte	0
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM1
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM2
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM3
	.byte	0x18
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
	.long	.LFE1
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM7
	.byte	0x24
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
	.long	.LFE2
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM10
	.byte	0x29
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM11
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM12
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
	.long	.LM13
	.byte	0x38
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
	.long	.LM18
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM19
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
	.type	.debug_str$scode_local_14, @function
	.debug_str$scode_local_14:
.LASF42:
	.string	"INT_QEI"
.LASF11:
	.string	"FALSE"
.LASF67:
	.string	"INT_T9"
.LASF55:
	.string	"INT_LCD"
.LASF105:
	.string	"systick_timer_init"
.LASF95:
	.string	"INT_T20"
.LASF96:
	.string	"INT_T21"
.LASF13:
	.string	"INT_Initial_SP"
.LASF56:
	.string	"INT_T0"
.LASF38:
	.string	"INT_T1"
.LASF77:
	.string	"INT_T2"
.LASF14:
	.string	"INT_Reset"
.LASF78:
	.string	"INT_T4"
.LASF40:
	.string	"INT_T5"
.LASF41:
	.string	"INT_T6"
.LASF43:
	.string	"INT_T7"
.LASF44:
	.string	"INT_T8"
.LASF28:
	.string	"INT_SysTick"
.LASF101:
	.string	"sizetype"
.LASF114:
	.string	"Reload"
.LASF65:
	.string	"INT_CAN0"
.LASF66:
	.string	"INT_CAN1"
.LASF31:
	.string	"INT_EINT0"
.LASF32:
	.string	"INT_EINT1"
.LASF33:
	.string	"INT_EINT2"
.LASF34:
	.string	"INT_EINT3"
.LASF35:
	.string	"INT_EINT4"
.LASF68:
	.string	"INT_T10"
.LASF48:
	.string	"INT_T14"
.LASF5:
	.string	"uint8_t"
.LASF61:
	.string	"INT_SPI0"
.LASF62:
	.string	"INT_SPI1"
.LASF83:
	.string	"INT_SPI2"
.LASF84:
	.string	"INT_SPI3"
.LASF60:
	.string	"INT_USART1"
.LASF80:
	.string	"INT_USART2"
.LASF81:
	.string	"INT_USART3"
.LASF82:
	.string	"INT_USART4"
.LASF29:
	.string	"INT_WWDT"
.LASF99:
	.string	"INT_USART6"
.LASF100:
	.string	"INT_USART7"
.LASF4:
	.string	"short int"
.LASF30:
	.string	"INT_EINT16"
.LASF19:
	.string	"INT_AriFault"
.LASF18:
	.string	"INT_StackFault"
.LASF8:
	.string	"long long int"
.LASF37:
	.string	"INT_EINT15TO10"
.LASF109:
	.string	"fac_ms"
.LASF52:
	.string	"INT_ADC0"
.LASF53:
	.string	"INT_ADC1"
.LASF16:
	.string	"INT_HardFault"
.LASF104:
	.string	"SYSTICK_SFRmap"
.LASF117:
	.string	"systick_tick_count"
.LASF24:
	.string	"INT_SVCAll"
.LASF7:
	.string	"uint32_t"
.LASF15:
	.string	"INT_NMI"
.LASF0:
	.string	"unsigned char"
.LASF88:
	.string	"INT_T22"
.LASF89:
	.string	"INT_T23"
.LASF111:
	.string	"../BSP/bsp_systick.c"
.LASF3:
	.string	"signed char"
.LASF74:
	.string	"INT_I2C1"
.LASF9:
	.string	"long long unsigned int"
.LASF97:
	.string	"INT_I2C3"
.LASF49:
	.string	"INT_T15"
.LASF1:
	.string	"unsigned int"
.LASF110:
	.string	"GNU C 4.7.0"
.LASF86:
	.string	"INT_T18"
.LASF46:
	.string	"INT_CAN3"
.LASF87:
	.string	"INT_T19"
.LASF47:
	.string	"INT_CAN4"
.LASF63:
	.string	"INT_DMA1"
.LASF50:
	.string	"INT_CAN5"
.LASF113:
	.string	"SYSTICK_MemMap"
.LASF2:
	.string	"short unsigned int"
.LASF36:
	.string	"INT_EINT9TO5"
.LASF103:
	.string	"CALI"
.LASF10:
	.string	"char"
.LASF6:
	.string	"uint16_t"
.LASF58:
	.string	"INT_CMP"
.LASF57:
	.string	"INT_DMA0"
.LASF72:
	.string	"INT_CLK"
.LASF108:
	.string	"fac_us"
.LASF107:
	.string	"SystemCoreClock"
.LASF69:
	.string	"INT_EINT21TO20"
.LASF70:
	.string	"INT_EINT31TO22"
.LASF90:
	.string	"INT_WKP0"
.LASF91:
	.string	"INT_WKP1"
.LASF92:
	.string	"INT_WKP2"
.LASF93:
	.string	"INT_WKP3"
.LASF94:
	.string	"INT_WKP4"
.LASF112:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\KF32F330_EVAL\\\\Release"
.LASF115:
	.string	"systick_tick_cnt_up"
.LASF79:
	.string	"INT_CTOUCH"
.LASF51:
	.string	"INT_EXIC"
.LASF76:
	.string	"INT_USB"
.LASF64:
	.string	"INT_EINT19TO17"
.LASF116:
	.string	"systick_tick_get"
.LASF73:
	.string	"INT_I2C0"
.LASF75:
	.string	"INT_I2C2"
.LASF102:
	.string	"RELOAD"
.LASF54:
	.string	"INT_CFGL"
.LASF23:
	.string	"INT_Reserved10"
.LASF85:
	.string	"INT_ADC2"
.LASF25:
	.string	"INT_Reserved12"
.LASF26:
	.string	"INT_Reserved13"
.LASF39:
	.string	"INT_T3"
.LASF59:
	.string	"INT_USART0"
.LASF106:
	.string	"systick_delay_init"
.LASF12:
	.string	"TRUE"
.LASF98:
	.string	"INT_USART5"
.LASF27:
	.string	"INT_SoftSV"
.LASF45:
	.string	"INT_CAN2"
.LASF71:
	.string	"INT_OSC"
.LASF17:
	.string	"INT_Reserved4"
.LASF20:
	.string	"INT_Reserved7"
.LASF21:
	.string	"INT_Reserved8"
.LASF22:
	.string	"INT_Reserved9"
	.ident	"GCC: (GNU) 4.7.0-Dec 25 2025-16:17:10"
