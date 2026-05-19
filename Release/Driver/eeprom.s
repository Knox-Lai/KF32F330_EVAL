	.file	"eeprom.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.section .text$ee_format_page
	.type	.text$ee_format_page$scode_local_1, @function
	.text$ee_format_page$scode_local_1:
	.align	1
	.type	ee_format_page, @function
ee_format_page:
.LFB1:
.LM1:
	.cfi_startproc
.LVL0:
	PUSH	{r6, lr}
	.cfi_def_cfa_offset 8
	SUB	sp,#4
	.cfi_def_cfa_offset 12
	MOV	r6,r0
.LM2:
	LD	r5,#-1437221940
	ST.w	[sp],r5
.LVL1:
.LM3:
	LJMP	flash_erase_page
.LVL2:
.LM4:
	MOV	r0,r6
	MOV	r1,sp
	MOV	r2,#4
	LJMP	flash_write_buf
.LVL3:
.LM5:
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
	.size	ee_format_page, .-ee_format_page
	.section .text$ee_init_section.part.0
	.type	.text$ee_init_section.part.0$scode_local_2, @function
	.text$ee_init_section.part.0$scode_local_2:
	.align	1
	.type	ee_init_section.part.0, @function
ee_init_section.part.0:
.LFB10:
.LM6:
	.cfi_startproc
.LVL5:
	PUSH	{r6, r7, r8, r9, r10, r11, r12, lr}
	.cfi_def_cfa_offset 32
	SUB	sp,#16
	.cfi_def_cfa_offset 48
