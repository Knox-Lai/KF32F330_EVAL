	.file	"system_init.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.section .text$SystemInit
	.type	.text$SystemInit$scode_local_1, @function
	.text$SystemInit$scode_local_1:
	.align	1
	.export	SystemInit
	.type	SystemInit, @function
SystemInit:
.LFB2:
.LM1:
	.cfi_startproc
	PUSH	{r6, lr}
	.cfi_def_cfa_offset 8
	SUB	sp,#4
	.cfi_def_cfa_offset 12
.LBB4:
.LBB5:
.LM2:
	MOV	r0,#1
	LJMP	OSC_INTLF_Software_Enable
.LVL0:
.LM3:
	MOV	r0,#1
	LJMP	OSC_INTHF_Software_Enable
.LVL1:
.LM4:
	MOV	r4,#196
	LD	r5,#1075839232
	ST.w	[r5+#5],r4
.LM5:
	MOV	r0,#0
	LJMP	OSC_SCK_Division_Config
.LVL2:
.LM6:
	MOV	r0,#0
	LJMP	OSC_SCK_Source_Config
.LVL3:
.LM7:
	MOV	r5,#112
	ST.w	[sp],r5
.LVL4:
.L2:
.LM8:
	LD.w	r5,[sp]
	SUB	r5,r5,#1
	ST.w	[sp],r5
	CMP	r5,#0
	JNZ	.L2
.L5:
.LM9:
	LJMP	OSC_Get_INTHF_INT_Flag
.LVL5:
	MOV	r6,r0
	CMP	r0,#1
	JNZ	.L5
.LM10:
	MOV	r0,#0
	LJMP	OSC_PLL_Input_Source_Config
.LVL6:
.LM11:
	MOV	r0,#36
	MOV	r1,#2
	MOV	r2,#4
	LJMP	OSC_PLL_Multiple_Value_Select
.LVL7:
.LM12:
	MOV	r0,#7
	LJMP	OSC_PLL_Start_Delay_Config
.LVL8:
.LM13:
	MOV	r0,r6
	LJMP	OSC_PLL_Software_Enable
.LVL9:
.LM14:
	LJMP	OSC_PLL_RST
.LVL10:
.L4:
.LM15:
	LJMP	OSC_Get_PLL_INT_Flag
.LVL11:
	MOV	r6,r0
	CMP	r0,#1
	JNZ	.L4
.LM16:
	MOV	r4,#195
	LD	r5,#1075839232
	ST.w	[r5+#5],r4
.LM17:
	MOV	r0,#0
	LJMP	OSC_SCK_Division_Config
.LVL12:
.LM18:
	MOV	r0,#4
	LJMP	OSC_SCK_Source_Config
.LVL13:
.LM19:
	MOV	r0,#0
	LJMP	OSC_HFCK_Division_Config
.LVL14:
.LM20:
	MOV	r0,#0
	LJMP	OSC_HFCK_Source_Config
.LVL15:
.LM21:
	MOV	r0,r6
	LJMP	OSC_HFCK_Enable
.LVL16:
.LM22:
	MOV	r0,#0
	LJMP	OSC_LFCK_Division_Config
.LVL17:
.LM23:
	MOV	r0,#0
	LJMP	OSC_LFCK_Source_Config
.LVL18:
.LM24:
	MOV	r0,r6
	LJMP	OSC_LFCK_Enable
.LVL19:
.LBE5:
.LBE4:
.LM25:
	ADD	sp,#4
	.cfi_def_cfa_offset 8
	POP	r6
	.cfi_def_cfa_offset 4
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
	.cfi_endproc
.LFE2:
	.size	SystemInit, .-SystemInit
	.section .text$SystemCoreClockUpdate
	.type	.text$SystemCoreClockUpdate$scode_local_2, @function
	.text$SystemCoreClockUpdate$scode_local_2:
	.align	1
	.export	SystemCoreClockUpdate
	.type	SystemCoreClockUpdate, @function
SystemCoreClockUpdate:
.LFB3:
.LM26:
	.cfi_startproc
.LVL20:
.LM27:
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r5,[r5]
.LVL21:
	LSR	r5,#1
.LVL22:
	MOV	r4,#7
	ANL	r5,r5,r4
.LVL23:
.LM28:
	CMP	r5,#6
	JLS	.L20
.LVL24:
.L11:
.LM29:
	LD	r4,#16000000
	LD	r5,#SystemCoreClock
	ST.w	[r5],r4
.LM30:
	JMP	lr
.LVL25:
.L20:
.LM31:
	LSL	r5,#2
.LVL26:
	LD	r4,#.L18
	LD.w	r5,[r4+r5]
	JMP	r5
	.align	2
	.align 2
.L18:
	.long	.L11
	.long	.L13
	.long	.L11
	.long	.L15
	.long	.L16
	.long	.L11
	.long	.L17
.L15:
.LM32:
	MOV	r4,#1
	LSL	r4,#15
	LD	r5,#SystemCoreClock
	ST.w	[r5],r4
.LM33:
	JMP	lr
.L17:
.LM34:
	LD	r4,#4000000
	LD	r5,#SystemCoreClock
	ST.w	[r5],r4
.LM35:
	JMP	lr
.L13:
.LM36:
	LD	r4,#32000
	LD	r5,#SystemCoreClock
	ST.w	[r5],r4
.LM37:
	JMP	lr
.L16:
.LM38:
	MOV	r4,#1
	LSL	r4,#30
	LD.w	r5,[r4]
.LM39:
	LD	r5,#1073751424
	LD.w	r0,[r5]
.LVL27:
.LM40:
	LD.w	r3,[r5]
.LVL28:
.LM41:
	LD.w	r2,[r5]
.LVL29:
.LM42:
	LD.w	r1,[r4]
.LVL30:
.LM43:
	MOV	r5,#16
	LSL	r4,r0,r5
	LSR	r4,#18
.LM44:
	LD	r0,#16000000
.LVL31:
	MULS	r4,r4,r0 ;
	NOP
.LM45:
	LSR	r2,#20
.LVL32:
	MOV	r5,#3
	ANL	r2,r2,r5
	MOV	r5,#1
	LSL	r2,r5,r2
.LVL33:
.LM46:
	LSR	r1,#16
.LVL34:
	MOV	r0,#7
	ANL	r1,r1,r0
	LSL	r5,r5,r1
.LVL35:
.LM47:
	MULS	r5,r2,r5 ;
	NOP
.LVL36:
.LM48:
	LSR	r3,#16
.LVL37:
	MOV	r2,#15
.LVL38:
	ANL	r3,r3,r2
.LVL39:
.LM49:
	MULS	r5,r5,r3 ;
	NOP
	DIVU	r5,r4,r5
	LD	r4,#SystemCoreClock
	ST.w	[r4],r5
.LM50:
	JMP	lr
	.cfi_endproc
.LFE3:
	.size	SystemCoreClockUpdate, .-SystemCoreClockUpdate
	.export	SystemCoreClock
	.section .data$init$SystemCoreClock
	.type	.data$init$SystemCoreClock$scode_local_3, @function
	.data$init$SystemCoreClock$scode_local_3:
	.align	2
	.type	SystemCoreClock, @object
	.size	SystemCoreClock, 4
SystemCoreClock:
	.long	72000000
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_4, @function
	.debug_info$scode_local_4:
.Ldebug_info0:
	.long	0x426
	.short	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF48
	.byte	0x1
	.long	.LASF49
	.long	.LASF50
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF4
	.uleb128 0x4
	.long	.LASF5
	.byte	0x2
	.byte	0x18
	.long	0x3e
	.uleb128 0x4
	.long	.LASF6
	.byte	0x2
	.byte	0x1a
	.long	0x30
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF9
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
	.byte	0x25
	.long	0x93
	.uleb128 0x6
	.long	.LASF10
	.sleb128 0
	.uleb128 0x6
	.long	.LASF11
	.sleb128 1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
	.byte	0x2d
	.long	0xa8
	.uleb128 0x6
	.long	.LASF12
	.sleb128 0
	.uleb128 0x7
	.string	"SET"
	.sleb128 1
	.byte	0
	.uleb128 0x8
	.long	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF13
	.uleb128 0x9
	.long	.LASF20
	.byte	0x18
	.byte	0x3
	.short	0x467
	.long	0x110
	.uleb128 0xa
	.long	.LASF14
	.byte	0x3
	.short	0x468
	.long	0xa8
	.byte	0
	.uleb128 0xa
	.long	.LASF15
	.byte	0x3
	.short	0x469
	.long	0xa8
	.byte	0x4
	.uleb128 0xb
	.string	"INT"
	.byte	0x3
	.short	0x46a
	.long	0xa8
	.byte	0x8
	.uleb128 0xa
	.long	.LASF16
	.byte	0x3
	.short	0x46b
	.long	0xa8
	.byte	0xc
	.uleb128 0xa
	.long	.LASF17
	.byte	0x3
	.short	0x46c
	.long	0xa8
	.byte	0x10
	.uleb128 0xa
	.long	.LASF18
	.byte	0x3
	.short	0x46d
	.long	0xa8
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.long	.LASF19
	.byte	0x3
	.short	0x46e
	.long	0xb4
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.byte	0x3
	.short	0x471
	.long	0x137
	.uleb128 0xb
	.string	"CTL"
	.byte	0x3
	.short	0x472
	.long	0xa8
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	.LASF22
	.byte	0x3
	.short	0x473
	.long	0x11c
	.uleb128 0x9
	.long	.LASF23
	.byte	0x50
	.byte	0x3
	.short	0x2fa4
	.long	0x22e
	.uleb128 0xa
	.long	.LASF24
	.byte	0x3
	.short	0x2fa5
	.long	0xa8
	.byte	0
	.uleb128 0xa
	.long	.LASF25
	.byte	0x3
	.short	0x2fa6
	.long	0xa8
	.byte	0x4
	.uleb128 0xa
	.long	.LASF26
	.byte	0x3
	.short	0x2fa7
	.long	0xa8
	.byte	0x8
	.uleb128 0xa
	.long	.LASF27
	.byte	0x3
	.short	0x2fa8
	.long	0xa8
	.byte	0xc
	.uleb128 0xa
	.long	.LASF28
	.byte	0x3
	.short	0x2fa9
	.long	0x5e
	.byte	0x10
	.uleb128 0xb
	.string	"CFG"
	.byte	0x3
	.short	0x2faa
	.long	0xa8
	.byte	0x14
	.uleb128 0xa
	.long	.LASF29
	.byte	0x3
	.short	0x2fab
	.long	0x5e
	.byte	0x18
	.uleb128 0xa
	.long	.LASF30
	.byte	0x3
	.short	0x2fac
	.long	0xa8
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF31
	.byte	0x3
	.short	0x2fad
	.long	0xa8
	.byte	0x20
	.uleb128 0xa
	.long	.LASF32
	.byte	0x3
	.short	0x2fae
	.long	0x5e
	.byte	0x24
	.uleb128 0xa
	.long	.LASF33
	.byte	0x3
	.short	0x2faf
	.long	0xa8
	.byte	0x28
	.uleb128 0xa
	.long	.LASF34
	.byte	0x3
	.short	0x2fb0
	.long	0xa8
	.byte	0x2c
	.uleb128 0xa
	.long	.LASF35
	.byte	0x3
	.short	0x2fb1
	.long	0xa8
	.byte	0x30
	.uleb128 0xa
	.long	.LASF36
	.byte	0x3
	.short	0x2fb2
	.long	0x5e
	.byte	0x34
	.uleb128 0xa
	.long	.LASF37
	.byte	0x3
	.short	0x2fb3
	.long	0xa8
	.byte	0x38
	.uleb128 0xa
	.long	.LASF38
	.byte	0x3
	.short	0x2fb4
	.long	0xa8
	.byte	0x3c
	.uleb128 0xa
	.long	.LASF39
	.byte	0x3
	.short	0x2fb5
	.long	0x23e
	.byte	0x40
	.byte	0
	.uleb128 0xd
	.long	0x5e
	.long	0x23e
	.uleb128 0xe
	.long	0xad
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	0x22e
	.uleb128 0xc
	.long	.LASF40
	.byte	0x3
	.short	0x2fb6
	.long	0x143
	.uleb128 0xf
	.long	.LASF51
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x1
	.long	0x268
	.uleb128 0x10
	.long	.LASF52
	.byte	0x1
	.byte	0x6e
	.long	0xa8
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF41
	.byte	0x1
	.byte	0xf2
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x39d
	.uleb128 0x12
	.long	0x24f
	.long	.LBB4
	.long	.LBE4
	.byte	0x1
	.byte	0xf5
	.uleb128 0x13
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x14
	.long	0x25c
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x15
	.long	.LVL0
	.long	0x2af
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x15
	.long	.LVL1
	.long	0x2be
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x15
	.long	.LVL2
	.long	0x2cd
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.long	.LVL3
	.long	0x2dc
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.long	.LVL6
	.long	0x2eb
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.long	.LVL7
	.long	0x305
	.uleb128 0x16
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x34
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x32
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.uleb128 0x15
	.long	.LVL8
	.long	0x314
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x37
	.byte	0
	.uleb128 0x15
	.long	.LVL9
	.long	0x324
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.long	.LVL12
	.long	0x333
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.long	.LVL13
	.long	0x342
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x15
	.long	.LVL14
	.long	0x351
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.long	.LVL15
	.long	0x360
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.long	.LVL16
	.long	0x370
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.long	.LVL17
	.long	0x37f
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.long	.LVL18
	.long	0x38e
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.long	.LVL19
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF42
	.byte	0x1
	.short	0x102
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x417
	.uleb128 0x19
	.string	"tmp"
	.byte	0x1
	.short	0x104
	.long	0x5e
	.long	.LLST0
	.uleb128 0x1a
	.long	.LASF43
	.byte	0x1
	.short	0x104
	.long	0x5e
	.long	.LLST1
	.uleb128 0x1a
	.long	.LASF44
	.byte	0x1
	.short	0x104
	.long	0x5e
	.long	.LLST2
	.uleb128 0x1a
	.long	.LASF45
	.byte	0x1
	.short	0x104
	.long	0x5e
	.long	.LLST3
	.uleb128 0x1a
	.long	.LASF46
	.byte	0x1
	.short	0x105
	.long	0x5e
	.long	.LLST4
	.uleb128 0x1b
	.long	.LASF47
	.byte	0x1
	.short	0x106
	.long	0x5e
	.long	0xf42400
	.byte	0
	.uleb128 0x1c
	.long	.LASF53
	.byte	0x1
	.byte	0x3b
	.long	0x5e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	SystemCoreClock
	.byte	0
	.section .debug_abbrev
	.type	.debug_abbrev$scode_local_5, @function
	.debug_abbrev$scode_local_5:
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x5
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
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
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
	.type	.debug_loc$scode_local_6, @function
	.debug_loc$scode_local_6:
.Ldebug_loc0:
.LLST0:
	.long	.LVL20
	.long	.LVL21
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL21
	.long	.LVL22
	.short	0x7
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.long	.LVL23
	.long	.LVL24
	.short	0x1
	.byte	0x55
	.long	.LVL25
	.long	.LVL26
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
.LLST1:
	.long	.LVL20
	.long	.LVL28
	.short	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL28
	.long	.LVL37
	.short	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.long	.LVL39
	.long	.LFE3
	.short	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST2:
	.long	.LVL20
	.long	.LVL27
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL27
	.long	.LVL31
	.short	0x9
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0xa
	.short	0x3fff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL20
	.long	.LVL29
	.short	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL29
	.long	.LVL32
	.short	0x9
	.byte	0x31
	.byte	0x72
	.sleb128 0
	.byte	0x44
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x24
	.byte	0x9f
	.long	.LVL33
	.long	.LVL38
	.short	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST4:
	.long	.LVL20
	.long	.LVL30
	.short	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL30
	.long	.LVL34
	.short	0x9
	.byte	0x31
	.byte	0x71
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x37
	.byte	0x1a
	.byte	0x24
	.byte	0x9f
	.long	.LVL35
	.long	.LVL36
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
	.section .debug_aranges
	.type	.debug_aranges$scode_local_7, @function
	.debug_aranges$scode_local_7:
	.long	0x24
	.short	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.short	0
	.short	0
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	0
	.long	0
	.section .debug_ranges
	.type	.debug_ranges$scode_local_8, @function
	.debug_ranges$scode_local_8:
.Ldebug_ranges0:
	.long	.LFB2
	.long	.LFE2
	.long	.LFB3
	.long	.LFE3
	.long	0
	.long	0
	.section .debug_line
	.type	.debug_line$scode_local_9, @function
	.debug_line$scode_local_9:
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
	.ascii	"../Peripherals"
	.byte	0
	.ascii	"D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys"
	.byte	0
	.ascii	"E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripher"
	.ascii	"als\\inc"
	.byte	0
	.byte	0
	.string	"system_init.c"
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
	.byte	0x3
	.sleb128 242
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM2
	.byte	0x3
	.sleb128 -126
	.byte	0x1
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
	.byte	0x19
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
	.byte	0x23
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM11
	.byte	0x4a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM12
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x21
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
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM17
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM18
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM19
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM20
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM21
	.byte	0x1b
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
	.byte	0x24
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
	.long	.LM26
	.byte	0x3
	.sleb128 258
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM27
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM28
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM29
	.byte	0x34
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM30
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM31
	.byte	0x3
	.sleb128 -32
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM32
	.byte	0x22
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM33
	.byte	0x2c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM34
	.byte	0x3
	.sleb128 -18
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM35
	.byte	0x29
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM36
	.byte	0x3
	.sleb128 -27
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM37
	.byte	0x32
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM38
	.byte	0x3
	.sleb128 -15
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM39
	.byte	0x1c
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
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM43
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM44
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM45
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM46
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM47
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM48
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM49
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM50
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE3
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section .debug_str
	.type	.debug_str$scode_local_10, @function
	.debug_str$scode_local_10:
.LASF52:
	.string	"StartUpCounter"
.LASF47:
	.string	"pllsource"
.LASF11:
	.string	"TRUE"
.LASF34:
	.string	"PROUNLOCK"
.LASF2:
	.string	"short unsigned int"
.LASF30:
	.string	"ISPADDR"
.LASF35:
	.string	"CFGUNLOCK"
.LASF28:
	.string	"RESERVED1"
.LASF29:
	.string	"RESERVED2"
.LASF32:
	.string	"RESERVED3"
.LASF36:
	.string	"RESERVED4"
.LASF17:
	.string	"HFOSCCAL0"
.LASF14:
	.string	"CTL0"
.LASF15:
	.string	"CTL1"
.LASF16:
	.string	"CTL2"
.LASF0:
	.string	"unsigned char"
.LASF39:
	.string	"CSRES"
.LASF20:
	.string	"OSC_MemMap"
.LASF31:
	.string	"STATE"
.LASF12:
	.string	"RESET"
.LASF27:
	.string	"ISPTRG"
.LASF40:
	.string	"FLASH_SFRmap"
.LASF10:
	.string	"FALSE"
.LASF22:
	.string	"PLL_SFRmap"
.LASF18:
	.string	"HFOSCCAL1"
.LASF50:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\KF32F330_EVAL\\\\Release"
.LASF23:
	.string	"FLASH_MemMap"
.LASF4:
	.string	"short int"
.LASF44:
	.string	"pll_m"
.LASF1:
	.string	"unsigned int"
.LASF42:
	.string	"SystemCoreClockUpdate"
.LASF9:
	.string	"char"
.LASF51:
	.string	"SetSysClock"
.LASF24:
	.string	"ISPCON0"
.LASF25:
	.string	"ISPCON1"
.LASF45:
	.string	"pll_no"
.LASF41:
	.string	"SystemInit"
.LASF53:
	.string	"SystemCoreClock"
.LASF13:
	.string	"sizetype"
.LASF38:
	.string	"CSSTOP"
.LASF49:
	.string	"../Peripherals/system_init.c"
.LASF7:
	.string	"long long int"
.LASF48:
	.string	"GNU C 4.7.0"
.LASF46:
	.string	"sckdivfactor"
.LASF21:
	.string	"PLL_MemMap"
.LASF5:
	.string	"uint16_t"
.LASF26:
	.string	"ISPCMD"
.LASF43:
	.string	"pll_n"
.LASF6:
	.string	"uint32_t"
.LASF3:
	.string	"signed char"
.LASF37:
	.string	"CSSTART"
.LASF8:
	.string	"long long unsigned int"
.LASF33:
	.string	"NVMUNLOCK"
.LASF19:
	.string	"OSC_SFRmap"
	.ident	"GCC: (GNU) 4.7.0-Dec 25 2025-16:17:10"
