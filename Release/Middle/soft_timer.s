	.file	"soft_timer.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.section .text$softtimer_tick_get
	.type	.text$softtimer_tick_get$scode_local_1, @function
	.text$softtimer_tick_get$scode_local_1:
	.align	1
	.export	softtimer_tick_get
	.type	softtimer_tick_get, @function
softtimer_tick_get:
.LFB0:
.LM1:
	.cfi_startproc
.LM2:
	LD	r5,#cur_date
	LD.w	r0,[r5]
	JMP	lr
	.cfi_endproc
.LFE0:
	.size	softtimer_tick_get, .-softtimer_tick_get
	.section .text$softtimer_tick_cnt_up
	.type	.text$softtimer_tick_cnt_up$scode_local_2, @function
	.text$softtimer_tick_cnt_up$scode_local_2:
	.align	1
	.export	softtimer_tick_cnt_up
	.type	softtimer_tick_cnt_up, @function
softtimer_tick_cnt_up:
.LFB1:
.LM3:
	.cfi_startproc
.LM4:
	LD	r5,#cur_date
	LD.w	r3,[r5]
	ADD	r4,r3,#1
	ST.w	[r5],r4
.LM5:
	JMP	lr
	.cfi_endproc
.LFE1:
	.size	softtimer_tick_cnt_up, .-softtimer_tick_cnt_up
	.section .text$SOFTTIMER_getTimeoutValue
	.type	.text$SOFTTIMER_getTimeoutValue$scode_local_3, @function
	.text$SOFTTIMER_getTimeoutValue$scode_local_3:
	.align	1
	.export	SOFTTIMER_getTimeoutValue
	.type	SOFTTIMER_getTimeoutValue, @function
SOFTTIMER_getTimeoutValue:
.LFB2:
.LM6:
	.cfi_startproc
.LVL0:
	ZXT.b	r0,r0
.LM7:
	LSL	r0,#4
.LVL1:
.LM8:
	LD	r5,#timeTable
	LD.w	r0,[r5+r0]
	JMP	lr
	.cfi_endproc
.LFE2:
	.size	SOFTTIMER_getTimeoutValue, .-SOFTTIMER_getTimeoutValue
	.section .text$SOFTTIMER_setTimeoutValue
	.type	.text$SOFTTIMER_setTimeoutValue$scode_local_4, @function
	.text$SOFTTIMER_setTimeoutValue$scode_local_4:
	.align	1
	.export	SOFTTIMER_setTimeoutValue
	.type	SOFTTIMER_setTimeoutValue, @function
SOFTTIMER_setTimeoutValue:
.LFB3:
.LM9:
	.cfi_startproc
.LVL2:
	ZXT.b	r0,r0
.LM10:
	LD	r4,#cur_date
	LD.w	r3,[r4]
	ADD	r1,r1,r3
.LVL3:
	LD	r5,#timeTable
	LSL	r0,#4
.LVL4:
	ADD	r3,r5,r0
	ST.w	[r5+r0],r1
.LM11:
	LD	r2,#86399999