.LM7:
	MOV	r5,#24
	MULS	r5,r0,r5 ;
	NOP
	ST.w	[sp+#3],r5
	LD	r1,#ee_sec_info
	ADD	r5,r5,r1
	MOV	r8,r5
.LVL6:
.LM8:
	LD	r5,#sec_table
.LVL7:
	LSL	r0,#3
.LVL8:
	ADD	r4,r5,r0
	LD.w	r0,[r5+r0]
	LD.w	r2,[sp+#3]
	ST.w	[r2+r1],r0
.LM9:
	LD.w	r7,[r4+#1]
	MOV	r3,r8
	ST.w	[r3+#1],r7
.LM10:
	LSR	r7,#10
	ST.w	[r3+#2],r7
.LM11:
	MOV	r5,#0
	MOV	r4,r5
	ST.w	[r3+#3],r5
.LM12:
	ST.w	[r3+#4],r5
.LM13:
	MOV	r5,#1
	ST.h	[r3+#10],r5
.LVL9:
.LM14:
	CMP	r7,r4
	JZ	.L3
	MOV	r3,r7
	LSL	r3,#10
	MOV	r9,r3
.LBB7:
.LM15:
	MOV	r11,#1
	LSL	r11,#10
.LM16:
	LD	r4,#-1437221940
	MOV	r12,r4
	JMP	.L18
.LVL10:
.L4:
.LBE7:
.LM17:
	SUB	r7,r7,#1
.LVL11:
	SUB	r9,r11
	CMP	r7,#0
	JZ	.L17
	LD.w	r0,[r8]
.LVL12:
.L18:
.LBB18:
.LM18:
	MOV	r5,r9
.LVL13:
	ADD	r6,r5,r0
	MOV	r1,r6
	SUB	r1,r11
	MOV	r10,r1
.LVL14:
.LM19:
	MOV	r0,r1
	MOV	r1,sp
.LVL15:
	ADD	r1,#8
	MOV	r2,#4
	LJMP	flash_read_buf
.LVL16:
.LM20:
	LD.w	r5,[sp+#2]
	CMP	r5,r12
	JNZ	.L4
.LM21:
	MOV	r4,r10
	MOV	r2,r8
	ST.w	[r2+#3],r4
.LVL17:
.LBB8:
.LBB9:
.LM22:
	LD	r5,#1016
	SUB	r7,r6,r5
.LVL18:
.LM23:
	MOV	r9,#0
.LBB10:
.LM24:
	NOT	r1,r9
	MOV	r10,r1
.LVL19:
.LM25:
	LD	r2,#1437217740
.LVL20:
	MOV	r11,r2
.LM26:
	MOV	r12,r5
.LVL21:
.L25:
.LBE10:
.LM27:
	MOV	r2,#8
	ADD	r5,r7,r2
	CMP	r5,r6
	JHI	.L26
.LVL22:
.L14:
.LBB11:
.LM28:
	MOV	r0,r7
	MOV	r1,sp
	MOV	r2,#8
	LJMP	flash_read_buf
.LVL23:
.LM29:
	LD.w	r5,[sp]
	CMP	r5,r10
	JZ	.L29
.LM30:
	CMP	r5,r11
	JNZ	.L30
.LM31:
	LD.h	r5,[sp+#3]
	CMP	r5,#0
	JZ	.L26
.LM32:
	ADD	r5,r5,#7
	MOV	r1,#7
	NOT	r1,r1
	ANL	r5,r5,r1
	ADD	r5,#8
.LVL24:
.LM33:
	CMP	r5,r12
	JHI	.L11
.LM34:
	ADD	r7,r7,r5
.LVL25:
.LM35:
	CMP	r7,r6
	JHI	.L11
.LM36:
	LD.h	r5,[sp+#2]
.LVL26:
	SUB	r4,r5,#1
	ZXT.h	r4,r4
	LD	r1,#65533
.LVL27:
	CMP	r4,r1
	JHI	.L25
	CMP	r5,r9
	JLS	.L25
	MOV	r9,r5
.LVL28:
.LBE11:
.LM37:
	MOV	r2,#8
	ADD	r5,r7,r2
	CMP	r5,r6
	JLS	.L14
.LVL29:
.L26:
.LM38:
	MOV	r5,r6
.L27:
	MOV	r3,r8
	ST.w	[r3+#4],r5
.LM39:
	MOV	r1,r9
	ADD	r5,r1,#1
	ST.h	[r3+#10],r5
.LBE9:
.LBE8:
.LM40:
	MOV	r0,#0
.LVL30:
.L16:
.LBE18:
.LM41:
	ADD	sp,#16
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	POP	{r6, r7, r8, r9, r10, r11, r12}
	.cfi_def_cfa_offset 4
.LVL31:
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
.LVL32:
.L17:
	.cfi_restore_state
	LD.w	r5,[sp+#3]
.LVL33:
	LD	r1,#ee_sec_info
	LD.w	r0,[r5+r1]
.LVL34:
.L3:
.LM42:
	LJMP	ee_format_page
.LVL35:
	MOV	r5,r0
.LM43:
	MOV	r0,#5
.LM44:
	CMP	r5,#0
	JNZ	.L16
.LM45:
	LD.w	r2,[sp+#3]
	LD	r3,#ee_sec_info
	LD.w	r4,[r2+r3]
	MOV	r1,r8
	ST.w	[r1+#3],r4
.LM46:
	ADD	r4,#8
	ST.w	[r1+#4],r4
.LM47:
	MOV	r4,#1
	ST.h	[r1+#10],r4
.LM48:
	MOV	r0,r5
.LM49:
	ADD	sp,#16
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	POP	{r6, r7, r8, r9, r10, r11, r12}
	.cfi_def_cfa_offset 4
.LVL36:
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
.LVL37:
.L11:
	.cfi_restore_state
.LBB19:
.LBB16:
.LBB14:
.LBB12:
.LM50:
	MOV	r2,r8
	ST.w	[r2+#4],r6
.LM51:
	MOV	r1,r9
	ADD	r5,r1,#1
.LVL38:
	ST.h	[r2+#10],r5
.LBE12:
.LBE14:
.LBE16:
.LM52:
	MOV	r0,#0
	JMP	.L16
.LVL39:
.L29:
.LBB17:
.LBB15:
.LBB13:
.LM53:
	MOV	r5,r7
	JMP	.L27
.L30:
.LM54:
	MOV	r5,r8
	ST.w	[r5+#4],r6
.LM55:
	MOV	r3,r9
	ADD	r5,r3,#1
	MOV	r4,r8
	ST.h	[r4+#10],r5
.LBE13:
.LBE15:
.LBE17:
.LM56:
	MOV	r0,#0
	JMP	.L16
.LBE19:
	.cfi_endproc
.LFE10:
	.size	ee_init_section.part.0, .-ee_init_section.part.0
	.section .text$ee_write_record
	.type	.text$ee_write_record$scode_local_3, @function
	.text$ee_write_record$scode_local_3:
	.align	1
	.type	ee_write_record, @function
ee_write_record:
.LFB4:
.LM57:
	.cfi_startproc
.LVL40:
	PUSH	{r6, r7, r8, lr}
	.cfi_def_cfa_offset 16
	SUB	sp,#8
	.cfi_def_cfa_offset 24
	MOV	r6,r0
	MOV	r7,r2
.LM58:
	LD.w	r4,[r0+#4]
	MOV	r8,r4
.LVL41:
.LM59:
	LD	r5,#1437217740
	ST.w	[sp],r5
.LM60:
	LD.h	r5,[r0+#10]
	ST.h	[sp+#2],r5
.LM61:
	ST.h	[sp+#3],r2
.LM62:
	MOV	r0,r4
.LVL42:
	ADD	r0,#8
	LJMP	flash_write_buf
.LVL43:
	CMP	r0,#0
	JZ	.L32
.L34:
.LM63:
	MOV	r0,#5
.L33:
.LM64:
	ADD	sp,#8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	POP	{r6, r7, r8}
	.cfi_def_cfa_offset 4
.LVL44:
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
.LVL45:
.L32:
	.cfi_restore_state
.LM65:
	MOV	r0,r8
	MOV	r1,sp
	MOV	r2,#8
	LJMP	flash_write_buf
.LVL46:
	CMP	r0,#0
	JNZ	.L34
.LVL47:
.LBB22:
.LBB23:
.LM66:
	LD.w	r5,[r6+#4]
	ADD	r5,#8
	ADD	r7,r7,#7
.LVL48:
	MOV	r4,#7
	NOT	r4,r4
	ANL	r7,r7,r4
.LVL49:
	ADD	r7,r5,r7
	ST.w	[r6+#4],r7
.LM67:
	LD.h	r4,[r6+#10]
	ADD	r5,r4,#1
	ST.h	[r6+#10],r5
	JMP	.L33
.LBE23:
.LBE22:
	.cfi_endproc
.LFE4:
	.size	ee_write_record, .-ee_write_record
	.section .text$ee_init_boot
	.type	.text$ee_init_boot$scode_local_4, @function
	.text$ee_init_boot$scode_local_4:
	.align	1
	.export	ee_init_boot
	.type	ee_init_boot, @function
ee_init_boot:
.LFB6:
.LM68:
	.cfi_startproc
	PUSH	lr
	.cfi_def_cfa_offset 4
.LVL50:
	MOV	r0,#3
	LJMP	ee_init_section.part.0
.LVL51:
.LM69:
	ZXT.h	r0,r0
.LVL52:
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
	.cfi_endproc
.LFE6:
	.size	ee_init_boot, .-ee_init_boot
	.section .text$ee_init_app
	.type	.text$ee_init_app$scode_local_5, @function
	.text$ee_init_app$scode_local_5:
	.align	1
	.export	ee_init_app
	.type	ee_init_app, @function
ee_init_app:
.LFB7:
.LM70:
	.cfi_startproc
	PUSH	lr
	.cfi_def_cfa_offset 4
.LVL53:
	MOV	r0,#0
	LJMP	ee_init_section.part.0
.LVL54:
.LM71:
	CMP	r0,#0
	JZ	.L38
.LVL55:
.L37:
.LM72:
	POP	lr
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	JMP	lr
.LVL56:
.L38:
	.cfi_restore_state
	MOV	r0,#1
.LVL57:
	LJMP	ee_init_section.part.0
.LVL58:
.LM73:
	CMP	r0,#0
	JNZ	.L37
.LVL59:
	MOV	r0,#2
.LVL60:
	LJMP	ee_init_section.part.0
.LVL61:
.LM74:
	CMP	r0,#0
	JNZ	.L37
.LVL62:
	MOV	r0,#3
.LVL63:
	LJMP	ee_init_section.part.0
.LVL64:
.LM75:
	JMP	.L37
	.cfi_endproc
.LFE7:
	.size	ee_init_app, .-ee_init_app
	.section .text$ee_save
	.type	.text$ee_save$scode_local_6, @function
	.text$ee_save$scode_local_6:
	.align	1
	.export	ee_save
	.type	ee_save, @function
ee_save:
.LFB8:
.LM76:
	.cfi_startproc
.LVL65:
	PUSH	{r6, r7, r8, r9, r10, r11, r12, lr}
	.cfi_def_cfa_offset 32
	SUB	sp,#8
	.cfi_def_cfa_offset 40
	MOV	r7,r1
	ZXT.h	r6,r2
.LM77:
	CMP	r1,#0
	JZ	.L42
.LM78:
	CMP	r6,#0
	JZ	.L42
.LM79:
	MOV	r5,#2
.LM80:
	CMP	r0,#3
	JLS	.L68
.LVL66:
.L41:
.LM81:
	MOV	r0,r5
	ADD	sp,#8
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	POP	{r6, r7, r8, r9, r10, r11, r12}
	.cfi_def_cfa_offset 4
.LVL67:
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
.LVL68:
.L42:
	.cfi_restore_state
.LBB39:
.LBB40:
.LM82:
	MOV	r5,#1
.LBE40:
.LBE39:
.LM83:
	MOV	r0,r5
	ADD	sp,#8
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	POP	{r6, r7, r8, r9, r10, r11, r12}
	.cfi_def_cfa_offset 4
.LVL69:
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
.LVL70:
.L68:
	.cfi_restore_state
.LM84:
	MOV	r5,#24
	MULS	r5,r0,r5 ;
	NOP
	ST.w	[sp+#1],r5
	LD	r1,#ee_sec_info
.LVL71:
	ADD	r5,r5,r1
	MOV	r8,r5
.LVL72:
.LM85:
	MOV	r2,r5
.LVL73:
	LD.w	r5,[r5+#2]
.LVL74:
	CMP	r5,#0
	JZ	.L43
.LM86:
	LD.w	r5,[r2+#3]
	CMP	r5,#0
	JNZ	.L45
.L43:
.LVL75:
	LJMP	ee_init_section.part.0
.LVL76:
.LM87:
	MOV	r5,#5
.LM88:
	CMP	r0,#0
	JNZ	.L41
.LVL77:
.L45:
.LM89:
	ADD	r4,r6,#7
	MOV	r5,#7
	NOT	r5,r5
	ANL	r5,r4,r5
	MOV	r4,#8
	ADD	r3,r5,r4
	LD	r4,#1016
	CMP	r3,r4
	JHI	.L42
.LM90:
	MOV	r1,r8
	LD.w	r4,[r1+#3]
	LD.w	r3,[r1+#4]
	ADD	r3,#8
	ADD	r5,r3,r5
	MOV	r3,#1
	LSL	r3,#10
	ADD	r2,r4,r3
	CMP	r5,r2
	JLS	.L46
.LVL78:
.LM91:
	LD.w	r2,[sp+#1]
	LD	r5,#ee_sec_info
	LD.w	r0,[r2+r5]
	SUB	r4,r4,r0
	MOV	r9,r4
	LSR	r9,#10
	ADD	r9,#1
.LVL79:
	LD.w	r5,[r1+#2]
	CMP	r5,r9
	JLS	.L54
	MOV	r1,r9
.LVL80:
	LSL	r1,#10
	MOV	r10,r1
.LBB42:
.LM92:
	MOV	r2,#0
	NOT	r2,r2
	MOV	r12,r2
	JMP	.L52
.LVL81:
.L48:
.LBE42:
.LM93:
	ADD	r9,#1
.LVL82:
	MOV	r3,#1
	LSL	r3,#10
	ADD	r10,r3
.LM94:
	MOV	r4,r8
	LD.w	r5,[r4+#2]
.LVL83:
	CMP	r5,r9
	JLS	.L69
.LVL84:
	LD.w	r0,[r8]
.LVL85:
.L52:
.LBB43:
.LM95:
	ADD	r0,r10
	MOV	r11,r0
.LVL86:
.LM96:
	MOV	r1,sp
	MOV	r2,#4
	LJMP	flash_read_buf
.LVL87:
.LM97:
	LD.w	r5,[sp]
	CMP	r5,r12
	JNZ	.L48
.LM98:
	MOV	r0,r11
	LJMP	ee_format_page
.LVL88:
.LM99:
	MOV	r5,#5
.LM100:
	CMP	r0,#0
	JNZ	.L41
.LM101:
	MOV	r5,r11
	MOV	r3,r8
	ST.w	[r3+#3],r5
.LM102:
	ADD	r5,#8
	ST.w	[r3+#4],r5
.LBE43:
.LM103:
	LD.w	r5,[r3+#2]
	CMP	r5,r9
	JLS	.L70
.LVL89:
.L46:
.LM104:
	MOV	r0,r8
	MOV	r1,r7
	MOV	r2,r6
	LJMP	ee_write_record
.LVL90:
	MOV	r5,r0
.LVL91:
.LM105:
	JMP	.L41
.LVL92:
.L69:
	LD.w	r5,[sp+#1]
	LD	r1,#ee_sec_info
	LD.w	r0,[r5+r1]
.LVL93:
.L54:
.LBB44:
.LBB41:
.LM106:
	MOV	r4,r8
	LD.w	r4,[r4+#1]
	ADD	r1,r0,r4
	LJMP	flash_erase_range
.LVL94:
.LM107:
	LD.w	r5,[sp+#1]
	LD	r1,#ee_sec_info
	LD.w	r0,[r5+r1]
	LJMP	ee_format_page
.LVL95:
.LM108:
	MOV	r5,#5
.LM109:
	CMP	r0,#0
	JNZ	.L41
.LM110:
	LD.w	r2,[sp+#1]
	LD	r3,#ee_sec_info
	LD.w	r5,[r2+r3]
	MOV	r4,r8
	ST.w	[r4+#3],r5
.LM111:
	ADD	r5,#8
	ST.w	[r4+#4],r5
.LM112:
	MOV	r5,#1
	ST.h	[r4+#10],r5
	JMP	.L46
.LVL96:
.L70:
	LD.w	r2,[sp+#1]
	LD	r3,#ee_sec_info
.LVL97:
	LD.w	r0,[r2+r3]
	JMP	.L54
.LBE41:
.LBE44:
	.cfi_endproc
.LFE8:
	.size	ee_save, .-ee_save
	.section .text$ee_load
	.type	.text$ee_load$scode_local_7, @function
	.text$ee_load$scode_local_7:
	.align	1
	.export	ee_load
	.type	ee_load, @function
ee_load:
.LFB9:
.LM113:
	.cfi_startproc
.LVL98:
	PUSH	{r6, r7, r8, r9, r10, r11, r12, lr}
	.cfi_def_cfa_offset 32
	SUB	sp,#24
	.cfi_def_cfa_offset 56
	ST.w	[sp+#3],r1
	ZXT.h	r10,r2
.LVL99:
.LM114:
	MOV	r5,#1
.LM115:
	CMP	r1,#0
	JZ	.L72
.LM116:
	CMP	r10,#0
	JZ	.L72
.LM117:
	MOV	r5,#2
.LM118:
	CMP	r0,#3
	JLS	.L115
.LVL100:
.L72:
.LM119:
	MOV	r0,r5
	ADD	sp,#24
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	POP	{r6, r7, r8, r9, r10, r11, r12}
	.cfi_def_cfa_offset 4
.LVL101:
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
.LVL102:
.L115:
	.cfi_restore_state
.LM120:
	MOV	r4,#24
	MULS	r4,r0,r4 ;
	NOP
	LD	r5,#ee_sec_info
	ADD	r4,r4,r5
	MOV	r11,r4
.LVL103:
.LM121:
	LD.w	r5,[r4+#2]
	CMP	r5,#0
	JZ	.L73
.LM122:
	LD.w	r5,[r4+#3]
	CMP	r5,#0
	JNZ	.L74
.L73:
.LVL104:
	LJMP	ee_init_section.part.0
.LVL105:
.LM123:
	MOV	r5,#5
.LM124:
	CMP	r0,#0
	JNZ	.L72
.LVL106:
.LM125:
	MOV	r3,r11
	LD.w	r5,[r3+#2]
	CMP	r5,#0
	JZ	.L84
.LVL107:
.L74:
.LM126:
	MOV	r5,#0
	ST.w	[sp+#4],r5
	ST.w	[sp+#5],r5
	MOV	r9,r5
.LBB48:
.LM127:
	LD	r5,#1437217740
	MOV	r12,r5
	JMP	.L83
.LVL108:
.L77:
.LBE48:
.LM128:
	ADD	r9,#1
.LVL109:
	MOV	r4,r11
	LD.w	r5,[r4+#2]
	CMP	r5,r9
	JLS	.L116
.LVL110:
.L83:
.LBB49:
.LM129:
	MOV	r3,r9
	LSL	r3,#10
	MOV	r8,r3
.LM130:
	LD.w	r4,[r11]
	ADD	r8,r4
.LVL111:
.LM131:
	MOV	r0,r8
	MOV	r1,sp
	ADD	r1,#8
	MOV	r2,#4
	LJMP	flash_read_buf
.LVL112:
.LM132:
	LD.w	r5,[sp+#2]
	LD	r3,#-1437221940
	CMP	r5,r3
	JNZ	.L77
.LM133:
	MOV	r6,r8
	ADD	r6,#8
.LVL113:
	MOV	r4,#1
	LSL	r4,#10
	ADD	r8,r4
.LVL114:
.L109:
.LM134:
	MOV	r3,#8
	ADD	r7,r6,r3
	CMP	r7,r8
	JHI	.L77
.LM135:
	MOV	r0,r6
	MOV	r1,sp
	MOV	r2,#8
	LJMP	flash_read_buf
.LVL115:
.LM136:
	LD.w	r5,[sp]
	CMP	r5,r12
	JNZ	.L77
.LM137:
	LD.h	r5,[sp+#3]
.LM138:
	CMP	r5,#0
	JZ	.L77
.LM139:
	ADD	r4,r5,#7
	MOV	r3,#7
	NOT	r3,r3
	ANL	r4,r4,r3
	ADD	r4,#8
.LM140:
	LD	r3,#1016
	CMP	r4,r3
	JHI	.L77
.LM141:
	ADD	r6,r6,r4
.LVL116:
.LM142:
	CMP	r6,r8
	JHI	.L77
.LM143:
	CMP	r10,r5
	JNZ	.L109
.LM144:
	LD.h	r5,[sp+#2]
.LM145:
	CMP	r5,#0
	JZ	.L109
.LM146:
	LD	r4,#65535
	CMP	r5,r4
	JZ	.L109
.LM147:
	LD.w	r3,[sp+#4]
	CMP	r5,r3
	JLS	.L109
	ST.w	[sp+#4],r5
	ST.w	[sp+#5],r7
	JMP	.L109
.LVL117:
.L116:
.LBE49:
.LM148:
	LD.w	r5,[sp+#5]
	CMP	r5,#0
	JNZ	.L117
.LVL118:
.L84:
.LBB50:
.LM149:
	MOV	r5,#3
	JMP	.L72
.LVL119:
.L117:
.LBE50:
.LM150:
	MOV	r0,r5
	LD.w	r1,[sp+#3]
	MOV	r2,r10
	LJMP	flash_read_buf
.LVL120:
.LM151:
	MOV	r5,#0
	JMP	.L72
	.cfi_endproc
.LFE9:
	.size	ee_load, .-ee_load
	.export	sec_table
	.section .rdata$sec_table
	.type	.rdata$sec_table$scode_local_8, @function
	.rdata$sec_table$scode_local_8:
	.align	2
	.type	sec_table, @object
	.size	sec_table, 32
sec_table:
	.long	212992
	.long	43008
	.long	256000
	.long	2048
	.long	258048
	.long	2048
	.long	260096
	.long	2048
	.section .bss$static$ee_sec_info
	.type	.bss$static$ee_sec_info$scode_local_9, @function
	.bss$static$ee_sec_info$scode_local_9:
	.align	2
	.type	ee_sec_info, @object
	.size	ee_sec_info, 96
ee_sec_info:
	.fill 96, 1
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_10, @function
	.debug_info$scode_local_10:
.Ldebug_info0:
	.long	0x807
	.short	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF53
	.byte	0x1
	.long	.LASF54
	.long	.LASF55
	.long	.Ldebug_ranges0+0xf0
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
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
	.byte	0x16
	.long	0xbd
	.uleb128 0x6
	.long	.LASF12
	.sleb128 0
	.uleb128 0x6
	.long	.LASF13
	.sleb128 1
	.uleb128 0x6
	.long	.LASF14
	.sleb128 2
	.uleb128 0x6
	.long	.LASF15
	.sleb128 3
	.uleb128 0x6
	.long	.LASF16
	.sleb128 4
	.uleb128 0x6
	.long	.LASF17
	.sleb128 5
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
	.byte	0x20
	.long	0xde
	.uleb128 0x6
	.long	.LASF18
	.sleb128 0
	.uleb128 0x6
	.long	.LASF19
	.sleb128 1
	.uleb128 0x6
	.long	.LASF20
	.sleb128 2
	.uleb128 0x6
	.long	.LASF21
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.long	.LASF22
	.byte	0x3
	.byte	0x25
	.long	0xbd
	.uleb128 0x7
	.byte	0x8
	.byte	0x1
	.byte	0xf
	.long	0x116
	.uleb128 0x8
	.long	.LASF23
	.byte	0x1
	.byte	0x11
	.long	0x69
	.byte	0
	.uleb128 0x9
	.string	"seq"
	.byte	0x1
	.byte	0x12
	.long	0x5e
	.byte	0x4
	.uleb128 0x9
	.string	"len"
	.byte	0x1
	.byte	0x13
	.long	0x5e
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.long	.LASF24
	.byte	0x1
	.byte	0x14
	.long	0xe9
	.uleb128 0x7
	.byte	0x18
	.byte	0x1
	.byte	0x18
	.long	0x172
	.uleb128 0x8
	.long	.LASF25
	.byte	0x1
	.byte	0x1a
	.long	0x69
	.byte	0
	.uleb128 0x8
	.long	.LASF26
	.byte	0x1
	.byte	0x1b
	.long	0x69
	.byte	0x4
	.uleb128 0x8
	.long	.LASF27
	.byte	0x1
	.byte	0x1c
	.long	0x69
	.byte	0x8
	.uleb128 0x8
	.long	.LASF28
	.byte	0x1
	.byte	0x1e
	.long	0x69
	.byte	0xc
	.uleb128 0x8
	.long	.LASF29
	.byte	0x1
	.byte	0x1f
	.long	0x69
	.byte	0x10
	.uleb128 0x8
	.long	.LASF30
	.byte	0x1
	.byte	0x20
	.long	0x5e
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.long	.LASF31
	.byte	0x1
	.byte	0x21
	.long	0x121
	.uleb128 0xa
	.long	.LASF36
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.long	0x45
	.byte	0x1
	.long	0x1c8
	.uleb128 0xb
	.string	"sec"
	.byte	0x1
	.byte	0x7c
	.long	0xde
	.uleb128 0xc
	.long	.LASF32
	.byte	0x1
	.byte	0x7e
	.long	0x1c8
	.uleb128 0xc
	.long	.LASF33
	.byte	0x1
	.byte	0x7f
	.long	0x69
	.uleb128 0xd
	.uleb128 0xc
	.long	.LASF34
	.byte	0x1
	.byte	0x90
	.long	0x69
	.uleb128 0xc
	.long	.LASF35
	.byte	0x1
	.byte	0x91
	.long	0x69
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.long	0x172
	.uleb128 0xa
	.long	.LASF37
	.byte	0x1
	.byte	0xb2
	.byte	0x1
	.long	0x45
	.byte	0x1
	.long	0x217
	.uleb128 0xf
	.long	.LASF32
	.byte	0x1
	.byte	0xb2
	.long	0x1c8
	.uleb128 0xf
	.long	.LASF38
	.byte	0x1
	.byte	0xb2
	.long	0x217
	.uleb128 0xb
	.string	"len"
	.byte	0x1
	.byte	0xb2
	.long	0x5e
	.uleb128 0xc
	.long	.LASF39
	.byte	0x1
	.byte	0xb4
	.long	0x116
	.uleb128 0xc
	.long	.LASF40
	.byte	0x1
	.byte	0xb5
	.long	0x69
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.long	0x21d
	.uleb128 0x10
	.uleb128 0x11
	.long	.LASF56
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.long	0x45
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x28b
	.uleb128 0x12
	.long	.LASF34
	.byte	0x1
	.byte	0x2b
	.long	0x69
	.long	.LLST0
	.uleb128 0x13
	.long	.LASF35
	.byte	0x1
	.byte	0x2d
	.long	0x69
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.string	"ret"
	.byte	0x1
	.byte	0x2e
	.long	0x45
	.byte	0x1
	.byte	0x50
	.uleb128 0x15
	.long	.LVL2
	.long	0x273
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.long	.LVL3
	.uleb128 0x16
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x34
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF57
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.byte	0x1
	.long	0x2e8
	.uleb128 0xb
	.string	"sec"
	.byte	0x1
	.byte	0x3d
	.long	0xde
	.uleb128 0xf
	.long	.LASF34
	.byte	0x1
	.byte	0x3d
	.long	0x69
	.uleb128 0xc
	.long	.LASF32
	.byte	0x1
	.byte	0x3f
	.long	0x1c8
	.uleb128 0xc
	.long	.LASF41
	.byte	0x1
	.byte	0x40
	.long	0x5e
	.uleb128 0xc
	.long	.LASF42
	.byte	0x1
	.byte	0x41
	.long	0x69
	.uleb128 0xc
	.long	.LASF39
	.byte	0x1
	.byte	0x42
	.long	0x116
	.uleb128 0xd
	.uleb128 0xc
	.long	.LASF43
	.byte	0x1
	.byte	0x5f
	.long	0x69
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	0x17d
	.long	.LFB10
	.long	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x3b8
	.uleb128 0x1a
	.long	0x18e
	.long	.LLST1
	.uleb128 0x1b
	.long	0x199
	.long	.LLST2
	.uleb128 0x1b
	.long	0x1a4
	.long	.LLST3
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0
	.uleb128 0x1b
	.long	0x1b0
	.long	.LLST4
	.uleb128 0x1b
	.long	0x1bb
	.long	.LLST5
	.uleb128 0x1d
	.long	0x28b
	.long	.LBB8
	.long	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x99
	.long	0x39f
	.uleb128 0x1a
	.long	0x2a3
	.long	.LLST6
	.uleb128 0x1e
	.long	0x298
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x1b
	.long	0x2ae
	.long	.LLST7
	.uleb128 0x1b
	.long	0x2b9
	.long	.LLST8
	.uleb128 0x1b
	.long	0x2c4
	.long	.LLST9
	.uleb128 0x1f
	.long	0x2cf
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x1b
	.long	0x2db
	.long	.LLST10
	.uleb128 0x17
	.long	.LVL23
	.uleb128 0x16
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x38
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LVL16
	.uleb128 0x16
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x34
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x7e
	.sleb128 8
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x1ce
	.long	.LFB4
	.long	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x46a
	.uleb128 0x1a
	.long	0x1df
	.long	.LLST11
	.uleb128 0x1a
	.long	0x1ea
	.long	.LLST12
	.uleb128 0x1a
	.long	0x1f5
	.long	.LLST13
	.uleb128 0x1f
	.long	0x200
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.long	0x20b
	.long	.LLST14
	.uleb128 0x21
	.long	0x1ce
	.long	.LBB22
	.long	.LBE22
	.byte	0x1
	.byte	0xb2
	.long	0x435
	.uleb128 0x1a
	.long	0x1f5
	.long	.LLST15
	.uleb128 0x22
	.long	0x1df
	.byte	0x1
	.byte	0x56
	.uleb128 0x23
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x24
	.long	0x200
	.uleb128 0x24
	.long	0x20b
	.uleb128 0x1e
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LVL43
	.long	0x452
	.uleb128 0x16
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x78
	.sleb128 8
	.byte	0
	.uleb128 0x17
	.long	.LVL46
	.uleb128 0x16
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x38
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF44
	.byte	0x1
	.byte	0xed
	.byte	0x1
	.long	0x5e
	.long	.LFB6
	.long	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x4a1
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.byte	0xef
	.long	0x5e
	.long	.LLST16
	.uleb128 0x17
	.long	.LVL51
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF45
	.byte	0x1
	.byte	0xfb
	.byte	0x1
	.long	0x5e
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x505
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.byte	0xfd
	.long	0x5e
	.long	.LLST17
	.uleb128 0x15
	.long	.LVL54
	.long	0x4db
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.long	.LVL58
	.long	0x4ea
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x15
	.long	.LVL61
	.long	0x4f9
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x17
	.long	.LVL64
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	.LASF46
	.byte	0x1
	.byte	0xd3
	.byte	0x1
	.long	0x45
	.byte	0x1
	.long	0x54e
	.uleb128 0xb
	.string	"sec"
	.byte	0x1
	.byte	0xd3
	.long	0xde
	.uleb128 0xf
	.long	.LASF38
	.byte	0x1
	.byte	0xd3
	.long	0x217
	.uleb128 0xb
	.string	"len"
	.byte	0x1
	.byte	0xd3
	.long	0x5e
	.uleb128 0xc
	.long	.LASF32
	.byte	0x1
	.byte	0xd5
	.long	0x1c8
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.byte	0xd6
	.long	0x45
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF47
	.byte	0x1
	.short	0x11d
	.byte	0x1
	.long	0x45
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x686
	.uleb128 0x29
	.string	"sec"
	.byte	0x1
	.short	0x11d
	.long	0xde
	.long	.LLST18
	.uleb128 0x2a
	.long	.LASF38
	.byte	0x1
	.short	0x11d
	.long	0x217
	.long	.LLST19
	.uleb128 0x29
	.string	"len"
	.byte	0x1
	.short	0x11d
	.long	0x5e
	.long	.LLST20
	.uleb128 0x2b
	.long	.LASF32
	.byte	0x1
	.short	0x11f
	.long	0x1c8
	.long	.LLST21
	.uleb128 0x2b
	.long	.LASF33
	.byte	0x1
	.short	0x120
	.long	0x69
	.long	.LLST22
	.uleb128 0x2c
	.string	"ret"
	.byte	0x1
	.short	0x121
	.long	0x45
	.long	.LLST23
	.uleb128 0x2d
	.long	0x505
	.long	.LBB39
	.long	.Ldebug_ranges0+0x88
	.byte	0x1
	.short	0x156
	.long	0x60b
	.uleb128 0x1a
	.long	0x52c
	.long	.LLST24
	.uleb128 0x1a
	.long	0x521
	.long	.LLST25
	.uleb128 0x1e
	.long	0x516
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0xa0
	.uleb128 0x1b
	.long	0x537
	.long	.LLST26
	.uleb128 0x24
	.long	0x542
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0xb8
	.long	0x65c
	.uleb128 0x2b
	.long	.LASF34
	.byte	0x1
	.short	0x141
	.long	0x69
	.long	.LLST27
	.uleb128 0x2b
	.long	.LASF35
	.byte	0x1
	.short	0x142
	.long	0x69
	.long	.LLST28
	.uleb128 0x15
	.long	.LVL87
	.long	0x64f
	.uleb128 0x16
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x34
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.long	.LVL88
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LVL76
	.long	0x66d
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x17
	.long	.LVL90
	.uleb128 0x16
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.long	.LASF48
	.byte	0x1
	.short	0x167
	.byte	0x1
	.long	0x45
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x7ba
	.uleb128 0x29
	.string	"sec"
	.byte	0x1
	.short	0x167
	.long	0xde
	.long	.LLST29
	.uleb128 0x2a
	.long	.LASF38
	.byte	0x1
	.short	0x167
	.long	0x7ba
	.long	.LLST30
	.uleb128 0x29
	.string	"len"
	.byte	0x1
	.short	0x167
	.long	0x5e
	.long	.LLST31
	.uleb128 0x2b
	.long	.LASF32
	.byte	0x1
	.short	0x169
	.long	0x1c8
	.long	.LLST32
	.uleb128 0x2b
	.long	.LASF33
	.byte	0x1
	.short	0x16a
	.long	0x69
	.long	.LLST33
	.uleb128 0x2b
	.long	.LASF49
	.byte	0x1
	.short	0x16b
	.long	0x69
	.long	.LLST34
	.uleb128 0x2b
	.long	.LASF50
	.byte	0x1
	.short	0x16c
	.long	0x5e
	.long	.LLST35
	.uleb128 0x30
	.long	.LASF39
	.byte	0x1
	.short	0x16d
	.long	0x116
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0xd0
	.long	0x78e
	.uleb128 0x2b
	.long	.LASF34
	.byte	0x1
	.short	0x184
	.long	0x69
	.long	.LLST36
	.uleb128 0x2b
	.long	.LASF35
	.byte	0x1
	.short	0x185
	.long	0x69
	.long	.LLST37
	.uleb128 0x2b
	.long	.LASF51
	.byte	0x1
	.short	0x186
	.long	0x69
	.long	.LLST38
	.uleb128 0x15
	.long	.LVL112
	.long	0x776
	.uleb128 0x16
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x34
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x7e
	.sleb128 8
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.long	.LVL115
	.uleb128 0x16
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x38
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LVL105
	.long	0x79f
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x17
	.long	.LVL120
	.uleb128 0x16
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x4
	.uleb128 0x32
	.long	0x172
	.long	0x7cc
	.uleb128 0x33
	.long	0x89
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.long	.LASF52
	.byte	0x1
	.byte	0x23
	.long	0x7bc
	.byte	0x5
	.byte	0x3
	.long	ee_sec_info
	.uleb128 0x32
	.long	0x69
	.long	0x7f3
	.uleb128 0x33
	.long	0x89
	.byte	0x3
	.uleb128 0x33
	.long	0x89
	.byte	0x1
	.byte	0
	.uleb128 0x34
	.long	.LASF58
	.byte	0x1
	.byte	0x7
	.long	0x805
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	sec_table
	.uleb128 0x35
	.long	0x7dd
	.byte	0
	.section .debug_abbrev
	.type	.debug_abbrev$scode_local_11, @function
	.debug_abbrev$scode_local_11:
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x19
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x29
	.uleb128 0x5
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
	.uleb128 0x2a
	.uleb128 0x5
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section .debug_loc
	.type	.debug_loc$scode_local_12, @function
	.debug_loc$scode_local_12:
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL2-1
	.short	0x1
	.byte	0x50
	.long	.LVL2-1
	.long	.LVL4
	.short	0x1
	.byte	0x56
	.long	.LVL4
	.long	.LFE1
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL5
	.long	.LVL8
	.short	0x1
	.byte	0x50
	.long	.LVL8
	.long	.LFE10
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL6
	.long	.LVL7
	.short	0x1
	.byte	0x55
	.long	.LVL7
	.long	.LVL31
	.short	0x1
	.byte	0x58
	.long	.LVL31
	.long	.LVL32
	.short	0xa
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0x3
	.long	ee_sec_info
	.byte	0x22
	.byte	0x9f
	.long	.LVL32
	.long	.LVL36
	.short	0x1
	.byte	0x58
	.long	.LVL36
	.long	.LVL37
	.short	0x1
	.byte	0x51
	.long	.LVL37
	.long	.LFE10
	.short	0x1
	.byte	0x58
	.long	0
	.long	0
.LLST3:
	.long	.LVL9
	.long	.LVL18
	.short	0x1
	.byte	0x57
	.long	.LVL32
	.long	.LVL36
	.short	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST4:
	.long	.LVL10
	.long	.LVL12
	.short	0x1
	.byte	0x5a
	.long	.LVL14
	.long	.LVL15
	.short	0x1
	.byte	0x51
	.long	.LVL15
	.long	.LVL16-1
	.short	0x1
	.byte	0x50
	.long	.LVL16-1
	.long	.LVL19
	.short	0x1
	.byte	0x5a
	.long	.LVL19
	.long	.LVL21
	.short	0x1
	.byte	0x54
	.long	.LVL21
	.long	.LVL30
	.short	0x4
	.byte	0x76
	.sleb128 -1024
	.byte	0x9f
	.long	.LVL32
	.long	.LVL34
	.short	0x1
	.byte	0x5a
	.long	.LVL37
	.long	.LFE10
	.short	0x4
	.byte	0x76
	.sleb128 -1024
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL10
	.long	.LVL13
	.short	0x1
	.byte	0x55
	.long	.LVL13
	.long	.LVL32
	.short	0x2
	.byte	0x91
	.sleb128 -40
	.long	.LVL32
	.long	.LVL33
	.short	0x1
	.byte	0x55
	.long	.LVL33
	.long	.LFE10
	.short	0x2
	.byte	0x91
	.sleb128 -40
	.long	0
	.long	0
.LLST6:
	.long	.LVL17
	.long	.LVL19
	.short	0x1
	.byte	0x5a
	.long	.LVL19
	.long	.LVL21
	.short	0x1
	.byte	0x54
	.long	.LVL21
	.long	.LVL30
	.short	0x4
	.byte	0x76
	.sleb128 -1024
	.byte	0x9f
	.long	.LVL37
	.long	.LFE10
	.short	0x4
	.byte	0x76
	.sleb128 -1024
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL18
	.long	.LVL20
	.short	0x1
	.byte	0x52
	.long	.LVL20
	.long	.LVL30
	.short	0x1
	.byte	0x58
	.long	.LVL37
	.long	.LFE10
	.short	0x1
	.byte	0x58
	.long	0
	.long	0
.LLST8:
	.long	.LVL17
	.long	.LVL21
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL21
	.long	.LVL22
	.short	0x1
	.byte	0x59
	.long	.LVL28
	.long	.LVL29
	.short	0x2
	.byte	0x91
	.sleb128 -44
	.long	0
	.long	0
.LLST9:
	.long	.LVL18
	.long	.LVL25
	.short	0x1
	.byte	0x57
	.long	.LVL28
	.long	.LVL30
	.short	0x1
	.byte	0x57
	.long	.LVL39
	.long	.LFE10
	.short	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST10:
	.long	.LVL24
	.long	.LVL26
	.short	0x1
	.byte	0x55
	.long	.LVL26
	.long	.LVL27
	.short	0x10
	.byte	0x91
	.sleb128 -42
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x7
	.byte	0x71
	.sleb128 0
	.byte	0x1a
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.long	.LVL27
	.long	.LVL29
	.short	0x10
	.byte	0x91
	.sleb128 -42
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x7
	.byte	0x9
	.byte	0xf8
	.byte	0x1a
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.long	.LVL37
	.long	.LVL38
	.short	0x1
	.byte	0x55
	.long	.LVL38
	.long	.LVL39
	.short	0x10
	.byte	0x91
	.sleb128 -42
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x7
	.byte	0x9
	.byte	0xf8
	.byte	0x1a
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL40
	.long	.LVL42
	.short	0x1
	.byte	0x50
	.long	.LVL42
	.long	.LFE4
	.short	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST12:
	.long	.LVL40
	.long	.LVL43-1
	.short	0x1
	.byte	0x51
	.long	.LVL43-1
	.long	.LFE4
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL40
	.long	.LVL43-1
	.short	0x1
	.byte	0x52
	.long	.LVL43-1
	.long	.LFE4
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL41
	.long	.LVL43-1
	.short	0x1
	.byte	0x54
	.long	.LVL43-1
	.long	.LVL44
	.short	0x1
	.byte	0x58
	.long	.LVL45
	.long	.LFE4
	.short	0x1
	.byte	0x58
	.long	0
	.long	0
.LLST15:
	.long	.LVL47
	.long	.LVL48
	.short	0x1
	.byte	0x57
	.long	.LVL48
	.long	.LVL49
	.short	0x3
	.byte	0x77
	.sleb128 -7
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL51
	.long	.LVL52
	.short	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL54
	.long	.LVL55
	.short	0x1
	.byte	0x50
	.long	.LVL56
	.long	.LVL57
	.short	0x1
	.byte	0x50
	.long	.LVL58
	.long	.LVL60
	.short	0x1
	.byte	0x50
	.long	.LVL61
	.long	.LVL63
	.short	0x1
	.byte	0x50
	.long	.LVL64
	.long	.LFE7
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST18:
	.long	.LVL65
	.long	.LVL66
	.short	0x1
	.byte	0x50
	.long	.LVL66
	.long	.LVL70
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL70
	.long	.LVL76-1
	.short	0x1
	.byte	0x50
	.long	.LVL76-1
	.long	.LFE8
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL65
	.long	.LVL66
	.short	0x1
	.byte	0x51
	.long	.LVL66
	.long	.LVL67
	.short	0x1
	.byte	0x57
	.long	.LVL67
	.long	.LVL68
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	.LVL68
	.long	.LVL69
	.short	0x1
	.byte	0x57
	.long	.LVL69
	.long	.LVL70
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	.LVL70
	.long	.LVL71
	.short	0x1
	.byte	0x51
	.long	.LVL71
	.long	.LFE8
	.short	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST20:
	.long	.LVL65
	.long	.LVL66
	.short	0x1
	.byte	0x52
	.long	.LVL66
	.long	.LVL70
	.short	0x1
	.byte	0x56
	.long	.LVL70
	.long	.LVL73
	.short	0x1
	.byte	0x52
	.long	.LVL73
	.long	.LFE8
	.short	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST21:
	.long	.LVL72
	.long	.LVL74
	.short	0x1
	.byte	0x55
	.long	.LVL74
	.long	.LVL76-1
	.short	0x1
	.byte	0x52
	.long	.LVL76-1
	.long	.LVL78
	.short	0x1
	.byte	0x58
	.long	.LVL78
	.long	.LVL80
	.short	0x1
	.byte	0x51
	.long	.LVL80
	.long	.LVL84
	.short	0x1
	.byte	0x58
	.long	.LVL84
	.long	.LVL85
	.short	0x1
	.byte	0x54
	.long	.LVL85
	.long	.LVL92
	.short	0x1
	.byte	0x58
	.long	.LVL92
	.long	.LVL93
	.short	0x1
	.byte	0x54
	.long	.LVL93
	.long	.LVL96
	.short	0x1
	.byte	0x58
	.long	.LVL96
	.long	.LVL97
	.short	0x1
	.byte	0x53
	.long	.LVL97
	.long	.LFE8
	.short	0x1
	.byte	0x58
	.long	0
	.long	0
.LLST22:
	.long	.LVL79
	.long	.LVL89
	.short	0x1
	.byte	0x59
	.long	.LVL92
	.long	.LFE8
	.short	0x1
	.byte	0x59
	.long	0
	.long	0
.LLST23:
	.long	.LVL91
	.long	.LVL92
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST24:
	.long	.LVL93
	.long	.LVL96
	.short	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST25:
	.long	.LVL93
	.long	.LVL96
	.short	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST26:
	.long	.LVL93
	.long	.LVL96
	.short	0x1
	.byte	0x58
	.long	0
	.long	0
.LLST27:
	.long	.LVL81
	.long	.LVL85
	.short	0x1
	.byte	0x5b
	.long	.LVL86
	.long	.LVL87-1
	.short	0x1
	.byte	0x50
	.long	.LVL87-1
	.long	.LVL89
	.short	0x1
	.byte	0x5b
	.long	.LVL92
	.long	.LVL93
	.short	0x1
	.byte	0x5b
	.long	.LVL96
	.long	.LFE8
	.short	0x1
	.byte	0x5b
	.long	0
	.long	0
.LLST28:
	.long	.LVL66
	.long	.LVL68
	.short	0x2
	.byte	0x91
	.sleb128 -40
	.long	.LVL81
	.long	.LVL83
	.short	0x1
	.byte	0x55
	.long	.LVL83
	.long	.LFE8
	.short	0x2
	.byte	0x91
	.sleb128 -40
	.long	0
	.long	0
.LLST29:
	.long	.LVL98
	.long	.LVL100
	.short	0x1
	.byte	0x50
	.long	.LVL100
	.long	.LVL102
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL102
	.long	.LVL105-1
	.short	0x1
	.byte	0x50
	.long	.LVL105-1
	.long	.LFE9
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST30:
	.long	.LVL98
	.long	.LVL100
	.short	0x1
	.byte	0x51
	.long	.LVL100
	.long	.LVL102
	.short	0x2
	.byte	0x91
	.sleb128 -44
	.long	.LVL102
	.long	.LVL105-1
	.short	0x1
	.byte	0x51
	.long	.LVL105-1
	.long	.LFE9
	.short	0x2
	.byte	0x91
	.sleb128 -44
	.long	0
	.long	0
.LLST31:
	.long	.LVL98
	.long	.LVL100
	.short	0x1
	.byte	0x52
	.long	.LVL100
	.long	.LVL101
	.short	0x1
	.byte	0x5a
	.long	.LVL101
	.long	.LVL102
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	.LVL102
	.long	.LVL105-1
	.short	0x1
	.byte	0x52
	.long	.LVL105-1
	.long	.LFE9
	.short	0x1
	.byte	0x5a
	.long	0
	.long	0
.LLST32:
	.long	.LVL103
	.long	.LVL105-1
	.short	0x1
	.byte	0x54
	.long	.LVL105-1
	.long	.LVL117
	.short	0x1
	.byte	0x5b
	.long	.LVL117
	.long	.LVL118
	.short	0x1
	.byte	0x54
	.long	.LVL118
	.long	.LVL119
	.short	0x1
	.byte	0x5b
	.long	.LVL119
	.long	.LVL120-1
	.short	0x1
	.byte	0x54
	.long	.LVL120-1
	.long	.LFE9
	.short	0x1
	.byte	0x5b
	.long	0
	.long	0
.LLST33:
	.long	.LVL106
	.long	.LVL107
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL109
	.long	.LVL110
	.short	0x1
	.byte	0x59
	.long	.LVL117
	.long	.LVL118
	.short	0x1
	.byte	0x59
	.long	.LVL119
	.long	.LFE9
	.short	0x1
	.byte	0x59
	.long	0
	.long	0
.LLST34:
	.long	.LVL99
	.long	.LVL100
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL102
	.long	.LVL108
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL108
	.long	.LVL110
	.short	0x2
	.byte	0x91
	.sleb128 -36
	.long	.LVL114
	.long	.LVL118
	.short	0x2
	.byte	0x91
	.sleb128 -36
	.long	.LVL119
	.long	.LFE9
	.short	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST35:
	.long	.LVL99
	.long	.LVL100
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL102
	.long	.LVL108
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL108
	.long	.LVL110
	.short	0x2
	.byte	0x91
	.sleb128 -40
	.long	.LVL114
	.long	.LVL118
	.short	0x2
	.byte	0x91
	.sleb128 -40
	.long	.LVL119
	.long	.LFE9
	.short	0x2
	.byte	0x91
	.sleb128 -40
	.long	0
	.long	0
.LLST36:
	.long	.LVL111
	.long	.LVL114
	.short	0x1
	.byte	0x58
	.long	.LVL114
	.long	.LVL117
	.short	0x4
	.byte	0x78
	.sleb128 -1024
	.byte	0x9f
	.long	0
	.long	0
.LLST37:
	.long	.LVL100
	.long	.LVL102
	.short	0x2
	.byte	0x91
	.sleb128 -48
	.long	.LVL108
	.long	.LFE9
	.short	0x2
	.byte	0x91
	.sleb128 -48
	.long	0
	.long	0
.LLST38:
	.long	.LVL113
	.long	.LVL116
	.short	0x1
	.byte	0x56
	.long	.LVL116
	.long	.LVL117
	.short	0x3
	.byte	0x77
	.sleb128 -8
	.byte	0x9f
	.long	0
	.long	0
	.section .debug_aranges
	.type	.debug_aranges$scode_local_13, @function
	.debug_aranges$scode_local_13:
	.long	0x4c
	.short	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.short	0
	.short	0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	0
	.long	0
	.section .debug_ranges
	.type	.debug_ranges$scode_local_14, @function
	.debug_ranges$scode_local_14:
.Ldebug_ranges0:
	.long	.LBB7
	.long	.LBE7
	.long	.LBB18
	.long	.LBE18
	.long	.LBB19
	.long	.LBE19
	.long	0
	.long	0
	.long	.LBB8
	.long	.LBE8
	.long	.LBB16
	.long	.LBE16
	.long	.LBB17
	.long	.LBE17
	.long	0
	.long	0
	.long	.LBB9
	.long	.LBE9
	.long	.LBB14
	.long	.LBE14
	.long	.LBB15
	.long	.LBE15
	.long	0
	.long	0
	.long	.LBB10
	.long	.LBE10
	.long	.LBB11
	.long	.LBE11
	.long	.LBB12
	.long	.LBE12
	.long	.LBB13
	.long	.LBE13
	.long	0
	.long	0
	.long	.LBB39
	.long	.LBE39
	.long	.LBB44
	.long	.LBE44
	.long	0
	.long	0
	.long	.LBB40
	.long	.LBE40
	.long	.LBB41
	.long	.LBE41
	.long	0
	.long	0
	.long	.LBB42
	.long	.LBE42
	.long	.LBB43
	.long	.LBE43
	.long	0
	.long	0
	.long	.LBB48
	.long	.LBE48
	.long	.LBB49
	.long	.LBE49
	.long	.LBB50
	.long	.LBE50
	.long	0
	.long	0
	.long	.LFB1
	.long	.LFE1
	.long	.LFB10
	.long	.LFE10
	.long	.LFB4
	.long	.LFE4
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	.LFB8
	.long	.LFE8
	.long	.LFB9
	.long	.LFE9
	.long	0
	.long	0
	.section .debug_line
	.type	.debug_line$scode_local_15, @function
	.debug_line$scode_local_15:
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
	.string	"eeprom.c"
	.uleb128 0x1
	.uleb128 0
	.uleb128 0
	.string	"stdint.h"
	.uleb128 0x2
	.uleb128 0
	.uleb128 0
	.string	"eeprom.h"
	.uleb128 0x1
	.uleb128 0
	.uleb128 0
	.byte	0
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM1
	.byte	0x42
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
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM5
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
	.long	.LM6
	.byte	0x92
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM7
	.byte	0x21
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
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM14
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM15
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM16
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM17
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM18
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM19
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM20
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM21
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM22
	.byte	0x3
	.sleb128 -87
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM23
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM24
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM25
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM26
	.byte	0x26
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM27
	.byte	0x3
	.sleb128 -26
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM28
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM29
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM30
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM31
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM32
	.byte	0x1e
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
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM36
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM37
	.byte	0x3
	.sleb128 -34
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
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM40
	.byte	0x3e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM41
	.byte	0x25
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM42
	.byte	0xd
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM43
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM44
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM45
	.byte	0x1c
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
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM49
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM50
	.byte	0x3
	.sleb128 -69
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
	.byte	0x4d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM53
	.byte	0x3
	.sleb128 -78
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM54
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM55
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM56
	.byte	0x5d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE10
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM57
	.byte	0xc9
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM58
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM59
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM60
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM61
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM62
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM63
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM64
	.byte	0x23
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM65
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM66
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM67
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
	.long	.LM68
	.byte	0x3
	.sleb128 237
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM69
	.byte	0x1c
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
	.long	.LM70
	.byte	0x3
	.sleb128 251
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM71
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM72
	.byte	0x2a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM73
	.byte	0x3
	.sleb128 -13
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM74
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM75
	.byte	0x1d
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
	.long	.LM76
	.byte	0x3
	.sleb128 285
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM77
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM78
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM79
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM80
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM81
	.byte	0x4c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM82
	.byte	0x3
	.sleb128 -56
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM83
	.byte	0x4f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM84
	.byte	0x3
	.sleb128 -48
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM85
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM86
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM87
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM88
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM89
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM90
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM91
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM92
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM93
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM94
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM95
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM96
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM97
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM98
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM99
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM100
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM101
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM102
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM103
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM104
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM105
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM106
	.byte	0x3
	.sleb128 -132
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM107
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM108
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM109
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM110
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM111
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM112
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE8
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM113
	.byte	0x3
	.sleb128 359
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM114
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM115
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM116
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM117
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM118
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM119
	.byte	0x5a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM120
	.byte	0x3
	.sleb128 -62
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM121
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM122
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM123
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM124
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM125
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM126
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x3
	.sleb128 -26
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM127
	.byte	0x4a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM128
	.byte	0x3
	.sleb128 -25
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM129
	.byte	0x3
	.sleb128 -27
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM130
	.byte	0x38
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM131
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM132
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM133
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM134
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM135
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM136
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM137
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM138
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM139
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM140
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM141
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM142
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM143
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM144
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM145
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM146
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM147
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM148
	.byte	0x22
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM149
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM150
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM151
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE9
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section .debug_str
	.type	.debug_str$scode_local_16, @function
	.debug_str$scode_local_16:
.LASF25:
	.string	"start_addr"
.LASF36:
	.string	"ee_init_section"
.LASF20:
	.string	"EEPROM_SEC_CCT_TABLE"
.LASF22:
	.string	"eeprom_sec_t"
.LASF30:
	.string	"next_record_seq"
.LASF4:
	.string	"short int"
.LASF37:
	.string	"ee_write_record"
.LASF11:
	.string	"sizetype"
.LASF28:
	.string	"active_page_addr"
.LASF57:
	.string	"ee_scan_page"
.LASF34:
	.string	"page_addr"
.LASF35:
	.string	"page_flg"
.LASF5:
	.string	"uint8_t"
.LASF23:
	.string	"record_flg"
.LASF14:
	.string	"EEPROM_ERR_SEC"
.LASF50:
	.string	"best_seq"
.LASF41:
	.string	"max_seq"
.LASF8:
	.string	"long long int"
.LASF46:
	.string	"ee_gc_section"
.LASF48:
	.string	"ee_load"
.LASF51:
	.string	"addr"
.LASF47:
	.string	"ee_save"
.LASF39:
	.string	"record_head"
.LASF3:
	.string	"unsigned char"
.LASF43:
	.string	"record_size"
.LASF27:
	.string	"page_count"
.LASF2:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF15:
	.string	"EEPROM_ERR_NO_DATA"
.LASF7:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF53:
	.string	"GNU C 4.7.0"
.LASF40:
	.string	"record_addr"
.LASF1:
	.string	"short unsigned int"
.LASF13:
	.string	"EEPROM_ERR_PARAM"
.LASF10:
	.string	"char"
.LASF6:
	.string	"uint16_t"
.LASF12:
	.string	"EEPROM_OK"
.LASF38:
	.string	"data"
.LASF17:
	.string	"EEPROM_ERR_FLASH"
.LASF58:
	.string	"sec_table"
.LASF21:
	.string	"EEPROM_SEC_OTA_FLAG"
.LASF55:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\KF32F330_EVAL\\\\Release"
.LASF32:
	.string	"sec_info"
.LASF26:
	.string	"size"
.LASF54:
	.string	"../Driver/eeprom.c"
.LASF45:
	.string	"ee_init_app"
.LASF44:
	.string	"ee_init_boot"
.LASF49:
	.string	"best_data_addr"
.LASF24:
	.string	"eeprom_record_head_t"
.LASF42:
	.string	"addr_cur"
.LASF56:
	.string	"ee_format_page"
.LASF33:
	.string	"page_index"
.LASF16:
	.string	"EEPROM_ERR_NO_SPACE"
.LASF31:
	.string	"eeprom_sec_info_t"
.LASF19:
	.string	"EEPROM_SEC_FACTORY"
.LASF18:
	.string	"EEPROM_SEC_RUNTIME"
.LASF29:
	.string	"write_addr"
.LASF52:
	.string	"ee_sec_info"
	.ident	"GCC: (GNU) 4.7.0-Dec 25 2025-16:17:10"