.LM12:
	LD.h	r4,[r4+#2]
.LM13:
	CMP	r1,r2
	JHI	.L8
.LM14:
	ST.h	[r3+#4],r4
.LM15:
	JMP	lr
.L8:
.LM16:
	ADD	r4,r4,#1
	ST.h	[r3+#4],r4
.LM17:
	LD	r4,#86400000
	SUB	r1,r1,r4
	ST.w	[r5+r0],r1
.LM18:
	JMP	lr
	.cfi_endproc
.LFE3:
	.size	SOFTTIMER_setTimeoutValue, .-SOFTTIMER_setTimeoutValue
	.section .text$SOFTTIMER_start
	.type	.text$SOFTTIMER_start$scode_local_5, @function
	.text$SOFTTIMER_start$scode_local_5:
	.align	1
	.export	SOFTTIMER_start
	.type	SOFTTIMER_start, @function
SOFTTIMER_start:
.LFB4:
.LM19:
	.cfi_startproc
.LVL5:
	ZXT.b	r0,r0
.LM20:
	LSL	r0,#4
.LVL6:
	LD	r5,#timeTable+8
	ADD	r0,r0,r5
	MOV	r5,#1
	ST.b	[r0+#2],r5
.LM21:
	JMP	lr
	.cfi_endproc
.LFE4:
	.size	SOFTTIMER_start, .-SOFTTIMER_start
	.section .text$SOFTTIMER_suspend
	.type	.text$SOFTTIMER_suspend$scode_local_6, @function
	.text$SOFTTIMER_suspend$scode_local_6:
	.align	1
	.export	SOFTTIMER_suspend
	.type	SOFTTIMER_suspend, @function
SOFTTIMER_suspend:
.LFB5:
.LM22:
	.cfi_startproc
.LVL7:
	ZXT.b	r0,r0
.LM23:
	LSL	r0,#4
.LVL8:
	LD	r5,#timeTable+8
	ADD	r0,r0,r5
	MOV	r5,#0
	ST.b	[r0+#2],r5
.LM24:
	JMP	lr
	.cfi_endproc
.LFE5:
	.size	SOFTTIMER_suspend, .-SOFTTIMER_suspend
	.section .rodata.str1.4
	.type	.rodata.str1.4$scode_local_7, @function
	.rodata.str1.4$scode_local_7:
	.align	2
.LC0:
	.string	"register timer%d successfully\r\n"
	.align	2
.LC1:
	.string	"register failed\r\n"
	.section .text$SOFTTIMER_register
	.type	.text$SOFTTIMER_register$scode_local_8, @function
	.text$SOFTTIMER_register$scode_local_8:
	.align	1
	.export	SOFTTIMER_register
	.type	SOFTTIMER_register, @function
SOFTTIMER_register:
.LFB6:
.LM25:
	.cfi_startproc
.LVL9:
	PUSH	{r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 20
	ZXT.b	r0,r0
.LM26:
	MOV	r6,#255
.LM27:
	LD	r5,#86400000
	CMP	r1,r5
	JLS	.L19
.LVL10:
.L12:
.LM28:
	MOV	r0,r6
	POP	{r6, r7, r8, r9}
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
.LVL11:
.L19:
	.cfi_restore_state
	LD	r4,#timeTable+10
.LM29:
	MOV	r5,#0
.L16:
	ZXT.b	r6,r5
.LM30:
	LD.b	r3,[r4]
	CMP	r3,#0
	JZ	.L20
.LVL12:
	ADD	r5,r5,#1
	ADD	r4,#16
.LM31:
	CMP	r5,#5
	JNZ	.L16
.LM32:
	LD	r0,#1073744256
	LD	r1,#.LC1
.LVL13:
	LJMP	fprintf
.LVL14:
.LM33:
	MOV	r6,#255
.LM34:
	MOV	r0,r6
	POP	{r6, r7, r8, r9}
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
.LVL15:
.L20:
	.cfi_restore_state
.LM35:
	LD	r3,#timeTable
	MOV	r9,r3
	MOV	r7,#4
	LSL	r4,r5,r7
	ADD	r7,r3,r4
	ST.b	[r7+#11],r0
.LM36:
	ST.w	[r7+#1],r1
.LM37:
	LD	r0,#cur_date
	LD.w	r3,[r0]
	ADD	r1,r1,r3
.LVL16:
	MOV	r3,r9
	ST.w	[r3+r4],r1
.LM38:
	LD	r3,#86399999
.LM39:
	LD.h	r0,[r0+#2]
.LM40:
	CMP	r1,r3
	JHI	.L21
.LM41:
	ST.h	[r7+#4],r0
.LVL17:
.L15:
.LM42:
	ADD	r4,r9
.LVL18:
	ST.w	[r4+#3],r2
.LM43:
	MOV	r3,#1
	ST.b	[r4+#10],r3
.LM44:
	LD	r0,#1073744256
	LD	r1,#.LC0
	MOV	r2,r5
.LVL19:
	LJMP	fprintf
.LVL20:
.LM45:
	JMP	.L12
.LVL21:
.L21:
.LM46:
	ADD	r0,r0,#1
	ST.h	[r7+#4],r0
.LM47:
	LD	r0,#86400000
	SUB	r1,r1,r0
	MOV	r7,r9
.LVL22:
	ST.w	[r7+r4],r1
	JMP	.L15
	.cfi_endproc
.LFE6:
	.size	SOFTTIMER_register, .-SOFTTIMER_register
	.section .rodata.str1.4
	.type	.rodata.str1.4$scode_local_9, @function
	.rodata.str1.4$scode_local_9:
	.align	2
.LC2:
	.string	"unregister timer%d\r\n"
	.section .text$SOFTTIMER_unregister
	.type	.text$SOFTTIMER_unregister$scode_local_10, @function
	.text$SOFTTIMER_unregister$scode_local_10:
	.align	1
	.export	SOFTTIMER_unregister
	.type	SOFTTIMER_unregister, @function
SOFTTIMER_unregister:
.LFB7:
.LM48:
	.cfi_startproc
.LVL23:
	PUSH	{r6, r7, lr}
	.cfi_def_cfa_offset 12
	MOV	r6,r0
.LM49:
	MOV	r7,#255
	LD.b	r5,[r0]
	CMP	r5,r7
	JZ	.L22
.LM50:
	LD	r0,#1073744256
.LVL24:
	LD	r1,#.LC2
	MOV	r2,r6
	LJMP	fprintf
.LVL25:
.LM51:
	LD	r4,#timeTable
	LD.b	r3,[r6]
	LSL	r3,#4
	ADD	r3,r4,r3
	MOV	r5,#0
	ST.b	[r3+#11],r5
.LM52:
	LD.b	r3,[r6]
	LSL	r3,#4
	ST.w	[r4+r3],r5
.LM53:
	LD.b	r3,[r6]
	LSL	r3,#4
	ADD	r3,r4,r3
	ST.h	[r3+#4],r5
.LM54:
	LD.b	r3,[r6]
	LSL	r3,#4
	ADD	r3,r4,r3
	ST.w	[r3+#3],r5
.LM55:
	LD.b	r3,[r6]
	LSL	r3,#4
	ADD	r4,r4,r3
	ST.b	[r4+#10],r5
.LM56:
	ST.b	[r6],r7
.L22:
.LM57:
	POP	{r6, r7}
	.cfi_def_cfa_offset 4
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
	.cfi_endproc
.LFE7:
	.size	SOFTTIMER_unregister, .-SOFTTIMER_unregister
	.section .text$SOFTTIMER_Handle
	.type	.text$SOFTTIMER_Handle$scode_local_11, @function
	.text$SOFTTIMER_Handle$scode_local_11:
	.align	1
	.export	SOFTTIMER_Handle
	.type	SOFTTIMER_Handle, @function
SOFTTIMER_Handle:
.LFB8:
.LM58:
	.cfi_startproc
	PUSH	{r6, r7, r8, r9, r10, r11, r12, lr}
	.cfi_def_cfa_offset 32
	SUB	sp,#4
	.cfi_def_cfa_offset 36
.LM59:
	LD	r2,#cur_date
	MOV	r9,r2
	LD.w	r5,[r2]
	LD	r4,#86399999
	CMP	r5,r4
	JLS	.L25
.LM60:
	LD	r4,#86400000
	SUB	r5,r5,r4
	ST.w	[r2],r5
.LM61:
	LD.h	r3,[r2+#2]
	ADD	r5,r3,#1
	ST.h	[r2+#2],r5
.L25:
.LVL26:
	LD	r4,#timeTable
	MOV	r11,r4
	MOV	r7,r4
.LM62:
	MOV	r6,#0
	MOV	r8,r6
.LM63:
	LD	r5,#cur_date
	MOV	r12,r5
.LVL27:
.L30:
.LM64:
	LD.b	r5,[r7+#10]
	CMP	r5,#1
	JZ	.L35
.L26:
	ADD	r8,#1
	ADD	r6,#16
	ADD	r7,#16
.LM65:
	CMP	r6,#80
	JNZ	.L30
.LM66:
	ADD	sp,#4
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	POP	{r6, r7, r8, r9, r10, r11, r12}
	.cfi_def_cfa_offset 4
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
.L35:
	.cfi_restore_state
.LM67:
	MOV	r2,r11
	ADD	r2,r2,r6
	MOV	r10,r2
.LM68:
	MOV	r3,r9
	LD.h	r3,[r3+#2]
	ZXT.h	r5,r3
	LD.h	r2,[r2+#4]
	ZXT.h	r4,r2
	CMP	r4,r5
	JHI	.L26
.LM69:
	LD.w	r5,[r12]
	LD.w	r4,[r7]
	CMP	r4,r5
	JHI	.L26
.LM70:
	MOV	r3,r10
	LD.w	r5,[r3+#3]
	CMP	r5,#0
	JZ	.L27
.LM71:
	LJMP	r5
.LVL28:
.L27:
.LM72:
	LD.b	r4,[r7+#11]
	ST.w	[sp],r4
	CMP	r4,#0
	JZ	.L36
.LM73:
	MOV	r2,r10
	LD.w	r2,[r2+#1]
	LD.w	r3,[r9]
	ADD	r5,r2,r3
	ST.w	[r7],r5
.LM74:
	LD	r4,#86399999
	CMP	r5,r4
	JLS	.L29
.LM75:
	MOV	r2,r12
	LD.h	r2,[r2+#2]
	ADD	r5,r2,#1
	MOV	r3,r10
	ST.h	[r3+#4],r5
.LM76:
	LD.w	r3,[r7]
	LD	r4,#86400000
	SUB	r5,r3,r4
	ST.w	[r7],r5
	JMP	.L26
.L29:
.LM77:
	MOV	r5,r12
	LD.h	r5,[r5+#2]
	MOV	r3,r5
	MOV	r5,r10
	ST.h	[r5+#4],r3
	JMP	.L26
.L36:
.LM78:
	LD	r0,#1073744256
	LD	r1,#.LC2
	MOV	r2,r8
	LJMP	fprintf
.LVL29:
.LM79:
	LD.w	r5,[sp]
	ST.b	[r7+#10],r5
.LM80:
	ST.b	[r7+#11],r5
.LM81:
	ST.w	[r7],r5
.LM82:
	MOV	r2,r10
	ST.h	[r2+#4],r5
.LM83:
	ST.w	[r2+#3],r5
	JMP	.L26
	.cfi_endproc
.LFE8:
	.size	SOFTTIMER_Handle, .-SOFTTIMER_Handle
	.export	cur_date
	.section .bss$comm$cur_date
	.type	.bss$comm$cur_date$scode_local_12, @function
	.bss$comm$cur_date$scode_local_12:
	.align	2
	.type	cur_date, @object
	.size	cur_date, 8
cur_date:
	.fill 8, 1
	.export	timeTable
	.section .bss$comm$timeTable
	.type	.bss$comm$timeTable$scode_local_13, @function
	.bss$comm$timeTable$scode_local_13:
	.align	2
	.type	timeTable, @object
	.size	timeTable, 80
timeTable:
	.fill 80, 1
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_14, @function
	.debug_info$scode_local_14:
.Ldebug_info0:
	.long	0x35f
	.short	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF35
	.byte	0x1
	.long	.LASF36
	.long	.LASF37
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
	.uleb128 0x4
	.long	.LASF11
	.byte	0x3
	.byte	0x20
	.long	0x94
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.long	.LASF12
	.byte	0x4
	.byte	0x22
	.long	0xa1
	.uleb128 0x6
	.byte	0x4
	.long	0xa7
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x8
	.byte	0x10
	.byte	0x4
	.byte	0x25
	.long	0xfa
	.uleb128 0x9
	.long	.LASF13
	.byte	0x4
	.byte	0x29
	.long	0x69
	.byte	0
	.uleb128 0x9
	.long	.LASF14
	.byte	0x4
	.byte	0x2a
	.long	0x69
	.byte	0x4
	.uleb128 0x9
	.long	.LASF15
	.byte	0x4
	.byte	0x2b
	.long	0x5e
	.byte	0x8
	.uleb128 0xa
	.string	"flg"
	.byte	0x4
	.byte	0x2c
	.long	0x45
	.byte	0xa
	.uleb128 0x9
	.long	.LASF16
	.byte	0x4
	.byte	0x2d
	.long	0x45
	.byte	0xb
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.byte	0x2e
	.long	0x96
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.long	.LASF18
	.byte	0x4
	.byte	0x2f
	.long	0xa9
	.uleb128 0x8
	.byte	0x8
	.byte	0x4
	.byte	0x32
	.long	0x126
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.byte	0x34
	.long	0x69
	.byte	0
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.byte	0x35
	.long	0x5e
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.long	.LASF21
	.byte	0x4
	.byte	0x36
	.long	0x105
	.uleb128 0xb
	.byte	0x1
	.long	.LASF38
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.long	0x69
	.long	.LFB0
	.long	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.long	.LASF39
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xd
	.byte	0x1
	.long	.LASF27
	.byte	0x1
	.byte	0x36
	.byte	0x1
	.long	0x69
	.long	.LFB2
	.long	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x189
	.uleb128 0xe
	.long	.LASF22
	.byte	0x1
	.byte	0x36
	.long	0x45
	.long	.LLST0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF24
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1c0
	.uleb128 0xe
	.long	.LASF22
	.byte	0x1
	.byte	0x3b
	.long	0x45
	.long	.LLST1
	.uleb128 0xe
	.long	.LASF23
	.byte	0x1
	.byte	0x3b
	.long	0x69
	.long	.LLST2
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF25
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1e8
	.uleb128 0xe
	.long	.LASF22
	.byte	0x1
	.byte	0x4a
	.long	0x45
	.long	.LLST3
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF26
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x210
	.uleb128 0xe
	.long	.LASF22
	.byte	0x1
	.byte	0x50
	.long	0x45
	.long	.LLST4
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF28
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.long	0x45
	.long	.LFB6
	.long	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x297
	.uleb128 0xe
	.long	.LASF16
	.byte	0x1
	.byte	0x62
	.long	0x45
	.long	.LLST5
	.uleb128 0xe
	.long	.LASF29
	.byte	0x1
	.byte	0x62
	.long	0x69
	.long	.LLST6
	.uleb128 0xe
	.long	.LASF17
	.byte	0x1
	.byte	0x62
	.long	0x96
	.long	.LLST7
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x64
	.long	0x45
	.uleb128 0x11
	.long	.LVL14
	.long	0x27e
	.uleb128 0x12
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	.LC1
	.uleb128 0x12
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0xc
	.long	0x40000980
	.byte	0
	.uleb128 0x13
	.long	.LVL20
	.uleb128 0x12
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	.LC0
	.uleb128 0x12
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0xc
	.long	0x40000980
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF30
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2dd
	.uleb128 0xe
	.long	.LASF22
	.byte	0x1
	.byte	0x8b
	.long	0x2dd
	.long	.LLST8
	.uleb128 0x13
	.long	.LVL25
	.uleb128 0x12
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x12
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	.LC2
	.uleb128 0x12
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0xc
	.long	0x40000980
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x45
	.uleb128 0x14
	.byte	0x1
	.long	.LASF31
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x327
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x9e
	.long	0x45
	.long	.LLST9
	.uleb128 0x13
	.long	.LVL29
	.uleb128 0x12
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x12
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.long	.LC2
	.uleb128 0x12
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0xc
	.long	0x40000980
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0xfa
	.long	0x337
	.uleb128 0x17
	.long	0x337
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF32
	.uleb128 0x18
	.long	.LASF33
	.byte	0x1
	.byte	0x15
	.long	0x327
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	timeTable
	.uleb128 0x18
	.long	.LASF34
	.byte	0x1
	.byte	0x17
	.long	0x126
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	cur_date
	.byte	0
	.section .debug_abbrev
	.type	.debug_abbrev$scode_local_15, @function
	.debug_abbrev$scode_local_15:
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.type	.debug_loc$scode_local_16, @function
	.debug_loc$scode_local_16:
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.short	0x1
	.byte	0x50
	.long	.LVL1
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
	.long	.LVL4
	.short	0x1
	.byte	0x50
	.long	.LVL4
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
	.long	.LVL3
	.short	0x1
	.byte	0x51
	.long	.LVL3
	.long	.LFE3
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL5
	.long	.LVL6
	.short	0x1
	.byte	0x50
	.long	.LVL6
	.long	.LFE4
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL7
	.long	.LVL8
	.short	0x1
	.byte	0x50
	.long	.LVL8
	.long	.LFE5
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL9
	.long	.LVL10
	.short	0x1
	.byte	0x50
	.long	.LVL10
	.long	.LFE6
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL9
	.long	.LVL10
	.short	0x1
	.byte	0x51
	.long	.LVL10
	.long	.LVL11
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	.LVL11
	.long	.LVL13
	.short	0x1
	.byte	0x51
	.long	.LVL13
	.long	.LVL15
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	.LVL15
	.long	.LVL16
	.short	0x1
	.byte	0x51
	.long	.LVL16
	.long	.LVL17
	.short	0x2
	.byte	0x77
	.sleb128 4
	.long	.LVL17
	.long	.LVL18
	.short	0x7
	.byte	0x79
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.long	.LVL18
	.long	.LVL20-1
	.short	0x9
	.byte	0x75
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.long	.LVL20-1
	.long	.LVL21
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	.LVL21
	.long	.LVL22
	.short	0x2
	.byte	0x77
	.sleb128 4
	.long	.LVL22
	.long	.LFE6
	.short	0x7
	.byte	0x79
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.long	0
	.long	0
.LLST7:
	.long	.LVL9
	.long	.LVL10
	.short	0x1
	.byte	0x52
	.long	.LVL10
	.long	.LVL11
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	.LVL11
	.long	.LVL14-1
	.short	0x1
	.byte	0x52
	.long	.LVL14-1
	.long	.LVL15
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	.LVL15
	.long	.LVL19
	.short	0x1
	.byte	0x52
	.long	.LVL19
	.long	.LVL20-1
	.short	0x2
	.byte	0x74
	.sleb128 12
	.long	.LVL20-1
	.long	.LVL21
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	.LVL21
	.long	.LFE6
	.short	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST8:
	.long	.LVL23
	.long	.LVL24
	.short	0x1
	.byte	0x50
	.long	.LVL24
	.long	.LFE7
	.short	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST9:
	.long	.LVL26
	.long	.LVL27
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
	.section .debug_aranges
	.type	.debug_aranges$scode_local_17, @function
	.debug_aranges$scode_local_17:
	.long	0x5c
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
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	0
	.long	0
	.section .debug_ranges
	.type	.debug_ranges$scode_local_18, @function
	.debug_ranges$scode_local_18:
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
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	.LFB8
	.long	.LFE8
	.long	0
	.long	0
	.section .debug_line
	.type	.debug_line$scode_local_19, @function
	.debug_line$scode_local_19:
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
	.ascii	"../Middle"
	.byte	0
	.ascii	"D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys"
	.byte	0
	.byte	0
	.string	"soft_timer.c"
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
	.string	"soft_timer.h"
	.uleb128 0x1
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
	.byte	0x44
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
	.long	.LFE1
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM6
	.byte	0x4d
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
	.long	.LFE2
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM9
	.byte	0x52
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM10
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM11
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM12
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM14
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM15
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM16
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM17
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM18
	.byte	0x1d
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
	.long	.LM19
	.byte	0x61
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM20
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM21
	.byte	0x18
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
	.long	.LM22
	.byte	0x67
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
	.long	.LFE5
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM25
	.byte	0x79
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM26
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM27
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM28
	.byte	0x38
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM29
	.byte	0x3
	.sleb128 -33
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM30
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM31
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM32
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM33
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM34
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM35
	.byte	0x3
	.sleb128 -23
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM36
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM37
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM38
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM39
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM40
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM41
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM42
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM43
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM44
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM45
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM46
	.byte	0x3
	.sleb128 -12
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM47
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
	.long	.LM48
	.byte	0xa2
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM49
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM50
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM51
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM52
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM53
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM54
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM55
	.byte	0x18
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
	.long	.LFE7
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM58
	.byte	0xb3
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM59
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM60
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM61
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM62
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM63
	.byte	0x24
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM64
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM65
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM66
	.byte	0x3b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM67
	.byte	0x3
	.sleb128 -46
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM68
	.byte	0x25
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM69
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM70
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM71
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM72
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM73
	.byte	0x22
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM74
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM75
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM76
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM77
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM78
	.byte	0x3
	.sleb128 -17
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM79
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM80
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM81
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM82
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM83
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE8
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section .debug_str
	.type	.debug_str$scode_local_20, @function
	.debug_str$scode_local_20:
.LASF27:
	.string	"SOFTTIMER_getTimeoutValue"
.LASF24:
	.string	"SOFTTIMER_setTimeoutValue"
.LASF39:
	.string	"softtimer_tick_cnt_up"
.LASF20:
	.string	"cur_day_num"
.LASF11:
	.string	"STREAM"
.LASF15:
	.string	"tar_day_num"
.LASF30:
	.string	"SOFTTIMER_unregister"
.LASF23:
	.string	"newValue"
.LASF12:
	.string	"TimeoutCallback"
.LASF34:
	.string	"cur_date"
.LASF19:
	.string	"cur_day_tick"
.LASF33:
	.string	"timeTable"
.LASF25:
	.string	"SOFTTIMER_start"
.LASF3:
	.string	"unsigned char"
.LASF1:
	.string	"short unsigned int"
.LASF22:
	.string	"timerIndex"
.LASF17:
	.string	"func"
.LASF37:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\KF32F330_EVAL\\\\Release"
.LASF21:
	.string	"my_date_t"
.LASF36:
	.string	"../Middle/soft_timer.c"
.LASF0:
	.string	"unsigned int"
.LASF26:
	.string	"SOFTTIMER_suspend"
.LASF9:
	.string	"long long unsigned int"
.LASF5:
	.string	"uint8_t"
.LASF28:
	.string	"SOFTTIMER_register"
.LASF16:
	.string	"repeat"
.LASF29:
	.string	"timeoutValue"
.LASF14:
	.string	"period_tick"
.LASF8:
	.string	"long long int"
.LASF32:
	.string	"sizetype"
.LASF10:
	.string	"char"
.LASF35:
	.string	"GNU C 4.7.0"
.LASF31:
	.string	"SOFTTIMER_Handle"
.LASF4:
	.string	"short int"
.LASF13:
	.string	"tar_day_tick"
.LASF6:
	.string	"uint16_t"
.LASF7:
	.string	"uint32_t"
.LASF38:
	.string	"softtimer_tick_get"
.LASF2:
	.string	"signed char"
.LASF18:
	.string	"timer_handle_t"
	.ident	"GCC: (GNU) 4.7.0-Dec 25 2025-16:17:10"
