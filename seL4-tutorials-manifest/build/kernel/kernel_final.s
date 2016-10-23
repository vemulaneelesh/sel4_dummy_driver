	.cpu cortex-a9
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"kernel_final.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.type	armv_contextSwitch_HWASID, %function
armv_contextSwitch_HWASID:
.LFB317:
	.file 1 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/context_switch.h"
	.loc 1 26 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
.LBB4069:
.LBB4070:
	.file 2 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h"
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LVL1:
.LBE4070:
.LBE4069:
.LBB4071:
.LBB4072:
	.file 3 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/plat/zynq7000/plat/machine/hardware.h"
	.loc 3 51 0
	ldr	r3, .L2
.LBE4072:
.LBE4071:
.LBB4073:
.LBB4074:
	.file 4 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h"
	.loc 4 136 0
	bic	r3, r3, #8128
	bic	r3, r3, #63
	orr	r3, r3, #24
	.loc 4 135 0
@ 135 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r3, c2, c0, 0
@ 0 "" 2
.LBE4074:
.LBE4073:
.LBB4075:
.LBB4076:
	.loc 2 29 0
@ 29 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL2:
.LBE4076:
.LBE4075:
.LBB4077:
.LBB4078:
.LBB4079:
.LBB4080:
	.loc 4 123 0
@ 123 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r1, c13, c0, 1
@ 0 "" 2
.LBB4081:
.LBB4082:
	.loc 2 29 0
@ 29 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL3:
.LBE4082:
.LBE4081:
.LBE4080:
.LBE4079:
.LBE4078:
.LBE4077:
.LBB4083:
.LBB4084:
	.loc 3 51 0
	add	r0, r0, #536870912
.LVL4:
.LBE4084:
.LBE4083:
.LBB4085:
.LBB4086:
	.loc 4 136 0
	bic	r0, r0, #8128
.LVL5:
	bic	r0, r0, #63
	orr	r0, r0, #24
	.loc 4 135 0
@ 135 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r0, c2, c0, 0
@ 0 "" 2
.LBE4086:
.LBE4085:
.LBB4087:
.LBB4088:
	.loc 2 29 0
@ 29 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	bx	lr
.L3:
	.align	2
.L2:
	.word	.LANCHOR0+536870912
.LBE4088:
.LBE4087:
	.cfi_endproc
.LFE317:
	.size	armv_contextSwitch_HWASID, .-armv_contextSwitch_HWASID
	.align	2
	.type	putEncodedChar, %function
putEncodedChar:
.LFB392:
	.file 5 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/machine/capdl.c"
	.loc 5 62 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL6:
	.loc 5 63 0
	cmp	r0, #187
.LBB4089:
.LBB4090:
	.file 6 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/plat/zynq7000/machine/io.c"
	.loc 6 52 0
	mvn	r1, #1040384
.LBE4090:
.LBE4089:
	.loc 5 63 0
	beq	.L6
	cmp	r0, #255
	beq	.L7
	cmp	r0, #170
	beq	.L8
	.loc 5 77 0
	cmp	r0, #19
	bhi	.L29
.L28:
.LBB4093:
.LBB4094:
	.loc 6 52 0
	ldr	r3, [r1, #-4051]
	mvn	r2, #1040384
	tst	r3, #8
	beq	.L28
.LBE4094:
.LBE4093:
	.loc 5 79 0
	add	r0, r0, #20
.LVL7:
.LBB4096:
.LBB4097:
	.loc 6 52 0
	mov	r1, r2
.LBE4097:
.LBE4096:
	.loc 5 79 0
	uxtb	r0, r0
.LVL8:
.LBB4099:
.LBB4095:
	.loc 6 53 0
	mov	r3, #170
	str	r3, [r2, #-4047]
.L15:
.LBE4095:
.LBE4099:
.LBB4100:
.LBB4098:
	.loc 6 52 0
	ldr	r3, [r1, #-4051]
	mvn	r2, #1040384
	tst	r3, #8
	beq	.L15
.LVL9:
.L42:
.LBE4098:
.LBE4100:
.LBB4101:
.LBB4102:
	.loc 6 53 0
	str	r0, [r2, #-4047]
	bx	lr
.LVL10:
.L6:
.LBE4102:
.LBE4101:
.LBB4104:
.LBB4091:
	.loc 6 52 0
	ldr	r3, [r1, #-4051]
	mvn	r2, #1040384
	tst	r3, #8
	beq	.L6
.LBE4091:
.LBE4104:
.LBB4105:
.LBB4106:
	mov	r1, r2
.LBE4106:
.LBE4105:
.LBB4108:
.LBB4092:
	.loc 6 53 0
	mov	r3, #170
	str	r3, [r2, #-4047]
.LVL11:
.L12:
.LBE4092:
.LBE4108:
.LBB4109:
.LBB4107:
	.loc 6 52 0
	ldr	r3, [r1, #-4051]
	mvn	r2, #1040384
	tst	r3, #8
	beq	.L12
	.loc 6 53 0
	mov	r3, #162
	str	r3, [r2, #-4047]
	bx	lr
.LVL12:
.L8:
.LBE4107:
.LBE4109:
.LBB4110:
.LBB4111:
	.loc 6 52 0
	ldr	r3, [r1, #-4051]
	mvn	r2, #1040384
	tst	r3, #8
	beq	.L8
.LBE4111:
.LBE4110:
.LBB4113:
.LBB4114:
	mov	r1, r2
.LBE4114:
.LBE4113:
.LBB4116:
.LBB4112:
	.loc 6 53 0
	mov	r3, #170
	str	r3, [r2, #-4047]
.LVL13:
.L9:
.LBE4112:
.LBE4116:
.LBB4117:
.LBB4115:
	.loc 6 52 0
	ldr	r3, [r1, #-4051]
	mvn	r2, #1040384
	tst	r3, #8
	beq	.L9
	.loc 6 53 0
	mov	r3, #161
	str	r3, [r2, #-4047]
	bx	lr
.LVL14:
.L7:
.LBE4115:
.LBE4117:
.LBB4118:
.LBB4119:
	.loc 6 52 0
	ldr	r3, [r1, #-4051]
	mvn	r2, #1040384
	tst	r3, #8
	beq	.L7
.LBE4119:
.LBE4118:
.LBB4121:
.LBB4122:
	mov	r1, r2
.LBE4122:
.LBE4121:
.LBB4124:
.LBB4120:
	.loc 6 53 0
	mov	r3, #170
	str	r3, [r2, #-4047]
.LVL15:
.L11:
.LBE4120:
.LBE4124:
.LBB4125:
.LBB4123:
	.loc 6 52 0
	ldr	r3, [r1, #-4051]
	mvn	r2, #1040384
	tst	r3, #8
	beq	.L11
	.loc 6 53 0
	mov	r3, #160
	str	r3, [r2, #-4047]
	bx	lr
.LVL16:
.L29:
.LBE4123:
.LBE4125:
.LBB4126:
.LBB4103:
	.loc 6 52 0
	ldr	r3, [r1, #-4051]
	mvn	r2, #1040384
	tst	r3, #8
	bne	.L42
	ldr	r3, [r1, #-4051]
	mvn	r2, #1040384
	tst	r3, #8
	beq	.L29
	b	.L42
.LBE4103:
.LBE4126:
	.cfi_endproc
.LFE392:
	.size	putEncodedChar, .-putEncodedChar
	.align	2
	.type	sendWord, %function
sendWord:
.LFB394:
	.loc 5 109 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL17:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 5 109 0
	mov	r4, r0
	.loc 5 110 0
	uxtb	r0, r0
.LVL18:
	bl	putEncodedChar
.LVL19:
	.loc 5 111 0
	ubfx	r0, r4, #8, #8
	bl	putEncodedChar
.LVL20:
	.loc 5 112 0
	ubfx	r0, r4, #16, #8
	bl	putEncodedChar
.LVL21:
	.loc 5 113 0
	mov	r0, r4, lsr #24
	.loc 5 114 0
	ldmfd	sp!, {r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL22:
	.loc 5 113 0
	b	putEncodedChar
.LVL23:
	.cfi_endproc
.LFE394:
	.size	sendWord, .-sendWord
	.section	.boot.text,"ax",%progbits
	.align	2
	.type	dist_init, %function
dist_init:
.LFB433:
	.file 7 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/machine/gic_pl390.c"
	.loc 7 217 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 7 219 0
	movw	r3, #:lower16:.LANCHOR1
	.loc 7 220 0
	mov	r1, #0
	.loc 7 219 0
	movt	r3, #:upper16:.LANCHOR1
	.loc 7 222 0
	mov	r0, r1
	.loc 7 219 0
	ldr	r2, [r3]
	.loc 7 224 0
	mvn	ip, #0
	.loc 7 219 0
	ldr	r3, [r2, #4]
	.loc 7 220 0
	str	r1, [r2]
	.loc 7 219 0
	and	r3, r3, #31
	add	r3, r3, #1
	mov	r3, r3, asl #5
.LVL24:
.L48:
	.loc 7 224 0 discriminator 3
	mov	r1, r0, asr #5
	.loc 7 222 0 discriminator 3
	add	r0, r0, #32
.LVL25:
	cmp	r3, r0
	add	r1, r2, r1, asl #2
	.loc 7 224 0 discriminator 3
	str	ip, [r1, #384]
	.loc 7 226 0 discriminator 3
	str	ip, [r1, #640]
	.loc 7 222 0 discriminator 3
	bgt	.L48
.LVL26:
	.loc 7 230 0 discriminator 1
	cmp	r3, #32
	beq	.L49
	.loc 7 230 0 is_stmt 0
	mov	r1, #32
	.loc 7 231 0 is_stmt 1
	mov	ip, #0
.LVL27:
.L50:
	.loc 7 231 0 is_stmt 0 discriminator 3
	mov	r0, r1, asr #2
	.loc 7 230 0 is_stmt 1 discriminator 3
	add	r1, r1, #4
.LVL28:
	cmp	r3, r1
	.loc 7 231 0 discriminator 3
	add	r0, r0, #256
	str	ip, [r2, r0, asl #2]
	.loc 7 230 0 discriminator 3
	bgt	.L50
.LVL29:
.L49:
	.loc 7 230 0 is_stmt 0
	mov	r1, #0
.LVL30:
.L51:
	.loc 7 239 0 is_stmt 1 discriminator 3
	mov	r0, r1, asr #2
	.loc 7 238 0 discriminator 3
	add	r1, r1, #4
.LVL31:
	.loc 7 239 0 discriminator 3
	movw	ip, #257
	.loc 7 238 0 discriminator 3
	cmp	r3, r1
	.loc 7 239 0 discriminator 3
	add	r0, r0, #512
	bfi	ip, ip, #16, #16
	str	ip, [r2, r0, asl #2]
	.loc 7 238 0 discriminator 3
	bgt	.L51
.LVL32:
	.loc 7 243 0 discriminator 1
	cmp	r3, #64
	ble	.L52
	.loc 7 243 0 is_stmt 0
	mov	r1, #64
.LVL33:
.L53:
	.loc 7 244 0 is_stmt 1 discriminator 3
	mov	r0, r1, asr #5
	.loc 7 243 0 discriminator 3
	add	r1, r1, #32
.LVL34:
	.loc 7 244 0 discriminator 3
	movw	ip, #21845
	.loc 7 243 0 discriminator 3
	cmp	r3, r1
	.loc 7 244 0 discriminator 3
	add	r0, r0, #768
	bfi	ip, ip, #16, #16
	str	ip, [r2, r0, asl #2]
	.loc 7 243 0 discriminator 3
	bgt	.L53
.LVL35:
.L52:
	.loc 7 243 0 is_stmt 0
	mov	r1, #0
	.loc 7 248 0 is_stmt 1
	mov	ip, r1
.LVL36:
.L54:
	.loc 7 248 0 is_stmt 0 discriminator 3
	mov	r0, r1, asr #5
	.loc 7 247 0 is_stmt 1 discriminator 3
	add	r1, r1, #32
.LVL37:
	cmp	r3, r1
	.loc 7 248 0 discriminator 3
	add	r0, r0, #32
	str	ip, [r2, r0, asl #2]
	.loc 7 247 0 discriminator 3
	bgt	.L54
	.loc 7 251 0
	mov	r3, #1
.LVL38:
	str	r3, [r2]
	bx	lr
	.cfi_endproc
.LFE433:
	.size	dist_init, .-dist_init
	.align	2
	.type	cpu_iface_init, %function
cpu_iface_init:
.LFB434:
	.loc 7 259 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 263 0
	movw	r2, #:lower16:.LANCHOR1
	.loc 7 259 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 7 263 0
	movt	r2, #:upper16:.LANCHOR1
	mvn	r1, #0
	.loc 7 265 0
	mov	ip, #0
	.loc 7 274 0
	mov	r4, #240
	.loc 7 263 0
	ldr	r3, [r2]
	.loc 7 275 0
	mov	lr, #3
	.loc 7 273 0
	ldr	r2, [r2, #4]
	.loc 7 277 0
	movw	r0, #1023
	.loc 7 263 0
	str	r1, [r3, #384]
	.loc 7 264 0
	str	r1, [r3, #640]
	.loc 7 265 0
	str	ip, [r3, #1024]
.LVL39:
	.loc 7 270 0
	str	r1, [r3, #3856]
.LVL40:
	str	r1, [r3, #3860]
.LVL41:
	str	r1, [r3, #3864]
.LVL42:
	str	r1, [r3, #3868]
.LVL43:
	.loc 7 273 0
	str	ip, [r2]
	.loc 7 274 0
	str	r4, [r2, #4]
	.loc 7 275 0
	str	lr, [r2, #8]
	.loc 7 277 0
	ldr	r3, [r2, #12]
.LVL44:
	ubfx	r1, r3, #0, #10
	cmp	r1, r0
	beq	.L67
.L66:
	.loc 7 278 0
	str	r3, [r2, #16]
	.loc 7 277 0
	ldr	r3, [r2, #12]
.LVL45:
	ubfx	r1, r3, #0, #10
	cmp	r1, r0
	bne	.L66
.L67:
	.loc 7 280 0
	mov	r3, #1
.LVL46:
	str	r3, [r2]
	ldmfd	sp!, {r4, pc}
	.cfi_endproc
.LFE434:
	.size	cpu_iface_init, .-cpu_iface_init
	.text
	.align	2
	.type	maskInterrupt.part.50, %function
maskInterrupt.part.50:
.LFB741:
	.loc 7 343 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL47:
.LBB4127:
.LBB4128:
	.loc 7 199 0
	movw	r2, #:lower16:.LANCHOR1
.LVL48:
	.loc 7 196 0
	mov	r3, r0, lsr #5
.LVL49:
	.loc 7 199 0
	movt	r2, #:upper16:.LANCHOR1
	ldr	r1, [r2]
	.loc 7 197 0
	and	r0, r0, #31
.LVL50:
	.loc 7 199 0
	mov	r2, #1
	add	r3, r3, #96
.LVL51:
	mov	r0, r2, asl r0
	str	r0, [r1, r3, asl #2]
	bx	lr
.LBE4128:
.LBE4127:
	.cfi_endproc
.LFE741:
	.size	maskInterrupt.part.50, .-maskInterrupt.part.50
	.align	2
	.type	preemptionPoint.part.51, %function
preemptionPoint.part.51:
.LFB742:
	.file 8 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/model/preemption.c"
	.loc 8 21 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LBB4129:
.LBB4130:
	.loc 7 335 0
	movw	r2, #:lower16:.LANCHOR1
.LBE4130:
.LBE4129:
	.loc 8 35 0
	movw	r3, #:lower16:ksWorkUnitsCompleted
.LBB4134:
.LBB4131:
	.loc 7 335 0
	movt	r2, #:upper16:.LANCHOR1
.LBE4131:
.LBE4134:
	.loc 8 35 0
	mov	r1, #0
.LBB4135:
.LBB4132:
	.loc 7 335 0
	ldr	r2, [r2, #4]
.LBE4132:
.LBE4135:
	.loc 8 35 0
	movt	r3, #:upper16:ksWorkUnitsCompleted
	str	r1, [r3]
.LBB4136:
.LBB4133:
	.loc 7 335 0
	ldr	r3, [r2, #24]
	ubfx	r3, r3, #0, #10
.LBE4133:
.LBE4136:
	.loc 8 36 0
	cmp	r3, #1020
	.loc 8 42 0
	movcc	r0, #4
	movcs	r0, r1
	bx	lr
	.cfi_endproc
.LFE742:
	.size	preemptionPoint.part.51, .-preemptionPoint.part.51
	.align	2
	.type	getDecodedChar, %function
getDecodedChar:
.LFB391:
	.loc 5 28 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL52:
.LBB4145:
.LBB4146:
	.loc 6 58 0
	mvn	r1, #1040384
.L76:
	ldr	r3, [r1, #-4051]
	mvn	r2, #1040384
	tst	r3, #256
	beq	.L76
	.loc 6 59 0
	ldr	r3, [r2, #-4047]
	uxtb	r3, r3
.LBE4146:
.LBE4145:
	.loc 5 31 0
	cmp	r3, #255
	beq	.L85
	.loc 5 34 0
	cmp	r3, #170
	beq	.L79
.L78:
	.loc 5 56 0
	strb	r3, [r0]
	.loc 5 57 0
	mov	r3, #0
.L77:
	.loc 5 59 0
	mov	r0, r3
.LVL53:
	bx	lr
.LVL54:
.L79:
.LBB4147:
.LBB4148:
.LBB4149:
.LBB4150:
	.loc 6 58 0
	ldr	r3, [r2, #-4051]
	mvn	r1, #1040384
	tst	r3, #256
	beq	.L79
	.loc 6 59 0
	ldr	r3, [r1, #-4047]
	uxtb	r3, r3
.LBE4150:
.LBE4149:
	.loc 5 36 0
	cmp	r3, #255
	beq	.L85
	.loc 5 39 0
	cmp	r3, #161
	beq	.L81
	cmp	r3, #162
	beq	.L82
	cmp	r3, #160
	beq	.L93
	.loc 5 50 0
	sub	r3, r3, #20
	uxtb	r3, r3
	cmp	r3, #19
	.loc 5 54 0
	movhi	r3, #0
	.loc 5 50 0
	bhi	.L77
	b	.L78
.L85:
.LBE4148:
.LBE4147:
	.loc 5 32 0
	mov	r3, #1
	.loc 5 59 0
	mov	r0, r3
.LVL55:
	bx	lr
.LVL56:
.L81:
.LBB4152:
.LBB4151:
	.loc 5 41 0
	mvn	r2, #85
	.loc 5 54 0
	mov	r3, #0
	.loc 5 41 0
	strb	r2, [r0]
	b	.L77
.L93:
	.loc 5 44 0
	mvn	r2, #0
	.loc 5 54 0
	mov	r3, #0
	.loc 5 44 0
	strb	r2, [r0]
	b	.L77
.L82:
	.loc 5 47 0
	mvn	r2, #68
	.loc 5 54 0
	mov	r3, #0
	.loc 5 47 0
	strb	r2, [r0]
	b	.L77
.LBE4151:
.LBE4152:
	.cfi_endproc
.LFE391:
	.size	getDecodedChar, .-getDecodedChar
	.align	2
	.type	getArg32, %function
getArg32:
.LFB393:
	.loc 5 87 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL57:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 5 88 0
	mov	r3, #0
	.loc 5 87 0
	mov	r4, r0
	.loc 5 92 0
	add	r0, sp, #4
.LVL58:
	.loc 5 88 0
	strb	r3, [sp, #4]
	.loc 5 89 0
	strb	r3, [sp, #5]
	.loc 5 90 0
	strb	r3, [sp, #6]
	.loc 5 91 0
	strb	r3, [sp, #7]
	.loc 5 92 0
	bl	getDecodedChar
.LVL59:
	cmp	r0, #0
	beq	.L95
.L97:
	.loc 5 93 0
	mov	r0, #1
.L96:
	.loc 5 106 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldmfd	sp!, {r4, pc}
.LVL60:
.L95:
	.cfi_restore_state
	.loc 5 95 0
	add	r0, sp, #5
	bl	getDecodedChar
.LVL61:
	cmp	r0, #0
	bne	.L97
	.loc 5 98 0
	add	r0, sp, #6
	bl	getDecodedChar
.LVL62:
	cmp	r0, #0
	bne	.L97
	.loc 5 101 0
	add	r0, sp, #7
	bl	getDecodedChar
.LVL63:
	cmp	r0, #0
	bne	.L97
	.loc 5 104 0
	ldrb	r1, [sp, #5]	@ zero_extendqisi2
	ldrb	r3, [sp, #4]	@ zero_extendqisi2
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	ldrb	ip, [sp, #6]	@ zero_extendqisi2
	mov	r1, r1, asl #16
	orr	r3, r1, r3, asl #24
	orr	r3, r3, r2
	orr	r3, r3, ip, asl #8
	str	r3, [r4]
	.loc 5 105 0
	b	.L96
	.cfi_endproc
.LFE393:
	.size	getArg32, .-getArg32
	.align	2
	.global	clean_D_PoU
	.type	clean_D_PoU, %function
clean_D_PoU:
.LFB293:
	.file 9 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/armv/armv7-a/cache.c"
	.loc 9 73 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
.LBB4153:
.LBB4154:
	.loc 9 32 0
@ 32 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mrc p15, 1, r8, c0, c0, 1
@ 0 "" 2
.LVL64:
.LBE4154:
.LBE4153:
	.loc 9 75 0
	ubfx	r7, r8, #27, #3
.LVL65:
	.loc 9 78 0
	cmp	r7, #0
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov	r5, #0
	add	r7, r7, r7, asl #1
.LVL66:
	mov	r6, r5
.LVL67:
.L104:
	.loc 9 79 0
	mov	r3, r8, asr r5
	and	r3, r3, #7
	cmp	r3, #1
	bls	.L101
.LVL68:
.LBB4155:
.LBB4156:
.LBB4157:
	.loc 9 53 0
@ 53 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mrc p15, 2, r2, c0, c0, 0
@ 0 "" 2
	.loc 9 55 0
	mov	r4, r6, asl #1
@ 55 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mcr p15, 2, r4, c0, c0, 0
@ 0 "" 2
	.loc 9 57 0
@ 57 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mrc p15, 1, r3, c0, c0, 0
@ 0 "" 2
	.loc 9 59 0
@ 59 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mcr p15, 2, r2, c0, c0, 0
@ 0 "" 2
.LBE4157:
.LBE4156:
	.loc 9 82 0
	ubfx	r9, r3, #3, #10
	.loc 9 81 0
	and	ip, r3, #7
	.loc 9 84 0
	ubfx	r3, r3, #13, #15
	.loc 9 81 0
	add	ip, ip, #4
.LVL69:
	.loc 9 84 0
	add	r0, r3, #1
	.loc 9 87 0
	mov	lr, #0
	.loc 9 82 0
	add	r10, r9, #1
.LVL70:
.LBB4158:
.LBB4159:
	.file 10 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/util.h"
	.loc 10 87 0
	clz	r9, r9
.LVL71:
.L102:
	orr	r1, r4, lr, asl r9
.LBE4159:
.LBE4158:
.LBE4155:
	.loc 9 78 0
	mov	r3, #0
.LVL72:
.L103:
.LBB4163:
.LBB4160:
	.loc 9 92 0 discriminator 3
	orr	r2, r1, r3, asl ip
.LVL73:
.LBB4161:
.LBB4162:
	.loc 9 21 0 discriminator 3
@ 21 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mcr p15, 0, r2, c7, c10, 2
@ 0 "" 2
.LBE4162:
.LBE4161:
	.loc 9 90 0 discriminator 3
	add	r3, r3, #1
.LVL74:
	cmp	r0, r3
	bgt	.L103
.LBE4160:
	.loc 9 87 0 discriminator 2
	add	lr, lr, #1
.LVL75:
	cmp	r10, lr
	bgt	.L102
.LVL76:
.L101:
	add	r5, r5, #3
.LBE4163:
	.loc 9 78 0
	add	r6, r6, #1
.LVL77:
	cmp	r5, r7
	bne	.L104
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	.cfi_endproc
.LFE293:
	.size	clean_D_PoU, .-clean_D_PoU
	.align	2
	.global	cleanInvalidate_D_PoC
	.type	cleanInvalidate_D_PoC, %function
cleanInvalidate_D_PoC:
.LFB294:
	.loc 9 101 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
.LBB4164:
.LBB4165:
	.loc 9 32 0
@ 32 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mrc p15, 1, r8, c0, c0, 1
@ 0 "" 2
.LVL78:
.LBE4165:
.LBE4164:
	.loc 9 103 0
	ubfx	r7, r8, #24, #3
.LVL79:
	.loc 9 106 0
	cmp	r7, #0
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov	r5, #0
	add	r7, r7, r7, asl #1
.LVL80:
	mov	r6, r5
.LVL81:
.L114:
	.loc 9 107 0
	mov	r3, r8, asr r5
	and	r3, r3, #7
	cmp	r3, #1
	bls	.L111
.LVL82:
.LBB4166:
.LBB4167:
.LBB4168:
	.loc 9 53 0
@ 53 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mrc p15, 2, r2, c0, c0, 0
@ 0 "" 2
	.loc 9 55 0
	mov	r4, r6, asl #1
@ 55 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mcr p15, 2, r4, c0, c0, 0
@ 0 "" 2
	.loc 9 57 0
@ 57 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mrc p15, 1, r3, c0, c0, 0
@ 0 "" 2
	.loc 9 59 0
@ 59 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mcr p15, 2, r2, c0, c0, 0
@ 0 "" 2
.LBE4168:
.LBE4167:
	.loc 9 110 0
	ubfx	r9, r3, #3, #10
	.loc 9 109 0
	and	ip, r3, #7
	.loc 9 112 0
	ubfx	r3, r3, #13, #15
	.loc 9 109 0
	add	ip, ip, #4
.LVL83:
	.loc 9 112 0
	add	r0, r3, #1
	.loc 9 115 0
	mov	lr, #0
	.loc 9 110 0
	add	r10, r9, #1
.LVL84:
.LBB4169:
.LBB4170:
	.loc 10 87 0
	clz	r9, r9
.LVL85:
.L112:
	orr	r1, r4, lr, asl r9
.LBE4170:
.LBE4169:
.LBE4166:
	.loc 9 106 0
	mov	r3, #0
.LVL86:
.L113:
.LBB4174:
.LBB4171:
	.loc 9 120 0 discriminator 3
	orr	r2, r1, r3, asl ip
.LVL87:
.LBB4172:
.LBB4173:
	.loc 9 26 0 discriminator 3
@ 26 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mcr p15, 0, r2, c7, c14, 2
@ 0 "" 2
.LBE4173:
.LBE4172:
	.loc 9 118 0 discriminator 3
	add	r3, r3, #1
.LVL88:
	cmp	r0, r3
	bgt	.L113
.LBE4171:
	.loc 9 115 0 discriminator 2
	add	lr, lr, #1
.LVL89:
	cmp	r10, lr
	bgt	.L112
.LVL90:
.L111:
	add	r5, r5, #3
.LBE4174:
	.loc 9 106 0
	add	r6, r6, #1
.LVL91:
	cmp	r5, r7
	bne	.L114
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	.cfi_endproc
.LFE294:
	.size	cleanInvalidate_D_PoC, .-cleanInvalidate_D_PoC
	.align	2
	.global	armv_init_user_access
	.type	armv_init_user_access, %function
armv_init_user_access:
.LFB297:
	.file 11 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/armv/armv7-a/user_access.c"
	.loc 11 53 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 11 56 0
@ 56 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/armv/armv7-a/user_access.c" 1
	mrc   p15, 0,  r3,  c0,  c1, 2
@ 0 "" 2
.LVL92:
	.loc 11 61 0
@ 61 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/armv/armv7-a/user_access.c" 1
	mrc   p15, 0,  r3,  c0,  c1, 1
@ 0 "" 2
.LVL93:
	.loc 11 62 0
	tst	r3, #65536
	bxeq	lr
.LBB4175:
.LBB4176:
	.loc 11 41 0
@ 41 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/armv/armv7-a/user_access.c" 1
	mrc   p15, 0,  r3, c14,  c1, 0
@ 0 "" 2
.LVL94:
.LBB4177:
	.loc 11 48 0
@ 48 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/armv/armv7-a/user_access.c" 1
	mcr   p15, 0,  r3, c14,  c1, 0
@ 0 "" 2
	bx	lr
.LBE4177:
.LBE4176:
.LBE4175:
	.cfi_endproc
.LFE297:
	.size	armv_init_user_access, .-armv_init_user_access
	.section	.boot.text
	.align	2
	.global	Arch_configureIdleThread
	.type	Arch_configureIdleThread, %function
Arch_configureIdleThread:
.LFB313:
	.file 12 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/kernel/thread.c"
	.loc 12 28 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL95:
.LBB4178:
.LBB4179:
	.file 13 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/machine/registerset.h"
	.loc 13 21 0
	movw	r3, #:lower16:idle_thread
.LVL96:
.LBE4179:
.LBE4178:
.LBB4182:
.LBB4183:
	mov	r2, #83
.LBE4183:
.LBE4182:
.LBB4185:
.LBB4180:
	movt	r3, #:upper16:idle_thread
.LBE4180:
.LBE4185:
.LBB4186:
.LBB4184:
	str	r2, [r0, #64]
.LVL97:
.LBE4184:
.LBE4186:
.LBB4187:
.LBB4181:
	str	r3, [r0, #60]
	bx	lr
.LBE4181:
.LBE4187:
	.cfi_endproc
.LFE313:
	.size	Arch_configureIdleThread, .-Arch_configureIdleThread
	.text
	.align	2
	.global	Arch_switchToIdleThread
	.type	Arch_switchToIdleThread, %function
Arch_switchToIdleThread:
.LFB314:
	.loc 12 35 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 12 36 0
	movw	r3, #:lower16:.LANCHOR2
	mov	r2, #0
	movt	r3, #:upper16:.LANCHOR2
	str	r2, [r3, #16]
	bx	lr
	.cfi_endproc
.LFE314:
	.size	Arch_switchToIdleThread, .-Arch_switchToIdleThread
	.align	2
	.global	Arch_activateIdleThread
	.type	Arch_activateIdleThread, %function
Arch_activateIdleThread:
.LFB315:
	.loc 12 41 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL98:
	bx	lr
	.cfi_endproc
.LFE315:
	.size	Arch_activateIdleThread, .-Arch_activateIdleThread
	.section	.boot.text
	.align	2
	.global	activate_global_pd
	.type	activate_global_pd, %function
activate_global_pd:
.LFB324:
	.file 14 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/kernel/vspace.c"
	.loc 14 304 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 14 304 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
.LBB4188:
.LBB4189:
.LBB4190:
.LBB4191:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LBE4191:
.LBE4190:
	.file 15 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/machine/cache.c"
	.loc 15 182 0
	bl	cleanInvalidate_D_PoC
.LVL99:
.LBB4192:
.LBB4193:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LBE4193:
.LBE4192:
.LBB4194:
.LBB4195:
	.loc 4 253 0
	mov	r2, #0
@ 253 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c7, c5, 0
@ 0 "" 2
.LBB4196:
.LBB4197:
	.loc 2 29 0
@ 29 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LBE4197:
.LBE4196:
.LBE4195:
.LBE4194:
.LBB4198:
.LBB4199:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LVL100:
.LBE4199:
.LBE4198:
.LBE4189:
.LBE4188:
.LBB4200:
.LBB4201:
.LBB4202:
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LVL101:
.LBE4202:
.LBE4201:
.LBE4200:
.LBB4207:
.LBB4208:
	.loc 3 51 0
	ldr	r3, .L129
.LBE4208:
.LBE4207:
.LBB4209:
.LBB4203:
.LBB4204:
	.loc 4 136 0
	bic	r3, r3, #8128
	bic	r3, r3, #63
	orr	r3, r3, #24
	.loc 4 135 0
@ 135 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r3, c2, c0, 0
@ 0 "" 2
.LBE4204:
.LBE4203:
.LBB4205:
.LBB4206:
	.loc 2 29 0
@ 29 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LBE4206:
.LBE4205:
.LBE4209:
.LBB4210:
.LBB4211:
.LBB4212:
.LBB4213:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LBE4213:
.LBE4212:
	.loc 4 156 0
@ 156 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c8, c7, 0
@ 0 "" 2
.LBB4214:
.LBB4215:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LBE4215:
.LBE4214:
.LBB4216:
.LBB4217:
	.loc 2 29 0
@ 29 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LBE4217:
.LBE4216:
.LBE4211:
.LBE4210:
	.loc 14 311 0
	mov	r0, #-536870912
	bl	lockTLBEntry
.LVL102:
	.loc 14 312 0
	mov	r0, #0
	.loc 14 313 0
	ldmfd	sp!, {r3, lr}
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	.loc 14 312 0
	movt	r0, 65535
	b	lockTLBEntry
.LVL103:
.L130:
	.align	2
.L129:
	.word	.LANCHOR0+536870912
	.cfi_endproc
.LFE324:
	.size	activate_global_pd, .-activate_global_pd
	.text
	.align	2
	.global	copyGlobalMappings
	.type	copyGlobalMappings, %function
copyGlobalMappings:
.LFB326:
	.loc 14 327 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL104:
	movw	ip, #:lower16:.LANCHOR0
	.loc 14 327 0
	movw	r2, #3585
	movt	ip, #:upper16:.LANCHOR0
	mov	r3, #3584
	b	.L132
.LVL105:
.L133:
	add	r3, r3, #1
	add	r2, r2, #1
.L132:
.LVL106:
	.loc 14 332 0
	cmp	r3, #4080
	beq	.L133
	.loc 14 333 0
	ldr	r1, [ip, r3, asl #2]
	.loc 14 331 0
	cmp	r2, #4096
	.loc 14 333 0
	str	r1, [r0, r3, asl #2]
.LVL107:
	.loc 14 331 0
	bne	.L133
	.loc 14 336 0
	bx	lr
	.cfi_endproc
.LFE326:
	.size	copyGlobalMappings, .-copyGlobalMappings
	.align	2
	.global	findPDForASID
	.type	findPDForASID, %function
findPDForASID:
.LFB328:
	.loc 14 369 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL108:
	.loc 14 374 0
	movw	r3, #:lower16:armKSASIDTable
	mov	r2, r1, lsr #10
	movt	r3, #:upper16:armKSASIDTable
	ldr	r3, [r3, r2, asl #2]
.LVL109:
	.loc 14 375 0
	cmp	r3, #0
	beq	.L140
	.loc 14 383 0
	ubfx	r1, r1, #0, #10
.LVL110:
	ldr	r3, [r3, r1, asl #2]
.LVL111:
	.loc 14 384 0
	cmp	r3, #0
	beq	.L140
.LVL112:
	.loc 14 394 0
	mov	r2, #0
.LVL113:
	stmia	r0, {r2, r3}
	.loc 14 395 0
	bx	lr
.LVL114:
.L140:
	.loc 14 376 0
	movw	r3, #:lower16:current_lookup_fault
	mov	r2, #0
.LVL115:
	movt	r3, #:upper16:current_lookup_fault
	.loc 14 380 0
	mov	r1, #2
	.loc 14 376 0
	str	r2, [r3]
	str	r2, [r3, #4]
.LVL116:
	.loc 14 380 0
	stmia	r0, {r1, r2}
	bx	lr
	.cfi_endproc
.LFE328:
	.size	findPDForASID, .-findPDForASID
	.align	2
	.global	lookupPDSlot
	.type	lookupPDSlot, %function
lookupPDSlot:
.LFB331:
	.loc 14 436 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL117:
	.loc 14 439 0
	mov	r1, r1, lsr #20
.LVL118:
	.loc 14 441 0
	add	r0, r0, r1, asl #2
.LVL119:
	bx	lr
	.cfi_endproc
.LFE331:
	.size	lookupPDSlot, .-lookupPDSlot
	.align	2
	.global	maskVMRights
	.type	maskVMRights, %function
maskVMRights:
.LFB345:
	.loc 14 775 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL120:
	.loc 14 776 0
	cmp	r0, #0
	bxeq	lr
	.loc 14 779 0
	cmp	r0, #2
	beq	.L153
	.loc 14 783 0
	cmp	r0, #3
	beq	.L154
.L151:
	.loc 14 791 0
	mov	r0, #1
.LVL121:
	.loc 14 792 0
	bx	lr
.LVL122:
.L153:
	.loc 14 779 0 discriminator 1
	tst	r1, #2
	.loc 14 791 0 discriminator 1
	movne	r0, #2
.LVL123:
	moveq	r0, #1
	bx	lr
.LVL124:
.L154:
	.loc 14 783 0 discriminator 1
	tst	r1, #2
	beq	.L151
.LVL125:
	.loc 14 785 0
	tst	r1, #1
	.loc 14 788 0
	moveq	r0, #2
.LVL126:
	movne	r0, #3
	bx	lr
	.cfi_endproc
.LFE345:
	.size	maskVMRights, .-maskVMRights
	.align	2
	.global	performPageTableInvocationMap
	.type	performPageTableInvocationMap, %function
performPageTableInvocationMap:
.LFB365:
	.loc 14 2012 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL127:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 14 2012 0
	ldr	lr, [sp, #16]
	stmia	sp, {r0, r1}
	.loc 14 2013 0
	ldmia	sp, {r0, r1}
	stmia	r2, {r0, r1}
	.loc 14 2014 0
	str	r3, [lr]
.LVL128:
.LBB4224:
.LBB4225:
	.loc 4 212 0
@ 212 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, lr, c7, c11, 1
@ 0 "" 2
.LBB4226:
.LBB4227:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE4227:
.LBE4226:
.LBE4225:
.LBE4224:
	.loc 14 2018 0
	mov	r0, #0
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE365:
	.size	performPageTableInvocationMap, .-performPageTableInvocationMap
	.align	2
	.global	cleanCacheRange_PoU
	.type	cleanCacheRange_PoU, %function
cleanCacheRange_PoU:
.LFB385:
	.loc 15 86 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL129:
	.loc 15 95 0
	mov	r1, r1, lsr #5
.LVL130:
	mov	r0, r0, lsr #5
.LVL131:
	add	r1, r1, #1
	cmp	r0, r1
	bxcs	lr
.L160:
.LVL132:
	.loc 15 96 0 discriminator 3
	mov	r3, r0, asl #5
.LVL133:
.LBB4228:
.LBB4229:
	.loc 4 212 0 discriminator 3
@ 212 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r3, c7, c11, 1
@ 0 "" 2
.LBB4230:
.LBB4231:
	.loc 2 23 0 discriminator 3
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE4231:
.LBE4230:
.LBE4229:
.LBE4228:
	.loc 15 95 0 discriminator 3
	add	r0, r0, #1
.LVL134:
	cmp	r0, r1
	bne	.L160
	bx	lr
	.cfi_endproc
.LFE385:
	.size	cleanCacheRange_PoU, .-cleanCacheRange_PoU
	.align	2
	.global	invalidateCacheRange_I
	.type	invalidateCacheRange_I, %function
invalidateCacheRange_I:
.LFB387:
	.loc 15 146 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL135:
	.loc 15 150 0
	mov	r1, r1, lsr #5
.LVL136:
	mov	r0, r0, lsr #5
.LVL137:
	add	r1, r1, #1
	cmp	r0, r1
	bxcs	lr
.L165:
.LVL138:
	.loc 15 151 0 discriminator 3
	mov	r3, r0, asl #5
.LVL139:
.LBB4232:
.LBB4233:
	.loc 4 240 0 discriminator 3
@ 240 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r3, c7, c5, 1
@ 0 "" 2
.LBB4234:
.LBB4235:
	.loc 2 29 0 discriminator 3
@ 29 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LBE4235:
.LBE4234:
.LBE4233:
.LBE4232:
	.loc 15 150 0 discriminator 3
	add	r0, r0, #1
.LVL140:
	cmp	r0, r1
	bne	.L165
	bx	lr
	.cfi_endproc
.LFE387:
	.size	invalidateCacheRange_I, .-invalidateCacheRange_I
	.align	2
	.global	branchFlushRange
	.type	branchFlushRange, %function
branchFlushRange:
.LFB388:
	.loc 15 158 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL141:
	.loc 15 162 0
	mov	r1, r1, lsr #5
.LVL142:
	mov	r0, r0, lsr #5
.LVL143:
	add	r1, r1, #1
	cmp	r0, r1
	bxcs	lr
.L170:
.LVL144:
	.loc 15 163 0 discriminator 3
	mov	r3, r0, asl #5
.LVL145:
.LBB4236:
.LBB4237:
	.loc 4 277 0 discriminator 3
@ 277 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r3, c7, c5, 7
@ 0 "" 2
.LBE4237:
.LBE4236:
	.loc 15 162 0 discriminator 3
	add	r0, r0, #1
.LVL146:
	cmp	r0, r1
	bne	.L170
	bx	lr
	.cfi_endproc
.LFE388:
	.size	branchFlushRange, .-branchFlushRange
	.align	2
	.global	cleanCaches_PoU
	.type	cleanCaches_PoU, %function
cleanCaches_PoU:
.LFB389:
	.loc 15 170 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
.LBB4238:
.LBB4239:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LBE4239:
.LBE4238:
	.loc 15 172 0
	bl	clean_D_PoU
.LVL147:
.LBB4240:
.LBB4241:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LBE4241:
.LBE4240:
.LBB4242:
.LBB4243:
	.loc 4 253 0
	mov	r3, #0
@ 253 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r3, c7, c5, 0
@ 0 "" 2
.LBB4244:
.LBB4245:
	.loc 2 29 0
@ 29 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LBE4245:
.LBE4244:
.LBE4243:
.LBE4242:
.LBB4246:
.LBB4247:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	ldmfd	sp!, {r3, pc}
.LBE4247:
.LBE4246:
	.cfi_endproc
.LFE389:
	.size	cleanCaches_PoU, .-cleanCaches_PoU
	.align	2
	.global	cleanInvalidateL1Caches
	.type	cleanInvalidateL1Caches, %function
cleanInvalidateL1Caches:
.LFB390:
	.loc 15 180 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
.LBB4248:
.LBB4249:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LBE4249:
.LBE4248:
	.loc 15 182 0
	bl	cleanInvalidate_D_PoC
.LVL148:
.LBB4250:
.LBB4251:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LBE4251:
.LBE4250:
.LBB4252:
.LBB4253:
	.loc 4 253 0
	mov	r3, #0
@ 253 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r3, c7, c5, 0
@ 0 "" 2
.LBB4254:
.LBB4255:
	.loc 2 29 0
@ 29 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LBE4255:
.LBE4254:
.LBE4253:
.LBE4252:
.LBB4256:
.LBB4257:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	ldmfd	sp!, {r3, pc}
.LBE4257:
.LBE4256:
	.cfi_endproc
.LFE390:
	.size	cleanInvalidateL1Caches, .-cleanInvalidateL1Caches
	.align	2
	.global	set_breakpoint
	.type	set_breakpoint, %function
set_breakpoint:
.LFB417:
	.file 16 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/machine/debug.c"
	.loc 16 98 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL149:
	.loc 16 101 0
	movw	r3, #:lower16:n_breakpoints
	.loc 16 98 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 16 101 0
	movt	r3, #:upper16:n_breakpoints
	ldr	lr, [r3]
	cmp	lr, #0
	beq	.L197
	movw	r4, #:lower16:breakpoints
	movt	r4, #:upper16:breakpoints
	ldr	r3, [r4, #4]
	cmp	r3, #0
	beq	.L178
	mov	r2, r4
	mov	r3, #0
	b	.L179
.LVL150:
.L205:
	.loc 16 101 0 is_stmt 0 discriminator 3
	ldr	ip, [r2, #4]
	cmp	ip, #0
	beq	.L204
.LVL151:
.L179:
	.loc 16 101 0 discriminator 4
	add	r3, r3, #1
.LVL152:
	add	r2, r2, #8
	cmp	r3, lr
	bne	.L205
.LVL153:
.L197:
	.loc 16 104 0 is_stmt 1
	mvn	r2, #0
.L198:
	.loc 16 119 0
	mov	r0, r2
.LVL154:
	ldmfd	sp!, {r4, pc}
.LVL155:
.L204:
	.loc 16 108 0
	add	ip, r4, r3, asl #3
	.loc 16 107 0
	str	r0, [r4, r3, asl #3]
	mov	r2, r3
	.loc 16 108 0
	str	r1, [ip, #4]
.LVL156:
.LBB4262:
.LBB4263:
	.file 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h"
	.loc 17 170 0
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L193
.L195:
	.word	.L181
	.word	.L183
	.word	.L185
	.word	.L187
	.word	.L189
	.word	.L191
.LVL157:
.L191:
	.loc 17 187 0
@ 187 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r0, c0, c5, 4
@ 0 "" 2
.LVL158:
.L192:
.LBE4263:
.LBE4262:
.LBB4269:
.LBB4270:
	.loc 17 255 0
	movw	r3, #487
@ 255 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r3, c0, c5, 5
@ 0 "" 2
	mov	r2, #5
.LVL159:
.LBE4270:
.LBE4269:
	.loc 16 119 0
	mov	r0, r2
.LVL160:
	ldmfd	sp!, {r4, pc}
.LVL161:
.L189:
.LBB4277:
.LBB4264:
	.loc 17 184 0
@ 184 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r0, c0, c4, 4
@ 0 "" 2
.LVL162:
.L190:
.LBE4264:
.LBE4277:
.LBB4278:
.LBB4271:
	.loc 17 252 0
	movw	r3, #487
@ 252 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r3, c0, c4, 5
@ 0 "" 2
	mov	r2, #4
.LVL163:
.LBE4271:
.LBE4278:
	.loc 16 119 0
	mov	r0, r2
.LVL164:
	ldmfd	sp!, {r4, pc}
.LVL165:
.L187:
.LBB4279:
.LBB4265:
	.loc 17 181 0
@ 181 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r0, c0, c3, 4
@ 0 "" 2
.LVL166:
.L188:
.LBE4265:
.LBE4279:
.LBB4280:
.LBB4272:
	.loc 17 249 0
	movw	r3, #487
@ 249 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r3, c0, c3, 5
@ 0 "" 2
	mov	r2, #3
.LVL167:
.LBE4272:
.LBE4280:
	.loc 16 119 0
	mov	r0, r2
.LVL168:
	ldmfd	sp!, {r4, pc}
.LVL169:
.L185:
.LBB4281:
.LBB4266:
	.loc 17 178 0
@ 178 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r0, c0, c2, 4
@ 0 "" 2
.LVL170:
.L186:
.LBE4266:
.LBE4281:
.LBB4282:
.LBB4273:
	.loc 17 246 0
	movw	r3, #487
@ 246 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r3, c0, c2, 5
@ 0 "" 2
	mov	r2, #2
.LVL171:
.LBE4273:
.LBE4282:
	.loc 16 119 0
	mov	r0, r2
.LVL172:
	ldmfd	sp!, {r4, pc}
.LVL173:
.L183:
.LBB4283:
.LBB4267:
	.loc 17 175 0
@ 175 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r0, c0, c1, 4
@ 0 "" 2
.LVL174:
.L184:
.LBE4267:
.LBE4283:
.LBB4284:
.LBB4274:
	.loc 17 243 0
	movw	r3, #487
@ 243 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r3, c0, c1, 5
@ 0 "" 2
	mov	r2, #1
.LVL175:
.LBE4274:
.LBE4284:
	.loc 16 119 0
	mov	r0, r2
.LVL176:
	ldmfd	sp!, {r4, pc}
.LVL177:
.L178:
	.loc 16 108 0
	stmia	r4, {r0, r1}
.LVL178:
.L181:
.LBB4285:
.LBB4268:
	.loc 17 172 0
@ 172 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r0, c0, c0, 4
@ 0 "" 2
.LVL179:
.L182:
.LBE4268:
.LBE4285:
.LBB4286:
.LBB4275:
	.loc 17 240 0
	movw	r3, #487
@ 240 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r3, c0, c0, 5
@ 0 "" 2
	mov	r2, #0
.LBE4275:
.LBE4286:
	.loc 16 119 0
	mov	r0, r2
.LVL180:
	ldmfd	sp!, {r4, pc}
.LVL181:
.L193:
.LBB4287:
.LBB4276:
	.loc 17 238 0
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L198
.L194:
	.word	.L182
	.word	.L184
	.word	.L186
	.word	.L188
	.word	.L190
	.word	.L192
.LBE4276:
.LBE4287:
	.cfi_endproc
.LFE417:
	.size	set_breakpoint, .-set_breakpoint
	.align	2
	.global	clear_breakpoint
	.type	clear_breakpoint, %function
clear_breakpoint:
.LFB418:
	.loc 16 123 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL182:
	.loc 16 126 0
	movw	r3, #:lower16:n_breakpoints
	.loc 16 123 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 16 126 0
	movt	r3, #:upper16:n_breakpoints
	ldr	lr, [r3]
	cmp	lr, #0
	ldmeqfd	sp!, {r4, pc}
	movw	ip, #:lower16:breakpoints
	mov	r3, #0
	movt	ip, #:upper16:breakpoints
	.loc 16 130 0
	mov	r4, r3
	mov	r2, ip
	b	.L217
.LVL183:
.L208:
	.loc 16 126 0 discriminator 2
	add	r3, r3, #1
.LVL184:
	add	r2, r2, #8
	cmp	r3, lr
	beq	.L224
.LVL185:
.L217:
	.loc 16 127 0
	ldr	r1, [ip, r3, asl #3]
	cmp	r1, r0
	bne	.L208
	.loc 16 127 0 is_stmt 0 discriminator 1
	ldr	r1, [r2, #4]
	cmp	r1, #0
	beq	.L208
.LVL186:
.LBB4290:
.LBB4291:
	.loc 17 238 0 is_stmt 1
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L209
.L211:
	.word	.L210
	.word	.L212
	.word	.L213
	.word	.L214
	.word	.L215
	.word	.L216
.L214:
	.loc 17 249 0
@ 249 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r4, c0, c3, 5
@ 0 "" 2
.L209:
.LBE4291:
.LBE4290:
	.loc 16 130 0
	str	r4, [r2, #4]
.L225:
	.loc 16 126 0
	add	r3, r3, #1
.LVL187:
	add	r2, r2, #8
	cmp	r3, lr
	bne	.L217
.LVL188:
.L224:
	ldmfd	sp!, {r4, pc}
.LVL189:
.L216:
.LBB4297:
.LBB4292:
	.loc 17 255 0
@ 255 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r4, c0, c5, 5
@ 0 "" 2
.LBE4292:
.LBE4297:
	.loc 16 130 0
	str	r4, [r2, #4]
	b	.L225
.L215:
.LBB4298:
.LBB4293:
	.loc 17 252 0
@ 252 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r4, c0, c4, 5
@ 0 "" 2
.LBE4293:
.LBE4298:
	.loc 16 130 0
	str	r4, [r2, #4]
	b	.L225
.L213:
.LBB4299:
.LBB4294:
	.loc 17 246 0
@ 246 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r4, c0, c2, 5
@ 0 "" 2
.LBE4294:
.LBE4299:
	.loc 16 130 0
	str	r4, [r2, #4]
	b	.L225
.L212:
.LBB4300:
.LBB4295:
	.loc 17 243 0
@ 243 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r4, c0, c1, 5
@ 0 "" 2
.LBE4295:
.LBE4300:
	.loc 16 130 0
	str	r4, [r2, #4]
	b	.L225
.L210:
.LBB4301:
.LBB4296:
	.loc 17 240 0
@ 240 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r4, c0, c0, 5
@ 0 "" 2
.LBE4296:
.LBE4301:
	.loc 16 130 0
	str	r4, [r2, #4]
	b	.L225
	.cfi_endproc
.LFE418:
	.size	clear_breakpoint, .-clear_breakpoint
	.align	2
	.global	set_catch_handler
	.type	set_catch_handler, %function
set_catch_handler:
.LFB419:
	.loc 16 139 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL190:
	.loc 16 140 0
	movw	r3, #:lower16:catch_handler
	movt	r3, #:upper16:catch_handler
	str	r0, [r3]
	bx	lr
	.cfi_endproc
.LFE419:
	.size	set_catch_handler, .-set_catch_handler
	.align	2
	.global	catch_vector
	.type	catch_vector, %function
catch_vector:
.LFB420:
	.loc 16 145 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL191:
.LBB4302:
.LBB4303:
	.loc 17 124 0
@ 124 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mrc p14, 0, r3, c0, c7, 0
@ 0 "" 2
.LBE4303:
.LBE4302:
	.loc 16 149 0
	mov	r2, #1
	orr	r0, r3, r2, asl r0
.LVL192:
.LBB4304:
.LBB4305:
	.loc 17 132 0
@ 132 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r0, c0, c7, 0
@ 0 "" 2
	bx	lr
.LBE4305:
.LBE4304:
	.cfi_endproc
.LFE420:
	.size	catch_vector, .-catch_vector
	.align	2
	.global	uncatch_vector
	.type	uncatch_vector, %function
uncatch_vector:
.LFB421:
	.loc 16 155 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL193:
.LBB4306:
.LBB4307:
	.loc 17 124 0
@ 124 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mrc p14, 0, r3, c0, c7, 0
@ 0 "" 2
.LBE4307:
.LBE4306:
	.loc 16 159 0
	mov	r2, #1
	bic	r0, r3, r2, asl r0
.LVL194:
.LBB4308:
.LBB4309:
	.loc 17 132 0
@ 132 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r0, c0, c7, 0
@ 0 "" 2
	bx	lr
.LBE4309:
.LBE4308:
	.cfi_endproc
.LFE421:
	.size	uncatch_vector, .-uncatch_vector
	.section	.boot.text
	.align	2
	.global	arm_errata
	.type	arm_errata, %function
arm_errata:
.LFB422:
	.file 18 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/machine/errata.c"
	.loc 18 72 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.cfi_endproc
.LFE422:
	.size	arm_errata, .-arm_errata
	.align	2
	.global	initIRQController
	.type	initIRQController, %function
initIRQController:
.LFB435:
	.loc 7 288 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 7 288 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 7 289 0
	bl	dist_init
.LVL195:
	.loc 7 291 0
	ldmfd	sp!, {r3, lr}
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	.loc 7 290 0
	b	cpu_iface_init
.LVL196:
	.cfi_endproc
.LFE435:
	.size	initIRQController, .-initIRQController
	.text
	.align	2
	.global	getActiveIRQ
	.type	getActiveIRQ, %function
getActiveIRQ:
.LFB436:
	.loc 7 309 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 7 311 0
	movw	r3, #:lower16:.LANCHOR1
	movt	r3, #:upper16:.LANCHOR1
	ldr	r0, [r3, #8]
	ubfx	r0, r0, #0, #10
	cmp	r0, #1020
	bcc	.L233
	.loc 7 312 0
	ldr	r2, [r3, #4]
	ldr	r2, [r2, #12]
	.loc 7 315 0
	ubfx	r0, r2, #0, #10
	.loc 7 312 0
	str	r2, [r3, #8]
	.loc 7 315 0
	cmp	r0, #1020
	bcc	.L233
	movw	r0, #65535
	bx	lr
.L233:
	uxth	r0, r0
	.loc 7 322 0
	bx	lr
	.cfi_endproc
.LFE436:
	.size	getActiveIRQ, .-getActiveIRQ
	.align	2
	.global	isIRQPending
	.type	isIRQPending, %function
isIRQPending:
.LFB437:
	.loc 7 334 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 7 335 0
	movw	r3, #:lower16:.LANCHOR1
	movt	r3, #:upper16:.LANCHOR1
	ldr	r3, [r3, #4]
	ldr	r0, [r3, #24]
	ubfx	r0, r0, #0, #10
	.loc 7 336 0
	cmp	r0, #1020
	movcs	r0, #0
	movcc	r0, #1
	bx	lr
	.cfi_endproc
.LFE437:
	.size	isIRQPending, .-isIRQPending
	.align	2
	.global	maskInterrupt
	.type	maskInterrupt, %function
maskInterrupt:
.LFB438:
	.loc 7 344 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL197:
	.loc 7 345 0
	cmp	r0, #0
	bne	.L240
.LVL198:
.LBB4312:
.LBB4313:
	.loc 7 207 0
	movw	r2, #:lower16:.LANCHOR1
	.loc 7 205 0
	mov	r3, r1, lsr #5
.LVL199:
	.loc 7 207 0
	movt	r2, #:upper16:.LANCHOR1
	ldr	r0, [r2]
.LVL200:
	.loc 7 206 0
	and	r1, r1, #31
.LVL201:
	.loc 7 207 0
	mov	r2, #1
	add	r3, r3, #64
.LVL202:
	mov	r1, r2, asl r1
	str	r1, [r0, r3, asl #2]
	bx	lr
.LVL203:
.L240:
.LBE4313:
.LBE4312:
	mov	r0, r1
.LVL204:
	b	maskInterrupt.part.50
.LVL205:
	.cfi_endproc
.LFE438:
	.size	maskInterrupt, .-maskInterrupt
	.align	2
	.global	handleSpuriousIRQ
	.type	handleSpuriousIRQ, %function
handleSpuriousIRQ:
.LFB440:
	.loc 7 368 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.cfi_endproc
.LFE440:
	.size	handleSpuriousIRQ, .-handleSpuriousIRQ
	.align	2
	.global	getRestartPC
	.type	getRestartPC, %function
getRestartPC:
.LFB441:
	.file 19 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/machine/hardware.c"
	.loc 19 17 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL206:
	.loc 19 19 0
	ldr	r0, [r0, #68]
.LVL207:
	bx	lr
	.cfi_endproc
.LFE441:
	.size	getRestartPC, .-getRestartPC
	.align	2
	.global	setNextPC
	.type	setNextPC, %function
setNextPC:
.LFB442:
	.loc 19 23 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL208:
.LBB4314:
.LBB4315:
	.loc 13 21 0
	str	r1, [r0, #60]
	bx	lr
.LBE4315:
.LBE4314:
	.cfi_endproc
.LFE442:
	.size	setNextPC, .-setNextPC
	.section	.boot.text
	.align	2
	.global	initL2Cache
	.type	initL2Cache, %function
initL2Cache:
.LFB443:
	.file 20 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/machine/l2c_310.c"
	.loc 20 255 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL209:
	.loc 20 297 0
	movw	r3, #:lower16:.LANCHOR1
	mov	r1, #0
	movt	r3, #:upper16:.LANCHOR1
	.loc 20 255 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	.loc 20 297 0
	ldr	r2, [r3, #12]
	movt	r1, 15367
	.loc 20 298 0
	mov	lr, #272
	.loc 20 299 0
	mov	ip, #288
	.loc 20 300 0
	mov	r0, #805306368
	.loc 20 305 0
	movw	r3, #65535
	.loc 20 297 0
	str	r1, [r2, #260]
	.loc 20 298 0
	str	lr, [r2, #264]
	.loc 20 299 0
	str	ip, [r2, #268]
	.loc 20 300 0
	str	r0, [r2, #3936]
	.loc 20 305 0
	str	r3, [r2, #1916]
.L245:
	.loc 20 306 0 discriminator 1
	ldr	r3, [r2, #1916]
	ands	r3, r3, #1
	bne	.L245
	.loc 20 309 0
	ldr	r1, [r2, #4]
	and	r1, r1, #503316480
	cmp	r1, #469762048
	beq	.L250
.L246:
	.loc 20 328 0
	ldr	r3, [r2, #4]
	.loc 20 334 0
	mov	r1, #0
	.loc 20 328 0
	and	r3, r3, #503316480
	cmp	r3, #503316480
	.loc 20 330 0
	moveq	r3, #0
	streq	r3, [r2, #2384]
	.loc 20 336 0
	movw	r3, #511
	.loc 20 334 0
	str	r1, [r2, #532]
	.loc 20 336 0
	str	r3, [r2, #544]
	.loc 20 344 0
	ldr	r3, [r2, #256]
	orr	r3, r3, #1
	str	r3, [r2, #256]
	ldr	pc, [sp], #4
.L250:
	.loc 20 311 0
	str	r3, [r2, #2304]
	.loc 20 312 0
	str	r3, [r2, #2308]
	.loc 20 313 0
	str	r3, [r2, #2312]
	.loc 20 314 0
	str	r3, [r2, #2316]
	.loc 20 315 0
	str	r3, [r2, #2320]
	.loc 20 316 0
	str	r3, [r2, #2324]
	.loc 20 317 0
	str	r3, [r2, #2328]
	.loc 20 318 0
	str	r3, [r2, #2332]
	.loc 20 319 0
	str	r3, [r2, #2336]
	.loc 20 320 0
	str	r3, [r2, #2340]
	.loc 20 321 0
	str	r3, [r2, #2344]
	.loc 20 322 0
	str	r3, [r2, #2348]
	.loc 20 323 0
	str	r3, [r2, #2352]
	.loc 20 324 0
	str	r3, [r2, #2356]
	.loc 20 325 0
	str	r3, [r2, #2360]
	.loc 20 326 0
	str	r3, [r2, #2364]
	b	.L246
	.cfi_endproc
.LFE443:
	.size	initL2Cache, .-initL2Cache
	.text
	.align	2
	.global	plat_cleanCache
	.type	plat_cleanCache, %function
plat_cleanCache:
.LFB445:
	.loc 20 358 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 20 361 0
	movw	r1, #:lower16:.LANCHOR1
	movw	r3, #65535
	movt	r1, #:upper16:.LANCHOR1
	ldr	r2, [r1, #12]
	str	r3, [r2, #1980]
.L252:
	.loc 20 362 0 discriminator 1
	ldr	r3, [r2, #1980]
	ands	r3, r3, #1
	bne	.L252
.LBB4316:
.LBB4317:
.LBB4318:
.LBB4319:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE4319:
.LBE4318:
	.loc 20 353 0
	ldr	r2, [r1, #12]
	str	r3, [r2, #1840]
.L253:
	.loc 20 354 0
	ldr	r3, [r2, #1840]
	tst	r3, #1
	bne	.L253
.LBE4317:
.LBE4316:
	.loc 20 365 0
	bx	lr
	.cfi_endproc
.LFE445:
	.size	plat_cleanCache, .-plat_cleanCache
	.section	.boot.text
	.align	2
	.global	initTimer
	.type	initTimer, %function
initTimer:
.LFB449:
	.file 21 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/machine/priv_timer.c"
	.loc 21 41 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 21 43 0
	movw	r3, #:lower16:.LANCHOR1
	.loc 21 47 0
	mov	r2, #13568
	.loc 21 43 0
	movt	r3, #:upper16:.LANCHOR1
	mov	r1, #0
	ldr	r3, [r3, #16]
	.loc 21 47 0
	movt	r2, 12
	.loc 21 43 0
	str	r1, [r3, #8]
	.loc 21 44 0
	str	r1, [r3, #12]
	.loc 21 47 0
	str	r2, [r3]
	.loc 21 48 0
	ldr	r2, [r3, #8]
	orr	r2, r2, #6
	str	r2, [r3, #8]
	.loc 21 52 0
	ldr	r2, [r3, #8]
	orr	r2, r2, #1
	str	r2, [r3, #8]
	bx	lr
	.cfi_endproc
.LFE449:
	.size	initTimer, .-initTimer
	.text
	.align	2
	.global	resetTimer
	.type	resetTimer, %function
resetTimer:
.LFB450:
	.loc 21 60 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 21 61 0
	movw	r3, #:lower16:.LANCHOR1
	mov	r2, #1
	movt	r3, #:upper16:.LANCHOR1
	ldr	r3, [r3, #16]
	str	r2, [r3, #12]
	bx	lr
	.cfi_endproc
.LFE450:
	.size	resetTimer, .-resetTimer
	.align	2
	.global	Arch_decodeInterruptControl
	.type	Arch_decodeInterruptControl, %function
Arch_decodeInterruptControl:
.LFB451:
	.file 22 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/object/interrupt.c"
	.loc 22 18 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL210:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	.loc 22 19 0
	movw	ip, #:lower16:current_syscall_error
	.loc 22 18 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	.loc 22 19 0
	mov	r0, #3
.LVL211:
	movt	ip, #:upper16:current_syscall_error
	.loc 22 18 0
	add	lr, sp, #16
	stmdb	lr, {r1, r2, r3}
	.loc 22 19 0
	str	r0, [ip, #24]
	.loc 22 21 0
	add	sp, sp, #20
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE451:
	.size	Arch_decodeInterruptControl, .-Arch_decodeInterruptControl
	.align	2
	.global	Arch_updateCapData
	.type	Arch_updateCapData, %function
Arch_updateCapData:
.LFB453:
	.file 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/object/objecttype.c"
	.loc 23 76 0
	.cfi_startproc
	@ args = 12, pretend = 8, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL212:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 23 76 0
	mov	ip, r0
	sub	r2, sp, #4
.LVL213:
	.loc 23 78 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	.loc 23 76 0
	str	r3, [r2, #8]!
	.loc 23 77 0
	ldmia	r2, {r0, r1}
.LVL214:
	stmia	ip, {r0, r1}
	.loc 23 78 0
	mov	r0, ip
	bx	lr
	.cfi_endproc
.LFE453:
	.size	Arch_updateCapData, .-Arch_updateCapData
	.align	2
	.global	Arch_prepareThreadDelete
	.type	Arch_prepareThreadDelete, %function
Arch_prepareThreadDelete:
.LFB464:
	.loc 23 474 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL215:
	bx	lr
	.cfi_endproc
.LFE464:
	.size	Arch_prepareThreadDelete, .-Arch_prepareThreadDelete
	.align	2
	.global	Arch_decodeTransfer
	.type	Arch_decodeTransfer, %function
Arch_decodeTransfer:
.LFB469:
	.file 24 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/object/tcb.c"
	.loc 24 179 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL216:
	.loc 24 181 0
	mov	r0, #0
.LVL217:
	bx	lr
	.cfi_endproc
.LFE469:
	.size	Arch_decodeTransfer, .-Arch_decodeTransfer
	.align	2
	.global	Arch_performTransfer
	.type	Arch_performTransfer, %function
Arch_performTransfer:
.LFB470:
	.loc 24 185 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL218:
	.loc 24 187 0
	mov	r0, #0
.LVL219:
	bx	lr
	.cfi_endproc
.LFE470:
	.size	Arch_performTransfer, .-Arch_performTransfer
	.section	.boot.text
	.align	2
	.global	bi_finalise
	.type	bi_finalise, %function
bi_finalise:
.LFB510:
	.file 25 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/kernel/boot.c"
	.loc 25 538 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL220:
	.loc 25 540 0
	movw	r3, #:lower16:.LANCHOR3
	movt	r3, #:upper16:.LANCHOR3
	ldr	r1, [r3, #24]
.LVL221:
	.loc 25 541 0
	ldr	r2, [r3, #16]
	ldr	r3, [r3, #20]
	str	r1, [r2, #20]
.LVL222:
	str	r3, [r2, #16]
	bx	lr
	.cfi_endproc
.LFE510:
	.size	bi_finalise, .-bi_finalise
	.text
	.align	2
	.global	doNBRecvFailedTransfer
	.type	doNBRecvFailedTransfer, %function
doNBRecvFailedTransfer:
.LFB534:
	.file 26 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/kernel/thread.c"
	.loc 26 265 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL223:
.LBB4320:
.LBB4321:
	.loc 13 21 0
	mov	r3, #0
	str	r3, [r0]
	bx	lr
.LBE4321:
.LBE4320:
	.cfi_endproc
.LFE534:
	.size	doNBRecvFailedTransfer, .-doNBRecvFailedTransfer
	.align	2
	.global	switchToIdleThread
	.type	switchToIdleThread, %function
switchToIdleThread:
.LFB539:
	.loc 26 343 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 26 345 0
	movw	r1, #:lower16:ksIdleThread
	movw	r3, #:lower16:ksCurThread
	movt	r1, #:upper16:ksIdleThread
.LBB4322:
.LBB4323:
	.loc 12 36 0
	movw	r2, #:lower16:.LANCHOR2
.LBE4323:
.LBE4322:
	.loc 26 345 0
	ldr	r1, [r1]
	movt	r3, #:upper16:ksCurThread
.LBB4325:
.LBB4324:
	.loc 12 36 0
	movt	r2, #:upper16:.LANCHOR2
	mov	r0, #0
	str	r0, [r2, #16]
.LBE4324:
.LBE4325:
	.loc 26 345 0
	str	r1, [r3]
	bx	lr
	.cfi_endproc
.LFE539:
	.size	switchToIdleThread, .-switchToIdleThread
	.align	2
	.global	preemptionPoint
	.type	preemptionPoint, %function
preemptionPoint:
.LFB557:
	.loc 8 22 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 8 24 0
	movw	r3, #:lower16:ksWorkUnitsCompleted
	movt	r3, #:upper16:ksWorkUnitsCompleted
	ldr	r2, [r3]
	add	r2, r2, #1
	.loc 8 34 0
	cmp	r2, #99
	.loc 8 24 0
	str	r2, [r3]
	.loc 8 34 0
	bls	.L269
	b	preemptionPoint.part.51
.LVL224:
.L269:
	.loc 8 42 0
	mov	r0, #0
	bx	lr
	.cfi_endproc
.LFE557:
	.size	preemptionPoint, .-preemptionPoint
	.align	2
	.global	ensureEmptySlot
	.type	ensureEmptySlot, %function
ensureEmptySlot:
.LFB584:
	.file 27 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/object/cnode.c"
	.loc 27 893 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL225:
	ldr	r0, [r0]
.LVL226:
.LBB4326:
.LBB4327:
	.file 28 "./arch/object/structures_gen.h"
	.loc 28 1035 0
	and	r3, r0, #14
	cmp	r3, #14
	.loc 28 1037 0
	uxtbeq	r0, r0
.LVL227:
	.loc 28 1036 0
	andne	r0, r0, #15
.LBE4327:
.LBE4326:
	.loc 27 894 0
	cmp	r0, #0
	.loc 27 895 0
	movwne	r3, #:lower16:current_syscall_error
	movne	r2, #8
	movtne	r3, #:upper16:current_syscall_error
	.loc 27 896 0
	movne	r0, #3
	.loc 27 895 0
	strne	r2, [r3, #24]
	.loc 27 900 0
	bx	lr
	.cfi_endproc
.LFE584:
	.size	ensureEmptySlot, .-ensureEmptySlot
	.align	2
	.global	loadCapTransfer
	.type	loadCapTransfer, %function
loadCapTransfer:
.LFB588:
	.loc 27 991 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL228:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
.LBB4328:
.LBB4329:
	.file 29 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/api/types.h"
	.loc 29 67 0
	ldr	ip, [r1, #500]
	.loc 29 65 0
	ldr	lr, [r1, #504]
.LVL229:
	.loc 29 66 0
	ldr	r2, [r1, #508]
.LVL230:
	.loc 29 67 0
	stmia	r0, {ip, lr}
	str	r2, [r0, #8]
.LBE4329:
.LBE4328:
	.loc 27 994 0
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE588:
	.size	loadCapTransfer, .-loadCapTransfer
	.align	2
	.global	invokeIRQHandler_AckIRQ
	.type	invokeIRQHandler_AckIRQ, %function
invokeIRQHandler_AckIRQ:
.LFB601:
	.file 30 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/object/interrupt.c"
	.loc 30 159 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL231:
	.loc 30 159 0
	mov	r1, r0
	.loc 30 160 0
	mov	r0, #0
.LVL232:
	b	maskInterrupt
.LVL233:
	.cfi_endproc
.LFE601:
	.size	invokeIRQHandler_AckIRQ, .-invokeIRQHandler_AckIRQ
	.align	2
	.global	invokeIRQHandler_SetMode
	.type	invokeIRQHandler_SetMode, %function
invokeIRQHandler_SetMode:
.LFB602:
	.loc 30 164 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL234:
	bx	lr
	.cfi_endproc
.LFE602:
	.size	invokeIRQHandler_SetMode, .-invokeIRQHandler_SetMode
	.align	2
	.global	deletedIRQHandler
	.type	deletedIRQHandler, %function
deletedIRQHandler:
.LFB606:
	.loc 30 201 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL235:
.LBB4336:
.LBB4337:
	.loc 30 265 0
	movw	r3, #:lower16:intStateIRQTable
.LVL236:
	mov	r1, #0
	movt	r3, #:upper16:intStateIRQTable
	str	r1, [r3, r0, asl #2]
.LVL237:
.LBB4338:
.LBB4339:
	b	maskInterrupt.part.50
.LVL238:
.LBE4339:
.LBE4338:
.LBE4337:
.LBE4336:
	.cfi_endproc
.LFE606:
	.size	deletedIRQHandler, .-deletedIRQHandler
	.align	2
	.global	isIRQActive
	.type	isIRQActive, %function
isIRQActive:
.LFB608:
	.loc 30 258 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL239:
	.loc 30 259 0
	movw	r3, #:lower16:intStateIRQTable
	movt	r3, #:upper16:intStateIRQTable
	ldr	r0, [r3, r0, asl #2]
.LVL240:
	.loc 30 260 0
	adds	r0, r0, #0
	movne	r0, #1
	bx	lr
	.cfi_endproc
.LFE608:
	.size	isIRQActive, .-isIRQActive
	.align	2
	.global	setIRQState
	.type	setIRQState, %function
setIRQState:
.LFB609:
	.loc 30 264 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL241:
	.loc 30 265 0
	movw	r3, #:lower16:intStateIRQTable
	.loc 30 264 0
	mov	r2, r0
	.loc 30 265 0
	movt	r3, #:upper16:intStateIRQTable
	.loc 30 266 0
	clz	r0, r0
.LVL242:
	mov	r0, r0, lsr #5
	.loc 30 265 0
	str	r2, [r3, r1, asl #2]
	.loc 30 266 0
	b	maskInterrupt
.LVL243:
	.cfi_endproc
.LFE609:
	.size	setIRQState, .-setIRQState
	.align	2
	.global	tcbEPAppend
	.type	tcbEPAppend, %function
tcbEPAppend:
.LFB642:
	.file 31 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/object/tcb.c"
	.loc 31 150 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL244:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 31 150 0
	add	ip, sp, #8
	stmdb	ip, {r2, r3}
	mov	r3, r0
	ldr	r2, [sp]
.LVL245:
	.loc 31 157 0
	mov	ip, #0
	ldr	r0, [sp, #4]
.LVL246:
	.loc 31 160 0
	str	r1, [r3, #4]
	.loc 31 151 0
	cmp	r2, #0
	moveq	r2, r1
.LVL247:
	.loc 31 154 0
	strne	r1, [r0, #132]
	.loc 31 160 0
	str	r2, [r3]
	.loc 31 156 0
	str	r0, [r1, #136]
	.loc 31 161 0
	mov	r0, r3
.LVL248:
	.loc 31 157 0
	str	ip, [r1, #132]
.LVL249:
	.loc 31 161 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE642:
	.size	tcbEPAppend, .-tcbEPAppend
	.align	2
	.global	tcbEPDequeue
	.type	tcbEPDequeue, %function
tcbEPDequeue:
.LFB643:
	.loc 31 166 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL250:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 31 166 0
	add	ip, sp, #8
	stmdb	ip, {r2, r3}
	mov	r3, r0
	.loc 31 167 0
	ldr	r2, [r1, #136]
	ldmia	sp, {r0, ip}
.LVL251:
	cmp	r2, #0
	.loc 31 168 0
	ldrne	lr, [r1, #132]
	.loc 31 170 0
	ldreq	r0, [r1, #132]
.LVL252:
	.loc 31 168 0
	strne	lr, [r2, #132]
	ldrne	r1, [r1, #132]
.LVL253:
	.loc 31 170 0
	moveq	r1, r0
	.loc 31 179 0
	str	r0, [r3]
	.loc 31 180 0
	mov	r0, r3
.LVL254:
	.loc 31 173 0
	cmp	r1, #0
	.loc 31 167 0
	moveq	ip, r2
.LVL255:
	.loc 31 174 0
	strne	r2, [r1, #136]
	.loc 31 179 0
	str	ip, [r3, #4]
	.loc 31 180 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE643:
	.size	tcbEPDequeue, .-tcbEPDequeue
	.align	2
	.global	getExtraCPtr
	.type	getExtraCPtr, %function
getExtraCPtr:
.LFB644:
	.loc 31 184 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL256:
	.loc 31 185 0
	add	r1, r1, #122
.LVL257:
	.loc 31 186 0
	ldr	r0, [r0, r1, asl #2]
.LVL258:
	bx	lr
	.cfi_endproc
.LFE644:
	.size	getExtraCPtr, .-getExtraCPtr
	.align	2
	.global	setExtraBadge
	.type	setExtraBadge, %function
setExtraBadge:
.LFB645:
	.loc 31 191 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL259:
	.loc 31 192 0
	add	r2, r2, #122
.LVL260:
	str	r1, [r0, r2, asl #2]
	bx	lr
	.cfi_endproc
.LFE645:
	.size	setExtraBadge, .-setExtraBadge
	.align	2
	.global	copyMRs
	.type	copyMRs, %function
copyMRs:
.LFB649:
	.loc 31 264 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL261:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 31 264 0
	ldr	r5, [sp, #16]
	.loc 31 268 0
	cmp	r5, #0
	beq	.L303
	movw	lr, #:lower16:.LANCHOR4
	mov	r6, r0
	movt	lr, #:upper16:.LANCHOR4
	mov	r0, #0
.LVL262:
.L298:
	.loc 31 268 0 is_stmt 0 discriminator 3
	add	r0, r0, #1
.LVL263:
	.loc 31 269 0 is_stmt 1 discriminator 3
	ldr	ip, [lr], #4
.LVL264:
	.loc 31 268 0 discriminator 3
	cmp	r5, r0
	movhi	r4, #1
	movls	r4, #0
	cmp	r0, #3
	movhi	r4, #0
	cmp	r4, #0
.LBB4340:
.LBB4341:
	.loc 13 27 0 discriminator 3
	ldr	r4, [r6, ip, asl #2]
.LVL265:
.LBE4341:
.LBE4340:
.LBB4342:
.LBB4343:
	.loc 13 21 0 discriminator 3
	str	r4, [r2, ip, asl #2]
.LBE4343:
.LBE4342:
	.loc 31 268 0 discriminator 3
	bne	.L298
	.loc 31 273 0
	cmp	r1, #0
	cmpne	r3, #0
	ldmeqfd	sp!, {r4, r5, r6, pc}
	.loc 31 278 0 discriminator 1
	cmp	r5, r0
	bls	.L302
	mov	r0, r0, asl #2
.LVL266:
	add	ip, r1, r5, asl #2
.LVL267:
	add	r3, r3, r0
.LVL268:
	add	r1, r1, r0
.LVL269:
.L301:
	.loc 31 279 0 discriminator 2
	ldr	r2, [r1, #4]!
	.loc 31 278 0 discriminator 2
	cmp	r1, ip
	.loc 31 279 0 discriminator 2
	str	r2, [r3, #4]!
	.loc 31 278 0 discriminator 2
	bne	.L301
.LVL270:
.L303:
	.loc 31 268 0
	mov	r0, r5
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL271:
.L302:
	.loc 31 278 0
	mov	r5, r0
	b	.L303
	.cfi_endproc
.LFE649:
	.size	copyMRs, .-copyMRs
	.align	2
	.global	setThreadName
	.type	setThreadName, %function
setThreadName:
.LFB668:
	.loc 31 1102 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL272:
.LBB4344:
.LBB4345:
	.file 32 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/string.c"
	.loc 32 26 0
	ldrb	r3, [r1]	@ zero_extendqisi2
.LBE4345:
.LBE4344:
	.loc 31 1103 0
	add	ip, r0, #140
.LVL273:
.LBB4347:
.LBB4346:
	.loc 32 26 0
	cmp	r3, #0
	.loc 32 27 0
	strneb	r3, [r0, #140]
.LVL274:
	movne	r0, ip
.LVL275:
	movne	r3, #1
	.loc 32 26 0
	bne	.L312
	b	.L310
.LVL276:
.L311:
	add	r3, r3, #1
.LVL277:
	.loc 32 27 0
	strb	r2, [r0, #1]!
.LVL278:
	.loc 32 26 0
	cmp	r3, #115
	beq	.L310
.LVL279:
.L312:
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L311
.LVL280:
.L310:
	.loc 32 29 0
	mov	r2, #0
	strb	r2, [ip, r3]
	bx	lr
.LBE4346:
.LBE4347:
	.cfi_endproc
.LFE668:
	.size	setThreadName, .-setThreadName
	.section	.boot.text
	.align	2
	.global	get_num_avail_p_regs
	.type	get_num_avail_p_regs, %function
get_num_avail_p_regs:
.LFB672:
	.file 33 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/plat/zynq7000/machine/hardware.c"
	.loc 33 30 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 33 32 0
	mov	r0, #1
	bx	lr
	.cfi_endproc
.LFE672:
	.size	get_num_avail_p_regs, .-get_num_avail_p_regs
	.align	2
	.global	get_avail_p_reg
	.type	get_avail_p_reg, %function
get_avail_p_reg:
.LFB673:
	.loc 33 36 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL281:
	.loc 33 37 0
	movw	r3, #:lower16:.LANCHOR5
	.loc 33 36 0
	mov	r2, r0
	.loc 33 37 0
	movt	r3, #:upper16:.LANCHOR5
	add	r1, r3, r1, asl #3
.LVL282:
	ldmia	r1, {r0, r1}
.LVL283:
	stmia	r2, {r0, r1}
	.loc 33 38 0
	mov	r0, r2
	bx	lr
	.cfi_endproc
.LFE673:
	.size	get_avail_p_reg, .-get_avail_p_reg
	.align	2
	.global	get_num_dev_p_regs
	.type	get_num_dev_p_regs, %function
get_num_dev_p_regs:
.LFB674:
	.loc 33 105 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 33 107 0
	mov	r0, #56
	bx	lr
	.cfi_endproc
.LFE674:
	.size	get_num_dev_p_regs, .-get_num_dev_p_regs
	.align	2
	.global	get_dev_p_reg
	.type	get_dev_p_reg, %function
get_dev_p_reg:
.LFB675:
	.loc 33 111 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL284:
	.loc 33 112 0
	movw	r3, #:lower16:.LANCHOR5
	.loc 33 111 0
	mov	r2, r0
	.loc 33 112 0
	movt	r3, #:upper16:.LANCHOR5
	add	r1, r3, r1, asl #3
.LVL285:
	add	r1, r1, #8
	ldmia	r1, {r0, r1}
.LVL286:
	stmia	r2, {r0, r1}
	.loc 33 113 0
	mov	r0, r2
	bx	lr
	.cfi_endproc
.LFE675:
	.size	get_dev_p_reg, .-get_dev_p_reg
	.text
	.align	2
	.global	isReservedIRQ
	.type	isReservedIRQ, %function
isReservedIRQ:
.LFB676:
	.loc 33 119 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL287:
	.loc 33 121 0
	sub	r0, r0, #29
.LVL288:
	clz	r0, r0
	mov	r0, r0, lsr #5
	bx	lr
	.cfi_endproc
.LFE676:
	.size	isReservedIRQ, .-isReservedIRQ
	.align	2
	.global	zynq_uart_putchar
	.type	zynq_uart_putchar, %function
zynq_uart_putchar:
.LFB679:
	.loc 6 43 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL289:
.LBB4356:
.LBB4357:
	.loc 6 52 0
	mvn	r1, #1040384
.L324:
	ldr	r3, [r1, #-4051]
	mvn	r2, #1040384
	tst	r3, #8
	beq	.L324
.LBE4357:
.LBE4356:
	.loc 6 45 0
	cmp	r0, #10
.LBB4359:
.LBB4358:
	.loc 6 53 0
	str	r0, [r2, #-4047]
.LBE4358:
.LBE4359:
	.loc 6 45 0
	bxne	lr
.L326:
.LBB4360:
.LBB4361:
.LBB4362:
	.loc 6 52 0
	ldr	r3, [r2, #-4051]
	mvn	r1, #1040384
	tst	r3, #8
	beq	.L326
	.loc 6 53 0
	mov	r3, #13
	str	r3, [r1, #-4047]
	bx	lr
.LBE4362:
.LBE4361:
.LBE4360:
	.cfi_endproc
.LFE679:
	.size	zynq_uart_putchar, .-zynq_uart_putchar
	.align	2
	.global	print_unsigned_long
	.type	print_unsigned_long, %function
print_unsigned_long:
.LFB552:
	.file 34 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/machine/io.c"
	.loc 34 56 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL290:
	.loc 34 65 0
	cmp	r1, #16
	cmpne	r1, #10
	.loc 34 56 0
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 34 66 0
	movne	r0, #0
.LVL291:
	.loc 34 56 0
	sub	sp, sp, #16
	.cfi_def_cfa_offset 32
	.loc 34 65 0
	movne	r4, #1
	moveq	r4, #0
	bne	.L362
	.loc 34 69 0
	cmp	r0, #0
	beq	.L333
.LVL292:
.LBB4369:
.LBB4370:
.LBB4371:
.LBB4372:
	.loc 34 44 0
	cmp	r1, #10
	beq	.L348
	cmp	r1, #16
	bne	.L360
	mov	r2, #1
	b	.L336
.LVL293:
.L366:
	add	r2, r4, #1
.LVL294:
.L336:
	.loc 34 46 0
	and	r3, r0, #15
.LBE4372:
.LBE4371:
	.loc 34 77 0
	cmp	r3, #9
	bls	.L365
	.loc 34 78 0
	add	ip, sp, #16
	add	r3, r3, #87
	add	r4, ip, r4
.LVL295:
	strb	r3, [r4, #-12]
.LVL296:
	mov	r4, r2
.L339:
.LVL297:
	.loc 34 74 0
	movs	r0, r0, lsr #4
.LVL298:
	bne	.L366
	b	.L340
.LVL299:
.L348:
.LBB4375:
.LBB4373:
	.loc 34 44 0
	mov	lr, r4
	mov	ip, #1
.LVL300:
.L335:
	.loc 34 48 0
	movw	r2, #52429
	movt	r2, 52428
	umull	r2, r3, r0, r2
	mov	r2, r3, lsr #3
	mov	r3, r2, asl #3
	add	r3, r3, r2, asl #1
	rsb	r3, r3, r0
	add	r3, r3, #48
	uxtb	r3, r3
.LVL301:
.L334:
.LBE4373:
.LBE4375:
	.loc 34 77 0
	mov	r4, ip
.L345:
	.loc 34 80 0
	add	r2, sp, #16
.LBB4376:
.LBB4377:
	.loc 34 31 0
	cmp	r1, #10
.LBE4377:
.LBE4376:
	.loc 34 80 0
	add	lr, r2, lr
	strb	r3, [lr, #-12]
.LVL302:
.LBB4380:
.LBB4378:
	.loc 34 31 0
	beq	.L341
	cmp	r1, #16
	beq	.L339
.LVL303:
.L340:
.LBE4378:
.LBE4380:
	.loc 34 84 0
	cmp	r4, #0
	addne	r3, sp, #4
	movne	r5, r4
	addne	r6, r3, r4
	beq	.L344
.LVL304:
.L343:
	.loc 34 85 0
	sub	r5, r5, #1
.LVL305:
	ldrb	r0, [r6, #-1]!	@ zero_extendqisi2
	bl	zynq_uart_putchar
.LVL306:
	.loc 34 84 0
	cmp	r5, #0
	bne	.L343
.LVL307:
.L344:
	mov	r0, r4
.LVL308:
.L362:
.LBE4370:
.LBE4369:
	.loc 34 89 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL309:
.L341:
	.cfi_restore_state
.LBB4385:
.LBB4383:
.LBB4381:
.LBB4379:
	.loc 34 35 0
	movw	r2, #52429
	movt	r2, 52428
	umull	r2, r3, r0, r2
.LVL310:
.LBE4379:
.LBE4381:
	.loc 34 74 0
	movs	r0, r3, lsr #3
.LVL311:
	beq	.L340
	add	ip, r4, #1
	mov	lr, r4
	b	.L335
.LVL312:
.L360:
.LBB4382:
.LBB4374:
	.loc 34 44 0
	mov	lr, r4
	mov	ip, #1
	mov	r3, #48
	b	.L334
.LVL313:
.L333:
.LBE4374:
.LBE4382:
.LBE4383:
.LBE4385:
	.loc 34 70 0
	mov	r0, #48
	bl	zynq_uart_putchar
.LVL314:
	.loc 34 71 0
	mov	r0, #1
	.loc 34 89 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL315:
.L365:
	.cfi_restore_state
.LBB4386:
.LBB4384:
	.loc 34 77 0
	mov	lr, r4
	add	r3, r3, #48
	mov	r4, r2
.LVL316:
	b	.L345
.LBE4384:
.LBE4386:
	.cfi_endproc
.LFE552:
	.size	print_unsigned_long, .-print_unsigned_long
	.align	2
	.global	puts
	.type	puts, %function
puts:
.LFB555:
	.loc 34 251 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL317:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 34 251 0
	mov	r4, r0
	.loc 34 252 0
	ldrb	r0, [r0]	@ zero_extendqisi2
.LVL318:
	cmp	r0, #0
	beq	.L370
.LVL319:
.L369:
	.loc 34 253 0 discriminator 2
	bl	zynq_uart_putchar
.LVL320:
	.loc 34 252 0 discriminator 2
	ldrb	r0, [r4, #1]!	@ zero_extendqisi2
.LVL321:
	cmp	r0, #0
	bne	.L369
.LVL322:
.L370:
	.loc 34 255 0
	mov	r0, #10
	bl	zynq_uart_putchar
.LVL323:
	.loc 34 257 0
	mov	r0, #0
	ldmfd	sp!, {r4, pc}
	.cfi_endproc
.LFE555:
	.size	puts, .-puts
	.align	2
	.global	kprintf
	.type	kprintf, %function
kprintf:
.LFB556:
	.loc 34 261 0
	.cfi_startproc
	@ args = 4, pretend = 16, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
.LVL324:
	stmfd	sp!, {r0, r1, r2, r3}
	.cfi_def_cfa_offset 16
	.cfi_offset 0, -16
	.cfi_offset 1, -12
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 44
	.cfi_offset 4, -44
	.cfi_offset 5, -40
	.cfi_offset 6, -36
	.cfi_offset 7, -32
	.cfi_offset 8, -28
	.cfi_offset 9, -24
	.cfi_offset 14, -20
	sub	sp, sp, #12
	.cfi_def_cfa_offset 56
	.loc 34 265 0
	add	r5, sp, #44
	.loc 34 261 0
	ldr	r4, [sp, #40]
	.loc 34 265 0
	str	r5, [sp, #4]
.LVL325:
.LBB4400:
.LBB4401:
	.loc 34 133 0
	cmp	r4, #0
	beq	.L406
	mov	r6, #0
	mov	r7, r6
.LVL326:
.L376:
	.loc 34 139 0
	ldrb	r0, [r4]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L421
.L405:
	.loc 34 140 0
	cmp	r6, #0
	beq	.L377
	.loc 34 141 0
	cmp	r0, #112
	beq	.L378
	bhi	.L379
	cmp	r0, #100
	beq	.L380
	cmp	r0, #108
	beq	.L381
	cmp	r0, #37
	beq	.L422
.LVL327:
.L409:
	.loc 34 191 0
	mvn	r0, #0
.LVL328:
.LBE4401:
.LBE4400:
	.loc 34 269 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 44
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_restore 14
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 16
.LVL329:
	add	sp, sp, #16
	.cfi_restore 3
	.cfi_restore 2
	.cfi_restore 1
	.cfi_restore 0
	.cfi_def_cfa_offset 0
	bx	lr
.LVL330:
.L422:
	.cfi_restore_state
.LBB4424:
.LBB4421:
	.loc 34 145 0
	add	r4, r4, #1
.LVL331:
	.loc 34 144 0
	add	r7, r7, #1
.LVL332:
	.loc 34 143 0
	bl	zynq_uart_putchar
.LVL333:
	.loc 34 139 0
	ldrb	r0, [r4]	@ zero_extendqisi2
	.loc 34 230 0
	mov	r6, #0
.LVL334:
	.loc 34 139 0
	cmp	r0, #0
	bne	.L405
.L421:
	mov	r0, r7
.LVL335:
.LBE4421:
.LBE4424:
	.loc 34 269 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 44
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 14
	.cfi_def_cfa_offset 16
.LVL336:
	add	sp, sp, #16
	.cfi_restore 0
	.cfi_restore 1
	.cfi_restore 2
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	bx	lr
.LVL337:
.L377:
	.cfi_restore_state
.LBB4425:
.LBB4422:
	.loc 34 232 0
	cmp	r0, #37
	bne	.L416
.LVL338:
	.loc 34 235 0
	add	r4, r4, #1
.LVL339:
	.loc 34 234 0
	mov	r6, #1
	b	.L376
.LVL340:
.L379:
	.loc 34 141 0
	cmp	r0, #117
	beq	.L383
	cmp	r0, #120
	beq	.L384
	cmp	r0, #115
	bne	.L409
	.loc 34 185 0
	ldr	r8, [r5]
	add	r5, r5, #4
.LVL341:
.LBB4402:
.LBB4403:
	.loc 34 21 0
	ldrb	r0, [r8]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L408
	add	r6, r8, #1
.LVL342:
.L393:
	.loc 34 22 0
	bl	zynq_uart_putchar
.LVL343:
	rsb	r3, r8, r6
.LVL344:
	.loc 34 21 0
	ldrb	r0, [r6], #1	@ zero_extendqisi2
.LVL345:
	cmp	r0, #0
	bne	.L393
.LVL346:
.L392:
.LBE4403:
.LBE4402:
	.loc 34 185 0
	add	r7, r7, r3
.LVL347:
.L418:
	.loc 34 186 0
	add	r4, r4, #1
.LVL348:
	.loc 34 230 0
	mov	r6, #0
	b	.L376
.LVL349:
.L416:
	.loc 34 240 0
	add	r7, r7, #1
.LVL350:
	.loc 34 241 0
	add	r4, r4, #1
.LVL351:
	.loc 34 239 0
	bl	zynq_uart_putchar
.LVL352:
	b	.L376
.L380:
.LBB4405:
	.loc 34 149 0
	ldr	r6, [r5]
.LVL353:
	add	r5, r5, #4
.LVL354:
	.loc 34 151 0
	cmp	r6, #0
	blt	.L423
.L387:
	.loc 34 157 0
	mov	r0, r6
	mov	r1, #10
	bl	print_unsigned_long
.LVL355:
	.loc 34 158 0
	add	r4, r4, #1
.LVL356:
.LBE4405:
	.loc 34 230 0
	mov	r6, #0
.LVL357:
.LBB4406:
	.loc 34 157 0
	add	r7, r7, r0
.LVL358:
	b	.L376
.LVL359:
.L384:
.LBE4406:
	.loc 34 168 0
	ldr	r0, [r5]
	mov	r1, #16
	bl	print_unsigned_long
.LVL360:
	add	r5, r5, #4
.LVL361:
	.loc 34 169 0
	add	r4, r4, #1
.LVL362:
	.loc 34 230 0
	mov	r6, #0
.LVL363:
	.loc 34 168 0
	add	r7, r7, r0
.LVL364:
	b	.L376
.LVL365:
.L383:
	.loc 34 163 0
	ldr	r0, [r5]
	mov	r1, #10
	bl	print_unsigned_long
.LVL366:
	add	r5, r5, #4
.LVL367:
	.loc 34 164 0
	add	r4, r4, #1
.LVL368:
	.loc 34 230 0
	mov	r6, #0
.LVL369:
	.loc 34 163 0
	add	r7, r7, r0
.LVL370:
	b	.L376
.LVL371:
.L381:
	.loc 34 191 0
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	sub	r3, r3, #100
	cmp	r3, #20
	ldrls	pc, [pc, r3, asl #2]
	b	.L409
.L395:
	.word	.L394
	.word	.L409
	.word	.L409
	.word	.L409
	.word	.L409
	.word	.L409
	.word	.L409
	.word	.L409
	.word	.L396
	.word	.L409
	.word	.L409
	.word	.L409
	.word	.L409
	.word	.L409
	.word	.L409
	.word	.L409
	.word	.L409
	.word	.L397
	.word	.L409
	.word	.L409
	.word	.L398
.LVL372:
.L378:
.LBB4407:
	.loc 34 173 0
	ldr	r6, [r5]
.LVL373:
	add	r5, r5, #4
.LVL374:
	.loc 34 174 0
	cmp	r6, #0
	bne	.L388
	movw	r8, #:lower16:.LC1
	mov	r0, #40
	movt	r8, #:upper16:.LC1
.LVL375:
.L389:
.LBB4408:
.LBB4409:
	.loc 34 22 0
	bl	zynq_uart_putchar
.LVL376:
	.loc 34 21 0
	ldrb	r0, [r8, #1]!	@ zero_extendqisi2
	add	r6, r6, #1
.LVL377:
	cmp	r0, #0
	bne	.L389
.LBE4409:
.LBE4408:
	.loc 34 175 0
	add	r7, r7, r6
.LVL378:
	b	.L418
.LVL379:
.L388:
	movw	r9, #:lower16:.LC2
	.loc 34 174 0
	mov	r8, #0
	movt	r9, #:upper16:.LC2
	mov	r0, #48
.L391:
.LVL380:
.LBB4410:
.LBB4411:
	.loc 34 22 0
	bl	zynq_uart_putchar
.LVL381:
	.loc 34 21 0
	ldrb	r0, [r9, #1]!	@ zero_extendqisi2
	add	r8, r8, #1
.LVL382:
	cmp	r0, #0
	bne	.L391
.LVL383:
.LBE4411:
.LBE4410:
	.loc 34 178 0
	mov	r0, r6
	mov	r1, #16
	bl	print_unsigned_long
.LVL384:
	add	r0, r8, r0
	add	r7, r7, r0
.LVL385:
	b	.L418
.LVL386:
.L398:
.LBE4407:
	.loc 34 216 0
	ldr	r0, [r5]
	mov	r1, #16
	bl	print_unsigned_long
.LVL387:
	add	r5, r5, #4
.LVL388:
	.loc 34 217 0
	add	r4, r4, #2
.LVL389:
	.loc 34 230 0
	mov	r6, #0
.LVL390:
	.loc 34 216 0
	add	r7, r7, r0
.LVL391:
	b	.L376
.LVL392:
.L394:
.LBB4412:
	.loc 34 193 0
	ldr	r6, [r5]
.LVL393:
	add	r5, r5, #4
.LVL394:
	.loc 34 195 0
	cmp	r6, #0
	blt	.L424
.L399:
	.loc 34 201 0
	mov	r0, r6
	mov	r1, #10
	bl	print_unsigned_long
.LVL395:
	.loc 34 202 0
	add	r4, r4, #2
.LVL396:
.LBE4412:
	.loc 34 230 0
	mov	r6, #0
.LVL397:
.LBB4413:
	.loc 34 201 0
	add	r7, r7, r0
.LVL398:
	b	.L376
.LVL399:
.L396:
.LBE4413:
	.loc 34 206 0
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	cmp	r3, #120
	beq	.L425
.LVL400:
.L400:
	.loc 34 209 0
	add	r4, r4, #3
.LVL401:
	.loc 34 230 0
	mov	r6, #0
	b	.L376
.LVL402:
.L397:
	.loc 34 212 0
	ldr	r0, [r5]
	mov	r1, #10
	bl	print_unsigned_long
.LVL403:
	add	r5, r5, #4
.LVL404:
	.loc 34 213 0
	add	r4, r4, #2
.LVL405:
	.loc 34 230 0
	mov	r6, #0
.LVL406:
	.loc 34 212 0
	add	r7, r7, r0
.LVL407:
	b	.L376
.LVL408:
.L423:
.LBB4414:
	.loc 34 152 0
	mov	r0, #45
	.loc 34 153 0
	add	r7, r7, #1
.LVL409:
	.loc 34 154 0
	rsb	r6, r6, #0
.LVL410:
	.loc 34 152 0
	bl	zynq_uart_putchar
.LVL411:
	b	.L387
.LVL412:
.L406:
.LBE4414:
	.loc 34 133 0
	mov	r0, r4
.LVL413:
.LBE4422:
.LBE4425:
	.loc 34 269 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 44
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 14
	.cfi_def_cfa_offset 16
.LVL414:
	add	sp, sp, #16
	.cfi_restore 0
	.cfi_restore 1
	.cfi_restore 2
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL415:
	bx	lr
.LVL416:
.L408:
	.cfi_restore_state
.LBB4426:
.LBB4423:
.LBB4415:
.LBB4404:
	.loc 34 21 0
	mov	r3, r0
	b	.L392
.LVL417:
.L425:
.LBE4404:
.LBE4415:
	.loc 34 207 0
	add	r3, r5, #7
	bic	r3, r3, #7
	ldr	r0, [r3, #4]
	add	r5, r3, #8
.LVL418:
	ldr	r9, [r3]
.LVL419:
.LBB4416:
.LBB4417:
	.loc 34 109 0
	cmp	r0, #0
	.loc 34 96 0
	moveq	r6, r0
.LVL420:
	.loc 34 109 0
	bne	.L426
.LVL421:
.L401:
	.loc 34 121 0
	mov	r0, r9
	mov	r1, #16
	bl	print_unsigned_long
.LVL422:
	add	r0, r6, r0
.LVL423:
.LBE4417:
.LBE4416:
	.loc 34 207 0
	add	r7, r7, r0
.LVL424:
	b	.L400
.LVL425:
.L424:
.LBB4419:
	.loc 34 196 0
	mov	r0, #45
	.loc 34 197 0
	add	r7, r7, #1
.LVL426:
	.loc 34 198 0
	rsb	r6, r6, #0
.LVL427:
	.loc 34 196 0
	bl	zynq_uart_putchar
.LVL428:
	b	.L399
.LVL429:
.L426:
.LBE4419:
.LBB4420:
.LBB4418:
	.loc 34 110 0
	mov	r1, #16
	bl	print_unsigned_long
.LVL430:
	.loc 34 113 0
	tst	r9, #-268435456
	.loc 34 110 0
	mov	r6, r0
.LVL431:
	.loc 34 113 0
	bne	.L401
	mov	r8, #-268435456
.LVL432:
.L402:
	.loc 34 116 0
	mov	r8, r8, lsr #4
.LVL433:
	.loc 34 114 0
	mov	r0, #48
	.loc 34 115 0
	add	r6, r6, #1
.LVL434:
	.loc 34 114 0
	bl	zynq_uart_putchar
.LVL435:
	.loc 34 113 0
	tst	r9, r8
	beq	.L402
	b	.L401
.LBE4418:
.LBE4420:
.LBE4423:
.LBE4426:
	.cfi_endproc
.LFE556:
	.size	kprintf, .-kprintf
	.align	2
	.global	checkValidIPCBuffer
	.type	checkValidIPCBuffer, %function
checkValidIPCBuffer:
.LFB344:
	.loc 14 755 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL436:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	.loc 14 755 0
	add	r3, sp, #16
	mov	r4, r0
	stmdb	r3, {r1, r2}
	ldr	r3, [sp, #8]
.LVL437:
.LBB4442:
.LBB4443:
	.loc 28 1035 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 28 1037 0
	uxtbeq	r3, r3
.LVL438:
	.loc 28 1036 0
	andne	r3, r3, #15
.LBE4443:
.LBE4442:
	.loc 14 756 0
	bic	r3, r3, #2
	cmp	r3, #1
	bne	.L436
	.loc 14 763 0
	ubfx	r0, r0, #0, #9
.LVL439:
	cmp	r0, #0
	bne	.L437
.L431:
	.loc 14 771 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldmfd	sp!, {r4, pc}
.LVL440:
.L436:
	.cfi_restore_state
	.loc 14 758 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC3
.LVL441:
	movt	r3, #:upper16:ksCurThread
	movw	r2, #758
	ldr	ip, [r3]
.LVL442:
	movt	r0, #:upper16:.LC3
	ldr	r1, .L438
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL443:
	str	ip, [sp, #4]
	bl	kprintf
.LVL444:
	movw	r0, #:lower16:.LC4
	movt	r0, #:upper16:.LC4
	bl	kprintf
.LVL445:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL446:
	.loc 14 759 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	.loc 14 760 0
	mov	r0, r2
	.loc 14 759 0
	str	r2, [r3, #24]
	.loc 14 771 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldmfd	sp!, {r4, pc}
.LVL447:
.L437:
	.cfi_restore_state
.LBB4444:
.LBB4445:
	.loc 14 764 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:ksCurThread
	movw	r2, #765
	ldr	ip, [r3]
.LVL448:
	movt	r0, #:upper16:.LC3
	ldr	r1, .L438
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL449:
	str	ip, [sp, #4]
	bl	kprintf
.LVL450:
	movw	r0, #:lower16:.LC6
	mov	r1, r4
	movt	r0, #:upper16:.LC6
	bl	kprintf
.LVL451:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL452:
	.loc 14 766 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #5
	movt	r3, #:upper16:current_syscall_error
	mov	r0, #3
	str	r2, [r3, #24]
	b	.L431
.L439:
	.align	2
.L438:
	.word	.LANCHOR4+16
.LBE4445:
.LBE4444:
	.cfi_endproc
.LFE344:
	.size	checkValidIPCBuffer, .-checkValidIPCBuffer
	.align	2
	.global	kernelPrefetchAbort
	.type	kernelPrefetchAbort, %function
kernelPrefetchAbort:
.LFB380:
	.loc 14 2309 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL453:
	stmfd	sp!, {r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 14 2309 0
	mov	r5, r0
.LBB4446:
.LBB4447:
	.loc 4 308 0
@ 308 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mrc p15, 0, r4, c5, c0, 1
@ 0 "" 2
.LBE4447:
.LBE4446:
	.loc 14 2312 0
	movw	r0, #:lower16:.LC7
.LVL454:
	movt	r0, #:upper16:.LC7
	bl	kprintf
.LVL455:
	.loc 14 2313 0
	movw	r0, #:lower16:.LC8
	mov	r1, r5
	movt	r0, #:upper16:.LC8
	bl	kprintf
.LVL456:
	.loc 14 2314 0
	movw	r0, #:lower16:.LC9
	mov	r1, r4
	movt	r0, #:upper16:.LC9
	bl	kprintf
.LVL457:
	.loc 14 2316 0
	bl	halt
.LVL458:
	.cfi_endproc
.LFE380:
	.size	kernelPrefetchAbort, .-kernelPrefetchAbort
	.align	2
	.global	kernelDataAbort
	.type	kernelDataAbort, %function
kernelDataAbort:
.LFB381:
	.loc 14 2321 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL459:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 14 2321 0
	mov	r6, r0
.LBB4448:
.LBB4449:
	.loc 4 316 0
@ 316 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mrc p15, 0, r4, c5, c0, 0
@ 0 "" 2
.LBE4449:
.LBE4448:
.LBB4450:
.LBB4451:
	.loc 4 324 0
@ 324 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mrc p15, 0, r5, c6, c0, 0
@ 0 "" 2
.LBE4451:
.LBE4450:
	.loc 14 2325 0
	movw	r0, #:lower16:.LC10
.LVL460:
	movt	r0, #:upper16:.LC10
	bl	kprintf
.LVL461:
	.loc 14 2326 0
	movw	r0, #:lower16:.LC8
	mov	r1, r6
	movt	r0, #:upper16:.LC8
	bl	kprintf
.LVL462:
	.loc 14 2327 0
	movw	r0, #:lower16:.LC11
	mov	r1, r5
	mov	r2, r4
	movt	r0, #:upper16:.LC11
	bl	kprintf
.LVL463:
	.loc 14 2329 0
	bl	halt
.LVL464:
	.cfi_endproc
.LFE381:
	.size	kernelDataAbort, .-kernelDataAbort
	.align	2
	.global	debug_init
	.type	debug_init, %function
debug_init:
.LFB414:
	.loc 16 27 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB4460:
.LBB4461:
	.loc 17 70 0
@ 70 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mrc p14, 0, r3, c0, c0, 0
@ 0 "" 2
.LBE4461:
.LBE4460:
	.loc 16 33 0
	movw	r4, #:lower16:n_breakpoints
	ubfx	ip, r3, #24, #4
	.loc 16 38 0
	movw	r0, #:lower16:.LC12
	.loc 16 33 0
	add	ip, ip, #1
	.loc 16 38 0
	and	r2, r3, #15
	.loc 16 33 0
	movt	r4, #:upper16:n_breakpoints
	.loc 16 38 0
	ubfx	r1, r3, #4, #4
	movt	r0, #:upper16:.LC12
	ubfx	r3, r3, #16, #4
	.loc 16 33 0
	str	ip, [r4]
.LVL465:
	.loc 16 38 0
	bl	kprintf
.LVL466:
	.loc 16 40 0
	movw	r0, #:lower16:.LC13
	ldr	r1, [r4]
	movt	r0, #:upper16:.LC13
	bl	kprintf
.LVL467:
.LBB4462:
.LBB4463:
	.loc 17 105 0
	mov	r3, #32768
@ 105 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r3, c0, c1, 0
@ 0 "" 2
.LVL468:
.LBE4463:
.LBE4462:
	.loc 16 46 0
	ldr	r0, [r4]
	cmp	r0, #0
	movwne	r2, #:lower16:breakpoints
	movne	r3, #0
	movtne	r2, #:upper16:breakpoints
	.loc 16 47 0
	movne	r1, r3
	.loc 16 46 0
	beq	.L455
.LVL469:
.L454:
	.loc 16 47 0 discriminator 3
	str	r1, [r2, #4]
.LVL470:
.LBB4464:
.LBB4465:
	.loc 17 238 0 discriminator 3
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L446
.L448:
	.word	.L447
	.word	.L449
	.word	.L450
	.word	.L451
	.word	.L452
	.word	.L453
.L453:
	.loc 17 255 0
@ 255 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r1, c0, c5, 5
@ 0 "" 2
.LVL471:
.L446:
.LBE4465:
.LBE4464:
	.loc 16 46 0 discriminator 3
	add	r3, r3, #1
.LVL472:
	add	r2, r2, #8
	cmp	r3, r0
	bne	.L454
.LVL473:
.L455:
.LBB4467:
.LBB4468:
	.loc 17 132 0
	mov	r3, #0
@ 132 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r3, c0, c7, 0
@ 0 "" 2
	ldmfd	sp!, {r4, pc}
.LVL474:
.L449:
.LBE4468:
.LBE4467:
.LBB4469:
.LBB4466:
	.loc 17 243 0
@ 243 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r1, c0, c1, 5
@ 0 "" 2
	b	.L446
.L447:
.LVL475:
	.loc 17 240 0
@ 240 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r1, c0, c0, 5
@ 0 "" 2
	b	.L446
.LVL476:
.L451:
	.loc 17 249 0
@ 249 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r1, c0, c3, 5
@ 0 "" 2
	b	.L446
.L450:
	.loc 17 246 0
@ 246 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r1, c0, c2, 5
@ 0 "" 2
	b	.L446
.L452:
	.loc 17 252 0
@ 252 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r1, c0, c4, 5
@ 0 "" 2
	b	.L446
.LBE4466:
.LBE4469:
	.cfi_endproc
.LFE414:
	.size	debug_init, .-debug_init
	.align	2
	.global	software_breakpoint
	.type	software_breakpoint, %function
software_breakpoint:
.LFB415:
	.loc 16 55 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL477:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 16 55 0
	mov	r6, r1
	mov	r1, r0
.LVL478:
	.loc 16 58 0
	movw	r0, #:lower16:.LC14
.LVL479:
	movt	r0, #:upper16:.LC14
	sub	r5, r6, #4
	.loc 16 59 0
	mov	r4, #0
	.loc 16 58 0
	bl	kprintf
.LVL480:
.L460:
	.loc 16 60 0 discriminator 3
	movw	r0, #:lower16:.LC15
	mov	r1, r4
	movt	r0, #:upper16:.LC15
	.loc 16 59 0 discriminator 3
	add	r4, r4, #1
.LVL481:
	.loc 16 60 0 discriminator 3
	ldr	r2, [r5, #4]!
	bl	kprintf
.LVL482:
	.loc 16 59 0 discriminator 3
	cmp	r4, #10
	bne	.L460
	add	r5, r6, #36
.L461:
	.loc 16 63 0 discriminator 3
	movw	r0, #:lower16:.LC16
	mov	r1, r4
	movt	r0, #:upper16:.LC16
	.loc 16 62 0 discriminator 3
	add	r4, r4, #1
.LVL483:
	.loc 16 63 0 discriminator 3
	ldr	r2, [r5, #4]!
	bl	kprintf
.LVL484:
	.loc 16 62 0 discriminator 3
	cmp	r4, #15
	bne	.L461
	.loc 16 65 0
	movw	r0, #:lower16:.LC17
	ldr	r1, [r6, #60]
	movt	r0, #:upper16:.LC17
	movw	r5, #:lower16:ksCurThread
	bl	kprintf
.LVL485:
	.loc 16 66 0
	movw	r0, #:lower16:.LC18
	ldr	r1, [r6, #64]
	movt	r0, #:upper16:.LC18
	movt	r5, #:upper16:ksCurThread
	bl	kprintf
.LVL486:
	.loc 16 68 0
	movw	r0, #:lower16:.LC19
	.loc 16 69 0
	mov	r4, #0
.LVL487:
	.loc 16 68 0
	movt	r0, #:upper16:.LC19
	bl	kprintf
.LVL488:
.L462:
	.loc 16 70 0 discriminator 3
	ldr	r3, [r5]
	movw	r0, #:lower16:.LC15
	mov	r1, r4
	movt	r0, #:upper16:.LC15
	ldr	r2, [r3, r4, asl #2]
	.loc 16 69 0 discriminator 3
	add	r4, r4, #1
.LVL489:
	.loc 16 70 0 discriminator 3
	bl	kprintf
.LVL490:
	.loc 16 69 0 discriminator 3
	cmp	r4, #10
	bne	.L462
.LVL491:
.L463:
	.loc 16 74 0 discriminator 3
	ldr	r3, [r5]
	movw	r0, #:lower16:.LC16
	mov	r1, r4
	movt	r0, #:upper16:.LC16
	movw	r6, #:lower16:ksCurThread
	ldr	r2, [r3, r4, asl #2]
	.loc 16 73 0 discriminator 3
	add	r4, r4, #1
.LVL492:
	.loc 16 74 0 discriminator 3
	bl	kprintf
.LVL493:
	.loc 16 73 0 discriminator 3
	cmp	r4, #15
	.loc 16 74 0 discriminator 3
	movt	r6, #:upper16:ksCurThread
	.loc 16 73 0 discriminator 3
	bne	.L463
	.loc 16 77 0
	ldr	r3, [r6]
	movw	r0, #:lower16:.LC17
	movt	r0, #:upper16:.LC17
	ldr	r1, [r3, #60]
	bl	kprintf
.LVL494:
	.loc 16 78 0
	ldr	r3, [r6]
	movw	r0, #:lower16:.LC18
	movt	r0, #:upper16:.LC18
	.loc 16 79 0
	ldmfd	sp!, {r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL495:
	.loc 16 78 0
	ldr	r1, [r3, #64]
	b	kprintf
.LVL496:
	.cfi_endproc
.LFE415:
	.size	software_breakpoint, .-software_breakpoint
	.align	2
	.global	breakpoint_multiplexer
	.type	breakpoint_multiplexer, %function
breakpoint_multiplexer:
.LFB416:
	.loc 16 83 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL497:
	.loc 16 86 0
	movw	r3, #:lower16:n_breakpoints
	.loc 16 83 0
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 16 86 0
	movt	r3, #:upper16:n_breakpoints
	.loc 16 83 0
	mov	r5, r0
	.loc 16 86 0
	ldr	r4, [r3]
	cmp	r4, #0
	beq	.L470
	movw	ip, #:lower16:breakpoints
	mov	r3, #0
	movt	ip, #:upper16:breakpoints
	mov	r2, ip
	b	.L471
.LVL498:
.L472:
	.loc 16 87 0
	add	r3, r3, #1
.LVL499:
	add	r2, r2, #8
	.loc 16 86 0
	cmp	r3, r4
	beq	.L470
.LVL500:
.L471:
	.loc 16 86 0 is_stmt 0 discriminator 2
	ldr	lr, [ip, r3, asl #3]
	add	r6, ip, r3, asl #3
	cmp	lr, r5
	bne	.L472
	.loc 16 86 0 discriminator 3
	ldr	lr, [r2, #4]
	cmp	lr, #0
	beq	.L472
	.loc 16 89 0 is_stmt 1
	cmp	r3, r4
	beq	.L470
	.loc 16 92 0
	ldr	r3, [r6, #4]
.LVL501:
	mov	r0, r1
.LVL502:
	.loc 16 94 0
	ldmfd	sp!, {r4, r5, r6, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL503:
	.loc 16 92 0
	bx	r3	@ indirect register sibling call
.LVL504:
.L470:
	.cfi_restore_state
	.loc 16 90 0
	movw	r0, #:lower16:.LC20
.LVL505:
	mov	r1, r5
.LVL506:
	movt	r0, #:upper16:.LC20
	.loc 16 94 0
	ldmfd	sp!, {r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL507:
	.loc 16 90 0
	b	kprintf
.LVL508:
	.cfi_endproc
.LFE416:
	.size	breakpoint_multiplexer, .-breakpoint_multiplexer
	.align	2
	.global	_fail
	.type	_fail, %function
_fail:
.LFB471:
	.file 35 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/assert.c"
	.loc 35 21 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL509:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 35 22 0
	str	r0, [sp]
	movw	r0, #:lower16:.LC21
.LVL510:
	movt	r0, #:upper16:.LC21
	bl	kprintf
.LVL511:
	.loc 35 29 0
	bl	halt
.LVL512:
	.cfi_endproc
.LFE471:
	.size	_fail, .-_fail
	.align	2
	.type	APFromVMRights.part.56, %function
APFromVMRights.part.56:
.LFB747:
	.loc 14 72 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL513:
	.loc 14 88 0
	movw	r0, #:lower16:.LC22
	movw	r1, #:lower16:.LC23
	.loc 14 72 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 14 88 0
	movt	r0, #:upper16:.LC22
	movt	r1, #:upper16:.LC23
	mov	r2, #88
	ldr	r3, .L486
	bl	_fail
.LVL514:
.L487:
	.align	2
.L486:
	.word	.LANCHOR4+36
	.cfi_endproc
.LFE747:
	.size	APFromVMRights.part.56, .-APFromVMRights.part.56
	.align	2
	.type	APFromVMRights, %function
APFromVMRights:
.LFB319:
	.loc 14 73 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL515:
	.loc 14 74 0
	cmp	r0, #3
	ldrls	pc, [pc, r0, asl #2]
	b	.L489
.L491:
	.word	.L490
	.word	.L492
	.word	.L495
	.word	.L494
.L495:
	.loc 14 82 0
	mov	r0, #2
.LVL516:
	.loc 14 90 0
	bx	lr
.LVL517:
.L492:
	.loc 14 79 0
	mov	r0, #1
.LVL518:
	bx	lr
.LVL519:
.L490:
	.loc 14 76 0
	mov	r0, #0
.LVL520:
	bx	lr
.LVL521:
.L494:
	.loc 14 85 0
	mov	r0, #3
.LVL522:
	bx	lr
.LVL523:
.L489:
	.loc 14 73 0
	stmfd	sp!, {r3, lr}
	bl	APFromVMRights.part.56
.LVL524:
	.cfi_endproc
.LFE319:
	.size	APFromVMRights, .-APFromVMRights
	.align	2
	.global	Arch_getObjectSize
	.type	Arch_getObjectSize, %function
Arch_getObjectSize:
.LFB461:
	.loc 23 343 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL525:
	.loc 23 344 0
	sub	r0, r0, #5
.LVL526:
	cmp	r0, #5
	ldrls	pc, [pc, r0, asl #2]
	b	.L498
.L500:
	.word	.L499
	.word	.L501
	.word	.L506
	.word	.L503
	.word	.L504
	.word	.L505
.L506:
	.loc 23 350 0
	mov	r0, #20
.LVL527:
	.loc 23 361 0
	bx	lr
.L503:
	.loc 23 352 0
	mov	r0, #24
	bx	lr
.L504:
	.loc 23 354 0
	mov	r0, #10
	bx	lr
.L505:
	.loc 23 356 0
	mov	r0, #14
	bx	lr
.L499:
	.loc 23 346 0
	mov	r0, #12
	bx	lr
.L501:
	.loc 23 348 0
	mov	r0, #16
	bx	lr
.L498:
.LVL528:
.LBB4472:
.LBB4473:
	.loc 23 358 0
	movw	r0, #:lower16:.LC24
	movw	r1, #:lower16:.LC25
.LBE4473:
.LBE4472:
	.loc 23 343 0
	stmfd	sp!, {r3, lr}
.LBB4475:
.LBB4474:
	.loc 23 358 0
	movt	r0, #:upper16:.LC24
	movt	r1, #:upper16:.LC25
	movw	r2, #358
	ldr	r3, .L508
	bl	_fail
.LVL529:
.L509:
	.align	2
.L508:
	.word	.LANCHOR4+52
.LBE4474:
.LBE4475:
	.cfi_endproc
.LFE461:
	.size	Arch_getObjectSize, .-Arch_getObjectSize
	.align	2
	.global	getObjectSize
	.type	getObjectSize, %function
getObjectSize:
.LFB622:
	.file 36 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/object/objecttype.c"
	.loc 36 34 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL530:
	.loc 36 35 0
	cmp	r0, #4
	bhi	.L518
	.loc 36 38 0
	sub	r3, r0, #1
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L512
.L514:
	.word	.L517
	.word	.L515
	.word	.L515
	.word	.L516
.L515:
	.loc 36 42 0
	mov	r0, #4
.LVL531:
	bx	lr
.LVL532:
.L518:
	.loc 36 36 0
	b	Arch_getObjectSize
.LVL533:
.L517:
	.loc 36 40 0
	mov	r0, #9
.LVL534:
	.loc 36 54 0
	bx	lr
.LVL535:
.L512:
	.loc 36 48 0
	mov	r0, r1
.LVL536:
	bx	lr
.LVL537:
.L516:
	.loc 36 46 0
	add	r0, r1, #4
.LVL538:
	bx	lr
	.cfi_endproc
.LFE622:
	.size	getObjectSize, .-getObjectSize
	.align	2
	.type	pageBitsForSize, %function
pageBitsForSize:
.LFB215:
	.file 37 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/hardware.h"
	.loc 37 112 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL539:
	.loc 37 113 0
	cmp	r0, #3
	ldrls	pc, [pc, r0, asl #2]
	b	.L520
.L522:
	.word	.L521
	.word	.L523
	.word	.L526
	.word	.L525
.L526:
	.loc 37 121 0
	mov	r0, #20
.LVL540:
	.loc 37 129 0
	bx	lr
.LVL541:
.L523:
	.loc 37 118 0
	mov	r0, #16
.LVL542:
	bx	lr
.LVL543:
.L521:
	.loc 37 115 0
	mov	r0, #12
.LVL544:
	bx	lr
.LVL545:
.L525:
	.loc 37 124 0
	mov	r0, #24
.LVL546:
	bx	lr
.LVL547:
.L520:
.LBB4480:
.LBB4481:
	.loc 37 127 0
	movw	r0, #:lower16:.LC26
.LVL548:
	movw	r1, #:lower16:.LC27
.LBE4481:
.LBE4480:
	.loc 37 112 0
	stmfd	sp!, {r3, lr}
.LBB4483:
.LBB4482:
	.loc 37 127 0
	movt	r0, #:upper16:.LC26
	movt	r1, #:upper16:.LC27
	mov	r2, #127
	ldr	r3, .L528
	bl	_fail
.LVL549:
.L529:
	.align	2
.L528:
	.word	.LANCHOR4+72
.LBE4482:
.LBE4483:
	.cfi_endproc
.LFE215:
	.size	pageBitsForSize, .-pageBitsForSize
	.align	2
	.global	_assert_fail
	.type	_assert_fail, %function
_assert_fail:
.LFB472:
	.loc 35 37 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL550:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	mov	ip, r2
	mov	lr, r1
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 35 37 0
	mov	r4, r0
	.loc 35 38 0
	movw	r0, #:lower16:.LC28
.LVL551:
	mov	r1, r4
.LVL552:
	mov	r2, lr
.LVL553:
	str	r3, [sp]
	movt	r0, #:upper16:.LC28
	mov	r3, ip
.LVL554:
	bl	kprintf
.LVL555:
	.loc 35 44 0
	bl	halt
.LVL556:
	.cfi_endproc
.LFE472:
	.size	_assert_fail, .-_assert_fail
	.section	.text.unlikely,"ax",%progbits
	.align	2
	.type	cap_thread_cap_get_capTCBPtr.isra.59.part.60, %function
cap_thread_cap_get_capTCBPtr.isra.59.part.60:
.LFB751:
	.loc 28 1606 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 1608 0
	movw	r0, #:lower16:.LC29
	movw	r1, #:lower16:.LC30
	.loc 28 1606 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1608 0
	movt	r0, #:upper16:.LC29
	movt	r1, #:upper16:.LC30
	movw	r2, #1609
	ldr	r3, .L534
	bl	_assert_fail
.LVL557:
.L535:
	.align	2
.L534:
	.word	.LANCHOR4+88
	.cfi_endproc
.LFE751:
	.size	cap_thread_cap_get_capTCBPtr.isra.59.part.60, .-cap_thread_cap_get_capTCBPtr.isra.59.part.60
	.align	2
	.type	cap_reply_cap_get_capReplyMaster.isra.63.part.64, %function
cap_reply_cap_get_capReplyMaster.isra.63.part.64:
.LFB755:
	.loc 28 1469 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 1471 0
	movw	r0, #:lower16:.LC31
	movw	r1, #:lower16:.LC30
	.loc 28 1469 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1471 0
	movt	r0, #:upper16:.LC31
	movt	r1, #:upper16:.LC30
	mov	r2, #1472
	ldr	r3, .L538
	bl	_assert_fail
.LVL558:
.L539:
	.align	2
.L538:
	.word	.LANCHOR4+120
	.cfi_endproc
.LFE755:
	.size	cap_reply_cap_get_capReplyMaster.isra.63.part.64, .-cap_reply_cap_get_capReplyMaster.isra.63.part.64
	.text
	.align	2
	.type	cap_reply_cap_get_capTCBPtr.isra.65.part.66, %function
cap_reply_cap_get_capTCBPtr.isra.65.part.66:
.LFB757:
	.loc 28 1455 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 1457 0
	movw	r0, #:lower16:.LC31
	movw	r1, #:lower16:.LC30
	.loc 28 1455 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1457 0
	movt	r0, #:upper16:.LC31
	movt	r1, #:upper16:.LC30
	movw	r2, #1458
	ldr	r3, .L542
	bl	_assert_fail
.LVL559:
.L543:
	.align	2
.L542:
	.word	.LANCHOR4+156
	.cfi_endproc
.LFE757:
	.size	cap_reply_cap_get_capTCBPtr.isra.65.part.66, .-cap_reply_cap_get_capTCBPtr.isra.65.part.66
	.align	2
	.type	cap_endpoint_cap_get_capCanReceive.part.67, %function
cap_endpoint_cap_get_capCanReceive.part.67:
.LFB758:
	.loc 28 1223 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 1225 0
	movw	r0, #:lower16:.LC32
	movw	r1, #:lower16:.LC30
	.loc 28 1223 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1225 0
	movt	r0, #:upper16:.LC32
	movt	r1, #:upper16:.LC30
	movw	r2, #1226
	ldr	r3, .L546
	bl	_assert_fail
.LVL560:
.L547:
	.align	2
.L546:
	.word	.LANCHOR4+184
	.cfi_endproc
.LFE758:
	.size	cap_endpoint_cap_get_capCanReceive.part.67, .-cap_endpoint_cap_get_capCanReceive.part.67
	.section	.text.unlikely
	.align	2
	.type	cap_notification_cap_get_capNtfnPtr.isra.68.part.69, %function
cap_notification_cap_get_capNtfnPtr.isra.68.part.69:
.LFB760:
	.loc 28 1405 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 1407 0
	movw	r0, #:lower16:.LC33
	movw	r1, #:lower16:.LC30
	.loc 28 1405 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1407 0
	movt	r0, #:upper16:.LC33
	movt	r1, #:upper16:.LC30
	mov	r2, #1408
	ldr	r3, .L550
	bl	_assert_fail
.LVL561:
.L551:
	.align	2
.L550:
	.word	.LANCHOR4+220
	.cfi_endproc
.LFE760:
	.size	cap_notification_cap_get_capNtfnPtr.isra.68.part.69, .-cap_notification_cap_get_capNtfnPtr.isra.68.part.69
	.align	2
	.type	cap_notification_cap_get_capNtfnCanReceive.part.70, %function
cap_notification_cap_get_capNtfnCanReceive.part.70:
.LFB761:
	.loc 28 1353 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 1355 0
	movw	r0, #:lower16:.LC33
	movw	r1, #:lower16:.LC30
	.loc 28 1353 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1355 0
	movt	r0, #:upper16:.LC33
	movt	r1, #:upper16:.LC30
	movw	r2, #1356
	ldr	r3, .L554
	bl	_assert_fail
.LVL562:
.L555:
	.align	2
.L554:
	.word	.LANCHOR4+256
	.cfi_endproc
.LFE761:
	.size	cap_notification_cap_get_capNtfnCanReceive.part.70, .-cap_notification_cap_get_capNtfnCanReceive.part.70
	.align	2
	.type	lookup_fault_missing_capability_new.part.71, %function
lookup_fault_missing_capability_new.part.71:
.LFB762:
	.loc 28 2592 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL563:
	.loc 28 2599 0
	movw	r0, #:lower16:.LC34
	movw	r1, #:lower16:.LC30
	.loc 28 2592 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 2599 0
	movt	r0, #:upper16:.LC34
	movt	r1, #:upper16:.LC30
	movw	r2, #2599
	ldr	r3, .L558
	bl	_assert_fail
.LVL564:
.L559:
	.align	2
.L558:
	.word	.LANCHOR4+300
	.cfi_endproc
.LFE762:
	.size	lookup_fault_missing_capability_new.part.71, .-lookup_fault_missing_capability_new.part.71
	.align	2
	.type	cap_frame_cap_new.part.72, %function
cap_frame_cap_new.part.72:
.LFB763:
	.loc 28 1767 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL565:
	.loc 28 1774 0
	movw	r0, #:lower16:.LC35
	movw	r1, #:lower16:.LC30
	.loc 28 1767 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1774 0
	movt	r0, #:upper16:.LC35
	movt	r1, #:upper16:.LC30
	movw	r2, #1774
	ldr	r3, .L562
	bl	_assert_fail
.LVL566:
.L563:
	.align	2
.L562:
	.word	.LANCHOR4+336
	.cfi_endproc
.LFE763:
	.size	cap_frame_cap_new.part.72, .-cap_frame_cap_new.part.72
	.align	2
	.type	cap_small_frame_cap_new.part.73, %function
cap_small_frame_cap_new.part.73:
.LFB764:
	.loc 28 1620 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL567:
	.loc 28 1627 0
	movw	r0, #:lower16:.LC36
	movw	r1, #:lower16:.LC30
	.loc 28 1620 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1627 0
	movt	r0, #:upper16:.LC36
	movt	r1, #:upper16:.LC30
	movw	r2, #1627
	ldr	r3, .L566
	bl	_assert_fail
.LVL568:
.L567:
	.align	2
.L566:
	.word	.LANCHOR4+356
	.cfi_endproc
.LFE764:
	.size	cap_small_frame_cap_new.part.73, .-cap_small_frame_cap_new.part.73
	.align	2
	.type	cap_untyped_cap_get_capPtr.isra.75.part.76, %function
cap_untyped_cap_get_capPtr.isra.75.part.76:
.LFB767:
	.loc 28 1140 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 1142 0
	movw	r0, #:lower16:.LC37
	movw	r1, #:lower16:.LC30
	.loc 28 1140 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1142 0
	movt	r0, #:upper16:.LC37
	movt	r1, #:upper16:.LC30
	movw	r2, #1143
	ldr	r3, .L570
	bl	_assert_fail
.LVL569:
.L571:
	.align	2
.L570:
	.word	.LANCHOR4+380
	.cfi_endproc
.LFE767:
	.size	cap_untyped_cap_get_capPtr.isra.75.part.76, .-cap_untyped_cap_get_capPtr.isra.75.part.76
	.text
	.align	2
	.type	cap_endpoint_cap_get_capEPPtr.part.77, %function
cap_endpoint_cap_get_capEPPtr.part.77:
.LFB768:
	.loc 28 1183 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 1185 0
	movw	r0, #:lower16:.LC32
	movw	r1, #:lower16:.LC30
	.loc 28 1183 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1185 0
	movt	r0, #:upper16:.LC32
	movt	r1, #:upper16:.LC30
	movw	r2, #1186
	ldr	r3, .L574
	bl	_assert_fail
.LVL570:
.L575:
	.align	2
.L574:
	.word	.LANCHOR4+408
	.cfi_endproc
.LFE768:
	.size	cap_endpoint_cap_get_capEPPtr.part.77, .-cap_endpoint_cap_get_capEPPtr.part.77
	.section	.text.unlikely
	.align	2
	.type	cap_cnode_cap_get_capCNodePtr.isra.78.part.79, %function
cap_cnode_cap_get_capCNodePtr.isra.78.part.79:
.LFB770:
	.loc 28 1575 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 1577 0
	movw	r0, #:lower16:.LC38
	movw	r1, #:lower16:.LC30
	.loc 28 1575 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1577 0
	movt	r0, #:upper16:.LC38
	movt	r1, #:upper16:.LC30
	movw	r2, #1578
	ldr	r3, .L578
	bl	_assert_fail
.LVL571:
.L579:
	.align	2
.L578:
	.word	.LANCHOR4+440
	.cfi_endproc
.LFE770:
	.size	cap_cnode_cap_get_capCNodePtr.isra.78.part.79, .-cap_cnode_cap_get_capCNodePtr.isra.78.part.79
	.align	2
	.type	cap_zombie_cap_get_capZombieType.isra.80.part.81, %function
cap_zombie_cap_get_capZombieType.isra.80.part.81:
.LFB772:
	.loc 28 2316 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 2318 0
	movw	r0, #:lower16:.LC39
	movw	r1, #:lower16:.LC30
	.loc 28 2316 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 2318 0
	movt	r0, #:upper16:.LC39
	movt	r1, #:upper16:.LC30
	movw	r2, #2319
	ldr	r3, .L582
	bl	_assert_fail
.LVL572:
.L583:
	.align	2
.L582:
	.word	.LANCHOR4+472
	.cfi_endproc
.LFE772:
	.size	cap_zombie_cap_get_capZombieType.isra.80.part.81, .-cap_zombie_cap_get_capZombieType.isra.80.part.81
	.align	2
	.type	cap_zombie_cap_get_capZombieID.part.83, %function
cap_zombie_cap_get_capZombieID.part.83:
.LFB774:
	.loc 28 2290 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 2292 0
	movw	r0, #:lower16:.LC39
	movw	r1, #:lower16:.LC30
	.loc 28 2290 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 2292 0
	movt	r0, #:upper16:.LC39
	movt	r1, #:upper16:.LC30
	movw	r2, #2293
	ldr	r3, .L586
	bl	_assert_fail
.LVL573:
.L587:
	.align	2
.L586:
	.word	.LANCHOR4+508
	.cfi_endproc
.LFE774:
	.size	cap_zombie_cap_get_capZombieID.part.83, .-cap_zombie_cap_get_capZombieID.part.83
	.align	2
	.type	cap_small_frame_cap_get_capFBasePtr.isra.85.part.86, %function
cap_small_frame_cap_get_capFBasePtr.isra.85.part.86:
.LFB777:
	.loc 28 1753 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 1755 0
	movw	r0, #:lower16:.LC40
	movw	r1, #:lower16:.LC30
	.loc 28 1753 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1755 0
	movt	r0, #:upper16:.LC40
	movt	r1, #:upper16:.LC30
	movw	r2, #1756
	ldr	r3, .L590
	bl	_assert_fail
.LVL574:
.L591:
	.align	2
.L590:
	.word	.LANCHOR4+540
	.cfi_endproc
.LFE777:
	.size	cap_small_frame_cap_get_capFBasePtr.isra.85.part.86, .-cap_small_frame_cap_get_capFBasePtr.isra.85.part.86
	.align	2
	.type	cap_frame_cap_get_capFBasePtr.isra.87.part.88, %function
cap_frame_cap_get_capFBasePtr.isra.87.part.88:
.LFB779:
	.loc 28 1917 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 1919 0
	movw	r0, #:lower16:.LC41
	movw	r1, #:lower16:.LC30
	.loc 28 1917 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1919 0
	movt	r0, #:upper16:.LC41
	movt	r1, #:upper16:.LC30
	mov	r2, #1920
	ldr	r3, .L594
	bl	_assert_fail
.LVL575:
.L595:
	.align	2
.L594:
	.word	.LANCHOR4+576
	.cfi_endproc
.LFE779:
	.size	cap_frame_cap_get_capFBasePtr.isra.87.part.88, .-cap_frame_cap_get_capFBasePtr.isra.87.part.88
	.align	2
	.type	generic_frame_cap_get_capFBasePtr.isra.89.part.90, %function
generic_frame_cap_get_capFBasePtr.isra.89.part.90:
.LFB781:
	.file 38 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/object/structures.h"
	.loc 38 202 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 38 207 0
	movw	r0, #:lower16:.LC42
	movw	r1, #:lower16:.LC43
	.loc 38 202 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 38 207 0
	movt	r0, #:upper16:.LC42
	movt	r1, #:upper16:.LC43
	mov	r2, #208
	ldr	r3, .L598
	bl	_assert_fail
.LVL576:
.L599:
	.align	2
.L598:
	.word	.LANCHOR4+608
	.cfi_endproc
.LFE781:
	.size	generic_frame_cap_get_capFBasePtr.isra.89.part.90, .-generic_frame_cap_get_capFBasePtr.isra.89.part.90
	.align	2
	.type	cap_page_table_cap_get_capPTBasePtr.isra.91.part.92, %function
cap_page_table_cap_get_capPTBasePtr.isra.91.part.92:
.LFB783:
	.loc 28 2096 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 2098 0
	movw	r0, #:lower16:.LC44
	movw	r1, #:lower16:.LC30
	.loc 28 2096 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 2098 0
	movt	r0, #:upper16:.LC44
	movt	r1, #:upper16:.LC30
	movw	r2, #2099
	ldr	r3, .L602
	bl	_assert_fail
.LVL577:
.L603:
	.align	2
.L602:
	.word	.LANCHOR4+644
	.cfi_endproc
.LFE783:
	.size	cap_page_table_cap_get_capPTBasePtr.isra.91.part.92, .-cap_page_table_cap_get_capPTBasePtr.isra.91.part.92
	.text
	.align	2
	.type	cap_page_directory_cap_get_capPDBasePtr.isra.93.part.94, %function
cap_page_directory_cap_get_capPDBasePtr.isra.93.part.94:
.LFB785:
	.loc 28 2160 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 2162 0
	movw	r0, #:lower16:.LC45
	movw	r1, #:lower16:.LC30
	.loc 28 2160 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 2162 0
	movt	r0, #:upper16:.LC45
	movt	r1, #:upper16:.LC30
	movw	r2, #2163
	ldr	r3, .L606
	bl	_assert_fail
.LVL578:
.L607:
	.align	2
.L606:
	.word	.LANCHOR4+680
	.cfi_endproc
.LFE785:
	.size	cap_page_directory_cap_get_capPDBasePtr.isra.93.part.94, .-cap_page_directory_cap_get_capPDBasePtr.isra.93.part.94
	.section	.text.unlikely
	.align	2
	.type	cap_asid_pool_cap_get_capASIDPool.isra.95.part.96, %function
cap_asid_pool_cap_get_capASIDPool.isra.95.part.96:
.LFB787:
	.loc 28 1965 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 1967 0
	movw	r0, #:lower16:.LC46
	movw	r1, #:lower16:.LC30
	.loc 28 1965 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1967 0
	movt	r0, #:upper16:.LC46
	movt	r1, #:upper16:.LC30
	mov	r2, #1968
	ldr	r3, .L610
	bl	_assert_fail
.LVL579:
.L611:
	.align	2
.L610:
	.word	.LANCHOR4+720
	.cfi_endproc
.LFE787:
	.size	cap_asid_pool_cap_get_capASIDPool.isra.95.part.96, .-cap_asid_pool_cap_get_capASIDPool.isra.95.part.96
	.section	.boot.text
	.align	2
	.global	write_it_asid_pool
	.type	write_it_asid_pool, %function
write_it_asid_pool:
.LFB325:
	.loc 14 317 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	.loc 14 317 0
	add	ip, sp, #16
	stmia	sp, {r2, r3}
	stmdb	ip, {r0, r1}
	ldr	r1, [sp, #8]
.LVL580:
	ldr	ip, [sp, #12]
.LVL581:
.LBB4564:
.LBB4565:
.LBB4566:
.LBB4567:
	.loc 28 1035 0
	and	r3, r1, #14
	cmp	r3, #14
	beq	.L613
	.loc 28 1036 0
	and	r3, r1, #15
.LVL582:
.LBE4567:
.LBE4566:
	.file 39 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/object/structures.h"
	.loc 39 317 0
	sub	r2, r3, #2
	cmp	r2, #12
	ldrls	pc, [pc, r2, asl #2]
	b	.L614
.L616:
	.word	.L615
	.word	.L614
	.word	.L617
	.word	.L614
	.word	.L618
	.word	.L614
	.word	.L701
	.word	.L614
	.word	.L620
	.word	.L614
	.word	.L621
	.word	.L614
	.word	.L701
.LVL583:
.L613:
.LBB4569:
.LBB4568:
	.loc 28 1037 0
	uxtb	r3, r1
.LVL584:
.LBE4568:
.LBE4569:
	.loc 39 317 0
	sub	r2, r3, #2
	cmp	r2, #60
	ldrls	pc, [pc, r2, asl #2]
	b	.L622
.L624:
	.word	.L623
	.word	.L622
	.word	.L625
	.word	.L622
	.word	.L626
	.word	.L622
	.word	.L701
	.word	.L622
	.word	.L627
	.word	.L622
	.word	.L628
	.word	.L622
	.word	.L701
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L701
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L629
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L622
	.word	.L701
.L701:
.LBB4570:
.LBB4571:
	.loc 38 318 0
	mov	r1, #0
.LVL585:
.L619:
	ldmia	sp, {r3, ip}
.LVL586:
.LBE4571:
.LBE4570:
.LBE4565:
.LBE4564:
.LBB4635:
.LBB4636:
.LBB4637:
.LBB4638:
	.loc 28 1035 0
	and	r2, r3, #14
	cmp	r2, #14
	beq	.L655
.L714:
	.loc 28 1036 0
	and	r2, r3, #15
.LVL587:
.LBE4638:
.LBE4637:
	.loc 39 317 0
	sub	r0, r2, #2
	cmp	r0, #12
	ldrls	pc, [pc, r0, asl #2]
	b	.L656
.L658:
	.word	.L657
	.word	.L656
	.word	.L659
	.word	.L656
	.word	.L660
	.word	.L656
	.word	.L707
	.word	.L656
	.word	.L662
	.word	.L656
	.word	.L663
	.word	.L656
	.word	.L707
.L707:
.LBB4640:
.LBB4641:
	.loc 38 318 0
	mov	r3, #0
.LVL588:
.L661:
.LBE4641:
.LBE4640:
.LBE4636:
.LBE4635:
	.loc 14 320 0
	movw	r2, #:lower16:armKSASIDTable
	.loc 14 319 0
	str	r3, [r1, #4]
	.loc 14 320 0
	movt	r2, #:upper16:armKSASIDTable
	str	r1, [r2]
	.loc 14 321 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 4
.LVL589:
	@ sp needed
	ldr	pc, [sp], #4
.LVL590:
.L668:
	.cfi_restore_state
	and	r2, r3, #15
.LVL591:
.L660:
.LBB4692:
.LBB4685:
.LBB4663:
.LBB4664:
	.loc 28 1407 0
	cmp	r2, #6
	bne	.L674
.LVL592:
.L713:
.LBE4664:
.LBE4663:
.LBB4665:
.LBB4658:
.LBB4642:
.LBB4643:
	.loc 28 1970 0
	bic	r3, r3, #15
.LVL593:
	b	.L661
.LVL594:
.L667:
	and	r2, r3, #15
.LVL595:
.L659:
.LBE4643:
.LBE4642:
.LBE4658:
.LBE4665:
.LBB4666:
.LBB4667:
	.loc 28 1185 0
	cmp	r2, #4
	bne	.L673
.LVL596:
	.loc 28 1188 0
	bic	r3, ip, #15
.LVL597:
	b	.L661
.LVL598:
.L665:
	and	r2, r3, #15
.LVL599:
.L657:
.LBE4667:
.LBE4666:
.LBB4668:
.LBB4669:
	.loc 28 1142 0
	cmp	r2, #2
	beq	.L713
.LVL600:
.L672:
.LBE4669:
.LBE4668:
.LBE4685:
.LBE4692:
.LBB4693:
.LBB4628:
.LBB4597:
.LBB4598:
	bl	cap_untyped_cap_get_capPtr.isra.75.part.76
.LVL601:
.L670:
	and	r2, r3, #15
.LVL602:
.L663:
.LBE4598:
.LBE4597:
.LBE4628:
.LBE4693:
.LBB4694:
.LBB4686:
.LBB4670:
.LBB4671:
	.loc 28 1608 0
	cmp	r2, #12
	bne	.L676
.LVL603:
.LBE4671:
.LBE4670:
	.loc 39 331 0
	bic	r3, r3, #508
.LVL604:
	bic	r3, r3, #3
	b	.L661
.LVL605:
.L669:
	and	r2, r3, #15
.LVL606:
.L662:
.LBB4672:
.LBB4673:
	.loc 28 1577 0
	cmp	r2, #10
	bne	.L675
.LVL607:
	.loc 28 1580 0
	bic	r3, r3, #31
.LVL608:
	b	.L661
.LVL609:
.L627:
	and	r3, r1, #15
.LVL610:
.L620:
.LBE4673:
.LBE4672:
.LBE4686:
.LBE4694:
.LBB4695:
.LBB4629:
.LBB4600:
.LBB4601:
	.loc 28 1577 0
	cmp	r3, #10
	.loc 28 1580 0
	biceq	r1, r1, #31
	.loc 28 1577 0
	beq	.L619
.LVL611:
.L675:
	bl	cap_cnode_cap_get_capCNodePtr.isra.78.part.79
.LVL612:
.L628:
	and	r3, r1, #15
.LVL613:
.L621:
.LBE4601:
.LBE4600:
.LBB4602:
.LBB4603:
	.loc 28 1608 0
	cmp	r3, #12
.LBE4603:
.LBE4602:
	.loc 39 331 0
	biceq	r1, r1, #508
	biceq	r1, r1, #3
.LBB4605:
.LBB4604:
	.loc 28 1608 0
	beq	.L619
.LVL614:
.L676:
	bl	cap_thread_cap_get_capTCBPtr.isra.59.part.60
.LVL615:
.L623:
	and	r3, r1, #15
.LVL616:
.L615:
.LBE4604:
.LBE4605:
.LBB4606:
.LBB4599:
	.loc 28 1142 0
	cmp	r3, #2
	bne	.L672
.L654:
.LVL617:
	ldmia	sp, {r3, ip}
.LVL618:
.LBE4599:
.LBE4606:
.LBB4607:
.LBB4592:
.LBB4572:
.LBB4573:
	.loc 28 1970 0
	bic	r1, r1, #15
.LVL619:
.LBE4573:
.LBE4572:
.LBE4592:
.LBE4607:
.LBE4629:
.LBE4695:
.LBB4696:
.LBB4687:
.LBB4674:
.LBB4639:
	.loc 28 1035 0
	and	r2, r3, #14
	cmp	r2, #14
	bne	.L714
.L655:
	.loc 28 1037 0
	uxtb	r2, r3
.LVL620:
.LBE4639:
.LBE4674:
	.loc 39 317 0
	sub	r0, r2, #2
	cmp	r0, #60
	ldrls	pc, [pc, r0, asl #2]
	b	.L664
.L666:
	.word	.L665
	.word	.L664
	.word	.L667
	.word	.L664
	.word	.L668
	.word	.L664
	.word	.L707
	.word	.L664
	.word	.L669
	.word	.L664
	.word	.L670
	.word	.L664
	.word	.L707
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L707
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L671
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L664
	.word	.L707
.LVL621:
.L625:
	and	r3, r1, #15
.LVL622:
.L617:
.LBE4687:
.LBE4696:
.LBB4697:
.LBB4630:
.LBB4608:
.LBB4609:
	.loc 28 1185 0
	cmp	r3, #4
	.loc 28 1188 0
	biceq	r1, ip, #15
	.loc 28 1185 0
	beq	.L619
.LVL623:
.L673:
	bl	cap_endpoint_cap_get_capEPPtr.part.77
.LVL624:
.L626:
	and	r3, r1, #15
.LVL625:
.L618:
.LBE4609:
.LBE4608:
.LBB4610:
.LBB4611:
	.loc 28 1407 0
	cmp	r3, #6
	beq	.L654
.LVL626:
.L674:
	bl	cap_notification_cap_get_capNtfnPtr.isra.68.part.69
.LVL627:
.L614:
.LBE4611:
.LBE4610:
.LBB4612:
.LBB4593:
	.loc 38 302 0
	sub	r2, r3, #1
	cmp	r2, #8
	ldrls	pc, [pc, r2, asl #2]
	b	.L701
.L638:
	.word	.L637
	.word	.L701
	.word	.L637
	.word	.L701
	.word	.L639
	.word	.L701
	.word	.L640
	.word	.L701
	.word	.L641
.LVL628:
.L656:
.LBE4593:
.LBE4612:
.LBE4630:
.LBE4697:
.LBB4698:
.LBB4688:
.LBB4675:
.LBB4659:
	sub	r0, r2, #1
	cmp	r0, #8
	ldrls	pc, [pc, r0, asl #2]
	b	.L707
.L680:
	.word	.L679
	.word	.L707
	.word	.L679
	.word	.L707
	.word	.L681
	.word	.L707
	.word	.L682
	.word	.L707
	.word	.L683
.LVL629:
.L629:
.LBE4659:
.LBE4675:
.LBE4688:
.LBE4698:
.LBB4699:
.LBB4631:
.LBB4613:
.LBB4614:
.LBB4615:
.LBB4616:
.LBB4617:
.LBB4618:
	.loc 28 2318 0
	cmp	r3, #46
	bne	.L677
	.loc 28 2321 0
	ubfx	r3, r1, #8, #6
.LVL630:
.LBE4618:
.LBE4617:
	.loc 39 97 0
	cmp	r3, #32
	.loc 39 100 0
	andne	r3, r3, #31
.LVL631:
	mvnne	r1, #0
.LVL632:
	addne	r3, r3, #1
	.loc 39 97 0
	mvneq	r1, #31
.LVL633:
	movne	r1, r1, asl r3
.LBE4616:
.LBE4615:
	.loc 39 114 0
	and	r1, r1, ip
	b	.L619
.LVL634:
.L671:
.LBE4614:
.LBE4613:
.LBE4631:
.LBE4699:
.LBB4700:
.LBB4689:
.LBB4676:
.LBB4677:
.LBB4678:
.LBB4679:
.LBB4680:
.LBB4681:
	.loc 28 2318 0
	cmp	r2, #46
	bne	.L677
	.loc 28 2321 0
	ubfx	r2, r3, #8, #6
.LVL635:
.LBE4681:
.LBE4680:
	.loc 39 97 0
	cmp	r2, #32
	.loc 39 100 0
	andne	r2, r2, #31
.LVL636:
	mvnne	r3, #0
.LVL637:
	addne	r2, r2, #1
	.loc 39 97 0
	mvneq	r2, #31
.LVL638:
	movne	r2, r3, asl r2
.LBE4679:
.LBE4678:
	.loc 39 114 0
	and	r3, r2, ip
	b	.L661
.LVL639:
.L687:
	and	r2, r3, #15
.LVL640:
.L683:
.LBE4677:
.LBE4676:
.LBB4682:
.LBB4660:
.LBB4645:
.LBB4646:
	.loc 28 2162 0
	cmp	r2, #9
	bne	.L695
.LVL641:
	.loc 28 2165 0
	bic	r3, r3, #16320
.LVL642:
	bic	r3, r3, #63
	b	.L661
.LVL643:
.L686:
	and	r2, r3, #15
.LVL644:
.L682:
.LBE4646:
.LBE4645:
.LBB4647:
.LBB4648:
	.loc 28 2098 0
	cmp	r2, #7
	bne	.L694
.LVL645:
	.loc 28 2101 0
	bic	r3, r3, #1020
.LVL646:
	bic	r3, r3, #3
	b	.L661
.LVL647:
.L679:
.LBE4648:
.LBE4647:
.LBB4649:
.LBB4650:
	.loc 38 207 0
	and	r0, r2, #253
	cmp	r0, #1
	bne	.L688
	.loc 38 210 0
	cmp	r2, #1
	beq	.L690
	cmp	r2, #3
	bne	.L707
.LVL648:
.LBB4651:
.LBB4652:
	.loc 28 1919 0
	and	r2, r3, #15
.LVL649:
	cmp	r2, #3
	bne	.L693
.LVL650:
	.loc 28 1922 0
	bic	r3, r3, #-268435441
.LVL651:
	bic	r3, r3, #264241152
	mov	r3, r3, asl #10
	b	.L661
.LVL652:
.L685:
	and	r2, r3, #15
.LVL653:
.L681:
.LBE4652:
.LBE4651:
.LBE4650:
.LBE4649:
.LBB4656:
.LBB4644:
	.loc 28 1967 0
	cmp	r2, #5
	beq	.L713
.LVL654:
.L696:
.LBE4644:
.LBE4656:
.LBE4660:
.LBE4682:
.LBE4689:
.LBE4700:
.LBB4701:
.LBB4632:
.LBB4624:
.LBB4594:
.LBB4576:
.LBB4574:
	bl	cap_asid_pool_cap_get_capASIDPool.isra.95.part.96
.LVL655:
.L645:
	and	r3, r1, #15
.LVL656:
.L641:
.LBE4574:
.LBE4576:
.LBB4577:
.LBB4578:
	.loc 28 2162 0
	cmp	r3, #9
	.loc 28 2165 0
	biceq	r1, r1, #16320
	biceq	r1, r1, #63
	.loc 28 2162 0
	beq	.L619
.LVL657:
.L695:
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.93.part.94
.LVL658:
.L644:
	and	r3, r1, #15
.LVL659:
.L640:
.LBE4578:
.LBE4577:
.LBB4579:
.LBB4580:
	.loc 28 2098 0
	cmp	r3, #7
	.loc 28 2101 0
	biceq	r1, r1, #1020
	biceq	r1, r1, #3
	.loc 28 2098 0
	beq	.L619
.LVL660:
.L694:
	bl	cap_page_table_cap_get_capPTBasePtr.isra.91.part.92
.LVL661:
.L643:
	and	r3, r1, #15
.LVL662:
.L639:
.LBE4580:
.LBE4579:
.LBB4581:
.LBB4575:
	.loc 28 1967 0
	cmp	r3, #5
	beq	.L654
	b	.L696
.LVL663:
.L637:
.LBE4575:
.LBE4581:
.LBB4582:
.LBB4583:
	.loc 38 207 0
	and	r2, r3, #253
	cmp	r2, #1
	bne	.L688
	.loc 38 210 0
	cmp	r3, #1
	beq	.L648
	cmp	r3, #3
	bne	.L701
.LVL664:
.LBB4584:
.LBB4585:
	.loc 28 1919 0
	and	r3, r1, #15
.LVL665:
	cmp	r3, #3
	.loc 28 1922 0
	biceq	r1, r1, #-268435441
	biceq	r1, r1, #264241152
	moveq	r1, r1, asl #10
	.loc 28 1919 0
	beq	.L619
.LVL666:
.L693:
	bl	cap_frame_cap_get_capFBasePtr.isra.87.part.88
.LVL667:
.L664:
.LBE4585:
.LBE4584:
.LBE4583:
.LBE4582:
.LBE4594:
.LBE4624:
.LBE4632:
.LBE4701:
.LBB4702:
.LBB4690:
.LBB4683:
.LBB4661:
	.loc 38 302 0
	sub	r0, r2, #1
	cmp	r0, #8
	ldrls	pc, [pc, r0, asl #2]
	b	.L707
.L684:
	.word	.L679
	.word	.L707
	.word	.L679
	.word	.L707
	.word	.L685
	.word	.L707
	.word	.L686
	.word	.L707
	.word	.L687
.LVL668:
.L622:
.LBE4661:
.LBE4683:
.LBE4690:
.LBE4702:
.LBB4703:
.LBB4633:
.LBB4625:
.LBB4595:
	sub	r2, r3, #1
	cmp	r2, #8
	ldrls	pc, [pc, r2, asl #2]
	b	.L701
.L642:
	.word	.L637
	.word	.L701
	.word	.L637
	.word	.L701
	.word	.L643
	.word	.L701
	.word	.L644
	.word	.L701
	.word	.L645
.LVL669:
.L648:
.LBB4590:
.LBB4588:
.LBB4586:
.LBB4587:
	.loc 28 1755 0
	and	r3, r1, #15
.LVL670:
	cmp	r3, #1
	.loc 28 1758 0
	biceq	r1, r1, #-16777216
	biceq	r1, r1, #15
	moveq	r1, r1, asl #8
	.loc 28 1755 0
	beq	.L619
.LVL671:
.L692:
	bl	cap_small_frame_cap_get_capFBasePtr.isra.85.part.86
.LVL672:
.L690:
.LBE4587:
.LBE4586:
.LBE4588:
.LBE4590:
.LBE4595:
.LBE4625:
.LBE4633:
.LBE4703:
.LBB4704:
.LBB4691:
.LBB4684:
.LBB4662:
.LBB4657:
.LBB4655:
.LBB4653:
.LBB4654:
	and	r2, r3, #15
.LVL673:
	cmp	r2, #1
	bne	.L692
.LVL674:
	.loc 28 1758 0
	bic	r3, r3, #-16777216
.LVL675:
	bic	r3, r3, #15
	mov	r3, r3, asl #8
	b	.L661
.LVL676:
.L677:
.LBE4654:
.LBE4653:
.LBE4655:
.LBE4657:
.LBE4662:
.LBE4684:
.LBE4691:
.LBE4704:
.LBB4705:
.LBB4634:
.LBB4626:
.LBB4623:
.LBB4622:
.LBB4621:
.LBB4620:
.LBB4619:
	bl	cap_zombie_cap_get_capZombieType.isra.80.part.81
.LVL677:
.L688:
.LBE4619:
.LBE4620:
.LBE4621:
.LBE4622:
.LBE4623:
.LBE4626:
.LBB4627:
.LBB4596:
.LBB4591:
.LBB4589:
	bl	generic_frame_cap_get_capFBasePtr.isra.89.part.90
.LVL678:
.LBE4589:
.LBE4591:
.LBE4596:
.LBE4627:
.LBE4634:
.LBE4705:
	.cfi_endproc
.LFE325:
	.size	write_it_asid_pool, .-write_it_asid_pool
	.section	.text.unlikely
	.align	2
	.type	cap_page_directory_cap_new.part.98, %function
cap_page_directory_cap_new.part.98:
.LFB789:
	.loc 28 2110 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL679:
	.loc 28 2117 0
	movw	r0, #:lower16:.LC47
	movw	r1, #:lower16:.LC30
	.loc 28 2110 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 2117 0
	movt	r0, #:upper16:.LC47
	movt	r1, #:upper16:.LC30
	movw	r2, #2117
	ldr	r3, .L717
	bl	_assert_fail
.LVL680:
.L718:
	.align	2
.L717:
	.word	.LANCHOR4+756
	.cfi_endproc
.LFE789:
	.size	cap_page_directory_cap_new.part.98, .-cap_page_directory_cap_new.part.98
	.align	2
	.type	cap_page_table_cap_new.part.99, %function
cap_page_table_cap_new.part.99:
.LFB790:
	.loc 28 1979 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL681:
	.loc 28 1986 0
	movw	r0, #:lower16:.LC48
	movw	r1, #:lower16:.LC30
	.loc 28 1979 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1986 0
	movt	r0, #:upper16:.LC48
	movt	r1, #:upper16:.LC30
	movw	r2, #1986
	ldr	r3, .L721
	bl	_assert_fail
.LVL682:
.L722:
	.align	2
.L721:
	.word	.LANCHOR4+784
	.cfi_endproc
.LFE790:
	.size	cap_page_table_cap_new.part.99, .-cap_page_table_cap_new.part.99
	.align	2
	.type	cap_page_table_cap_get_capPTMappedAddress.part.100, %function
cap_page_table_cap_get_capPTMappedAddress.part.100:
.LFB791:
	.loc 28 2070 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 2072 0
	movw	r0, #:lower16:.LC44
	movw	r1, #:lower16:.LC30
	.loc 28 2070 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 2072 0
	movt	r0, #:upper16:.LC44
	movt	r1, #:upper16:.LC30
	movw	r2, #2073
	ldr	r3, .L725
	bl	_assert_fail
.LVL683:
.L726:
	.align	2
.L725:
	.word	.LANCHOR4+808
	.cfi_endproc
.LFE791:
	.size	cap_page_table_cap_get_capPTMappedAddress.part.100, .-cap_page_table_cap_get_capPTMappedAddress.part.100
	.align	2
	.type	cap_page_table_cap_get_capPTIsMapped.part.101, %function
cap_page_table_cap_get_capPTIsMapped.part.101:
.LFB792:
	.loc 28 2005 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 2007 0
	movw	r0, #:lower16:.LC44
	movw	r1, #:lower16:.LC30
	.loc 28 2005 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 2007 0
	movt	r0, #:upper16:.LC44
	movt	r1, #:upper16:.LC30
	movw	r2, #2008
	ldr	r3, .L729
	bl	_assert_fail
.LVL684:
.L730:
	.align	2
.L729:
	.word	.LANCHOR4+852
	.cfi_endproc
.LFE792:
	.size	cap_page_table_cap_get_capPTIsMapped.part.101, .-cap_page_table_cap_get_capPTIsMapped.part.101
	.align	2
	.type	pde_pde_coarse_new.part.102, %function
pde_pde_coarse_new.part.102:
.LFB793:
	.loc 28 839 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL685:
	.loc 28 845 0
	movw	r0, #:lower16:.LC49
	movw	r1, #:lower16:.LC30
	.loc 28 839 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 845 0
	movt	r0, #:upper16:.LC49
	movt	r1, #:upper16:.LC30
	movw	r2, #845
	ldr	r3, .L733
	bl	_assert_fail
.LVL686:
.L734:
	.align	2
.L733:
	.word	.LANCHOR4+892
	.cfi_endproc
.LFE793:
	.size	pde_pde_coarse_new.part.102, .-pde_pde_coarse_new.part.102
	.align	2
	.type	cap_small_frame_cap_get_capFMappedAddress.part.104, %function
cap_small_frame_cap_get_capFMappedAddress.part.104:
.LFB795:
	.loc 28 1701 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 1703 0
	movw	r0, #:lower16:.LC40
	movw	r1, #:lower16:.LC30
	.loc 28 1701 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1703 0
	movt	r0, #:upper16:.LC40
	movt	r1, #:upper16:.LC30
	movw	r2, #1704
	ldr	r3, .L737
	bl	_assert_fail
.LVL687:
.L738:
	.align	2
.L737:
	.word	.LANCHOR4+912
	.cfi_endproc
.LFE795:
	.size	cap_small_frame_cap_get_capFMappedAddress.part.104, .-cap_small_frame_cap_get_capFMappedAddress.part.104
	.align	2
	.type	cap_frame_cap_get_capFMappedAddress.part.105, %function
cap_frame_cap_get_capFMappedAddress.part.105:
.LFB796:
	.loc 28 1865 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 1867 0
	movw	r0, #:lower16:.LC41
	movw	r1, #:lower16:.LC30
	.loc 28 1865 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1867 0
	movt	r0, #:upper16:.LC41
	movt	r1, #:upper16:.LC30
	movw	r2, #1868
	ldr	r3, .L741
	bl	_assert_fail
.LVL688:
.L742:
	.align	2
.L741:
	.word	.LANCHOR4+956
	.cfi_endproc
.LFE796:
	.size	cap_frame_cap_get_capFMappedAddress.part.105, .-cap_frame_cap_get_capFMappedAddress.part.105
	.align	2
	.type	generic_frame_cap_get_capFMappedAddress.part.106, %function
generic_frame_cap_get_capFMappedAddress.part.106:
.LFB797:
	.loc 38 250 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 38 255 0
	movw	r0, #:lower16:.LC42
	movw	r1, #:lower16:.LC43
	.loc 38 250 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 38 255 0
	movt	r0, #:upper16:.LC42
	movt	r1, #:upper16:.LC43
	mov	r2, #256
	ldr	r3, .L745
	bl	_assert_fail
.LVL689:
.L746:
	.align	2
.L745:
	.word	.LANCHOR4+992
	.cfi_endproc
.LFE797:
	.size	generic_frame_cap_get_capFMappedAddress.part.106, .-generic_frame_cap_get_capFMappedAddress.part.106
	.align	2
	.type	cap_small_frame_cap_get_capFMappedASID.part.108, %function
cap_small_frame_cap_get_capFMappedASID.part.108:
.LFB799:
	.loc 38 114 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LBB4706:
.LBB4707:
	.loc 28 1651 0
	movw	r0, #:lower16:.LC40
	movw	r1, #:lower16:.LC30
.LBE4707:
.LBE4706:
	.loc 38 114 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
.LBB4709:
.LBB4708:
	.loc 28 1651 0
	movt	r0, #:upper16:.LC40
	movt	r1, #:upper16:.LC30
	movw	r2, #1652
	ldr	r3, .L749
	bl	_assert_fail
.LVL690:
.L750:
	.align	2
.L749:
	.word	.LANCHOR4+1032
.LBE4708:
.LBE4709:
	.cfi_endproc
.LFE799:
	.size	cap_small_frame_cap_get_capFMappedASID.part.108, .-cap_small_frame_cap_get_capFMappedASID.part.108
	.align	2
	.type	generic_frame_cap_get_capFMappedASID.part.110, %function
generic_frame_cap_get_capFMappedASID.part.110:
.LFB801:
	.loc 38 137 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 38 143 0
	movw	r0, #:lower16:.LC42
	movw	r1, #:lower16:.LC43
	.loc 38 137 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 38 143 0
	movt	r0, #:upper16:.LC42
	movt	r1, #:upper16:.LC43
	mov	r2, #144
	ldr	r3, .L753
	bl	_assert_fail
.LVL691:
.L754:
	.align	2
.L753:
	.word	.LANCHOR4+1076
	.cfi_endproc
.LFE801:
	.size	generic_frame_cap_get_capFMappedASID.part.110, .-generic_frame_cap_get_capFMappedASID.part.110
	.align	2
	.type	pde_pde_coarse_ptr_get_address.part.111, %function
pde_pde_coarse_ptr_get_address.part.111:
.LFB802:
	.loc 28 875 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL692:
	.loc 28 877 0
	movw	r0, #:lower16:.LC50
	movw	r1, #:lower16:.LC30
	.loc 28 875 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 877 0
	movt	r0, #:upper16:.LC50
	movt	r1, #:upper16:.LC30
	movw	r2, #878
	ldr	r3, .L757
	bl	_assert_fail
.LVL693:
.L758:
	.align	2
.L757:
	.word	.LANCHOR4+1116
	.cfi_endproc
.LFE802:
	.size	pde_pde_coarse_ptr_get_address.part.111, .-pde_pde_coarse_ptr_get_address.part.111
	.text
	.align	2
	.global	lookupPTSlot
	.type	lookupPTSlot, %function
lookupPTSlot:
.LFB329:
	.loc 14 399 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL694:
.LBB4732:
.LBB4733:
	.loc 14 439 0
	mov	r3, r2, lsr #20
.LBE4733:
.LBE4732:
.LBB4734:
.LBB4735:
	.loc 28 788 0
	ldr	r3, [r1, r3, asl #2]
	and	r1, r3, #3
.LVL695:
.LBE4735:
.LBE4734:
	.loc 14 405 0
	cmp	r1, #1
	bne	.L762
.LVL696:
.LBB4736:
.LBB4737:
.LBB4738:
	.loc 28 880 0
	bic	r3, r3, #1020
.LVL697:
.LBE4738:
.LBE4737:
	.loc 14 416 0
	ubfx	r2, r2, #12, #8
.LVL698:
.LBB4740:
.LBB4739:
	.loc 28 880 0
	bic	r3, r3, #3
.LBE4739:
.LBE4740:
	.loc 14 421 0
	mov	r1, #0
.LBB4741:
.LBB4742:
	.loc 3 45 0
	add	r3, r3, #-536870912
.LBE4742:
.LBE4741:
	.loc 14 421 0
	str	r1, [r0]
	.loc 14 417 0
	add	r3, r3, r2, asl #2
	.loc 14 421 0
	str	r3, [r0, #4]
.LBE4736:
	.loc 14 423 0
	bx	lr
.LVL699:
.L762:
.LBB4743:
.LBB4744:
	.loc 14 406 0
	movw	r3, #:lower16:current_lookup_fault
	mov	r2, #0
.LVL700:
	movt	r3, #:upper16:current_lookup_fault
	mov	ip, #81
	.loc 14 410 0
	mov	r1, #2
	.loc 14 406 0
	str	ip, [r3]
	str	r2, [r3, #4]
.LVL701:
	.loc 14 410 0
	stmia	r0, {r1, r2}
	bx	lr
.LBE4744:
.LBE4743:
	.cfi_endproc
.LFE329:
	.size	lookupPTSlot, .-lookupPTSlot
	.section	.text.unlikely
	.align	2
	.type	pte_pte_small_new.part.113, %function
pte_pte_small_new.part.113:
.LFB804:
	.loc 28 2478 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL702:
	.loc 28 2484 0
	movw	r0, #:lower16:.LC51
	movw	r1, #:lower16:.LC30
	.loc 28 2478 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 2484 0
	movt	r0, #:upper16:.LC51
	movt	r1, #:upper16:.LC30
	movw	r2, #2484
	ldr	r3, .L765
	bl	_assert_fail
.LVL703:
.L766:
	.align	2
.L765:
	.word	.LANCHOR4+1148
	.cfi_endproc
.LFE804:
	.size	pte_pte_small_new.part.113, .-pte_pte_small_new.part.113
	.align	2
	.type	pde_pde_section_new.part.115, %function
pde_pde_section_new.part.115:
.LFB806:
	.loc 28 889 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL704:
	.loc 28 895 0
	movw	r0, #:lower16:.LC52
	movw	r1, #:lower16:.LC30
	.loc 28 889 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 895 0
	movt	r0, #:upper16:.LC52
	movt	r1, #:upper16:.LC30
	movw	r2, #895
	ldr	r3, .L769
	bl	_assert_fail
.LVL705:
.L770:
	.align	2
.L769:
	.word	.LANCHOR4+1168
	.cfi_endproc
.LFE806:
	.size	pde_pde_section_new.part.115, .-pde_pde_section_new.part.115
	.align	2
	.type	vm_attributes_new.part.116, %function
vm_attributes_new.part.116:
.LFB807:
	.loc 28 306 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL706:
	.loc 28 312 0
	movw	r0, #:lower16:.LC53
	movw	r1, #:lower16:.LC30
	.loc 28 306 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 312 0
	movt	r0, #:upper16:.LC53
	movt	r1, #:upper16:.LC30
	mov	r2, #312
	ldr	r3, .L773
	bl	_assert_fail
.LVL707:
.L774:
	.align	2
.L773:
	.word	.LANCHOR4+1188
	.cfi_endproc
.LFE807:
	.size	vm_attributes_new.part.116, .-vm_attributes_new.part.116
	.align	2
	.type	cap_small_frame_cap_get_capFVMRights.part.117, %function
cap_small_frame_cap_get_capFVMRights.part.117:
.LFB808:
	.loc 28 1675 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 1677 0
	movw	r0, #:lower16:.LC40
	movw	r1, #:lower16:.LC30
	.loc 28 1675 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1677 0
	movt	r0, #:upper16:.LC40
	movt	r1, #:upper16:.LC30
	movw	r2, #1678
	ldr	r3, .L777
	bl	_assert_fail
.LVL708:
.L778:
	.align	2
.L777:
	.word	.LANCHOR4+1208
	.cfi_endproc
.LFE808:
	.size	cap_small_frame_cap_get_capFVMRights.part.117, .-cap_small_frame_cap_get_capFVMRights.part.117
	.align	2
	.type	cap_frame_cap_get_capFVMRights.part.118, %function
cap_frame_cap_get_capFVMRights.part.118:
.LFB809:
	.loc 28 1839 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 1841 0
	movw	r0, #:lower16:.LC41
	movw	r1, #:lower16:.LC30
	.loc 28 1839 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1841 0
	movt	r0, #:upper16:.LC41
	movt	r1, #:upper16:.LC30
	movw	r2, #1842
	ldr	r3, .L781
	bl	_assert_fail
.LVL709:
.L782:
	.align	2
.L781:
	.word	.LANCHOR4+1248
	.cfi_endproc
.LFE809:
	.size	cap_frame_cap_get_capFVMRights.part.118, .-cap_frame_cap_get_capFVMRights.part.118
	.align	2
	.type	generic_frame_cap_get_capFVMRights.part.119, %function
generic_frame_cap_get_capFVMRights.part.119:
.LFB810:
	.loc 38 181 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 38 186 0
	movw	r0, #:lower16:.LC42
	movw	r1, #:lower16:.LC43
	.loc 38 181 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 38 186 0
	movt	r0, #:upper16:.LC42
	movt	r1, #:upper16:.LC43
	mov	r2, #187
	ldr	r3, .L785
	bl	_assert_fail
.LVL710:
.L786:
	.align	2
.L785:
	.word	.LANCHOR4+1280
	.cfi_endproc
.LFE810:
	.size	generic_frame_cap_get_capFVMRights.part.119, .-generic_frame_cap_get_capFVMRights.part.119
	.text
	.align	2
	.global	Arch_hasRecycleRights
	.type	Arch_hasRecycleRights, %function
Arch_hasRecycleRights:
.LFB458:
	.loc 23 256 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 23 256 0
	add	r3, sp, #8
	stmdb	r3, {r0, r1}
	ldr	r2, [sp]
.LVL711:
.LBB4755:
.LBB4756:
	.loc 28 1035 0
	and	r3, r2, #14
	cmp	r3, #14
	beq	.L788
	.loc 28 1036 0
	and	r3, r2, #15
.LBE4756:
.LBE4755:
	.loc 23 257 0
	cmp	r3, #1
	beq	.L791
.L820:
	cmp	r3, #3
	.loc 23 263 0
	movne	r0, #1
	.loc 23 257 0
	beq	.L791
	.loc 23 265 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L788:
	.cfi_restore_state
.LBB4758:
.LBB4757:
	.loc 28 1037 0
	uxtb	r3, r2
.LBE4757:
.LBE4758:
	.loc 23 257 0
	cmp	r3, #1
	bne	.L820
.L791:
.LBB4759:
.LBB4760:
	.loc 38 186 0
	and	r1, r3, #253
	ldr	r0, [sp, #4]
.LVL712:
	cmp	r1, #1
	bne	.L823
	.loc 38 189 0
	cmp	r3, #1
	beq	.L794
	cmp	r3, #3
	bne	.L824
.LVL713:
.LBB4761:
.LBB4762:
	.loc 28 1841 0
	and	r2, r2, #15
.LVL714:
	cmp	r2, #3
	bne	.L825
.LVL715:
	.loc 28 1844 0
	ubfx	r0, r0, #18, #2
.LVL716:
	sub	r0, r0, #3
	clz	r0, r0
	mov	r0, r0, lsr #5
.LBE4762:
.LBE4761:
.LBE4760:
.LBE4759:
	.loc 23 265 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
.LVL717:
	@ sp needed
	ldr	pc, [sp], #4
.LVL718:
.L794:
	.cfi_restore_state
.LBB4772:
.LBB4769:
.LBB4764:
.LBB4765:
	.loc 28 1677 0
	and	r2, r2, #15
.LVL719:
	cmp	r2, #1
	bne	.L826
.LVL720:
	.loc 28 1680 0
	ubfx	r0, r0, #20, #2
.LVL721:
	sub	r0, r0, #3
	clz	r0, r0
	mov	r0, r0, lsr #5
.LBE4765:
.LBE4764:
.LBE4769:
.LBE4772:
	.loc 23 265 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
.LVL722:
	@ sp needed
	ldr	pc, [sp], #4
.LVL723:
.L824:
	.cfi_restore_state
.LBB4773:
.LBB4770:
	.loc 38 189 0
	mov	r0, #0
.LVL724:
.LBE4770:
.LBE4773:
	.loc 23 265 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.LVL725:
.L823:
	.cfi_restore_state
.LBB4774:
.LBB4771:
	bl	generic_frame_cap_get_capFVMRights.part.119
.LVL726:
.L825:
.LBB4767:
.LBB4763:
	bl	cap_frame_cap_get_capFVMRights.part.118
.LVL727:
.L826:
.LBE4763:
.LBE4767:
.LBB4768:
.LBB4766:
	bl	cap_small_frame_cap_get_capFVMRights.part.117
.LVL728:
.LBE4766:
.LBE4768:
.LBE4771:
.LBE4774:
	.cfi_endproc
.LFE458:
	.size	Arch_hasRecycleRights, .-Arch_hasRecycleRights
	.section	.text.unlikely
	.align	2
	.type	cap_frame_cap_get_capFSize.part.120, %function
cap_frame_cap_get_capFSize.part.120:
.LFB811:
	.loc 28 1799 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 1801 0
	movw	r0, #:lower16:.LC41
	movw	r1, #:lower16:.LC30
	.loc 28 1799 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1801 0
	movt	r0, #:upper16:.LC41
	movt	r1, #:upper16:.LC30
	movw	r2, #1802
	ldr	r3, .L829
	bl	_assert_fail
.LVL729:
.L830:
	.align	2
.L829:
	.word	.LANCHOR4+1316
	.cfi_endproc
.LFE811:
	.size	cap_frame_cap_get_capFSize.part.120, .-cap_frame_cap_get_capFSize.part.120
	.align	2
	.type	generic_frame_cap_get_capFSize.part.121, %function
generic_frame_cap_get_capFSize.part.121:
.LFB812:
	.loc 38 223 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 38 228 0
	movw	r0, #:lower16:.LC42
	movw	r1, #:lower16:.LC43
	.loc 38 223 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 38 228 0
	movt	r0, #:upper16:.LC42
	movt	r1, #:upper16:.LC43
	mov	r2, #229
	ldr	r3, .L833
	bl	_assert_fail
.LVL730:
.L834:
	.align	2
.L833:
	.word	.LANCHOR4+1344
	.cfi_endproc
.LFE812:
	.size	generic_frame_cap_get_capFSize.part.121, .-generic_frame_cap_get_capFSize.part.121
	.text
	.align	2
	.global	lookupIPCBuffer
	.type	lookupIPCBuffer, %function
lookupIPCBuffer:
.LFB327:
	.loc 14 340 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL731:
	.loc 14 346 0
	bic	r3, r1, #508
	.loc 14 340 0
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 14 346 0
	bic	r3, r3, #3
	.loc 14 340 0
	mov	r5, r0
	.loc 14 346 0
	add	r3, r3, #64
	.loc 14 340 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 14 345 0
	ldr	lr, [r1, #120]
.LVL732:
	.loc 14 346 0
	add	r2, sp, #8
	ldmia	r3, {r0, r1}
.LVL733:
	stmdb	r2, {r0, r1}
.LVL734:
.LBB4804:
.LBB4805:
	.loc 28 1035 0
	and	r1, r0, #14
	cmp	r1, #14
.LBE4805:
.LBE4804:
	.loc 14 346 0
	mov	r3, r0
.LVL735:
.LBB4807:
.LBB4806:
	.loc 28 1035 0
	beq	.L836
.LBE4806:
.LBE4807:
	.loc 14 348 0
	and	r2, r0, #13
	cmp	r2, #1
	ldreq	r4, [sp, #4]
.LVL736:
.LBB4808:
.LBB4809:
.LBB4810:
.LBB4811:
	.loc 28 1036 0
	andeq	r0, r0, #15
.LBE4811:
.LBE4810:
.LBE4809:
.LBE4808:
	.loc 14 348 0
	bne	.L879
.L866:
.LVL737:
.LBB4825:
.LBB4820:
	.loc 38 186 0
	and	ip, r0, #253
	cmp	ip, #1
	bne	.L885
	.loc 38 189 0
	cmp	r0, #1
	beq	.L841
	cmp	r0, #3
	bne	.L879
.LVL738:
.LBB4813:
.LBB4814:
	.loc 28 1841 0
	and	ip, r3, #15
	cmp	ip, #3
	.loc 28 1844 0
	ubfxeq	r2, r4, #18, #2
	.loc 28 1841 0
	bne	.L886
.LVL739:
.L844:
.LBE4814:
.LBE4813:
.LBE4820:
.LBE4825:
	.loc 14 354 0
	cmp	r2, #3
	bne	.L887
.L846:
.LVL740:
.LBB4826:
.LBB4827:
.LBB4828:
.LBB4829:
.LBB4830:
	.loc 28 1035 0
	cmp	r1, #14
	.loc 28 1037 0
	uxtbeq	r2, r3
	.loc 28 1036 0
	movne	r2, ip
.LVL741:
.LBE4830:
.LBE4829:
	.loc 38 207 0
	and	r0, r2, #253
.LVL742:
	cmp	r0, #1
	bne	.L888
	.loc 38 210 0
	cmp	r2, #1
	beq	.L851
	cmp	r2, #3
	bne	.L889
.LVL743:
.LBB4831:
.LBB4832:
	.loc 28 1919 0
	cmp	ip, #3
	.loc 28 1922 0
	biceq	r0, r3, #-268435441
	biceq	r0, r0, #264241152
	moveq	r0, r0, asl #10
	.loc 28 1919 0
	bne	.L890
.LVL744:
.L850:
.LBE4832:
.LBE4831:
.LBE4828:
.LBE4827:
.LBB4840:
.LBB4841:
.LBB4842:
.LBB4843:
	.loc 28 1035 0
	cmp	r1, #14
	.loc 28 1037 0
	uxtbeq	r3, r3
	.loc 28 1036 0
	movne	r3, ip
.LVL745:
.LBE4843:
.LBE4842:
	.loc 38 228 0
	and	r2, r3, #253
.LVL746:
	cmp	r2, #1
	bne	.L891
	.loc 38 231 0
	cmp	r3, #3
	beq	.L892
.LVL747:
.L873:
.LBE4841:
.LBE4840:
.LBB4850:
.LBB4851:
	.loc 37 113 0
	movw	r3, #4095
.LVL748:
.L858:
.LBE4851:
.LBE4850:
	.loc 14 361 0
	and	r3, r3, lr
	add	r0, r3, r0
.LBE4826:
	.loc 14 365 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.LVL749:
.L836:
	.cfi_restore_state
	.loc 14 348 0
	and	r2, r0, #253
	cmp	r2, #1
	ldreq	r4, [sp, #4]
.LVL750:
.LBB4863:
.LBB4821:
.LBB4816:
.LBB4812:
	.loc 28 1037 0
	uxtbeq	r0, r0
.LBE4812:
.LBE4816:
.LBE4821:
.LBE4863:
	.loc 14 348 0
	beq	.L866
.L879:
	.loc 14 363 0
	mov	r0, #0
.L882:
	.loc 14 365 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.LVL751:
.L892:
	.cfi_restore_state
.LBB4864:
.LBB4856:
.LBB4848:
.LBB4844:
.LBB4845:
	.loc 28 1801 0
	cmp	ip, #3
	bne	.L893
.LVL752:
	.loc 28 1804 0
	mov	r4, r4, lsr #30
.LVL753:
.LBE4845:
.LBE4844:
.LBE4848:
.LBE4856:
.LBB4857:
.LBB4854:
	.loc 37 113 0
	cmp	r4, #3
	ldrls	pc, [pc, r4, asl #2]
	b	.L861
.L862:
	.word	.L873
	.word	.L863
	.word	.L864
	.word	.L865
.LVL754:
.L841:
.LBE4854:
.LBE4857:
.LBE4864:
.LBB4865:
.LBB4822:
.LBB4817:
.LBB4818:
	.loc 28 1677 0
	and	ip, r3, #15
	cmp	ip, #1
	.loc 28 1680 0
	ubfxeq	r2, r4, #20, #2
	.loc 28 1677 0
	beq	.L844
	bl	cap_small_frame_cap_get_capFVMRights.part.117
.LVL755:
.L889:
.LBE4818:
.LBE4817:
.LBE4822:
.LBE4865:
.LBB4866:
.LBB4858:
.LBB4837:
	.loc 38 218 0
	mov	r0, #0
	b	.L850
.L851:
.LVL756:
.LBB4834:
.LBB4835:
	.loc 28 1755 0
	cmp	ip, #1
	.loc 28 1758 0
	biceq	r0, r3, #-16777216
	biceq	r0, r0, #15
	moveq	r0, r0, asl #8
	.loc 28 1755 0
	beq	.L850
	bl	cap_small_frame_cap_get_capFBasePtr.isra.85.part.86
.LVL757:
.L865:
.LBE4835:
.LBE4834:
.LBE4837:
.LBE4858:
.LBB4859:
.LBB4855:
	mvn	r3, #-16777216
.LVL758:
	b	.L858
.LVL759:
.L864:
	movw	r3, #65535
.LVL760:
	movt	r3, 15
	b	.L858
.LVL761:
.L863:
	.loc 37 113 0
	movw	r3, #65535
.LVL762:
	b	.L858
.LVL763:
.L861:
.LBB4852:
.LBB4853:
	.loc 37 127 0
	movw	r0, #:lower16:.LC26
	movw	r1, #:lower16:.LC27
	movt	r0, #:upper16:.LC26
	movt	r1, #:upper16:.LC27
	mov	r2, #127
	ldr	r3, .L894
.LVL764:
	bl	_fail
.LVL765:
.L885:
.LBE4853:
.LBE4852:
.LBE4855:
.LBE4859:
.LBE4866:
.LBB4867:
.LBB4823:
	bl	generic_frame_cap_get_capFVMRights.part.119
.LVL766:
.L888:
.LBE4823:
.LBE4867:
.LBB4868:
.LBB4860:
.LBB4838:
	bl	generic_frame_cap_get_capFBasePtr.isra.89.part.90
.LVL767:
.L891:
.LBE4838:
.LBE4860:
.LBB4861:
.LBB4849:
	bl	generic_frame_cap_get_capFSize.part.121
.LVL768:
.L893:
.LBB4847:
.LBB4846:
	bl	cap_frame_cap_get_capFSize.part.120
.LVL769:
.L886:
.LBE4846:
.LBE4847:
.LBE4849:
.LBE4861:
.LBE4868:
.LBB4869:
.LBB4824:
.LBB4819:
.LBB4815:
	bl	cap_frame_cap_get_capFVMRights.part.118
.LVL770:
.L890:
.LBE4815:
.LBE4819:
.LBE4824:
.LBE4869:
.LBB4870:
.LBB4862:
.LBB4839:
.LBB4836:
.LBB4833:
	bl	cap_frame_cap_get_capFBasePtr.isra.87.part.88
.LVL771:
.L887:
.LBE4833:
.LBE4836:
.LBE4839:
.LBE4862:
.LBE4870:
	.loc 14 354 0 discriminator 1
	cmp	r2, #2
	cmpeq	r5, #0
	moveq	r2, #1
	movne	r2, #0
	beq	.L846
	.loc 14 350 0
	mov	r0, r2
.LVL772:
	b	.L882
.L895:
	.align	2
.L894:
	.word	.LANCHOR4+72
	.cfi_endproc
.LFE327:
	.size	lookupIPCBuffer, .-lookupIPCBuffer
	.align	2
	.global	handleFaultReply
	.type	handleFaultReply, %function
handleFaultReply:
.LFB287:
	.file 40 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/api/faults.c"
	.loc 40 19 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL773:
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 40 19 0
	mov	r7, r1
.LVL774:
.LBB4871:
.LBB4872:
	.loc 13 27 0
	ldr	r4, [r1, #4]
.LVL775:
.LBE4872:
.LBE4871:
	.loc 40 19 0
	mov	r6, r0
.LBB4873:
.LBB4874:
	.loc 28 566 0
	ldr	r3, [r0, #88]
.LBE4874:
.LBE4873:
.LBB4876:
.LBB4877:
.LBB4878:
.LBB4879:
	.file 41 "./api/types_gen.h"
	.loc 41 89 0
	and	r5, r4, #127
.LVL776:
.LBE4879:
.LBE4878:
	.loc 29 88 0
	cmp	r5, #120
.LBB4880:
.LBB4881:
	.loc 41 101 0
	bichi	r4, r4, #127
.LVL777:
	movhi	r5, #120
.LVL778:
.LBE4881:
.LBE4880:
.LBE4877:
.LBE4876:
.LBB4885:
.LBB4875:
	.loc 28 566 0
	and	r3, r3, #7
.LBE4875:
.LBE4885:
.LBB4886:
.LBB4884:
.LBB4883:
.LBB4882:
	.loc 41 102 0
	orrhi	r4, r4, r5
.LVL779:
.LBE4882:
.LBE4883:
.LBE4884:
.LBE4886:
	.loc 40 31 0
	sub	r3, r3, #1
.LBB4887:
.LBB4888:
	.loc 41 38 0
	mov	r4, r4, lsr #12
.LVL780:
.LBE4888:
.LBE4887:
	.loc 40 31 0
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L898
.LVL781:
.L900:
	.word	.L913
	.word	.L913
	.word	.L901
	.word	.L902
.L913:
	.loc 40 33 0
	mov	r0, #1
.LVL782:
	.loc 40 80 0
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL783:
.L901:
.LBB4889:
	.loc 40 44 0
	mov	r0, #0
.LVL784:
	bl	lookupIPCBuffer
.LVL785:
	.loc 40 47 0
	cmp	r5, #0
	beq	.L904
	ldr	r2, .L923
	mov	r3, #0
	mov	r8, r2
	sub	lr, r2, #1376
.LVL786:
.L906:
	.loc 40 49 0 discriminator 3
	ldr	r1, [lr], #4
	.loc 40 47 0 discriminator 3
	add	r3, r3, #1
.LVL787:
	.loc 40 48 0 discriminator 3
	ldr	ip, [r8], #4
.LVL788:
.LBB4890:
.LBB4891:
	.loc 13 27 0 discriminator 3
	ldr	r1, [r7, r1, asl #2]
.LVL789:
.LBE4891:
.LBE4890:
.LBB4892:
.LBB4893:
	.file 42 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine/registerset.h"
	.loc 42 123 0 discriminator 3
	cmp	ip, #16
	.loc 42 124 0 discriminator 3
	andeq	r1, r1, #-134217728
.LVL790:
	orreq	r1, r1, #80
.LVL791:
.LBE4893:
.LBE4892:
	.loc 40 47 0 discriminator 3
	cmp	r3, #3
	cmpls	r3, r5
.LBB4894:
.LBB4895:
	.loc 13 21 0 discriminator 3
	str	r1, [r6, ip, asl #2]
.LVL792:
.LBE4895:
.LBE4894:
	.loc 40 47 0 discriminator 3
	bcc	.L906
	.loc 40 53 0
	cmp	r0, #0
	beq	.L904
	.loc 40 54 0 discriminator 1
	cmp	r3, r5
	bcs	.L904
	sub	ip, r3, #-1073741823
.LVL793:
	mov	ip, ip, asl #2
	add	r1, ip, #4
.LVL794:
	add	ip, r2, ip
	add	r0, r0, r1
.LVL795:
.L909:
	.loc 40 55 0 discriminator 2
	ldr	r1, [ip, #4]!
.LVL796:
	.loc 40 56 0 discriminator 2
	add	r3, r3, #1
.LVL797:
	ldr	r2, [r0, #4]!
.LVL798:
.LBB4896:
.LBB4897:
	.loc 42 123 0 discriminator 2
	cmp	r1, #16
	.loc 42 124 0 discriminator 2
	andeq	r2, r2, #-134217728
.LVL799:
	orreq	r2, r2, #80
.LVL800:
.LBE4897:
.LBE4896:
	.loc 40 54 0 discriminator 2
	cmp	r3, #11
	cmpls	r3, r5
.LBB4898:
.LBB4899:
	.loc 13 21 0 discriminator 2
	str	r2, [r6, r1, asl #2]
.LVL801:
.LBE4899:
.LBE4898:
	.loc 40 54 0 discriminator 2
	bcc	.L909
.LVL802:
.L904:
.LBE4889:
	.loc 40 61 0
	clz	r0, r4
	mov	r0, r0, lsr #5
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL803:
.L902:
.LBB4900:
	.loc 40 69 0 discriminator 1
	cmp	r5, #0
	beq	.L904
	movw	r0, #:lower16:.LANCHOR4
.LVL804:
	.loc 40 69 0 is_stmt 0
	mov	r3, #0
	movt	r0, #:upper16:.LANCHOR4
	add	ip, r0, #1424
.LVL805:
.L903:
.LBB4901:
.LBB4902:
	.loc 13 27 0 is_stmt 1 discriminator 3
	ldr	r2, [r0, r3, asl #2]
.LBE4902:
.LBE4901:
	.loc 40 70 0 discriminator 3
	ldr	r1, [ip, r3, asl #2]
.LVL806:
	.loc 40 69 0 discriminator 3
	add	r3, r3, #1
.LVL807:
.LBB4904:
.LBB4903:
	.loc 13 27 0 discriminator 3
	ldr	r2, [r7, r2, asl #2]
.LVL808:
.LBE4903:
.LBE4904:
.LBB4905:
.LBB4906:
	.loc 42 123 0 discriminator 3
	cmp	r1, #16
	.loc 42 124 0 discriminator 3
	andeq	r2, r2, #-134217728
.LVL809:
	orreq	r2, r2, #80
.LVL810:
.LBE4906:
.LBE4905:
	.loc 40 69 0 discriminator 3
	cmp	r3, #2
	cmpls	r3, r5
.LBB4907:
.LBB4908:
	.loc 13 21 0 discriminator 3
	str	r2, [r6, r1, asl #2]
.LVL811:
.LBE4908:
.LBE4907:
	.loc 40 69 0 discriminator 3
	bcc	.L903
	b	.L904
.LVL812:
.L898:
.LBE4900:
	.loc 40 78 0
	movw	r0, #:lower16:.LC54
.LVL813:
	movw	r1, #:lower16:.LC55
.LVL814:
	movt	r0, #:upper16:.LC54
	movt	r1, #:upper16:.LC55
	mov	r2, #78
	ldr	r3, .L923+4
	bl	_fail
.LVL815:
.L924:
	.align	2
.L923:
	.word	.LANCHOR4+1376
	.word	.LANCHOR4+1436
	.cfi_endproc
.LFE287:
	.size	handleFaultReply, .-handleFaultReply
	.align	2
	.global	Arch_sameRegionAs
	.type	Arch_sameRegionAs, %function
Arch_sameRegionAs:
.LFB459:
	.loc 23 270 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 32
	.loc 23 270 0
	add	ip, sp, #16
	stmia	sp, {r2, r3}
	stmdb	ip, {r0, r1}
	mov	r0, r2
	ldr	r1, [sp, #8]
.LVL816:
.LBB4970:
.LBB4971:
	.loc 28 1035 0
	and	r2, r1, #14
	cmp	r2, #14
	.loc 28 1037 0
	uxtbeq	r3, r1
	.loc 28 1036 0
	andne	r3, r1, #15
.LBE4971:
.LBE4970:
	.loc 23 271 0
	sub	r3, r3, #1
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L999
.L930:
	.word	.L929
	.word	.L999
	.word	.L929
	.word	.L999
	.word	.L931
	.word	.L999
	.word	.L932
	.word	.L999
	.word	.L933
	.word	.L999
	.word	.L934
.L931:
.LVL817:
.LBB4972:
.LBB4973:
	.loc 28 1035 0
	and	r3, r0, #14
	cmp	r3, #14
	.loc 28 1037 0
	uxtbeq	r3, r0
	.loc 28 1036 0
	andne	r3, r0, #15
.LBE4973:
.LBE4972:
	.loc 23 306 0
	cmp	r3, #5
	beq	.L1007
.LVL818:
.L999:
	.loc 23 313 0
	mov	r0, #0
.LVL819:
.L928:
	.loc 23 314 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 12
.LVL820:
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.LVL821:
.L934:
	.cfi_restore_state
.LBB4974:
.LBB4975:
	.loc 28 1035 0
	and	r3, r0, #14
	cmp	r3, #14
	.loc 28 1037 0
	uxtbeq	r0, r0
.LVL822:
	.loc 28 1036 0
	andne	r0, r0, #15
.LBE4975:
.LBE4974:
	.loc 23 300 0
	sub	r0, r0, #11
	clz	r0, r0
	mov	r0, r0, lsr #5
	.loc 23 314 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 12
.LVL823:
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.LVL824:
.L929:
	.cfi_restore_state
.LBB4976:
.LBB4977:
	.loc 28 1035 0
	and	ip, r0, #14
	cmp	ip, #14
	.loc 28 1037 0
	uxtbeq	r3, r0
	.loc 28 1036 0
	andne	r3, r0, #15
.LBE4977:
.LBE4976:
	.loc 23 274 0
	bic	r3, r3, #2
	cmp	r3, #1
	bne	.L999
.LVL825:
.LBB4978:
.LBB4979:
.LBB4980:
.LBB4981:
.LBB4982:
	.loc 28 1035 0
	cmp	r2, #14
	.loc 28 1037 0
	uxtbeq	r3, r1
	.loc 28 1036 0
	andne	r3, r1, #15
.LVL826:
.LBE4982:
.LBE4981:
	.loc 38 207 0
	and	lr, r3, #253
	cmp	lr, #1
	bne	.L947
	.loc 38 210 0
	cmp	r3, #1
	beq	.L941
	cmp	r3, #3
	beq	.L942
	.loc 38 218 0
	mov	r4, #0
.LVL827:
.L940:
.LBE4980:
.LBE4979:
.LBB4990:
.LBB4991:
.LBB4992:
.LBB4993:
	.loc 28 1035 0
	cmp	ip, #14
	.loc 28 1037 0
	uxtbeq	r3, r0
	.loc 28 1036 0
	andne	r3, r0, #15
.LVL828:
.LBE4993:
.LBE4992:
	.loc 38 207 0
	and	lr, r3, #253
	cmp	lr, #1
	bne	.L947
	.loc 38 210 0
	cmp	r3, #1
	beq	.L949
	cmp	r3, #3
	bne	.L1008
.LVL829:
.LBB4994:
.LBB4995:
	.loc 28 1919 0
	and	r3, r0, #15
.LVL830:
	cmp	r3, #3
	bne	.L952
	.loc 28 1922 0
	bic	lr, r0, #-268435441
	bic	lr, lr, #264241152
	mov	lr, lr, asl #10
.LVL831:
.L948:
.LBE4995:
.LBE4994:
.LBE4991:
.LBE4990:
.LBB4999:
.LBB5000:
.LBB5001:
.LBB5002:
	.loc 28 1035 0
	cmp	r2, #14
	ldr	r3, [sp, #12]
.LVL832:
	.loc 28 1037 0
	uxtbeq	r2, r1
.LVL833:
	.loc 28 1036 0
	andne	r2, r1, #15
.LVL834:
.LBE5002:
.LBE5001:
	.loc 38 228 0
	and	r5, r2, #253
	cmp	r5, #1
	bne	.L966
	.loc 38 231 0
	cmp	r2, #3
	beq	.L1009
.LVL835:
.L994:
.LBE5000:
.LBE4999:
.LBB5010:
.LBB5011:
	.loc 37 113 0
	mov	r1, #4096
.L956:
.LBE5011:
.LBE5010:
.LBB5013:
.LBB5014:
.LBB5015:
.LBB5016:
	.loc 28 1035 0
	cmp	ip, #14
	sub	r3, r4, #1
	.loc 28 1037 0
	uxtbeq	r2, r0
.LVL836:
	.loc 28 1036 0
	andne	r2, r0, #15
.LBE5016:
.LBE5015:
.LBE5014:
.LBE5013:
	.loc 23 279 0
	add	r1, r3, r1
.LVL837:
	ldr	r3, [sp, #4]
.LVL838:
.LBB5021:
.LBB5019:
	.loc 38 228 0
	and	ip, r2, #253
.LVL839:
	cmp	ip, #1
	bne	.L966
	.loc 38 231 0
	cmp	r2, #3
	beq	.L1010
.LVL840:
.L996:
.LBE5019:
.LBE5021:
.LBB5022:
.LBB5023:
	.loc 37 113 0
	mov	r3, #4096
.L967:
	sub	r2, lr, #1
.LVL841:
.LBE5023:
.LBE5022:
	.loc 23 280 0
	add	r3, r2, r3
.LVL842:
	cmp	r1, r3
	cmpcs	r3, lr
	movcs	r3, #1
.LVL843:
	movcc	r3, #0
	.loc 23 281 0
	cmp	r4, lr
	movhi	r0, #0
	andls	r0, r3, #1
	b	.L928
.LVL844:
.L932:
.LBE4978:
.LBB5037:
.LBB5038:
	.loc 28 1035 0
	and	r3, r0, #14
	cmp	r3, #14
	.loc 28 1037 0
	uxtbeq	r3, r0
	.loc 28 1036 0
	andne	r3, r0, #15
.LBE5038:
.LBE5037:
	.loc 23 286 0
	cmp	r3, #7
	bne	.L999
.LVL845:
.LBB5039:
.LBB5040:
	.loc 28 2098 0
	and	r3, r1, #15
	cmp	r3, #7
	bne	.L978
.LBE5040:
.LBE5039:
.LBB5044:
.LBB5045:
	and	r3, r0, #15
.LBE5045:
.LBE5044:
.LBB5048:
.LBB5041:
	.loc 28 2101 0
	bic	r1, r1, #1020
.LBE5041:
.LBE5048:
.LBB5049:
.LBB5046:
	.loc 28 2098 0
	cmp	r3, #7
.LBE5046:
.LBE5049:
.LBB5050:
.LBB5042:
	.loc 28 2101 0
	bic	r1, r1, #3
.LVL846:
.LBE5042:
.LBE5050:
.LBB5051:
.LBB5047:
	.loc 28 2098 0
	bne	.L978
.LVL847:
	.loc 28 2101 0
	bic	r0, r0, #1020
.LVL848:
	bic	r0, r0, #3
.LBE5047:
.LBE5051:
	.loc 23 287 0
	rsb	r0, r0, r1
	clz	r0, r0
	mov	r0, r0, lsr #5
	b	.L928
.LVL849:
.L933:
.LBB5052:
.LBB5053:
	.loc 28 1035 0
	and	r3, r0, #14
	cmp	r3, #14
	.loc 28 1037 0
	uxtbeq	r3, r0
	.loc 28 1036 0
	andne	r3, r0, #15
.LBE5053:
.LBE5052:
	.loc 23 293 0
	cmp	r3, #9
	bne	.L999
.LVL850:
.LBB5054:
.LBB5055:
	.loc 28 2162 0
	and	r3, r1, #15
	cmp	r3, #9
	bne	.L982
.LBE5055:
.LBE5054:
.LBB5059:
.LBB5060:
	and	r3, r0, #15
.LBE5060:
.LBE5059:
.LBB5063:
.LBB5056:
	.loc 28 2165 0
	bic	r1, r1, #16320
.LBE5056:
.LBE5063:
.LBB5064:
.LBB5061:
	.loc 28 2162 0
	cmp	r3, #9
.LBE5061:
.LBE5064:
.LBB5065:
.LBB5057:
	.loc 28 2165 0
	bic	r1, r1, #63
.LVL851:
.LBE5057:
.LBE5065:
.LBB5066:
.LBB5062:
	.loc 28 2162 0
	bne	.L982
.LVL852:
	.loc 28 2165 0
	bic	r0, r0, #16320
.LVL853:
	bic	r0, r0, #63
.LBE5062:
.LBE5066:
	.loc 23 294 0
	rsb	r0, r0, r1
	clz	r0, r0
	mov	r0, r0, lsr #5
	b	.L928
.LVL854:
.L1007:
.LBB5067:
.LBB5068:
	.loc 28 1967 0
	and	r3, r1, #15
	cmp	r3, #5
	bne	.L988
.LBE5068:
.LBE5067:
.LBB5071:
.LBB5072:
	and	r3, r0, #15
.LBE5072:
.LBE5071:
.LBB5074:
.LBB5069:
	.loc 28 1970 0
	bic	r1, r1, #15
.LVL855:
.LBE5069:
.LBE5074:
.LBB5075:
.LBB5073:
	.loc 28 1967 0
	cmp	r3, #5
	bne	.L988
.LVL856:
	.loc 28 1970 0
	bic	r0, r0, #15
.LVL857:
.LBE5073:
.LBE5075:
	.loc 23 307 0
	rsb	r0, r0, r1
.LVL858:
	clz	r0, r0
	mov	r0, r0, lsr #5
	b	.L928
.LVL859:
.L942:
.LBB5076:
.LBB5027:
.LBB4987:
.LBB4983:
.LBB4984:
	.loc 28 1919 0
	and	r3, r1, #15
.LVL860:
	cmp	r3, #3
	.loc 28 1922 0
	biceq	r4, r1, #-268435441
	biceq	r4, r4, #264241152
	moveq	r4, r4, asl #10
	.loc 28 1919 0
	beq	.L940
.L952:
	bl	cap_frame_cap_get_capFBasePtr.isra.87.part.88
.LVL861:
.L1009:
.LBE4984:
.LBE4983:
.LBE4987:
.LBE5027:
.LBB5028:
.LBB5007:
.LBB5003:
.LBB5004:
	.loc 28 1801 0
	and	r1, r1, #15
.LVL862:
	cmp	r1, #3
	bne	.L969
.LVL863:
	.loc 28 1804 0
	mov	r3, r3, lsr #30
.LVL864:
.LBE5004:
.LBE5003:
.LBE5007:
.LBE5028:
.LBB5029:
.LBB5012:
	.loc 37 113 0
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L970
.L960:
	.word	.L994
	.word	.L961
	.word	.L962
	.word	.L963
.L963:
	mov	r1, #16777216
	b	.L956
.L962:
	mov	r1, #1048576
	b	.L956
.L961:
	mov	r1, #65536
	b	.L956
.LVL865:
.L1010:
.LBE5012:
.LBE5029:
.LBB5030:
.LBB5020:
.LBB5017:
.LBB5018:
	.loc 28 1801 0
	and	r0, r0, #15
.LVL866:
	cmp	r0, #3
	bne	.L969
.LVL867:
	.loc 28 1804 0
	mov	r3, r3, lsr #30
.LVL868:
.LBE5018:
.LBE5017:
.LBE5020:
.LBE5030:
.LBB5031:
.LBB5026:
	.loc 37 113 0
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L970
.L971:
	.word	.L996
	.word	.L972
	.word	.L973
	.word	.L974
.L974:
	mov	r3, #16777216
.LVL869:
	b	.L967
.LVL870:
.L973:
	mov	r3, #1048576
.LVL871:
	b	.L967
.LVL872:
.L972:
	mov	r3, #65536
.LVL873:
	b	.L967
.LVL874:
.L970:
.LBB5024:
.LBB5025:
	.loc 37 127 0
	movw	r0, #:lower16:.LC26
	movw	r1, #:lower16:.LC27
	movt	r0, #:upper16:.LC26
	movt	r1, #:upper16:.LC27
	mov	r2, #127
	ldr	r3, .L1011
	bl	_fail
.LVL875:
.L941:
.LBE5025:
.LBE5024:
.LBE5026:
.LBE5031:
.LBB5032:
.LBB4988:
.LBB4985:
.LBB4986:
	.loc 28 1755 0
	and	r3, r1, #15
.LVL876:
	cmp	r3, #1
	.loc 28 1758 0
	biceq	r4, r1, #-16777216
	biceq	r4, r4, #15
	moveq	r4, r4, asl #8
	.loc 28 1755 0
	beq	.L940
.L951:
	bl	cap_small_frame_cap_get_capFBasePtr.isra.85.part.86
.LVL877:
.L1008:
.LBE4986:
.LBE4985:
.LBE4988:
.LBE5032:
.LBB5033:
.LBB4998:
	.loc 38 218 0
	mov	lr, #0
	b	.L948
.L949:
.LVL878:
.LBB4996:
.LBB4997:
	.loc 28 1755 0
	and	r3, r0, #15
.LVL879:
	cmp	r3, #1
	bne	.L951
	.loc 28 1758 0
	bic	lr, r0, #-16777216
	bic	lr, lr, #15
	mov	lr, lr, asl #8
	b	.L948
.LVL880:
.L947:
.LBE4997:
.LBE4996:
.LBE4998:
.LBE5033:
.LBB5034:
.LBB4989:
	bl	generic_frame_cap_get_capFBasePtr.isra.89.part.90
.LVL881:
.L966:
.LBE4989:
.LBE5034:
.LBB5035:
.LBB5008:
	bl	generic_frame_cap_get_capFSize.part.121
.LVL882:
.L988:
.LBE5008:
.LBE5035:
.LBE5076:
.LBB5077:
.LBB5070:
	bl	cap_asid_pool_cap_get_capASIDPool.isra.95.part.96
.LVL883:
.L969:
.LBE5070:
.LBE5077:
.LBB5078:
.LBB5036:
.LBB5009:
.LBB5006:
.LBB5005:
	bl	cap_frame_cap_get_capFSize.part.120
.LVL884:
.L982:
.LBE5005:
.LBE5006:
.LBE5009:
.LBE5036:
.LBE5078:
.LBB5079:
.LBB5058:
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.93.part.94
.LVL885:
.L978:
.LBE5058:
.LBE5079:
.LBB5080:
.LBB5043:
	bl	cap_page_table_cap_get_capPTBasePtr.isra.91.part.92
.LVL886:
.L1012:
	.align	2
.L1011:
	.word	.LANCHOR4+72
.LBE5043:
.LBE5080:
	.cfi_endproc
.LFE459:
	.size	Arch_sameRegionAs, .-Arch_sameRegionAs
	.align	2
	.global	Arch_sameObjectAs
	.type	Arch_sameObjectAs, %function
Arch_sameObjectAs:
.LFB460:
	.loc 23 319 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	.loc 23 319 0
	add	lr, sp, #8
	stmia	sp, {r2, r3}
	mov	ip, sp
	stmia	lr, {r0, r1}
	mov	r1, r0
.LVL887:
	mov	r0, r2
.LVL888:
.LBB5081:
.LBB5082:
	.loc 28 1035 0
	and	r2, r1, #14
	cmp	r2, #14
	beq	.L1014
	.loc 28 1036 0
	and	r3, r1, #15
.LBE5082:
.LBE5081:
	.loc 23 320 0
	cmp	r3, #1
	beq	.L1015
.L1025:
	.loc 23 328 0
	cmp	r3, #3
	beq	.L1049
.L1026:
	.loc 23 338 0
	ldmia	lr, {r0, r1}
	ldmia	ip, {r2, r3}
	.loc 23 339 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 23 338 0
	b	Arch_sameRegionAs
.LVL889:
.L1014:
	.cfi_restore_state
.LBB5084:
.LBB5083:
	.loc 28 1037 0
	uxtb	r3, r1
.LBE5083:
.LBE5084:
	.loc 23 320 0
	cmp	r3, #1
	bne	.L1025
.L1015:
.LVL890:
.LBB5085:
.LBB5086:
	.loc 28 1035 0
	and	r3, r0, #14
	cmp	r3, #14
	beq	.L1018
	.loc 28 1036 0
	and	r3, r0, #15
.LBE5086:
.LBE5085:
	.loc 23 321 0
	cmp	r3, #1
	beq	.L1050
.L1020:
	.loc 23 324 0
	cmp	r3, #3
	beq	.L1039
.LVL891:
.LBB5088:
.LBB5089:
	.loc 28 1035 0
	cmp	r2, #14
	uxtbeq	r3, r1
	andne	r3, r1, #15
.LBE5089:
.LBE5088:
	.loc 23 328 0
	cmp	r3, #3
	bne	.L1026
.L1049:
.LVL892:
.LBB5090:
.LBB5091:
	.loc 28 1035 0
	and	r3, r0, #14
	cmp	r3, #14
	beq	.L1027
	.loc 28 1036 0
	and	r3, r0, #15
.LBE5091:
.LBE5090:
	.loc 23 329 0
	cmp	r3, #3
	beq	.L1051
.L1029:
	.loc 23 334 0
	cmp	r3, #1
	bne	.L1026
.L1039:
	.loc 23 325 0
	mov	r0, #0
	.loc 23 339 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L1027:
	.cfi_restore_state
.LBB5093:
.LBB5092:
	.loc 28 1037 0
	uxtb	r3, r0
.LBE5092:
.LBE5093:
	.loc 23 329 0
	cmp	r3, #3
	bne	.L1029
.LVL893:
.LBB5094:
.LBB5095:
	.loc 28 1919 0
	and	r3, r1, #15
	cmp	r3, #3
	bne	.L1031
.LBE5095:
.LBE5094:
.LBB5099:
.LBB5100:
	and	r3, r0, #15
.LBE5100:
.LBE5099:
.LBB5103:
.LBB5096:
	.loc 28 1922 0
	bic	r1, r1, #-268435441
.LBE5096:
.LBE5103:
.LBB5104:
.LBB5101:
	.loc 28 1919 0
	cmp	r3, #3
.LBE5101:
.LBE5104:
.LBB5105:
.LBB5097:
	.loc 28 1922 0
	bic	r1, r1, #264241152
	mov	r1, r1, asl #10
.LVL894:
.LBE5097:
.LBE5105:
.LBB5106:
.LBB5102:
	.loc 28 1919 0
	bne	.L1031
.LVL895:
.L1035:
	.loc 28 1922 0
	bic	r0, r0, #-268435441
	bic	r0, r0, #264241152
.LBE5102:
.LBE5106:
	.loc 23 331 0
	cmp	r1, r0, asl #10
	bne	.L1039
.LVL896:
.LBB5107:
.LBB5108:
	.loc 28 1804 0 discriminator 1
	ldr	r3, [sp, #4]
.LBE5108:
.LBE5107:
.LBB5110:
.LBB5111:
	ldr	r2, [sp, #12]
.LBE5111:
.LBE5110:
.LBB5112:
.LBB5109:
	mov	r3, r3, lsr #30
.LVL897:
.LBE5109:
.LBE5112:
	.loc 23 331 0 discriminator 1
	cmp	r3, r2, lsr #30
	moveq	r0, #1
	movne	r0, #0
	b	.L1043
.LVL898:
.L1050:
.LBB5113:
.LBB5114:
	.loc 28 1755 0
	and	r3, r1, #15
	cmp	r3, #1
	.loc 28 1758 0
	biceq	r1, r1, #-16777216
	biceq	r1, r1, #15
	moveq	r1, r1, asl #8
	.loc 28 1755 0
	bne	.L1022
.L1033:
.LVL899:
.LBE5114:
.LBE5113:
.LBB5119:
.LBB5120:
	.loc 28 1758 0
	bic	r0, r0, #-16777216
	bic	r0, r0, #15
.LBE5120:
.LBE5119:
	.loc 23 322 0
	cmp	r1, r0, asl #8
	moveq	r0, #1
	movne	r0, #0
.LVL900:
.L1043:
	.loc 23 339 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L1018:
	.cfi_restore_state
.LBB5124:
.LBB5087:
	.loc 28 1037 0
	uxtb	r3, r0
.LBE5087:
.LBE5124:
	.loc 23 321 0
	cmp	r3, #1
	bne	.L1020
.LBB5125:
.LBB5115:
	.loc 28 1755 0
	and	r3, r1, #15
	cmp	r3, #1
	bne	.L1022
.LBE5115:
.LBE5125:
.LBB5126:
.LBB5121:
	and	r3, r0, #15
.LBE5121:
.LBE5126:
.LBB5127:
.LBB5116:
	.loc 28 1758 0
	bic	r1, r1, #-16777216
.LBE5116:
.LBE5127:
.LBB5128:
.LBB5122:
	.loc 28 1755 0
	cmp	r3, #1
.LBE5122:
.LBE5128:
.LBB5129:
.LBB5117:
	.loc 28 1758 0
	bic	r1, r1, #15
	mov	r1, r1, asl #8
.LVL901:
.LBE5117:
.LBE5129:
.LBB5130:
.LBB5123:
	.loc 28 1755 0
	beq	.L1033
.LVL902:
.L1022:
.LBE5123:
.LBE5130:
.LBB5131:
.LBB5118:
	bl	cap_small_frame_cap_get_capFBasePtr.isra.85.part.86
.LVL903:
.L1051:
.LBE5118:
.LBE5131:
.LBB5132:
.LBB5098:
	.loc 28 1919 0
	and	r3, r1, #15
	cmp	r3, #3
	.loc 28 1922 0
	biceq	r1, r1, #-268435441
	biceq	r1, r1, #264241152
	moveq	r1, r1, asl #10
	.loc 28 1919 0
	beq	.L1035
.L1031:
	bl	cap_frame_cap_get_capFBasePtr.isra.87.part.88
.LVL904:
.LBE5098:
.LBE5132:
	.cfi_endproc
.LFE460:
	.size	Arch_sameObjectAs, .-Arch_sameObjectAs
	.section	.text.unlikely
	.align	2
	.type	fault_vm_fault_new.part.122, %function
fault_vm_fault_new.part.122:
.LFB813:
	.loc 28 631 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL905:
	.loc 28 639 0
	movw	r0, #:lower16:.LC56
	movw	r1, #:lower16:.LC30
	.loc 28 631 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 639 0
	movt	r0, #:upper16:.LC56
	movt	r1, #:upper16:.LC30
	movw	r2, #639
	ldr	r3, .L1054
	bl	_assert_fail
.LVL906:
.L1055:
	.align	2
.L1054:
	.word	.LANCHOR4+1456
	.cfi_endproc
.LFE813:
	.size	fault_vm_fault_new.part.122, .-fault_vm_fault_new.part.122
	.text
	.align	2
	.type	loadHWASID, %function
loadHWASID:
.LFB347:
	.loc 14 817 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL907:
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 14 821 0
	mov	r2, r0, lsr #10
	movw	r3, #:lower16:armKSASIDTable
	movt	r3, #:upper16:armKSASIDTable
	ldr	r3, [r3, r2, asl #2]
.LVL908:
	.loc 14 822 0
	cmp	r3, #0
	beq	.L1060
	.loc 14 824 0
	ubfx	r0, r0, #0, #10
.LVL909:
	ldr	r3, [r3, r0, asl #2]
.LVL910:
	.loc 14 825 0
	cmp	r3, #0
	beq	.L1061
	.loc 14 827 0
	add	r3, r3, #12288
.LVL911:
	.loc 14 828 0
	ldr	r0, [r3, #4032]
.LVL912:
	ldmfd	sp!, {r3, pc}
.LVL913:
.L1060:
.LBB5135:
.LBB5136:
	.loc 14 822 0
	movw	r0, #:lower16:.LC57
.LVL914:
	movw	r1, #:lower16:.LC23
	movt	r0, #:upper16:.LC57
	movt	r1, #:upper16:.LC23
	movw	r2, #822
	ldr	r3, .L1062
.LVL915:
	bl	_assert_fail
.LVL916:
.L1061:
.LBE5136:
.LBE5135:
	.loc 14 825 0 discriminator 1
	movw	r0, #:lower16:.LC58
	movw	r1, #:lower16:.LC23
	movt	r0, #:upper16:.LC58
	movt	r1, #:upper16:.LC23
	movw	r2, #825
.LVL917:
	ldr	r3, .L1062
.LVL918:
	bl	_assert_fail
.LVL919:
.L1063:
	.align	2
.L1062:
	.word	.LANCHOR4+1476
	.cfi_endproc
.LFE347:
	.size	loadHWASID, .-loadHWASID
	.align	2
	.type	pde_pde_invalid_get_stored_asid_valid.part.125, %function
pde_pde_invalid_get_stored_asid_valid.part.125:
.LFB816:
	.loc 28 825 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 827 0
	movw	r0, #:lower16:.LC59
	movw	r1, #:lower16:.LC30
	.loc 28 825 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 827 0
	movt	r0, #:upper16:.LC59
	movt	r1, #:upper16:.LC30
	mov	r2, #828
	ldr	r3, .L1066
	bl	_assert_fail
.LVL920:
.L1067:
	.align	2
.L1066:
	.word	.LANCHOR4+1488
	.cfi_endproc
.LFE816:
	.size	pde_pde_invalid_get_stored_asid_valid.part.125, .-pde_pde_invalid_get_stored_asid_valid.part.125
	.section	.text.unlikely
	.align	2
	.type	pde_pde_invalid_get_stored_hw_asid.part.126, %function
pde_pde_invalid_get_stored_hw_asid.part.126:
.LFB817:
	.loc 28 811 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 813 0
	movw	r0, #:lower16:.LC59
	movw	r1, #:lower16:.LC30
	.loc 28 811 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 813 0
	movt	r0, #:upper16:.LC59
	movt	r1, #:upper16:.LC30
	movw	r2, #814
	ldr	r3, .L1070
	bl	_assert_fail
.LVL921:
.L1071:
	.align	2
.L1070:
	.word	.LANCHOR4+1528
	.cfi_endproc
.LFE817:
	.size	pde_pde_invalid_get_stored_hw_asid.part.126, .-pde_pde_invalid_get_stored_hw_asid.part.126
	.text
	.align	2
	.global	flushSpace
	.type	flushSpace, %function
flushSpace:
.LFB352:
	.loc 14 927 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL922:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 14 930 0
	bl	loadHWASID
.LVL923:
	mov	r4, r0
.LVL924:
.LBB5137:
.LBB5138:
.LBB5139:
.LBB5140:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LBE5140:
.LBE5139:
	.loc 15 172 0
	bl	clean_D_PoU
.LVL925:
.LBB5141:
.LBB5142:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LBE5142:
.LBE5141:
.LBB5143:
.LBB5144:
	.loc 4 253 0
	mov	r3, #0
@ 253 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r3, c7, c5, 0
@ 0 "" 2
.LBB5145:
.LBB5146:
	.loc 2 29 0
@ 29 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LBE5146:
.LBE5145:
.LBE5144:
.LBE5143:
.LBB5147:
.LBB5148:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LVL926:
.LBE5148:
.LBE5147:
.LBE5138:
.LBE5137:
.LBB5149:
.LBB5150:
	.loc 28 827 0
	tst	r4, #3
	bne	.L1080
.LVL927:
.LBE5150:
.LBE5149:
	.loc 14 939 0
	tst	r4, #8388608
	ldmeqfd	sp!, {r4, pc}
.LVL928:
.LBB5152:
.LBB5153:
.LBB5154:
.LBB5155:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LBE5155:
.LBE5154:
.LBE5153:
.LBE5152:
.LBB5161:
.LBB5162:
	.loc 28 816 0
	mov	r4, r4, lsr #24
.LVL929:
.LBE5162:
.LBE5161:
.LBB5163:
.LBB5160:
	.loc 4 165 0
@ 165 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r4, c8, c7, 2
@ 0 "" 2
.LBB5156:
.LBB5157:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LBE5157:
.LBE5156:
.LBB5158:
.LBB5159:
	.loc 2 29 0
@ 29 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	ldmfd	sp!, {r4, pc}
.LVL930:
.L1080:
.LBE5159:
.LBE5158:
.LBE5160:
.LBE5163:
.LBB5164:
.LBB5151:
	bl	pde_pde_invalid_get_stored_asid_valid.part.125
.LVL931:
.LBE5151:
.LBE5164:
	.cfi_endproc
.LFE352:
	.size	flushSpace, .-flushSpace
	.align	2
	.global	invalidateTLBByASID
	.type	invalidateTLBByASID, %function
invalidateTLBByASID:
.LFB353:
	.loc 14 949 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL932:
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 14 952 0
	bl	loadHWASID
.LVL933:
.LBB5165:
.LBB5166:
	.loc 28 827 0
	tst	r0, #3
	bne	.L1089
.LVL934:
.LBE5166:
.LBE5165:
	.loc 14 956 0
	tst	r0, #8388608
	ldmeqfd	sp!, {r3, pc}
.LVL935:
.LBB5168:
.LBB5169:
.LBB5170:
.LBB5171:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LBE5171:
.LBE5170:
.LBE5169:
.LBE5168:
.LBB5177:
.LBB5178:
	.loc 28 816 0
	mov	r0, r0, lsr #24
.LVL936:
.LBE5178:
.LBE5177:
.LBB5179:
.LBB5176:
	.loc 4 165 0
@ 165 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r0, c8, c7, 2
@ 0 "" 2
.LBB5172:
.LBB5173:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LBE5173:
.LBE5172:
.LBB5174:
.LBB5175:
	.loc 2 29 0
@ 29 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	ldmfd	sp!, {r3, pc}
.LVL937:
.L1089:
.LBE5175:
.LBE5174:
.LBE5176:
.LBE5179:
.LBB5180:
.LBB5167:
	bl	pde_pde_invalid_get_stored_asid_valid.part.125
.LVL938:
.LBE5167:
.LBE5180:
	.cfi_endproc
.LFE353:
	.size	invalidateTLBByASID, .-invalidateTLBByASID
	.align	2
	.global	performPageInvocationMapPDE
	.type	performPageInvocationMapPDE, %function
performPageInvocationMapPDE:
.LFB371:
	.loc 14 2096 0
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL939:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
	ldr	ip, [sp, #28]
.LVL940:
	.loc 14 2096 0
	mov	r4, r0
	ldr	lr, [sp, #32]
.LVL941:
	stmia	sp, {r1, r2}
.LBB5181:
.LBB5182:
.LBB5183:
	.loc 28 788 0
	ldr	r5, [ip]
.LBE5183:
.LBE5182:
.LBE5181:
	.loc 14 2100 0
	ldmia	sp, {r0, r1}
.LVL942:
	.loc 14 2109 0
	cmp	lr, #0
	.loc 14 2096 0
	ldr	r1, [sp, #24]
.LVL943:
.LBB5186:
.LBB5185:
.LBB5184:
	.loc 28 788 0
	and	r5, r5, #3
.LBE5184:
.LBE5185:
.LBE5186:
	.loc 14 2100 0
	stmia	r3, {r0, r2}
.LVL944:
	addne	r2, ip, lr, asl #2
	movne	r3, ip
.LVL945:
	.loc 14 2109 0
	beq	.L1095
.LVL946:
.L1094:
	.loc 14 2110 0 discriminator 3
	str	r1, [r3], #4
	.loc 14 2109 0 discriminator 3
	cmp	r3, r2
	bne	.L1094
.L1095:
.LVL947:
	.loc 14 2113 0
	add	r2, ip, lr, asl #2
.LBB5187:
.LBB5188:
	.loc 15 95 0
	mov	r3, ip, lsr #5
.LVL948:
.LBE5188:
.LBE5187:
	.loc 14 2112 0
	sub	r2, r2, #1
.LBB5194:
.LBB5193:
	.loc 15 95 0
	mov	r2, r2, lsr #5
	add	r2, r2, #1
	cmp	r2, r3
	bls	.L1093
.L1098:
.LVL949:
	.loc 15 96 0
	mov	r1, r3, asl #5
.LVL950:
.LBB5189:
.LBB5190:
	.loc 4 212 0
@ 212 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r1, c7, c11, 1
@ 0 "" 2
.LBB5191:
.LBB5192:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE5192:
.LBE5191:
.LBE5190:
.LBE5189:
	.loc 15 95 0
	add	r3, r3, #1
.LVL951:
	cmp	r2, r3
	bne	.L1098
.LVL952:
.L1093:
.LBE5193:
.LBE5194:
	.loc 14 2115 0
	cmp	r5, #0
	bne	.L1103
	.loc 14 2120 0
	mov	r0, #0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL953:
.L1103:
	.cfi_restore_state
	mov	r0, r4
	.loc 14 2116 0
	bl	invalidateTLBByASID
.LVL954:
	.loc 14 2120 0
	mov	r0, #0
	add	sp, sp, #8
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
	.cfi_endproc
.LFE371:
	.size	performPageInvocationMapPDE, .-performPageInvocationMapPDE
	.align	2
	.global	performPageInvocationRemapPDE
	.type	performPageInvocationRemapPDE, %function
performPageInvocationRemapPDE:
.LFB373:
	.loc 14 2150 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL955:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 14 2150 0
	add	ip, sp, #8
	stmdb	ip, {r2, r3}
	ldmia	sp, {r3, ip}
.LVL956:
.LBB5195:
.LBB5196:
.LBB5197:
	.loc 28 788 0
	ldr	r4, [r3]
.LBE5197:
.LBE5196:
.LBE5195:
	.loc 14 2161 0
	cmp	ip, #0
	addne	lr, r3, ip, asl #2
	movne	r2, r3
.LBB5200:
.LBB5199:
.LBB5198:
	.loc 28 788 0
	and	r4, r4, #3
.LVL957:
.LBE5198:
.LBE5199:
.LBE5200:
	.loc 14 2161 0
	beq	.L1109
.LVL958:
.L1108:
	.loc 14 2162 0 discriminator 3
	str	r1, [r2], #4
	.loc 14 2161 0 discriminator 3
	cmp	r2, lr
	bne	.L1108
.L1109:
.LVL959:
	.loc 14 2165 0
	add	r2, r3, ip, asl #2
.LBB5201:
.LBB5202:
	.loc 15 95 0
	mov	r3, r3, lsr #5
.LVL960:
.LBE5202:
.LBE5201:
	.loc 14 2164 0
	sub	r2, r2, #1
.LBB5208:
.LBB5207:
	.loc 15 95 0
	mov	r2, r2, lsr #5
	add	r2, r2, #1
	cmp	r2, r3
	bls	.L1107
.L1112:
.LVL961:
	.loc 15 96 0
	mov	r1, r3, asl #5
.LVL962:
.LBB5203:
.LBB5204:
	.loc 4 212 0
@ 212 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r1, c7, c11, 1
@ 0 "" 2
.LBB5205:
.LBB5206:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE5206:
.LBE5205:
.LBE5204:
.LBE5203:
	.loc 15 95 0
	add	r3, r3, #1
.LVL963:
	cmp	r2, r3
	bne	.L1112
.LVL964:
.L1107:
.LBE5207:
.LBE5208:
	.loc 14 2167 0
	cmp	r4, #0
	bne	.L1117
	.loc 14 2172 0
	mov	r0, #0
.LVL965:
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
.LVL966:
	@ sp needed
	ldmfd	sp!, {r4, pc}
.LVL967:
.L1117:
	.cfi_restore_state
	.loc 14 2168 0
	bl	invalidateTLBByASID
.LVL968:
	.loc 14 2172 0
	mov	r0, #0
	add	sp, sp, #8
	.cfi_def_cfa_offset 8
.LVL969:
	@ sp needed
	ldmfd	sp!, {r4, pc}
	.cfi_endproc
.LFE373:
	.size	performPageInvocationRemapPDE, .-performPageInvocationRemapPDE
	.section	.text.unlikely
	.align	2
	.type	pde_pde_invalid_new.part.127, %function
pde_pde_invalid_new.part.127:
.LFB818:
	.loc 28 792 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL970:
	.loc 28 798 0
	movw	r0, #:lower16:.LC60
	movw	r1, #:lower16:.LC30
	.loc 28 792 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 798 0
	movt	r0, #:upper16:.LC60
	movt	r1, #:upper16:.LC30
	movw	r2, #798
	ldr	r3, .L1120
	bl	_assert_fail
.LVL971:
.L1121:
	.align	2
.L1120:
	.word	.LANCHOR4+1564
	.cfi_endproc
.LFE818:
	.size	pde_pde_invalid_new.part.127, .-pde_pde_invalid_new.part.127
	.text
	.align	2
	.global	pageTableMapped
	.type	pageTableMapped, %function
pageTableMapped:
.LFB337:
	.loc 14 536 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL972:
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	mov	r3, r0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 14 536 0
	mov	r4, r1
	.loc 14 541 0
	mov	r0, sp
.LVL973:
	mov	r1, r3
.LVL974:
	.loc 14 536 0
	mov	r5, r2
	.loc 14 541 0
	bl	findPDForASID
.LVL975:
	ldmia	sp, {r0, ip}
.LVL976:
	.loc 14 542 0
	cmp	r0, #0
	bne	.L1124
.LVL977:
	.loc 14 546 0
	mov	r4, r4, lsr #20
.LVL978:
	.loc 14 547 0
	ldr	r3, [ip, r4, asl #2]
.LVL979:
.LBB5217:
.LBB5218:
	.loc 28 783 0
	and	r2, r3, #3
.LBE5218:
.LBE5217:
	.loc 14 549 0
	cmp	r2, #1
	bne	.L1123
.LVL980:
.LBB5219:
.LBB5220:
	.loc 28 866 0
	bic	r3, r3, #1020
.LVL981:
	bic	r3, r3, #3
.LBE5220:
.LBE5219:
.LBB5221:
.LBB5222:
	.loc 3 45 0
	add	r3, r3, #-536870912
.LBE5222:
.LBE5221:
	.loc 14 551 0
	cmp	r5, r3
	moveq	r0, ip
	movne	r0, #0
.LVL982:
.L1123:
	.loc 14 555 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.LVL983:
.L1124:
	.cfi_restore_state
	.loc 14 543 0
	mov	r0, #0
	.loc 14 555 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
	.cfi_endproc
.LFE337:
	.size	pageTableMapped, .-pageTableMapped
	.section	.text.unlikely
	.align	2
	.type	pte_pte_small_ptr_get_address.part.131, %function
pte_pte_small_ptr_get_address.part.131:
.LFB822:
	.loc 28 2532 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL984:
	.loc 28 2534 0
	movw	r0, #:lower16:.LC61
	movw	r1, #:lower16:.LC30
	.loc 28 2532 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 2534 0
	movt	r0, #:upper16:.LC61
	movt	r1, #:upper16:.LC30
	movw	r2, #2535
	ldr	r3, .L1130
	bl	_assert_fail
.LVL985:
.L1131:
	.align	2
.L1130:
	.word	.LANCHOR4+1584
	.cfi_endproc
.LFE822:
	.size	pte_pte_small_ptr_get_address.part.131, .-pte_pte_small_ptr_get_address.part.131
	.align	2
	.type	pte_pte_large_ptr_get_address.part.132, %function
pte_pte_large_ptr_get_address.part.132:
.LFB823:
	.loc 28 2422 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL986:
	.loc 28 2424 0
	movw	r0, #:lower16:.LC62
	movw	r1, #:lower16:.LC30
	.loc 28 2422 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 2424 0
	movt	r0, #:upper16:.LC62
	movt	r1, #:upper16:.LC30
	movw	r2, #2425
	ldr	r3, .L1134
	bl	_assert_fail
.LVL987:
.L1135:
	.align	2
.L1134:
	.word	.LANCHOR4+1616
	.cfi_endproc
.LFE823:
	.size	pte_pte_large_ptr_get_address.part.132, .-pte_pte_large_ptr_get_address.part.132
	.align	2
	.type	pde_pde_section_ptr_get_size.part.133, %function
pde_pde_section_ptr_get_size.part.133:
.LFB824:
	.loc 28 980 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL988:
	.loc 28 982 0
	movw	r0, #:lower16:.LC63
	movw	r1, #:lower16:.LC30
	.loc 28 980 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 982 0
	movt	r0, #:upper16:.LC63
	movt	r1, #:upper16:.LC30
	movw	r2, #983
	ldr	r3, .L1138
	bl	_assert_fail
.LVL989:
.L1139:
	.align	2
.L1138:
	.word	.LANCHOR4+1648
	.cfi_endproc
.LFE824:
	.size	pde_pde_section_ptr_get_size.part.133, .-pde_pde_section_ptr_get_size.part.133
	.align	2
	.type	pde_pde_section_ptr_get_address.part.134, %function
pde_pde_section_ptr_get_address.part.134:
.LFB825:
	.loc 28 952 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL990:
	.loc 28 954 0
	movw	r0, #:lower16:.LC63
	movw	r1, #:lower16:.LC30
	.loc 28 952 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 954 0
	movt	r0, #:upper16:.LC63
	movt	r1, #:upper16:.LC30
	movw	r2, #955
	ldr	r3, .L1142
	bl	_assert_fail
.LVL991:
.L1143:
	.align	2
.L1142:
	.word	.LANCHOR4+1680
	.cfi_endproc
.LFE825:
	.size	pde_pde_section_ptr_get_address.part.134, .-pde_pde_section_ptr_get_address.part.134
	.align	2
	.type	cap_page_directory_cap_get_capPDIsMapped.isra.135.part.136, %function
cap_page_directory_cap_get_capPDIsMapped.isra.135.part.136:
.LFB827:
	.loc 28 2174 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 2176 0
	movw	r0, #:lower16:.LC45
	movw	r1, #:lower16:.LC30
	.loc 28 2174 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 2176 0
	movt	r0, #:upper16:.LC45
	movt	r1, #:upper16:.LC30
	movw	r2, #2177
	ldr	r3, .L1146
	bl	_assert_fail
.LVL992:
.L1147:
	.align	2
.L1146:
	.word	.LANCHOR4+1712
	.cfi_endproc
.LFE827:
	.size	cap_page_directory_cap_get_capPDIsMapped.isra.135.part.136, .-cap_page_directory_cap_get_capPDIsMapped.isra.135.part.136
	.text
	.align	2
	.global	isValidVTableRoot
	.type	isValidVTableRoot, %function
isValidVTableRoot:
.LFB343:
	.loc 14 748 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 14 748 0
	add	r3, sp, #8
	stmdb	r3, {r0, r1}
	ldr	r0, [sp]
.LVL993:
.LBB5223:
.LBB5224:
	.loc 28 1035 0
	and	r3, r0, #14
	cmp	r3, #14
	.loc 28 1037 0
	uxtbeq	r3, r0
	.loc 28 1036 0
	andne	r3, r0, #15
.LBE5224:
.LBE5223:
	.loc 14 749 0
	cmp	r3, #9
	movne	r0, #0
	beq	.L1155
.L1151:
	.loc 14 751 0 discriminator 6
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L1155:
	.cfi_restore_state
.LVL994:
.LBB5225:
.LBB5226:
	.loc 28 2176 0 discriminator 1
	and	r3, r0, #15
	cmp	r3, #9
.LBE5226:
.LBE5225:
	.loc 14 749 0 discriminator 1
	ubfxeq	r0, r0, #4, #1
.LBB5228:
.LBB5227:
	.loc 28 2176 0 discriminator 1
	beq	.L1151
	bl	cap_page_directory_cap_get_capPDIsMapped.isra.135.part.136
.LVL995:
.LBE5227:
.LBE5228:
	.cfi_endproc
.LFE343:
	.size	isValidVTableRoot, .-isValidVTableRoot
	.section	.text.unlikely
	.align	2
	.type	cap_page_directory_cap_get_capPDMappedASID.part.137, %function
cap_page_directory_cap_get_capPDMappedASID.part.137:
.LFB828:
	.loc 28 2133 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 2135 0
	movw	r0, #:lower16:.LC45
	movw	r1, #:lower16:.LC30
	.loc 28 2133 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 2135 0
	movt	r0, #:upper16:.LC45
	movt	r1, #:upper16:.LC30
	movw	r2, #2136
	ldr	r3, .L1158
	bl	_assert_fail
.LVL996:
.L1159:
	.align	2
.L1158:
	.word	.LANCHOR4+1756
	.cfi_endproc
.LFE828:
	.size	cap_page_directory_cap_get_capPDMappedASID.part.137, .-cap_page_directory_cap_get_capPDMappedASID.part.137
	.align	2
	.type	cap_page_table_cap_set_capPTIsMapped.part.141, %function
cap_page_table_cap_set_capPTIsMapped.part.141:
.LFB832:
	.loc 28 2019 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL997:
	.loc 28 2020 0
	movw	r0, #:lower16:.LC44
	movw	r1, #:lower16:.LC30
	.loc 28 2019 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 2020 0
	movt	r0, #:upper16:.LC44
	movt	r1, #:upper16:.LC30
	movw	r2, #2021
	ldr	r3, .L1162
	bl	_assert_fail
.LVL998:
.L1163:
	.align	2
.L1162:
	.word	.LANCHOR4+1800
	.cfi_endproc
.LFE832:
	.size	cap_page_table_cap_set_capPTIsMapped.part.141, .-cap_page_table_cap_set_capPTIsMapped.part.141
	.align	2
	.type	generic_frame_cap_set_capFMappedAddress.part.142, %function
generic_frame_cap_set_capFMappedAddress.part.142:
.LFB833:
	.loc 38 154 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL999:
	.loc 38 159 0
	movw	r0, #:lower16:.LC42
	movw	r1, #:lower16:.LC43
	.loc 38 154 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 38 159 0
	movt	r0, #:upper16:.LC42
	movt	r1, #:upper16:.LC43
	mov	r2, #160
	ldr	r3, .L1166
	bl	_assert_fail
.LVL1000:
.L1167:
	.align	2
.L1166:
	.word	.LANCHOR4+1840
	.cfi_endproc
.LFE833:
	.size	generic_frame_cap_set_capFMappedAddress.part.142, .-generic_frame_cap_set_capFMappedAddress.part.142
	.align	2
	.type	pte_pte_large_new.part.143, %function
pte_pte_large_new.part.143:
.LFB834:
	.loc 28 2365 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1001:
	.loc 28 2371 0
	movw	r0, #:lower16:.LC64
	movw	r1, #:lower16:.LC30
	.loc 28 2365 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 2371 0
	movt	r0, #:upper16:.LC64
	movt	r1, #:upper16:.LC30
	movw	r2, #2371
	ldr	r3, .L1170
	bl	_assert_fail
.LVL1002:
.L1171:
	.align	2
.L1170:
	.word	.LANCHOR4+1880
	.cfi_endproc
.LFE834:
	.size	pte_pte_large_new.part.143, .-pte_pte_large_new.part.143
	.align	2
	.type	message_info_new.part.144, %function
message_info_new.part.144:
.LFB835:
	.loc 41 14 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1003:
	.loc 41 20 0
	movw	r0, #:lower16:.LC65
	movw	r1, #:lower16:.LC66
	.loc 41 14 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 41 20 0
	movt	r0, #:upper16:.LC65
	movt	r1, #:upper16:.LC66
	mov	r2, #20
	ldr	r3, .L1174
	bl	_assert_fail
.LVL1004:
.L1175:
	.align	2
.L1174:
	.word	.LANCHOR4+1900
	.cfi_endproc
.LFE835:
	.size	message_info_new.part.144, .-message_info_new.part.144
	.align	2
	.type	getSyscallArg.part.145, %function
getSyscallArg.part.145:
.LFB836:
	.file 43 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/api/syscall.h"
	.loc 43 27 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1005:
	.loc 43 33 0
	movw	r0, #:lower16:.LC67
	movw	r1, #:lower16:.LC68
	.loc 43 27 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 43 33 0
	movt	r0, #:upper16:.LC67
	movt	r1, #:upper16:.LC68
	mov	r2, #33
	ldr	r3, .L1178
	bl	_assert_fail
.LVL1006:
.L1179:
	.align	2
.L1178:
	.word	.LANCHOR4+1920
	.cfi_endproc
.LFE836:
	.size	getSyscallArg.part.145, .-getSyscallArg.part.145
	.align	2
	.type	cap_untyped_cap_get_capBlockSize.part.146, %function
cap_untyped_cap_get_capBlockSize.part.146:
.LFB837:
	.loc 28 1112 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 1114 0
	movw	r0, #:lower16:.LC37
	movw	r1, #:lower16:.LC30
	.loc 28 1112 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1114 0
	movt	r0, #:upper16:.LC37
	movt	r1, #:upper16:.LC30
	movw	r2, #1115
	ldr	r3, .L1182
	bl	_assert_fail
.LVL1007:
.L1183:
	.align	2
.L1182:
	.word	.LANCHOR4+1936
	.cfi_endproc
.LFE837:
	.size	cap_untyped_cap_get_capBlockSize.part.146, .-cap_untyped_cap_get_capBlockSize.part.146
	.align	2
	.type	cap_asid_pool_cap_get_capASIDBase.part.147, %function
cap_asid_pool_cap_get_capASIDBase.part.147:
.LFB838:
	.loc 28 1951 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 1953 0
	movw	r0, #:lower16:.LC46
	movw	r1, #:lower16:.LC30
	.loc 28 1951 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1953 0
	movt	r0, #:upper16:.LC46
	movt	r1, #:upper16:.LC30
	movw	r2, #1954
	ldr	r3, .L1186
	bl	_assert_fail
.LVL1008:
.L1187:
	.align	2
.L1186:
	.word	.LANCHOR4+1972
	.cfi_endproc
.LFE838:
	.size	cap_asid_pool_cap_get_capASIDBase.part.147, .-cap_asid_pool_cap_get_capASIDBase.part.147
	.align	2
	.type	cap_page_table_cap_get_capPTMappedASID.part.148, %function
cap_page_table_cap_get_capPTMappedASID.part.148:
.LFB839:
	.loc 28 2044 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 2046 0
	movw	r0, #:lower16:.LC44
	movw	r1, #:lower16:.LC30
	.loc 28 2044 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 2046 0
	movt	r0, #:upper16:.LC44
	movt	r1, #:upper16:.LC30
	movw	r2, #2047
	ldr	r3, .L1190
	bl	_assert_fail
.LVL1009:
.L1191:
	.align	2
.L1190:
	.word	.LANCHOR4+2008
	.cfi_endproc
.LFE839:
	.size	cap_page_table_cap_get_capPTMappedASID.part.148, .-cap_page_table_cap_get_capPTMappedASID.part.148
	.align	2
	.type	cap_cnode_cap_get_capCNodeRadix.part.149, %function
cap_cnode_cap_get_capCNodeRadix.part.149:
.LFB840:
	.loc 28 1535 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 1537 0
	movw	r0, #:lower16:.LC38
	movw	r1, #:lower16:.LC30
	.loc 28 1535 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1537 0
	movt	r0, #:upper16:.LC38
	movt	r1, #:upper16:.LC30
	movw	r2, #1538
	ldr	r3, .L1194
	bl	_assert_fail
.LVL1010:
.L1195:
	.align	2
.L1194:
	.word	.LANCHOR4+2048
	.cfi_endproc
.LFE840:
	.size	cap_cnode_cap_get_capCNodeRadix.part.149, .-cap_cnode_cap_get_capCNodeRadix.part.149
	.align	2
	.type	cap_untyped_cap_ptr_set_capFreeIndex.part.150, %function
cap_untyped_cap_ptr_set_capFreeIndex.part.150:
.LFB841:
	.loc 28 1099 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1011:
	.loc 28 1101 0
	movw	r0, #:lower16:.LC69
	movw	r1, #:lower16:.LC30
	.loc 28 1099 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1101 0
	movt	r0, #:upper16:.LC69
	movt	r1, #:upper16:.LC30
	movw	r2, #1102
	ldr	r3, .L1198
	bl	_assert_fail
.LVL1012:
.L1199:
	.align	2
.L1198:
	.word	.LANCHOR4+2080
	.cfi_endproc
.LFE841:
	.size	cap_untyped_cap_ptr_set_capFreeIndex.part.150, .-cap_untyped_cap_ptr_set_capFreeIndex.part.150
	.align	2
	.type	cap_asid_pool_cap_new.part.151, %function
cap_asid_pool_cap_new.part.151:
.LFB842:
	.loc 28 1931 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1013:
	.loc 28 1938 0
	movw	r0, #:lower16:.LC70
	movw	r1, #:lower16:.LC30
	.loc 28 1931 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1938 0
	movt	r0, #:upper16:.LC70
	movt	r1, #:upper16:.LC30
	movw	r2, #1938
	ldr	r3, .L1202
	bl	_assert_fail
.LVL1014:
.L1203:
	.align	2
.L1202:
	.word	.LANCHOR4+2120
	.cfi_endproc
.LFE842:
	.size	cap_asid_pool_cap_new.part.151, .-cap_asid_pool_cap_new.part.151
	.text
	.align	2
	.global	ackInterrupt
	.type	ackInterrupt, %function
ackInterrupt:
.LFB439:
	.loc 7 357 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1015:
	.loc 7 358 0
	movw	r1, #:lower16:.LANCHOR1
	.loc 7 357 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 7 358 0
	movt	r1, #:upper16:.LANCHOR1
	ldr	ip, [r1, #8]
	ubfx	r2, ip, #0, #10
	cmp	r2, #1020
	bcs	.L1205
	.loc 7 358 0 is_stmt 0 discriminator 2
	cmp	r2, r0
	bne	.L1205
.LVL1016:
.LBB5239:
.LBB5240:
	.loc 7 157 0 is_stmt 1
	mov	r0, r2, lsr #4
.LVL1017:
	.loc 7 159 0
	ldr	lr, [r1]
	.loc 7 158 0
	and	r3, r2, #15
	.loc 7 159 0
	add	r0, r0, #768
	.loc 7 158 0
	mov	r3, r3, asl #1
	.loc 7 159 0
	ldr	r0, [lr, r0, asl #2]
	add	r3, r3, #1
	mov	r3, r0, lsr r3
.LBE5240:
.LBE5239:
	.loc 7 359 0
	tst	r3, #1
	beq	.L1207
.LVL1018:
.LBB5241:
.LBB5242:
	.loc 7 179 0
	mov	r3, r2, lsr #5
.LVL1019:
	.loc 7 182 0
	mov	r0, #1
	.loc 7 180 0
	and	r2, r2, #31
	.loc 7 182 0
	mov	r2, r0, asl r2
	add	r3, r3, #160
.LVL1020:
	str	r2, [lr, r3, asl #2]
.LVL1021:
.L1207:
.LBE5242:
.LBE5241:
	.loc 7 362 0
	ldr	r3, [r1, #4]
	.loc 7 363 0
	movw	r2, #1023
	str	r2, [r1, #8]
	.loc 7 362 0
	str	ip, [r3, #16]
	ldmfd	sp!, {r3, pc}
.LVL1022:
.L1205:
.LBB5243:
.LBB5244:
	.loc 7 358 0
	movw	r0, #:lower16:.LC71
.LVL1023:
	movw	r1, #:lower16:.LC72
	movt	r0, #:upper16:.LC71
	movt	r1, #:upper16:.LC72
	movw	r2, #358
	ldr	r3, .L1212
	bl	_assert_fail
.LVL1024:
.L1213:
	.align	2
.L1212:
	.word	.LANCHOR4+2144
.LBE5244:
.LBE5243:
	.cfi_endproc
.LFE439:
	.size	ackInterrupt, .-ackInterrupt
	.align	2
	.global	plat_cleanL2Range
	.type	plat_cleanL2Range, %function
plat_cleanL2Range:
.LFB446:
	.loc 20 368 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1025:
	.loc 20 371 0
	movw	r2, #:lower16:.LANCHOR1
	.loc 20 368 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 20 371 0
	movt	r2, #:upper16:.LANCHOR1
	ldr	r3, [r2, #12]
	ldr	ip, [r3, #4]
	tst	ip, #12288
	bne	.L1223
	.loc 20 374 0
	add	r1, r1, #32
.LVL1026:
	.loc 20 373 0
	bic	r0, r0, #31
.LVL1027:
	.loc 20 374 0
	bic	r1, r1, #31
.LVL1028:
	.loc 20 373 0
	cmp	r0, r1
	beq	.L1219
.L1218:
	.loc 20 376 0
	str	r0, [r3, #1968]
	.loc 20 375 0
	add	r0, r0, #32
.LVL1029:
	.loc 20 373 0
	cmp	r0, r1
	bne	.L1218
.L1219:
.LBB5255:
.LBB5256:
.LBB5257:
.LBB5258:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE5258:
.LBE5257:
	.loc 20 353 0
	ldr	r2, [r2, #12]
	mov	r3, #0
	str	r3, [r2, #1840]
.L1217:
	.loc 20 354 0
	ldr	r3, [r2, #1840]
	tst	r3, #1
	bne	.L1217
.LBE5256:
.LBE5255:
	.loc 20 381 0
	ldmfd	sp!, {r3, pc}
.LVL1030:
.L1223:
.LBB5259:
.LBB5260:
	.loc 20 371 0
	movw	r0, #:lower16:.LC73
.LVL1031:
	movw	r1, #:lower16:.LC74
.LVL1032:
	movt	r0, #:upper16:.LC73
	movt	r1, #:upper16:.LC74
	movw	r2, #371
	ldr	r3, .L1224
	bl	_assert_fail
.LVL1033:
.L1225:
	.align	2
.L1224:
	.word	.LANCHOR4+2160
.LBE5260:
.LBE5259:
	.cfi_endproc
.LFE446:
	.size	plat_cleanL2Range, .-plat_cleanL2Range
	.align	2
	.global	cleanCacheRange_RAM
	.type	cleanCacheRange_RAM, %function
cleanCacheRange_RAM:
.LFB384:
	.loc 15 63 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1034:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB5261:
.LBB5262:
	.loc 15 25 0
	mov	lr, r1, lsr #5
	mov	r3, r0, lsr #5
.LBE5262:
.LBE5261:
	.loc 15 63 0
	mov	r4, r0
.LVL1035:
.LBB5268:
.LBB5267:
	.loc 15 25 0
	add	lr, lr, #1
	cmp	r3, lr
	bcs	.L1228
.L1229:
.LVL1036:
	.loc 15 26 0
	mov	ip, r3, asl #5
.LVL1037:
.LBB5263:
.LBB5264:
	.loc 4 192 0
@ 192 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, ip, c7, c10, 1
@ 0 "" 2
.LBB5265:
.LBB5266:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE5266:
.LBE5265:
.LBE5264:
.LBE5263:
	.loc 15 25 0
	add	r3, r3, #1
.LVL1038:
	cmp	r3, lr
	bne	.L1229
.LVL1039:
.L1228:
.LBE5267:
.LBE5268:
.LBB5269:
.LBB5270:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	add	r1, r1, r2
.LVL1040:
.LBE5270:
.LBE5269:
	.loc 15 81 0
	mov	r0, r2
.LVL1041:
	rsb	r1, r4, r1
	.loc 15 82 0
	ldmfd	sp!, {r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL1042:
	.loc 15 81 0
	b	plat_cleanL2Range
.LVL1043:
	.cfi_endproc
.LFE384:
	.size	cleanCacheRange_RAM, .-cleanCacheRange_RAM
	.align	2
	.global	plat_invalidateL2Range
	.type	plat_invalidateL2Range, %function
plat_invalidateL2Range:
.LFB447:
	.loc 20 384 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1044:
	.loc 20 387 0
	movw	r2, #:lower16:.LANCHOR1
	.loc 20 384 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 20 387 0
	movt	r2, #:upper16:.LANCHOR1
	ldr	r3, [r2, #12]
	ldr	ip, [r3, #4]
	tst	ip, #12288
	bne	.L1241
	.loc 20 393 0
	add	r1, r1, #32
.LVL1045:
	.loc 20 392 0
	bic	r0, r0, #31
.LVL1046:
	.loc 20 393 0
	bic	r1, r1, #31
.LVL1047:
	.loc 20 392 0
	cmp	r0, r1
	beq	.L1237
.L1236:
	.loc 20 395 0
	str	r0, [r3, #1904]
	.loc 20 394 0
	add	r0, r0, #32
.LVL1048:
	.loc 20 392 0
	cmp	r0, r1
	bne	.L1236
.L1237:
.LBB5281:
.LBB5282:
.LBB5283:
.LBB5284:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE5284:
.LBE5283:
	.loc 20 353 0
	ldr	r2, [r2, #12]
	mov	r3, #0
	str	r3, [r2, #1840]
.L1235:
	.loc 20 354 0
	ldr	r3, [r2, #1840]
	tst	r3, #1
	bne	.L1235
.LBE5282:
.LBE5281:
	.loc 20 400 0
	ldmfd	sp!, {r3, pc}
.LVL1049:
.L1241:
.LBB5285:
.LBB5286:
	.loc 20 387 0
	movw	r0, #:lower16:.LC73
.LVL1050:
	movw	r1, #:lower16:.LC74
.LVL1051:
	movt	r0, #:upper16:.LC73
	movt	r1, #:upper16:.LC74
	movw	r2, #387
	ldr	r3, .L1242
	bl	_assert_fail
.LVL1052:
.L1243:
	.align	2
.L1242:
	.word	.LANCHOR4+2180
.LBE5286:
.LBE5285:
	.cfi_endproc
.LFE447:
	.size	plat_invalidateL2Range, .-plat_invalidateL2Range
	.align	2
	.global	invalidateCacheRange_RAM
	.type	invalidateCacheRange_RAM, %function
invalidateCacheRange_RAM:
.LFB386:
	.loc 15 103 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1053:
	.loc 15 112 0
	bic	r3, r0, #31
	.loc 15 103 0
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 15 112 0
	cmp	r3, r0
	.loc 15 103 0
	mov	r4, r0
	mov	r5, r1
	mov	r6, r2
	.loc 15 112 0
	beq	.L1245
	.loc 15 113 0
	mov	r1, r0
.LVL1054:
	bl	cleanCacheRange_RAM
.LVL1055:
.L1245:
	.loc 15 115 0
	add	r3, r5, #1
	bic	r2, r3, #31
	cmp	r3, r2
	beq	.L1246
	.loc 15 116 0
	bic	r0, r5, #31
.LVL1056:
	add	r2, r0, r6
	.loc 15 117 0
	mov	r1, r0
	rsb	r2, r4, r2
	bl	cleanCacheRange_RAM
.LVL1057:
.L1246:
	add	r1, r6, r5
	.loc 15 128 0
	mov	r0, r6
	rsb	r1, r4, r1
	bl	plat_invalidateL2Range
.LVL1058:
	.loc 15 136 0
	mov	r1, r5, lsr #5
	mov	r3, r4, lsr #5
.LVL1059:
	add	r1, r1, #1
	cmp	r3, r1
	bcs	.L1248
.L1249:
.LVL1060:
	.loc 15 137 0 discriminator 3
	mov	r2, r3, asl #5
.LVL1061:
.LBB5287:
.LBB5288:
	.loc 4 227 0 discriminator 3
@ 227 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c7, c6, 1
@ 0 "" 2
.LBB5289:
.LBB5290:
	.loc 2 23 0 discriminator 3
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE5290:
.LBE5289:
.LBE5288:
.LBE5287:
	.loc 15 136 0 discriminator 3
	add	r3, r3, #1
.LVL1062:
	cmp	r3, r1
	bne	.L1249
.LVL1063:
.L1248:
.LBB5291:
.LBB5292:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	ldmfd	sp!, {r4, r5, r6, pc}
.LBE5292:
.LBE5291:
	.cfi_endproc
.LFE386:
	.size	invalidateCacheRange_RAM, .-invalidateCacheRange_RAM
	.align	2
	.global	plat_cleanInvalidateL2Range
	.type	plat_cleanInvalidateL2Range, %function
plat_cleanInvalidateL2Range:
.LFB448:
	.loc 20 403 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1064:
	.loc 20 406 0
	movw	r2, #:lower16:.LANCHOR1
	.loc 20 403 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 20 406 0
	movt	r2, #:upper16:.LANCHOR1
	ldr	r3, [r2, #12]
	ldr	ip, [r3, #4]
	tst	ip, #12288
	bne	.L1262
	.loc 20 409 0
	add	r1, r1, #32
.LVL1065:
	.loc 20 408 0
	bic	r0, r0, #31
.LVL1066:
	.loc 20 409 0
	bic	r1, r1, #31
.LVL1067:
	.loc 20 408 0
	cmp	r0, r1
	beq	.L1258
.L1257:
	.loc 20 412 0
	str	r0, [r3, #1968]
.LBB5307:
.LBB5308:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE5308:
.LBE5307:
	.loc 20 414 0
	ldr	r3, [r2, #12]
	str	r0, [r3, #1904]
	.loc 20 410 0
	add	r0, r0, #32
.LVL1068:
	.loc 20 408 0
	cmp	r0, r1
	bne	.L1257
.L1258:
.LBB5309:
.LBB5310:
.LBB5311:
.LBB5312:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE5312:
.LBE5311:
	.loc 20 353 0
	ldr	r2, [r2, #12]
	mov	r3, #0
	str	r3, [r2, #1840]
.L1256:
	.loc 20 354 0
	ldr	r3, [r2, #1840]
	tst	r3, #1
	bne	.L1256
.LBE5310:
.LBE5309:
	.loc 20 419 0
	ldmfd	sp!, {r3, pc}
.LVL1069:
.L1262:
.LBB5313:
.LBB5314:
	.loc 20 406 0
	movw	r0, #:lower16:.LC73
.LVL1070:
	movw	r1, #:lower16:.LC74
.LVL1071:
	movt	r0, #:upper16:.LC73
	movt	r1, #:upper16:.LC74
	movw	r2, #406
	ldr	r3, .L1263
	bl	_assert_fail
.LVL1072:
.L1264:
	.align	2
.L1263:
	.word	.LANCHOR4+2204
.LBE5314:
.LBE5313:
	.cfi_endproc
.LFE448:
	.size	plat_cleanInvalidateL2Range, .-plat_cleanInvalidateL2Range
	.align	2
	.global	cleanInvalidateCacheRange_RAM
	.type	cleanInvalidateCacheRange_RAM, %function
cleanInvalidateCacheRange_RAM:
.LFB383:
	.loc 15 33 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1073:
	stmfd	sp!, {r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
.LBB5315:
.LBB5316:
	.loc 15 25 0
	mov	r5, r1, lsr #5
	mov	r4, r0, lsr #5
.LVL1074:
.LBE5316:
.LBE5315:
	.loc 15 33 0
	mov	lr, r0
.LBB5322:
.LBB5321:
	.loc 15 25 0
	add	r5, r5, #1
	cmp	r4, r5
	movcc	r3, r4
	bcs	.L1269
.LVL1075:
.L1266:
	.loc 15 26 0
	mov	ip, r3, asl #5
.LVL1076:
.LBB5317:
.LBB5318:
	.loc 4 192 0
@ 192 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, ip, c7, c10, 1
@ 0 "" 2
.LBB5319:
.LBB5320:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE5320:
.LBE5319:
.LBE5318:
.LBE5317:
	.loc 15 25 0
	add	r3, r3, #1
.LVL1077:
	cmp	r3, r5
	bne	.L1266
.LVL1078:
.L1269:
.LBE5321:
.LBE5322:
.LBB5323:
.LBB5324:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	add	r1, r1, r2
.LVL1079:
.LBE5324:
.LBE5323:
	.loc 15 47 0
	mov	r0, r2
.LVL1080:
	rsb	r1, lr, r1
	bl	plat_cleanInvalidateL2Range
.LVL1081:
	.loc 15 53 0
	cmp	r4, r5
	bcs	.L1268
.L1271:
.LVL1082:
	.loc 15 54 0 discriminator 3
	mov	r3, r4, asl #5
.LVL1083:
.LBB5325:
.LBB5326:
	.loc 4 268 0 discriminator 3
@ 268 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r3, c7, c14, 1
@ 0 "" 2
.LBB5327:
.LBB5328:
	.loc 2 17 0 discriminator 3
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LBE5328:
.LBE5327:
.LBE5326:
.LBE5325:
	.loc 15 53 0 discriminator 3
	add	r4, r4, #1
.LVL1084:
	cmp	r4, r5
	bne	.L1271
.LVL1085:
.L1268:
.LBB5329:
.LBB5330:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	ldmfd	sp!, {r3, r4, r5, pc}
.LBE5330:
.LBE5329:
	.cfi_endproc
.LFE383:
	.size	cleanInvalidateCacheRange_RAM, .-cleanInvalidateCacheRange_RAM
	.align	2
	.global	doFlush
	.type	doFlush, %function
doFlush:
.LFB377:
	.loc 14 2225 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1086:
	.loc 14 2230 0
	sub	ip, r0, #29
	.loc 14 2225 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 14 2225 0
	mov	r0, r1
.LVL1087:
	.loc 14 2230 0
	cmp	ip, #12
	ldrls	pc, [pc, ip, asl #2]
	b	.L1277
.L1279:
	.word	.L1278
	.word	.L1280
	.word	.L1281
	.word	.L1282
	.word	.L1277
	.word	.L1277
	.word	.L1277
	.word	.L1277
	.word	.L1277
	.word	.L1278
	.word	.L1280
	.word	.L1281
	.word	.L1282
.L1282:
.LVL1088:
.LBB5331:
.LBB5332:
	.loc 15 95 0
	mov	r2, r2, lsr #5
.LVL1089:
	mov	r0, r1, lsr #5
.LVL1090:
	add	r2, r2, #1
	cmp	r0, r2
	movcc	r3, r0
.LVL1091:
	bcs	.L1286
.LVL1092:
.L1283:
	.loc 15 96 0
	mov	r1, r3, asl #5
.LVL1093:
.LBB5333:
.LBB5334:
	.loc 4 212 0
@ 212 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r1, c7, c11, 1
@ 0 "" 2
.LBB5335:
.LBB5336:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE5336:
.LBE5335:
.LBE5334:
.LBE5333:
	.loc 15 95 0
	add	r3, r3, #1
.LVL1094:
	cmp	r3, r2
	bne	.L1283
.LVL1095:
.L1286:
.LBE5332:
.LBE5331:
.LBB5337:
.LBB5338:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LVL1096:
.LBE5338:
.LBE5337:
.LBB5339:
.LBB5340:
	.loc 15 150 0
	cmp	r0, r2
	movcc	r3, r0
	bcs	.L1285
.LVL1097:
.L1284:
	.loc 15 151 0
	mov	r1, r3, asl #5
.LVL1098:
.LBB5341:
.LBB5342:
	.loc 4 240 0
@ 240 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r1, c7, c5, 1
@ 0 "" 2
.LBB5343:
.LBB5344:
	.loc 2 29 0
@ 29 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LBE5344:
.LBE5343:
.LBE5342:
.LBE5341:
	.loc 15 150 0
	add	r3, r3, #1
.LVL1099:
	cmp	r3, r2
	bne	.L1284
.LVL1100:
.L1291:
.LBE5340:
.LBE5339:
.LBB5345:
.LBB5346:
	.loc 15 163 0
	mov	r3, r0, asl #5
.LVL1101:
.LBB5347:
.LBB5348:
	.loc 4 277 0
@ 277 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r3, c7, c5, 7
@ 0 "" 2
.LBE5348:
.LBE5347:
	.loc 15 162 0
	add	r0, r0, #1
.LVL1102:
	cmp	r0, r2
	bne	.L1291
.LVL1103:
.L1285:
.LBE5346:
.LBE5345:
.LBB5349:
.LBB5350:
	.loc 2 29 0
@ 29 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	ldmfd	sp!, {r3, pc}
.LVL1104:
.L1281:
.LBE5350:
.LBE5349:
	.loc 14 2241 0
	mov	r1, r2
	mov	r2, r3
.LVL1105:
	.loc 14 2261 0
	ldmfd	sp!, {r3, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL1106:
	.loc 14 2241 0
	b	cleanInvalidateCacheRange_RAM
.LVL1107:
.L1280:
	.cfi_restore_state
	.loc 14 2237 0
	mov	r1, r2
	mov	r2, r3
.LVL1108:
	.loc 14 2261 0
	ldmfd	sp!, {r3, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL1109:
	.loc 14 2237 0
	b	invalidateCacheRange_RAM
.LVL1110:
.L1278:
	.cfi_restore_state
	.loc 14 2233 0
	mov	r1, r2
	mov	r2, r3
.LVL1111:
	.loc 14 2261 0
	ldmfd	sp!, {r3, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL1112:
	.loc 14 2233 0
	b	cleanCacheRange_RAM
.LVL1113:
.L1277:
	.cfi_restore_state
	.loc 14 2259 0
	movw	r0, #:lower16:.LC75
.LVL1114:
	movw	r1, #:lower16:.LC23
.LVL1115:
	movt	r0, #:upper16:.LC75
	movt	r1, #:upper16:.LC23
	movw	r2, #2259
.LVL1116:
	ldr	r3, .L1297
.LVL1117:
	bl	_fail
.LVL1118:
.L1298:
	.align	2
.L1297:
	.word	.LANCHOR4+2232
	.cfi_endproc
.LFE377:
	.size	doFlush, .-doFlush
	.align	2
	.global	Arch_maskCapRights
	.type	Arch_maskCapRights, %function
Arch_maskCapRights:
.LFB454:
	.loc 23 82 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1119:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
	.loc 23 82 0
	add	ip, sp, #8
	mov	r5, r0
	stmdb	ip, {r2, r3}
	ldr	r6, [sp]
.LVL1120:
	ldr	r4, [sp, #4]
.LVL1121:
.LBB5365:
.LBB5366:
	.loc 28 1035 0
	and	r3, r6, #14
	cmp	r3, #14
	beq	.L1300
	.loc 28 1036 0
	and	r3, r6, #15
.LBE5366:
.LBE5365:
	.loc 23 83 0
	cmp	r3, #1
	beq	.L1301
.L1302:
	.loc 23 91 0
	cmp	r3, #3
	.loc 23 100 0
	strne	r6, [r5]
	strne	r4, [r5, #4]
	.loc 23 91 0
	beq	.L1315
	.loc 23 102 0
	mov	r0, r5
.LVL1122:
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL1123:
.L1300:
	.cfi_restore_state
.LBB5368:
.LBB5367:
	.loc 28 1037 0
	uxtb	r3, r6
.LBE5367:
.LBE5368:
	.loc 23 83 0
	cmp	r3, #1
	bne	.L1302
.LVL1124:
	and	r3, r6, #15
.LBB5369:
.LBB5370:
.LBB5371:
	.loc 28 1677 0
	cmp	r3, #1
	bne	.L1316
.LVL1125:
.L1301:
.LBE5371:
.LBE5370:
	.loc 23 88 0
	ubfx	r0, r4, #20, #2
.LVL1126:
	bl	maskVMRights
.LVL1127:
.LBB5373:
.LBB5374:
	.loc 28 1693 0
	movw	r3, #4092
	and	r3, r3, r0
	cmp	r3, #0
	bne	.L1317
.LVL1128:
	.loc 28 1696 0
	mov	r0, r0, asl #20
.LVL1129:
	.loc 28 1695 0
	bic	r4, r4, #3145728
.LVL1130:
	.loc 28 1697 0
	str	r6, [r5]
	.loc 28 1696 0
	and	r0, r0, #3145728
	orr	r0, r0, r4
.LVL1131:
	.loc 28 1697 0
	str	r0, [r5, #4]
.LBE5374:
.LBE5373:
.LBE5369:
	.loc 23 102 0
	mov	r0, r5
.LVL1132:
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL1133:
.L1315:
	.cfi_restore_state
.LBB5378:
.LBB5379:
.LBB5380:
	.loc 28 1841 0
	and	r3, r6, #15
	cmp	r3, #3
	bne	.L1318
.LVL1134:
.LBE5380:
.LBE5379:
	.loc 23 96 0
	ubfx	r0, r4, #18, #2
.LVL1135:
	bl	maskVMRights
.LVL1136:
.LBB5382:
.LBB5383:
	.loc 28 1857 0
	movw	r3, #16380
	and	r3, r3, r0
	cmp	r3, #0
	bne	.L1319
	.loc 28 1860 0
	mov	r0, r0, asl #18
.LVL1137:
	.loc 28 1859 0
	bic	r4, r4, #786432
.LVL1138:
	.loc 28 1861 0
	str	r6, [r5]
	.loc 28 1860 0
	and	r0, r0, #786432
	orr	r0, r0, r4
	.loc 28 1861 0
	str	r0, [r5, #4]
.LBE5383:
.LBE5382:
.LBE5378:
	.loc 23 102 0
	mov	r0, r5
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL1139:
.L1316:
	.cfi_restore_state
.LBB5387:
.LBB5376:
.LBB5372:
	bl	cap_small_frame_cap_get_capFVMRights.part.117
.LVL1140:
.L1317:
.LBE5372:
.LBE5376:
.LBB5377:
.LBB5375:
	.loc 28 1693 0
	movw	r0, #:lower16:.LC76
.LVL1141:
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC76
	movt	r1, #:upper16:.LC30
	movw	r2, #1693
	ldr	r3, .L1320
	bl	_assert_fail
.LVL1142:
.L1318:
.LBE5375:
.LBE5377:
.LBE5387:
.LBB5388:
.LBB5385:
.LBB5381:
	bl	cap_frame_cap_get_capFVMRights.part.118
.LVL1143:
.L1319:
.LBE5381:
.LBE5385:
.LBB5386:
.LBB5384:
	.loc 28 1857 0
	movw	r0, #:lower16:.LC77
.LVL1144:
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC77
	movt	r1, #:upper16:.LC30
	movw	r2, #1857
	ldr	r3, .L1320+4
	bl	_assert_fail
.LVL1145:
.L1321:
	.align	2
.L1320:
	.word	.LANCHOR4+2240
	.word	.LANCHOR4+2280
.LBE5384:
.LBE5386:
.LBE5388:
	.cfi_endproc
.LFE454:
	.size	Arch_maskCapRights, .-Arch_maskCapRights
	.section	.text.unlikely
	.align	2
	.type	fault_cap_fault_get_address.part.157, %function
fault_cap_fault_get_address.part.157:
.LFB848:
	.loc 28 603 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 605 0
	movw	r0, #:lower16:.LC78
	movw	r1, #:lower16:.LC30
	.loc 28 603 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 605 0
	movt	r0, #:upper16:.LC78
	movt	r1, #:upper16:.LC30
	movw	r2, #606
	ldr	r3, .L1324
	bl	_assert_fail
.LVL1146:
.L1325:
	.align	2
.L1324:
	.word	.LANCHOR4+2312
	.cfi_endproc
.LFE848:
	.size	fault_cap_fault_get_address.part.157, .-fault_cap_fault_get_address.part.157
	.align	2
	.type	fault_cap_fault_get_inReceivePhase.isra.158.part.159, %function
fault_cap_fault_get_inReceivePhase.isra.158.part.159:
.LFB850:
	.loc 28 617 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 619 0
	movw	r0, #:lower16:.LC78
	movw	r1, #:lower16:.LC30
	.loc 28 617 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 619 0
	movt	r0, #:upper16:.LC78
	movt	r1, #:upper16:.LC30
	mov	r2, #620
	ldr	r3, .L1328
	bl	_assert_fail
.LVL1147:
.L1329:
	.align	2
.L1328:
	.word	.LANCHOR4+2340
	.cfi_endproc
.LFE850:
	.size	fault_cap_fault_get_inReceivePhase.isra.158.part.159, .-fault_cap_fault_get_inReceivePhase.isra.158.part.159
	.align	2
	.type	setMRs_lookup_failure.part.165, %function
setMRs_lookup_failure.part.165:
.LFB856:
	.loc 24 36 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1148:
.LBB5389:
.LBB5390:
	.loc 28 2694 0
	movw	r0, #:lower16:.LC79
	movw	r1, #:lower16:.LC30
.LBE5390:
.LBE5389:
	.loc 24 36 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
.LBB5392:
.LBB5391:
	.loc 28 2694 0
	movt	r0, #:upper16:.LC79
	movt	r1, #:upper16:.LC30
	movw	r2, #2695
	ldr	r3, .L1332
	bl	_assert_fail
.LVL1149:
.L1333:
	.align	2
.L1332:
	.word	.LANCHOR4+2376
.LBE5391:
.LBE5392:
	.cfi_endproc
.LFE856:
	.size	setMRs_lookup_failure.part.165, .-setMRs_lookup_failure.part.165
	.align	2
	.type	fault_vm_fault_get_address.part.167, %function
fault_vm_fault_get_address.part.167:
.LFB858:
	.loc 28 652 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 654 0
	movw	r0, #:lower16:.LC80
	movw	r1, #:lower16:.LC30
	.loc 28 652 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 654 0
	movt	r0, #:upper16:.LC80
	movt	r1, #:upper16:.LC30
	movw	r2, #655
	ldr	r3, .L1336
	bl	_assert_fail
.LVL1150:
.L1337:
	.align	2
.L1336:
	.word	.LANCHOR4+2420
	.cfi_endproc
.LFE858:
	.size	fault_vm_fault_get_address.part.167, .-fault_vm_fault_get_address.part.167
	.align	2
	.type	fault_vm_fault_get_instructionFault.isra.168.part.169, %function
fault_vm_fault_get_instructionFault.isra.168.part.169:
.LFB860:
	.loc 28 680 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 682 0
	movw	r0, #:lower16:.LC80
	movw	r1, #:lower16:.LC30
	.loc 28 680 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 682 0
	movt	r0, #:upper16:.LC80
	movt	r1, #:upper16:.LC30
	movw	r2, #683
	ldr	r3, .L1340
	bl	_assert_fail
.LVL1151:
.L1341:
	.align	2
.L1340:
	.word	.LANCHOR4+2448
	.cfi_endproc
.LFE860:
	.size	fault_vm_fault_get_instructionFault.isra.168.part.169, .-fault_vm_fault_get_instructionFault.isra.168.part.169
	.align	2
	.type	fault_vm_fault_get_FSR.isra.170.part.171, %function
fault_vm_fault_get_FSR.isra.170.part.171:
.LFB862:
	.loc 28 666 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 668 0
	movw	r0, #:lower16:.LC80
	movw	r1, #:lower16:.LC30
	.loc 28 666 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 668 0
	movt	r0, #:upper16:.LC80
	movt	r1, #:upper16:.LC30
	movw	r2, #669
	ldr	r3, .L1344
	bl	_assert_fail
.LVL1152:
.L1345:
	.align	2
.L1344:
	.word	.LANCHOR4+2484
	.cfi_endproc
.LFE862:
	.size	fault_vm_fault_get_FSR.isra.170.part.171, .-fault_vm_fault_get_FSR.isra.170.part.171
	.align	2
	.type	fault_unknown_syscall_get_syscallNumber.part.172, %function
fault_unknown_syscall_get_syscallNumber.part.172:
.LFB863:
	.loc 28 709 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 711 0
	movw	r0, #:lower16:.LC81
	movw	r1, #:lower16:.LC30
	.loc 28 709 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 711 0
	movt	r0, #:upper16:.LC81
	movt	r1, #:upper16:.LC30
	mov	r2, #712
	ldr	r3, .L1348
	bl	_assert_fail
.LVL1153:
.L1349:
	.align	2
.L1348:
	.word	.LANCHOR4+2508
	.cfi_endproc
.LFE863:
	.size	fault_unknown_syscall_get_syscallNumber.part.172, .-fault_unknown_syscall_get_syscallNumber.part.172
	.align	2
	.type	fault_user_exception_get_number.part.173, %function
fault_user_exception_get_number.part.173:
.LFB864:
	.loc 28 741 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 743 0
	movw	r0, #:lower16:.LC82
	movw	r1, #:lower16:.LC30
	.loc 28 741 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 743 0
	movt	r0, #:upper16:.LC82
	movt	r1, #:upper16:.LC30
	mov	r2, #744
	ldr	r3, .L1352
	bl	_assert_fail
.LVL1154:
.L1353:
	.align	2
.L1352:
	.word	.LANCHOR4+2548
	.cfi_endproc
.LFE864:
	.size	fault_user_exception_get_number.part.173, .-fault_user_exception_get_number.part.173
	.align	2
	.type	fault_user_exception_get_code.isra.174.part.175, %function
fault_user_exception_get_code.isra.174.part.175:
.LFB866:
	.loc 28 755 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 757 0
	movw	r0, #:lower16:.LC82
	movw	r1, #:lower16:.LC30
	.loc 28 755 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 757 0
	movt	r0, #:upper16:.LC82
	movt	r1, #:upper16:.LC30
	movw	r2, #758
	ldr	r3, .L1356
	bl	_assert_fail
.LVL1155:
.L1357:
	.align	2
.L1356:
	.word	.LANCHOR4+2580
	.cfi_endproc
.LFE866:
	.size	fault_user_exception_get_code.isra.174.part.175, .-fault_user_exception_get_code.isra.174.part.175
	.text
	.align	2
	.global	setMRs_fault
	.type	setMRs_fault, %function
setMRs_fault:
.LFB467:
	.loc 24 73 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1156:
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
.LBB5531:
.LBB5532:
	.loc 28 566 0
	ldr	r3, [r0, #88]
	and	r3, r3, #7
.LBE5532:
.LBE5531:
	.loc 24 74 0
	sub	r3, r3, #1
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L1359
.L1361:
	.word	.L1360
	.word	.L1362
	.word	.L1363
	.word	.L1364
.L1363:
.LVL1157:
.LBB5533:
.LBB5534:
.LBB5535:
	.loc 13 21 0 discriminator 1
	ldr	r3, [r0]
.LBE5535:
.LBE5534:
	.loc 24 101 0 discriminator 1
	cmp	r2, #0
.LBB5537:
.LBB5536:
	.loc 13 21 0 discriminator 1
	str	r3, [r1, #8]
.LVL1158:
	ldr	r3, [r0, #4]
	str	r3, [r1, #12]
.LVL1159:
	ldr	r3, [r0, #8]
	str	r3, [r1, #16]
.LVL1160:
	ldr	r3, [r0, #12]
	str	r3, [r1, #20]
.LVL1161:
.LBE5536:
.LBE5537:
	.loc 24 101 0 discriminator 1
	beq	.L1396
	ldr	r3, .L1408
.LVL1162:
	add	r1, r2, #16
.LVL1163:
	add	lr, r3, #32
.LVL1164:
.L1378:
.LBB5538:
.LBB5539:
	.loc 13 27 0 discriminator 2
	ldr	ip, [r3, #4]!
.LVL1165:
	ldr	ip, [r0, ip, asl #2]
.LBE5539:
.LBE5538:
	.loc 24 102 0 discriminator 2
	cmp	r3, lr
	.loc 24 103 0 discriminator 2
	str	ip, [r1, #4]!
.LVL1166:
	.loc 24 102 0 discriminator 2
	bne	.L1378
.LVL1167:
.LBB5540:
.LBB5541:
	.loc 28 711 0
	ldr	r3, [r0, #88]
	ldr	r1, [r0, #92]
.LVL1168:
	and	r3, r3, #7
	cmp	r3, #3
	bne	.L1399
.LVL1169:
.LBE5541:
.LBE5540:
	.loc 24 107 0
	str	r1, [r2, #52]
.LVL1170:
	.loc 24 109 0
	mov	r0, #13
.LVL1171:
	ldmfd	sp!, {r3, pc}
.LVL1172:
.L1362:
.LBE5533:
.LBB5544:
.LBB5545:
.LBB5546:
	.loc 13 21 0
	ldr	r3, [r0, #68]
	str	r3, [r1, #8]
.LVL1173:
.LBE5546:
.LBE5545:
.LBE5544:
.LBB5547:
.LBB5548:
	.loc 28 654 0
	ldr	r3, [r0, #88]
.LVL1174:
	ldr	r2, [r0, #92]
.LVL1175:
	and	r3, r3, #7
	cmp	r3, #2
	bne	.L1400
.LVL1176:
.LBE5548:
.LBE5547:
.LBB5550:
.LBB5551:
.LBB5552:
	.loc 13 21 0
	str	r2, [r1, #12]
.LVL1177:
	ldr	r3, [r0, #88]
.LVL1178:
.LBE5552:
.LBE5551:
.LBE5550:
.LBB5553:
.LBB5554:
	.loc 28 682 0
	and	r2, r3, #7
.LVL1179:
	cmp	r2, #2
	bne	.L1401
.LVL1180:
	.loc 28 685 0
	ubfx	r3, r3, #17, #1
.LVL1181:
.LBE5554:
.LBE5553:
.LBB5556:
.LBB5557:
.LBB5558:
	.loc 13 21 0
	str	r3, [r1, #16]
.LVL1182:
	ldr	r3, [r0, #88]
.LVL1183:
.LBE5558:
.LBE5557:
.LBE5556:
.LBB5559:
.LBB5560:
	.loc 28 668 0
	and	r2, r3, #7
	cmp	r2, #2
	bne	.L1402
.LVL1184:
	.loc 28 671 0
	mov	r3, r3, lsr #18
.LVL1185:
.LBE5560:
.LBE5559:
	.loc 24 90 0
	mov	r0, #4
.LVL1186:
.LBB5562:
.LBB5563:
.LBB5564:
	.loc 13 21 0
	str	r3, [r1, #20]
.LVL1187:
.LBE5564:
.LBE5563:
.LBE5562:
	.loc 24 90 0
	ldmfd	sp!, {r3, pc}
.LVL1188:
.L1360:
.LBB5565:
.LBB5566:
.LBB5567:
	.loc 13 21 0
	ldr	r3, [r0, #68]
	str	r3, [r1, #8]
.LVL1189:
.LBE5567:
.LBE5566:
.LBE5565:
.LBB5568:
.LBB5569:
	.loc 28 605 0
	ldr	r3, [r0, #88]
.LVL1190:
	ldr	ip, [r0, #92]
.LVL1191:
	and	r3, r3, #7
	cmp	r3, #1
	bne	.L1403
.LVL1192:
.LBE5569:
.LBE5568:
.LBB5571:
.LBB5572:
.LBB5573:
	.loc 13 21 0
	str	ip, [r1, #12]
.LVL1193:
	ldr	r3, [r0, #88]
.LVL1194:
.LBE5573:
.LBE5572:
.LBE5571:
.LBB5574:
.LBB5575:
	.loc 28 619 0
	and	ip, r3, #7
.LVL1195:
	cmp	ip, #1
	bne	.L1404
.LVL1196:
	.loc 28 622 0
	mov	r3, r3, lsr #31
.LVL1197:
.LBE5575:
.LBE5574:
.LBB5577:
.LBB5578:
.LBB5579:
	.loc 13 21 0
	str	r3, [r1, #16]
.LVL1198:
	ldr	ip, [r0, #96]
.LVL1199:
	ldr	lr, [r0, #100]
.LVL1200:
.LBE5579:
.LBE5578:
.LBE5577:
.LBB5580:
.LBB5581:
.LBB5582:
.LBB5583:
	.loc 28 2574 0
	and	r3, ip, #3
.LVL1201:
.LBE5583:
.LBE5582:
	.loc 24 44 0
	cmp	r3, #2
	.loc 24 42 0
	add	r0, r3, #1
.LVL1202:
.LBB5584:
.LBB5585:
.LBB5586:
	.loc 13 21 0
	str	r0, [r1, #20]
.LBE5586:
.LBE5585:
.LBE5584:
	.loc 24 44 0
	beq	.L1372
	cmp	r3, #3
	beq	.L1373
	cmp	r3, #1
	beq	.L1405
.LVL1203:
.L1396:
	.loc 24 46 0
	mov	r0, #4
.LBE5581:
.LBE5580:
	.loc 24 133 0
	ldmfd	sp!, {r3, pc}
.LVL1204:
.L1364:
.LBB5628:
.LBB5629:
.LBB5630:
	.loc 13 21 0 discriminator 1
	ldr	r3, [r0, #68]
	str	r3, [r1, #8]
.LVL1205:
	ldr	r3, [r0, #52]
	str	r3, [r1, #12]
.LVL1206:
	ldr	r3, [r0, #64]
	str	r3, [r1, #16]
.LVL1207:
.LBE5630:
.LBE5629:
.LBB5631:
.LBB5632:
	.loc 28 743 0 discriminator 1
	ldr	r3, [r0, #88]
.LVL1208:
	ldr	ip, [r0, #92]
.LVL1209:
	and	r3, r3, #7
	cmp	r3, #4
	bne	.L1406
.LVL1210:
.LBE5632:
.LBE5631:
.LBB5634:
.LBB5635:
.LBB5636:
	.loc 13 21 0
	str	ip, [r1, #20]
.LVL1211:
	ldr	r3, [r0, #88]
.LVL1212:
.LBE5636:
.LBE5635:
.LBE5634:
.LBB5637:
.LBB5638:
	.loc 28 757 0
	and	r1, r3, #7
.LVL1213:
	cmp	r1, #4
	bne	.L1407
.LVL1214:
.LBE5638:
.LBE5637:
.LBB5641:
.LBB5642:
.LBB5643:
	.loc 24 23 0
	cmp	r2, #0
	beq	.L1396
.LBE5643:
.LBE5642:
.LBE5641:
.LBB5646:
.LBB5639:
	.loc 28 760 0
	mov	r3, r3, lsr #3
.LVL1215:
.LBE5639:
.LBE5646:
.LBB5647:
.LBB5645:
.LBB5644:
	.loc 24 25 0
	mov	r0, #5
.LVL1216:
	.loc 24 24 0
	str	r3, [r2, #20]
.LVL1217:
	ldmfd	sp!, {r3, pc}
.LVL1218:
.L1359:
.LBE5644:
.LBE5645:
.LBE5647:
.LBE5628:
	.loc 24 131 0
	movw	r0, #:lower16:.LC54
.LVL1219:
	movw	r1, #:lower16:.LC83
.LVL1220:
	movt	r0, #:upper16:.LC54
	movt	r1, #:upper16:.LC83
	mov	r2, #131
.LVL1221:
	ldr	r3, .L1408+4
	bl	_fail
.LVL1222:
.L1400:
.LBB5650:
.LBB5549:
	bl	fault_vm_fault_get_address.part.167
.LVL1223:
.L1403:
.LBE5549:
.LBE5650:
.LBB5651:
.LBB5570:
	bl	fault_cap_fault_get_address.part.157
.LVL1224:
.L1406:
.LBE5570:
.LBE5651:
.LBB5652:
.LBB5648:
.LBB5633:
	bl	fault_user_exception_get_number.part.173
.LVL1225:
.L1372:
.LBE5633:
.LBE5648:
.LBE5652:
.LBB5653:
.LBB5627:
.LBB5587:
.LBB5588:
.LBB5589:
	.loc 24 23 0
	cmp	r2, #0
	beq	.L1396
.LBE5589:
.LBE5588:
.LBE5587:
.LBB5592:
.LBB5593:
	.loc 28 2662 0
	ubfx	r3, ip, #2, #6
.LBE5593:
.LBE5592:
.LBB5594:
.LBB5595:
	.loc 28 2648 0
	ubfx	ip, ip, #8, #6
.LVL1226:
.LBE5595:
.LBE5594:
.LBB5596:
.LBB5591:
.LBB5590:
	.loc 24 24 0
	str	r3, [r2, #20]
.LVL1227:
.LBE5590:
.LBE5591:
.LBE5596:
.LBB5597:
.LBB5598:
.LBB5599:
	.loc 24 25 0
	mov	r0, #6
.LVL1228:
	.loc 24 24 0
	str	ip, [r2, #24]
	ldmfd	sp!, {r3, pc}
.LVL1229:
.L1373:
.LBE5599:
.LBE5598:
.LBE5597:
.LBB5600:
.LBB5601:
.LBB5602:
	.loc 24 23 0
	cmp	r2, #0
	beq	.L1396
.LBE5602:
.LBE5601:
.LBE5600:
.LBB5605:
.LBB5606:
	.loc 28 2711 0
	ubfx	r3, ip, #8, #6
.LBE5606:
.LBE5605:
.LBB5607:
.LBB5608:
	.loc 28 2725 0
	ubfx	ip, ip, #2, #6
.LVL1230:
.LBE5608:
.LBE5607:
.LBB5609:
.LBB5610:
.LBB5611:
	.loc 24 24 0
	str	lr, [r2, #24]
.LVL1231:
.LBE5611:
.LBE5610:
.LBE5609:
.LBB5612:
.LBB5613:
.LBB5614:
	.loc 24 25 0
	mov	r0, #7
.LVL1232:
.LBE5614:
.LBE5613:
.LBE5612:
.LBB5617:
.LBB5604:
.LBB5603:
	.loc 24 24 0
	str	r3, [r2, #20]
.LVL1233:
.LBE5603:
.LBE5604:
.LBE5617:
.LBB5618:
.LBB5616:
.LBB5615:
	str	ip, [r2, #28]
	ldmfd	sp!, {r3, pc}
.LVL1234:
.L1405:
.LBE5615:
.LBE5616:
.LBE5618:
.LBB5619:
.LBB5620:
.LBB5621:
	.loc 24 23 0
	cmp	r2, #0
	beq	.L1396
.LBE5621:
.LBE5620:
.LBE5619:
.LBB5624:
.LBB5625:
	.loc 28 2614 0
	ubfx	ip, ip, #2, #6
.LVL1235:
.LBE5625:
.LBE5624:
.LBB5626:
.LBB5623:
.LBB5622:
	.loc 24 25 0
	mov	r0, #5
.LVL1236:
	.loc 24 24 0
	str	ip, [r2, #20]
.LVL1237:
	ldmfd	sp!, {r3, pc}
.LVL1238:
.L1401:
.LBE5622:
.LBE5623:
.LBE5626:
.LBE5627:
.LBE5653:
.LBB5654:
.LBB5555:
	bl	fault_vm_fault_get_instructionFault.isra.168.part.169
.LVL1239:
.L1402:
.LBE5555:
.LBE5654:
.LBB5655:
.LBB5561:
	bl	fault_vm_fault_get_FSR.isra.170.part.171
.LVL1240:
.L1404:
.LBE5561:
.LBE5655:
.LBB5656:
.LBB5576:
	bl	fault_cap_fault_get_inReceivePhase.isra.158.part.159
.LVL1241:
.L1407:
.LBE5576:
.LBE5656:
.LBB5657:
.LBB5649:
.LBB5640:
	bl	fault_user_exception_get_code.isra.174.part.175
.LVL1242:
.L1399:
.LBE5640:
.LBE5649:
.LBE5657:
.LBB5658:
.LBB5543:
.LBB5542:
	bl	fault_unknown_syscall_get_syscallNumber.part.172
.LVL1243:
.L1409:
	.align	2
.L1408:
	.word	.LANCHOR4+1388
	.word	.LANCHOR4+2612
.LBE5542:
.LBE5543:
.LBE5658:
	.cfi_endproc
.LFE467:
	.size	setMRs_fault, .-setMRs_fault
	.section	.text.unlikely
	.align	2
	.type	cap_cnode_cap_get_capCNodeGuardSize.part.176, %function
cap_cnode_cap_get_capCNodeGuardSize.part.176:
.LFB867:
	.loc 28 1509 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 1511 0
	movw	r0, #:lower16:.LC38
	movw	r1, #:lower16:.LC30
	.loc 28 1509 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1511 0
	movt	r0, #:upper16:.LC38
	movt	r1, #:upper16:.LC30
	movw	r2, #1512
	ldr	r3, .L1412
	bl	_assert_fail
.LVL1244:
.L1413:
	.align	2
.L1412:
	.word	.LANCHOR4+2628
	.cfi_endproc
.LFE867:
	.size	cap_cnode_cap_get_capCNodeGuardSize.part.176, .-cap_cnode_cap_get_capCNodeGuardSize.part.176
	.align	2
	.type	cap_cnode_cap_get_capCNodeGuard.part.177, %function
cap_cnode_cap_get_capCNodeGuard.part.177:
.LFB868:
	.loc 28 1549 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 1551 0
	movw	r0, #:lower16:.LC38
	movw	r1, #:lower16:.LC30
	.loc 28 1549 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1551 0
	movt	r0, #:upper16:.LC38
	movt	r1, #:upper16:.LC30
	mov	r2, #1552
	ldr	r3, .L1416
	bl	_assert_fail
.LVL1245:
.L1417:
	.align	2
.L1416:
	.word	.LANCHOR4+2664
	.cfi_endproc
.LFE868:
	.size	cap_cnode_cap_get_capCNodeGuard.part.177, .-cap_cnode_cap_get_capCNodeGuard.part.177
	.text
	.align	2
	.type	cap_endpoint_cap_get_capCanSend.part.178, %function
cap_endpoint_cap_get_capCanSend.part.178:
.LFB869:
	.loc 28 1249 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 1251 0
	movw	r0, #:lower16:.LC32
	movw	r1, #:lower16:.LC30
	.loc 28 1249 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1251 0
	movt	r0, #:upper16:.LC32
	movt	r1, #:upper16:.LC30
	movw	r2, #1252
	ldr	r3, .L1420
	bl	_assert_fail
.LVL1246:
.L1421:
	.align	2
.L1420:
	.word	.LANCHOR4+2696
	.cfi_endproc
.LFE869:
	.size	cap_endpoint_cap_get_capCanSend.part.178, .-cap_endpoint_cap_get_capCanSend.part.178
	.align	2
	.type	cap_endpoint_cap_get_capCanGrant.part.179, %function
cap_endpoint_cap_get_capCanGrant.part.179:
.LFB870:
	.loc 28 1197 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 1199 0
	movw	r0, #:lower16:.LC32
	movw	r1, #:lower16:.LC30
	.loc 28 1197 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1199 0
	movt	r0, #:upper16:.LC32
	movt	r1, #:upper16:.LC30
	mov	r2, #1200
	ldr	r3, .L1424
	bl	_assert_fail
.LVL1247:
.L1425:
	.align	2
.L1424:
	.word	.LANCHOR4+2728
	.cfi_endproc
.LFE870:
	.size	cap_endpoint_cap_get_capCanGrant.part.179, .-cap_endpoint_cap_get_capCanGrant.part.179
	.align	2
	.type	cap_endpoint_cap_get_capEPBadge.isra.180.part.181, %function
cap_endpoint_cap_get_capEPBadge.isra.180.part.181:
.LFB872:
	.loc 28 1275 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 1277 0
	movw	r0, #:lower16:.LC32
	movw	r1, #:lower16:.LC30
	.loc 28 1275 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1277 0
	movt	r0, #:upper16:.LC32
	movt	r1, #:upper16:.LC30
	movw	r2, #1278
	ldr	r3, .L1428
	bl	_assert_fail
.LVL1248:
.L1429:
	.align	2
.L1428:
	.word	.LANCHOR4+2764
	.cfi_endproc
.LFE872:
	.size	cap_endpoint_cap_get_capEPBadge.isra.180.part.181, .-cap_endpoint_cap_get_capEPBadge.isra.180.part.181
	.section	.vectors.fastpath_call,"ax",%progbits
	.align	2
	.global	fastpath_call
	.type	fastpath_call, %function
fastpath_call:
.LFB488:
	.file 44 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/fastpath/fastpath.c"
	.loc 44 18 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1249:
	.loc 44 34 0
	movw	r5, #:lower16:ksCurThread
	.loc 44 18 0
	stmfd	sp!, {r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 44 34 0
	movt	r5, #:upper16:ksCurThread
.LBB5735:
.LBB5736:
	.file 45 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/fastpath/fastpath.h"
	.loc 45 88 0
	ubfx	r3, r1, #0, #9
	.loc 45 89 0
	add	r3, r3, #3
.LBE5736:
.LBE5735:
	.loc 44 18 0
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	.loc 44 34 0
	ldr	lr, [r5]
	.loc 44 38 0
	bics	r3, r3, #7
	.loc 44 18 0
	mov	r6, r1
.LVL1250:
.LBB5737:
.LBB5738:
	.loc 28 566 0
	ldr	r3, [lr, #88]
	and	r3, r3, #7
.LVL1251:
.LBE5738:
.LBE5737:
	.loc 44 38 0
	bne	.L1432
	.loc 44 38 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L1432
	.loc 44 44 0 is_stmt 1
	bic	ip, lr, #508
	mov	r7, r0
	bic	ip, ip, #3
	add	r8, sp, #8
	ldmia	ip, {r0, r1}
.LVL1252:
.LBB5739:
.LBB5740:
.LBB5741:
.LBB5742:
	.loc 28 1043 0
	and	r2, r0, #15
	mov	r4, r0
.LVL1253:
.LBE5742:
.LBE5741:
	.file 46 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/fastpath/fastpath.h"
	.loc 46 25 0
	cmp	r2, #10
	stmia	r8, {r0, r1}
	bne	.L1432
.LVL1254:
.L1439:
	ldr	r2, [sp, #12]
.LVL1255:
.LBB5743:
.LBB5744:
	.loc 28 1514 0
	ubfx	r1, r2, #23, #5
.LVL1256:
.LBE5744:
.LBE5743:
.LBB5745:
.LBB5746:
	.loc 28 1540 0
	ubfx	r0, r2, #18, #5
.LVL1257:
.LBE5746:
.LBE5745:
	.loc 46 40 0
	cmp	r1, #0
.LBB5747:
.LBB5748:
	.loc 28 1554 0
	ubfx	r9, r2, #0, #18
.LBE5748:
.LBE5747:
	.loc 46 32 0
	mov	r2, r7, asl r3
.LVL1258:
	.loc 46 40 0
	beq	.L1437
	rsb	r10, r1, #32
	cmp	r9, r2, lsr r10
	bne	.L1432
.L1437:
.LVL1259:
	.loc 46 44 0
	mov	r2, r2, asl r1
.LVL1260:
	rsb	r9, r0, #32
.LVL1261:
.LBB5749:
.LBB5750:
	.loc 28 1580 0
	bic	r4, r4, #31
.LVL1262:
.LBE5750:
.LBE5749:
	.loc 46 44 0
	mov	r2, r2, lsr r9
.LVL1263:
	.loc 46 48 0
	add	r1, r0, r1
.LVL1264:
	add	r3, r3, r1
.LVL1265:
	.loc 46 45 0
	add	r2, r4, r2, asl #4
.LVL1266:
	.loc 46 50 0
	cmp	r3, #31
	.loc 46 47 0
	ldmia	r2, {r0, r1}
.LVL1267:
	stmia	r8, {r0, r1}
.LVL1268:
	mov	r4, r0
.LVL1269:
	.loc 46 50 0
	bls	.L1467
	.loc 46 52 0
	cmp	r3, #32
	bne	.L1432
	and	r2, r0, #15
.LVL1270:
.L1441:
.LBE5740:
.LBE5739:
	.loc 44 47 0
	cmp	r2, #4
.LBB5755:
.LBB5753:
	.loc 46 58 0
	ldr	r3, [sp, #12]
.LVL1271:
.LBE5753:
.LBE5755:
	.loc 44 47 0
	bne	.L1432
.LVL1272:
	tst	r3, #1
	beq	.L1432
.LVL1273:
.LBB5756:
.LBB5757:
	.loc 28 1188 0
	bic	r9, r3, #15
.LVL1274:
	ldmia	r9, {r1, r2}
.LVL1275:
.LBE5757:
.LBE5756:
.LBB5758:
.LBB5759:
	.loc 28 403 0
	and	r1, r1, #3
.LVL1276:
.LBE5759:
.LBE5758:
	.loc 44 60 0
	cmp	r1, #2
	bne	.L1432
	.loc 44 65 0
	bic	r7, r2, #508
.LVL1277:
	bic	r7, r7, #3
	ldr	r0, [r7, #16]
.LVL1278:
.LBB5760:
.LBB5761:
	.loc 28 2162 0
	and	r1, r0, #15
.LVL1279:
	cmp	r1, #9
	beq	.L1442
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.93.part.94
.LVL1280:
.L1442:
.LBE5761:
.LBE5760:
.LBB5764:
.LBB5765:
	.loc 45 75 0
	and	r1, r0, #31
.LBE5765:
.LBE5764:
.LBB5766:
.LBB5762:
	.loc 28 2165 0
	bic	r0, r0, #16320
.LVL1281:
.LBE5762:
.LBE5766:
	.loc 44 75 0
	cmp	r1, #25
.LBB5767:
.LBB5763:
	.loc 28 2165 0
	bic	r0, r0, #63
.LVL1282:
.LBE5763:
.LBE5767:
	.loc 44 75 0
	bne	.L1432
.LBB5768:
.LBB5769:
	.loc 28 365 0
	bic	r8, r2, #15
.LBE5769:
.LBE5768:
	.loc 44 85 0
	ldr	r2, [lr, #108]
.LVL1283:
	ldr	r10, [r8, #108]
	.loc 44 81 0
	add	r1, r0, #12288
	ldr	r1, [r1, #4032]
.LVL1284:
	.loc 44 85 0
	cmp	r10, r2
	bcc	.L1432
.LVL1285:
	.loc 44 90 0
	tst	r3, #4
	bne	.L1468
.LVL1286:
.L1432:
	.loc 44 40 0
	mvn	r0, #0
	bl	slowpath
.LVL1287:
.L1467:
.LBB5770:
.LBB5754:
.LBB5751:
.LBB5752:
	.loc 28 1043 0
	and	r2, r0, #15
.LVL1288:
.LBE5752:
.LBE5751:
	.loc 46 50 0
	cmp	r2, #10
	bne	.L1441
	b	.L1439
.LVL1289:
.L1468:
.LBE5754:
.LBE5770:
.LBB5771:
.LBB5772:
	.loc 28 89 0 discriminator 1
	ldr	r3, [r8, #80]
.LVL1290:
.LBE5772:
.LBE5771:
	.loc 44 90 0 discriminator 1
	tst	r3, #1
	bne	.L1432
.LVL1291:
.LBB5773:
.LBB5774:
	.loc 28 827 0
	tst	r1, #3
	bne	.L1469
.LVL1292:
.LBE5774:
.LBE5773:
	.loc 44 96 0
	tst	r1, #8388608
	beq	.L1432
	.loc 44 118 0
	ldr	r3, [r8, #132]
.LVL1293:
	.loc 44 132 0
	add	ip, ip, #32
.LVL1294:
.LBB5776:
.LBB5777:
	.loc 46 64 0
	mov	r10, #5
.LBE5777:
.LBE5776:
	.loc 44 119 0
	cmp	r3, #0
.LBB5779:
.LBB5780:
	.loc 46 93 0
	str	r3, [r9, #4]
.LVL1295:
.LBE5780:
.LBE5779:
	.loc 44 120 0
	movne	r2, #0
.LBB5781:
.LBB5782:
	.loc 46 87 0
	streq	r3, [r9]
.LVL1296:
.LBE5782:
.LBE5781:
	.loc 44 120 0
	strne	r2, [r3, #136]
.LVL1297:
	.loc 44 135 0
	add	r3, r7, #48
.LVL1298:
.LBB5783:
.LBB5784:
	.loc 46 79 0
	orr	r2, lr, #8
.LBE5784:
.LBE5783:
.LBB5786:
.LBB5787:
	.loc 45 63 0
	orr	r9, r3, #3
.LVL1299:
.LBE5787:
.LBE5786:
.LBB5789:
.LBB5778:
	.loc 46 64 0
	str	r10, [lr, #72]
.LBE5778:
.LBE5789:
.LBB5790:
.LBB5791:
	.loc 45 99 0
	mov	r3, #0
.LVL1300:
.LBE5791:
.LBE5790:
.LBB5797:
.LBB5785:
	.loc 46 79 0
	str	r2, [r7, #48]
.LVL1301:
	add	lr, lr, #4
.LVL1302:
.LBE5785:
.LBE5797:
.LBB5798:
.LBB5799:
	.loc 45 69 0
	str	ip, [r7, #56]
	add	r2, r8, #4
.LVL1303:
.LBE5799:
.LBE5798:
.LBB5800:
.LBB5788:
	.loc 45 63 0
	str	r9, [ip, #12]
.LVL1304:
	and	r7, r6, #127
.LVL1305:
	b	.L1446
.LVL1306:
.L1447:
.LBE5788:
.LBE5800:
.LBB5801:
.LBB5796:
.LBB5792:
.LBB5793:
	.loc 13 27 0
	ldr	ip, [lr, #4]!
.LVL1307:
.LBE5793:
.LBE5792:
	.loc 45 99 0
	add	r3, r3, #1
.LVL1308:
.LBB5794:
.LBB5795:
	.loc 13 21 0
	str	ip, [r2, #4]!
.LVL1309:
.L1446:
.LBE5795:
.LBE5794:
	.loc 45 99 0
	cmp	r3, r7
	bcc	.L1447
.LVL1310:
.LBE5796:
.LBE5801:
.LBB5802:
.LBB5803:
	.loc 46 64 0
	mov	r3, #1
.LVL1311:
.LBE5803:
.LBE5802:
.LBB5805:
.LBB5806:
	.loc 45 45 0
	mov	r1, r1, lsr #24
.LVL1312:
.LBE5806:
.LBE5805:
.LBB5812:
.LBB5804:
	.loc 46 64 0
	str	r3, [r8, #72]
.LVL1313:
.LBE5804:
.LBE5812:
.LBB5813:
.LBB5811:
	.loc 45 45 0
	bl	armv_contextSwitch_HWASID
.LVL1314:
	.loc 45 47 0
	ldr	r1, [r8, #120]
	movw	r2, #:lower16:.LANCHOR2
	movt	r2, #:upper16:.LANCHOR2
.LBB5807:
.LBB5808:
	.loc 45 31 0
	mov	r3, #0
.LBE5808:
.LBE5807:
	.loc 45 48 0
	str	r8, [r5]
.LVL1315:
	.loc 45 47 0
	str	r1, [r2, #16]
.LBB5810:
.LBB5809:
	.loc 45 31 0
	add	r2, sp, #4
@ 31 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/fastpath/fastpath.h" 1
	strex r3, r2, [r2]
@ 0 "" 2
.LVL1316:
.LBE5809:
.LBE5810:
.LBE5811:
.LBE5813:
	.loc 44 151 0
	mov	r0, r4, lsr #4
	bic	r1, r6, #3584
.LVL1317:
	mov	r2, r8
	bl	fastpath_restore
.LVL1318:
.L1469:
.LBB5814:
.LBB5775:
	bl	pde_pde_invalid_get_stored_asid_valid.part.125
.LVL1319:
.LBE5775:
.LBE5814:
	.cfi_endproc
.LFE488:
	.size	fastpath_call, .-fastpath_call
	.section	.text.unlikely
	.align	2
	.type	mdb_node_new.part.183, %function
mdb_node_new.part.183:
.LFB874:
	.loc 28 425 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1320:
	.loc 28 432 0
	movw	r0, #:lower16:.LC84
	movw	r1, #:lower16:.LC30
	.loc 28 425 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 432 0
	movt	r0, #:upper16:.LC84
	movt	r1, #:upper16:.LC30
	mov	r2, #432
	ldr	r3, .L1472
	bl	_assert_fail
.LVL1321:
.L1473:
	.align	2
.L1472:
	.word	.LANCHOR4+2796
	.cfi_endproc
.LFE874:
	.size	mdb_node_new.part.183, .-mdb_node_new.part.183
	.section	.vectors.fastpath_reply_recv,"ax",%progbits
	.align	2
	.global	fastpath_reply_recv
	.type	fastpath_reply_recv, %function
fastpath_reply_recv:
.LFB489:
	.loc 44 159 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1322:
	.loc 44 178 0
	movw	r4, #:lower16:ksCurThread
.LBB5899:
.LBB5900:
	.loc 45 88 0
	ubfx	r3, r1, #0, #9
.LBE5900:
.LBE5899:
	.loc 44 178 0
	movt	r4, #:upper16:ksCurThread
.LBB5902:
.LBB5901:
	.loc 45 89 0
	add	r3, r3, #3
.LBE5901:
.LBE5902:
	.loc 44 178 0
	ldr	r5, [r4]
	.loc 44 182 0
	bics	r3, r3, #7
	.loc 44 159 0
	stmfd	sp!, {r7, fp, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	mov	r6, r1
.LVL1323:
	sub	sp, sp, #20
	.cfi_def_cfa_offset 32
.LBB5903:
.LBB5904:
	.loc 28 566 0
	ldr	r3, [r5, #88]
	and	r3, r3, #7
.LVL1324:
.LBE5904:
.LBE5903:
	.loc 44 182 0
	bne	.L1476
	.loc 44 182 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L1476
	.loc 44 188 0 is_stmt 1
	bic	lr, r5, #508
	mov	r7, r0
	bic	lr, lr, #3
	add	r8, sp, #8
	ldmia	lr, {r0, r1}
.LVL1325:
.LBB5905:
.LBB5906:
.LBB5907:
.LBB5908:
	.loc 28 1043 0
	and	r2, r0, #15
	mov	ip, r0
.LBE5908:
.LBE5907:
	.loc 46 25 0
	cmp	r2, #10
	stmia	r8, {r0, r1}
.LVL1326:
	bne	.L1476
.LVL1327:
.L1483:
	ldr	r2, [sp, #12]
.LVL1328:
.LBB5909:
.LBB5910:
	.loc 28 1514 0
	ubfx	r1, r2, #23, #5
.LVL1329:
.LBE5910:
.LBE5909:
.LBB5911:
.LBB5912:
	.loc 28 1540 0
	ubfx	r0, r2, #18, #5
.LVL1330:
.LBE5912:
.LBE5911:
	.loc 46 40 0
	cmp	r1, #0
.LBB5913:
.LBB5914:
	.loc 28 1554 0
	ubfx	r9, r2, #0, #18
.LBE5914:
.LBE5913:
	.loc 46 32 0
	mov	r2, r7, asl r3
.LVL1331:
	.loc 46 40 0
	beq	.L1481
	rsb	r10, r1, #32
	cmp	r9, r2, lsr r10
	bne	.L1476
.L1481:
.LVL1332:
	.loc 46 44 0
	mov	r2, r2, asl r1
.LVL1333:
	rsb	r9, r0, #32
.LVL1334:
.LBB5915:
.LBB5916:
	.loc 28 1580 0
	bic	ip, ip, #31
.LBE5916:
.LBE5915:
	.loc 46 44 0
	mov	r2, r2, lsr r9
.LVL1335:
	.loc 46 48 0
	add	r1, r0, r1
.LVL1336:
	add	r3, r3, r1
.LVL1337:
	.loc 46 45 0
	add	r2, ip, r2, asl #4
.LVL1338:
	.loc 46 50 0
	cmp	r3, #31
	.loc 46 47 0
	ldmia	r2, {r0, r1}
.LVL1339:
	stmia	r8, {r0, r1}
.LVL1340:
	mov	ip, r0
.LVL1341:
	.loc 46 50 0
	bls	.L1519
	.loc 46 52 0
	cmp	r3, #32
	bne	.L1476
	and	r2, r0, #15
.LVL1342:
.L1485:
.LBE5906:
.LBE5905:
	.loc 44 192 0
	cmp	r2, #4
.LBB5921:
.LBB5919:
	.loc 46 58 0
	ldr	ip, [sp, #12]
.LVL1343:
.LBE5919:
.LBE5921:
	.loc 44 192 0
	bne	.L1476
.LVL1344:
	tst	ip, #2
	beq	.L1476
	.loc 44 198 0
	ldr	r3, [r5, #84]
.LVL1345:
	cmp	r3, #0
	beq	.L1486
.LVL1346:
.LBB5922:
.LBB5923:
	.loc 28 257 0 discriminator 1
	ldr	r3, [r3]
.LVL1347:
	and	r3, r3, #3
.LVL1348:
.LBE5923:
.LBE5922:
	.loc 44 198 0 discriminator 1
	cmp	r3, #2
	beq	.L1476
.LVL1349:
.L1486:
.LBB5924:
.LBB5925:
	.loc 28 1188 0
	bic	r7, ip, #15
.LVL1350:
.LBE5925:
.LBE5924:
.LBB5926:
.LBB5927:
	.loc 28 403 0
	ldr	r3, [r7]
	and	r3, r3, #3
.LVL1351:
.LBE5927:
.LBE5926:
	.loc 44 207 0
	cmp	r3, #1
	beq	.L1476
	.loc 44 213 0
	ldr	r3, [lr, #48]
.LVL1352:
	.loc 44 212 0
	add	r9, lr, #48
.LVL1353:
.LBB5928:
.LBB5929:
	.loc 45 109 0
	and	r2, r3, #31
.LBE5929:
.LBE5928:
	.loc 44 214 0
	cmp	r2, #8
	bne	.L1476
.LVL1354:
.LBB5930:
.LBB5931:
	.loc 28 1457 0
	and	r2, r3, #15
	cmp	r2, #8
	beq	.L1487
	bl	cap_reply_cap_get_capTCBPtr.isra.65.part.66
.LVL1355:
.L1487:
	.loc 28 1460 0
	bic	r8, r3, #31
.LVL1356:
.LBE5931:
.LBE5930:
.LBB5932:
.LBB5933:
	.loc 28 566 0
	ldr	r2, [r8, #88]
.LBE5933:
.LBE5932:
	.loc 44 224 0
	tst	r2, #7
	beq	.L1520
.LVL1357:
.L1476:
	.loc 44 184 0
	mvn	r0, #1
	bl	slowpath
.LVL1358:
.L1519:
.LBB5934:
.LBB5920:
.LBB5917:
.LBB5918:
	.loc 28 1043 0
	and	r2, r0, #15
.LVL1359:
.LBE5918:
.LBE5917:
	.loc 46 50 0
	cmp	r2, #10
	bne	.L1485
	b	.L1483
.LVL1360:
.L1520:
.LBE5920:
.LBE5934:
	.loc 44 229 0
	bic	r3, r3, #508
.LVL1361:
	bic	r3, r3, #3
	ldr	r0, [r3, #16]
.LVL1362:
.LBB5935:
.LBB5936:
	.loc 28 2162 0
	and	r3, r0, #15
	cmp	r3, #9
	beq	.L1488
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.93.part.94
.LVL1363:
.L1488:
.LBE5936:
.LBE5935:
.LBB5939:
.LBB5940:
	.loc 45 75 0
	and	r3, r0, #31
.LBE5940:
.LBE5939:
.LBB5941:
.LBB5937:
	.loc 28 2165 0
	bic	r0, r0, #16320
.LVL1364:
.LBE5937:
.LBE5941:
	.loc 44 239 0
	cmp	r3, #25
.LBB5942:
.LBB5938:
	.loc 28 2165 0
	bic	r0, r0, #63
.LVL1365:
.LBE5938:
.LBE5942:
	.loc 44 239 0
	bne	.L1476
	.loc 44 249 0
	ldr	r10, [r8, #108]
	.loc 44 245 0
	add	r3, r0, #12288
	.loc 44 249 0
	ldr	r2, [r5, #108]
	.loc 44 245 0
	ldr	r1, [r3, #4032]
.LVL1366:
	.loc 44 249 0
	cmp	r10, r2
	bcc	.L1476
.LVL1367:
.LBB5943:
.LBB5944:
	.loc 28 827 0
	tst	r1, #3
	bne	.L1521
.LVL1368:
.LBE5944:
.LBE5943:
	.loc 44 255 0
	tst	r1, #8388608
	beq	.L1476
.LVL1369:
.LBB5946:
.LBB5947:
	.loc 28 1254 0
	and	r3, ip, #1
.LBE5947:
.LBE5946:
.LBB5948:
.LBB5949:
	.loc 46 72 0
	orr	r2, r7, #3
	eor	r3, r3, #1
	str	r2, [r5, #72]
.LVL1370:
.LBE5949:
.LBE5948:
.LBB5950:
.LBB5951:
	.loc 45 55 0
	str	r3, [r5, #80]
.LVL1371:
.LBE5951:
.LBE5950:
.LBB5952:
.LBB5953:
	.loc 28 384 0
	ldr	r3, [r7]
.LVL1372:
.LBE5953:
.LBE5952:
	.loc 44 284 0
	bics	r3, r3, #15
.LVL1373:
	bne	.L1490
	.loc 44 285 0
	mov	r2, #0
.LBB5954:
.LBB5955:
	.loc 46 87 0
	orr	r3, r5, #2
.LVL1374:
.LBE5955:
.LBE5954:
	.loc 44 285 0
	str	r2, [r5, #136]
	.loc 44 286 0
	str	r2, [r5, #132]
.LVL1375:
.LBB5957:
.LBB5956:
	.loc 46 87 0
	stmia	r7, {r3, r5}
.LVL1376:
.L1491:
.LBE5956:
.LBE5957:
.LBB5958:
.LBB5959:
	.loc 28 525 0
	ldr	fp, [r9, #8]
.LBE5959:
.LBE5958:
	.loc 44 307 0
	mov	r2, #0
.LBB5961:
.LBB5962:
	.loc 45 63 0
	mov	r10, #3
	add	r5, r5, #4
.LVL1377:
.LBE5962:
.LBE5961:
.LBB5964:
.LBB5965:
	.loc 45 99 0
	mov	r3, r2
	add	ip, r8, #4
.LBE5965:
.LBE5964:
.LBB5971:
.LBB5960:
	.loc 28 525 0
	bic	fp, fp, #7
.LVL1378:
	and	r7, r6, #127
.LVL1379:
.LBE5960:
.LBE5971:
.LBB5972:
.LBB5963:
	.loc 45 63 0
	str	r10, [fp, #12]
.LVL1380:
.LBE5963:
.LBE5972:
	.loc 44 307 0
	str	r2, [lr, #48]
	str	r2, [r9, #4]
.LVL1381:
	.loc 44 308 0
	str	r2, [r9, #8]
	str	r2, [r9, #12]
.LVL1382:
	b	.L1492
.LVL1383:
.L1493:
.LBB5973:
.LBB5970:
.LBB5966:
.LBB5967:
	.loc 13 27 0
	ldr	r2, [r5, #4]!
.LVL1384:
.LBE5967:
.LBE5966:
	.loc 45 99 0
	add	r3, r3, #1
.LVL1385:
.LBB5968:
.LBB5969:
	.loc 13 21 0
	str	r2, [ip, #4]!
.LVL1386:
.L1492:
.LBE5969:
.LBE5968:
	.loc 45 99 0
	cmp	r3, r7
	bcc	.L1493
.LVL1387:
.LBE5970:
.LBE5973:
.LBB5974:
.LBB5975:
	.loc 46 64 0
	mov	r3, #1
.LVL1388:
.LBE5975:
.LBE5974:
.LBB5977:
.LBB5978:
	.loc 45 45 0
	mov	r1, r1, lsr #24
.LVL1389:
.LBE5978:
.LBE5977:
.LBB5986:
.LBB5976:
	.loc 46 64 0
	str	r3, [r8, #72]
.LVL1390:
.LBE5976:
.LBE5986:
.LBB5987:
.LBB5985:
	.loc 45 45 0
	bl	armv_contextSwitch_HWASID
.LVL1391:
	.loc 45 47 0
	ldr	r1, [r8, #120]
	movw	r3, #:lower16:.LANCHOR2
	movt	r3, #:upper16:.LANCHOR2
.LBB5979:
.LBB5980:
	.loc 45 31 0
	mov	r0, #0
.LBE5980:
.LBE5979:
	.loc 45 48 0
	str	r8, [r4]
.LVL1392:
.LBB5983:
.LBB5981:
	.loc 45 31 0
	mov	r2, r0
.LBE5981:
.LBE5983:
	.loc 45 47 0
	str	r1, [r3, #16]
.LBB5984:
.LBB5982:
	.loc 45 31 0
	add	r3, sp, #4
@ 31 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/fastpath/fastpath.h" 1
	strex r2, r3, [r3]
@ 0 "" 2
.LVL1393:
.LBE5982:
.LBE5984:
.LBE5985:
.LBE5987:
	.loc 44 323 0
	bic	r1, r6, #3584
.LVL1394:
	mov	r2, r8
	bl	fastpath_restore
.LVL1395:
.L1521:
.LBB5988:
.LBB5945:
	bl	pde_pde_invalid_get_stored_asid_valid.part.125
.LVL1396:
.L1490:
.LBE5945:
.LBE5988:
	.loc 44 296 0
	mov	ip, #0
.LVL1397:
.LBB5989:
.LBB5990:
	.loc 46 87 0
	orr	r2, r5, #2
.LBE5990:
.LBE5989:
	.loc 44 294 0
	str	r5, [r3, #132]
	.loc 44 295 0
	str	r3, [r5, #136]
	.loc 44 296 0
	str	ip, [r5, #132]
.LVL1398:
.LBB5992:
.LBB5991:
	.loc 46 87 0
	str	r2, [r7]
	b	.L1491
.LBE5991:
.LBE5992:
	.cfi_endproc
.LFE489:
	.size	fastpath_reply_recv, .-fastpath_reply_recv
	.section	.boot.text
	.align	2
	.global	insert_region
	.type	insert_region, %function
insert_region:
.LFB490:
	.loc 25 29 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 25 29 0
	add	r3, sp, #8
	stmdb	r3, {r0, r1}
	ldmia	sp, {r1, r2}
.LVL1399:
	.loc 25 32 0
	cmp	r2, r1
	bcc	.L1530
.LVL1400:
	.loc 25 34 0
	moveq	r0, #1
	.loc 25 33 0
	beq	.L1524
.LVL1401:
	movw	r3, #:lower16:.LANCHOR3
	movt	r3, #:upper16:.LANCHOR3
	.loc 25 37 0 discriminator 1
	ldmia	r3, {r0, ip}
	cmp	ip, r0
	beq	.L1525
.LVL1402:
	.loc 25 37 0 is_stmt 0
	ldr	r0, [r3, #8]
	ldr	ip, [r3, #12]
	cmp	ip, r0
	.loc 25 42 0 is_stmt 1
	movne	r0, #0
	.loc 25 37 0
	beq	.L1531
.LVL1403:
.L1524:
	.loc 25 43 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.LVL1404:
.L1531:
	.cfi_restore_state
	.loc 25 37 0
	add	r3, r3, #8
.LVL1405:
.L1525:
	.loc 25 38 0
	str	r1, [r3]
	.loc 25 39 0
	mov	r0, #1
	.loc 25 38 0
	str	r2, [r3, #4]
	.loc 25 39 0
	b	.L1524
.LVL1406:
.L1530:
.LBB5999:
.LBB6000:
	.loc 25 32 0
	movw	r0, #:lower16:.LC85
	movw	r1, #:lower16:.LC86
	movt	r0, #:upper16:.LC85
	movt	r1, #:upper16:.LC86
	mov	r2, #32
.LVL1407:
	ldr	r3, .L1532
	bl	_assert_fail
.LVL1408:
.L1533:
	.align	2
.L1532:
	.word	.LANCHOR4+2812
.LBE6000:
.LBE5999:
	.cfi_endproc
.LFE490:
	.size	insert_region, .-insert_region
	.align	2
	.type	insert_region_excluded, %function
insert_region_excluded:
.LFB299:
	.file 47 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/kernel/boot.c"
	.loc 47 38 0
	.cfi_startproc
	@ args = 12, pretend = 8, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1409:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 47 42 0
	cmp	r3, r1
	.loc 47 38 0
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 14, -12
	sub	sp, sp, #8
	.cfi_def_cfa_offset 32
	.loc 47 38 0
	stmia	sp, {r1, r2}
	mov	r6, r0
.LVL1410:
	str	r3, [sp, #28]
	ldr	r4, [sp, #4]
.LVL1411:
	ldr	r5, [sp, #32]
.LVL1412:
	.loc 47 42 0
	bcs	.L1535
.LVL1413:
	cmp	r5, r1
	movcc	r5, r1
.LVL1414:
.L1536:
	.loc 47 65 0
	cmp	r4, r5
	movcc	r3, r4
	bcs	.L1540
.LVL1415:
.L1538:
	.loc 47 70 0
	mov	r0, r6
	.loc 47 69 0
	str	r4, [r6]
	str	r3, [r6, #4]
	.loc 47 70 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 8
.LVL1416:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
.LVL1417:
	bx	lr
.LVL1418:
.L1535:
	.cfi_restore_state
	.loc 47 50 0
	cmp	r3, r4
	bcs	.L1537
.LVL1419:
	.loc 47 60 0
	cmp	r3, r1
	bls	.L1536
	.loc 47 61 0
	str	r3, [sp, #4]
	ldmia	sp, {r0, r1}
.LVL1420:
	bl	insert_region
.LVL1421:
	.loc 47 62 0
	cmp	r0, #0
	bne	.L1536
.LVL1422:
.L1541:
.LBB6003:
.LBB6004:
	movw	r0, #:lower16:.LC87
.LVL1423:
	movw	r1, #:lower16:.LC88
	movt	r0, #:upper16:.LC87
	movt	r1, #:upper16:.LC88
	mov	r2, #62
	ldr	r3, .L1549
	bl	_assert_fail
.LVL1424:
.L1537:
.LBE6004:
.LBE6003:
	.loc 47 60 0
	cmp	r4, r1
	bls	.L1542
	.loc 47 61 0
	ldmia	sp, {r0, r1}
.LVL1425:
	bl	insert_region
.LVL1426:
	.loc 47 62 0
	cmp	r0, #0
	beq	.L1541
.LVL1427:
.L1542:
	.loc 47 56 0
	mov	r5, #0
.LVL1428:
	.loc 47 57 0
	mov	r4, r5
.LVL1429:
.L1540:
	mov	r3, r4
	mov	r4, r5
	b	.L1538
.L1550:
	.align	2
.L1549:
	.word	.LANCHOR4+2828
	.cfi_endproc
.LFE299:
	.size	insert_region_excluded, .-insert_region_excluded
	.section	.text.unlikely
	.align	2
	.type	mdb_node_ptr_set_mdbRevocable.isra.186.part.187, %function
mdb_node_ptr_set_mdbRevocable.isra.186.part.187:
.LFB878:
	.loc 28 487 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1430:
	.loc 28 489 0
	movw	r0, #:lower16:.LC89
	movw	r1, #:lower16:.LC30
	.loc 28 487 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 489 0
	movt	r0, #:upper16:.LC89
	movt	r1, #:upper16:.LC30
	movw	r2, #489
	ldr	r3, .L1553
	bl	_assert_fail
.LVL1431:
.L1554:
	.align	2
.L1553:
	.word	.LANCHOR4+2852
	.cfi_endproc
.LFE878:
	.size	mdb_node_ptr_set_mdbRevocable.isra.186.part.187, .-mdb_node_ptr_set_mdbRevocable.isra.186.part.187
	.align	2
	.type	mdb_node_ptr_set_mdbFirstBadged.isra.188.part.189, %function
mdb_node_ptr_set_mdbFirstBadged.isra.188.part.189:
.LFB880:
	.loc 28 515 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1432:
	.loc 28 517 0
	movw	r0, #:lower16:.LC90
	movw	r1, #:lower16:.LC30
	.loc 28 515 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 517 0
	movt	r0, #:upper16:.LC90
	movt	r1, #:upper16:.LC30
	movw	r2, #517
	ldr	r3, .L1557
	bl	_assert_fail
.LVL1433:
.L1558:
	.align	2
.L1557:
	.word	.LANCHOR4+2884
	.cfi_endproc
.LFE880:
	.size	mdb_node_ptr_set_mdbFirstBadged.isra.188.part.189, .-mdb_node_ptr_set_mdbFirstBadged.isra.188.part.189
	.align	2
	.type	cap_cnode_cap_new.part.190, %function
cap_cnode_cap_new.part.190:
.LFB881:
	.loc 28 1483 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1434:
	.loc 28 1490 0
	movw	r0, #:lower16:.LC91
	movw	r1, #:lower16:.LC30
	.loc 28 1483 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1490 0
	movt	r0, #:upper16:.LC91
	movt	r1, #:upper16:.LC30
	movw	r2, #1490
	ldr	r3, .L1561
	bl	_assert_fail
.LVL1435:
.L1562:
	.align	2
.L1561:
	.word	.LANCHOR4+2916
	.cfi_endproc
.LFE881:
	.size	cap_cnode_cap_new.part.190, .-cap_cnode_cap_new.part.190
	.align	2
	.type	cap_thread_cap_new.part.192, %function
cap_thread_cap_new.part.192:
.LFB883:
	.loc 28 1589 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1436:
	.loc 28 1596 0
	movw	r0, #:lower16:.LC92
	movw	r1, #:lower16:.LC30
	.loc 28 1589 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1596 0
	movt	r0, #:upper16:.LC92
	movt	r1, #:upper16:.LC30
	movw	r2, #1596
	ldr	r3, .L1565
	bl	_assert_fail
.LVL1437:
.L1566:
	.align	2
.L1565:
	.word	.LANCHOR4+2936
	.cfi_endproc
.LFE883:
	.size	cap_thread_cap_new.part.192, .-cap_thread_cap_new.part.192
	.align	2
	.type	cap_untyped_cap_new.part.193, %function
cap_untyped_cap_new.part.193:
.LFB884:
	.loc 28 1062 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1438:
	.loc 28 1069 0
	movw	r0, #:lower16:.LC93
	movw	r1, #:lower16:.LC30
	.loc 28 1062 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1069 0
	movt	r0, #:upper16:.LC93
	movt	r1, #:upper16:.LC30
	movw	r2, #1069
	ldr	r3, .L1569
	bl	_assert_fail
.LVL1439:
.L1570:
	.align	2
.L1569:
	.word	.LANCHOR4+2956
	.cfi_endproc
.LFE884:
	.size	cap_untyped_cap_new.part.193, .-cap_untyped_cap_new.part.193
	.align	2
	.type	lookup_fault_depth_mismatch_new.part.194, %function
lookup_fault_depth_mismatch_new.part.194:
.LFB885:
	.loc 28 2623 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1440:
	.loc 28 2630 0
	movw	r0, #:lower16:.LC94
	movw	r1, #:lower16:.LC30
	.loc 28 2623 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 2630 0
	movt	r0, #:upper16:.LC94
	movt	r1, #:upper16:.LC30
	movw	r2, #2630
	ldr	r3, .L1573
	bl	_assert_fail
.LVL1441:
.L1574:
	.align	2
.L1573:
	.word	.LANCHOR4+2976
	.cfi_endproc
.LFE885:
	.size	lookup_fault_depth_mismatch_new.part.194, .-lookup_fault_depth_mismatch_new.part.194
	.text
	.align	2
	.global	resolveAddressBits
	.type	resolveAddressBits, %function
resolveAddressBits:
.LFB518:
	.file 48 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/kernel/cspace.c"
	.loc 48 140 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1442:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 40
	.loc 48 140 0
	add	ip, sp, #8
	stmdb	ip, {r1, r2}
	ldr	ip, [sp]
.LVL1443:
	ldr	r8, [sp, #4]
.LVL1444:
.LBB6021:
.LBB6022:
	.loc 28 1035 0
	and	r2, ip, #14
	cmp	r2, #14
	.loc 28 1037 0
	uxtbeq	r2, ip
	.loc 28 1036 0
	andne	r2, ip, #15
.LBE6022:
.LBE6021:
	.loc 48 149 0
	cmp	r2, #10
	bne	.L1591
	ldr	r5, [sp, #40]
	mov	lr, r0
	.loc 48 168 0
	mov	r4, #1
.LVL1445:
.L1588:
.LBB6023:
.LBB6024:
	.loc 28 1537 0
	and	r2, ip, #15
	cmp	r2, #10
	bne	.L1592
	.loc 28 1540 0
	ubfx	r1, r8, #18, #5
.LVL1446:
.LBE6024:
.LBE6023:
.LBB6026:
.LBB6027:
	.loc 28 1514 0
	ubfx	r7, r8, #23, #5
.LVL1447:
.LBE6027:
.LBE6026:
	.loc 48 161 0
	adds	r6, r7, r1
.LVL1448:
	beq	.L1593
.LVL1449:
	.loc 48 168 0
	mov	r2, r4, asl r7
	rsb	r9, r7, r5
	and	r9, r9, #31
	sub	r2, r2, #1
.LBB6028:
.LBB6029:
	.loc 28 1554 0
	ubfx	r8, r8, #0, #18
.LVL1450:
.LBE6029:
.LBE6028:
	.loc 48 168 0
	and	r2, r2, r3, lsr r9
	.loc 48 169 0
	cmp	r5, r7
	cmpcs	r2, r8
	movne	r2, #1
	moveq	r2, #0
	bne	.L1594
	.loc 48 176 0
	cmp	r5, r6
	bcc	.L1595
	.loc 48 183 0
	mov	r1, r4, asl r1
.LVL1451:
	rsb	r5, r6, r5
.LVL1452:
.LBB6030:
.LBB6031:
	.loc 28 1580 0
	bic	ip, ip, #31
.LVL1453:
.LBE6031:
.LBE6030:
	.loc 48 183 0
	sub	r1, r1, #1
	and	r1, r1, r3, lsr r5
	.loc 48 184 0
	add	r6, ip, r1, asl #4
.LVL1454:
	.loc 48 186 0
	bhi	.L1585
.LVL1455:
	.loc 48 190 0
	stmia	lr, {r2, r6}
	str	r2, [lr, #8]
.LVL1456:
.L1575:
	.loc 48 208 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 28
.LVL1457:
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.LVL1458:
.L1591:
	.cfi_restore_state
	.loc 48 152 0
	ldr	ip, [sp, #40]
.LVL1459:
	.loc 48 150 0
	movw	r3, #:lower16:current_lookup_fault
.LVL1460:
	mov	r2, #0
	movt	r3, #:upper16:current_lookup_fault
	.loc 48 152 0
	mov	r1, #2
	.loc 48 150 0
	str	r2, [r3]
	.loc 48 152 0
	str	ip, [r0, #8]
	.loc 48 150 0
	str	r2, [r3, #4]
.LVL1461:
	.loc 48 152 0
	stmia	r0, {r1, r2}
	.loc 48 208 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 28
.LVL1462:
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.LVL1463:
.L1594:
	.cfi_restore_state
.LBB6032:
.LBB6033:
	.loc 28 2679 0
	bics	r2, r5, #63
	bne	.L1596
.LVL1464:
	.loc 28 2683 0
	mov	r7, r7, asl #2
.LVL1465:
.LBE6033:
.LBE6032:
	.loc 48 173 0
	ldr	r1, [sp, #40]
.LVL1466:
	.loc 48 170 0
	movw	r3, #:lower16:current_lookup_fault
.LVL1467:
	.loc 48 173 0
	str	r2, [lr, #4]
.LBB6037:
.LBB6034:
	.loc 28 2683 0
	orr	r5, r7, r5, asl #8
.LVL1468:
.LBE6034:
.LBE6037:
	.loc 48 170 0
	movt	r3, #:upper16:current_lookup_fault
	.loc 48 173 0
	mov	r2, #2
	str	r1, [lr, #8]
.LBB6038:
.LBB6035:
	.loc 28 2686 0
	orr	r5, r5, #3
.LVL1469:
.LBE6035:
.LBE6038:
	.loc 48 173 0
	str	r2, [lr]
	.loc 48 170 0
	stmia	r3, {r5, r8}
	.loc 48 173 0
	b	.L1575
.LVL1470:
.L1595:
.LBB6039:
.LBB6040:
	.loc 28 2634 0
	mov	r5, r5, asl #2
.LVL1471:
.LBE6040:
.LBE6039:
	.loc 48 180 0
	ldr	ip, [sp, #40]
.LVL1472:
	mov	r1, #2
.LVL1473:
	str	r2, [lr, #4]
.LBB6043:
.LBB6041:
	.loc 28 2634 0
	orr	r6, r5, r6, asl #8
.LVL1474:
.LBE6041:
.LBE6043:
	.loc 48 177 0
	movw	r3, #:lower16:current_lookup_fault
.LVL1475:
	movt	r3, #:upper16:current_lookup_fault
	.loc 48 180 0
	str	ip, [lr, #8]
.LBB6044:
.LBB6042:
	.loc 28 2637 0
	orr	r6, r6, r1
.LVL1476:
.LBE6042:
.LBE6044:
	.loc 48 177 0
	str	r2, [r3, #4]
.LVL1477:
	str	r6, [r3]
	.loc 48 180 0
	str	r1, [lr]
	b	.L1575
.LVL1478:
.L1585:
	.loc 48 196 0
	ldr	ip, [ip, r1, asl #4]
.LVL1479:
	ldr	r8, [r6, #4]
.LVL1480:
.LBB6045:
.LBB6046:
	.loc 28 1035 0
	and	r2, ip, #14
	cmp	r2, #14
	.loc 28 1037 0
	uxtbeq	r2, ip
	.loc 28 1036 0
	andne	r2, ip, #15
.LBE6046:
.LBE6045:
	.loc 48 198 0
	cmp	r2, #10
	beq	.L1588
.LVL1481:
	.loc 48 202 0
	mov	r3, #0
.LVL1482:
	str	r6, [lr, #4]
	str	r5, [lr, #8]
	str	r3, [lr]
	b	.L1575
.LVL1483:
.L1593:
	.loc 48 161 0 discriminator 1
	movw	r0, #:lower16:.LC95
.LVL1484:
	movw	r1, #:lower16:.LC96
.LVL1485:
	movt	r0, #:upper16:.LC95
	movt	r1, #:upper16:.LC96
	mov	r2, #161
	ldr	r3, .L1597
.LVL1486:
	bl	_assert_fail
.LVL1487:
.L1592:
.LBB6047:
.LBB6025:
	bl	cap_cnode_cap_get_capCNodeRadix.part.149
.LVL1488:
.L1596:
.LBE6025:
.LBE6047:
.LBB6048:
.LBB6036:
	.loc 28 2679 0
	movw	r0, #:lower16:.LC34
.LVL1489:
	movw	r1, #:lower16:.LC30
.LVL1490:
	movt	r0, #:upper16:.LC34
	movt	r1, #:upper16:.LC30
	movw	r2, #2679
	ldr	r3, .L1597+4
.LVL1491:
	bl	_assert_fail
.LVL1492:
.L1598:
	.align	2
.L1597:
	.word	.LANCHOR4+3008
	.word	.LANCHOR4+3028
.LBE6036:
.LBE6048:
	.cfi_endproc
.LFE518:
	.size	resolveAddressBits, .-resolveAddressBits
	.align	2
	.global	lookupSlot
	.type	lookupSlot, %function
lookupSlot:
.LFB513:
	.loc 48 59 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1493:
	.loc 48 64 0
	bic	r1, r1, #508
.LVL1494:
	.loc 48 59 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 48 64 0
	bic	r1, r1, #3
	.loc 48 59 0
	mov	r4, r0
	sub	sp, sp, #32
	.cfi_def_cfa_offset 40
	.loc 48 65 0
	mov	lr, #32
	.loc 48 64 0
	ldmia	r1, {r0, r1}
.LVL1495:
	add	ip, sp, #12
	.loc 48 65 0
	str	lr, [sp]
	.loc 48 59 0
	mov	r3, r2
	.loc 48 64 0
	stmia	ip, {r0, r1}
	.loc 48 65 0
	add	r0, sp, #20
	ldmia	ip, {r1, r2}
.LVL1496:
	bl	resolveAddressBits
.LVL1497:
	.loc 48 69 0
	ldr	r2, [sp, #20]
	.loc 48 70 0
	mov	r0, r4
	.loc 48 68 0
	ldr	r3, [sp, #24]
.LVL1498:
	.loc 48 69 0
	stmia	r4, {r2, r3}
	.loc 48 70 0
	add	sp, sp, #32
	.cfi_def_cfa_offset 8
	@ sp needed
	ldmfd	sp!, {r4, pc}
	.cfi_endproc
.LFE513:
	.size	lookupSlot, .-lookupSlot
	.align	2
	.global	lookupCap
	.type	lookupCap, %function
lookupCap:
.LFB511:
	.loc 48 21 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1499:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 48 21 0
	mov	r4, r0
	.loc 48 25 0
	mov	r0, sp
.LVL1500:
	bl	lookupSlot
.LVL1501:
	ldr	r3, [sp]
.LVL1502:
	.loc 48 35 0
	mov	r0, r4
	.loc 48 26 0
	cmp	r3, #0
.LVL1503:
	.loc 48 33 0
	ldreq	r2, [sp, #4]
	.loc 48 29 0
	movne	r2, #0
	.loc 48 34 0
	streq	r3, [r4]
	.loc 48 29 0
	strne	r3, [r4]
	.loc 48 33 0
	ldmeqia	r2, {r1, r3}
.LVL1504:
	.loc 48 29 0
	strne	r2, [r4, #4]
	strne	r2, [r4, #8]
.LVL1505:
	.loc 48 34 0
	stmeqib	r4, {r1, r3}
	.loc 48 35 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 8
.LVL1506:
	@ sp needed
	ldmfd	sp!, {r4, pc}
	.cfi_endproc
.LFE511:
	.size	lookupCap, .-lookupCap
	.align	2
	.global	lookupCapAndSlot
	.type	lookupCapAndSlot, %function
lookupCapAndSlot:
.LFB512:
	.loc 48 39 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1507:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 48 39 0
	mov	r4, r0
	.loc 48 43 0
	mov	r0, sp
.LVL1508:
	bl	lookupSlot
.LVL1509:
	ldmia	sp, {r2, r3}
.LVL1510:
	.loc 48 44 0
	cmp	r2, #0
.LVL1511:
	.loc 48 53 0
	ldmeqia	r3, {r0, r1}
	.loc 48 48 0
	movne	r3, #0
.LVL1512:
	stmneia	r4, {r2, r3}
	strne	r3, [r4, #8]
	.loc 48 54 0
	stmeqib	r4, {r0, r1, r3}
	.loc 48 55 0
	mov	r0, r4
	.loc 48 48 0
	strne	r3, [r4, #12]
.LVL1513:
	.loc 48 54 0
	streq	r2, [r4]
	.loc 48 55 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 8
	@ sp needed
	ldmfd	sp!, {r4, pc}
	.cfi_endproc
.LFE512:
	.size	lookupCapAndSlot, .-lookupCapAndSlot
	.align	2
	.global	lookupExtraCaps
	.type	lookupExtraCaps, %function
lookupExtraCaps:
.LFB648:
	.loc 31 230 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1514:
	.loc 31 235 0
	cmp	r1, #0
	beq	.L1621
.LVL1515:
	.loc 31 230 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
.LBB6049:
.LBB6050:
	.loc 41 69 0
	ubfx	r6, r2, #7, #2
.LVL1516:
.LBE6050:
.LBE6049:
	.loc 31 242 0
	cmp	r6, #0
	.loc 31 230 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 40
	movweq	r3, #:lower16:current_extra_caps
	movteq	r3, #:upper16:current_extra_caps
	.loc 31 242 0
	beq	.L1612
	.loc 31 251 0
	movw	r8, #:lower16:current_extra_caps
	mov	r7, r0
	add	r5, r1, #484
	movt	r8, #:upper16:current_extra_caps
	.loc 31 242 0
	mov	r4, #0
	b	.L1614
.LVL1517:
.L1613:
	.loc 31 251 0 discriminator 2
	ldr	r2, [sp, #4]
	str	r2, [r8, r4, asl #2]
	.loc 31 242 0 discriminator 2
	add	r4, r4, #1
.LVL1518:
	cmp	r4, r6
	beq	.L1622
.LVL1519:
.L1614:
.LBB6051:
.LBB6052:
	.loc 31 185 0
	ldr	r9, [r5, #4]!
.LBE6052:
.LBE6051:
	.loc 31 245 0
	mov	r0, sp
	mov	r1, r7
	mov	r2, r9
.LVL1520:
	bl	lookupSlot
.LVL1521:
	ldr	r0, [sp]
.LVL1522:
	.loc 31 251 0
	movw	r3, #:lower16:current_extra_caps
	movt	r3, #:upper16:current_extra_caps
	.loc 31 246 0
	cmp	r0, #0
	beq	.L1613
.LVL1523:
	.loc 31 247 0
	movw	r3, #:lower16:current_fault
	mov	r2, #1
	movt	r3, #:upper16:current_fault
	stmia	r3, {r2, r9}
.LVL1524:
.L1611:
	.loc 31 258 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.LVL1525:
.L1622:
	.cfi_restore_state
	.loc 31 253 0
	cmp	r4, #3
	beq	.L1611
.LVL1526:
.L1612:
	.loc 31 254 0
	mov	r0, #0
	str	r0, [r3, r6, asl #2]
	.loc 31 258 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.LVL1527:
.L1621:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 14
	.loc 31 236 0
	movw	r3, #:lower16:current_extra_caps
	.loc 31 237 0
	mov	r0, r1
.LVL1528:
	.loc 31 236 0
	movt	r3, #:upper16:current_extra_caps
	str	r1, [r3]
	.loc 31 258 0
	bx	lr
	.cfi_endproc
.LFE648:
	.size	lookupExtraCaps, .-lookupExtraCaps
	.section	.text.unlikely
	.align	2
	.type	ready_queues_index.part.196, %function
ready_queues_index.part.196:
.LFB887:
	.file 49 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/kernel/thread.h"
	.loc 49 20 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1529:
	.loc 49 25 0
	movw	r0, #:lower16:.LC97
	movw	r1, #:lower16:.LC98
	.loc 49 20 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 49 25 0
	movt	r0, #:upper16:.LC97
	movt	r1, #:upper16:.LC98
	mov	r2, #25
	ldr	r3, .L1625
	bl	_assert_fail
.LVL1530:
.L1626:
	.align	2
.L1625:
	.word	.LANCHOR4+3060
	.cfi_endproc
.LFE887:
	.size	ready_queues_index.part.196, .-ready_queues_index.part.196
	.align	2
	.type	thread_state_ptr_set_tsType.isra.197.part.198, %function
thread_state_ptr_set_tsType.isra.197.part.198:
.LFB889:
	.loc 28 166 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1531:
	.loc 28 168 0
	movw	r0, #:lower16:.LC99
	movw	r1, #:lower16:.LC30
	.loc 28 166 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 168 0
	movt	r0, #:upper16:.LC99
	movt	r1, #:upper16:.LC30
	mov	r2, #168
	ldr	r3, .L1629
	bl	_assert_fail
.LVL1532:
.L1630:
	.align	2
.L1629:
	.word	.LANCHOR4+3080
	.cfi_endproc
.LFE889:
	.size	thread_state_ptr_set_tsType.isra.197.part.198, .-thread_state_ptr_set_tsType.isra.197.part.198
	.align	2
	.type	cap_notification_cap_get_capNtfnBadge.part.199, %function
cap_notification_cap_get_capNtfnBadge.part.199:
.LFB890:
	.loc 28 1327 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 1329 0
	movw	r0, #:lower16:.LC33
	movw	r1, #:lower16:.LC30
	.loc 28 1327 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1329 0
	movt	r0, #:upper16:.LC33
	movt	r1, #:upper16:.LC30
	movw	r2, #1330
	ldr	r3, .L1633
	bl	_assert_fail
.LVL1533:
.L1634:
	.align	2
.L1633:
	.word	.LANCHOR4+3108
	.cfi_endproc
.LFE890:
	.size	cap_notification_cap_get_capNtfnBadge.part.199, .-cap_notification_cap_get_capNtfnBadge.part.199
	.align	2
	.type	mdb_node_ptr_set_mdbNext.isra.200.part.201, %function
mdb_node_ptr_set_mdbNext.isra.200.part.201:
.LFB892:
	.loc 28 459 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1534:
	.loc 28 461 0
	movw	r0, #:lower16:.LC100
	movw	r1, #:lower16:.LC30
	.loc 28 459 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 461 0
	movt	r0, #:upper16:.LC100
	movt	r1, #:upper16:.LC30
	movw	r2, #461
	ldr	r3, .L1637
	bl	_assert_fail
.LVL1535:
.L1638:
	.align	2
.L1637:
	.word	.LANCHOR4+3148
	.cfi_endproc
.LFE892:
	.size	mdb_node_ptr_set_mdbNext.isra.200.part.201, .-mdb_node_ptr_set_mdbNext.isra.200.part.201
	.align	2
	.type	mdb_node_ptr_set_mdbPrev.isra.202.part.203, %function
mdb_node_ptr_set_mdbPrev.isra.202.part.203:
.LFB894:
	.loc 28 543 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1536:
	.loc 28 545 0
	movw	r0, #:lower16:.LC100
	movw	r1, #:lower16:.LC30
	.loc 28 543 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 545 0
	movt	r0, #:upper16:.LC100
	movt	r1, #:upper16:.LC30
	movw	r2, #545
	ldr	r3, .L1641
	bl	_assert_fail
.LVL1537:
.L1642:
	.align	2
.L1641:
	.word	.LANCHOR4+3176
	.cfi_endproc
.LFE894:
	.size	mdb_node_ptr_set_mdbPrev.isra.202.part.203, .-mdb_node_ptr_set_mdbPrev.isra.202.part.203
	.text
	.align	2
	.global	cteSwap
	.type	cteSwap, %function
cteSwap:
.LFB570:
	.loc 27 511 0
	.cfi_startproc
	@ args = 16, pretend = 8, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1538:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 14, -12
	sub	sp, sp, #12
	.cfi_def_cfa_offset 32
	.loc 27 515 0
	add	lr, sp, #28
	.loc 27 511 0
	str	r3, [sp, #28]
	stmia	sp, {r0, r1}
	.loc 27 515 0
	ldmia	lr, {r0, r1}
	.loc 27 511 0
	ldr	r3, [sp, #36]
	.loc 27 515 0
	stmia	r2, {r0, r1}
	.loc 27 516 0
	ldmia	sp, {r0, r1}
	stmia	r3, {r0, r1}
	.loc 27 518 0
	ldr	ip, [r2, #8]
.LVL1539:
	ldr	r0, [r2, #12]
.LVL1540:
	.loc 27 521 0
	bics	r5, ip, #7
.LVL1541:
	bne	.L1667
.LVL1542:
	.loc 27 527 0
	bics	r1, r0, #7
.LVL1543:
	bne	.L1668
.LVL1544:
.L1647:
	.loc 27 532 0
	ldr	lr, [r3, #8]
.LVL1545:
	ldr	r1, [r3, #12]
.LVL1546:
	.loc 27 537 0
	bics	r4, lr, #7
	.loc 27 533 0
	str	lr, [r2, #8]
	str	r1, [r2, #12]
	.loc 27 534 0
	str	ip, [r3, #8]
	str	r0, [r3, #12]
.LVL1547:
	.loc 27 537 0
	bne	.L1669
.LVL1548:
	.loc 27 543 0
	bics	r1, r1, #7
.LVL1549:
	bne	.L1670
	.loc 27 547 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 8
.LVL1550:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL1551:
.L1670:
	.cfi_restore_state
.LBB6069:
.LBB6070:
	.loc 28 545 0
	tst	r2, #7
.LVL1552:
	bne	.L1655
	bic	r2, r2, #7
.LVL1553:
.L1656:
	.loc 28 546 0
	ldr	r3, [r1, #8]
	and	r3, r3, #7
	.loc 28 547 0
	orr	r2, r3, r2
	str	r2, [r1, #8]
.LBE6070:
.LBE6069:
	.loc 27 547 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 14
	.cfi_def_cfa_offset 8
.LVL1554:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL1555:
.L1668:
	.cfi_restore_state
.LBB6071:
.LBB6072:
	.loc 28 545 0
	tst	r3, #7
.LVL1556:
	bne	.L1655
	bic	lr, r3, #7
.LVL1557:
.L1649:
	.loc 28 546 0
	ldr	r4, [r1, #8]
	and	r4, r4, #7
	.loc 28 547 0
	orr	lr, r4, lr
	str	lr, [r1, #8]
	b	.L1647
.LVL1558:
.L1667:
.LBE6072:
.LBE6071:
.LBB6074:
.LBB6075:
	.loc 28 461 0
	tst	r3, #7
	bne	.L1651
	.loc 28 462 0
	ldr	r4, [r5, #12]
	.loc 28 463 0
	bic	lr, r3, #7
.LBE6075:
.LBE6074:
	.loc 27 527 0
	bics	r1, r0, #7
.LBB6078:
.LBB6076:
	.loc 28 462 0
	and	r4, r4, #7
	.loc 28 463 0
	orr	r4, r4, lr
	str	r4, [r5, #12]
.LVL1559:
.LBE6076:
.LBE6078:
	.loc 27 527 0
	beq	.L1647
	b	.L1649
.LVL1560:
.L1669:
.LBB6079:
.LBB6080:
	.loc 28 461 0
	tst	r2, #7
	bne	.L1651
	.loc 28 462 0
	ldr	r3, [r4, #12]
	.loc 28 463 0
	bic	r2, r2, #7
.LVL1561:
.LBE6080:
.LBE6079:
	.loc 27 543 0
	bics	r1, r1, #7
.LVL1562:
.LBB6082:
.LBB6081:
	.loc 28 462 0
	and	r3, r3, #7
	.loc 28 463 0
	orr	r3, r3, r2
	str	r3, [r4, #12]
.LBE6081:
.LBE6082:
	.loc 27 543 0
	bne	.L1656
	.loc 27 547 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 14
	.cfi_def_cfa_offset 8
.LVL1563:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL1564:
.L1655:
	.cfi_restore_state
.LBB6083:
.LBB6073:
	bl	mdb_node_ptr_set_mdbPrev.isra.202.part.203
.LVL1565:
.L1651:
.LBE6073:
.LBE6083:
.LBB6084:
.LBB6077:
	bl	mdb_node_ptr_set_mdbNext.isra.200.part.201
.LVL1566:
.LBE6077:
.LBE6084:
	.cfi_endproc
.LFE570:
	.size	cteSwap, .-cteSwap
	.align	2
	.type	capSwapForDelete.part.204, %function
capSwapForDelete.part.204:
.LFB895:
	.loc 27 495 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1567:
	mov	r3, r1
	mov	r2, r0
	.loc 27 503 0
	ldmia	r0, {r0, r1}
.LVL1568:
	.loc 27 495 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 32
	.loc 27 503 0
	add	ip, sp, #8
	.loc 27 506 0
	str	r3, [sp, #4]
	.loc 27 503 0
	stmia	ip, {r0, r1}
	.loc 27 504 0
	ldmia	r3, {r0, r1}
	add	r3, sp, #24
.LVL1569:
	stmdb	r3, {r0, r1}
	.loc 27 506 0
	ldr	lr, [sp, #20]
	ldmia	ip, {r0, r1}
	ldr	r3, [sp, #16]
	str	lr, [sp]
	bl	cteSwap
.LVL1570:
	.loc 27 507 0
	add	sp, sp, #28
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE895:
	.size	capSwapForDelete.part.204, .-capSwapForDelete.part.204
	.align	2
	.global	capSwapForDelete
	.type	capSwapForDelete, %function
capSwapForDelete:
.LFB569:
	.loc 27 496 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL1571:
	.loc 27 499 0
	cmp	r1, r0
	bxeq	lr
	b	capSwapForDelete.part.204
.LVL1572:
	.cfi_endproc
.LFE569:
	.size	capSwapForDelete, .-capSwapForDelete
	.align	2
	.global	cteInsert
	.type	cteInsert, %function
cteInsert:
.LFB567:
	.loc 27 405 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1573:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 56
	.loc 27 405 0
	stmia	sp, {r0, r1}
	.loc 27 410 0
	add	r1, r2, #8
	mov	ip, r0
.LVL1574:
	add	r8, sp, #8
	ldmia	r1, {r0, r1}
.LBB6133:
.LBB6134:
	.loc 28 1035 0
	and	r4, ip, #14
	cmp	r4, #14
	ldr	r5, [sp, #4]
.LVL1575:
.LBE6134:
.LBE6133:
	.loc 27 411 0
	ldr	lr, [r2]
	.loc 27 410 0
	stmia	r8, {r0, r1}
.LVL1576:
.LBB6136:
.LBB6135:
	.loc 28 1037 0
	uxtbeq	r1, ip
	.loc 28 1036 0
	andne	r1, ip, #15
.LBE6135:
.LBE6136:
	.loc 27 411 0
	ldr	r6, [r2, #4]
.LVL1577:
	.loc 27 413 0
	sub	r1, r1, #2
	cmp	r1, #28
	ldrls	pc, [pc, r1, asl #2]
	b	.L1678
.L1680:
	.word	.L1705
	.word	.L1678
	.word	.L1681
	.word	.L1678
	.word	.L1682
	.word	.L1678
	.word	.L1678
	.word	.L1678
	.word	.L1678
	.word	.L1678
	.word	.L1678
	.word	.L1678
	.word	.L1678
	.word	.L1678
	.word	.L1678
	.word	.L1678
	.word	.L1678
	.word	.L1678
	.word	.L1678
	.word	.L1678
	.word	.L1678
	.word	.L1678
	.word	.L1678
	.word	.L1678
	.word	.L1678
	.word	.L1678
	.word	.L1678
	.word	.L1678
	.word	.L1683
.L1705:
	.loc 27 431 0
	mov	r7, #1
.L1679:
.LVL1578:
	ldmia	r8, {r0, r1}
.LBB6137:
.LBB6138:
	.loc 28 536 0
	tst	r2, #7
	add	r9, sp, #24
	ldr	r8, [sp, #8]
.LVL1579:
	stmdb	r9, {r0, r1}
	bne	.L1710
.LVL1580:
	.loc 28 537 0
	and	r0, r8, #7
.LVL1581:
	ldr	r8, [r3]
.LVL1582:
	.loc 28 538 0
	bic	r9, r2, #7
.LBE6138:
.LBE6137:
.LBB6141:
.LBB6142:
	.loc 28 481 0
	ldr	r1, [sp, #20]
.LBE6142:
.LBE6141:
.LBB6145:
.LBB6139:
	.loc 28 538 0
	orr	r0, r9, r0
.LVL1583:
.LBE6139:
.LBE6145:
.LBB6146:
.LBB6147:
	.loc 28 1035 0
	and	r9, r8, #14
	cmp	r9, #14
.LBE6147:
.LBE6146:
.LBB6150:
.LBB6143:
	.loc 28 481 0
	bic	r1, r1, #2
.LVL1584:
.LBE6143:
.LBE6150:
.LBB6151:
.LBB6148:
	.loc 28 1037 0
	uxtbeq	r8, r8
.LBE6148:
.LBE6151:
.LBB6152:
.LBB6144:
	.loc 28 482 0
	orr	r1, r1, r7, asl #1
.LBE6144:
.LBE6152:
.LBB6153:
.LBB6149:
	.loc 28 1036 0
	andne	r8, r8, #15
.LBE6149:
.LBE6153:
.LBB6154:
.LBB6155:
	.loc 28 509 0
	bic	r1, r1, #1
.LBE6155:
.LBE6154:
	.loc 27 444 0
	cmp	r8, #0
.LBB6157:
.LBB6156:
	.loc 28 510 0
	orr	r1, r1, r7
.LVL1585:
.LBE6156:
.LBE6157:
	.loc 27 444 0
	bne	.L1711
.LVL1586:
.LBB6158:
.LBB6159:
	.loc 28 450 0
	ldr	r7, [r3, #12]
.LVL1587:
.LBE6159:
.LBE6158:
	.loc 27 446 0
	bics	r7, r7, #7
	bne	.L1694
.LVL1588:
.LBB6160:
.LBB6161:
	.loc 28 525 0 discriminator 2
	ldr	r7, [r3, #8]
.LBE6161:
.LBE6160:
	.loc 27 446 0 discriminator 2
	bics	r7, r7, #7
	bne	.L1694
.LVL1589:
.LBB6162:
.LBB6163:
.LBB6164:
.LBB6165:
	.loc 28 1035 0
	and	r7, lr, #14
	cmp	r7, #14
	.loc 28 1037 0
	uxtbeq	r7, lr
	.loc 28 1036 0
	andne	r7, lr, #15
.LBE6165:
.LBE6164:
	.loc 27 391 0
	cmp	r7, #2
	beq	.L1712
.LVL1590:
.L1698:
.LBE6163:
.LBE6162:
.LBB6186:
.LBB6187:
	.loc 28 461 0
	tst	r3, #7
.LBE6187:
.LBE6186:
	.loc 27 453 0
	str	ip, [r3]
.LVL1591:
	str	r5, [r3, #4]
	.loc 27 454 0
	str	r0, [r3, #8]
	str	r1, [r3, #12]
.LVL1592:
.LBB6191:
.LBB6188:
	.loc 28 461 0
	bne	.L1713
	.loc 28 462 0
	ldr	r0, [r2, #12]
.LVL1593:
	.loc 28 463 0
	bic	r3, r3, #7
.LVL1594:
.LBE6188:
.LBE6191:
	.loc 27 456 0
	bics	r1, r1, #7
.LVL1595:
.LBB6192:
.LBB6189:
	.loc 28 462 0
	and	r0, r0, #7
	.loc 28 463 0
	orr	r0, r0, r3
	str	r0, [r2, #12]
.LVL1596:
.LBE6189:
.LBE6192:
.LBB6193:
.LBB6194:
	.loc 28 546 0
	ldrne	r2, [r1, #8]
.LVL1597:
	andne	r2, r2, #7
	.loc 28 547 0
	orrne	r3, r2, r3
	strne	r3, [r1, #8]
.LBE6194:
.LBE6193:
	.loc 27 461 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.LVL1598:
.L1683:
	.cfi_restore_state
.LBB6195:
.LBB6196:
	.loc 28 1035 0
	and	r1, lr, #14
	cmp	r1, #14
	.loc 28 1037 0
	uxtbeq	r1, lr
	.loc 28 1036 0
	andne	r1, lr, #15
.LBE6196:
.LBE6195:
	.loc 27 426 0
	sub	r7, r1, #14
	clz	r7, r7
	mov	r7, r7, lsr #5
.LVL1599:
	.loc 27 428 0
	b	.L1679
.LVL1600:
.L1682:
.LBB6197:
.LBB6198:
	.loc 28 1329 0
	and	r1, ip, #15
	cmp	r1, #6
	bne	.L1687
.LBE6198:
.LBE6197:
.LBB6201:
.LBB6202:
	and	r1, lr, #15
.LBE6202:
.LBE6201:
.LBB6204:
.LBB6199:
	.loc 28 1332 0
	mov	r0, r5, lsr #4
.LVL1601:
.LBE6199:
.LBE6204:
.LBB6205:
.LBB6203:
	.loc 28 1329 0
	cmp	r1, #6
	bne	.L1687
.LVL1602:
.LBE6203:
.LBE6205:
	.loc 27 421 0
	cmp	r0, r6, lsr #4
	movne	r7, #1
	moveq	r7, #0
.LVL1603:
	.loc 27 423 0
	b	.L1679
.LVL1604:
.L1681:
.LBB6206:
.LBB6207:
	.loc 28 1277 0
	and	r1, ip, #15
	cmp	r1, #4
	bne	.L1685
.LBE6207:
.LBE6206:
.LBB6210:
.LBB6211:
	and	r1, lr, #15
.LBE6211:
.LBE6210:
.LBB6213:
.LBB6208:
	.loc 28 1280 0
	mov	r0, ip, lsr #4
.LVL1605:
.LBE6208:
.LBE6213:
.LBB6214:
.LBB6212:
	.loc 28 1277 0
	cmp	r1, #4
	bne	.L1685
.LVL1606:
.LBE6212:
.LBE6214:
	.loc 27 415 0
	cmp	r0, lr, lsr #4
	movne	r7, #1
	moveq	r7, #0
.LVL1607:
	.loc 27 417 0
	b	.L1679
.LVL1608:
.L1678:
	.loc 27 435 0
	mov	r7, #0
	b	.L1679
.LVL1609:
.L1712:
.LBB6215:
.LBB6184:
.LBB6166:
.LBB6167:
	.loc 28 1035 0
	cmp	r4, #14
	.loc 28 1037 0
	uxtbeq	r4, ip
	.loc 28 1036 0
	andne	r4, ip, #15
.LBE6167:
.LBE6166:
	.loc 27 392 0
	cmp	r4, #2
	bne	.L1698
.LVL1610:
.LBB6168:
.LBB6169:
	.loc 28 1142 0
	and	r4, lr, #15
	cmp	r4, #2
	bne	.L1702
.LBE6169:
.LBE6168:
.LBB6172:
.LBB6173:
	and	r4, ip, #15
.LBE6173:
.LBE6172:
.LBB6175:
.LBB6170:
	.loc 28 1145 0
	bic	lr, lr, #15
.LVL1611:
.LBE6170:
.LBE6175:
.LBB6176:
.LBB6174:
	.loc 28 1142 0
	cmp	r4, #2
	bne	.L1702
.LVL1612:
	.loc 28 1145 0
	bic	r4, ip, #15
.LBE6174:
.LBE6176:
	.loc 27 393 0
	cmp	lr, r4
	bne	.L1698
.LVL1613:
.LBB6177:
.LBB6178:
	.loc 28 1117 0
	and	lr, r5, #31
.LVL1614:
.LBE6178:
.LBE6177:
.LBB6179:
.LBB6180:
	and	r6, r6, #31
.LVL1615:
.LBE6180:
.LBE6179:
	.loc 27 395 0
	cmp	lr, r6
	.loc 27 398 0
	subeq	r4, lr, #4
	.loc 27 397 0
	moveq	r6, #32
.LBB6181:
.LBB6182:
	.loc 28 1108 0
	orreq	lr, lr, r6, asl r4
.LVL1616:
	streq	lr, [r2, #4]
.LVL1617:
	b	.L1698
.LVL1618:
.L1687:
.LBE6182:
.LBE6181:
.LBE6184:
.LBE6215:
.LBB6216:
.LBB6200:
	bl	cap_notification_cap_get_capNtfnBadge.part.199
.LVL1619:
.L1685:
.LBE6200:
.LBE6216:
.LBB6217:
.LBB6209:
	bl	cap_endpoint_cap_get_capEPBadge.isra.180.part.181
.LVL1620:
.L1694:
.LBE6209:
.LBE6217:
	.loc 27 446 0 discriminator 3
	movw	r0, #:lower16:.LC103
.LVL1621:
	movw	r1, #:lower16:.LC102
.LVL1622:
	movt	r0, #:upper16:.LC103
	movt	r1, #:upper16:.LC102
	movw	r2, #447
.LVL1623:
	ldr	r3, .L1714
.LVL1624:
	bl	_assert_fail
.LVL1625:
.L1710:
.LBB6218:
.LBB6140:
	.loc 28 536 0
	movw	r0, #:lower16:.LC100
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC100
	movt	r1, #:upper16:.LC30
	mov	r2, #536
.LVL1626:
	ldr	r3, .L1714+4
.LVL1627:
	bl	_assert_fail
.LVL1628:
.L1713:
.LBE6140:
.LBE6218:
.LBB6219:
.LBB6190:
	bl	mdb_node_ptr_set_mdbNext.isra.200.part.201
.LVL1629:
.L1711:
.LBE6190:
.LBE6219:
	.loc 27 444 0 discriminator 1
	movw	r0, #:lower16:.LC101
.LVL1630:
	movw	r1, #:lower16:.LC102
.LVL1631:
	movt	r0, #:upper16:.LC101
	movt	r1, #:upper16:.LC102
	mov	r2, #444
.LVL1632:
	ldr	r3, .L1714
.LVL1633:
	bl	_assert_fail
.LVL1634:
.L1702:
.LBB6220:
.LBB6185:
.LBB6183:
.LBB6171:
	bl	cap_untyped_cap_get_capPtr.isra.75.part.76
.LVL1635:
.L1715:
	.align	2
.L1714:
	.word	.LANCHOR4+3228
	.word	.LANCHOR4+3204
.LBE6171:
.LBE6183:
.LBE6185:
.LBE6220:
	.cfi_endproc
.LFE567:
	.size	cteInsert, .-cteInsert
	.align	2
	.global	invokeCNodeInsert
	.type	invokeCNodeInsert, %function
invokeCNodeInsert:
.LFB562:
	.loc 27 328 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1636:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 27 328 0
	stmia	sp, {r0, r1}
	.loc 27 329 0
	ldmia	sp, {r0, r1}
	bl	cteInsert
.LVL1637:
	.loc 27 332 0
	mov	r0, #0
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE562:
	.size	invokeCNodeInsert, .-invokeCNodeInsert
	.section	.text.unlikely
	.align	2
	.type	cap_reply_cap_new.part.206, %function
cap_reply_cap_new.part.206:
.LFB897:
	.loc 28 1419 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1638:
	.loc 28 1426 0
	movw	r0, #:lower16:.LC104
	movw	r1, #:lower16:.LC30
	.loc 28 1419 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1426 0
	movt	r0, #:upper16:.LC104
	movt	r1, #:upper16:.LC30
	movw	r2, #1426
	ldr	r3, .L1720
	bl	_assert_fail
.LVL1639:
.L1721:
	.align	2
.L1720:
	.word	.LANCHOR4+3240
	.cfi_endproc
.LFE897:
	.size	cap_reply_cap_new.part.206, .-cap_reply_cap_new.part.206
	.align	2
	.type	thread_state_ptr_set_blockingObject.isra.207.part.208, %function
thread_state_ptr_set_blockingObject.isra.207.part.208:
.LFB899:
	.loc 28 136 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1640:
	.loc 28 138 0
	movw	r0, #:lower16:.LC105
	movw	r1, #:lower16:.LC30
	.loc 28 136 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 138 0
	movt	r0, #:upper16:.LC105
	movt	r1, #:upper16:.LC30
	mov	r2, #138
	ldr	r3, .L1724
	bl	_assert_fail
.LVL1641:
.L1725:
	.align	2
.L1724:
	.word	.LANCHOR4+3260
	.cfi_endproc
.LFE899:
	.size	thread_state_ptr_set_blockingObject.isra.207.part.208, .-thread_state_ptr_set_blockingObject.isra.207.part.208
	.align	2
	.type	endpoint_ptr_set_epQueue_head.isra.211.part.212, %function
endpoint_ptr_set_epQueue_head.isra.211.part.212:
.LFB903:
	.loc 28 374 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1642:
	.loc 28 376 0
	movw	r0, #:lower16:.LC105
	movw	r1, #:lower16:.LC30
	.loc 28 374 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 376 0
	movt	r0, #:upper16:.LC105
	movt	r1, #:upper16:.LC30
	mov	r2, #376
	ldr	r3, .L1728
	bl	_assert_fail
.LVL1643:
.L1729:
	.align	2
.L1728:
	.word	.LANCHOR4+3296
	.cfi_endproc
.LFE903:
	.size	endpoint_ptr_set_epQueue_head.isra.211.part.212, .-endpoint_ptr_set_epQueue_head.isra.211.part.212
	.align	2
	.type	endpoint_ptr_set_epQueue_tail.isra.213.part.214, %function
endpoint_ptr_set_epQueue_tail.isra.213.part.214:
.LFB905:
	.loc 28 393 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1644:
	.loc 28 395 0
	movw	r0, #:lower16:.LC105
	movw	r1, #:lower16:.LC30
	.loc 28 393 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 395 0
	movt	r0, #:upper16:.LC105
	movt	r1, #:upper16:.LC30
	movw	r2, #395
	ldr	r3, .L1732
	bl	_assert_fail
.LVL1645:
.L1733:
	.align	2
.L1732:
	.word	.LANCHOR4+3328
	.cfi_endproc
.LFE905:
	.size	endpoint_ptr_set_epQueue_tail.isra.213.part.214, .-endpoint_ptr_set_epQueue_tail.isra.213.part.214
	.align	2
	.type	endpoint_ptr_set_state.isra.215.part.216, %function
endpoint_ptr_set_state.isra.215.part.216:
.LFB907:
	.loc 28 412 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1646:
	.loc 28 414 0
	movw	r0, #:lower16:.LC106
	movw	r1, #:lower16:.LC30
	.loc 28 412 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 414 0
	movt	r0, #:upper16:.LC106
	movt	r1, #:upper16:.LC30
	movw	r2, #414
	ldr	r3, .L1736
	bl	_assert_fail
.LVL1647:
.L1737:
	.align	2
.L1736:
	.word	.LANCHOR4+3360
	.cfi_endproc
.LFE907:
	.size	endpoint_ptr_set_state.isra.215.part.216, .-endpoint_ptr_set_state.isra.215.part.216
	.text
	.align	2
	.global	invokeIRQControl
	.type	invokeIRQControl, %function
invokeIRQControl:
.LFB599:
	.loc 30 85 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1648:
.LBB6225:
.LBB6226:
	.loc 30 265 0
	movw	ip, #:lower16:intStateIRQTable
.LBE6226:
.LBE6225:
	.loc 30 85 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
.LBB6231:
.LBB6227:
	.loc 30 265 0
	movt	ip, #:upper16:intStateIRQTable
.LBE6227:
.LBE6231:
	.loc 30 85 0
	mov	r4, r0
.LVL1649:
.LBB6232:
.LBB6228:
	.loc 30 265 0
	mov	lr, #1
.LBE6228:
.LBE6232:
	.loc 30 85 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 32
	.loc 30 85 0
	mov	r6, r1
.LBB6233:
.LBB6229:
	.loc 30 266 0
	mov	r1, r0
.LVL1650:
	mov	r0, #0
.LVL1651:
.LBE6229:
.LBE6233:
	.loc 30 85 0
	mov	r7, r2
.LBB6234:
.LBB6230:
	.loc 30 265 0
	str	lr, [ip, r4, asl #2]
	.loc 30 266 0
	bl	maskInterrupt
.LVL1652:
.LBE6230:
.LBE6234:
.LBB6235:
.LBB6236:
	.loc 28 2248 0
	bics	r5, r4, #255
	bne	.L1741
.LVL1653:
	.loc 28 2249 0
	uxtb	r4, r4
.LVL1654:
	.loc 28 2254 0
	mov	r3, #30
.LBE6236:
.LBE6235:
	.loc 30 87 0
	add	r1, sp, #8
.LBB6239:
.LBB6237:
	.loc 28 2249 0
	stmia	sp, {r3, r4}
.LBE6237:
.LBE6239:
	.loc 30 87 0
	mov	r2, r7
	ldmdb	r1, {r0, r1}
	mov	r3, r6
	bl	cteInsert
.LVL1655:
	.loc 30 90 0
	mov	r0, r5
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL1656:
.L1741:
	.cfi_restore_state
.LBB6240:
.LBB6238:
	.loc 28 2248 0
	movw	r0, #:lower16:.LC107
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC107
	movt	r1, #:upper16:.LC30
	movw	r2, #2248
	ldr	r3, .L1742
	bl	_assert_fail
.LVL1657:
.L1743:
	.align	2
.L1742:
	.word	.LANCHOR4+3384
.LBE6238:
.LBE6240:
	.cfi_endproc
.LFE599:
	.size	invokeIRQControl, .-invokeIRQControl
	.section	.text.unlikely
	.align	2
	.type	cap_notification_cap_get_capNtfnCanSend.part.218, %function
cap_notification_cap_get_capNtfnCanSend.part.218:
.LFB909:
	.loc 28 1379 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 1381 0
	movw	r0, #:lower16:.LC33
	movw	r1, #:lower16:.LC30
	.loc 28 1379 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 1381 0
	movt	r0, #:upper16:.LC33
	movt	r1, #:upper16:.LC30
	movw	r2, #1382
	ldr	r3, .L1746
	bl	_assert_fail
.LVL1658:
.L1747:
	.align	2
.L1746:
	.word	.LANCHOR4+3408
	.cfi_endproc
.LFE909:
	.size	cap_notification_cap_get_capNtfnCanSend.part.218, .-cap_notification_cap_get_capNtfnCanSend.part.218
	.text
	.align	2
	.global	hasRecycleRights
	.type	hasRecycleRights, %function
hasRecycleRights:
.LFB626:
	.loc 36 273 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 36 273 0
	stmia	sp, {r0, r1}
	mov	r3, r0
.LVL1659:
.LBB6241:
.LBB6242:
	.loc 28 1035 0
	and	r0, r0, #14
.LVL1660:
.LBE6242:
.LBE6241:
	.loc 36 273 0
	mov	r2, sp
.LBB6245:
.LBB6243:
	.loc 28 1035 0
	cmp	r0, #14
	beq	.L1749
	.loc 28 1036 0
	and	r0, r3, #15
.LBE6243:
.LBE6245:
	.loc 36 274 0
	cmp	r0, #4
	beq	.L1751
	cmp	r0, #6
	beq	.L1752
	cmp	r0, #0
	beq	.L1753
.L1750:
	.loc 36 289 0
	tst	r0, #1
	beq	.L1764
	.loc 36 290 0
	ldmia	r2, {r0, r1}
.LVL1661:
	.loc 36 295 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 36 290 0
	b	Arch_hasRecycleRights
.LVL1662:
.L1756:
	.cfi_restore_state
	and	r3, r3, #15
.LVL1663:
.LBB6246:
.LBB6247:
	.loc 28 1381 0
	cmp	r3, #6
	bne	.L1785
.LVL1664:
.L1752:
.LBE6247:
.LBE6246:
	.loc 36 285 0
	ands	r0, r1, #1
.LVL1665:
.LBB6249:
.LBB6250:
	.loc 28 1358 0
	ubfxne	r0, r1, #1, #1
.LVL1666:
.L1753:
.LBE6250:
.LBE6249:
	.loc 36 295 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.LVL1667:
.L1749:
	.cfi_restore_state
.LBB6251:
.LBB6244:
	.loc 28 1037 0
	uxtb	r0, r3
.LBE6244:
.LBE6251:
	.loc 36 274 0
	cmp	r0, #4
	beq	.L1754
	bls	.L1786
	cmp	r0, #6
	beq	.L1756
	cmp	r0, #62
	bne	.L1750
.L1760:
	.loc 36 277 0
	mov	r0, #0
	b	.L1753
.L1754:
.LVL1668:
	and	r3, r3, #15
.LVL1669:
.LBB6252:
.LBB6253:
	.loc 28 1251 0
	cmp	r3, #4
	bne	.L1787
.LVL1670:
.L1751:
.LBE6253:
.LBE6252:
	.loc 36 281 0
	ands	r0, r1, #1
.LVL1671:
	beq	.L1753
.LVL1672:
.LBB6255:
.LBB6256:
	.loc 28 1228 0
	ubfx	r0, r1, #1, #1
.LVL1673:
.LBE6256:
.LBE6255:
	.loc 36 280 0
	cmp	r0, #0
.LBB6257:
.LBB6258:
	.loc 28 1202 0
	ubfxne	r0, r1, #2, #1
.LBE6258:
.LBE6257:
	.loc 36 295 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.LVL1674:
.L1764:
	.cfi_restore_state
	.loc 36 292 0
	mov	r0, #1
	b	.L1753
.L1786:
	.loc 36 274 0
	cmp	r0, #0
	beq	.L1760
	b	.L1750
.LVL1675:
.L1785:
.LBB6259:
.LBB6248:
	bl	cap_notification_cap_get_capNtfnCanSend.part.218
.LVL1676:
.L1787:
.LBE6248:
.LBE6259:
.LBB6260:
.LBB6254:
	bl	cap_endpoint_cap_get_capCanSend.part.178
.LVL1677:
.LBE6254:
.LBE6260:
	.cfi_endproc
.LFE626:
	.size	hasRecycleRights, .-hasRecycleRights
	.section	.text.unlikely
	.align	2
	.type	notification_ptr_set_ntfnQueue_head.isra.219.part.220, %function
notification_ptr_set_ntfnQueue_head.isra.219.part.220:
.LFB911:
	.loc 28 228 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1678:
	.loc 28 230 0
	movw	r0, #:lower16:.LC105
	movw	r1, #:lower16:.LC30
	.loc 28 228 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 230 0
	movt	r0, #:upper16:.LC105
	movt	r1, #:upper16:.LC30
	mov	r2, #230
	ldr	r3, .L1790
	bl	_assert_fail
.LVL1679:
.L1791:
	.align	2
.L1790:
	.word	.LANCHOR4+3448
	.cfi_endproc
.LFE911:
	.size	notification_ptr_set_ntfnQueue_head.isra.219.part.220, .-notification_ptr_set_ntfnQueue_head.isra.219.part.220
	.align	2
	.type	notification_ptr_set_ntfnQueue_tail.isra.221.part.222, %function
notification_ptr_set_ntfnQueue_tail.isra.221.part.222:
.LFB913:
	.loc 28 247 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1680:
	.loc 28 249 0
	movw	r0, #:lower16:.LC105
	movw	r1, #:lower16:.LC30
	.loc 28 247 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 249 0
	movt	r0, #:upper16:.LC105
	movt	r1, #:upper16:.LC30
	mov	r2, #249
	ldr	r3, .L1794
	bl	_assert_fail
.LVL1681:
.L1795:
	.align	2
.L1794:
	.word	.LANCHOR4+3484
	.cfi_endproc
.LFE913:
	.size	notification_ptr_set_ntfnQueue_tail.isra.221.part.222, .-notification_ptr_set_ntfnQueue_tail.isra.221.part.222
	.align	2
	.type	notification_ptr_set_state.isra.223.part.224, %function
notification_ptr_set_state.isra.223.part.224:
.LFB915:
	.loc 28 266 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1682:
	.loc 28 268 0
	movw	r0, #:lower16:.LC106
	movw	r1, #:lower16:.LC30
	.loc 28 266 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 268 0
	movt	r0, #:upper16:.LC106
	movt	r1, #:upper16:.LC30
	mov	r2, #268
	ldr	r3, .L1798
	bl	_assert_fail
.LVL1683:
.L1799:
	.align	2
.L1798:
	.word	.LANCHOR4+3520
	.cfi_endproc
.LFE915:
	.size	notification_ptr_set_state.isra.223.part.224, .-notification_ptr_set_state.isra.223.part.224
	.text
	.align	2
	.global	completeSignal
	.type	completeSignal, %function
completeSignal:
.LFB617:
	.file 50 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/object/notification.c"
	.loc 50 193 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1684:
	.loc 50 196 0
	cmp	r1, #0
	.loc 50 193 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 50 196 0
	beq	.L1801
.LVL1685:
.LBB6275:
.LBB6276:
	.loc 28 257 0 discriminator 1
	ldr	r3, [r0]
	and	r3, r3, #3
.LBE6276:
.LBE6275:
	.loc 50 196 0 discriminator 1
	cmp	r3, #2
	bne	.L1801
	ldr	r3, [r0, #8]
.LVL1686:
.LBB6277:
.LBB6278:
	.loc 13 21 0
	str	r3, [r1]
.LVL1687:
.LBE6278:
.LBE6277:
.LBB6279:
.LBB6280:
	.loc 28 269 0
	ldr	r3, [r0]
.LVL1688:
	bic	r3, r3, #3
	str	r3, [r0]
.LVL1689:
	ldmfd	sp!, {r3, pc}
.LVL1690:
.L1801:
.LBE6280:
.LBE6279:
.LBB6281:
.LBB6282:
	.loc 50 201 0
	movw	r0, #:lower16:.LC108
.LVL1691:
	movw	r1, #:lower16:.LC109
.LVL1692:
	movt	r0, #:upper16:.LC108
	movt	r1, #:upper16:.LC109
	mov	r2, #201
	ldr	r3, .L1807
	bl	_fail
.LVL1693:
.L1808:
	.align	2
.L1807:
	.word	.LANCHOR4+3548
.LBE6282:
.LBE6281:
	.cfi_endproc
.LFE617:
	.size	completeSignal, .-completeSignal
	.section	.text.unlikely
	.align	2
	.type	notification_ptr_set_ntfnBoundTCB.isra.226.part.227, %function
notification_ptr_set_ntfnBoundTCB.isra.226.part.227:
.LFB918:
	.loc 28 190 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1694:
	.loc 28 192 0
	movw	r0, #:lower16:.LC105
	movw	r1, #:lower16:.LC30
	.loc 28 190 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 192 0
	movt	r0, #:upper16:.LC105
	movt	r1, #:upper16:.LC30
	mov	r2, #192
	ldr	r3, .L1811
	bl	_assert_fail
.LVL1695:
.L1812:
	.align	2
.L1811:
	.word	.LANCHOR4+3564
	.cfi_endproc
.LFE918:
	.size	notification_ptr_set_ntfnBoundTCB.isra.226.part.227, .-notification_ptr_set_ntfnBoundTCB.isra.226.part.227
	.text
	.align	2
	.global	unbindNotification
	.type	unbindNotification, %function
unbindNotification:
.LFB620:
	.loc 50 225 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL1696:
	.loc 50 227 0
	ldr	r3, [r0, #84]
.LVL1697:
	.loc 50 229 0
	cmp	r3, #0
.LVL1698:
.LBB6287:
.LBB6288:
.LBB6289:
.LBB6290:
	.loc 28 193 0
	ldrne	r2, [r3, #12]
.LBE6290:
.LBE6289:
	.loc 50 209 0
	movne	r1, #0
.LBB6292:
.LBB6291:
	.loc 28 193 0
	andne	r2, r2, #15
	strne	r2, [r3, #12]
.LBE6291:
.LBE6292:
	.loc 50 209 0
	strne	r1, [r0, #84]
	bx	lr
.LBE6288:
.LBE6287:
	.cfi_endproc
.LFE620:
	.size	unbindNotification, .-unbindNotification
	.align	2
	.global	unbindMaybeNotification
	.type	unbindMaybeNotification, %function
unbindMaybeNotification:
.LFB619:
	.loc 50 214 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL1699:
	ldr	r3, [r0, #12]
.LVL1700:
	.loc 50 218 0
	bics	r2, r3, #15
.LVL1701:
.LBB6299:
.LBB6300:
.LBB6301:
.LBB6302:
	.loc 28 193 0
	andne	r3, r3, #15
.LBE6302:
.LBE6301:
	.loc 50 209 0
	movne	r1, #0
.LBB6304:
.LBB6303:
	.loc 28 193 0
	strne	r3, [r0, #12]
.LBE6303:
.LBE6304:
	.loc 50 209 0
	strne	r1, [r2, #84]
	bx	lr
.LBE6300:
.LBE6299:
	.cfi_endproc
.LFE619:
	.size	unbindMaybeNotification, .-unbindMaybeNotification
	.align	2
	.global	bindNotification
	.type	bindNotification, %function
bindNotification:
.LFB621:
	.loc 50 236 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1702:
.LBB6307:
.LBB6308:
	.loc 28 192 0
	tst	r0, #15
.LBE6308:
.LBE6307:
	.loc 50 236 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
.LBB6311:
.LBB6309:
	.loc 28 192 0
	bne	.L1826
	.loc 28 193 0
	ldr	r3, [r1, #12]
	.loc 28 194 0
	bic	r2, r0, #15
	.loc 28 193 0
	and	r3, r3, #15
	.loc 28 194 0
	orr	r3, r2, r3
	str	r3, [r1, #12]
.LBE6309:
.LBE6311:
	.loc 50 238 0
	str	r1, [r0, #84]
	ldmfd	sp!, {r3, pc}
.L1826:
.LBB6312:
.LBB6310:
	bl	notification_ptr_set_ntfnBoundTCB.isra.226.part.227
.LVL1703:
.LBE6310:
.LBE6312:
	.cfi_endproc
.LFE621:
	.size	bindNotification, .-bindNotification
	.align	2
	.global	invokeTCB_NotificationControl
	.type	invokeTCB_NotificationControl, %function
invokeTCB_NotificationControl:
.LFB667:
	.loc 31 1089 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1704:
	.loc 31 1090 0
	cmp	r1, #0
	.loc 31 1089 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 31 1090 0
	beq	.L1828
.LVL1705:
.LBB6329:
.LBB6330:
.LBB6331:
.LBB6332:
	.loc 28 192 0
	tst	r0, #15
	bne	.L1835
	.loc 28 193 0
	ldr	r3, [r1, #12]
	.loc 28 194 0
	bic	r2, r0, #15
	.loc 28 193 0
	and	r3, r3, #15
	.loc 28 194 0
	orr	r3, r3, r2
	str	r3, [r1, #12]
.LBE6332:
.LBE6331:
	.loc 50 238 0
	str	r1, [r0, #84]
.LBE6330:
.LBE6329:
	.loc 31 1097 0
	mov	r0, #0
.LVL1706:
	ldmfd	sp!, {r3, pc}
.LVL1707:
.L1828:
.LBB6336:
.LBB6337:
.LBB6338:
	.loc 50 227 0
	ldr	r3, [r0, #84]
.LVL1708:
	.loc 50 229 0
	cmp	r3, #0
.LVL1709:
.LBB6339:
.LBB6340:
.LBB6341:
.LBB6342:
	.loc 28 193 0
	ldrne	r2, [r3, #12]
	andne	r2, r2, #15
	strne	r2, [r3, #12]
.LBE6342:
.LBE6341:
	.loc 50 209 0
	strne	r1, [r0, #84]
.LBE6340:
.LBE6339:
.LBE6338:
.LBE6337:
.LBE6336:
	.loc 31 1097 0
	mov	r0, #0
.LVL1710:
	ldmfd	sp!, {r3, pc}
.LVL1711:
.L1835:
.LBB6343:
.LBB6335:
.LBB6334:
.LBB6333:
	bl	notification_ptr_set_ntfnBoundTCB.isra.226.part.227
.LVL1712:
.LBE6333:
.LBE6334:
.LBE6335:
.LBE6343:
	.cfi_endproc
.LFE667:
	.size	invokeTCB_NotificationControl, .-invokeTCB_NotificationControl
	.section	.text.unlikely
	.align	2
	.type	cap_irq_handler_cap_get_capIRQ.part.229, %function
cap_irq_handler_cap_get_capIRQ.part.229:
.LFB920:
	.loc 28 2258 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 2260 0
	movw	r0, #:lower16:.LC110
	movw	r1, #:lower16:.LC30
	.loc 28 2258 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 2260 0
	movt	r0, #:upper16:.LC110
	movt	r1, #:upper16:.LC30
	movw	r2, #2261
	ldr	r3, .L1838
	bl	_assert_fail
.LVL1713:
.L1839:
	.align	2
.L1838:
	.word	.LANCHOR4+3600
	.cfi_endproc
.LFE920:
	.size	cap_irq_handler_cap_get_capIRQ.part.229, .-cap_irq_handler_cap_get_capIRQ.part.229
	.text
	.align	2
	.global	sameRegionAs
	.type	sameRegionAs, %function
sameRegionAs:
.LFB627:
	.loc 36 299 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 40
	.loc 36 299 0
	stmia	sp, {r2, r3}
.LBB6464:
.LBB6465:
	.loc 28 1035 0
	and	r3, r0, #14
	cmp	r3, #14
.LBE6465:
.LBE6464:
	.loc 36 299 0
	add	lr, sp, #8
	stmia	lr, {r0, r1}
	mov	ip, sp
	mov	r1, r0
	ldr	r5, [sp, #12]
.LVL1714:
	ldr	r4, [sp, #4]
.LVL1715:
.LBB6469:
.LBB6466:
	.loc 28 1035 0
	beq	.L1841
	.loc 28 1036 0
	and	r0, r0, #15
.LVL1716:
.LBE6466:
.LBE6469:
	.loc 36 300 0
	sub	r3, r0, #2
	cmp	r3, #12
	ldrls	pc, [pc, r3, asl #2]
	b	.L1842
.L1844:
	.word	.L1843
	.word	.L1842
	.word	.L1845
	.word	.L1842
	.word	.L1846
	.word	.L1842
	.word	.L1847
	.word	.L1842
	.word	.L1848
	.word	.L1842
	.word	.L1849
	.word	.L1842
	.word	.L1850
.LVL1717:
.L1841:
.LBB6470:
.LBB6467:
	.loc 28 1037 0
	uxtb	r3, r0
.LBE6467:
.LBE6470:
	.loc 36 300 0
	sub	r6, r3, #2
.LBB6471:
.LBB6468:
	.loc 28 1037 0
	mov	r0, r3
.LVL1718:
.LBE6468:
.LBE6471:
	.loc 36 300 0
	cmp	r6, #60
	ldrls	pc, [pc, r6, asl #2]
	b	.L1842
.L1852:
	.word	.L1851
	.word	.L1842
	.word	.L1845
	.word	.L1842
	.word	.L1846
	.word	.L1842
	.word	.L1847
	.word	.L1842
	.word	.L1848
	.word	.L1842
	.word	.L1849
	.word	.L1842
	.word	.L1850
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1853
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1842
	.word	.L1854
.L1850:
.LVL1719:
.LBB6472:
.LBB6473:
	.loc 28 1035 0
	and	r3, r2, #14
	cmp	r3, #14
	.loc 28 1037 0
	uxtbeq	r0, r2
	.loc 28 1036 0
	andne	r0, r2, #15
.LBE6473:
.LBE6472:
	.loc 36 358 0
	bic	r0, r0, #16
	sub	r0, r0, #14
	clz	r0, r0
	mov	r0, r0, lsr #5
.LVL1720:
.L1979:
	.loc 36 380 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL1721:
.L1843:
	.cfi_restore_state
.LBB6474:
.LBB6475:
.LBB6476:
.LBB6477:
.LBB6478:
	.loc 28 1035 0
	and	ip, r2, #14
.LBE6478:
.LBE6477:
.LBE6476:
.LBE6475:
.LBB6560:
.LBB6561:
	.loc 28 1145 0
	bic	r7, r1, #15
.LVL1722:
.LBE6561:
.LBE6560:
.LBB6563:
.LBB6549:
.LBB6483:
.LBB6479:
	.loc 28 1035 0
	cmp	ip, #14
	beq	.L1855
	.loc 28 1036 0
	and	r0, r2, #15
.LBE6479:
.LBE6483:
	.loc 39 317 0
	sub	r1, r0, #2
.LVL1723:
.LBB6484:
.LBB6480:
	.loc 28 1036 0
	mov	lr, r0
.LVL1724:
.LBE6480:
.LBE6484:
	.loc 39 317 0
	cmp	r1, #12
	ldrls	pc, [pc, r1, asl #2]
	b	.L1856
.L1858:
	.word	.L1857
	.word	.L1856
	.word	.L1859
	.word	.L1856
	.word	.L1860
	.word	.L1856
	.word	.L1955
	.word	.L1856
	.word	.L1862
	.word	.L1856
	.word	.L1863
	.word	.L1856
	.word	.L1955
.LVL1725:
.L1845:
.LBE6549:
.LBE6563:
.LBE6474:
.LBB6625:
.LBB6626:
	.loc 28 1035 0
	and	r3, r2, #14
	cmp	r3, #14
	.loc 28 1037 0
	uxtbeq	r3, r2
	.loc 28 1036 0
	andne	r3, r2, #15
.LBE6626:
.LBE6625:
	.loc 36 315 0
	cmp	r3, #4
	beq	.L1993
.LVL1726:
.L1972:
	.loc 36 379 0
	mov	r0, #0
	.loc 36 380 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL1727:
.L1846:
	.cfi_restore_state
.LBB6627:
.LBB6628:
	.loc 28 1035 0
	and	r3, r2, #14
	cmp	r3, #14
	.loc 28 1037 0
	uxtbeq	r3, r2
	.loc 28 1036 0
	andne	r3, r2, #15
.LBE6628:
.LBE6627:
	.loc 36 322 0
	cmp	r3, #6
	bne	.L1972
.LVL1728:
.LBB6629:
.LBB6630:
	.loc 28 1407 0
	and	r3, r1, #15
	cmp	r3, #6
	bne	.L1930
.LBE6630:
.LBE6629:
.LBB6632:
.LBB6633:
	and	r0, r2, #15
.LBE6633:
.LBE6632:
.LBB6635:
.LBB6631:
	.loc 28 1410 0
	bic	r3, r1, #15
.LVL1729:
.LBE6631:
.LBE6635:
.LBB6636:
.LBB6634:
	.loc 28 1407 0
	cmp	r0, #6
	beq	.L1991
.LVL1730:
.L1930:
.LBE6634:
.LBE6636:
.LBB6637:
.LBB6564:
.LBB6550:
.LBB6485:
.LBB6486:
	bl	cap_notification_cap_get_capNtfnPtr.isra.68.part.69
.LVL1731:
.L1847:
.LBE6486:
.LBE6485:
.LBE6550:
.LBE6564:
.LBE6637:
.LBB6638:
.LBB6639:
	.loc 28 1035 0
	and	r3, r2, #14
	cmp	r3, #14
	.loc 28 1037 0
	uxtbeq	r3, r2
	.loc 28 1036 0
	andne	r3, r2, #15
.LBE6639:
.LBE6638:
	.loc 36 345 0
	cmp	r3, #8
	bne	.L1972
.LVL1732:
.LBB6640:
.LBB6641:
	.loc 28 1457 0
	and	r3, r1, #15
	cmp	r3, #8
	bne	.L1941
.LBE6641:
.LBE6640:
.LBB6644:
.LBB6645:
	and	r0, r2, #15
.LBE6645:
.LBE6644:
.LBB6647:
.LBB6642:
	.loc 28 1460 0
	bic	r3, r1, #31
.LVL1733:
.LBE6642:
.LBE6647:
.LBB6648:
.LBB6646:
	.loc 28 1457 0
	cmp	r0, #8
	bne	.L1941
.LVL1734:
	.loc 28 1460 0
	bic	r0, r2, #31
.LBE6646:
.LBE6648:
	.loc 36 346 0
	rsb	r0, r0, r3
	clz	r0, r0
	mov	r0, r0, lsr #5
	b	.L1979
.LVL1735:
.L1848:
.LBB6649:
.LBB6650:
	.loc 28 1035 0
	and	r3, r2, #14
	cmp	r3, #14
	.loc 28 1037 0
	uxtbeq	r3, r2
	.loc 28 1036 0
	andne	r3, r2, #15
.LBE6650:
.LBE6649:
	.loc 36 329 0
	cmp	r3, #10
	bne	.L1972
.LVL1736:
.LBB6651:
.LBB6652:
	.loc 28 1577 0
	and	r3, r1, #15
	cmp	r3, #10
	bne	.L1933
.LBE6652:
.LBE6651:
.LBB6654:
.LBB6655:
	and	ip, r2, #15
.LBE6655:
.LBE6654:
.LBB6657:
.LBB6653:
	.loc 28 1580 0
	bic	r3, r1, #31
.LVL1737:
.LBE6653:
.LBE6657:
.LBB6658:
.LBB6656:
	.loc 28 1577 0
	cmp	ip, #10
	bne	.L1933
.LVL1738:
	.loc 28 1580 0
	bic	r0, r2, #31
.LBE6656:
.LBE6658:
	.loc 36 331 0
	cmp	r3, r0
	bne	.L1972
.LVL1739:
.LBB6659:
.LBB6660:
	.loc 28 1540 0 discriminator 1
	ubfx	r3, r5, #18, #5
.LVL1740:
.LBE6660:
.LBE6659:
.LBB6661:
.LBB6662:
	ubfx	r0, r4, #18, #5
.LBE6662:
.LBE6661:
	.loc 36 331 0 discriminator 1
	rsb	r0, r0, r3
	clz	r0, r0
	mov	r0, r0, lsr #5
	b	.L1979
.LVL1741:
.L1849:
.LBB6663:
.LBB6664:
	.loc 28 1035 0
	and	r3, r2, #14
	cmp	r3, #14
	.loc 28 1037 0
	uxtbeq	r3, r2
	.loc 28 1036 0
	andne	r3, r2, #15
.LBE6664:
.LBE6663:
	.loc 36 338 0
	cmp	r3, #12
	bne	.L1972
.LVL1742:
.LBB6665:
.LBB6666:
	.loc 28 1608 0
	and	r3, r1, #15
	cmp	r3, #12
	bne	.L1937
.LBE6666:
.LBE6665:
.LBB6668:
.LBB6669:
	and	r0, r2, #15
.LBE6669:
.LBE6668:
.LBB6671:
.LBB6667:
	.loc 28 1611 0
	bic	r3, r1, #15
.LVL1743:
.LBE6667:
.LBE6671:
.LBB6672:
.LBB6670:
	.loc 28 1608 0
	cmp	r0, #12
	bne	.L1937
.LVL1744:
.L1991:
	.loc 28 1611 0
	bic	r0, r2, #15
.LBE6670:
.LBE6672:
	.loc 36 339 0
	rsb	r0, r0, r3
	clz	r0, r0
	mov	r0, r0, lsr #5
	b	.L1979
.L1842:
	.loc 36 372 0
	ands	r0, r0, #1
	beq	.L1979
.LVL1745:
.LBB6673:
.LBB6674:
.LBB6675:
.LBB6676:
	.loc 28 1035 0 discriminator 1
	and	r3, r2, #14
	cmp	r3, #14
	.loc 28 1037 0 discriminator 1
	uxtbeq	r0, r2
	.loc 28 1036 0 discriminator 1
	andne	r0, r2, #15
.LBE6676:
.LBE6675:
.LBE6674:
.LBE6673:
	.loc 36 372 0 discriminator 1
	ands	r0, r0, #1
	beq	.L1979
	.loc 36 374 0
	ldmia	lr, {r0, r1}
.LVL1746:
	ldmia	ip, {r2, r3}
	.loc 36 380 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL1747:
	.loc 36 374 0
	b	Arch_sameRegionAs
.LVL1748:
.L1854:
	.cfi_restore_state
.LBB6677:
.LBB6678:
	.loc 28 1035 0
	and	r3, r2, #14
	cmp	r3, #14
	bne	.L1972
	.loc 28 1037 0
	uxtb	r0, r2
.LBE6678:
.LBE6677:
	.loc 36 352 0
	sub	r0, r0, #62
	clz	r0, r0
	mov	r0, r0, lsr #5
	b	.L1979
.L1853:
.LVL1749:
.LBB6679:
.LBB6680:
	.loc 28 1035 0
	and	r1, r2, #14
.LVL1750:
	cmp	r1, #14
	bne	.L1972
	.loc 28 1037 0
	uxtb	r0, r2
.LBE6680:
.LBE6679:
	.loc 36 365 0
	cmp	r0, #30
	bne	.L1972
.LVL1751:
.LBB6681:
.LBB6682:
	.loc 28 2260 0
	cmp	r3, #30
	bne	.L1994
.LVL1752:
.LBE6682:
.LBE6681:
	.loc 36 366 0
	uxtb	r3, r5
	uxtb	r0, r4
	rsb	r0, r0, r3
	clz	r0, r0
	mov	r0, r0, lsr #5
	b	.L1979
.LVL1753:
.L1851:
	and	r3, r1, #15
.LBB6684:
.LBB6565:
.LBB6562:
	.loc 28 1142 0
	cmp	r3, #2
	beq	.L1843
.LVL1754:
.L1872:
	bl	cap_untyped_cap_get_capPtr.isra.75.part.76
.LVL1755:
.L1870:
	and	r0, r2, #15
.LVL1756:
.L1863:
.LBE6562:
.LBE6565:
.LBB6566:
.LBB6551:
.LBB6488:
.LBB6489:
	.loc 28 1608 0
	cmp	r0, #12
.LBE6489:
.LBE6488:
	.loc 39 331 0
	biceq	r6, r2, #508
	biceq	r6, r6, #3
.LBB6492:
.LBB6490:
	.loc 28 1608 0
	bne	.L1937
.L1861:
.LVL1757:
.LBE6490:
.LBE6492:
.LBE6551:
.LBE6566:
.LBB6567:
.LBB6568:
.LBB6569:
.LBB6570:
	.loc 28 1035 0
	cmp	ip, #14
	uxtbeq	r1, r2
	beq	.L1899
	and	r0, r2, #15
.LVL1758:
.L1954:
	.loc 28 1036 0
	mov	ip, r0
.LVL1759:
.LBE6570:
.LBE6569:
	.loc 39 265 0
	cmp	r0, #14
	ldrls	pc, [pc, r0, asl #2]
	b	.L1900
.L1902:
	.word	.L1950
	.word	.L1900
	.word	.L1903
	.word	.L1900
	.word	.L1959
	.word	.L1900
	.word	.L1959
	.word	.L1900
	.word	.L1950
	.word	.L1900
	.word	.L1905
	.word	.L1900
	.word	.L1961
	.word	.L1900
	.word	.L1950
.LVL1760:
.L1950:
.LBB6572:
.LBB6573:
	.loc 38 272 0
	mov	r2, #1
.L1904:
.LVL1761:
.LBE6573:
.LBE6572:
.LBE6568:
.LBE6567:
	.loc 36 311 0
	cmp	r6, r7
	movcc	r0, #0
	movcs	r0, #1
	cmp	r6, #0
	moveq	r0, #0
	cmp	r0, #0
	beq	.L1979
.LBB6609:
.LBB6610:
	.loc 28 1117 0 discriminator 1
	and	r0, r5, #31
	sub	r1, r7, #1
.LBE6610:
.LBE6609:
	.loc 36 307 0 discriminator 1
	mov	r5, #1
.LVL1762:
	sub	r3, r6, #1
.LVL1763:
	add	r1, r1, r5, asl r0
	.loc 36 308 0 discriminator 1
	add	r0, r3, r2
	cmp	r6, r0
	cmpls	r0, r1
	movls	r0, #1
	movhi	r0, #0
	b	.L1979
.LVL1764:
.L1869:
	and	r0, r2, #15
.LVL1765:
.L1862:
.LBB6611:
.LBB6552:
.LBB6493:
.LBB6494:
	.loc 28 1577 0
	cmp	r0, #10
	.loc 28 1580 0
	biceq	r6, r2, #31
	.loc 28 1577 0
	beq	.L1861
.LVL1766:
.L1933:
	bl	cap_cnode_cap_get_capCNodePtr.isra.78.part.79
.LVL1767:
.L1868:
	and	r0, r2, #15
.LVL1768:
.L1860:
.LBE6494:
.LBE6493:
.LBB6495:
.LBB6487:
	.loc 28 1407 0
	cmp	r0, #6
	bne	.L1930
.L1898:
.LBE6487:
.LBE6495:
.LBB6496:
.LBB6497:
.LBB6498:
.LBB6499:
	.loc 28 1970 0
	bic	r6, r2, #15
	b	.L1861
.LVL1769:
.L1867:
	and	r0, r2, #15
.LVL1770:
.L1859:
.LBE6499:
.LBE6498:
.LBE6497:
.LBE6496:
.LBB6523:
.LBB6524:
	.loc 28 1185 0
	cmp	r0, #4
	.loc 28 1188 0
	biceq	r6, r4, #15
	.loc 28 1185 0
	beq	.L1861
.LVL1771:
.L1927:
	bl	cap_endpoint_cap_get_capEPPtr.part.77
.LVL1772:
.L1865:
	and	r0, r2, #15
.LVL1773:
.L1857:
.LBE6524:
.LBE6523:
.LBB6525:
.LBB6526:
	.loc 28 1142 0
	cmp	r0, #2
	beq	.L1898
	b	.L1872
.LVL1774:
.L1955:
.LBE6526:
.LBE6525:
	.loc 39 317 0
	mov	r6, #0
	b	.L1861
.LVL1775:
.L1961:
.LBE6552:
.LBE6611:
.LBB6612:
.LBB6603:
.LBB6587:
	.loc 39 283 0
	mov	r2, #512
	b	.L1904
.L1959:
.LBE6587:
	.loc 39 265 0
	mov	r2, #16
	b	.L1904
.LVL1776:
.L1910:
	and	ip, r2, #15
.LVL1777:
.L1903:
.LBB6590:
.LBB6591:
	.loc 28 1114 0
	cmp	ip, #2
	.loc 28 1117 0
	andeq	r0, r4, #31
	moveq	r2, #1
	moveq	r2, r2, asl r0
	.loc 28 1114 0
	beq	.L1904
	bl	cap_untyped_cap_get_capBlockSize.part.146
.LVL1778:
.L1912:
	and	ip, r2, #15
.LVL1779:
.L1905:
.LBE6591:
.LBE6590:
.LBB6592:
.LBB6593:
	.loc 28 1537 0
	cmp	ip, #10
	bne	.L1995
.LVL1780:
	.loc 28 1540 0
	ubfx	r0, r4, #18, #5
	mov	r2, #1
.LBE6593:
.LBE6592:
	.loc 39 276 0
	add	r0, r0, #4
	mov	r2, r2, asl r0
	b	.L1904
.LVL1781:
.L1856:
.LBE6603:
.LBE6612:
.LBB6613:
.LBB6553:
.LBB6527:
.LBB6518:
	.loc 38 302 0
	sub	r1, r0, #1
	cmp	r1, #8
	ldrls	pc, [pc, r1, asl #2]
	b	.L1879
.L1881:
	.word	.L1880
	.word	.L1879
	.word	.L1880
	.word	.L1879
	.word	.L1882
	.word	.L1879
	.word	.L1883
	.word	.L1879
	.word	.L1884
.LVL1782:
.L1900:
.LBE6518:
.LBE6527:
.LBE6553:
.LBE6613:
.LBB6614:
.LBB6604:
.LBB6595:
.LBB6582:
	.loc 38 272 0
	sub	r0, r0, #1
.LVL1783:
	cmp	r0, #8
	ldrls	pc, [pc, r0, asl #2]
	b	.L1950
.L1948:
	.word	.L1917
	.word	.L1950
	.word	.L1917
	.word	.L1950
	.word	.L1952
	.word	.L1950
	.word	.L1953
	.word	.L1950
	.word	.L1974
.LVL1784:
.L1889:
	and	r0, r2, #15
.LVL1785:
.L1884:
.LBE6582:
.LBE6595:
.LBE6604:
.LBE6614:
.LBB6615:
.LBB6554:
.LBB6528:
.LBB6519:
.LBB6501:
.LBB6502:
	.loc 28 2162 0
	cmp	r0, #9
	.loc 28 2165 0
	biceq	r6, r2, #16320
	biceq	r6, r6, #63
	.loc 28 2162 0
	beq	.L1861
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.93.part.94
.LVL1786:
.L1888:
	and	r0, r2, #15
.LVL1787:
.L1883:
.LBE6502:
.LBE6501:
.LBB6503:
.LBB6504:
	.loc 28 2098 0
	cmp	r0, #7
	.loc 28 2101 0
	biceq	r6, r2, #1020
	biceq	r6, r6, #3
	.loc 28 2098 0
	beq	.L1861
	bl	cap_page_table_cap_get_capPTBasePtr.isra.91.part.92
.LVL1788:
.L1887:
	and	r0, r2, #15
.LVL1789:
.L1882:
.LBE6504:
.LBE6503:
.LBB6505:
.LBB6500:
	.loc 28 1967 0
	cmp	r0, #5
	beq	.L1898
	bl	cap_asid_pool_cap_get_capASIDPool.isra.95.part.96
.LVL1790:
.L1880:
.LBE6500:
.LBE6505:
.LBB6506:
.LBB6507:
	.loc 38 207 0
	and	r1, lr, #253
	cmp	r1, #1
	bne	.L1996
	.loc 38 210 0
	cmp	lr, #1
	beq	.L1892
	cmp	lr, #3
	bne	.L1997
.LVL1791:
.LBB6508:
.LBB6509:
	.loc 28 1919 0
	and	r0, r2, #15
	cmp	r0, #3
	.loc 28 1922 0
	biceq	r0, r2, #-268435441
	biceq	r0, r0, #264241152
	moveq	r0, r0, asl #10
	.loc 28 1919 0
	bne	.L1998
.L1891:
.LBE6509:
.LBE6508:
.LBE6507:
.LBE6506:
.LBE6519:
.LBE6528:
.LBB6529:
.LBB6530:
	.loc 39 114 0
	mov	r6, r0
	b	.L1861
.LVL1792:
.L1879:
.LBE6530:
.LBE6529:
.LBE6554:
.LBE6615:
	.loc 36 305 0
	mov	r6, #0
.LVL1793:
	b	.L1954
.LVL1794:
.L1993:
.LBE6684:
.LBB6685:
.LBB6686:
	.loc 28 1185 0
	and	r3, r1, #15
	cmp	r3, #4
	bne	.L1927
.LBE6686:
.LBE6685:
.LBB6688:
.LBB6689:
	and	r0, r2, #15
.LBE6689:
.LBE6688:
.LBB6691:
.LBB6687:
	.loc 28 1188 0
	bic	r3, r5, #15
.LVL1795:
.LBE6687:
.LBE6691:
.LBB6692:
.LBB6690:
	.loc 28 1185 0
	cmp	r0, #4
	bne	.L1927
.LVL1796:
	.loc 28 1188 0
	bic	r0, r4, #15
.LVL1797:
.LBE6690:
.LBE6692:
	.loc 36 316 0
	rsb	r0, r0, r3
.LVL1798:
	clz	r0, r0
	mov	r0, r0, lsr #5
	b	.L1979
.LVL1799:
.L1871:
.LBB6693:
.LBB6616:
.LBB6555:
.LBB6541:
.LBB6539:
.LBB6531:
.LBB6532:
.LBB6533:
.LBB6534:
	.loc 28 2318 0
	cmp	r1, #46
	bne	.L1916
	.loc 28 2321 0
	ubfx	r0, r2, #8, #6
.LVL1800:
.LBE6534:
.LBE6533:
	.loc 39 97 0
	cmp	r0, #32
	.loc 39 100 0
	andne	r0, r0, #31
.LVL1801:
	mvnne	r6, #0
	addne	r0, r0, #1
	.loc 39 97 0
	mvneq	r0, #31
.LVL1802:
	movne	r0, r6, asl r0
.LBE6532:
.LBE6531:
	.loc 39 114 0
	and	r6, r0, r4
.LVL1803:
.L1899:
.LBE6539:
.LBE6541:
.LBE6555:
.LBE6616:
.LBB6617:
.LBB6605:
.LBB6596:
.LBB6571:
	.loc 28 1037 0
	mov	ip, r1
.LVL1804:
.LBE6571:
.LBE6596:
	.loc 39 265 0
	cmp	r1, #62
	ldrls	pc, [pc, r1, asl #2]
	b	.L1907
.L1909:
	.word	.L1950
	.word	.L1907
	.word	.L1910
	.word	.L1907
	.word	.L1959
	.word	.L1907
	.word	.L1959
	.word	.L1907
	.word	.L1950
	.word	.L1907
	.word	.L1912
	.word	.L1907
	.word	.L1961
	.word	.L1907
	.word	.L1950
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1950
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1913
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1907
	.word	.L1950
.L1913:
.LVL1805:
.LBB6597:
.LBB6588:
.LBB6589:
	.loc 28 2318 0
	cmp	r1, #46
	bne	.L1916
	.loc 28 2321 0
	ubfx	r0, r2, #8, #6
.LVL1806:
.LBE6589:
.LBE6588:
	.loc 39 283 0
	cmp	r0, #32
	beq	.L1961
	.loc 39 286 0
	and	r0, r0, #31
.LVL1807:
	mov	r2, #1
.LVL1808:
	add	r0, r0, #4
	mov	r2, r2, asl r0
	b	.L1904
.LVL1809:
.L1907:
.LBE6597:
.LBB6598:
.LBB6583:
	.loc 38 272 0
	sub	r1, r1, #1
.LVL1810:
	cmp	r1, #8
	ldrls	pc, [pc, r1, asl #2]
	b	.L1950
.L1951:
	.word	.L1917
	.word	.L1950
	.word	.L1917
	.word	.L1950
	.word	.L1952
	.word	.L1950
	.word	.L1953
	.word	.L1950
	.word	.L1974
.LVL1811:
.L1855:
.LBE6583:
.LBE6598:
.LBE6605:
.LBE6617:
.LBB6618:
.LBB6556:
.LBB6542:
.LBB6481:
	.loc 28 1037 0
	uxtb	r1, r2
.LVL1812:
.LBE6481:
.LBE6542:
	.loc 39 317 0
	sub	r0, r1, #2
.LBB6543:
.LBB6482:
	.loc 28 1037 0
	mov	lr, r1
.LVL1813:
.LBE6482:
.LBE6543:
	.loc 39 317 0
	cmp	r0, #60
	ldrls	pc, [pc, r0, asl #2]
	b	.L1864
.L1866:
	.word	.L1865
	.word	.L1864
	.word	.L1867
	.word	.L1864
	.word	.L1868
	.word	.L1864
	.word	.L1885
	.word	.L1864
	.word	.L1869
	.word	.L1864
	.word	.L1870
	.word	.L1864
	.word	.L1885
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1885
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1871
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1864
	.word	.L1885
.L1885:
.LBE6556:
.LBE6618:
	.loc 36 305 0
	mov	r6, #0
.LVL1814:
	b	.L1899
.LVL1815:
.L1864:
.LBB6619:
.LBB6557:
.LBB6544:
.LBB6520:
	.loc 38 302 0
	sub	r0, r1, #1
	cmp	r0, #8
	ldrls	pc, [pc, r0, asl #2]
	b	.L1885
.L1886:
	.word	.L1880
	.word	.L1885
	.word	.L1880
	.word	.L1885
	.word	.L1887
	.word	.L1885
	.word	.L1888
	.word	.L1885
	.word	.L1889
.LVL1816:
.L1917:
.LBE6520:
.LBE6544:
.LBE6557:
.LBE6619:
.LBB6620:
.LBB6606:
.LBB6599:
.LBB6584:
.LBB6574:
.LBB6575:
	.loc 38 228 0
	and	r1, ip, #253
	cmp	r1, #1
	bne	.L1999
	.loc 38 231 0
	cmp	ip, #3
	beq	.L2000
	.loc 38 233 0
	mov	r0, #0
.L1919:
.LBE6575:
.LBE6574:
	.loc 38 275 0
	bl	pageBitsForSize
.LVL1817:
	mov	r2, #1
	mov	r2, r2, asl r0
	b	.L1904
.LVL1818:
.L2000:
.LBB6580:
.LBB6578:
.LBB6576:
.LBB6577:
	.loc 28 1801 0
	and	r0, r2, #15
	cmp	r0, #3
	.loc 28 1804 0
	moveq	r0, r4, lsr #30
	.loc 28 1801 0
	beq	.L1919
	bl	cap_frame_cap_get_capFSize.part.120
.LVL1819:
.L1892:
.LBE6577:
.LBE6576:
.LBE6578:
.LBE6580:
.LBE6584:
.LBE6599:
.LBE6606:
.LBE6620:
.LBB6621:
.LBB6558:
.LBB6545:
.LBB6521:
.LBB6516:
.LBB6514:
.LBB6511:
.LBB6512:
	.loc 28 1755 0
	and	r0, r2, #15
	cmp	r0, #1
	.loc 28 1758 0
	biceq	r0, r2, #-16777216
	biceq	r0, r0, #15
	moveq	r0, r0, asl #8
	.loc 28 1755 0
	beq	.L1891
	bl	cap_small_frame_cap_get_capFBasePtr.isra.85.part.86
.LVL1820:
.L1997:
.LBE6512:
.LBE6511:
	.loc 38 218 0
	mov	r0, #0
	b	.L1891
.L1998:
.LBB6513:
.LBB6510:
	bl	cap_frame_cap_get_capFBasePtr.isra.87.part.88
.LVL1821:
.L1937:
.LBE6510:
.LBE6513:
.LBE6514:
.LBE6516:
.LBE6521:
.LBE6545:
.LBB6546:
.LBB6491:
	bl	cap_thread_cap_get_capTCBPtr.isra.59.part.60
.LVL1822:
.L1916:
.LBE6491:
.LBE6546:
.LBB6547:
.LBB6540:
.LBB6538:
.LBB6537:
.LBB6536:
.LBB6535:
	bl	cap_zombie_cap_get_capZombieType.isra.80.part.81
.LVL1823:
.L1999:
.LBE6535:
.LBE6536:
.LBE6537:
.LBE6538:
.LBE6540:
.LBE6547:
.LBE6558:
.LBE6621:
.LBB6622:
.LBB6607:
.LBB6600:
.LBB6585:
.LBB6581:
.LBB6579:
	bl	generic_frame_cap_get_capFSize.part.121
.LVL1824:
.L1996:
.LBE6579:
.LBE6581:
.LBE6585:
.LBE6600:
.LBE6607:
.LBE6622:
.LBB6623:
.LBB6559:
.LBB6548:
.LBB6522:
.LBB6517:
.LBB6515:
	bl	generic_frame_cap_get_capFBasePtr.isra.89.part.90
.LVL1825:
.L1994:
.LBE6515:
.LBE6517:
.LBE6522:
.LBE6548:
.LBE6559:
.LBE6623:
.LBE6693:
.LBB6694:
.LBB6683:
	bl	cap_irq_handler_cap_get_capIRQ.part.229
.LVL1826:
.L1941:
.LBE6683:
.LBE6694:
.LBB6695:
.LBB6643:
	bl	cap_reply_cap_get_capTCBPtr.isra.65.part.66
.LVL1827:
.L1995:
.LBE6643:
.LBE6695:
.LBB6696:
.LBB6624:
.LBB6608:
.LBB6601:
.LBB6594:
	bl	cap_cnode_cap_get_capCNodeRadix.part.149
.LVL1828:
.L1952:
.LBE6594:
.LBE6601:
.LBB6602:
.LBB6586:
	.loc 38 272 0
	mov	r2, #4096
	b	.L1904
.L1974:
	mov	r2, #16384
	b	.L1904
.L1953:
	mov	r2, #1024
	b	.L1904
.LBE6586:
.LBE6602:
.LBE6608:
.LBE6624:
.LBE6696:
	.cfi_endproc
.LFE627:
	.size	sameRegionAs, .-sameRegionAs
	.align	2
	.global	isMDBParentOf
	.type	isMDBParentOf, %function
isMDBParentOf:
.LFB582:
	.loc 27 836 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1829:
	stmfd	sp!, {r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
.LBB6719:
.LBB6720:
	.loc 28 469 0
	ldr	r3, [r0, #12]
	ubfx	r3, r3, #1, #1
.LBE6720:
.LBE6719:
	.loc 27 837 0
	cmp	r3, #0
	beq	.L2013
	mov	r5, r1
	mov	r4, r0
	.loc 27 840 0
	ldmia	r5, {r2, r3}
	ldmia	r0, {r0, r1}
.LVL1830:
	bl	sameRegionAs
.LVL1831:
	cmp	r0, #0
	ldmeqfd	sp!, {r3, r4, r5, pc}
.LVL1832:
	ldr	r3, [r4]
.LVL1833:
.LBB6721:
.LBB6722:
.LBB6723:
.LBB6724:
	.loc 28 1035 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 28 1037 0
	uxtbeq	r2, r3
	.loc 28 1036 0
	andne	r2, r3, #15
.LBE6724:
.LBE6723:
	.loc 27 843 0
	cmp	r2, #4
	beq	.L2005
	cmp	r2, #6
	bne	.L2017
.LVL1834:
.LBB6725:
.LBB6726:
.LBB6727:
	.loc 28 1329 0
	and	r3, r3, #15
.LVL1835:
	ldr	r2, [r4, #4]
.LVL1836:
	cmp	r3, #6
	bne	.L2011
.LVL1837:
.LBE6727:
.LBE6726:
	.loc 27 860 0
	movs	r2, r2, lsr #4
.LVL1838:
	beq	.L2017
.LVL1839:
.LBB6729:
.LBB6730:
	.loc 28 1329 0
	ldr	r3, [r5]
.LVL1840:
	ldr	r1, [r5, #4]
.LVL1841:
	and	r3, r3, #15
.LVL1842:
	cmp	r3, #6
	bne	.L2011
.LVL1843:
.LBE6730:
.LBE6729:
	.loc 27 864 0
	cmp	r2, r1, lsr #4
	beq	.L2024
.LVL1844:
.L2018:
	mov	r0, #0
	ldmfd	sp!, {r3, r4, r5, pc}
.L2017:
.LBE6725:
.LBB6732:
	.loc 27 849 0
	mov	r0, #1
.LBE6732:
.LBE6722:
.LBE6721:
	.loc 27 873 0
	ldmfd	sp!, {r3, r4, r5, pc}
.LVL1845:
.L2013:
	.loc 27 838 0
	mov	r0, r3
.LVL1846:
	ldmfd	sp!, {r3, r4, r5, pc}
.LVL1847:
.L2005:
.LBB6743:
.LBB6742:
.LBB6739:
.LBB6733:
.LBB6734:
	.loc 28 1277 0
	and	r2, r3, #15
	cmp	r2, #4
	bne	.L2008
.LVL1848:
.LBE6734:
.LBE6733:
	.loc 27 848 0
	movs	r3, r3, lsr #4
.LVL1849:
	beq	.L2017
	ldr	r2, [r5]
.LVL1850:
.LBB6736:
.LBB6737:
	.loc 28 1277 0
	and	r1, r2, #15
	cmp	r1, #4
	bne	.L2008
.LVL1851:
.LBE6737:
.LBE6736:
	.loc 27 851 0
	cmp	r3, r2, lsr #4
	bne	.L2018
.LVL1852:
.L2024:
.LBE6739:
.LBB6740:
	.loc 27 864 0
	ldr	r3, [r5, #12]
	eor	r3, r3, #1
	and	r0, r3, #1
	ldmfd	sp!, {r3, r4, r5, pc}
.LVL1853:
.L2011:
.LBB6731:
.LBB6728:
	bl	cap_notification_cap_get_capNtfnBadge.part.199
.LVL1854:
.L2008:
.LBE6728:
.LBE6731:
.LBE6740:
.LBB6741:
.LBB6738:
.LBB6735:
	bl	cap_endpoint_cap_get_capEPBadge.isra.180.part.181
.LVL1855:
.LBE6735:
.LBE6738:
.LBE6741:
.LBE6742:
.LBE6743:
	.cfi_endproc
.LFE582:
	.size	isMDBParentOf, .-isMDBParentOf
	.align	2
	.type	sendCNode, %function
sendCNode:
.LFB401:
	.loc 5 212 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1856:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
	.loc 5 215 0
	mov	r8, #1
.LVL1857:
	movs	r8, r8, asl r1
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov	r9, r0
	mov	r5, r0
	mov	r6, #0
	b	.L2026
.LVL1858:
.L2029:
	.loc 5 215 0 is_stmt 0 discriminator 2
	add	r6, r6, #1
.LVL1859:
	add	r5, r5, #16
	cmp	r6, r8
	beq	.L2042
.LVL1860:
.L2026:
.LBB6754:
	.loc 5 216 0 is_stmt 1
	ldr	r7, [r9, r6, asl #4]
.LVL1861:
	ldr	r10, [r5, #4]
.LVL1862:
.LBB6755:
.LBB6756:
	.loc 28 1035 0
	and	r3, r7, #14
	cmp	r3, #14
	.loc 28 1037 0
	uxtbeq	r3, r7
	.loc 28 1036 0
	andne	r3, r7, #15
.LBE6756:
.LBE6755:
	.loc 5 217 0
	cmp	r3, #0
	beq	.L2029
.LVL1863:
.LBB6757:
.LBB6758:
.LBB6759:
.LBB6760:
.LBB6761:
	.loc 28 525 0
	ldr	r4, [r5, #8]
.LVL1864:
.LBE6761:
.LBE6760:
	.loc 5 120 0
	bics	r4, r4, #7
.LVL1865:
	bne	.L2032
	b	.L2031
.L2033:
.LBB6762:
.LBB6763:
	.loc 28 525 0
	ldr	r4, [r4, #8]
.LVL1866:
.LBE6763:
.LBE6762:
	.loc 5 120 0
	bics	r4, r4, #7
.LVL1867:
	beq	.L2031
.L2032:
	mov	r0, r4
	mov	r1, r5
	bl	isMDBParentOf
.LVL1868:
	cmp	r0, #0
	beq	.L2033
.L2031:
.LBE6759:
.LBE6758:
	.loc 5 219 0
	mov	r0, r6
.LBE6757:
.LBE6754:
	.loc 5 215 0
	add	r6, r6, #1
.LVL1869:
.LBB6765:
.LBB6764:
	.loc 5 219 0
	bl	sendWord
.LVL1870:
	.loc 5 220 0
	mov	r0, r7
	add	r5, r5, #16
.LVL1871:
	bl	sendWord
.LVL1872:
	.loc 5 221 0
	mov	r0, r10
	bl	sendWord
.LVL1873:
	.loc 5 222 0
	mov	r0, r4
	bl	sendWord
.LVL1874:
.LBE6764:
.LBE6765:
	.loc 5 215 0
	cmp	r6, r8
	bne	.L2026
.LVL1875:
.L2042:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	.cfi_endproc
.LFE401:
	.size	sendCNode, .-sendCNode
	.align	2
	.global	ensureNoChildren
	.type	ensureNoChildren, %function
ensureNoChildren:
.LFB583:
	.loc 27 877 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1876:
.LBB6766:
.LBB6767:
	.loc 28 450 0
	ldr	r1, [r0, #12]
.LVL1877:
.LBE6767:
.LBE6766:
	.loc 27 878 0
	bics	r1, r1, #7
.LVL1878:
	beq	.L2045
.LVL1879:
	.loc 27 877 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
.LBB6768:
	.loc 27 882 0
	bl	isMDBParentOf
.LVL1880:
	cmp	r0, #0
	.loc 27 883 0
	movwne	r3, #:lower16:current_syscall_error
	movne	r2, #9
	movtne	r3, #:upper16:current_syscall_error
	.loc 27 884 0
	movne	r0, #3
	.loc 27 883 0
	strne	r2, [r3, #24]
	.loc 27 884 0
	ldmfd	sp!, {r3, pc}
.LVL1881:
.L2045:
	.cfi_def_cfa_offset 0
	.cfi_restore 3
	.cfi_restore 14
.LBE6768:
	.loc 27 888 0
	mov	r0, r1
.LVL1882:
	bx	lr
	.cfi_endproc
.LFE583:
	.size	ensureNoChildren, .-ensureNoChildren
	.align	2
	.global	sameObjectAs
	.type	sameObjectAs, %function
sameObjectAs:
.LFB628:
	.loc 36 384 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	.loc 36 384 0
	add	ip, sp, #8
	mov	lr, sp
	stmia	ip, {r0, r1}
	mov	r1, r0
.LVL1883:
.LBB6769:
.LBB6770:
	.loc 28 1035 0
	and	r0, r0, #14
.LBE6770:
.LBE6769:
	.loc 36 384 0
	stmia	sp, {r2, r3}
.LVL1884:
.LBB6775:
.LBB6771:
	.loc 28 1035 0
	cmp	r0, #14
	beq	.L2052
	.loc 28 1036 0
	and	r3, r1, #15
.LBE6771:
.LBE6775:
	.loc 36 385 0
	cmp	r3, #2
.LBB6776:
.LBB6772:
	.loc 28 1036 0
	mov	r4, r3
.LBE6772:
.LBE6776:
	.loc 36 385 0
	beq	.L2075
.L2082:
.LVL1885:
	.loc 36 388 0
	cmp	r3, #14
	beq	.L2087
.L2061:
	.loc 36 392 0
	tst	r4, #1
	beq	.L2062
.LVL1886:
.LBB6777:
.LBB6778:
.LBB6779:
.LBB6780:
	.loc 28 1035 0 discriminator 1
	and	r3, r2, #14
	cmp	r3, #14
	.loc 28 1037 0 discriminator 1
	uxtbeq	r2, r2
.LVL1887:
	.loc 28 1036 0 discriminator 1
	andne	r2, r2, #15
.LBE6780:
.LBE6779:
.LBE6778:
.LBE6777:
	.loc 36 392 0 discriminator 1
	tst	r2, #1
	bne	.L2088
.LVL1888:
.L2062:
	.loc 36 395 0
	ldmia	ip, {r0, r1}
	ldmia	lr, {r2, r3}
	.loc 36 396 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 8
.LVL1889:
	@ sp needed
	ldmfd	sp!, {r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL1890:
	.loc 36 395 0
	b	sameRegionAs
.LVL1891:
.L2052:
	.cfi_restore_state
.LBB6781:
.LBB6773:
	.loc 28 1037 0
	uxtb	r3, r1
.LBE6773:
.LBE6781:
	.loc 36 385 0
	cmp	r3, #2
.LBB6782:
.LBB6774:
	.loc 28 1037 0
	mov	r4, r3
.LBE6774:
.LBE6782:
	.loc 36 385 0
	bne	.L2082
.L2075:
	.loc 36 396 0
	mov	r0, #0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldmfd	sp!, {r4, pc}
.L2087:
	.cfi_restore_state
.LVL1892:
.LBB6783:
.LBB6784:
	.loc 28 1035 0
	and	r4, r2, #14
	cmp	r4, #14
	beq	.L2089
.LVL1893:
	mov	r4, r3
	b	.L2061
.LVL1894:
.L2088:
.LBE6784:
.LBE6783:
	.loc 36 393 0
	ldmia	ip, {r0, r1}
	ldmia	lr, {r2, r3}
	.loc 36 396 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 8
.LVL1895:
	@ sp needed
	ldmfd	sp!, {r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL1896:
	.loc 36 393 0
	b	Arch_sameObjectAs
.LVL1897:
.L2089:
	.cfi_restore_state
.LBB6786:
.LBB6785:
	.loc 28 1037 0
	uxtb	r3, r2
.LBE6785:
.LBE6786:
	.loc 36 388 0
	cmp	r3, #30
	beq	.L2075
.LBB6787:
.LBB6788:
.LBB6789:
.LBB6790:
	.loc 28 1035 0
	cmp	r0, #14
	uxtbeq	r3, r1
	andne	r3, r1, #15
	mov	r4, r3
	b	.L2061
.LBE6790:
.LBE6789:
.LBE6788:
.LBE6787:
	.cfi_endproc
.LFE628:
	.size	sameObjectAs, .-sameObjectAs
	.align	2
	.global	isFinalCapability
	.type	isFinalCapability, %function
isFinalCapability:
.LFB585:
	.loc 27 904 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1898:
	stmfd	sp!, {r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 27 904 0
	mov	r4, r0
.LVL1899:
.LBB6791:
.LBB6792:
	.loc 28 525 0
	ldr	r3, [r0, #8]
.LBE6792:
.LBE6791:
	.loc 27 908 0
	ldr	r5, [r0, #12]
.LVL1900:
	.loc 27 910 0
	bics	r3, r3, #7
.LVL1901:
	beq	.L2091
.LVL1902:
.LBB6793:
	.loc 27 916 0
	ldmia	r3, {r0, r1}
.LVL1903:
	ldmia	r4, {r2, r3}
.LVL1904:
	bl	sameObjectAs
.LVL1905:
.LBE6793:
	.loc 27 919 0
	cmp	r0, #0
	beq	.L2091
	.loc 27 920 0
	mov	r0, #0
.LVL1906:
	ldmfd	sp!, {r3, r4, r5, pc}
.L2091:
.LVL1907:
	.loc 27 922 0
	bics	r5, r5, #7
.LVL1908:
	beq	.L2094
.LVL1909:
.LBB6794:
	.loc 27 928 0
	ldmia	r4, {r0, r1}
	ldmia	r5, {r2, r3}
	bl	sameObjectAs
.LVL1910:
	clz	r0, r0
	mov	r0, r0, lsr #5
	ldmfd	sp!, {r3, r4, r5, pc}
.LVL1911:
.L2094:
.LBE6794:
	.loc 27 923 0
	mov	r0, #1
	.loc 27 931 0
	ldmfd	sp!, {r3, r4, r5, pc}
	.cfi_endproc
.LFE585:
	.size	isFinalCapability, .-isFinalCapability
	.align	2
	.global	slotCapLongRunningDelete
	.type	slotCapLongRunningDelete, %function
slotCapLongRunningDelete:
.LFB586:
	.loc 27 935 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1912:
	stmfd	sp!, {r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	ldr	r4, [r0]
.LVL1913:
.LBB6795:
.LBB6796:
	.loc 28 1035 0
	and	r5, r4, #14
	cmp	r5, #14
	.loc 28 1037 0
	uxtbeq	r3, r4
	.loc 28 1036 0
	andne	r3, r4, #15
.LBE6796:
.LBE6795:
	.loc 27 936 0
	cmp	r3, #0
	beq	.L2102
	.loc 27 938 0
	bl	isFinalCapability
.LVL1914:
	subs	r3, r0, #0
	beq	.L2102
.LVL1915:
.LBB6797:
.LBB6798:
	.loc 28 1035 0
	cmp	r5, #14
	.loc 28 1037 0
	uxtbeq	r4, r4
.LVL1916:
	.loc 28 1036 0
	andne	r4, r4, #15
.LBE6798:
.LBE6797:
	.loc 27 941 0
	cmp	r4, #12
	beq	.L2106
	cmp	r4, #46
	beq	.L2106
	cmp	r4, #10
	.loc 27 947 0
	movne	r3, #0
	.loc 27 941 0
	beq	.L2106
.L2102:
	.loc 27 949 0
	mov	r0, r3
	ldmfd	sp!, {r3, r4, r5, pc}
.L2106:
	.loc 27 945 0
	mov	r3, #1
	.loc 27 949 0
	mov	r0, r3
	ldmfd	sp!, {r3, r4, r5, pc}
	.cfi_endproc
.LFE586:
	.size	slotCapLongRunningDelete, .-slotCapLongRunningDelete
	.align	2
	.global	updateCapData
	.type	updateCapData, %function
updateCapData:
.LFB629:
	.loc 36 400 0
	.cfi_startproc
	@ args = 12, pretend = 8, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1917:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	mov	ip, r3
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 14, -12
.LBB6833:
.LBB6834:
.LBB6835:
.LBB6836:
	.loc 28 1035 0
	and	lr, r3, #14
.LVL1918:
	cmp	lr, #14
.LBE6836:
.LBE6835:
.LBE6834:
.LBE6833:
	.loc 36 400 0
	str	r3, [sp, #12]
.LVL1919:
	ldr	lr, [sp, #16]
.LVL1920:
.LBB6840:
.LBB6839:
.LBB6838:
.LBB6837:
	.loc 28 1035 0
	beq	.L2124
.LBE6837:
.LBE6838:
.LBE6839:
.LBE6840:
	.loc 36 401 0
	tst	r3, #1
.LBB6841:
.LBB6842:
	.loc 28 1036 0
	andeq	r3, r3, #15
.LBE6842:
.LBE6841:
	.loc 36 401 0
	bne	.L2139
	.loc 36 405 0
	cmp	r3, #6
	beq	.L2131
.L2142:
	cmp	r3, #10
	beq	.L2132
	cmp	r3, #4
	beq	.L2141
.L2139:
	.loc 36 441 0
	stmia	r0, {ip, lr}
.LVL1921:
.L2123:
	.loc 36 443 0
	ldmfd	sp!, {r4, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 8
.LVL1922:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
.LVL1923:
	bx	lr
.LVL1924:
.L2124:
	.cfi_restore_state
	.loc 36 401 0
	tst	r3, #1
.LBB6844:
.LBB6843:
	.loc 28 1037 0
	uxtbeq	r3, r3
.LBE6843:
.LBE6844:
	.loc 36 401 0
	bne	.L2139
	.loc 36 405 0
	cmp	r3, #6
	bne	.L2142
.L2131:
	.loc 36 414 0
	cmp	r1, #0
	bne	.L2134
.LVL1925:
.LBB6845:
.LBB6846:
	.loc 28 1329 0 discriminator 1
	and	r3, ip, #15
	cmp	r3, #6
	bne	.L2143
.LVL1926:
.LBE6846:
.LBE6845:
	.loc 36 414 0
	movs	r3, lr, lsr #4
	bne	.L2134
.LVL1927:
.LBB6848:
.LBB6849:
	.loc 28 1348 0
	orr	r2, lr, r2, asl #4
.LVL1928:
	.loc 28 1349 0
	str	ip, [r0]
	str	r2, [r0, #4]
	b	.L2123
.LVL1929:
.L2141:
.LBE6849:
.LBE6848:
	.loc 36 407 0
	cmp	r1, #0
	bne	.L2134
.LVL1930:
.LBB6850:
.LBB6851:
	.loc 28 1277 0 discriminator 1
	and	r3, ip, #15
	cmp	r3, #4
	bne	.L2144
.LVL1931:
.LBE6851:
.LBE6850:
	.loc 36 407 0
	movs	r3, ip, lsr #4
	bne	.L2134
.LVL1932:
.LBB6853:
.LBB6854:
	.loc 28 1296 0
	mov	r3, r2, asl #4
	.loc 28 1297 0
	str	lr, [r0, #4]
	.loc 28 1296 0
	orr	r2, r3, #4
.LVL1933:
	.loc 28 1297 0
	str	r2, [r0]
	b	.L2123
.LVL1934:
.L2134:
.LBE6854:
.LBE6853:
	.loc 36 443 0
	ldmfd	sp!, {r4, lr}
	.cfi_remember_state
	.cfi_restore 4
	.cfi_restore 14
	.cfi_def_cfa_offset 8
.LVL1935:
.LBB6855:
.LBB6856:
	.loc 28 1058 0
	mov	r3, #0
	str	r3, [r0]
	str	r3, [r0, #4]
.LBE6856:
.LBE6855:
	.loc 36 443 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
.LVL1936:
	bx	lr
.LVL1937:
.L2132:
	.cfi_restore_state
.LBB6857:
.LBB6858:
.LBB6859:
	.loc 28 1537 0
	and	r1, ip, #15
.LVL1938:
.LBE6859:
.LBE6858:
.LBB6862:
.LBB6863:
	.loc 28 292 0
	ubfx	r4, r2, #3, #5
.LVL1939:
.LBE6863:
.LBE6862:
.LBB6864:
.LBB6860:
	.loc 28 1537 0
	cmp	r1, #10
	bne	.L2145
.LVL1940:
	.loc 28 1540 0
	ubfx	r1, lr, #18, #5
.LBE6860:
.LBE6864:
	.loc 36 426 0
	add	r1, r4, r1
	cmp	r1, #32
	bhi	.L2134
.LVL1941:
.LBB6865:
.LBB6866:
.LBB6867:
	.loc 28 281 0
	ubfx	r2, r2, #8, #18
.LVL1942:
.LBE6867:
.LBE6866:
	.loc 36 431 0
	mvn	r1, #0
.LBB6868:
.LBB6869:
	.loc 28 1570 0
	mov	r3, #0
.LBE6869:
.LBE6868:
	.loc 36 431 0
	bic	r2, r2, r1, asl r4
.LBB6872:
.LBB6870:
	.loc 28 1570 0
	movt	r3, 61564
.LVL1943:
.LBE6870:
.LBE6872:
	.loc 36 436 0
	str	ip, [r0]
.LBB6873:
.LBB6871:
	.loc 28 1570 0
	and	r3, r3, lr
.LBE6871:
.LBE6873:
.LBB6874:
.LBB6875:
	.loc 28 1529 0
	orr	r2, r3, r2
	.loc 28 1530 0
	orr	r3, r2, r4, asl #23
.LBE6875:
.LBE6874:
	.loc 36 436 0
	str	r3, [r0, #4]
	b	.L2123
.LVL1944:
.L2145:
.LBE6865:
.LBB6876:
.LBB6861:
	bl	cap_cnode_cap_get_capCNodeRadix.part.149
.LVL1945:
.L2144:
.LBE6861:
.LBE6876:
.LBE6857:
.LBB6877:
.LBB6852:
	bl	cap_endpoint_cap_get_capEPBadge.isra.180.part.181
.LVL1946:
.L2143:
.LBE6852:
.LBE6877:
.LBB6878:
.LBB6847:
	bl	cap_notification_cap_get_capNtfnBadge.part.199
.LVL1947:
.LBE6847:
.LBE6878:
	.cfi_endproc
.LFE629:
	.size	updateCapData, .-updateCapData
	.align	2
	.global	maskCapRights
	.type	maskCapRights, %function
maskCapRights:
.LFB630:
	.loc 36 447 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1948:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 36 447 0
	stmia	sp, {r2, r3}
	mov	r3, r2
.LVL1949:
	mov	r4, r0
.LBB6917:
.LBB6918:
.LBB6919:
.LBB6920:
	.loc 28 1035 0
	and	r0, r3, #14
.LVL1950:
	cmp	r0, #14
.LBE6920:
.LBE6919:
.LBE6918:
.LBE6917:
	.loc 36 447 0
	mov	ip, sp
	ldr	r2, [sp, #4]
.LVL1951:
.LBB6924:
.LBB6923:
.LBB6922:
.LBB6921:
	.loc 28 1035 0
	beq	.L2147
.LBE6921:
.LBE6922:
.LBE6923:
.LBE6924:
	.loc 36 448 0
	tst	r3, #1
.LBB6925:
.LBB6926:
	.loc 28 1036 0
	andeq	r0, r3, #15
.LBE6926:
.LBE6925:
	.loc 36 448 0
	bne	.L2148
.L2152:
	.loc 36 452 0
	cmp	r0, #62
	ldrls	pc, [pc, r0, asl #2]
	b	.L2153
.L2155:
	.word	.L2154
	.word	.L2153
	.word	.L2154
	.word	.L2153
	.word	.L2156
	.word	.L2153
	.word	.L2157
	.word	.L2153
	.word	.L2154
	.word	.L2153
	.word	.L2154
	.word	.L2153
	.word	.L2154
	.word	.L2153
	.word	.L2154
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2154
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2154
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2153
	.word	.L2154
.L2147:
	.loc 36 448 0
	tst	r3, #1
.LBB6928:
.LBB6927:
	.loc 28 1037 0
	uxtbeq	r0, r3
.LBE6927:
.LBE6928:
	.loc 36 448 0
	beq	.L2152
.L2148:
	.loc 36 449 0
	mov	r0, r4
	ldmia	ip, {r2, r3}
.LVL1952:
	bl	Arch_maskCapRights
.LVL1953:
	.loc 36 496 0
	mov	r0, r4
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
.LVL1954:
	@ sp needed
	ldmfd	sp!, {r4, pc}
.LVL1955:
.L2157:
	.cfi_restore_state
.LBB6929:
.LBB6930:
.LBB6931:
	.loc 28 1381 0
	and	r0, r3, #15
	cmp	r0, #6
	bne	.L2162
.LVL1956:
.LBE6931:
.LBE6930:
	.loc 36 483 0
	and	r0, r1, r2
.LVL1957:
.LBB6933:
.LBB6934:
	.loc 28 1358 0
	ubfx	ip, r2, #1, #1
.LBE6934:
.LBE6933:
.LBB6935:
.LBB6936:
	.loc 28 1400 0
	and	r0, r0, #1
.LVL1958:
.LBE6936:
.LBE6935:
	.loc 36 486 0
	and	r1, ip, r1, lsr #1
.LVL1959:
.LBB6938:
.LBB6937:
	.loc 28 1400 0
	bic	r2, r2, #3
.LVL1960:
.LBE6937:
.LBE6938:
	.loc 36 490 0
	str	r3, [r4]
.LBB6939:
.LBB6940:
	.loc 28 1373 0
	orr	r2, r2, r0
.LBE6940:
.LBE6939:
.LBE6929:
	.loc 36 496 0
	mov	r0, r4
.LVL1961:
.LBB6944:
.LBB6942:
.LBB6941:
	.loc 28 1374 0
	orr	r2, r2, r1, asl #1
.LBE6941:
.LBE6942:
	.loc 36 490 0
	str	r2, [r4, #4]
.LBE6944:
	.loc 36 496 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldmfd	sp!, {r4, pc}
.LVL1962:
.L2154:
	.cfi_restore_state
	mov	r0, r4
	.loc 36 462 0
	str	r3, [r4]
	str	r2, [r4, #4]
	.loc 36 496 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldmfd	sp!, {r4, pc}
.LVL1963:
.L2156:
	.cfi_restore_state
.LBB6945:
.LBB6946:
.LBB6947:
	.loc 28 1251 0
	and	r0, r3, #15
	cmp	r0, #4
	bne	.L2163
.LVL1964:
.LBE6947:
.LBE6946:
	.loc 36 467 0
	and	r0, r1, r2
.LVL1965:
.LBB6949:
.LBB6950:
	.loc 28 1228 0
	ubfx	ip, r2, #1, #1
.LBE6950:
.LBE6949:
.LBB6951:
.LBB6952:
	.loc 28 1270 0
	bic	lr, r2, #3
.LBE6952:
.LBE6951:
	.loc 36 470 0
	and	ip, ip, r1, lsr #1
.LBB6954:
.LBB6953:
	.loc 28 1270 0
	and	r0, r0, #1
.LVL1966:
.LBE6953:
.LBE6954:
	.loc 36 477 0
	str	r3, [r4]
.LBB6955:
.LBB6956:
	.loc 28 1243 0
	orr	r0, lr, r0
.LVL1967:
.LBE6956:
.LBE6955:
.LBB6958:
.LBB6959:
	.loc 28 1202 0
	ubfx	r2, r2, #2, #1
.LVL1968:
.LBE6959:
.LBE6958:
.LBB6960:
.LBB6957:
	.loc 28 1244 0
	orr	r3, r0, ip, asl #1
.LVL1969:
.LBE6957:
.LBE6960:
	.loc 36 473 0
	and	r1, r2, r1, lsr #2
.LVL1970:
.LBB6961:
.LBB6962:
	.loc 28 1217 0
	bic	r3, r3, #4
.LBE6962:
.LBE6961:
.LBE6945:
	.loc 36 496 0
	mov	r0, r4
.LBB6966:
.LBB6964:
.LBB6963:
	.loc 28 1218 0
	orr	r1, r3, r1, asl #2
.LBE6963:
.LBE6964:
	.loc 36 477 0
	str	r1, [r4, #4]
.LBE6966:
	.loc 36 496 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
.LVL1971:
	@ sp needed
	ldmfd	sp!, {r4, pc}
.LVL1972:
.L2153:
	.cfi_restore_state
	.loc 36 494 0
	movw	r0, #:lower16:.LC111
	movw	r1, #:lower16:.LC112
.LVL1973:
	movt	r0, #:upper16:.LC111
	movt	r1, #:upper16:.LC112
	movw	r2, #494
.LVL1974:
	ldr	r3, .L2164
.LVL1975:
	bl	_fail
.LVL1976:
.L2162:
.LBB6967:
.LBB6943:
.LBB6932:
	bl	cap_notification_cap_get_capNtfnCanSend.part.218
.LVL1977:
.L2163:
.LBE6932:
.LBE6943:
.LBE6967:
.LBB6968:
.LBB6965:
.LBB6948:
	bl	cap_endpoint_cap_get_capCanSend.part.178
.LVL1978:
.L2165:
	.align	2
.L2164:
	.word	.LANCHOR4+3632
.LBE6948:
.LBE6965:
.LBE6968:
	.cfi_endproc
.LFE630:
	.size	maskCapRights, .-maskCapRights
	.section	.text.unlikely
	.align	2
	.type	thread_state_ptr_set_tcbQueued.isra.231.part.232, %function
thread_state_ptr_set_tcbQueued.isra.231.part.232:
.LFB923:
	.loc 28 117 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1979:
	.loc 28 119 0
	movw	r0, #:lower16:.LC90
	movw	r1, #:lower16:.LC30
	.loc 28 117 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 28 119 0
	movt	r0, #:upper16:.LC90
	movt	r1, #:upper16:.LC30
	mov	r2, #119
	ldr	r3, .L2168
	bl	_assert_fail
.LVL1980:
.L2169:
	.align	2
.L2168:
	.word	.LANCHOR4+3648
	.cfi_endproc
.LFE923:
	.size	thread_state_ptr_set_tcbQueued.isra.231.part.232, .-thread_state_ptr_set_tcbQueued.isra.231.part.232
	.text
	.align	2
	.type	tcbSchedDequeue.part.242, %function
tcbSchedDequeue.part.242:
.LFB933:
	.loc 31 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1981:
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
.LBB6980:
.LBB6981:
.LBB6982:
	.loc 49 25 0
	ldr	r3, [r0, #104]
.LBE6982:
.LBE6981:
	.loc 31 122 0
	ldr	r2, [r0, #108]
.LVL1982:
.LBB6985:
.LBB6983:
	.loc 49 25 0
	cmp	r3, #0
	bne	.L2179
.LBE6983:
.LBE6985:
	.loc 31 126 0
	ldr	r1, [r0, #128]
	.loc 31 124 0
	movw	r3, #:lower16:ksReadyQueues
.LVL1983:
	movt	r3, #:upper16:ksReadyQueues
	add	ip, r3, r2, asl #3
	ldr	r4, [r3, r2, asl #3]
.LVL1984:
	.loc 31 126 0
	cmp	r1, #0
	.loc 31 124 0
	ldr	r5, [ip, #4]
.LVL1985:
	.loc 31 126 0
	beq	.L2172
	.loc 31 127 0
	ldr	lr, [r0, #124]
	str	lr, [r1, #124]
	ldr	lr, [r0, #124]
	.loc 31 135 0
	cmp	lr, #0
	moveq	r5, r1
.LVL1986:
	beq	.L2174
.L2173:
	.loc 31 136 0
	str	r1, [lr, #128]
.LVL1987:
.L2174:
.LBB6986:
.LBB6987:
	.loc 28 120 0
	ldr	r1, [r0, #76]
.LBE6987:
.LBE6986:
	.loc 31 141 0
	str	r4, [r3, r2, asl #3]
.LVL1988:
	str	r5, [ip, #4]
.LVL1989:
.LBB6989:
.LBB6988:
	.loc 28 120 0
	bic	r3, r1, #1
	str	r3, [r0, #76]
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.LVL1990:
.L2172:
.LBE6988:
.LBE6989:
	.loc 31 129 0
	ldr	r4, [r0, #124]
.LVL1991:
	.loc 31 130 0
	cmp	r4, #0
	bne	.L2176
.LVL1992:
.LBB6990:
.LBB6991:
.LBB6992:
.LBB6993:
	.loc 49 33 0
	mov	r6, r2, lsr #5
.LBE6993:
.LBE6992:
	.loc 31 43 0
	movw	r1, #:lower16:ksReadyQueuesL2Bitmap
	movt	r1, #:upper16:ksReadyQueuesL2Bitmap
	ldr	r5, [r1, r6, asl #2]
.LVL1993:
	and	lr, r2, #31
	mov	r7, #1
	bic	lr, r5, r7, asl lr
	.loc 31 44 0
	cmp	lr, #0
	.loc 31 43 0
	str	lr, [r1, r6, asl #2]
	.loc 31 44 0
	beq	.L2180
.L2175:
.LVL1994:
.LBE6991:
.LBE6990:
	.loc 31 135 0
	mov	r5, #0
	b	.L2174
.LVL1995:
.L2176:
	.loc 31 130 0
	mov	lr, r4
	b	.L2173
.LVL1996:
.L2180:
.LBB6995:
.LBB6994:
	.loc 31 45 0
	movw	r1, #:lower16:ksReadyQueuesL1Bitmap
	movt	r1, #:upper16:ksReadyQueuesL1Bitmap
	ldr	lr, [r1]
	bic	r6, lr, r7, asl r6
	str	r6, [r1]
	b	.L2175
.LVL1997:
.L2179:
.LBE6994:
.LBE6995:
.LBB6996:
.LBB6984:
	bl	ready_queues_index.part.196
.LVL1998:
.LBE6984:
.LBE6996:
.LBE6980:
	.cfi_endproc
.LFE933:
	.size	tcbSchedDequeue.part.242, .-tcbSchedDequeue.part.242
	.align	2
	.global	tcbSchedDequeue
	.type	tcbSchedDequeue, %function
tcbSchedDequeue:
.LFB641:
	.loc 31 114 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL1999:
.LBB6997:
.LBB6998:
	.loc 28 108 0
	ldr	r3, [r0, #76]
.LBE6998:
.LBE6997:
	.loc 31 115 0
	tst	r3, #1
	bxeq	lr
	b	tcbSchedDequeue.part.242
.LVL2000:
	.cfi_endproc
.LFE641:
	.size	tcbSchedDequeue, .-tcbSchedDequeue
	.align	2
	.type	tcbSchedAppend.part.241, %function
tcbSchedAppend.part.241:
.LFB932:
	.loc 31 82 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2001:
.LBB7010:
.LBB7011:
.LBB7012:
	.loc 49 25 0
	ldr	r3, [r0, #104]
.LBE7012:
.LBE7011:
.LBE7010:
	.loc 31 82 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
.LBB7027:
	.loc 31 91 0
	ldr	r2, [r0, #108]
.LVL2002:
.LBB7015:
.LBB7013:
	.loc 49 25 0
	cmp	r3, #0
	bne	.L2188
.LBE7013:
.LBE7015:
	.loc 31 93 0
	movw	r3, #:lower16:ksReadyQueues
	movt	r3, #:upper16:ksReadyQueues
	ldr	ip, [r3, r2, asl #3]
.LVL2003:
	add	lr, r3, r2, asl #3
	ldr	r4, [lr, #4]
.LVL2004:
	.loc 31 95 0
	cmp	ip, #0
	.loc 31 99 0
	strne	r0, [r4, #124]
	.loc 31 95 0
	beq	.L2189
.L2186:
.LBB7016:
.LBB7017:
	.loc 28 120 0
	ldr	r1, [r0, #76]
.LBE7017:
.LBE7016:
	.loc 31 102 0
	mov	r5, #0
	.loc 31 101 0
	str	r4, [r0, #128]
	.loc 31 102 0
	str	r5, [r0, #124]
.LVL2005:
.LBB7020:
.LBB7018:
	.loc 28 121 0
	orr	r1, r1, #1
.LBE7018:
.LBE7020:
	.loc 31 105 0
	str	ip, [r3, r2, asl #3]
.LVL2006:
	str	r0, [lr, #4]
.LVL2007:
.LBB7021:
.LBB7019:
	.loc 28 121 0
	str	r1, [r0, #76]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LVL2008:
.L2189:
.LBE7019:
.LBE7021:
.LBB7022:
.LBB7023:
.LBB7024:
.LBB7025:
	.loc 49 33 0
	mov	r6, r2, lsr #5
.LBE7025:
.LBE7024:
	.loc 31 33 0
	movw	r5, #:lower16:ksReadyQueuesL1Bitmap
	.loc 31 34 0
	movw	r1, #:lower16:ksReadyQueuesL2Bitmap
	.loc 31 33 0
	movt	r5, #:upper16:ksReadyQueuesL1Bitmap
	.loc 31 34 0
	movt	r1, #:upper16:ksReadyQueuesL2Bitmap
	.loc 31 33 0
	ldr	r9, [r5]
	mov	r10, #1
	.loc 31 34 0
	ldr	r8, [r1, r6, asl #2]
	and	r7, r2, #31
	mov	ip, r0
	.loc 31 33 0
	orr	r9, r9, r10, asl r6
	.loc 31 34 0
	orr	r7, r8, r10, asl r7
	.loc 31 33 0
	str	r9, [r5]
	.loc 31 34 0
	str	r7, [r1, r6, asl #2]
	b	.L2186
.LVL2009:
.L2188:
.LBE7023:
.LBE7022:
.LBB7026:
.LBB7014:
	bl	ready_queues_index.part.196
.LVL2010:
.LBE7014:
.LBE7026:
.LBE7027:
	.cfi_endproc
.LFE932:
	.size	tcbSchedAppend.part.241, .-tcbSchedAppend.part.241
	.align	2
	.global	tcbSchedAppend
	.type	tcbSchedAppend, %function
tcbSchedAppend:
.LFB640:
	.loc 31 83 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL2011:
.LBB7028:
.LBB7029:
	.loc 28 108 0
	ldr	r3, [r0, #76]
.LBE7029:
.LBE7028:
	.loc 31 84 0
	tst	r3, #1
	bxne	lr
	b	tcbSchedAppend.part.241
.LVL2012:
	.cfi_endproc
.LFE640:
	.size	tcbSchedAppend, .-tcbSchedAppend
	.align	2
	.type	tcbSchedEnqueue.part.233, %function
tcbSchedEnqueue.part.233:
.LFB924:
	.loc 31 51 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2013:
.LBB7041:
.LBB7042:
.LBB7043:
	.loc 49 25 0
	ldr	r3, [r0, #104]
.LBE7043:
.LBE7042:
.LBE7041:
	.loc 31 51 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
.LBB7058:
	.loc 31 60 0
	ldr	r2, [r0, #108]
.LVL2014:
.LBB7046:
.LBB7044:
	.loc 49 25 0
	cmp	r3, #0
	bne	.L2197
.LBE7044:
.LBE7046:
	.loc 31 62 0
	movw	r3, #:lower16:ksReadyQueues
	movt	r3, #:upper16:ksReadyQueues
	add	lr, r3, r2, asl #3
	ldr	r4, [r3, r2, asl #3]
.LVL2015:
	ldr	ip, [lr, #4]
.LVL2016:
	.loc 31 64 0
	cmp	ip, #0
	.loc 31 68 0
	strne	r0, [r4, #128]
	.loc 31 64 0
	beq	.L2198
.L2195:
.LBB7047:
.LBB7048:
	.loc 28 120 0
	ldr	r1, [r0, #76]
.LBE7048:
.LBE7047:
	.loc 31 70 0
	mov	r5, #0
	.loc 31 71 0
	str	r4, [r0, #124]
.LVL2017:
	.loc 31 70 0
	str	r5, [r0, #128]
.LBB7051:
.LBB7049:
	.loc 28 121 0
	orr	r1, r1, #1
.LBE7049:
.LBE7051:
	.loc 31 74 0
	str	r0, [r3, r2, asl #3]
.LVL2018:
	str	ip, [lr, #4]
.LVL2019:
.LBB7052:
.LBB7050:
	.loc 28 121 0
	str	r1, [r0, #76]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LVL2020:
.L2198:
.LBE7050:
.LBE7052:
.LBB7053:
.LBB7054:
.LBB7055:
.LBB7056:
	.loc 49 33 0
	mov	r6, r2, lsr #5
.LBE7056:
.LBE7055:
	.loc 31 33 0
	movw	r5, #:lower16:ksReadyQueuesL1Bitmap
	.loc 31 34 0
	movw	r1, #:lower16:ksReadyQueuesL2Bitmap
	.loc 31 33 0
	movt	r5, #:upper16:ksReadyQueuesL1Bitmap
	.loc 31 34 0
	movt	r1, #:upper16:ksReadyQueuesL2Bitmap
	.loc 31 33 0
	ldr	r9, [r5]
	mov	r10, #1
	.loc 31 34 0
	ldr	r8, [r1, r6, asl #2]
	and	r7, r2, #31
	mov	ip, r0
	.loc 31 33 0
	orr	r9, r9, r10, asl r6
	.loc 31 34 0
	orr	r7, r8, r10, asl r7
	.loc 31 33 0
	str	r9, [r5]
	.loc 31 34 0
	str	r7, [r1, r6, asl #2]
	b	.L2195
.LVL2021:
.L2197:
.LBE7054:
.LBE7053:
.LBB7057:
.LBB7045:
	bl	ready_queues_index.part.196
.LVL2022:
.LBE7045:
.LBE7057:
.LBE7058:
	.cfi_endproc
.LFE924:
	.size	tcbSchedEnqueue.part.233, .-tcbSchedEnqueue.part.233
	.align	2
	.global	tcbSchedEnqueue
	.type	tcbSchedEnqueue, %function
tcbSchedEnqueue:
.LFB639:
	.loc 31 52 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL2023:
.LBB7059:
.LBB7060:
	.loc 28 108 0
	ldr	r3, [r0, #76]
.LBE7060:
.LBE7059:
	.loc 31 53 0
	tst	r3, #1
	bxne	lr
	b	tcbSchedEnqueue.part.233
.LVL2024:
	.cfi_endproc
.LFE639:
	.size	tcbSchedEnqueue, .-tcbSchedEnqueue
	.align	2
	.global	rescheduleRequired
	.type	rescheduleRequired, %function
rescheduleRequired:
.LFB548:
	.loc 26 455 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 26 457 0
	movw	r4, #:lower16:ksSchedulerAction
	movt	r4, #:upper16:ksSchedulerAction
	ldr	r0, [r4]
	sub	r3, r0, #1
	.loc 26 456 0
	cmn	r3, #3
	bhi	.L2202
.LVL2025:
.LBB7061:
.LBB7062:
.LBB7063:
.LBB7064:
	.loc 28 108 0
	ldr	r3, [r0, #76]
.LBE7064:
.LBE7063:
	.loc 31 53 0
	tst	r3, #1
	beq	.L2204
.LVL2026:
.L2202:
.LBE7062:
.LBE7061:
	.loc 26 460 0
	mvn	r3, #0
	str	r3, [r4]
	ldmfd	sp!, {r4, pc}
.LVL2027:
.L2204:
.LBB7066:
.LBB7065:
	bl	tcbSchedEnqueue.part.233
.LVL2028:
	b	.L2202
.LBE7065:
.LBE7066:
	.cfi_endproc
.LFE548:
	.size	rescheduleRequired, .-rescheduleRequired
	.align	2
	.global	scheduleTCB
	.type	scheduleTCB, %function
scheduleTCB:
.LFB546:
	.loc 26 423 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL2029:
	.loc 26 424 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r3, [r3]
	cmp	r0, r3
	bxne	lr
	.loc 26 425 0 discriminator 1
	movw	r3, #:lower16:ksSchedulerAction
	movt	r3, #:upper16:ksSchedulerAction
	.loc 26 424 0 discriminator 1
	ldr	r3, [r3]
	cmp	r3, #0
	bxne	lr
.LVL2030:
.LBB7073:
.LBB7074:
.LBB7075:
.LBB7076:
.LBB7077:
.LBB7078:
	.loc 28 146 0
	ldr	r3, [r0, #72]
	and	r3, r3, #15
.LVL2031:
.LBE7078:
.LBE7077:
	.loc 26 49 0
	sub	r3, r3, #1
.LVL2032:
	cmp	r3, #1
	bxls	lr
.LBE7076:
.LBE7075:
	.loc 26 427 0
	b	rescheduleRequired
.LVL2033:
.LBE7074:
.LBE7073:
	.cfi_endproc
.LFE546:
	.size	scheduleTCB, .-scheduleTCB
	.align	2
	.global	setThreadState
	.type	setThreadState, %function
setThreadState:
.LFB545:
	.loc 26 416 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2034:
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
.LBB7081:
.LBB7082:
	.loc 28 168 0
	bics	r3, r1, #15
	bne	.L2211
	.loc 28 169 0
	ldr	r3, [r0, #72]
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r1, r3, r1
.LVL2035:
.LBE7082:
.LBE7081:
	.loc 26 419 0
	ldmfd	sp!, {r3, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LBB7085:
.LBB7083:
	.loc 28 170 0
	str	r1, [r0, #72]
.LBE7083:
.LBE7085:
	.loc 26 418 0
	b	scheduleTCB
.LVL2036:
.L2211:
	.cfi_restore_state
.LBB7086:
.LBB7084:
	bl	thread_state_ptr_set_tsType.isra.197.part.198
.LVL2037:
.LBE7084:
.LBE7086:
	.cfi_endproc
.LFE545:
	.size	setThreadState, .-setThreadState
	.section	.boot.text
	.align	2
	.global	configureIdleThread
	.type	configureIdleThread, %function
configureIdleThread:
.LFB525:
	.loc 26 61 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL2038:
.LBB7097:
.LBB7098:
.LBB7099:
.LBB7100:
	.loc 28 169 0
	ldr	r3, [r0, #72]
.LBE7100:
.LBE7099:
.LBE7098:
.LBE7097:
.LBB7107:
.LBB7108:
.LBB7109:
.LBB7110:
	.loc 13 21 0
	movw	r1, #:lower16:idle_thread
.LBE7110:
.LBE7109:
.LBB7113:
.LBB7114:
	mov	ip, #83
.LBE7114:
.LBE7113:
.LBB7116:
.LBB7111:
	movt	r1, #:upper16:idle_thread
.LBE7111:
.LBE7116:
.LBB7117:
.LBB7115:
	str	ip, [r0, #64]
.LVL2039:
.LBE7115:
.LBE7117:
.LBE7108:
.LBE7107:
.LBB7120:
.LBB7105:
.LBB7103:
.LBB7101:
	.loc 28 169 0
	bic	r3, r3, #15
.LBE7101:
.LBE7103:
.LBE7105:
.LBE7120:
.LBB7121:
.LBB7119:
.LBB7118:
.LBB7112:
	.loc 13 21 0
	str	r1, [r0, #60]
.LVL2040:
.LBE7112:
.LBE7118:
.LBE7119:
.LBE7121:
.LBB7122:
.LBB7106:
.LBB7104:
.LBB7102:
	.loc 28 170 0
	orr	r3, r3, #7
	str	r3, [r0, #72]
.LBE7102:
.LBE7104:
	.loc 26 418 0
	b	scheduleTCB
.LVL2041:
.LBE7106:
.LBE7122:
	.cfi_endproc
.LFE525:
	.size	configureIdleThread, .-configureIdleThread
	.text
	.align	2
	.global	activateThread
	.type	activateThread, %function
activateThread:
.LFB526:
	.loc 26 68 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 26 69 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r2, [r3]
	ldr	r3, [r2, #72]
.LVL2042:
.LBB7149:
.LBB7150:
	.loc 28 146 0
	and	r1, r3, #15
.LVL2043:
.LBE7150:
.LBE7149:
	.loc 26 69 0
	cmp	r1, #2
	beq	.L2215
	cmp	r1, #7
	ldmeqfd	sp!, {r3, pc}
	cmp	r1, #1
	beq	.L2226
.LBB7151:
.LBB7152:
	.loc 26 87 0
	movw	r0, #:lower16:.LC113
	movw	r1, #:lower16:.LC114
.LVL2044:
	movt	r0, #:upper16:.LC113
	movt	r1, #:upper16:.LC114
	mov	r2, #87
	ldr	r3, .L2227
.LVL2045:
	bl	_fail
.LVL2046:
.L2215:
.LBE7152:
.LBE7151:
.LBB7153:
.LBB7154:
.LBB7155:
.LBB7156:
	.loc 13 21 0
	ldr	r1, [r2, #68]
.LVL2047:
.LBE7156:
.LBE7155:
.LBE7154:
.LBB7159:
.LBB7160:
.LBB7161:
.LBB7162:
	.loc 28 169 0
	bic	r3, r3, #15
.LVL2048:
	.loc 28 170 0
	orr	r3, r3, #1
.LBE7162:
.LBE7161:
	.loc 26 418 0
	mov	r0, r2
.LBB7164:
.LBB7163:
	.loc 28 170 0
	str	r3, [r2, #72]
.LVL2049:
.LBE7163:
.LBE7164:
.LBE7160:
.LBE7159:
.LBB7166:
.LBB7158:
.LBB7157:
	.loc 13 21 0
	str	r1, [r2, #60]
.LVL2050:
.LBE7157:
.LBE7158:
.LBE7166:
.LBE7153:
	.loc 26 89 0
	ldmfd	sp!, {r3, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LBB7168:
.LBB7167:
.LBB7165:
	.loc 26 418 0
	b	scheduleTCB
.LVL2051:
.L2226:
	.cfi_restore_state
	ldmfd	sp!, {r3, pc}
.L2228:
	.align	2
.L2227:
	.word	.LANCHOR4+3680
.LBE7165:
.LBE7167:
.LBE7168:
	.cfi_endproc
.LFE526:
	.size	activateThread, .-activateThread
	.align	2
	.global	receiveSignal
	.type	receiveSignal, %function
receiveSignal:
.LFB614:
	.loc 50 110 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2052:
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 50 110 0
	add	ip, sp, #8
	stmdb	ip, {r1, r2}
	ldr	r4, [sp]
.LVL2053:
.LBB7203:
.LBB7204:
	.loc 28 1407 0
	and	r2, r4, #15
	cmp	r2, #6
	bne	.L2240
	.loc 28 1410 0
	bic	r4, r4, #15
.LVL2054:
	mov	r5, r0
.LBE7204:
.LBE7203:
.LBB7206:
.LBB7207:
	.loc 28 257 0
	ldr	r2, [r4]
	and	r2, r2, #3
.LBE7207:
.LBE7206:
	.loc 50 115 0
	cmp	r2, #1
	bls	.L2232
	cmp	r2, #2
	bne	.L2229
	ldr	r3, [r4, #8]
.LVL2055:
.LBB7208:
.LBB7209:
	.loc 13 21 0
	str	r3, [r0]
.LVL2056:
.LBE7209:
.LBE7208:
.LBB7210:
.LBB7211:
	.loc 28 269 0
	ldr	r3, [r4]
.LVL2057:
	bic	r3, r3, #3
	str	r3, [r4]
.LVL2058:
.L2229:
.LBE7211:
.LBE7210:
	.loc 50 148 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.LVL2059:
.L2232:
	.cfi_restore_state
.LBB7212:
	.loc 50 120 0
	cmp	r3, #0
.LBB7213:
.LBB7214:
.LBB7215:
	.loc 13 21 0
	streq	r3, [r0]
.LBE7215:
.LBE7214:
.LBE7213:
	.loc 50 120 0
	beq	.L2229
.LVL2060:
.LBB7216:
.LBB7217:
	.loc 28 140 0
	orr	r3, r4, #6
.LVL2061:
	str	r3, [r0, #72]
.LBE7217:
.LBE7216:
	.loc 50 126 0
	bl	scheduleTCB
.LVL2062:
	ldmia	r4, {r2, r3}
.LVL2063:
.LBB7218:
.LBB7219:
	.loc 31 157 0
	mov	lr, #0
	.loc 31 151 0
	bics	r1, r3, #15
.LBE7219:
.LBE7218:
.LBB7222:
.LBB7223:
.LBB7224:
.LBB7225:
	.loc 28 238 0
	bic	ip, r2, #15
.LVL2064:
.LBE7225:
.LBE7224:
.LBE7223:
.LBE7222:
.LBB7226:
.LBB7220:
	.loc 31 151 0
	moveq	r1, r5
.LVL2065:
	.loc 31 154 0
	strne	r5, [ip, #132]
.LBE7220:
.LBE7226:
.LBB7227:
.LBB7228:
	.loc 28 269 0
	bic	r0, r2, #3
.LBE7228:
.LBE7227:
.LBB7231:
.LBB7232:
.LBB7233:
.LBB7234:
	.loc 28 230 0
	tst	r1, #15
.LBE7234:
.LBE7233:
.LBE7232:
.LBE7231:
.LBB7249:
.LBB7229:
	.loc 28 270 0
	orr	r0, r0, #1
.LBE7229:
.LBE7249:
.LBB7250:
.LBB7221:
	.loc 31 156 0
	str	ip, [r5, #136]
	.loc 31 157 0
	str	lr, [r5, #132]
.LVL2066:
.LBE7221:
.LBE7250:
.LBB7251:
.LBB7230:
	.loc 28 270 0
	str	r0, [r4]
.LVL2067:
.LBE7230:
.LBE7251:
.LBB7252:
.LBB7247:
.LBB7238:
.LBB7235:
	.loc 28 230 0
	bne	.L2241
	.loc 28 232 0
	bic	r1, r1, #15
.LVL2068:
	.loc 28 231 0
	and	r3, r3, #15
.LVL2069:
.LBE7235:
.LBE7238:
.LBB7239:
.LBB7240:
	.loc 28 249 0
	tst	r5, #15
.LBE7240:
.LBE7239:
.LBB7243:
.LBB7236:
	.loc 28 232 0
	orr	r3, r1, r3
	str	r3, [r4, #4]
.LVL2070:
.LBE7236:
.LBE7243:
.LBB7244:
.LBB7241:
	.loc 28 249 0
	bne	.L2242
	.loc 28 250 0
	and	r2, r2, #12
	.loc 28 251 0
	bic	r5, r5, #15
.LVL2071:
	orr	r5, r2, r5
	orr	r5, r5, #1
	str	r5, [r4]
.LBE7241:
.LBE7244:
.LBE7247:
.LBE7252:
.LBE7212:
	.loc 50 148 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.LVL2072:
.L2240:
	.cfi_restore_state
.LBB7254:
.LBB7205:
	bl	cap_notification_cap_get_capNtfnPtr.isra.68.part.69
.LVL2073:
.L2242:
.LBE7205:
.LBE7254:
.LBB7255:
.LBB7253:
.LBB7248:
.LBB7245:
.LBB7242:
	bl	notification_ptr_set_ntfnQueue_tail.isra.221.part.222
.LVL2074:
.L2241:
.LBE7242:
.LBE7245:
.LBB7246:
.LBB7237:
	bl	notification_ptr_set_ntfnQueue_head.isra.219.part.220
.LVL2075:
.LBE7237:
.LBE7246:
.LBE7248:
.LBE7253:
.LBE7255:
	.cfi_endproc
.LFE614:
	.size	receiveSignal, .-receiveSignal
	.align	2
	.global	timerTick
	.type	timerTick, %function
timerTick:
.LFB547:
	.loc 26 433 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 26 434 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r0, [r3]
.LVL2076:
.LBB7256:
.LBB7257:
	.loc 28 146 0
	ldr	r3, [r0, #72]
	and	r3, r3, #15
.LVL2077:
.LBE7257:
.LBE7256:
	.loc 26 434 0
	cmp	r3, #1
	ldmnefd	sp!, {r3, pc}
	.loc 26 436 0
	ldr	r3, [r0, #112]
.LVL2078:
	cmp	r3, #1
	bls	.L2245
	.loc 26 437 0
	sub	r3, r3, #1
	str	r3, [r0, #112]
	ldmfd	sp!, {r3, pc}
.L2245:
.LBB7258:
.LBB7259:
.LBB7260:
.LBB7261:
	.loc 28 108 0
	ldr	r3, [r0, #76]
.LBE7261:
.LBE7260:
.LBE7259:
.LBE7258:
	.loc 26 439 0
	mov	r2, #5
	str	r2, [r0, #112]
.LVL2079:
.LBB7264:
.LBB7262:
	.loc 31 84 0
	tst	r3, #1
	beq	.L2248
.LVL2080:
.L2246:
.LBE7262:
.LBE7264:
	.loc 26 451 0
	ldmfd	sp!, {r3, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	.loc 26 441 0
	b	rescheduleRequired
.LVL2081:
.L2248:
	.cfi_restore_state
.LBB7265:
.LBB7263:
	bl	tcbSchedAppend.part.241
.LVL2082:
	b	.L2246
.LBE7263:
.LBE7265:
	.cfi_endproc
.LFE547:
	.size	timerTick, .-timerTick
	.align	2
	.type	possibleSwitchTo, %function
possibleSwitchTo:
.LFB542:
	.loc 26 376 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2083:
	.loc 26 381 0
	movw	r2, #:lower16:ksCurDomain
	.loc 26 376 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 26 381 0
	movt	r2, #:upper16:ksCurDomain
	.loc 26 386 0
	ldr	r4, [r0, #104]
	.loc 26 382 0
	movw	ip, #:lower16:ksCurThread
	.loc 26 376 0
	mov	r3, r0
	.loc 26 386 0
	ldr	lr, [r2]
	.loc 26 382 0
	movt	ip, #:upper16:ksCurThread
	ldr	ip, [ip]
	.loc 26 385 0
	movw	r2, #:lower16:ksSchedulerAction
	movt	r2, #:upper16:ksSchedulerAction
	.loc 26 386 0
	cmp	r4, lr
	.loc 26 385 0
	ldr	r4, [r2]
	.loc 26 382 0
	ldr	ip, [ip, #108]
.LVL2084:
	.loc 26 384 0
	ldr	lr, [r0, #108]
.LVL2085:
	.loc 26 386 0
	beq	.L2250
.LVL2086:
.LBB7266:
.LBB7267:
.LBB7268:
.LBB7269:
	.loc 28 108 0
	ldr	r3, [r0, #76]
.LBE7269:
.LBE7268:
	.loc 31 53 0
	tst	r3, #1
	ldmnefd	sp!, {r4, pc}
.LBE7267:
.LBE7266:
	.loc 26 400 0
	ldmfd	sp!, {r4, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL2087:
.LBB7271:
.LBB7270:
	b	tcbSchedEnqueue.part.233
.LVL2088:
.L2250:
	.cfi_restore_state
.LBE7270:
.LBE7271:
	.loc 26 389 0
	cmp	ip, lr
	bcs	.L2261
.LVL2089:
.L2253:
	.loc 26 390 0
	cmp	r4, #0
	.loc 26 391 0
	streq	r3, [r2]
	.loc 26 390 0
	ldmeqfd	sp!, {r4, pc}
.L2254:
.LVL2090:
.LBB7272:
.LBB7273:
.LBB7274:
.LBB7275:
	.loc 28 108 0
	ldr	r2, [r3, #76]
.LBE7275:
.LBE7274:
	.loc 31 53 0
	tst	r2, #1
	beq	.L2262
.LVL2091:
.L2255:
.LBE7273:
.LBE7272:
	.loc 26 396 0
	sub	r4, r4, #1
.LVL2092:
	.loc 26 395 0
	cmn	r4, #3
	ldmhifd	sp!, {r4, pc}
	.loc 26 400 0
	ldmfd	sp!, {r4, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL2093:
	.loc 26 397 0
	b	rescheduleRequired
.LVL2094:
.L2261:
	.cfi_restore_state
	.loc 26 389 0 discriminator 1
	adds	r1, r1, #0
	movne	r1, #1
.LVL2095:
	cmp	lr, ip
	movne	r1, #0
	cmp	r1, #0
	beq	.L2254
	b	.L2253
.LVL2096:
.L2262:
	mov	r0, r3
.LVL2097:
.LBB7277:
.LBB7276:
	bl	tcbSchedEnqueue.part.233
.LVL2098:
	b	.L2255
.LBE7276:
.LBE7277:
	.cfi_endproc
.LFE542:
	.size	possibleSwitchTo, .-possibleSwitchTo
	.align	2
	.global	attemptSwitchTo
	.type	attemptSwitchTo, %function
attemptSwitchTo:
.LFB543:
	.loc 26 404 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL2099:
	.loc 26 405 0
	mov	r1, #1
	b	possibleSwitchTo
.LVL2100:
	.cfi_endproc
.LFE543:
	.size	attemptSwitchTo, .-attemptSwitchTo
	.align	2
	.global	switchIfRequiredTo
	.type	switchIfRequiredTo, %function
switchIfRequiredTo:
.LFB544:
	.loc 26 410 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL2101:
	.loc 26 411 0
	mov	r1, #0
	b	possibleSwitchTo
.LVL2102:
	.cfi_endproc
.LFE544:
	.size	switchIfRequiredTo, .-switchIfRequiredTo
	.align	2
	.global	cancelAllIPC
	.type	cancelAllIPC, %function
cancelAllIPC:
.LFB596:
	.file 51 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/object/endpoint.c"
	.loc 51 287 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2103:
	ldr	r3, [r0]
.LVL2104:
	.loc 51 288 0
	tst	r3, #3
	bxeq	lr
.LVL2105:
	ldr	r2, [r0, #4]
.LVL2106:
.LBB7301:
.LBB7302:
.LBB7303:
.LBB7304:
.LBB7305:
	.loc 28 396 0
	and	r3, r3, #12
.LVL2107:
.LBE7305:
.LBE7304:
.LBE7303:
.LBE7302:
.LBE7301:
	.loc 51 287 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB7324:
.LBB7322:
.LBB7320:
.LBB7307:
.LBB7306:
	.loc 28 396 0
	str	r3, [r0]
.LVL2108:
.LBE7306:
.LBE7307:
	.loc 51 301 0
	bics	r4, r2, #15
.LVL2109:
.LBB7308:
.LBB7309:
	.loc 28 377 0
	and	r2, r2, #15
	str	r2, [r0, #4]
.LVL2110:
.LBE7309:
.LBE7308:
	.loc 51 301 0
	bne	.L2270
	b	.L2271
.LVL2111:
.L2269:
	ldr	r4, [r4, #132]
.LVL2112:
	cmp	r4, #0
	beq	.L2271
.LVL2113:
.L2270:
.LBB7310:
.LBB7311:
.LBB7312:
.LBB7313:
	.loc 28 169 0
	ldr	r3, [r4, #72]
.LBE7313:
.LBE7312:
	.loc 26 418 0
	mov	r0, r4
.LBB7315:
.LBB7314:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #2
	str	r3, [r4, #72]
.LBE7314:
.LBE7315:
	.loc 26 418 0
	bl	scheduleTCB
.LVL2114:
.LBE7311:
.LBE7310:
.LBB7316:
.LBB7317:
.LBB7318:
.LBB7319:
	.loc 28 108 0
	ldr	r3, [r4, #76]
.LBE7319:
.LBE7318:
	.loc 31 53 0
	tst	r3, #1
	bne	.L2269
	mov	r0, r4
	bl	tcbSchedEnqueue.part.233
.LVL2115:
.LBE7317:
.LBE7316:
	.loc 51 301 0
	ldr	r4, [r4, #132]
.LVL2116:
	cmp	r4, #0
	bne	.L2270
.LVL2117:
.L2271:
.LBE7320:
.LBE7322:
.LBE7324:
	.loc 51 310 0
	ldmfd	sp!, {r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LBB7325:
.LBB7323:
.LBB7321:
	.loc 51 306 0
	b	rescheduleRequired
.LVL2118:
.LBE7321:
.LBE7323:
.LBE7325:
	.cfi_endproc
.LFE596:
	.size	cancelAllIPC, .-cancelAllIPC
	.align	2
	.global	cancelBadgedSends
	.type	cancelBadgedSends, %function
cancelBadgedSends:
.LFB597:
	.loc 51 314 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2119:
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 51 314 0
	mov	r8, r0
	ldr	r6, [r0]
.LVL2120:
.LBB7362:
.LBB7363:
	.loc 28 403 0
	and	r3, r6, #3
.LVL2121:
.LBE7363:
.LBE7362:
	.loc 51 315 0
	cmp	r3, #1
	beq	.L2276
	ldmccfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp	r3, #2
	beq	.L2298
	.loc 51 353 0
	movw	r0, #:lower16:.LC115
.LVL2122:
	movw	r1, #:lower16:.LC116
.LVL2123:
	movt	r0, #:upper16:.LC115
	movt	r1, #:upper16:.LC116
	movw	r2, #353
	ldr	r3, .L2302
.LVL2124:
	bl	_fail
.LVL2125:
.L2276:
	ldr	r3, [r0, #4]
.LVL2126:
.LBB7364:
.LBB7365:
.LBB7366:
	.loc 28 396 0
	and	r2, r6, #12
	str	r2, [r0]
.LBE7366:
.LBE7365:
.LBB7367:
.LBB7368:
.LBB7369:
.LBB7370:
	.loc 28 384 0
	bic	r6, r6, #15
.LVL2127:
.LBE7370:
.LBE7369:
.LBE7368:
.LBE7367:
	.loc 51 331 0
	bics	r9, r3, #15
.LVL2128:
.LBB7371:
.LBB7372:
	.loc 28 377 0
	and	r3, r3, #15
	str	r3, [r0, #4]
.LVL2129:
.LBE7372:
.LBE7371:
	.loc 51 331 0
	beq	.L2288
	mov	r7, r1
	mov	r4, r9
	b	.L2283
.LVL2130:
.L2279:
	.loc 51 331 0 is_stmt 0 discriminator 1
	cmp	r5, #0
	mov	r4, r5
.LVL2131:
	beq	.L2299
.LVL2132:
.L2283:
.LBB7373:
.LBB7374:
.LBB7375:
	.loc 28 21 0 is_stmt 1
	ldr	r3, [r4, #80]
.LBE7375:
.LBE7374:
	.loc 51 334 0
	ldr	r5, [r4, #132]
.LVL2133:
	.loc 51 335 0
	cmp	r7, r3, lsr #4
	bne	.L2279
.LVL2134:
.LBB7376:
.LBB7377:
.LBB7378:
.LBB7379:
	.loc 28 169 0
	ldr	r3, [r4, #72]
.LBE7379:
.LBE7378:
	.loc 26 418 0
	mov	r0, r4
.LBB7381:
.LBB7380:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #2
	str	r3, [r4, #72]
.LBE7380:
.LBE7381:
	.loc 26 418 0
	bl	scheduleTCB
.LVL2135:
.LBE7377:
.LBE7376:
.LBB7382:
.LBB7383:
.LBB7384:
.LBB7385:
	.loc 28 108 0
	ldr	r3, [r4, #76]
.LBE7385:
.LBE7384:
	.loc 31 53 0
	tst	r3, #1
	beq	.L2300
.LVL2136:
.L2280:
.LBE7383:
.LBE7382:
.LBB7387:
.LBB7388:
	.loc 31 167 0
	ldr	r3, [r4, #136]
	cmp	r3, #0
	.loc 31 168 0
	ldrne	r2, [r4, #132]
	.loc 31 170 0
	ldreq	r9, [r4, #132]
.LVL2137:
	.loc 31 168 0
	strne	r2, [r3, #132]
	ldrne	r2, [r4, #132]
	.loc 31 170 0
	moveq	r2, r9
.LVL2138:
	mov	r4, r5
.LVL2139:
	.loc 31 173 0
	cmp	r2, #0
	.loc 31 174 0
	strne	r3, [r2, #136]
	.loc 31 167 0
	moveq	r6, r3
.LVL2140:
.LBE7388:
.LBE7387:
.LBE7373:
	.loc 51 331 0
	cmp	r5, #0
	bne	.L2283
.LVL2141:
.L2299:
.LBB7390:
.LBB7391:
.LBB7392:
.LBB7393:
	.loc 28 376 0
	tst	r9, #15
	bne	.L2284
	ldr	r3, [r8, #4]
	bic	r2, r9, #15
.LVL2142:
.L2278:
	.loc 28 377 0
	and	r3, r3, #15
.LBE7393:
.LBE7392:
.LBB7396:
.LBB7397:
	.loc 28 395 0
	tst	r6, #15
.LBE7397:
.LBE7396:
.LBB7401:
.LBB7394:
	.loc 28 378 0
	orr	r3, r3, r2
	str	r3, [r8, #4]
.LVL2143:
.LBE7394:
.LBE7401:
.LBB7402:
.LBB7398:
	.loc 28 395 0
	bne	.L2301
	.loc 28 396 0
	ldr	r3, [r8]
	.loc 28 397 0
	bic	r6, r6, #15
.LVL2144:
.LBE7398:
.LBE7402:
.LBE7391:
.LBE7390:
	.loc 51 343 0
	cmp	r9, #0
.LBB7408:
.LBB7406:
.LBB7403:
.LBB7399:
	.loc 28 396 0
	and	r3, r3, #15
	.loc 28 397 0
	orr	r6, r6, r3
.LVL2145:
.LBE7399:
.LBE7403:
.LBE7406:
.LBE7408:
.LBB7409:
.LBB7410:
	.loc 28 415 0
	bicne	r6, r6, #3
	.loc 28 416 0
	orrne	r6, r6, #1
	str	r6, [r8]
.LBE7410:
.LBE7409:
.LBE7364:
	.loc 51 355 0
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL2146:
.LBB7413:
	.loc 51 347 0
	b	rescheduleRequired
.LVL2147:
.L2298:
	.cfi_restore_state
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.LVL2148:
.L2300:
.LBB7411:
.LBB7389:
.LBB7386:
	mov	r0, r4
	bl	tcbSchedEnqueue.part.233
.LVL2149:
	b	.L2280
.LVL2150:
.L2288:
.LBE7386:
.LBE7389:
.LBE7411:
	.loc 51 331 0
	mov	r2, r9
	b	.L2278
.LVL2151:
.L2284:
.LBB7412:
.LBB7407:
.LBB7404:
.LBB7395:
	bl	endpoint_ptr_set_epQueue_head.isra.211.part.212
.LVL2152:
.L2301:
.LBE7395:
.LBE7404:
.LBB7405:
.LBB7400:
	bl	endpoint_ptr_set_epQueue_tail.isra.213.part.214
.LVL2153:
.L2303:
	.align	2
.L2302:
	.word	.LANCHOR4+3696
.LBE7400:
.LBE7405:
.LBE7407:
.LBE7412:
.LBE7413:
	.cfi_endproc
.LFE597:
	.size	cancelBadgedSends, .-cancelBadgedSends
	.align	2
	.type	cancelAllSignals.part.240, %function
cancelAllSignals.part.240:
.LFB931:
	.loc 50 151 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2154:
.LBB7433:
.LBB7434:
.LBB7435:
	.loc 28 269 0
	ldmia	r0, {r2, r3}
.LVL2155:
.LBE7435:
.LBE7434:
.LBE7433:
	.loc 50 151 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB7452:
	.loc 50 161 0
	bics	r4, r3, #15
.LBB7436:
.LBB7437:
	.loc 28 250 0
	and	r2, r2, #12
.LBE7437:
.LBE7436:
.LBB7439:
.LBB7440:
	.loc 28 231 0
	and	r3, r3, #15
.LBE7440:
.LBE7439:
.LBB7441:
.LBB7438:
	.loc 28 250 0
	stmia	r0, {r2, r3}
.LVL2156:
.LBE7438:
.LBE7441:
	.loc 50 161 0
	bne	.L2307
	b	.L2308
.LVL2157:
.L2306:
	ldr	r4, [r4, #132]
.LVL2158:
	cmp	r4, #0
	beq	.L2308
.LVL2159:
.L2307:
.LBB7442:
.LBB7443:
.LBB7444:
.LBB7445:
	.loc 28 169 0
	ldr	r3, [r4, #72]
.LBE7445:
.LBE7444:
	.loc 26 418 0
	mov	r0, r4
.LBB7447:
.LBB7446:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #2
	str	r3, [r4, #72]
.LBE7446:
.LBE7447:
	.loc 26 418 0
	bl	scheduleTCB
.LVL2160:
.LBE7443:
.LBE7442:
.LBB7448:
.LBB7449:
.LBB7450:
.LBB7451:
	.loc 28 108 0
	ldr	r3, [r4, #76]
.LBE7451:
.LBE7450:
	.loc 31 53 0
	tst	r3, #1
	bne	.L2306
	mov	r0, r4
	bl	tcbSchedEnqueue.part.233
.LVL2161:
.LBE7449:
.LBE7448:
	.loc 50 161 0
	ldr	r4, [r4, #132]
.LVL2162:
	cmp	r4, #0
	bne	.L2307
.LVL2163:
.L2308:
.LBE7452:
	.loc 50 167 0
	ldmfd	sp!, {r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LBB7453:
	.loc 50 165 0
	b	rescheduleRequired
.LVL2164:
.LBE7453:
	.cfi_endproc
.LFE931:
	.size	cancelAllSignals.part.240, .-cancelAllSignals.part.240
	.align	2
	.global	cancelAllSignals
	.type	cancelAllSignals, %function
cancelAllSignals:
.LFB615:
	.loc 50 152 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL2165:
.LBB7454:
.LBB7455:
	.loc 28 257 0
	ldr	r3, [r0]
	and	r3, r3, #3
.LVL2166:
.LBE7455:
.LBE7454:
	.loc 50 153 0
	cmp	r3, #1
	bxne	lr
	b	cancelAllSignals.part.240
.LVL2167:
	.cfi_endproc
.LFE615:
	.size	cancelAllSignals, .-cancelAllSignals
	.align	2
	.global	setDomain
	.type	setDomain, %function
setDomain:
.LFB540:
	.loc 26 350 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2168:
	stmfd	sp!, {r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 26 350 0
	mov	r4, r0
.LVL2169:
.LBB7456:
.LBB7457:
.LBB7458:
.LBB7459:
	.loc 28 108 0
	ldr	r3, [r0, #76]
.LBE7459:
.LBE7458:
.LBE7457:
.LBE7456:
	.loc 26 350 0
	mov	r5, r1
.LBB7462:
.LBB7460:
	.loc 31 115 0
	tst	r3, #1
	bne	.L2326
.LVL2170:
.L2314:
.LBE7460:
.LBE7462:
.LBB7463:
.LBB7464:
.LBB7465:
.LBB7466:
	.loc 28 146 0
	ldr	r3, [r4, #72]
.LBE7466:
.LBE7465:
.LBE7464:
.LBE7463:
	.loc 26 352 0
	str	r5, [r4, #104]
.LVL2171:
.LBB7470:
.LBB7469:
.LBB7468:
.LBB7467:
	.loc 28 146 0
	and	r3, r3, #15
.LVL2172:
.LBE7467:
.LBE7468:
	.loc 26 49 0
	sub	r3, r3, #1
.LVL2173:
	cmp	r3, #1
	bhi	.L2315
.LVL2174:
.LBE7469:
.LBE7470:
.LBB7471:
.LBB7472:
.LBB7473:
.LBB7474:
	.loc 28 108 0
	ldr	r3, [r4, #76]
.LVL2175:
.LBE7474:
.LBE7473:
	.loc 31 53 0
	tst	r3, #1
	beq	.L2327
.LVL2176:
.L2315:
.LBE7472:
.LBE7471:
	.loc 26 356 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r3, [r3]
	cmp	r4, r3
	ldmnefd	sp!, {r3, r4, r5, pc}
	.loc 26 359 0
	ldmfd	sp!, {r3, r4, r5, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL2177:
	.loc 26 357 0
	b	rescheduleRequired
.LVL2178:
.L2326:
	.cfi_restore_state
.LBB7476:
.LBB7461:
	bl	tcbSchedDequeue.part.242
.LVL2179:
	b	.L2314
.LVL2180:
.L2327:
.LBE7461:
.LBE7476:
.LBB7477:
.LBB7475:
	mov	r0, r4
	bl	tcbSchedEnqueue.part.233
.LVL2181:
	b	.L2315
.LBE7475:
.LBE7477:
	.cfi_endproc
.LFE540:
	.size	setDomain, .-setDomain
	.align	2
	.global	setPriority
	.type	setPriority, %function
setPriority:
.LFB541:
	.loc 26 363 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2182:
	stmfd	sp!, {r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 26 363 0
	mov	r4, r0
.LVL2183:
.LBB7478:
.LBB7479:
.LBB7480:
.LBB7481:
	.loc 28 108 0
	ldr	r3, [r0, #76]
.LBE7481:
.LBE7480:
.LBE7479:
.LBE7478:
	.loc 26 363 0
	mov	r5, r1
.LBB7484:
.LBB7482:
	.loc 31 115 0
	tst	r3, #1
	bne	.L2341
.LVL2184:
.L2329:
.LBE7482:
.LBE7484:
.LBB7485:
.LBB7486:
.LBB7487:
.LBB7488:
	.loc 28 146 0
	ldr	r3, [r4, #72]
.LBE7488:
.LBE7487:
.LBE7486:
.LBE7485:
	.loc 26 365 0
	str	r5, [r4, #108]
.LVL2185:
.LBB7492:
.LBB7491:
.LBB7490:
.LBB7489:
	.loc 28 146 0
	and	r3, r3, #15
.LVL2186:
.LBE7489:
.LBE7490:
	.loc 26 49 0
	sub	r3, r3, #1
.LVL2187:
	cmp	r3, #1
	bhi	.L2330
.LVL2188:
.LBE7491:
.LBE7492:
.LBB7493:
.LBB7494:
.LBB7495:
.LBB7496:
	.loc 28 108 0
	ldr	r3, [r4, #76]
.LVL2189:
.LBE7496:
.LBE7495:
	.loc 31 53 0
	tst	r3, #1
	beq	.L2342
.LVL2190:
.L2330:
.LBE7494:
.LBE7493:
	.loc 26 369 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r3, [r3]
	cmp	r4, r3
	ldmnefd	sp!, {r3, r4, r5, pc}
	.loc 26 372 0
	ldmfd	sp!, {r3, r4, r5, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL2191:
	.loc 26 370 0
	b	rescheduleRequired
.LVL2192:
.L2341:
	.cfi_restore_state
.LBB7498:
.LBB7483:
	bl	tcbSchedDequeue.part.242
.LVL2193:
	b	.L2329
.LVL2194:
.L2342:
.LBE7483:
.LBE7498:
.LBB7499:
.LBB7497:
	mov	r0, r4
	bl	tcbSchedEnqueue.part.233
.LVL2195:
	b	.L2330
.LBE7497:
.LBE7499:
	.cfi_endproc
.LFE541:
	.size	setPriority, .-setPriority
	.align	2
	.global	cancelSignal
	.type	cancelSignal, %function
cancelSignal:
.LFB616:
	.loc 50 171 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2196:
	stmfd	sp!, {r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	ldr	r3, [r1]
.LVL2197:
.LBB7538:
.LBB7539:
	.loc 28 257 0
	and	r2, r3, #3
.LVL2198:
.LBE7539:
.LBE7538:
	.loc 50 175 0
	cmp	r2, #1
	bne	.L2353
.LBB7540:
.LBB7541:
	.loc 31 167 0
	ldr	r4, [r0, #136]
	mov	ip, r0
.LVL2199:
	ldr	r2, [r1, #4]
.LVL2200:
.LBE7541:
.LBE7540:
.LBB7544:
.LBB7545:
.LBB7546:
.LBB7547:
	.loc 28 238 0
	bic	r0, r3, #15
.LVL2201:
.LBE7547:
.LBE7546:
.LBE7545:
.LBE7544:
.LBB7551:
.LBB7542:
	.loc 31 167 0
	cmp	r4, #0
	.loc 31 168 0
	ldrne	r5, [ip, #132]
.LBE7542:
.LBE7551:
.LBB7552:
.LBB7550:
.LBB7548:
.LBB7549:
	.loc 28 219 0
	bic	lr, r2, #15
.LVL2202:
.LBE7549:
.LBE7548:
.LBE7550:
.LBE7552:
.LBB7553:
.LBB7543:
	.loc 31 170 0
	ldreq	lr, [ip, #132]
.LVL2203:
	.loc 31 168 0
	strne	r5, [r4, #132]
	ldrne	r5, [ip, #132]
	.loc 31 170 0
	moveq	r5, lr
	.loc 31 173 0
	cmp	r5, #0
	.loc 31 174 0
	strne	r4, [r5, #136]
	.loc 31 167 0
	moveq	r0, r4
.LVL2204:
.LBE7543:
.LBE7553:
.LBB7554:
.LBB7555:
.LBB7556:
.LBB7557:
	.loc 28 230 0
	tst	lr, #15
	bne	.L2354
	.loc 28 231 0
	and	r2, r2, #15
.LVL2205:
	.loc 28 232 0
	bic	r4, lr, #15
.LBE7557:
.LBE7556:
.LBB7560:
.LBB7561:
	.loc 28 249 0
	tst	r0, #15
.LBE7561:
.LBE7560:
.LBB7565:
.LBB7558:
	.loc 28 232 0
	orr	r2, r4, r2
	str	r2, [r1, #4]
.LVL2206:
.LBE7558:
.LBE7565:
.LBB7566:
.LBB7562:
	.loc 28 249 0
	bne	.L2355
	.loc 28 251 0
	bic	r0, r0, #15
.LVL2207:
	.loc 28 250 0
	and	r3, r3, #15
.LVL2208:
	.loc 28 251 0
	orr	r3, r0, r3
.LBE7562:
.LBE7566:
.LBE7555:
.LBE7554:
	.loc 50 183 0
	cmp	lr, #0
.LBB7572:
.LBB7570:
.LBB7567:
.LBB7563:
	.loc 28 251 0
	str	r3, [r1]
.LVL2209:
.LBE7563:
.LBE7567:
.LBE7570:
.LBE7572:
.LBB7573:
.LBB7574:
	.loc 28 269 0
	biceq	r3, r3, #3
	streq	r3, [r1]
.LVL2210:
.LBE7574:
.LBE7573:
.LBB7575:
.LBB7576:
	.loc 26 418 0
	mov	r0, ip
.LBB7577:
.LBB7578:
	.loc 28 169 0
	ldr	r3, [ip, #72]
	bic	r3, r3, #15
	str	r3, [ip, #72]
.LBE7578:
.LBE7577:
.LBE7576:
.LBE7575:
	.loc 50 189 0
	ldmfd	sp!, {r3, r4, r5, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL2211:
.LBB7580:
.LBB7579:
	.loc 26 418 0
	b	scheduleTCB
.LVL2212:
.L2353:
	.cfi_restore_state
.LBE7579:
.LBE7580:
.LBB7581:
.LBB7582:
	.loc 50 175 0
	movw	r0, #:lower16:.LC117
.LVL2213:
	movw	r1, #:lower16:.LC109
.LVL2214:
	movt	r0, #:upper16:.LC117
	movt	r1, #:upper16:.LC109
	mov	r2, #175
.LVL2215:
	ldr	r3, .L2356
.LVL2216:
	bl	_assert_fail
.LVL2217:
.L2355:
.LBE7582:
.LBE7581:
.LBB7583:
.LBB7571:
.LBB7568:
.LBB7564:
	bl	notification_ptr_set_ntfnQueue_tail.isra.221.part.222
.LVL2218:
.L2354:
.LBE7564:
.LBE7568:
.LBB7569:
.LBB7559:
	bl	notification_ptr_set_ntfnQueue_head.isra.219.part.220
.LVL2219:
.L2357:
	.align	2
.L2356:
	.word	.LANCHOR4+3716
.LBE7559:
.LBE7569:
.LBE7571:
.LBE7583:
	.cfi_endproc
.LFE616:
	.size	cancelSignal, .-cancelSignal
	.align	2
	.global	performASIDPoolInvocation
	.type	performASIDPoolInvocation, %function
performASIDPoolInvocation:
.LFB376:
	.loc 14 2214 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2220:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
.LBB7590:
.LBB7591:
	.loc 28 2149 0
	ldr	lr, [r2]
	and	r3, lr, #15
	cmp	r3, #9
	bne	.L2362
	mov	r4, r0
.LVL2221:
	.loc 28 2153 0
	mov	r0, r0, lsr #18
.LVL2222:
	mov	r0, r0, asl #18
	cmp	r0, #0
	bne	.L2363
	.loc 28 2155 0
	ldr	ip, [r2, #4]
.LBE7591:
.LBE7590:
.LBB7594:
.LBB7595:
	.loc 28 2165 0
	bic	r5, lr, #16320
.LBE7595:
.LBE7594:
	.loc 14 2217 0
	ubfx	r6, r4, #0, #10
.LBB7597:
.LBB7596:
	.loc 28 2165 0
	bic	r5, r5, #63
.LBE7596:
.LBE7597:
.LBB7598:
.LBB7599:
	.loc 28 2209 0
	orr	lr, lr, #16
	str	lr, [r2]
.LBE7599:
.LBE7598:
.LBB7600:
.LBB7592:
	.loc 28 2155 0
	mov	r3, ip, lsr #18
	mov	r3, r3, asl #18
	.loc 28 2156 0
	orr	r3, r4, r3
	str	r3, [r2, #4]
.LVL2223:
.LBE7592:
.LBE7600:
	.loc 14 2217 0
	str	r5, [r1, r6, asl #2]
	.loc 14 2221 0
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL2224:
.L2362:
.LBB7601:
.LBB7593:
	.loc 28 2149 0
	movw	r0, #:lower16:.LC118
.LVL2225:
	movw	r1, #:lower16:.LC30
.LVL2226:
	movt	r0, #:upper16:.LC118
	movt	r1, #:upper16:.LC30
	movw	r2, #2150
.LVL2227:
	ldr	r3, .L2364
	bl	_assert_fail
.LVL2228:
.L2363:
	.loc 28 2153 0
	movw	r0, #:lower16:.LC119
	movw	r1, #:lower16:.LC30
.LVL2229:
	movt	r0, #:upper16:.LC119
	movt	r1, #:upper16:.LC30
	movw	r2, #2153
.LVL2230:
	ldr	r3, .L2364
	bl	_assert_fail
.LVL2231:
.L2365:
	.align	2
.L2364:
	.word	.LANCHOR4+3732
.LBE7593:
.LBE7601:
	.cfi_endproc
.LFE376:
	.size	performASIDPoolInvocation, .-performASIDPoolInvocation
	.align	2
	.global	handleVMFault
	.type	handleVMFault, %function
handleVMFault:
.LFB332:
	.loc 14 445 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2232:
	.loc 14 446 0
	cmp	r1, #0
	.loc 14 445 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 14 446 0
	beq	.L2368
	cmp	r1, #1
	bne	.L2376
.LVL2233:
.LBB7625:
.LBB7626:
.LBB7627:
.LBB7628:
	.loc 13 27 0
	ldr	r1, [r0, #68]
.LVL2234:
.LBE7628:
.LBE7627:
.LBE7626:
.LBB7629:
.LBB7630:
	.loc 4 308 0
@ 308 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mrc p15, 0, r3, c5, c0, 1
@ 0 "" 2
.LVL2235:
.LBE7630:
.LBE7629:
.LBB7631:
.LBB7632:
	.loc 28 639 0
	bic	r2, r3, #16320
	bic	r2, r2, #63
	cmp	r2, #0
	bne	.L2372
.LVL2236:
	.loc 28 640 0
	mov	r3, r3, asl #18
.LVL2237:
.LBE7632:
.LBE7631:
	.loc 14 462 0
	movw	r2, #:lower16:current_fault
	movt	r2, #:upper16:current_fault
.LBB7635:
.LBB7633:
	.loc 28 646 0
	orr	r3, r3, #131072
.LBE7633:
.LBE7635:
	.loc 14 462 0
	str	r1, [r2, #4]
.LBB7636:
.LBB7634:
	.loc 28 646 0
	orr	r3, r3, #2
.LBE7634:
.LBE7636:
.LBE7625:
	.loc 14 469 0
	mov	r0, #1
.LVL2238:
.LBB7637:
	.loc 14 462 0
	str	r3, [r2]
.LBE7637:
	.loc 14 469 0
	ldmfd	sp!, {r3, pc}
.LVL2239:
.L2376:
	.loc 14 467 0
	movw	r0, #:lower16:.LC120
.LVL2240:
	movw	r1, #:lower16:.LC23
.LVL2241:
	movt	r0, #:upper16:.LC120
	movt	r1, #:upper16:.LC23
	movw	r2, #467
	ldr	r3, .L2377
	bl	_fail
.LVL2242:
.L2368:
.LBB7638:
.LBB7639:
.LBB7640:
.LBB7641:
.LBB7642:
	.loc 4 324 0
@ 324 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mrc p15, 0, r1, c6, c0, 0
@ 0 "" 2
.LVL2243:
.LBE7642:
.LBE7641:
.LBB7643:
.LBB7644:
	.loc 4 316 0
@ 316 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mrc p15, 0, r3, c5, c0, 0
@ 0 "" 2
.LVL2244:
.LBE7644:
.LBE7643:
.LBB7645:
.LBB7646:
	.loc 28 639 0
	bic	r2, r3, #16320
	bic	r2, r2, #63
	cmp	r2, #0
	bne	.L2372
.LVL2245:
	.loc 28 640 0
	mov	r3, r3, asl #18
.LVL2246:
.LBE7646:
.LBE7645:
	.loc 14 452 0
	movw	r2, #:lower16:current_fault
	movt	r2, #:upper16:current_fault
.LBB7649:
.LBB7647:
	.loc 28 646 0
	orr	r3, r3, #2
.LVL2247:
.LBE7647:
.LBE7649:
	.loc 14 452 0
	str	r1, [r2, #4]
	str	r3, [r2]
.LBE7640:
.LBE7639:
.LBE7638:
	.loc 14 469 0
	mov	r0, #1
.LVL2248:
	ldmfd	sp!, {r3, pc}
.LVL2249:
.L2372:
.LBB7653:
.LBB7652:
.LBB7651:
.LBB7650:
.LBB7648:
	bl	fault_vm_fault_new.part.122
.LVL2250:
.L2378:
	.align	2
.L2377:
	.word	.LANCHOR4+3780
.LBE7648:
.LBE7650:
.LBE7651:
.LBE7652:
.LBE7653:
	.cfi_endproc
.LFE332:
	.size	handleVMFault, .-handleVMFault
	.align	2
	.global	setupCallerCap
	.type	setupCallerCap, %function
setupCallerCap:
.LFB646:
	.loc 31 197 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2251:
.LBB7668:
.LBB7669:
.LBB7670:
.LBB7671:
	.loc 28 169 0
	ldr	r3, [r0, #72]
.LBE7671:
.LBE7670:
.LBE7669:
.LBE7668:
	.loc 31 197 0
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	mov	r4, r0
.LVL2252:
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 31 197 0
	mov	r5, r1
.LBB7675:
.LBB7674:
.LBB7673:
.LBB7672:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #5
	str	r3, [r0, #72]
.LBE7672:
.LBE7673:
	.loc 26 418 0
	bl	scheduleTCB
.LVL2253:
.LBE7674:
.LBE7675:
	.loc 31 202 0
	bic	r2, r4, #508
	bic	r2, r2, #3
	.loc 31 203 0
	ldr	r3, [r2, #32]
	.loc 31 202 0
	add	r2, r2, #32
.LVL2254:
.LBB7676:
.LBB7677:
	.loc 28 1035 0
	and	r1, r3, #14
	cmp	r1, #14
	.loc 28 1037 0
	uxtbeq	r1, r3
	.loc 28 1036 0
	andne	r1, r3, #15
.LBE7677:
.LBE7676:
	.loc 31 205 0
	cmp	r1, #8
	bne	.L2391
.LVL2255:
.LBB7678:
.LBB7679:
	.loc 28 1471 0
	and	r1, r3, #15
	cmp	r1, #8
	bne	.L2392
.LVL2256:
.LBE7679:
.LBE7678:
	.loc 31 206 0
	tst	r3, #16
	beq	.L2393
.LVL2257:
.LBB7681:
.LBB7682:
	.loc 28 1460 0
	bic	r3, r3, #31
.LBE7682:
.LBE7681:
	.loc 31 207 0
	cmp	r4, r3
	bne	.L2394
	.loc 31 208 0
	bic	r1, r5, #508
	bic	r1, r1, #3
	.loc 31 209 0
	ldr	r0, [r1, #48]
	.loc 31 208 0
	add	r3, r1, #48
.LVL2258:
.LBB7683:
.LBB7684:
	.loc 28 1035 0
	and	r1, r0, #14
	cmp	r1, #14
	.loc 28 1037 0
	uxtbeq	r0, r0
.LVL2259:
	.loc 28 1036 0
	andne	r0, r0, #15
.LBE7684:
.LBE7683:
	.loc 31 211 0
	cmp	r0, #0
	bne	.L2395
.LVL2260:
.LBB7685:
.LBB7686:
	.loc 28 1429 0
	tst	r4, #31
	bne	.L2396
.LVL2261:
	.loc 28 1430 0
	bic	r4, r4, #31
.LVL2262:
.LBE7686:
.LBE7685:
	.loc 31 212 0
	add	r1, sp, #8
.LBB7689:
.LBB7687:
	.loc 28 1433 0
	orr	r4, r4, #8
.LVL2263:
	.loc 28 1435 0
	str	r0, [sp, #4]
	str	r4, [sp]
.LBE7687:
.LBE7689:
	.loc 31 212 0
	ldmdb	r1, {r0, r1}
	bl	cteInsert
.LVL2264:
	.loc 31 214 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.LVL2265:
.L2391:
	.cfi_restore_state
	.loc 31 205 0 discriminator 1
	movw	r0, #:lower16:.LC121
	movw	r1, #:lower16:.LC122
	movt	r0, #:upper16:.LC121
	movt	r1, #:upper16:.LC122
	mov	r2, #205
.LVL2266:
	ldr	r3, .L2397
	bl	_assert_fail
.LVL2267:
.L2396:
.LBB7690:
.LBB7688:
	.loc 28 1429 0
	movw	r0, #:lower16:.LC126
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC126
	movt	r1, #:upper16:.LC30
	movw	r2, #1429
.LVL2268:
	ldr	r3, .L2397+4
.LVL2269:
	bl	_assert_fail
.LVL2270:
.L2395:
.LBE7688:
.LBE7690:
	.loc 31 211 0 discriminator 1
	movw	r0, #:lower16:.LC125
	movw	r1, #:lower16:.LC122
	movt	r0, #:upper16:.LC125
	movt	r1, #:upper16:.LC122
	mov	r2, #211
.LVL2271:
	ldr	r3, .L2397
.LVL2272:
	bl	_assert_fail
.LVL2273:
.L2394:
	.loc 31 207 0 discriminator 1
	movw	r0, #:lower16:.LC124
	movw	r1, #:lower16:.LC122
	movt	r0, #:upper16:.LC124
	movt	r1, #:upper16:.LC122
	mov	r2, #207
.LVL2274:
	ldr	r3, .L2397
	bl	_assert_fail
.LVL2275:
.L2393:
	.loc 31 206 0 discriminator 1
	movw	r0, #:lower16:.LC123
	movw	r1, #:lower16:.LC122
	movt	r0, #:upper16:.LC123
	movt	r1, #:upper16:.LC122
	mov	r2, #206
.LVL2276:
	ldr	r3, .L2397
	bl	_assert_fail
.LVL2277:
.L2392:
.LBB7691:
.LBB7680:
	bl	cap_reply_cap_get_capReplyMaster.isra.63.part.64
.LVL2278:
.L2398:
	.align	2
.L2397:
	.word	.LANCHOR4+3796
	.word	.LANCHOR4+3240
.LBE7680:
.LBE7691:
	.cfi_endproc
.LFE646:
	.size	setupCallerCap, .-setupCallerCap
	.align	2
	.type	invalidateASID, %function
invalidateASID:
.LFB333:
	.loc 14 473 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2279:
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 14 477 0
	mov	r2, r0, lsr #10
	movw	r3, #:lower16:armKSASIDTable
	movt	r3, #:upper16:armKSASIDTable
	ldr	r3, [r3, r2, asl #2]
.LVL2280:
	.loc 14 478 0
	cmp	r3, #0
	beq	.L2403
	.loc 14 480 0
	ubfx	r0, r0, #0, #10
.LVL2281:
	ldr	r3, [r3, r0, asl #2]
.LVL2282:
	.loc 14 481 0
	cmp	r3, #0
	.loc 14 483 0
	addne	r3, r3, #12288
.LVL2283:
	movne	r2, #0
.LVL2284:
	strne	r2, [r3, #4032]
	.loc 14 481 0
	ldmnefd	sp!, {r3, pc}
	.loc 14 481 0 is_stmt 0 discriminator 1
	movw	r0, #:lower16:.LC58
.LVL2285:
	movw	r1, #:lower16:.LC23
	movt	r0, #:upper16:.LC58
	movt	r1, #:upper16:.LC23
	movw	r2, #481
	ldr	r3, .L2404
	bl	_assert_fail
.LVL2286:
.L2403:
.LBB7696:
.LBB7697:
	.loc 14 478 0 is_stmt 1
	movw	r0, #:lower16:.LC57
.LVL2287:
	movw	r1, #:lower16:.LC23
	movt	r0, #:upper16:.LC57
	movt	r1, #:upper16:.LC23
	movw	r2, #478
	ldr	r3, .L2404
.LVL2288:
	bl	_assert_fail
.LVL2289:
.L2405:
	.align	2
.L2404:
	.word	.LANCHOR4+3812
.LBE7697:
.LBE7696:
	.cfi_endproc
.LFE333:
	.size	invalidateASID, .-invalidateASID
	.align	2
	.type	invalidateASIDEntry, %function
invalidateASIDEntry:
.LFB334:
	.loc 14 488 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2290:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 14 488 0
	mov	r4, r0
	.loc 14 491 0
	bl	loadHWASID
.LVL2291:
.LBB7698:
.LBB7699:
	.loc 28 827 0
	ands	r2, r0, #3
	bne	.L2413
.LVL2292:
.LBE7699:
.LBE7698:
	.loc 14 492 0
	tst	r0, #8388608
.LVL2293:
.LBB7701:
.LBB7702:
	.loc 28 816 0
	movne	r0, r0, lsr #24
.LVL2294:
.LBE7702:
.LBE7701:
	.loc 14 493 0
	movwne	r3, #:lower16:armKSHWASIDTable
	movtne	r3, #:upper16:armKSHWASIDTable
	strne	r2, [r3, r0, asl #2]
	.loc 14 496 0
	mov	r0, r4
	.loc 14 497 0
	ldmfd	sp!, {r4, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL2295:
	.loc 14 496 0
	b	invalidateASID
.LVL2296:
.L2413:
	.cfi_restore_state
.LBB7703:
.LBB7700:
	bl	pde_pde_invalid_get_stored_asid_valid.part.125
.LVL2297:
.LBE7700:
.LBE7703:
	.cfi_endproc
.LFE334:
	.size	invalidateASIDEntry, .-invalidateASIDEntry
	.align	2
	.global	findFreeHWASID
	.type	findFreeHWASID, %function
findFreeHWASID:
.LFB348:
	.loc 14 832 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2298:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	movw	r6, #:lower16:armKSNextASID
	movt	r6, #:upper16:armKSNextASID
	movw	r1, #:lower16:armKSHWASIDTable
	movt	r1, #:upper16:armKSHWASIDTable
	.loc 14 837 0
	mov	r3, #0
	ldrb	r5, [r6]	@ zero_extendqisi2
.LVL2299:
.L2416:
	add	r0, r5, r3
	.loc 14 841 0
	movw	r4, #:lower16:armKSHWASIDTable
	uxtb	r0, r0
	add	r3, r3, #1
.LVL2300:
	movt	r4, #:upper16:armKSHWASIDTable
	ldr	r2, [r1, r0, asl #2]
	cmp	r2, #0
	ldmeqfd	sp!, {r4, r5, r6, pc}
	.loc 14 837 0
	cmp	r3, #256
	bne	.L2416
.LVL2301:
.LBB7714:
.LBB7715:
	.loc 14 849 0
	ldr	r0, [r4, r5, asl #2]
.LVL2302:
	bl	invalidateASID
.LVL2303:
.LBB7716:
.LBB7717:
.LBB7718:
.LBB7719:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LBE7719:
.LBE7718:
	.loc 4 165 0
@ 165 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r5, c8, c7, 2
@ 0 "" 2
.LBB7720:
.LBB7721:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LBE7721:
.LBE7720:
.LBB7722:
.LBB7723:
	.loc 2 29 0
@ 29 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LBE7723:
.LBE7722:
.LBE7717:
.LBE7716:
	.loc 14 856 0
	ldrb	r3, [r6]	@ zero_extendqisi2
	.loc 14 853 0
	mov	r2, #0
.LBE7715:
.LBE7714:
	.loc 14 840 0
	mov	r0, r5
.LBB7725:
.LBB7724:
	.loc 14 853 0
	str	r2, [r4, r5, asl #2]
	.loc 14 856 0
	add	r3, r3, #1
	strb	r3, [r6]
.LBE7724:
.LBE7725:
	.loc 14 859 0
	ldmfd	sp!, {r4, r5, r6, pc}
	.cfi_endproc
.LFE348:
	.size	findFreeHWASID, .-findFreeHWASID
	.align	2
	.global	getHWASID
	.type	getHWASID, %function
getHWASID:
.LFB349:
	.loc 14 863 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2304:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 14 863 0
	mov	r4, r0
	.loc 14 866 0
	bl	loadHWASID
.LVL2305:
.LBB7741:
.LBB7742:
	.loc 28 827 0
	tst	r0, #3
	bne	.L2429
.LVL2306:
.LBE7742:
.LBE7741:
	.loc 14 867 0
	tst	r0, #8388608
	beq	.L2424
.LVL2307:
	.loc 14 868 0
	mov	r0, r0, lsr #24
.LVL2308:
	ldmfd	sp!, {r4, pc}
.LVL2309:
.L2424:
.LBB7744:
.LBB7745:
.LBB7746:
	.loc 14 872 0
	bl	findFreeHWASID
.LVL2310:
.LBB7747:
.LBB7748:
	.loc 14 802 0
	movw	r3, #:lower16:armKSASIDTable
	mov	r2, r4, lsr #10
	movt	r3, #:upper16:armKSASIDTable
	ldr	r3, [r3, r2, asl #2]
.LBE7748:
.LBE7747:
	.loc 14 872 0
	mov	r1, r0
.LVL2311:
.LBB7755:
.LBB7753:
	.loc 14 803 0
	cmp	r3, #0
	beq	.L2430
	.loc 14 805 0
	ubfx	r2, r4, #0, #10
	ldr	r3, [r3, r2, asl #2]
.LVL2312:
	.loc 14 806 0
	cmp	r3, #0
	beq	.L2431
.LVL2313:
.LBB7749:
.LBB7750:
	.loc 28 799 0
	mov	ip, r0, asl #24
.LBE7750:
.LBE7749:
	.loc 14 812 0
	movw	r2, #:lower16:armKSHWASIDTable
	.loc 14 810 0
	add	r3, r3, #12288
.LVL2314:
.LBB7752:
.LBB7751:
	.loc 28 802 0
	orr	ip, ip, #8388608
.LBE7751:
.LBE7752:
	.loc 14 812 0
	movt	r2, #:upper16:armKSHWASIDTable
	.loc 14 810 0
	str	ip, [r3, #4032]
	.loc 14 812 0
	str	r4, [r2, r1, asl #2]
.LBE7753:
.LBE7755:
.LBE7746:
.LBE7745:
.LBE7744:
	.loc 14 876 0
	ldmfd	sp!, {r4, pc}
.LVL2315:
.L2429:
.LBB7759:
.LBB7743:
	bl	pde_pde_invalid_get_stored_asid_valid.part.125
.LVL2316:
.L2430:
.LBE7743:
.LBE7759:
.LBB7760:
.LBB7758:
.LBB7757:
.LBB7756:
.LBB7754:
	.loc 14 803 0
	movw	r0, #:lower16:.LC57
.LVL2317:
	movw	r1, #:lower16:.LC23
	movt	r0, #:upper16:.LC57
	movt	r1, #:upper16:.LC23
	movw	r2, #803
	ldr	r3, .L2432
.LVL2318:
	bl	_assert_fail
.LVL2319:
.L2431:
	.loc 14 806 0
	movw	r0, #:lower16:.LC58
.LVL2320:
	movw	r1, #:lower16:.LC23
	movt	r0, #:upper16:.LC58
	movt	r1, #:upper16:.LC23
	movw	r2, #806
	ldr	r3, .L2432
.LVL2321:
	bl	_assert_fail
.LVL2322:
.L2433:
	.align	2
.L2432:
	.word	.LANCHOR4+3828
.LBE7754:
.LBE7756:
.LBE7757:
.LBE7758:
.LBE7760:
	.cfi_endproc
.LFE349:
	.size	getHWASID, .-getHWASID
	.align	2
	.global	setVMRoot
	.type	setVMRoot, %function
setVMRoot:
.LFB341:
	.loc 14 703 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2323:
	.loc 14 709 0
	bic	r0, r0, #508
.LVL2324:
	.loc 14 703 0
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 14 709 0
	bic	r0, r0, #3
	.loc 14 703 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 14 709 0
	ldr	r3, [r0, #16]
	ldr	r0, [r0, #20]
.LVL2325:
.LBB7811:
.LBB7812:
	.loc 28 1035 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 28 1037 0
	uxtbeq	r2, r3
	.loc 28 1036 0
	andne	r2, r3, #15
.LBE7812:
.LBE7811:
	.loc 14 711 0
	cmp	r2, #9
	beq	.L2445
.LVL2326:
.L2441:
.LBB7813:
.LBB7814:
.LBB7815:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LVL2327:
.LBE7815:
.LBE7814:
.LBE7813:
.LBB7820:
.LBB7821:
	.loc 3 51 0
	ldr	r3, .L2447
.LBE7821:
.LBE7820:
.LBB7822:
.LBB7816:
.LBB7817:
	.loc 4 136 0
	bic	r3, r3, #8128
	bic	r3, r3, #63
	orr	r3, r3, #24
	.loc 4 135 0
@ 135 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r3, c2, c0, 0
@ 0 "" 2
.LBE7817:
.LBE7816:
.LBB7818:
.LBB7819:
	.loc 2 29 0
@ 29 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LBE7819:
.LBE7818:
.LBE7822:
	.loc 14 726 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.LVL2328:
.L2445:
	.cfi_restore_state
.LBB7823:
.LBB7824:
	.loc 28 2176 0 discriminator 1
	and	r2, r3, #15
	cmp	r2, #9
	bne	.L2446
.LVL2329:
.LBE7824:
.LBE7823:
	.loc 14 711 0
	tst	r3, #16
	beq	.L2441
.LVL2330:
.LBB7826:
.LBB7827:
	.loc 28 2138 0
	ubfx	r5, r0, #0, #18
.LBE7827:
.LBE7826:
	.loc 14 719 0
	mov	r0, sp
.LVL2331:
	mov	r1, r5
.LBB7828:
.LBB7829:
	.loc 28 2165 0
	bic	r4, r3, #16320
.LBE7829:
.LBE7828:
	.loc 14 719 0
	bl	findPDForASID
.LVL2332:
	.loc 14 720 0
	ldr	r3, [sp]
.LBB7831:
.LBB7830:
	.loc 28 2165 0
	bic	r4, r4, #63
.LVL2333:
.LBE7830:
.LBE7831:
	.loc 14 720 0
	cmp	r3, #0
	bne	.L2441
	.loc 14 720 0 is_stmt 0 discriminator 1
	ldr	r3, [sp, #4]
	cmp	r4, r3
	bne	.L2441
.LVL2334:
.LBB7832:
.LBB7833:
	.loc 1 50 0 is_stmt 1
	mov	r0, r5
	bl	getHWASID
.LVL2335:
.LBB7834:
.LBB7835:
.LBB7836:
.LBB7837:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LVL2336:
.LBE7837:
.LBE7836:
.LBB7838:
.LBB7839:
	.loc 3 51 0
	ldr	r3, .L2447
.LBE7839:
.LBE7838:
.LBB7840:
.LBB7841:
	.loc 4 136 0
	bic	r3, r3, #8128
	bic	r3, r3, #63
	orr	r3, r3, #24
	.loc 4 135 0
@ 135 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r3, c2, c0, 0
@ 0 "" 2
.LBE7841:
.LBE7840:
.LBB7842:
.LBB7843:
	.loc 2 29 0
@ 29 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL2337:
.LBE7843:
.LBE7842:
.LBB7844:
.LBB7845:
.LBB7846:
.LBB7847:
	.loc 4 123 0
@ 123 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r0, c13, c0, 1
@ 0 "" 2
.LBB7848:
.LBB7849:
	.loc 2 29 0
@ 29 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL2338:
.LBE7849:
.LBE7848:
.LBE7847:
.LBE7846:
.LBE7845:
.LBE7844:
.LBB7850:
.LBB7851:
	.loc 4 136 0
	add	r3, r4, #536870912
.LVL2339:
	orr	r3, r3, #24
.LVL2340:
	.loc 4 135 0
@ 135 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r3, c2, c0, 0
@ 0 "" 2
.LBE7851:
.LBE7850:
.LBB7852:
.LBB7853:
	.loc 2 29 0
@ 29 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LBE7853:
.LBE7852:
.LBE7835:
.LBE7834:
.LBE7833:
.LBE7832:
	.loc 14 726 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.LVL2341:
.L2446:
	.cfi_restore_state
.LBB7854:
.LBB7825:
	bl	cap_page_directory_cap_get_capPDIsMapped.isra.135.part.136
.LVL2342:
.L2448:
	.align	2
.L2447:
	.word	.LANCHOR0+536870912
.LBE7825:
.LBE7854:
	.cfi_endproc
.LFE341:
	.size	setVMRoot, .-setVMRoot
	.align	2
	.global	Arch_switchToThread
	.type	Arch_switchToThread, %function
Arch_switchToThread:
.LFB312:
	.loc 12 20 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2343:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 12 21 0
	bl	setVMRoot
.LVL2344:
	.loc 12 22 0
	ldr	r1, [r4, #120]
	movw	r3, #:lower16:.LANCHOR2
	movt	r3, #:upper16:.LANCHOR2
.LBB7855:
.LBB7856:
	.loc 4 109 0
	add	r2, sp, #4
.LBE7856:
.LBE7855:
	.loc 12 22 0
	str	r1, [r3, #16]
.LBB7858:
.LBB7857:
	.loc 4 109 0
@ 109 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	strex r0, r1, [r2]
@ 0 "" 2
.LBE7857:
.LBE7858:
	.loc 12 24 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 8
	@ sp needed
	ldmfd	sp!, {r4, pc}
	.cfi_endproc
.LFE312:
	.size	Arch_switchToThread, .-Arch_switchToThread
	.align	2
	.global	deleteASIDPool
	.type	deleteASIDPool, %function
deleteASIDPool:
.LFB335:
	.loc 14 501 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2345:
	.loc 14 505 0
	ubfx	r3, r0, #0, #10
	.loc 14 501 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 14 505 0
	cmp	r3, #0
	bne	.L2461
	.loc 14 507 0
	movw	r7, #:lower16:armKSASIDTable
	mov	r8, r0, lsr #10
	movt	r7, #:upper16:armKSASIDTable
	ldr	r5, [r7, r8, asl #2]
	cmp	r5, r1
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}
	sub	r5, r5, #4
	add	r6, r0, #1024
	mov	r4, r0
.LVL2346:
.L2455:
	.loc 14 509 0
	ldr	r3, [r5, #4]!
	cmp	r3, #0
	beq	.L2454
	.loc 14 510 0
	mov	r0, r4
	bl	flushSpace
.LVL2347:
	.loc 14 511 0
	mov	r0, r4
	bl	invalidateASIDEntry
.LVL2348:
.L2454:
	add	r4, r4, #1
.LVL2349:
	.loc 14 508 0 discriminator 2
	cmp	r4, r6
	bne	.L2455
	.loc 14 515 0
	movw	r3, #:lower16:ksCurThread
	.loc 14 514 0
	mov	r2, #0
	.loc 14 515 0
	movt	r3, #:upper16:ksCurThread
	.loc 14 514 0
	str	r2, [r7, r8, asl #2]
	.loc 14 515 0
	ldr	r0, [r3]
	.loc 14 517 0
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL2350:
	.loc 14 515 0
	b	setVMRoot
.LVL2351:
.L2461:
	.cfi_restore_state
.LBB7861:
.LBB7862:
	.loc 14 505 0
	movw	r0, #:lower16:.LC127
.LVL2352:
	movw	r1, #:lower16:.LC23
.LVL2353:
	movt	r0, #:upper16:.LC127
	movt	r1, #:upper16:.LC23
	movw	r2, #505
	ldr	r3, .L2462
	bl	_assert_fail
.LVL2354:
.L2463:
	.align	2
.L2462:
	.word	.LANCHOR4+3840
.LBE7862:
.LBE7861:
	.cfi_endproc
.LFE335:
	.size	deleteASIDPool, .-deleteASIDPool
	.align	2
	.global	deleteASID
	.type	deleteASID, %function
deleteASID:
.LFB336:
	.loc 14 521 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2355:
	.loc 14 524 0
	movw	r3, #:lower16:armKSASIDTable
	mov	ip, r0, lsr #10
	movt	r3, #:upper16:armKSASIDTable
	.loc 14 521 0
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 14 524 0
	ldr	r5, [r3, ip, asl #2]
.LVL2356:
	.loc 14 526 0
	cmp	r5, #0
	ldmeqfd	sp!, {r4, r5, r6, pc}
	.loc 14 526 0 is_stmt 0 discriminator 1
	ubfx	r6, r0, #0, #10
	ldr	r3, [r5, r6, asl #2]
	cmp	r3, r1
	ldmnefd	sp!, {r4, r5, r6, pc}
	mov	r4, r0
	.loc 14 527 0 is_stmt 1
	bl	flushSpace
.LVL2357:
	.loc 14 528 0
	mov	r0, r4
	bl	invalidateASIDEntry
.LVL2358:
	.loc 14 530 0
	movw	r3, #:lower16:ksCurThread
	.loc 14 529 0
	mov	r2, #0
	.loc 14 530 0
	movt	r3, #:upper16:ksCurThread
	.loc 14 529 0
	str	r2, [r5, r6, asl #2]
	.loc 14 530 0
	ldr	r0, [r3]
	.loc 14 532 0
	ldmfd	sp!, {r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL2359:
	.loc 14 530 0
	b	setVMRoot
.LVL2360:
	.cfi_endproc
.LFE336:
	.size	deleteASID, .-deleteASID
	.align	2
	.global	switchToThread
	.type	switchToThread, %function
switchToThread:
.LFB538:
	.loc 26 335 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2361:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r0
.LVL2362:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
.LBB7863:
.LBB7864:
	.loc 12 21 0
	bl	setVMRoot
.LVL2363:
	.loc 12 22 0
	ldr	r1, [r4, #120]
	movw	r3, #:lower16:.LANCHOR2
	movt	r3, #:upper16:.LANCHOR2
.LBB7865:
.LBB7866:
	.loc 4 109 0
	add	r2, sp, #4
.LBE7866:
.LBE7865:
	.loc 12 22 0
	str	r1, [r3, #16]
.LBB7868:
.LBB7867:
	.loc 4 109 0
@ 109 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	strex r0, r1, [r2]
@ 0 "" 2
.LVL2364:
.LBE7867:
.LBE7868:
.LBE7864:
.LBE7863:
.LBB7869:
.LBB7870:
.LBB7871:
.LBB7872:
	.loc 28 108 0
	ldr	r3, [r4, #76]
.LBE7872:
.LBE7871:
	.loc 31 115 0
	tst	r3, #1
	beq	.L2471
	mov	r0, r4
	bl	tcbSchedDequeue.part.242
.LVL2365:
.L2471:
.LBE7870:
.LBE7869:
	.loc 26 338 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	str	r4, [r3]
	.loc 26 339 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 8
	@ sp needed
	ldmfd	sp!, {r4, pc}
	.cfi_endproc
.LFE538:
	.size	switchToThread, .-switchToThread
	.align	2
	.global	chooseThread
	.type	chooseThread, %function
chooseThread:
.LFB537:
	.loc 26 309 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2366:
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 26 320 0
	movw	r3, #:lower16:ksReadyQueuesL1Bitmap
	movt	r3, #:upper16:ksReadyQueuesL1Bitmap
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L2477
.LVL2367:
.LBB7907:
	.loc 26 322 0
	movw	r2, #:lower16:ksReadyQueuesL2Bitmap
.LBB7908:
.LBB7909:
	.loc 10 87 0
	clz	r3, r3
.LVL2368:
.LBE7909:
.LBE7908:
	.loc 26 322 0
	movt	r2, #:upper16:ksReadyQueuesL2Bitmap
	.loc 26 321 0
	rsb	r3, r3, #31
.LVL2369:
.LBB7910:
.LBB7911:
	.loc 10 87 0
	ldr	r2, [r2, r3, asl #2]
	clz	r2, r2
.LVL2370:
.LBE7911:
.LBE7910:
	.loc 26 322 0
	rsb	r2, r2, #31
.LVL2371:
	.loc 26 324 0
	movw	r1, #:lower16:ksReadyQueues
	.loc 26 323 0
	orr	r3, r2, r3, asl #5
.LVL2372:
	.loc 26 324 0
	movt	r1, #:upper16:ksReadyQueues
	ldr	r0, [r1, r3, asl #3]
.LVL2373:
	.loc 26 325 0
	cmp	r0, #0
	beq	.L2485
.LVL2374:
.LBB7912:
.LBB7913:
.LBB7914:
.LBB7915:
	.loc 28 146 0
	ldr	r3, [r0, #72]
.LVL2375:
	and	r3, r3, #15
.LVL2376:
.LBE7915:
.LBE7914:
	.loc 26 49 0
	sub	r3, r3, #1
.LVL2377:
	cmp	r3, #1
	bls	.L2486
.LBE7913:
.LBE7912:
	.loc 26 326 0
	movw	r0, #:lower16:.LC129
.LVL2378:
	movw	r1, #:lower16:.LC114
.LVL2379:
	movt	r0, #:upper16:.LC129
	movt	r1, #:upper16:.LC114
	movw	r2, #326
.LVL2380:
	ldr	r3, .L2487
.LVL2381:
	bl	_assert_fail
.LVL2382:
.L2486:
.LBE7907:
	.loc 26 331 0
	ldmfd	sp!, {r3, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL2383:
.LBB7916:
	.loc 26 327 0
	b	switchToThread
.LVL2384:
.L2477:
	.cfi_restore_state
.LBE7916:
.LBB7917:
.LBB7918:
	.loc 26 345 0
	movw	r0, #:lower16:ksIdleThread
	movw	r2, #:lower16:ksCurThread
	movt	r0, #:upper16:ksIdleThread
.LBB7919:
.LBB7920:
	.loc 12 36 0
	movw	r1, #:lower16:.LANCHOR2
.LBE7920:
.LBE7919:
	.loc 26 345 0
	ldr	r0, [r0]
	movt	r2, #:upper16:ksCurThread
.LBB7922:
.LBB7921:
	.loc 12 36 0
	movt	r1, #:upper16:.LANCHOR2
	str	r3, [r1, #16]
.LBE7921:
.LBE7922:
	.loc 26 345 0
	str	r0, [r2]
	ldmfd	sp!, {r3, pc}
.LVL2385:
.L2485:
.LBE7918:
.LBE7917:
.LBB7923:
.LBB7924:
.LBB7925:
	.loc 26 325 0
	movw	r0, #:lower16:.LC128
.LVL2386:
	movw	r1, #:lower16:.LC114
.LVL2387:
	movt	r0, #:upper16:.LC128
	movt	r1, #:upper16:.LC114
	movw	r2, #325
.LVL2388:
	ldr	r3, .L2487
.LVL2389:
	bl	_assert_fail
.LVL2390:
.L2488:
	.align	2
.L2487:
	.word	.LANCHOR4+3856
.LBE7925:
.LBE7924:
.LBE7923:
	.cfi_endproc
.LFE537:
	.size	chooseThread, .-chooseThread
	.align	2
	.global	schedule
	.type	schedule, %function
schedule:
.LFB536:
	.loc 26 284 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 26 287 0
	movw	r4, #:lower16:ksSchedulerAction
	movt	r4, #:upper16:ksSchedulerAction
	ldr	r0, [r4]
.LVL2391:
	.loc 26 288 0
	cmn	r0, #1
	beq	.L2511
	.loc 26 297 0
	cmp	r0, #0
	ldmeqfd	sp!, {r4, pc}
	.loc 26 298 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r2, [r3]
.LVL2392:
.LBB7954:
.LBB7955:
.LBB7956:
.LBB7957:
	.loc 28 146 0
	ldr	r3, [r2, #72]
	and	r3, r3, #15
.LVL2393:
.LBE7957:
.LBE7956:
	.loc 26 49 0
	sub	r3, r3, #1
.LVL2394:
	cmp	r3, #1
	bhi	.L2497
.LVL2395:
.LBE7955:
.LBE7954:
.LBB7958:
.LBB7959:
.LBB7960:
.LBB7961:
	.loc 28 108 0
	ldr	r3, [r2, #76]
.LVL2396:
.LBE7961:
.LBE7960:
	.loc 31 53 0
	tst	r3, #1
	beq	.L2512
.LVL2397:
.L2497:
.LBE7959:
.LBE7958:
	.loc 26 302 0
	bl	switchToThread
.LVL2398:
	.loc 26 303 0
	mov	r3, #0
	str	r3, [r4]
	ldmfd	sp!, {r4, pc}
.LVL2399:
.L2511:
.LBB7963:
.LBB7964:
	.loc 26 289 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r0, [r3]
.LVL2400:
.LBB7965:
.LBB7966:
.LBB7967:
.LBB7968:
	.loc 28 146 0
	ldr	r3, [r0, #72]
	and	r3, r3, #15
.LVL2401:
.LBE7968:
.LBE7967:
	.loc 26 49 0
	sub	r3, r3, #1
.LVL2402:
	cmp	r3, #1
	bls	.L2513
.LVL2403:
.L2491:
.LBE7966:
.LBE7965:
	.loc 26 292 0
	movw	r3, #:lower16:ksDomainTime
	movt	r3, #:upper16:ksDomainTime
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L2493
.LBB7969:
.LBB7970:
	.loc 26 273 0
	movw	ip, #:lower16:ksDomScheduleIdx
	.loc 26 277 0
	movw	r0, #:lower16:ksWorkUnitsCompleted
	.loc 26 278 0
	movw	r1, #:lower16:ksCurDomain
	.loc 26 273 0
	movt	ip, #:upper16:ksDomScheduleIdx
	.loc 26 277 0
	movt	r0, #:upper16:ksWorkUnitsCompleted
	.loc 26 278 0
	movt	r1, #:upper16:ksCurDomain
	.loc 26 279 0
	mov	lr, #1
	.loc 26 275 0
	str	r2, [ip]
	.loc 26 277 0
	str	r2, [r0]
	.loc 26 278 0
	str	r2, [r1]
	.loc 26 279 0
	str	lr, [r3]
.L2493:
.LBE7970:
.LBE7969:
	.loc 26 295 0
	bl	chooseThread
.LVL2404:
	.loc 26 296 0
	mov	r3, #0
	str	r3, [r4]
	ldmfd	sp!, {r4, pc}
.LVL2405:
.L2513:
.LBB7971:
.LBB7972:
.LBB7973:
.LBB7974:
	.loc 28 108 0
	ldr	r3, [r0, #76]
.LVL2406:
.LBE7974:
.LBE7973:
	.loc 31 53 0
	tst	r3, #1
	bne	.L2491
	bl	tcbSchedEnqueue.part.233
.LVL2407:
	b	.L2491
.LVL2408:
.L2512:
.LBE7972:
.LBE7971:
.LBE7964:
.LBE7963:
.LBB7975:
.LBB7962:
	mov	r0, r2
.LVL2409:
	bl	tcbSchedEnqueue.part.233
.LVL2410:
	ldr	r0, [r4]
	b	.L2497
.LBE7962:
.LBE7975:
	.cfi_endproc
.LFE536:
	.size	schedule, .-schedule
	.align	2
	.type	setVMRootForFlush, %function
setVMRootForFlush:
.LFB342:
	.loc 14 730 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2411:
	.loc 14 733 0
	movw	r3, #:lower16:ksCurThread
	.loc 14 730 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 14 733 0
	movt	r3, #:upper16:ksCurThread
	.loc 14 730 0
	mov	r4, r0
	.loc 14 733 0
	ldr	r3, [r3]
	bic	r3, r3, #508
	bic	r3, r3, #3
	ldr	r3, [r3, #16]
.LVL2412:
.LBB8006:
.LBB8007:
	.loc 28 1035 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 28 1037 0
	uxtbeq	r2, r3
	.loc 28 1036 0
	andne	r2, r3, #15
.LBE8007:
.LBE8006:
	.loc 14 735 0
	cmp	r2, #9
	beq	.L2525
.LVL2413:
.L2517:
.LBB8008:
.LBB8009:
	.loc 1 50 0
	mov	r0, r1
.LVL2414:
	bl	getHWASID
.LVL2415:
.LBB8010:
.LBB8011:
.LBB8012:
.LBB8013:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LVL2416:
.LBE8013:
.LBE8012:
.LBB8014:
.LBB8015:
	.loc 3 51 0
	ldr	r3, .L2527
.LBE8015:
.LBE8014:
.LBB8016:
.LBB8017:
	.loc 4 136 0
	bic	r3, r3, #8128
	bic	r3, r3, #63
	orr	r3, r3, #24
	.loc 4 135 0
@ 135 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r3, c2, c0, 0
@ 0 "" 2
.LBE8017:
.LBE8016:
.LBB8018:
.LBB8019:
	.loc 2 29 0
@ 29 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL2417:
.LBE8019:
.LBE8018:
.LBB8020:
.LBB8021:
.LBB8022:
.LBB8023:
	.loc 4 123 0
@ 123 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r0, c13, c0, 1
@ 0 "" 2
.LBB8024:
.LBB8025:
	.loc 2 29 0
@ 29 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL2418:
.LBE8025:
.LBE8024:
.LBE8023:
.LBE8022:
.LBE8021:
.LBE8020:
.LBB8026:
.LBB8027:
	.loc 3 51 0
	add	r0, r4, #536870912
.LVL2419:
.LBE8027:
.LBE8026:
.LBB8028:
.LBB8029:
	.loc 4 136 0
	bic	r0, r0, #8128
.LVL2420:
	bic	r0, r0, #63
	orr	r0, r0, #24
	.loc 4 135 0
@ 135 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r0, c2, c0, 0
@ 0 "" 2
.LBE8029:
.LBE8028:
.LBB8030:
.LBB8031:
	.loc 2 29 0
@ 29 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LBE8031:
.LBE8030:
.LBE8011:
.LBE8010:
.LBE8009:
.LBE8008:
	.loc 14 743 0
	mov	r0, #1
	ldmfd	sp!, {r4, pc}
.LVL2421:
.L2525:
.LBB8032:
.LBB8033:
	.loc 28 2176 0 discriminator 1
	and	r2, r3, #15
	cmp	r2, #9
	bne	.L2526
.LVL2422:
.LBE8033:
.LBE8032:
	.loc 14 735 0
	tst	r3, #16
	beq	.L2517
.LVL2423:
.LBB8035:
.LBB8036:
	.loc 28 2165 0
	bic	r3, r3, #16320
.LVL2424:
	bic	r3, r3, #63
.LBE8036:
.LBE8035:
	.loc 14 736 0
	cmp	r0, r3
	bne	.L2517
	.loc 14 738 0
	mov	r0, #0
.LVL2425:
	.loc 14 744 0
	ldmfd	sp!, {r4, pc}
.LVL2426:
.L2526:
.LBB8037:
.LBB8034:
	bl	cap_page_directory_cap_get_capPDIsMapped.isra.135.part.136
.LVL2427:
.L2528:
	.align	2
.L2527:
	.word	.LANCHOR0+536870912
.LBE8034:
.LBE8037:
	.cfi_endproc
.LFE342:
	.size	setVMRootForFlush, .-setVMRootForFlush
	.align	2
	.global	flushPage
	.type	flushPage, %function
flushPage:
.LFB350:
	.loc 14 882 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2428:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 14 882 0
	mov	r5, r2
	mov	r4, r3
.LBB8054:
.LBB8055:
	.loc 37 113 0
	cmp	r0, #3
	ldrls	pc, [pc, r0, asl #2]
	b	.L2530
.L2532:
	.word	.L2531
	.word	.L2533
	.word	.L2541
	.word	.L2535
.L2541:
	movw	r3, #65535
.LVL2429:
	movt	r3, 15
.L2534:
.LBE8055:
.LBE8054:
	.loc 14 887 0
	tst	r3, r4
	bne	.L2546
	.loc 14 890 0
	mov	r0, r1
.LVL2430:
	mov	r1, r5
.LVL2431:
	bl	setVMRootForFlush
.LVL2432:
	mov	r6, r0
.LVL2433:
	.loc 14 891 0
	mov	r0, r5
.LVL2434:
	bl	loadHWASID
.LVL2435:
.LBB8059:
.LBB8060:
	.loc 28 827 0
	tst	r0, #3
	bne	.L2547
.LVL2436:
.LBE8060:
.LBE8059:
	.loc 14 893 0
	tst	r0, #8388608
	ldmeqfd	sp!, {r4, r5, r6, pc}
.LVL2437:
.LBB8062:
.LBB8063:
.LBB8064:
.LBB8065:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LBE8065:
.LBE8064:
.LBE8063:
.LBE8062:
	.loc 14 894 0
	bic	r4, r4, #4080
.LVL2438:
	bic	r4, r4, #15
	.loc 14 897 0
	orr	r4, r4, r0, lsr #24
.LBB8071:
.LBB8070:
	.loc 4 174 0
@ 174 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r4, c8, c7, 1
@ 0 "" 2
.LBB8066:
.LBB8067:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LBE8067:
.LBE8066:
.LBB8068:
.LBB8069:
	.loc 2 29 0
@ 29 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LBE8069:
.LBE8068:
.LBE8070:
.LBE8071:
	.loc 14 899 0
	cmp	r6, #0
	ldmeqfd	sp!, {r4, r5, r6, pc}
	.loc 14 900 0
	movw	r3, #:lower16:ksCurThread
	.loc 14 903 0
	ldmfd	sp!, {r4, r5, r6, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL2439:
	.loc 14 900 0
	movt	r3, #:upper16:ksCurThread
	ldr	r0, [r3]
.LVL2440:
	b	setVMRoot
.LVL2441:
.L2533:
	.cfi_restore_state
.LBB8072:
.LBB8058:
	.loc 37 113 0
	movw	r3, #65535
.LVL2442:
	b	.L2534
.LVL2443:
.L2531:
	movw	r3, #4095
.LVL2444:
	b	.L2534
.LVL2445:
.L2535:
	mvn	r3, #-16777216
.LVL2446:
	b	.L2534
.LVL2447:
.L2530:
.LBB8056:
.LBB8057:
	.loc 37 127 0
	movw	r0, #:lower16:.LC26
.LVL2448:
	movw	r1, #:lower16:.LC27
.LVL2449:
	movt	r0, #:upper16:.LC26
	movt	r1, #:upper16:.LC27
	mov	r2, #127
.LVL2450:
	ldr	r3, .L2548
.LVL2451:
	bl	_fail
.LVL2452:
.L2547:
.LBE8057:
.LBE8056:
.LBE8058:
.LBE8072:
.LBB8073:
.LBB8061:
	bl	pde_pde_invalid_get_stored_asid_valid.part.125
.LVL2453:
.L2546:
.LBE8061:
.LBE8073:
	.loc 14 887 0 discriminator 1
	movw	r0, #:lower16:.LC130
.LVL2454:
	movw	r1, #:lower16:.LC23
.LVL2455:
	movt	r0, #:upper16:.LC130
	movt	r1, #:upper16:.LC23
	movw	r2, #887
.LVL2456:
	ldr	r3, .L2548+4
	bl	_assert_fail
.LVL2457:
.L2549:
	.align	2
.L2548:
	.word	.LANCHOR4+72
	.word	.LANCHOR4+3872
	.cfi_endproc
.LFE350:
	.size	flushPage, .-flushPage
	.align	2
	.global	flushTable
	.type	flushTable, %function
flushTable:
.LFB351:
	.loc 14 907 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2458:
	.loc 14 911 0
	ubfx	r2, r2, #0, #20
.LVL2459:
	.loc 14 907 0
	stmfd	sp!, {r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 14 911 0
	cmp	r2, #0
	bne	.L2560
	mov	r4, r1
	.loc 14 914 0
	bl	setVMRootForFlush
.LVL2460:
	mov	r5, r0
.LVL2461:
	.loc 14 915 0
	mov	r0, r4
.LVL2462:
	bl	loadHWASID
.LVL2463:
.LBB8100:
.LBB8101:
	.loc 28 827 0
	tst	r0, #3
	bne	.L2561
.LVL2464:
.LBE8101:
.LBE8100:
	.loc 14 917 0
	tst	r0, #8388608
	ldmeqfd	sp!, {r3, r4, r5, pc}
.LVL2465:
.LBB8103:
.LBB8104:
.LBB8105:
.LBB8106:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LBE8106:
.LBE8105:
.LBE8104:
.LBE8103:
.LBB8112:
.LBB8113:
	.loc 28 816 0
	mov	r0, r0, lsr #24
.LVL2466:
.LBE8113:
.LBE8112:
.LBB8114:
.LBB8111:
	.loc 4 165 0
@ 165 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r0, c8, c7, 2
@ 0 "" 2
.LBB8107:
.LBB8108:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LBE8108:
.LBE8107:
.LBB8109:
.LBB8110:
	.loc 2 29 0
@ 29 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LBE8110:
.LBE8109:
.LBE8111:
.LBE8114:
	.loc 14 919 0
	cmp	r5, #0
	ldmeqfd	sp!, {r3, r4, r5, pc}
	.loc 14 920 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r0, [r3]
.LVL2467:
	.loc 14 923 0
	ldmfd	sp!, {r3, r4, r5, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL2468:
	.loc 14 920 0
	b	setVMRoot
.LVL2469:
.L2561:
	.cfi_restore_state
.LBB8115:
.LBB8102:
	bl	pde_pde_invalid_get_stored_asid_valid.part.125
.LVL2470:
.L2560:
.LBE8102:
.LBE8115:
.LBB8116:
.LBB8117:
	.loc 14 911 0
	movw	r0, #:lower16:.LC131
.LVL2471:
	movw	r1, #:lower16:.LC23
.LVL2472:
	movt	r0, #:upper16:.LC131
	movt	r1, #:upper16:.LC23
	movw	r2, #911
	ldr	r3, .L2562
.LVL2473:
	bl	_assert_fail
.LVL2474:
.L2563:
	.align	2
.L2562:
	.word	.LANCHOR4+3884
.LBE8117:
.LBE8116:
	.cfi_endproc
.LFE351:
	.size	flushTable, .-flushTable
	.align	2
	.global	unmapPageTable
	.type	unmapPageTable, %function
unmapPageTable:
.LFB338:
	.loc 14 559 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2475:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 14 559 0
	mov	r5, r2
	mov	r6, r0
	mov	r4, r1
	.loc 14 563 0
	bl	pageTableMapped
.LVL2476:
	.loc 14 565 0
	subs	r2, r0, #0
	ldmeqfd	sp!, {r4, r5, r6, pc}
.LVL2477:
	.loc 14 566 0
	mov	r1, r4, lsr #20
.LVL2478:
	.loc 14 569 0
	mov	r3, #0
	str	r3, [r2, r1, asl #2]
	.loc 14 567 0
	add	r2, r2, r1, asl #2
.LVL2479:
.LBB8124:
.LBB8125:
	.loc 4 212 0
@ 212 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c7, c11, 1
@ 0 "" 2
.LBB8126:
.LBB8127:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE8127:
.LBE8126:
.LBE8125:
.LBE8124:
	.loc 14 571 0
	mov	r1, r6
.LVL2480:
	mov	r2, r4
.LVL2481:
	mov	r3, r5
	.loc 14 573 0
	ldmfd	sp!, {r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL2482:
	.loc 14 571 0
	b	flushTable
.LVL2483:
	.cfi_endproc
.LFE338:
	.size	unmapPageTable, .-unmapPageTable
	.align	2
	.global	lookupSlotForCNodeOp
	.type	lookupSlotForCNodeOp, %function
lookupSlotForCNodeOp:
.LFB514:
	.loc 48 75 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2484:
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	sub	sp, sp, #36
	.cfi_def_cfa_offset 48
	.loc 48 75 0
	add	ip, sp, #8
	mov	r5, r1
	mov	r4, r0
	stmia	ip, {r2, r3}
	mov	r3, r2
.LVL2485:
.LBB8132:
.LBB8133:
	.loc 28 1035 0
	and	r1, r3, #14
.LVL2486:
.LBE8133:
.LBE8132:
	.loc 48 75 0
	ldr	r2, [sp, #52]
.LVL2487:
.LBB8135:
.LBB8134:
	.loc 28 1035 0
	cmp	r1, #14
	.loc 28 1037 0
	uxtbeq	r3, r3
.LVL2488:
	.loc 28 1036 0
	andne	r3, r3, #15
.LBE8134:
.LBE8135:
	.loc 48 81 0
	cmp	r3, #10
	bne	.L2577
	.loc 48 89 0
	sub	r3, r2, #1
	cmp	r3, #31
	bhi	.L2578
	.loc 48 97 0
	str	r2, [sp]
	add	r0, sp, #20
.LVL2489:
	ldmia	ip, {r1, r2}
	ldr	r3, [sp, #48]
	bl	resolveAddressBits
.LVL2490:
	.loc 48 98 0
	ldr	r2, [sp, #20]
	.loc 48 97 0
	ldr	r3, [sp, #28]
.LVL2491:
	.loc 48 98 0
	cmp	r2, #0
	bne	.L2579
	.loc 48 106 0
	cmp	r3, #0
	bne	.L2580
	.loc 48 115 0
	ldr	r2, [sp, #24]
.LVL2492:
	.loc 48 117 0
	str	r3, [r4]
	str	r2, [r4, #4]
.LVL2493:
.L2567:
	.loc 48 118 0
	mov	r0, r4
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.LVL2494:
.L2577:
	.cfi_restore_state
	.loc 48 82 0
	movw	r2, #:lower16:current_syscall_error
	.loc 48 84 0
	movw	r3, #:lower16:current_lookup_fault
	mov	r1, #0
	.loc 48 82 0
	movt	r2, #:upper16:current_syscall_error
	.loc 48 84 0
	movt	r3, #:upper16:current_lookup_fault
	.loc 48 82 0
	mov	ip, #6
.LVL2495:
	.loc 48 86 0
	mov	r0, #3
.LVL2496:
	.loc 48 83 0
	str	r5, [r2, #20]
.LVL2497:
	.loc 48 86 0
	stmia	r4, {r0, r1}
	.loc 48 118 0
	mov	r0, r4
	.loc 48 82 0
	str	ip, [r2, #24]
	.loc 48 84 0
	str	r1, [r3]
	str	r1, [r3, #4]
.LVL2498:
	.loc 48 118 0
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.LVL2499:
.L2578:
	.cfi_restore_state
	.loc 48 90 0
	movw	r3, #:lower16:current_syscall_error
	mov	lr, #4
	movt	r3, #:upper16:current_syscall_error
	.loc 48 91 0
	mov	ip, #1
.LVL2500:
	.loc 48 92 0
	mov	r0, #32
.LVL2501:
	.loc 48 94 0
	mov	r1, #3
	mov	r2, #0
	.loc 48 90 0
	str	lr, [r3, #24]
	.loc 48 91 0
	str	ip, [r3, #8]
	.loc 48 92 0
	str	r0, [r3, #12]
.LVL2502:
	.loc 48 94 0
	stmia	r4, {r1, r2}
	b	.L2567
.LVL2503:
.L2579:
	.loc 48 99 0
	movw	r3, #:lower16:current_syscall_error
.LVL2504:
	mov	r0, #6
	movt	r3, #:upper16:current_syscall_error
	.loc 48 103 0
	mov	r1, #3
	mov	r2, #0
	.loc 48 100 0
	str	r5, [r3, #20]
.LVL2505:
	.loc 48 99 0
	str	r0, [r3, #24]
	.loc 48 103 0
	stmia	r4, {r1, r2}
	b	.L2567
.LVL2506:
.L2580:
	.loc 48 107 0
	movw	r2, #:lower16:current_syscall_error
.LBB8136:
.LBB8137:
	.loc 28 2633 0
	bics	r1, r3, #63
.LBE8137:
.LBE8136:
	.loc 48 107 0
	movt	r2, #:upper16:current_syscall_error
	mov	r0, #6
	.loc 48 108 0
	str	r5, [r2, #20]
.LVL2507:
	.loc 48 107 0
	str	r0, [r2, #24]
.LBB8141:
.LBB8138:
	.loc 28 2633 0
	bne	.L2581
.LVL2508:
	.loc 28 2634 0
	mov	r3, r3, asl #2
.LVL2509:
.LBE8138:
.LBE8141:
	.loc 48 109 0
	movw	r2, #:lower16:current_lookup_fault
	movt	r2, #:upper16:current_lookup_fault
	.loc 48 112 0
	str	r1, [r4, #4]
.LBB8142:
.LBB8139:
	.loc 28 2637 0
	orr	r3, r3, #2
.LVL2510:
.LBE8139:
.LBE8142:
	.loc 48 112 0
	mov	r0, #3
	.loc 48 109 0
	str	r3, [r2]
	str	r1, [r2, #4]
.LVL2511:
	.loc 48 112 0
	str	r0, [r4]
	b	.L2567
.LVL2512:
.L2581:
.LBB8143:
.LBB8140:
	.loc 28 2633 0
	movw	r0, #:lower16:.LC34
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC34
	movt	r1, #:upper16:.LC30
	movw	r2, #2633
	ldr	r3, .L2582
.LVL2513:
	bl	_assert_fail
.LVL2514:
.L2583:
	.align	2
.L2582:
	.word	.LANCHOR4+2976
.LBE8140:
.LBE8143:
	.cfi_endproc
.LFE514:
	.size	lookupSlotForCNodeOp, .-lookupSlotForCNodeOp
	.align	2
	.global	lookupSourceSlot
	.type	lookupSourceSlot, %function
lookupSourceSlot:
.LFB515:
	.loc 48 122 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2515:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	.loc 48 122 0
	ldr	lr, [sp, #24]
	add	ip, sp, #8
	mov	r4, r0
	.loc 48 123 0
	str	r3, [sp]
	.loc 48 122 0
	stmia	ip, {r1, r2}
	.loc 48 123 0
	mov	r1, #1
	ldmia	ip, {r2, r3}
.LVL2516:
	str	lr, [sp, #4]
	bl	lookupSlotForCNodeOp
.LVL2517:
	.loc 48 124 0
	mov	r0, r4
	add	sp, sp, #16
	.cfi_def_cfa_offset 8
	@ sp needed
	ldmfd	sp!, {r4, pc}
	.cfi_endproc
.LFE515:
	.size	lookupSourceSlot, .-lookupSourceSlot
	.align	2
	.global	lookupTargetSlot
	.type	lookupTargetSlot, %function
lookupTargetSlot:
.LFB516:
	.loc 48 128 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2518:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	.loc 48 128 0
	ldr	lr, [sp, #24]
	add	ip, sp, #8
	mov	r4, r0
	.loc 48 129 0
	str	r3, [sp]
	.loc 48 128 0
	stmia	ip, {r1, r2}
	.loc 48 129 0
	mov	r1, #0
	ldmia	ip, {r2, r3}
.LVL2519:
	str	lr, [sp, #4]
	bl	lookupSlotForCNodeOp
.LVL2520:
	.loc 48 130 0
	mov	r0, r4
	add	sp, sp, #16
	.cfi_def_cfa_offset 8
	@ sp needed
	ldmfd	sp!, {r4, pc}
	.cfi_endproc
.LFE516:
	.size	lookupTargetSlot, .-lookupTargetSlot
	.align	2
	.global	getReceiveSlots
	.type	getReceiveSlots, %function
getReceiveSlots:
.LFB587:
	.loc 27 955 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2521:
	.loc 27 963 0
	subs	r3, r1, #0
	beq	.L2597
.LVL2522:
	.loc 27 955 0
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	sub	sp, sp, #52
	.cfi_def_cfa_offset 64
	mov	r1, r0
.LVL2523:
	.loc 27 970 0
	ldr	r2, [r3, #500]
	add	r0, sp, #36
.LVL2524:
.LBB8144:
.LBB8145:
.LBB8146:
.LBB8147:
	.loc 29 65 0
	ldr	r5, [r3, #504]
.LVL2525:
	.loc 29 66 0
	ldr	r4, [r3, #508]
.LVL2526:
.LBE8147:
.LBE8146:
.LBE8145:
.LBE8144:
	.loc 27 970 0
	bl	lookupCap
.LVL2527:
	.loc 27 971 0
	ldr	ip, [sp, #36]
	cmp	ip, #0
	bne	.L2591
	.loc 27 974 0
	add	r3, sp, #48
	add	r2, sp, #20
	ldmdb	r3, {r0, r1}
	add	r3, sp, #28
.LBB8148:
.LBB8149:
	.loc 48 129 0
	str	r5, [sp]
	str	r4, [sp, #4]
.LBE8149:
.LBE8148:
	.loc 27 974 0
	stmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.LVL2528:
.LBB8151:
.LBB8150:
	.loc 48 129 0
	mov	r1, ip
	ldmia	r3, {r2, r3}
	add	r0, sp, #12
	bl	lookupSlotForCNodeOp
.LVL2529:
.LBE8150:
.LBE8151:
	.loc 27 977 0
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L2591
	.loc 27 980 0
	ldr	r0, [sp, #16]
.LVL2530:
	ldr	r3, [r0]
.LVL2531:
.LBB8152:
.LBB8153:
	.loc 28 1035 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 28 1037 0
	uxtbeq	r3, r3
.LVL2532:
	.loc 28 1036 0
	andne	r3, r3, #15
.LBE8153:
.LBE8152:
	.loc 27 982 0
	cmp	r3, #0
	bne	.L2591
	.loc 27 987 0
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.LVL2533:
.L2591:
	.cfi_restore_state
	.loc 27 964 0
	mov	r0, #0
	.loc 27 987 0
	add	sp, sp, #52
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.LVL2534:
.L2597:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 14
	.loc 27 964 0
	mov	r0, #0
.LVL2535:
	.loc 27 987 0
	bx	lr
	.cfi_endproc
.LFE587:
	.size	getReceiveSlots, .-getReceiveSlots
	.align	2
	.global	lookupPivotSlot
	.type	lookupPivotSlot, %function
lookupPivotSlot:
.LFB517:
	.loc 48 134 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2536:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	.loc 48 134 0
	ldr	lr, [sp, #24]
	add	ip, sp, #8
	mov	r4, r0
	.loc 48 135 0
	str	r3, [sp]
	.loc 48 134 0
	stmia	ip, {r1, r2}
	.loc 48 135 0
	mov	r1, #1
	ldmia	ip, {r2, r3}
.LVL2537:
	str	lr, [sp, #4]
	bl	lookupSlotForCNodeOp
.LVL2538:
	.loc 48 136 0
	mov	r0, r4
	add	sp, sp, #16
	.cfi_def_cfa_offset 8
	@ sp needed
	ldmfd	sp!, {r4, pc}
	.cfi_endproc
.LFE517:
	.size	lookupPivotSlot, .-lookupPivotSlot
	.section	.boot.text
	.align	2
	.global	write_slot
	.type	write_slot, %function
write_slot:
.LFB493:
	.loc 25 120 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2539:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 25 120 0
	mov	r3, r0
	stmia	sp, {r1, r2}
	.loc 25 123 0
	mov	lr, #0
	.loc 25 121 0
	ldmia	sp, {r0, r1}
.LVL2540:
.LBB8160:
.LBB8161:
	.loc 28 519 0
	mov	r1, #3
.LBE8161:
.LBE8160:
	.loc 25 123 0
	str	lr, [r3, #8]
.LBB8163:
.LBB8162:
	.loc 28 519 0
	str	r1, [r3, #12]
.LBE8162:
.LBE8163:
	.loc 25 121 0
	stmia	r3, {r0, r2}
.LVL2541:
	.loc 25 126 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE493:
	.size	write_slot, .-write_slot
	.align	2
	.global	create_domain_cap
	.type	create_domain_cap, %function
create_domain_cap:
.LFB496:
	.loc 25 190 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2542:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
.LBB8210:
.LBB8211:
	.loc 28 2340 0
	mov	r2, #62
.LBE8211:
.LBE8210:
	.loc 25 190 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	mov	r3, r0
.LBB8214:
.LBB8212:
	.loc 28 2340 0
	str	r2, [sp, #8]
.LBE8212:
.LBE8214:
.LBB8215:
.LBB8216:
.LBB8217:
.LBB8218:
	.loc 28 1035 0
	and	r2, r3, #14
	cmp	r2, #14
.LBE8218:
.LBE8217:
.LBE8216:
.LBE8215:
	.loc 25 190 0
	stmia	sp, {r0, r1}
.LBB8275:
.LBB8213:
	.loc 28 2340 0
	mov	r1, #0
	ldr	r0, [sp, #4]
	str	r1, [sp, #12]
.LVL2543:
.LBE8213:
.LBE8275:
.LBB8276:
.LBB8273:
.LBB8221:
.LBB8219:
	.loc 28 1035 0
	beq	.L2603
	.loc 28 1036 0
	and	r2, r3, #15
.LVL2544:
.LBE8219:
.LBE8221:
	.loc 39 317 0
	sub	r1, r2, #2
	cmp	r1, #12
	ldrls	pc, [pc, r1, asl #2]
	b	.L2604
.L2606:
	.word	.L2605
	.word	.L2604
	.word	.L2607
	.word	.L2604
	.word	.L2608
	.word	.L2604
	.word	.L2649
	.word	.L2604
	.word	.L2610
	.word	.L2604
	.word	.L2611
	.word	.L2604
	.word	.L2649
.LVL2545:
.L2603:
.LBB8222:
.LBB8220:
	.loc 28 1037 0
	uxtb	r2, r3
.LVL2546:
.LBE8220:
.LBE8222:
	.loc 39 317 0
	sub	r1, r2, #2
	cmp	r1, #60
	ldrls	pc, [pc, r1, asl #2]
	b	.L2612
.L2614:
	.word	.L2613
	.word	.L2612
	.word	.L2615
	.word	.L2612
	.word	.L2616
	.word	.L2612
	.word	.L2649
	.word	.L2612
	.word	.L2617
	.word	.L2612
	.word	.L2618
	.word	.L2612
	.word	.L2649
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2649
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2619
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2612
	.word	.L2649
.L2649:
.LBB8223:
.LBB8224:
	.loc 38 302 0
	mov	r0, #176
.LVL2547:
.L2609:
.LBE8224:
.LBE8223:
.LBE8273:
.LBE8276:
	.loc 25 202 0
	add	r3, sp, #16
	ldmdb	r3, {r1, r2}
	bl	write_slot
.LVL2548:
	.loc 25 203 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 4
.LVL2549:
	@ sp needed
	ldr	pc, [sp], #4
.LVL2550:
.L2617:
	.cfi_restore_state
	and	r2, r3, #15
.LVL2551:
.L2610:
.LBB8277:
.LBB8274:
.LBB8244:
.LBB8245:
	.loc 28 1577 0
	cmp	r2, #10
	.loc 28 1580 0
	biceq	r3, r3, #31
.LVL2552:
	addeq	r0, r3, #176
.LVL2553:
	.loc 28 1577 0
	beq	.L2609
	bl	cap_cnode_cap_get_capCNodePtr.isra.78.part.79
.LVL2554:
.L2618:
	and	r2, r3, #15
.LVL2555:
.L2611:
.LBE8245:
.LBE8244:
.LBB8246:
.LBB8247:
	.loc 28 1608 0
	cmp	r2, #12
.LBE8247:
.LBE8246:
	.loc 39 331 0
	biceq	r3, r3, #508
.LVL2556:
	biceq	r3, r3, #3
	addeq	r0, r3, #176
.LVL2557:
.LBB8249:
.LBB8248:
	.loc 28 1608 0
	beq	.L2609
	bl	cap_thread_cap_get_capTCBPtr.isra.59.part.60
.LVL2558:
.L2613:
	and	r2, r3, #15
.LVL2559:
.L2605:
.LBE8248:
.LBE8249:
.LBB8250:
.LBB8251:
	.loc 28 1142 0
	cmp	r2, #2
	bne	.L2653
.LVL2560:
.L2644:
.LBE8251:
.LBE8250:
.LBB8253:
.LBB8241:
.LBB8225:
.LBB8226:
	.loc 28 1970 0
	bic	r3, r3, #15
.LVL2561:
	add	r0, r3, #176
.LVL2562:
	b	.L2609
.LVL2563:
.L2615:
	and	r2, r3, #15
.LVL2564:
.L2607:
.LBE8226:
.LBE8225:
.LBE8241:
.LBE8253:
.LBB8254:
.LBB8255:
	.loc 28 1185 0
	cmp	r2, #4
	.loc 28 1188 0
	biceq	r3, r0, #15
.LVL2565:
	addeq	r0, r3, #176
.LVL2566:
	.loc 28 1185 0
	beq	.L2609
	bl	cap_endpoint_cap_get_capEPPtr.part.77
.LVL2567:
.L2616:
	and	r2, r3, #15
.LVL2568:
.L2608:
.LBE8255:
.LBE8254:
.LBB8256:
.LBB8257:
	.loc 28 1407 0
	cmp	r2, #6
	beq	.L2644
	bl	cap_notification_cap_get_capNtfnPtr.isra.68.part.69
.LVL2569:
.L2604:
.LBE8257:
.LBE8256:
.LBB8258:
.LBB8242:
	.loc 38 302 0
	sub	r1, r2, #1
	cmp	r1, #8
	ldrls	pc, [pc, r1, asl #2]
	b	.L2649
.L2628:
	.word	.L2627
	.word	.L2649
	.word	.L2627
	.word	.L2649
	.word	.L2629
	.word	.L2649
	.word	.L2630
	.word	.L2649
	.word	.L2631
.LVL2570:
.L2619:
.LBE8242:
.LBE8258:
.LBB8259:
.LBB8260:
.LBB8261:
.LBB8262:
.LBB8263:
.LBB8264:
	.loc 28 2318 0
	cmp	r2, #46
	bne	.L2654
	.loc 28 2321 0
	ubfx	r3, r3, #8, #6
.LVL2571:
.LBE8264:
.LBE8263:
	.loc 39 97 0
	cmp	r3, #32
	.loc 39 100 0
	andne	r3, r3, #31
.LVL2572:
	mvnne	r2, #0
.LVL2573:
	addne	r3, r3, #1
	.loc 39 97 0
	mvneq	r3, #31
.LVL2574:
	movne	r3, r2, asl r3
.LBE8262:
.LBE8261:
	.loc 39 114 0
	and	r3, r3, r0
	add	r0, r3, #176
.LVL2575:
	b	.L2609
.LVL2576:
.L2635:
	and	r2, r3, #15
.LVL2577:
.L2631:
.LBE8260:
.LBE8259:
.LBB8270:
.LBB8243:
.LBB8228:
.LBB8229:
	.loc 28 2162 0
	cmp	r2, #9
	.loc 28 2165 0
	biceq	r3, r3, #16320
.LVL2578:
	biceq	r3, r3, #63
	addeq	r0, r3, #176
.LVL2579:
	.loc 28 2162 0
	beq	.L2609
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.93.part.94
.LVL2580:
.L2634:
	and	r2, r3, #15
.LVL2581:
.L2630:
.LBE8229:
.LBE8228:
.LBB8230:
.LBB8231:
	.loc 28 2098 0
	cmp	r2, #7
	.loc 28 2101 0
	biceq	r3, r3, #1020
.LVL2582:
	biceq	r3, r3, #3
	addeq	r0, r3, #176
.LVL2583:
	.loc 28 2098 0
	beq	.L2609
	bl	cap_page_table_cap_get_capPTBasePtr.isra.91.part.92
.LVL2584:
.L2633:
	and	r2, r3, #15
.LVL2585:
.L2629:
.LBE8231:
.LBE8230:
.LBB8232:
.LBB8227:
	.loc 28 1967 0
	cmp	r2, #5
	beq	.L2644
	bl	cap_asid_pool_cap_get_capASIDPool.isra.95.part.96
.LVL2586:
.L2627:
.LBE8227:
.LBE8232:
.LBB8233:
.LBB8234:
	.loc 38 207 0
	and	r1, r2, #253
	cmp	r1, #1
	bne	.L2655
	.loc 38 210 0
	cmp	r2, #1
	beq	.L2638
	cmp	r2, #3
	bne	.L2649
.LVL2587:
.LBB8235:
.LBB8236:
	.loc 28 1919 0
	and	r2, r3, #15
.LVL2588:
	cmp	r2, #3
	.loc 28 1922 0
	biceq	r3, r3, #-268435441
.LVL2589:
	biceq	r3, r3, #264241152
	moveq	r3, r3, asl #10
	addeq	r0, r3, #176
.LVL2590:
	.loc 28 1919 0
	beq	.L2609
	bl	cap_frame_cap_get_capFBasePtr.isra.87.part.88
.LVL2591:
.L2612:
.LBE8236:
.LBE8235:
.LBE8234:
.LBE8233:
	.loc 38 302 0
	sub	r1, r2, #1
	cmp	r1, #8
	ldrls	pc, [pc, r1, asl #2]
	b	.L2649
.L2632:
	.word	.L2627
	.word	.L2649
	.word	.L2627
	.word	.L2649
	.word	.L2633
	.word	.L2649
	.word	.L2634
	.word	.L2649
	.word	.L2635
.LVL2592:
.L2638:
.LBB8240:
.LBB8239:
.LBB8237:
.LBB8238:
	.loc 28 1755 0
	and	r2, r3, #15
.LVL2593:
	cmp	r2, #1
	.loc 28 1758 0
	biceq	r3, r3, #-16777216
.LVL2594:
	biceq	r3, r3, #15
	moveq	r3, r3, asl #8
	addeq	r0, r3, #176
.LVL2595:
	.loc 28 1755 0
	beq	.L2609
	bl	cap_small_frame_cap_get_capFBasePtr.isra.85.part.86
.LVL2596:
.L2655:
.LBE8238:
.LBE8237:
	bl	generic_frame_cap_get_capFBasePtr.isra.89.part.90
.LVL2597:
.L2653:
.LBE8239:
.LBE8240:
.LBE8243:
.LBE8270:
.LBB8271:
.LBB8252:
	bl	cap_untyped_cap_get_capPtr.isra.75.part.76
.LVL2598:
.L2654:
.LBE8252:
.LBE8271:
.LBB8272:
.LBB8269:
.LBB8268:
.LBB8267:
.LBB8266:
.LBB8265:
	bl	cap_zombie_cap_get_capZombieType.isra.80.part.81
.LVL2599:
.LBE8265:
.LBE8266:
.LBE8267:
.LBE8268:
.LBE8269:
.LBE8272:
.LBE8274:
.LBE8277:
	.cfi_endproc
.LFE496:
	.size	create_domain_cap, .-create_domain_cap
	.text
	.align	2
	.global	cteMove
	.type	cteMove, %function
cteMove:
.LFB568:
	.loc 27 465 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2600:
	ldr	ip, [r3]
.LVL2601:
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 27 465 0
	stmia	sp, {r0, r1}
.LBB8294:
.LBB8295:
	.loc 28 1035 0
	and	r1, ip, #14
	cmp	r1, #14
	.loc 28 1037 0
	uxtbeq	ip, ip
.LVL2602:
	.loc 28 1036 0
	andne	ip, ip, #15
.LBE8295:
.LBE8294:
	.loc 27 470 0
	cmp	ip, #0
	bne	.L2676
.LVL2603:
.LBB8296:
.LBB8297:
	.loc 28 450 0
	ldr	r1, [r3, #12]
.LBE8297:
.LBE8296:
	.loc 27 472 0
	bics	r1, r1, #7
	bne	.L2660
.LVL2604:
.LBB8298:
.LBB8299:
	.loc 28 525 0 discriminator 2
	ldr	r1, [r3, #8]
.LBE8299:
.LBE8298:
	.loc 27 472 0 discriminator 2
	bics	r1, r1, #7
	bne	.L2660
	.loc 27 475 0
	ldr	r5, [r2, #8]
.LVL2605:
	ldr	lr, [r2, #12]
.LVL2606:
	.loc 27 476 0
	ldmia	sp, {r0, r1}
	.loc 27 482 0
	bics	r4, r5, #7
	.loc 27 476 0
	stmia	r3, {r0, r1}
.LVL2607:
	.loc 27 477 0
	str	ip, [r2]
.LVL2608:
	str	ip, [r2, #4]
	.loc 27 478 0
	str	r5, [r3, #8]
	str	lr, [r3, #12]
.LVL2609:
	.loc 27 479 0
	str	ip, [r2, #8]
	str	ip, [r2, #12]
.LVL2610:
	.loc 27 482 0
	bne	.L2677
.LVL2611:
	.loc 27 488 0
	bics	lr, lr, #7
.LVL2612:
	bne	.L2678
	.loc 27 492 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.LVL2613:
.L2678:
	.cfi_restore_state
.LBB8300:
.LBB8301:
	.loc 28 545 0
	tst	r3, #7
.LVL2614:
	bne	.L2673
	bic	r3, r3, #7
.LVL2615:
.L2667:
	.loc 28 546 0
	ldr	r2, [lr, #8]
	and	r2, r2, #7
	.loc 28 547 0
	orr	r3, r2, r3
	str	r3, [lr, #8]
.LBE8301:
.LBE8300:
	.loc 27 492 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.LVL2616:
.L2677:
	.cfi_restore_state
.LBB8303:
.LBB8304:
	.loc 28 461 0
	tst	r3, #7
	bne	.L2679
	.loc 28 462 0
	ldr	r2, [r4, #12]
.LVL2617:
	.loc 28 463 0
	bic	r3, r3, #7
.LVL2618:
.LBE8304:
.LBE8303:
	.loc 27 488 0
	bics	lr, lr, #7
.LVL2619:
.LBB8307:
.LBB8305:
	.loc 28 462 0
	and	r2, r2, #7
	.loc 28 463 0
	orr	r2, r2, r3
	str	r2, [r4, #12]
.LBE8305:
.LBE8307:
	.loc 27 488 0
	bne	.L2667
	.loc 27 492 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.LVL2620:
.L2660:
	.cfi_restore_state
	.loc 27 472 0 discriminator 3
	movw	r0, #:lower16:.LC103
	movw	r1, #:lower16:.LC102
	movt	r0, #:upper16:.LC103
	movt	r1, #:upper16:.LC102
	movw	r2, #473
.LVL2621:
	ldr	r3, .L2680
.LVL2622:
	bl	_assert_fail
.LVL2623:
.L2676:
	.loc 27 470 0 discriminator 1
	movw	r0, #:lower16:.LC101
	movw	r1, #:lower16:.LC102
	movt	r0, #:upper16:.LC101
	movt	r1, #:upper16:.LC102
	movw	r2, #470
.LVL2624:
	ldr	r3, .L2680
.LVL2625:
	bl	_assert_fail
.LVL2626:
.L2673:
.LBB8308:
.LBB8302:
	bl	mdb_node_ptr_set_mdbPrev.isra.202.part.203
.LVL2627:
.L2679:
.LBE8302:
.LBE8308:
.LBB8309:
.LBB8306:
	bl	mdb_node_ptr_set_mdbNext.isra.200.part.201
.LVL2628:
.L2681:
	.align	2
.L2680:
	.word	.LANCHOR4+3896
.LBE8306:
.LBE8309:
	.cfi_endproc
.LFE568:
	.size	cteMove, .-cteMove
	.align	2
	.global	invokeCNodeMove
	.type	invokeCNodeMove, %function
invokeCNodeMove:
.LFB563:
	.loc 27 336 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2629:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 27 336 0
	stmia	sp, {r0, r1}
	.loc 27 337 0
	ldmia	sp, {r0, r1}
	bl	cteMove
.LVL2630:
	.loc 27 340 0
	mov	r0, #0
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE563:
	.size	invokeCNodeMove, .-invokeCNodeMove
	.align	2
	.global	invokeCNodeRotate
	.type	invokeCNodeRotate, %function
invokeCNodeRotate:
.LFB564:
	.loc 27 345 0
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2631:
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 40
	.loc 27 345 0
	ldr	r5, [sp, #40]
	add	r4, sp, #16
	add	ip, sp, #8
	ldr	lr, [sp, #48]
	stmia	r4, {r0, r1}
	stmia	ip, {r2, r3}
	.loc 27 346 0
	cmp	r5, lr
	beq	.L2688
	.loc 27 349 0
	mov	r3, lr
	ldmia	ip, {r0, r1}
	ldr	r2, [sp, #44]
	bl	cteMove
.LVL2632:
	.loc 27 350 0
	ldmia	r4, {r0, r1}
	mov	r2, r5
	ldr	r3, [sp, #44]
	bl	cteMove
.LVL2633:
	.loc 27 354 0
	mov	r0, #0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.L2688:
	.cfi_restore_state
	.loc 27 347 0
	ldr	r1, [sp, #12]
	mov	r2, r5
	ldr	r3, [sp, #44]
	str	r1, [sp]
	str	r3, [sp, #4]
	ldr	r3, [sp, #8]
	ldmia	r4, {r0, r1}
	bl	cteSwap
.LVL2634:
	.loc 27 354 0
	mov	r0, #0
	add	sp, sp, #28
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
	.cfi_endproc
.LFE564:
	.size	invokeCNodeRotate, .-invokeCNodeRotate
	.align	2
	.global	setupReplyMaster
	.type	setupReplyMaster, %function
setupReplyMaster:
.LFB581:
	.loc 27 820 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2635:
	.loc 27 823 0
	bic	r2, r0, #508
	.loc 27 820 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 27 823 0
	bic	r2, r2, #3
	add	r1, r2, #32
.LVL2636:
	ldr	r3, [r2, #32]
.LVL2637:
.LBB8320:
.LBB8321:
	.loc 28 1035 0
	and	ip, r3, #14
	cmp	ip, #14
	.loc 28 1037 0
	uxtbeq	r3, r3
.LVL2638:
	.loc 28 1036 0
	andne	r3, r3, #15
.LBE8321:
.LBE8320:
	.loc 27 824 0
	cmp	r3, #0
	ldmnefd	sp!, {r3, pc}
.LVL2639:
.LBB8322:
.LBB8323:
	.loc 28 1429 0
	tst	r0, #31
	bne	.L2695
.LVL2640:
	.loc 28 1430 0
	bic	r0, r0, #31
.LVL2641:
.LBE8323:
.LBE8322:
.LBB8326:
.LBB8327:
	.loc 28 519 0
	mov	ip, #3
.LBE8327:
.LBE8326:
.LBB8329:
.LBB8324:
	.loc 28 1433 0
	orr	r0, r0, #24
.LVL2642:
.LBE8324:
.LBE8329:
	.loc 27 827 0
	str	r0, [r2, #32]
.LVL2643:
	str	r3, [r1, #4]
.LVL2644:
	.loc 27 828 0
	str	r3, [r1, #8]
.LVL2645:
.LBB8330:
.LBB8328:
	.loc 28 519 0
	str	ip, [r1, #12]
	ldmfd	sp!, {r3, pc}
.LVL2646:
.L2695:
.LBE8328:
.LBE8330:
.LBB8331:
.LBB8325:
	.loc 28 1429 0
	movw	r0, #:lower16:.LC126
.LVL2647:
	movw	r1, #:lower16:.LC30
.LVL2648:
	movt	r0, #:upper16:.LC126
	movt	r1, #:upper16:.LC30
	movw	r2, #1429
.LVL2649:
	ldr	r3, .L2696
	bl	_assert_fail
.LVL2650:
.L2697:
	.align	2
.L2696:
	.word	.LANCHOR4+3240
.LBE8325:
.LBE8331:
	.cfi_endproc
.LFE581:
	.size	setupReplyMaster, .-setupReplyMaster
	.align	2
	.global	replyFromKernel_success_empty
	.type	replyFromKernel_success_empty, %function
replyFromKernel_success_empty:
.LFB594:
	.loc 51 224 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL2651:
.LBB8338:
.LBB8339:
	.loc 13 21 0
	mov	r3, #0
	str	r3, [r0]
.LVL2652:
.LBE8339:
.LBE8338:
.LBB8340:
.LBB8341:
	str	r3, [r0, #4]
	bx	lr
.LBE8341:
.LBE8340:
	.cfi_endproc
.LFE594:
	.size	replyFromKernel_success_empty, .-replyFromKernel_success_empty
	.align	2
	.type	emptySlot, %function
emptySlot:
.LFB573:
	.loc 27 592 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2653:
	ldr	r3, [r0]
.LVL2654:
.LBB8374:
.LBB8375:
	.loc 28 1035 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 28 1037 0
	uxtbeq	r3, r3
.LVL2655:
	.loc 28 1036 0
	andne	r3, r3, #15
.LBE8375:
.LBE8374:
	.loc 27 593 0
	cmp	r3, #0
	bxeq	lr
.LVL2656:
.LBB8376:
.LBB8377:
.LBB8378:
.LBB8379:
	.loc 28 525 0
	ldr	r3, [r0, #8]
.LBE8379:
.LBE8378:
	.loc 27 597 0
	ldr	r2, [r0, #12]
.LVL2657:
.LBE8377:
.LBE8376:
	.loc 27 592 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB8410:
.LBB8408:
	.loc 27 601 0
	bics	r3, r3, #7
.LVL2658:
.LBB8380:
.LBB8381:
	.loc 28 450 0
	bic	lr, r2, #7
.LVL2659:
.LBE8381:
.LBE8380:
.LBB8382:
.LBB8383:
	.loc 28 462 0
	ldrne	ip, [r3, #12]
	andne	ip, ip, #7
	.loc 28 463 0
	orrne	ip, ip, lr
	strne	ip, [r3, #12]
.LVL2660:
.LBE8383:
.LBE8382:
	.loc 27 604 0
	cmp	lr, #0
	beq	.L2705
.LVL2661:
	ldr	ip, [lr, #12]
.LBB8384:
.LBB8385:
	.loc 28 546 0
	ldr	r4, [lr, #8]
	orr	r2, ip, r2
.LVL2662:
.LBE8385:
.LBE8384:
.LBB8389:
.LBB8390:
	.loc 28 518 0
	bic	ip, ip, #1
	and	r2, r2, #1
.LBE8390:
.LBE8389:
.LBB8393:
.LBB8386:
	.loc 28 546 0
	and	r4, r4, #7
.LBE8386:
.LBE8393:
.LBB8394:
.LBB8391:
	.loc 28 519 0
	orr	r2, r2, ip
.LBE8391:
.LBE8394:
.LBB8395:
.LBB8387:
	.loc 28 547 0
	orr	r3, r4, r3
.LVL2663:
.LBE8387:
.LBE8395:
.LBB8396:
.LBB8392:
	.loc 28 519 0
	str	r2, [lr, #12]
.LBE8392:
.LBE8396:
.LBB8397:
.LBB8388:
	.loc 28 547 0
	str	r3, [lr, #8]
.LVL2664:
.L2705:
.LBE8388:
.LBE8397:
	.loc 27 614 0
	movw	r2, #65535
	.loc 27 611 0
	mov	r3, #0
	.loc 27 614 0
	cmp	r1, r2
	.loc 27 611 0
	str	r3, [r0]
	str	r3, [r0, #4]
.LVL2665:
	.loc 27 612 0
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	.loc 27 614 0
	ldmeqfd	sp!, {r4, pc}
.LVL2666:
.LBB8398:
.LBB8399:
.LBB8400:
	.loc 30 265 0
	movw	r2, #:lower16:intStateIRQTable
.LBB8401:
.LBB8402:
	mov	r0, r1
.LVL2667:
.LBE8402:
.LBE8401:
	movt	r2, #:upper16:intStateIRQTable
.LBE8400:
.LBE8399:
.LBE8398:
.LBE8408:
.LBE8410:
	.loc 27 618 0
	ldmfd	sp!, {r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL2668:
.LBB8411:
.LBB8409:
.LBB8407:
.LBB8406:
.LBB8405:
	.loc 30 265 0
	str	r3, [r2, r1, asl #2]
.LVL2669:
.LBB8404:
.LBB8403:
	b	maskInterrupt.part.50
.LVL2670:
.LBE8403:
.LBE8404:
.LBE8405:
.LBE8406:
.LBE8407:
.LBE8409:
.LBE8411:
	.cfi_endproc
.LFE573:
	.size	emptySlot, .-emptySlot
	.section	.boot.text
	.align	2
	.global	map_it_pt_cap
	.type	map_it_pt_cap, %function
map_it_pt_cap:
.LFB320:
	.loc 14 94 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	.loc 14 94 0
	add	ip, sp, #16
	stmia	sp, {r2, r3}
	mov	r3, r2
.LVL2671:
	stmdb	ip, {r0, r1}
.LVL2672:
	ldr	r1, [sp, #8]
.LBB8440:
.LBB8441:
	.loc 28 2162 0
	and	r2, r1, #15
	cmp	r2, #9
	bne	.L2720
.LVL2673:
.LBE8441:
.LBE8440:
.LBB8445:
.LBB8446:
	.loc 28 2098 0
	and	r0, r3, #15
.LBE8446:
.LBE8445:
.LBB8450:
.LBB8442:
	.loc 28 2165 0
	bic	r2, r1, #16320
.LBE8442:
.LBE8450:
.LBB8451:
.LBB8447:
	.loc 28 2098 0
	cmp	r0, #7
.LBE8447:
.LBE8451:
.LBB8452:
.LBB8443:
	.loc 28 2165 0
	bic	r2, r2, #63
.LVL2674:
.LBE8443:
.LBE8452:
.LBB8453:
.LBB8448:
	.loc 28 2098 0
	bne	.L2721
	ldr	r1, [sp, #4]
	.loc 28 2101 0
	bic	r3, r3, #1020
	bic	r3, r3, #3
.LVL2675:
.LBE8448:
.LBE8453:
	.loc 14 100 0
	tst	r1, #1073741824
	.loc 14 98 0
	ubfx	r1, r1, #0, #12
.LVL2676:
	.loc 14 100 0
	beq	.L2722
.LVL2677:
.LBB8454:
.LBB8455:
	.loc 28 846 0
	add	r3, r3, #536870912
.LVL2678:
	.loc 28 855 0
	orr	r3, r3, #512
.LVL2679:
	orr	r3, r3, #1
.LBE8455:
.LBE8454:
	.loc 14 102 0
	str	r3, [r2, r1, asl #2]
	.loc 14 107 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 4
.LVL2680:
	@ sp needed
	ldr	pc, [sp], #4
.LVL2681:
.L2720:
	.cfi_restore_state
.LBB8456:
.LBB8444:
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.93.part.94
.LVL2682:
.L2722:
.LBE8444:
.LBE8456:
.LBB8457:
.LBB8458:
	.loc 14 100 0
	movw	r0, #:lower16:.LC132
	movw	r1, #:lower16:.LC23
.LVL2683:
	movt	r0, #:upper16:.LC132
	movt	r1, #:upper16:.LC23
	mov	r2, #100
.LVL2684:
	ldr	r3, .L2723
.LVL2685:
	bl	_assert_fail
.LVL2686:
.L2721:
.LBE8458:
.LBE8457:
.LBB8459:
.LBB8449:
	bl	cap_page_table_cap_get_capPTBasePtr.isra.91.part.92
.LVL2687:
.L2724:
	.align	2
.L2723:
	.word	.LANCHOR4+3904
.LBE8449:
.LBE8459:
	.cfi_endproc
.LFE320:
	.size	map_it_pt_cap, .-map_it_pt_cap
	.text
	.align	2
	.type	resetMemMapping, %function
resetMemMapping:
.LFB456:
	.loc 23 155 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2688:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	.loc 23 155 0
	stmia	sp, {r1, r2}
.LBB8478:
.LBB8479:
	.loc 28 1035 0
	and	r2, r1, #14
	cmp	r2, #14
.LBE8479:
.LBE8478:
	.loc 23 155 0
	mov	lr, sp
.LBB8481:
.LBB8480:
	.loc 28 1037 0
	uxtbeq	r2, r1
	.loc 28 1036 0
	andne	r2, r1, #15
.LBE8480:
.LBE8481:
	.loc 23 155 0
	mov	ip, r0
	.loc 23 156 0
	sub	r2, r2, #1
	mov	r3, r1
.LVL2689:
	cmp	r2, #8
	ldrls	pc, [pc, r2, asl #2]
	b	.L2728
.L2730:
	.word	.L2729
	.word	.L2728
	.word	.L2731
	.word	.L2728
	.word	.L2728
	.word	.L2728
	.word	.L2732
	.word	.L2728
	.word	.L2733
.L2733:
.LBB8482:
.LBB8483:
	.loc 28 2189 0
	and	r2, r3, #15
	ldmia	sp, {r0, r1}
.LVL2690:
	cmp	r2, #9
	add	r2, sp, #8
	stmia	r2, {r0, r1}
.LVL2691:
	bne	.L2740
.LVL2692:
	.loc 28 2194 0
	bic	r3, r3, #16
.LVL2693:
	.loc 28 2196 0
	str	r3, [sp, #8]
	ldmia	r2, {r0, r1}
	stmia	ip, {r0, r1}
.LVL2694:
.L2725:
.LBE8483:
.LBE8482:
	.loc 23 170 0
	mov	r0, ip
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 4
.LVL2695:
	@ sp needed
	ldr	pc, [sp], #4
.LVL2696:
.L2732:
	.cfi_restore_state
.LBB8485:
.LBB8486:
	.loc 28 2020 0
	and	r2, r1, #15
	ldr	r1, [sp, #4]
.LVL2697:
	cmp	r2, #7
	.loc 28 2027 0
	streq	r3, [r0]
	.loc 28 2025 0
	biceq	r1, r1, #1073741824
.LVL2698:
	.loc 28 2027 0
	streq	r1, [r0, #4]
	.loc 28 2020 0
	beq	.L2725
	bl	cap_page_table_cap_set_capPTIsMapped.part.141
.LVL2699:
.L2731:
.LBE8486:
.LBE8485:
.LBB8487:
.LBB8488:
.LBB8489:
	.loc 28 1828 0
	and	r1, r1, #15
.LVL2700:
	ldr	r2, [sp, #4]
.LVL2701:
	cmp	r1, #3
	bne	.L2741
.LVL2702:
	.loc 28 1833 0
	bic	r2, r2, #1069547520
.LVL2703:
.LBE8489:
.LBE8488:
.LBB8492:
.LBB8493:
	.loc 28 1911 0
	bic	r3, r3, #1069547520
.LVL2704:
.LBE8493:
.LBE8492:
.LBB8495:
.LBB8490:
	.loc 28 1833 0
	bic	r2, r2, #3145728
.LBE8490:
.LBE8495:
.LBB8496:
.LBB8494:
	.loc 28 1913 0
	str	r3, [r0]
	str	r2, [r0, #4]
.LBE8494:
.LBE8496:
.LBE8487:
	.loc 23 170 0
	mov	r0, ip
.LVL2705:
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 4
.LVL2706:
	@ sp needed
	ldr	pc, [sp], #4
.LVL2707:
.L2729:
	.cfi_restore_state
.LBB8498:
.LBB8499:
.LBB8500:
	.loc 28 1664 0
	and	r2, r1, #15
	ldr	r1, [sp, #4]
.LVL2708:
	cmp	r2, #1
	bne	.L2742
.LVL2709:
.LBE8500:
.LBE8499:
.LBB8503:
.LBB8504:
	.loc 28 1747 0
	bic	r3, r3, #-16777216
.LVL2710:
.LBE8504:
.LBE8503:
.LBB8506:
.LBB8501:
	.loc 28 1669 0
	ubfx	r1, r1, #0, #22
.LVL2711:
.LBE8501:
.LBE8506:
.LBB8507:
.LBB8505:
	.loc 28 1749 0
	str	r3, [r0]
	str	r1, [r0, #4]
.LBE8505:
.LBE8507:
.LBE8498:
	.loc 23 170 0
	mov	r0, ip
.LVL2712:
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 4
.LVL2713:
	@ sp needed
	ldr	pc, [sp], #4
.LVL2714:
.L2728:
	.cfi_restore_state
	.loc 23 169 0
	ldmia	sp, {r0, r1}
.LVL2715:
	stmia	ip, {r0, r1}
	.loc 23 170 0
	mov	r0, ip
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.LVL2716:
.L2742:
	.cfi_restore_state
.LBB8509:
.LBB8508:
.LBB8502:
	.loc 28 1664 0
	movw	r0, #:lower16:.LC40
.LVL2717:
	movw	r1, #:lower16:.LC30
.LVL2718:
	movt	r0, #:upper16:.LC40
	movt	r1, #:upper16:.LC30
	movw	r2, #1665
	ldr	r3, .L2743
.LVL2719:
	bl	_assert_fail
.LVL2720:
.L2741:
.LBE8502:
.LBE8508:
.LBE8509:
.LBB8510:
.LBB8497:
.LBB8491:
	.loc 28 1828 0
	movw	r0, #:lower16:.LC41
.LVL2721:
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC41
	movt	r1, #:upper16:.LC30
	movw	r2, #1829
.LVL2722:
	ldr	r3, .L2743+4
.LVL2723:
	bl	_assert_fail
.LVL2724:
.L2740:
.LBE8491:
.LBE8497:
.LBE8510:
.LBB8511:
.LBB8484:
	.loc 28 2189 0
	movw	r0, #:lower16:.LC45
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC45
	movt	r1, #:upper16:.LC30
	movw	r2, #2190
	ldr	r3, .L2743+8
.LVL2725:
	bl	_assert_fail
.LVL2726:
.L2744:
	.align	2
.L2743:
	.word	.LANCHOR4+3920
	.word	.LANCHOR4+3964
	.word	.LANCHOR4+4000
.LBE8484:
.LBE8511:
	.cfi_endproc
.LFE456:
	.size	resetMemMapping, .-resetMemMapping
	.align	2
	.global	insertNewCap
	.type	insertNewCap, %function
insertNewCap:
.LFB580:
	.loc 27 806 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2727:
.LBB8520:
.LBB8521:
	.loc 28 450 0
	ldr	ip, [r0, #12]
.LBE8521:
.LBE8520:
.LBB8523:
.LBB8524:
	.loc 28 441 0
	tst	r0, #7
.LBE8524:
.LBE8523:
	.loc 27 806 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 27 806 0
	add	lr, sp, #8
	.loc 27 810 0
	stmia	r1, {r2, r3}
	.loc 27 806 0
	stmdb	lr, {r2, r3}
.LBB8528:
.LBB8522:
	.loc 28 450 0
	bic	r3, ip, #7
.LVL2728:
.LBE8522:
.LBE8528:
.LBB8529:
.LBB8525:
	.loc 28 439 0
	orr	r2, r3, #3
.LVL2729:
	.loc 28 441 0
	bne	.L2752
.LVL2730:
.LBE8525:
.LBE8529:
	.loc 27 812 0
	cmp	r3, #0
.LBB8530:
.LBB8526:
	.loc 28 442 0
	bic	ip, r0, #7
.LVL2731:
.LBE8526:
.LBE8530:
	.loc 27 811 0
	str	r2, [r1, #12]
	str	ip, [r1, #8]
	.loc 27 812 0
	beq	.L2747
.LVL2732:
.LBB8531:
.LBB8532:
	.loc 28 545 0
	tst	r1, #7
	bne	.L2753
	.loc 28 546 0
	ldr	r2, [r3, #8]
.LVL2733:
	.loc 28 547 0
	bic	r1, r1, #7
.LVL2734:
	.loc 28 546 0
	and	r2, r2, #7
	.loc 28 547 0
	orr	r2, r2, r1
	str	r2, [r3, #8]
.LVL2735:
.L2749:
.LBE8532:
.LBE8531:
.LBB8534:
.LBB8535:
	.loc 28 462 0
	ldr	r3, [r0, #12]
.LVL2736:
	and	r3, r3, #7
	.loc 28 463 0
	orr	r1, r1, r3
	str	r1, [r0, #12]
.LBE8535:
.LBE8534:
	.loc 27 816 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.LVL2737:
.L2747:
	.cfi_restore_state
.LBB8537:
.LBB8536:
	.loc 28 461 0
	tst	r1, #7
	biceq	r1, r1, #7
.LVL2738:
	beq	.L2749
	bl	mdb_node_ptr_set_mdbNext.isra.200.part.201
.LVL2739:
.L2752:
.LBE8536:
.LBE8537:
.LBB8538:
.LBB8527:
	.loc 28 441 0
	movw	r0, #:lower16:.LC133
.LVL2740:
	movw	r1, #:lower16:.LC30
.LVL2741:
	movt	r0, #:upper16:.LC133
	movt	r1, #:upper16:.LC30
	movw	r2, #441
.LVL2742:
	ldr	r3, .L2754
.LVL2743:
	bl	_assert_fail
.LVL2744:
.L2753:
.LBE8527:
.LBE8538:
.LBB8539:
.LBB8533:
	bl	mdb_node_ptr_set_mdbPrev.isra.202.part.203
.LVL2745:
.L2755:
	.align	2
.L2754:
	.word	.LANCHOR4+2796
.LBE8533:
.LBE8539:
	.cfi_endproc
.LFE580:
	.size	insertNewCap, .-insertNewCap
	.align	2
	.global	setMRs_syscall_error
	.type	setMRs_syscall_error, %function
setMRs_syscall_error:
.LFB468:
	.loc 24 137 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2746:
	.loc 24 138 0
	movw	r2, #:lower16:current_syscall_error
	.loc 24 137 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 24 138 0
	movt	r2, #:upper16:current_syscall_error
	ldr	r3, [r2, #24]
	sub	r3, r3, #1
	cmp	r3, #9
	ldrls	pc, [pc, r3, asl #2]
	b	.L2757
.L2759:
	.word	.L2758
	.word	.L2760
	.word	.L2768
	.word	.L2762
	.word	.L2768
	.word	.L2763
	.word	.L2768
	.word	.L2768
	.word	.L2768
	.word	.L2764
.L2768:
	.loc 24 148 0
	mov	r3, #0
.L2761:
	.loc 24 175 0
	mov	r0, r3
.LVL2747:
	ldmfd	sp!, {r3, pc}
.LVL2748:
.L2762:
.LBB8653:
.LBB8654:
.LBB8655:
	.loc 13 21 0
	ldr	r1, [r2, #8]
.LVL2749:
.LBE8655:
.LBE8654:
.LBE8653:
	.loc 24 153 0
	mov	r3, #2
.LBB8658:
.LBB8659:
.LBB8660:
	.loc 13 21 0
	ldr	r2, [r2, #12]
.LBE8660:
.LBE8659:
.LBE8658:
.LBB8663:
.LBB8657:
.LBB8656:
	str	r1, [r0, #8]
.LVL2750:
.LBE8656:
.LBE8657:
.LBE8663:
.LBB8664:
.LBB8662:
.LBB8661:
	str	r2, [r0, #12]
.LVL2751:
.LBE8661:
.LBE8662:
.LBE8664:
	.loc 24 175 0
	mov	r0, r3
.LVL2752:
	ldmfd	sp!, {r3, pc}
.LVL2753:
.L2764:
.LBB8665:
.LBB8666:
.LBB8667:
	.loc 13 21 0
	ldr	r2, [r2, #16]
.LBE8667:
.LBE8666:
.LBE8665:
	.loc 24 170 0
	mov	r3, #1
.LBB8670:
.LBB8669:
.LBB8668:
	.loc 13 21 0
	str	r2, [r0, #8]
.LVL2754:
.LBE8668:
.LBE8669:
.LBE8670:
	.loc 24 175 0
	mov	r0, r3
.LVL2755:
	ldmfd	sp!, {r3, pc}
.LVL2756:
.L2763:
	movw	r3, #:lower16:current_lookup_fault
.LBB8671:
.LBB8672:
	.loc 24 160 0
	ldr	r2, [r2, #20]
	movt	r3, #:upper16:current_lookup_fault
	ldr	ip, [r3]
	adds	r2, r2, #0
	ldr	lr, [r3, #4]
	movne	r2, #1
.LBB8673:
.LBB8674:
.LBB8675:
.LBB8676:
	.loc 28 2574 0
	and	r3, ip, #3
.LBE8676:
.LBE8675:
.LBE8674:
.LBE8673:
.LBB8719:
.LBB8720:
.LBB8721:
	.loc 13 21 0
	str	r2, [r0, #8]
.LVL2757:
.LBE8721:
.LBE8720:
.LBE8719:
.LBB8722:
.LBB8717:
	.loc 24 44 0
	cmp	r3, #2
	.loc 24 42 0
	add	r2, r3, #1
.LVL2758:
.LBB8677:
.LBB8678:
.LBB8679:
	.loc 13 21 0
	str	r2, [r0, #12]
.LBE8679:
.LBE8678:
.LBE8677:
	.loc 24 44 0
	beq	.L2765
	cmp	r3, #3
	beq	.L2766
	cmp	r3, #1
	.loc 24 46 0
	movne	r3, #2
	.loc 24 44 0
.LVL2759:
.LBB8680:
.LBB8681:
	.loc 28 2614 0
	ubfxeq	ip, ip, #2, #6
.LVL2760:
.LBE8681:
.LBE8680:
	.loc 24 49 0
	moveq	r3, #3
.LBB8682:
.LBB8683:
.LBB8684:
	.loc 13 21 0
	streq	ip, [r0, #16]
	b	.L2761
.LVL2761:
.L2758:
.LBE8684:
.LBE8683:
.LBE8682:
.LBE8717:
.LBE8722:
.LBE8672:
.LBE8671:
.LBB8725:
.LBB8726:
.LBB8727:
	ldr	r2, [r2]
.LBE8727:
.LBE8726:
.LBE8725:
	.loc 24 140 0
	mov	r3, #1
.LBB8730:
.LBB8729:
.LBB8728:
	.loc 13 21 0
	str	r2, [r0, #8]
.LBE8728:
.LBE8729:
.LBE8730:
	.loc 24 175 0
	mov	r0, r3
.LVL2762:
	ldmfd	sp!, {r3, pc}
.LVL2763:
.L2760:
.LBB8731:
.LBB8732:
.LBB8733:
	.loc 13 21 0
	ldr	r2, [r2, #4]
.LBE8733:
.LBE8732:
.LBE8731:
	.loc 24 144 0
	mov	r3, #1
.LBB8736:
.LBB8735:
.LBB8734:
	.loc 13 21 0
	str	r2, [r0, #8]
.LBE8734:
.LBE8735:
.LBE8736:
	.loc 24 175 0
	mov	r0, r3
.LVL2764:
	ldmfd	sp!, {r3, pc}
.LVL2765:
.L2757:
	.loc 24 173 0
	movw	r0, #:lower16:.LC134
.LVL2766:
	movw	r1, #:lower16:.LC83
.LVL2767:
	movt	r0, #:upper16:.LC134
	movt	r1, #:upper16:.LC83
	mov	r2, #173
	ldr	r3, .L2773
	bl	_fail
.LVL2768:
.L2766:
.LBB8737:
.LBB8724:
.LBB8723:
.LBB8718:
.LBB8685:
.LBB8686:
.LBB8687:
	.loc 24 23 0
	cmp	r1, #0
.LBE8687:
.LBE8686:
.LBE8685:
.LBB8694:
.LBB8695:
	.loc 28 2711 0
	ubfx	r3, ip, #8, #6
.LBE8695:
.LBE8694:
.LBB8696:
.LBB8697:
.LBB8698:
	.loc 13 21 0
	str	r3, [r0, #16]
.LVL2769:
.LBE8698:
.LBE8697:
.LBE8696:
.LBB8699:
.LBB8691:
.LBB8688:
	.loc 24 27 0
	moveq	r3, #4
.LBE8688:
.LBE8691:
.LBE8699:
.LBB8700:
.LBB8701:
.LBB8702:
	.loc 13 21 0
	str	lr, [r0, #20]
.LBE8702:
.LBE8701:
.LBE8700:
.LBB8703:
.LBB8692:
.LBB8689:
	.loc 24 23 0
.LBE8689:
.LBE8692:
.LBE8703:
.LBB8704:
.LBB8705:
	.loc 28 2725 0
	ubfxne	ip, ip, #2, #6
.LVL2770:
.LBE8705:
.LBE8704:
.LBB8706:
.LBB8693:
.LBB8690:
	.loc 24 25 0
	movne	r3, #5
	.loc 24 24 0
	strne	ip, [r1, #20]
	b	.L2761
.LVL2771:
.L2765:
.LBE8690:
.LBE8693:
.LBE8706:
.LBB8707:
.LBB8708:
	.loc 28 2662 0
	ubfx	r3, ip, #2, #6
.LBE8708:
.LBE8707:
.LBB8709:
.LBB8710:
	.loc 28 2648 0
	ubfx	ip, ip, #8, #6
.LVL2772:
.LBE8710:
.LBE8709:
.LBB8711:
.LBB8712:
.LBB8713:
	.loc 13 21 0
	str	r3, [r0, #16]
.LVL2773:
.LBE8713:
.LBE8712:
.LBE8711:
	.loc 24 55 0
	mov	r3, #4
.LBB8714:
.LBB8715:
.LBB8716:
	.loc 13 21 0
	str	ip, [r0, #20]
	b	.L2761
.L2774:
	.align	2
.L2773:
	.word	.LANCHOR4+4044
.LBE8716:
.LBE8715:
.LBE8714:
.LBE8718:
.LBE8723:
.LBE8724:
.LBE8737:
	.cfi_endproc
.LFE468:
	.size	setMRs_syscall_error, .-setMRs_syscall_error
	.align	2
	.global	doFaultTransfer
	.type	doFaultTransfer, %function
doFaultTransfer:
.LFB532:
	.loc 26 192 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2774:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 26 192 0
	mov	r4, r2
	mov	r5, r1
	.loc 26 196 0
	mov	r2, r3
.LVL2775:
	.loc 26 192 0
	mov	r6, r0
	.loc 26 196 0
	mov	r0, r1
.LVL2776:
	mov	r1, r4
.LVL2777:
	bl	setMRs_fault
.LVL2778:
.LBB8746:
.LBB8747:
	.loc 28 566 0
	ldr	r3, [r5, #88]
.LBE8747:
.LBE8746:
.LBB8749:
.LBB8750:
	.loc 41 29 0
	bics	r2, r0, #127
.LBE8750:
.LBE8749:
.LBB8753:
.LBB8754:
	.loc 13 21 0
	streq	r6, [r4]
.LVL2779:
.LBE8754:
.LBE8753:
.LBB8755:
.LBB8748:
	.loc 28 566 0
	and	r3, r3, #7
.LVL2780:
.LBE8748:
.LBE8755:
.LBB8756:
.LBB8751:
	.loc 41 21 0
	mov	r3, r3, asl #12
.LVL2781:
	.loc 41 30 0
	orreq	r3, r0, r3
.LVL2782:
.LBE8751:
.LBE8756:
.LBB8757:
.LBB8758:
	.loc 13 21 0
	streq	r3, [r4, #4]
.LBE8758:
.LBE8757:
.LBB8759:
.LBB8752:
	.loc 41 29 0
	ldmeqfd	sp!, {r4, r5, r6, pc}
	movw	r0, #:lower16:.LC135
.LVL2783:
	movw	r1, #:lower16:.LC66
	movt	r0, #:upper16:.LC135
	movt	r1, #:upper16:.LC66
	mov	r2, #29
	ldr	r3, .L2778
	bl	_assert_fail
.LVL2784:
.L2779:
	.align	2
.L2778:
	.word	.LANCHOR4+1900
.LBE8752:
.LBE8759:
	.cfi_endproc
.LFE532:
	.size	doFaultTransfer, .-doFaultTransfer
	.align	2
	.global	replyFromKernel_error
	.type	replyFromKernel_error, %function
replyFromKernel_error:
.LFB593:
	.loc 51 211 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2785:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 51 211 0
	mov	r4, r0
	.loc 51 215 0
	mov	r1, r4
	mov	r0, #1
.LVL2786:
	bl	lookupIPCBuffer
.LVL2787:
.LBB8766:
.LBB8767:
	.loc 13 21 0
	mov	r3, #0
.LBE8767:
.LBE8766:
	.loc 51 215 0
	mov	r1, r0
.LVL2788:
.LBB8769:
.LBB8768:
	.loc 13 21 0
	str	r3, [r4]
.LBE8768:
.LBE8769:
	.loc 51 217 0
	mov	r0, r4
.LVL2789:
	bl	setMRs_syscall_error
.LVL2790:
	.loc 51 218 0
	movw	r2, #:lower16:current_syscall_error
	movt	r2, #:upper16:current_syscall_error
	ldr	r3, [r2, #24]
.LVL2791:
.LBB8770:
.LBB8771:
	.loc 41 20 0
	mov	r2, r3, lsr #20
	mov	r2, r2, asl #20
	cmp	r2, #0
	bne	.L2784
	.loc 41 21 0
	mov	r3, r3, asl #12
.LVL2792:
	.loc 41 29 0
	bics	r2, r0, #127
	.loc 41 30 0
	orreq	r3, r0, r3
.LVL2793:
.LBE8771:
.LBE8770:
.LBB8773:
.LBB8774:
	.loc 13 21 0
	streq	r3, [r4, #4]
.LBE8774:
.LBE8773:
.LBB8775:
.LBB8772:
	.loc 41 29 0
	ldmeqfd	sp!, {r4, pc}
	movw	r0, #:lower16:.LC135
.LVL2794:
	movw	r1, #:lower16:.LC66
	movt	r0, #:upper16:.LC135
	movt	r1, #:upper16:.LC66
	mov	r2, #29
	ldr	r3, .L2785
	bl	_assert_fail
.LVL2795:
.L2784:
	bl	message_info_new.part.144
.LVL2796:
.L2786:
	.align	2
.L2785:
	.word	.LANCHOR4+1900
.LBE8772:
.LBE8775:
	.cfi_endproc
.LFE593:
	.size	replyFromKernel_error, .-replyFromKernel_error
	.align	2
	.global	performPageInvocationRemapPTE
	.type	performPageInvocationRemapPTE, %function
performPageInvocationRemapPTE:
.LFB372:
	.loc 14 2124 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2797:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 14 2124 0
	add	ip, sp, #8
	stmdb	ip, {r2, r3}
	ldmia	sp, {r3, ip}
.LVL2798:
.LBB8790:
.LBB8791:
.LBB8792:
.LBB8793:
.LBB8794:
	.loc 28 2361 0
	ldr	r2, [r3]
	ubfx	r4, r2, #1, #1
.LBE8794:
.LBE8793:
	.loc 38 348 0
	cmp	r4, #1
	beq	.L2788
.LVL2799:
	.loc 38 353 0
	tst	r2, #1
	movne	r4, #0
	moveq	r4, #2
.LVL2800:
.L2788:
.LBE8792:
.LBE8791:
.LBE8790:
	.loc 14 2135 0
	cmp	ip, #0
	addne	lr, r3, ip, asl #2
	movne	r2, r3
	beq	.L2793
.LVL2801:
.L2792:
	.loc 14 2136 0 discriminator 3
	str	r1, [r2], #4
	.loc 14 2135 0 discriminator 3
	cmp	r2, lr
	bne	.L2792
.L2793:
.LVL2802:
	.loc 14 2139 0
	add	r2, r3, ip, asl #2
.LBB8795:
.LBB8796:
	.loc 15 95 0
	mov	r3, r3, lsr #5
.LVL2803:
.LBE8796:
.LBE8795:
	.loc 14 2138 0
	sub	r2, r2, #1
.LBB8802:
.LBB8801:
	.loc 15 95 0
	mov	r2, r2, lsr #5
	add	r2, r2, #1
	cmp	r3, r2
	bcs	.L2791
.L2799:
.LVL2804:
	.loc 15 96 0
	mov	r1, r3, asl #5
.LVL2805:
.LBB8797:
.LBB8798:
	.loc 4 212 0
@ 212 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r1, c7, c11, 1
@ 0 "" 2
.LBB8799:
.LBB8800:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE8800:
.LBE8799:
.LBE8798:
.LBE8797:
	.loc 15 95 0
	add	r3, r3, #1
.LVL2806:
	cmp	r3, r2
	bne	.L2799
.LVL2807:
.L2791:
.LBE8801:
.LBE8802:
	.loc 14 2141 0
	cmp	r4, #2
	bne	.L2805
	.loc 14 2146 0
	mov	r0, #0
.LVL2808:
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
.LVL2809:
	@ sp needed
	ldmfd	sp!, {r4, pc}
.LVL2810:
.L2805:
	.cfi_restore_state
	.loc 14 2142 0
	bl	invalidateTLBByASID
.LVL2811:
	.loc 14 2146 0
	mov	r0, #0
	add	sp, sp, #8
	.cfi_def_cfa_offset 8
.LVL2812:
	@ sp needed
	ldmfd	sp!, {r4, pc}
	.cfi_endproc
.LFE372:
	.size	performPageInvocationRemapPTE, .-performPageInvocationRemapPTE
	.align	2
	.global	performPageInvocationMapPTE
	.type	performPageInvocationMapPTE, %function
performPageInvocationMapPTE:
.LFB370:
	.loc 14 2067 0
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2813:
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	ldr	ip, [sp, #28]
.LVL2814:
	.loc 14 2067 0
	mov	lr, r0
	stmia	sp, {r1, r2}
.LBB8817:
.LBB8818:
.LBB8819:
.LBB8820:
.LBB8821:
	.loc 28 2361 0
	ldr	r5, [ip]
.LBE8821:
.LBE8820:
.LBE8819:
.LBE8818:
.LBE8817:
	.loc 14 2071 0
	ldmia	sp, {r0, r1}
.LVL2815:
	.loc 14 2067 0
	ldr	r1, [sp, #24]
.LVL2816:
.LBB8828:
.LBB8826:
.LBB8824:
.LBB8823:
.LBB8822:
	.loc 28 2361 0
	ubfx	r4, r5, #1, #1
.LBE8822:
.LBE8823:
	.loc 38 348 0
	cmp	r4, #1
.LBE8824:
.LBE8826:
.LBE8828:
	.loc 14 2071 0
	stmia	r3, {r0, r2}
	ldr	r2, [sp, #32]
.LVL2817:
.LBB8829:
.LBB8827:
.LBB8825:
	.loc 38 348 0
	beq	.L2807
.LVL2818:
	.loc 38 353 0
	tst	r5, #1
	movne	r4, #0
	moveq	r4, #2
.LVL2819:
.L2807:
.LBE8825:
.LBE8827:
.LBE8829:
	.loc 14 2080 0
	cmp	r2, #0
	addne	r0, ip, r2, asl #2
	movne	r3, ip
.LVL2820:
	beq	.L2812
.LVL2821:
.L2811:
	.loc 14 2081 0 discriminator 3
	str	r1, [r3], #4
	.loc 14 2080 0 discriminator 3
	cmp	r3, r0
	bne	.L2811
.L2812:
.LVL2822:
	.loc 14 2084 0
	add	r2, ip, r2, asl #2
.LVL2823:
.LBB8830:
.LBB8831:
	.loc 15 95 0
	mov	r3, ip, lsr #5
.LVL2824:
.LBE8831:
.LBE8830:
	.loc 14 2083 0
	sub	r2, r2, #1
.LBB8837:
.LBB8836:
	.loc 15 95 0
	mov	r2, r2, lsr #5
	add	r2, r2, #1
	cmp	r3, r2
	bcs	.L2810
.L2818:
.LVL2825:
	.loc 15 96 0
	mov	r1, r3, asl #5
.LVL2826:
.LBB8832:
.LBB8833:
	.loc 4 212 0
@ 212 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r1, c7, c11, 1
@ 0 "" 2
.LBB8834:
.LBB8835:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE8835:
.LBE8834:
.LBE8833:
.LBE8832:
	.loc 15 95 0
	add	r3, r3, #1
.LVL2827:
	cmp	r3, r2
	bne	.L2818
.LVL2828:
.L2810:
.LBE8836:
.LBE8837:
	.loc 14 2086 0
	cmp	r4, #2
	bne	.L2824
	.loc 14 2091 0
	mov	r0, #0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.L2824:
	.cfi_restore_state
	mov	r0, lr
	.loc 14 2087 0
	bl	invalidateTLBByASID
.LVL2829:
	.loc 14 2091 0
	mov	r0, #0
	add	sp, sp, #12
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
	.cfi_endproc
.LFE370:
	.size	performPageInvocationMapPTE, .-performPageInvocationMapPTE
	.section	.boot.text
	.align	2
	.type	create_it_frame_cap, %function
create_it_frame_cap:
.LFB302:
	.loc 47 143 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2830:
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 47 143 0
	ldr	ip, [sp, #8]
	.loc 47 144 0
	cmp	ip, #0
	bne	.L2833
.LVL2831:
.LBB8844:
.LBB8845:
	.loc 28 1633 0
	ubfx	lr, r2, #0, #12
.LBE8845:
.LBE8844:
	.loc 47 156 0
	ubfx	ip, r3, #10, #8
.LVL2832:
.LBB8848:
.LBB8846:
	.loc 28 1633 0
	cmp	lr, #0
	.loc 28 1628 0
	mov	r3, r3, asl #22
.LVL2833:
	.loc 28 1633 0
	bne	.L2834
	.loc 28 1639 0
	ubfx	lr, r1, #0, #12
	orr	r3, r3, r2, lsr #12
.LVL2834:
	cmp	lr, #0
	.loc 28 1637 0
	mov	ip, ip, asl #24
.LVL2835:
	.loc 28 1634 0
	orr	r3, r3, #3145728
.LVL2836:
	.loc 28 1639 0
	bne	.L2835
.LVL2837:
	.loc 28 1640 0
	bic	r1, r1, #4080
.LVL2838:
	.loc 28 1645 0
	str	r3, [r0, #4]
	.loc 28 1640 0
	bic	r1, r1, #15
	orr	r1, ip, r1, lsr #8
	.loc 28 1643 0
	orr	r1, r1, #1
	.loc 28 1645 0
	str	r1, [r0]
.LBE8846:
.LBE8848:
	.loc 47 163 0
	ldmfd	sp!, {r3, pc}
.LVL2839:
.L2833:
.LBB8849:
.LBB8850:
.LBB8851:
.LBB8852:
	.loc 28 1783 0
	ubfx	lr, r2, #0, #14
	.loc 28 1778 0
	ubfx	ip, r3, #0, #10
.LVL2840:
	.loc 28 1783 0
	cmp	lr, #0
	.loc 28 1778 0
	mov	ip, ip, asl #20
.LBE8852:
.LBE8851:
	.loc 47 151 0
	mov	r3, r3, lsr #10
.LVL2841:
.LBB8854:
.LBB8853:
	.loc 28 1783 0
	bne	.L2836
	.loc 28 1784 0
	mov	r2, r2, lsr #14
.LVL2842:
	.loc 28 1789 0
	ubfx	lr, r1, #0, #14
	.loc 28 1787 0
	uxtb	r3, r3
.LVL2843:
	.loc 28 1789 0
	cmp	lr, #0
	orr	r2, r2, #-2147483648
	orr	r2, r2, #786432
	.loc 28 1787 0
	mov	r3, r3, asl #22
	.loc 28 1784 0
	orr	ip, r2, ip
.LVL2844:
	.loc 28 1789 0
	bne	.L2837
.LVL2845:
	.loc 28 1790 0
	bic	r1, r1, #16320
.LVL2846:
	.loc 28 1795 0
	str	ip, [r0, #4]
	.loc 28 1790 0
	bic	r1, r1, #63
	orr	r3, r3, r1, lsr #10
.LVL2847:
	.loc 28 1793 0
	orr	r3, r3, #3
	.loc 28 1795 0
	str	r3, [r0]
	ldmfd	sp!, {r3, pc}
.LVL2848:
.L2836:
	.loc 28 1783 0
	movw	r0, #:lower16:.LC136
.LVL2849:
	movw	r1, #:lower16:.LC30
.LVL2850:
	movt	r0, #:upper16:.LC136
	movt	r1, #:upper16:.LC30
	movw	r2, #1783
.LVL2851:
	ldr	r3, .L2838
.LVL2852:
	bl	_assert_fail
.LVL2853:
.L2837:
	.loc 28 1789 0
	movw	r0, #:lower16:.LC137
.LVL2854:
	movw	r1, #:lower16:.LC30
.LVL2855:
	movt	r0, #:upper16:.LC137
	movt	r1, #:upper16:.LC30
	movw	r2, #1789
	ldr	r3, .L2838
.LVL2856:
	bl	_assert_fail
.LVL2857:
.L2835:
.LBE8853:
.LBE8854:
.LBE8850:
.LBE8849:
.LBB8855:
.LBB8847:
	.loc 28 1639 0
	movw	r0, #:lower16:.LC139
.LVL2858:
	movw	r1, #:lower16:.LC30
.LVL2859:
	movt	r0, #:upper16:.LC139
	movt	r1, #:upper16:.LC30
	movw	r2, #1639
.LVL2860:
	ldr	r3, .L2838+4
.LVL2861:
	bl	_assert_fail
.LVL2862:
.L2834:
	.loc 28 1633 0
	movw	r0, #:lower16:.LC138
.LVL2863:
	movw	r1, #:lower16:.LC30
.LVL2864:
	movt	r0, #:upper16:.LC138
	movt	r1, #:upper16:.LC30
	movw	r2, #1633
.LVL2865:
	ldr	r3, .L2838+4
.LVL2866:
	bl	_assert_fail
.LVL2867:
.L2839:
	.align	2
.L2838:
	.word	.LANCHOR4+336
	.word	.LANCHOR4+356
.LBE8847:
.LBE8855:
	.cfi_endproc
.LFE302:
	.size	create_it_frame_cap, .-create_it_frame_cap
	.align	2
	.global	create_unmapped_it_frame_cap
	.type	create_unmapped_it_frame_cap, %function
create_unmapped_it_frame_cap:
.LFB303:
	.loc 47 167 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2868:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 47 168 0
	str	r2, [sp]
	mov	r2, #0
.LVL2869:
	.loc 47 167 0
	mov	r4, r0
	.loc 47 168 0
	mov	r3, r2
	bl	create_it_frame_cap
.LVL2870:
	.loc 47 169 0
	mov	r0, r4
	add	sp, sp, #8
	.cfi_def_cfa_offset 8
	@ sp needed
	ldmfd	sp!, {r4, pc}
	.cfi_endproc
.LFE303:
	.size	create_unmapped_it_frame_cap, .-create_unmapped_it_frame_cap
	.align	2
	.global	map_kernel_frame
	.type	map_kernel_frame, %function
map_kernel_frame:
.LFB322:
	.loc 14 139 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2871:
	.loc 14 142 0
	cmn	r1, #1048576
	.loc 14 139 0
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 14 140 0
	ubfx	r6, r1, #12, #8
.LVL2872:
	.loc 14 142 0
	bcc	.L2847
	mov	r4, r0
	.loc 14 145 0
	mov	r0, r2
.LVL2873:
	mov	r5, r3
	bl	APFromVMRights
.LVL2874:
.LBB8872:
.LBB8873:
	.loc 28 2484 0
	ubfx	r3, r4, #0, #12
	cmp	r3, #0
	bne	.L2848
	.loc 28 2499 0
	bics	r3, r0, #3
	.loc 28 2485 0
	bic	r2, r4, #4080
	bic	r2, r2, #15
.LVL2875:
	.loc 28 2499 0
	bne	.L2849
.LVL2876:
	.loc 28 2503 0
	and	r5, r5, #1
.LVL2877:
.LBE8873:
.LBE8872:
	.loc 14 144 0
	ldr	r3, .L2850
	orr	r2, r2, r5, asl #3
.LVL2878:
	orr	r2, r2, #6
.LBB8876:
.LBB8874:
	.loc 28 2509 0
	orr	r0, r2, r0, asl #4
.LVL2879:
.LBE8874:
.LBE8876:
	.loc 14 144 0
	str	r0, [r3, r6, asl #2]
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL2880:
.L2847:
.LBB8877:
.LBB8878:
	.loc 14 142 0
	movw	r0, #:lower16:.LC140
.LVL2881:
	movw	r1, #:lower16:.LC23
.LVL2882:
	movt	r0, #:upper16:.LC140
	movt	r1, #:upper16:.LC23
	mov	r2, #142
.LVL2883:
	ldr	r3, .L2850+4
.LVL2884:
	bl	_assert_fail
.LVL2885:
.L2849:
.LBE8878:
.LBE8877:
.LBB8879:
.LBB8875:
	.loc 28 2499 0
	movw	r0, #:lower16:.LC141
.LVL2886:
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC141
	movt	r1, #:upper16:.LC30
	movw	r2, #2499
.LVL2887:
	ldr	r3, .L2850+8
	bl	_assert_fail
.LVL2888:
.L2848:
	bl	pte_pte_small_new.part.113
.LVL2889:
.L2851:
	.align	2
.L2850:
	.word	.LANCHOR6-4072
	.word	.LANCHOR4+4068
	.word	.LANCHOR4+1148
.LBE8875:
.LBE8879:
	.cfi_endproc
.LFE322:
	.size	map_kernel_frame, .-map_kernel_frame
	.align	2
	.global	map_kernel_devices
	.type	map_kernel_devices, %function
map_kernel_devices:
.LFB678:
	.loc 33 133 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2890:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 33 135 0
	mov	r0, #0
	mov	r4, #4
	mov	r1, #12288
	mov	r3, r4
	movt	r0, 63728
	movt	r1, 65520
	mov	r2, #1
	bl	map_kernel_frame
.LVL2891:
	.loc 33 147 0
	mov	r0, #4096
	mov	r1, #16384
	mov	r3, r4
	movt	r0, 63728
	movt	r1, 65520
	mov	r2, #1
	bl	map_kernel_frame
.LVL2892:
	.loc 33 159 0
	mov	r0, #8192
	mov	r3, r4
	mov	r1, r0
	mov	r2, #1
	movt	r0, 63728
	movt	r1, 65520
	bl	map_kernel_frame
.LVL2893:
	.loc 33 173 0
	mov	r0, #4096
	mov	r3, r4
	mov	r1, r0
	mov	r2, #1
	movt	r0, 57344
	movt	r1, 65520
	bl	map_kernel_frame
.LVL2894:
	ldmfd	sp!, {r4, pc}
	.cfi_endproc
.LFE678:
	.size	map_kernel_devices, .-map_kernel_devices
	.text
	.align	2
	.global	unmapPage
	.type	unmapPage, %function
unmapPage:
.LFB340:
	.loc 14 589 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2895:
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 40
	.loc 14 589 0
	mov	r4, r0
	.loc 14 593 0
	mov	r0, sp
.LVL2896:
.LBB8950:
.LBB8951:
	.loc 3 51 0
	add	r8, r3, #536870912
.LBE8951:
.LBE8950:
	.loc 14 589 0
	mov	r5, r2
	mov	r6, r1
	.loc 14 593 0
	bl	findPDForASID
.LVL2897:
	ldmia	sp, {r3, r7}
.LVL2898:
	.loc 14 594 0
	cmp	r3, #0
	bne	.L2854
	.loc 14 598 0
	cmp	r4, #3
	ldrls	pc, [pc, r4, asl #2]
	b	.L2856
.L2858:
	.word	.L2857
	.word	.L2859
	.word	.L2860
	.word	.L2861
.L2859:
.LBB8952:
	.loc 14 624 0
	mov	r1, r7
	mov	r2, r5
	add	r0, sp, #8
	bl	lookupPTSlot
.LVL2899:
	.loc 14 625 0
	ldr	r1, [sp, #8]
	.loc 14 624 0
	ldr	r2, [sp, #12]
.LVL2900:
	.loc 14 625 0
	cmp	r1, #0
	bne	.L2854
.LVL2901:
.LBB8953:
.LBB8954:
.LBB8955:
.LBB8956:
	.loc 28 2361 0
	ldr	r3, [r2]
.LBE8956:
.LBE8955:
	.loc 38 348 0
	tst	r3, #2
	bne	.L2854
.LVL2902:
	.loc 38 350 0
	tst	r3, #1
	bne	.L2881
.LVL2903:
.L2854:
.LBE8954:
.LBE8953:
.LBE8952:
	.loc 14 699 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL2904:
.L2861:
	.cfi_restore_state
.LBB8965:
.LBB8966:
.LBB8967:
	.loc 14 439 0
	mov	r2, r5, lsr #20
.LVL2905:
.LBE8967:
.LBE8966:
.LBB8969:
.LBB8970:
	.loc 28 788 0
	ldr	r3, [r7, r2, asl #2]
.LBE8970:
.LBE8969:
.LBB8972:
.LBB8968:
	.loc 14 440 0
	add	r2, r7, r2, asl #2
.LVL2906:
.LBE8968:
.LBE8972:
.LBB8973:
.LBB8971:
	.loc 28 788 0
	and	r1, r3, #3
.LBE8971:
.LBE8973:
	.loc 14 673 0
	cmp	r1, #2
	bne	.L2854
.LVL2907:
	.loc 14 676 0
	tst	r3, #262144
	beq	.L2854
.LVL2908:
.LBB8974:
.LBB8975:
	.loc 28 957 0
	mov	r3, r3, lsr #20
.LVL2909:
	mov	r3, r3, asl #20
.LBE8975:
.LBE8974:
	.loc 14 679 0
	cmp	r8, r3
	bne	.L2854
	sub	r3, r2, #4
	add	r0, r2, #60
	.loc 14 684 0
	mov	r1, #0
.LVL2910:
.L2868:
	.loc 14 684 0 is_stmt 0 discriminator 3
	str	r1, [r3, #4]!
.LVL2911:
	.loc 14 683 0 is_stmt 1 discriminator 3
	cmp	r3, r0
	bne	.L2868
.LVL2912:
	.loc 14 686 0
	add	r3, r3, #3
.LVL2913:
.LBB8976:
.LBB8977:
	.loc 15 95 0
	mov	r2, r2, lsr #5
.LVL2914:
	mov	r3, r3, lsr #5
.LVL2915:
	add	r3, r3, #1
	cmp	r3, r2
	bls	.L2863
.L2874:
.LVL2916:
	.loc 15 96 0
	mov	r1, r2, asl #5
.LVL2917:
.LBB8978:
.LBB8979:
	.loc 4 212 0
@ 212 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r1, c7, c11, 1
@ 0 "" 2
.LBB8980:
.LBB8981:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE8981:
.LBE8980:
.LBE8979:
.LBE8978:
	.loc 15 95 0
	add	r2, r2, #1
.LVL2918:
	cmp	r3, r2
	bne	.L2874
	b	.L2863
.LVL2919:
.L2857:
.LBE8977:
.LBE8976:
.LBE8965:
.LBB8982:
	.loc 14 602 0
	mov	r1, r7
	mov	r2, r5
	add	r0, sp, #8
	bl	lookupPTSlot
.LVL2920:
	.loc 14 603 0
	ldr	r1, [sp, #8]
	.loc 14 602 0
	ldr	r2, [sp, #12]
.LVL2921:
	.loc 14 603 0
	cmp	r1, #0
	bne	.L2854
.LVL2922:
.LBB8983:
.LBB8984:
.LBB8985:
.LBB8986:
	.loc 28 2361 0
	ldr	r3, [r2]
.LBE8986:
.LBE8985:
	.loc 38 348 0
	tst	r3, #2
	beq	.L2854
.LVL2923:
.LBE8984:
.LBE8983:
.LBB8987:
.LBB8988:
	.loc 28 2537 0
	bic	r3, r3, #4080
.LVL2924:
	bic	r3, r3, #15
.LBE8988:
.LBE8987:
	.loc 14 610 0
	cmp	r8, r3
	bne	.L2854
	.loc 14 614 0
	str	r1, [r2]
.LVL2925:
.LBB8989:
.LBB8990:
	.loc 4 212 0
@ 212 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c7, c11, 1
@ 0 "" 2
.LBB8991:
.LBB8992:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
	b	.L2863
.LVL2926:
.L2860:
.LBE8992:
.LBE8991:
.LBE8990:
.LBE8989:
.LBE8982:
.LBB8993:
.LBB8994:
.LBB8995:
	.loc 14 439 0
	mov	r2, r5, lsr #20
.LVL2927:
.LBE8995:
.LBE8994:
.LBB8997:
.LBB8998:
	.loc 28 788 0
	ldr	r3, [r7, r2, asl #2]
.LBE8998:
.LBE8997:
.LBB9000:
.LBB8996:
	.loc 14 440 0
	add	r0, r7, r2, asl #2
.LVL2928:
.LBE8996:
.LBE9000:
.LBB9001:
.LBB8999:
	.loc 28 788 0
	and	r1, r3, #3
.LBE8999:
.LBE9001:
	.loc 14 651 0
	cmp	r1, #2
	bne	.L2854
.LVL2929:
.LBB9002:
.LBB9003:
	.loc 28 985 0
	ubfx	r1, r3, #18, #1
.LBE9003:
.LBE9002:
	.loc 14 654 0
	cmp	r1, #0
	bne	.L2854
.LVL2930:
.LBB9004:
.LBB9005:
	.loc 28 957 0
	mov	r3, r3, lsr #20
.LVL2931:
	mov	r3, r3, asl #20
.LBE9005:
.LBE9004:
	.loc 14 657 0
	cmp	r8, r3
	bne	.L2854
.LVL2932:
	.loc 14 661 0
	str	r1, [r7, r2, asl #2]
.LVL2933:
.LBB9006:
.LBB9007:
	.loc 4 212 0
@ 212 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r0, c7, c11, 1
@ 0 "" 2
.LBB9008:
.LBB9009:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL2934:
.L2863:
.LBE9009:
.LBE9008:
.LBE9007:
.LBE9006:
.LBE8993:
	.loc 14 698 0
	mov	r0, r4
	mov	r1, r7
	mov	r2, r6
	mov	r3, r5
	.loc 14 699 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL2935:
	.loc 14 698 0
	b	flushPage
.LVL2936:
.L2881:
	.cfi_restore_state
.LBB9010:
.LBB8957:
.LBB8958:
	.loc 28 2427 0
	mov	r3, r3, lsr #16
.LVL2937:
	mov	r3, r3, asl #16
.LBE8958:
.LBE8957:
	.loc 14 632 0
	cmp	r8, r3
	bne	.L2854
	sub	r3, r2, #4
	add	r0, r2, #60
.LVL2938:
.L2865:
	.loc 14 637 0 discriminator 3
	str	r1, [r3, #4]!
.LVL2939:
	.loc 14 636 0 discriminator 3
	cmp	r3, r0
	bne	.L2865
.LVL2940:
	.loc 14 639 0
	add	r3, r3, #3
.LVL2941:
.LBB8959:
.LBB8960:
	.loc 15 95 0
	mov	r2, r2, lsr #5
.LVL2942:
	mov	r3, r3, lsr #5
.LVL2943:
	add	r3, r3, #1
	cmp	r3, r2
	bls	.L2863
.L2873:
.LVL2944:
	.loc 15 96 0
	mov	r1, r2, asl #5
.LVL2945:
.LBB8961:
.LBB8962:
	.loc 4 212 0
@ 212 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r1, c7, c11, 1
@ 0 "" 2
.LBB8963:
.LBB8964:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE8964:
.LBE8963:
.LBE8962:
.LBE8961:
	.loc 15 95 0
	add	r2, r2, #1
.LVL2946:
	cmp	r3, r2
	bne	.L2873
	b	.L2863
.LVL2947:
.L2856:
.LBE8960:
.LBE8959:
.LBE9010:
	.loc 14 693 0
	movw	r0, #:lower16:.LC142
	movw	r1, #:lower16:.LC23
	movt	r0, #:upper16:.LC142
	movt	r1, #:upper16:.LC23
	movw	r2, #693
	ldr	r3, .L2882
	bl	_fail
.LVL2948:
.L2883:
	.align	2
.L2882:
	.word	.LANCHOR4+4088
	.cfi_endproc
.LFE340:
	.size	unmapPage, .-unmapPage
	.align	2
	.global	Arch_finaliseCap
	.type	Arch_finaliseCap, %function
Arch_finaliseCap:
.LFB455:
	.loc 23 106 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2949:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 23 106 0
	add	ip, sp, #8
	mov	r4, r0
	stmdb	ip, {r1, r2}
	ldmia	sp, {r2, ip}
.LVL2950:
.LBB9061:
.LBB9062:
	.loc 28 1035 0
	and	r1, r2, #14
	cmp	r1, #14
	.loc 28 1037 0
	uxtbeq	r1, r2
	.loc 28 1036 0
	andne	r1, r2, #15
.LBE9062:
.LBE9061:
	.loc 23 107 0
	sub	r1, r1, #1
	cmp	r1, #8
	ldrls	pc, [pc, r1, asl #2]
	b	.L2887
.L2889:
	.word	.L2888
	.word	.L2887
	.word	.L2890
	.word	.L2887
	.word	.L2891
	.word	.L2887
	.word	.L2892
	.word	.L2887
	.word	.L2893
.L2892:
	.loc 23 123 0
	cmp	r3, #0
	beq	.L2887
.LVL2951:
.LBB9063:
.LBB9064:
	.loc 28 2007 0 discriminator 1
	and	r3, r2, #15
.LVL2952:
	cmp	r3, #7
	bne	.L2921
.LVL2953:
.LBE9064:
.LBE9063:
	.loc 23 123 0
	tst	ip, #1073741824
	beq	.L2887
.LVL2954:
	.loc 23 124 0
	bic	r2, r2, #1020
	ubfx	r0, ip, #12, #18
.LVL2955:
	bic	r2, r2, #3
	mov	r1, ip, asl #20
.LVL2956:
	bl	unmapPageTable
.LVL2957:
.L2887:
.LBB9066:
.LBB9067:
	.loc 28 1058 0
	mov	r3, #0
.LBE9067:
.LBE9066:
	.loc 23 151 0
	mov	r0, r4
.LBB9069:
.LBB9068:
	.loc 28 1058 0
	str	r3, [r4]
	str	r3, [r4, #4]
.LBE9068:
.LBE9069:
	.loc 23 151 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldmfd	sp!, {r4, pc}
.LVL2958:
.L2893:
	.cfi_restore_state
	.loc 23 116 0
	cmp	r3, #0
	beq	.L2887
.LVL2959:
.LBB9070:
.LBB9071:
	.loc 28 2176 0 discriminator 1
	and	r3, r2, #15
.LVL2960:
	cmp	r3, #9
	bne	.L2922
.LVL2961:
.LBE9071:
.LBE9070:
	.loc 23 116 0
	tst	r2, #16
	beq	.L2887
.LVL2962:
	.loc 23 117 0
	bic	r1, r2, #16320
	ubfx	r0, ip, #0, #18
.LVL2963:
	bic	r1, r1, #63
	bl	deleteASID
.LVL2964:
	b	.L2887
.LVL2965:
.L2888:
.LBB9073:
.LBB9074:
.LBB9075:
.LBB9076:
	.loc 28 1729 0
	and	r3, r2, #15
.LVL2966:
	cmp	r3, #1
	bne	.L2923
.LVL2967:
	.loc 28 1732 0
	mov	r1, r2, lsr #24
.LBE9076:
.LBE9075:
.LBB9078:
.LBB9079:
	.loc 28 1654 0
	mov	r3, ip, lsr #22
.LVL2968:
.LBE9079:
.LBE9078:
.LBE9074:
.LBE9073:
	.loc 23 132 0
	adds	r1, r3, r1, asl #10
	beq	.L2887
.LVL2969:
.LBB9082:
.LBB9083:
	.loc 28 1758 0
	bic	r3, r2, #-16777216
.LVL2970:
.LBE9083:
.LBE9082:
	.loc 23 133 0
	mov	r0, #0
.LVL2971:
.LBB9085:
.LBB9084:
	.loc 28 1758 0
	bic	r3, r3, #15
.LBE9084:
.LBE9085:
	.loc 23 133 0
	mov	r2, ip, asl #12
.LVL2972:
	mov	r3, r3, asl #8
	bl	unmapPage
.LVL2973:
	b	.L2887
.LVL2974:
.L2890:
.LBB9086:
.LBB9087:
.LBB9088:
.LBB9089:
	.loc 28 1893 0
	and	r3, r2, #15
.LVL2975:
	cmp	r3, #3
	bne	.L2924
.LVL2976:
	.loc 28 1896 0
	ubfx	r1, r2, #22, #8
.LBE9089:
.LBE9088:
.LBB9091:
.LBB9092:
	.loc 28 1818 0
	ubfx	r3, ip, #20, #10
.LBE9092:
.LBE9091:
.LBE9087:
.LBE9086:
	.loc 23 141 0
	adds	r1, r3, r1, asl #10
	beq	.L2887
.LVL2977:
.LBB9095:
.LBB9096:
	.loc 28 1922 0
	bic	r3, r2, #-268435441
.LBE9096:
.LBE9095:
	.loc 23 142 0
	mov	r0, ip, lsr #30
.LVL2978:
.LBB9098:
.LBB9097:
	.loc 28 1922 0
	bic	r3, r3, #264241152
.LBE9097:
.LBE9098:
	.loc 23 142 0
	mov	r2, ip, asl #14
.LVL2979:
	mov	r3, r3, asl #10
	bl	unmapPage
.LVL2980:
	b	.L2887
.LVL2981:
.L2891:
	.loc 23 109 0
	cmp	r3, #0
	beq	.L2887
.LVL2982:
.LBB9099:
.LBB9100:
	.loc 28 1953 0
	and	r3, r2, #15
.LVL2983:
	cmp	r3, #5
	bne	.L2925
.LVL2984:
.LBE9100:
.LBE9099:
	.loc 23 110 0
	ubfx	r0, ip, #0, #18
.LVL2985:
	bic	r1, r2, #15
	bl	deleteASIDPool
.LVL2986:
	b	.L2887
.LVL2987:
.L2923:
.LBB9102:
.LBB9081:
.LBB9080:
.LBB9077:
	.loc 28 1729 0
	movw	r0, #:lower16:.LC40
.LVL2988:
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC40
	movt	r1, #:upper16:.LC30
	movw	r2, #1730
	ldr	r3, .L2926
	bl	_assert_fail
.LVL2989:
.L2924:
.LBE9077:
.LBE9080:
.LBE9081:
.LBE9102:
.LBB9103:
.LBB9094:
.LBB9093:
.LBB9090:
	.loc 28 1893 0
	movw	r0, #:lower16:.LC41
.LVL2990:
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC41
	movt	r1, #:upper16:.LC30
	movw	r2, #1894
	ldr	r3, .L2926+4
	bl	_assert_fail
.LVL2991:
.L2925:
.LBE9090:
.LBE9093:
.LBE9094:
.LBE9103:
.LBB9104:
.LBB9101:
	bl	cap_asid_pool_cap_get_capASIDBase.part.147
.LVL2992:
.L2922:
.LBE9101:
.LBE9104:
.LBB9105:
.LBB9072:
	bl	cap_page_directory_cap_get_capPDIsMapped.isra.135.part.136
.LVL2993:
.L2921:
.LBE9072:
.LBE9105:
.LBB9106:
.LBB9065:
	bl	cap_page_table_cap_get_capPTIsMapped.part.101
.LVL2994:
.L2927:
	.align	2
.L2926:
	.word	.LANCHOR7-4084
	.word	.LANCHOR7-4040
.LBE9065:
.LBE9106:
	.cfi_endproc
.LFE455:
	.size	Arch_finaliseCap, .-Arch_finaliseCap
	.align	2
	.type	makeUserPDE.constprop.274, %function
makeUserPDE.constprop.274:
.LFB954:
	.loc 14 1032 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2995:
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 14 1032 0
	mov	r7, r0
	.loc 14 1038 0
	ldr	r0, [sp, #28]
.LVL2996:
	.loc 14 1032 0
	mov	r4, r1
	mov	r6, r2
	mov	r8, r3
.LVL2997:
	.loc 14 1038 0
	bl	APFromVMRights
.LVL2998:
	.loc 14 1040 0
	cmp	r7, #2
	.loc 14 1032 0
	ldr	r5, [sp, #24]
	.loc 14 1040 0
	beq	.L2942
	cmp	r7, #3
	.loc 14 1046 0
	moveq	r2, #1
	.loc 14 1040 0
	beq	.L2930
	.loc 14 1050 0
	movw	r0, #:lower16:.LC143
.LVL2999:
	movw	r1, #:lower16:.LC23
	movt	r0, #:upper16:.LC143
	movt	r1, #:upper16:.LC23
	movw	r2, #1050
	ldr	r3, .L2946
	bl	_fail
.LVL3000:
.L2942:
	.loc 14 1042 0
	mov	r2, #0
.L2930:
.LVL3001:
	.loc 14 1053 0
	cmp	r8, #0
.LBB9111:
.LBB9112:
	.loc 28 895 0
	ubfx	r3, r4, #0, #20
.LBE9112:
.LBE9111:
	.loc 14 1053 0
	bne	.L2945
.LVL3002:
.LBB9114:
.LBB9115:
	.loc 28 895 0
	cmp	r3, #0
	bne	.L2938
	.loc 28 896 0
	mov	r4, r4, lsr #20
.LVL3003:
	.loc 28 913 0
	bics	r3, r0, #3
	.loc 28 899 0
	mov	r2, r2, asl #18
	.loc 28 896 0
	mov	r4, r4, asl #20
.LVL3004:
	.loc 28 913 0
	bne	.L2939
	.loc 28 916 0
	bics	r3, r6, #1
	.loc 28 914 0
	mov	r0, r0, asl #10
.LVL3005:
	.loc 28 916 0
	bne	.L2940
	.loc 28 922 0
	bics	r3, r5, #1
	.loc 28 917 0
	mov	r6, r6, asl #9
.LVL3006:
	.loc 28 922 0
	bne	.L2941
.LVL3007:
	.loc 28 923 0
	mov	r5, r5, asl #4
.LVL3008:
	orr	r5, r5, #196608
	orr	r5, r5, #2
	orr	r5, r5, r6
	orr	r4, r5, r4
.LVL3009:
	orr	r4, r4, r0
	.loc 28 932 0
	orr	r0, r4, r2
.LVL3010:
.LBE9115:
.LBE9114:
	.loc 14 1070 0
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL3011:
.L2945:
.LBB9116:
.LBB9113:
	.loc 28 895 0
	cmp	r3, #0
	bne	.L2938
	.loc 28 896 0
	mov	r4, r4, lsr #20
.LVL3012:
	.loc 28 913 0
	bics	r3, r0, #3
	.loc 28 899 0
	mov	r2, r2, asl #18
	.loc 28 896 0
	mov	r4, r4, asl #20
.LVL3013:
	.loc 28 913 0
	bne	.L2939
	.loc 28 916 0
	bics	r3, r6, #1
	.loc 28 914 0
	mov	r0, r0, asl #10
.LVL3014:
	.loc 28 916 0
	bne	.L2940
	.loc 28 922 0
	bics	r3, r5, #1
	.loc 28 917 0
	mov	r6, r6, asl #9
.LVL3015:
	.loc 28 922 0
	bne	.L2941
.LVL3016:
	.loc 28 923 0
	mov	r5, r5, asl #4
.LVL3017:
	orr	r5, r5, #151552
	orr	r5, r5, #6
	orr	r6, r5, r6
.LVL3018:
	orr	r4, r6, r4
.LVL3019:
	orr	r4, r4, r0
	.loc 28 932 0
	orr	r0, r4, r2
.LVL3020:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL3021:
.L2938:
	bl	pde_pde_section_new.part.115
.LVL3022:
.L2939:
	.loc 28 913 0
	movw	r0, #:lower16:.LC141
.LVL3023:
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC141
	movt	r1, #:upper16:.LC30
	movw	r2, #913
	ldr	r3, .L2946+4
	bl	_assert_fail
.LVL3024:
.L2940:
	.loc 28 916 0
	movw	r0, #:lower16:.LC144
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC144
	movt	r1, #:upper16:.LC30
	mov	r2, #916
	ldr	r3, .L2946+4
	bl	_assert_fail
.LVL3025:
.L2941:
	.loc 28 922 0
	movw	r0, #:lower16:.LC145
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC145
	movt	r1, #:upper16:.LC30
	movw	r2, #922
	ldr	r3, .L2946+4
	bl	_assert_fail
.LVL3026:
.L2947:
	.align	2
.L2946:
	.word	.LANCHOR7-4000
	.word	.LANCHOR4+1168
.LBE9113:
.LBE9116:
	.cfi_endproc
.LFE954:
	.size	makeUserPDE.constprop.274, .-makeUserPDE.constprop.274
	.align	2
	.type	createSafeMappingEntries_PDE, %function
createSafeMappingEntries_PDE:
.LFB359:
	.loc 14 1296 0
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3027:
	.loc 14 1302 0
	cmp	r3, #2
	.loc 14 1296 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 32
	.loc 14 1296 0
	mov	r4, r0
	ldr	ip, [sp, #36]
.LVL3028:
	ldr	r5, [sp, #40]
	.loc 14 1302 0
	beq	.L2950
	cmp	r3, #3
	bne	.L2970
.LVL3029:
.LBB9141:
.LBB9142:
	.loc 14 439 0
	mov	r2, r2, lsr #20
.LVL3030:
.LBE9142:
.LBE9141:
	.loc 14 1335 0
	ldr	r0, [sp, #32]
.LVL3031:
.LBB9144:
.LBB9145:
	.loc 28 327 0
	ubfx	lr, ip, #2, #1
.LBE9145:
.LBE9144:
.LBB9146:
.LBB9143:
	.loc 14 440 0
	add	r5, r5, r2, asl #2
.LVL3032:
.LBE9143:
.LBE9146:
	.loc 14 1335 0
	str	lr, [sp]
	ubfx	r2, ip, #1, #1
.LVL3033:
	str	r0, [sp, #4]
	mov	r0, r3
	and	r3, ip, #1
.LVL3034:
	bl	makeUserPDE.constprop.274
.LVL3035:
	sub	r2, r5, #4
	add	ip, r5, #60
	str	r0, [r4, #4]
.LVL3036:
	b	.L2959
.LVL3037:
.L2956:
	.loc 14 1342 0 discriminator 2
	cmp	r2, ip
	beq	.L2971
.LVL3038:
.L2959:
	ldr	r3, [r2, #4]!
.LVL3039:
	.loc 14 1345 0
	ands	r1, r3, #3
	beq	.L2956
	.loc 14 1345 0 is_stmt 0 discriminator 1
	cmp	r1, #2
	bne	.L2957
.LVL3040:
	.loc 14 1345 0
	tst	r3, #262144
	bne	.L2956
.LVL3041:
.L2957:
	.loc 14 1348 0 is_stmt 1
	movw	r3, #:lower16:current_syscall_error
.LVL3042:
	mov	r0, #8
	movt	r3, #:upper16:current_syscall_error
	.loc 14 1352 0
	mov	r1, #3
	mov	r2, #16
.LVL3043:
	str	r5, [r4, #8]
	.loc 14 1348 0
	str	r0, [r3, #24]
.LVL3044:
	.loc 14 1352 0
	str	r1, [r4]
	str	r2, [r4, #12]
	b	.L2948
.LVL3045:
.L2970:
	.loc 14 1360 0
	movw	r0, #:lower16:.LC147
.LVL3046:
	movw	r1, #:lower16:.LC23
.LVL3047:
	movt	r0, #:upper16:.LC147
	movt	r1, #:upper16:.LC23
	mov	r2, #1360
.LVL3048:
	ldr	r3, .L2973
.LVL3049:
	bl	_fail
.LVL3050:
.L2950:
	.loc 14 1309 0
	ldr	r0, [sp, #32]
.LVL3051:
.LBB9147:
.LBB9148:
	.loc 14 439 0
	mov	r6, r2, lsr #20
.LVL3052:
.LBE9148:
.LBE9147:
.LBB9150:
.LBB9151:
	.loc 28 327 0
	ubfx	r2, ip, #2, #1
.LVL3053:
.LBE9151:
.LBE9150:
	.loc 14 1309 0
	str	r2, [sp]
	ubfx	r2, ip, #1, #1
	str	r0, [sp, #4]
	mov	r0, r3
	and	r3, ip, #1
.LVL3054:
.LBB9152:
.LBB9149:
	.loc 14 440 0
	add	r7, r5, r6, asl #2
.LVL3055:
.LBE9149:
.LBE9152:
	.loc 14 1309 0
	bl	makeUserPDE.constprop.274
.LVL3056:
.LBB9153:
.LBB9154:
	.loc 28 788 0
	ldr	r3, [r5, r6, asl #2]
.LBE9154:
.LBE9153:
	.loc 14 1309 0
	str	r0, [r4, #4]
.LVL3057:
	.loc 14 1318 0
	ands	r2, r3, #3
	bne	.L2972
.L2952:
.LVL3058:
	.loc 14 1329 0
	mov	r2, #0
	mov	r3, #1
.LVL3059:
	str	r7, [r4, #8]
	str	r2, [r4]
	str	r3, [r4, #12]
.LVL3060:
.L2948:
	.loc 14 1363 0
	mov	r0, r4
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL3061:
.L2971:
	.cfi_restore_state
	.loc 14 1357 0
	mov	r2, #0
	mov	r3, #16
.LVL3062:
	.loc 14 1363 0
	mov	r0, r4
	.loc 14 1357 0
	str	r5, [r4, #8]
	str	r2, [r4]
	str	r3, [r4, #12]
	.loc 14 1363 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL3063:
.L2972:
	.cfi_restore_state
	.loc 14 1318 0 discriminator 1
	cmp	r2, #2
	bne	.L2953
.LVL3064:
	.loc 14 1318 0 is_stmt 0
	tst	r3, #262144
	beq	.L2952
.LVL3065:
.L2953:
	.loc 14 1321 0 is_stmt 1
	movw	r3, #:lower16:current_syscall_error
.LVL3066:
	mov	r0, #8
	movt	r3, #:upper16:current_syscall_error
	.loc 14 1325 0
	mov	r1, #3
	mov	r2, #1
	str	r7, [r4, #8]
	.loc 14 1321 0
	str	r0, [r3, #24]
.LVL3067:
	.loc 14 1325 0
	str	r1, [r4]
	str	r2, [r4, #12]
	b	.L2948
.L2974:
	.align	2
.L2973:
	.word	.LANCHOR7-3960
	.cfi_endproc
.LFE359:
	.size	createSafeMappingEntries_PDE, .-createSafeMappingEntries_PDE
	.section	.boot.text
	.align	2
	.global	map_it_frame_cap
	.type	map_it_frame_cap, %function
map_it_frame_cap:
.LFB321:
	.loc 14 111 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3068:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #36
	.cfi_def_cfa_offset 56
	.loc 14 111 0
	stmia	sp, {r2, r3}
.LBB9207:
.LBB9208:
	.loc 28 2162 0
	and	r3, r0, #15
.LVL3069:
	cmp	r3, #9
.LBE9208:
.LBE9207:
	.loc 14 111 0
	add	ip, sp, #8
.LVL3070:
	mov	r5, sp
	stmia	ip, {r0, r1}
.LVL3071:
.LBB9213:
.LBB9209:
	.loc 28 2162 0
	bne	.L3005
.LVL3072:
.LBE9209:
.LBE9213:
.LBB9214:
.LBB9215:
.LBB9216:
.LBB9217:
	.loc 28 1035 0
	and	r6, r2, #14
.LBE9217:
.LBE9216:
.LBE9215:
.LBE9214:
.LBB9230:
.LBB9210:
	.loc 28 2165 0
	bic	lr, r0, #16320
.LBE9210:
.LBE9230:
.LBB9231:
.LBB9226:
.LBB9220:
.LBB9218:
	.loc 28 1035 0
	cmp	r6, #14
.LBE9218:
.LBE9220:
.LBE9226:
.LBE9231:
.LBB9232:
.LBB9211:
	.loc 28 2165 0
	bic	lr, lr, #63
.LVL3073:
.LBE9211:
.LBE9232:
.LBB9233:
.LBB9227:
.LBB9221:
.LBB9219:
	.loc 28 1037 0
	uxtbeq	r3, r2
	.loc 28 1036 0
	andne	r3, r2, #15
.LVL3074:
.LBE9219:
.LBE9221:
	.loc 38 207 0
	and	r1, r3, #253
	cmp	r1, #1
	bne	.L3006
	.loc 38 210 0
	cmp	r3, #1
	beq	.L2981
	cmp	r3, #3
	beq	.L2982
	.loc 38 218 0
	mov	ip, #0
.LVL3075:
.L2980:
.LBE9227:
.LBE9233:
.LBB9234:
.LBB9235:
.LBB9236:
.LBB9237:
	.loc 28 1035 0
	cmp	r6, #14
	ldr	r4, [sp, #4]
.LVL3076:
	.loc 28 1037 0
	uxtbeq	r1, r2
	.loc 28 1036 0
	andne	r1, r2, #15
.LVL3077:
.LBE9237:
.LBE9236:
	.loc 38 255 0
	and	r0, r1, #253
.LVL3078:
	cmp	r0, #1
	bne	.L3007
	.loc 38 258 0
	cmp	r1, #1
.LBB9238:
.LBB9239:
	.loc 28 1703 0
	and	r7, r2, #15
.LBE9239:
.LBE9238:
	.loc 38 258 0
	beq	.L3008
.LVL3079:
.LBB9241:
.LBB9242:
	.loc 28 1867 0
	cmp	r7, #3
	.loc 28 1870 0
	moveq	r4, r4, asl #14
.LVL3080:
	.loc 28 1867 0
	bne	.L3009
.LVL3081:
.L2990:
	ldmia	r5, {r0, r1}
.LVL3082:
.LBE9242:
.LBE9241:
.LBE9235:
.LBE9234:
.LBB9249:
.LBB9250:
.LBB9251:
.LBB9252:
	.loc 28 1035 0
	cmp	r6, #14
	add	r3, sp, #16
	stmia	r3, {r0, r1}
.LVL3083:
	.loc 28 1037 0
	uxtbeq	r1, r2
	.loc 28 1036 0
	movne	r1, r7
.LVL3084:
.LBE9252:
.LBE9251:
	.loc 38 143 0
	and	r0, r1, #253
	cmp	r0, #1
	bne	.L3010
	.loc 38 146 0
	cmp	r1, #1
	beq	.L3011
	str	r2, [sp, #16]
.LBB9253:
.LBB9254:
.LBB9255:
.LBB9256:
	.loc 28 1893 0
	cmp	r7, #3
	ldmia	r3, {r0, r1}
.LVL3085:
	add	r3, sp, #32
	stmdb	r3, {r0, r1}
.LVL3086:
	bne	.L3012
.LVL3087:
.LBE9256:
.LBE9255:
.LBB9259:
.LBB9260:
	.loc 28 1818 0
	ldr	r3, [sp, #28]
.LBE9260:
.LBE9259:
.LBB9262:
.LBB9257:
	.loc 28 1896 0
	ubfx	r2, r2, #22, #8
.LVL3088:
.LBE9257:
.LBE9262:
.LBB9263:
.LBB9261:
	.loc 28 1818 0
	ubfx	r3, r3, #20, #10
.LBE9261:
.LBE9263:
	.loc 38 132 0
	add	r2, r3, r2, asl #10
.LVL3089:
.L2997:
.LBE9254:
.LBE9253:
.LBE9250:
.LBE9249:
	.loc 14 118 0
	cmp	r2, #0
	beq	.L3013
.LVL3090:
	.loc 14 120 0
	mov	r3, r4, lsr #20
.LBB9278:
.LBB9279:
	.loc 28 877 0
	ldr	r3, [lr, r3, asl #2]
	and	r2, r3, #3
	cmp	r2, #1
	bne	.L3014
.LVL3091:
.LBE9279:
.LBE9278:
	.loc 14 124 0
	ldr	r2, [sp, #56]
.LBB9283:
.LBB9280:
	.loc 28 880 0
	bic	r3, r3, #1020
.LVL3092:
.LBE9280:
.LBE9283:
	.loc 14 124 0
	clz	r2, r2
	mov	r2, r2, lsr #5
	.loc 14 123 0
	ubfx	r4, r4, #12, #8
.LVL3093:
.LBB9284:
.LBB9281:
	.loc 28 880 0
	bic	r3, r3, #3
	orr	r2, r2, #2096
.LBE9281:
.LBE9284:
	.loc 14 124 0
	add	r3, r3, r4, asl #2
.LBB9285:
.LBB9286:
	.loc 28 2485 0
	add	ip, ip, #536870912
.LVL3094:
	orr	r2, r2, #14
.LBE9286:
.LBE9285:
	.loc 14 124 0
	add	r3, r3, #-536870912
.LBB9288:
.LBB9287:
	.loc 28 2512 0
	orr	r2, r2, ip
.LBE9287:
.LBE9288:
	.loc 14 124 0
	str	r2, [r3]
	.loc 14 135 0
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL3095:
.L2982:
	.cfi_restore_state
.LBB9289:
.LBB9228:
.LBB9222:
.LBB9223:
	.loc 28 1919 0
	and	r3, r2, #15
.LVL3096:
	cmp	r3, #3
	.loc 28 1922 0
	biceq	ip, r2, #-268435441
	biceq	ip, ip, #264241152
	moveq	ip, ip, asl #10
	.loc 28 1919 0
	beq	.L2980
	bl	cap_frame_cap_get_capFBasePtr.isra.87.part.88
.LVL3097:
.L2981:
.LBE9223:
.LBE9222:
.LBB9224:
.LBB9225:
	.loc 28 1755 0
	and	r3, r2, #15
.LVL3098:
	cmp	r3, #1
	.loc 28 1758 0
	biceq	ip, r2, #-16777216
	biceq	ip, ip, #15
	moveq	ip, ip, asl #8
	.loc 28 1755 0
	beq	.L2980
	bl	cap_small_frame_cap_get_capFBasePtr.isra.85.part.86
.LVL3099:
.L3008:
.LBE9225:
.LBE9224:
.LBE9228:
.LBE9289:
.LBB9290:
.LBB9246:
.LBB9244:
.LBB9240:
	.loc 28 1703 0
	cmp	r7, #1
	.loc 28 1706 0
	moveq	r4, r4, asl #12
.LVL3100:
	.loc 28 1703 0
	beq	.L2990
	bl	cap_small_frame_cap_get_capFMappedAddress.part.104
.LVL3101:
.L3011:
	ldr	r3, [sp, #20]
.LVL3102:
.LBE9240:
.LBE9244:
.LBE9246:
.LBE9290:
.LBB9291:
.LBB9275:
.LBB9266:
.LBB9267:
.LBB9268:
.LBB9269:
	.loc 28 1729 0
	cmp	r7, #1
	.loc 28 1732 0
	moveq	r2, r2, lsr #24
.LVL3103:
.LBE9269:
.LBE9268:
.LBB9271:
.LBB9272:
	.loc 28 1654 0
	moveq	r3, r3, lsr #22
.LVL3104:
.LBE9272:
.LBE9271:
	.loc 38 116 0
	addeq	r2, r3, r2, asl #10
.LBB9273:
.LBB9270:
	.loc 28 1729 0
	beq	.L2997
	movw	r0, #:lower16:.LC40
	movw	r1, #:lower16:.LC30
.LVL3105:
	movt	r0, #:upper16:.LC40
	movt	r1, #:upper16:.LC30
	movw	r2, #1730
	ldr	r3, .L3015
	bl	_assert_fail
.LVL3106:
.L3006:
.LBE9270:
.LBE9273:
.LBE9267:
.LBE9266:
.LBE9275:
.LBE9291:
.LBB9292:
.LBB9229:
	bl	generic_frame_cap_get_capFBasePtr.isra.89.part.90
.LVL3107:
.L3005:
.LBE9229:
.LBE9292:
.LBB9293:
.LBB9212:
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.93.part.94
.LVL3108:
.L3007:
.LBE9212:
.LBE9293:
.LBB9294:
.LBB9247:
	bl	generic_frame_cap_get_capFMappedAddress.part.106
.LVL3109:
.L3013:
.LBE9247:
.LBE9294:
	.loc 14 118 0 discriminator 1
	movw	r0, #:lower16:.LC148
	movw	r1, #:lower16:.LC23
	movt	r0, #:upper16:.LC148
	movt	r1, #:upper16:.LC23
	mov	r2, #118
	ldr	r3, .L3015+4
	bl	_assert_fail
.LVL3110:
.L3010:
.LBB9295:
.LBB9276:
	bl	generic_frame_cap_get_capFMappedASID.part.110
.LVL3111:
.L3014:
.LBE9276:
.LBE9295:
.LBB9296:
.LBB9282:
	bl	pde_pde_coarse_ptr_get_address.part.111
.LVL3112:
.L3009:
.LBE9282:
.LBE9296:
.LBB9297:
.LBB9248:
.LBB9245:
.LBB9243:
	bl	cap_frame_cap_get_capFMappedAddress.part.105
.LVL3113:
.L3012:
.LBE9243:
.LBE9245:
.LBE9248:
.LBE9297:
.LBB9298:
.LBB9277:
.LBB9274:
.LBB9265:
.LBB9264:
.LBB9258:
	.loc 28 1893 0
	movw	r0, #:lower16:.LC41
.LVL3114:
	movw	r1, #:lower16:.LC30
.LVL3115:
	movt	r0, #:upper16:.LC41
	movt	r1, #:upper16:.LC30
	movw	r2, #1894
.LVL3116:
	ldr	r3, .L3015+8
	bl	_assert_fail
.LVL3117:
.L3016:
	.align	2
.L3015:
	.word	.LANCHOR7-4084
	.word	.LANCHOR7-3928
	.word	.LANCHOR7-4040
.LBE9258:
.LBE9264:
.LBE9265:
.LBE9274:
.LBE9277:
.LBE9298:
	.cfi_endproc
.LFE321:
	.size	map_it_frame_cap, .-map_it_frame_cap
	.align	2
	.global	create_mapped_it_frame_cap
	.type	create_mapped_it_frame_cap, %function
create_mapped_it_frame_cap:
.LFB304:
	.loc 47 173 0
	.cfi_startproc
	@ args = 16, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3118:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 32
	.loc 47 173 0
	ldr	ip, [sp, #40]
	add	r4, sp, #8
	mov	r5, r0
	ldr	r6, [sp, #44]
	stmia	r4, {r1, r2}
	.loc 47 174 0
	mov	r1, r3
	str	ip, [sp]
	ldr	r2, [sp, #32]
	ldr	r3, [sp, #36]
.LVL3119:
	bl	create_it_frame_cap
.LVL3120:
	.loc 47 175 0
	str	r6, [sp]
	ldmia	r4, {r0, r1}
	ldmia	r5, {r2, r3}
	bl	map_it_frame_cap
.LVL3121:
	.loc 47 177 0
	mov	r0, r5
	add	sp, sp, #16
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
	.cfi_endproc
.LFE304:
	.size	create_mapped_it_frame_cap, .-create_mapped_it_frame_cap
	.align	2
	.global	create_bi_frame_cap
	.type	create_bi_frame_cap, %function
create_bi_frame_cap:
.LFB498:
	.loc 25 234 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3122:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #44
	.cfi_def_cfa_offset 64
	.loc 25 234 0
	ldr	r7, [sp, #68]
	add	ip, sp, #16
	.loc 25 238 0
	mov	lr, #0
	.loc 25 234 0
	add	r5, sp, #24
	.loc 25 238 0
	add	r4, sp, #32
	mov	r6, #1
	.loc 25 234 0
	stmia	r5, {r0, r1}
	.loc 25 238 0
	mov	r0, r4
	.loc 25 234 0
	stmia	ip, {r2, r3}
	.loc 25 238 0
	str	r7, [sp]
	ldr	r3, [sp, #64]
	ldmia	ip, {r1, r2}
	stmib	sp, {r6, lr}
	str	lr, [sp, #12]
	bl	create_mapped_it_frame_cap
.LVL3123:
	ldr	r0, [sp, #24]
.LVL3124:
	ldr	r2, [sp, #28]
.LVL3125:
.LBB9339:
.LBB9340:
.LBB9341:
.LBB9342:
	.loc 28 1035 0
	and	r3, r0, #14
	cmp	r3, #14
	beq	.L3020
	.loc 28 1036 0
	and	r3, r0, #15
.LVL3126:
.LBE9342:
.LBE9341:
	.loc 39 317 0
	sub	r1, r3, #2
	cmp	r1, #12
	ldrls	pc, [pc, r1, asl #2]
	b	.L3021
.L3023:
	.word	.L3022
	.word	.L3021
	.word	.L3024
	.word	.L3021
	.word	.L3025
	.word	.L3021
	.word	.L3066
	.word	.L3021
	.word	.L3027
	.word	.L3021
	.word	.L3028
	.word	.L3021
	.word	.L3066
.LVL3127:
.L3020:
.LBB9344:
.LBB9343:
	.loc 28 1037 0
	uxtb	r3, r0
.LVL3128:
.LBE9343:
.LBE9344:
	.loc 39 317 0
	sub	r1, r3, #2
	cmp	r1, #60
	ldrls	pc, [pc, r1, asl #2]
	b	.L3029
.L3031:
	.word	.L3030
	.word	.L3029
	.word	.L3032
	.word	.L3029
	.word	.L3033
	.word	.L3029
	.word	.L3066
	.word	.L3029
	.word	.L3034
	.word	.L3029
	.word	.L3035
	.word	.L3029
	.word	.L3066
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3066
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3036
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3029
	.word	.L3066
.LVL3129:
.L3066:
.LBB9345:
.LBB9346:
	.loc 38 302 0
	mov	r0, #144
.LVL3130:
.L3026:
.LBE9346:
.LBE9345:
.LBE9340:
.LBE9339:
	.loc 25 239 0
	ldmia	r4, {r1, r2}
	bl	write_slot
.LVL3131:
	.loc 25 240 0
	add	sp, sp, #44
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL3132:
.L3034:
	.cfi_restore_state
	and	r3, r0, #15
.LVL3133:
.L3027:
.LBB9398:
.LBB9395:
.LBB9366:
.LBB9367:
	.loc 28 1577 0
	cmp	r3, #10
	.loc 28 1580 0
	biceq	r0, r0, #31
.LVL3134:
	addeq	r0, r0, #144
	.loc 28 1577 0
	beq	.L3026
	bl	cap_cnode_cap_get_capCNodePtr.isra.78.part.79
.LVL3135:
.L3035:
	and	r3, r0, #15
.LVL3136:
.L3028:
.LBE9367:
.LBE9366:
.LBB9368:
.LBB9369:
	.loc 28 1608 0
	cmp	r3, #12
.LBE9369:
.LBE9368:
	.loc 39 331 0
	biceq	r0, r0, #508
.LVL3137:
	biceq	r0, r0, #3
	addeq	r0, r0, #144
.LBB9371:
.LBB9370:
	.loc 28 1608 0
	beq	.L3026
	bl	cap_thread_cap_get_capTCBPtr.isra.59.part.60
.LVL3138:
.L3030:
	and	r3, r0, #15
.LVL3139:
.L3022:
.LBE9370:
.LBE9371:
.LBB9372:
.LBB9373:
	.loc 28 1142 0
	cmp	r3, #2
	bne	.L3070
.LVL3140:
.L3061:
.LBE9373:
.LBE9372:
.LBB9375:
.LBB9363:
.LBB9347:
.LBB9348:
	.loc 28 1970 0
	bic	r0, r0, #15
.LVL3141:
.LBE9348:
.LBE9347:
.LBE9363:
.LBE9375:
.LBE9395:
.LBE9398:
	.loc 25 239 0
	ldmia	r4, {r1, r2}
	add	r0, r0, #144
	bl	write_slot
.LVL3142:
	.loc 25 240 0
	add	sp, sp, #44
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL3143:
.L3032:
	.cfi_restore_state
	and	r3, r0, #15
.LVL3144:
.L3024:
.LBB9399:
.LBB9396:
.LBB9376:
.LBB9377:
	.loc 28 1185 0
	cmp	r3, #4
	.loc 28 1188 0
	biceq	r0, r2, #15
.LVL3145:
	addeq	r0, r0, #144
	.loc 28 1185 0
	beq	.L3026
	bl	cap_endpoint_cap_get_capEPPtr.part.77
.LVL3146:
.L3033:
	and	r3, r0, #15
.LVL3147:
.L3025:
.LBE9377:
.LBE9376:
.LBB9378:
.LBB9379:
	.loc 28 1407 0
	cmp	r3, #6
	beq	.L3061
	bl	cap_notification_cap_get_capNtfnPtr.isra.68.part.69
.LVL3148:
.L3021:
.LBE9379:
.LBE9378:
.LBB9380:
.LBB9364:
	.loc 38 302 0
	sub	r2, r3, #1
.LVL3149:
	cmp	r2, #8
	ldrls	pc, [pc, r2, asl #2]
	b	.L3066
.L3045:
	.word	.L3044
	.word	.L3066
	.word	.L3044
	.word	.L3066
	.word	.L3046
	.word	.L3066
	.word	.L3047
	.word	.L3066
	.word	.L3048
.LVL3150:
.L3036:
.LBE9364:
.LBE9380:
.LBB9381:
.LBB9382:
.LBB9383:
.LBB9384:
.LBB9385:
.LBB9386:
	.loc 28 2318 0
	cmp	r3, #46
	bne	.L3071
	.loc 28 2321 0
	ubfx	r0, r0, #8, #6
.LVL3151:
.LBE9386:
.LBE9385:
	.loc 39 97 0
	cmp	r0, #32
	.loc 39 100 0
	andne	r0, r0, #31
.LVL3152:
	mvnne	r1, #0
	addne	r3, r0, #1
.LVL3153:
	.loc 39 97 0
	mvneq	r0, #31
.LVL3154:
	movne	r0, r1, asl r3
.LBE9384:
.LBE9383:
	.loc 39 114 0
	and	r0, r0, r2
.LBE9382:
.LBE9381:
.LBE9396:
.LBE9399:
	.loc 25 239 0
	ldmia	r4, {r1, r2}
.LVL3155:
	add	r0, r0, #144
	bl	write_slot
.LVL3156:
	.loc 25 240 0
	add	sp, sp, #44
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL3157:
.L3052:
	.cfi_restore_state
	and	r3, r0, #15
.LVL3158:
.L3048:
.LBB9400:
.LBB9397:
.LBB9392:
.LBB9365:
.LBB9350:
.LBB9351:
	.loc 28 2162 0
	cmp	r3, #9
	.loc 28 2165 0
	biceq	r0, r0, #16320
.LVL3159:
	biceq	r0, r0, #63
	addeq	r0, r0, #144
	.loc 28 2162 0
	beq	.L3026
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.93.part.94
.LVL3160:
.L3051:
	and	r3, r0, #15
.LVL3161:
.L3047:
.LBE9351:
.LBE9350:
.LBB9352:
.LBB9353:
	.loc 28 2098 0
	cmp	r3, #7
	.loc 28 2101 0
	biceq	r0, r0, #1020
.LVL3162:
	biceq	r0, r0, #3
	addeq	r0, r0, #144
	.loc 28 2098 0
	beq	.L3026
	bl	cap_page_table_cap_get_capPTBasePtr.isra.91.part.92
.LVL3163:
.L3050:
	and	r3, r0, #15
.LVL3164:
.L3046:
.LBE9353:
.LBE9352:
.LBB9354:
.LBB9349:
	.loc 28 1967 0
	cmp	r3, #5
	beq	.L3061
	bl	cap_asid_pool_cap_get_capASIDPool.isra.95.part.96
.LVL3165:
.L3044:
.LBE9349:
.LBE9354:
.LBB9355:
.LBB9356:
	.loc 38 207 0
	and	r2, r3, #253
	cmp	r2, #1
	bne	.L3072
	.loc 38 210 0
	cmp	r3, #1
	beq	.L3055
	cmp	r3, #3
	bne	.L3066
.LVL3166:
.LBB9357:
.LBB9358:
	.loc 28 1919 0
	and	r3, r0, #15
.LVL3167:
	cmp	r3, #3
	.loc 28 1922 0
	biceq	r0, r0, #-268435441
.LVL3168:
	biceq	r0, r0, #264241152
	moveq	r0, r0, asl #10
	addeq	r0, r0, #144
	.loc 28 1919 0
	beq	.L3026
	bl	cap_frame_cap_get_capFBasePtr.isra.87.part.88
.LVL3169:
.L3029:
.LBE9358:
.LBE9357:
.LBE9356:
.LBE9355:
	.loc 38 302 0
	sub	r2, r3, #1
.LVL3170:
	cmp	r2, #8
	ldrls	pc, [pc, r2, asl #2]
	b	.L3066
.L3049:
	.word	.L3044
	.word	.L3066
	.word	.L3044
	.word	.L3066
	.word	.L3050
	.word	.L3066
	.word	.L3051
	.word	.L3066
	.word	.L3052
.LVL3171:
.L3055:
.LBB9362:
.LBB9361:
.LBB9359:
.LBB9360:
	.loc 28 1755 0
	and	r3, r0, #15
.LVL3172:
	cmp	r3, #1
	.loc 28 1758 0
	biceq	r0, r0, #-16777216
.LVL3173:
	biceq	r0, r0, #15
	moveq	r0, r0, asl #8
	addeq	r0, r0, #144
	.loc 28 1755 0
	beq	.L3026
	bl	cap_small_frame_cap_get_capFBasePtr.isra.85.part.86
.LVL3174:
.L3072:
.LBE9360:
.LBE9359:
	bl	generic_frame_cap_get_capFBasePtr.isra.89.part.90
.LVL3175:
.L3071:
.LBE9361:
.LBE9362:
.LBE9365:
.LBE9392:
.LBB9393:
.LBB9391:
.LBB9390:
.LBB9389:
.LBB9388:
.LBB9387:
	bl	cap_zombie_cap_get_capZombieType.isra.80.part.81
.LVL3176:
.L3070:
.LBE9387:
.LBE9388:
.LBE9389:
.LBE9390:
.LBE9391:
.LBE9393:
.LBB9394:
.LBB9374:
	bl	cap_untyped_cap_get_capPtr.isra.75.part.76
.LVL3177:
.LBE9374:
.LBE9394:
.LBE9397:
.LBE9400:
	.cfi_endproc
.LFE498:
	.size	create_bi_frame_cap, .-create_bi_frame_cap
	.text
	.align	2
	.global	performPageInvocationUnmap
	.type	performPageInvocationUnmap, %function
performPageInvocationUnmap:
.LFB374:
	.loc 14 2176 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3178:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	sub	sp, sp, #48
	.cfi_def_cfa_offset 64
	.loc 14 2176 0
	stmia	sp, {r0, r1}
	mov	r4, r2
	add	lr, sp, #8
	add	r5, sp, #16
	ldmia	sp, {r0, r1}
	mov	ip, sp
.LBB9479:
.LBB9480:
.LBB9481:
.LBB9482:
.LBB9483:
	.loc 28 1035 0
	and	r6, r0, #14
	stmia	lr, {r0, r1}
	cmp	r6, #14
	stmia	r5, {r0, r1}
	.loc 28 1037 0
	uxtbeq	r2, r0
.LVL3179:
	.loc 28 1036 0
	andne	r2, r0, #15
	mov	r3, r0
.LVL3180:
.LBE9483:
.LBE9482:
	.loc 38 143 0
	and	r1, r2, #253
	cmp	r1, #1
	bne	.L3090
	.loc 38 146 0
	cmp	r2, #1
	beq	.L3126
.LBB9484:
.LBB9485:
.LBB9486:
.LBB9487:
	.loc 28 1893 0
	and	lr, r0, #15
	str	r0, [sp, #16]
	ldmia	r5, {r0, r1}
	cmp	lr, #3
	add	r2, sp, #24
.LVL3181:
	stmia	r2, {r0, r1}
.LVL3182:
	bne	.L3094
.LVL3183:
.LBE9487:
.LBE9486:
.LBB9490:
.LBB9491:
	.loc 28 1818 0
	ldr	r1, [sp, #28]
.LBE9491:
.LBE9490:
.LBB9493:
.LBB9488:
	.loc 28 1896 0
	ubfx	r2, r3, #22, #8
.LBE9488:
.LBE9493:
.LBB9494:
.LBB9492:
	.loc 28 1818 0
	ubfx	r1, r1, #20, #10
.LBE9492:
.LBE9494:
	.loc 38 132 0
	add	r2, r1, r2, asl #10
.LVL3184:
.L3079:
.LBE9485:
.LBE9484:
.LBE9481:
.LBE9480:
.LBE9479:
	.loc 14 2177 0
	cmp	r2, #0
	bne	.L3127
.LVL3185:
.L3081:
	ldr	r3, [r4]
.LVL3186:
	ldr	r0, [r4, #4]
.LVL3187:
.LBB9510:
.LBB9511:
.LBB9512:
.LBB9513:
.LBB9514:
.LBB9515:
	.loc 28 1035 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 28 1037 0
	uxtbeq	r2, r3
	.loc 28 1036 0
	andne	r2, r3, #15
.LVL3188:
.LBE9515:
.LBE9514:
	.loc 38 159 0
	and	r1, r2, #253
	cmp	r1, #1
	bne	.L3128
	.loc 38 162 0
	cmp	r2, #1
.LBB9516:
.LBB9517:
.LBB9518:
	.loc 28 1664 0
	and	r2, r3, #15
.LVL3189:
.LBE9518:
.LBE9517:
.LBE9516:
	.loc 38 162 0
	beq	.L3129
.LVL3190:
.LBB9523:
.LBB9524:
.LBB9525:
	.loc 28 1828 0
	cmp	r2, #3
.LBE9525:
.LBE9524:
.LBE9523:
.LBB9530:
.LBB9531:
	.loc 28 1885 0
	moveq	r2, #0
.LBE9531:
.LBE9530:
	.loc 38 169 0
	biceq	r3, r3, #1069547520
.LVL3191:
.LBB9533:
.LBB9532:
	.loc 28 1885 0
	movteq	r2, 49164
	andeq	r2, r2, r0
.LBE9532:
.LBE9533:
.LBB9534:
.LBB9528:
.LBB9526:
	.loc 28 1828 0
	bne	.L3130
.LVL3192:
.L3115:
.LBE9526:
.LBE9528:
.LBE9534:
.LBE9513:
.LBE9512:
.LBE9511:
.LBE9510:
	.loc 14 2187 0
	mov	r0, #0
.LBB9547:
.LBB9544:
	.loc 38 177 0
	str	r3, [r4]
.LVL3193:
	str	r2, [r4, #4]
.LBE9544:
.LBE9547:
	.loc 14 2187 0
	add	sp, sp, #48
	.cfi_remember_state
	.cfi_def_cfa_offset 16
.LVL3194:
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL3195:
.L3127:
	.cfi_restore_state
.LBB9548:
.LBB9549:
.LBB9550:
.LBB9551:
	.loc 28 1035 0
	cmp	r6, #14
	ldr	r2, [sp, #4]
.LVL3196:
	.loc 28 1037 0
	uxtbeq	r1, r3
	.loc 28 1036 0
	movne	r1, lr
.LVL3197:
.LBE9551:
.LBE9550:
	.loc 38 228 0
	and	r0, r1, #253
.LVL3198:
	cmp	r0, #1
	bne	.L3131
	.loc 38 231 0
	cmp	r1, #3
	bne	.L3122
.LVL3199:
.LBB9552:
.LBB9553:
	.loc 28 1801 0
	cmp	lr, #3
	.loc 28 1804 0
	moveq	r5, r2, lsr #30
	.loc 28 1801 0
	bne	.L3132
.LVL3200:
.L3085:
	ldmia	ip, {r0, r1}
.LVL3201:
.LBE9553:
.LBE9552:
.LBE9549:
.LBE9548:
.LBB9559:
.LBB9560:
.LBB9561:
.LBB9562:
	.loc 28 1035 0
	cmp	r6, #14
	add	ip, sp, #32
	stmia	ip, {r0, r1}
.LVL3202:
	.loc 28 1037 0
	uxtbeq	r1, r3
	.loc 28 1036 0
	movne	r1, lr
.LVL3203:
.LBE9562:
.LBE9561:
	.loc 38 143 0
	and	r0, r1, #253
	cmp	r0, #1
	bne	.L3090
	.loc 38 146 0
	cmp	r1, #1
	beq	.L3133
	str	r3, [sp, #32]
.LBB9563:
.LBB9564:
.LBB9565:
.LBB9566:
	.loc 28 1893 0
	cmp	lr, #3
	ldmia	ip, {r0, r1}
.LVL3204:
	add	ip, sp, #48
	stmdb	ip, {r0, r1}
.LVL3205:
	bne	.L3094
.LVL3206:
.LBE9566:
.LBE9565:
.LBB9568:
.LBB9569:
	.loc 28 1818 0
	ldr	r0, [sp, #44]
.LVL3207:
.LBE9569:
.LBE9568:
.LBB9571:
.LBB9567:
	.loc 28 1896 0
	ubfx	r1, r3, #22, #8
.LVL3208:
.LBE9567:
.LBE9571:
.LBB9572:
.LBB9570:
	.loc 28 1818 0
	ubfx	r0, r0, #20, #10
.LBE9570:
.LBE9572:
	.loc 38 132 0
	add	r1, r0, r1, asl #10
.LVL3209:
.L3093:
.LBE9564:
.LBE9563:
.LBE9560:
.LBE9559:
.LBB9582:
.LBB9583:
.LBB9584:
.LBB9585:
	.loc 28 1035 0
	cmp	r6, #14
	.loc 28 1037 0
	uxtbeq	r0, r3
	.loc 28 1036 0
	movne	r0, lr
.LVL3210:
.LBE9585:
.LBE9584:
	.loc 38 255 0
	and	ip, r0, #253
	cmp	ip, #1
	bne	.L3134
	.loc 38 258 0
	cmp	r0, #1
	beq	.L3135
.LVL3211:
.LBB9586:
.LBB9587:
	.loc 28 1867 0
	cmp	lr, #3
	.loc 28 1870 0
	moveq	r2, r2, asl #14
.LVL3212:
	.loc 28 1867 0
	bne	.L3136
.LVL3213:
.L3100:
.LBE9587:
.LBE9586:
.LBE9583:
.LBE9582:
.LBB9594:
.LBB9595:
.LBB9596:
.LBB9597:
	.loc 28 1035 0
	cmp	r6, #14
	.loc 28 1037 0
	uxtbeq	r0, r3
.LVL3214:
	.loc 28 1036 0
	movne	r0, lr
.LVL3215:
.LBE9597:
.LBE9596:
	.loc 38 207 0
	and	ip, r0, #253
	cmp	ip, #1
	bne	.L3137
	.loc 38 210 0
	cmp	r0, #1
	beq	.L3106
	cmp	r0, #3
	beq	.L3107
	mov	r3, #0
.LVL3216:
.L3105:
.LBE9595:
.LBE9594:
	.loc 14 2178 0
	mov	r0, r5
.LVL3217:
	bl	unmapPage
.LVL3218:
	b	.L3081
.LVL3219:
.L3122:
.LBB9605:
.LBB9556:
	.loc 38 233 0
	mov	r5, #0
	b	.L3085
.LVL3220:
.L3107:
.LBE9556:
.LBE9605:
.LBB9606:
.LBB9602:
.LBB9598:
.LBB9599:
	.loc 28 1919 0
	cmp	lr, #3
	.loc 28 1922 0
	biceq	r3, r3, #-268435441
.LVL3221:
	biceq	r3, r3, #264241152
	moveq	r3, r3, asl #10
	.loc 28 1919 0
	beq	.L3105
	bl	cap_frame_cap_get_capFBasePtr.isra.87.part.88
.LVL3222:
.L3126:
	ldr	r2, [sp, #20]
.LVL3223:
.LBE9599:
.LBE9598:
.LBE9602:
.LBE9606:
.LBB9607:
.LBB9508:
.LBB9506:
.LBB9497:
.LBB9498:
.LBB9499:
.LBB9500:
	.loc 28 1729 0
	and	lr, r0, #15
	cmp	lr, #1
	.loc 28 1732 0
	moveq	r1, r0, lsr #24
.LBE9500:
.LBE9499:
.LBB9502:
.LBB9503:
	.loc 28 1654 0
	moveq	r2, r2, lsr #22
.LVL3224:
.LBE9503:
.LBE9502:
	.loc 38 116 0
	addeq	r2, r2, r1, asl #10
.LBB9504:
.LBB9501:
	.loc 28 1729 0
	beq	.L3079
.LVL3225:
.L3092:
	movw	r0, #:lower16:.LC40
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC40
	movt	r1, #:upper16:.LC30
	movw	r2, #1730
	ldr	r3, .L3138
.LVL3226:
	bl	_assert_fail
.LVL3227:
.L3129:
.LBE9501:
.LBE9504:
.LBE9498:
.LBE9497:
.LBE9506:
.LBE9508:
.LBE9607:
.LBB9608:
.LBB9545:
.LBB9542:
.LBB9540:
.LBB9535:
.LBB9521:
.LBB9519:
	.loc 28 1664 0
	cmp	r2, #1
.LBE9519:
.LBE9521:
.LBE9535:
.LBB9536:
.LBB9537:
	.loc 28 1721 0
	andeq	r2, r0, #3145728
.LVL3228:
.LBE9537:
.LBE9536:
	.loc 38 165 0
	biceq	r3, r3, #-16777216
.LVL3229:
.LBB9538:
.LBB9522:
.LBB9520:
	.loc 28 1664 0
	beq	.L3115
	movw	r0, #:lower16:.LC40
.LVL3230:
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC40
	movt	r1, #:upper16:.LC30
	movw	r2, #1665
	ldr	r3, .L3138+4
	bl	_assert_fail
.LVL3231:
.L3106:
.LBE9520:
.LBE9522:
.LBE9538:
.LBE9540:
.LBE9542:
.LBE9545:
.LBE9608:
.LBB9609:
.LBB9603:
.LBB9600:
.LBB9601:
	.loc 28 1755 0
	cmp	lr, #1
	.loc 28 1758 0
	biceq	r3, r3, #-16777216
.LVL3232:
	biceq	r3, r3, #15
	moveq	r3, r3, asl #8
	.loc 28 1755 0
	beq	.L3105
	bl	cap_small_frame_cap_get_capFBasePtr.isra.85.part.86
.LVL3233:
.L3135:
.LBE9601:
.LBE9600:
.LBE9603:
.LBE9609:
.LBB9610:
.LBB9592:
.LBB9589:
.LBB9590:
	.loc 28 1703 0
	cmp	lr, #1
	.loc 28 1706 0
	moveq	r2, r2, asl #12
.LVL3234:
	.loc 28 1703 0
	beq	.L3100
	bl	cap_small_frame_cap_get_capFMappedAddress.part.104
.LVL3235:
.L3133:
.LBE9590:
.LBE9589:
.LBE9592:
.LBE9610:
.LBB9611:
.LBB9581:
.LBB9573:
.LBB9574:
.LBB9575:
.LBB9576:
	.loc 28 1729 0
	cmp	lr, #1
	ldr	r1, [sp, #36]
.LVL3236:
	bne	.L3092
.LVL3237:
.LBE9576:
.LBE9575:
.LBB9578:
.LBB9579:
	.loc 28 1654 0
	mov	r1, r1, lsr #22
.LVL3238:
.LBE9579:
.LBE9578:
.LBB9580:
.LBB9577:
	.loc 28 1732 0
	mov	r0, r3, lsr #24
.LBE9577:
.LBE9580:
	.loc 38 116 0
	add	r1, r1, r0, asl #10
.LVL3239:
	b	.L3093
.LVL3240:
.L3090:
.LBE9574:
.LBE9573:
.LBE9581:
.LBE9611:
.LBB9612:
.LBB9509:
.LBB9507:
	bl	generic_frame_cap_get_capFMappedASID.part.110
.LVL3241:
.L3094:
.LBB9505:
.LBB9496:
.LBB9495:
.LBB9489:
	.loc 28 1893 0
	movw	r0, #:lower16:.LC41
.LVL3242:
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC41
	movt	r1, #:upper16:.LC30
	movw	r2, #1894
	ldr	r3, .L3138+8
.LVL3243:
	bl	_assert_fail
.LVL3244:
.L3128:
.LBE9489:
.LBE9495:
.LBE9496:
.LBE9505:
.LBE9507:
.LBE9509:
.LBE9612:
.LBB9613:
.LBB9546:
.LBB9543:
.LBB9541:
	bl	generic_frame_cap_set_capFMappedAddress.part.142
.LVL3245:
.L3130:
.LBB9539:
.LBB9529:
.LBB9527:
	.loc 28 1828 0
	movw	r0, #:lower16:.LC41
.LVL3246:
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC41
	movt	r1, #:upper16:.LC30
	movw	r2, #1829
	ldr	r3, .L3138+12
	bl	_assert_fail
.LVL3247:
.L3131:
.LBE9527:
.LBE9529:
.LBE9539:
.LBE9541:
.LBE9543:
.LBE9546:
.LBE9613:
.LBB9614:
.LBB9557:
	bl	generic_frame_cap_get_capFSize.part.121
.LVL3248:
.L3137:
.LBE9557:
.LBE9614:
.LBB9615:
.LBB9604:
	bl	generic_frame_cap_get_capFBasePtr.isra.89.part.90
.LVL3249:
.L3134:
.LBE9604:
.LBE9615:
.LBB9616:
.LBB9593:
	bl	generic_frame_cap_get_capFMappedAddress.part.106
.LVL3250:
.L3136:
.LBB9591:
.LBB9588:
	bl	cap_frame_cap_get_capFMappedAddress.part.105
.LVL3251:
.L3132:
.LBE9588:
.LBE9591:
.LBE9593:
.LBE9616:
.LBB9617:
.LBB9558:
.LBB9555:
.LBB9554:
	bl	cap_frame_cap_get_capFSize.part.120
.LVL3252:
.L3139:
	.align	2
.L3138:
	.word	.LANCHOR7-4084
	.word	.LANCHOR4+3920
	.word	.LANCHOR7-4040
	.word	.LANCHOR4+3964
.LBE9554:
.LBE9555:
.LBE9558:
.LBE9617:
	.cfi_endproc
.LFE374:
	.size	performPageInvocationUnmap, .-performPageInvocationUnmap
	.align	2
	.type	createSafeMappingEntries_PTE, %function
createSafeMappingEntries_PTE:
.LFB358:
	.loc 14 1202 0
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3253:
	.loc 14 1208 0
	cmp	r3, #0
	.loc 14 1202 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 32
	.loc 14 1202 0
	mov	r5, r0
	mov	r4, r1
	mov	r8, r2
	ldr	r7, [sp, #36]
.LVL3254:
	.loc 14 1208 0
	beq	.L3142
	cmp	r3, #1
	bne	.L3173
.LVL3255:
.LBB9650:
.LBB9651:
	.loc 14 973 0
	ldr	r0, [sp, #32]
.LVL3256:
.LBE9651:
.LBE9650:
.LBB9666:
.LBB9667:
	.loc 28 327 0
	ubfx	r6, r7, #2, #1
.LVL3257:
.LBE9667:
.LBE9666:
.LBB9668:
.LBB9662:
	.loc 14 973 0
	bl	APFromVMRights
.LVL3258:
	.loc 14 1000 0
	tst	r7, #1
.LBB9652:
.LBB9653:
	.loc 28 2371 0
	uxth	r3, r4
.LBE9653:
.LBE9652:
	.loc 14 1000 0
	bne	.L3174
.LVL3259:
.LBB9656:
.LBB9657:
	.loc 28 2371 0
	cmp	r3, #0
	bne	.L3158
	.loc 28 2375 0
	mov	r6, r6, asl #15
	.loc 28 2372 0
	mov	r4, r4, lsr #16
.LVL3260:
	.loc 28 2389 0
	bics	r3, r0, #3
	orr	r6, r6, #3072
	orr	r6, r6, #1
	.loc 28 2372 0
	mov	r4, r4, asl #16
.LVL3261:
	.loc 28 2389 0
	bne	.L3159
.LVL3262:
.L3169:
	orr	r4, r6, r4
.LBE9657:
.LBE9656:
.LBE9662:
.LBE9668:
	.loc 14 1256 0
	ldr	r1, [sp, #40]
.LBB9669:
.LBB9663:
.LBB9659:
.LBB9658:
	.loc 28 2402 0
	orr	r4, r4, r0, asl #4
.LVL3263:
.LBE9658:
.LBE9659:
.LBE9663:
.LBE9669:
	.loc 14 1256 0
	mov	r2, r8
	mov	r0, sp
.LVL3264:
	str	r4, [r5, #4]
	bl	lookupPTSlot
.LVL3265:
	.loc 14 1257 0
	ldr	r3, [sp]
	.loc 14 1256 0
	ldr	r0, [sp, #4]
.LVL3266:
	.loc 14 1257 0
	cmp	r3, #0
	subeq	r3, r0, #4
	addeq	r1, r0, #60
	bne	.L3175
.L3162:
.LVL3267:
.LBB9670:
.LBB9671:
.LBB9672:
.LBB9673:
	.loc 28 2356 0
	ldr	r2, [r3, #4]!
.LVL3268:
.LBE9673:
.LBE9672:
	.loc 38 336 0
	tst	r2, #2
	bne	.L3161
.LVL3269:
.LBE9671:
.LBE9670:
	.loc 14 1270 0
	cmp	r3, r1
	bne	.L3162
.LVL3270:
	.loc 14 1282 0
	mov	r2, #0
	mov	r3, #16
.LVL3271:
	str	r0, [r5, #8]
	.loc 14 1288 0
	mov	r0, r5
.LVL3272:
	.loc 14 1282 0
	str	r2, [r5]
	str	r3, [r5, #12]
	.loc 14 1288 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 24
.LVL3273:
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL3274:
.L3173:
	.cfi_restore_state
	.loc 14 1285 0
	movw	r0, #:lower16:.LC147
.LVL3275:
	movw	r1, #:lower16:.LC23
.LVL3276:
	movt	r0, #:upper16:.LC147
	movt	r1, #:upper16:.LC23
	movw	r2, #1285
.LVL3277:
	ldr	r3, .L3179
.LVL3278:
	bl	_fail
.LVL3279:
.L3142:
.LBB9674:
.LBB9675:
	.loc 14 973 0
	ldr	r0, [sp, #32]
.LVL3280:
.LBE9675:
.LBE9674:
.LBB9687:
.LBB9688:
	.loc 28 327 0
	ubfx	r6, r7, #2, #1
.LVL3281:
.LBE9688:
.LBE9687:
.LBB9689:
.LBB9684:
	.loc 14 973 0
	bl	APFromVMRights
.LVL3282:
	.loc 14 977 0
	tst	r7, #1
.LBB9676:
.LBB9677:
	.loc 28 2484 0
	ubfx	r3, r4, #0, #12
.LBE9677:
.LBE9676:
	.loc 14 977 0
	bne	.L3176
.LVL3283:
.LBB9680:
.LBB9681:
	.loc 28 2484 0
	cmp	r3, #0
	bne	.L3148
	.loc 28 2499 0
	bics	r3, r0, #3
	.loc 28 2485 0
	bic	r4, r4, #4080
.LVL3284:
	bic	r4, r4, #15
.LVL3285:
	.loc 28 2499 0
	bne	.L3149
.LVL3286:
	orr	r6, r6, #3072
	orr	r6, r6, #2
	orr	r6, r6, r4
	.loc 28 2512 0
	orr	r0, r6, r0, asl #4
.LVL3287:
.L3147:
	str	r0, [r5, #4]
.LBE9681:
.LBE9680:
.LBE9684:
.LBE9689:
	.loc 14 1220 0
	mov	r2, r8
	mov	r0, sp
.LVL3288:
	ldr	r1, [sp, #40]
	bl	lookupPTSlot
.LVL3289:
	.loc 14 1221 0
	ldr	r3, [sp]
	.loc 14 1220 0
	ldr	r2, [sp, #4]
.LVL3290:
	.loc 14 1221 0
	cmp	r3, #0
	bne	.L3177
.LVL3291:
.LBB9690:
.LBB9691:
.LBB9692:
.LBB9693:
	.loc 28 2361 0
	ldr	r3, [r2]
.LBE9693:
.LBE9692:
	.loc 38 348 0
	tst	r3, #2
	bne	.L3152
.LVL3292:
	.loc 38 350 0
	ands	r3, r3, #1
.LVL3293:
	bne	.L3178
.LVL3294:
.L3152:
.LBE9691:
.LBE9690:
	.loc 14 1244 0
	mov	r1, #0
	mov	r3, #1
	str	r2, [r5, #8]
	str	r1, [r5]
	str	r3, [r5, #12]
.LVL3295:
.L3140:
	.loc 14 1288 0
	mov	r0, r5
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 24
.LVL3296:
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL3297:
.L3176:
	.cfi_restore_state
.LBB9694:
.LBB9685:
.LBB9682:
.LBB9678:
	.loc 28 2484 0
	cmp	r3, #0
	bne	.L3148
	.loc 28 2499 0
	bics	r3, r0, #3
	.loc 28 2485 0
	bic	r4, r4, #4080
.LVL3298:
	orreq	r6, r6, #2368
	bic	r4, r4, #15
.LVL3299:
	orreq	r6, r6, #6
	orreq	r6, r6, r4
	.loc 28 2512 0
	orreq	r0, r6, r0, asl #4
.LVL3300:
	.loc 28 2499 0
	beq	.L3147
.LVL3301:
.L3149:
	movw	r0, #:lower16:.LC141
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC141
	movt	r1, #:upper16:.LC30
	movw	r2, #2499
	ldr	r3, .L3179+4
	bl	_assert_fail
.LVL3302:
.L3174:
.LBE9678:
.LBE9682:
.LBE9685:
.LBE9694:
.LBB9695:
.LBB9664:
.LBB9660:
.LBB9654:
	.loc 28 2371 0
	cmp	r3, #0
	bne	.L3158
	.loc 28 2375 0
	mov	r6, r6, asl #15
	.loc 28 2372 0
	mov	r4, r4, lsr #16
.LVL3303:
	.loc 28 2389 0
	bics	r3, r0, #3
	orr	r6, r6, #22528
	orr	r6, r6, #5
	.loc 28 2372 0
	mov	r4, r4, asl #16
.LVL3304:
	.loc 28 2389 0
	beq	.L3169
.LVL3305:
.L3159:
	movw	r0, #:lower16:.LC141
.LVL3306:
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC141
	movt	r1, #:upper16:.LC30
	movw	r2, #2389
	ldr	r3, .L3179+8
	bl	_assert_fail
.LVL3307:
.L3161:
.LBE9654:
.LBE9660:
.LBE9664:
.LBE9695:
	.loc 14 1273 0
	movw	r3, #:lower16:current_syscall_error
.LVL3308:
	mov	ip, #8
	movt	r3, #:upper16:current_syscall_error
	.loc 14 1277 0
	mov	r1, #3
	mov	r2, #16
	str	r0, [r5, #8]
	.loc 14 1273 0
	str	ip, [r3, #24]
.LVL3309:
	.loc 14 1288 0
	mov	r0, r5
.LVL3310:
	.loc 14 1277 0
	str	r1, [r5]
	str	r2, [r5, #12]
	.loc 14 1288 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 24
.LVL3311:
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL3312:
.L3178:
	.cfi_restore_state
	.loc 14 1236 0
	movw	r1, #:lower16:current_syscall_error
	mov	ip, #8
	movt	r1, #:upper16:current_syscall_error
	.loc 14 1240 0
	mov	r0, #3
	str	r2, [r5, #8]
	str	r3, [r5, #12]
	.loc 14 1236 0
	str	ip, [r1, #24]
.LVL3313:
	.loc 14 1240 0
	str	r0, [r5]
	b	.L3140
.LVL3314:
.L3177:
	.loc 14 1222 0
	movw	r3, #:lower16:current_syscall_error
.LVL3315:
	mov	ip, #6
	movt	r3, #:upper16:current_syscall_error
	.loc 14 1224 0
	mov	r2, #0
.LVL3316:
	.loc 14 1229 0
	mov	r0, #3
	mov	r1, #1
.LVL3317:
.L3170:
	.loc 14 1258 0
	str	ip, [r3, #24]
	.loc 14 1260 0
	str	r2, [r3, #20]
.LVL3318:
	.loc 14 1265 0
	str	r2, [r5, #8]
	str	r0, [r5]
	str	r1, [r5, #12]
	b	.L3140
.LVL3319:
.L3175:
	.loc 14 1258 0
	movw	r3, #:lower16:current_syscall_error
	mov	ip, #6
	movt	r3, #:upper16:current_syscall_error
	.loc 14 1260 0
	mov	r2, #0
	.loc 14 1265 0
	mov	r0, #3
.LVL3320:
	mov	r1, #16
	b	.L3170
.LVL3321:
.L3148:
.LBB9696:
.LBB9686:
.LBB9683:
.LBB9679:
	bl	pte_pte_small_new.part.113
.LVL3322:
.L3158:
.LBE9679:
.LBE9683:
.LBE9686:
.LBE9696:
.LBB9697:
.LBB9665:
.LBB9661:
.LBB9655:
	bl	pte_pte_large_new.part.143
.LVL3323:
.L3180:
	.align	2
.L3179:
	.word	.LANCHOR7-3908
	.word	.LANCHOR4+1148
	.word	.LANCHOR4+1880
.LBE9655:
.LBE9661:
.LBE9665:
.LBE9697:
	.cfi_endproc
.LFE358:
	.size	createSafeMappingEntries_PTE, .-createSafeMappingEntries_PTE
	.align	2
	.global	finaliseCap
	.type	finaliseCap, %function
finaliseCap:
.LFB624:
	.loc 36 100 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3324:
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 40
	.loc 36 100 0
	stmia	sp, {r1, r2}
	mov	r4, r1
.LBB9741:
.LBB9742:
.LBB9743:
.LBB9744:
	.loc 28 1035 0
	and	r1, r1, #14
.LBE9744:
.LBE9743:
.LBE9742:
.LBE9741:
	.loc 36 100 0
	mov	r5, r0
.LBB9751:
.LBB9749:
.LBB9747:
.LBB9745:
	.loc 28 1035 0
	cmp	r1, #14
.LBE9745:
.LBE9747:
.LBE9749:
.LBE9751:
	.loc 36 100 0
	mov	ip, sp
	mov	r0, r2
.LVL3325:
.LBB9752:
.LBB9750:
.LBB9748:
.LBB9746:
	.loc 28 1035 0
	beq	.L3182
.LBE9746:
.LBE9748:
.LBE9750:
.LBE9752:
	.loc 36 103 0
	tst	r4, #1
.LBB9753:
.LBB9754:
	.loc 28 1036 0
	andeq	r2, r4, #15
.LBE9754:
.LBE9753:
	.loc 36 103 0
	bne	.L3183
.L3187:
	.loc 36 109 0
	cmp	r2, #6
	beq	.L3189
	bhi	.L3190
	cmp	r2, #0
	beq	.L3201
	cmp	r2, #4
	bne	.L3188
	.loc 36 111 0
	cmp	r3, #0
	beq	.L3201
.LVL3326:
.LBB9756:
.LBB9757:
	.loc 28 1185 0
	and	r4, r4, #15
.LVL3327:
	cmp	r4, #4
	bne	.L3237
.LVL3328:
.LBE9757:
.LBE9756:
	.loc 36 112 0
	bic	r0, r0, #15
	bl	cancelAllIPC
.LVL3329:
.L3201:
	.loc 36 199 0
	mov	r3, #0
	mvn	r2, #0
	str	r3, [r5]
	str	r3, [r5, #4]
	strh	r2, [r5, #8]	@ movhi
.LVL3330:
.L3181:
	.loc 36 200 0
	mov	r0, r5
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 12
.LVL3331:
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.LVL3332:
.L3190:
	.cfi_restore_state
	.loc 36 109 0
	cmp	r2, #8
	beq	.L3201
	cmp	r2, #62
	beq	.L3201
.L3188:
	.loc 36 138 0
	ldr	r2, [sp, #40]
	cmp	r2, #0
	bne	.L3238
.LVL3333:
.LBB9759:
.LBB9760:
	.loc 28 1035 0
	cmp	r1, #14
	.loc 28 1037 0
	uxtbeq	r2, r4
	.loc 28 1036 0
	andne	r2, r4, #15
.LBE9760:
.LBE9759:
	.loc 36 142 0
	sub	r2, r2, #10
	cmp	r2, #36
	ldrls	pc, [pc, r2, asl #2]
	b	.L3201
.L3203:
	.word	.L3202
	.word	.L3201
	.word	.L3204
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3205
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3206
.LVL3334:
.L3182:
	.loc 36 103 0
	tst	r4, #1
.LBB9761:
.LBB9755:
	.loc 28 1037 0
	uxtbeq	r2, r4
.LBE9755:
.LBE9761:
	.loc 36 103 0
	beq	.L3187
.L3183:
	.loc 36 104 0
	ldmia	ip, {r1, r2}
	add	r0, sp, #12
	bl	Arch_finaliseCap
.LVL3335:
	ldr	r2, [sp, #16]
.LVL3336:
	.loc 36 106 0
	mvn	r1, #0
	ldr	r3, [sp, #12]
	.loc 36 200 0
	mov	r0, r5
	.loc 36 106 0
	strh	r1, [r5, #8]	@ movhi
	str	r2, [r5, #4]
	str	r3, [r5]
	.loc 36 200 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.LVL3337:
.L3189:
	.cfi_restore_state
	.loc 36 120 0
	cmp	r3, #0
	beq	.L3201
.LVL3338:
.LBB9762:
.LBB9763:
.LBB9764:
	.loc 28 1407 0
	and	r3, r4, #15
.LVL3339:
	cmp	r3, #6
	bne	.L3239
.LVL3340:
	.loc 28 1410 0
	bic	r4, r4, #15
.LVL3341:
.LBE9764:
.LBE9763:
	.loc 36 123 0
	mov	r0, r4
	bl	unbindMaybeNotification
.LVL3342:
.LBB9766:
.LBB9767:
.LBB9768:
.LBB9769:
	.loc 28 257 0
	ldr	r3, [r4]
	and	r3, r3, #3
.LVL3343:
.LBE9769:
.LBE9768:
	.loc 50 153 0
	cmp	r3, #1
	bne	.L3201
	mov	r0, r4
	bl	cancelAllSignals.part.240
.LVL3344:
	b	.L3201
.LVL3345:
.L3206:
.LBE9767:
.LBE9766:
.LBE9762:
	.loc 36 182 0
	mvn	r3, #0
.LVL3346:
	str	r4, [r5]
	str	r0, [r5, #4]
	strh	r3, [r5, #8]	@ movhi
	b	.L3181
.LVL3347:
.L3205:
	.loc 36 185 0
	cmp	r3, #0
	beq	.L3201
.LVL3348:
.LBB9771:
.LBB9772:
.LBB9773:
	.loc 28 2260 0
	uxtb	r4, r4
.LVL3349:
	cmp	r4, #30
	bne	.L3240
.LVL3350:
.LBE9773:
.LBE9772:
	.loc 36 186 0
	uxtb	r4, r0
.LVL3351:
	.loc 36 188 0
	mov	r0, r4
	bl	deletingIRQHandler
.LVL3352:
	.loc 36 192 0
	mov	r3, #0
	strh	r4, [r5, #8]	@ movhi
	str	r3, [r5]
	str	r3, [r5, #4]
	b	.L3181
.LVL3353:
.L3204:
.LBE9771:
	.loc 36 158 0
	cmp	r3, #0
	beq	.L3201
.LVL3354:
.LBB9776:
.LBB9777:
.LBB9778:
	.loc 28 1608 0
	and	r3, r4, #15
.LVL3355:
	cmp	r3, #12
	bne	.L3241
.LVL3356:
	.loc 28 1611 0
	bic	r0, r4, #15
.LVL3357:
.LBE9778:
.LBE9777:
.LBB9780:
.LBB9781:
	.loc 39 90 0
	bic	r4, r4, #508
.LVL3358:
.LBE9781:
.LBE9780:
.LBB9783:
.LBB9784:
	.loc 50 227 0
	ldr	r3, [r0, #84]
.LVL3359:
.LBE9784:
.LBE9783:
.LBB9792:
.LBB9782:
	.loc 39 90 0
	bic	r4, r4, #3
	orr	r4, r4, #5
.LBE9782:
.LBE9792:
.LBB9793:
.LBB9791:
	.loc 50 229 0
	cmp	r3, #0
.LVL3360:
.LBB9785:
.LBB9786:
.LBB9787:
.LBB9788:
	.loc 28 193 0
	ldrne	r2, [r3, #12]
.LBE9788:
.LBE9787:
	.loc 50 209 0
	movne	r1, #0
.LBB9790:
.LBB9789:
	.loc 28 193 0
	andne	r2, r2, #15
	strne	r2, [r3, #12]
.LBE9789:
.LBE9790:
	.loc 50 209 0
	strne	r1, [r0, #84]
.LBE9786:
.LBE9785:
.LBE9791:
.LBE9793:
	.loc 36 165 0
	bl	suspend
.LVL3361:
	.loc 36 174 0
	movw	r2, #8238
	mvn	r3, #0
	stmia	r5, {r2, r4}
	strh	r3, [r5, #8]	@ movhi
	b	.L3181
.LVL3362:
.L3202:
.LBE9776:
	.loc 36 144 0
	cmp	r3, #0
	beq	.L3201
.LVL3363:
.LBB9795:
.LBB9796:
	.loc 28 1537 0
	and	r3, r4, #15
.LVL3364:
	cmp	r3, #10
	bne	.L3242
.LBE9796:
.LBE9795:
.LBB9799:
.LBB9800:
	.loc 39 87 0
	mov	r3, #1
.LBE9800:
.LBE9799:
.LBB9809:
.LBB9797:
	.loc 28 1540 0
	ubfx	r0, r0, #18, #5
.LVL3365:
.LBE9797:
.LBE9809:
.LBB9810:
.LBB9805:
	.loc 39 87 0
	add	r2, r0, r3
.LBB9801:
.LBB9802:
	.loc 28 2281 0
	mov	r1, r0, asl #8
.LBE9802:
.LBE9801:
	.loc 39 87 0
	mov	r2, r3, asl r2
.LBE9805:
.LBE9810:
.LBB9811:
.LBB9812:
	.loc 28 1580 0
	bic	r4, r4, #31
.LVL3366:
.LBE9812:
.LBE9811:
.LBB9813:
.LBB9806:
.LBB9804:
.LBB9803:
	.loc 28 2284 0
	orr	r1, r1, #46
.LBE9803:
.LBE9804:
	.loc 39 87 0
	sub	r2, r2, #1
.LVL3367:
.LBE9806:
.LBE9813:
	.loc 36 152 0
	str	r1, [r5]
.LBB9814:
.LBB9807:
	.loc 39 90 0
	and	r0, r2, r3, asl r0
.LVL3368:
	bic	r2, r4, r2
.LVL3369:
.LBE9807:
.LBE9814:
	.loc 36 152 0
	mvn	r3, #0
.LVL3370:
.LBB9815:
.LBB9808:
	.loc 39 90 0
	orr	r0, r2, r0
.LBE9808:
.LBE9815:
	.loc 36 152 0
	strh	r3, [r5, #8]	@ movhi
	str	r0, [r5, #4]
	b	.L3181
.LVL3371:
.L3238:
	.loc 36 139 0
	movw	r0, #:lower16:.LC149
	movw	r1, #:lower16:.LC112
	movt	r0, #:upper16:.LC149
	movt	r1, #:upper16:.LC112
	mov	r2, #139
	ldr	r3, .L3243
.LVL3372:
	bl	_fail
.LVL3373:
.L3237:
.LBB9816:
.LBB9758:
	bl	cap_endpoint_cap_get_capEPPtr.part.77
.LVL3374:
.L3240:
.LBE9758:
.LBE9816:
.LBB9817:
.LBB9775:
.LBB9774:
	bl	cap_irq_handler_cap_get_capIRQ.part.229
.LVL3375:
.L3241:
.LBE9774:
.LBE9775:
.LBE9817:
.LBB9818:
.LBB9794:
.LBB9779:
	bl	cap_thread_cap_get_capTCBPtr.isra.59.part.60
.LVL3376:
.L3239:
.LBE9779:
.LBE9794:
.LBE9818:
.LBB9819:
.LBB9770:
.LBB9765:
	bl	cap_notification_cap_get_capNtfnPtr.isra.68.part.69
.LVL3377:
.L3242:
.LBE9765:
.LBE9770:
.LBE9819:
.LBB9820:
.LBB9798:
	bl	cap_cnode_cap_get_capCNodeRadix.part.149
.LVL3378:
.L3244:
	.align	2
.L3243:
	.word	.LANCHOR7-3876
.LBE9798:
.LBE9820:
	.cfi_endproc
.LFE624:
	.size	finaliseCap, .-finaliseCap
	.align	2
	.type	finaliseSlot, %function
finaliseSlot:
.LFB576:
	.loc 27 645 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3379:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
.LBB9931:
.LBB9932:
	.loc 8 24 0
	movw	r6, #:lower16:ksWorkUnitsCompleted
.LBE9932:
.LBE9931:
	.loc 27 645 0
	sub	sp, sp, #52
	.cfi_def_cfa_offset 88
	.loc 27 645 0
	mov	r9, r0
	mov	r4, r1
	mov	r7, r2
.LBB9935:
.LBB9933:
	.loc 8 24 0
	movt	r6, #:upper16:ksWorkUnitsCompleted
.LBE9933:
.LBE9935:
	.loc 27 653 0
	add	r5, sp, #36
.LVL3380:
.L3246:
	mov	r8, #0
.L3283:
	ldr	r3, [r4]
.LVL3381:
.LBB9936:
.LBB9937:
	.loc 28 1035 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 28 1037 0
	uxtbeq	r3, r3
.LVL3382:
	.loc 28 1036 0
	andne	r3, r3, #15
.LBE9937:
.LBE9936:
	.loc 27 651 0
	cmp	r3, #0
	beq	.L3323
	.loc 27 652 0
	mov	r0, r4
	bl	isFinalCapability
.LVL3383:
	.loc 27 653 0
	str	r8, [sp]
	.loc 27 652 0
	mov	r3, r0
.LVL3384:
	.loc 27 653 0
	ldmia	r4, {r1, r2}
	mov	r0, r5
.LVL3385:
	bl	finaliseCap
.LVL3386:
	ldr	r3, [sp, #36]
	add	r2, sp, #20
	ldmia	r5, {r0, r1}
	ldrh	lr, [sp, #44]
.LVL3387:
.LBB9938:
.LBB9939:
.LBB9940:
.LBB9941:
	.loc 28 1035 0
	and	ip, r3, #14
	cmp	ip, #14
	stmia	r2, {r0, r1}
.LVL3388:
	.loc 28 1037 0
	uxtbeq	r2, r3
	.loc 28 1036 0
	andne	r2, r3, #15
.LBE9941:
.LBE9940:
	.loc 27 623 0
	cmp	r2, #0
	beq	.L3250
	cmp	r2, #46
	bne	.L3310
.LVL3389:
.LBB9942:
.LBB9943:
.LBB9944:
.LBB9945:
.LBB9946:
.LBB9947:
.LBB9948:
	.loc 28 2318 0
	uxtb	r2, r3
	ldr	r0, [sp, #24]
.LVL3390:
	cmp	r2, #46
	bne	.L3269
	.loc 28 2321 0
	ubfx	r3, r3, #8, #6
.LVL3391:
.LBE9948:
.LBE9947:
	.loc 39 97 0
	cmp	r3, #32
.LBE9946:
.LBE9945:
	.loc 39 107 0
	andeq	r1, r0, #31
.LVL3392:
	mvneq	r2, #31
.LBB9954:
.LBB9951:
	.loc 39 97 0
	beq	.L3284
.LVL3393:
.LBE9951:
.LBE9954:
	.loc 39 107 0
	mov	r1, #1
.LBB9955:
.LBB9952:
	.loc 39 100 0
	and	r2, r3, #31
.LBE9952:
.LBE9955:
	.loc 39 107 0
	add	r2, r2, r1
	mov	r2, r1, asl r2
	sub	r1, r2, #1
	rsb	r2, r2, #0
	and	r1, r1, r0
.LVL3394:
.L3284:
.LBE9944:
.LBE9943:
	.loc 27 629 0
	cmp	r1, #0
	beq	.L3250
.LBB9958:
.LBB9959:
	.loc 39 114 0
	and	r2, r2, r0
.LVL3395:
.LBE9959:
.LBE9958:
.LBE9942:
.LBE9939:
.LBE9938:
	.loc 27 655 0
	cmp	r4, r2
	cmpeq	r1, #1
	beq	.L3250
	.loc 27 662 0
	ldmia	r5, {r0, r1}
.LVL3396:
	.loc 27 664 0
	cmp	r7, #0
	.loc 27 662 0
	stmia	r4, {r0, r1}
	.loc 27 664 0
	bne	.L3256
.LBB9966:
.LBB9967:
.LBB9968:
.LBB9969:
	.loc 28 1035 0 discriminator 1
	cmp	ip, #14
	add	r2, sp, #28
.LVL3397:
	stmia	r2, {r0, r1}
.LVL3398:
	beq	.L3324
.LVL3399:
.L3256:
	ldr	fp, [r4]
.LVL3400:
.LBE9969:
.LBE9968:
.LBE9967:
.LBE9966:
.LBB9975:
.LBB9976:
.LBB9977:
.LBB9978:
	.loc 28 1035 0 is_stmt 0
	and	r3, fp, #14
	cmp	r3, #14
	beq	.L3325
.L3258:
.LBE9978:
.LBE9977:
	.loc 27 700 0 is_stmt 1
	movw	r0, #:lower16:.LC151
	movw	r1, #:lower16:.LC102
	movt	r0, #:upper16:.LC151
	movt	r1, #:upper16:.LC102
	mov	r2, #700
	ldr	r3, .L3332
	bl	_assert_fail
.LVL3401:
.L3310:
.LBE9976:
.LBE9975:
.LBB10038:
.LBB9964:
.LBB9961:
.LBB9962:
	.loc 27 632 0
	movw	r0, #:lower16:.LC150
	movw	r1, #:lower16:.LC102
	movt	r0, #:upper16:.LC150
	movt	r1, #:upper16:.LC102
	mov	r2, #632
	ldr	r3, .L3332+4
.LVL3402:
	bl	_fail
.LVL3403:
.L3325:
.LBE9962:
.LBE9961:
.LBE9964:
.LBE10038:
.LBB10039:
.LBB10033:
.LBB9980:
.LBB9979:
	.loc 28 1037 0
	uxtb	r3, fp
.LBE9979:
.LBE9980:
	.loc 27 700 0
	cmp	r3, #46
	bne	.L3258
.LVL3404:
.LBB9981:
.LBB9982:
.LBB9983:
.LBB9984:
.LBB9985:
.LBB9986:
	.loc 28 2321 0
	ubfx	fp, fp, #8, #6
	ldr	r10, [r4, #4]
.LVL3405:
.LBE9986:
.LBE9985:
	.loc 39 97 0
	cmp	fp, #32
.LBE9984:
.LBE9983:
.LBE9982:
.LBE9981:
	.loc 27 701 0
	moveq	r3, #31
.LBB9990:
.LBB9989:
	.loc 39 114 0
	biceq	r2, r10, #31
.LVL3406:
.LBB9988:
.LBB9987:
	.loc 39 97 0
	beq	.L3261
.LVL3407:
	mov	r2, #1
.LVL3408:
	.loc 39 100 0
	and	r3, fp, #31
	add	r3, r3, r2
	mov	r3, r2, asl r3
	rsb	r2, r3, #0
	sub	r3, r3, #1
.LBE9987:
.LBE9988:
	.loc 39 114 0
	and	r2, r2, r10
.LVL3409:
.L3261:
.LBE9989:
.LBE9990:
	.loc 27 706 0
	ands	r10, r3, r10
	beq	.L3326
	.loc 27 708 0
	cmp	r7, #0
	bne	.L3327
	.loc 27 744 0
	cmp	r4, r2
	beq	.L3328
	ldr	r3, [r2]
.LVL3410:
.LBB9991:
.LBB9992:
	.loc 28 1035 0
	and	r1, r3, #14
	cmp	r1, #14
	beq	.L3329
.LVL3411:
.L3277:
.LBE9992:
.LBE9991:
.LBB9994:
.LBB9995:
	mov	r0, r2
	mov	r1, r4
	bl	capSwapForDelete.part.204
.LVL3412:
.L3267:
.LBE9995:
.LBE9994:
.LBE10033:
.LBE10039:
.LBB10040:
.LBB9934:
	.loc 8 24 0
	ldr	r3, [r6]
	add	r3, r3, #1
	.loc 8 34 0
	cmp	r3, #99
	.loc 8 24 0
	str	r3, [r6]
	.loc 8 34 0
	bls	.L3283
	bl	preemptionPoint.part.51
.LVL3413:
.LBE9934:
.LBE10040:
	.loc 27 680 0
	cmp	r0, #0
	beq	.L3246
.L3263:
.LVL3414:
	.loc 27 676 0
	mov	r2, #0
	mvn	r3, #0
	stmia	r9, {r0, r2}
	strh	r3, [r9, #8]	@ movhi
.LVL3415:
.L3245:
	.loc 27 691 0
	mov	r0, r9
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3416:
.L3327:
	.cfi_restore_state
.LBB10041:
.LBB10034:
.LBB9996:
	.loc 27 709 0
	sub	r3, r10, #-268435455
	.loc 27 711 0
	mov	r1, #0
	.loc 27 709 0
	add	r3, r2, r3, asl #4
	str	r2, [sp, #12]
.LVL3417:
	.loc 27 711 0
	mov	r0, r3
	str	r3, [sp, #8]
	bl	cteDelete
.LVL3418:
	.loc 27 712 0
	cmp	r0, #0
	bne	.L3263
	ldr	r1, [r4]
.LVL3419:
.LBB9997:
.LBB9998:
	.loc 28 1035 0
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #12]
	and	r0, r1, #14
.LVL3420:
	cmp	r0, #14
	.loc 28 1037 0
	uxtbeq	r0, r1
	.loc 28 1036 0
	andne	r0, r1, #15
.LBE9998:
.LBE9997:
	.loc 27 716 0
	cmp	r0, #0
	beq	.L3267
	cmp	r0, #46
	bne	.L3312
.LVL3421:
.LBB9999:
.LBB10000:
.LBB10001:
.LBB10002:
.LBB10003:
.LBB10004:
.LBB10005:
	.loc 28 2318 0
	uxtb	r0, r1
	ldr	lr, [r4, #4]
.LVL3422:
	cmp	r0, #46
	bne	.L3269
	.loc 28 2321 0
	ubfx	r1, r1, #8, #6
.LVL3423:
.LBE10005:
.LBE10004:
	.loc 39 97 0
	cmp	r1, #32
	beq	.L3270
.LVL3424:
	mov	ip, #1
	.loc 39 100 0
	and	r0, r1, #31
	add	r0, r0, ip
	mov	ip, ip, asl r0
	rsb	r0, ip, #0
.LBE10003:
.LBE10002:
	.loc 39 114 0
	and	r0, r0, lr
.LVL3425:
.LBE10001:
.LBE10000:
	.loc 27 724 0
	cmp	r2, r0
	bne	.L3272
.LVL3426:
	sub	ip, ip, #1
.LVL3427:
.L3273:
.LBB10007:
.LBB10008:
	.loc 39 107 0
	and	ip, ip, lr
.LBE10008:
.LBE10007:
	.loc 27 724 0
	cmp	r10, ip
	bne	.L3272
.LVL3428:
	.loc 27 725 0
	cmp	fp, r1
	bne	.L3272
	ldr	r3, [r3]
.LVL3429:
.LBB10009:
.LBB10010:
	.loc 28 1035 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 28 1037 0
	uxtbeq	r3, r3
.LVL3430:
	.loc 28 1036 0
	andne	r3, r3, #15
.LBE10010:
.LBE10009:
	.loc 27 727 0
	cmp	r3, #0
	bne	.L3330
.LBB10011:
.LBB10012:
.LBB10013:
.LBB10014:
	.loc 39 97 0
	cmp	fp, #32
.LBE10014:
.LBE10013:
.LBE10012:
.LBE10011:
	.loc 27 729 0
	sub	r3, r10, #1
.LVL3431:
.LBB10018:
.LBB10017:
.LBB10016:
.LBB10015:
	.loc 39 100 0
	andne	fp, fp, #31
.LVL3432:
	.loc 39 97 0
	.loc 39 98 0
	moveq	fp, #4
.L3288:
.LVL3433:
.LBE10015:
.LBE10016:
	.loc 39 121 0
	add	fp, fp, #1
	mov	r2, #1
	mov	r2, r2, asl fp
.LVL3434:
	.loc 39 122 0
	sub	r1, r2, #1
.LVL3435:
	.loc 39 121 0
	rsb	r2, r2, #0
.LVL3436:
	.loc 39 122 0
	and	r3, r3, r1
.LVL3437:
	.loc 39 121 0
	and	lr, lr, r2
.LVL3438:
	.loc 39 122 0
	orr	r3, r3, lr
.LVL3439:
.LBE10017:
.LBE10018:
	.loc 27 728 0
	str	r3, [r4, #4]
.LVL3440:
	b	.L3267
.LVL3441:
.L3324:
.LBE9999:
.LBE9996:
.LBE10034:
.LBE10041:
.LBB10042:
.LBB9974:
.LBB9970:
.LBB9971:
.LBB9972:
.LBB9973:
	.loc 39 97 0
	cmp	r3, #32
	ldr	r2, [sp, #32]
.LVL3442:
	.loc 39 100 0
	andne	r3, r3, #31
.LVL3443:
	mvnne	r1, #0
	addne	r3, r3, #1
	.loc 39 97 0
	mvneq	r3, #31
.LVL3444:
	movne	r3, r1, asl r3
.LBE9973:
.LBE9972:
	.loc 39 114 0
	and	r3, r3, r2
.LBE9971:
.LBE9970:
	.loc 27 639 0
	cmp	r4, r3
	bne	.L3256
.LVL3445:
.LBE9974:
.LBE10042:
	.loc 27 668 0
	mov	r3, #0
	strh	lr, [r9, #8]	@ movhi
	str	r3, [r9]
	str	r3, [r9, #4]
	b	.L3245
.LVL3446:
.L3329:
.LBB10043:
.LBB10035:
.LBB10023:
.LBB9993:
	.loc 28 1037 0
	uxtb	r1, r3
.LBE9993:
.LBE10023:
	.loc 27 746 0
	cmp	r1, #46
	bne	.L3277
.LVL3447:
.LBB10024:
.LBB10025:
.LBB10026:
.LBB10027:
.LBB10028:
.LBB10029:
	.loc 28 2321 0
	ubfx	r3, r3, #8, #6
.LVL3448:
	ldr	r1, [r2, #4]
.LVL3449:
.LBE10029:
.LBE10028:
	.loc 39 97 0
	cmp	r3, #32
	.loc 39 100 0
	andne	r3, r3, #31
.LVL3450:
	mvnne	r0, #0
	addne	r3, r3, #1
	.loc 39 97 0
	mvneq	r3, #31
.LVL3451:
	movne	r3, r0, asl r3
.LBE10027:
.LBE10026:
	.loc 39 114 0
	and	r3, r3, r1
.LBE10025:
.LBE10024:
	.loc 27 748 0
	cmp	r2, r3
	bne	.L3277
	movw	r0, #:lower16:.LC157
	movw	r1, #:lower16:.LC102
.LVL3452:
	movt	r0, #:upper16:.LC157
	movt	r1, #:upper16:.LC102
	mov	r2, #748
.LVL3453:
	ldr	r3, .L3332
	bl	_assert_fail
.LVL3454:
.L3270:
.LBB10030:
.LBB10020:
.LBB10019:
.LBB10006:
	.loc 39 114 0
	bic	r0, lr, #31
.LVL3455:
.LBE10006:
.LBE10019:
	.loc 27 724 0
	cmp	r2, r0
	beq	.L3331
.L3272:
	.loc 27 734 0
	rsb	r2, r2, r4
	clz	r2, r2
	mov	r2, r2, lsr #5
	cmp	r4, r0
	moveq	r0, r2
	orrne	r0, r2, #1
.LVL3456:
	cmp	r0, #0
	beq	.L3267
	movw	r0, #:lower16:.LC154
	movw	r1, #:lower16:.LC102
.LVL3457:
	movt	r0, #:upper16:.LC154
	movt	r1, #:upper16:.LC102
	movw	r2, #734
	ldr	r3, .L3332
	bl	_assert_fail
.LVL3458:
.L3312:
.LBE10020:
	.loc 27 740 0
	movw	r0, #:lower16:.LC155
	movw	r1, #:lower16:.LC102
	movt	r0, #:upper16:.LC155
	movt	r1, #:upper16:.LC102
	mov	r2, #740
	ldr	r3, .L3332+8
	bl	_fail
.LVL3459:
.L3250:
.LBE10030:
.LBE10035:
.LBE10043:
	.loc 27 659 0
	mov	r2, #0
	mov	r3, #1
	strh	lr, [r9, #8]	@ movhi
	stmia	r9, {r2, r3}
	b	.L3245
.LVL3460:
.L3323:
	.loc 27 690 0
	mov	r1, #1
	mvn	r2, #0
	str	r3, [r9]
	str	r1, [r9, #4]
	strh	r2, [r9, #8]	@ movhi
	b	.L3245
.LVL3461:
.L3331:
.LBB10044:
.LBB10036:
.LBB10031:
.LBB10021:
	.loc 27 724 0
	mov	ip, #31
	b	.L3273
.LVL3462:
.L3269:
.LBE10021:
.LBE10031:
.LBE10036:
.LBE10044:
.LBB10045:
.LBB9965:
.LBB9963:
.LBB9960:
.LBB9957:
.LBB9956:
.LBB9953:
.LBB9950:
.LBB9949:
	bl	cap_zombie_cap_get_capZombieType.isra.80.part.81
.LVL3463:
.L3326:
.LBE9949:
.LBE9950:
.LBE9953:
.LBE9956:
.LBE9957:
.LBE9960:
.LBE9963:
.LBE9965:
.LBE10045:
.LBB10046:
.LBB10037:
	.loc 27 706 0
	movw	r0, #:lower16:.LC152
	movw	r1, #:lower16:.LC102
	movt	r0, #:upper16:.LC152
	movt	r1, #:upper16:.LC102
	movw	r2, #706
.LVL3464:
	ldr	r3, .L3332
	bl	_assert_fail
.LVL3465:
.L3328:
	.loc 27 744 0
	movw	r0, #:lower16:.LC156
	movw	r1, #:lower16:.LC102
	movt	r0, #:upper16:.LC156
	movt	r1, #:upper16:.LC102
	mov	r2, #744
.LVL3466:
	ldr	r3, .L3332
	bl	_assert_fail
.LVL3467:
.L3330:
.LBB10032:
.LBB10022:
	.loc 27 727 0
	movw	r0, #:lower16:.LC153
.LVL3468:
	movw	r1, #:lower16:.LC102
.LVL3469:
	movt	r0, #:upper16:.LC153
	movt	r1, #:upper16:.LC102
	movw	r2, #727
	ldr	r3, .L3332
	bl	_assert_fail
.LVL3470:
.L3333:
	.align	2
.L3332:
	.word	.LANCHOR7-3848
	.word	.LANCHOR7-3864
	.word	.LANCHOR7-3832
.LBE10022:
.LBE10032:
.LBE10037:
.LBE10046:
	.cfi_endproc
.LFE576:
	.size	finaliseSlot, .-finaliseSlot
	.align	2
	.global	cteDelete
	.type	cteDelete, %function
cteDelete:
.LFB572:
	.loc 27 576 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3471:
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 32
	.loc 27 579 0
	mov	r2, r1
	.loc 27 576 0
	mov	r5, r0
	mov	r4, r1
	.loc 27 579 0
	mov	r1, r0
.LVL3472:
	add	r0, sp, #4
.LVL3473:
	bl	finaliseSlot
.LVL3474:
	ldr	r0, [sp, #4]
.LVL3475:
	.loc 27 580 0
	cmp	r0, #0
	bne	.L3335
	.loc 27 584 0
	cmp	r4, #0
	bne	.L3336
	.loc 27 584 0 is_stmt 0 discriminator 1
	ldr	r0, [sp, #8]
.LVL3476:
	cmp	r0, #0
	beq	.L3335
.L3336:
	.loc 27 585 0 is_stmt 1
	mov	r0, r5
	ldrh	r1, [sp, #12]
	bl	emptySlot
.LVL3477:
	.loc 27 587 0
	mov	r0, #0
.L3335:
	.loc 27 588 0
	add	sp, sp, #20
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
	.cfi_endproc
.LFE572:
	.size	cteDelete, .-cteDelete
	.align	2
	.global	invokeCNodeDelete
	.type	invokeCNodeDelete, %function
invokeCNodeDelete:
.LFB560:
	.loc 27 316 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL3478:
	.loc 27 317 0
	mov	r1, #1
	b	cteDelete
.LVL3479:
	.cfi_endproc
.LFE560:
	.size	invokeCNodeDelete, .-invokeCNodeDelete
	.align	2
	.global	cteRevoke
	.type	cteRevoke, %function
cteRevoke:
.LFB571:
	.loc 27 551 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3480:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
.LBB10047:
.LBB10048:
	.loc 28 450 0
	ldr	r4, [r0, #12]
.LVL3481:
.LBE10048:
.LBE10047:
	.loc 27 557 0
	bics	r4, r4, #7
.LVL3482:
.LBB10049:
.LBB10050:
	.loc 8 24 0
	movwne	r6, #:lower16:ksWorkUnitsCompleted
	movne	r5, r0
	movtne	r6, #:upper16:ksWorkUnitsCompleted
.LBE10050:
.LBE10049:
	.loc 27 557 0
	bne	.L3347
	b	.L3348
.LVL3483:
.L3346:
.LBB10052:
.LBB10053:
	.loc 28 450 0
	ldr	r4, [r5, #12]
.LVL3484:
.LBE10053:
.LBE10052:
	.loc 27 557 0
	bics	r4, r4, #7
.LVL3485:
	beq	.L3348
.L3347:
	.loc 27 558 0
	mov	r1, r4
	mov	r0, r5
	bl	isMDBParentOf
.LVL3486:
	cmp	r0, #0
	.loc 27 560 0
	mov	r1, #1
	mov	r0, r4
	.loc 27 558 0
	beq	.L3348
.LVL3487:
	.loc 27 560 0
	bl	cteDelete
.LVL3488:
	.loc 27 561 0
	cmp	r0, #0
	ldmnefd	sp!, {r4, r5, r6, pc}
.LBB10055:
.LBB10051:
	.loc 8 24 0
	ldr	r3, [r6]
	add	r3, r3, #1
	.loc 8 34 0
	cmp	r3, #99
	.loc 8 24 0
	str	r3, [r6]
	.loc 8 34 0
	bls	.L3346
	bl	preemptionPoint.part.51
.LVL3489:
.LBE10051:
.LBE10055:
	.loc 27 566 0
	cmp	r0, #0
	ldmnefd	sp!, {r4, r5, r6, pc}
.LBB10056:
.LBB10054:
	.loc 28 450 0
	ldr	r4, [r5, #12]
.LVL3490:
.LBE10054:
.LBE10056:
	.loc 27 557 0
	bics	r4, r4, #7
.LVL3491:
	bne	.L3347
.L3348:
	.loc 27 571 0
	mov	r0, #0
	ldmfd	sp!, {r4, r5, r6, pc}
	.cfi_endproc
.LFE571:
	.size	cteRevoke, .-cteRevoke
	.align	2
	.global	invokeCNodeRevoke
	.type	invokeCNodeRevoke, %function
invokeCNodeRevoke:
.LFB559:
	.loc 27 310 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL3492:
	.loc 27 311 0
	b	cteRevoke
.LVL3493:
	.cfi_endproc
.LFE559:
	.size	invokeCNodeRevoke, .-invokeCNodeRevoke
	.align	2
	.global	invokeTCB_ThreadControl
	.type	invokeTCB_ThreadControl, %function
invokeTCB_ThreadControl:
.LFB663:
	.loc 31 880 0
	.cfi_startproc
	@ args = 44, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3494:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
.LBB10057:
.LBB10058:
	.loc 28 1596 0
	ands	r6, r0, #15
.LBE10058:
.LBE10057:
	.loc 31 880 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 40
	.loc 31 880 0
	mov	r4, r0
.LVL3495:
	ldr	r5, [sp, #80]
.LBB10062:
.LBB10059:
	.loc 28 1596 0
	bne	.L3398
.LVL3496:
	.loc 28 1597 0
	bic	ip, r0, #15
.LBE10059:
.LBE10062:
	.loc 31 884 0
	tst	r5, #4
.LBB10063:
.LBB10060:
	.loc 28 1600 0
	orr	ip, ip, #12
	mov	r8, r1
	.loc 28 1602 0
	str	r6, [sp, #4]
	str	ip, [sp]
.LBE10060:
.LBE10063:
	.loc 31 884 0
	beq	.L3357
	.loc 31 888 0
	tst	r5, #1
	.loc 31 885 0
	str	r2, [r0, #116]
	.loc 31 888 0
	bne	.L3358
.LVL3497:
.L3367:
.LBB10064:
	.loc 31 895 0
	bic	r7, r4, #508
	.loc 31 896 0
	mov	r1, #1
	.loc 31 895 0
	bic	r7, r7, #3
.LVL3498:
	.loc 31 896 0
	mov	r0, r7
	bl	cteDelete
.LVL3499:
	.loc 31 897 0
	cmp	r0, #0
	bne	.L3370
	.loc 31 900 0
	ldr	r3, [sp, #48]
	add	r9, sp, #40
	ldmia	r9, {r0, r1}
.LVL3500:
	ldmia	r3, {r2, r3}
	bl	sameObjectAs
.LVL3501:
	cmp	r0, #0
	bne	.L3399
.L3362:
.LBE10064:
.LBB10065:
	.loc 31 909 0
	add	r7, r7, #16
.LVL3502:
	.loc 31 910 0
	mov	r1, #1
	mov	r0, r7
	bl	cteDelete
.LVL3503:
	.loc 31 911 0
	cmp	r0, #0
	bne	.L3370
	.loc 31 914 0
	ldr	r3, [sp, #60]
	add	r9, sp, #52
	ldmia	r9, {r0, r1}
.LVL3504:
	ldmia	r3, {r2, r3}
	bl	sameObjectAs
.LVL3505:
	cmp	r0, #0
	beq	.L3361
	.loc 31 915 0 discriminator 1
	add	r3, sp, #8
	ldmdb	r3, {r0, r1}
	ldmia	r8, {r2, r3}
	bl	sameObjectAs
.LVL3506:
	.loc 31 914 0 discriminator 1
	cmp	r0, #0
	beq	.L3361
	.loc 31 916 0
	mov	r3, r7
	ldmia	r9, {r0, r1}
	ldr	r2, [sp, #60]
	bl	cteInsert
.LVL3507:
	b	.L3361
.LVL3508:
.L3357:
.LBE10065:
	.loc 31 888 0
	tst	r5, #1
	bne	.L3400
.LVL3509:
.L3361:
	.loc 31 920 0
	tst	r5, #2
	bne	.L3401
.LVL3510:
.L3379:
	.loc 31 936 0
	mov	r0, r6
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.LVL3511:
.L3401:
	.cfi_restore_state
.LBB10066:
	.loc 31 923 0
	bic	r0, r4, #508
	.loc 31 924 0
	mov	r1, #1
	.loc 31 923 0
	bic	r0, r0, #3
	add	r5, r0, #64
.LVL3512:
	.loc 31 924 0
	mov	r0, r5
	bl	cteDelete
.LVL3513:
	.loc 31 925 0
	cmp	r0, #0
	beq	.L3402
.LVL3514:
.L3370:
.LBE10066:
.LBB10067:
	mov	r6, r0
.LBE10067:
	.loc 31 936 0
	mov	r0, r6
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.LVL3515:
.L3402:
	.cfi_restore_state
.LBB10068:
	.loc 31 929 0
	ldr	r3, [sp, #76]
	cmp	r3, #0
	.loc 31 928 0
	ldr	r3, [sp, #64]
	str	r3, [r4, #120]
	.loc 31 929 0
	beq	.L3379
	.loc 31 929 0 is_stmt 0 discriminator 1
	ldr	r3, [sp, #76]
	add	r4, sp, #68
.LVL3516:
	ldmia	r4, {r0, r1}
.LVL3517:
	ldmia	r3, {r2, r3}
	bl	sameObjectAs
.LVL3518:
	cmp	r0, #0
	beq	.L3379
	.loc 31 930 0 is_stmt 1 discriminator 2
	add	r3, sp, #8
	ldmdb	r3, {r0, r1}
	ldmia	r8, {r2, r3}
	bl	sameObjectAs
.LVL3519:
	.loc 31 929 0 discriminator 2
	cmp	r0, #0
	beq	.L3379
	.loc 31 931 0
	mov	r3, r5
	ldmia	r4, {r0, r1}
	ldr	r2, [sp, #76]
	bl	cteInsert
.LVL3520:
	b	.L3379
.LVL3521:
.L3399:
.LBE10068:
.LBB10069:
	.loc 31 901 0 discriminator 1
	add	r3, sp, #8
	ldmdb	r3, {r0, r1}
	ldmia	r8, {r2, r3}
	bl	sameObjectAs
.LVL3522:
	.loc 31 900 0 discriminator 1
	cmp	r0, #0
	beq	.L3362
	.loc 31 902 0
	ldmia	r9, {r0, r1}
	mov	r3, r7
	ldr	r2, [sp, #48]
	bl	cteInsert
.LVL3523:
	b	.L3362
.LVL3524:
.L3358:
.LBE10069:
	.loc 31 889 0
	mov	r1, r3
.LVL3525:
	bl	setPriority
.LVL3526:
	b	.L3367
.LVL3527:
.L3400:
	mov	r1, r3
.LVL3528:
	bl	setPriority
.LVL3529:
	b	.L3361
.LVL3530:
.L3398:
.LBB10070:
.LBB10061:
	bl	cap_thread_cap_new.part.192
.LVL3531:
.LBE10061:
.LBE10070:
	.cfi_endproc
.LFE663:
	.size	invokeTCB_ThreadControl, .-invokeTCB_ThreadControl
	.align	2
	.global	cteDeleteOne
	.type	cteDeleteOne, %function
cteDeleteOne:
.LFB578:
	.loc 27 758 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3532:
	ldr	r3, [r0]
.LVL3533:
.LBB10105:
.LBB10106:
	.loc 28 1035 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 28 1037 0
	uxtbeq	r3, r3
.LVL3534:
	.loc 28 1036 0
	andne	r3, r3, #15
.LBE10106:
.LBE10105:
	.loc 27 760 0
	cmp	r3, #0
	bxeq	lr
	.loc 27 758 0
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	sub	sp, sp, #36
	.cfi_def_cfa_offset 48
	mov	r4, r0
.LBB10107:
	.loc 27 768 0
	add	r5, sp, #20
	.loc 27 767 0
	bl	isFinalCapability
.LVL3535:
	.loc 27 768 0
	mov	r2, #1
	.loc 27 767 0
	mov	r3, r0
.LVL3536:
	.loc 27 768 0
	str	r2, [sp]
	mov	r0, r5
.LVL3537:
	ldmia	r4, {r1, r2}
	bl	finaliseCap
.LVL3538:
	ldr	r3, [sp, #20]
	add	r2, sp, #12
	ldmia	r5, {r0, r1}
.LBB10108:
.LBB10109:
.LBB10110:
.LBB10111:
	.loc 28 1035 0
	and	ip, r3, #14
	cmp	ip, #14
	stmia	r2, {r0, r1}
.LVL3539:
	.loc 28 1037 0
	uxtbeq	r2, r3
	.loc 28 1036 0
	andne	r2, r3, #15
.LBE10111:
.LBE10110:
	.loc 27 623 0
	cmp	r2, #0
	beq	.L3410
	cmp	r2, #46
	bne	.L3423
.LVL3540:
.LBB10112:
.LBB10113:
.LBB10114:
.LBB10115:
.LBB10116:
.LBB10117:
.LBB10118:
	.loc 28 2318 0
	uxtb	r2, r3
	ldr	r1, [sp, #16]
.LVL3541:
	cmp	r2, #46
	bne	.L3425
	.loc 28 2321 0
	ubfx	r3, r3, #8, #6
.LVL3542:
.LBE10118:
.LBE10117:
	.loc 39 97 0
	cmp	r3, #32
.LBE10116:
.LBE10115:
	.loc 39 107 0
	andeq	r2, r1, #31
.LVL3543:
	mvneq	r3, #31
.LBB10124:
.LBB10121:
	.loc 39 97 0
	beq	.L3416
.LVL3544:
.LBE10121:
.LBE10124:
	.loc 39 107 0
	mov	r2, #1
.LBB10125:
.LBB10122:
	.loc 39 100 0
	and	r3, r3, #31
.LBE10122:
.LBE10125:
	.loc 39 107 0
	add	r3, r3, r2
	mov	r3, r2, asl r3
	sub	r2, r3, #1
	rsb	r3, r3, #0
	and	r2, r2, r1
.LVL3545:
.L3416:
.LBE10114:
.LBE10113:
	.loc 27 629 0
	cmp	r2, #0
	beq	.L3410
.LBB10128:
.LBB10129:
	.loc 39 114 0
	and	r3, r3, r1
.LVL3546:
.LBE10129:
.LBE10128:
.LBE10112:
.LBE10109:
.LBE10108:
	.loc 27 770 0
	cmp	r4, r3
	cmpeq	r2, #1
	bne	.L3414
.LVL3547:
.L3410:
	.loc 27 770 0 is_stmt 0 discriminator 2
	ldrh	r1, [sp, #28]
	movw	r3, #65535
	cmp	r1, r3
	bne	.L3414
	.loc 27 772 0 is_stmt 1
	mov	r0, r4
.LVL3548:
.LBE10107:
	.loc 27 774 0
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL3549:
.LBB10138:
	.loc 27 772 0
	b	emptySlot
.LVL3550:
.L3423:
	.cfi_restore_state
.LBB10136:
.LBB10134:
.LBB10131:
.LBB10132:
	.loc 27 632 0
	movw	r0, #:lower16:.LC150
.LVL3551:
	movw	r1, #:lower16:.LC102
	movt	r0, #:upper16:.LC150
	movt	r1, #:upper16:.LC102
	mov	r2, #632
	ldr	r3, .L3426
.LVL3552:
	bl	_fail
.LVL3553:
.L3414:
.LBE10132:
.LBE10131:
.LBE10134:
.LBE10136:
.LBE10138:
.LBB10139:
.LBB10140:
.LBB10141:
	.loc 27 770 0
	movw	r0, #:lower16:.LC158
.LVL3554:
	movw	r1, #:lower16:.LC102
	movt	r0, #:upper16:.LC158
	movt	r1, #:upper16:.LC102
	movw	r2, #771
	ldr	r3, .L3426+4
	bl	_assert_fail
.LVL3555:
.L3425:
.LBE10141:
.LBE10140:
.LBE10139:
.LBB10142:
.LBB10137:
.LBB10135:
.LBB10133:
.LBB10130:
.LBB10127:
.LBB10126:
.LBB10123:
.LBB10120:
.LBB10119:
	bl	cap_zombie_cap_get_capZombieType.isra.80.part.81
.LVL3556:
.L3427:
	.align	2
.L3426:
	.word	.LANCHOR7-3864
	.word	.LANCHOR7-3816
.LBE10119:
.LBE10120:
.LBE10123:
.LBE10126:
.LBE10127:
.LBE10130:
.LBE10133:
.LBE10135:
.LBE10137:
.LBE10142:
	.cfi_endproc
.LFE578:
	.size	cteDeleteOne, .-cteDeleteOne
	.align	2
	.global	cancelIPC
	.type	cancelIPC, %function
cancelIPC:
.LFB595:
	.loc 51 232 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3557:
	ldr	r1, [r0, #72]
.LVL3558:
	stmfd	sp!, {r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
.LBB10177:
.LBB10178:
	.loc 28 157 0
	and	r3, r1, #15
.LVL3559:
.LBE10178:
.LBE10177:
	.loc 51 235 0
	sub	r3, r3, #3
.LVL3560:
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L3428
.L3431:
	.word	.L3430
	.word	.L3430
	.word	.L3432
	.word	.L3433
.L3433:
.LVL3561:
	.loc 51 261 0
	bic	r1, r1, #15
.LVL3562:
	.loc 51 283 0
	ldmfd	sp!, {r3, r4, r5, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL3563:
	.loc 51 261 0
	b	cancelSignal
.LVL3564:
.L3432:
	.cfi_restore_state
.LBB10179:
	.loc 51 271 0
	bic	r3, r0, #508
.LVL3565:
.LBB10180:
.LBB10181:
	.loc 28 576 0
	mov	r2, #0
.LBE10181:
.LBE10180:
	.loc 51 271 0
	bic	r3, r3, #3
.LBB10184:
.LBB10182:
	.loc 28 576 0
	str	r2, [r0, #88]
.LBE10182:
.LBE10184:
.LBB10185:
.LBB10186:
	.loc 28 450 0
	ldr	r3, [r3, #44]
.LBE10186:
.LBE10185:
.LBB10187:
.LBB10183:
	.loc 28 577 0
	str	r2, [r0, #92]
.LVL3566:
.LBE10183:
.LBE10187:
	.loc 51 274 0
	bics	r0, r3, #7
.LVL3567:
	ldmeqfd	sp!, {r3, r4, r5, pc}
.LBE10179:
	.loc 51 283 0
	ldmfd	sp!, {r3, r4, r5, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LBB10188:
	.loc 51 277 0
	b	cteDeleteOne
.LVL3568:
.L3430:
	.cfi_restore_state
.LBE10188:
.LBB10189:
.LBB10190:
.LBB10191:
	.loc 28 127 0
	bic	r1, r1, #15
.LVL3569:
	mov	r3, r0
.LVL3570:
	ldr	r2, [r1]
.LVL3571:
.LBE10191:
.LBE10190:
	.loc 51 245 0
	tst	r2, #3
	beq	.L3446
.LVL3572:
.LBB10192:
.LBB10193:
	.loc 31 167 0
	ldr	r4, [r0, #136]
.LBE10193:
.LBE10192:
.LBB10196:
.LBB10197:
.LBB10198:
.LBB10199:
	.loc 28 384 0
	bic	ip, r2, #15
	ldr	r0, [r1, #4]
.LVL3573:
.LBE10199:
.LBE10198:
.LBE10197:
.LBE10196:
.LBB10203:
.LBB10194:
	.loc 31 167 0
	cmp	r4, #0
	.loc 31 168 0
	ldrne	r5, [r3, #132]
.LBE10194:
.LBE10203:
.LBB10204:
.LBB10202:
.LBB10200:
.LBB10201:
	.loc 28 365 0
	bic	lr, r0, #15
.LVL3574:
.LBE10201:
.LBE10200:
.LBE10202:
.LBE10204:
.LBB10205:
.LBB10195:
	.loc 31 170 0
	ldreq	lr, [r3, #132]
.LVL3575:
	.loc 31 168 0
	strne	r5, [r4, #132]
	ldrne	r5, [r3, #132]
	.loc 31 170 0
	moveq	r5, lr
	.loc 31 173 0
	cmp	r5, #0
	.loc 31 174 0
	strne	r4, [r5, #136]
	.loc 31 167 0
	moveq	ip, r4
.LVL3576:
.LBE10195:
.LBE10205:
.LBB10206:
.LBB10207:
.LBB10208:
.LBB10209:
	.loc 28 376 0
	tst	lr, #15
	bne	.L3447
	.loc 28 377 0
	and	r0, r0, #15
.LVL3577:
	.loc 28 378 0
	bic	r4, lr, #15
.LBE10209:
.LBE10208:
.LBB10212:
.LBB10213:
	.loc 28 395 0
	tst	ip, #15
.LBE10213:
.LBE10212:
.LBB10217:
.LBB10210:
	.loc 28 378 0
	orr	r0, r4, r0
	str	r0, [r1, #4]
.LVL3578:
.LBE10210:
.LBE10217:
.LBB10218:
.LBB10214:
	.loc 28 395 0
	bne	.L3448
	.loc 28 397 0
	bic	ip, ip, #15
.LVL3579:
	.loc 28 396 0
	and	r2, r2, #15
.LVL3580:
	.loc 28 397 0
	orr	r2, ip, r2
.LBE10214:
.LBE10218:
.LBE10207:
.LBE10206:
	.loc 51 252 0
	cmp	lr, #0
.LBB10225:
.LBB10222:
.LBB10219:
.LBB10215:
	.loc 28 397 0
	str	r2, [r1]
.LVL3581:
.LBE10215:
.LBE10219:
.LBE10222:
.LBE10225:
.LBB10226:
.LBB10227:
	.loc 28 415 0
	biceq	r2, r2, #3
	streq	r2, [r1]
.LVL3582:
.LBE10227:
.LBE10226:
.LBB10228:
.LBB10229:
	.loc 26 418 0
	mov	r0, r3
.LBB10230:
.LBB10231:
	.loc 28 169 0
	ldr	r2, [r3, #72]
	bic	r2, r2, #15
	str	r2, [r3, #72]
.LBE10231:
.LBE10230:
.LBE10229:
.LBE10228:
.LBE10189:
	.loc 51 283 0
	ldmfd	sp!, {r3, r4, r5, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL3583:
.LBB10236:
.LBB10233:
.LBB10232:
	.loc 26 418 0
	b	scheduleTCB
.LVL3584:
.L3428:
	ldmfd	sp!, {r3, r4, r5, pc}
.LVL3585:
.L3448:
	.cfi_restore_state
.LBE10232:
.LBE10233:
.LBB10234:
.LBB10223:
.LBB10220:
.LBB10216:
	bl	endpoint_ptr_set_epQueue_tail.isra.213.part.214
.LVL3586:
.L3446:
.LBE10216:
.LBE10220:
.LBE10223:
.LBE10234:
	.loc 51 245 0 discriminator 1
	movw	r0, #:lower16:.LC159
.LVL3587:
	movw	r1, #:lower16:.LC116
.LVL3588:
	movt	r0, #:upper16:.LC159
	movt	r1, #:upper16:.LC116
	mov	r2, #245
.LVL3589:
	ldr	r3, .L3449
.LVL3590:
	bl	_assert_fail
.LVL3591:
.L3447:
.LBB10235:
.LBB10224:
.LBB10221:
.LBB10211:
	bl	endpoint_ptr_set_epQueue_head.isra.211.part.212
.LVL3592:
.L3450:
	.align	2
.L3449:
	.word	.LANCHOR7-3800
.LBE10211:
.LBE10221:
.LBE10224:
.LBE10235:
.LBE10236:
	.cfi_endproc
.LFE595:
	.size	cancelIPC, .-cancelIPC
	.align	2
	.global	suspend
	.type	suspend, %function
suspend:
.LFB527:
	.loc 26 93 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3593:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 26 93 0
	mov	r4, r0
	.loc 26 94 0
	bl	cancelIPC
.LVL3594:
.LBB10245:
.LBB10246:
	.loc 26 418 0
	mov	r0, r4
.LBB10247:
.LBB10248:
	.loc 28 169 0
	ldr	r3, [r4, #72]
	bic	r3, r3, #15
	str	r3, [r4, #72]
.LBE10248:
.LBE10247:
	.loc 26 418 0
	bl	scheduleTCB
.LVL3595:
.LBE10246:
.LBE10245:
.LBB10249:
.LBB10250:
.LBB10251:
.LBB10252:
	.loc 28 108 0
	ldr	r3, [r4, #76]
.LBE10252:
.LBE10251:
	.loc 31 115 0
	tst	r3, #1
	ldmeqfd	sp!, {r4, pc}
	mov	r0, r4
.LBE10250:
.LBE10249:
	.loc 26 97 0
	ldmfd	sp!, {r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL3596:
.LBB10254:
.LBB10253:
	b	tcbSchedDequeue.part.242
.LVL3597:
.LBE10253:
.LBE10254:
	.cfi_endproc
.LFE527:
	.size	suspend, .-suspend
	.align	2
	.global	invokeTCB_Suspend
	.type	invokeTCB_Suspend, %function
invokeTCB_Suspend:
.LFB661:
	.loc 31 860 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3598:
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 31 861 0
	bl	suspend
.LVL3599:
	.loc 31 863 0
	mov	r0, #0
	ldmfd	sp!, {r3, pc}
	.cfi_endproc
.LFE661:
	.size	invokeTCB_Suspend, .-invokeTCB_Suspend
	.align	2
	.global	invokeTCB_ReadRegisters
	.type	invokeTCB_ReadRegisters, %function
invokeTCB_ReadRegisters:
.LFB665:
	.loc 31 988 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3600:
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 31 995 0
	cmp	r1, #0
	.loc 31 993 0
	movw	r3, #:lower16:ksCurThread
.LVL3601:
	.loc 31 988 0
	mov	r5, r2
	.loc 31 993 0
	movt	r3, #:upper16:ksCurThread
	.loc 31 988 0
	mov	r6, r0
	.loc 31 993 0
	ldr	r4, [r3]
.LVL3602:
	.loc 31 988 0
	ldr	r7, [sp, #24]
	.loc 31 995 0
	bne	.L3489
.LVL3603:
.L3457:
	.loc 31 1004 0
	cmp	r7, #0
	beq	.L3458
.LBB10274:
	.loc 31 1007 0
	mov	r0, #1
	mov	r1, r4
	bl	lookupIPCBuffer
.LVL3604:
	.loc 31 1011 0
	cmp	r5, #0
.LBB10275:
.LBB10276:
	.loc 13 21 0
	mov	r3, #0
	str	r3, [r4]
.LVL3605:
.LBE10276:
.LBE10275:
	.loc 31 1011 0
	beq	.L3469
	ldr	r1, .L3491
	movw	r2, #:lower16:.LANCHOR4
	movt	r2, #:upper16:.LANCHOR4
.LVL3606:
.L3460:
	.loc 31 1012 0 discriminator 4
	ldr	lr, [r1], #4
.LVL3607:
	.loc 31 1011 0 discriminator 4
	add	r3, r3, #1
	.loc 31 1012 0 discriminator 4
	ldr	ip, [r2], #4
	.loc 31 1011 0 discriminator 4
	cmp	r3, r5
.LBB10277:
.LBB10278:
	.loc 13 27 0 discriminator 4
	ldr	lr, [r6, lr, asl #2]
.LVL3608:
.LBE10278:
.LBE10277:
.LBB10279:
.LBB10280:
	.loc 13 21 0 discriminator 4
	str	lr, [r4, ip, asl #2]
.LVL3609:
.LBE10280:
.LBE10279:
	.loc 31 1011 0 discriminator 4
	beq	.L3469
	.loc 31 1011 0 is_stmt 0 discriminator 3
	cmp	r3, #4
	bne	.L3460
	.loc 31 1016 0 is_stmt 1
	cmp	r0, #0
	beq	.L3464
.LVL3610:
	.loc 31 1017 0 discriminator 1
	cmp	r5, #4
	bls	.L3467
	ldr	r1, .L3491+4
	add	r2, r0, #16
.LVL3611:
.L3463:
	.loc 31 1018 0 discriminator 2
	ldr	ip, [r1], #4
.LVL3612:
	add	r3, r3, #1
.LVL3613:
	.loc 31 1017 0 discriminator 2
	cmp	r5, r3
	movhi	lr, #1
	movls	lr, #0
	cmp	r3, #9
.LBB10281:
.LBB10282:
	.loc 13 27 0 discriminator 2
	ldr	ip, [r6, ip, asl #2]
.LVL3614:
.LBE10282:
.LBE10281:
	.loc 31 1017 0 discriminator 2
	movhi	lr, #0
	cmp	lr, #0
	.loc 31 1018 0 discriminator 2
	str	ip, [r2, #4]!
.LVL3615:
	.loc 31 1017 0 discriminator 2
	bne	.L3463
.LVL3616:
.L3467:
	.loc 31 1031 0
	cmp	r5, #10
	movls	r0, #0
.LVL3617:
	bls	.L3464
	add	r1, r0, #40
	ldr	ip, .L3491+8
	sub	r5, r5, #10
.LVL3618:
	mov	r0, #0
	b	.L3465
.LVL3619:
.L3490:
	.loc 31 1032 0 discriminator 2
	cmp	r0, r5
	beq	.L3464
.LVL3620:
.L3465:
.LBB10283:
.LBB10284:
	.loc 13 27 0 discriminator 3
	ldr	lr, [ip, #4]!
.LVL3621:
.LBE10284:
.LBE10283:
	.loc 31 1032 0 discriminator 3
	add	r0, r0, #1
.LVL3622:
	cmp	r0, #7
.LBB10286:
.LBB10285:
	.loc 13 27 0 discriminator 3
	ldr	lr, [r6, lr, asl #2]
.LBE10285:
.LBE10286:
	.loc 31 1033 0 discriminator 3
	str	lr, [r1, #4]!
.LVL3623:
	.loc 31 1032 0 discriminator 3
	bne	.L3490
.LVL3624:
.L3464:
	.loc 31 1039 0
	add	r3, r3, r0
.LVL3625:
.LBB10287:
.LBB10288:
	.loc 13 21 0
	str	r3, [r4, #4]
.LVL3626:
.L3458:
.LBE10288:
.LBE10287:
.LBE10274:
.LBB10289:
.LBB10290:
.LBB10291:
.LBB10292:
	.loc 28 169 0
	ldr	r3, [r4, #72]
.LBE10292:
.LBE10291:
	.loc 26 418 0
	mov	r0, r4
.LBB10294:
.LBB10293:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #1
	str	r3, [r4, #72]
.LBE10293:
.LBE10294:
	.loc 26 418 0
	bl	scheduleTCB
.LVL3627:
.LBE10290:
.LBE10289:
	.loc 31 1044 0
	mov	r0, #0
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.LVL3628:
.L3489:
	.loc 31 996 0
	bl	suspend
.LVL3629:
	b	.L3457
.LVL3630:
.L3469:
.LBB10295:
	.loc 31 1030 0
	cmp	r0, #0
	mov	r3, r5
.LVL3631:
	bne	.L3467
.LVL3632:
	b	.L3464
.L3492:
	.align	2
.L3491:
	.word	.LANCHOR7-3788
	.word	.LANCHOR7-3772
	.word	.LANCHOR7-3752
.LBE10295:
	.cfi_endproc
.LFE665:
	.size	invokeTCB_ReadRegisters, .-invokeTCB_ReadRegisters
	.align	2
	.global	restart
	.type	restart, %function
restart:
.LFB528:
	.loc 26 101 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3633:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB10316:
.LBB10317:
.LBB10318:
.LBB10319:
	.loc 28 146 0
	ldr	r3, [r0, #72]
.LBE10319:
.LBE10318:
	.loc 26 33 0
	ands	r3, r3, #15
	beq	.L3495
	sub	r3, r3, #3
	cmp	r3, #3
	ldmhifd	sp!, {r4, pc}
.L3495:
.LVL3634:
	mov	r4, r0
.LBE10317:
.LBE10316:
.LBB10320:
.LBB10321:
	.loc 26 103 0
	bl	cancelIPC
.LVL3635:
	.loc 26 104 0
	mov	r0, r4
	bl	setupReplyMaster
.LVL3636:
.LBB10322:
.LBB10323:
.LBB10324:
.LBB10325:
	.loc 28 169 0
	ldr	r3, [r4, #72]
.LBE10325:
.LBE10324:
	.loc 26 418 0
	mov	r0, r4
.LBB10327:
.LBB10326:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #2
	str	r3, [r4, #72]
.LBE10326:
.LBE10327:
	.loc 26 418 0
	bl	scheduleTCB
.LVL3637:
.LBE10323:
.LBE10322:
.LBB10328:
.LBB10329:
.LBB10330:
.LBB10331:
	.loc 28 108 0
	ldr	r3, [r4, #76]
.LBE10331:
.LBE10330:
	.loc 31 53 0
	tst	r3, #1
	beq	.L3503
.LVL3638:
.LBE10329:
.LBE10328:
.LBB10333:
.LBB10334:
	.loc 26 411 0
	mov	r0, r4
	mov	r1, #0
.LBE10334:
.LBE10333:
.LBE10321:
.LBE10320:
	.loc 26 109 0
	ldmfd	sp!, {r4, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL3639:
.LBB10344:
.LBB10342:
.LBB10338:
.LBB10335:
	.loc 26 411 0
	b	possibleSwitchTo
.LVL3640:
.L3503:
	.cfi_restore_state
.LBE10335:
.LBE10338:
.LBB10339:
.LBB10332:
	mov	r0, r4
	bl	tcbSchedEnqueue.part.233
.LVL3641:
.LBE10332:
.LBE10339:
.LBB10340:
.LBB10336:
	mov	r0, r4
	mov	r1, #0
.LBE10336:
.LBE10340:
.LBE10342:
.LBE10344:
	.loc 26 109 0
	ldmfd	sp!, {r4, lr}
	.cfi_restore 4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
.LVL3642:
.LBB10345:
.LBB10343:
.LBB10341:
.LBB10337:
	.loc 26 411 0
	b	possibleSwitchTo
.LVL3643:
.LBE10337:
.LBE10341:
.LBE10343:
.LBE10345:
	.cfi_endproc
.LFE528:
	.size	restart, .-restart
	.align	2
	.global	invokeTCB_Resume
	.type	invokeTCB_Resume, %function
invokeTCB_Resume:
.LFB662:
	.loc 31 867 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3644:
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 31 868 0
	bl	restart
.LVL3645:
	.loc 31 870 0
	mov	r0, #0
	ldmfd	sp!, {r3, pc}
	.cfi_endproc
.LFE662:
	.size	invokeTCB_Resume, .-invokeTCB_Resume
	.align	2
	.global	invokeTCB_WriteRegisters
	.type	invokeTCB_WriteRegisters, %function
invokeTCB_WriteRegisters:
.LFB666:
	.loc 31 1049 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3646:
	cmp	r2, #17
.LVL3647:
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	movcs	r2, #17
.LVL3648:
	.loc 31 1049 0
	ldr	r7, [sp, #24]
	.loc 31 1063 0
	cmp	r2, #0
	beq	.L3507
.LBB10368:
.LBB10369:
	.loc 43 30 0
	movw	r3, #:lower16:ksCurThread
.LVL3649:
	ldr	r6, .L3531
	movt	r3, #:upper16:ksCurThread
	ldr	r5, .L3531+4
	ldr	r8, [r3]
	add	r4, r7, #12
	mov	r3, #0
	b	.L3512
.LVL3650:
.L3508:
	.loc 43 33 0
	cmp	r7, #0
	beq	.L3513
	.loc 43 34 0
	ldr	ip, [r4]
.LVL3651:
.L3509:
.LBE10369:
.LBE10368:
.LBB10374:
.LBB10375:
	.loc 42 123 0
	cmp	lr, #16
.LBE10375:
.LBE10374:
	.loc 31 1063 0
	add	r3, r3, #1
.LVL3652:
.LBB10377:
.LBB10376:
	.loc 42 124 0
	andeq	ip, ip, #-134217728
	add	r5, r5, #4
	orreq	ip, ip, #80
.LVL3653:
.LBE10376:
.LBE10377:
	.loc 31 1063 0
	cmp	r3, #9
	cmpls	r3, r2
.LBB10378:
.LBB10379:
	.loc 13 21 0
	str	ip, [r0, lr, asl #2]
	add	r4, r4, #4
.LBE10379:
.LBE10378:
	.loc 31 1063 0
	bcs	.L3507
.LVL3654:
.L3512:
	add	ip, r3, #2
	.loc 31 1065 0 discriminator 3
	ldr	lr, [r6], #4
.LVL3655:
.LBB10380:
.LBB10372:
	.loc 43 29 0 discriminator 3
	cmp	ip, #3
	bhi	.L3508
.LVL3656:
.LBB10370:
.LBB10371:
	.loc 13 27 0
	ldr	ip, [r5]
.LVL3657:
	ldr	ip, [r8, ip, asl #2]
	b	.L3509
.LVL3658:
.L3507:
	ldr	r5, .L3531+8
	add	r4, r7, #48
	add	r6, r7, #76
.LBE10371:
.LBE10370:
	.loc 43 30 0
	mov	r3, #10
.LVL3659:
.L3515:
.LBE10372:
.LBE10380:
	.loc 31 1070 0 discriminator 3
	cmp	r3, r2
	bcs	.L3519
.LBB10381:
.LBB10382:
	.loc 43 33 0 discriminator 4
	cmp	r7, #0
.LBE10382:
.LBE10381:
	.loc 31 1071 0 discriminator 4
	ldr	lr, [r5, #4]!
.LVL3660:
.LBB10384:
.LBB10383:
	.loc 43 33 0 discriminator 4
	beq	.L3513
	.loc 43 34 0
	ldr	ip, [r4, #4]!
.LVL3661:
.LBE10383:
.LBE10384:
.LBB10385:
.LBB10386:
	.loc 42 123 0
	cmp	lr, #16
	add	r3, r3, #1
.LVL3662:
	.loc 42 124 0
	andeq	ip, ip, #-134217728
	orreq	ip, ip, #80
.LVL3663:
.LBE10386:
.LBE10385:
	.loc 31 1070 0
	cmp	r4, r6
.LBB10387:
.LBB10388:
	.loc 13 21 0
	str	ip, [r0, lr, asl #2]
.LVL3664:
.LBE10388:
.LBE10387:
	.loc 31 1070 0
	bne	.L3515
.LVL3665:
.L3519:
.LBB10389:
.LBB10390:
.LBB10391:
	.loc 13 21 0
	ldr	r3, [r0, #68]
.LBE10391:
.LBE10390:
.LBE10389:
	.loc 31 1080 0
	cmp	r1, #0
.LBB10394:
.LBB10393:
.LBB10392:
	.loc 13 21 0
	str	r3, [r0, #60]
.LBE10392:
.LBE10393:
.LBE10394:
	.loc 31 1080 0
	beq	.L3528
	.loc 31 1081 0
	bl	restart
.LVL3666:
.L3528:
	.loc 31 1085 0
	mov	r0, #0
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL3667:
.L3513:
.LBB10395:
.LBB10373:
	bl	getSyscallArg.part.145
.LVL3668:
.L3532:
	.align	2
.L3531:
	.word	.LANCHOR7-3788
	.word	.LANCHOR4+8
	.word	.LANCHOR7-3752
.LBE10373:
.LBE10395:
	.cfi_endproc
.LFE666:
	.size	invokeTCB_WriteRegisters, .-invokeTCB_WriteRegisters
	.align	2
	.global	invokeTCB_CopyRegisters
	.type	invokeTCB_CopyRegisters, %function
invokeTCB_CopyRegisters:
.LFB664:
	.loc 31 943 0
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3669:
	.loc 31 944 0
	cmp	r2, #0
	.loc 31 943 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 31 943 0
	ldr	r7, [sp, #24]
	mov	r4, r0
	mov	r5, r1
	mov	r8, r3
	ldr	r6, [sp, #28]
	.loc 31 944 0
	bne	.L3554
	.loc 31 948 0
	cmp	r8, #0
	bne	.L3555
.LVL3670:
.L3535:
	.loc 31 952 0
	cmp	r7, #0
	beq	.L3536
	ldr	r3, .L3556
	add	r0, r3, #40
.L3537:
.LBB10426:
	.loc 31 958 0 discriminator 3
	ldr	r2, [r3], #4
.LVL3671:
.LBB10427:
.LBB10428:
	.loc 13 27 0 discriminator 3
	ldr	r1, [r5, r2, asl #2]
.LVL3672:
.LBE10428:
.LBE10427:
	.loc 31 957 0 discriminator 3
	cmp	r3, r0
.LBB10429:
.LBB10430:
	.loc 13 21 0 discriminator 3
	str	r1, [r4, r2, asl #2]
.LVL3673:
.LBE10430:
.LBE10429:
	.loc 31 957 0 discriminator 3
	bne	.L3537
.LVL3674:
.LBB10431:
.LBB10432:
.LBB10433:
	.loc 13 21 0
	ldr	r3, [r4, #68]
	str	r3, [r4, #60]
.LVL3675:
.L3536:
.LBE10433:
.LBE10432:
.LBE10431:
.LBE10426:
	.loc 31 966 0
	cmp	r6, #0
	beq	.L3552
	ldr	r3, .L3556+4
	add	r0, r3, #28
.L3539:
.LBB10434:
.LBB10435:
	.loc 31 971 0
	ldr	r2, [r3, #4]!
.LVL3676:
.LBB10436:
.LBB10437:
	.loc 13 27 0
	ldr	r1, [r5, r2, asl #2]
.LVL3677:
.LBE10437:
.LBE10436:
	.loc 31 970 0
	cmp	r3, r0
.LBB10438:
.LBB10439:
	.loc 13 21 0
	str	r1, [r4, r2, asl #2]
.LVL3678:
.LBE10439:
.LBE10438:
	.loc 31 970 0
	bne	.L3539
.LVL3679:
.L3552:
.LBE10435:
.LBE10434:
	.loc 31 977 0
	mov	r0, #0
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL3680:
.L3554:
	.loc 31 945 0
	mov	r0, r1
.LVL3681:
	bl	suspend
.LVL3682:
	.loc 31 948 0
	cmp	r8, #0
	beq	.L3535
.L3555:
	.loc 31 949 0
	mov	r0, r4
	bl	restart
.LVL3683:
	b	.L3535
.L3557:
	.align	2
.L3556:
	.word	.LANCHOR7-3788
	.word	.LANCHOR7-3752
	.cfi_endproc
.LFE664:
	.size	invokeTCB_CopyRegisters, .-invokeTCB_CopyRegisters
	.align	2
	.global	sendSignal
	.type	sendSignal, %function
sendSignal:
.LFB613:
	.loc 50 51 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3684:
	ldr	r3, [r0]
.LVL3685:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 50 51 0
	mov	r5, r1
.LBB10495:
.LBB10496:
	.loc 28 257 0
	and	r2, r3, #3
.LVL3686:
.LBE10496:
.LBE10495:
	.loc 50 52 0
	cmp	r2, #1
	beq	.L3560
	bcc	.L3561
	cmp	r2, #2
	ldreq	r1, [r0, #8]
.LVL3687:
.LBB10497:
	.loc 50 100 0
	orreq	r5, r1, r5
.LVL3688:
.LBB10498:
.LBB10499:
	.loc 28 213 0
	streq	r5, [r0, #8]
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL3689:
.L3561:
.LBE10499:
.LBE10498:
.LBE10497:
.LBB10500:
.LBB10501:
.LBB10502:
	.loc 28 181 0
	ldr	r4, [r0, #12]
.LVL3690:
.LBE10502:
.LBE10501:
	.loc 50 56 0
	bics	r4, r4, #15
.LVL3691:
	beq	.L3563
.LVL3692:
.LBB10503:
.LBB10504:
	.loc 28 157 0
	ldr	r2, [r4, #72]
.LVL3693:
	and	r2, r2, #15
.LVL3694:
.LBE10504:
.LBE10503:
	.loc 50 57 0
	cmp	r2, #3
	beq	.L3575
.LVL3695:
.L3563:
.LBB10505:
.LBB10506:
.LBB10507:
	.loc 28 269 0
	bic	r3, r3, #3
.LVL3696:
.LBE10507:
.LBE10506:
.LBB10509:
.LBB10510:
	.loc 28 213 0
	str	r5, [r0, #8]
.LBE10510:
.LBE10509:
.LBB10511:
.LBB10508:
	.loc 28 270 0
	orr	r3, r3, #2
	str	r3, [r0]
.LVL3697:
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL3698:
.L3560:
	ldr	r2, [r0, #4]
.LVL3699:
.LBE10508:
.LBE10511:
.LBE10505:
.LBE10500:
.LBB10512:
.LBB10513:
.LBB10514:
.LBB10515:
.LBB10516:
	.loc 28 238 0
	bic	r1, r3, #15
.LVL3700:
.LBE10516:
.LBE10515:
.LBE10514:
.LBE10513:
	.loc 50 79 0
	bics	r4, r2, #15
.LVL3701:
	beq	.L3576
.LVL3702:
.LBB10517:
.LBB10518:
	.loc 31 167 0
	ldr	lr, [r4, #136]
	cmp	lr, #0
	.loc 31 168 0
	ldrne	r6, [r4, #132]
	movne	ip, r4
	.loc 31 170 0
	ldreq	ip, [r4, #132]
.LVL3703:
	.loc 31 168 0
	strne	r6, [lr, #132]
	ldrne	r6, [r4, #132]
	.loc 31 170 0
	moveq	r6, ip
	.loc 31 173 0
	cmp	r6, #0
	.loc 31 174 0
	strne	lr, [r6, #136]
	.loc 31 167 0
	moveq	r1, lr
.LVL3704:
.LBE10518:
.LBE10517:
.LBB10519:
.LBB10520:
.LBB10521:
.LBB10522:
	.loc 28 230 0
	tst	ip, #15
	bne	.L3577
	.loc 28 231 0
	and	r2, r2, #15
	.loc 28 232 0
	bic	lr, ip, #15
.LBE10522:
.LBE10521:
.LBB10525:
.LBB10526:
	.loc 28 249 0
	tst	r1, #15
.LBE10526:
.LBE10525:
.LBB10530:
.LBB10523:
	.loc 28 232 0
	orr	r2, lr, r2
	str	r2, [r0, #4]
.LVL3705:
.LBE10523:
.LBE10530:
.LBB10531:
.LBB10527:
	.loc 28 249 0
	bne	.L3578
	.loc 28 251 0
	bic	r1, r1, #15
.LVL3706:
	.loc 28 250 0
	and	r3, r3, #15
.LVL3707:
	.loc 28 251 0
	orr	r3, r1, r3
.LBE10527:
.LBE10531:
.LBE10520:
.LBE10519:
	.loc 50 86 0
	cmp	ip, #0
.LBB10537:
.LBB10535:
.LBB10532:
.LBB10528:
	.loc 28 251 0
	str	r3, [r0]
.LVL3708:
.LBE10528:
.LBE10532:
.LBE10535:
.LBE10537:
.LBB10538:
.LBB10539:
	.loc 28 269 0
	biceq	r3, r3, #3
	streq	r3, [r0]
.LVL3709:
.L3571:
.LBE10539:
.LBE10538:
.LBB10540:
.LBB10541:
.LBB10542:
.LBB10543:
	.loc 28 169 0
	ldr	r3, [r4, #72]
.LBE10543:
.LBE10542:
	.loc 26 418 0
	mov	r0, r4
.LBB10545:
.LBB10544:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #1
	str	r3, [r4, #72]
.LBE10544:
.LBE10545:
	.loc 26 418 0
	bl	scheduleTCB
.LVL3710:
.LBE10541:
.LBE10540:
.LBB10546:
.LBB10547:
	.loc 13 21 0
	str	r5, [r4]
.LVL3711:
.LBE10547:
.LBE10546:
.LBB10548:
.LBB10549:
	.loc 26 411 0
	mov	r0, r4
	mov	r1, #0
.LBE10549:
.LBE10548:
.LBE10512:
	.loc 50 106 0
	ldmfd	sp!, {r4, r5, r6, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL3712:
.LBB10553:
.LBB10551:
.LBB10550:
	.loc 26 411 0
	b	possibleSwitchTo
.LVL3713:
.L3575:
	.cfi_restore_state
.LBE10550:
.LBE10551:
.LBE10553:
.LBB10554:
	.loc 50 59 0
	mov	r0, r4
.LVL3714:
	bl	cancelIPC
.LVL3715:
	b	.L3571
.LVL3716:
.L3576:
.LBE10554:
.LBB10555:
	.loc 50 79 0 discriminator 1
	movw	r0, #:lower16:.LC160
.LVL3717:
	movw	r1, #:lower16:.LC109
.LVL3718:
	movt	r0, #:upper16:.LC160
	movt	r1, #:upper16:.LC109
	mov	r2, #79
	ldr	r3, .L3579
.LVL3719:
	bl	_assert_fail
.LVL3720:
.L3577:
.LBB10552:
.LBB10536:
.LBB10533:
.LBB10524:
	bl	notification_ptr_set_ntfnQueue_head.isra.219.part.220
.LVL3721:
.L3578:
.LBE10524:
.LBE10533:
.LBB10534:
.LBB10529:
	bl	notification_ptr_set_ntfnQueue_tail.isra.221.part.222
.LVL3722:
.L3580:
	.align	2
.L3579:
	.word	.LANCHOR7-3720
.LBE10529:
.LBE10534:
.LBE10536:
.LBE10552:
.LBE10555:
	.cfi_endproc
.LFE613:
	.size	sendSignal, .-sendSignal
	.align	2
	.global	performInvocation_Notification
	.type	performInvocation_Notification, %function
performInvocation_Notification:
.LFB635:
	.loc 36 701 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3723:
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 36 702 0
	bl	sendSignal
.LVL3724:
	.loc 36 705 0
	mov	r0, #0
	ldmfd	sp!, {r3, pc}
	.cfi_endproc
.LFE635:
	.size	performInvocation_Notification, .-performInvocation_Notification
	.align	2
	.global	invokeIRQHandler_SetIRQHandler
	.type	invokeIRQHandler_SetIRQHandler, %function
invokeIRQHandler_SetIRQHandler:
.LFB603:
	.loc 30 170 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3725:
	.loc 30 173 0
	movw	ip, #:lower16:intStateIRQNode
	.loc 30 170 0
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 30 173 0
	movt	ip, #:upper16:intStateIRQNode
	.loc 30 170 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
	.loc 30 170 0
	mov	r6, r3
	.loc 30 173 0
	ldr	r5, [ip]
	.loc 30 170 0
	stmia	sp, {r1, r2}
	.loc 30 173 0
	add	r5, r5, r0, asl #4
.LVL3726:
	.loc 30 175 0
	mov	r0, r5
.LVL3727:
	bl	cteDeleteOne
.LVL3728:
	.loc 30 176 0
	mov	r3, r5
	mov	r2, r6
	ldmia	sp, {r0, r1}
	.loc 30 177 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL3729:
	.loc 30 176 0
	b	cteInsert
.LVL3730:
	.cfi_endproc
.LFE603:
	.size	invokeIRQHandler_SetIRQHandler, .-invokeIRQHandler_SetIRQHandler
	.align	2
	.global	invokeIRQHandler_ClearIRQHandler
	.type	invokeIRQHandler_ClearIRQHandler, %function
invokeIRQHandler_ClearIRQHandler:
.LFB604:
	.loc 30 181 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL3731:
	.loc 30 184 0
	movw	r3, #:lower16:intStateIRQNode
	movt	r3, #:upper16:intStateIRQNode
	ldr	r3, [r3]
	.loc 30 186 0
	add	r0, r3, r0, asl #4
.LVL3732:
	b	cteDeleteOne
.LVL3733:
	.cfi_endproc
.LFE604:
	.size	invokeIRQHandler_ClearIRQHandler, .-invokeIRQHandler_ClearIRQHandler
	.align	2
	.global	deletingIRQHandler
	.type	deletingIRQHandler, %function
deletingIRQHandler:
.LFB605:
	.loc 30 191 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL3734:
	.loc 30 194 0
	movw	r3, #:lower16:intStateIRQNode
	movt	r3, #:upper16:intStateIRQNode
	ldr	r3, [r3]
	.loc 30 196 0
	add	r0, r3, r0, asl #4
.LVL3735:
	b	cteDeleteOne
.LVL3736:
	.cfi_endproc
.LFE605:
	.size	deletingIRQHandler, .-deletingIRQHandler
	.align	2
	.global	deleteCallerCap
	.type	deleteCallerCap, %function
deleteCallerCap:
.LFB647:
	.loc 31 218 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL3737:
	.loc 31 221 0
	bic	r0, r0, #508
.LVL3738:
	bic	r0, r0, #3
	.loc 31 223 0
	add	r0, r0, #48
	b	cteDeleteOne
.LVL3739:
	.cfi_endproc
.LFE647:
	.size	deleteCallerCap, .-deleteCallerCap
	.align	2
	.global	capDL
	.type	capDL, %function
capDL:
.LFB404:
	.loc 5 239 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3740:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
.LBB10632:
.LBB10633:
.LBB10634:
	.loc 6 58 0
	mvn	r6, #1040384
	ldr	r7, .L3697
.LBE10634:
.LBE10633:
.LBB10637:
.LBB10638:
	.loc 5 229 0
	movw	r9, #:lower16:intStateIRQNode
.LBE10638:
.LBE10637:
.LBE10632:
	.loc 5 239 0
	sub	sp, sp, #16
	.cfi_def_cfa_offset 48
.LBB10721:
.LBB10641:
.LBB10635:
	.loc 6 58 0
	mov	r8, r6
.LBE10635:
.LBE10641:
.LBB10642:
.LBB10639:
	.loc 5 229 0
	movt	r9, #:upper16:intStateIRQNode
.L3589:
.LBE10639:
.LBE10642:
.LBB10643:
.LBB10636:
	.loc 6 58 0
	ldr	r3, [r6, #-4051]
	tst	r3, #256
	beq	.L3589
	.loc 6 59 0
	ldr	r3, [r8, #-4047]
.LBE10636:
.LBE10643:
	.loc 5 246 0
	uxtb	r3, r3
	cmp	r3, #255
	bne	.L3589
	mvn	r3, #0
	strb	r3, [sp, #7]
.L3635:
	.loc 5 248 0
	add	r0, sp, #7
	bl	getDecodedChar
.LVL3741:
	.loc 5 249 0
	cmp	r0, #0
	bne	.L3635
	.loc 5 252 0
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	sub	r3, r3, #240
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L3589
.L3594:
	.word	.L3593
	.word	.L3595
	.word	.L3596
	.word	.L3597
	.word	.L3598
	.word	.L3599
	.word	.L3600
	.word	.L3589
	.word	.L3589
	.word	.L3601
	.word	.L3602
.L3602:
.LBB10644:
.LBB10645:
	.loc 6 52 0
	mvn	r1, #1040384
.L3664:
	ldr	r3, [r1, #-4051]
	mvn	r2, #1040384
	tst	r3, #8
	beq	.L3664
	.loc 6 53 0
	mov	r3, #187
	str	r3, [r2, #-4047]
.LVL3742:
.LBE10645:
.LBE10644:
.LBE10721:
	.loc 5 341 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LVL3743:
.L3601:
	.cfi_restore_state
.LBB10722:
.LBB10646:
.LBB10647:
	.loc 5 234 0
	mov	r0, #224
.LVL3744:
	bl	sendWord
.LVL3745:
	.loc 5 235 0
	mov	r0, #0
	bl	sendWord
.LVL3746:
.L3632:
.LBE10647:
.LBE10646:
.LBB10648:
.LBB10649:
	.loc 6 52 0
	ldr	r3, [r6, #-4051]
	tst	r3, #8
	beq	.L3632
.LVL3747:
.L3683:
	.loc 6 53 0
	mov	r3, #187
	str	r3, [r8, #-4047]
.LVL3748:
	b	.L3589
.LVL3749:
.L3600:
.LBE10649:
.LBE10648:
.LBB10652:
	.loc 5 278 0
	add	r0, sp, #12
.LVL3750:
	bl	getArg32
.LVL3751:
	.loc 5 279 0
	cmp	r0, #0
	bne	.L3635
.LVL3752:
	ldr	r10, [sp, #12]
.LBB10653:
.LBB10654:
	.loc 5 172 0
	mov	r4, r0
	sub	r10, r10, #4
.LVL3753:
.L3617:
.LBB10655:
	.loc 5 173 0
	ldr	r5, [r10, #4]!
.LVL3754:
	.loc 5 175 0
	mov	r0, r4
.LBE10655:
	.loc 5 172 0
	add	r4, r4, #1
.LVL3755:
.LBB10656:
	.loc 5 174 0
	cmp	r5, #0
	beq	.L3616
	.loc 5 175 0
	bl	sendWord
.LVL3756:
	.loc 5 176 0
	mov	r0, r5
	bl	sendWord
.LVL3757:
.L3616:
.LBE10656:
	.loc 5 172 0
	cmp	r4, #1024
	bne	.L3617
.L3618:
.LBE10654:
.LBE10653:
.LBB10657:
.LBB10658:
	.loc 6 52 0
	ldr	r3, [r6, #-4051]
	tst	r3, #8
	bne	.L3683
	ldr	r3, [r6, #-4051]
	tst	r3, #8
	beq	.L3618
	b	.L3683
.LVL3758:
.L3599:
.LBE10658:
.LBE10657:
.LBE10652:
.LBB10659:
	.loc 5 267 0
	add	r0, sp, #12
.LVL3759:
	bl	getArg32
.LVL3760:
	.loc 5 268 0
	cmp	r0, #0
	bne	.L3635
.LVL3761:
	ldr	r10, [sp, #12]
.LBB10660:
.LBB10661:
	.loc 5 151 0
	mov	r5, r0
	sub	r10, r10, #4
	b	.L3613
.LVL3762:
.L3695:
.LBB10662:
.LBB10663:
.LBB10664:
	.loc 38 338 0
	tst	r4, #1
	bne	.L3694
.L3611:
.LBE10664:
.LBE10663:
.LBE10662:
	.loc 5 151 0
	add	r5, r5, #1
.LVL3763:
	cmp	r5, #256
	beq	.L3614
.LVL3764:
.L3613:
.LBB10671:
	.loc 5 152 0
	ldr	r4, [r10, #4]!
.LVL3765:
.LBB10666:
.LBB10665:
	.loc 38 336 0
	tst	r4, #2
	beq	.L3695
.LVL3766:
.LBE10665:
.LBE10666:
.LBB10667:
.LBB10668:
	.loc 28 2523 0
	bic	r3, r4, #4080
	bic	r3, r3, #15
.LBE10668:
.LBE10667:
	.loc 5 157 0
	cmp	r3, #0
	bne	.L3612
.LVL3767:
.L3685:
	tst	r4, #48
	beq	.L3611
.L3612:
.LVL3768:
	.loc 5 162 0
	mov	r0, r5
.LBE10671:
	.loc 5 151 0
	add	r5, r5, #1
.LVL3769:
.LBB10672:
	.loc 5 162 0
	bl	sendWord
.LVL3770:
	.loc 5 163 0
	mov	r0, r4
	bl	sendWord
.LVL3771:
.LBE10672:
	.loc 5 151 0
	cmp	r5, #256
	bne	.L3613
.L3614:
.LBE10661:
.LBE10660:
.LBB10675:
.LBB10676:
	.loc 6 52 0
	ldr	r3, [r6, #-4051]
	tst	r3, #8
	bne	.L3683
	ldr	r3, [r6, #-4051]
	tst	r3, #8
	beq	.L3614
	b	.L3683
.LVL3772:
.L3598:
.LBE10676:
.LBE10675:
.LBE10659:
.LBB10678:
.LBB10640:
	.loc 5 229 0
	ldr	r0, [r9]
.LVL3773:
	mov	r1, #8
	bl	sendCNode
.LVL3774:
.L3631:
.LBE10640:
.LBE10678:
.LBB10679:
.LBB10680:
	.loc 6 52 0
	ldr	r3, [r6, #-4051]
	tst	r3, #8
	beq	.L3631
.LBE10680:
.LBE10679:
.LBB10681:
.LBB10650:
	.loc 6 53 0
	mov	r3, #187
	str	r3, [r8, #-4047]
.LVL3775:
	b	.L3589
.LVL3776:
.L3597:
.LBE10650:
.LBE10681:
.LBB10682:
	.loc 5 307 0
	add	r0, sp, #8
.LVL3777:
	bl	getArg32
.LVL3778:
	.loc 5 308 0
	cmp	r0, #0
	bne	.L3635
	.loc 5 311 0
	add	r0, sp, #12
.LVL3779:
	bl	getArg32
.LVL3780:
	.loc 5 312 0
	cmp	r0, #0
	bne	.L3635
	.loc 5 316 0
	ldr	r0, [sp, #8]
.LVL3781:
	ldr	r1, [sp, #12]
	bl	sendCNode
.LVL3782:
.L3630:
.LBB10683:
.LBB10684:
	.loc 6 52 0
	ldr	r3, [r6, #-4051]
	tst	r3, #8
	beq	.L3630
.LBE10684:
.LBE10683:
.LBE10682:
.LBB10685:
.LBB10651:
	.loc 6 53 0
	mov	r3, #187
	str	r3, [r8, #-4047]
.LVL3783:
	b	.L3589
.LVL3784:
.L3596:
.LBE10651:
.LBE10685:
.LBB10686:
	.loc 5 296 0
	add	r0, sp, #12
.LVL3785:
	bl	getArg32
.LVL3786:
	.loc 5 297 0
	cmp	r0, #0
	bne	.L3635
.LVL3787:
.LBB10687:
.LBB10688:
	.loc 5 199 0
	ldr	r3, [sp, #12]
.LVL3788:
.LBB10689:
.LBB10690:
	.loc 28 365 0
	ldr	r4, [r3, #4]
.LVL3789:
.LBE10690:
.LBE10689:
.LBB10691:
.LBB10692:
	.loc 28 384 0
	ldr	r5, [r3]
.LBE10692:
.LBE10691:
	.loc 5 201 0
	bics	r4, r4, #15
.LVL3790:
.LBB10694:
.LBB10693:
	.loc 28 384 0
	bic	r5, r5, #15
.LVL3791:
.LBE10693:
.LBE10694:
	.loc 5 201 0
	beq	.L3628
	.loc 5 204 0
	cmp	r4, r5
	beq	.L3626
.LVL3792:
.L3627:
	.loc 5 205 0
	mov	r0, r4
	bl	sendWord
.LVL3793:
	.loc 5 206 0
	ldr	r4, [r4, #132]
.LVL3794:
	.loc 5 204 0
	cmp	r5, r4
	bne	.L3627
.L3626:
	.loc 5 208 0
	mov	r0, r4
	bl	sendWord
.LVL3795:
.L3628:
.LBE10688:
.LBE10687:
.LBB10695:
.LBB10696:
	.loc 6 52 0
	ldr	r3, [r6, #-4051]
	tst	r3, #8
	bne	.L3683
	ldr	r3, [r6, #-4051]
	tst	r3, #8
	beq	.L3628
	b	.L3683
.LVL3796:
.L3595:
.LBE10696:
.LBE10695:
.LBE10686:
.LBB10697:
.LBB10698:
	.loc 5 184 0
	movw	r3, #:lower16:ksCurThread
	movw	r5, #:lower16:ksReadyQueues
	movt	r3, #:upper16:ksCurThread
	movt	r5, #:upper16:ksReadyQueues
	ldr	r0, [r3]
.LVL3797:
	bl	sendWord
.LVL3798:
.L3622:
.LBB10699:
	.loc 5 186 0
	ldr	r4, [r5]
.LVL3799:
	.loc 5 187 0
	cmp	r4, #0
	bne	.L3686
	b	.L3619
.L3621:
	.loc 5 189 0
	mov	r0, r4
	bl	sendWord
.LVL3800:
	.loc 5 190 0
	ldr	r4, [r4, #124]
.LVL3801:
.L3686:
	.loc 5 188 0
	ldr	r0, [r5, #4]
	cmp	r4, r0
	bne	.L3621
	.loc 5 192 0
	bl	sendWord
.LVL3802:
.L3619:
	add	r5, r5, #8
.LBE10699:
	.loc 5 185 0
	cmp	r5, r7
	bne	.L3622
.L3663:
.LBE10698:
.LBE10697:
.LBB10700:
.LBB10701:
	.loc 6 52 0
	ldr	r3, [r6, #-4051]
	tst	r3, #8
	bne	.L3683
	ldr	r3, [r6, #-4051]
	tst	r3, #8
	beq	.L3663
	b	.L3683
.LVL3803:
.L3593:
.LBE10701:
.LBE10700:
.LBB10702:
	.loc 5 256 0
	add	r0, sp, #12
.LVL3804:
	bl	getArg32
.LVL3805:
	.loc 5 257 0
	cmp	r0, #0
	bne	.L3635
.LVL3806:
	ldr	r10, [sp, #12]
.LBB10703:
.LBB10704:
	.loc 5 131 0
	mov	r4, r0
	sub	r10, r10, #4
	b	.L3607
.LVL3807:
.L3604:
.LBB10705:
	.loc 5 136 0
	cmp	r3, #2
	beq	.L3696
.LVL3808:
.L3606:
.LBE10705:
	.loc 5 131 0
	add	r4, r4, #1
.LVL3809:
	cmp	r4, #4096
	beq	.L3608
.LVL3810:
.L3607:
.LBB10712:
	.loc 5 132 0
	ldr	r5, [r10, #4]!
.LVL3811:
.LBB10706:
.LBB10707:
	.loc 28 783 0
	and	r3, r5, #3
.LBE10707:
.LBE10706:
	.loc 5 134 0
	cmp	r3, #1
	bne	.L3604
.LVL3812:
.LBB10708:
.LBB10709:
	.loc 28 866 0
	bic	r3, r5, #1020
	bic	r3, r3, #3
.LBE10709:
.LBE10708:
	.loc 5 134 0
	cmp	r3, #0
	beq	.L3606
.LVL3813:
.L3605:
	.loc 5 140 0
	cmp	r4, #3584
	bcs	.L3606
	.loc 5 141 0
	mov	r0, r4
.LBE10712:
	.loc 5 131 0
	add	r4, r4, #1
.LVL3814:
.LBB10713:
	.loc 5 141 0
	bl	sendWord
.LVL3815:
	.loc 5 142 0
	mov	r0, r5
	bl	sendWord
.LVL3816:
.LBE10713:
	.loc 5 131 0
	cmp	r4, #4096
	bne	.L3607
.LVL3817:
.L3608:
.LBE10704:
.LBE10703:
.LBB10716:
.LBB10717:
	.loc 6 52 0
	ldr	r3, [r6, #-4051]
	tst	r3, #8
	bne	.L3683
	ldr	r3, [r6, #-4051]
	tst	r3, #8
	beq	.L3608
	b	.L3683
.LVL3818:
.L3694:
.LBE10717:
.LBE10716:
.LBE10702:
.LBB10719:
.LBB10677:
.LBB10674:
.LBB10673:
.LBB10669:
.LBB10670:
	.loc 28 2413 0
	mov	r3, r4, lsr #16
	mov	r3, r3, asl #16
.LBE10670:
.LBE10669:
	.loc 5 154 0
	cmp	r3, #0
	bne	.L3612
	b	.L3685
.LVL3819:
.L3696:
.LBE10673:
.LBE10674:
.LBE10677:
.LBE10719:
.LBB10720:
.LBB10718:
.LBB10715:
.LBB10714:
.LBB10710:
.LBB10711:
	.loc 28 943 0
	mov	r3, r5, lsr #20
	mov	r3, r3, asl #20
.LBE10711:
.LBE10710:
	.loc 5 136 0
	cmp	r3, #0
	bne	.L3605
.LVL3820:
	tst	r5, #3072
	beq	.L3606
	b	.L3605
.L3698:
	.align	2
.L3697:
	.word	ksReadyQueues+2048
.LBE10714:
.LBE10715:
.LBE10718:
.LBE10720:
.LBE10722:
	.cfi_endproc
.LFE404:
	.size	capDL, .-capDL
	.align	2
	.global	Arch_deriveCap
	.type	Arch_deriveCap, %function
Arch_deriveCap:
.LFB452:
	.loc 23 21 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3821:
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 32
	.loc 23 21 0
	add	r1, sp, #16
.LVL3822:
	mov	r4, r0
	stmdb	r1, {r2, r3}
	ldr	r3, [sp, #8]
.LVL3823:
	ldr	r0, [sp, #12]
.LVL3824:
.LBB10751:
.LBB10752:
	.loc 28 1035 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 28 1037 0
	uxtbeq	r2, r3
	.loc 28 1036 0
	andne	r2, r3, #15
.LBE10752:
.LBE10751:
	.loc 23 24 0
	sub	r2, r2, #1
	cmp	r2, #10
	ldrls	pc, [pc, r2, asl #2]
	b	.L3702
.L3704:
	.word	.L3703
	.word	.L3702
	.word	.L3705
	.word	.L3702
	.word	.L3706
	.word	.L3702
	.word	.L3707
	.word	.L3702
	.word	.L3708
	.word	.L3702
	.word	.L3706
.L3708:
.LVL3825:
.LBB10753:
.LBB10754:
	.loc 28 2176 0
	and	r2, r3, #15
	cmp	r2, #9
	bne	.L3720
.LVL3826:
	.loc 28 2179 0
	ubfx	r5, r3, #4, #1
.LBE10754:
.LBE10753:
	.loc 23 38 0
	cmp	r5, #0
	beq	.L3721
.L3717:
	.loc 23 40 0
	mov	r1, #0
.LVL3827:
.L3713:
	.loc 23 47 0
	str	r0, [r4, #8]
	.loc 23 72 0
	mov	r0, r4
.LVL3828:
	.loc 23 47 0
	stmia	r4, {r1, r3}
	.loc 23 72 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.LVL3829:
.L3703:
	.cfi_restore_state
.LBB10756:
.LBB10757:
.LBB10758:
	.loc 28 1664 0
	and	r2, r3, #15
	cmp	r2, #1
	bne	.L3722
.LVL3830:
	.loc 28 1669 0
	ubfx	r2, r0, #0, #22
.LBE10758:
.LBE10757:
.LBB10760:
.LBB10761:
	.loc 28 1747 0
	bic	r3, r3, #-16777216
.LBE10761:
.LBE10760:
.LBE10756:
	.loc 23 54 0
	mov	r1, #0
	.loc 23 72 0
	mov	r0, r4
.LVL3831:
	.loc 23 54 0
	str	r3, [r4, #4]
	str	r2, [r4, #8]
	str	r1, [r4]
	.loc 23 72 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.LVL3832:
.L3705:
	.cfi_restore_state
.LBB10763:
.LBB10764:
.LBB10765:
	.loc 28 1828 0
	and	r2, r3, #15
	cmp	r2, #3
	bne	.L3723
.LVL3833:
	.loc 28 1833 0
	bic	r2, r0, #1069547520
.LBE10765:
.LBE10764:
.LBB10768:
.LBB10769:
	.loc 28 1911 0
	bic	r3, r3, #1069547520
.LBE10769:
.LBE10768:
.LBB10770:
.LBB10766:
	.loc 28 1833 0
	bic	r2, r2, #3145728
.LBE10766:
.LBE10770:
.LBE10763:
	.loc 23 59 0
	mov	r1, #0
	.loc 23 72 0
	mov	r0, r4
.LVL3834:
	.loc 23 59 0
	str	r2, [r4, #8]
	stmia	r4, {r1, r3}
	.loc 23 72 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.LVL3835:
.L3706:
	.cfi_restore_state
	.loc 23 65 0
	mov	r1, #0
	str	r0, [r4, #8]
	str	r3, [r4, #4]
	.loc 23 72 0
	mov	r0, r4
.LVL3836:
	.loc 23 65 0
	str	r1, [r4]
	.loc 23 72 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.LVL3837:
.L3707:
	.cfi_restore_state
.LBB10772:
.LBB10773:
	.loc 28 2007 0
	and	r2, r3, #15
	cmp	r2, #7
	bne	.L3724
.LVL3838:
	.loc 28 2010 0
	ubfx	r5, r0, #30, #1
.LBE10773:
.LBE10772:
	.loc 23 26 0
	cmp	r5, #0
	bne	.L3717
	.loc 23 30 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC3
.LVL3839:
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC3
	ldr	ip, [r3]
.LVL3840:
	mov	r2, #30
	ldr	r1, .L3725
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL3841:
	str	ip, [sp, #4]
	bl	kprintf
.LVL3842:
	movw	r0, #:lower16:.LC161
	movt	r0, #:upper16:.LC161
.LVL3843:
.L3719:
	.loc 23 42 0
	bl	kprintf
.LVL3844:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL3845:
	.loc 23 43 0
	movw	r3, #:lower16:current_syscall_error
	mov	r1, #3
	movt	r3, #:upper16:current_syscall_error
.LBB10775:
.LBB10776:
	.loc 28 1058 0
	mov	r0, r5
.LBE10776:
.LBE10775:
	.loc 23 43 0
	str	r1, [r3, #24]
.LVL3846:
.LBB10778:
.LBB10777:
	.loc 28 1058 0
	mov	r3, r5
	b	.L3713
.LVL3847:
.L3702:
.LBE10777:
.LBE10778:
	.loc 23 70 0
	movw	r0, #:lower16:.LC163
.LVL3848:
	movw	r1, #:lower16:.LC25
	movt	r0, #:upper16:.LC163
	movt	r1, #:upper16:.LC25
	mov	r2, #70
	ldr	r3, .L3725
	bl	_fail
.LVL3849:
.L3721:
	.loc 23 42 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC3
.LVL3850:
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC3
	ldr	ip, [r3]
.LVL3851:
	mov	r2, #42
	ldr	r1, .L3725
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL3852:
	str	ip, [sp, #4]
	bl	kprintf
.LVL3853:
	movw	r0, #:lower16:.LC162
	movt	r0, #:upper16:.LC162
	b	.L3719
.LVL3854:
.L3720:
.LBB10779:
.LBB10755:
	bl	cap_page_directory_cap_get_capPDIsMapped.isra.135.part.136
.LVL3855:
.L3724:
.LBE10755:
.LBE10779:
.LBB10780:
.LBB10774:
	bl	cap_page_table_cap_get_capPTIsMapped.part.101
.LVL3856:
.L3723:
.LBE10774:
.LBE10780:
.LBB10781:
.LBB10771:
.LBB10767:
	.loc 28 1828 0
	movw	r0, #:lower16:.LC41
.LVL3857:
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC41
	movt	r1, #:upper16:.LC30
	movw	r2, #1829
	ldr	r3, .L3725+4
	bl	_assert_fail
.LVL3858:
.L3722:
.LBE10767:
.LBE10771:
.LBE10781:
.LBB10782:
.LBB10762:
.LBB10759:
	.loc 28 1664 0
	movw	r0, #:lower16:.LC40
.LVL3859:
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC40
	movt	r1, #:upper16:.LC30
	movw	r2, #1665
	ldr	r3, .L3725+8
	bl	_assert_fail
.LVL3860:
.L3726:
	.align	2
.L3725:
	.word	.LANCHOR7-3708
	.word	.LANCHOR4+3964
	.word	.LANCHOR4+3920
.LBE10759:
.LBE10762:
.LBE10782:
	.cfi_endproc
.LFE452:
	.size	Arch_deriveCap, .-Arch_deriveCap
	.align	2
	.global	deriveCap
	.type	deriveCap, %function
deriveCap:
.LFB623:
	.loc 36 58 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3861:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
	.loc 36 58 0
	stmia	sp, {r2, r3}
	mov	r6, r3
.LVL3862:
.LBB10783:
.LBB10784:
.LBB10785:
.LBB10786:
	.loc 28 1035 0
	and	r3, r2, #14
.LVL3863:
.LBE10786:
.LBE10785:
.LBE10784:
.LBE10783:
	.loc 36 58 0
	mov	ip, sp
.LBB10793:
.LBB10791:
.LBB10789:
.LBB10787:
	.loc 28 1035 0
	cmp	r3, #14
.LBE10787:
.LBE10789:
.LBE10791:
.LBE10793:
	.loc 36 58 0
	mov	r5, r0
	mov	r4, r2
.LBB10794:
.LBB10792:
.LBB10790:
.LBB10788:
	.loc 28 1035 0
	beq	.L3728
.LBE10788:
.LBE10790:
.LBE10792:
.LBE10794:
	.loc 36 61 0
	tst	r2, #1
.LBB10795:
.LBB10796:
	.loc 28 1036 0
	andeq	r3, r2, #15
.LBE10796:
.LBE10795:
	.loc 36 61 0
	bne	.L3729
.L3733:
	.loc 36 65 0
	cmp	r3, #8
	beq	.L3738
	bhi	.L3736
	cmp	r3, #2
	bne	.L3734
	.loc 36 77 0
	mov	r0, r1
.LVL3864:
	bl	ensureNoChildren
.LVL3865:
	.loc 36 78 0
	cmp	r0, #0
.LBB10798:
.LBB10799:
	.loc 28 1058 0
	movne	r6, #0
.LVL3866:
	movne	r4, r6
.LVL3867:
.L3735:
.LBE10799:
.LBE10798:
	.loc 36 95 0
	stmia	r5, {r0, r4, r6}
	.loc 36 96 0
	mov	r0, r5
.LVL3868:
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
.LVL3869:
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL3870:
.L3736:
	.cfi_restore_state
	.loc 36 65 0
	cmp	r3, #14
	beq	.L3738
	cmp	r3, #46
	beq	.L3738
.L3734:
	.loc 36 91 0
	mov	r0, #0
.LVL3871:
	b	.L3735
.LVL3872:
.L3738:
.LBB10800:
.LBB10801:
	.loc 28 1058 0
	mov	r6, #0
.LVL3873:
	mov	r4, r6
.LBE10801:
.LBE10800:
	.loc 36 67 0
	mov	r0, r6
.LVL3874:
	b	.L3735
.LVL3875:
.L3728:
	.loc 36 61 0
	tst	r2, #1
.LBB10802:
.LBB10797:
	.loc 28 1037 0
	uxtbeq	r3, r2
.LBE10797:
.LBE10802:
	.loc 36 61 0
	beq	.L3733
.L3729:
	.loc 36 62 0
	mov	r0, r5
.LVL3876:
	ldmia	ip, {r2, r3}
.LVL3877:
	bl	Arch_deriveCap
.LVL3878:
	.loc 36 96 0
	mov	r0, r5
	add	sp, sp, #8
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
	.cfi_endproc
.LFE623:
	.size	deriveCap, .-deriveCap
	.align	2
	.global	doNormalTransfer
	.type	doNormalTransfer, %function
doNormalTransfer:
.LFB531:
	.loc 26 160 0
	.cfi_startproc
	@ args = 16, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3879:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	sub	sp, sp, #84
	.cfi_def_cfa_offset 120
.LBB10851:
.LBB10852:
	.loc 13 27 0
	ldr	r4, [r0, #4]
.LBE10852:
.LBE10851:
	.loc 26 160 0
	mov	r8, r3
	mov	r5, r0
	mov	ip, r1
	ldr	r9, [sp, #120]
	mov	r10, r2
.LBB10853:
.LBB10854:
.LBB10855:
.LBB10856:
	.loc 41 89 0
	and	r3, r4, #127
.LVL3880:
.LBE10856:
.LBE10855:
.LBE10854:
.LBE10853:
	.loc 26 160 0
	ldr	r6, [sp, #124]
.LVL3881:
.LBB10861:
.LBB10859:
	.loc 29 88 0
	cmp	r3, #120
.LBE10859:
.LBE10861:
	.loc 26 160 0
	ldr	fp, [sp, #128]
.LBB10862:
.LBB10860:
.LBB10857:
.LBB10858:
	.loc 41 101 0
	bichi	r4, r4, #127
.LVL3882:
	movhi	r3, #120
.LVL3883:
	.loc 41 102 0
	orrhi	r4, r4, r3
.LVL3884:
.LBE10858:
.LBE10857:
.LBE10860:
.LBE10862:
	.loc 26 168 0
	cmp	r9, #0
.LVL3885:
	bne	.L3785
	.loc 26 175 0
	movw	r2, #:lower16:current_extra_caps
.LVL3886:
	add	r7, sp, #44
	movt	r2, #:upper16:current_extra_caps
	ldmia	r2, {r0, r1, r2}
.LVL3887:
	stmia	r7, {r0, r1, r2}
.LVL3888:
.L3756:
	.loc 26 179 0
	mov	r1, ip
	str	r3, [sp]
	mov	r0, r5
	mov	r2, r6
	mov	r3, fp
.LVL3889:
	add	r5, sp, #56
.LVL3890:
	bl	copyMRs
.LVL3891:
	str	r9, [sp, #44]
	mov	ip, r0
.LVL3892:
	ldmia	r7, {r0, r1, r2}
.LVL3893:
.LBB10863:
.LBB10864:
.LBB10865:
.LBB10866:
	.loc 41 61 0
	bic	r4, r4, #3968
.LVL3894:
	stmia	r5, {r0, r1, r2}
.LVL3895:
.LBE10866:
.LBE10865:
	.loc 26 215 0
	ldr	r7, [sp, #56]
	cmp	r7, #0
	cmpne	fp, #0
	moveq	r9, #1
.LVL3896:
	movne	r9, #0
	bne	.L3786
.LVL3897:
.L3757:
.LBE10864:
.LBE10863:
.LBB10900:
.LBB10901:
	.loc 41 100 0
	bics	r3, ip, #127
	.loc 41 101 0
	biceq	r4, r4, #127
.LVL3898:
.LBE10901:
.LBE10900:
.LBB10907:
.LBB10908:
	.loc 13 21 0
	streq	r8, [r6]
.LBE10908:
.LBE10907:
.LBB10909:
.LBB10904:
	.loc 41 102 0
	orreq	ip, r4, ip
.LBE10904:
.LBE10909:
.LBB10910:
.LBB10911:
	.loc 13 21 0
	streq	ip, [r6, #4]
.LBE10911:
.LBE10910:
.LBB10912:
.LBB10905:
	.loc 41 100 0
	bne	.L3787
.LBE10905:
.LBE10912:
	.loc 26 187 0
	add	sp, sp, #84
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3899:
.L3785:
	.cfi_restore_state
	.loc 26 169 0
	mov	r2, r4
.LVL3900:
	str	r3, [sp, #16]
.LVL3901:
	str	ip, [sp, #12]
	.loc 26 170 0
	add	r7, sp, #44
	.loc 26 169 0
	bl	lookupExtraCaps
.LVL3902:
	.loc 26 170 0
	movw	r2, #:lower16:current_extra_caps
	.loc 26 172 0
	cmp	r0, #0
	.loc 26 170 0
	movt	r2, #:upper16:current_extra_caps
	.loc 26 172 0
	movne	r9, #0
	.loc 26 170 0
	ldmia	r2, {r0, r1, r2}
.LVL3903:
	ldr	ip, [sp, #12]
	ldr	r3, [sp, #16]
	stmia	r7, {r0, r1, r2}
.LVL3904:
	.loc 26 172 0
	moveq	r9, r0
	b	.L3756
.LVL3905:
.L3786:
	add	r3, fp, #488
.LBB10913:
.LBB10898:
	.loc 26 219 0
	mov	r0, r6
	mov	r1, fp
	str	ip, [sp, #16]
	str	r3, [sp, #12]
	bl	getReceiveSlots
.LVL3906:
.LBB10867:
.LBB10868:
	.loc 26 243 0
	ldr	ip, [sp, #16]
.LBE10868:
.LBE10867:
	.loc 26 219 0
	mov	fp, r0
.LVL3907:
.LBB10892:
.LBB10871:
	.loc 26 243 0
	str	r10, [sp, #20]
	ldr	r10, [sp, #12]
.LVL3908:
	str	r6, [sp, #124]
	mov	r6, r9
.LVL3909:
	mov	r9, ip
.LVL3910:
.L3769:
.LBE10871:
	.loc 26 223 0
	ldmia	r7, {r0, r1}
	add	r2, sp, #28
	stmia	r2, {r0, r1}
.LBB10872:
.LBB10873:
	.loc 28 1035 0
	and	r2, r0, #14
.LVL3911:
	cmp	r2, #14
.LBE10873:
.LBE10872:
	.loc 26 223 0
	mov	r3, r0
.LBB10875:
.LBB10874:
	.loc 28 1037 0
	uxtbeq	r2, r0
	.loc 28 1036 0
	andne	r2, r0, #15
.LBE10874:
.LBE10875:
	.loc 26 225 0
	cmp	r2, #4
	beq	.L3788
.LVL3912:
.L3760:
.LBB10876:
	.loc 26 238 0
	cmp	fp, #0
	beq	.L3784
	.loc 26 242 0
	ldr	r2, [sp, #132]
	.loc 26 243 0
	str	r3, [sp, #28]
	.loc 26 242 0
	cmp	r2, #0
	beq	.L3764
.LVL3913:
	.loc 26 243 0
	add	r3, sp, #28
.LVL3914:
	str	r1, [sp, #32]
	add	r0, sp, #36
	ldmia	r3, {r2, r3}
	mov	r1, #6
.LVL3915:
	bl	maskCapRights
.LVL3916:
	add	r3, sp, #36
	add	r0, sp, #68
	mov	r1, r7
	ldmia	r3, {r2, r3}
	bl	deriveCap
.LVL3917:
.L3765:
	.loc 26 248 0
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L3784
	ldr	r3, [sp, #72]
.LVL3918:
.LBB10869:
.LBB10870:
	.loc 28 1035 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 28 1037 0
	uxtbeq	r3, r3
.LVL3919:
	.loc 28 1036 0
	andne	r3, r3, #15
.LBE10870:
.LBE10869:
	.loc 26 251 0
	cmp	r3, #0
	beq	.L3784
	.loc 26 255 0
	add	r1, sp, #80
	mov	r3, fp
	mov	r2, r7
	ldmdb	r1, {r0, r1}
	.loc 26 257 0
	mov	fp, #0
.LVL3920:
	.loc 26 255 0
	bl	cteInsert
.LVL3921:
.L3762:
.LBE10876:
.LBE10892:
	.loc 26 221 0
	add	r6, r6, #1
.LVL3922:
	add	r10, r10, #4
	cmp	r6, #3
	beq	.L3772
	ldr	r7, [r5, r6, asl #2]
.LVL3923:
	cmp	r7, #0
	bne	.L3769
.L3784:
	mov	ip, r9
	mov	r9, r6
	mov	r3, r9, asl #7
	ldr	r6, [sp, #124]
.LVL3924:
	and	r3, r3, #384
.LVL3925:
.L3768:
.LBB10893:
.LBB10894:
	.loc 41 81 0
	bic	r4, r4, #384
.LVL3926:
	.loc 41 82 0
	orr	r4, r4, r3
.LVL3927:
	b	.L3757
.LVL3928:
.L3764:
.LBE10894:
.LBE10893:
.LBB10895:
.LBB10877:
	.loc 26 245 0
	add	r3, sp, #28
.LVL3929:
	str	r1, [sp, #32]
	add	r0, sp, #68
	mov	r1, r7
.LVL3930:
	ldmia	r3, {r2, r3}
	bl	deriveCap
.LVL3931:
	b	.L3765
.LVL3932:
.L3772:
	mov	ip, r9
	ldr	r6, [sp, #124]
.LVL3933:
.LBE10877:
.LBE10895:
	.loc 26 221 0
	mov	r3, #384
	b	.L3768
.LVL3934:
.L3788:
.LBB10896:
.LBB10878:
.LBB10879:
	.loc 28 1185 0
	and	r2, r0, #15
	str	r0, [sp, #28]
.LVL3935:
	cmp	r2, #4
	bne	.L3789
.LVL3936:
.LBE10879:
.LBE10878:
	.loc 26 225 0
	ldr	r0, [sp, #20]
.LVL3937:
.LBB10882:
.LBB10880:
	.loc 28 1188 0
	bic	r2, r1, #15
.LVL3938:
.LBE10880:
.LBE10882:
	.loc 26 225 0
	cmp	r0, r2
	bne	.L3760
.LVL3939:
.LBB10883:
.LBB10884:
	.loc 41 49 0
	ubfx	r2, r4, #9, #3
.LVL3940:
.LBE10884:
.LBE10883:
	.loc 26 233 0
	mov	r1, #1
.LVL3941:
.LBB10885:
.LBB10886:
	.loc 28 1280 0
	mov	r3, r3, lsr #4
.LVL3942:
.LBE10886:
.LBE10885:
	.loc 26 232 0
	orr	r2, r2, r1, asl r6
.LBB10887:
.LBB10888:
	.loc 31 192 0
	str	r3, [r10]
.LVL3943:
.LBE10888:
.LBE10887:
.LBB10889:
.LBB10890:
	.loc 41 62 0
	bfi	r4, r2, #9, #3
.LVL3944:
	b	.L3762
.LVL3945:
.L3787:
.LBE10890:
.LBE10889:
.LBE10896:
.LBE10898:
.LBE10913:
.LBB10914:
.LBB10906:
.LBB10902:
.LBB10903:
	.loc 41 100 0
	movw	r0, #:lower16:.LC164
	movw	r1, #:lower16:.LC66
	movt	r0, #:upper16:.LC164
	movt	r1, #:upper16:.LC66
	mov	r2, #100
	ldr	r3, .L3790
	bl	_assert_fail
.LVL3946:
.L3789:
.LBE10903:
.LBE10902:
.LBE10906:
.LBE10914:
.LBB10915:
.LBB10899:
.LBB10897:
.LBB10891:
.LBB10881:
	bl	cap_endpoint_cap_get_capEPPtr.part.77
.LVL3947:
.L3791:
	.align	2
.L3790:
	.word	.LANCHOR7-3692
.LBE10881:
.LBE10891:
.LBE10897:
.LBE10899:
.LBE10915:
	.cfi_endproc
.LFE531:
	.size	doNormalTransfer, .-doNormalTransfer
	.align	2
	.global	doIPCTransfer
	.type	doIPCTransfer, %function
doIPCTransfer:
.LFB529:
	.loc 26 114 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3948:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 48
	.loc 26 114 0
	ldr	r5, [sp, #48]
	mov	r4, r0
	mov	r8, r1
	.loc 26 117 0
	mov	r0, #1
.LVL3949:
	.loc 26 114 0
	mov	r6, r2
	mov	r9, r3
	.loc 26 117 0
	mov	r1, r5
.LVL3950:
	.loc 26 114 0
	ldr	r7, [sp, #52]
	.loc 26 117 0
	bl	lookupIPCBuffer
.LVL3951:
	mov	r10, r0
.LVL3952:
.LBB10916:
.LBB10917:
	.loc 28 566 0
	ldr	r0, [r4, #88]
.LVL3953:
.LBE10917:
.LBE10916:
	.loc 26 119 0
	ands	r0, r0, #7
	bne	.L3793
	.loc 26 120 0
	mov	r1, r4
	bl	lookupIPCBuffer
.LVL3954:
	.loc 26 121 0
	str	r9, [sp]
	.loc 26 120 0
	mov	r1, r0
.LVL3955:
	.loc 26 121 0
	str	r5, [sp, #4]
	mov	r0, r4
.LVL3956:
	mov	r2, r8
	str	r10, [sp, #8]
	mov	r3, r6
	str	r7, [sp, #12]
	bl	doNormalTransfer
.LVL3957:
	.loc 26 126 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LVL3958:
.L3793:
	.cfi_restore_state
	.loc 26 124 0
	mov	r0, r6
	mov	r1, r4
	mov	r2, r5
	mov	r3, r10
	.loc 26 126 0
	add	sp, sp, #16
	.cfi_def_cfa_offset 32
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_restore 14
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL3959:
	.loc 26 124 0
	b	doFaultTransfer
.LVL3960:
	.cfi_endproc
.LFE529:
	.size	doIPCTransfer, .-doIPCTransfer
	.align	2
	.global	doReplyTransfer
	.type	doReplyTransfer, %function
doReplyTransfer:
.LFB530:
	.loc 26 130 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3961:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	mov	r4, r1
.LVL3962:
.LBB10951:
.LBB10952:
	.loc 28 146 0
	ldr	r3, [r1, #72]
.LBE10952:
.LBE10951:
	.loc 26 130 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
.LBB10954:
.LBB10953:
	.loc 28 146 0
	and	r3, r3, #15
.LVL3963:
.LBE10953:
.LBE10954:
	.loc 26 131 0
	cmp	r3, #5
	bne	.L3803
.LBB10955:
.LBB10956:
	.loc 28 566 0
	ldr	r3, [r1, #88]
.LVL3964:
	mov	r5, r2
.LBE10956:
.LBE10955:
	.loc 26 134 0
	ands	r1, r3, #7
.LVL3965:
	bne	.L3799
	.loc 26 135 0
	mov	r3, #1
	str	r1, [sp, #4]
.LVL3966:
	mov	r2, r1
.LVL3967:
	str	r4, [sp]
	bl	doIPCTransfer
.LVL3968:
	.loc 26 137 0
	mov	r0, r5
	bl	cteDeleteOne
.LVL3969:
.LBB10957:
.LBB10958:
.LBB10959:
.LBB10960:
	.loc 28 169 0
	ldr	r3, [r4, #72]
.LBE10960:
.LBE10959:
	.loc 26 418 0
	mov	r0, r4
.LBB10962:
.LBB10961:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #1
.LVL3970:
.L3802:
.LBE10961:
.LBE10962:
.LBE10958:
.LBE10957:
.LBB10963:
.LBB10964:
.LBB10965:
.LBB10966:
.LBB10967:
.LBB10968:
.LBB10969:
	str	r3, [r4, #72]
.LBE10969:
.LBE10968:
	.loc 26 418 0
	bl	scheduleTCB
.LVL3971:
.LBE10967:
.LBE10966:
.LBB10977:
.LBB10978:
	.loc 26 405 0
	mov	r0, r4
	mov	r1, #1
.LBE10978:
.LBE10977:
.LBE10965:
.LBE10964:
.LBE10963:
	.loc 26 154 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL3972:
.LBB11000:
.LBB10998:
.LBB10996:
.LBB10980:
.LBB10979:
	.loc 26 405 0
	b	possibleSwitchTo
.LVL3973:
.L3799:
	.cfi_restore_state
	mov	r6, r0
.LVL3974:
.LBE10979:
.LBE10980:
	.loc 26 144 0
	mov	r0, r2
.LVL3975:
	bl	cteDeleteOne
.LVL3976:
	.loc 26 145 0
	mov	r0, r4
	mov	r1, r6
	bl	handleFaultReply
.LVL3977:
.LBB10981:
.LBB10982:
	.loc 28 576 0
	mov	r3, #0
.LBE10982:
.LBE10981:
	.loc 26 147 0
	cmp	r0, #0
.LBB10985:
.LBB10983:
	.loc 28 576 0
	str	r3, [r4, #88]
.LBE10983:
.LBE10985:
.LBB10986:
.LBB10974:
	.loc 26 418 0
	mov	r0, r4
.LVL3978:
.LBE10974:
.LBE10986:
.LBB10987:
.LBB10984:
	.loc 28 577 0
	str	r3, [r4, #92]
.LBE10984:
.LBE10987:
.LBB10988:
.LBB10975:
.LBB10972:
.LBB10970:
	.loc 28 169 0
	ldr	r3, [r4, #72]
	bic	r3, r3, #15
.LBE10970:
.LBE10972:
.LBE10975:
.LBE10988:
	.loc 26 147 0
	bne	.L3804
.LVL3979:
.LBB10989:
.LBB10990:
.LBB10991:
.LBB10992:
	.loc 28 169 0
	str	r3, [r4, #72]
.LBE10992:
.LBE10991:
.LBE10990:
.LBE10989:
.LBE10996:
.LBE10998:
.LBE11000:
	.loc 26 154 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL3980:
.LBB11001:
.LBB10999:
.LBB10997:
.LBB10994:
.LBB10993:
	.loc 26 418 0
	b	scheduleTCB
.LVL3981:
.L3804:
	.cfi_restore_state
.LBE10993:
.LBE10994:
.LBB10995:
.LBB10976:
.LBB10973:
.LBB10971:
	.loc 28 170 0
	orr	r3, r3, #2
	b	.L3802
.LVL3982:
.L3803:
.LBE10971:
.LBE10973:
.LBE10976:
.LBE10995:
.LBE10997:
.LBE10999:
.LBE11001:
	.loc 26 131 0 discriminator 1
	movw	r0, #:lower16:.LC165
.LVL3983:
	movw	r1, #:lower16:.LC114
.LVL3984:
	movt	r0, #:upper16:.LC165
	movt	r1, #:upper16:.LC114
	mov	r2, #132
.LVL3985:
	ldr	r3, .L3805
.LVL3986:
	bl	_assert_fail
.LVL3987:
.L3806:
	.align	2
.L3805:
	.word	.LANCHOR7-3664
	.cfi_endproc
.LFE530:
	.size	doReplyTransfer, .-doReplyTransfer
	.align	2
	.global	performInvocation_Reply
	.type	performInvocation_Reply, %function
performInvocation_Reply:
.LFB636:
	.loc 36 709 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3988:
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 36 710 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	.loc 36 709 0
	mov	r2, r1
	.loc 36 710 0
	mov	r1, r0
.LVL3989:
	ldr	r0, [r3]
.LVL3990:
	bl	doReplyTransfer
.LVL3991:
	.loc 36 712 0
	mov	r0, #0
	ldmfd	sp!, {r3, pc}
	.cfi_endproc
.LFE636:
	.size	performInvocation_Reply, .-performInvocation_Reply
	.align	2
	.global	sendIPC
	.type	sendIPC, %function
sendIPC:
.LFB591:
	.loc 51 42 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3992:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 40
	.loc 51 42 0
	ldr	r5, [sp, #44]
	mov	r7, r3
	mov	r8, r1
	ldr	r4, [sp, #40]
	ldr	r3, [r5]
.LVL3993:
.LBB11062:
.LBB11063:
	.loc 28 403 0
	and	r1, r3, #3
.LVL3994:
.LBE11063:
.LBE11062:
	.loc 51 43 0
	cmp	r1, #1
	bls	.L3811
	cmp	r1, #2
	bne	.L3809
.LVL3995:
	ldr	r1, [r5, #4]
.LVL3996:
.LBB11064:
.LBB11065:
.LBB11066:
.LBB11067:
.LBB11068:
	.loc 28 384 0
	bic	r0, r3, #15
.LVL3997:
.LBE11068:
.LBE11067:
.LBE11066:
.LBE11065:
	.loc 51 81 0
	bics	r6, r1, #15
.LVL3998:
	beq	.L3836
.LVL3999:
.LBB11069:
.LBB11070:
	.loc 31 167 0
	ldr	lr, [r6, #136]
	cmp	lr, #0
	.loc 31 168 0
	ldrne	r9, [r6, #132]
	movne	ip, r6
	.loc 31 170 0
	ldreq	ip, [r6, #132]
.LVL4000:
	.loc 31 168 0
	strne	r9, [lr, #132]
	ldrne	r9, [r6, #132]
	.loc 31 170 0
	moveq	r9, ip
	.loc 31 173 0
	cmp	r9, #0
	.loc 31 174 0
	strne	lr, [r9, #136]
	.loc 31 167 0
	moveq	r0, lr
.LVL4001:
.LBE11070:
.LBE11069:
.LBB11071:
.LBB11072:
.LBB11073:
.LBB11074:
	.loc 28 376 0
	tst	ip, #15
	bne	.L3824
	.loc 28 377 0
	and	r1, r1, #15
	.loc 28 378 0
	bic	lr, ip, #15
.LBE11074:
.LBE11073:
.LBB11076:
.LBB11077:
	.loc 28 395 0
	tst	r0, #15
.LBE11077:
.LBE11076:
.LBB11080:
.LBB11075:
	.loc 28 378 0
	orr	r1, lr, r1
	str	r1, [r5, #4]
.LVL4002:
.LBE11075:
.LBE11080:
.LBB11081:
.LBB11078:
	.loc 28 395 0
	bne	.L3825
	.loc 28 397 0
	bic	r0, r0, #15
.LVL4003:
	.loc 28 396 0
	and	r3, r3, #15
.LVL4004:
.LBE11078:
.LBE11081:
.LBE11072:
.LBE11071:
	.loc 51 87 0
	cmp	ip, #0
.LBB11084:
.LBB11083:
.LBB11082:
.LBB11079:
	.loc 28 397 0
	orr	r3, r0, r3
	str	r3, [r5]
.LVL4005:
.LBE11079:
.LBE11082:
.LBE11083:
.LBE11084:
.LBB11085:
.LBB11086:
	.loc 28 415 0
	biceq	r3, r3, #3
	streq	r3, [r5]
.LBE11086:
.LBE11085:
	.loc 51 94 0
	mov	r1, r5
.LBB11087:
.LBB11088:
	.loc 28 78 0
	ldr	ip, [r6, #80]
.LVL4006:
.LBE11088:
.LBE11087:
	.loc 51 94 0
	mov	r0, r4
	mov	r3, r7
	str	r6, [sp]
.LBB11090:
.LBB11089:
	.loc 28 78 0
	and	r5, ip, #1
.LVL4007:
.LBE11089:
.LBE11090:
	.loc 51 94 0
	str	r5, [sp, #4]
	bl	doIPCTransfer
.LVL4008:
.LBB11091:
.LBB11092:
.LBB11093:
.LBB11094:
	.loc 28 169 0
	ldr	r3, [r6, #72]
.LBE11094:
.LBE11093:
	.loc 26 418 0
	mov	r0, r6
.LBB11096:
.LBB11095:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #1
	str	r3, [r6, #72]
.LBE11095:
.LBE11096:
	.loc 26 418 0
	bl	scheduleTCB
.LVL4009:
.LBE11092:
.LBE11091:
.LBB11097:
.LBB11098:
	.loc 26 405 0
	mov	r0, r6
	mov	r1, #1
	bl	possibleSwitchTo
.LVL4010:
.LBE11098:
.LBE11097:
	.loc 51 99 0
	cmp	r8, #0
	beq	.L3837
.L3827:
	.loc 51 101 0
	eor	r5, r5, #1
.LVL4011:
	cmp	r7, #0
	moveq	r7, #0
	andne	r7, r5, #1
.LVL4012:
	cmp	r7, #0
	bne	.L3838
.LVL4013:
.LBB11099:
.LBB11100:
.LBB11101:
.LBB11102:
	.loc 28 169 0
	ldr	r3, [r4, #72]
.LBE11102:
.LBE11101:
	.loc 26 418 0
	mov	r0, r4
.LBB11104:
.LBB11103:
	.loc 28 169 0
	bic	r3, r3, #15
	str	r3, [r4, #72]
.LBE11103:
.LBE11104:
.LBE11100:
.LBE11099:
.LBE11064:
	.loc 51 111 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_restore 14
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4014:
.LBB11109:
.LBB11106:
.LBB11105:
	.loc 26 418 0
	b	scheduleTCB
.LVL4015:
.L3811:
	.cfi_restore_state
.LBE11105:
.LBE11106:
.LBE11109:
	.loc 51 46 0
	cmp	r0, #0
	beq	.L3809
.LVL4016:
.LBB11110:
.LBB11111:
.LBB11112:
	.loc 28 169 0
	ldr	r3, [r4, #72]
.LBE11112:
.LBE11111:
.LBB11114:
.LBB11115:
	.loc 28 138 0
	tst	r5, #15
.LBE11115:
.LBE11114:
.LBB11120:
.LBB11113:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #4
	str	r3, [r4, #72]
.LVL4017:
.LBE11113:
.LBE11120:
.LBB11121:
.LBB11116:
	.loc 28 138 0
	bne	.L3839
.LBE11116:
.LBE11121:
.LBB11122:
.LBB11123:
	.loc 28 33 0
	ldr	r3, [r4, #80]
.LBE11123:
.LBE11122:
.LBB11126:
.LBB11127:
	.loc 28 51 0
	bics	r1, r7, #1
.LVL4018:
.LBE11127:
.LBE11126:
.LBB11131:
.LBB11117:
	.loc 28 140 0
	bic	r1, r5, #15
	orr	r1, r1, #4
.LBE11117:
.LBE11131:
.LBB11132:
.LBB11124:
	.loc 28 33 0
	and	r3, r3, #15
.LBE11124:
.LBE11132:
.LBB11133:
.LBB11118:
	.loc 28 140 0
	str	r1, [r4, #72]
.LVL4019:
.LBE11118:
.LBE11133:
.LBB11134:
.LBB11125:
	.loc 28 34 0
	orr	r2, r3, r2, asl #4
.LVL4020:
	str	r2, [r4, #80]
.LVL4021:
.LBE11125:
.LBE11134:
.LBB11135:
.LBB11128:
	.loc 28 51 0
	bne	.L3840
	.loc 28 53 0
	mov	r7, r7, asl #3
.LVL4022:
	.loc 28 52 0
	bic	r2, r2, #8
.LBE11128:
.LBE11135:
.LBB11136:
.LBB11137:
	.loc 28 70 0
	bics	r3, r8, #1
.LBE11137:
.LBE11136:
.LBB11141:
.LBB11129:
	.loc 28 53 0
	and	r7, r7, #8
	orr	r2, r2, r7
	str	r2, [r4, #80]
.LVL4023:
.LBE11129:
.LBE11141:
.LBB11142:
.LBB11138:
	.loc 28 70 0
	bne	.L3841
	.loc 28 72 0
	mov	r8, r8, asl #2
.LVL4024:
	.loc 28 71 0
	bic	r2, r2, #4
.LBE11138:
.LBE11142:
	.loc 51 61 0
	mov	r0, r4
.LVL4025:
.LBB11143:
.LBB11139:
	.loc 28 72 0
	and	r8, r8, #4
	orr	r2, r2, r8
	str	r2, [r4, #80]
.LBE11139:
.LBE11143:
	.loc 51 61 0
	bl	scheduleTCB
.LVL4026:
	ldr	r2, [r5, #4]
.LVL4027:
.LBB11144:
.LBB11145:
	.loc 31 157 0
	mov	lr, #0
	ldr	r3, [r5]
.LVL4028:
	.loc 31 151 0
	bics	r1, r2, #15
.LVL4029:
.LBE11145:
.LBE11144:
.LBB11148:
.LBB11149:
.LBB11150:
.LBB11151:
	.loc 28 384 0
	bic	ip, r3, #15
.LVL4030:
.LBE11151:
.LBE11150:
.LBE11149:
.LBE11148:
.LBB11152:
.LBB11146:
	.loc 31 151 0
	moveq	r1, r4
.LVL4031:
	.loc 31 154 0
	strne	r4, [ip, #132]
.LBE11146:
.LBE11152:
.LBB11153:
.LBB11154:
	.loc 28 415 0
	bic	r0, r3, #3
.LBE11154:
.LBE11153:
.LBB11157:
.LBB11158:
.LBB11159:
.LBB11160:
	.loc 28 376 0
	tst	r1, #15
.LBE11160:
.LBE11159:
.LBE11158:
.LBE11157:
.LBB11175:
.LBB11155:
	.loc 28 416 0
	orr	r0, r0, #1
.LBE11155:
.LBE11175:
.LBB11176:
.LBB11147:
	.loc 31 156 0
	str	ip, [r4, #136]
	.loc 31 157 0
	str	lr, [r4, #132]
.LVL4032:
.LBE11147:
.LBE11176:
.LBB11177:
.LBB11156:
	.loc 28 416 0
	str	r0, [r5]
.LVL4033:
.LBE11156:
.LBE11177:
.LBB11178:
.LBB11173:
.LBB11164:
.LBB11161:
	.loc 28 376 0
	bne	.L3824
	.loc 28 378 0
	bic	r1, r1, #15
.LVL4034:
	.loc 28 377 0
	and	r2, r2, #15
.LVL4035:
.LBE11161:
.LBE11164:
.LBB11165:
.LBB11166:
	.loc 28 395 0
	tst	r4, #15
.LBE11166:
.LBE11165:
.LBB11169:
.LBB11162:
	.loc 28 378 0
	orr	r2, r1, r2
	str	r2, [r5, #4]
.LVL4036:
.LBE11162:
.LBE11169:
.LBB11170:
.LBB11167:
	.loc 28 395 0
	bne	.L3825
	.loc 28 397 0
	bic	r4, r4, #15
.LVL4037:
	.loc 28 396 0
	and	r3, r3, #12
	orr	r4, r4, #1
	.loc 28 397 0
	orr	r3, r4, r3
	str	r3, [r5]
.LVL4038:
.L3809:
.LBE11167:
.LBE11170:
.LBE11173:
.LBE11178:
.LBE11110:
	.loc 51 111 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.LVL4039:
.L3837:
	.cfi_restore_state
.LBB11183:
.LBB11107:
.LBB11108:
	.loc 28 571 0 discriminator 1
	ldr	r3, [r4, #88]
.LBE11108:
.LBE11107:
	.loc 51 99 0 discriminator 1
	tst	r3, #7
	bne	.L3827
	b	.L3809
.LVL4040:
.L3838:
	.loc 51 102 0
	mov	r0, r4
	mov	r1, r6
.LBE11183:
	.loc 51 111 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_restore 14
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4041:
.LBB11184:
	.loc 51 102 0
	b	setupCallerCap
.LVL4042:
.L3825:
	.cfi_restore_state
.LBE11184:
.LBB11185:
.LBB11179:
.LBB11174:
.LBB11171:
.LBB11168:
	bl	endpoint_ptr_set_epQueue_tail.isra.213.part.214
.LVL4043:
.L3824:
.LBE11168:
.LBE11171:
.LBB11172:
.LBB11163:
	bl	endpoint_ptr_set_epQueue_head.isra.211.part.212
.LVL4044:
.L3841:
.LBE11163:
.LBE11172:
.LBE11174:
.LBE11179:
.LBB11180:
.LBB11140:
	.loc 28 70 0
	movw	r0, #:lower16:.LC167
.LVL4045:
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC167
	movt	r1, #:upper16:.LC30
	mov	r2, #70
	ldr	r3, .L3842
	bl	_assert_fail
.LVL4046:
.L3836:
.LBE11140:
.LBE11180:
.LBE11185:
.LBB11186:
	.loc 51 81 0 discriminator 1
	movw	r0, #:lower16:.LC160
.LVL4047:
	movw	r1, #:lower16:.LC116
	movt	r0, #:upper16:.LC160
	movt	r1, #:upper16:.LC116
	mov	r2, #81
.LVL4048:
	ldr	r3, .L3842+4
.LVL4049:
	bl	_assert_fail
.LVL4050:
.L3840:
.LBE11186:
.LBB11187:
.LBB11181:
.LBB11130:
	.loc 28 51 0
	movw	r0, #:lower16:.LC166
.LVL4051:
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC166
	movt	r1, #:upper16:.LC30
	mov	r2, #51
	ldr	r3, .L3842+8
	bl	_assert_fail
.LVL4052:
.L3839:
.LBE11130:
.LBE11181:
.LBB11182:
.LBB11119:
	bl	thread_state_ptr_set_blockingObject.isra.207.part.208
.LVL4053:
.L3843:
	.align	2
.L3842:
	.word	.LANCHOR7-3604
	.word	.LANCHOR7-3564
	.word	.LANCHOR7-3648
.LBE11119:
.LBE11182:
.LBE11187:
	.cfi_endproc
.LFE591:
	.size	sendIPC, .-sendIPC
	.align	2
	.global	sendFaultIPC
	.type	sendFaultIPC, %function
sendFaultIPC:
.LFB520:
	.file 52 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/kernel/faulthandler.c"
	.loc 52 32 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4054:
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 52 38 0
	movw	r4, #:lower16:current_lookup_fault
	movt	r4, #:upper16:current_lookup_fault
	.loc 52 40 0
	ldr	r8, [r0, #116]
.LVL4055:
	.loc 52 32 0
	mov	r6, r0
	sub	sp, sp, #32
	.cfi_def_cfa_offset 56
	.loc 52 38 0
	ldmia	r4, {r0, r1}
.LVL4056:
	add	r7, sp, #12
	.loc 52 41 0
	mov	r2, r8
	.loc 52 38 0
	stmia	r7, {r0, r1}
	.loc 52 41 0
	mov	r1, r6
	add	r0, sp, #20
	bl	lookupCap
.LVL4057:
	.loc 52 42 0
	ldr	r5, [sp, #20]
	.loc 52 41 0
	ldr	r2, [sp, #24]
.LVL4058:
	.loc 52 42 0
	cmp	r5, #0
	bne	.L3859
.LVL4059:
.LBB11188:
.LBB11189:
	.loc 28 1035 0
	and	r3, r2, #14
.LBE11189:
.LBE11188:
	.loc 52 46 0
	ldr	ip, [sp, #28]
.LVL4060:
.LBB11191:
.LBB11190:
	.loc 28 1035 0
	cmp	r3, #14
	.loc 28 1037 0
	uxtbeq	r3, r2
	.loc 28 1036 0
	andne	r3, r2, #15
.LBE11190:
.LBE11191:
	.loc 52 48 0
	cmp	r3, #4
	beq	.L3860
.L3849:
.LVL4061:
	.loc 52 62 0
	mov	r2, #1
.LVL4062:
	movw	r3, #:lower16:current_fault
	.loc 52 65 0
	mov	r5, r2
	.loc 52 62 0
	movt	r3, #:upper16:current_fault
	.loc 52 63 0
	mov	r1, #0
	.loc 52 62 0
	stmia	r3, {r2, r8}
	.loc 52 63 0
	str	r2, [r4]
	str	r1, [r4, #4]
.LVL4063:
.L3846:
	.loc 52 67 0
	mov	r0, r5
	add	sp, sp, #32
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL4064:
.L3859:
	.cfi_restore_state
	.loc 52 43 0
	mov	r2, #1
.LVL4065:
	movw	r3, #:lower16:current_fault
	movt	r3, #:upper16:current_fault
	.loc 52 44 0
	mov	r5, r2
	.loc 52 67 0
	mov	r0, r5
	.loc 52 43 0
	stmia	r3, {r2, r8}
	.loc 52 67 0
	add	sp, sp, #32
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL4066:
.L3860:
	.cfi_restore_state
.LBB11192:
.LBB11193:
	.loc 28 1251 0 discriminator 1
	and	r3, r2, #15
	cmp	r3, #4
	bne	.L3861
.LVL4067:
.LBE11193:
.LBE11192:
	.loc 52 48 0
	tst	ip, #1
	beq	.L3849
.LVL4068:
	.loc 52 49 0
	tst	ip, #4
	beq	.L3849
	.loc 52 51 0
	movw	r1, #:lower16:current_fault
	add	r3, r6, #88
	movt	r1, #:upper16:current_fault
.LBB11195:
.LBB11196:
	.loc 28 1188 0
	bic	ip, ip, #15
.LVL4069:
.LBE11196:
.LBE11195:
	.loc 52 51 0
	ldmia	r1, {r0, r1}
	.loc 52 55 0
	mov	r2, r2, lsr #4
.LVL4070:
.LBB11197:
.LBB11198:
	.loc 28 566 0
	and	lr, r0, #7
.LBE11198:
.LBE11197:
	.loc 52 51 0
	stmia	r3, {r0, r1}
	.loc 52 52 0
	cmp	lr, #1
	.loc 52 53 0
	ldmeqia	r7, {r0, r1}
	addeq	r3, r6, #96
	stmeqia	r3, {r0, r1}
	.loc 52 55 0
	mov	r0, #1
	str	ip, [sp, #4]
	mov	r3, r0
	str	r6, [sp]
	mov	r1, #0
	bl	sendIPC
.LVL4071:
	.loc 52 60 0
	b	.L3846
.LVL4072:
.L3861:
.LBB11199:
.LBB11194:
	bl	cap_endpoint_cap_get_capCanSend.part.178
.LVL4073:
.LBE11194:
.LBE11199:
	.cfi_endproc
.LFE520:
	.size	sendFaultIPC, .-sendFaultIPC
	.align	2
	.global	performInvocation_Endpoint
	.type	performInvocation_Endpoint, %function
performInvocation_Endpoint:
.LFB634:
	.loc 36 693 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4074:
	.loc 36 694 0
	movw	ip, #:lower16:ksCurThread
	.loc 36 693 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	.loc 36 694 0
	movt	ip, #:upper16:ksCurThread
	.loc 36 693 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 36 693 0
	mov	lr, r2
	.loc 36 694 0
	mov	r2, r1
.LVL4075:
	ldr	ip, [ip]
	ldr	r1, [sp, #16]
.LVL4076:
	str	r0, [sp, #4]
	mov	r0, r3
.LVL4077:
	str	ip, [sp]
	mov	r3, lr
.LVL4078:
	bl	sendIPC
.LVL4079:
	.loc 36 697 0
	mov	r0, #0
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE634:
	.size	performInvocation_Endpoint, .-performInvocation_Endpoint
	.align	2
	.global	receiveIPC
	.type	receiveIPC, %function
receiveIPC:
.LFB592:
	.loc 51 115 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4080:
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 40
	.loc 51 115 0
	add	ip, sp, #16
	mov	r5, r0
	stmdb	ip, {r1, r2}
	ldr	r2, [sp, #8]
.LVL4081:
.LBB11271:
.LBB11272:
	.loc 28 1035 0
	and	r1, r2, #14
	cmp	r1, #14
	.loc 28 1037 0
	uxtbeq	r1, r2
	.loc 28 1036 0
	andne	r1, r2, #15
.LBE11272:
.LBE11271:
	.loc 51 121 0
	cmp	r1, #4
	bne	.L3896
.LVL4082:
.LBB11273:
.LBB11274:
	.loc 28 1185 0
	and	r2, r2, #15
	ldr	r4, [sp, #12]
.LVL4083:
	cmp	r2, #4
	bne	.L3897
.LBE11274:
.LBE11273:
	.loc 51 127 0
	ldr	r0, [r0, #84]
.LVL4084:
.LBB11277:
.LBB11278:
	.loc 28 1254 0
	and	r6, r4, #1
	eor	r6, r6, #1
.LBE11278:
.LBE11277:
.LBB11279:
.LBB11275:
	.loc 28 1188 0
	bic	r4, r4, #15
.LVL4085:
.LBE11275:
.LBE11279:
	.loc 51 128 0
	cmp	r0, #0
	beq	.L3869
.LVL4086:
.LBB11280:
.LBB11281:
	.loc 28 257 0 discriminator 1
	ldr	r2, [r0]
	and	r2, r2, #3
.LVL4087:
.LBE11281:
.LBE11280:
	.loc 51 128 0 discriminator 1
	cmp	r2, #2
	beq	.L3898
.LVL4088:
.L3869:
	ldr	r2, [r4]
.LVL4089:
.LBB11282:
.LBB11283:
	.loc 28 403 0
	and	r1, r2, #3
.LVL4090:
.LBE11283:
.LBE11282:
	.loc 51 131 0
	cmp	r1, #1
	beq	.L3871
	bcc	.L3872
	cmp	r1, #2
	beq	.L3872
.L3864:
	.loc 51 207 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL4091:
.L3872:
	.cfi_restore_state
.LBB11284:
	.loc 51 136 0
	cmp	r3, #0
.LBB11285:
.LBB11286:
.LBB11287:
	.loc 13 21 0
	streq	r3, [r5]
.LBE11287:
.LBE11286:
.LBE11285:
	.loc 51 136 0
	beq	.L3864
.LVL4092:
.LBB11288:
.LBB11289:
	.loc 28 101 0
	ldr	r3, [r5, #80]
.LVL4093:
.LBE11289:
.LBE11288:
.LBB11291:
.LBB11292:
	.loc 28 140 0
	orr	r2, r4, #3
	str	r2, [r5, #72]
.LVL4094:
.LBE11292:
.LBE11291:
	.loc 51 145 0
	mov	r0, r5
.LVL4095:
.LBB11293:
.LBB11290:
	.loc 28 101 0
	bic	r3, r3, #1
	.loc 28 102 0
	orr	r6, r3, r6
.LVL4096:
	str	r6, [r5, #80]
.LBE11290:
.LBE11293:
	.loc 51 145 0
	bl	scheduleTCB
.LVL4097:
	ldr	r2, [r4, #4]
.LVL4098:
.LBB11294:
.LBB11295:
	.loc 31 157 0
	mov	lr, #0
	ldr	r3, [r4]
.LVL4099:
	.loc 31 151 0
	bics	r1, r2, #15
.LVL4100:
.LBE11295:
.LBE11294:
.LBB11298:
.LBB11299:
.LBB11300:
.LBB11301:
	.loc 28 384 0
	bic	ip, r3, #15
.LVL4101:
.LBE11301:
.LBE11300:
.LBE11299:
.LBE11298:
.LBB11302:
.LBB11296:
	.loc 31 151 0
	moveq	r1, r5
.LVL4102:
	.loc 31 154 0
	strne	r5, [ip, #132]
.LBE11296:
.LBE11302:
.LBB11303:
.LBB11304:
	.loc 28 415 0
	bic	r0, r3, #3
.LBE11304:
.LBE11303:
.LBB11307:
.LBB11308:
.LBB11309:
.LBB11310:
	.loc 28 376 0
	tst	r1, #15
.LBE11310:
.LBE11309:
.LBE11308:
.LBE11307:
.LBB11325:
.LBB11305:
	.loc 28 416 0
	orr	r0, r0, #2
.LBE11305:
.LBE11325:
.LBB11326:
.LBB11297:
	.loc 31 156 0
	str	ip, [r5, #136]
	.loc 31 157 0
	str	lr, [r5, #132]
.LVL4103:
.LBE11297:
.LBE11326:
.LBB11327:
.LBB11306:
	.loc 28 416 0
	str	r0, [r4]
.LVL4104:
.LBE11306:
.LBE11327:
.LBB11328:
.LBB11323:
.LBB11314:
.LBB11311:
	.loc 28 376 0
	bne	.L3881
	.loc 28 378 0
	bic	r1, r1, #15
.LVL4105:
	.loc 28 377 0
	and	r2, r2, #15
.LVL4106:
.LBE11311:
.LBE11314:
.LBB11315:
.LBB11316:
	.loc 28 395 0
	tst	r5, #15
.LBE11316:
.LBE11315:
.LBB11319:
.LBB11312:
	.loc 28 378 0
	orr	r2, r1, r2
	str	r2, [r4, #4]
.LVL4107:
.LBE11312:
.LBE11319:
.LBB11320:
.LBB11317:
	.loc 28 395 0
	bne	.L3882
	.loc 28 396 0
	and	r3, r3, #12
	.loc 28 397 0
	bic	r5, r5, #15
.LVL4108:
	.loc 28 396 0
	orr	r3, r3, #2
	.loc 28 397 0
	orr	r3, r3, r5
	str	r3, [r4]
.LBE11317:
.LBE11320:
.LBE11323:
.LBE11328:
.LBE11284:
	.loc 51 207 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL4109:
.L3871:
	.cfi_restore_state
	ldr	r3, [r4, #4]
.LVL4110:
.LBB11330:
.LBB11331:
.LBB11332:
.LBB11333:
.LBB11334:
	.loc 28 384 0
	bic	r1, r2, #15
.LVL4111:
.LBE11334:
.LBE11333:
.LBE11332:
.LBE11331:
	.loc 51 170 0
	bics	r7, r3, #15
.LVL4112:
	beq	.L3899
.LVL4113:
.LBB11335:
.LBB11336:
	.loc 31 167 0
	ldr	ip, [r7, #136]
	cmp	ip, #0
	.loc 31 168 0
	ldrne	lr, [r7, #132]
	movne	r0, r7
.LVL4114:
	.loc 31 170 0
	ldreq	r0, [r7, #132]
.LVL4115:
	.loc 31 168 0
	strne	lr, [ip, #132]
	ldrne	lr, [r7, #132]
	.loc 31 170 0
	moveq	lr, r0
	.loc 31 173 0
	cmp	lr, #0
	.loc 31 174 0
	strne	ip, [lr, #136]
	.loc 31 167 0
	moveq	r1, ip
.LVL4116:
.LBE11336:
.LBE11335:
.LBB11337:
.LBB11338:
.LBB11339:
.LBB11340:
	.loc 28 376 0
	tst	r0, #15
	bne	.L3881
	.loc 28 377 0
	and	r3, r3, #15
	.loc 28 378 0
	bic	ip, r0, #15
.LBE11340:
.LBE11339:
.LBB11342:
.LBB11343:
	.loc 28 395 0
	tst	r1, #15
.LBE11343:
.LBE11342:
.LBB11346:
.LBB11341:
	.loc 28 378 0
	orr	r3, ip, r3
	str	r3, [r4, #4]
.LVL4117:
.LBE11341:
.LBE11346:
.LBB11347:
.LBB11344:
	.loc 28 395 0
	bne	.L3882
	.loc 28 397 0
	bic	r1, r1, #15
.LVL4118:
	.loc 28 396 0
	and	r2, r2, #15
.LVL4119:
.LBE11344:
.LBE11347:
.LBE11338:
.LBE11337:
	.loc 51 176 0
	cmp	r0, #0
.LBB11350:
.LBB11349:
.LBB11348:
.LBB11345:
	.loc 28 397 0
	orr	r2, r1, r2
	str	r2, [r4]
.LVL4120:
.LBE11345:
.LBE11348:
.LBE11349:
.LBE11350:
.LBB11351:
.LBB11352:
	.loc 28 415 0
	biceq	r2, r2, #3
	streq	r2, [r4]
.LBE11352:
.LBE11351:
	.loc 51 186 0
	mov	r1, r4
	ldr	r2, [r7, #80]
.LVL4121:
	mov	r0, r7
.LVL4122:
	str	r5, [sp]
.LVL4123:
	str	r6, [sp, #4]
.LBB11353:
.LBB11354:
	.loc 28 40 0
	ubfx	r4, r2, #3, #1
.LVL4124:
.LBE11354:
.LBE11353:
	.loc 51 186 0
	mov	r3, r4
	mov	r2, r2, lsr #4
.LVL4125:
	bl	doIPCTransfer
.LVL4126:
.LBB11355:
.LBB11356:
	.loc 28 59 0
	ldr	r3, [r7, #80]
.LBE11356:
.LBE11355:
	.loc 51 191 0
	tst	r3, #4
	beq	.L3900
.L3884:
	eor	r6, r6, #1
.LVL4127:
	.loc 51 193 0
	tst	r4, r6
	beq	.L3886
	.loc 51 194 0
	mov	r0, r7
	mov	r1, r5
.LBE11330:
	.loc 51 207 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4128:
.LBB11377:
	.loc 51 194 0
	b	setupCallerCap
.LVL4129:
.L3900:
	.cfi_restore_state
.LBB11357:
.LBB11358:
	.loc 28 566 0 discriminator 1
	ldr	r1, [r7, #88]
.LBE11358:
.LBE11357:
	.loc 51 191 0 discriminator 1
	ands	r8, r1, #7
	bne	.L3884
.LVL4130:
.LBB11359:
.LBB11360:
.LBB11361:
.LBB11362:
	.loc 28 169 0
	ldr	r3, [r7, #72]
.LVL4131:
.LBE11362:
.LBE11361:
	.loc 26 418 0
	mov	r0, r7
.LBB11364:
.LBB11363:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #1
	str	r3, [r7, #72]
.LBE11363:
.LBE11364:
	.loc 26 418 0
	bl	scheduleTCB
.LVL4132:
.LBE11360:
.LBE11359:
.LBB11365:
.LBB11366:
	.loc 26 411 0
	mov	r0, r7
	mov	r1, r8
.LBE11366:
.LBE11365:
.LBE11377:
	.loc 51 207 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4133:
.LBB11378:
.LBB11368:
.LBB11367:
	.loc 26 411 0
	b	possibleSwitchTo
.LVL4134:
.L3886:
	.cfi_restore_state
.LBE11367:
.LBE11368:
.LBB11369:
.LBB11370:
.LBB11371:
.LBB11372:
	.loc 28 169 0
	ldr	r3, [r7, #72]
.LVL4135:
.LBE11372:
.LBE11371:
	.loc 26 418 0
	mov	r0, r7
.LBB11374:
.LBB11373:
	.loc 28 169 0
	bic	r3, r3, #15
	str	r3, [r7, #72]
.LBE11373:
.LBE11374:
.LBE11370:
.LBE11369:
.LBE11378:
	.loc 51 207 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4136:
.LBB11379:
.LBB11376:
.LBB11375:
	.loc 26 418 0
	b	scheduleTCB
.LVL4137:
.L3898:
	.cfi_restore_state
.LBE11375:
.LBE11376:
.LBE11379:
	.loc 51 129 0
	mov	r1, r5
	.loc 51 207 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4138:
	.loc 51 129 0
	b	completeSignal
.LVL4139:
.L3896:
	.cfi_restore_state
	.loc 51 121 0 discriminator 1
	movw	r0, #:lower16:.LC168
.LVL4140:
	movw	r1, #:lower16:.LC116
	movt	r0, #:upper16:.LC168
	movt	r1, #:upper16:.LC116
	mov	r2, #121
	ldr	r3, .L3901
.LVL4141:
	bl	_assert_fail
.LVL4142:
.L3897:
.LBB11380:
.LBB11276:
	bl	cap_endpoint_cap_get_capEPPtr.part.77
.LVL4143:
.L3899:
.LBE11276:
.LBE11380:
.LBB11381:
	.loc 51 170 0 discriminator 1
	movw	r0, #:lower16:.LC169
.LVL4144:
	movw	r1, #:lower16:.LC116
.LVL4145:
	movt	r0, #:upper16:.LC169
	movt	r1, #:upper16:.LC116
	mov	r2, #170
.LVL4146:
	ldr	r3, .L3901
	bl	_assert_fail
.LVL4147:
.L3881:
.LBE11381:
.LBB11382:
.LBB11329:
.LBB11324:
.LBB11321:
.LBB11313:
	bl	endpoint_ptr_set_epQueue_head.isra.211.part.212
.LVL4148:
.L3882:
.LBE11313:
.LBE11321:
.LBB11322:
.LBB11318:
	bl	endpoint_ptr_set_epQueue_tail.isra.213.part.214
.LVL4149:
.L3902:
	.align	2
.L3901:
	.word	.LANCHOR7-3556
.LBE11318:
.LBE11322:
.LBE11324:
.LBE11329:
.LBE11382:
	.cfi_endproc
.LFE592:
	.size	receiveIPC, .-receiveIPC
	.align	2
	.type	handleReply, %function
handleReply:
.LFB283:
	.file 53 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/api/syscall.c"
	.loc 53 279 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 53 283 0
	movw	r3, #:lower16:ksCurThread
	.loc 53 279 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	.loc 53 283 0
	movt	r3, #:upper16:ksCurThread
	.loc 53 279 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 53 283 0
	ldr	ip, [r3]
	bic	r2, ip, #508
	bic	r2, r2, #3
	.loc 53 284 0
	ldr	r1, [r2, #48]
	.loc 53 283 0
	add	r2, r2, #48
.LVL4150:
.LBB11383:
.LBB11384:
	.loc 28 1035 0
	and	r3, r1, #14
	cmp	r3, #14
	.loc 28 1037 0
	uxtbeq	r3, r1
	.loc 28 1036 0
	andne	r3, r1, #15
.LBE11384:
.LBE11383:
	.loc 53 285 0
	cmp	r3, #0
	beq	.L3907
	cmp	r3, #8
	bne	.L3906
.LVL4151:
.LBB11385:
.LBB11386:
.LBB11387:
	.loc 28 1471 0
	and	r3, r1, #15
	cmp	r3, #8
	bne	.L3912
.LVL4152:
.LBE11387:
.LBE11386:
	.loc 53 289 0
	tst	r1, #16
	bne	.L3906
.LVL4153:
.LBB11389:
.LBB11390:
	.loc 28 1460 0
	bic	r1, r1, #31
.LVL4154:
.LBE11390:
.LBE11389:
	.loc 53 295 0
	cmp	ip, r1
	beq	.L3913
	.loc 53 296 0
	mov	r0, ip
.LBE11385:
	.loc 53 309 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
.LBB11392:
	.loc 53 296 0
	b	doReplyTransfer
.LVL4155:
.L3906:
	.cfi_restore_state
.LBE11392:
	.loc 53 308 0
	movw	r0, #:lower16:.LC173
	movw	r1, #:lower16:.LC171
	movt	r0, #:upper16:.LC173
	movt	r1, #:upper16:.LC171
	mov	r2, #308
.LVL4156:
	ldr	r3, .L3914
	bl	_fail
.LVL4157:
.L3907:
	.loc 53 301 0
	add	r3, ip, #140
	movw	r0, #:lower16:.LC3
	str	r3, [sp]
.LVL4158:
	mov	r3, ip
	ldr	ip, [ip, #68]
.LVL4159:
	movw	r2, #301
.LVL4160:
	ldr	r1, .L3914
	movt	r0, #:upper16:.LC3
	str	ip, [sp, #4]
	bl	kprintf
.LVL4161:
	movw	r0, #:lower16:.LC172
	movt	r0, #:upper16:.LC172
	bl	kprintf
.LVL4162:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	.loc 53 309 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 53 301 0
	b	kprintf
.LVL4163:
.L3912:
	.cfi_restore_state
.LBB11393:
.LBB11391:
.LBB11388:
	bl	cap_reply_cap_get_capReplyMaster.isra.63.part.64
.LVL4164:
.L3913:
.LBE11388:
.LBE11391:
	.loc 53 295 0 discriminator 1
	movw	r0, #:lower16:.LC170
	movw	r1, #:lower16:.LC171
.LVL4165:
	movt	r0, #:upper16:.LC170
	movt	r1, #:upper16:.LC171
	movw	r2, #295
.LVL4166:
	ldr	r3, .L3914+4
	bl	_assert_fail
.LVL4167:
.L3915:
	.align	2
.L3914:
	.word	.LANCHOR7-3532
	.word	.LANCHOR7-3544
.LBE11393:
	.cfi_endproc
.LFE283:
	.size	handleReply, .-handleReply
	.section	.boot.text
	.align	2
	.global	alloc_region
	.type	alloc_region, %function
alloc_region:
.LFB492:
	.loc 25 53 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4168:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 25 74 0
	mov	r3, #1
	movw	r4, #:lower16:.LANCHOR3
	.loc 25 58 0
	mov	r1, #0
	movt	r4, #:upper16:.LANCHOR3
	.loc 25 74 0
	mov	fp, r3, asl r0
	mov	r5, r4
	.loc 25 56 0
	mov	r7, r1
	.loc 25 55 0
	mov	r10, r1
	.loc 25 69 0
	mov	r6, r1
	.loc 25 53 0
	sub	sp, sp, #52
	.cfi_def_cfa_offset 88
	.loc 25 56 0
	str	r1, [sp, #4]
	.loc 25 57 0
	str	r1, [sp, #8]
	str	r1, [sp, #12]
	.loc 25 58 0
	str	r1, [sp, #16]
.LVL4169:
.L3921:
	.loc 25 71 0
	ldr	ip, [r4, r6, asl #3]
	.loc 25 72 0
	ldr	lr, [r5, #4]
	.loc 25 71 0
	sub	r3, ip, #1
	mov	r3, r3, lsr r0
	.loc 25 72 0
	mov	r2, lr, lsr r0
	.loc 25 71 0
	add	r3, r3, #1
	mov	r3, r3, asl r0
	.loc 25 72 0
	mov	r2, r2, asl r0
	.loc 25 71 0
	rsb	r9, ip, r3
	.loc 25 72 0
	rsb	r8, r2, lr
	.loc 25 71 0
	cmp	r9, r8
.LVL4170:
	.loc 25 74 0
	addcc	r2, r3, fp
.LVL4171:
	.loc 25 77 0
	rsbcs	r3, fp, r2
.LVL4172:
	.loc 25 79 0
	cmp	r2, r3
	movhi	r8, #1
	movls	r8, #0
	cmp	ip, r3
	movhi	r8, #0
	.loc 25 80 0
	cmp	lr, r2
	movcc	r8, #0
	andcs	r8, r8, #1
	cmp	r8, #0
	beq	.L3919
	.loc 25 82 0
	rsb	r8, ip, r3
	rsb	r9, r2, lr
	cmp	r8, r9
	.loc 25 93 0
	ldr	r8, [sp, #4]
	.loc 25 82 0
	strcs	ip, [sp, #24]
	movcs	ip, r2
	strcs	lr, [sp, #20]
	movcs	lr, r3
	strcc	r2, [sp, #24]
	strcc	r3, [sp, #20]
.LVL4173:
	.loc 25 93 0
	cmp	r8, r7
	beq	.L3928
.LVL4174:
.LBB11394:
.LBB11395:
	.loc 25 48 0 discriminator 1
	ldr	r8, [sp, #20]
.LBE11395:
.LBE11394:
.LBB11397:
.LBB11398:
	ldr	r9, [sp, #12]
.LBE11398:
.LBE11397:
.LBB11400:
.LBB11396:
	rsb	r8, ip, r8
	str	r8, [sp, #28]
.LBE11396:
.LBE11400:
.LBB11401:
.LBB11399:
	ldr	r8, [sp, #8]
	rsb	r9, r8, r9
.LBE11399:
.LBE11401:
	.loc 25 93 0 discriminator 1
	ldr	r8, [sp, #28]
	cmp	r8, r9
	bcc	.L3928
.LVL4175:
	.loc 25 94 0
	beq	.L3934
.LVL4176:
.L3919:
	.loc 25 69 0 discriminator 2
	cmp	r6, #1
	add	r5, r5, #8
	bne	.L3929
.LVL4177:
	.loc 25 103 0
	ldr	r3, [sp, #4]
.LVL4178:
	cmp	r7, r3
	beq	.L3935
	.loc 25 110 0
	ldr	r3, [sp, #16]
	.loc 25 108 0
	add	r2, r4, r10, asl #3
.LVL4179:
	.loc 25 110 0
	str	r1, [sp, #44]
	add	r1, sp, #48
.LVL4180:
	str	r3, [sp, #40]
	.loc 25 108 0
	mov	r3, #0
	str	r3, [r2, #4]
.LVL4181:
	.loc 25 110 0
	ldmdb	r1, {r0, r1}
.LVL4182:
	.loc 25 108 0
	str	r3, [r4, r10, asl #3]
	.loc 25 110 0
	bl	insert_region
.LVL4183:
	.loc 25 111 0
	ldr	r2, [sp, #8]
	add	r3, sp, #32
	str	r2, [sp, #32]
	ldr	r2, [sp, #12]
	str	r2, [sp, #36]
	ldmia	r3, {r0, r1}
	bl	insert_region
.LVL4184:
	cmp	r0, #0
	beq	.L3936
.L3924:
	.loc 25 115 0
	mov	r0, r7
	.loc 25 116 0
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4185:
.L3929:
	.cfi_restore_state
	mov	r6, #1
.LVL4186:
	b	.L3921
.LVL4187:
.L3936:
	.loc 25 112 0
	ldr	r3, [sp, #12]
	movw	r0, #:lower16:.LC175
	ldr	r2, [sp, #8]
	movt	r0, #:upper16:.LC175
	rsb	r1, r2, r3
	bl	kprintf
.LVL4188:
	b	.L3924
.LVL4189:
.L3934:
.LBB11402:
.LBB11403:
	.loc 25 48 0
	ldr	r8, [sp, #24]
.LBE11403:
.LBE11402:
.LBB11405:
.LBB11406:
	ldr	r9, [sp, #16]
.LBE11406:
.LBE11405:
.LBB11408:
.LBB11404:
	rsb	r8, r8, lr
.LBE11404:
.LBE11408:
.LBB11409:
.LBB11407:
	rsb	r9, r9, r1
.LBE11407:
.LBE11409:
	.loc 25 95 0
	cmp	r8, r9
	bcs	.L3919
.LVL4190:
.L3928:
	.loc 25 98 0
	mov	r1, lr
.LVL4191:
	ldr	lr, [sp, #24]
.LVL4192:
	mov	r7, r3
.LVL4193:
	mov	r10, r6
	str	lr, [sp, #16]
.LVL4194:
	.loc 25 97 0
	ldr	lr, [sp, #20]
	stmib	sp, {r2, ip, lr}
.LVL4195:
	b	.L3919
.LVL4196:
.L3935:
	.loc 25 104 0
	movw	r0, #:lower16:.LC174
.LVL4197:
	movt	r0, #:upper16:.LC174
	bl	kprintf
.LVL4198:
	.loc 25 105 0
	mov	r0, #0
	.loc 25 116 0
	add	sp, sp, #52
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.cfi_endproc
.LFE492:
	.size	alloc_region, .-alloc_region
	.align	2
	.global	provide_cap
	.type	provide_cap, %function
provide_cap:
.LFB500:
	.loc 25 275 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 25 276 0
	movw	r4, #:lower16:.LANCHOR3
	.loc 25 275 0
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	.loc 25 276 0
	movt	r4, #:upper16:.LANCHOR3
	.loc 25 275 0
	add	lr, sp, #16
	mov	ip, sp
	stmdb	lr, {r0, r1}
	.loc 25 276 0
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #24]
	.loc 25 275 0
	stmia	sp, {r2, r3}
	.loc 25 276 0
	cmp	r0, r1
	bcs	.L3990
	ldr	r3, [sp, #8]
.LVL4199:
	ldr	lr, [sp, #12]
.LVL4200:
.LBB11450:
.LBB11451:
.LBB11452:
.LBB11453:
	.loc 28 1035 0
	and	r2, r3, #14
	cmp	r2, #14
	beq	.L3940
	.loc 28 1036 0
	and	r2, r3, #15
.LVL4201:
.LBE11453:
.LBE11452:
	.loc 39 317 0
	sub	r1, r2, #2
	cmp	r1, #12
	ldrls	pc, [pc, r1, asl #2]
	b	.L3941
.L3943:
	.word	.L3942
	.word	.L3941
	.word	.L3944
	.word	.L3941
	.word	.L3945
	.word	.L3941
	.word	.L3986
	.word	.L3941
	.word	.L3947
	.word	.L3941
	.word	.L3948
	.word	.L3941
	.word	.L3986
.LVL4202:
.L3990:
.LBE11451:
.LBE11450:
	.loc 25 277 0
	movw	r0, #:lower16:.LC176
	movt	r0, #:upper16:.LC176
	bl	kprintf
.LVL4203:
	.loc 25 278 0
	mov	r0, #0
	.loc 25 283 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldmfd	sp!, {r4, pc}
.LVL4204:
.L3940:
	.cfi_restore_state
.LBB11508:
.LBB11506:
.LBB11455:
.LBB11454:
	.loc 28 1037 0
	uxtb	r2, r3
.LVL4205:
.LBE11454:
.LBE11455:
	.loc 39 317 0
	sub	r1, r2, #2
	cmp	r1, #60
	ldrls	pc, [pc, r1, asl #2]
	b	.L3949
.L3951:
	.word	.L3950
	.word	.L3949
	.word	.L3952
	.word	.L3949
	.word	.L3953
	.word	.L3949
	.word	.L3986
	.word	.L3949
	.word	.L3954
	.word	.L3949
	.word	.L3955
	.word	.L3949
	.word	.L3986
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3986
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3956
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3949
	.word	.L3986
.L3986:
.LBB11456:
.LBB11457:
	.loc 38 318 0
	mov	r3, #0
.LVL4206:
.L3946:
.LBE11457:
.LBE11456:
.LBE11506:
.LBE11508:
	.loc 25 280 0
	add	r0, r3, r0, asl #4
	ldmia	ip, {r1, r2}
	bl	write_slot
.LVL4207:
	.loc 25 281 0
	ldr	r3, [r4, #20]
	.loc 25 282 0
	mov	r0, #1
	.loc 25 281 0
	add	r3, r3, r0
	str	r3, [r4, #20]
	.loc 25 283 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldmfd	sp!, {r4, pc}
.LVL4208:
.L3955:
	.cfi_restore_state
	and	r2, r3, #15
.LVL4209:
.L3948:
.LBB11509:
.LBB11507:
.LBB11477:
.LBB11478:
	.loc 28 1608 0
	cmp	r2, #12
.LBE11478:
.LBE11477:
	.loc 39 331 0
	biceq	r3, r3, #508
.LVL4210:
	biceq	r3, r3, #3
.LBB11480:
.LBB11479:
	.loc 28 1608 0
	beq	.L3946
	bl	cap_thread_cap_get_capTCBPtr.isra.59.part.60
.LVL4211:
.L3954:
	and	r2, r3, #15
.LVL4212:
.L3947:
.LBE11479:
.LBE11480:
.LBB11481:
.LBB11482:
	.loc 28 1577 0
	cmp	r2, #10
	.loc 28 1580 0
	biceq	r3, r3, #31
.LVL4213:
	.loc 28 1577 0
	beq	.L3946
	bl	cap_cnode_cap_get_capCNodePtr.isra.78.part.79
.LVL4214:
.L3953:
	and	r2, r3, #15
.LVL4215:
.L3945:
.LBE11482:
.LBE11481:
.LBB11483:
.LBB11484:
	.loc 28 1407 0
	cmp	r2, #6
	bne	.L3991
.LVL4216:
.L3981:
.LBE11484:
.LBE11483:
.LBB11486:
.LBB11474:
.LBB11458:
.LBB11459:
	.loc 28 1970 0
	bic	r3, r3, #15
.LVL4217:
	b	.L3946
.LVL4218:
.L3952:
	and	r2, r3, #15
.LVL4219:
.L3944:
.LBE11459:
.LBE11458:
.LBE11474:
.LBE11486:
.LBB11487:
.LBB11488:
	.loc 28 1185 0
	cmp	r2, #4
	.loc 28 1188 0
	biceq	r3, lr, #15
.LVL4220:
	.loc 28 1185 0
	beq	.L3946
	bl	cap_endpoint_cap_get_capEPPtr.part.77
.LVL4221:
.L3950:
	and	r2, r3, #15
.LVL4222:
.L3942:
.LBE11488:
.LBE11487:
.LBB11489:
.LBB11490:
	.loc 28 1142 0
	cmp	r2, #2
	beq	.L3981
	bl	cap_untyped_cap_get_capPtr.isra.75.part.76
.LVL4223:
.L3941:
.LBE11490:
.LBE11489:
.LBB11491:
.LBB11475:
	.loc 38 302 0
	sub	r1, r2, #1
	cmp	r1, #8
	ldrls	pc, [pc, r1, asl #2]
	b	.L3986
.L3965:
	.word	.L3964
	.word	.L3986
	.word	.L3964
	.word	.L3986
	.word	.L3966
	.word	.L3986
	.word	.L3967
	.word	.L3986
	.word	.L3968
.LVL4224:
.L3956:
.LBE11475:
.LBE11491:
.LBB11492:
.LBB11493:
.LBB11494:
.LBB11495:
.LBB11496:
.LBB11497:
	.loc 28 2318 0
	cmp	r2, #46
	bne	.L3992
	.loc 28 2321 0
	ubfx	r2, r3, #8, #6
.LVL4225:
.LBE11497:
.LBE11496:
	.loc 39 97 0
	cmp	r2, #32
	.loc 39 100 0
	andne	r2, r2, #31
.LVL4226:
	mvnne	r3, #0
.LVL4227:
	addne	r2, r2, #1
	.loc 39 97 0
	mvneq	r2, #31
.LVL4228:
	movne	r2, r3, asl r2
.LBE11495:
.LBE11494:
	.loc 39 114 0
	and	r3, r2, lr
	b	.L3946
.LVL4229:
.L3972:
	and	r2, r3, #15
.LVL4230:
.L3968:
.LBE11493:
.LBE11492:
.LBB11503:
.LBB11476:
.LBB11461:
.LBB11462:
	.loc 28 2162 0
	cmp	r2, #9
	.loc 28 2165 0
	biceq	r3, r3, #16320
.LVL4231:
	biceq	r3, r3, #63
	.loc 28 2162 0
	beq	.L3946
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.93.part.94
.LVL4232:
.L3971:
	and	r2, r3, #15
.LVL4233:
.L3967:
.LBE11462:
.LBE11461:
.LBB11463:
.LBB11464:
	.loc 28 2098 0
	cmp	r2, #7
	.loc 28 2101 0
	biceq	r3, r3, #1020
.LVL4234:
	biceq	r3, r3, #3
	.loc 28 2098 0
	beq	.L3946
	bl	cap_page_table_cap_get_capPTBasePtr.isra.91.part.92
.LVL4235:
.L3970:
	and	r2, r3, #15
.LVL4236:
.L3966:
.LBE11464:
.LBE11463:
.LBB11465:
.LBB11460:
	.loc 28 1967 0
	cmp	r2, #5
	beq	.L3981
	bl	cap_asid_pool_cap_get_capASIDPool.isra.95.part.96
.LVL4237:
.L3964:
.LBE11460:
.LBE11465:
.LBB11466:
.LBB11467:
	.loc 38 207 0
	and	r1, r2, #253
	cmp	r1, #1
	bne	.L3993
	.loc 38 210 0
	cmp	r2, #1
	beq	.L3975
	cmp	r2, #3
	bne	.L3986
.LVL4238:
.LBB11468:
.LBB11469:
	.loc 28 1919 0
	and	r2, r3, #15
.LVL4239:
	cmp	r2, #3
	.loc 28 1922 0
	biceq	r3, r3, #-268435441
.LVL4240:
	biceq	r3, r3, #264241152
	moveq	r3, r3, asl #10
	.loc 28 1919 0
	beq	.L3946
	bl	cap_frame_cap_get_capFBasePtr.isra.87.part.88
.LVL4241:
.L3949:
.LBE11469:
.LBE11468:
.LBE11467:
.LBE11466:
	.loc 38 302 0
	sub	r1, r2, #1
	cmp	r1, #8
	ldrls	pc, [pc, r1, asl #2]
	b	.L3986
.L3969:
	.word	.L3964
	.word	.L3986
	.word	.L3964
	.word	.L3986
	.word	.L3970
	.word	.L3986
	.word	.L3971
	.word	.L3986
	.word	.L3972
.LVL4242:
.L3975:
.LBB11473:
.LBB11472:
.LBB11470:
.LBB11471:
	.loc 28 1755 0
	and	r2, r3, #15
.LVL4243:
	cmp	r2, #1
	.loc 28 1758 0
	biceq	r3, r3, #-16777216
.LVL4244:
	biceq	r3, r3, #15
	moveq	r3, r3, asl #8
	.loc 28 1755 0
	beq	.L3946
	bl	cap_small_frame_cap_get_capFBasePtr.isra.85.part.86
.LVL4245:
.L3993:
.LBE11471:
.LBE11470:
	bl	generic_frame_cap_get_capFBasePtr.isra.89.part.90
.LVL4246:
.L3992:
.LBE11472:
.LBE11473:
.LBE11476:
.LBE11503:
.LBB11504:
.LBB11502:
.LBB11501:
.LBB11500:
.LBB11499:
.LBB11498:
	bl	cap_zombie_cap_get_capZombieType.isra.80.part.81
.LVL4247:
.L3991:
.LBE11498:
.LBE11499:
.LBE11500:
.LBE11501:
.LBE11502:
.LBE11504:
.LBB11505:
.LBB11485:
	bl	cap_notification_cap_get_capNtfnPtr.isra.68.part.69
.LVL4248:
.LBE11485:
.LBE11505:
.LBE11507:
.LBE11509:
	.cfi_endproc
.LFE500:
	.size	provide_cap, .-provide_cap
	.align	2
	.global	create_frames_of_region
	.type	create_frames_of_region, %function
create_frames_of_region:
.LFB501:
	.loc 25 293 0
	.cfi_startproc
	@ args = 28, pretend = 8, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4249:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 44
	.cfi_offset 4, -44
	.cfi_offset 5, -40
	.cfi_offset 6, -36
	.cfi_offset 7, -32
	.cfi_offset 8, -28
	.cfi_offset 9, -24
	.cfi_offset 10, -20
	.cfi_offset 11, -16
	.cfi_offset 14, -12
	sub	sp, sp, #52
	.cfi_def_cfa_offset 96
	ldr	r8, [sp, #104]
.LVL4250:
	.loc 25 299 0
	movw	r10, #:lower16:.LANCHOR3
	movt	r10, #:upper16:.LANCHOR3
	.loc 25 293 0
	add	r7, sp, #24
	.loc 25 301 0
	ldr	fp, [sp, #100]
	.loc 25 293 0
	mov	r9, r0
	str	r3, [sp, #92]
	.loc 25 299 0
	ldr	r3, [r10, #20]
	.loc 25 301 0
	cmp	r8, fp
	.loc 25 293 0
	stmia	r7, {r1, r2}
	ldr	r4, [sp, #108]
	.loc 25 299 0
	str	r3, [sp, #16]
.LVL4251:
	.loc 25 301 0
	bls	.L4001
	ldr	r3, [sp, #112]
.LVL4252:
	add	r5, sp, #32
	str	r10, [sp, #20]
.LBB11510:
.LBB11511:
	.loc 47 168 0
	add	r6, sp, #40
	mov	r10, fp
	rsb	r3, r3, #536870912
	mov	fp, r3
.LVL4253:
	b	.L4000
.LVL4254:
.L3996:
	str	r4, [sp]
	bl	create_it_frame_cap
.LVL4255:
.LBE11511:
.LBE11510:
	.loc 25 305 0
	ldmia	r6, {r0, r1}
	stmia	r5, {r0, r1}
.L3997:
	.loc 25 307 0
	ldmia	r7, {r0, r1}
	.loc 25 301 0
	add	r10, r10, #4096
.LVL4256:
	.loc 25 307 0
	ldmia	r5, {r2, r3}
	bl	provide_cap
.LVL4257:
	cmp	r0, #0
	beq	.L4004
	.loc 25 301 0 discriminator 2
	cmp	r8, r10
	bls	.L4005
.LVL4258:
.L4000:
	.loc 25 302 0
	subs	r3, r4, #0
.LBB11513:
.LBB11512:
	.loc 47 168 0
	mov	r1, r10
	mov	r0, r6
	mov	r2, r4
.LBE11512:
.LBE11513:
	.loc 25 302 0
	beq	.L3996
.LVL4259:
	add	r3, fp, r10
	.loc 25 303 0
	mov	r1, #1
.LVL4260:
	add	r2, sp, #92
	mov	r0, #0
	str	r0, [sp, #8]
	mov	r0, r5
	str	r3, [sp]
	mov	r3, r10
	str	r1, [sp, #4]
	str	r1, [sp, #12]
	ldmia	r2, {r1, r2}
	bl	create_mapped_it_frame_cap
.LVL4261:
	b	.L3997
.LVL4262:
.L4004:
	.loc 25 308 0
	str	r0, [r9]
	str	r0, [r9, #4]
	str	r0, [r9, #8]
.LVL4263:
.L3994:
	.loc 25 318 0
	mov	r0, r9
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 44
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 8
.LVL4264:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL4265:
.L4005:
	.cfi_restore_state
	ldr	r10, [sp, #20]
.LVL4266:
	ldr	r2, [r10, #20]
.LVL4267:
.L3995:
	.loc 25 315 0
	ldr	r1, [sp, #16]
	mov	r3, #1
	stmia	r9, {r1, r2, r3}
	b	.L3994
.LVL4268:
.L4001:
	.loc 25 301 0
	ldr	r2, [sp, #16]
	b	.L3995
	.cfi_endproc
.LFE501:
	.size	create_frames_of_region, .-create_frames_of_region
	.align	2
	.type	create_untypeds_for_region, %function
create_untypeds_for_region:
.LFB508:
	.loc 25 480 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4269:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 25 484 0
	cmp	r2, r3
	.loc 25 480 0
	sub	sp, sp, #36
	.cfi_def_cfa_offset 72
.LBB11536:
.LBB11537:
	.loc 25 446 0
	movwne	r10, #:lower16:.LANCHOR3
.LBE11537:
.LBE11536:
	.loc 25 480 0
	add	r6, sp, #8
	mov	r5, r2
	stmia	sp, {r2, r3}
.LVL4270:
	mov	r7, r3
.LVL4271:
	stmia	r6, {r0, r1}
	.loc 25 500 0
	movne	r9, #1
	.loc 25 480 0
	ldr	r8, [sp, #72]
.LBB11552:
.LBB11548:
	.loc 25 446 0
	movtne	r10, #:upper16:.LANCHOR3
.LBE11548:
.LBE11552:
	.loc 25 484 0
	bne	.L4014
	b	.L4015
.LVL4272:
.L4010:
.LBB11553:
.LBB11549:
	.loc 25 452 0
	movw	r0, #:lower16:.LC180
	movt	r0, #:upper16:.LC180
	bl	kprintf
.LVL4273:
.L4013:
.LBE11549:
.LBE11553:
	.loc 25 500 0
	add	r5, r5, r9, asl r4
.LVL4274:
	.loc 25 484 0
	cmp	r5, r7
	beq	.L4015
.LVL4275:
.L4014:
	.loc 25 486 0
	rsb	r4, r5, r7
.LVL4276:
.LBB11554:
.LBB11555:
.LBB11556:
.LBB11557:
	.loc 10 87 0
	clz	r4, r4
.LVL4277:
.LBE11557:
.LBE11556:
.LBE11555:
.LBE11554:
	.loc 25 486 0
	rsb	r4, r4, #31
.LVL4278:
.LBB11558:
.LBB11559:
	.loc 25 471 0
	rbit	r3, r5
	clz	r3, r3
	cmp	r4, r3
	movcs	r4, r3
.LVL4279:
.LBE11559:
.LBE11558:
	.loc 25 496 0
	cmp	r4, #3
	bls	.L4021
.LBB11560:
.LBB11550:
	.loc 25 446 0
	ldr	r3, [r10, #20]
	add	r2, sp, #16
	ldmia	r6, {r0, r1}
	rsb	r3, r8, r3
	.loc 25 447 0
	cmp	r3, #166
	stmia	r2, {r0, r1}
.LVL4280:
	bhi	.L4010
	.loc 25 448 0
	ldr	r1, [r10, #16]
.LVL4281:
.LBB11538:
.LBB11539:
	.loc 28 1072 0
	bics	r0, r4, #31
.LBE11539:
.LBE11538:
.LBB11543:
.LBB11544:
	.loc 3 51 0
	add	ip, r5, #536870912
.LBE11544:
.LBE11543:
	.loc 25 448 0
	add	r0, r3, #16
	.loc 25 449 0
	add	r3, r1, r3
.LVL4282:
	.loc 25 448 0
	str	ip, [r1, r0, asl #2]
	.loc 25 449 0
	strb	r4, [r3, #732]
.LVL4283:
.LBB11545:
.LBB11540:
	.loc 28 1072 0
	bne	.L4022
.LVL4284:
	.loc 28 1075 0
	ands	fp, r5, #15
	bne	.L4023
.LVL4285:
	.loc 28 1076 0
	bic	r3, r5, #15
	.loc 28 1081 0
	str	r4, [sp, #28]
	.loc 28 1079 0
	orr	r3, r3, #2
.LVL4286:
.LBE11540:
.LBE11545:
	.loc 25 450 0
	ldmia	r2, {r0, r1}
.LVL4287:
.LBB11546:
.LBB11541:
	.loc 28 1081 0
	str	r3, [sp, #24]
.LBE11541:
.LBE11546:
	.loc 25 450 0
	add	r3, sp, #32
.LVL4288:
	ldmdb	r3, {r2, r3}
	bl	provide_cap
.LVL4289:
.LBE11550:
.LBE11560:
	.loc 25 497 0
	cmp	r0, #0
	bne	.L4013
	.loc 25 503 0
	mov	r0, fp
.LVL4290:
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4291:
.L4015:
	.cfi_restore_state
	.loc 25 502 0
	mov	fp, #1
	.loc 25 503 0
	mov	r0, fp
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4292:
.L4021:
	.cfi_restore_state
.LBB11561:
.LBB11562:
	.loc 25 496 0
	movw	r0, #:lower16:.LC177
	movw	r1, #:lower16:.LC86
	movt	r0, #:upper16:.LC177
	movt	r1, #:upper16:.LC86
	mov	r2, #496
	ldr	r3, .L4024
	bl	_assert_fail
.LVL4293:
.L4023:
.LBE11562:
.LBE11561:
.LBB11563:
.LBB11551:
.LBB11547:
.LBB11542:
	.loc 28 1075 0
	movw	r0, #:lower16:.LC179
.LVL4294:
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC179
	movt	r1, #:upper16:.LC30
	movw	r2, #1075
	ldr	r3, .L4024+4
	bl	_assert_fail
.LVL4295:
.L4022:
	.loc 28 1072 0
	movw	r0, #:lower16:.LC178
.LVL4296:
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC178
	movt	r1, #:upper16:.LC30
	mov	r2, #1072
	ldr	r3, .L4024+4
	bl	_assert_fail
.LVL4297:
.L4025:
	.align	2
.L4024:
	.word	.LANCHOR7-3520
	.word	.LANCHOR4+2956
.LBE11542:
.LBE11547:
.LBE11551:
.LBE11563:
	.cfi_endproc
.LFE508:
	.size	create_untypeds_for_region, .-create_untypeds_for_region
	.align	2
	.global	create_untypeds
	.type	create_untypeds, %function
create_untypeds:
.LFB509:
	.loc 25 507 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
	.loc 25 513 0
	movw	r6, #:lower16:.LANCHOR3
	movt	r6, #:upper16:.LANCHOR3
	.loc 25 507 0
	sub	sp, sp, #32
	.cfi_def_cfa_offset 64
	.loc 25 507 0
	add	ip, sp, #8
	add	r4, sp, #16
	.loc 25 513 0
	ldr	r9, [r6, #20]
.LVL4298:
	.loc 25 507 0
	stmia	r4, {r0, r1}
	stmia	ip, {r2, r3}
	.loc 25 516 0
	str	r9, [sp]
	ldmia	r4, {r0, r1}
	ldmia	ip, {r2, r3}
	bl	create_untypeds_for_region
.LVL4299:
	cmp	r0, #0
	beq	.L4029
	mov	r5, #0
	add	r7, sp, #24
	.loc 25 523 0
	mov	r10, r5
.L4027:
	.loc 25 522 0
	add	r3, r6, r5
	.loc 25 524 0
	str	r9, [sp]
	.loc 25 522 0
	ldmia	r3, {r0, r1}
	movw	r8, #:lower16:.LANCHOR3
	.loc 25 523 0
	str	r10, [r6, r5]
	.loc 25 522 0
	movt	r8, #:upper16:.LANCHOR3
	.loc 25 523 0
	str	r10, [r3, #4]
	add	r5, r5, #8
	.loc 25 522 0
	stmia	r7, {r0, r1}
	.loc 25 524 0
	ldmia	r4, {r0, r1}
	ldmia	r7, {r2, r3}
	bl	create_untypeds_for_region
.LVL4300:
	cmp	r0, #0
	beq	.L4029
	.loc 25 521 0 discriminator 2
	cmp	r5, #16
	bne	.L4027
	.loc 25 530 0
	ldr	r3, [r8, #16]
	.loc 25 533 0
	mov	r0, #1
	.loc 25 529 0
	ldr	r2, [r8, #20]
.LVL4301:
	.loc 25 530 0
	str	r9, [r3, #56]
	str	r2, [r3, #60]
	.loc 25 534 0
	add	sp, sp, #32
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LVL4302:
.L4029:
	.cfi_restore_state
	.loc 25 517 0
	mov	r0, #0
	.loc 25 534 0
	add	sp, sp, #32
	.cfi_def_cfa_offset 32
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	.cfi_endproc
.LFE509:
	.size	create_untypeds, .-create_untypeds
	.text
	.align	2
	.type	print_fault, %function
print_fault:
.LFB521:
	.loc 52 72 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 52 72 0
	add	r3, sp, #8
	stmdb	r3, {r0, r1}
	ldr	r3, [sp]
	ldr	r2, [sp, #4]
.LVL4303:
.LBB11564:
.LBB11565:
	.loc 28 566 0
	and	r0, r3, #7
.LBE11565:
.LBE11564:
	.loc 52 73 0
	cmp	r0, #4
	ldrls	pc, [pc, r0, asl #2]
	b	.L4037
.L4039:
	.word	.L4038
	.word	.L4040
	.word	.L4041
	.word	.L4042
	.word	.L4043
.L4043:
.LVL4304:
	.loc 52 93 0
	movw	r0, #:lower16:.LC189
	mov	r1, r2
	movt	r0, #:upper16:.LC189
	mov	r2, r3, lsr #3
.LVL4305:
	.loc 52 101 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	@ sp needed
	.loc 52 93 0
	b	kprintf
.LVL4306:
.L4038:
	.cfi_restore_state
	.loc 52 75 0
	movw	r0, #:lower16:.LC185
	movt	r0, #:upper16:.LC185
	.loc 52 101 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	@ sp needed
	.loc 52 75 0
	b	kprintf
.LVL4307:
.L4042:
	.cfi_restore_state
	.loc 52 89 0
	movw	r0, #:lower16:.LC188
	mov	r1, r2
	movt	r0, #:upper16:.LC188
	.loc 52 101 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	@ sp needed
	.loc 52 89 0
	b	kprintf
.LVL4308:
.L4040:
	.cfi_restore_state
	.loc 52 78 0
	movw	ip, #:lower16:.LC181
	cmp	r3, #0
	movt	ip, #:upper16:.LC181
	movw	r1, #:lower16:.LC182
	movw	r0, #:lower16:.LC186
	movt	r1, #:upper16:.LC182
	movt	r0, #:upper16:.LC186
	movlt	r1, ip
	.loc 52 101 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	@ sp needed
	.loc 52 78 0
	b	kprintf
.LVL4309:
.L4041:
	.cfi_restore_state
	.loc 52 83 0
	movw	ip, #:lower16:.LC184
	tst	r3, #131072
	movt	ip, #:upper16:.LC184
	movw	r1, #:lower16:.LC183
	movw	r0, #:lower16:.LC187
	movt	r1, #:upper16:.LC183
	mov	r3, r3, lsr #18
.LVL4310:
	moveq	r1, ip
	movt	r0, #:upper16:.LC187
	.loc 52 101 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
.LVL4311:
	@ sp needed
	.loc 52 83 0
	b	kprintf
.LVL4312:
.L4037:
	.loc 52 98 0
	movw	r0, #:lower16:.LC190
	movt	r0, #:upper16:.LC190
	.loc 52 101 0
	add	sp, sp, #8
	@ sp needed
	.loc 52 98 0
	b	kprintf
.LVL4313:
	.cfi_endproc
.LFE521:
	.size	print_fault, .-print_fault
	.align	2
	.global	handleDoubleFault
	.type	handleDoubleFault, %function
handleDoubleFault:
.LFB522:
	.loc 52 107 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4314:
	.loc 52 109 0
	movw	r3, #:lower16:current_fault
	.loc 52 107 0
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 52 109 0
	movt	r3, #:upper16:current_fault
	.loc 52 107 0
	sub	sp, sp, #16
	.cfi_def_cfa_offset 32
	.loc 52 107 0
	mov	r4, r0
	.loc 52 109 0
	add	r6, sp, #8
	.loc 52 107 0
	stmia	sp, {r1, r2}
	.loc 52 109 0
	ldmia	r3, {r0, r1}
.LVL4315:
	stmia	r6, {r0, r1}
	.loc 52 110 0
	movw	r0, #:lower16:.LC191
	movt	r0, #:upper16:.LC191
	bl	kprintf
.LVL4316:
	.loc 52 111 0
	ldmia	r6, {r0, r1}
	bl	print_fault
.LVL4317:
	.loc 52 112 0
	movw	r0, #:lower16:.LC192
	movt	r0, #:upper16:.LC192
	bl	kprintf
.LVL4318:
	.loc 52 113 0
	ldmia	sp, {r0, r1}
	bl	print_fault
.LVL4319:
	.loc 52 114 0
	movw	r0, #:lower16:.LC193
	mov	r1, r4
	add	r2, r4, #140
	movt	r0, #:upper16:.LC193
	bl	kprintf
.LVL4320:
	.loc 52 115 0
	movw	r0, #:lower16:.LC194
	ldr	r1, [r4, #68]
	movt	r0, #:upper16:.LC194
	bl	kprintf
.LVL4321:
.LBB11573:
.LBB11574:
.LBB11575:
.LBB11576:
	.loc 28 169 0
	ldr	r3, [r4, #72]
.LBE11576:
.LBE11575:
	.loc 26 418 0
	mov	r0, r4
.LBB11578:
.LBB11577:
	.loc 28 169 0
	bic	r3, r3, #15
	str	r3, [r4, #72]
.LBE11577:
.LBE11578:
.LBE11574:
.LBE11573:
	.loc 52 119 0
	add	sp, sp, #16
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4322:
.LBB11580:
.LBB11579:
	.loc 26 418 0
	b	scheduleTCB
.LVL4323:
.LBE11579:
.LBE11580:
	.cfi_endproc
.LFE522:
	.size	handleDoubleFault, .-handleDoubleFault
	.align	2
	.global	handleFault
	.type	handleFault, %function
handleFault:
.LFB519:
	.loc 52 20 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4324:
	.loc 52 22 0
	movw	r3, #:lower16:current_fault
	.loc 52 20 0
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 52 22 0
	movt	r3, #:upper16:current_fault
	.loc 52 20 0
	mov	r5, r0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 52 22 0
	ldmia	r3, {r0, r1}
.LVL4325:
	stmia	sp, {r0, r1}
	.loc 52 24 0
	mov	r0, r5
	bl	sendFaultIPC
.LVL4326:
	.loc 52 25 0
	cmp	r0, #0
	beq	.L4051
	.loc 52 26 0
	mov	r0, r5
.LVL4327:
	ldmia	sp, {r1, r2}
	bl	handleDoubleFault
.LVL4328:
.L4051:
	.loc 52 28 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
	.cfi_endproc
.LFE519:
	.size	handleFault, .-handleFault
	.align	2
	.global	handleUserLevelFault
	.type	handleUserLevelFault, %function
handleUserLevelFault:
.LFB280:
	.loc 53 176 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4329:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB11583:
.LBB11584:
	.loc 28 731 0
	ands	r4, r1, #-536870912
	bne	.L4060
.LVL4330:
	.loc 28 732 0
	mov	r1, r1, asl #3
.LVL4331:
.LBE11584:
.LBE11583:
	.loc 53 178 0
	movw	r2, #:lower16:ksCurThread
	.loc 53 177 0
	movw	r3, #:lower16:current_fault
	mov	ip, r0
	.loc 53 178 0
	movt	r2, #:upper16:ksCurThread
.LBB11587:
.LBB11585:
	.loc 28 735 0
	orr	r1, r1, #4
.LVL4332:
.LBE11585:
.LBE11587:
	.loc 53 177 0
	movt	r3, #:upper16:current_fault
	.loc 53 178 0
	ldr	r0, [r2]
.LVL4333:
	.loc 53 177 0
	stmia	r3, {r1, ip}
	.loc 53 178 0
	bl	handleFault
.LVL4334:
	.loc 53 180 0
	bl	schedule
.LVL4335:
	.loc 53 181 0
	bl	activateThread
.LVL4336:
	.loc 53 184 0
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.LVL4337:
.L4060:
.LBB11588:
.LBB11586:
	.loc 28 731 0
	movw	r0, #:lower16:.LC195
.LVL4338:
	movw	r1, #:lower16:.LC30
.LVL4339:
	movt	r0, #:upper16:.LC195
	movt	r1, #:upper16:.LC30
	movw	r2, #731
	ldr	r3, .L4061
	bl	_assert_fail
.LVL4340:
.L4062:
	.align	2
.L4061:
	.word	.LANCHOR7-3492
.LBE11586:
.LBE11588:
	.cfi_endproc
.LFE280:
	.size	handleUserLevelFault, .-handleUserLevelFault
	.align	2
	.global	handleVMFaultEvent
	.type	handleVMFaultEvent, %function
handleVMFaultEvent:
.LFB281:
	.loc 53 188 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4341:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 53 191 0
	movw	r4, #:lower16:ksCurThread
	movt	r4, #:upper16:ksCurThread
	.loc 53 188 0
	mov	r1, r0
	.loc 53 191 0
	ldr	r0, [r4]
.LVL4342:
	bl	handleVMFault
.LVL4343:
	.loc 53 192 0
	cmp	r0, #0
	beq	.L4064
	.loc 53 193 0
	ldr	r0, [r4]
.LVL4344:
	bl	handleFault
.LVL4345:
.L4064:
	.loc 53 196 0
	bl	schedule
.LVL4346:
	.loc 53 197 0
	bl	activateThread
.LVL4347:
	.loc 53 200 0
	mov	r0, #0
	ldmfd	sp!, {r4, pc}
	.cfi_endproc
.LFE281:
	.size	handleVMFaultEvent, .-handleVMFaultEvent
	.align	2
	.type	handleRecv, %function
handleRecv:
.LFB284:
	.loc 53 313 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4348:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 53 317 0
	movw	r4, #:lower16:ksCurThread
	movt	r4, #:upper16:ksCurThread
	.loc 53 313 0
	sub	sp, sp, #16
	.cfi_def_cfa_offset 32
	.loc 53 313 0
	mov	r6, r0
	.loc 53 319 0
	add	r0, sp, #4
.LVL4349:
	.loc 53 317 0
	ldr	r1, [r4]
.LVL4350:
.LBB11589:
.LBB11590:
	.loc 13 27 0
	ldr	r5, [r1]
.LBE11590:
.LBE11589:
	.loc 53 319 0
	mov	r2, r5
	bl	lookupCap
.LVL4351:
	.loc 53 320 0
	ldr	r2, [sp, #4]
	.loc 53 319 0
	ldr	r1, [sp, #12]
.LVL4352:
	ldr	r3, [sp, #8]
.LVL4353:
	.loc 53 320 0
	cmp	r2, #0
	bne	.L4089
.LVL4354:
.LBB11591:
.LBB11592:
	.loc 28 1035 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 28 1037 0
	uxtbeq	r2, r3
	.loc 28 1036 0
	andne	r2, r3, #15
.LBE11592:
.LBE11591:
	.loc 53 327 0
	cmp	r2, #4
	beq	.L4074
	cmp	r2, #6
	bne	.L4090
.LVL4355:
.LBB11593:
.LBB11594:
.LBB11595:
	.loc 28 1407 0
	and	r2, r3, #15
	cmp	r2, #6
	bne	.L4091
.LVL4356:
	.loc 28 1410 0
	bic	r3, r3, #15
.LVL4357:
.LBE11595:
.LBE11594:
	.loc 53 345 0
	tst	r1, #2
.LBB11597:
.LBB11598:
	.loc 28 181 0
	ldr	r3, [r3, #12]
	ldr	r0, [r4]
	bic	r3, r3, #15
.LVL4358:
.LBE11598:
.LBE11597:
	.loc 53 345 0
	beq	.L4081
	.loc 53 345 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L4092
.L4083:
	.loc 53 353 0 is_stmt 1
	add	r2, sp, #16
	mov	r3, r6
.LVL4359:
	ldmdb	r2, {r1, r2}
.LVL4360:
	bl	receiveSignal
.LVL4361:
.LBE11593:
	.loc 53 362 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL4362:
.L4090:
	.cfi_restore_state
	.loc 53 359 0
	ldr	r0, [r4]
	.loc 53 357 0
	movw	r2, #:lower16:current_lookup_fault
	.loc 53 358 0
	movw	r3, #:lower16:current_fault
.LVL4363:
.L4087:
	.loc 53 357 0
	movt	r2, #:upper16:current_lookup_fault
	mov	lr, #1
	mov	ip, #0
	.loc 53 358 0
	movt	r3, #:upper16:current_fault
	mov	r1, #-2147483647
.LVL4364:
	.loc 53 357 0
	str	lr, [r2]
	str	ip, [r2, #4]
.LVL4365:
	.loc 53 358 0
	stmia	r3, {r1, r5}
.LVL4366:
.L4086:
	.loc 53 362 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4367:
	.loc 53 359 0
	b	handleFault
.LVL4368:
.L4074:
	.cfi_restore_state
.LBB11600:
.LBB11601:
	.loc 28 1225 0
	and	r3, r3, #15
.LVL4369:
	cmp	r3, #4
	bne	.L4093
.LVL4370:
	.loc 28 1228 0
	ubfx	r1, r1, #1, #1
.LVL4371:
.LBE11601:
.LBE11600:
	.loc 53 329 0
	cmp	r1, #0
	beq	.L4094
.LVL4372:
.LBB11603:
.LBB11604:
	.loc 31 221 0
	ldr	r0, [r4]
	bic	r0, r0, #508
	bic	r0, r0, #3
	.loc 31 223 0
	add	r0, r0, #48
	bl	cteDeleteOne
.LVL4373:
.LBE11604:
.LBE11603:
	.loc 53 337 0
	add	r2, sp, #16
	ldr	r0, [r4]
	mov	r3, r6
	ldmdb	r2, {r1, r2}
	bl	receiveIPC
.LVL4374:
	.loc 53 362 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL4375:
.L4092:
	.cfi_restore_state
.LBB11605:
	.loc 53 345 0 discriminator 2
	cmp	r0, r3
	beq	.L4083
.L4081:
.LVL4376:
	.loc 53 347 0
	movw	r2, #:lower16:current_lookup_fault
	.loc 53 348 0
	movw	r3, #:lower16:current_fault
.LVL4377:
	b	.L4087
.LVL4378:
.L4089:
.LBE11605:
	.loc 53 322 0
	movw	r3, #:lower16:current_fault
.LVL4379:
	mov	r2, #-2147483647
	movt	r3, #:upper16:current_fault
	.loc 53 323 0
	ldr	r0, [r4]
	.loc 53 322 0
	stmia	r3, {r2, r5}
	.loc 53 362 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, lr}
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 14
	.cfi_def_cfa_offset 0
.LVL4380:
	.loc 53 359 0
	b	handleFault
.LVL4381:
.L4094:
	.cfi_restore_state
	.loc 53 330 0
	movw	r2, #:lower16:current_lookup_fault
	.loc 53 331 0
	movw	r3, #:lower16:current_fault
	.loc 53 330 0
	movt	r2, #:upper16:current_lookup_fault
	.loc 53 331 0
	movt	r3, #:upper16:current_fault
	.loc 53 330 0
	mov	lr, #1
	.loc 53 331 0
	mov	ip, #-2147483647
	.loc 53 332 0
	ldr	r0, [r4]
	.loc 53 330 0
	str	r1, [r2, #4]
.LVL4382:
	str	lr, [r2]
	.loc 53 331 0
	str	r5, [r3, #4]
	str	ip, [r3]
	b	.L4086
.LVL4383:
.L4091:
.LBB11606:
.LBB11599:
.LBB11596:
	bl	cap_notification_cap_get_capNtfnPtr.isra.68.part.69
.LVL4384:
.L4093:
.LBE11596:
.LBE11599:
.LBE11606:
.LBB11607:
.LBB11602:
	bl	cap_endpoint_cap_get_capCanReceive.part.67
.LVL4385:
.LBE11602:
.LBE11607:
	.cfi_endproc
.LFE284:
	.size	handleRecv, .-handleRecv
	.align	2
	.global	invokeCNodeSaveCaller
	.type	invokeCNodeSaveCaller, %function
invokeCNodeSaveCaller:
.LFB565:
	.loc 27 358 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4386:
	.loc 27 362 0
	movw	r2, #:lower16:ksCurThread
	.loc 27 358 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 27 362 0
	movt	r2, #:upper16:ksCurThread
	.loc 27 358 0
	mov	r3, r0
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	.loc 27 362 0
	ldr	r4, [r2]
	.loc 27 363 0
	add	lr, sp, #8
	.loc 27 362 0
	bic	r2, r4, #508
	bic	r2, r2, #3
	add	r2, r2, #48
.LVL4387:
	.loc 27 363 0
	ldmia	r2, {r0, r1}
.LVL4388:
	stmia	lr, {r0, r1}
.LVL4389:
.LBB11608:
.LBB11609:
	.loc 28 1035 0
	and	r1, r0, #14
	cmp	r1, #14
	.loc 28 1037 0
	uxtbeq	r1, r0
	.loc 28 1036 0
	andne	r1, r0, #15
.LBE11609:
.LBE11608:
	.loc 27 365 0
	cmp	r1, #0
	beq	.L4099
	cmp	r1, #8
	bne	.L4106
.LVL4390:
.LBB11610:
.LBB11611:
	.loc 28 1471 0
	and	r1, r0, #15
	cmp	r1, #8
	bne	.L4107
.LVL4391:
.LBE11611:
.LBE11610:
	.loc 27 371 0
	tst	r0, #16
	beq	.L4108
.LVL4392:
.L4101:
	.loc 27 382 0
	mov	r0, #0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldmfd	sp!, {r4, pc}
.LVL4393:
.L4106:
	.cfi_restore_state
	.loc 27 377 0
	movw	r0, #:lower16:.LC197
	movw	r1, #:lower16:.LC102
	movt	r0, #:upper16:.LC197
	movt	r1, #:upper16:.LC102
	movw	r2, #377
.LVL4394:
	ldr	r3, .L4109
.LVL4395:
	bl	_fail
.LVL4396:
.L4099:
	.loc 27 367 0
	add	r3, r4, #140
.LVL4397:
	movw	r0, #:lower16:.LC3
	str	r3, [sp]
.LVL4398:
	movw	r2, #367
.LVL4399:
	ldr	ip, [r4, #68]
	mov	r3, r4
	ldr	r1, .L4109
	movt	r0, #:upper16:.LC3
	str	ip, [sp, #4]
	bl	kprintf
.LVL4400:
	movw	r0, #:lower16:.LC196
	movt	r0, #:upper16:.LC196
	bl	kprintf
.LVL4401:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4402:
	.loc 27 382 0
	mov	r0, #0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldmfd	sp!, {r4, pc}
.LVL4403:
.L4108:
	.cfi_restore_state
	.loc 27 372 0
	str	r0, [sp, #8]
	ldmia	lr, {r0, r1}
	bl	cteMove
.LVL4404:
	b	.L4101
.LVL4405:
.L4107:
.LBB11613:
.LBB11612:
	bl	cap_reply_cap_get_capReplyMaster.isra.63.part.64
.LVL4406:
.L4110:
	.align	2
.L4109:
	.word	.LANCHOR7-3464
.LBE11612:
.LBE11613:
	.cfi_endproc
.LFE565:
	.size	invokeCNodeSaveCaller, .-invokeCNodeSaveCaller
	.align	2
	.global	decodeIRQControlInvocation
	.type	decodeIRQControlInvocation, %function
decodeIRQControlInvocation:
.LFB598:
	.loc 30 29 0
	.cfi_startproc
	@ args = 20, pretend = 8, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4407:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 30 30 0
	cmp	r0, #22
	.loc 30 29 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 14, -12
	sub	sp, sp, #36
	.cfi_def_cfa_offset 64
	.loc 30 29 0
	str	r3, [sp, #60]
.LVL4408:
	.loc 30 30 0
	beq	.L4126
	.loc 30 74 0
	cmp	r0, #23
	beq	.L4125
	.loc 30 77 0
	movw	r3, #:lower16:ksCurThread
.LVL4409:
	movw	r0, #:lower16:.LC3
.LVL4410:
	movt	r3, #:upper16:ksCurThread
	mov	r2, #77
.LVL4411:
	ldr	ip, [r3]
.LVL4412:
	movt	r0, #:upper16:.LC3
	ldr	r1, .L4128
.LVL4413:
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL4414:
	str	ip, [sp, #4]
	bl	kprintf
.LVL4415:
	movw	r0, #:lower16:.LC198
	movt	r0, #:upper16:.LC198
	bl	kprintf
.LVL4416:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4417:
.L4125:
	.loc 30 78 0
	mov	r2, #3
	movw	r3, #:lower16:current_syscall_error
	.loc 30 79 0
	mov	r0, r2
	.loc 30 78 0
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
.L4123:
	.loc 30 81 0
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL4418:
.L4126:
	.cfi_restore_state
.LBB11644:
	.loc 30 38 0 discriminator 1
	cmp	r3, #0
	cmpne	r1, #2
	mov	r4, r2
	movls	r2, #1
.LVL4419:
	movhi	r2, #0
	bls	.L4127
.LVL4420:
.LBB11645:
.LBB11646:
	.loc 43 30 0
	movw	r5, #:lower16:ksCurThread
.LBE11646:
.LBE11645:
	.loc 30 47 0
	ldmia	r3, {r0, r1}
.LVL4421:
.LBB11649:
.LBB11647:
	.loc 43 30 0
	movt	r5, #:upper16:ksCurThread
.LBE11647:
.LBE11649:
	.loc 30 47 0
	add	ip, sp, #8
.LBB11650:
.LBB11648:
	.loc 43 30 0
	ldr	r3, [r5]
.LVL4422:
.LBE11648:
.LBE11650:
	.loc 30 47 0
	stmia	ip, {r0, r1}
.LBB11651:
.LBB11652:
.LBB11653:
.LBB11654:
	.loc 13 27 0
	add	r6, r3, #8
	ldmia	r6, {r6, r7, lr}
.LBE11654:
.LBE11653:
.LBE11652:
.LBE11651:
	.loc 30 49 0
	cmp	r6, #92
	bls	.L4115
	.loc 30 50 0
	movw	r3, #:lower16:current_syscall_error
.LVL4423:
	mov	ip, #4
	movt	r3, #:upper16:current_syscall_error
	.loc 30 52 0
	mov	r1, #92
	.loc 30 51 0
	str	r2, [r3, #8]
	.loc 30 53 0
	mov	r0, #3
	.loc 30 50 0
	str	ip, [r3, #24]
	.loc 30 52 0
	str	r1, [r3, #12]
	.loc 30 53 0
	b	.L4123
.LVL4424:
.L4127:
	.loc 30 39 0
	movw	r3, #:lower16:current_syscall_error
.LVL4425:
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	.loc 30 40 0
	mov	r0, #3
.LVL4426:
	.loc 30 39 0
	str	r2, [r3, #24]
.LBE11644:
	.loc 30 81 0
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 14
	.cfi_def_cfa_offset 8
.LVL4427:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL4428:
.L4115:
	.cfi_restore_state
.LBB11669:
.LBB11655:
.LBB11656:
	.loc 30 259 0
	movw	r3, #:lower16:intStateIRQTable
.LVL4429:
	movt	r3, #:upper16:intStateIRQTable
.LBE11656:
.LBE11655:
	.loc 30 56 0
	ldr	r3, [r3, r6, asl #2]
	cmp	r3, #0
	beq	.L4116
	.loc 30 57 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #9
	movt	r3, #:upper16:current_syscall_error
	.loc 30 58 0
	mov	r0, #3
	.loc 30 57 0
	str	r2, [r3, #24]
	.loc 30 58 0
	b	.L4123
.L4116:
	ldmia	ip, {r0, r1}
	add	r2, sp, #24
.LBB11657:
.LBB11658:
	.loc 48 129 0
	stmia	sp, {r7, lr}
	stmia	r2, {r0, r1}
	mov	r1, r3
	add	r0, sp, #16
	ldmia	r2, {r2, r3}
	bl	lookupSlotForCNodeOp
.LVL4430:
	ldr	r0, [sp, #16]
.LVL4431:
.LBE11658:
.LBE11657:
	.loc 30 62 0
	cmp	r0, #0
	bne	.L4123
	.loc 30 65 0
	ldr	r7, [sp, #20]
.LVL4432:
	ldr	r3, [r7]
.LVL4433:
.LBB11659:
.LBB11660:
.LBB11661:
.LBB11662:
	.loc 28 1035 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 28 1037 0
	uxtbeq	r3, r3
.LVL4434:
	.loc 28 1036 0
	andne	r3, r3, #15
.LBE11662:
.LBE11661:
	.loc 27 894 0
	cmp	r3, #0
	beq	.L4119
	.loc 27 895 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #8
	movt	r3, #:upper16:current_syscall_error
	.loc 27 896 0
	mov	r0, #3
.LVL4435:
	.loc 27 895 0
	str	r2, [r3, #24]
	b	.L4123
.LVL4436:
.L4119:
.LBE11660:
.LBE11659:
	.loc 30 72 0
	ldr	r2, [r5]
.LVL4437:
.LBB11663:
.LBB11664:
.LBB11665:
.LBB11666:
	.loc 28 169 0
	ldr	r3, [r2, #72]
.LBE11666:
.LBE11665:
	.loc 26 418 0
	mov	r0, r2
.LVL4438:
.LBB11668:
.LBB11667:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #2
	str	r3, [r2, #72]
.LVL4439:
.LBE11667:
.LBE11668:
	.loc 26 418 0
	bl	scheduleTCB
.LVL4440:
.LBE11664:
.LBE11663:
	.loc 30 73 0
	uxth	r0, r6
	mov	r1, r7
	mov	r2, r4
.LBE11669:
	.loc 30 81 0
	add	sp, sp, #36
	.cfi_def_cfa_offset 28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 8
.LVL4441:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
.LBB11670:
	.loc 30 73 0
	b	invokeIRQControl
.LVL4442:
.L4129:
	.align	2
.L4128:
	.word	.LANCHOR7-3440
.LBE11670:
	.cfi_endproc
.LFE598:
	.size	decodeIRQControlInvocation, .-decodeIRQControlInvocation
	.align	2
	.global	decodeIRQHandlerInvocation
	.type	decodeIRQHandlerInvocation, %function
decodeIRQHandlerInvocation:
.LFB600:
	.loc 30 95 0
	.cfi_startproc
	@ args = 20, pretend = 8, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4443:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 30 96 0
	sub	r0, r0, #24
.LVL4444:
	.loc 30 95 0
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 14, -12
	sub	sp, sp, #28
	.cfi_def_cfa_offset 48
	.loc 30 95 0
	mov	r4, r2
	str	r3, [sp, #44]
.LVL4445:
	.loc 30 96 0
	cmp	r0, #3
	ldrls	pc, [pc, r0, asl #2]
	b	.L4131
.L4133:
	.word	.L4132
	.word	.L4134
	.word	.L4135
	.word	.L4136
.L4136:
.LBB11711:
	.loc 30 137 0
	cmp	r1, #1
	mov	r5, r1
	.loc 30 138 0
	movw	r3, #:lower16:ksCurThread
.LVL4446:
	.loc 30 137 0
	bls	.L4162
	.loc 30 145 0
	movt	r3, #:upper16:ksCurThread
	ldr	r2, [r3]
.LVL4447:
.LBB11712:
.LBB11713:
.LBB11714:
.LBB11715:
	.loc 28 169 0
	ldr	r3, [r2, #72]
.LBE11715:
.LBE11714:
	.loc 26 418 0
	mov	r0, r2
.LVL4448:
.LBB11717:
.LBB11716:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #2
	str	r3, [r2, #72]
.LBE11716:
.LBE11717:
	.loc 26 418 0
	bl	scheduleTCB
.LVL4449:
.LBE11713:
.LBE11712:
	.loc 30 147 0
	mov	r0, #0
.LBE11711:
	.loc 30 155 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 14
	.cfi_def_cfa_offset 8
.LVL4450:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL4451:
.L4135:
	.cfi_restore_state
	.loc 30 131 0
	movw	r3, #:lower16:ksCurThread
.LVL4452:
	movt	r3, #:upper16:ksCurThread
	ldr	r2, [r3]
.LVL4453:
.LBB11718:
.LBB11719:
.LBB11720:
.LBB11721:
	.loc 28 169 0
	ldr	r3, [r2, #72]
.LBE11721:
.LBE11720:
	.loc 26 418 0
	mov	r0, r2
.LBB11723:
.LBB11722:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #2
	str	r3, [r2, #72]
.LBE11722:
.LBE11723:
	.loc 26 418 0
	bl	scheduleTCB
.LVL4454:
.LBE11719:
.LBE11718:
.LBB11724:
.LBB11725:
	.loc 30 184 0
	movw	r3, #:lower16:intStateIRQNode
	movt	r3, #:upper16:intStateIRQNode
	ldr	r0, [r3]
	.loc 30 186 0
	add	r0, r0, r4, asl #4
	bl	cteDeleteOne
.LVL4455:
.LBE11725:
.LBE11724:
	.loc 30 133 0
	mov	r0, #0
.LVL4456:
.L4157:
	.loc 30 155 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL4457:
.L4134:
	.cfi_restore_state
.LBB11726:
	.loc 30 106 0
	cmp	r3, #0
	beq	.L4160
	.loc 30 110 0
	ldmia	r3, {r0, r1}
.LVL4458:
	add	r5, sp, #16
	mov	r2, r0
.LVL4459:
	stmia	r5, {r0, r1}
.LBB11727:
.LBB11728:
	.loc 28 1035 0
	and	r0, r0, #14
.LVL4460:
	cmp	r0, #14
	beq	.L4140
	.loc 28 1036 0
	and	ip, r2, #15
.LBE11728:
.LBE11727:
	.loc 30 113 0
	cmp	ip, #6
	beq	.L4163
.L4151:
	.loc 30 116 0
	movw	r3, #:lower16:ksCurThread
.LVL4461:
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:ksCurThread
	mov	r2, #116
.LVL4462:
	ldr	ip, [r3]
.LVL4463:
	movt	r0, #:upper16:.LC3
	ldr	r1, .L4166
.LVL4464:
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
.LVL4465:
	ldr	ip, [ip, #68]
.LVL4466:
	str	ip, [sp, #4]
	bl	kprintf
.LVL4467:
	movw	r0, #:lower16:.LC199
	movt	r0, #:upper16:.LC199
	bl	kprintf
.LVL4468:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4469:
.L4148:
	.loc 30 120 0
	movw	r3, #:lower16:current_syscall_error
	mov	r1, #2
	movt	r3, #:upper16:current_syscall_error
	.loc 30 121 0
	mov	r2, #0
	.loc 30 122 0
	mov	r0, #3
	.loc 30 120 0
	str	r1, [r3, #24]
	.loc 30 121 0
	str	r2, [r3, #4]
.LBE11726:
	.loc 30 155 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 14
	.cfi_def_cfa_offset 8
.LVL4470:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL4471:
.L4132:
	.cfi_restore_state
	.loc 30 98 0
	movw	r3, #:lower16:ksCurThread
.LVL4472:
	movt	r3, #:upper16:ksCurThread
	ldr	r2, [r3]
.LVL4473:
.LBB11743:
.LBB11744:
.LBB11745:
.LBB11746:
	.loc 28 169 0
	ldr	r3, [r2, #72]
.LBE11746:
.LBE11745:
	.loc 26 418 0
	mov	r0, r2
.LBB11748:
.LBB11747:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #2
	str	r3, [r2, #72]
.LBE11747:
.LBE11748:
	.loc 26 418 0
	bl	scheduleTCB
.LVL4474:
.LBE11744:
.LBE11743:
.LBB11749:
.LBB11750:
	.loc 30 160 0
	mov	r1, r4
	mov	r0, #0
	bl	maskInterrupt
.LVL4475:
.LBE11750:
.LBE11749:
	.loc 30 100 0
	mov	r0, #0
	.loc 30 155 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 14
	.cfi_def_cfa_offset 8
.LVL4476:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL4477:
.L4131:
	.loc 30 151 0
	movw	r3, #:lower16:ksCurThread
.LVL4478:
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:ksCurThread
	mov	r2, #151
.LVL4479:
	ldr	ip, [r3]
.LVL4480:
	movt	r0, #:upper16:.LC3
	ldr	r1, .L4166
.LVL4481:
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL4482:
	str	ip, [sp, #4]
	bl	kprintf
.LVL4483:
	movw	r0, #:lower16:.LC202
	movt	r0, #:upper16:.LC202
	bl	kprintf
.LVL4484:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4485:
	.loc 30 152 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	.loc 30 153 0
	mov	r0, r2
	.loc 30 152 0
	str	r2, [r3, #24]
	.loc 30 155 0
	add	sp, sp, #28
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	add	sp, sp, #8
	bx	lr
.LVL4486:
.L4162:
	.cfi_restore_state
.LBB11751:
	.loc 30 138 0
	movt	r3, #:upper16:ksCurThread
	movw	r0, #:lower16:.LC3
	ldr	ip, [r3]
.LVL4487:
	mov	r2, #138
.LVL4488:
	ldr	r1, .L4166
.LVL4489:
	movt	r0, #:upper16:.LC3
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL4490:
	str	ip, [sp, #4]
	bl	kprintf
.LVL4491:
	movw	r0, #:lower16:.LC201
	mov	r1, r5
	movt	r0, #:upper16:.LC201
	bl	kprintf
.LVL4492:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4493:
.L4160:
	.loc 30 139 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	.loc 30 140 0
	mov	r0, #3
	.loc 30 139 0
	str	r2, [r3, #24]
.LBE11751:
	.loc 30 155 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 14
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL4494:
.L4140:
	.cfi_restore_state
.LBB11752:
.LBB11730:
.LBB11729:
	.loc 28 1037 0
	uxtb	ip, r2
.LBE11729:
.LBE11730:
	.loc 30 113 0
	cmp	ip, #6
	bne	.L4151
	and	ip, r2, #15
	str	r2, [sp, #16]
.LVL4495:
.LBB11731:
.LBB11732:
	.loc 28 1381 0
	cmp	ip, #6
	bne	.L4164
.L4144:
.LVL4496:
.LBE11732:
.LBE11731:
	.loc 30 113 0
	tst	r1, #1
	bne	.L4145
.LVL4497:
.LBB11734:
.LBB11735:
	.loc 28 1035 0
	cmp	r0, #14
	beq	.L4165
.L4147:
.LBE11735:
.LBE11734:
	.loc 30 118 0
	movw	r3, #:lower16:ksCurThread
.LVL4498:
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:ksCurThread
	mov	r2, #118
.LVL4499:
	ldr	ip, [r3]
.LVL4500:
	movt	r0, #:upper16:.LC3
	ldr	r1, .L4166
.LVL4501:
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
.LVL4502:
	ldr	ip, [ip, #68]
.LVL4503:
	str	ip, [sp, #4]
	bl	kprintf
.LVL4504:
	movw	r0, #:lower16:.LC200
	movt	r0, #:upper16:.LC200
	bl	kprintf
.LVL4505:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4506:
	b	.L4148
.LVL4507:
.L4165:
	uxtb	ip, r2
	.loc 30 115 0
	cmp	ip, #6
	beq	.L4147
	b	.L4151
.LVL4508:
.L4163:
	str	r2, [sp, #16]
.LVL4509:
	b	.L4144
.LVL4510:
.L4145:
	.loc 30 125 0
	movw	r2, #:lower16:ksCurThread
.LVL4511:
	str	r1, [sp, #12]
	movt	r2, #:upper16:ksCurThread
	str	r3, [sp, #8]
	ldr	ip, [r2]
.LVL4512:
.LBB11736:
.LBB11737:
.LBB11738:
.LBB11739:
	.loc 28 169 0
	ldr	r2, [ip, #72]
.LBE11739:
.LBE11738:
	.loc 26 418 0
	mov	r0, ip
.LBB11741:
.LBB11740:
	.loc 28 169 0
	bic	r2, r2, #15
	.loc 28 170 0
	orr	r2, r2, #2
	str	r2, [ip, #72]
.LVL4513:
.LBE11740:
.LBE11741:
	.loc 26 418 0
	bl	scheduleTCB
.LVL4514:
.LBE11737:
.LBE11736:
	.loc 30 126 0
	ldr	r1, [sp, #12]
	mov	r0, r4
	ldr	r3, [sp, #8]
	str	r1, [sp, #20]
.LVL4515:
	ldmia	r5, {r1, r2}
	bl	invokeIRQHandler_SetIRQHandler
.LVL4516:
	.loc 30 127 0
	mov	r0, #0
	b	.L4157
.LVL4517:
.L4164:
.LBB11742:
.LBB11733:
	bl	cap_notification_cap_get_capNtfnCanSend.part.218
.LVL4518:
.L4167:
	.align	2
.L4166:
	.word	.LANCHOR7-3412
.LBE11733:
.LBE11742:
.LBE11752:
	.cfi_endproc
.LFE600:
	.size	decodeIRQHandlerInvocation, .-decodeIRQHandlerInvocation
	.align	2
	.global	decodeCopyRegisters
	.type	decodeCopyRegisters, %function
decodeCopyRegisters:
.LFB651:
	.loc 31 352 0
	.cfi_startproc
	@ args = 20, pretend = 8, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4519:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 31 358 0
	cmp	r3, #0
	cmpne	r2, #0
	.loc 31 352 0
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 14, -12
	sub	sp, sp, #20
	.cfi_def_cfa_offset 40
	.loc 31 352 0
	add	r2, sp, #16
.LVL4520:
	str	r3, [sp, #36]
	stmdb	r2, {r0, r1}
	.loc 31 358 0
	beq	.L4177
.LVL4521:
	.loc 31 368 0
	ldr	r1, [r3]
.LBB11773:
.LBB11774:
	.loc 43 30 0
	movw	r3, #:lower16:ksCurThread
.LVL4522:
	movt	r3, #:upper16:ksCurThread
	ldr	r2, [r3]
.LVL4523:
.LBE11774:
.LBE11773:
.LBB11778:
.LBB11779:
	.loc 28 1035 0
	and	r3, r1, #14
	cmp	r3, #14
	.loc 28 1037 0
	uxtbeq	r3, r1
	.loc 28 1036 0
	andne	r3, r1, #15
.LBE11779:
.LBE11778:
.LBB11780:
.LBB11777:
.LBB11775:
.LBB11776:
	.loc 13 27 0
	ldr	r5, [r2, #8]
.LVL4524:
.LBE11776:
.LBE11775:
.LBE11777:
.LBE11780:
	.loc 31 370 0
	cmp	r3, #12
	beq	.L4178
.LVL4525:
	.loc 31 373 0
	add	r3, r2, #140
	movw	r0, #:lower16:.LC3
	str	r3, [sp]
.LVL4526:
	movt	r0, #:upper16:.LC3
	ldr	ip, [r2, #68]
	mov	r3, r2
	ldr	r1, .L4179
	movw	r2, #373
.LVL4527:
	str	ip, [sp, #4]
	bl	kprintf
.LVL4528:
	movw	r0, #:lower16:.LC204
	movt	r0, #:upper16:.LC204
	bl	kprintf
.LVL4529:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4530:
	.loc 31 374 0
	movw	r3, #:lower16:current_syscall_error
	mov	r1, #2
	movt	r3, #:upper16:current_syscall_error
	.loc 31 375 0
	mov	r2, #1
	.loc 31 374 0
	str	r1, [r3, #24]
	.loc 31 375 0
	str	r2, [r3, #4]
	.loc 31 376 0
	b	.L4170
.LVL4531:
.L4177:
	.loc 31 359 0
	movw	r3, #:lower16:ksCurThread
.LVL4532:
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:ksCurThread
	movw	r2, #359
	ldr	ip, [r3]
.LVL4533:
	movt	r0, #:upper16:.LC3
	ldr	r1, .L4179
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL4534:
	str	ip, [sp, #4]
	bl	kprintf
.LVL4535:
	movw	r0, #:lower16:.LC203
	movt	r0, #:upper16:.LC203
	bl	kprintf
.LVL4536:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4537:
	.loc 31 360 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
.LVL4538:
.L4170:
	.loc 31 388 0
	mov	r0, #3
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL4539:
.L4178:
	.cfi_restore_state
.LBB11781:
.LBB11782:
	.loc 28 1608 0
	and	r3, r1, #15
	cmp	r3, #12
	bne	.L4175
.LVL4540:
.LBE11782:
.LBE11781:
.LBB11785:
.LBB11786:
.LBB11787:
.LBB11788:
	.loc 28 169 0
	ldr	r3, [r2, #72]
.LBE11788:
.LBE11787:
	.loc 26 418 0
	mov	r0, r2
.LBE11786:
.LBE11785:
.LBB11792:
.LBB11783:
	.loc 28 1611 0
	bic	r4, r1, #15
.LVL4541:
.LBE11783:
.LBE11792:
.LBB11793:
.LBB11791:
.LBB11790:
.LBB11789:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #2
	str	r3, [r2, #72]
.LVL4542:
.LBE11789:
.LBE11790:
	.loc 26 418 0
	bl	scheduleTCB
.LVL4543:
	ldr	r0, [sp, #8]
.LVL4544:
.LBE11791:
.LBE11793:
.LBB11794:
.LBB11795:
	.loc 28 1608 0
	and	r3, r0, #15
	cmp	r3, #12
	bne	.L4175
.LVL4545:
.LBE11795:
.LBE11794:
	.loc 31 380 0
	and	r2, r5, #8
	and	ip, r5, #4
	mov	r3, #0
	str	r2, [sp, #44]
	str	r3, [sp, #48]
.LVL4546:
	bic	r0, r0, #15
.LVL4547:
	mov	r1, r4
	str	ip, [sp, #40]
	and	r2, r5, #1
	and	r3, r5, #2
	.loc 31 388 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 8
.LVL4548:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	.loc 31 380 0
	b	invokeTCB_CopyRegisters
.LVL4549:
.L4175:
	.cfi_restore_state
.LBB11796:
.LBB11784:
	bl	cap_thread_cap_get_capTCBPtr.isra.59.part.60
.LVL4550:
.L4180:
	.align	2
.L4179:
	.word	.LANCHOR7-3384
.LBE11784:
.LBE11796:
	.cfi_endproc
.LFE651:
	.size	decodeCopyRegisters, .-decodeCopyRegisters
	.align	2
	.global	decodeReadRegisters
	.type	decodeReadRegisters, %function
decodeReadRegisters:
.LFB652:
	.loc 31 397 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4551:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 31 401 0
	cmp	r2, #1
	.loc 31 397 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 40
	.loc 31 397 0
	add	r2, sp, #16
.LVL4552:
	stmdb	r2, {r0, r1}
	ldr	r0, [sp, #8]
.LVL4553:
	.loc 31 401 0
	bls	.L4188
.LVL4554:
.LBB11822:
.LBB11823:
	.loc 43 30 0
	movw	r2, #:lower16:ksCurThread
	movt	r2, #:upper16:ksCurThread
	ldr	r2, [r2]
.LVL4555:
.LBE11823:
.LBE11822:
.LBB11827:
.LBB11828:
.LBB11829:
.LBB11830:
	.loc 13 27 0
	ldr	r5, [r2, #12]
.LBE11830:
.LBE11829:
.LBE11828:
.LBE11827:
.LBB11831:
.LBB11826:
.LBB11824:
.LBB11825:
	ldr	r7, [r2, #8]
.LVL4556:
.LBE11825:
.LBE11824:
.LBE11826:
.LBE11831:
	.loc 31 410 0
	sub	ip, r5, #1
	cmp	ip, #16
	bhi	.L4189
	mov	r6, r3
.LVL4557:
.LBB11832:
.LBB11833:
	.loc 28 1608 0
	and	r3, r0, #15
.LVL4558:
	cmp	r3, #12
	bne	.L4190
	.loc 28 1611 0
	bic	r4, r0, #15
.LVL4559:
.LBE11833:
.LBE11832:
	.loc 31 423 0
	cmp	r4, r2
	beq	.L4191
.LVL4560:
.LBB11835:
.LBB11836:
.LBB11837:
.LBB11838:
	.loc 28 169 0
	ldr	ip, [r2, #72]
.LBE11838:
.LBE11837:
	.loc 26 418 0
	mov	r0, r2
.LBB11840:
.LBB11839:
	.loc 28 169 0
	bic	ip, ip, #15
	.loc 28 170 0
	orr	ip, ip, #2
	str	ip, [r2, #72]
.LBE11839:
.LBE11840:
	.loc 26 418 0
	bl	scheduleTCB
.LVL4561:
.LBE11836:
.LBE11835:
	.loc 31 430 0
	str	r6, [sp, #40]
.LVL4562:
	mov	r0, r4
	and	r1, r7, #1
	mov	r2, r5
	mov	r3, #0
	.loc 31 434 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4563:
	.loc 31 430 0
	b	invokeTCB_ReadRegisters
.LVL4564:
.L4189:
	.cfi_restore_state
	.loc 31 411 0
	add	r3, r2, #140
.LVL4565:
	movw	r0, #:lower16:.LC3
	str	r3, [sp]
	movt	r0, #:upper16:.LC3
	ldr	ip, [r2, #68]
	mov	r3, r2
	ldr	r1, .L4192
	mov	r2, #412
.LVL4566:
	str	ip, [sp, #4]
	bl	kprintf
.LVL4567:
	movw	r0, #:lower16:.LC206
	mov	r1, r5
	movt	r0, #:upper16:.LC206
	bl	kprintf
.LVL4568:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4569:
	.loc 31 413 0
	movw	r3, #:lower16:current_syscall_error
	mov	r0, #4
	movt	r3, #:upper16:current_syscall_error
	.loc 31 414 0
	mov	r1, #1
	.loc 31 415 0
	mov	r2, #17
	.loc 31 413 0
	str	r0, [r3, #24]
	.loc 31 414 0
	str	r1, [r3, #8]
	.loc 31 434 0
	mov	r0, #3
	.loc 31 415 0
	str	r2, [r3, #12]
	.loc 31 434 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL4570:
.L4188:
	.cfi_restore_state
	.loc 31 402 0
	movw	r3, #:lower16:ksCurThread
.LVL4571:
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:ksCurThread
	movw	r2, #402
	ldr	ip, [r3]
.LVL4572:
	movt	r0, #:upper16:.LC3
	ldr	r1, .L4192
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL4573:
	str	ip, [sp, #4]
	bl	kprintf
.LVL4574:
	movw	r0, #:lower16:.LC205
	movt	r0, #:upper16:.LC205
	bl	kprintf
.LVL4575:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4576:
	.loc 31 403 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	.loc 31 434 0
	mov	r0, #3
	.loc 31 403 0
	str	r2, [r3, #24]
	.loc 31 434 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL4577:
.L4191:
	.cfi_restore_state
	.loc 31 424 0
	add	r3, r4, #140
	movw	r0, #:lower16:.LC3
	str	r3, [sp]
	mov	r2, #424
.LVL4578:
	ldr	ip, [r4, #68]
	mov	r3, r4
	ldr	r1, .L4192
	movt	r0, #:upper16:.LC3
	str	ip, [sp, #4]
	bl	kprintf
.LVL4579:
	movw	r0, #:lower16:.LC207
	movt	r0, #:upper16:.LC207
	bl	kprintf
.LVL4580:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4581:
	.loc 31 425 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	.loc 31 434 0
	mov	r0, #3
	.loc 31 425 0
	str	r2, [r3, #24]
	.loc 31 434 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL4582:
.L4190:
	.cfi_restore_state
.LBB11841:
.LBB11834:
	bl	cap_thread_cap_get_capTCBPtr.isra.59.part.60
.LVL4583:
.L4193:
	.align	2
.L4192:
	.word	.LANCHOR7-3364
.LBE11834:
.LBE11841:
	.cfi_endproc
.LFE652:
	.size	decodeReadRegisters, .-decodeReadRegisters
	.align	2
	.global	decodeWriteRegisters
	.type	decodeWriteRegisters, %function
decodeWriteRegisters:
.LFB653:
	.loc 31 442 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4584:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 31 447 0
	cmp	r2, #1
	.loc 31 442 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 40
	.loc 31 442 0
	add	ip, sp, #16
	stmdb	ip, {r0, r1}
	.loc 31 447 0
	bls	.L4202
.LVL4585:
.LBB11865:
.LBB11866:
	.loc 43 30 0
	movw	r1, #:lower16:ksCurThread
.LBE11866:
.LBE11865:
	.loc 31 456 0
	sub	r4, r2, #2
.LBB11871:
.LBB11869:
	.loc 43 30 0
	movt	r1, #:upper16:ksCurThread
	ldr	ip, [r1]
.LVL4586:
.LBE11869:
.LBE11871:
.LBB11872:
.LBB11873:
.LBB11874:
.LBB11875:
	.loc 13 27 0
	ldr	r5, [ip, #12]
.LBE11875:
.LBE11874:
.LBE11873:
.LBE11872:
.LBB11876:
.LBB11870:
.LBB11867:
.LBB11868:
	ldr	r7, [ip, #8]
.LVL4587:
.LBE11868:
.LBE11867:
.LBE11870:
.LBE11876:
	.loc 31 456 0
	cmp	r4, r5
	bcc	.L4203
	ldr	r4, [sp, #8]
	mov	r6, r3
.LVL4588:
.LBB11877:
.LBB11878:
	.loc 28 1608 0
	and	r3, r4, #15
.LVL4589:
	cmp	r3, #12
	bne	.L4204
	.loc 28 1611 0
	bic	r4, r4, #15
.LVL4590:
.LBE11878:
.LBE11877:
	.loc 31 466 0
	cmp	r4, ip
	beq	.L4205
.LVL4591:
.LBB11880:
.LBB11881:
.LBB11882:
.LBB11883:
	.loc 28 169 0
	ldr	r2, [ip, #72]
.LVL4592:
.LBE11883:
.LBE11882:
	.loc 26 418 0
	mov	r0, ip
.LBB11885:
.LBB11884:
	.loc 28 169 0
	bic	r2, r2, #15
	.loc 28 170 0
	orr	r2, r2, #2
	str	r2, [ip, #72]
.LBE11884:
.LBE11885:
	.loc 26 418 0
	bl	scheduleTCB
.LVL4593:
.LBE11881:
.LBE11880:
	.loc 31 473 0
	str	r6, [sp]
	mov	r0, r4
	and	r1, r7, #1
	mov	r2, r5
	mov	r3, #0
	bl	invokeTCB_WriteRegisters
.LVL4594:
	.loc 31 476 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL4595:
.L4203:
	.cfi_restore_state
	.loc 31 457 0
	add	r3, ip, #140
.LVL4596:
	movw	r0, #:lower16:.LC3
	str	r3, [sp]
	mov	r3, ip
	ldr	ip, [ip, #68]
.LVL4597:
	movw	r2, #458
.LVL4598:
	ldr	r1, .L4206
	movt	r0, #:upper16:.LC3
	str	ip, [sp, #4]
	bl	kprintf
.LVL4599:
	movw	r0, #:lower16:.LC209
	mov	r1, r4
	mov	r2, r5
	movt	r0, #:upper16:.LC209
	bl	kprintf
.LVL4600:
.L4201:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4601:
	.loc 31 459 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	.loc 31 460 0
	mov	r0, #3
	.loc 31 459 0
	str	r2, [r3, #24]
	.loc 31 476 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL4602:
.L4202:
	.cfi_restore_state
	.loc 31 448 0
	movw	r3, #:lower16:ksCurThread
.LVL4603:
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:ksCurThread
	mov	r2, #448
.LVL4604:
	ldr	ip, [r3]
.LVL4605:
	movt	r0, #:upper16:.LC3
	ldr	r1, .L4206
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL4606:
	str	ip, [sp, #4]
	bl	kprintf
.LVL4607:
	movw	r0, #:lower16:.LC208
	movt	r0, #:upper16:.LC208
	bl	kprintf
.LVL4608:
	b	.L4201
.LVL4609:
.L4205:
	.loc 31 467 0
	add	r3, r4, #140
	movw	r0, #:lower16:.LC3
	str	r3, [sp]
	movw	r2, #467
.LVL4610:
	ldr	ip, [r4, #68]
.LVL4611:
	mov	r3, r4
	ldr	r1, .L4206
	movt	r0, #:upper16:.LC3
	str	ip, [sp, #4]
	bl	kprintf
.LVL4612:
	movw	r0, #:lower16:.LC210
	movt	r0, #:upper16:.LC210
	bl	kprintf
.LVL4613:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4614:
	.loc 31 468 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	.loc 31 469 0
	mov	r0, r2
	.loc 31 468 0
	str	r2, [r3, #24]
	.loc 31 476 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL4615:
.L4204:
	.cfi_restore_state
.LBB11886:
.LBB11879:
	bl	cap_thread_cap_get_capTCBPtr.isra.59.part.60
.LVL4616:
.L4207:
	.align	2
.L4206:
	.word	.LANCHOR7-3344
.LBE11879:
.LBE11886:
	.cfi_endproc
.LFE653:
	.size	decodeWriteRegisters, .-decodeWriteRegisters
	.align	2
	.global	decodeTCBConfigure
	.type	decodeTCBConfigure, %function
decodeTCBConfigure:
.LFB654:
	.loc 31 484 0
	.cfi_startproc
	@ args = 16, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4617:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	sub	sp, sp, #132
	.cfi_def_cfa_offset 168
	ldr	r5, [sp, #168]
	.loc 31 484 0
	mov	r9, r3
	add	ip, sp, #80
	ldr	r6, [sp, #172]
	ldr	r4, [sp, #176]
	stmia	ip, {r0, r1}
	cmp	r5, #0
	cmpne	r6, #0
	moveq	r3, #1
.LVL4618:
	movne	r3, #0
	cmp	r4, #0
	orreq	r3, r3, #1
.LVL4619:
	.loc 31 494 0
	cmp	r2, #4
	movhi	r2, r3
	orrls	r2, r3, #1
.LVL4620:
	cmp	r2, #0
	bne	.L4237
.LVL4621:
.LBB11935:
.LBB11936:
	.loc 43 30 0
	movw	r8, #:lower16:ksCurThread
.LBE11936:
.LBE11935:
.LBB11944:
.LBB11945:
	.loc 43 33 0
	ldr	r3, [sp, #180]
.LBE11945:
.LBE11944:
.LBB11952:
.LBB11941:
	.loc 43 30 0
	movt	r8, #:upper16:ksCurThread
	ldr	r2, [r8]
.LVL4622:
.LBE11941:
.LBE11952:
.LBB11953:
.LBB11946:
	.loc 43 33 0
	cmp	r3, #0
.LBE11946:
.LBE11953:
.LBB11954:
.LBB11942:
.LBB11937:
.LBB11938:
	.loc 13 27 0
	ldr	r3, [r2, #8]
.LBE11938:
.LBE11937:
.LBE11942:
.LBE11954:
.LBB11955:
.LBB11956:
.LBB11957:
.LBB11958:
	ldr	r10, [r2, #12]
.LBE11958:
.LBE11957:
.LBE11956:
.LBE11955:
.LBB11959:
.LBB11943:
.LBB11940:
.LBB11939:
	str	r3, [sp, #68]
.LVL4623:
.LBE11939:
.LBE11940:
.LBE11943:
.LBE11959:
.LBB11960:
.LBB11961:
.LBB11962:
.LBB11963:
	ldr	r3, [r2, #16]
	str	r3, [sp, #60]
.LVL4624:
.LBE11963:
.LBE11962:
.LBE11961:
.LBE11960:
.LBB11964:
.LBB11965:
.LBB11966:
.LBB11967:
	ldr	r3, [r2, #20]
	str	r3, [sp, #64]
.LVL4625:
.LBE11967:
.LBE11966:
.LBE11965:
.LBE11964:
.LBB11968:
.LBB11947:
	.loc 43 33 0
	beq	.L4238
	mov	r7, r0
.LBE11947:
.LBE11968:
	.loc 31 507 0
	ldmia	r5, {r0, r1}
	.loc 31 515 0
	ldr	r3, [r2, #108]
	.loc 31 507 0
	add	ip, sp, #100
	.loc 31 513 0
	uxtb	r10, r10
.LBB11969:
.LBB11948:
	.loc 43 34 0
	ldr	lr, [sp, #180]
.LBE11948:
.LBE11969:
	.loc 31 507 0
	stmia	ip, {r0, r1}
	.loc 31 511 0
	add	fp, sp, #92
	.loc 31 507 0
	str	r0, [sp, #56]
	.loc 31 515 0
	cmp	r10, r3
	.loc 31 509 0
	ldmia	r6, {r0, r1}
	add	r3, sp, #108
.LBB11970:
.LBB11949:
	.loc 43 34 0
	ldr	lr, [lr, #20]
.LBE11949:
.LBE11970:
	.loc 31 509 0
	stmia	r3, {r0, r1}
	.loc 31 511 0
	ldmia	r4, {r0, r1}
.LBB11971:
.LBB11950:
	.loc 43 34 0
	str	lr, [sp, #52]
.LVL4626:
.LBE11950:
.LBE11971:
	.loc 31 511 0
	stmia	fp, {r0, r1}
	.loc 31 515 0
	bhi	.L4239
	.loc 31 522 0
	ldr	r3, [sp, #52]
	cmp	r3, #0
	.loc 31 523 0
	ldreq	r4, [sp, #52]
.LVL4627:
	.loc 31 522 0
	bne	.L4240
.LVL4628:
.L4213:
.LBB11972:
.LBB11973:
	.loc 28 1608 0
	and	r3, r7, #15
	cmp	r3, #12
	bne	.L4241
.LVL4629:
.LBE11973:
.LBE11972:
	.loc 31 539 0
	bic	r3, r7, #508
	str	ip, [sp, #76]
	bic	r3, r3, #3
	.loc 31 538 0
	mov	r0, r3
	str	r3, [sp, #72]
	bl	slotCapLongRunningDelete
.LVL4630:
	cmp	r0, #0
	bne	.L4215
.LVL4631:
	.loc 31 540 0
	ldr	r3, [sp, #72]
	add	r0, r3, #16
	bl	slotCapLongRunningDelete
.LVL4632:
	.loc 31 539 0
	subs	r1, r0, #0
	ldr	ip, [sp, #76]
	beq	.L4216
.L4215:
	.loc 31 542 0
	ldr	ip, [r8]
.LVL4633:
	movw	r0, #:lower16:.LC3
	movt	r0, #:upper16:.LC3
	ldr	r1, .L4242
	movw	r2, #542
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL4634:
	str	ip, [sp, #4]
	bl	kprintf
.LVL4635:
	movw	r0, #:lower16:.LC213
	movt	r0, #:upper16:.LC213
.LVL4636:
.L4236:
	.loc 31 574 0
	bl	kprintf
.LVL4637:
	b	.L4235
.LVL4638:
.L4237:
	.loc 31 495 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:ksCurThread
	movw	r2, #495
	ldr	ip, [r3]
.LVL4639:
	movt	r0, #:upper16:.LC3
	ldr	r1, .L4242
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL4640:
	str	ip, [sp, #4]
	bl	kprintf
.LVL4641:
	movw	r0, #:lower16:.LC211
	movt	r0, #:upper16:.LC211
	bl	kprintf
.LVL4642:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4643:
	.loc 31 496 0
	movw	r3, #:lower16:current_syscall_error
	.loc 31 497 0
	mov	r0, #3
	.loc 31 496 0
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
.LVL4644:
.L4210:
	.loc 31 587 0
	add	sp, sp, #132
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4645:
.L4239:
	.cfi_restore_state
	.loc 31 516 0
	add	r3, r2, #140
	movw	r0, #:lower16:.LC3
	str	r3, [sp]
.LVL4646:
	movt	r0, #:upper16:.LC3
	ldr	ip, [r2, #68]
.LVL4647:
	mov	r3, r2
	ldr	r1, .L4242
	movw	r2, #517
.LVL4648:
	str	ip, [sp, #4]
	bl	kprintf
.LVL4649:
	ldr	r3, [r8]
	movw	r0, #:lower16:.LC212
	mov	r1, r10
	movt	r0, #:upper16:.LC212
	ldr	r2, [r3, #108]
	bl	kprintf
.LVL4650:
.L4235:
	.loc 31 574 0
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4651:
	.loc 31 575 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	.loc 31 576 0
	mov	r0, r2
	.loc 31 575 0
	str	r2, [r3, #24]
	.loc 31 587 0
	add	sp, sp, #132
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4652:
.L4216:
	.cfi_restore_state
	.loc 31 547 0
	ldr	r3, [sp, #60]
	cmp	r3, #0
	beq	.L4217
.LVL4653:
	.loc 31 548 0
	ldr	r0, [sp, #56]
	mov	r2, r3
	ldr	lr, [sp, #104]
	str	ip, [sp, #60]
	mov	r3, r0
	str	r0, [sp, #100]
	str	lr, [sp]
	mov	r0, ip
	bl	updateCapData
.LVL4654:
	ldr	ip, [sp, #60]
	ldr	r3, [sp, #100]
	str	r3, [sp, #56]
.LVL4655:
.L4217:
	.loc 31 551 0
	ldr	r3, [sp, #56]
	add	r0, sp, #116
	mov	r1, r5
	str	ip, [sp, #56]
.LVL4656:
	str	r3, [sp, #100]
	ldmia	ip, {r2, r3}
.LVL4657:
	bl	deriveCap
.LVL4658:
	ldr	r0, [sp, #116]
.LVL4659:
	ldr	r3, [sp, #120]
	.loc 31 552 0
	cmp	r0, #0
	.loc 31 551 0
	mov	r2, r3
	str	r3, [sp, #60]
.LVL4660:
	.loc 31 552 0
	bne	.L4210
.LBB11975:
.LBB11976:
	.loc 28 1035 0
	and	r3, r3, #14
.LBE11976:
.LBE11975:
	.loc 31 555 0
	add	r1, sp, #120
.LBB11980:
.LBB11977:
	.loc 28 1035 0
	cmp	r3, #14
.LBE11977:
.LBE11980:
	.loc 31 555 0
	ldmia	r1, {r0, r1}
.LVL4661:
.LBB11981:
.LBB11978:
	.loc 28 1037 0
	ldreqb	r3, [sp, #60]	@ zero_extendqisi2
	.loc 28 1036 0
	movne	r3, r2
.LBE11978:
.LBE11981:
	.loc 31 555 0
	ldr	ip, [sp, #56]
.LBB11982:
.LBB11979:
	.loc 28 1036 0
	andne	r3, r3, #15
.LBE11979:
.LBE11982:
	.loc 31 557 0
	cmp	r3, #10
	.loc 31 555 0
	stmia	ip, {r0, r1}
.LVL4662:
	.loc 31 557 0
	beq	.L4220
	.loc 31 558 0
	ldr	ip, [r8]
.LVL4663:
	movw	r0, #:lower16:.LC3
	movt	r0, #:upper16:.LC3
	ldr	r1, .L4242
	movw	r2, #558
.LVL4664:
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL4665:
	str	ip, [sp, #4]
	bl	kprintf
.LVL4666:
	movw	r0, #:lower16:.LC214
	movt	r0, #:upper16:.LC214
	b	.L4236
.LVL4667:
.L4238:
.LBB11983:
.LBB11951:
	bl	getSyscallArg.part.145
.LVL4668:
.L4240:
.LBE11951:
.LBE11983:
.LBB11984:
	.loc 31 527 0
	add	r0, sp, #116
	mov	r1, r4
	ldmia	fp, {r2, r3}
.LVL4669:
	str	ip, [sp, #72]
	bl	deriveCap
.LVL4670:
	ldr	r0, [sp, #116]
.LVL4671:
	.loc 31 528 0
	cmp	r0, #0
	bne	.L4210
	.loc 31 531 0
	add	r3, sp, #128
	ldmdb	r3, {r0, r1}
.LVL4672:
	stmia	fp, {r0, r1}
	.loc 31 532 0
	ldr	r0, [sp, #52]
	ldmia	fp, {r1, r2}
	bl	checkValidIPCBuffer
.LVL4673:
	.loc 31 533 0
	cmp	r0, #0
	ldr	ip, [sp, #72]
	beq	.L4213
	b	.L4210
.LVL4674:
.L4220:
.LBE11984:
	.loc 31 563 0
	ldr	r3, [sp, #64]
	cmp	r3, #0
	beq	.L4221
	.loc 31 564 0
	ldr	lr, [sp, #112]
	mov	r2, r3
	add	r0, sp, #108
.LVL4675:
	ldr	r3, [sp, #108]
	mov	r1, #0
	str	ip, [sp, #56]
	str	lr, [sp]
	bl	updateCapData
.LVL4676:
	ldr	ip, [sp, #56]
.L4221:
	.loc 31 567 0
	add	r3, sp, #108
	add	r0, sp, #116
.LVL4677:
	mov	r1, r6
	ldmia	r3, {r2, r3}
	str	ip, [sp, #56]
	bl	deriveCap
.LVL4678:
	ldr	r0, [sp, #116]
.LVL4679:
	.loc 31 568 0
	cmp	r0, #0
	bne	.L4210
	.loc 31 571 0
	add	r3, sp, #120
.LVL4680:
	ldmia	r3, {r0, r1}
.LVL4681:
	add	r3, sp, #108
.LVL4682:
	stmia	r3, {r0, r1}
	.loc 31 573 0
	bl	isValidVTableRoot
.LVL4683:
	cmp	r0, #0
	ldr	ip, [sp, #56]
	bne	.L4222
	.loc 31 574 0
	ldr	ip, [r8]
.LVL4684:
	movw	r0, #:lower16:.LC3
	movt	r0, #:upper16:.LC3
	ldr	r1, .L4242
	movw	r2, #574
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL4685:
	str	ip, [sp, #4]
	bl	kprintf
.LVL4686:
	movw	r0, #:lower16:.LC215
	movt	r0, #:upper16:.LC215
	b	.L4236
.LVL4687:
.L4222:
	.loc 31 579 0
	ldr	r2, [r8]
.LVL4688:
	.loc 31 580 0
	add	r8, sp, #28
	str	ip, [sp, #56]
.LBB11985:
.LBB11986:
.LBB11987:
.LBB11988:
	.loc 28 169 0
	ldr	r3, [r2, #72]
.LBE11988:
.LBE11987:
	.loc 26 418 0
	mov	r0, r2
.LBB11990:
.LBB11989:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #2
	str	r3, [r2, #72]
.LBE11989:
.LBE11990:
	.loc 26 418 0
	bl	scheduleTCB
.LVL4689:
.LBE11986:
.LBE11985:
	.loc 31 580 0
	ldr	r3, [sp, #60]
	add	lr, sp, #12
	ldr	ip, [sp, #56]
	ldr	r2, [sp, #68]
	str	r3, [sp, #100]
	mov	r3, r10
	ldmia	ip, {r0, r1}
	str	r5, [sp, #8]
	mov	r5, #7
.LVL4690:
	stmia	sp, {r0, r1}
	add	r1, sp, #108
.LVL4691:
	ldmia	r1, {r0, r1}
.LVL4692:
	stmia	lr, {r0, r1}
	ldmia	fp, {r0, r1}
	ldr	ip, [sp, #52]
	str	r6, [sp, #20]
	str	ip, [sp, #24]
	stmia	r8, {r0, r1}
	bic	r0, r7, #15
	str	r4, [sp, #36]
	mov	r1, r9
	str	r5, [sp, #40]
	bl	invokeTCB_ThreadControl
.LVL4693:
	b	.L4210
.LVL4694:
.L4241:
.LBB11991:
.LBB11974:
	bl	cap_thread_cap_get_capTCBPtr.isra.59.part.60
.LVL4695:
.L4243:
	.align	2
.L4242:
	.word	.LANCHOR7-3320
.LBE11974:
.LBE11991:
	.cfi_endproc
.LFE654:
	.size	decodeTCBConfigure, .-decodeTCBConfigure
	.align	2
	.global	decodeSetPriority
	.type	decodeSetPriority, %function
decodeSetPriority:
.LFB655:
	.loc 31 591 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4696:
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 31 594 0
	cmp	r2, #0
	.loc 31 591 0
	sub	sp, sp, #64
	.cfi_def_cfa_offset 88
	.loc 31 591 0
	add	r3, sp, #48
.LVL4697:
	stmia	r3, {r0, r1}
	.loc 31 594 0
	beq	.L4250
.LVL4698:
.LBB12010:
.LBB12011:
	.loc 43 30 0
	movw	r4, #:lower16:ksCurThread
	movt	r4, #:upper16:ksCurThread
	ldr	r2, [r4]
.LVL4699:
.LBE12011:
.LBE12010:
	.loc 31 603 0
	ldrb	r5, [r2, #8]	@ zero_extendqisi2
.LVL4700:
	.loc 31 605 0
	ldr	r3, [r2, #108]
	cmp	r5, r3
	bls	.L4247
.LVL4701:
	.loc 31 606 0
	add	r3, r2, #140
	movw	r0, #:lower16:.LC3
	str	r3, [sp]
	movt	r0, #:upper16:.LC3
	ldr	ip, [r2, #68]
	mov	r3, r2
	ldr	r1, .L4252
	movw	r2, #607
.LVL4702:
	str	ip, [sp, #4]
	bl	kprintf
.LVL4703:
	ldr	r3, [r4]
	movw	r0, #:lower16:.LC217
	mov	r1, r5
	movt	r0, #:upper16:.LC217
	ldr	r2, [r3, #108]
	bl	kprintf
.LVL4704:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4705:
	.loc 31 608 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	.loc 31 609 0
	mov	r0, r2
	.loc 31 608 0
	str	r2, [r3, #24]
	.loc 31 620 0
	add	sp, sp, #64
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL4706:
.L4250:
	.cfi_restore_state
	.loc 31 595 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:ksCurThread
	movw	r2, #595
.LVL4707:
	ldr	ip, [r3]
.LVL4708:
	movt	r0, #:upper16:.LC3
	ldr	r1, .L4252
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL4709:
	str	ip, [sp, #4]
	bl	kprintf
.LVL4710:
	movw	r0, #:lower16:.LC216
	movt	r0, #:upper16:.LC216
	bl	kprintf
.LVL4711:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4712:
	.loc 31 596 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	.loc 31 597 0
	mov	r0, #3
	.loc 31 596 0
	str	r2, [r3, #24]
	.loc 31 620 0
	add	sp, sp, #64
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL4713:
.L4247:
	.cfi_restore_state
.LBB12012:
.LBB12013:
.LBB12014:
.LBB12015:
	.loc 28 169 0
	ldr	r3, [r2, #72]
.LBE12015:
.LBE12014:
	.loc 26 418 0
	mov	r0, r2
.LBB12017:
.LBB12016:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #2
	str	r3, [r2, #72]
.LBE12016:
.LBE12017:
	.loc 26 418 0
	bl	scheduleTCB
.LVL4714:
	ldr	r4, [sp, #48]
.LVL4715:
.LBE12013:
.LBE12012:
.LBB12018:
.LBB12019:
	.loc 28 1608 0
	and	r3, r4, #15
	cmp	r3, #12
	bne	.L4251
.LVL4716:
.LBE12019:
.LBE12018:
.LBB12021:
.LBB12022:
	.loc 28 1058 0
	mov	ip, #0
.LBE12022:
.LBE12021:
	.loc 31 613 0
	add	lr, sp, #56
.LBB12025:
.LBB12023:
	.loc 28 1058 0
	str	ip, [sp, #56]
.LBE12023:
.LBE12025:
	.loc 31 613 0
	add	r7, sp, #12
.LBB12026:
.LBB12024:
	.loc 28 1058 0
	str	ip, [sp, #60]
.LBE12024:
.LBE12026:
	.loc 31 613 0
	add	r6, sp, #28
	ldmia	lr, {r0, r1}
	mov	r8, #1
	str	ip, [sp, #8]
	mov	r3, r5
	mov	r2, ip
	stmia	sp, {r0, r1}
	stmia	r7, {r0, r1}
	ldmia	lr, {r0, r1}
	str	ip, [sp, #20]
	str	ip, [sp, #24]
	stmia	r6, {r0, r1}
	bic	r0, r4, #15
	str	ip, [sp, #36]
	mov	r1, ip
	str	r8, [sp, #40]
	bl	invokeTCB_ThreadControl
.LVL4717:
	.loc 31 620 0
	add	sp, sp, #64
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL4718:
.L4251:
	.cfi_restore_state
.LBB12027:
.LBB12020:
	bl	cap_thread_cap_get_capTCBPtr.isra.59.part.60
.LVL4719:
.L4253:
	.align	2
.L4252:
	.word	.LANCHOR7-3300
.LBE12020:
.LBE12027:
	.cfi_endproc
.LFE655:
	.size	decodeSetPriority, .-decodeSetPriority
	.align	2
	.global	decodeSetIPCBuffer
	.type	decodeSetIPCBuffer, %function
decodeSetIPCBuffer:
.LFB656:
	.loc 31 625 0
	.cfi_startproc
	@ args = 16, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4720:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	sub	sp, sp, #84
	.cfi_def_cfa_offset 120
	ldr	r4, [sp, #120]
.LVL4721:
	.loc 31 625 0
	add	ip, sp, #48
	stmia	ip, {r0, r1}
	.loc 31 630 0
	cmp	r4, #0
	cmpne	r2, #0
	beq	.L4264
.LBB12044:
.LBB12045:
	.loc 43 30 0
	movw	r6, #:lower16:ksCurThread
	mov	r7, r3
.LVL4722:
	movt	r6, #:upper16:ksCurThread
.LBE12045:
.LBE12044:
	.loc 31 638 0
	ldmia	r4, {r0, r1}
.LBB12050:
.LBB12048:
	.loc 43 30 0
	ldr	r3, [r6]
.LVL4723:
.LBE12048:
.LBE12050:
	.loc 31 638 0
	add	r5, sp, #60
	stmia	r5, {r0, r1}
.LBB12051:
.LBB12049:
.LBB12046:
.LBB12047:
	.loc 13 27 0
	ldr	r8, [r3, #8]
.LVL4724:
.LBE12047:
.LBE12046:
.LBE12049:
.LBE12051:
	.loc 31 640 0
	cmp	r8, #0
	bne	.L4265
	.loc 31 641 0
	mov	r4, r8
.LVL4725:
.L4257:
.LBB12052:
.LBB12053:
.LBB12054:
.LBB12055:
	.loc 28 169 0
	ldr	r2, [r3, #72]
.LBE12055:
.LBE12054:
	.loc 26 418 0
	mov	r0, r3
.LBB12057:
.LBB12056:
	.loc 28 169 0
	bic	r2, r2, #15
	.loc 28 170 0
	orr	r2, r2, #2
	str	r2, [r3, #72]
.LBE12056:
.LBE12057:
	.loc 26 418 0
	bl	scheduleTCB
.LVL4726:
	ldr	r6, [sp, #48]
.LVL4727:
.LBE12053:
.LBE12052:
.LBB12058:
.LBB12059:
	.loc 28 1608 0
	and	r3, r6, #15
	cmp	r3, #12
	bne	.L4266
.LVL4728:
.LBE12059:
.LBE12058:
.LBB12061:
.LBB12062:
	.loc 28 1058 0
	mov	ip, #0
.LBE12062:
.LBE12061:
	.loc 31 658 0
	add	lr, sp, #68
.LBB12065:
.LBB12063:
	.loc 28 1058 0
	str	ip, [sp, #68]
.LBE12063:
.LBE12065:
	.loc 31 658 0
	add	r10, sp, #12
.LBB12066:
.LBB12064:
	.loc 28 1058 0
	str	ip, [sp, #72]
.LBE12064:
.LBE12066:
	.loc 31 658 0
	add	r9, sp, #28
	ldmia	lr, {r0, r1}
	mov	fp, #2
	str	ip, [sp, #8]
	mov	r2, ip
	mov	r3, ip
	stmia	sp, {r0, r1}
	stmia	r10, {r0, r1}
	ldmia	r5, {r0, r1}
	str	ip, [sp, #20]
	str	r8, [sp, #24]
	stmia	r9, {r0, r1}
	bic	r0, r6, #15
	str	r4, [sp, #36]
	mov	r1, r7
	str	fp, [sp, #40]
	bl	invokeTCB_ThreadControl
.LVL4729:
	.loc 31 666 0
	add	sp, sp, #84
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4730:
.L4264:
	.cfi_restore_state
	.loc 31 631 0
	movw	r3, #:lower16:ksCurThread
.LVL4731:
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:ksCurThread
	movw	r2, #631
.LVL4732:
	ldr	ip, [r3]
.LVL4733:
	movt	r0, #:upper16:.LC3
	ldr	r1, .L4267
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL4734:
	str	ip, [sp, #4]
	bl	kprintf
.LVL4735:
	movw	r0, #:lower16:.LC218
	movt	r0, #:upper16:.LC218
	bl	kprintf
.LVL4736:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4737:
	.loc 31 632 0
	movw	r3, #:lower16:current_syscall_error
	.loc 31 633 0
	mov	r0, #3
	.loc 31 632 0
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
.LVL4738:
.L4256:
	.loc 31 666 0
	add	sp, sp, #84
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4739:
.L4265:
	.cfi_restore_state
.LBB12067:
	.loc 31 646 0
	add	r0, sp, #68
	mov	r1, r4
	ldmia	r5, {r2, r3}
.LVL4740:
	bl	deriveCap
.LVL4741:
	ldr	r0, [sp, #68]
.LVL4742:
	.loc 31 647 0
	cmp	r0, #0
	bne	.L4256
	.loc 31 650 0
	add	r3, sp, #80
	ldmdb	r3, {r0, r1}
.LVL4743:
	stmia	r5, {r0, r1}
	.loc 31 651 0
	mov	r0, r8
	ldmia	r5, {r1, r2}
	bl	checkValidIPCBuffer
.LVL4744:
	.loc 31 652 0
	cmp	r0, #0
	bne	.L4256
	ldr	r3, [r6]
	b	.L4257
.LVL4745:
.L4266:
.LBE12067:
.LBB12068:
.LBB12060:
	bl	cap_thread_cap_get_capTCBPtr.isra.59.part.60
.LVL4746:
.L4268:
	.align	2
.L4267:
	.word	.LANCHOR7-3280
.LBE12060:
.LBE12068:
	.cfi_endproc
.LFE656:
	.size	decodeSetIPCBuffer, .-decodeSetIPCBuffer
	.align	2
	.global	decodeSetSpace
	.type	decodeSetSpace, %function
decodeSetSpace:
.LFB657:
	.loc 31 671 0
	.cfi_startproc
	@ args = 16, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4747:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	sub	sp, sp, #124
	.cfi_def_cfa_offset 160
	ldr	r4, [sp, #160]
	.loc 31 671 0
	mov	r8, r3
	add	ip, sp, #72
	ldr	r5, [sp, #164]
	stmia	ip, {r0, r1}
.LVL4748:
	cmp	r4, #0
	cmpne	r5, #0
	moveq	r3, #1
.LVL4749:
	movne	r3, #0
	.loc 31 679 0
	cmp	r2, #2
	movhi	r2, r3
	orrls	r2, r3, #1
.LVL4750:
	cmp	r2, #0
	bne	.L4291
.LBB12107:
.LBB12108:
	.loc 43 30 0
	movw	r9, #:lower16:ksCurThread
	mov	r6, r0
.LVL4751:
	movt	r9, #:upper16:ksCurThread
.LBE12108:
.LBE12107:
.LBB12116:
.LBB12117:
	.loc 28 1608 0
	and	r3, r6, #15
.LBE12117:
.LBE12116:
.LBB12121:
.LBB12113:
	.loc 43 30 0
	ldr	r10, [r9]
.LVL4752:
.LBE12113:
.LBE12121:
.LBB12122:
.LBB12118:
	.loc 28 1608 0
	cmp	r3, #12
.LBE12118:
.LBE12122:
	.loc 31 690 0
	ldmia	r4, {r0, r1}
	add	r7, sp, #84
	.loc 31 692 0
	add	fp, sp, #92
.LBB12123:
.LBB12114:
.LBB12109:
.LBB12110:
	.loc 13 27 0
	ldr	r3, [r10, #8]
.LBE12110:
.LBE12109:
.LBE12114:
.LBE12123:
	.loc 31 690 0
	stmia	r7, {r0, r1}
	str	r0, [sp, #56]
.LBB12124:
.LBB12115:
.LBB12112:
.LBB12111:
	.loc 13 27 0
	str	r3, [sp, #68]
.LVL4753:
.LBE12111:
.LBE12112:
.LBE12115:
.LBE12124:
.LBB12125:
.LBB12126:
.LBB12127:
.LBB12128:
	ldr	r3, [r10, #12]
.LBE12128:
.LBE12127:
.LBE12126:
.LBE12125:
	.loc 31 692 0
	ldmia	r5, {r0, r1}
.LBB12132:
.LBB12131:
.LBB12130:
.LBB12129:
	.loc 13 27 0
	str	r3, [sp, #60]
.LVL4754:
.LBE12129:
.LBE12130:
.LBE12131:
.LBE12132:
.LBB12133:
.LBB12134:
.LBB12135:
.LBB12136:
	ldr	r3, [r10, #16]
.LBE12136:
.LBE12135:
.LBE12134:
.LBE12133:
	.loc 31 692 0
	stmia	fp, {r0, r1}
.LBB12140:
.LBB12139:
.LBB12138:
.LBB12137:
	.loc 13 27 0
	str	r3, [sp, #64]
.LVL4755:
.LBE12137:
.LBE12138:
.LBE12139:
.LBE12140:
.LBB12141:
.LBB12119:
	.loc 28 1608 0
	bne	.L4292
.LVL4756:
.LBE12119:
.LBE12141:
	.loc 31 695 0
	bic	r3, r6, #508
	bic	r3, r3, #3
	.loc 31 694 0
	mov	r0, r3
	str	r3, [sp, #52]
	bl	slotCapLongRunningDelete
.LVL4757:
	cmp	r0, #0
	bne	.L4273
.LVL4758:
	.loc 31 696 0
	ldr	r3, [sp, #52]
	add	r0, r3, #16
	bl	slotCapLongRunningDelete
.LVL4759:
	.loc 31 695 0
	subs	r1, r0, #0
	bne	.L4273
	.loc 31 703 0
	ldr	r3, [sp, #60]
	cmp	r3, #0
	beq	.L4275
	.loc 31 704 0
	ldr	r0, [sp, #56]
	mov	r2, r3
	ldr	lr, [sp, #88]
	mov	r3, r0
	str	r0, [sp, #84]
.LVL4760:
	str	lr, [sp]
	mov	r0, r7
.LVL4761:
	bl	updateCapData
.LVL4762:
	ldr	r3, [sp, #84]
	str	r3, [sp, #56]
.LVL4763:
.L4275:
	.loc 31 707 0
	ldr	r3, [sp, #56]
	add	r0, sp, #108
	mov	r1, r4
	str	r3, [sp, #84]
	ldmia	r7, {r2, r3}
	bl	deriveCap
.LVL4764:
	ldr	r0, [sp, #108]
.LVL4765:
	ldr	r10, [sp, #112]
.LVL4766:
	.loc 31 708 0
	cmp	r0, #0
	bne	.L4271
.LBB12142:
.LBB12143:
	.loc 28 1035 0
	and	r3, r10, #14
.LBE12143:
.LBE12142:
	.loc 31 711 0
	add	ip, sp, #112
.LBB12146:
.LBB12144:
	.loc 28 1035 0
	cmp	r3, #14
.LBE12144:
.LBE12146:
	.loc 31 711 0
	ldmia	ip, {r0, r1}
.LVL4767:
.LBB12147:
.LBB12145:
	.loc 28 1037 0
	uxtbeq	r3, r10
	.loc 28 1036 0
	andne	r3, r10, #15
.LBE12145:
.LBE12147:
	.loc 31 713 0
	cmp	r3, #10
	.loc 31 711 0
	stmia	r7, {r0, r1}
.LVL4768:
	.loc 31 713 0
	beq	.L4278
	.loc 31 714 0
	ldr	ip, [r9]
.LVL4769:
	movw	r0, #:lower16:.LC3
	movt	r0, #:upper16:.LC3
	ldr	r1, .L4293
	movw	r2, #714
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL4770:
	str	ip, [sp, #4]
	bl	kprintf
.LVL4771:
	movw	r0, #:lower16:.LC221
	movt	r0, #:upper16:.LC221
	b	.L4290
.LVL4772:
.L4291:
	.loc 31 680 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:ksCurThread
	mov	r2, #680
	ldr	ip, [r3]
.LVL4773:
	movt	r0, #:upper16:.LC3
	ldr	r1, .L4293
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL4774:
	str	ip, [sp, #4]
	bl	kprintf
.LVL4775:
	movw	r0, #:lower16:.LC219
	movt	r0, #:upper16:.LC219
	bl	kprintf
.LVL4776:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4777:
	.loc 31 681 0
	movw	r3, #:lower16:current_syscall_error
	.loc 31 682 0
	mov	r0, #3
	.loc 31 681 0
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
.LVL4778:
.L4271:
	.loc 31 743 0
	add	sp, sp, #124
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4779:
.L4273:
	.cfi_restore_state
	.loc 31 698 0
	add	r3, r10, #140
	movw	r0, #:lower16:.LC3
	str	r3, [sp]
	movt	r0, #:upper16:.LC3
	ldr	ip, [r10, #68]
	mov	r3, r10
	ldr	r1, .L4293
	movw	r2, #698
	str	ip, [sp, #4]
	bl	kprintf
.LVL4780:
	movw	r0, #:lower16:.LC220
	movt	r0, #:upper16:.LC220
.LVL4781:
.L4290:
	.loc 31 730 0
	bl	kprintf
.LVL4782:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4783:
	.loc 31 731 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	.loc 31 732 0
	mov	r0, r2
	.loc 31 731 0
	str	r2, [r3, #24]
	.loc 31 743 0
	add	sp, sp, #124
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4784:
.L4292:
	.cfi_restore_state
.LBB12148:
.LBB12120:
	bl	cap_thread_cap_get_capTCBPtr.isra.59.part.60
.LVL4785:
.L4278:
.LBE12120:
.LBE12148:
	.loc 31 719 0
	ldr	r3, [sp, #64]
	cmp	r3, #0
	beq	.L4279
	.loc 31 720 0
	ldr	lr, [sp, #96]
	mov	r2, r3
	mov	r0, fp
.LVL4786:
	ldr	r3, [sp, #92]
	mov	r1, #0
	str	ip, [sp, #52]
	str	lr, [sp]
	bl	updateCapData
.LVL4787:
	ldr	ip, [sp, #52]
.L4279:
	.loc 31 723 0
	ldmia	fp, {r2, r3}
	add	r0, sp, #108
.LVL4788:
	mov	r1, r5
	str	ip, [sp, #56]
	bl	deriveCap
.LVL4789:
	ldr	r3, [sp, #108]
	.loc 31 724 0
	cmp	r3, #0
	.loc 31 723 0
	str	r3, [sp, #52]
.LVL4790:
	.loc 31 724 0
	bne	.L4282
	.loc 31 727 0
	ldr	ip, [sp, #56]
	ldmia	ip, {r0, r1}
	stmia	fp, {r0, r1}
	.loc 31 729 0
	bl	isValidVTableRoot
.LVL4791:
	cmp	r0, #0
	bne	.L4280
	.loc 31 730 0
	ldr	ip, [r9]
.LVL4792:
	movw	r0, #:lower16:.LC3
	movt	r0, #:upper16:.LC3
	ldr	r1, .L4293
	movw	r2, #730
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL4793:
	str	ip, [sp, #4]
	bl	kprintf
.LVL4794:
	movw	r0, #:lower16:.LC222
	movt	r0, #:upper16:.LC222
	b	.L4290
.LVL4795:
.L4282:
	ldr	r0, [sp, #52]
	b	.L4271
.LVL4796:
.L4280:
	.loc 31 735 0
	ldr	r2, [r9]
.LVL4797:
.LBB12149:
.LBB12150:
.LBB12151:
.LBB12152:
	.loc 28 169 0
	ldr	r3, [r2, #72]
.LBE12152:
.LBE12151:
	.loc 26 418 0
	mov	r0, r2
.LBB12154:
.LBB12153:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #2
	str	r3, [r2, #72]
.LBE12153:
.LBE12154:
	.loc 26 418 0
	bl	scheduleTCB
.LVL4798:
.LBE12150:
.LBE12149:
	.loc 31 736 0
	str	r10, [sp, #84]
	add	lr, sp, #12
	ldmia	r7, {r0, r1}
	add	r7, sp, #100
.LBB12155:
.LBB12156:
	.loc 28 1058 0
	ldr	r9, [sp, #52]
.LBE12156:
.LBE12155:
	.loc 31 736 0
	add	ip, sp, #28
	str	r4, [sp, #8]
	mov	r4, #4
.LVL4799:
	stmia	sp, {r0, r1}
	ldmia	fp, {r0, r1}
.LBB12158:
.LBB12157:
	.loc 28 1058 0
	mov	r3, r9
	str	r9, [sp, #100]
	str	r9, [sp, #104]
.LVL4800:
.LBE12157:
.LBE12158:
	.loc 31 736 0
	ldr	r2, [sp, #68]
	stmia	lr, {r0, r1}
	ldmia	r7, {r0, r1}
	str	r5, [sp, #20]
	str	r9, [sp, #24]
	stmia	ip, {r0, r1}
	bic	r0, r6, #15
	str	r9, [sp, #36]
	mov	r1, r8
	str	r4, [sp, #40]
	bl	invokeTCB_ThreadControl
.LVL4801:
	b	.L4271
.L4294:
	.align	2
.L4293:
	.word	.LANCHOR7-3260
	.cfi_endproc
.LFE657:
	.size	decodeSetSpace, .-decodeSetSpace
	.align	2
	.global	decodeDomainInvocation
	.type	decodeDomainInvocation, %function
decodeDomainInvocation:
.LFB658:
	.loc 31 747 0
	.cfi_startproc
	@ args = 16, pretend = 8, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4802:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 31 751 0
	cmp	r0, #28
	.loc 31 747 0
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 14, -12
	sub	sp, sp, #12
	.cfi_def_cfa_offset 32
	.loc 31 747 0
	add	r0, sp, #20
.LVL4803:
	stmib	r0, {r2, r3}
	ldr	r0, [sp, #24]
.LVL4804:
	.loc 31 751 0
	bne	.L4307
	.loc 31 756 0
	cmp	r1, #0
	.loc 31 757 0
	movw	r3, #:lower16:ksCurThread
	.loc 31 756 0
	beq	.L4308
.LVL4805:
.LBB12183:
.LBB12184:
	.loc 43 30 0
	movt	r3, #:upper16:ksCurThread
	ldr	r2, [r3]
.LVL4806:
.LBB12185:
.LBB12186:
	.loc 13 27 0
	ldr	r4, [r2, #8]
.LBE12186:
.LBE12185:
.LBE12184:
.LBE12183:
	.loc 31 762 0
	cmp	r4, #0
	bne	.L4309
	.loc 31 771 0
	cmp	r0, #0
	beq	.L4310
	.loc 31 777 0
	ldr	r5, [r0]
.LVL4807:
.LBB12187:
.LBB12188:
	.loc 28 1035 0
	and	r3, r5, #14
	cmp	r3, #14
	.loc 28 1037 0
	uxtbeq	r3, r5
	.loc 28 1036 0
	andne	r3, r5, #15
.LBE12188:
.LBE12187:
	.loc 31 778 0
	cmp	r3, #12
	bne	.L4311
.LVL4808:
.LBB12189:
.LBB12190:
.LBB12191:
.LBB12192:
	.loc 28 169 0
	ldr	r3, [r2, #72]
.LBE12192:
.LBE12191:
	.loc 26 418 0
	mov	r0, r2
.LVL4809:
.LBB12194:
.LBB12193:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #2
	str	r3, [r2, #72]
.LBE12193:
.LBE12194:
	.loc 26 418 0
	bl	scheduleTCB
.LVL4810:
.LBE12190:
.LBE12189:
.LBB12195:
.LBB12196:
	.loc 28 1608 0
	and	r3, r5, #15
	cmp	r3, #12
	bne	.L4312
.LVL4811:
.LBE12196:
.LBE12195:
	.loc 31 786 0
	bic	r0, r5, #15
	mov	r1, #0
	bl	setDomain
.LVL4812:
.L4297:
	.loc 31 788 0
	mov	r0, r4
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 8
.LVL4813:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
.LVL4814:
	bx	lr
.LVL4815:
.L4309:
	.cfi_restore_state
	.loc 31 763 0
	add	r3, r2, #140
	movw	r0, #:lower16:.LC3
.LVL4816:
	str	r3, [sp]
	movt	r0, #:upper16:.LC3
	ldr	ip, [r2, #68]
	mov	r3, r2
	ldr	r1, .L4313
.LVL4817:
	mov	r2, #764
.LVL4818:
	str	ip, [sp, #4]
	bl	kprintf
.LVL4819:
	movw	r0, #:lower16:.LC224
	mov	r1, r4
	mov	r2, #1
	movt	r0, #:upper16:.LC224
	bl	kprintf
.LVL4820:
	movw	r0, #:lower16:.LC5
	.loc 31 767 0
	mov	r4, #3
	.loc 31 763 0
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4821:
	.loc 31 765 0
	movw	r3, #:lower16:current_syscall_error
	mov	r1, #1
	movt	r3, #:upper16:current_syscall_error
	.loc 31 766 0
	mov	r2, #0
	.loc 31 765 0
	str	r1, [r3, #24]
	.loc 31 766 0
	str	r2, [r3]
	.loc 31 767 0
	b	.L4297
.LVL4822:
.L4307:
	.loc 31 752 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	.loc 31 753 0
	mov	r4, r2
	.loc 31 752 0
	str	r2, [r3, #24]
	.loc 31 753 0
	b	.L4297
.L4308:
	.loc 31 757 0
	movt	r3, #:upper16:ksCurThread
	ldr	r1, .L4313
.LVL4823:
	ldr	ip, [r3]
.LVL4824:
	movw	r0, #:lower16:.LC3
.LVL4825:
	movt	r0, #:upper16:.LC3
	movw	r2, #757
	.loc 31 759 0
	mov	r4, #3
	.loc 31 757 0
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL4826:
.L4306:
	.loc 31 772 0
	str	ip, [sp, #4]
	bl	kprintf
.LVL4827:
	movw	r0, #:lower16:.LC223
	movt	r0, #:upper16:.LC223
	bl	kprintf
.LVL4828:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4829:
	.loc 31 773 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
	.loc 31 774 0
	b	.L4297
.LVL4830:
.L4310:
	.loc 31 772 0
	add	r3, r2, #140
	movw	r0, #:lower16:.LC3
.LVL4831:
	str	r3, [sp]
	movt	r0, #:upper16:.LC3
	mov	r3, r2
	ldr	ip, [r2, #68]
	ldr	r1, .L4313
.LVL4832:
	mov	r2, #772
.LVL4833:
	.loc 31 774 0
	mov	r4, #3
	b	.L4306
.LVL4834:
.L4311:
	.loc 31 779 0
	add	r3, r2, #140
	movw	r0, #:lower16:.LC3
.LVL4835:
	str	r3, [sp]
	movt	r0, #:upper16:.LC3
	ldr	ip, [r2, #68]
	mov	r3, r2
	ldr	r1, .L4313
.LVL4836:
	movw	r2, #779
.LVL4837:
	.loc 31 782 0
	mov	r4, #3
	.loc 31 779 0
	str	ip, [sp, #4]
	bl	kprintf
.LVL4838:
	movw	r0, #:lower16:.LC225
	movt	r0, #:upper16:.LC225
	bl	kprintf
.LVL4839:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4840:
	.loc 31 780 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #1
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
	.loc 31 781 0
	str	r2, [r3]
	.loc 31 782 0
	b	.L4297
.LVL4841:
.L4312:
.LBB12198:
.LBB12197:
	bl	cap_thread_cap_get_capTCBPtr.isra.59.part.60
.LVL4842:
.L4314:
	.align	2
.L4313:
	.word	.LANCHOR7-3244
.LBE12197:
.LBE12198:
	.cfi_endproc
.LFE658:
	.size	decodeDomainInvocation, .-decodeDomainInvocation
	.align	2
	.global	decodeBindNotification
	.type	decodeBindNotification, %function
decodeBindNotification:
.LFB659:
	.loc 31 792 0
	.cfi_startproc
	@ args = 12, pretend = 8, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 14, -12
	sub	sp, sp, #20
	.cfi_def_cfa_offset 40
	.loc 31 792 0
	add	ip, sp, #28
	stmib	ip, {r2, r3}
	add	r3, sp, #16
	ldr	r2, [sp, #32]
.LVL4843:
	stmdb	r3, {r0, r1}
	.loc 31 797 0
	cmp	r2, #0
	beq	.L4332
	ldr	r3, [sp, #8]
.LVL4844:
.LBB12230:
.LBB12231:
	.loc 28 1608 0
	and	r1, r3, #15
	cmp	r1, #12
	bne	.L4333
.LVL4845:
	.loc 28 1611 0
	bic	r5, r3, #15
.LVL4846:
.LBE12231:
.LBE12230:
	.loc 31 805 0
	ldr	r1, [r5, #84]
	cmp	r1, #0
	beq	.L4319
	.loc 31 806 0
	movw	r3, #:lower16:ksCurThread
.LVL4847:
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC3
	ldr	ip, [r3]
.LVL4848:
	movw	r2, #806
.LVL4849:
	ldr	r1, .L4337
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL4850:
	str	ip, [sp, #4]
	bl	kprintf
.LVL4851:
	movw	r0, #:lower16:.LC227
	movt	r0, #:upper16:.LC227
.LVL4852:
.L4330:
	.loc 31 829 0
	bl	kprintf
.LVL4853:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4854:
	.loc 31 830 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
.LVL4855:
.L4317:
	.loc 31 837 0
	mov	r0, #3
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 8
.LVL4856:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
.LVL4857:
	bx	lr
.LVL4858:
.L4319:
	.cfi_restore_state
	.loc 31 811 0
	ldr	r1, [r2]
	ldr	r0, [r2, #4]
.LVL4859:
.LBB12233:
.LBB12234:
	.loc 28 1035 0
	and	r2, r1, #14
.LVL4860:
	cmp	r2, #14
	.loc 28 1037 0
	uxtbeq	r2, r1
	.loc 28 1036 0
	andne	r2, r1, #15
.LBE12234:
.LBE12233:
	.loc 31 813 0
	cmp	r2, #6
	beq	.L4334
	.loc 31 816 0
	movw	r3, #:lower16:ksCurThread
.LVL4861:
	movw	r0, #:lower16:.LC3
.LVL4862:
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC3
	ldr	ip, [r3]
.LVL4863:
	mov	r2, #816
	ldr	r1, .L4337
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
.LVL4864:
	ldr	ip, [ip, #68]
.LVL4865:
	str	ip, [sp, #4]
	bl	kprintf
.LVL4866:
	movw	r0, #:lower16:.LC228
	movt	r0, #:upper16:.LC228
	b	.L4330
.LVL4867:
.L4332:
	.loc 31 798 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:ksCurThread
	movw	r2, #798
.LVL4868:
	ldr	ip, [r3]
.LVL4869:
	movt	r0, #:upper16:.LC3
	ldr	r1, .L4337
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL4870:
	str	ip, [sp, #4]
	bl	kprintf
.LVL4871:
	movw	r0, #:lower16:.LC226
	movt	r0, #:upper16:.LC226
	bl	kprintf
.LVL4872:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4873:
	.loc 31 799 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
	.loc 31 800 0
	b	.L4317
.LVL4874:
.L4334:
.LBB12235:
.LBB12236:
	.loc 28 1407 0
	and	r2, r1, #15
	cmp	r2, #6
	bne	.L4335
.LVL4875:
.LBE12236:
.LBE12235:
	.loc 31 821 0
	tst	r0, #2
	beq	.L4336
.LBB12239:
.LBB12237:
	.loc 28 1410 0
	bic	r4, r1, #15
.LVL4876:
.LBE12237:
.LBE12239:
.LBB12240:
.LBB12241:
	.loc 28 219 0
	ldr	r2, [r4, #4]
.LBE12241:
.LBE12240:
	.loc 31 827 0
	bics	r3, r2, #15
.LVL4877:
	bne	.L4326
.LVL4878:
.LBB12242:
.LBB12243:
	.loc 28 181 0
	ldr	r2, [r4, #12]
.LBE12243:
.LBE12242:
	.loc 31 828 0
	bics	r3, r2, #15
	beq	.L4327
.LVL4879:
.L4326:
	.loc 31 829 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC3
.LVL4880:
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC3
	ldr	ip, [r3]
.LVL4881:
	movw	r2, #829
	ldr	r1, .L4337
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
.LVL4882:
	ldr	ip, [ip, #68]
.LVL4883:
	str	ip, [sp, #4]
	bl	kprintf
.LVL4884:
	movw	r0, #:lower16:.LC230
	movt	r0, #:upper16:.LC230
	b	.L4330
.LVL4885:
.L4336:
	.loc 31 822 0
	movw	r3, #:lower16:ksCurThread
.LVL4886:
	movw	r0, #:lower16:.LC3
.LVL4887:
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC3
	ldr	ip, [r3]
.LVL4888:
	movw	r2, #822
	ldr	r1, .L4337
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
.LVL4889:
	ldr	ip, [ip, #68]
.LVL4890:
	str	ip, [sp, #4]
	bl	kprintf
.LVL4891:
	movw	r0, #:lower16:.LC229
	movt	r0, #:upper16:.LC229
	b	.L4330
.LVL4892:
.L4327:
	.loc 31 835 0
	movw	r2, #:lower16:ksCurThread
.LVL4893:
	movt	r2, #:upper16:ksCurThread
	ldr	r1, [r2]
.LVL4894:
.LBB12244:
.LBB12245:
.LBB12246:
.LBB12247:
	.loc 28 169 0
	ldr	r2, [r1, #72]
.LBE12247:
.LBE12246:
	.loc 26 418 0
	mov	r0, r1
.LVL4895:
.LBB12249:
.LBB12248:
	.loc 28 169 0
	bic	r2, r2, #15
	.loc 28 170 0
	orr	r2, r2, #2
	str	r2, [r1, #72]
.LVL4896:
.LBE12248:
.LBE12249:
	.loc 26 418 0
	bl	scheduleTCB
.LVL4897:
.LBE12245:
.LBE12244:
	.loc 31 836 0
	mov	r0, r5
	mov	r1, r4
	.loc 31 837 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 8
.LVL4898:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
.LVL4899:
	.loc 31 836 0
	b	invokeTCB_NotificationControl
.LVL4900:
.L4333:
	.cfi_restore_state
.LBB12250:
.LBB12232:
	bl	cap_thread_cap_get_capTCBPtr.isra.59.part.60
.LVL4901:
.L4335:
.LBE12232:
.LBE12250:
.LBB12251:
.LBB12238:
	bl	cap_notification_cap_get_capNtfnPtr.isra.68.part.69
.LVL4902:
.L4338:
	.align	2
.L4337:
	.word	.LANCHOR7-3220
.LBE12238:
.LBE12251:
	.cfi_endproc
.LFE659:
	.size	decodeBindNotification, .-decodeBindNotification
	.align	2
	.global	decodeUnbindNotification
	.type	decodeUnbindNotification, %function
decodeUnbindNotification:
.LFB660:
	.loc 31 841 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	.loc 31 841 0
	add	r3, sp, #16
	stmdb	r3, {r0, r1}
	ldr	r4, [sp, #8]
.LVL4903:
.LBB12281:
.LBB12282:
	.loc 28 1608 0
	and	r3, r4, #15
	cmp	r3, #12
	bne	.L4345
.LVL4904:
	.loc 28 1611 0
	bic	r4, r4, #15
.LVL4905:
.LBE12282:
.LBE12281:
	.loc 31 846 0
	ldr	r3, [r4, #84]
	cmp	r3, #0
.LBB12284:
.LBB12285:
	.loc 31 847 0
	movw	r3, #:lower16:ksCurThread
.LBE12285:
.LBE12284:
	.loc 31 846 0
	beq	.L4346
	.loc 31 852 0
	movt	r3, #:upper16:ksCurThread
	ldr	r2, [r3]
.LVL4906:
.LBB12287:
.LBB12288:
.LBB12289:
.LBB12290:
	.loc 28 169 0
	ldr	r3, [r2, #72]
.LBE12290:
.LBE12289:
	.loc 26 418 0
	mov	r0, r2
.LBB12292:
.LBB12291:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #2
	str	r3, [r2, #72]
.LBE12291:
.LBE12292:
	.loc 26 418 0
	bl	scheduleTCB
.LVL4907:
.LBE12288:
.LBE12287:
.LBB12293:
.LBB12294:
.LBB12295:
.LBB12296:
	.loc 50 227 0
	ldr	r3, [r4, #84]
.LVL4908:
	.loc 50 229 0
	cmp	r3, #0
.LVL4909:
.LBB12297:
.LBB12298:
.LBB12299:
.LBB12300:
	.loc 28 193 0
	ldrne	r2, [r3, #12]
.LBE12300:
.LBE12299:
	.loc 50 209 0
	movne	r1, #0
.LBE12298:
.LBE12297:
.LBE12296:
.LBE12295:
.LBE12294:
.LBE12293:
	.loc 31 853 0
	movne	r0, r1
	moveq	r0, r3
.LBB12308:
.LBB12307:
.LBB12306:
.LBB12305:
.LBB12304:
.LBB12303:
.LBB12302:
.LBB12301:
	.loc 28 193 0
	andne	r2, r2, #15
	strne	r2, [r3, #12]
.LBE12301:
.LBE12302:
	.loc 50 209 0
	strne	r1, [r4, #84]
.LBE12303:
.LBE12304:
.LBE12305:
.LBE12306:
.LBE12307:
.LBE12308:
	.loc 31 854 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldmfd	sp!, {r4, pc}
.LVL4910:
.L4346:
	.cfi_restore_state
.LBB12309:
.LBB12286:
	.loc 31 847 0
	movt	r3, #:upper16:ksCurThread
	movw	r0, #:lower16:.LC3
	ldr	ip, [r3]
.LVL4911:
	movw	r2, #847
	ldr	r1, .L4347
	movt	r0, #:upper16:.LC3
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL4912:
	str	ip, [sp, #4]
	bl	kprintf
.LVL4913:
	movw	r0, #:lower16:.LC231
	movt	r0, #:upper16:.LC231
	bl	kprintf
.LVL4914:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4915:
	.loc 31 848 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	mov	r0, r2
	str	r2, [r3, #24]
.LBE12286:
.LBE12309:
	.loc 31 854 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldmfd	sp!, {r4, pc}
.LVL4916:
.L4345:
	.cfi_restore_state
.LBB12310:
.LBB12283:
	bl	cap_thread_cap_get_capTCBPtr.isra.59.part.60
.LVL4917:
.L4348:
	.align	2
.L4347:
	.word	.LANCHOR7-3196
.LBE12283:
.LBE12310:
	.cfi_endproc
.LFE660:
	.size	decodeUnbindNotification, .-decodeUnbindNotification
	.align	2
	.global	decodeTCBInvocation
	.type	decodeTCBInvocation, %function
decodeTCBInvocation:
.LFB650:
	.loc 31 293 0
	.cfi_startproc
	@ args = 24, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4918:
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 40
	.loc 31 293 0
	add	ip, sp, #16
	.loc 31 294 0
	sub	r0, r0, #2
.LVL4919:
	.loc 31 293 0
	mov	lr, r1
	mov	r4, r2
.LVL4920:
	stmia	ip, {r2, r3}
.LVL4921:
	ldr	r5, [sp, #56]
	ldr	r3, [sp, #40]
	ldr	r1, [sp, #60]
.LVL4922:
	.loc 31 294 0
	cmp	r0, #10
	ldrls	pc, [pc, r0, asl #2]
	b	.L4350
.L4352:
	.word	.L4351
	.word	.L4353
	.word	.L4354
	.word	.L4355
	.word	.L4356
	.word	.L4357
	.word	.L4358
	.word	.L4359
	.word	.L4360
	.word	.L4361
	.word	.L4362
.L4362:
	.loc 31 332 0
	ldmia	ip, {r0, r1}
.LVL4923:
	.loc 31 340 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4924:
	.loc 31 332 0
	b	decodeUnbindNotification
.LVL4925:
.L4351:
	.cfi_restore_state
	.loc 31 297 0
	str	r1, [sp, #40]
	mov	r2, lr
	mov	r3, r5
	ldmia	ip, {r0, r1}
	.loc 31 340 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4926:
	.loc 31 297 0
	b	decodeReadRegisters
.LVL4927:
.L4353:
	.cfi_restore_state
	.loc 31 300 0
	mov	r3, r1
	mov	r2, lr
	ldmia	ip, {r0, r1}
	.loc 31 340 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4928:
	.loc 31 300 0
	b	decodeWriteRegisters
.LVL4929:
.L4354:
	.cfi_restore_state
	.loc 31 303 0
	add	r3, sp, #48
.LVL4930:
	str	r1, [sp, #8]
	ldmia	r3, {r0, r1}
	mov	r2, lr
	ldr	r3, [sp, #44]
.LVL4931:
	stmia	sp, {r0, r1}
	ldmia	ip, {r0, r1}
	bl	decodeCopyRegisters
.LVL4932:
.L4363:
	.loc 31 340 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.LVL4933:
.L4355:
	.cfi_restore_state
	.loc 31 317 0
	add	r2, sp, #44
.LVL4934:
	str	r1, [sp, #12]
	ldmia	r2, {r0, r1, r2}
.LVL4935:
	stmia	sp, {r0, r1, r2}
	mov	r2, lr
	ldmia	ip, {r0, r1}
	bl	decodeTCBConfigure
.LVL4936:
	b	.L4363
.LVL4937:
.L4356:
	.loc 31 320 0
	mov	r3, r1
	mov	r2, lr
	ldmia	ip, {r0, r1}
	.loc 31 340 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4938:
	.loc 31 320 0
	b	decodeSetPriority
.LVL4939:
.L4357:
	.cfi_restore_state
	.loc 31 323 0
	add	r2, sp, #44
.LVL4940:
	str	r1, [sp, #12]
	ldmia	r2, {r0, r1, r2}
.LVL4941:
	stmia	sp, {r0, r1, r2}
	mov	r2, lr
	ldmia	ip, {r0, r1}
	bl	decodeSetIPCBuffer
.LVL4942:
	b	.L4363
.LVL4943:
.L4358:
	.loc 31 326 0
	add	r2, sp, #44
.LVL4944:
	str	r1, [sp, #12]
	ldmia	r2, {r0, r1, r2}
.LVL4945:
	stmia	sp, {r0, r1, r2}
	mov	r2, lr
	ldmia	ip, {r0, r1}
	bl	decodeSetSpace
.LVL4946:
	b	.L4363
.LVL4947:
.L4359:
	.loc 31 307 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r2, [r3]
.LVL4948:
.LBB12330:
.LBB12331:
.LBB12332:
.LBB12333:
	.loc 28 169 0
	ldr	r3, [r2, #72]
.LBE12333:
.LBE12332:
	.loc 26 418 0
	mov	r0, r2
.LBB12335:
.LBB12334:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #2
	str	r3, [r2, #72]
.LBE12334:
.LBE12335:
	.loc 26 418 0
	bl	scheduleTCB
.LVL4949:
.LBE12331:
.LBE12330:
.LBB12336:
.LBB12337:
	.loc 28 1608 0
	and	r3, r4, #15
	cmp	r3, #12
	bne	.L4365
.LVL4950:
.LBE12337:
.LBE12336:
.LBB12339:
.LBB12340:
	.loc 31 861 0
	bic	r0, r4, #15
	bl	suspend
.LVL4951:
.LBE12340:
.LBE12339:
	.loc 31 308 0
	mov	r0, #0
	b	.L4363
.LVL4952:
.L4360:
	.loc 31 312 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r2, [r3]
.LVL4953:
.LBB12341:
.LBB12342:
.LBB12343:
.LBB12344:
	.loc 28 169 0
	ldr	r3, [r2, #72]
.LBE12344:
.LBE12343:
	.loc 26 418 0
	mov	r0, r2
.LBB12346:
.LBB12345:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #2
	str	r3, [r2, #72]
.LBE12345:
.LBE12346:
	.loc 26 418 0
	bl	scheduleTCB
.LVL4954:
.LBE12342:
.LBE12341:
.LBB12347:
.LBB12348:
	.loc 28 1608 0
	and	r3, r4, #15
	cmp	r3, #12
	bne	.L4365
.LVL4955:
.LBE12348:
.LBE12347:
.LBB12349:
.LBB12350:
	.loc 31 868 0
	bic	r0, r4, #15
	bl	restart
.LVL4956:
.LBE12350:
.LBE12349:
	.loc 31 313 0
	mov	r0, #0
	b	.L4363
.LVL4957:
.L4361:
	.loc 31 329 0
	ldr	lr, [sp, #52]
.LVL4958:
	add	r3, sp, #44
.LVL4959:
	ldmia	r3, {r2, r3}
.LVL4960:
	ldmia	ip, {r0, r1}
	str	lr, [sp, #40]
	.loc 31 340 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 31 329 0
	b	decodeBindNotification
.LVL4961:
.L4350:
	.loc 31 336 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:ksCurThread
	mov	r2, #336
	ldr	ip, [r3]
.LVL4962:
	movt	r0, #:upper16:.LC3
	ldr	r1, .L4367
	add	lr, ip, #140
.LVL4963:
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL4964:
	str	ip, [sp, #4]
	bl	kprintf
.LVL4965:
	movw	r0, #:lower16:.LC232
	movt	r0, #:upper16:.LC232
	bl	kprintf
.LVL4966:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4967:
	.loc 31 337 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	.loc 31 338 0
	mov	r0, r2
	.loc 31 337 0
	str	r2, [r3, #24]
	.loc 31 338 0
	b	.L4363
.LVL4968:
.L4365:
	.cfi_restore_state
.LBB12351:
.LBB12338:
	bl	cap_thread_cap_get_capTCBPtr.isra.59.part.60
.LVL4969:
.L4368:
	.align	2
.L4367:
	.word	.LANCHOR7-3168
.LBE12338:
.LBE12351:
	.cfi_endproc
.LFE650:
	.size	decodeTCBInvocation, .-decodeTCBInvocation
	.align	2
	.global	handleReservedIRQ
	.type	handleReservedIRQ, %function
handleReservedIRQ:
.LFB677:
	.loc 33 126 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL4970:
	.loc 33 126 0
	mov	r1, r0
	.loc 33 127 0
	movw	r0, #:lower16:.LC233
.LVL4971:
	movt	r0, #:upper16:.LC233
	b	kprintf
.LVL4972:
	.cfi_endproc
.LFE677:
	.size	handleReservedIRQ, .-handleReservedIRQ
	.align	2
	.global	handleInterrupt
	.type	handleInterrupt, %function
handleInterrupt:
.LFB607:
	.loc 30 207 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4973:
	.loc 30 208 0
	movw	r3, #:lower16:intStateIRQTable
	.loc 30 207 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 30 208 0
	movt	r3, #:upper16:intStateIRQTable
	.loc 30 207 0
	mov	r4, r0
	.loc 30 208 0
	ldr	r3, [r3, r0, asl #2]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L4371
.L4373:
	.word	.L4372
	.word	.L4374
	.word	.L4375
	.word	.L4376
.L4376:
.LVL4974:
.LBB12373:
.LBB12374:
	.loc 33 127 0
	movw	r0, #:lower16:.LC233
.LVL4975:
	mov	r1, r4
	movt	r0, #:upper16:.LC233
	bl	kprintf
.LVL4976:
.LBE12374:
.LBE12373:
	.loc 30 253 0
	mov	r0, r4
	.loc 30 254 0
	ldmfd	sp!, {r4, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4977:
	.loc 30 253 0
	b	ackInterrupt
.LVL4978:
.L4375:
	.cfi_restore_state
	.loc 30 228 0
	bl	timerTick
.LVL4979:
.LBB12375:
.LBB12376:
	.loc 21 61 0
	movw	r3, #:lower16:.LANCHOR1
	mov	r2, #1
	movt	r3, #:upper16:.LANCHOR1
.LBE12376:
.LBE12375:
	.loc 30 253 0
	mov	r0, r4
.LBB12379:
.LBB12377:
	.loc 21 61 0
	ldr	r3, [r3, #16]
.LBE12377:
.LBE12379:
	.loc 30 254 0
	ldmfd	sp!, {r4, lr}
	.cfi_remember_state
	.cfi_restore 4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
.LBB12380:
.LBB12378:
	.loc 21 61 0
	str	r2, [r3, #12]
.LBE12378:
.LBE12380:
	.loc 30 253 0
	b	ackInterrupt
.LVL4980:
.L4374:
	.cfi_restore_state
.LBB12381:
	.loc 30 212 0
	movw	r3, #:lower16:intStateIRQNode
	movt	r3, #:upper16:intStateIRQNode
	ldr	r3, [r3]
	ldr	r0, [r3, r0, asl #4]
.LVL4981:
	add	r3, r3, r4, asl #4
.LBB12382:
.LBB12383:
	.loc 28 1035 0
	and	r2, r0, #14
.LBE12383:
.LBE12382:
	.loc 30 212 0
	ldr	r1, [r3, #4]
.LVL4982:
.LBB12385:
.LBB12384:
	.loc 28 1035 0
	cmp	r2, #14
	.loc 28 1037 0
	uxtbeq	r3, r0
	.loc 28 1036 0
	andne	r3, r0, #15
.LBE12384:
.LBE12385:
	.loc 30 214 0
	cmp	r3, #6
	beq	.L4387
.L4379:
	.loc 30 220 0
	movw	r0, #:lower16:.LC234
.LVL4983:
	mov	r1, r4
.LVL4984:
	movt	r0, #:upper16:.LC234
	bl	kprintf
.LVL4985:
.L4381:
.LBB12386:
.LBB12387:
	mov	r0, r4
	bl	maskInterrupt.part.50
.LVL4986:
.LBE12387:
.LBE12386:
.LBE12381:
	.loc 30 253 0
	mov	r0, r4
	.loc 30 254 0
	ldmfd	sp!, {r4, lr}
	.cfi_remember_state
	.cfi_restore 4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
.LVL4987:
	.loc 30 253 0
	b	ackInterrupt
.LVL4988:
.L4372:
	.cfi_restore_state
.LBB12392:
.LBB12393:
	bl	maskInterrupt.part.50
.LVL4989:
.LBE12393:
.LBE12392:
	.loc 30 244 0
	movw	r0, #:lower16:.LC235
	mov	r1, r4
	movt	r0, #:upper16:.LC235
	bl	kprintf
.LVL4990:
	.loc 30 253 0
	mov	r0, r4
	.loc 30 254 0
	ldmfd	sp!, {r4, lr}
	.cfi_remember_state
	.cfi_restore 4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 30 253 0
	b	ackInterrupt
.LVL4991:
.L4371:
	.loc 30 250 0
	movw	r0, #:lower16:.LC236
.LVL4992:
	movw	r1, #:lower16:.LC237
	movt	r0, #:upper16:.LC236
	movt	r1, #:upper16:.LC237
	mov	r2, #250
	ldr	r3, .L4389
	bl	_fail
.LVL4993:
.L4387:
	.cfi_restore_state
.LBB12394:
.LBB12388:
.LBB12389:
	.loc 28 1381 0 discriminator 1
	and	r3, r0, #15
	cmp	r3, #6
	bne	.L4388
.LVL4994:
.LBE12389:
.LBE12388:
	.loc 30 214 0
	tst	r1, #1
	beq	.L4379
.LVL4995:
	.loc 30 216 0
	bic	r0, r0, #15
.LVL4996:
	mov	r1, r1, lsr #4
.LVL4997:
	bl	sendSignal
.LVL4998:
	b	.L4381
.LVL4999:
.L4388:
.LBB12391:
.LBB12390:
	bl	cap_notification_cap_get_capNtfnCanSend.part.218
.LVL5000:
.L4390:
	.align	2
.L4389:
	.word	.LANCHOR7-3148
.LBE12390:
.LBE12391:
.LBE12394:
	.cfi_endproc
.LFE607:
	.size	handleInterrupt, .-handleInterrupt
	.align	2
	.global	handleInterruptEntry
	.type	handleInterruptEntry, %function
handleInterruptEntry:
.LFB278:
	.loc 53 34 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
.LBB12395:
.LBB12396:
	.loc 7 311 0
	movw	r3, #:lower16:.LANCHOR1
	movt	r3, #:upper16:.LANCHOR1
	ldr	r0, [r3, #8]
	ubfx	r0, r0, #0, #10
	cmp	r0, #1020
	bcc	.L4392
	.loc 7 312 0
	ldr	r2, [r3, #4]
	ldr	r2, [r2, #12]
	.loc 7 315 0
	ubfx	r0, r2, #0, #10
	.loc 7 312 0
	str	r2, [r3, #8]
	.loc 7 315 0
	cmp	r0, #1020
	bcc	.L4392
.LVL5001:
.LBE12396:
.LBE12395:
	.loc 53 41 0
	movw	r0, #:lower16:.LC238
	movt	r0, #:upper16:.LC238
	bl	kprintf
.LVL5002:
.L4394:
	.loc 53 45 0
	bl	schedule
.LVL5003:
	.loc 53 46 0
	bl	activateThread
.LVL5004:
	.loc 53 49 0
	mov	r0, #0
	ldmfd	sp!, {r3, pc}
.L4392:
.LVL5005:
	.loc 53 39 0
	bl	handleInterrupt
.LVL5006:
	b	.L4394
	.cfi_endproc
.LFE278:
	.size	handleInterruptEntry, .-handleInterruptEntry
	.align	2
	.global	handleUnknownSyscall
	.type	handleUnknownSyscall, %function
handleUnknownSyscall:
.LFB279:
	.loc 53 53 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5007:
	.loc 53 55 0
	cmn	r0, #9
	.loc 53 53 0
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	mov	r3, r0
	sub	sp, sp, #28
	.cfi_def_cfa_offset 40
	.loc 53 55 0
	beq	.L4431
	.loc 53 59 0
	cmn	r0, #10
	beq	.L4432
	.loc 53 63 0
	cmn	r0, #12
	beq	.L4433
	.loc 53 68 0
	cmn	r0, #11
	beq	.L4434
	.loc 53 75 0
	cmn	r0, #13
	beq	.L4435
.LVL5008:
	.loc 53 166 0
	movw	r1, #:lower16:ksCurThread
	.loc 53 165 0
	movw	r2, #:lower16:current_fault
	.loc 53 166 0
	movt	r1, #:upper16:ksCurThread
	.loc 53 165 0
	movt	r2, #:upper16:current_fault
	.loc 53 166 0
	ldr	r0, [r1]
.LVL5009:
	.loc 53 165 0
	mov	r1, #3
	stmia	r2, {r1, r3}
	.loc 53 166 0
	bl	handleFault
.LVL5010:
	.loc 53 168 0
	bl	schedule
.LVL5011:
	.loc 53 169 0
	bl	activateThread
.LVL5012:
.L4428:
	.loc 53 172 0
	mov	r0, #0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.LVL5013:
.L4435:
	.cfi_restore_state
.LBB12397:
	.loc 53 79 0
	movw	r5, #:lower16:ksCurThread
	.loc 53 80 0
	add	r0, sp, #8
.LVL5014:
	.loc 53 79 0
	movt	r5, #:upper16:ksCurThread
	ldr	r1, [r5]
.LVL5015:
	.loc 53 80 0
	ldr	r2, [r1]
	bl	lookupCapAndSlot
.LVL5016:
	ldr	r4, [sp, #12]
.LVL5017:
.LBB12398:
.LBB12399:
	.loc 28 1035 0
	and	r3, r4, #14
	cmp	r3, #14
	.loc 28 1037 0
	uxtbeq	r3, r4
	.loc 28 1036 0
	andne	r3, r4, #15
.LBE12399:
.LBE12398:
	.loc 53 83 0
	cmp	r3, #12
	bne	.L4436
	.loc 53 88 0
	ldr	r5, [r5]
	mov	r0, #1
	mov	r1, r5
	bl	lookupIPCBuffer
.LVL5018:
	.loc 53 89 0
	adds	r1, r0, #4
.LVL5019:
	beq	.L4410
	add	ip, r0, #480
	add	r3, r0, #3
	add	ip, ip, #3
	b	.L4411
.L4413:
.LVL5020:
.LBB12400:
.LBB12401:
	.loc 32 19 0
	cmp	r3, ip
	beq	.L4412
.L4411:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L4413
.L4414:
.LVL5021:
.LBE12401:
.LBE12400:
.LBB12402:
.LBB12403:
	.loc 28 1608 0
	and	r3, r4, #15
	cmp	r3, #12
	bne	.L4437
.LVL5022:
.LBE12403:
.LBE12402:
.LBB12406:
.LBB12407:
.LBB12408:
.LBB12409:
	.loc 32 26 0
	ldrb	r3, [r0, #4]	@ zero_extendqisi2
.LBE12409:
.LBE12408:
.LBE12407:
.LBE12406:
.LBB12416:
.LBB12404:
	.loc 28 1611 0
	bic	r4, r4, #15
.LVL5023:
.LBE12404:
.LBE12416:
.LBB12417:
.LBB12414:
	.loc 31 1103 0
	add	ip, r4, #140
.LVL5024:
.LBB12412:
.LBB12410:
	.loc 32 26 0
	cmp	r3, #0
	.loc 32 27 0
	strneb	r3, [r4, #140]
.LVL5025:
	movne	r0, ip
	movne	r3, #1
	.loc 32 26 0
	bne	.L4419
	b	.L4417
.LVL5026:
.L4418:
	add	r3, r3, #1
.LVL5027:
	.loc 32 27 0
	strb	r2, [r0, #1]!
.LVL5028:
	.loc 32 26 0
	cmp	r3, #115
	beq	.L4417
.LVL5029:
.L4419:
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L4418
.LVL5030:
.L4417:
	.loc 32 29 0
	mov	r2, #0
.LBE12410:
.LBE12412:
.LBE12414:
.LBE12417:
.LBE12397:
	.loc 53 172 0
	mov	r0, #0
.LBB12420:
.LBB12418:
.LBB12415:
.LBB12413:
.LBB12411:
	.loc 32 29 0
	strb	r2, [ip, r3]
.LBE12411:
.LBE12413:
.LBE12415:
.LBE12418:
.LBE12420:
	.loc 53 172 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.LVL5031:
.L4434:
	.cfi_restore_state
.LBB12421:
	.loc 53 69 0
	movw	r5, #:lower16:ksCurThread
	.loc 53 70 0
	add	r0, sp, #8
.LVL5032:
	.loc 53 69 0
	movt	r5, #:upper16:ksCurThread
	ldr	r1, [r5]
.LVL5033:
	.loc 53 70 0
	ldr	r2, [r1]
	bl	lookupCapAndSlot
.LVL5034:
	ldr	r3, [sp, #12]
.LVL5035:
.LBE12421:
	.loc 53 172 0
	mov	r0, #0
.LBB12430:
.LBB12422:
.LBB12423:
	.loc 28 1035 0
	and	r2, r3, #14
	cmp	r2, #14
.LBE12423:
.LBE12422:
.LBB12425:
.LBB12426:
	.loc 13 21 0
	ldr	r2, [r5]
.LBE12426:
.LBE12425:
.LBB12428:
.LBB12424:
	.loc 28 1037 0
	uxtbeq	r3, r3
.LVL5036:
	.loc 28 1036 0
	andne	r3, r3, #15
.LVL5037:
.LBE12424:
.LBE12428:
.LBB12429:
.LBB12427:
	.loc 13 21 0
	str	r3, [r2]
.LBE12427:
.LBE12429:
.LBE12430:
	.loc 53 172 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.LVL5038:
.L4431:
	.cfi_restore_state
.LBB12431:
.LBB12432:
	.loc 13 27 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r3, [r3]
.LBE12432:
.LBE12431:
	.loc 53 56 0
	ldrb	r0, [r3]	@ zero_extendqisi2
.LVL5039:
	bl	zynq_uart_putchar
.LVL5040:
	.loc 53 57 0
	b	.L4428
.LVL5041:
.L4433:
	.loc 53 64 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC240
.LVL5042:
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC240
	ldr	r1, [r3]
	bl	kprintf
.LVL5043:
	.loc 53 65 0
	bl	capDL
.LVL5044:
	.loc 53 66 0
	b	.L4428
.LVL5045:
.L4412:
.LBB12433:
	.loc 53 94 0
	ldrb	r3, [r0, #484]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L4414
.LVL5046:
	.loc 53 95 0
	add	r3, r5, #140
	movw	r0, #:lower16:.LC3
	str	r3, [sp]
	movt	r0, #:upper16:.LC3
	ldr	ip, [r5, #68]
	mov	r3, r5
	ldr	r1, .L4438
.LVL5047:
	mov	r2, #95
	str	ip, [sp, #4]
	bl	kprintf
.LVL5048:
	movw	r0, #:lower16:.LC243
	movt	r0, #:upper16:.LC243
.LVL5049:
.L4430:
	.loc 53 90 0
	bl	kprintf
.LVL5050:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL5051:
	.loc 53 91 0
	bl	halt
.LVL5052:
.L4432:
.LBE12433:
	.loc 53 60 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC239
.LVL5053:
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC239
	ldr	r1, [r3]
	bl	kprintf
.LVL5054:
	.loc 53 61 0
	bl	halt
.LVL5055:
.L4437:
.LBB12434:
.LBB12419:
.LBB12405:
	bl	cap_thread_cap_get_capTCBPtr.isra.59.part.60
.LVL5056:
.L4410:
.LBE12405:
.LBE12419:
	.loc 53 90 0
	add	r3, r5, #140
	movw	r0, #:lower16:.LC3
	str	r3, [sp]
	movt	r0, #:upper16:.LC3
	ldr	ip, [r5, #68]
	mov	r3, r5
	ldr	r1, .L4438
.LVL5057:
	mov	r2, #90
	str	ip, [sp, #4]
	bl	kprintf
.LVL5058:
	movw	r0, #:lower16:.LC242
	movt	r0, #:upper16:.LC242
	b	.L4430
.LVL5059:
.L4436:
	.loc 53 84 0
	ldr	ip, [r5]
.LVL5060:
	movw	r0, #:lower16:.LC3
	movt	r0, #:upper16:.LC3
	ldr	r1, .L4438
	mov	r2, #84
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL5061:
	str	ip, [sp, #4]
	bl	kprintf
.LVL5062:
	movw	r0, #:lower16:.LC241
	movt	r0, #:upper16:.LC241
	b	.L4430
.L4439:
	.align	2
.L4438:
	.word	.LANCHOR7-3132
.LBE12434:
	.cfi_endproc
.LFE279:
	.size	handleUnknownSyscall, .-handleUnknownSyscall
	.align	2
	.global	putDebugChar
	.type	putDebugChar, %function
putDebugChar:
.LFB680:
	.loc 6 51 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL5063:
	.loc 6 52 0
	mvn	r1, #1040384
.L4441:
	.loc 6 52 0 is_stmt 0 discriminator 1
	ldr	r3, [r1, #-4051]
	mvn	r2, #1040384
	tst	r3, #8
	beq	.L4441
	.loc 6 53 0 is_stmt 1
	str	r0, [r2, #-4047]
	bx	lr
	.cfi_endproc
.LFE680:
	.size	putDebugChar, .-putDebugChar
	.align	2
	.global	getDebugChar
	.type	getDebugChar, %function
getDebugChar:
.LFB681:
	.loc 6 57 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 6 58 0
	mvn	r1, #1040384
.L4445:
	.loc 6 58 0 is_stmt 0 discriminator 1
	ldr	r3, [r1, #-4051]
	mvn	r2, #1040384
	tst	r3, #256
	beq	.L4445
	.loc 6 59 0 is_stmt 1
	ldr	r0, [r2, #-4047]
	.loc 6 60 0
	uxtb	r0, r0
	bx	lr
	.cfi_endproc
.LFE681:
	.size	getDebugChar, .-getDebugChar
	.align	2
	.global	strnlen
	.type	strnlen, %function
strnlen:
.LFB682:
	.loc 32 17 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL5064:
	.loc 32 19 0
	cmp	r1, #0
	beq	.L4449
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L4451
	mov	r3, #0
	b	.L4450
.LVL5065:
.L4457:
	.loc 32 19 0 is_stmt 0 discriminator 3
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L4451
.LVL5066:
.L4450:
	.loc 32 19 0 discriminator 4
	add	r3, r3, #1
.LVL5067:
	cmp	r3, r1
	bne	.L4457
.LVL5068:
.L4449:
	.loc 32 21 0 is_stmt 1
	mov	r0, r1
	bx	lr
.L4451:
	.loc 32 19 0
	mov	r1, r3
.LVL5069:
	.loc 32 21 0
	mov	r0, r1
	bx	lr
	.cfi_endproc
.LFE682:
	.size	strnlen, .-strnlen
	.align	2
	.global	strlcpy
	.type	strlcpy, %function
strlcpy:
.LFB683:
	.loc 32 24 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5070:
	.loc 32 26 0
	cmp	r2, #1
	.loc 32 24 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 32 24 0
	mov	r4, r0
	.loc 32 26 0
	bls	.L4461
	ldrb	r3, [r1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L4462
	sub	lr, r0, #1
	mov	ip, #1
	b	.L4460
.LVL5071:
.L4466:
	.loc 32 26 0 is_stmt 0 discriminator 3
	ldrb	r3, [r1, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L4459
	mov	ip, r0
.LVL5072:
.L4460:
	.loc 32 26 0 discriminator 4
	add	r0, ip, #1
	.loc 32 27 0 is_stmt 1 discriminator 4
	strb	r3, [lr, #1]!
.LVL5073:
	.loc 32 26 0 discriminator 4
	cmp	r0, r2
	bne	.L4466
.LVL5074:
.L4459:
	.loc 32 29 0
	mov	r3, #0
	.loc 32 31 0
	mov	r0, ip
	.loc 32 29 0
	strb	r3, [r4, ip]
	.loc 32 31 0
	ldmfd	sp!, {r4, pc}
.LVL5075:
.L4461:
	.loc 32 26 0
	mov	ip, #0
	b	.L4459
.L4462:
	mov	ip, r3
	b	.L4459
	.cfi_endproc
.LFE683:
	.size	strlcpy, .-strlcpy
	.align	2
	.global	strlcat
	.type	strlcat, %function
strlcat:
.LFB684:
	.loc 32 34 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5076:
	.loc 32 37 0
	cmp	r2, #0
.LVL5077:
	beq	.L4486
	.loc 32 34 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 32 37 0
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L4476
	add	lr, r0, #1
	mov	r3, #0
	b	.L4470
.LVL5078:
.L4489:
	.loc 32 37 0 is_stmt 0 discriminator 3
	ldrb	r4, [ip]	@ zero_extendqisi2
	cmp	r4, #0
	beq	.L4488
.LVL5079:
.L4470:
	.loc 32 37 0 discriminator 4
	add	r3, r3, #1
.LVL5080:
	mov	ip, lr
	cmp	r3, r2
	add	lr, lr, #1
	bne	.L4489
.LVL5081:
	.loc 32 47 0 is_stmt 1
	mov	r0, r2
.LVL5082:
	ldmfd	sp!, {r4, pc}
.LVL5083:
.L4488:
	add	lr, r3, #1
.LVL5084:
.L4469:
	.loc 32 41 0 discriminator 1
	cmp	r2, lr
	bls	.L4478
	.loc 32 41 0 is_stmt 0
	ldrb	r4, [r1]	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L4474
	b	.L4478
.LVL5085:
.L4490:
	.loc 32 41 0 discriminator 2
	ldrb	r4, [r1, #1]!	@ zero_extendqisi2
	cmp	r4, #0
	beq	.L4487
	mov	lr, ip
.LVL5086:
.L4474:
	.loc 32 41 0 discriminator 3
	add	ip, lr, #1
	.loc 32 42 0 is_stmt 1 discriminator 3
	strb	r4, [r0, r3]
.LVL5087:
	.loc 32 41 0 discriminator 3
	cmp	r2, ip
	mov	r3, lr
	bhi	.L4490
.L4487:
	mov	r2, lr
.LVL5088:
	add	ip, r0, lr
.LVL5089:
.L4472:
	.loc 32 44 0
	mov	r3, #0
	.loc 32 47 0
	mov	r0, r2
.LVL5090:
	.loc 32 44 0
	strb	r3, [ip]
.LVL5091:
	.loc 32 47 0
	ldmfd	sp!, {r4, pc}
.LVL5092:
.L4478:
	.loc 32 41 0
	mov	r2, r3
.LVL5093:
	b	.L4472
.LVL5094:
.L4486:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 14
	.loc 32 47 0
	mov	r0, r2
.LVL5095:
	bx	lr
.LVL5096:
.L4476:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 32 37 0
	mov	ip, r0
	mov	lr, #1
	b	.L4469
	.cfi_endproc
.LFE684:
	.size	strlcat, .-strlcat
	.align	2
	.global	memzero
	.type	memzero, %function
memzero:
.LFB685:
	.file 54 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/util.c"
	.loc 54 28 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5097:
	.loc 54 32 0
	tst	r0, #3
	.loc 54 28 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 54 32 0
	bne	.L4499
	.loc 54 33 0
	ands	r3, r1, #3
	bne	.L4493
	.loc 54 41 0
	cmp	r1, #0
	beq	.L4500
.LVL5098:
.L4495:
	subs	r1, r1, #4
	.loc 54 42 0
	str	r3, [r0], #4
.LVL5099:
	.loc 54 41 0
	bne	.L4495
	ldmfd	sp!, {r3, pc}
.LVL5100:
.L4500:
	ldmfd	sp!, {r3, pc}
.L4499:
.LVL5101:
.LBB12437:
.LBB12438:
	.loc 54 32 0
	movw	r0, #:lower16:.LC244
.LVL5102:
	movw	r1, #:lower16:.LC245
.LVL5103:
	movt	r0, #:upper16:.LC244
	movt	r1, #:upper16:.LC245
	mov	r2, #32
	ldr	r3, .L4501
	bl	_assert_fail
.LVL5104:
.L4493:
.LBE12438:
.LBE12437:
	.loc 54 33 0 discriminator 1
	movw	r0, #:lower16:.LC246
.LVL5105:
	movw	r1, #:lower16:.LC245
.LVL5106:
	movt	r0, #:upper16:.LC246
	movt	r1, #:upper16:.LC245
	mov	r2, #33
	ldr	r3, .L4501
	bl	_assert_fail
.LVL5107:
.L4502:
	.align	2
.L4501:
	.word	.LANCHOR7-3108
	.cfi_endproc
.LFE685:
	.size	memzero, .-memzero
	.section	.boot.text
	.align	2
	.global	map_kernel_window
	.type	map_kernel_window, %function
map_kernel_window:
.LFB323:
	.loc 14 160 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5108:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 14 168 0
	mov	r3, #3584
	ldr	lr, .L4523
	.loc 14 167 0
	mov	ip, #0
.LVL5109:
.L4504:
.LBB12468:
.LBB12469:
.LBB12470:
	.loc 28 896 0
	mov	r2, ip, lsr #20
.LBE12470:
.LBE12469:
	.loc 14 187 0
	add	r0, r3, #16
.LBB12473:
.LBB12471:
	.loc 28 932 0
	movw	r1, #1550
	.loc 28 896 0
	mov	r2, r2, asl #20
.LBE12471:
.LBE12473:
	.loc 14 187 0
	cmp	r0, r3
.LBB12474:
.LBB12472:
	.loc 28 932 0
	movt	r1, 4
	orr	r1, r2, r1
.LVL5110:
.LBE12472:
.LBE12474:
	.loc 14 187 0
	movhi	r2, lr
	bls	.L4521
.LVL5111:
.L4505:
	.loc 14 187 0 is_stmt 0 discriminator 3
	add	r3, r3, #1
.LVL5112:
	.loc 14 188 0 is_stmt 1 discriminator 3
	str	r1, [r2], #4
	.loc 14 187 0 discriminator 3
	cmp	r3, r0
	bcc	.L4505
.LVL5113:
.LBE12468:
	.loc 14 170 0
	cmp	r0, #4080
.LBB12475:
	.loc 14 190 0
	add	ip, ip, #16777216
.LVL5114:
	add	lr, lr, #64
.LBE12475:
	.loc 14 170 0
	beq	.L4522
.LVL5115:
.L4507:
	.loc 14 160 0
	mov	r3, r0
.LVL5116:
	b	.L4504
.LVL5117:
.L4522:
	ldr	r1, .L4523+4
.LVL5118:
	.loc 14 198 0
	mov	r0, #0
.LVL5119:
	movt	r0, 8176
.LBB12476:
	.loc 14 190 0
	mov	r2, #520093696
.LVL5120:
.L4510:
.LBE12476:
.LBB12477:
.LBB12478:
	.loc 28 896 0
	mov	r3, r2, lsr #20
.LBE12478:
.LBE12477:
	.loc 14 215 0
	add	r2, r2, #1048576
.LVL5121:
	.loc 14 198 0
	cmp	r2, r0
.LBB12480:
.LBB12479:
	.loc 28 896 0
	mov	r3, r3, asl #20
	.loc 28 932 0
	orr	r3, r3, #1536
	orr	r3, r3, #14
.LBE12479:
.LBE12480:
	.loc 14 214 0
	str	r3, [r1, #4]!
	.loc 14 198 0
	bne	.L4510
.LVL5122:
.LBB12481:
.LBB12482:
	.loc 3 51 0
	ldr	r4, .L4523+8
.LBE12482:
.LBE12481:
	.loc 14 261 0
	mov	r1, #1024
	.loc 14 253 0
	ldr	r2, .L4523+12
.LVL5123:
.LBB12483:
.LBB12484:
	.loc 28 846 0
	bic	r3, r4, #1020
.LBE12484:
.LBE12483:
	.loc 14 261 0
	add	r0, r4, #-536870912
.LBB12486:
.LBB12485:
	.loc 28 846 0
	bic	r3, r3, #3
	.loc 28 855 0
	orr	r3, r3, #512
	orr	r3, r3, #1
.LBE12485:
.LBE12486:
	.loc 14 253 0
	str	r3, [r2, #4092]
	.loc 14 261 0
	bl	memzero
.LVL5124:
	.loc 14 264 0
	mov	r1, #0
	ldr	r0, .L4523+16
	movt	r1, 65535
	mov	r2, #1
	mov	r3, #3
	bl	map_kernel_frame
.LVL5125:
	.loc 14 276 0
	mov	r1, #49152
	ldr	r0, .L4523+20
	movt	r1, 65535
	mov	r2, #2
	mov	r3, #7
	bl	map_kernel_frame
.LVL5126:
	.loc 14 288 0
	mov	r1, #61440
	add	r0, r4, #4096
	movt	r1, 65535
	mov	r2, #1
	mov	r3, #7
	bl	map_kernel_frame
.LVL5127:
	.loc 14 300 0
	ldmfd	sp!, {r4, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 14 299 0
	b	map_kernel_devices
.LVL5128:
.L4521:
	.cfi_restore_state
.LBB12487:
	.loc 14 190 0
	add	ip, ip, #16777216
.LVL5129:
	add	lr, lr, #64
	b	.L4507
.L4524:
	.align	2
.L4523:
	.word	.LANCHOR0+14336
	.word	.LANCHOR0+16316
	.word	.LANCHOR6+536866840
	.word	.LANCHOR0+12288
	.word	arm_vector_table+536870912
	.word	.LANCHOR2+536870928
.LBE12487:
	.cfi_endproc
.LFE323:
	.size	map_kernel_window, .-map_kernel_window
	.text
	.align	2
	.global	performASIDControlInvocation
	.type	performASIDControlInvocation, %function
performASIDControlInvocation:
.LFB375:
	.loc 14 2192 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5130:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	mov	r7, r2
.LBB12498:
.LBB12499:
	.loc 28 1114 0
	ldr	r2, [r2]
.LVL5131:
.LBE12499:
.LBE12498:
	.loc 14 2192 0
	mov	r4, r3
	sub	sp, sp, #12
	.cfi_def_cfa_offset 32
	ldr	r3, [r7, #4]
.LVL5132:
.LBB12502:
.LBB12500:
	.loc 28 1114 0
	and	r2, r2, #15
	cmp	r2, #2
	bne	.L4531
	.loc 28 1117 0
	and	r3, r3, #31
.LVL5133:
.LBE12500:
.LBE12502:
	.loc 14 2196 0
	mov	ip, #32
	.loc 14 2197 0
	sub	r2, r3, #4
	mov	r6, r1
.LBB12503:
.LBB12504:
	.loc 28 1108 0
	orr	r3, r3, ip, asl r2
.LVL5134:
.LBE12504:
.LBE12503:
	.loc 14 2199 0
	mov	r1, #4096
.LVL5135:
	mov	r5, r0
.LBB12506:
.LBB12505:
	.loc 28 1108 0
	str	r3, [r7, #4]
.LVL5136:
.LBE12505:
.LBE12506:
	.loc 14 2199 0
	bl	memzero
.LVL5137:
.LBB12507:
.LBB12508:
	.loc 28 1938 0
	mov	r3, r4, lsr #18
	mov	r3, r3, asl #18
	cmp	r3, #0
	bne	.L4532
.LVL5138:
	.loc 28 1941 0
	tst	r5, #15
	bne	.L4533
.LVL5139:
	.loc 28 1942 0
	bic	r1, r5, #15
	.loc 28 1947 0
	str	r4, [sp, #4]
	.loc 28 1945 0
	orr	r1, r1, #5
.LBE12508:
.LBE12507:
	.loc 14 2202 0
	mov	r2, r7
.LBB12511:
.LBB12509:
	.loc 28 1947 0
	str	r1, [sp]
.LBE12509:
.LBE12511:
	.loc 14 2202 0
	add	r1, sp, #8
	ldmdb	r1, {r0, r1}
	mov	r3, r6
	bl	cteInsert
.LVL5140:
	.loc 14 2205 0
	ubfx	r0, r4, #0, #10
	cmp	r0, #0
	bne	.L4534
	.loc 14 2206 0
	mov	r4, r4, lsr #10
.LVL5141:
	movw	r3, #:lower16:armKSASIDTable
	movt	r3, #:upper16:armKSASIDTable
	str	r5, [r3, r4, asl #2]
	.loc 14 2209 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL5142:
.L4531:
	.cfi_restore_state
.LBB12512:
.LBB12501:
	bl	cap_untyped_cap_get_capBlockSize.part.146
.LVL5143:
.L4534:
.LBE12501:
.LBE12512:
.LBB12513:
.LBB12514:
	.loc 14 2205 0
	movw	r0, #:lower16:.LC127
	movw	r1, #:lower16:.LC23
	movt	r0, #:upper16:.LC127
	movt	r1, #:upper16:.LC23
	movw	r2, #2205
	ldr	r3, .L4535
	bl	_assert_fail
.LVL5144:
.L4533:
.LBE12514:
.LBE12513:
.LBB12515:
.LBB12510:
	.loc 28 1941 0
	movw	r0, #:lower16:.LC247
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC247
	movt	r1, #:upper16:.LC30
	movw	r2, #1941
	ldr	r3, .L4535+4
	bl	_assert_fail
.LVL5145:
.L4532:
	bl	cap_asid_pool_cap_new.part.151
.LVL5146:
.L4536:
	.align	2
.L4535:
	.word	.LANCHOR7-3100
	.word	.LANCHOR4+2120
.LBE12510:
.LBE12515:
	.cfi_endproc
.LFE375:
	.size	performASIDControlInvocation, .-performASIDControlInvocation
	.align	2
	.global	Arch_createObject
	.type	Arch_createObject, %function
Arch_createObject:
.LFB462:
	.loc 23 365 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5147:
	.loc 23 366 0
	sub	r1, r1, #5
.LVL5148:
	.loc 23 365 0
	stmfd	sp!, {r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 23 365 0
	mov	r5, r0
	mov	r4, r2
	.loc 23 366 0
	cmp	r1, #5
	ldrls	pc, [pc, r1, asl #2]
	b	.L4538
.L4540:
	.word	.L4539
	.word	.L4541
	.word	.L4542
	.word	.L4543
	.word	.L4544
	.word	.L4545
.L4545:
	.loc 23 443 0
	mov	r0, r2
.LVL5149:
	mov	r1, #16384
.LVL5150:
	bl	memzero
.LVL5151:
	movw	r2, #:lower16:.LANCHOR0
	movw	r1, #3585
	movt	r2, #:upper16:.LANCHOR0
	mov	r3, #3584
	b	.L4565
.LVL5152:
.L4566:
	add	r3, r3, #1
	add	r1, r1, #1
.L4565:
.LVL5153:
.LBB12566:
.LBB12567:
	.loc 14 332 0
	cmp	r3, #4080
	beq	.L4566
	.loc 14 333 0
	ldr	r0, [r2, r3, asl #2]
	.loc 14 331 0
	cmp	r1, #4096
	.loc 14 333 0
	str	r0, [r4, r3, asl #2]
.LVL5154:
	.loc 14 331 0
	bne	.L4566
.LVL5155:
.LBE12567:
.LBE12566:
	.loc 23 447 0
	add	r2, r4, #16320
.LBB12568:
.LBB12569:
	.loc 15 95 0
	mov	r3, r4, lsr #5
.LVL5156:
.LBE12569:
.LBE12568:
	.loc 23 447 0
	add	r2, r2, #63
.LBB12575:
.LBB12574:
	.loc 15 95 0
	mov	r2, r2, lsr #5
	add	r1, r2, #1
.LVL5157:
	cmp	r3, r1
	bcs	.L4570
.L4578:
.LVL5158:
	.loc 15 96 0
	mov	r2, r3, asl #5
.LVL5159:
.LBB12570:
.LBB12571:
	.loc 4 212 0
@ 212 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c7, c11, 1
@ 0 "" 2
.LBB12572:
.LBB12573:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE12573:
.LBE12572:
.LBE12571:
.LBE12570:
	.loc 15 95 0
	add	r3, r3, #1
.LVL5160:
	cmp	r3, r1
	bne	.L4578
.LVL5161:
.L4570:
.LBE12574:
.LBE12575:
.LBB12576:
.LBB12577:
	.loc 28 2123 0
	ubfx	r3, r4, #0, #14
.LVL5162:
	cmp	r3, #0
	bne	.L4596
.LVL5163:
	.loc 28 2124 0
	bic	r4, r4, #16320
.LVL5164:
	.loc 28 2129 0
	str	r3, [r5, #4]
	.loc 28 2124 0
	bic	r4, r4, #63
.LBE12577:
.LBE12576:
	.loc 23 462 0
	mov	r0, r5
.LBB12580:
.LBB12578:
	.loc 28 2127 0
	orr	r4, r4, #9
	.loc 28 2129 0
	str	r4, [r5]
.LBE12578:
.LBE12580:
	.loc 23 462 0
	ldmfd	sp!, {r3, r4, r5, pc}
.LVL5165:
.L4539:
	.loc 23 368 0
	mov	r0, r2
.LVL5166:
	mov	r1, #4096
	bl	memzero
.LVL5167:
	.loc 23 374 0
	add	r2, r4, #4080
.LBB12581:
.LBB12582:
	.loc 15 95 0
	mov	r3, r4, lsr #5
.LVL5168:
.LBE12582:
.LBE12581:
	.loc 23 374 0
	add	r2, r2, #15
.LBB12588:
.LBB12587:
	.loc 15 95 0
	mov	r2, r2, lsr #5
	add	r1, r2, #1
	cmp	r3, r1
	bcs	.L4549
.L4573:
.LVL5169:
	.loc 15 96 0
	mov	r2, r3, asl #5
.LVL5170:
.LBB12583:
.LBB12584:
	.loc 4 212 0
@ 212 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c7, c11, 1
@ 0 "" 2
.LBB12585:
.LBB12586:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE12586:
.LBE12585:
.LBE12584:
.LBE12583:
	.loc 15 95 0
	add	r3, r3, #1
.LVL5171:
	cmp	r3, r1
	bne	.L4573
.LVL5172:
.L4549:
.LBE12587:
.LBE12588:
.LBB12589:
.LBB12590:
	.loc 28 1639 0
	ubfx	r3, r4, #0, #12
.LVL5173:
	cmp	r3, #0
	bne	.L4597
.LVL5174:
	.loc 28 1640 0
	bic	r4, r4, #4080
.LVL5175:
	.loc 28 1645 0
	mov	r3, #3145728
	.loc 28 1640 0
	bic	r4, r4, #15
	.loc 28 1645 0
	str	r3, [r5, #4]
	.loc 28 1640 0
	mov	r4, r4, lsr #8
.LBE12590:
.LBE12589:
	.loc 23 462 0
	mov	r0, r5
.LBB12593:
.LBB12591:
	.loc 28 1643 0
	orr	r3, r4, #1
	.loc 28 1645 0
	str	r3, [r5]
.LBE12591:
.LBE12593:
	.loc 23 462 0
	ldmfd	sp!, {r3, r4, r5, pc}
.LVL5176:
.L4541:
	.loc 23 384 0
	mov	r0, r2
.LVL5177:
	mov	r1, #65536
	bl	memzero
.LVL5178:
	.loc 23 390 0
	add	r2, r4, #65280
.LBB12594:
.LBB12595:
	.loc 15 95 0
	mov	r3, r4, lsr #5
.LVL5179:
.LBE12595:
.LBE12594:
	.loc 23 390 0
	add	r2, r2, #255
.LBB12601:
.LBB12600:
	.loc 15 95 0
	mov	r2, r2, lsr #5
	add	r1, r2, #1
	cmp	r3, r1
	bcs	.L4554
.L4574:
.LVL5180:
	.loc 15 96 0
	mov	r2, r3, asl #5
.LVL5181:
.LBB12596:
.LBB12597:
	.loc 4 212 0
@ 212 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c7, c11, 1
@ 0 "" 2
.LBB12598:
.LBB12599:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE12599:
.LBE12598:
.LBE12597:
.LBE12596:
	.loc 15 95 0
	add	r3, r3, #1
.LVL5182:
	cmp	r3, r1
	bne	.L4574
.LVL5183:
.L4554:
.LBE12600:
.LBE12601:
.LBB12602:
.LBB12603:
	.loc 28 1789 0
	ubfx	r3, r4, #0, #14
.LVL5184:
	cmp	r3, #0
	bne	.L4552
.LVL5185:
	.loc 28 1790 0
	bic	r4, r4, #16320
.LVL5186:
	.loc 28 1795 0
	mov	r3, #0
	.loc 28 1790 0
	bic	r4, r4, #63
	.loc 28 1795 0
	movt	r3, 16396
	.loc 28 1790 0
	mov	r4, r4, lsr #10
	.loc 28 1795 0
	str	r3, [r5, #4]
.LBE12603:
.LBE12602:
	.loc 23 462 0
	mov	r0, r5
.LBB12606:
.LBB12604:
	.loc 28 1793 0
	orr	r3, r4, #3
	.loc 28 1795 0
	str	r3, [r5]
.LBE12604:
.LBE12606:
	.loc 23 462 0
	ldmfd	sp!, {r3, r4, r5, pc}
.LVL5187:
.L4543:
	.loc 23 416 0
	mov	r0, r2
.LVL5188:
	mov	r1, #16777216
	bl	memzero
.LVL5189:
	.loc 23 422 0
	add	r2, r4, #16777216
.LBB12607:
.LBB12608:
	.loc 15 95 0
	mov	r3, r4, lsr #5
.LVL5190:
.LBE12608:
.LBE12607:
	.loc 23 422 0
	sub	r2, r2, #1
.LBB12614:
.LBB12613:
	.loc 15 95 0
	mov	r2, r2, lsr #5
	add	r1, r2, #1
	cmp	r3, r1
	bcs	.L4560
.L4576:
.LVL5191:
	.loc 15 96 0
	mov	r2, r3, asl #5
.LVL5192:
.LBB12609:
.LBB12610:
	.loc 4 212 0
@ 212 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c7, c11, 1
@ 0 "" 2
.LBB12611:
.LBB12612:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE12612:
.LBE12611:
.LBE12610:
.LBE12609:
	.loc 15 95 0
	add	r3, r3, #1
.LVL5193:
	cmp	r3, r1
	bne	.L4576
.LVL5194:
.L4560:
.LBE12613:
.LBE12614:
.LBB12615:
.LBB12616:
	.loc 28 1789 0
	ubfx	r3, r4, #0, #14
.LVL5195:
	cmp	r3, #0
	bne	.L4552
.LVL5196:
	.loc 28 1790 0
	bic	r4, r4, #16320
.LVL5197:
	.loc 28 1795 0
	mov	r3, #0
	.loc 28 1790 0
	bic	r4, r4, #63
	.loc 28 1795 0
	movt	r3, 49164
	.loc 28 1790 0
	mov	r4, r4, lsr #10
	.loc 28 1795 0
	str	r3, [r5, #4]
.LBE12616:
.LBE12615:
	.loc 23 462 0
	mov	r0, r5
.LBB12618:
.LBB12617:
	.loc 28 1793 0
	orr	r3, r4, #3
	.loc 28 1795 0
	str	r3, [r5]
.LBE12617:
.LBE12618:
	.loc 23 462 0
	ldmfd	sp!, {r3, r4, r5, pc}
.LVL5198:
.L4542:
	.loc 23 400 0
	mov	r0, r2
.LVL5199:
	mov	r1, #1048576
	bl	memzero
.LVL5200:
	.loc 23 406 0
	sub	r2, r4, #-67108863
.LBB12619:
.LBB12620:
	.loc 15 95 0
	mov	r3, r4, lsr #5
.LVL5201:
.LBE12620:
.LBE12619:
	.loc 23 406 0
	sub	r2, r2, #66060288
.LBB12626:
.LBB12625:
	.loc 15 95 0
	mov	r2, r2, lsr #5
	add	r1, r2, #1
	cmp	r3, r1
	bcs	.L4557
.L4575:
.LVL5202:
	.loc 15 96 0
	mov	r2, r3, asl #5
.LVL5203:
.LBB12621:
.LBB12622:
	.loc 4 212 0
@ 212 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c7, c11, 1
@ 0 "" 2
.LBB12623:
.LBB12624:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE12624:
.LBE12623:
.LBE12622:
.LBE12621:
	.loc 15 95 0
	add	r3, r3, #1
.LVL5204:
	cmp	r3, r1
	bne	.L4575
.LVL5205:
.L4557:
.LBE12625:
.LBE12626:
.LBB12627:
.LBB12628:
	.loc 28 1789 0
	ubfx	r3, r4, #0, #14
.LVL5206:
	cmp	r3, #0
	bne	.L4552
.LVL5207:
	.loc 28 1790 0
	bic	r4, r4, #16320
.LVL5208:
	.loc 28 1795 0
	mov	r3, #0
	.loc 28 1790 0
	bic	r4, r4, #63
	.loc 28 1795 0
	movt	r3, 32780
	.loc 28 1790 0
	mov	r4, r4, lsr #10
	.loc 28 1795 0
	str	r3, [r5, #4]
.LBE12628:
.LBE12627:
	.loc 23 462 0
	mov	r0, r5
.LBB12630:
.LBB12629:
	.loc 28 1793 0
	orr	r3, r4, #3
	.loc 28 1795 0
	str	r3, [r5]
.LBE12629:
.LBE12630:
	.loc 23 462 0
	ldmfd	sp!, {r3, r4, r5, pc}
.LVL5209:
.L4544:
	.loc 23 432 0
	mov	r0, r2
.LVL5210:
	mov	r1, #1024
	bl	memzero
.LVL5211:
	.loc 23 435 0
	add	r2, r4, #1020
.LBB12631:
.LBB12632:
	.loc 15 95 0
	mov	r3, r4, lsr #5
.LVL5212:
.LBE12632:
.LBE12631:
	.loc 23 435 0
	add	r2, r2, #3
.LBB12638:
.LBB12637:
	.loc 15 95 0
	mov	r2, r2, lsr #5
	add	r1, r2, #1
	cmp	r3, r1
	bcs	.L4564
.L4577:
.LVL5213:
	.loc 15 96 0
	mov	r2, r3, asl #5
.LVL5214:
.LBB12633:
.LBB12634:
	.loc 4 212 0
@ 212 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c7, c11, 1
@ 0 "" 2
.LBB12635:
.LBB12636:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE12636:
.LBE12635:
.LBE12634:
.LBE12633:
	.loc 15 95 0
	add	r3, r3, #1
.LVL5215:
	cmp	r3, r1
	bne	.L4577
.LVL5216:
.L4564:
.LBE12637:
.LBE12638:
.LBB12639:
.LBB12640:
	.loc 28 1995 0
	ubfx	r3, r4, #0, #10
.LVL5217:
	cmp	r3, #0
	bne	.L4598
.LVL5218:
	.loc 28 1996 0
	bic	r4, r4, #1020
.LVL5219:
	.loc 28 2001 0
	str	r3, [r5, #4]
	.loc 28 1996 0
	bic	r4, r4, #3
.LBE12640:
.LBE12639:
	.loc 23 462 0
	mov	r0, r5
.LBB12643:
.LBB12641:
	.loc 28 1999 0
	orr	r4, r4, #7
	.loc 28 2001 0
	str	r4, [r5]
.LBE12641:
.LBE12643:
	.loc 23 462 0
	ldmfd	sp!, {r3, r4, r5, pc}
.LVL5220:
.L4538:
	.loc 23 460 0
	movw	r0, #:lower16:.LC250
.LVL5221:
	movw	r1, #:lower16:.LC25
	movt	r0, #:upper16:.LC250
	movt	r1, #:upper16:.LC25
	mov	r2, #460
.LVL5222:
	ldr	r3, .L4599
.LVL5223:
	bl	_fail
.LVL5224:
.L4596:
.LBB12644:
.LBB12579:
	.loc 28 2123 0
	movw	r0, #:lower16:.LC249
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC249
	movt	r1, #:upper16:.LC30
	movw	r2, #2123
	ldr	r3, .L4599+4
	bl	_assert_fail
.LVL5225:
.L4552:
.LBE12579:
.LBE12644:
.LBB12645:
.LBB12605:
	.loc 28 1789 0
	movw	r0, #:lower16:.LC137
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC137
	movt	r1, #:upper16:.LC30
	movw	r2, #1789
	ldr	r3, .L4599+8
	bl	_assert_fail
.LVL5226:
.L4597:
.LBE12605:
.LBE12645:
.LBB12646:
.LBB12592:
	.loc 28 1639 0
	movw	r0, #:lower16:.LC139
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC139
	movt	r1, #:upper16:.LC30
	movw	r2, #1639
	ldr	r3, .L4599+12
	bl	_assert_fail
.LVL5227:
.L4598:
.LBE12592:
.LBE12646:
.LBB12647:
.LBB12642:
	.loc 28 1995 0
	movw	r0, #:lower16:.LC248
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC248
	movt	r1, #:upper16:.LC30
	movw	r2, #1995
	ldr	r3, .L4599+16
	bl	_assert_fail
.LVL5228:
.L4600:
	.align	2
.L4599:
	.word	.LANCHOR7-3068
	.word	.LANCHOR4+756
	.word	.LANCHOR4+336
	.word	.LANCHOR4+356
	.word	.LANCHOR4+784
.LBE12642:
.LBE12647:
	.cfi_endproc
.LFE462:
	.size	Arch_createObject, .-Arch_createObject
	.section	.boot.text
	.align	2
	.global	create_root_cnode
	.type	create_root_cnode, %function
create_root_cnode:
.LFB494:
	.loc 25 137 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5229:
	.loc 25 142 0
	movw	r3, #:lower16:.LANCHOR3
	.loc 25 137 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 25 142 0
	movt	r3, #:upper16:.LANCHOR3
	mov	r2, #65536
	.loc 25 137 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 32
	.loc 25 137 0
	mov	r4, r0
	.loc 25 145 0
	mov	r0, #20
.LVL5230:
	.loc 25 142 0
	str	r2, [r3, #24]
	.loc 25 145 0
	bl	alloc_region
.LVL5231:
	.loc 25 146 0
	subs	r5, r0, #0
	beq	.L4606
	.loc 25 150 0
	mov	r1, #1048576
	bl	memzero
.LVL5232:
.LBB12654:
.LBB12655:
	.loc 28 1499 0
	tst	r5, #31
	bne	.L4607
.LVL5233:
	.loc 28 1500 0
	bic	r6, r5, #31
.LVL5234:
.LBE12655:
.LBE12654:
	.loc 25 160 0
	mov	r7, #138412032
.LBB12658:
.LBB12656:
	.loc 28 1503 0
	orr	r6, r6, #10
.LVL5235:
.LBE12656:
.LBE12658:
	.loc 25 160 0
	add	r3, sp, #8
	add	r0, r5, #32
	stmia	sp, {r6, r7}
	ldmdb	r3, {r1, r2}
	bl	write_slot
.LVL5236:
	.loc 25 163 0
	mov	r0, r4
	.loc 25 162 0
	stmia	r4, {r6, r7}
	.loc 25 163 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL5237:
.L4606:
	.cfi_restore_state
.LBB12659:
.LBB12660:
	.loc 25 147 0
	movw	r0, #:lower16:.LC251
.LVL5238:
	movt	r0, #:upper16:.LC251
	bl	kprintf
.LVL5239:
.LBE12660:
.LBE12659:
	.loc 25 163 0
	mov	r0, r4
.LBB12664:
.LBB12663:
.LBB12661:
.LBB12662:
	.loc 28 1058 0
	str	r5, [r4]
	str	r5, [r4, #4]
.LBE12662:
.LBE12661:
.LBE12663:
.LBE12664:
	.loc 25 163 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL5240:
.L4607:
	.cfi_restore_state
.LBB12665:
.LBB12657:
	.loc 28 1499 0
	movw	r0, #:lower16:.LC252
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC252
	movt	r1, #:upper16:.LC30
	movw	r2, #1499
	ldr	r3, .L4608
	bl	_assert_fail
.LVL5241:
.L4609:
	.align	2
.L4608:
	.word	.LANCHOR4+2916
.LBE12657:
.LBE12665:
	.cfi_endproc
.LFE494:
	.size	create_root_cnode, .-create_root_cnode
	.align	2
	.global	create_irq_cnode
	.type	create_irq_cnode, %function
create_irq_cnode:
.LFB495:
	.loc 25 169 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 25 172 0
	mov	r0, #12
	bl	alloc_region
.LVL5242:
	.loc 25 173 0
	subs	r4, r0, #0
	beq	.L4614
	.loc 25 177 0
	mov	r1, #4096
	bl	memzero
.LVL5243:
	.loc 25 178 0
	movw	r3, #:lower16:intStateIRQNode
	.loc 25 179 0
	mov	r0, #1
	.loc 25 178 0
	movt	r3, #:upper16:intStateIRQNode
	str	r4, [r3]
	.loc 25 180 0
	ldmfd	sp!, {r4, pc}
.LVL5244:
.L4614:
	.loc 25 174 0
	movw	r0, #:lower16:.LC253
.LVL5245:
	movt	r0, #:upper16:.LC253
	bl	kprintf
.LVL5246:
	.loc 25 175 0
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
	.cfi_endproc
.LFE495:
	.size	create_irq_cnode, .-create_irq_cnode
	.align	2
	.global	create_it_asid_pool
	.type	create_it_asid_pool, %function
create_it_asid_pool:
.LFB502:
	.loc 25 322 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5247:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	mov	r5, r0
	sub	sp, sp, #28
	.cfi_def_cfa_offset 56
	.loc 25 327 0
	mov	r0, #12
.LVL5248:
	.loc 25 322 0
	stmia	sp, {r1, r2}
	.loc 25 327 0
	bl	alloc_region
.LVL5249:
	.loc 25 328 0
	subs	r4, r0, #0
	beq	.L4722
	.loc 25 332 0
	mov	r1, #4096
	bl	memzero
.LVL5250:
.LBB12752:
.LBB12753:
	.loc 28 1941 0
	tst	r4, #15
	bne	.L4723
.LVL5251:
	ldr	r6, [sp]
	.loc 28 1942 0
	bic	r4, r4, #15
.LVL5252:
	.loc 28 1945 0
	orr	r4, r4, #5
.LVL5253:
	ldr	r8, [sp, #4]
.LVL5254:
.LBE12753:
.LBE12752:
.LBB12755:
.LBB12756:
.LBB12757:
.LBB12758:
	.loc 28 1035 0
	and	r9, r6, #14
	cmp	r9, #14
	beq	.L4619
	.loc 28 1036 0
	and	r7, r6, #15
.LVL5255:
.LBE12758:
.LBE12757:
	.loc 39 317 0
	sub	r3, r7, #2
	mov	r2, r7
	cmp	r3, #12
	ldrls	pc, [pc, r3, asl #2]
	b	.L4620
.L4622:
	.word	.L4621
	.word	.L4620
	.word	.L4623
	.word	.L4620
	.word	.L4624
	.word	.L4620
	.word	.L4625
	.word	.L4620
	.word	.L4626
	.word	.L4620
	.word	.L4627
	.word	.L4620
	.word	.L4625
.LVL5256:
.L4722:
.LBE12756:
.LBE12755:
	.loc 25 329 0
	movw	r0, #:lower16:.LC254
.LVL5257:
	movt	r0, #:upper16:.LC254
	bl	kprintf
.LVL5258:
	.loc 25 343 0
	mov	r0, r5
.LBB12825:
.LBB12826:
	.loc 28 1058 0
	str	r4, [r5]
	str	r4, [r5, #4]
.LBE12826:
.LBE12825:
	.loc 25 343 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.LVL5259:
.L4619:
	.cfi_restore_state
.LBB12827:
.LBB12817:
.LBB12760:
.LBB12759:
	.loc 28 1037 0
	uxtb	r7, r6
.LVL5260:
.LBE12759:
.LBE12760:
	.loc 39 317 0
	sub	r3, r7, #2
	mov	r2, r7
	cmp	r3, #60
	ldrls	pc, [pc, r3, asl #2]
	b	.L4620
.L4629:
	.word	.L4628
	.word	.L4620
	.word	.L4630
	.word	.L4620
	.word	.L4631
	.word	.L4620
	.word	.L4632
	.word	.L4620
	.word	.L4633
	.word	.L4620
	.word	.L4634
	.word	.L4620
	.word	.L4632
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4632
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4635
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4620
	.word	.L4632
.L4634:
	and	r7, r6, #15
.LVL5261:
.L4627:
.LBB12761:
.LBB12762:
	.loc 28 1608 0
	cmp	r7, #12
.LBE12762:
.LBE12761:
	.loc 39 331 0
	biceq	r0, r6, #508
	biceq	r0, r0, #3
	addeq	r0, r0, #96
.LBB12765:
.LBB12763:
	.loc 28 1608 0
	bne	.L4682
.LVL5262:
.L4637:
.LBE12763:
.LBE12765:
.LBE12817:
.LBE12827:
	.loc 25 334 0
	mov	r2, #0
	add	r3, sp, #8
	str	r4, [sp, #8]
	str	r2, [sp, #12]
	ldmia	r3, {r1, r2}
	bl	write_slot
.LVL5263:
.LBB12828:
.LBB12829:
.LBB12830:
.LBB12831:
	.loc 28 1035 0
	cmp	r9, #14
	andne	r7, r6, #15
	beq	.L4720
.L4704:
.LBE12831:
.LBE12830:
	.loc 39 317 0
	sub	r3, r7, #2
.LBB12835:
.LBB12832:
	.loc 28 1036 0
	mov	r2, r7
.LVL5264:
.LBE12832:
.LBE12835:
	.loc 39 317 0
	cmp	r3, #12
	ldrls	pc, [pc, r3, asl #2]
	b	.L4662
.L4664:
	.word	.L4663
	.word	.L4662
	.word	.L4665
	.word	.L4662
	.word	.L4666
	.word	.L4662
	.word	.L4712
	.word	.L4662
	.word	.L4668
	.word	.L4662
	.word	.L4669
	.word	.L4662
	.word	.L4712
.L4712:
.LBB12836:
.LBB12837:
	.loc 38 302 0
	mov	r0, #80
.LVL5265:
.L4667:
.LBE12837:
.LBE12836:
.LBE12829:
.LBE12828:
.LBB12882:
.LBB12883:
	.loc 28 2223 0
	mov	r3, #11
	mov	r6, #0
	str	r3, [sp, #16]
.LBE12883:
.LBE12882:
	.loc 25 337 0
	add	r3, sp, #24
.LBB12885:
.LBB12884:
	.loc 28 2223 0
	str	r6, [sp, #20]
.LBE12884:
.LBE12885:
	.loc 25 337 0
	ldmdb	r3, {r1, r2}
	bl	write_slot
.LVL5266:
	.loc 25 343 0
	mov	r0, r5
	.loc 25 342 0
	stmia	r5, {r4, r6}
	.loc 25 343 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 28
.LVL5267:
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.LVL5268:
.L4674:
	.cfi_restore_state
	and	r2, r6, #15
.LVL5269:
.L4666:
.LBB12886:
.LBB12876:
.LBB12855:
.LBB12856:
	.loc 28 1407 0
	cmp	r2, #6
	bne	.L4680
.LVL5270:
.L4721:
	.loc 28 1410 0
	bic	r6, r6, #15
.LVL5271:
	add	r0, r6, #80
	b	.L4667
.LVL5272:
.L4673:
	and	r2, r6, #15
.LVL5273:
.L4665:
.LBE12856:
.LBE12855:
.LBB12857:
.LBB12858:
	.loc 28 1185 0
	cmp	r2, #4
	bne	.L4679
.LVL5274:
	.loc 28 1188 0
	bic	r0, r8, #15
.LVL5275:
	add	r0, r0, #80
.LVL5276:
	b	.L4667
.LVL5277:
.L4671:
	and	r2, r6, #15
.LVL5278:
.L4663:
.LBE12858:
.LBE12857:
.LBB12859:
.LBB12860:
	.loc 28 1142 0
	cmp	r2, #2
	beq	.L4721
.LVL5279:
.L4678:
.LBE12860:
.LBE12859:
.LBE12876:
.LBE12886:
.LBB12887:
.LBB12818:
.LBB12766:
.LBB12767:
	bl	cap_untyped_cap_get_capPtr.isra.75.part.76
.LVL5280:
.L4676:
	and	r2, r6, #15
.LVL5281:
.L4669:
.LBE12767:
.LBE12766:
.LBE12818:
.LBE12887:
.LBB12888:
.LBB12877:
.LBB12861:
.LBB12862:
	.loc 28 1608 0
	cmp	r2, #12
	bne	.L4682
.LVL5282:
.LBE12862:
.LBE12861:
	.loc 39 331 0
	bic	r6, r6, #508
.LVL5283:
	bic	r6, r6, #3
	add	r0, r6, #80
	b	.L4667
.LVL5284:
.L4675:
	and	r2, r6, #15
.LVL5285:
.L4668:
.LBB12863:
.LBB12864:
	.loc 28 1577 0
	cmp	r2, #10
	bne	.L4681
.LVL5286:
	.loc 28 1580 0
	bic	r6, r6, #31
.LVL5287:
	add	r0, r6, #80
	b	.L4667
.LVL5288:
.L4630:
	and	r7, r6, #15
.LVL5289:
.L4623:
.LBE12864:
.LBE12863:
.LBE12877:
.LBE12888:
.LBB12889:
.LBB12819:
.LBB12769:
.LBB12770:
	.loc 28 1185 0
	cmp	r7, #4
	.loc 28 1188 0
	biceq	r0, r8, #15
	addeq	r0, r0, #96
	.loc 28 1185 0
	beq	.L4637
.LVL5290:
.L4679:
	bl	cap_endpoint_cap_get_capEPPtr.part.77
.LVL5291:
.L4628:
	and	r7, r6, #15
.LVL5292:
.L4621:
.LBE12770:
.LBE12769:
.LBB12771:
.LBB12768:
	.loc 28 1142 0
	cmp	r7, #2
	bne	.L4678
.LVL5293:
.L4639:
.LBE12768:
.LBE12771:
.LBB12772:
.LBB12773:
	.loc 28 1410 0
	bic	r0, r6, #15
	add	r0, r0, #96
	b	.L4637
.LVL5294:
.L4631:
	and	r7, r6, #15
.LVL5295:
.L4624:
	.loc 28 1407 0
	cmp	r7, #6
	beq	.L4639
.L4680:
	bl	cap_notification_cap_get_capNtfnPtr.isra.68.part.69
.LVL5296:
.L4633:
	and	r7, r6, #15
.LVL5297:
.L4626:
.LBE12773:
.LBE12772:
.LBB12774:
.LBB12775:
	.loc 28 1577 0
	cmp	r7, #10
	.loc 28 1580 0
	biceq	r0, r6, #31
	addeq	r0, r0, #96
	.loc 28 1577 0
	beq	.L4637
.L4681:
	bl	cap_cnode_cap_get_capCNodePtr.isra.78.part.79
.LVL5298:
.L4625:
.LBE12775:
.LBE12774:
.LBE12819:
.LBE12889:
	.loc 25 334 0
	mov	r2, #0
.LVL5299:
	add	r3, sp, #8
	str	r4, [sp, #8]
	mov	r0, #96
	str	r2, [sp, #12]
	ldmia	r3, {r1, r2}
	bl	write_slot
.LVL5300:
	b	.L4704
.LVL5301:
.L4620:
.LBB12890:
.LBB12820:
.LBB12776:
.LBB12777:
	.loc 38 302 0
	sub	r2, r2, #1
	cmp	r2, #8
	ldrls	pc, [pc, r2, asl #2]
	b	.L4706
.L4645:
	.word	.L4644
	.word	.L4706
	.word	.L4644
	.word	.L4706
	.word	.L4646
	.word	.L4706
	.word	.L4647
	.word	.L4706
	.word	.L4648
.L4648:
.LVL5302:
.LBB12778:
.LBB12779:
	.loc 28 2162 0
	and	r7, r6, #15
	cmp	r7, #9
	.loc 28 2165 0
	biceq	r0, r6, #16320
	biceq	r0, r0, #63
	addeq	r0, r0, #96
	.loc 28 2162 0
	bne	.L4701
.LVL5303:
.L4658:
.LBE12779:
.LBE12778:
.LBE12777:
.LBE12776:
.LBE12820:
.LBE12890:
	.loc 25 334 0
	mov	r2, #0
	add	r3, sp, #8
	str	r4, [sp, #8]
	str	r2, [sp, #12]
	ldmia	r3, {r1, r2}
	bl	write_slot
.LVL5304:
.LBB12891:
.LBB12878:
.LBB12865:
.LBB12833:
	.loc 28 1035 0
	cmp	r9, #14
	.loc 28 1036 0
	movne	r2, r7
	.loc 28 1035 0
	beq	.L4720
.L4662:
.LVL5305:
.LBE12833:
.LBE12865:
.LBB12866:
.LBB12852:
	.loc 38 302 0
	sub	r7, r7, #1
.LVL5306:
	cmp	r7, #8
	ldrls	pc, [pc, r7, asl #2]
	b	.L4712
.L4686:
	.word	.L4685
	.word	.L4712
	.word	.L4685
	.word	.L4712
	.word	.L4687
	.word	.L4712
	.word	.L4688
	.word	.L4712
	.word	.L4689
.LVL5307:
.L4635:
.LBE12852:
.LBE12866:
.LBE12878:
.LBE12891:
.LBB12892:
.LBB12821:
.LBB12801:
.LBB12802:
.LBB12803:
.LBB12804:
.LBB12805:
.LBB12806:
	.loc 28 2318 0
	cmp	r7, #46
	bne	.L4683
	.loc 28 2321 0
	ubfx	r3, r6, #8, #6
.LVL5308:
.LBE12806:
.LBE12805:
	.loc 39 97 0
	cmp	r3, #32
	.loc 39 100 0
	andne	r0, r3, #31
	mvnne	r3, #0
.LVL5309:
	addne	r0, r0, #1
	.loc 39 97 0
	mvneq	r0, #31
.LVL5310:
	movne	r0, r3, asl r0
.LBE12804:
.LBE12803:
	.loc 39 114 0
	and	r0, r0, r8
	add	r0, r0, #96
	b	.L4637
.LVL5311:
.L4720:
	uxtb	r7, r6
.L4661:
.LBE12802:
.LBE12801:
.LBE12821:
.LBE12892:
.LBB12893:
.LBB12879:
	.loc 39 317 0
	sub	r3, r7, #2
.LBB12867:
.LBB12834:
	.loc 28 1037 0
	mov	r2, r7
.LVL5312:
.LBE12834:
.LBE12867:
	.loc 39 317 0
	cmp	r3, #60
	ldrls	pc, [pc, r3, asl #2]
	b	.L4670
.L4672:
	.word	.L4671
	.word	.L4670
	.word	.L4673
	.word	.L4670
	.word	.L4674
	.word	.L4670
	.word	.L4712
	.word	.L4670
	.word	.L4675
	.word	.L4670
	.word	.L4676
	.word	.L4670
	.word	.L4712
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4712
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4677
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4670
	.word	.L4712
.L4677:
.LVL5313:
.LBB12868:
.LBB12869:
.LBB12870:
.LBB12871:
.LBB12872:
.LBB12873:
	.loc 28 2318 0
	cmp	r7, #46
	bne	.L4683
	.loc 28 2321 0
	ubfx	r6, r6, #8, #6
.LVL5314:
.LBE12873:
.LBE12872:
	.loc 39 97 0
	cmp	r6, #32
	.loc 39 100 0
	andne	r0, r6, #31
	mvnne	r3, #0
	addne	r0, r0, #1
	.loc 39 97 0
	mvneq	r0, #31
.LVL5315:
	movne	r0, r3, asl r0
.LBE12871:
.LBE12870:
	.loc 39 114 0
	and	r0, r0, r8
	add	r0, r0, #80
	b	.L4667
.LVL5316:
.L4632:
.LBE12869:
.LBE12868:
.LBE12879:
.LBE12893:
	.loc 25 334 0
	mov	r2, #0
	add	r3, sp, #8
	str	r4, [sp, #8]
	mov	r0, #96
	str	r2, [sp, #12]
	ldmia	r3, {r1, r2}
	bl	write_slot
.LVL5317:
	b	.L4661
.LVL5318:
.L4647:
.LBB12894:
.LBB12822:
.LBB12812:
.LBB12798:
.LBB12781:
.LBB12782:
	.loc 28 2098 0
	and	r7, r6, #15
	cmp	r7, #7
	.loc 28 2101 0
	biceq	r0, r6, #1020
	biceq	r0, r0, #3
	addeq	r0, r0, #96
	.loc 28 2098 0
	beq	.L4658
.LVL5319:
.L4700:
	bl	cap_page_table_cap_get_capPTBasePtr.isra.91.part.92
.LVL5320:
.L4646:
.LBE12782:
.LBE12781:
.LBB12783:
.LBB12784:
	.loc 28 1967 0
	and	r7, r6, #15
	cmp	r7, #5
	.loc 28 1970 0
	biceq	r0, r6, #15
	addeq	r0, r0, #96
	.loc 28 1967 0
	beq	.L4658
.L4702:
	bl	cap_asid_pool_cap_get_capASIDPool.isra.95.part.96
.LVL5321:
.L4644:
.LBE12784:
.LBE12783:
.LBB12785:
.LBB12786:
.LBB12787:
.LBB12788:
	.loc 28 1035 0
	cmp	r9, #14
	.loc 28 1037 0
	uxtbeq	r3, r6
	.loc 28 1036 0
	andne	r3, r6, #15
.LVL5322:
.LBE12788:
.LBE12787:
	.loc 38 207 0
	and	r2, r3, #253
	cmp	r2, #1
	bne	.L4694
	.loc 38 210 0
	cmp	r3, #1
	beq	.L4653
	cmp	r3, #3
	bne	.L4706
.LVL5323:
.LBB12789:
.LBB12790:
	.loc 28 1919 0
	and	r7, r6, #15
	cmp	r7, #3
	.loc 28 1922 0
	biceq	r3, r6, #-268435441
.LVL5324:
	biceq	r3, r3, #264241152
	moveq	r3, r3, asl #10
	addeq	r0, r3, #96
	.loc 28 1919 0
	beq	.L4637
.LVL5325:
.L4699:
	bl	cap_frame_cap_get_capFBasePtr.isra.87.part.88
.LVL5326:
.L4693:
	and	r2, r6, #15
.LVL5327:
.L4689:
.LBE12790:
.LBE12789:
.LBE12786:
.LBE12785:
.LBE12798:
.LBE12812:
.LBE12822:
.LBE12894:
.LBB12895:
.LBB12880:
.LBB12874:
.LBB12853:
.LBB12838:
.LBB12839:
	.loc 28 2162 0
	cmp	r2, #9
	bne	.L4701
.LVL5328:
	.loc 28 2165 0
	bic	r0, r6, #16320
	bic	r0, r0, #63
	add	r0, r0, #80
	b	.L4667
.LVL5329:
.L4692:
	and	r2, r6, #15
.LVL5330:
.L4688:
.LBE12839:
.LBE12838:
.LBB12840:
.LBB12841:
	.loc 28 2098 0
	cmp	r2, #7
	bne	.L4700
.LVL5331:
	.loc 28 2101 0
	bic	r0, r6, #1020
	bic	r0, r0, #3
	add	r0, r0, #80
	b	.L4667
.LVL5332:
.L4691:
	and	r2, r6, #15
.LVL5333:
.L4687:
.LBE12841:
.LBE12840:
.LBB12842:
.LBB12843:
	.loc 28 1967 0
	cmp	r2, #5
	bne	.L4702
.LVL5334:
	.loc 28 1970 0
	bic	r0, r6, #15
	add	r0, r0, #80
	b	.L4667
.LVL5335:
.L4685:
.LBE12843:
.LBE12842:
.LBB12844:
.LBB12845:
	.loc 38 207 0
	and	r3, r2, #253
	cmp	r3, #1
	bne	.L4694
	.loc 38 210 0
	cmp	r2, #1
	beq	.L4696
	cmp	r2, #3
	bne	.L4712
.LVL5336:
.LBB12846:
.LBB12847:
	.loc 28 1919 0
	and	r3, r6, #15
	cmp	r3, #3
	bne	.L4699
.LVL5337:
	.loc 28 1922 0
	bic	r6, r6, #-268435441
.LVL5338:
	bic	r6, r6, #264241152
	mov	r6, r6, asl #10
	add	r0, r6, #80
	b	.L4667
.LVL5339:
.L4670:
.LBE12847:
.LBE12846:
.LBE12845:
.LBE12844:
	.loc 38 302 0
	sub	r7, r7, #1
.LVL5340:
	cmp	r7, #8
	ldrls	pc, [pc, r7, asl #2]
	b	.L4712
.L4690:
	.word	.L4685
	.word	.L4712
	.word	.L4685
	.word	.L4712
	.word	.L4691
	.word	.L4712
	.word	.L4692
	.word	.L4712
	.word	.L4693
.LVL5341:
.L4706:
.LBE12853:
.LBE12874:
.LBE12880:
.LBE12895:
.LBB12896:
.LBB12823:
.LBB12813:
.LBB12799:
	mov	r0, #96
	b	.L4637
.LVL5342:
.L4653:
.LBB12795:
.LBB12793:
.LBB12791:
.LBB12792:
	.loc 28 1755 0
	and	r7, r6, #15
	cmp	r7, #1
	.loc 28 1758 0
	biceq	r3, r6, #-16777216
.LVL5343:
	biceq	r3, r3, #15
	moveq	r3, r3, asl #8
	addeq	r0, r3, #96
	.loc 28 1755 0
	beq	.L4637
.LVL5344:
.L4698:
	bl	cap_small_frame_cap_get_capFBasePtr.isra.85.part.86
.LVL5345:
.L4696:
.LBE12792:
.LBE12791:
.LBE12793:
.LBE12795:
.LBE12799:
.LBE12813:
.LBE12823:
.LBE12896:
.LBB12897:
.LBB12881:
.LBB12875:
.LBB12854:
.LBB12851:
.LBB12850:
.LBB12848:
.LBB12849:
	and	r3, r6, #15
	cmp	r3, #1
	bne	.L4698
.LVL5346:
	.loc 28 1758 0
	bic	r6, r6, #-16777216
.LVL5347:
	bic	r6, r6, #15
	mov	r6, r6, asl #8
	add	r0, r6, #80
	b	.L4667
.LVL5348:
.L4723:
.LBE12849:
.LBE12848:
.LBE12850:
.LBE12851:
.LBE12854:
.LBE12875:
.LBE12881:
.LBE12897:
.LBB12898:
.LBB12754:
	.loc 28 1941 0
	movw	r0, #:lower16:.LC247
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC247
	movt	r1, #:upper16:.LC30
	movw	r2, #1941
	ldr	r3, .L4724
	bl	_assert_fail
.LVL5349:
.L4683:
.LBE12754:
.LBE12898:
.LBB12899:
.LBB12824:
.LBB12814:
.LBB12811:
.LBB12810:
.LBB12809:
.LBB12808:
.LBB12807:
	bl	cap_zombie_cap_get_capZombieType.isra.80.part.81
.LVL5350:
.L4701:
.LBE12807:
.LBE12808:
.LBE12809:
.LBE12810:
.LBE12811:
.LBE12814:
.LBB12815:
.LBB12800:
.LBB12796:
.LBB12780:
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.93.part.94
.LVL5351:
.L4694:
.LBE12780:
.LBE12796:
.LBB12797:
.LBB12794:
	bl	generic_frame_cap_get_capFBasePtr.isra.89.part.90
.LVL5352:
.L4682:
.LBE12794:
.LBE12797:
.LBE12800:
.LBE12815:
.LBB12816:
.LBB12764:
	bl	cap_thread_cap_get_capTCBPtr.isra.59.part.60
.LVL5353:
.L4725:
	.align	2
.L4724:
	.word	.LANCHOR4+2120
.LBE12764:
.LBE12816:
.LBE12824:
.LBE12899:
	.cfi_endproc
.LFE502:
	.size	create_it_asid_pool, .-create_it_asid_pool
	.align	2
	.global	create_idle_thread
	.type	create_idle_thread, %function
create_idle_thread:
.LFB503:
	.loc 25 347 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 25 349 0
	mov	r0, #9
	bl	alloc_region
.LVL5354:
	.loc 25 350 0
	subs	r4, r0, #0
	beq	.L4730
	.loc 25 354 0
	mov	r1, #512
	.loc 25 355 0
	add	r4, r4, #256
	.loc 25 354 0
	bl	memzero
.LVL5355:
	.loc 25 355 0
	movw	r3, #:lower16:ksIdleThread
	.loc 25 356 0
	mov	r0, r4
	.loc 25 355 0
	movt	r3, #:upper16:ksIdleThread
	str	r4, [r3]
	.loc 25 356 0
	bl	configureIdleThread
.LVL5356:
	.loc 25 357 0
	mov	r0, #1
	.loc 25 358 0
	ldmfd	sp!, {r4, pc}
.LVL5357:
.L4730:
	.loc 25 351 0
	movw	r0, #:lower16:.LC255
.LVL5358:
	movt	r0, #:upper16:.LC255
	bl	kprintf
.LVL5359:
	.loc 25 352 0
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
	.cfi_endproc
.LFE503:
	.size	create_idle_thread, .-create_idle_thread
	.align	2
	.global	create_initial_thread
	.type	create_initial_thread, %function
create_initial_thread:
.LFB504:
	.loc 25 369 0
	.cfi_startproc
	@ args = 20, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5360:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	sub	sp, sp, #44
	.cfi_def_cfa_offset 80
	.loc 25 369 0
	add	r9, sp, #8
	stmia	sp, {r2, r3}
	mov	r8, sp
	stmia	r9, {r0, r1}
	.loc 25 376 0
	mov	r0, #9
	bl	alloc_region
.LVL5361:
	.loc 25 377 0
	subs	r7, r0, #0
	beq	.L4964
	.loc 25 381 0
	mov	r1, #512
	.loc 25 382 0
	add	r4, r7, #256
	.loc 25 381 0
	bl	memzero
.LVL5362:
	ldr	r5, [sp, #8]
	.loc 25 383 0
	mov	r2, #5
.LBB13117:
.LBB13118:
	.loc 42 117 0
	mov	r3, #80
.LBE13118:
.LBE13117:
	.loc 25 383 0
	str	r2, [r4, #112]
.LVL5363:
.LBB13120:
.LBB13119:
	.loc 42 117 0
	str	r3, [r4, #64]
.LVL5364:
.LBE13119:
.LBE13120:
.LBB13121:
.LBB13122:
.LBB13123:
.LBB13124:
	.loc 28 1035 0
	and	r10, r5, #14
	ldr	fp, [sp, #12]
.LVL5365:
	cmp	r10, #14
	beq	.L4734
	.loc 28 1036 0
	and	r6, r5, #15
.LBE13124:
.LBE13123:
	.loc 39 317 0
	sub	r3, r6, #2
.LBB13128:
.LBB13125:
	.loc 28 1036 0
	mov	r2, r6
.LVL5366:
.LBE13125:
.LBE13128:
	.loc 39 317 0
	cmp	r3, #12
	ldrls	pc, [pc, r3, asl #2]
	b	.L4735
.L4737:
	.word	.L4736
	.word	.L4735
	.word	.L4738
	.word	.L4735
	.word	.L4739
	.word	.L4735
	.word	.L4921
	.word	.L4735
	.word	.L4741
	.word	.L4735
	.word	.L4742
	.word	.L4735
	.word	.L4921
.LVL5367:
.L4964:
.LBE13122:
.LBE13121:
	.loc 25 378 0
	movw	r0, #:lower16:.LC256
.LVL5368:
	movt	r0, #:upper16:.LC256
	bl	kprintf
.LVL5369:
	.loc 25 379 0
	mov	r0, r7
	.loc 25 435 0
	add	sp, sp, #44
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5370:
.L4734:
	.cfi_restore_state
.LBB13195:
.LBB13189:
.LBB13129:
.LBB13126:
	.loc 28 1037 0
	uxtb	r6, r5
.LBE13126:
.LBE13129:
	.loc 39 317 0
	sub	r3, r6, #2
.LBB13130:
.LBB13127:
	.loc 28 1037 0
	mov	r2, r6
.LVL5371:
.LBE13127:
.LBE13130:
	.loc 39 317 0
	cmp	r3, #60
	ldrls	pc, [pc, r3, asl #2]
	b	.L4743
.L4745:
	.word	.L4744
	.word	.L4743
	.word	.L4746
	.word	.L4743
	.word	.L4747
	.word	.L4743
	.word	.L4921
	.word	.L4743
	.word	.L4748
	.word	.L4743
	.word	.L4749
	.word	.L4743
	.word	.L4921
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4921
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4750
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4743
	.word	.L4921
.LVL5372:
.L4921:
.LBB13131:
.LBB13132:
	.loc 38 302 0
	mov	r1, #160
.L4740:
.LBE13132:
.LBE13131:
.LBE13189:
.LBE13195:
	.loc 25 387 0
	add	r3, sp, #92
.LVL5373:
	add	r0, sp, #28
	ldmia	r3, {r2, r3}
.LVL5374:
	bl	deriveCap
.LVL5375:
	.loc 25 388 0
	ldr	r3, [sp, #28]
	cmp	r3, #0
	bne	.L4965
.LVL5376:
.LBB13196:
.LBB13197:
.LBB13198:
.LBB13199:
	.loc 28 1035 0
	cmp	r10, #14
	beq	.L4777
	.loc 28 1036 0
	and	r6, r5, #15
.LBE13199:
.LBE13198:
	.loc 39 317 0
	sub	r3, r6, #2
.LBB13203:
.LBB13200:
	.loc 28 1036 0
	mov	r2, r6
.LVL5377:
.LBE13200:
.LBE13203:
	.loc 39 317 0
	cmp	r3, #12
	ldrls	pc, [pc, r3, asl #2]
	b	.L4778
.L4780:
	.word	.L4779
	.word	.L4778
	.word	.L4781
	.word	.L4778
	.word	.L4782
	.word	.L4778
	.word	.L4783
	.word	.L4778
	.word	.L4784
	.word	.L4778
	.word	.L4785
	.word	.L4778
	.word	.L4783
.LVL5378:
.L4749:
	and	r6, r5, #15
.LVL5379:
.L4742:
.LBE13197:
.LBE13196:
.LBB13251:
.LBB13190:
.LBB13156:
.LBB13157:
	.loc 28 1608 0
	cmp	r6, #12
.LBE13157:
.LBE13156:
	.loc 39 331 0
	biceq	r1, r5, #508
	biceq	r1, r1, #3
	addeq	r1, r1, #160
.LBB13159:
.LBB13158:
	.loc 28 1608 0
	beq	.L4740
.LVL5380:
.L4800:
	bl	cap_thread_cap_get_capTCBPtr.isra.59.part.60
.LVL5381:
.L4748:
	and	r6, r5, #15
.LVL5382:
.L4741:
.LBE13158:
.LBE13159:
.LBB13160:
.LBB13161:
	.loc 28 1577 0
	cmp	r6, #10
	.loc 28 1580 0
	biceq	r1, r5, #31
	addeq	r1, r1, #160
	.loc 28 1577 0
	beq	.L4740
.LVL5383:
.L4799:
	bl	cap_cnode_cap_get_capCNodePtr.isra.78.part.79
.LVL5384:
.L4747:
	and	r6, r5, #15
.LVL5385:
.L4739:
.LBE13161:
.LBE13160:
.LBB13162:
.LBB13163:
	.loc 28 1407 0
	cmp	r6, #6
	bne	.L4798
.LVL5386:
.L4775:
.LBE13163:
.LBE13162:
.LBB13165:
.LBB13151:
.LBB13133:
.LBB13134:
	.loc 28 1970 0
	bic	r1, r5, #15
	add	r1, r1, #160
	b	.L4740
.LVL5387:
.L4746:
	and	r6, r5, #15
.LVL5388:
.L4738:
.LBE13134:
.LBE13133:
.LBE13151:
.LBE13165:
.LBB13166:
.LBB13167:
	.loc 28 1185 0
	cmp	r6, #4
	.loc 28 1188 0
	biceq	r1, fp, #15
	addeq	r1, r1, #160
	.loc 28 1185 0
	beq	.L4740
.LVL5389:
.L4797:
	bl	cap_endpoint_cap_get_capEPPtr.part.77
.LVL5390:
.L4744:
	and	r6, r5, #15
.LVL5391:
.L4736:
.LBE13167:
.LBE13166:
.LBB13168:
.LBB13169:
	.loc 28 1142 0
	cmp	r6, #2
	beq	.L4775
	b	.L4795
.LVL5392:
.L4735:
.LBE13169:
.LBE13168:
.LBB13171:
.LBB13152:
	.loc 38 302 0
	sub	r3, r6, #1
	cmp	r3, #8
	ldrls	pc, [pc, r3, asl #2]
	b	.L4921
.L4759:
	.word	.L4758
	.word	.L4921
	.word	.L4758
	.word	.L4921
	.word	.L4760
	.word	.L4921
	.word	.L4761
	.word	.L4921
	.word	.L4762
.LVL5393:
.L4750:
.LBE13152:
.LBE13171:
.LBB13172:
.LBB13173:
.LBB13174:
.LBB13175:
.LBB13176:
.LBB13177:
	.loc 28 2318 0
	cmp	r6, #46
	bne	.L4801
	.loc 28 2321 0
	ubfx	r3, r5, #8, #6
.LVL5394:
.LBE13177:
.LBE13176:
	.loc 39 97 0
	cmp	r3, #32
	.loc 39 100 0
	andne	r1, r3, #31
	mvnne	r3, #0
.LVL5395:
	addne	r1, r1, #1
	.loc 39 97 0
	mvneq	r1, #31
.LVL5396:
	movne	r1, r3, asl r1
.LBE13175:
.LBE13174:
	.loc 39 114 0
	and	r1, r1, fp
	add	r1, r1, #160
	b	.L4740
.LVL5397:
.L4965:
.LBE13173:
.LBE13172:
.LBE13190:
.LBE13251:
	.loc 25 389 0
	movw	r0, #:lower16:.LC257
	movt	r0, #:upper16:.LC257
	bl	kprintf
.LVL5398:
	.loc 25 390 0
	mov	r0, #0
	.loc 25 435 0
	add	sp, sp, #44
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5399:
.L4777:
	.cfi_restore_state
.LBB13252:
.LBB13246:
.LBB13204:
.LBB13201:
	.loc 28 1037 0
	uxtb	r6, r5
.LBE13201:
.LBE13204:
	.loc 39 317 0
	sub	r3, r6, #2
.LBB13205:
.LBB13202:
	.loc 28 1037 0
	mov	r2, r6
.LVL5400:
.LBE13202:
.LBE13205:
	.loc 39 317 0
	cmp	r3, #60
	ldrls	pc, [pc, r3, asl #2]
	b	.L4786
.L4788:
	.word	.L4787
	.word	.L4786
	.word	.L4789
	.word	.L4786
	.word	.L4790
	.word	.L4786
	.word	.L4791
	.word	.L4786
	.word	.L4792
	.word	.L4786
	.word	.L4793
	.word	.L4786
	.word	.L4791
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4791
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4794
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4786
	.word	.L4791
.L4793:
	and	r6, r5, #15
.LVL5401:
.L4785:
.LBB13206:
.LBB13207:
	.loc 28 1608 0
	cmp	r6, #12
	bne	.L4800
.LVL5402:
.LBE13207:
.LBE13206:
	.loc 39 331 0
	bic	r2, r5, #508
	bic	r2, r2, #3
	add	r2, r2, #32
.LVL5403:
.L4796:
.LBE13246:
.LBE13252:
	.loc 25 394 0
	ldmia	r9, {r0, r1}
	mov	r3, r7
	bl	cteInsert
.LVL5404:
.LBB13253:
.LBB13254:
.LBB13255:
.LBB13256:
	.loc 28 1035 0
	cmp	r10, #14
	uxtbeq	r6, r5
	beq	.L4821
	and	r6, r5, #15
.L4915:
.LVL5405:
.LBE13256:
.LBE13255:
	.loc 39 317 0
	sub	r3, r6, #2
	mov	r2, r6
	cmp	r3, #12
	ldrls	pc, [pc, r3, asl #2]
	b	.L4822
.L4824:
	.word	.L4823
	.word	.L4822
	.word	.L4825
	.word	.L4822
	.word	.L4826
	.word	.L4822
	.word	.L4827
	.word	.L4822
	.word	.L4828
	.word	.L4822
	.word	.L4829
	.word	.L4822
	.word	.L4827
.L4836:
	and	r6, r5, #15
.LVL5406:
.L4829:
.LBB13257:
.LBB13258:
	.loc 28 1608 0
	cmp	r6, #12
	bne	.L4800
.LVL5407:
.LBE13258:
.LBE13257:
	.loc 39 331 0
	bic	r2, r5, #508
	bic	r2, r2, #3
	add	r2, r2, #48
.LVL5408:
.L4838:
.LBE13254:
.LBE13253:
	.loc 25 399 0
	ldmia	r8, {r0, r1}
	add	r3, r7, #16
	bl	cteInsert
.LVL5409:
.LBB13307:
.LBB13308:
.LBB13309:
.LBB13310:
	.loc 28 1035 0
	cmp	r10, #14
	andne	r6, r5, #15
	beq	.L4957
.L4916:
.LVL5410:
.LBE13310:
.LBE13309:
	.loc 39 317 0
	sub	r3, r6, #2
	mov	r2, r6
	cmp	r3, #12
	ldrls	pc, [pc, r3, asl #2]
	b	.L4852
.L4854:
	.word	.L4853
	.word	.L4852
	.word	.L4855
	.word	.L4852
	.word	.L4856
	.word	.L4852
	.word	.L4935
	.word	.L4852
	.word	.L4858
	.word	.L4852
	.word	.L4859
	.word	.L4852
	.word	.L4935
.LVL5411:
.L4935:
.LBB13312:
.LBB13313:
	.loc 38 302 0
	mov	r2, #160
.L4857:
.LBE13313:
.LBE13312:
.LBE13308:
.LBE13307:
	.loc 25 404 0
	add	r3, sp, #40
	.loc 25 417 0
	mov	r8, #0
	.loc 25 404 0
	ldmdb	r3, {r0, r1}
	add	r3, r7, #64
	bl	cteInsert
.LVL5412:
	.loc 25 409 0
	ldr	r2, [sp, #88]
	.loc 25 414 0
	mov	r3, #255
	.loc 25 415 0
	mov	r0, r4
	.loc 25 420 0
	mov	r6, #1
	.loc 25 409 0
	str	r2, [r4, #120]
.LVL5413:
.LBB13367:
.LBB13368:
	.loc 13 21 0
	ldr	r2, [sp, #84]
	str	r2, [r7, #256]
.LVL5414:
.LBE13368:
.LBE13367:
.LBB13369:
.LBB13370:
.LBB13371:
	ldr	r2, [sp, #80]
.LBE13371:
.LBE13370:
.LBE13369:
	.loc 25 414 0
	str	r3, [r4, #108]
.LBB13374:
.LBB13373:
.LBB13372:
	.loc 13 21 0
	str	r2, [r4, #60]
.LBE13372:
.LBE13373:
.LBE13374:
	.loc 25 415 0
	bl	setupReplyMaster
.LVL5415:
.LBB13375:
.LBB13376:
.LBB13377:
.LBB13378:
	.loc 28 169 0
	ldr	r3, [r4, #72]
.LBE13378:
.LBE13377:
	.loc 26 418 0
	mov	r0, r4
.LBB13380:
.LBB13379:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #1
	str	r3, [r4, #72]
.LBE13379:
.LBE13380:
	.loc 26 418 0
	bl	scheduleTCB
.LVL5416:
.LBE13376:
.LBE13375:
	.loc 25 419 0
	movw	r2, #:lower16:ksDomScheduleIdx
	movw	r3, #:lower16:.LANCHOR7
	movt	r2, #:upper16:ksDomScheduleIdx
	movt	r3, #:upper16:.LANCHOR7
	ldr	lr, [r2]
	.loc 25 418 0
	movw	r2, #:lower16:ksIdleThread
	movt	r2, #:upper16:ksIdleThread
	.loc 25 419 0
	movw	r0, #:lower16:ksCurDomain
	.loc 25 418 0
	ldr	r7, [r2]
.LVL5417:
	movw	ip, #:lower16:ksCurThread
	.loc 25 417 0
	movw	r1, #:lower16:ksSchedulerAction
	.loc 25 420 0
	movw	r2, #:lower16:ksDomainTime
	.loc 25 419 0
	add	lr, r3, lr, asl #3
	movt	r0, #:upper16:ksCurDomain
	.loc 25 418 0
	movt	ip, #:upper16:ksCurThread
	.loc 25 419 0
	ldr	lr, [lr, #-3048]
	.loc 25 417 0
	movt	r1, #:upper16:ksSchedulerAction
	.loc 25 420 0
	movt	r2, #:upper16:ksDomainTime
	.loc 25 418 0
	str	r7, [ip]
	.loc 25 417 0
	str	r8, [r1]
	.loc 25 421 0
	cmp	lr, r8
	.loc 25 419 0
	str	lr, [r0]
	.loc 25 420 0
	str	r6, [r2]
	.loc 25 421 0
	bne	.L4878
	.loc 25 424 0 discriminator 2
	mov	r0, r4
	bl	switchToThread
.LVL5418:
.LBB13381:
.LBB13382:
	.loc 28 1596 0 discriminator 2
	ands	r2, r4, #15
	bne	.L4966
.LVL5419:
	.loc 28 1597 0
	bic	r3, r4, #15
.LBE13382:
.LBE13381:
.LBB13385:
.LBB13386:
.LBB13387:
.LBB13388:
	.loc 28 1035 0
	cmp	r10, #14
.LBE13388:
.LBE13387:
.LBE13386:
.LBE13385:
.LBB13442:
.LBB13383:
	.loc 28 1600 0
	orr	r3, r3, #12
	.loc 28 1602 0
	str	r2, [sp, #24]
.LVL5420:
	str	r3, [sp, #20]
.LBE13383:
.LBE13442:
.LBB13443:
.LBB13435:
.LBB13391:
.LBB13389:
	.loc 28 1035 0
	beq	.L4881
	.loc 28 1036 0
	and	r3, r5, #15
.LVL5421:
.LBE13389:
.LBE13391:
	.loc 39 317 0
	sub	r2, r3, #2
	mov	r1, r3
	cmp	r2, #12
	ldrls	pc, [pc, r2, asl #2]
	b	.L4882
.L4884:
	.word	.L4883
	.word	.L4882
	.word	.L4885
	.word	.L4882
	.word	.L4886
	.word	.L4882
	.word	.L4887
	.word	.L4882
	.word	.L4888
	.word	.L4882
	.word	.L4889
	.word	.L4882
	.word	.L4887
.LVL5422:
.L4863:
	and	r6, r5, #15
.LVL5423:
.L4856:
.LBE13435:
.LBE13443:
.LBB13444:
.LBB13359:
.LBB13337:
.LBB13338:
	.loc 28 1407 0
	cmp	r6, #6
	bne	.L4798
.LVL5424:
.L4959:
.LBE13338:
.LBE13337:
.LBB13339:
.LBB13332:
.LBB13314:
.LBB13315:
	.loc 28 1970 0
	bic	r2, r5, #15
	add	r2, r2, #160
	b	.L4857
.LVL5425:
.L4862:
	and	r6, r5, #15
.LVL5426:
.L4855:
.LBE13315:
.LBE13314:
.LBE13332:
.LBE13339:
.LBB13340:
.LBB13341:
	.loc 28 1185 0
	cmp	r6, #4
	bne	.L4797
.LVL5427:
	.loc 28 1188 0
	bic	r2, fp, #15
.LVL5428:
	add	r2, r2, #160
.LVL5429:
	b	.L4857
.LVL5430:
.L4860:
	and	r6, r5, #15
.LVL5431:
.L4853:
.LBE13341:
.LBE13340:
.LBB13342:
.LBB13343:
	.loc 28 1142 0
	cmp	r6, #2
	beq	.L4959
.LVL5432:
.L4795:
.LBE13343:
.LBE13342:
.LBE13359:
.LBE13444:
.LBB13445:
.LBB13191:
.LBB13183:
.LBB13170:
	bl	cap_untyped_cap_get_capPtr.isra.75.part.76
.LVL5433:
.L4835:
	and	r6, r5, #15
.LVL5434:
.L4828:
.LBE13170:
.LBE13183:
.LBE13191:
.LBE13445:
.LBB13446:
.LBB13299:
.LBB13259:
.LBB13260:
	.loc 28 1577 0
	cmp	r6, #10
	bne	.L4799
.LVL5435:
	.loc 28 1580 0
	bic	r2, r5, #31
	add	r2, r2, #48
	b	.L4838
.LVL5436:
.L4865:
	and	r6, r5, #15
.LVL5437:
.L4859:
.LBE13260:
.LBE13259:
.LBE13299:
.LBE13446:
.LBB13447:
.LBB13360:
.LBB13344:
.LBB13345:
	.loc 28 1608 0
	cmp	r6, #12
	bne	.L4800
.LVL5438:
.LBE13345:
.LBE13344:
	.loc 39 331 0
	bic	r2, r5, #508
	bic	r2, r2, #3
	add	r2, r2, #160
	b	.L4857
.LVL5439:
.L4864:
	and	r6, r5, #15
.LVL5440:
.L4858:
.LBB13346:
.LBB13347:
	.loc 28 1577 0
	cmp	r6, #10
	bne	.L4799
.LVL5441:
	.loc 28 1580 0
	bic	r2, r5, #31
	add	r2, r2, #160
	b	.L4857
.LVL5442:
.L4833:
	and	r6, r5, #15
.LVL5443:
.L4826:
.LBE13347:
.LBE13346:
.LBE13360:
.LBE13447:
.LBB13448:
.LBB13300:
.LBB13261:
.LBB13262:
	.loc 28 1407 0
	cmp	r6, #6
	bne	.L4798
.LVL5444:
.L4956:
	.loc 28 1410 0
	bic	r2, r5, #15
	add	r2, r2, #48
	b	.L4838
.LVL5445:
.L4832:
	and	r6, r5, #15
.LVL5446:
.L4825:
.LBE13262:
.LBE13261:
.LBB13263:
.LBB13264:
	.loc 28 1185 0
	cmp	r6, #4
	bne	.L4797
.LVL5447:
	.loc 28 1188 0
	bic	r2, fp, #15
.LVL5448:
	add	r2, r2, #48
.LVL5449:
	b	.L4838
.LVL5450:
.L4830:
	and	r6, r5, #15
.LVL5451:
.L4823:
.LBE13264:
.LBE13263:
.LBB13265:
.LBB13266:
	.loc 28 1142 0
	cmp	r6, #2
	beq	.L4956
	b	.L4795
.LVL5452:
.L4792:
	and	r6, r5, #15
.LVL5453:
.L4784:
.LBE13266:
.LBE13265:
.LBE13300:
.LBE13448:
.LBB13449:
.LBB13247:
.LBB13208:
.LBB13209:
	.loc 28 1577 0
	cmp	r6, #10
	bne	.L4799
.LVL5454:
	.loc 28 1580 0
	bic	r2, r5, #31
	add	r2, r2, #32
	b	.L4796
.LVL5455:
.L4790:
	and	r6, r5, #15
.LVL5456:
.L4782:
.LBE13209:
.LBE13208:
.LBB13210:
.LBB13211:
	.loc 28 1407 0
	cmp	r6, #6
	bne	.L4798
.LVL5457:
.L4955:
.LBE13211:
.LBE13210:
.LBB13212:
.LBB13213:
.LBB13214:
.LBB13215:
	.loc 28 1970 0
	bic	r2, r5, #15
	add	r2, r2, #32
	b	.L4796
.LVL5458:
.L4789:
	and	r6, r5, #15
.LVL5459:
.L4781:
.LBE13215:
.LBE13214:
.LBE13213:
.LBE13212:
.LBB13233:
.LBB13234:
	.loc 28 1185 0
	cmp	r6, #4
	bne	.L4797
.LVL5460:
	.loc 28 1188 0
	bic	r2, fp, #15
.LVL5461:
	add	r2, r2, #32
.LVL5462:
	b	.L4796
.LVL5463:
.L4787:
	and	r6, r5, #15
.LVL5464:
.L4779:
.LBE13234:
.LBE13233:
.LBB13235:
.LBB13236:
	.loc 28 1142 0
	cmp	r6, #2
	beq	.L4955
	b	.L4795
.LVL5465:
.L4783:
.LBE13236:
.LBE13235:
.LBE13247:
.LBE13449:
	.loc 25 394 0
	ldmia	r9, {r0, r1}
	mov	r2, #32
	mov	r3, r7
	bl	cteInsert
.LVL5466:
	b	.L4915
.LVL5467:
.L4827:
	.loc 25 399 0
	ldmia	r8, {r0, r1}
	mov	r2, #48
	add	r3, r7, #16
	bl	cteInsert
.LVL5468:
	b	.L4916
.LVL5469:
.L4887:
	.loc 25 428 0
	add	r3, sp, #20
.LVL5470:
	mov	r0, #16
	ldmia	r3, {r1, r2}
	bl	write_slot
.LVL5471:
.LBB13450:
.LBB13451:
	.loc 31 1103 0
	add	ip, r4, #140
.LVL5472:
.L4912:
.LBB13452:
.LBB13453:
	.loc 32 27 0
	mov	r2, #114
	mov	r3, ip
	movw	r1, #:lower16:.LC259
	strb	r2, [r3], #1
.LVL5473:
	movt	r1, #:upper16:.LC259
	add	r0, ip, #115
	b	.L4908
.LVL5474:
.L4910:
	strb	r2, [r3], #1
.LVL5475:
	.loc 32 26 0
	cmp	r3, r0
	beq	.L4939
.LVL5476:
.L4908:
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	rsb	lr, ip, r3
.LVL5477:
	cmp	r2, #0
	bne	.L4910
.LVL5478:
.L4909:
	.loc 32 29 0
	mov	r3, #0
.LBE13453:
.LBE13452:
.LBE13451:
.LBE13450:
	.loc 25 434 0
	mov	r0, #1
.LBB13461:
.LBB13458:
.LBB13456:
.LBB13454:
	.loc 32 29 0
	strb	r3, [ip, lr]
.LBE13454:
.LBE13456:
.LBE13458:
.LBE13461:
	.loc 25 435 0
	add	sp, sp, #44
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5479:
.L4895:
	.cfi_restore_state
	and	r3, r5, #15
.LVL5480:
.L4889:
.LBB13462:
.LBB13436:
.LBB13392:
.LBB13393:
	.loc 28 1608 0
	cmp	r3, #12
	bne	.L4800
.LVL5481:
.LBE13393:
.LBE13392:
	.loc 39 331 0
	bic	r0, r5, #508
	bic	r0, r0, #3
	add	r0, r0, #16
.LVL5482:
.L4897:
.LBE13436:
.LBE13462:
	.loc 25 428 0
	add	r3, sp, #20
	ldmia	r3, {r1, r2}
	bl	write_slot
.LVL5483:
.LBB13463:
.LBB13459:
	.loc 31 1103 0
	add	ip, r4, #140
.LVL5484:
	b	.L4912
.LVL5485:
.L4894:
	and	r3, r5, #15
.LVL5486:
.L4888:
.LBE13459:
.LBE13463:
.LBB13464:
.LBB13437:
.LBB13394:
.LBB13395:
	.loc 28 1577 0
	cmp	r3, #10
	bne	.L4799
.LVL5487:
	.loc 28 1580 0
	bic	r0, r5, #31
	add	r0, r0, #16
	b	.L4897
.LVL5488:
.L4893:
	and	r3, r5, #15
.LVL5489:
.L4886:
.LBE13395:
.LBE13394:
.LBB13396:
.LBB13397:
	.loc 28 1407 0
	cmp	r3, #6
	bne	.L4798
.LVL5490:
.L4960:
.LBE13397:
.LBE13396:
.LBB13398:
.LBB13399:
.LBB13400:
.LBB13401:
	.loc 28 1970 0
	bic	r0, r5, #15
	add	r0, r0, #16
	b	.L4897
.LVL5491:
.L4892:
	and	r3, r5, #15
.LVL5492:
.L4885:
.LBE13401:
.LBE13400:
.LBE13399:
.LBE13398:
.LBB13421:
.LBB13422:
	.loc 28 1185 0
	cmp	r3, #4
	bne	.L4797
.LVL5493:
	.loc 28 1188 0
	bic	r0, fp, #15
.LVL5494:
	add	r0, r0, #16
.LVL5495:
	b	.L4897
.LVL5496:
.L4890:
	and	r3, r5, #15
.LVL5497:
.L4883:
.LBE13422:
.LBE13421:
.LBB13423:
.LBB13424:
	.loc 28 1142 0
	cmp	r3, #2
	beq	.L4960
	b	.L4795
.LVL5498:
.L4822:
.LBE13424:
.LBE13423:
.LBE13437:
.LBE13464:
.LBB13465:
.LBB13301:
.LBB13267:
.LBB13268:
	.loc 38 302 0
	sub	r2, r2, #1
	cmp	r2, #8
	ldrls	pc, [pc, r2, asl #2]
	b	.L4930
.L4841:
	.word	.L4840
	.word	.L4930
	.word	.L4840
	.word	.L4930
	.word	.L4842
	.word	.L4930
	.word	.L4843
	.word	.L4930
	.word	.L4844
.LVL5499:
.L4852:
.LBE13268:
.LBE13267:
.LBE13301:
.LBE13465:
.LBB13466:
.LBB13361:
.LBB13348:
.LBB13333:
	sub	r2, r2, #1
	cmp	r2, #8
	ldrls	pc, [pc, r2, asl #2]
	b	.L4935
.L4869:
	.word	.L4868
	.word	.L4935
	.word	.L4868
	.word	.L4935
	.word	.L4870
	.word	.L4935
	.word	.L4871
	.word	.L4935
	.word	.L4872
.LVL5500:
.L4882:
.LBE13333:
.LBE13348:
.LBE13361:
.LBE13466:
.LBB13467:
.LBB13438:
.LBB13425:
.LBB13418:
	sub	r1, r1, #1
	cmp	r1, #8
	ldrls	pc, [pc, r1, asl #2]
	b	.L4887
.L4913:
	.word	.L4899
	.word	.L4887
	.word	.L4899
	.word	.L4887
	.word	.L4907
	.word	.L4887
	.word	.L4905
	.word	.L4887
	.word	.L4906
.LVL5501:
.L4778:
.LBE13418:
.LBE13425:
.LBE13438:
.LBE13467:
.LBB13468:
.LBB13248:
.LBB13237:
.LBB13230:
	sub	r3, r6, #1
	cmp	r3, #8
	ldrls	pc, [pc, r3, asl #2]
	b	.L4783
.L4804:
	.word	.L4803
	.word	.L4783
	.word	.L4803
	.word	.L4783
	.word	.L4805
	.word	.L4783
	.word	.L4806
	.word	.L4783
	.word	.L4807
.LVL5502:
.L4794:
.LBE13230:
.LBE13237:
.LBB13238:
.LBB13239:
.LBB13240:
.LBB13241:
.LBB13242:
.LBB13243:
	.loc 28 2318 0
	cmp	r6, #46
	bne	.L4801
	.loc 28 2321 0
	ubfx	r3, r5, #8, #6
.LVL5503:
.LBE13243:
.LBE13242:
	.loc 39 97 0
	cmp	r3, #32
	.loc 39 100 0
	andne	r2, r3, #31
	mvnne	r3, #0
.LVL5504:
	addne	r2, r2, #1
	.loc 39 97 0
	mvneq	r2, #31
.LVL5505:
	movne	r2, r3, asl r2
.LBE13241:
.LBE13240:
	.loc 39 114 0
	and	r2, r2, fp
	add	r2, r2, #32
	b	.L4796
.LVL5506:
.L4791:
.LBE13239:
.LBE13238:
.LBE13248:
.LBE13468:
	.loc 25 394 0
	ldmia	r9, {r0, r1}
	mov	r2, #32
	mov	r3, r7
	bl	cteInsert
.LVL5507:
.L4821:
.LBB13469:
.LBB13302:
	.loc 39 317 0
	sub	r3, r6, #2
	mov	r2, r6
	cmp	r3, #60
	ldrls	pc, [pc, r3, asl #2]
	b	.L4822
.L4831:
	.word	.L4830
	.word	.L4822
	.word	.L4832
	.word	.L4822
	.word	.L4833
	.word	.L4822
	.word	.L4834
	.word	.L4822
	.word	.L4835
	.word	.L4822
	.word	.L4836
	.word	.L4822
	.word	.L4834
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4834
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4837
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4822
	.word	.L4834
.L4837:
.LVL5508:
.LBB13289:
.LBB13290:
.LBB13291:
.LBB13292:
.LBB13293:
.LBB13294:
	.loc 28 2318 0
	cmp	r6, #46
	bne	.L4801
	.loc 28 2321 0
	ubfx	r3, r5, #8, #6
.LVL5509:
.LBE13294:
.LBE13293:
	.loc 39 97 0
	cmp	r3, #32
	.loc 39 100 0
	andne	r2, r3, #31
	mvnne	r3, #0
.LVL5510:
	addne	r2, r2, #1
	.loc 39 97 0
	mvneq	r2, #31
.LVL5511:
	movne	r2, r3, asl r2
.LBE13292:
.LBE13291:
	.loc 39 114 0
	and	r2, r2, fp
	add	r2, r2, #48
	b	.L4838
.LVL5512:
.L4834:
.LBE13290:
.LBE13289:
.LBE13302:
.LBE13469:
	.loc 25 399 0
	ldmia	r8, {r0, r1}
	mov	r2, #48
	add	r3, r7, #16
	bl	cteInsert
.LVL5513:
.L4851:
.LBB13470:
.LBB13362:
	.loc 39 317 0
	sub	r3, r6, #2
	mov	r2, r6
	cmp	r3, #60
	ldrls	pc, [pc, r3, asl #2]
	b	.L4852
.L4861:
	.word	.L4860
	.word	.L4852
	.word	.L4862
	.word	.L4852
	.word	.L4863
	.word	.L4852
	.word	.L4935
	.word	.L4852
	.word	.L4864
	.word	.L4852
	.word	.L4865
	.word	.L4852
	.word	.L4935
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4935
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4866
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4852
	.word	.L4935
.L4866:
.LVL5514:
.LBB13349:
.LBB13350:
.LBB13351:
.LBB13352:
.LBB13353:
.LBB13354:
	.loc 28 2318 0
	cmp	r6, #46
	bne	.L4801
	.loc 28 2321 0
	ubfx	r3, r5, #8, #6
.LVL5515:
.LBE13354:
.LBE13353:
	.loc 39 97 0
	cmp	r3, #32
	.loc 39 100 0
	andne	r2, r3, #31
	mvnne	r3, #0
.LVL5516:
	addne	r2, r2, #1
	.loc 39 97 0
	mvneq	r2, #31
.LVL5517:
	movne	r2, r3, asl r2
.LBE13352:
.LBE13351:
	.loc 39 114 0
	and	r2, r2, fp
	add	r2, r2, #160
	b	.L4857
.LVL5518:
.L4766:
	and	r6, r5, #15
.LVL5519:
.L4762:
.LBE13350:
.LBE13349:
.LBE13362:
.LBE13470:
.LBB13471:
.LBB13192:
.LBB13184:
.LBB13153:
.LBB13136:
.LBB13137:
	.loc 28 2162 0
	cmp	r6, #9
	.loc 28 2165 0
	biceq	r1, r5, #16320
	biceq	r1, r1, #63
	addeq	r1, r1, #160
	.loc 28 2162 0
	beq	.L4740
.LVL5520:
.L4819:
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.93.part.94
.LVL5521:
.L4765:
	and	r6, r5, #15
.LVL5522:
.L4761:
.LBE13137:
.LBE13136:
.LBB13138:
.LBB13139:
	.loc 28 2098 0
	cmp	r6, #7
	.loc 28 2101 0
	biceq	r1, r5, #1020
	biceq	r1, r1, #3
	addeq	r1, r1, #160
	.loc 28 2098 0
	beq	.L4740
.LVL5523:
.L4818:
	bl	cap_page_table_cap_get_capPTBasePtr.isra.91.part.92
.LVL5524:
.L4758:
.LBE13139:
.LBE13138:
.LBB13140:
.LBB13141:
	.loc 38 207 0
	and	r3, r2, #253
	cmp	r3, #1
	bne	.L4812
	.loc 38 210 0
	cmp	r2, #1
	beq	.L4769
	cmp	r2, #3
	bne	.L4921
.LVL5525:
.LBB13142:
.LBB13143:
	.loc 28 1919 0
	and	r6, r5, #15
	cmp	r6, #3
	.loc 28 1922 0
	biceq	r3, r5, #-268435441
	biceq	r3, r3, #264241152
	moveq	r3, r3, asl #10
	addeq	r1, r3, #160
	.loc 28 1919 0
	beq	.L4740
.LVL5526:
.L4817:
	bl	cap_frame_cap_get_capFBasePtr.isra.87.part.88
.LVL5527:
.L4764:
	and	r6, r5, #15
.LVL5528:
.L4760:
.LBE13143:
.LBE13142:
.LBE13141:
.LBE13140:
.LBB13148:
.LBB13135:
	.loc 28 1967 0
	cmp	r6, #5
	beq	.L4775
.LVL5529:
.L4820:
	bl	cap_asid_pool_cap_get_capASIDPool.isra.95.part.96
.LVL5530:
.L4743:
.LBE13135:
.LBE13148:
	.loc 38 302 0
	sub	r6, r6, #1
.LVL5531:
	cmp	r6, #8
	ldrls	pc, [pc, r6, asl #2]
	b	.L4921
.L4763:
	.word	.L4758
	.word	.L4921
	.word	.L4758
	.word	.L4921
	.word	.L4764
	.word	.L4921
	.word	.L4765
	.word	.L4921
	.word	.L4766
.LVL5532:
.L4844:
.LBE13153:
.LBE13184:
.LBE13192:
.LBE13471:
.LBB13472:
.LBB13303:
.LBB13295:
.LBB13285:
.LBB13269:
.LBB13270:
	.loc 28 2162 0
	and	r6, r5, #15
.LVL5533:
	cmp	r6, #9
	bne	.L4819
.LVL5534:
	.loc 28 2165 0
	bic	r2, r5, #16320
	bic	r2, r2, #63
	add	r2, r2, #48
.LVL5535:
.L4850:
.LBE13270:
.LBE13269:
.LBE13285:
.LBE13295:
.LBE13303:
.LBE13472:
	.loc 25 399 0
	ldmia	r8, {r0, r1}
	add	r3, r7, #16
	bl	cteInsert
.LVL5536:
.LBB13473:
.LBB13363:
.LBB13355:
.LBB13311:
	.loc 28 1035 0
	cmp	r10, #14
	.loc 28 1036 0
	movne	r2, r6
	.loc 28 1035 0
	bne	.L4852
.L4957:
	uxtb	r6, r5
	b	.L4851
.LVL5537:
.L4843:
.LBE13311:
.LBE13355:
.LBE13363:
.LBE13473:
.LBB13474:
.LBB13304:
.LBB13296:
.LBB13286:
.LBB13271:
.LBB13272:
	.loc 28 2098 0
	and	r6, r5, #15
.LVL5538:
	cmp	r6, #7
	bne	.L4818
.LVL5539:
	.loc 28 2101 0
	bic	r2, r5, #1020
	bic	r2, r2, #3
	add	r2, r2, #48
	b	.L4850
.LVL5540:
.L4842:
.LBE13272:
.LBE13271:
.LBB13273:
.LBB13274:
	.loc 28 1967 0
	and	r6, r5, #15
.LVL5541:
	cmp	r6, #5
	bne	.L4820
.LVL5542:
	.loc 28 1970 0
	bic	r2, r5, #15
	add	r2, r2, #48
	b	.L4850
.LVL5543:
.L4840:
.LBE13274:
.LBE13273:
.LBB13275:
.LBB13276:
.LBB13277:
.LBB13278:
	.loc 28 1035 0
	cmp	r10, #14
	.loc 28 1037 0
	uxtbeq	r3, r5
	.loc 28 1036 0
	andne	r3, r5, #15
.LVL5544:
.LBE13278:
.LBE13277:
	.loc 38 207 0
	and	r2, r3, #253
	cmp	r2, #1
	bne	.L4812
	.loc 38 210 0
	cmp	r3, #1
	beq	.L4848
	cmp	r3, #3
	bne	.L4930
.LVL5545:
.LBB13279:
.LBB13280:
	.loc 28 1919 0
	and	r6, r5, #15
.LVL5546:
	cmp	r6, #3
	bne	.L4817
.LVL5547:
	.loc 28 1922 0
	bic	r3, r5, #-268435441
.LVL5548:
	bic	r3, r3, #264241152
	mov	r3, r3, asl #10
	add	r2, r3, #48
	b	.L4838
.LVL5549:
.L4872:
.LBE13280:
.LBE13279:
.LBE13276:
.LBE13275:
.LBE13286:
.LBE13296:
.LBE13304:
.LBE13474:
.LBB13475:
.LBB13364:
.LBB13356:
.LBB13334:
.LBB13317:
.LBB13318:
	.loc 28 2162 0
	and	r3, r5, #15
	cmp	r3, #9
	bne	.L4819
.LVL5550:
	.loc 28 2165 0
	bic	r2, r5, #16320
	bic	r2, r2, #63
	add	r2, r2, #160
	b	.L4857
.LVL5551:
.L4906:
.LBE13318:
.LBE13317:
.LBE13334:
.LBE13356:
.LBE13364:
.LBE13475:
.LBB13476:
.LBB13439:
.LBB13426:
.LBB13419:
.LBB13403:
.LBB13404:
	.loc 28 2162 0
	and	r3, r5, #15
.LVL5552:
	cmp	r3, #9
	bne	.L4819
.LVL5553:
	.loc 28 2165 0
	bic	r0, r5, #16320
	bic	r0, r0, #63
	add	r0, r0, #16
	b	.L4897
.LVL5554:
.L4905:
.LBE13404:
.LBE13403:
.LBB13405:
.LBB13406:
	.loc 28 2098 0
	and	r3, r5, #15
.LVL5555:
	cmp	r3, #7
	bne	.L4818
.LVL5556:
	.loc 28 2101 0
	bic	r0, r5, #1020
	bic	r0, r0, #3
	add	r0, r0, #16
	b	.L4897
.LVL5557:
.L4907:
.LBE13406:
.LBE13405:
.LBB13407:
.LBB13402:
	.loc 28 1967 0
	and	r3, r5, #15
.LVL5558:
	cmp	r3, #5
	beq	.L4960
	b	.L4820
.LVL5559:
.L4899:
.LBE13402:
.LBE13407:
.LBB13408:
.LBB13409:
.LBB13410:
.LBB13411:
	.loc 28 1035 0
	cmp	r10, #14
	.loc 28 1037 0
	uxtbeq	r3, r5
.LVL5560:
	.loc 28 1036 0
	andne	r3, r5, #15
.LVL5561:
.LBE13411:
.LBE13410:
	.loc 38 207 0
	and	r2, r3, #253
	cmp	r2, #1
	bne	.L4812
	.loc 38 210 0
	cmp	r3, #1
	beq	.L4903
	cmp	r3, #3
	bne	.L4967
.LVL5562:
.LBB13412:
.LBB13413:
	.loc 28 1919 0
	and	r3, r5, #15
.LVL5563:
	cmp	r3, #3
	bne	.L4817
.LVL5564:
	.loc 28 1922 0
	bic	r5, r5, #-268435441
.LVL5565:
	bic	r5, r5, #264241152
	mov	r5, r5, asl #10
	add	r0, r5, #16
	b	.L4897
.LVL5566:
.L4870:
.LBE13413:
.LBE13412:
.LBE13409:
.LBE13408:
.LBE13419:
.LBE13426:
.LBE13439:
.LBE13476:
.LBB13477:
.LBB13365:
.LBB13357:
.LBB13335:
.LBB13319:
.LBB13316:
	.loc 28 1967 0
	and	r3, r5, #15
	cmp	r3, #5
	beq	.L4959
	b	.L4820
.LVL5567:
.L4868:
.LBE13316:
.LBE13319:
.LBB13320:
.LBB13321:
.LBB13322:
.LBB13323:
	.loc 28 1035 0
	cmp	r10, #14
	.loc 28 1037 0
	uxtbeq	r3, r5
	.loc 28 1036 0
	andne	r3, r5, #15
.LVL5568:
.LBE13323:
.LBE13322:
	.loc 38 207 0
	and	r2, r3, #253
	cmp	r2, #1
	bne	.L4812
	.loc 38 210 0
	cmp	r3, #1
	beq	.L4876
	cmp	r3, #3
	bne	.L4935
.LVL5569:
.LBB13324:
.LBB13325:
	.loc 28 1919 0
	and	r3, r5, #15
.LVL5570:
	cmp	r3, #3
	bne	.L4817
.LVL5571:
	.loc 28 1922 0
	bic	r3, r5, #-268435441
	bic	r3, r3, #264241152
	mov	r3, r3, asl #10
	add	r2, r3, #160
	b	.L4857
.LVL5572:
.L4871:
.LBE13325:
.LBE13324:
.LBE13321:
.LBE13320:
.LBB13329:
.LBB13330:
	.loc 28 2098 0
	and	r3, r5, #15
	cmp	r3, #7
	bne	.L4818
.LVL5573:
	.loc 28 2101 0
	bic	r2, r5, #1020
	bic	r2, r2, #3
	add	r2, r2, #160
	b	.L4857
.LVL5574:
.L4811:
	and	r6, r5, #15
.LVL5575:
.L4807:
.LBE13330:
.LBE13329:
.LBE13335:
.LBE13357:
.LBE13365:
.LBE13477:
.LBB13478:
.LBB13249:
.LBB13244:
.LBB13231:
.LBB13217:
.LBB13218:
	.loc 28 2162 0
	cmp	r6, #9
	bne	.L4819
.LVL5576:
	.loc 28 2165 0
	bic	r2, r5, #16320
	bic	r2, r2, #63
	add	r2, r2, #32
	b	.L4796
.LVL5577:
.L4810:
	and	r6, r5, #15
.LVL5578:
.L4806:
.LBE13218:
.LBE13217:
.LBB13219:
.LBB13220:
	.loc 28 2098 0
	cmp	r6, #7
	bne	.L4818
.LVL5579:
	.loc 28 2101 0
	bic	r2, r5, #1020
	bic	r2, r2, #3
	add	r2, r2, #32
	b	.L4796
.LVL5580:
.L4809:
	and	r6, r5, #15
.LVL5581:
.L4805:
.LBE13220:
.LBE13219:
.LBB13221:
.LBB13216:
	.loc 28 1967 0
	cmp	r6, #5
	beq	.L4955
	b	.L4820
.LVL5582:
.L4803:
.LBE13216:
.LBE13221:
.LBB13222:
.LBB13223:
	.loc 38 207 0
	and	r3, r2, #253
	cmp	r3, #1
	bne	.L4812
	.loc 38 210 0
	cmp	r2, #1
	beq	.L4814
	cmp	r2, #3
	bne	.L4968
.LVL5583:
.LBB13224:
.LBB13225:
	.loc 28 1919 0
	and	r6, r5, #15
.LVL5584:
	cmp	r6, #3
	bne	.L4817
.LVL5585:
	.loc 28 1922 0
	bic	r3, r5, #-268435441
	bic	r3, r3, #264241152
	mov	r3, r3, asl #10
	add	r2, r3, #32
.LVL5586:
	b	.L4796
.LVL5587:
.L4786:
.LBE13225:
.LBE13224:
.LBE13223:
.LBE13222:
	.loc 38 302 0
	sub	r3, r6, #1
	cmp	r3, #8
	ldrls	pc, [pc, r3, asl #2]
	b	.L4791
.L4808:
	.word	.L4803
	.word	.L4791
	.word	.L4803
	.word	.L4791
	.word	.L4809
	.word	.L4791
	.word	.L4810
	.word	.L4791
	.word	.L4811
.LVL5588:
.L4930:
.LBE13231:
.LBE13244:
.LBE13249:
.LBE13478:
.LBB13479:
.LBB13305:
.LBB13297:
.LBB13287:
	mov	r2, #48
	b	.L4838
.LVL5589:
.L4881:
.LBE13287:
.LBE13297:
.LBE13305:
.LBE13479:
.LBB13480:
.LBB13440:
.LBB13427:
.LBB13390:
	.loc 28 1037 0
	uxtb	r3, r5
.LVL5590:
.LBE13390:
.LBE13427:
	.loc 39 317 0
	sub	r2, r3, #2
	mov	r1, r3
	cmp	r2, #60
	ldrls	pc, [pc, r2, asl #2]
	b	.L4882
.L4891:
	.word	.L4890
	.word	.L4882
	.word	.L4892
	.word	.L4882
	.word	.L4893
	.word	.L4882
	.word	.L4887
	.word	.L4882
	.word	.L4894
	.word	.L4882
	.word	.L4895
	.word	.L4882
	.word	.L4887
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4887
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4896
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4882
	.word	.L4887
.L4896:
.LVL5591:
.LBB13428:
.LBB13429:
.LBB13430:
.LBB13431:
.LBB13432:
.LBB13433:
	.loc 28 2318 0
	cmp	r3, #46
	bne	.L4801
	.loc 28 2321 0
	ubfx	r5, r5, #8, #6
.LVL5592:
.LBE13433:
.LBE13432:
	.loc 39 97 0
	cmp	r5, #32
	.loc 39 100 0
	andne	r0, r5, #31
	mvnne	r3, #0
.LVL5593:
	addne	r0, r0, #1
	.loc 39 97 0
	mvneq	r0, #31
.LVL5594:
	movne	r0, r3, asl r0
.LBE13431:
.LBE13430:
	.loc 39 114 0
	and	r0, r0, fp
	add	r0, r0, #16
	b	.L4897
.LVL5595:
.L4939:
.LBE13429:
.LBE13428:
.LBE13440:
.LBE13480:
.LBB13481:
.LBB13460:
.LBB13457:
.LBB13455:
	.loc 32 26 0
	mov	lr, #115
	b	.L4909
.LVL5596:
.L4769:
.LBE13455:
.LBE13457:
.LBE13460:
.LBE13481:
.LBB13482:
.LBB13193:
.LBB13185:
.LBB13154:
.LBB13149:
.LBB13146:
.LBB13144:
.LBB13145:
	.loc 28 1755 0
	and	r6, r5, #15
	cmp	r6, #1
	.loc 28 1758 0
	biceq	r3, r5, #-16777216
	biceq	r3, r3, #15
	moveq	r3, r3, asl #8
	addeq	r1, r3, #160
	.loc 28 1755 0
	beq	.L4740
.LVL5597:
.L4816:
	bl	cap_small_frame_cap_get_capFBasePtr.isra.85.part.86
.LVL5598:
.L4967:
.LBE13145:
.LBE13144:
.LBE13146:
.LBE13149:
.LBE13154:
.LBE13185:
.LBE13193:
.LBE13482:
.LBB13483:
.LBB13441:
.LBB13434:
.LBB13420:
.LBB13417:
.LBB13416:
	.loc 38 210 0
	mov	r0, #16
	b	.L4897
.L4903:
.LVL5599:
.LBB13414:
.LBB13415:
	.loc 28 1755 0
	and	r3, r5, #15
.LVL5600:
	cmp	r3, #1
	bne	.L4816
.LVL5601:
	.loc 28 1758 0
	bic	r5, r5, #-16777216
.LVL5602:
	bic	r5, r5, #15
	mov	r5, r5, asl #8
	add	r0, r5, #16
	b	.L4897
.LVL5603:
.L4848:
.LBE13415:
.LBE13414:
.LBE13416:
.LBE13417:
.LBE13420:
.LBE13434:
.LBE13441:
.LBE13483:
.LBB13484:
.LBB13306:
.LBB13298:
.LBB13288:
.LBB13284:
.LBB13283:
.LBB13281:
.LBB13282:
	.loc 28 1755 0
	and	r6, r5, #15
.LVL5604:
	cmp	r6, #1
	bne	.L4816
.LVL5605:
	.loc 28 1758 0
	bic	r3, r5, #-16777216
.LVL5606:
	bic	r3, r3, #15
	mov	r3, r3, asl #8
	add	r2, r3, #48
	b	.L4838
.LVL5607:
.L4876:
.LBE13282:
.LBE13281:
.LBE13283:
.LBE13284:
.LBE13288:
.LBE13298:
.LBE13306:
.LBE13484:
.LBB13485:
.LBB13366:
.LBB13358:
.LBB13336:
.LBB13331:
.LBB13328:
.LBB13326:
.LBB13327:
	.loc 28 1755 0
	and	r3, r5, #15
.LVL5608:
	cmp	r3, #1
	bne	.L4816
.LVL5609:
	.loc 28 1758 0
	bic	r3, r5, #-16777216
	bic	r3, r3, #15
	mov	r3, r3, asl #8
	add	r2, r3, #160
	b	.L4857
.LVL5610:
.L4968:
.LBE13327:
.LBE13326:
.LBE13328:
.LBE13331:
.LBE13336:
.LBE13358:
.LBE13366:
.LBE13485:
.LBB13486:
.LBB13250:
.LBB13245:
.LBB13232:
.LBB13229:
.LBB13228:
	.loc 38 210 0
	mov	r2, #32
.LVL5611:
	b	.L4796
.LVL5612:
.L4814:
.LBB13226:
.LBB13227:
	.loc 28 1755 0
	and	r6, r5, #15
.LVL5613:
	cmp	r6, #1
	bne	.L4816
.LVL5614:
	.loc 28 1758 0
	bic	r3, r5, #-16777216
	bic	r3, r3, #15
	mov	r3, r3, asl #8
	add	r2, r3, #32
.LVL5615:
	b	.L4796
.LVL5616:
.L4966:
.LBE13227:
.LBE13226:
.LBE13228:
.LBE13229:
.LBE13232:
.LBE13245:
.LBE13250:
.LBE13486:
.LBB13487:
.LBB13384:
	bl	cap_thread_cap_new.part.192
.LVL5617:
.L4878:
.LBE13384:
.LBE13487:
	.loc 25 421 0 discriminator 3
	movw	r0, #:lower16:.LC258
	movw	r1, #:lower16:.LC86
	sub	r3, r3, #3040
	movt	r0, #:upper16:.LC258
	movt	r1, #:upper16:.LC86
	movw	r2, #421
	bl	_assert_fail
.LVL5618:
.L4801:
.LBB13488:
.LBB13194:
.LBB13186:
.LBB13182:
.LBB13181:
.LBB13180:
.LBB13179:
.LBB13178:
	bl	cap_zombie_cap_get_capZombieType.isra.80.part.81
.LVL5619:
.L4812:
.LBE13178:
.LBE13179:
.LBE13180:
.LBE13181:
.LBE13182:
.LBE13186:
.LBB13187:
.LBB13155:
.LBB13150:
.LBB13147:
	bl	generic_frame_cap_get_capFBasePtr.isra.89.part.90
.LVL5620:
.L4798:
.LBE13147:
.LBE13150:
.LBE13155:
.LBE13187:
.LBB13188:
.LBB13164:
	bl	cap_notification_cap_get_capNtfnPtr.isra.68.part.69
.LVL5621:
.LBE13164:
.LBE13188:
.LBE13194:
.LBE13488:
	.cfi_endproc
.LFE504:
	.size	create_initial_thread, .-create_initial_thread
	.text
	.align	2
	.global	createObject
	.type	createObject, %function
createObject:
.LFB631:
	.loc 36 500 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5622:
	.loc 36 502 0
	cmp	r1, #4
	.loc 36 500 0
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 36 500 0
	mov	r5, r0
	.loc 36 502 0
	bhi	.L4991
	.loc 36 507 0
	sub	ip, r1, #1
	mov	r4, r2
	mov	r6, r3
	cmp	ip, #3
	ldrls	pc, [pc, ip, asl #2]
	b	.L4972
.L4974:
	.word	.L4973
	.word	.L4975
	.word	.L4976
	.word	.L4977
.L4991:
	.loc 36 503 0
	bl	Arch_createObject
.LVL5623:
.L4969:
	.loc 36 564 0
	mov	r0, r5
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL5624:
.L4976:
	.loc 36 539 0
	mov	r0, r2
.LVL5625:
	mov	r1, #16
.LVL5626:
	bl	memzero
.LVL5627:
.LBB13504:
.LBB13505:
	.loc 28 1317 0
	tst	r4, #15
	bne	.L4992
.LVL5628:
	.loc 28 1318 0
	bic	r4, r4, #15
.LVL5629:
	.loc 28 1323 0
	mov	r3, #3
	.loc 28 1321 0
	orr	r4, r4, #6
.LVL5630:
	.loc 28 1323 0
	str	r3, [r5, #4]
	str	r4, [r5]
.LBE13505:
.LBE13504:
	.loc 36 564 0
	mov	r0, r5
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL5631:
.L4972:
.LBB13507:
.LBB13508:
	.loc 28 1072 0
	bics	r3, r6, #31
.LVL5632:
	bne	.L4993
.LVL5633:
	.loc 28 1075 0
	tst	r2, #15
	.loc 28 1076 0
	biceq	r4, r2, #15
	.loc 28 1081 0
	streq	r6, [r0, #4]
	.loc 28 1079 0
	orreq	r4, r4, #2
	.loc 28 1081 0
	streq	r4, [r0]
	.loc 28 1075 0
	beq	.L4969
	movw	r0, #:lower16:.LC179
.LVL5634:
	movw	r1, #:lower16:.LC30
.LVL5635:
	movt	r0, #:upper16:.LC179
	movt	r1, #:upper16:.LC30
	movw	r2, #1075
.LVL5636:
	ldr	r3, .L4996
	bl	_assert_fail
.LVL5637:
.L4973:
.LBE13508:
.LBE13507:
.LBB13510:
	.loc 36 510 0
	mov	r0, r2
.LVL5638:
	mov	r1, #512
.LVL5639:
	bl	memzero
.LVL5640:
	.loc 36 520 0
	movw	r3, #:lower16:ksCurDomain
	.loc 36 511 0
	add	r6, r4, #256
.LVL5641:
	.loc 36 520 0
	movt	r3, #:upper16:ksCurDomain
.LBB13511:
.LBB13512:
	.loc 42 117 0
	mov	ip, #80
.LBE13512:
.LBE13511:
	.loc 36 520 0
	ldr	r3, [r3]
	.loc 36 519 0
	mov	r0, #5
.LBB13514:
.LBB13515:
	.loc 32 27 0
	mov	r2, #99
	movw	r1, #:lower16:.LC260
.LBE13515:
.LBE13514:
.LBB13520:
.LBB13513:
	.loc 42 117 0
	str	ip, [r6, #64]
.LBE13513:
.LBE13520:
	.loc 36 523 0
	add	r4, r4, #396
.LVL5642:
	.loc 36 520 0
	str	r3, [r6, #104]
	add	ip, r6, #255
	add	r3, r6, #141
	.loc 36 519 0
	str	r0, [r6, #112]
.LBB13521:
.LBB13516:
	.loc 32 27 0
	strb	r2, [r6, #140]
.LVL5643:
	movt	r1, #:upper16:.LC260
	b	.L4978
.LVL5644:
.L4980:
	strb	r2, [r3], #1
.LVL5645:
	.loc 32 26 0
	cmp	r3, ip
	beq	.L4988
.LVL5646:
.L4978:
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	rsb	r0, r4, r3
.LVL5647:
	cmp	r2, #0
	bne	.L4980
.LVL5648:
.L4979:
.LBE13516:
.LBE13521:
	.loc 36 524 0
	movw	r3, #:lower16:ksCurThread
.LBB13522:
.LBB13517:
	.loc 32 29 0
	mov	r2, #0
.LBE13517:
.LBE13522:
	.loc 36 524 0
	movt	r3, #:upper16:ksCurThread
.LBB13523:
.LBB13518:
	.loc 32 29 0
	strb	r2, [r4, r0]
.LBE13518:
.LBE13523:
	.loc 36 524 0
	ldr	r1, [r3]
	mov	r2, #116
	mov	r0, r4
	add	r1, r1, #140
	bl	strlcat
.LVL5649:
	.loc 36 525 0
	movw	r1, #:lower16:.LC261
	mov	r0, r4
	mov	r2, #116
	movt	r1, #:upper16:.LC261
	bl	strlcat
.LVL5650:
.LBB13524:
.LBB13525:
	.loc 28 1596 0
	ands	r3, r6, #15
	.loc 28 1597 0
	biceq	r6, r6, #15
.LVL5651:
	.loc 28 1602 0
	streq	r3, [r5, #4]
	.loc 28 1600 0
	orreq	r6, r6, #12
	.loc 28 1602 0
	streq	r6, [r5]
	.loc 28 1596 0
	beq	.L4969
	bl	cap_thread_cap_new.part.192
.LVL5652:
.L4975:
.LBE13525:
.LBE13524:
.LBE13510:
	.loc 36 532 0
	mov	r0, r2
.LVL5653:
	mov	r1, #16
.LVL5654:
	bl	memzero
.LVL5655:
.LBB13527:
.LBB13528:
	.loc 28 1173 0
	tst	r4, #15
	bne	.L4994
.LVL5656:
	.loc 28 1174 0
	bic	r4, r4, #15
.LVL5657:
	.loc 28 1179 0
	mov	r3, #4
	.loc 28 1174 0
	orr	r4, r4, #7
.LVL5658:
.LBE13528:
.LBE13527:
	.loc 36 564 0
	mov	r0, r5
.LBB13531:
.LBB13529:
	.loc 28 1179 0
	stmia	r5, {r3, r4}
.LBE13529:
.LBE13531:
	.loc 36 564 0
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL5659:
.L4977:
	.loc 36 546 0
	add	r1, r3, #4
.LVL5660:
	mov	r3, #1
.LVL5661:
	mov	r1, r3, asl r1
	mov	r0, r2
.LVL5662:
	bl	memzero
.LVL5663:
.LBB13532:
.LBB13533:
	.loc 28 1490 0
	bics	r3, r6, #31
	bne	.L4995
	.loc 28 1499 0
	tst	r4, #31
	.loc 28 1491 0
	mov	r6, r6, asl #18
.LVL5664:
	.loc 28 1500 0
	biceq	r4, r4, #31
.LVL5665:
	.loc 28 1503 0
	orreq	r4, r4, #10
	.loc 28 1505 0
	streq	r6, [r5, #4]
	streq	r4, [r5]
	.loc 28 1499 0
	beq	.L4969
	movw	r0, #:lower16:.LC252
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC252
	movt	r1, #:upper16:.LC30
	movw	r2, #1499
	ldr	r3, .L4996+4
	bl	_assert_fail
.LVL5666:
.L4988:
.LBE13533:
.LBE13532:
.LBB13535:
.LBB13526:
.LBB13519:
	.loc 32 26 0
	mov	r0, #115
	b	.L4979
.LVL5667:
.L4993:
.LBE13519:
.LBE13526:
.LBE13535:
.LBB13536:
.LBB13509:
	.loc 28 1072 0
	movw	r0, #:lower16:.LC178
.LVL5668:
	movw	r1, #:lower16:.LC30
.LVL5669:
	movt	r0, #:upper16:.LC178
	movt	r1, #:upper16:.LC30
	mov	r2, #1072
.LVL5670:
	ldr	r3, .L4996
	bl	_assert_fail
.LVL5671:
.L4992:
.LBE13509:
.LBE13536:
.LBB13537:
.LBB13506:
	.loc 28 1317 0
	movw	r0, #:lower16:.LC263
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC263
	movt	r1, #:upper16:.LC30
	movw	r2, #1317
	ldr	r3, .L4996+8
	bl	_assert_fail
.LVL5672:
.L4995:
.LBE13506:
.LBE13537:
.LBB13538:
.LBB13534:
	bl	cap_cnode_cap_new.part.190
.LVL5673:
.L4994:
.LBE13534:
.LBE13538:
.LBB13539:
.LBB13530:
	.loc 28 1173 0
	movw	r0, #:lower16:.LC262
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC262
	movt	r1, #:upper16:.LC30
	movw	r2, #1173
	ldr	r3, .L4996+12
	bl	_assert_fail
.LVL5674:
.L4997:
	.align	2
.L4996:
	.word	.LANCHOR4+2956
	.word	.LANCHOR4+2916
	.word	.LANCHOR7-2992
	.word	.LANCHOR7-3016
.LBE13530:
.LBE13539:
	.cfi_endproc
.LFE631:
	.size	createObject, .-createObject
	.align	2
	.global	createNewObjects
	.type	createNewObjects, %function
createNewObjects:
.LFB632:
	.loc 36 569 0
	.cfi_startproc
	@ args = 20, pretend = 8, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5675:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 44
	.cfi_offset 4, -44
	.cfi_offset 5, -40
	.cfi_offset 6, -36
	.cfi_offset 7, -32
	.cfi_offset 8, -28
	.cfi_offset 9, -24
	.cfi_offset 10, -20
	.cfi_offset 11, -16
	.cfi_offset 14, -12
	sub	sp, sp, #12
	.cfi_def_cfa_offset 56
	.loc 36 569 0
	ldr	r7, [sp, #64]
	mov	r10, r1
	add	r1, sp, #44
.LVL5676:
	mov	r9, r0
	ldr	r6, [sp, #56]
.LVL5677:
	stmib	r1, {r2, r3}
	.loc 36 576 0
	mov	r1, r7
	bl	getObjectSize
.LVL5678:
	.loc 36 583 0
	cmp	r6, #0
	beq	.L4998
	ldr	r4, [sp, #52]
	mov	r8, r0
.LVL5679:
	ldr	r3, [sp, #48]
	mov	fp, #0
	mov	r5, sp
	add	r4, r3, r4, asl #4
.LVL5680:
.L5000:
.LBB13540:
	.loc 36 586 0 discriminator 3
	ldr	r3, [sp, #60]
	mov	r0, r5
	mov	r1, r9
	add	r2, r3, fp, asl r8
	mov	r3, r7
.LBE13540:
	.loc 36 583 0 discriminator 3
	add	fp, fp, #1
.LVL5681:
.LBB13541:
	.loc 36 586 0 discriminator 3
	bl	createObject
.LVL5682:
	.loc 36 589 0 discriminator 3
	mov	r1, r4
	mov	r0, r10
	ldmia	r5, {r2, r3}
	add	r4, r4, #16
	bl	insertNewCap
.LVL5683:
.LBE13541:
	.loc 36 583 0 discriminator 3
	cmp	fp, r6
	bne	.L5000
.LVL5684:
.L4998:
	.loc 36 593 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 44
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 8
.LVL5685:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
.LVL5686:
	bx	lr
	.cfi_endproc
.LFE632:
	.size	createNewObjects, .-createNewObjects
	.align	2
	.global	invokeUntyped_Retype
	.type	invokeUntyped_Retype, %function
invokeUntyped_Retype:
.LFB671:
	.file 55 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/object/untyped.c"
	.loc 55 224 0
	.cfi_startproc
	@ args = 20, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5687:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 48
	.loc 55 224 0
	ldr	r6, [sp, #48]
	mov	r5, r0
	mov	r4, r1
	.loc 55 248 0
	mov	r0, r3
.LVL5688:
	.loc 55 224 0
	mov	r9, r2
	mov	r8, r3
	.loc 55 248 0
	mov	r1, r6
.LVL5689:
	ldr	r7, [sp, #60]
	bl	getObjectSize
.LVL5690:
.LBB13544:
.LBB13545:
	.loc 28 1101 0
	ldr	r1, [r5]
	rsb	r4, r4, r9
.LVL5691:
.LBE13545:
.LBE13544:
	.loc 55 251 0
	add	r0, r4, r7, asl r0
.LVL5692:
.LBB13552:
.LBB13546:
	.loc 28 1101 0
	and	r1, r1, #15
	cmp	r1, #2
.LBE13546:
.LBE13552:
	.loc 55 250 0
	mov	r4, r0, lsr #4
.LVL5693:
.LBB13553:
.LBB13547:
	.loc 28 1101 0
	bne	.L5007
	.loc 28 1107 0
	ldr	ip, [r5, #4]
.LBE13547:
.LBE13553:
	.loc 55 254 0
	add	r2, sp, #52
.LVL5694:
	str	r9, [sp, #4]
	mov	r0, r8
	str	r6, [sp, #8]
	mov	r1, r5
.LBB13554:
.LBB13548:
	.loc 28 1107 0
	and	r3, ip, #31
.LBE13548:
.LBE13554:
	.loc 55 254 0
	str	r7, [sp]
.LBB13555:
.LBB13549:
	.loc 28 1108 0
	orr	r4, r3, r4, asl #5
.LVL5695:
.LBE13549:
.LBE13555:
	.loc 55 254 0
	ldmia	r2, {r2, r3}
.LVL5696:
.LBB13556:
.LBB13550:
	.loc 28 1108 0
	str	r4, [r5, #4]
.LBE13550:
.LBE13556:
	.loc 55 254 0
	bl	createNewObjects
.LVL5697:
	.loc 55 257 0
	mov	r0, #0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.LVL5698:
.L5007:
	.cfi_restore_state
.LBB13557:
.LBB13551:
	bl	cap_untyped_cap_ptr_set_capFreeIndex.part.150
.LVL5699:
.LBE13551:
.LBE13557:
	.cfi_endproc
.LFE671:
	.size	invokeUntyped_Retype, .-invokeUntyped_Retype
	.align	2
	.global	decodeUntypedInvocation
	.type	decodeUntypedInvocation, %function
decodeUntypedInvocation:
.LFB670:
	.loc 55 35 0
	.cfi_startproc
	@ args = 32, pretend = 8, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5700:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 55 49 0
	cmp	r0, #1
	.loc 55 35 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 44
	.cfi_offset 4, -44
	.cfi_offset 5, -40
	.cfi_offset 6, -36
	.cfi_offset 7, -32
	.cfi_offset 8, -28
	.cfi_offset 9, -24
	.cfi_offset 10, -20
	.cfi_offset 11, -16
	.cfi_offset 14, -12
	sub	sp, sp, #76
	.cfi_def_cfa_offset 120
	.loc 55 35 0
	mov	r4, r0
	str	r3, [sp, #116]
	ldr	r6, [sp, #120]
.LVL5701:
	ldr	r0, [sp, #124]
.LVL5702:
	.loc 55 49 0
	beq	.L5009
	.loc 55 50 0
	movw	r3, #:lower16:ksCurThread
.LVL5703:
	movw	r0, #:lower16:.LC3
.LVL5704:
	movt	r3, #:upper16:ksCurThread
	mov	r2, #50
.LVL5705:
	ldr	ip, [r3]
.LVL5706:
	movt	r0, #:upper16:.LC3
	ldr	r1, .L5065
.LVL5707:
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL5708:
	str	ip, [sp, #4]
	bl	kprintf
.LVL5709:
	movw	r0, #:lower16:.LC264
	movt	r0, #:upper16:.LC264
	bl	kprintf
.LVL5710:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL5711:
	.loc 55 51 0
	mov	r2, #3
	movw	r3, #:lower16:current_syscall_error
	.loc 55 52 0
	mov	r0, r2
	.loc 55 51 0
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
.LVL5712:
.L5043:
	.loc 55 217 0
	add	sp, sp, #76
	.cfi_remember_state
	.cfi_def_cfa_offset 44
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
.LVL5713:
	bx	lr
.LVL5714:
.L5009:
	.cfi_restore_state
	.loc 55 56 0 discriminator 1
	cmp	r0, #0
	cmpne	r1, #5
	movls	r5, #1
	movhi	r5, #0
	bls	.L5050
.LBB13650:
.LBB13651:
	.loc 43 30 0
	movw	r9, #:lower16:ksCurThread
	mov	r8, r2
	movt	r9, #:upper16:ksCurThread
	mov	r7, r3
.LVL5715:
	ldr	r2, [r9]
.LVL5716:
.LBE13651:
.LBE13650:
.LBB13655:
.LBB13656:
	.loc 43 33 0
	ldr	r3, [sp, #140]
.LVL5717:
.LBE13656:
.LBE13655:
.LBB13661:
.LBB13662:
.LBB13663:
.LBB13664:
	.loc 13 27 0
	ldr	r1, [r2, #20]
.LVL5718:
.LBE13664:
.LBE13663:
.LBE13662:
.LBE13661:
.LBB13668:
.LBB13657:
	.loc 43 33 0
	cmp	r3, #0
.LBE13657:
.LBE13668:
.LBB13669:
.LBB13654:
.LBB13652:
.LBB13653:
	.loc 13 27 0
	ldr	r10, [r2, #8]
.LVL5719:
.LBE13653:
.LBE13652:
.LBE13654:
.LBE13669:
.LBB13670:
.LBB13671:
.LBB13672:
.LBB13673:
	ldr	fp, [r2, #12]
.LVL5720:
.LBE13673:
.LBE13672:
.LBE13671:
.LBE13670:
.LBB13674:
.LBB13675:
.LBB13676:
.LBB13677:
	ldr	r3, [r2, #16]
.LVL5721:
.LBE13677:
.LBE13676:
.LBE13675:
.LBE13674:
.LBB13678:
.LBB13667:
.LBB13666:
.LBB13665:
	str	r1, [sp, #28]
.LVL5722:
.LBE13665:
.LBE13666:
.LBE13667:
.LBE13678:
.LBB13679:
.LBB13658:
	.loc 43 33 0
	beq	.L5051
.LVL5723:
	.loc 43 34 0
	ldr	r1, [sp, #140]
.LBE13658:
.LBE13679:
	.loc 55 73 0
	cmp	r10, #10
.LBB13680:
.LBB13659:
	.loc 43 34 0
	ldr	ip, [r1, #20]
.LVL5724:
.LBE13659:
.LBE13680:
.LBB13681:
.LBB13682:
	ldr	r1, [r1, #24]
	str	r1, [sp, #32]
.LVL5725:
.LBE13682:
.LBE13681:
	.loc 55 73 0
	bhi	.L5052
	.loc 55 81 0
	cmp	fp, #30
	bhi	.L5053
	.loc 55 90 0
	cmp	fp, #0
	cmpeq	r10, #4
	beq	.L5054
	.loc 55 98 0
	cmp	fp, #3
	cmpls	r10, #0
	moveq	lr, #1
	movne	lr, #0
	beq	.L5055
	.loc 55 106 0
	ldr	r2, [sp, #28]
.LVL5726:
	cmp	r2, #0
	bne	.L5017
	.loc 55 107 0
	ldr	r2, [r0, #4]
.LVL5727:
	ldr	r3, [r0]
.LVL5728:
.L5018:
.LBB13683:
.LBB13684:
	.loc 28 1035 0
	and	r1, r3, #14
	cmp	r1, #14
	.loc 28 1037 0
	uxtbeq	r1, r3
	.loc 28 1036 0
	andne	r1, r3, #15
.LBE13684:
.LBE13683:
	.loc 55 119 0
	cmp	r1, #10
	beq	.L5022
	.loc 55 120 0
	ldr	ip, [r9]
.LVL5729:
	movw	r0, #:lower16:.LC3
	ldr	r1, .L5065
	mov	r2, #120
.LVL5730:
	movt	r0, #:upper16:.LC3
	add	lr, ip, #140
	mov	r3, ip
.LVL5731:
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL5732:
	str	ip, [sp, #4]
	bl	kprintf
.LVL5733:
	movw	r0, #:lower16:.LC271
	movt	r0, #:upper16:.LC271
	bl	kprintf
.LVL5734:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL5735:
.LBB13685:
.LBB13686:
	.loc 28 2599 0
	ldr	r2, [sp, #28]
.LBE13686:
.LBE13685:
	.loc 55 121 0
	movw	r3, #:lower16:current_syscall_error
	movt	r3, #:upper16:current_syscall_error
	mov	r0, #6
	str	r0, [r3, #24]
.LBB13691:
.LBB13687:
	.loc 28 2599 0
	bics	r1, r2, #63
.LBE13687:
.LBE13691:
	.loc 55 122 0
	mov	r2, #0
	str	r2, [r3, #20]
.LVL5736:
.LBB13692:
.LBB13688:
	.loc 28 2599 0
	bne	.L5056
.LVL5737:
	.loc 28 2600 0
	ldr	r3, [sp, #28]
.LBE13688:
.LBE13692:
	.loc 55 123 0
	movw	r2, #:lower16:current_lookup_fault
	movt	r2, #:upper16:current_lookup_fault
	.loc 55 124 0
	mov	r0, #3
	.loc 55 123 0
	str	r1, [r2, #4]
.LBB13693:
.LBB13689:
	.loc 28 2600 0
	mov	r3, r3, asl #2
	.loc 28 2603 0
	orr	r3, r3, #1
.LVL5738:
.LBE13689:
.LBE13693:
	.loc 55 123 0
	str	r3, [r2]
	.loc 55 124 0
	b	.L5043
.LVL5739:
.L5050:
	.loc 55 57 0
	movw	r3, #:lower16:ksCurThread
.LVL5740:
	movw	r0, #:lower16:.LC3
.LVL5741:
	movt	r3, #:upper16:ksCurThread
	mov	r2, #57
.LVL5742:
	ldr	ip, [r3]
.LVL5743:
	movt	r0, #:upper16:.LC3
	ldr	r1, .L5065
.LVL5744:
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL5745:
	str	ip, [sp, #4]
	bl	kprintf
.LVL5746:
	movw	r0, #:lower16:.LC265
	movt	r0, #:upper16:.LC265
	bl	kprintf
.LVL5747:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL5748:
	.loc 55 58 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	.loc 55 59 0
	mov	r0, #3
	.loc 55 58 0
	str	r2, [r3, #24]
	.loc 55 217 0
	add	sp, sp, #76
	.cfi_remember_state
	.cfi_def_cfa_offset 44
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 14
	.cfi_def_cfa_offset 8
.LVL5749:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
.LVL5750:
	bx	lr
.LVL5751:
.L5052:
	.cfi_restore_state
	.loc 55 74 0
	add	r3, r2, #140
	movw	r0, #:lower16:.LC3
.LVL5752:
	str	r3, [sp]
	movt	r0, #:upper16:.LC3
	ldr	ip, [r2, #68]
	mov	r3, r2
	ldr	r1, .L5065
	mov	r2, #74
.LVL5753:
	str	ip, [sp, #4]
	bl	kprintf
.LVL5754:
	movw	r0, #:lower16:.LC266
	movt	r0, #:upper16:.LC266
	bl	kprintf
.LVL5755:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL5756:
	.loc 55 75 0
	movw	r3, #:lower16:current_syscall_error
	.loc 55 77 0
	mov	r0, #3
	.loc 55 75 0
	movt	r3, #:upper16:current_syscall_error
	str	r4, [r3, #24]
	.loc 55 76 0
	str	r5, [r3]
	.loc 55 77 0
	b	.L5043
.LVL5757:
.L5053:
	.loc 55 82 0
	add	r3, r2, #140
	movw	r0, #:lower16:.LC3
.LVL5758:
	str	r3, [sp]
	movt	r0, #:upper16:.LC3
	ldr	ip, [r2, #68]
	mov	r3, r2
	ldr	r1, .L5065
	mov	r2, #82
.LVL5759:
	str	ip, [sp, #4]
	bl	kprintf
.LVL5760:
	movw	r0, #:lower16:.LC267
	movt	r0, #:upper16:.LC267
	bl	kprintf
.LVL5761:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL5762:
	.loc 55 83 0
	movw	r3, #:lower16:current_syscall_error
	mov	r1, #4
	movt	r3, #:upper16:current_syscall_error
	.loc 55 85 0
	mov	r2, #30
	.loc 55 84 0
	str	r5, [r3, #8]
	.loc 55 86 0
	mov	r0, #3
	.loc 55 83 0
	str	r1, [r3, #24]
	.loc 55 85 0
	str	r2, [r3, #12]
	.loc 55 86 0
	b	.L5043
.LVL5763:
.L5054:
	.loc 55 91 0
	add	r3, r2, #140
	movw	r0, #:lower16:.LC3
.LVL5764:
	str	r3, [sp]
	movt	r0, #:upper16:.LC3
	ldr	ip, [r2, #68]
	mov	r3, r2
	ldr	r1, .L5065
	mov	r2, #91
.LVL5765:
	str	ip, [sp, #4]
	bl	kprintf
.LVL5766:
	movw	r0, #:lower16:.LC268
	movt	r0, #:upper16:.LC268
.LVL5767:
.L5047:
	.loc 55 99 0
	bl	kprintf
.LVL5768:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL5769:
	.loc 55 100 0
	movw	r3, #:lower16:current_syscall_error
	.loc 55 102 0
	mov	r0, #3
	.loc 55 100 0
	movt	r3, #:upper16:current_syscall_error
	str	r4, [r3, #24]
	.loc 55 101 0
	str	r4, [r3]
	.loc 55 102 0
	b	.L5043
.LVL5770:
.L5055:
	.loc 55 99 0
	add	r3, r2, #140
	movw	r0, #:lower16:.LC3
.LVL5771:
	str	r3, [sp]
	movt	r0, #:upper16:.LC3
	ldr	ip, [r2, #68]
	mov	r3, r2
	ldr	r1, .L5065
	mov	r2, #99
.LVL5772:
	str	ip, [sp, #4]
	bl	kprintf
.LVL5773:
	movw	r0, #:lower16:.LC269
	movt	r0, #:upper16:.LC269
	b	.L5047
.LVL5774:
.L5022:
.LBB13694:
.LBB13695:
	.loc 28 1537 0
	and	r1, r3, #15
	cmp	r1, #10
	bne	.L5057
.LVL5775:
	.loc 28 1540 0
	ubfx	r2, r2, #18, #5
.LVL5776:
.LBE13695:
.LBE13694:
	.loc 55 128 0
	mov	r5, #1
	mov	r2, r5, asl r2
.LVL5777:
	.loc 55 129 0
	sub	r4, r2, #1
	cmp	r4, ip
	bcc	.L5058
	.loc 55 137 0
	ldr	r1, [sp, #32]
	sub	r1, r1, #1
	cmp	r1, #255
	bhi	.L5059
	.loc 55 145 0
	rsb	r4, ip, r2
	ldr	r2, [sp, #32]
.LVL5778:
	cmp	r4, r2
	bcc	.L5060
.LVL5779:
	.loc 55 157 0
	ldr	r2, [sp, #32]
.LBB13697:
.LBB13698:
	.loc 28 1580 0
	bic	r3, r3, #31
.LVL5780:
.LBE13698:
.LBE13697:
	.loc 55 155 0
	str	ip, [sp, #64]
	.loc 55 157 0
	add	r0, r2, ip
	.loc 55 156 0
	str	r2, [sp, #68]
.LVL5781:
	.loc 55 157 0
	cmp	r0, ip
	bls	.L5028
.L5032:
.LVL5782:
	ldr	r2, [r3, ip, asl #4]
.LVL5783:
.LBB13699:
.LBB13700:
.LBB13701:
.LBB13702:
	.loc 28 1035 0
	and	r1, r2, #14
	cmp	r1, #14
	.loc 28 1037 0
	uxtbeq	r2, r2
.LVL5784:
	.loc 28 1036 0
	andne	r2, r2, #15
.LBE13702:
.LBE13701:
	.loc 27 894 0
	cmp	r2, #0
	beq	.L5031
.LBE13700:
.LBE13699:
	.loc 55 160 0
	ldr	r1, [r9]
.LBB13706:
.LBB13703:
	.loc 27 895 0
	movw	lr, #:lower16:current_syscall_error
	movt	lr, #:upper16:current_syscall_error
.LBE13703:
.LBE13706:
	.loc 55 160 0
	movw	r0, #:lower16:.LC3
.LBB13707:
.LBB13704:
	.loc 27 895 0
	mov	r5, #8
.LBE13704:
.LBE13707:
	.loc 55 160 0
	movt	r0, #:upper16:.LC3
	add	r2, r1, #140
	mov	r3, r1
.LVL5785:
	str	r2, [sp]
	mov	r2, #161
	ldr	r4, [r1, #68]
.LBB13708:
.LBB13705:
	.loc 27 895 0
	str	r5, [lr, #24]
.LVL5786:
.LBE13705:
.LBE13708:
	.loc 55 160 0
	ldr	r1, .L5065
.LVL5787:
	str	r4, [sp, #4]
	str	ip, [sp, #28]
	bl	kprintf
.LVL5788:
	ldr	ip, [sp, #28]
	movw	r0, #:lower16:.LC275
	movt	r0, #:upper16:.LC275
	mov	r1, ip
	bl	kprintf
.LVL5789:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL5790:
	.loc 55 162 0
	mov	r0, #3
	b	.L5043
.LVL5791:
.L5031:
	.loc 55 157 0 discriminator 2
	add	ip, ip, #1
.LVL5792:
	cmp	ip, r0
	bcc	.L5032
.LVL5793:
.L5028:
	.loc 55 177 0
	mov	r0, r8
	str	r3, [sp, #28]
	bl	ensureNoChildren
.LVL5794:
	.loc 55 178 0
	cmp	r0, #0
	ldr	r3, [sp, #28]
	beq	.L5033
.LVL5795:
.LBB13709:
.LBB13710:
	.loc 28 1087 0
	and	r2, r7, #15
	cmp	r2, #2
	.loc 28 1090 0
	moveq	r2, r6, lsr #5
	.loc 28 1087 0
	bne	.L5061
.LVL5796:
.L5035:
.LBE13710:
.LBE13709:
	.loc 55 183 0
	mov	r2, r2, asl #4
.LVL5797:
	.loc 55 193 0
	mov	r0, r10
.LVL5798:
	mov	r1, fp
	str	r3, [sp, #36]
	.loc 55 183 0
	str	r2, [sp, #28]
.LVL5799:
.LBB13712:
.LBB13713:
	.loc 28 1145 0
	bic	r7, r7, #15
.LVL5800:
.LBE13713:
.LBE13712:
	.loc 55 193 0
	bl	getObjectSize
.LVL5801:
	.loc 55 194 0
	ldr	r2, [sp, #28]
	.loc 55 197 0
	cmp	r0, #31
	.loc 55 194 0
	mov	r5, #1
.LBB13716:
.LBB13717:
	.loc 28 1117 0
	and	r6, r6, #31
.LVL5802:
.LBE13717:
.LBE13716:
	.loc 55 193 0
	mov	r4, r0
	.loc 55 197 0
	ldr	r3, [sp, #36]
	sub	r0, r7, #1
.LVL5803:
	.loc 55 194 0
	rsb	r6, r2, r5, asl r6
.LVL5804:
	.loc 55 197 0
	bhi	.L5062
	.loc 55 197 0 is_stmt 0 discriminator 1
	ldr	r1, [sp, #32]
	cmp	r1, r6, lsr r4
	bls	.L5063
	.loc 55 198 0 is_stmt 1
	ldr	ip, [r9]
.LVL5805:
	movw	r0, #:lower16:.LC3
	mov	r2, #202
.LVL5806:
	movt	r0, #:upper16:.LC3
	ldr	r1, .L5065
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL5807:
	str	ip, [sp, #4]
	bl	kprintf
.LVL5808:
	mov	r2, r5, asl r4
.L5041:
	.loc 55 198 0 is_stmt 0 discriminator 4
	movw	r0, #:lower16:.LC276
	ldr	r1, [sp, #32]
	mov	r3, r6
	movt	r0, #:upper16:.LC276
	bl	kprintf
.LVL5809:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL5810:
	.loc 55 203 0 is_stmt 1 discriminator 4
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #10
	movt	r3, #:upper16:current_syscall_error
	.loc 55 205 0 discriminator 4
	mov	r0, #3
	.loc 55 204 0 discriminator 4
	str	r6, [r3, #16]
	.loc 55 203 0 discriminator 4
	str	r2, [r3, #24]
	.loc 55 205 0 discriminator 4
	b	.L5043
.LVL5811:
.L5017:
.LBB13718:
	.loc 55 109 0
	ldmia	r0, {r0, r1}
.LVL5812:
	add	r2, sp, #60
	str	ip, [sp, #36]
.LBB13719:
.LBB13720:
	.loc 48 129 0
	ldr	ip, [sp, #28]
	str	r3, [sp]
	add	r3, sp, #52
	str	ip, [sp, #4]
.LBE13720:
.LBE13719:
	.loc 55 109 0
	stmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.LBB13722:
.LBB13721:
	.loc 48 129 0
	mov	r1, lr
	ldmia	r3, {r2, r3}
	add	r0, sp, #44
	bl	lookupSlotForCNodeOp
.LVL5813:
	ldr	r4, [sp, #44]
.LVL5814:
.LBE13721:
.LBE13722:
	.loc 55 111 0
	ldr	ip, [sp, #36]
	cmp	r4, #0
	bne	.L5064
	.loc 55 115 0
	ldr	r3, [sp, #48]
	ldr	r2, [r3, #4]
.LVL5815:
	ldr	r3, [r3]
.LVL5816:
	b	.L5018
.LVL5817:
.L5058:
.LBE13718:
	.loc 55 130 0
	ldr	lr, [r9]
.LVL5818:
	movw	r0, #:lower16:.LC3
	mov	r2, #131
.LVL5819:
	ldr	r1, .L5065
	movt	r0, #:upper16:.LC3
	str	ip, [sp, #28]
	add	r5, lr, #140
	mov	r3, lr
.LVL5820:
	str	r5, [sp]
	ldr	lr, [lr, #68]
.LVL5821:
	str	lr, [sp, #4]
	bl	kprintf
.LVL5822:
	ldr	ip, [sp, #28]
	movw	r0, #:lower16:.LC272
	movt	r0, #:upper16:.LC272
	mov	r1, ip
	bl	kprintf
.LVL5823:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL5824:
	.loc 55 132 0
	movw	r3, #:lower16:current_syscall_error
	mov	r1, #4
	movt	r3, #:upper16:current_syscall_error
	.loc 55 133 0
	mov	r2, #0
	.loc 55 134 0
	str	r4, [r3, #12]
	.loc 55 135 0
	mov	r0, #3
	.loc 55 132 0
	str	r1, [r3, #24]
	.loc 55 133 0
	str	r2, [r3, #8]
	.loc 55 135 0
	b	.L5043
.LVL5825:
.L5059:
	.loc 55 138 0
	ldr	ip, [r9]
.LVL5826:
	movw	r0, #:lower16:.LC3
	mov	r2, #139
.LVL5827:
	ldr	r1, .L5065
	movt	r0, #:upper16:.LC3
	add	lr, ip, #140
	mov	r3, ip
.LVL5828:
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL5829:
	str	ip, [sp, #4]
	bl	kprintf
.LVL5830:
	movw	r0, #:lower16:.LC273
	ldr	r1, [sp, #32]
	movt	r0, #:upper16:.LC273
	bl	kprintf
.LVL5831:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL5832:
	.loc 55 140 0
	movw	r3, #:lower16:current_syscall_error
	mov	r1, #4
	movt	r3, #:upper16:current_syscall_error
	.loc 55 142 0
	mov	r2, #256
	.loc 55 141 0
	str	r5, [r3, #8]
	.loc 55 143 0
	mov	r0, #3
	.loc 55 140 0
	str	r1, [r3, #24]
	.loc 55 142 0
	str	r2, [r3, #12]
	.loc 55 143 0
	b	.L5043
.LVL5833:
.L5064:
.LBB13723:
	.loc 55 112 0
	ldr	ip, [r9]
.LVL5834:
	movw	r0, #:lower16:.LC3
	ldr	r1, .L5065
	mov	r2, #112
	movt	r0, #:upper16:.LC3
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL5835:
	str	ip, [sp, #4]
	bl	kprintf
.LVL5836:
	movw	r0, #:lower16:.LC270
	movt	r0, #:upper16:.LC270
	bl	kprintf
.LVL5837:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL5838:
	.loc 55 113 0
	mov	r0, r4
	b	.L5043
.LVL5839:
.L5060:
.LBE13723:
	.loc 55 146 0
	ldr	ip, [r9]
.LVL5840:
	movw	r0, #:lower16:.LC3
	mov	r2, #146
	ldr	r1, .L5065
	movt	r0, #:upper16:.LC3
	add	lr, ip, #140
	mov	r3, ip
.LVL5841:
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL5842:
	str	ip, [sp, #4]
	bl	kprintf
.LVL5843:
	movw	r0, #:lower16:.LC274
	movt	r0, #:upper16:.LC274
	bl	kprintf
.LVL5844:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL5845:
	.loc 55 147 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #4
	movt	r3, #:upper16:current_syscall_error
	.loc 55 150 0
	mov	r0, #3
	.loc 55 148 0
	str	r5, [r3, #8]
	.loc 55 149 0
	str	r4, [r3, #12]
	.loc 55 147 0
	str	r2, [r3, #24]
	.loc 55 150 0
	b	.L5043
.LVL5846:
.L5062:
	.loc 55 198 0
	ldr	ip, [r9]
.LVL5847:
	movw	r0, #:lower16:.LC3
	mov	r2, #202
.LVL5848:
	movt	r0, #:upper16:.LC3
	ldr	r1, .L5065
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL5849:
	str	ip, [sp, #4]
	bl	kprintf
.LVL5850:
	mvn	r2, #0
	b	.L5041
.LVL5851:
.L5033:
.LBB13724:
.LBB13714:
	.loc 28 1142 0
	and	r1, r7, #15
	cmp	r1, #2
	bne	.L5040
.LBE13714:
.LBE13724:
	.loc 55 181 0
	mov	r2, r0
	b	.L5035
.LVL5852:
.L5051:
.LBB13725:
.LBB13660:
	bl	getSyscallArg.part.145
.LVL5853:
.L5061:
.LBE13660:
.LBE13725:
.LBB13726:
.LBB13711:
	.loc 28 1087 0
	movw	r0, #:lower16:.LC37
.LVL5854:
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC37
	movt	r1, #:upper16:.LC30
	mov	r2, #1088
	ldr	r3, .L5065+4
	bl	_assert_fail
.LVL5855:
.L5057:
.LBE13711:
.LBE13726:
.LBB13727:
.LBB13696:
	bl	cap_cnode_cap_get_capCNodeRadix.part.149
.LVL5856:
.L5063:
.LBE13696:
.LBE13727:
	.loc 55 213 0
	ldr	r1, [r9]
.LBB13728:
.LBB13729:
	.loc 55 28 0
	mov	r5, r5, asl r4
	add	r4, r0, r2
.LVL5857:
	str	r3, [sp, #28]
.LVL5858:
	add	r4, r4, r5
	rsb	r5, r5, #0
.LBE13729:
.LBE13728:
.LBB13731:
.LBB13732:
.LBB13733:
.LBB13734:
	.loc 28 169 0
	ldr	r2, [r1, #72]
.LVL5859:
.LBE13734:
.LBE13733:
	.loc 26 418 0
	mov	r0, r1
.LBE13732:
.LBE13731:
.LBB13738:
.LBB13730:
	.loc 55 28 0
	and	r4, r4, r5
.LVL5860:
.LBE13730:
.LBE13738:
.LBB13739:
.LBB13737:
.LBB13736:
.LBB13735:
	.loc 28 169 0
	bic	r2, r2, #15
	.loc 28 170 0
	orr	r2, r2, #2
	str	r2, [r1, #72]
.LBE13735:
.LBE13736:
	.loc 26 418 0
	bl	scheduleTCB
.LVL5861:
.LBE13737:
.LBE13739:
	.loc 55 214 0
	ldr	r3, [sp, #28]
	add	r2, sp, #72
	mov	ip, sp
	str	r3, [r2, #-12]!
	mov	r3, r10
	ldmia	r2, {r0, r1, r2}
	str	fp, [ip], #4
	stmia	ip, {r0, r1, r2}
	mov	r2, r4
	ldr	r1, [sp, #136]
	mov	r0, r8
	str	r1, [sp, #16]
	mov	r1, r7
	bl	invokeUntyped_Retype
.LVL5862:
	b	.L5043
.LVL5863:
.L5056:
.LBB13740:
.LBB13690:
	bl	lookup_fault_missing_capability_new.part.71
.LVL5864:
.L5040:
.LBE13690:
.LBE13740:
.LBB13741:
.LBB13715:
	bl	cap_untyped_cap_get_capPtr.isra.75.part.76
.LVL5865:
.L5066:
	.align	2
.L5065:
	.word	.LANCHOR7-2964
	.word	.LANCHOR7-2940
.LBE13715:
.LBE13741:
	.cfi_endproc
.LFE670:
	.size	decodeUntypedInvocation, .-decodeUntypedInvocation
	.section	.boot.text
	.align	2
	.global	allocate_bi_frame
	.type	allocate_bi_frame, %function
allocate_bi_frame:
.LFB499:
	.loc 25 248 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5866:
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 25 248 0
	mov	r4, r0
	.loc 25 252 0
	mov	r0, #12
.LVL5867:
	.loc 25 248 0
	mov	r5, r1
	mov	r6, r2
	.loc 25 252 0
	bl	alloc_region
.LVL5868:
	.loc 25 253 0
	subs	r7, r0, #0
	beq	.L5075
.LVL5869:
.LBB13750:
.LBB13751:
	.loc 4 331 0
	mov	r1, #4096
	bl	memzero
.LVL5870:
	.loc 4 332 0
	add	r1, r7, #4080
.LBB13752:
.LBB13753:
	.loc 15 95 0
	mov	r3, r7, lsr #5
.LVL5871:
.LBE13753:
.LBE13752:
	.loc 4 332 0
	add	r1, r1, #15
.LBB13759:
.LBB13758:
	.loc 15 95 0
	mov	r1, r1, lsr #5
	add	r1, r1, #1
	cmp	r1, r3
	bls	.L5071
.L5072:
.LVL5872:
	.loc 15 96 0
	mov	r2, r3, asl #5
.LVL5873:
.LBB13754:
.LBB13755:
	.loc 4 212 0
@ 212 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c7, c11, 1
@ 0 "" 2
.LBB13756:
.LBB13757:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE13757:
.LBE13756:
.LBE13755:
.LBE13754:
	.loc 15 95 0
	add	r3, r3, #1
.LVL5874:
	cmp	r1, r3
	bne	.L5072
.LVL5875:
.L5071:
.LBE13758:
.LBE13759:
.LBE13751:
.LBE13750:
	.loc 25 268 0
	movw	r2, #:lower16:ksDomScheduleIdx
	movw	r3, #:lower16:.LANCHOR7
.LVL5876:
	movt	r2, #:upper16:ksDomScheduleIdx
	movt	r3, #:upper16:.LANCHOR7
	ldr	lr, [r2]
	.loc 25 260 0
	movw	r2, #:lower16:.LANCHOR3
	movt	r2, #:upper16:.LANCHOR3
	.loc 25 261 0
	mov	ip, #12
	.loc 25 265 0
	mov	r1, #0
	.loc 25 267 0
	mov	r0, #16
	.loc 25 260 0
	str	r7, [r2, #16]
	.loc 25 268 0
	add	r3, r3, lr, asl #3
	.loc 25 261 0
	str	ip, [r2, #20]
	.loc 25 267 0
	strb	r0, [r7, #899]
	.loc 25 271 0
	mov	r0, r7
	.loc 25 268 0
	ldr	r3, [r3, #-3048]
	.loc 25 264 0
	stmia	r7, {r4, r5}
	.loc 25 266 0
	str	r6, [r7, #12]
	.loc 25 268 0
	str	r3, [r7, #4088]
	.loc 25 265 0
	str	r1, [r7, #8]
	.loc 25 271 0
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.LVL5877:
.L5075:
	.loc 25 254 0
	movw	r0, #:lower16:.LC277
.LVL5878:
	movt	r0, #:upper16:.LC277
	bl	kprintf
.LVL5879:
	.loc 25 271 0
	mov	r0, r7
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
	.cfi_endproc
.LFE499:
	.size	allocate_bi_frame, .-allocate_bi_frame
	.align	2
	.global	create_ipcbuf_frame
	.type	create_ipcbuf_frame, %function
create_ipcbuf_frame:
.LFB497:
	.loc 25 208 0
	.cfi_startproc
	@ args = 16, pretend = 8, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5880:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 14, -12
	sub	sp, sp, #32
	.cfi_def_cfa_offset 56
	.loc 25 208 0
	add	ip, sp, #16
	mov	r4, r0
	.loc 25 213 0
	mov	r0, #12
.LVL5881:
	.loc 25 208 0
	str	r3, [sp, #52]
	stmia	ip, {r1, r2}
	.loc 25 213 0
	bl	alloc_region
.LVL5882:
	.loc 25 214 0
	subs	r6, r0, #0
	beq	.L5136
.LVL5883:
.LBB13812:
.LBB13813:
	.loc 4 331 0
	mov	r1, #4096
	bl	memzero
.LVL5884:
	.loc 4 332 0
	add	r0, r6, #4080
.LBB13814:
.LBB13815:
	.loc 15 95 0
	mov	r2, r6, lsr #5
.LVL5885:
.LBE13815:
.LBE13814:
	.loc 4 332 0
	add	r0, r0, #15
.LBB13821:
.LBB13820:
	.loc 15 95 0
	mov	r0, r0, lsr #5
	add	r0, r0, #1
	cmp	r2, r0
	bcs	.L5082
.L5130:
.LVL5886:
	.loc 15 96 0
	mov	r1, r2, asl #5
.LVL5887:
.LBB13816:
.LBB13817:
	.loc 4 212 0
@ 212 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r1, c7, c11, 1
@ 0 "" 2
.LBB13818:
.LBB13819:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE13819:
.LBE13818:
.LBE13817:
.LBE13816:
	.loc 15 95 0
	add	r2, r2, #1
.LVL5888:
	cmp	r2, r0
	bne	.L5130
.LVL5889:
.L5082:
.LBE13820:
.LBE13821:
.LBE13813:
.LBE13812:
	.loc 25 221 0
	ldr	r3, [sp, #60]
	mov	r1, #0
	mov	ip, #1
	add	r5, sp, #24
	add	r2, sp, #52
.LVL5890:
	mov	r0, r5
	str	r3, [sp]
	mov	r3, r6
	str	ip, [sp, #4]
	str	r1, [sp, #8]
	str	r1, [sp, #12]
	ldmia	r2, {r1, r2}
	bl	create_mapped_it_frame_cap
.LVL5891:
	ldr	r3, [sp, #16]
.LVL5892:
	ldr	r0, [sp, #20]
.LVL5893:
.LBB13822:
.LBB13823:
.LBB13824:
.LBB13825:
	.loc 28 1035 0
	and	r2, r3, #14
	cmp	r2, #14
	beq	.L5137
	.loc 28 1036 0
	and	r2, r3, #15
.LVL5894:
.LBE13825:
.LBE13824:
	.loc 39 317 0
	sub	r1, r2, #2
	cmp	r1, #12
	ldrls	pc, [pc, r1, asl #2]
	b	.L5083
.L5085:
	.word	.L5084
	.word	.L5083
	.word	.L5086
	.word	.L5083
	.word	.L5087
	.word	.L5083
	.word	.L5128
	.word	.L5083
	.word	.L5089
	.word	.L5083
	.word	.L5090
	.word	.L5083
	.word	.L5128
.LVL5895:
.L5136:
.LBE13823:
.LBE13822:
.LBB13880:
.LBB13881:
	.loc 25 215 0
	movw	r0, #:lower16:.LC278
.LVL5896:
	movt	r0, #:upper16:.LC278
	bl	kprintf
.LVL5897:
.LBB13882:
.LBB13883:
	.loc 28 1058 0
	str	r6, [r4]
	str	r6, [r4, #4]
.LVL5898:
.L5076:
.LBE13883:
.LBE13882:
.LBE13881:
.LBE13880:
	.loc 25 225 0
	mov	r0, r4
	add	sp, sp, #32
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 8
.LVL5899:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL5900:
.L5137:
	.cfi_restore_state
.LBB13884:
.LBB13878:
.LBB13827:
.LBB13826:
	.loc 28 1037 0
	uxtb	r2, r3
.LVL5901:
.LBE13826:
.LBE13827:
	.loc 39 317 0
	sub	r1, r2, #2
	cmp	r1, #60
	ldrls	pc, [pc, r1, asl #2]
	b	.L5091
.L5093:
	.word	.L5092
	.word	.L5091
	.word	.L5094
	.word	.L5091
	.word	.L5095
	.word	.L5091
	.word	.L5128
	.word	.L5091
	.word	.L5096
	.word	.L5091
	.word	.L5097
	.word	.L5091
	.word	.L5128
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5128
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5098
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5091
	.word	.L5128
.L5128:
.LBB13828:
.LBB13829:
	.loc 38 302 0
	mov	r0, #160
.LVL5902:
.L5088:
.LBE13829:
.LBE13828:
.LBE13878:
.LBE13884:
	.loc 25 222 0
	ldmia	r5, {r1, r2}
	bl	write_slot
.LVL5903:
	.loc 25 224 0
	ldmia	r5, {r0, r1}
	stmia	r4, {r0, r1}
	b	.L5076
.LVL5904:
.L5097:
	and	r2, r3, #15
.LVL5905:
.L5090:
.LBB13885:
.LBB13879:
.LBB13849:
.LBB13850:
	.loc 28 1608 0
	cmp	r2, #12
.LBE13850:
.LBE13849:
	.loc 39 331 0
	biceq	r3, r3, #508
.LVL5906:
	biceq	r3, r3, #3
	addeq	r0, r3, #160
.LVL5907:
.LBB13852:
.LBB13851:
	.loc 28 1608 0
	beq	.L5088
	bl	cap_thread_cap_get_capTCBPtr.isra.59.part.60
.LVL5908:
.L5096:
	and	r2, r3, #15
.LVL5909:
.L5089:
.LBE13851:
.LBE13852:
.LBB13853:
.LBB13854:
	.loc 28 1577 0
	cmp	r2, #10
	.loc 28 1580 0
	biceq	r3, r3, #31
.LVL5910:
	addeq	r0, r3, #160
.LVL5911:
	.loc 28 1577 0
	beq	.L5088
	bl	cap_cnode_cap_get_capCNodePtr.isra.78.part.79
.LVL5912:
.L5095:
	and	r2, r3, #15
.LVL5913:
.L5087:
.LBE13854:
.LBE13853:
.LBB13855:
.LBB13856:
	.loc 28 1407 0
	cmp	r2, #6
	bne	.L5138
.LVL5914:
.L5123:
.LBE13856:
.LBE13855:
.LBB13858:
.LBB13846:
.LBB13830:
.LBB13831:
	.loc 28 1970 0
	bic	r3, r3, #15
.LVL5915:
	add	r0, r3, #160
.LVL5916:
	b	.L5088
.LVL5917:
.L5094:
	and	r2, r3, #15
.LVL5918:
.L5086:
.LBE13831:
.LBE13830:
.LBE13846:
.LBE13858:
.LBB13859:
.LBB13860:
	.loc 28 1185 0
	cmp	r2, #4
	.loc 28 1188 0
	biceq	r0, r0, #15
.LVL5919:
	addeq	r0, r0, #160
	.loc 28 1185 0
	beq	.L5088
	bl	cap_endpoint_cap_get_capEPPtr.part.77
.LVL5920:
.L5092:
	and	r2, r3, #15
.LVL5921:
.L5084:
.LBE13860:
.LBE13859:
.LBB13861:
.LBB13862:
	.loc 28 1142 0
	cmp	r2, #2
	beq	.L5123
	bl	cap_untyped_cap_get_capPtr.isra.75.part.76
.LVL5922:
.L5083:
.LBE13862:
.LBE13861:
.LBB13863:
.LBB13847:
	.loc 38 302 0
	sub	r1, r2, #1
	cmp	r1, #8
	ldrls	pc, [pc, r1, asl #2]
	b	.L5128
.L5107:
	.word	.L5106
	.word	.L5128
	.word	.L5106
	.word	.L5128
	.word	.L5108
	.word	.L5128
	.word	.L5109
	.word	.L5128
	.word	.L5110
.LVL5923:
.L5098:
.LBE13847:
.LBE13863:
.LBB13864:
.LBB13865:
.LBB13866:
.LBB13867:
.LBB13868:
.LBB13869:
	.loc 28 2318 0
	cmp	r2, #46
	bne	.L5139
	.loc 28 2321 0
	ubfx	r3, r3, #8, #6
.LVL5924:
.LBE13869:
.LBE13868:
	.loc 39 97 0
	cmp	r3, #32
	.loc 39 100 0
	andne	r3, r3, #31
.LVL5925:
	mvnne	r2, #0
.LVL5926:
	addne	r3, r3, #1
	.loc 39 97 0
	mvneq	r3, #31
.LVL5927:
	movne	r3, r2, asl r3
.LBE13867:
.LBE13866:
	.loc 39 114 0
	and	r0, r0, r3
.LVL5928:
	add	r0, r0, #160
	b	.L5088
.LVL5929:
.L5114:
	and	r2, r3, #15
.LVL5930:
.L5110:
.LBE13865:
.LBE13864:
.LBB13875:
.LBB13848:
.LBB13833:
.LBB13834:
	.loc 28 2162 0
	cmp	r2, #9
	.loc 28 2165 0
	biceq	r3, r3, #16320
.LVL5931:
	biceq	r3, r3, #63
	addeq	r0, r3, #160
.LVL5932:
	.loc 28 2162 0
	beq	.L5088
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.93.part.94
.LVL5933:
.L5113:
	and	r2, r3, #15
.LVL5934:
.L5109:
.LBE13834:
.LBE13833:
.LBB13835:
.LBB13836:
	.loc 28 2098 0
	cmp	r2, #7
	.loc 28 2101 0
	biceq	r3, r3, #1020
.LVL5935:
	biceq	r3, r3, #3
	addeq	r0, r3, #160
.LVL5936:
	.loc 28 2098 0
	beq	.L5088
	bl	cap_page_table_cap_get_capPTBasePtr.isra.91.part.92
.LVL5937:
.L5112:
	and	r2, r3, #15
.LVL5938:
.L5108:
.LBE13836:
.LBE13835:
.LBB13837:
.LBB13832:
	.loc 28 1967 0
	cmp	r2, #5
	beq	.L5123
	bl	cap_asid_pool_cap_get_capASIDPool.isra.95.part.96
.LVL5939:
.L5106:
.LBE13832:
.LBE13837:
.LBB13838:
.LBB13839:
	.loc 38 207 0
	and	r1, r2, #253
	cmp	r1, #1
	bne	.L5140
	.loc 38 210 0
	cmp	r2, #1
	beq	.L5117
	cmp	r2, #3
	bne	.L5128
.LVL5940:
.LBB13840:
.LBB13841:
	.loc 28 1919 0
	and	r2, r3, #15
.LVL5941:
	cmp	r2, #3
	.loc 28 1922 0
	biceq	r3, r3, #-268435441
.LVL5942:
	biceq	r3, r3, #264241152
	moveq	r3, r3, asl #10
	addeq	r0, r3, #160
.LVL5943:
	.loc 28 1919 0
	beq	.L5088
	bl	cap_frame_cap_get_capFBasePtr.isra.87.part.88
.LVL5944:
.L5091:
.LBE13841:
.LBE13840:
.LBE13839:
.LBE13838:
	.loc 38 302 0
	sub	r1, r2, #1
	cmp	r1, #8
	ldrls	pc, [pc, r1, asl #2]
	b	.L5128
.L5111:
	.word	.L5106
	.word	.L5128
	.word	.L5106
	.word	.L5128
	.word	.L5112
	.word	.L5128
	.word	.L5113
	.word	.L5128
	.word	.L5114
.LVL5945:
.L5117:
.LBB13845:
.LBB13844:
.LBB13842:
.LBB13843:
	.loc 28 1755 0
	and	r2, r3, #15
.LVL5946:
	cmp	r2, #1
	.loc 28 1758 0
	biceq	r3, r3, #-16777216
.LVL5947:
	biceq	r3, r3, #15
	moveq	r3, r3, asl #8
	addeq	r0, r3, #160
.LVL5948:
	.loc 28 1755 0
	beq	.L5088
	bl	cap_small_frame_cap_get_capFBasePtr.isra.85.part.86
.LVL5949:
.L5140:
.LBE13843:
.LBE13842:
	bl	generic_frame_cap_get_capFBasePtr.isra.89.part.90
.LVL5950:
.L5139:
.LBE13844:
.LBE13845:
.LBE13848:
.LBE13875:
.LBB13876:
.LBB13874:
.LBB13873:
.LBB13872:
.LBB13871:
.LBB13870:
	bl	cap_zombie_cap_get_capZombieType.isra.80.part.81
.LVL5951:
.L5138:
.LBE13870:
.LBE13871:
.LBE13872:
.LBE13873:
.LBE13874:
.LBE13876:
.LBB13877:
.LBB13857:
	bl	cap_notification_cap_get_capNtfnPtr.isra.68.part.69
.LVL5952:
.LBE13857:
.LBE13877:
.LBE13879:
.LBE13885:
	.cfi_endproc
.LFE497:
	.size	create_ipcbuf_frame, .-create_ipcbuf_frame
	.align	2
	.global	init_kernel
	.type	init_kernel, %function
init_kernel:
.LFB311:
	.loc 47 506 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 192
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5953:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
.LBB14075:
.LBB14076:
.LBB14077:
.LBB14078:
	.loc 3 61 0
	add	r6, r1, #-536870912
.LBE14078:
.LBE14077:
.LBE14076:
.LBE14075:
	.loc 47 506 0
	sub	sp, sp, #220
	.cfi_def_cfa_offset 256
.LBB14412:
.LBB14405:
.LBB14081:
.LBB14079:
	.loc 3 61 0
	add	r7, r0, #-536870912
.LBE14079:
.LBE14081:
.LBB14082:
.LBB14083:
.LBB14084:
.LBB14085:
	.loc 21 43 0
	movw	r9, #:lower16:.LANCHOR1
	mov	r4, #0
.LBE14085:
.LBE14084:
.LBE14083:
.LBE14082:
.LBE14405:
.LBE14412:
	.loc 47 506 0
	str	r1, [sp, #32]
.LBB14413:
.LBB14406:
.LBB14094:
.LBB14092:
.LBB14088:
.LBB14086:
	.loc 21 43 0
	movt	r9, #:upper16:.LANCHOR1
.LBE14086:
.LBE14088:
.LBE14092:
.LBE14094:
.LBE14406:
.LBE14413:
	.loc 47 506 0
	str	r2, [sp, #28]
.LBB14414:
.LBB14407:
.LBB14095:
.LBB14096:
	.loc 47 94 0
	movw	r8, #:lower16:.LANCHOR3
.LBE14096:
.LBE14095:
.LBE14407:
.LBE14414:
	.loc 47 506 0
	str	r3, [sp, #40]
.LBB14415:
.LBB14408:
.LBB14102:
.LBB14097:
	.loc 47 94 0
	movt	r8, #:upper16:.LANCHOR3
.LBE14097:
.LBE14102:
.LBE14408:
.LBE14415:
	.loc 47 506 0
	str	r0, [sp, #36]
.LVL5954:
.LBB14416:
.LBB14409:
.LBB14103:
.LBB14080:
	.loc 3 60 0
	str	r7, [sp, #96]
	str	r6, [sp, #100]
.LVL5955:
.LBE14080:
.LBE14103:
	.loc 47 360 0
	bl	map_kernel_window
.LVL5956:
.LBB14104:
.LBB14105:
	.loc 47 310 0
	bl	activate_global_pd
.LVL5957:
.LBE14105:
.LBE14104:
	.loc 47 366 0
	movw	r0, #:lower16:.LC279
	movt	r0, #:upper16:.LC279
	bl	kprintf
.LVL5958:
.LBB14106:
.LBB14093:
.LBB14089:
.LBB14090:
	.loc 7 289 0
	bl	dist_init
.LVL5959:
	.loc 7 290 0
	bl	cpu_iface_init
.LVL5960:
.LBE14090:
.LBE14089:
.LBB14091:
.LBB14087:
	.loc 21 43 0
	ldr	r3, [r9, #16]
	.loc 21 47 0
	mov	r2, #13568
	movt	r2, 12
	.loc 21 43 0
	str	r4, [r3, #8]
	.loc 21 44 0
	str	r4, [r3, #12]
	.loc 21 47 0
	str	r2, [r3]
	.loc 21 48 0
	ldr	r2, [r3, #8]
	orr	r2, r2, #6
	str	r2, [r3, #8]
	.loc 21 52 0
	ldr	r2, [r3, #8]
	orr	r2, r2, #1
	str	r2, [r3, #8]
.LBE14087:
.LBE14091:
	.loc 47 320 0
	bl	initL2Cache
.LVL5961:
.LBE14093:
.LBE14106:
.LBB14107:
.LBB14098:
	.loc 47 81 0
	movw	r2, #:lower16:ki_end
	.loc 47 94 0
	str	r4, [r8]
	.loc 47 81 0
	movt	r2, #:upper16:ki_end
.LVL5962:
	.loc 47 94 0
	str	r4, [r8, #4]
.LVL5963:
	.loc 47 98 0
	cmp	r2, #-536870912
	.loc 47 94 0
	str	r4, [r8, #8]
	str	r4, [r8, #12]
.LVL5964:
	.loc 47 98 0
	bls	.L5329
	.loc 47 99 0
	cmp	r7, r6
	bcs	.L5330
	.loc 47 101 0
	cmp	r7, r2
	bcc	.L5331
	.loc 47 102 0
	cmp	r6, #-16777216
	bhi	.L5332
.LVL5965:
	.loc 47 115 0
	mov	r3, #0
	mov	ip, #-536870912
	add	r4, sp, #112
	add	r5, sp, #56
	movt	r3, 65520
	str	ip, [sp, #112]
	str	r3, [sp, #116]
	mov	r0, r5
	mov	r3, ip
	str	r2, [sp]
	str	r2, [sp, #196]
	ldmia	r4, {r1, r2}
	str	ip, [sp, #192]
	bl	insert_region_excluded
.LVL5966:
	ldmia	r5, {r0, r1}
	.loc 47 116 0
	mov	r3, r7
	str	r6, [sp]
	str	r7, [sp, #200]
	.loc 47 115 0
	stmia	r4, {r0, r1}
.LVL5967:
	.loc 47 116 0
	mov	r0, r5
.LVL5968:
	ldmia	r4, {r1, r2}
	str	r6, [sp, #204]
	bl	insert_region_excluded
.LVL5969:
	ldmia	r5, {r0, r1}
	.loc 47 117 0
	mov	ip, #0
	movt	ip, 65296
	mov	lr, #-16777216
	str	ip, [sp]
	mov	r3, lr
	.loc 47 116 0
	stmia	r4, {r0, r1}
.LVL5970:
	.loc 47 117 0
	mov	r0, r5
.LVL5971:
	ldmia	r4, {r1, r2}
	str	ip, [sp, #212]
	str	lr, [sp, #208]
	bl	insert_region_excluded
.LVL5972:
	ldmia	r5, {r0, r1}
	stmia	r4, {r0, r1}
.LVL5973:
	.loc 47 118 0
	ldr	r2, [sp, #116]
	ldr	r3, [sp, #112]
	cmp	r2, r3
	beq	.L5146
	.loc 47 119 0
	bl	insert_region
.LVL5974:
	.loc 47 120 0
	cmp	r0, #0
	beq	.L5333
.LVL5975:
.L5146:
.LBE14098:
.LBE14107:
	.loc 47 375 0
	add	r5, sp, #64
	mov	r0, r5
	bl	create_root_cnode
.LVL5976:
	ldr	r4, [sp, #64]
.LVL5977:
.LBB14108:
.LBB14109:
	.loc 28 1035 0
	and	r6, r4, #14
.LVL5978:
	cmp	r6, #14
	.loc 28 1037 0
	uxtbeq	r3, r4
	.loc 28 1036 0
	andne	r3, r4, #15
.LBE14109:
.LBE14108:
	.loc 47 376 0
	cmp	r3, #0
	bne	.L5334
.LVL5979:
.L5258:
.LBE14409:
.LBE14416:
	.loc 47 514 0
	movw	r0, #:lower16:.LC284
	movw	r1, #:lower16:.LC88
	movt	r0, #:upper16:.LC284
	movt	r1, #:upper16:.LC88
	movw	r2, #514
	ldr	r3, .L5338
	bl	_fail
.LVL5980:
.L5334:
.LBB14417:
.LBB14410:
	.loc 47 381 0
	ldmia	r5, {r0, r1}
	bl	create_domain_cap
.LVL5981:
	.loc 47 384 0
	bl	create_irq_cnode
.LVL5982:
	cmp	r0, #0
	beq	.L5258
	ldr	fp, .L5338+4
	mov	r10, #0
	ldmia	r5, {r0, r1}
.LBB14110:
.LBB14111:
.LBB14112:
.LBB14113:
	.loc 30 265 0
	mov	r7, r10
.LVL5983:
	add	ip, sp, #120
	stmia	ip, {r0, r1}
.LVL5984:
.L5150:
.LBB14114:
.LBB14115:
	uxth	r0, r10
.LBE14115:
.LBE14114:
	str	r7, [fp, #4]!
.LVL5985:
	add	r10, r10, #1
.LVL5986:
.LBB14117:
.LBB14116:
	bl	maskInterrupt.part.50
.LVL5987:
.LBE14116:
.LBE14117:
.LBE14113:
.LBE14112:
	.loc 47 130 0
	cmp	r10, #93
	bne	.L5150
.LVL5988:
.LBB14118:
.LBB14119:
.LBB14120:
.LBB14121:
.LBB14122:
	.loc 7 207 0
	ldr	r2, [r9]
.LBE14122:
.LBE14121:
.LBE14120:
	.loc 30 265 0
	movw	r3, #:lower16:intStateIRQTable
.LBE14119:
.LBE14118:
.LBB14130:
.LBB14131:
.LBB14132:
.LBB14133:
	.loc 28 1035 0
	cmp	r6, #14
.LBE14133:
.LBE14132:
.LBE14131:
.LBE14130:
.LBB14201:
.LBB14129:
	.loc 30 265 0
	movt	r3, #:upper16:intStateIRQTable
	mov	r0, #2
.LBB14127:
.LBB14125:
.LBB14123:
	.loc 7 207 0
	mov	r1, #536870912
.LBE14123:
.LBE14125:
.LBE14127:
	.loc 30 265 0
	str	r0, [r3, #116]
.LVL5989:
	ldr	r3, [sp, #124]
.LBB14128:
.LBB14126:
.LBB14124:
	.loc 7 207 0
	str	r1, [r2, #256]
.LVL5990:
.LBE14124:
.LBE14126:
.LBE14128:
.LBE14129:
.LBE14201:
.LBB14202:
.LBB14194:
.LBB14136:
.LBB14134:
	.loc 28 1035 0
	beq	.L5151
	.loc 28 1036 0
	and	r2, r4, #15
.LVL5991:
.LBE14134:
.LBE14136:
	.loc 39 317 0
	sub	r1, r2, #2
	cmp	r1, #12
	ldrls	pc, [pc, r1, asl #2]
	b	.L5152
.L5154:
	.word	.L5153
	.word	.L5152
	.word	.L5155
	.word	.L5152
	.word	.L5156
	.word	.L5152
	.word	.L5264
	.word	.L5152
	.word	.L5158
	.word	.L5152
	.word	.L5159
	.word	.L5152
	.word	.L5264
.LVL5992:
.L5264:
.LBB14137:
.LBB14138:
	.loc 38 302 0
	mov	r0, #64
.LVL5993:
.L5157:
.LBE14138:
.LBE14137:
.LBE14194:
.LBE14202:
.LBE14111:
.LBE14110:
	.loc 47 350 0
	ldr	r2, [sp, #32]
.LBB14220:
.LBB14211:
	.loc 47 136 0
	add	r3, sp, #128
.LBE14211:
.LBE14220:
	.loc 47 350 0
	ldr	r1, [sp, #28]
.LBB14221:
.LBB14212:
.LBB14203:
.LBB14204:
	.loc 28 2237 0
	mov	r7, #0
	mov	r9, #14
	str	r7, [sp, #132]
	str	r9, [sp, #128]
.LBE14204:
.LBE14203:
.LBE14212:
.LBE14221:
	.loc 47 350 0
	rsb	fp, r1, r2
.LVL5994:
.LBB14222:
.LBB14213:
	.loc 47 136 0
	ldmia	r3, {r1, r2}
	bl	write_slot
.LVL5995:
.LBE14213:
.LBE14222:
	.loc 47 392 0
	mov	r0, r7
	mov	r2, fp
	mov	r1, #1
	bl	allocate_bi_frame
.LVL5996:
	.loc 47 393 0
	subs	r3, r0, #0
	str	r3, [sp, #32]
.LVL5997:
	beq	.L5258
	ldmia	r5, {r0, r1}
.LVL5998:
	add	r3, sp, #136
.LVL5999:
	stmia	r3, {r0, r1}
.LVL6000:
.LBB14223:
.LBB14224:
	.loc 47 210 0
	mov	r0, r9
	bl	alloc_region
.LVL6001:
	.loc 47 211 0
	subs	r7, r0, #0
	beq	.L5258
	.loc 47 214 0
	mov	r1, #16384
	bl	memzero
.LVL6002:
	movw	r0, #:lower16:.LANCHOR0
	movw	r2, #3585
	movt	r0, #:upper16:.LANCHOR0
	mov	r3, #3584
	b	.L5194
.LVL6003:
.L5195:
	add	r3, r3, #1
	add	r2, r2, #1
.L5194:
.LVL6004:
.LBB14225:
.LBB14226:
	.loc 14 332 0
	cmp	r3, #4080
	beq	.L5195
	.loc 14 333 0
	ldr	r1, [r0, r3, asl #2]
	.loc 14 331 0
	cmp	r2, #4096
	.loc 14 333 0
	str	r1, [r7, r3, asl #2]
.LVL6005:
	.loc 14 331 0
	bne	.L5195
.LVL6006:
.LBE14226:
.LBE14225:
	.loc 47 216 0
	add	r2, r7, #16320
.LVL6007:
.LBB14227:
.LBB14228:
	.loc 15 95 0
	mov	r3, r7, lsr #5
.LVL6008:
.LBE14228:
.LBE14227:
	.loc 47 216 0
	add	r2, r2, #63
.LBB14234:
.LBB14233:
	.loc 15 95 0
	mov	r2, r2, lsr #5
	add	r1, r2, #1
	cmp	r3, r1
	bcs	.L5199
.L5300:
.LVL6009:
	.loc 15 96 0
	mov	r2, r3, asl #5
.LVL6010:
.LBB14229:
.LBB14230:
	.loc 4 212 0
@ 212 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c7, c11, 1
@ 0 "" 2
.LBB14231:
.LBB14232:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE14232:
.LBE14231:
.LBE14230:
.LBE14229:
	.loc 15 95 0
	add	r3, r3, #1
.LVL6011:
	cmp	r3, r1
	bne	.L5300
.LVL6012:
.L5199:
.LBE14233:
.LBE14234:
.LBB14235:
.LBB14236:
	.loc 28 2123 0
	ubfx	r3, r7, #0, #14
.LVL6013:
	cmp	r3, #0
	bne	.L5335
.LVL6014:
	.loc 28 2124 0
	bic	r7, r7, #16320
.LVL6015:
.LBE14236:
.LBE14235:
.LBB14239:
.LBB14240:
.LBB14241:
.LBB14242:
	.loc 28 1035 0
	cmp	r6, #14
.LBE14242:
.LBE14241:
.LBE14240:
.LBE14239:
.LBB14295:
.LBB14237:
	.loc 28 2124 0
	bic	r7, r7, #63
	str	r4, [sp, #136]
	.loc 28 2127 0
	orr	r3, r7, #25
	str	r3, [sp, #44]
.LVL6016:
	ldr	r3, [sp, #140]
.LVL6017:
.LBE14237:
.LBE14295:
.LBB14296:
.LBB14287:
.LBB14245:
.LBB14243:
	.loc 28 1035 0
	beq	.L5200
	.loc 28 1036 0
	and	r2, r4, #15
.LVL6018:
.LBE14243:
.LBE14245:
	.loc 39 317 0
	sub	r1, r2, #2
	cmp	r1, #12
	ldrls	pc, [pc, r1, asl #2]
	b	.L5201
.L5203:
	.word	.L5202
	.word	.L5201
	.word	.L5204
	.word	.L5201
	.word	.L5205
	.word	.L5201
	.word	.L5270
	.word	.L5201
	.word	.L5207
	.word	.L5201
	.word	.L5208
	.word	.L5201
	.word	.L5270
.LVL6019:
.L5164:
	and	r2, r4, #15
.LVL6020:
.L5156:
.LBE14287:
.LBE14296:
.LBE14224:
.LBE14223:
.LBB14331:
.LBB14214:
.LBB14205:
.LBB14195:
.LBB14162:
.LBB14163:
	.loc 28 1407 0
	cmp	r2, #6
	bne	.L5219
.LVL6021:
.L5192:
.LBE14163:
.LBE14162:
.LBB14165:
.LBB14157:
.LBB14139:
.LBB14140:
	.loc 28 1970 0
	bic	r0, r4, #15
	add	r0, r0, #64
	b	.L5157
.LVL6022:
.L5161:
	and	r2, r4, #15
.LVL6023:
.L5153:
.LBE14140:
.LBE14139:
.LBE14157:
.LBE14165:
.LBB14166:
.LBB14167:
	.loc 28 1142 0
	cmp	r2, #2
	beq	.L5192
.LVL6024:
.L5217:
	bl	cap_untyped_cap_get_capPtr.isra.75.part.76
.LVL6025:
.L5163:
	and	r2, r4, #15
.LVL6026:
.L5155:
.LBE14167:
.LBE14166:
.LBB14168:
.LBB14169:
	.loc 28 1185 0
	cmp	r2, #4
	.loc 28 1188 0
	biceq	r3, r3, #15
.LVL6027:
	addeq	r0, r3, #64
	.loc 28 1185 0
	beq	.L5157
.LVL6028:
.L5218:
	bl	cap_endpoint_cap_get_capEPPtr.part.77
.LVL6029:
.L5166:
	and	r2, r4, #15
.LVL6030:
.L5159:
.LBE14169:
.LBE14168:
.LBB14170:
.LBB14171:
	.loc 28 1608 0
	cmp	r2, #12
.LBE14171:
.LBE14170:
	.loc 39 331 0
	biceq	r0, r4, #508
	biceq	r0, r0, #3
	addeq	r0, r0, #64
.LBB14173:
.LBB14172:
	.loc 28 1608 0
	beq	.L5157
.LVL6031:
.L5221:
	bl	cap_thread_cap_get_capTCBPtr.isra.59.part.60
.LVL6032:
.L5165:
	and	r2, r4, #15
.LVL6033:
.L5158:
.LBE14172:
.LBE14173:
.LBB14174:
.LBB14175:
	.loc 28 1577 0
	cmp	r2, #10
	.loc 28 1580 0
	biceq	r0, r4, #31
	addeq	r0, r0, #64
	.loc 28 1577 0
	beq	.L5157
.LVL6034:
.L5220:
	bl	cap_cnode_cap_get_capCNodePtr.isra.78.part.79
.LVL6035:
.L5152:
.LBE14175:
.LBE14174:
.LBB14176:
.LBB14158:
	.loc 38 302 0
	sub	r3, r2, #1
.LVL6036:
	cmp	r3, #8
	ldrls	pc, [pc, r3, asl #2]
	b	.L5264
.L5176:
	.word	.L5175
	.word	.L5264
	.word	.L5175
	.word	.L5264
	.word	.L5177
	.word	.L5264
	.word	.L5178
	.word	.L5264
	.word	.L5179
.L5183:
	and	r2, r4, #15
.LVL6037:
.L5179:
.LBB14142:
.LBB14143:
	.loc 28 2162 0
	cmp	r2, #9
	.loc 28 2165 0
	biceq	r0, r4, #16320
	biceq	r0, r0, #63
	addeq	r0, r0, #64
	.loc 28 2162 0
	beq	.L5157
.LVL6038:
.L5240:
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.93.part.94
.LVL6039:
.L5182:
	and	r2, r4, #15
.LVL6040:
.L5178:
.LBE14143:
.LBE14142:
.LBB14144:
.LBB14145:
	.loc 28 2098 0
	cmp	r2, #7
	.loc 28 2101 0
	biceq	r0, r4, #1020
	biceq	r0, r0, #3
	addeq	r0, r0, #64
	.loc 28 2098 0
	beq	.L5157
.LVL6041:
.L5239:
	bl	cap_page_table_cap_get_capPTBasePtr.isra.91.part.92
.LVL6042:
.L5181:
	and	r2, r4, #15
.LVL6043:
.L5177:
.LBE14145:
.LBE14144:
.LBB14146:
.LBB14141:
	.loc 28 1967 0
	cmp	r2, #5
	beq	.L5192
.LVL6044:
.L5241:
	bl	cap_asid_pool_cap_get_capASIDPool.isra.95.part.96
.LVL6045:
.L5175:
.LBE14141:
.LBE14146:
.LBB14147:
.LBB14148:
	.loc 38 207 0
	and	r3, r2, #253
	cmp	r3, #1
	bne	.L5233
	.loc 38 210 0
	cmp	r2, #1
	beq	.L5186
	cmp	r2, #3
	bne	.L5264
.LVL6046:
.LBB14149:
.LBB14150:
	.loc 28 1919 0
	and	r3, r4, #15
	cmp	r3, #3
	.loc 28 1922 0
	biceq	r3, r4, #-268435441
	biceq	r3, r3, #264241152
	moveq	r3, r3, asl #10
	addeq	r0, r3, #64
	.loc 28 1919 0
	beq	.L5157
.LVL6047:
.L5238:
	bl	cap_frame_cap_get_capFBasePtr.isra.87.part.88
.LVL6048:
.L5215:
	and	r2, r4, #15
.LVL6049:
.L5208:
.LBE14150:
.LBE14149:
.LBE14148:
.LBE14147:
.LBE14158:
.LBE14176:
.LBE14195:
.LBE14205:
.LBE14214:
.LBE14331:
.LBB14332:
.LBB14319:
.LBB14297:
.LBB14288:
.LBB14246:
.LBB14247:
	.loc 28 1608 0
	cmp	r2, #12
	bne	.L5221
.LVL6050:
.LBE14247:
.LBE14246:
	.loc 39 331 0
	bic	r0, r4, #508
	bic	r0, r0, #3
	add	r0, r0, #48
.LVL6051:
.L5206:
.LBE14288:
.LBE14297:
	.loc 47 224 0
	ldr	r9, [sp, #44]
	add	r3, sp, #144
.LBE14319:
.LBE14332:
	.loc 47 357 0
	add	r2, fp, #8192
.LBB14333:
.LBB14320:
	.loc 47 224 0
	mov	r7, #1
.LBE14320:
.LBE14333:
	.loc 47 357 0
	mov	r10, r2
.LBB14334:
.LBB14321:
	.loc 47 224 0
	str	r7, [sp, #148]
	str	r9, [sp, #144]
	ldmia	r3, {r1, r2}
	bl	write_slot
.LVL6052:
.LBE14321:
.LBE14334:
	.loc 47 349 0
	ldr	r3, [sp, #36]
	ldr	r2, [sp, #28]
	rsb	r6, r2, r3
.LBB14335:
.LBB14322:
	.loc 47 227 0
	ldr	r3, [r8, #20]
	.loc 47 229 0
	mov	r6, r6, lsr #20
	mov	r2, r10
	mov	r6, r6, asl #20
	.loc 47 227 0
	str	r3, [sp, #36]
.LVL6053:
	.loc 47 229 0
	cmp	r10, r6
	bls	.L5272
	str	fp, [sp, #48]
	mov	r10, r7
	mov	fp, r2
	str	r8, [sp, #52]
.LVL6054:
.L5245:
	.loc 47 232 0
	mov	r0, #10
	bl	alloc_region
.LVL6055:
	.loc 47 233 0
	subs	r7, r0, #0
	beq	.L5258
	.loc 47 236 0
	mov	r1, #1024
	bl	memzero
.LVL6056:
.LBB14298:
.LBB14299:
.LBB14300:
.LBB14301:
	.loc 28 1993 0
	mov	ip, r6, lsr #20
	.loc 28 1995 0
	ubfx	r3, r7, #0, #10
	cmp	r3, #0
	str	r9, [sp, #160]
	.loc 28 1993 0
	orr	r8, ip, #1073741824
	str	r10, [sp, #164]
.LVL6057:
	orr	r8, r8, #4096
.LVL6058:
	.loc 28 1995 0
	bne	.L5336
.LVL6059:
	.loc 28 1996 0
	bic	r7, r7, #1020
.LVL6060:
.LBE14301:
.LBE14300:
	.loc 47 192 0
	add	r2, sp, #160
.LBB14305:
.LBB14302:
	.loc 28 1996 0
	bic	r7, r7, #3
.LBE14302:
.LBE14305:
	.loc 47 192 0
	add	r3, sp, #168
.LBB14306:
.LBB14303:
	.loc 28 1999 0
	orr	r7, r7, #7
.LVL6061:
.LBE14303:
.LBE14306:
	.loc 47 192 0
	ldmia	r2, {r0, r1}
	str	r8, [sp, #172]
	str	r7, [sp, #168]
	ldmia	r3, {r2, r3}
	bl	map_it_pt_cap
.LVL6062:
.LBE14299:
.LBE14298:
	.loc 47 237 0
	add	r3, sp, #152
	add	r1, sp, #136
.LBB14310:
.LBB14308:
	.loc 47 194 0
	str	r7, [sp, #152]
	str	r8, [sp, #156]
.LBE14308:
.LBE14310:
	.loc 47 237 0
	str	r4, [sp, #136]
	ldmia	r3, {r2, r3}
	ldmia	r1, {r0, r1}
	bl	provide_cap
.LVL6063:
	cmp	r0, #0
	beq	.L5258
	.loc 47 231 0
	add	r6, r6, #1048576
.LVL6064:
	.loc 47 229 0
	cmp	fp, r6
	bhi	.L5245
	ldr	r8, [sp, #52]
.LVL6065:
	ldr	fp, [sp, #48]
	ldr	r2, [r8, #20]
.LVL6066:
.L5242:
	.loc 47 245 0
	ldr	r3, [r8, #16]
	.loc 47 249 0
	mov	r1, #1
	.loc 47 245 0
	ldr	r0, [sp, #36]
.LBE14322:
.LBE14335:
	.loc 47 405 0
	add	r6, sp, #216
.LVL6067:
	.loc 47 353 0
	add	r9, fp, #4096
.LBB14336:
.LBB14323:
	.loc 47 249 0
	str	r1, [sp, #84]
.LVL6068:
	.loc 47 245 0
	str	r2, [r3, #52]
.LBE14323:
.LBE14336:
	.loc 47 413 0
	add	r7, sp, #88
.LBB14337:
.LBB14324:
	.loc 47 245 0
	str	r0, [r3, #48]
.LBE14324:
.LBE14337:
	.loc 47 405 0
	ldr	r3, [sp, #32]
	str	r4, [sp, #64]
	str	r3, [sp]
	ldr	r3, [sp, #44]
	ldmia	r5, {r0, r1}
	str	r3, [r6, #-136]!
	ldmia	r6, {r2, r3}
.LVL6069:
	str	r9, [sp, #4]
	bl	create_bi_frame_cap
.LVL6070:
	.loc 47 413 0
	ldr	r2, [sp, #84]
	mov	r0, r7
	str	fp, [sp, #4]
	ldr	r3, [sp, #80]
	str	r2, [sp]
	ldmia	r5, {r1, r2}
	bl	create_ipcbuf_frame
.LVL6071:
	ldr	r3, [sp, #88]
.LVL6072:
.LBB14338:
.LBB14339:
	.loc 28 1035 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 28 1037 0
	uxtbeq	r3, r3
.LVL6073:
	.loc 28 1036 0
	andne	r3, r3, #15
.LBE14339:
.LBE14338:
	.loc 47 414 0
	cmp	r3, #0
	beq	.L5258
	.loc 47 419 0
	add	r3, sp, #96
	ldr	r2, [sp, #84]
	ldmia	r3, {r0, r1}
	add	r10, sp, #192
	ldr	ip, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #12]
	stmib	sp, {r0, r1}
	mov	r0, r10
	str	ip, [sp, #16]
	str	r2, [sp]
	ldr	r3, [sp, #80]
	ldmia	r5, {r1, r2}
	bl	create_frames_of_region
.LVL6074:
	.loc 47 427 0
	ldr	r3, [sp, #200]
	cmp	r3, #0
	beq	.L5258
	.loc 47 430 0
	ldr	r2, [r8, #16]
	.loc 47 433 0
	add	r3, sp, #72
	.loc 47 430 0
	ldmia	r10, {r0, r1}
	.loc 47 433 0
	str	r3, [sp, #28]
.LVL6075:
	.loc 47 430 0
	add	r2, r2, #32
	stmia	r2, {r0, r1}
	.loc 47 433 0
	mov	r0, r3
	ldmia	r5, {r1, r2}
	bl	create_it_asid_pool
.LVL6076:
	ldr	r2, [sp, #72]
.LVL6077:
.LBB14340:
.LBB14341:
	.loc 28 1035 0
	ldr	r3, [sp, #28]
	and	r1, r2, #14
	cmp	r1, #14
	.loc 28 1037 0
	uxtbeq	r2, r2
.LVL6078:
	.loc 28 1036 0
	andne	r2, r2, #15
.LBE14341:
.LBE14340:
	.loc 47 434 0
	cmp	r2, #0
	beq	.L5258
	.loc 47 437 0
	ldmia	r3, {r0, r1}
	ldmia	r6, {r2, r3}
	bl	write_it_asid_pool
.LVL6079:
	.loc 47 440 0
	bl	create_idle_thread
.LVL6080:
	cmp	r0, #0
	beq	.L5258
.LBB14342:
.LBB14343:
.LBB14344:
.LBB14345:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LBE14345:
.LBE14344:
	.loc 15 182 0
	bl	cleanInvalidate_D_PoC
.LVL6081:
.LBB14346:
.LBB14347:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LBE14347:
.LBE14346:
.LBB14348:
.LBB14349:
	.loc 4 253 0
	mov	r10, #0
@ 253 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r10, c7, c5, 0
@ 0 "" 2
.LBB14350:
.LBB14351:
	.loc 2 29 0
@ 29 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LBE14351:
.LBE14350:
.LBE14349:
.LBE14348:
.LBB14352:
.LBB14353:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LBE14353:
.LBE14352:
.LBE14343:
.LBE14342:
	.loc 47 451 0
	ldr	r2, [sp, #40]
	add	r3, sp, #12
	ldmia	r7, {r0, r1}
	str	r4, [sp, #64]
	stmia	sp, {r2, r9, fp}
	ldr	r2, [sp, #44]
	str	r2, [sp, #80]
	stmia	r3, {r0, r1}
	ldmia	r6, {r2, r3}
	ldmia	r5, {r0, r1}
	bl	create_initial_thread
.LVL6082:
	cmp	r0, r10
	beq	.L5258
	.loc 47 465 0
	ldr	r2, .L5338+8
	add	r3, sp, #104
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	.loc 47 463 0
	ldmia	r5, {r0, r1}
	ldmia	r3, {r2, r3}
	bl	create_untypeds
.LVL6083:
	cmp	r0, r10
	beq	.L5258
	ldr	r9, [r8, #20]
.LBB14354:
.LBB14355:
	.loc 47 264 0
	mov	r2, #56
	ldr	r6, .L5338+12
	add	ip, sp, #176
	ldmia	r5, {r0, r1}
	ldr	r3, [r8, #16]
	stmia	ip, {r0, r1}
	str	r2, [r3, #900]
.LVL6084:
.L5255:
.LBB14356:
.LBB14357:
	.loc 33 112 0
	ldr	r3, .L5338+12
.LBE14357:
.LBE14356:
.LBB14360:
.LBB14361:
	.loc 3 61 0
	ldr	r5, [r6, #4]
.LBE14361:
.LBE14360:
.LBB14363:
.LBB14358:
	.loc 33 112 0
	ldr	r3, [r3, r10, asl #3]
.LBE14358:
.LBE14363:
.LBB14364:
.LBB14362:
	.loc 3 61 0
	add	r5, r5, #-536870912
	add	r4, r3, #-536870912
.LBE14362:
.LBE14364:
.LBB14365:
.LBB14359:
	.loc 33 112 0
	str	r3, [sp, #28]
.LVL6085:
	orr	r3, r5, r4
.LVL6086:
	ubfx	r3, r3, #0, #20
.LBE14359:
.LBE14365:
	.loc 47 276 0
	cmp	r3, #0
	movne	fp, #0
	moveq	fp, #2
.LVL6087:
	.loc 47 284 0
	cmp	r4, r5
	bcs	.L5337
	adds	r3, fp, #0
	add	r7, sp, #184
	movne	r3, #1
	str	r3, [sp, #32]
.LVL6088:
.L5254:
	.loc 47 285 0
	ldr	r3, [sp, #32]
	mov	r2, #0
	mov	r0, r7
	mov	r1, r4
	str	r3, [sp]
	mov	r3, r2
	bl	create_it_frame_cap
.LVL6089:
	.loc 47 286 0
	add	r3, sp, #176
	ldmia	r3, {r0, r1}
	ldmia	r7, {r2, r3}
	bl	provide_cap
.LVL6090:
	cmp	r0, #0
	beq	.L5258
	.loc 47 284 0
	mov	r0, fp
	bl	pageBitsForSize
.LVL6091:
	mov	r3, #1
	add	r4, r4, r3, asl r0
.LVL6092:
	cmp	r5, r4
	bhi	.L5254
	ldr	r2, [r8, #20]
.L5252:
.LVL6093:
	.loc 47 299 0
	ldr	r3, [r8, #16]
	mov	r1, r10, asl #4
	ldr	r4, [sp, #28]
.LVL6094:
	.loc 47 270 0
	add	r10, r10, #1
.LVL6095:
	.loc 47 299 0
	add	r1, r1, #904
	movw	ip, #:lower16:.LANCHOR3
	add	lr, r3, r1
	add	r6, r6, #8
	str	r4, [r3, r1]
	movt	ip, #:upper16:.LANCHOR3
	str	r9, [lr, #8]
	.loc 47 291 0
	mov	r9, r2
.LVL6096:
	.loc 47 299 0
	str	r0, [lr, #4]
	str	r2, [lr, #12]
	.loc 47 270 0
	ldr	r1, [r3, #900]
	cmp	r10, r1
	bcc	.L5255
.LBE14355:
.LBE14354:
.LBB14367:
.LBB14368:
	.loc 25 540 0
	ldr	r1, [ip, #24]
.LBE14368:
.LBE14367:
	.loc 47 478 0
	mov	r4, #0
.LBB14371:
.LBB14369:
	.loc 25 541 0
	str	r2, [r3, #16]
.LVL6097:
.LBE14369:
.LBE14371:
	.loc 47 478 0
	str	r4, [r3, #24]
.LBB14372:
.LBB14370:
	.loc 25 541 0
	str	r1, [r3, #20]
.LBE14370:
.LBE14372:
	.loc 47 478 0
	str	r4, [r3, #28]
.LVL6098:
.LBB14373:
.LBB14374:
.LBB14375:
.LBB14376:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LBE14376:
.LBE14375:
	.loc 15 182 0
	bl	cleanInvalidate_D_PoC
.LVL6099:
.LBB14377:
.LBB14378:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LBE14378:
.LBE14377:
.LBB14379:
.LBB14380:
	.loc 4 253 0
@ 253 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r4, c7, c5, 0
@ 0 "" 2
.LBB14381:
.LBB14382:
	.loc 2 29 0
@ 29 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LBE14382:
.LBE14381:
.LBE14380:
.LBE14379:
.LBB14383:
.LBB14384:
	.loc 2 17 0
@ 17 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LBE14384:
.LBE14383:
.LBE14374:
.LBE14373:
.LBB14385:
.LBB14386:
	.loc 11 56 0
@ 56 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/armv/armv7-a/user_access.c" 1
	mrc   p15, 0,  r3,  c0,  c1, 2
@ 0 "" 2
.LVL6100:
	.loc 11 61 0
@ 61 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/armv/armv7-a/user_access.c" 1
	mrc   p15, 0,  r3,  c0,  c1, 1
@ 0 "" 2
.LVL6101:
	.loc 11 62 0
	tst	r3, #65536
	beq	.L5141
.LBB14387:
.LBB14388:
	.loc 11 41 0
@ 41 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/armv/armv7-a/user_access.c" 1
	mrc   p15, 0,  r3, c14,  c1, 0
@ 0 "" 2
.LVL6102:
.LBB14389:
	.loc 11 48 0
@ 48 "/home/neelesh/research/seL4-tutorials-manifest/kernel/src/arch/arm/armv/armv7-a/user_access.c" 1
	mcr   p15, 0,  r3, c14,  c1, 0
@ 0 "" 2
.LVL6103:
.L5141:
.LBE14389:
.LBE14388:
.LBE14387:
.LBE14386:
.LBE14385:
.LBE14410:
.LBE14417:
	.loc 47 516 0
	add	sp, sp, #220
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL6104:
.L5214:
	.cfi_restore_state
	and	r2, r4, #15
.LVL6105:
.L5207:
.LBB14418:
.LBB14411:
.LBB14390:
.LBB14325:
.LBB14311:
.LBB14289:
.LBB14248:
.LBB14249:
	.loc 28 1577 0
	cmp	r2, #10
	bne	.L5220
.LVL6106:
	.loc 28 1580 0
	bic	r0, r4, #31
	add	r0, r0, #48
	b	.L5206
.LVL6107:
.L5270:
.LBE14249:
.LBE14248:
.LBB14250:
.LBB14251:
	.loc 38 302 0
	mov	r0, #48
	b	.L5206
.LVL6108:
.L5210:
	and	r2, r4, #15
.LVL6109:
.L5202:
.LBE14251:
.LBE14250:
.LBB14271:
.LBB14272:
	.loc 28 1142 0
	cmp	r2, #2
	bne	.L5217
.LVL6110:
.L5326:
.LBE14272:
.LBE14271:
.LBB14273:
.LBB14268:
.LBB14252:
.LBB14253:
	.loc 28 1970 0
	bic	r0, r4, #15
	add	r0, r0, #48
	b	.L5206
.LVL6111:
.L5201:
.LBE14253:
.LBE14252:
	.loc 38 302 0
	sub	r3, r2, #1
.LVL6112:
	cmp	r3, #8
	ldrls	pc, [pc, r3, asl #2]
	b	.L5270
.L5225:
	.word	.L5224
	.word	.L5270
	.word	.L5224
	.word	.L5270
	.word	.L5226
	.word	.L5270
	.word	.L5227
	.word	.L5270
	.word	.L5228
.LVL6113:
.L5213:
	and	r2, r4, #15
.LVL6114:
.L5205:
.LBE14268:
.LBE14273:
.LBB14274:
.LBB14275:
	.loc 28 1407 0
	cmp	r2, #6
	beq	.L5326
.LVL6115:
.L5219:
.LBE14275:
.LBE14274:
.LBE14289:
.LBE14311:
.LBE14325:
.LBE14390:
.LBB14391:
.LBB14215:
.LBB14206:
.LBB14196:
.LBB14177:
.LBB14164:
	bl	cap_notification_cap_get_capNtfnPtr.isra.68.part.69
.LVL6116:
.L5212:
	and	r2, r4, #15
.LVL6117:
.L5204:
.LBE14164:
.LBE14177:
.LBE14196:
.LBE14206:
.LBE14215:
.LBE14391:
.LBB14392:
.LBB14326:
.LBB14312:
.LBB14290:
.LBB14276:
.LBB14277:
	.loc 28 1185 0
	cmp	r2, #4
	bne	.L5218
.LVL6118:
	.loc 28 1188 0
	bic	r3, r3, #15
.LVL6119:
	add	r0, r3, #48
	b	.L5206
.LVL6120:
.L5151:
.LBE14277:
.LBE14276:
.LBE14290:
.LBE14312:
.LBE14326:
.LBE14392:
.LBB14393:
.LBB14216:
.LBB14207:
.LBB14197:
.LBB14178:
.LBB14135:
	.loc 28 1037 0
	uxtb	r2, r4
.LVL6121:
.LBE14135:
.LBE14178:
	.loc 39 317 0
	sub	r1, r2, #2
	cmp	r1, #60
	ldrls	pc, [pc, r1, asl #2]
	b	.L5160
.L5162:
	.word	.L5161
	.word	.L5160
	.word	.L5163
	.word	.L5160
	.word	.L5164
	.word	.L5160
	.word	.L5264
	.word	.L5160
	.word	.L5165
	.word	.L5160
	.word	.L5166
	.word	.L5160
	.word	.L5264
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5264
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5167
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5160
	.word	.L5264
.L5167:
.LVL6122:
.LBB14179:
.LBB14180:
.LBB14181:
.LBB14182:
.LBB14183:
.LBB14184:
	.loc 28 2318 0
	cmp	r2, #46
	bne	.L5222
	.loc 28 2321 0
	ubfx	r2, r4, #8, #6
.LVL6123:
.LBE14184:
.LBE14183:
	.loc 39 97 0
	cmp	r2, #32
	.loc 39 100 0
	andne	r2, r2, #31
.LVL6124:
	mvnne	r1, #0
.LVL6125:
	addne	r2, r2, #1
	.loc 39 97 0
	mvneq	r2, #31
.LVL6126:
	movne	r2, r1, asl r2
.LBE14182:
.LBE14181:
	.loc 39 114 0
	and	r3, r3, r2
.LVL6127:
	add	r0, r3, #64
	b	.L5157
.LVL6128:
.L5160:
.LBE14180:
.LBE14179:
.LBB14190:
.LBB14159:
	.loc 38 302 0
	sub	r3, r2, #1
.LVL6129:
	cmp	r3, #8
	ldrls	pc, [pc, r3, asl #2]
	b	.L5264
.L5180:
	.word	.L5175
	.word	.L5264
	.word	.L5175
	.word	.L5264
	.word	.L5181
	.word	.L5264
	.word	.L5182
	.word	.L5264
	.word	.L5183
.LVL6130:
.L5200:
.LBE14159:
.LBE14190:
.LBE14197:
.LBE14207:
.LBE14216:
.LBE14393:
.LBB14394:
.LBB14327:
.LBB14313:
.LBB14291:
.LBB14278:
.LBB14244:
	.loc 28 1037 0
	uxtb	r2, r4
.LVL6131:
.LBE14244:
.LBE14278:
	.loc 39 317 0
	sub	r1, r2, #2
	cmp	r1, #60
	ldrls	pc, [pc, r1, asl #2]
	b	.L5209
.L5211:
	.word	.L5210
	.word	.L5209
	.word	.L5212
	.word	.L5209
	.word	.L5213
	.word	.L5209
	.word	.L5270
	.word	.L5209
	.word	.L5214
	.word	.L5209
	.word	.L5215
	.word	.L5209
	.word	.L5270
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5270
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5216
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5209
	.word	.L5270
.LVL6132:
.L5333:
.LBE14291:
.LBE14313:
.LBE14327:
.LBE14394:
.LBB14395:
.LBB14099:
	.loc 47 120 0
	movw	r0, #:lower16:.LC87
.LVL6133:
	movw	r1, #:lower16:.LC88
	movt	r0, #:upper16:.LC87
	movt	r1, #:upper16:.LC88
	mov	r2, #120
	ldr	r3, .L5338+16
	bl	_assert_fail
.LVL6134:
.L5186:
.LBE14099:
.LBE14395:
.LBB14396:
.LBB14217:
.LBB14208:
.LBB14198:
.LBB14191:
.LBB14160:
.LBB14155:
.LBB14153:
.LBB14151:
.LBB14152:
	.loc 28 1755 0
	and	r3, r4, #15
	cmp	r3, #1
	.loc 28 1758 0
	biceq	r3, r4, #-16777216
	biceq	r3, r3, #15
	moveq	r3, r3, asl #8
	addeq	r0, r3, #64
	.loc 28 1755 0
	beq	.L5157
.LVL6135:
.L5237:
	bl	cap_small_frame_cap_get_capFBasePtr.isra.85.part.86
.LVL6136:
.L5216:
.LBE14152:
.LBE14151:
.LBE14153:
.LBE14155:
.LBE14160:
.LBE14191:
.LBE14198:
.LBE14208:
.LBE14217:
.LBE14396:
.LBB14397:
.LBB14328:
.LBB14314:
.LBB14292:
.LBB14279:
.LBB14280:
.LBB14281:
.LBB14282:
.LBB14283:
.LBB14284:
	.loc 28 2318 0
	cmp	r2, #46
	bne	.L5222
	.loc 28 2321 0
	ubfx	r2, r4, #8, #6
.LVL6137:
.LBE14284:
.LBE14283:
	.loc 39 97 0
	cmp	r2, #32
	.loc 39 100 0
	andne	r2, r2, #31
.LVL6138:
	mvnne	r1, #0
.LVL6139:
	addne	r2, r2, #1
	.loc 39 97 0
	mvneq	r2, #31
.LVL6140:
	movne	r2, r1, asl r2
.LBE14282:
.LBE14281:
	.loc 39 114 0
	and	r3, r3, r2
.LVL6141:
	add	r0, r3, #48
	b	.L5206
.LVL6142:
.L5337:
	mov	r0, fp
	bl	pageBitsForSize
.LVL6143:
.LBE14280:
.LBE14279:
.LBE14292:
.LBE14314:
.LBE14328:
.LBE14397:
.LBB14398:
.LBB14366:
	.loc 47 284 0
	mov	r2, r9
	b	.L5252
.LVL6144:
.L5222:
.LBE14366:
.LBE14398:
.LBB14399:
.LBB14218:
.LBB14209:
.LBB14199:
.LBB14192:
.LBB14189:
.LBB14188:
.LBB14187:
.LBB14186:
.LBB14185:
	bl	cap_zombie_cap_get_capZombieType.isra.80.part.81
.LVL6145:
.L5272:
.LBE14185:
.LBE14186:
.LBE14187:
.LBE14188:
.LBE14189:
.LBE14192:
.LBE14199:
.LBE14209:
.LBE14218:
.LBE14399:
.LBB14400:
.LBB14329:
	.loc 47 229 0
	ldr	r2, [sp, #36]
	b	.L5242
.LVL6146:
.L5336:
.LBB14315:
.LBB14309:
.LBB14307:
.LBB14304:
	.loc 28 1995 0
	movw	r0, #:lower16:.LC248
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC248
	movt	r1, #:upper16:.LC30
	movw	r2, #1995
	ldr	r3, .L5338+20
	bl	_assert_fail
.LVL6147:
.L5331:
.LBE14304:
.LBE14307:
.LBE14309:
.LBE14315:
.LBE14329:
.LBE14400:
.LBB14401:
.LBB14100:
	.loc 47 101 0
	movw	r0, #:lower16:.LC282
	movw	r1, #:lower16:.LC88
	movt	r0, #:upper16:.LC282
	movt	r1, #:upper16:.LC88
	mov	r2, #101
	ldr	r3, .L5338+16
	bl	_assert_fail
.LVL6148:
.L5330:
	.loc 47 99 0
	movw	r0, #:lower16:.LC281
	movw	r1, #:lower16:.LC88
	movt	r0, #:upper16:.LC281
	movt	r1, #:upper16:.LC88
	mov	r2, #99
	ldr	r3, .L5338+16
	bl	_assert_fail
.LVL6149:
.L5332:
	.loc 47 102 0
	movw	r0, #:lower16:.LC283
	movw	r1, #:lower16:.LC88
	movt	r0, #:upper16:.LC283
	movt	r1, #:upper16:.LC88
	mov	r2, #102
	ldr	r3, .L5338+16
	bl	_assert_fail
.LVL6150:
.L5233:
.LBE14100:
.LBE14401:
.LBB14402:
.LBB14219:
.LBB14210:
.LBB14200:
.LBB14193:
.LBB14161:
.LBB14156:
.LBB14154:
	bl	generic_frame_cap_get_capFBasePtr.isra.89.part.90
.LVL6151:
.L5329:
.LBE14154:
.LBE14156:
.LBE14161:
.LBE14193:
.LBE14200:
.LBE14210:
.LBE14219:
.LBE14402:
.LBB14403:
.LBB14101:
	.loc 47 98 0
	movw	r0, #:lower16:.LC280
	movw	r1, #:lower16:.LC88
	movt	r0, #:upper16:.LC280
	movt	r1, #:upper16:.LC88
	mov	r2, #98
	ldr	r3, .L5338+16
	bl	_assert_fail
.LVL6152:
.L5209:
.LBE14101:
.LBE14403:
.LBB14404:
.LBB14330:
.LBB14316:
.LBB14293:
.LBB14285:
.LBB14269:
	.loc 38 302 0
	sub	r3, r2, #1
.LVL6153:
	cmp	r3, #8
	ldrls	pc, [pc, r3, asl #2]
	b	.L5270
.L5229:
	.word	.L5224
	.word	.L5270
	.word	.L5224
	.word	.L5270
	.word	.L5230
	.word	.L5270
	.word	.L5231
	.word	.L5270
	.word	.L5232
.L5232:
	and	r2, r4, #15
.LVL6154:
.L5228:
.LBB14255:
.LBB14256:
	.loc 28 2162 0
	cmp	r2, #9
	bne	.L5240
.LVL6155:
	.loc 28 2165 0
	bic	r0, r4, #16320
	bic	r0, r0, #63
	add	r0, r0, #48
	b	.L5206
.LVL6156:
.L5230:
	and	r2, r4, #15
.LVL6157:
.L5226:
.LBE14256:
.LBE14255:
.LBB14257:
.LBB14254:
	.loc 28 1967 0
	cmp	r2, #5
	beq	.L5326
	b	.L5241
.LVL6158:
.L5224:
.LBE14254:
.LBE14257:
.LBB14258:
.LBB14259:
	.loc 38 207 0
	and	r3, r2, #253
	cmp	r3, #1
	bne	.L5233
	.loc 38 210 0
	cmp	r2, #1
	beq	.L5235
	cmp	r2, #3
	bne	.L5270
.LVL6159:
.LBB14260:
.LBB14261:
	.loc 28 1919 0
	and	r3, r4, #15
	cmp	r3, #3
	bne	.L5238
.LVL6160:
	.loc 28 1922 0
	bic	r3, r4, #-268435441
	bic	r3, r3, #264241152
	mov	r3, r3, asl #10
	add	r0, r3, #48
	b	.L5206
.LVL6161:
.L5335:
.LBE14261:
.LBE14260:
.LBE14259:
.LBE14258:
.LBE14269:
.LBE14285:
.LBE14293:
.LBE14316:
.LBB14317:
.LBB14238:
	.loc 28 2123 0
	movw	r0, #:lower16:.LC249
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC249
	movt	r1, #:upper16:.LC30
	movw	r2, #2123
	ldr	r3, .L5338+24
	bl	_assert_fail
.LVL6162:
.L5231:
	and	r2, r4, #15
.LVL6163:
.L5227:
.LBE14238:
.LBE14317:
.LBB14318:
.LBB14294:
.LBB14286:
.LBB14270:
.LBB14265:
.LBB14266:
	.loc 28 2098 0
	cmp	r2, #7
	bne	.L5239
.LVL6164:
	.loc 28 2101 0
	bic	r0, r4, #1020
	bic	r0, r0, #3
	add	r0, r0, #48
	b	.L5206
.LVL6165:
.L5235:
.LBE14266:
.LBE14265:
.LBB14267:
.LBB14264:
.LBB14262:
.LBB14263:
	.loc 28 1755 0
	and	r3, r4, #15
	cmp	r3, #1
	bne	.L5237
.LVL6166:
	.loc 28 1758 0
	bic	r3, r4, #-16777216
	bic	r3, r3, #15
	mov	r3, r3, asl #8
	add	r0, r3, #48
	b	.L5206
.L5339:
	.align	2
.L5338:
	.word	.LANCHOR7-2880
	.word	intStateIRQTable-4
	.word	.LANCHOR7-2888
	.word	.LANCHOR5+8
	.word	.LANCHOR7-2904
	.word	.LANCHOR4+784
	.word	.LANCHOR4+756
.LBE14263:
.LBE14262:
.LBE14264:
.LBE14267:
.LBE14270:
.LBE14286:
.LBE14294:
.LBE14318:
.LBE14330:
.LBE14404:
.LBE14411:
.LBE14418:
	.cfi_endproc
.LFE311:
	.size	init_kernel, .-init_kernel
	.text
	.align	2
	.global	performPageTableInvocationUnmap
	.type	performPageTableInvocationUnmap, %function
performPageTableInvocationUnmap:
.LFB366:
	.loc 14 2022 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6167:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
	.loc 14 2022 0
	add	r3, sp, #8
	stmdb	r3, {r0, r1}
	ldr	r5, [sp]
.LVL6168:
	ldr	r1, [sp, #4]
.LVL6169:
.LBB14463:
.LBB14464:
	.loc 28 2007 0
	and	r3, r5, #15
	cmp	r3, #7
	bne	.L5380
.LVL6170:
.LBE14464:
.LBE14463:
	.loc 14 2023 0
	tst	r1, #1073741824
	mov	r6, r2
	beq	.L5366
.LVL6171:
.LBB14466:
.LBB14467:
.LBB14468:
	.loc 28 2101 0
	bic	r4, r5, #1020
.LBE14468:
.LBE14467:
	.loc 14 2025 0
	ubfx	r0, r1, #12, #18
.LBB14470:
.LBB14469:
	.loc 28 2101 0
	bic	r4, r4, #3
.LVL6172:
.LBE14469:
.LBE14470:
	.loc 14 2025 0
	mov	r1, r1, asl #20
.LVL6173:
	mov	r2, r4
.LVL6174:
	bl	unmapPageTable
.LVL6175:
.LBB14471:
.LBB14472:
.LBB14473:
.LBB14474:
	.loc 28 1035 0
	and	r3, r5, #14
	cmp	r3, #14
	beq	.L5381
.L5371:
.LBE14474:
.LBE14473:
.LBB14476:
.LBB14477:
	.loc 38 272 0
	mov	r5, #1024
.LVL6176:
.L5345:
.LBE14477:
.LBE14476:
.LBE14472:
.LBE14471:
.LBB14505:
.LBB14506:
	.loc 4 331 0
	mov	r1, r5
	mov	r0, r4
	bl	memzero
.LVL6177:
	sub	r1, r4, #1
.LBB14507:
.LBB14508:
	.loc 15 95 0
	mov	r3, r4, lsr #5
.LVL6178:
.LBE14508:
.LBE14507:
	.loc 4 332 0
	add	r1, r1, r5
.LBB14514:
.LBB14513:
	.loc 15 95 0
	mov	r1, r1, lsr #5
	add	r1, r1, #1
	cmp	r1, r3
	bls	.L5366
.L5373:
.LVL6179:
	.loc 15 96 0
	mov	r2, r3, asl #5
.LVL6180:
.LBB14509:
.LBB14510:
	.loc 4 212 0
@ 212 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c7, c11, 1
@ 0 "" 2
.LBB14511:
.LBB14512:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE14512:
.LBE14511:
.LBE14510:
.LBE14509:
	.loc 15 95 0
	add	r3, r3, #1
.LVL6181:
	cmp	r1, r3
	bne	.L5373
.LVL6182:
.L5366:
.LBE14513:
.LBE14514:
.LBE14506:
.LBE14505:
.LBE14466:
.LBB14517:
.LBB14518:
	.loc 28 2033 0
	ldr	r3, [r6]
	and	r3, r3, #15
	cmp	r3, #7
	bne	.L5382
	.loc 28 2039 0
	ldr	r3, [r6, #4]
.LBE14518:
.LBE14517:
	.loc 14 2034 0
	mov	r0, #0
.LBB14521:
.LBB14519:
	.loc 28 2039 0
	bic	r3, r3, #1073741824
	str	r3, [r6, #4]
.LBE14519:
.LBE14521:
	.loc 14 2034 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL6183:
.L5381:
	.cfi_restore_state
.LBB14522:
.LBB14515:
.LBB14503:
.LBB14489:
.LBB14475:
	.loc 28 1037 0
	uxtb	r3, r5
.LVL6184:
.LBE14475:
.LBE14489:
	.loc 39 265 0
	cmp	r3, #62
	ldrls	pc, [pc, r3, asl #2]
	b	.L5346
.L5348:
	.word	.L5358
	.word	.L5346
	.word	.L5349
	.word	.L5346
	.word	.L5369
	.word	.L5346
	.word	.L5369
	.word	.L5346
	.word	.L5358
	.word	.L5346
	.word	.L5351
	.word	.L5346
	.word	.L5370
	.word	.L5346
	.word	.L5358
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5358
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5355
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5346
	.word	.L5358
.LVL6185:
.L5358:
.LBB14490:
.LBB14486:
	mov	r5, #1
.LVL6186:
	b	.L5345
.LVL6187:
.L5351:
.LBE14486:
.LBE14490:
.LBB14491:
.LBB14492:
	bl	cap_cnode_cap_get_capCNodeRadix.part.149
.LVL6188:
.L5355:
.LBE14492:
.LBE14491:
.LBB14493:
.LBB14494:
.LBB14495:
	.loc 28 2318 0
	cmp	r3, #46
	bne	.L5383
	.loc 28 2321 0
	ubfx	r5, r5, #8, #6
.LVL6189:
.LBE14495:
.LBE14494:
	.loc 39 283 0
	cmp	r5, #32
	beq	.L5370
	.loc 39 286 0
	and	r5, r5, #31
.LVL6190:
	mov	r1, #1
	add	r3, r5, #4
.LVL6191:
	mov	r5, r1, asl r3
	b	.L5345
.LVL6192:
.L5370:
	.loc 39 283 0
	mov	r5, #512
	b	.L5345
.LVL6193:
.L5369:
.LBE14493:
	.loc 39 265 0
	mov	r5, #16
.LVL6194:
	b	.L5345
.LVL6195:
.L5349:
.LBB14498:
.LBB14499:
	bl	cap_untyped_cap_get_capBlockSize.part.146
.LVL6196:
.L5346:
.LBE14499:
.LBE14498:
.LBB14500:
.LBB14487:
	.loc 38 272 0
	sub	r2, r3, #1
	cmp	r2, #10
	ldrls	pc, [pc, r2, asl #2]
	b	.L5358
.L5360:
	.word	.L5359
	.word	.L5358
	.word	.L5359
	.word	.L5358
	.word	.L5376
	.word	.L5358
	.word	.L5371
	.word	.L5358
	.word	.L5362
	.word	.L5358
	.word	.L5358
.L5376:
.LBB14478:
.LBB14479:
	.loc 38 231 0
	mov	r5, #4096
.LVL6197:
	b	.L5345
.LVL6198:
.L5362:
.LBE14479:
.LBE14478:
	.loc 38 272 0
	mov	r5, #16384
.LVL6199:
	b	.L5345
.LVL6200:
.L5359:
.LBB14484:
.LBB14482:
	.loc 38 228 0
	and	r2, r3, #253
	cmp	r2, #1
	bne	.L5384
	.loc 38 231 0
	cmp	r3, #3
	bne	.L5376
.LVL6201:
.LBB14480:
.LBB14481:
	bl	cap_frame_cap_get_capFSize.part.120
.LVL6202:
.L5382:
.LBE14481:
.LBE14480:
.LBE14482:
.LBE14484:
.LBE14487:
.LBE14500:
.LBE14503:
.LBE14515:
.LBE14522:
.LBB14523:
.LBB14520:
	.loc 28 2033 0
	movw	r0, #:lower16:.LC285
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC285
	movt	r1, #:upper16:.LC30
	movw	r2, #2034
	ldr	r3, .L5385
	bl	_assert_fail
.LVL6203:
.L5384:
.LBE14520:
.LBE14523:
.LBB14524:
.LBB14516:
.LBB14504:
.LBB14501:
.LBB14488:
.LBB14485:
.LBB14483:
	bl	generic_frame_cap_get_capFSize.part.121
.LVL6204:
.L5383:
.LBE14483:
.LBE14485:
.LBE14488:
.LBE14501:
.LBB14502:
.LBB14497:
.LBB14496:
	bl	cap_zombie_cap_get_capZombieType.isra.80.part.81
.LVL6205:
.L5380:
.LBE14496:
.LBE14497:
.LBE14502:
.LBE14504:
.LBE14516:
.LBE14524:
.LBB14525:
.LBB14465:
	bl	cap_page_table_cap_get_capPTIsMapped.part.101
.LVL6206:
.L5386:
	.align	2
.L5385:
	.word	.LANCHOR7-2868
.LBE14465:
.LBE14525:
	.cfi_endproc
.LFE366:
	.size	performPageTableInvocationUnmap, .-performPageTableInvocationUnmap
	.align	2
	.global	decodeARMMMUInvocation
	.type	decodeARMMMUInvocation, %function
decodeARMMMUInvocation:
.LFB364:
	.loc 14 1853 0
	.cfi_startproc
	@ args = 24, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6207:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	sub	sp, sp, #84
	.cfi_def_cfa_offset 120
	ldr	r5, [sp, #120]
.LVL6208:
	.loc 14 1853 0
	mov	r9, r3
	mov	fp, r0
	ldr	r4, [sp, #124]
.LVL6209:
.LBB15024:
.LBB15025:
	.loc 28 1035 0
	and	r6, r5, #14
	ldr	r8, [sp, #128]
.LVL6210:
	cmp	r6, #14
	ldr	r2, [sp, #132]
.LVL6211:
	.loc 28 1037 0
	uxtbeq	r3, r5
.LVL6212:
	.loc 28 1036 0
	andne	r3, r5, #15
.LBE15025:
.LBE15024:
	.loc 14 1854 0
	sub	r3, r3, #1
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L5390
.L5392:
	.word	.L5391
	.word	.L5390
	.word	.L5391
	.word	.L5390
	.word	.L5393
	.word	.L5390
	.word	.L5394
	.word	.L5390
	.word	.L5395
	.word	.L5390
	.word	.L5396
.L5396:
.LBB15026:
	.loc 14 1878 0
	cmp	r0, #43
	bne	.L5692
	cmp	r8, #0
	cmpne	r2, #0
	moveq	r4, #1
.LVL6213:
	movne	r4, #0
	.loc 14 1884 0 discriminator 2
	cmp	r1, #1
	orrls	r4, r4, #1
	cmp	r4, #0
	bne	.L5693
.LVL6214:
.LBB15027:
.LBB15028:
	.loc 43 30 0
	movw	r7, #:lower16:ksCurThread
.LBE15028:
.LBE15027:
	.loc 14 1895 0
	ldmia	r2, {r0, r1}
.LVL6215:
.LBB15034:
.LBB15031:
	.loc 43 30 0
	movt	r7, #:upper16:ksCurThread
.LBE15031:
.LBE15034:
	.loc 14 1895 0
	add	r5, sp, #56
.LVL6216:
.LBB15035:
.LBB15032:
	.loc 43 30 0
	ldr	r3, [r7]
.LVL6217:
.LBE15032:
.LBE15035:
	.loc 14 1895 0
	stmia	r5, {r0, r1}
	.loc 14 1894 0
	ldr	r6, [r8]
.LBB15036:
.LBB15033:
.LBB15029:
.LBB15030:
	.loc 13 27 0
	ldr	r9, [r3, #8]
.LVL6218:
.LBE15030:
.LBE15029:
.LBE15033:
.LBE15036:
.LBB15037:
.LBB15038:
.LBB15039:
.LBB15040:
	ldr	fp, [r3, #12]
.LVL6219:
.LBE15040:
.LBE15039:
.LBE15038:
.LBE15037:
	.loc 14 1894 0
	ldr	r1, [r8, #4]
.LVL6220:
	ldr	r3, .L5746
.LVL6221:
	b	.L5611
.LVL6222:
.L5613:
	.loc 14 1898 0 discriminator 4
	add	r4, r4, #1
.LVL6223:
	cmp	r4, #256
	beq	.L5632
.LVL6224:
.L5611:
	.loc 14 1898 0 is_stmt 0 discriminator 3
	ldr	r2, [r3, #4]!
	cmp	r2, #0
	bne	.L5613
.LVL6225:
.LBB15041:
.LBB15042:
	.loc 28 1035 0 is_stmt 1
	and	r3, r6, #14
	cmp	r3, #14
	.loc 28 1036 0
	andne	r3, r6, #15
	.loc 28 1035 0
	beq	.L5704
.L5615:
.LBE15042:
.LBE15041:
	.loc 14 1908 0
	cmp	r3, #2
	bne	.L5626
.LVL6226:
.LBB15044:
.LBB15045:
	.loc 28 1114 0 discriminator 1
	and	r3, r6, #15
	cmp	r3, #2
	bne	.L5705
.LVL6227:
	.loc 28 1117 0
	and	r1, r1, #31
.LVL6228:
.LBE15045:
.LBE15044:
	.loc 14 1908 0
	cmp	r1, #12
	bne	.L5626
	.loc 14 1917 0
	mov	r0, r8
	bl	ensureNoChildren
.LVL6229:
	.loc 14 1918 0
	subs	r10, r0, #0
	bne	.L5660
.LVL6230:
	ldmia	r5, {r0, r1}
.LVL6231:
	add	r3, sp, #48
.LBB15047:
.LBB15048:
	.loc 48 129 0
	stmia	sp, {r9, fp}
	stmia	r3, {r0, r1}
	mov	r1, r10
	ldmia	r3, {r2, r3}
	add	r0, sp, #64
	bl	lookupSlotForCNodeOp
.LVL6232:
	ldr	r10, [sp, #64]
.LVL6233:
.LBE15048:
.LBE15047:
	.loc 14 1925 0
	cmp	r10, #0
	bne	.L5660
	.loc 14 1928 0
	ldr	r5, [sp, #68]
.LVL6234:
	ldr	r3, [r5]
.LVL6235:
.LBB15049:
.LBB15050:
.LBB15051:
.LBB15052:
	.loc 28 1035 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 28 1037 0
	uxtbeq	r3, r3
.LVL6236:
	.loc 28 1036 0
	andne	r3, r3, #15
.LBE15052:
.LBE15051:
	.loc 27 894 0
	cmp	r3, #0
	bne	.L5632
.LBE15050:
.LBE15049:
	.loc 14 1935 0
	ldr	r2, [r7]
.LVL6237:
.LBB15053:
.LBB15054:
.LBB15055:
.LBB15056:
	.loc 28 169 0
	ldr	r3, [r2, #72]
.LBE15056:
.LBE15055:
	.loc 26 418 0
	mov	r0, r2
.LBB15058:
.LBB15057:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #2
	str	r3, [r2, #72]
.LVL6238:
.LBE15057:
.LBE15058:
	.loc 26 418 0
	bl	scheduleTCB
.LVL6239:
.LBE15054:
.LBE15053:
	.loc 14 1936 0
	bic	r0, r6, #15
.LVL6240:
	mov	r1, r5
	mov	r2, r8
	mov	r3, r4, asl #10
.LBE15026:
	.loc 14 2007 0
	add	sp, sp, #84
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL6241:
.LBB15061:
	.loc 14 1936 0
	b	performASIDControlInvocation
.LVL6242:
.L5391:
	.cfi_restore_state
.LBE15061:
.LBB15062:
.LBB15063:
	.loc 14 1370 0
	sub	r3, r0, #35
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L5692
.L5440:
	.word	.L5439
	.word	.L5441
	.word	.L5442
	.word	.L5443
	.word	.L5443
	.word	.L5443
	.word	.L5443
	.word	.L5444
.LVL6243:
.L5393:
.LBE15063:
.LBE15062:
.LBB15579:
	.loc 14 1947 0
	cmp	r0, #44
	bne	.L5692
	.loc 14 1953 0
	cmp	r8, #0
	beq	.L5693
.LVL6244:
	.loc 14 1960 0
	ldr	r3, [r8]
.LVL6245:
.LBB15580:
.LBB15581:
	.loc 28 1035 0
	and	r2, r3, #14
.LVL6246:
	cmp	r2, #14
	.loc 28 1037 0
	uxtbeq	r2, r3
	.loc 28 1036 0
	andne	r2, r3, #15
.LBE15581:
.LBE15580:
	.loc 14 1962 0
	cmp	r2, #9
	bne	.L5626
.LVL6247:
.LBB15582:
.LBB15583:
	.loc 28 2176 0 discriminator 1
	and	r2, r3, #15
	cmp	r2, #9
	bne	.L5430
.LVL6248:
	.loc 28 2179 0
	ubfx	r3, r3, #4, #1
.LVL6249:
.LBE15583:
.LBE15582:
	.loc 14 1962 0
	cmp	r3, #0
	bne	.L5626
.LVL6250:
.LBB15584:
.LBB15585:
	.loc 28 1953 0
	and	r2, r5, #15
	cmp	r2, #5
	bne	.L5706
	.loc 28 1956 0
	ubfx	r4, r4, #0, #18
.LVL6251:
.LBE15585:
.LBE15584:
	.loc 14 1971 0
	movw	r2, #:lower16:armKSASIDTable
	mov	r1, r4, lsr #10
.LVL6252:
	movt	r2, #:upper16:armKSASIDTable
	ldr	r6, [r2, r1, asl #2]
.LVL6253:
	.loc 14 1973 0
	cmp	r6, #0
	beq	.L5707
.LVL6254:
.LBB15587:
.LBB15588:
	.loc 28 1970 0
	bic	r5, r5, #15
.LVL6255:
.LBE15588:
.LBE15587:
	.loc 14 1981 0
	cmp	r6, r5
	bne	.L5630
	mov	r3, r6
	add	r2, r4, #1024
	b	.L5631
.LVL6256:
.L5633:
	add	r4, r4, #1
.LVL6257:
	add	r3, r3, #4
	.loc 14 1990 0 discriminator 6
	cmp	r4, r2
	beq	.L5632
.LVL6258:
.L5631:
	.loc 14 1990 0 is_stmt 0 discriminator 3
	cmp	r4, #0
	beq	.L5633
	.loc 14 1990 0 discriminator 5
	ldr	r1, [r3]
	cmp	r1, #0
	bne	.L5633
.LVL6259:
	.loc 14 2000 0 is_stmt 1
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r2, [r3]
.LVL6260:
.LBB15589:
.LBB15590:
.LBB15591:
.LBB15592:
	.loc 28 169 0
	ldr	r3, [r2, #72]
.LBE15592:
.LBE15591:
	.loc 26 418 0
	mov	r0, r2
.LVL6261:
.LBB15594:
.LBB15593:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #2
	str	r3, [r2, #72]
.LVL6262:
.LBE15593:
.LBE15594:
	.loc 26 418 0
	bl	scheduleTCB
.LVL6263:
.LBE15590:
.LBE15589:
	.loc 14 2001 0
	mov	r0, r4
	mov	r1, r6
	mov	r2, r8
.LBE15579:
	.loc 14 2007 0
	add	sp, sp, #84
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL6264:
.LBB15596:
	.loc 14 2001 0
	b	performASIDPoolInvocation
.LVL6265:
.L5394:
	.cfi_restore_state
.LBE15596:
.LBB15597:
.LBB15598:
	.loc 14 1091 0
	cmp	r0, #34
	beq	.L5708
	.loc 14 1100 0
	cmp	r0, #33
	bne	.L5692
	.loc 14 1105 0
	cmp	r8, #0
	cmpne	r1, #1
	movls	r1, #1
.LVL6266:
	movhi	r1, #0
	bls	.L5693
.LVL6267:
.LBB15599:
.LBB15600:
	.loc 28 2007 0
	and	r3, r5, #15
	cmp	r3, #7
	bne	.L5709
.LVL6268:
.LBE15600:
.LBE15599:
	.loc 14 1110 0
	tst	r4, #1073741824
	bne	.L5710
.LVL6269:
	.loc 14 1120 0
	ldr	r6, [r8]
.LBB15602:
.LBB15603:
	.loc 43 30 0
	movw	r7, #:lower16:ksCurThread
	movt	r7, #:upper16:ksCurThread
.LBE15603:
.LBE15602:
	.loc 14 1120 0
	ldr	r3, [r8, #4]
.LBB15608:
.LBB15606:
	.loc 43 30 0
	ldr	r2, [r7]
.LVL6270:
.LBE15606:
.LBE15608:
.LBB15609:
.LBB15610:
	.loc 28 1035 0
	and	r1, r6, #14
	cmp	r1, #14
.LBE15610:
.LBE15609:
.LBB15612:
.LBB15607:
.LBB15604:
.LBB15605:
	.loc 13 27 0
	ldr	fp, [r2, #8]
.LVL6271:
.LBE15605:
.LBE15604:
.LBE15607:
.LBE15612:
.LBB15613:
.LBB15614:
.LBB15615:
.LBB15616:
	ldr	r8, [r2, #12]
.LVL6272:
.LBE15616:
.LBE15615:
.LBE15614:
.LBE15613:
.LBB15617:
.LBB15611:
	.loc 28 1037 0
	uxtbeq	r2, r6
.LVL6273:
	.loc 28 1036 0
	andne	r2, r6, #15
.LBE15611:
.LBE15617:
	.loc 14 1122 0
	cmp	r2, #9
	bne	.L5626
.LVL6274:
.LBB15618:
.LBB15619:
	.loc 28 2176 0
	and	r2, r6, #15
	cmp	r2, #9
	bne	.L5430
.LVL6275:
.LBE15619:
.LBE15618:
	.loc 14 1122 0
	tst	r6, #16
	beq	.L5626
.LVL6276:
	.loc 14 1133 0
	cmn	fp, #536870913
.LBB15620:
.LBB15621:
	.loc 28 2165 0
	bic	r6, r6, #16320
	bic	r6, r6, #63
.LVL6277:
.LBE15621:
.LBE15620:
.LBB15622:
.LBB15623:
	.loc 28 2138 0
	ubfx	ip, r3, #0, #18
.LVL6278:
.LBE15623:
.LBE15622:
	.loc 14 1133 0
	bhi	.L5482
.LBB15624:
	.loc 14 1143 0
	mov	r1, ip
	add	r0, sp, #64
.LVL6279:
	str	ip, [sp, #16]
	bl	findPDForASID
.LVL6280:
	.loc 14 1144 0
	ldr	r3, [sp, #64]
	ldr	ip, [sp, #16]
	cmp	r3, #0
	bne	.L5695
	.loc 14 1151 0
	ldr	r3, [sp, #68]
	cmp	r6, r3
	bne	.L5531
.LBE15624:
	.loc 14 1160 0
	mov	fp, fp, lsr #20
.LVL6281:
.LBB15625:
.LBB15626:
	.loc 28 788 0
	ldr	r10, [r6, fp, asl #2]
.LBE15626:
.LBE15625:
	.loc 14 1161 0
	add	r2, r6, fp, asl #2
.LVL6282:
	.loc 14 1162 0
	ands	r10, r10, #3
	bne	.L5632
.LVL6283:
	.loc 14 1180 0
	ldr	r1, [r7]
.LBB15627:
.LBB15628:
	.loc 28 2064 0
	movw	r3, #4095
	movt	r3, 32768
	str	r2, [sp, #16]
.LVL6284:
	and	r3, r3, r4
.LBE15628:
.LBE15627:
.LBB15630:
.LBB15631:
	.loc 28 338 0
	ubfx	r8, r8, #1, #1
.LVL6285:
.LBE15631:
.LBE15630:
.LBB15632:
.LBB15633:
.LBB15634:
.LBB15635:
	.loc 28 169 0
	ldr	lr, [r1, #72]
.LBE15635:
.LBE15634:
.LBE15633:
.LBE15632:
.LBB15646:
.LBB15629:
	.loc 28 2064 0
	orr	r3, r3, #1073741824
	.loc 28 2065 0
	orr	r3, r3, ip, asl #12
.LBE15629:
.LBE15646:
.LBB15647:
.LBB15642:
	.loc 26 418 0
	mov	r0, r1
.LBB15639:
.LBB15636:
	.loc 28 169 0
	bic	ip, lr, #15
.LVL6286:
.LBE15636:
.LBE15639:
.LBE15642:
.LBE15647:
.LBB15648:
.LBB15649:
	.loc 28 2090 0
	bic	r3, r3, #4080
.LBE15649:
.LBE15648:
.LBB15652:
.LBB15643:
.LBB15640:
.LBB15637:
	.loc 28 170 0
	orr	ip, ip, #2
.LBE15637:
.LBE15640:
.LBE15643:
.LBE15652:
.LBB15653:
.LBB15650:
	.loc 28 2090 0
	bic	r3, r3, #15
.LBE15650:
.LBE15653:
.LBB15654:
.LBB15644:
.LBB15641:
.LBB15638:
	.loc 28 170 0
	str	ip, [r1, #72]
.LBE15638:
.LBE15641:
.LBE15644:
.LBE15654:
.LBB15655:
.LBB15651:
	.loc 28 2091 0
	orr	r4, r3, fp
.LVL6287:
.LBE15651:
.LBE15655:
.LBB15656:
.LBB15645:
	.loc 26 418 0
	bl	scheduleTCB
.LVL6288:
.LBE15645:
.LBE15656:
.LBB15657:
.LBB15658:
	.loc 28 2101 0
	bic	r3, r5, #1020
.LBE15658:
.LBE15657:
.LBB15660:
.LBB15661:
	.loc 14 2013 0
	str	r4, [r9, #4]
.LBE15661:
.LBE15660:
.LBB15671:
.LBB15659:
	.loc 28 2101 0
	bic	r3, r3, #3
.LBE15659:
.LBE15671:
.LBB15672:
.LBB15668:
	.loc 14 2013 0
	str	r5, [r9]
.LBE15668:
.LBE15672:
.LBB15673:
.LBB15674:
	.loc 28 846 0
	add	r3, r3, #536870912
.LBE15674:
.LBE15673:
.LBB15676:
.LBB15669:
.LBB15662:
.LBB15663:
	.loc 4 212 0
	ldr	r2, [sp, #16]
.LBE15663:
.LBE15662:
.LBE15669:
.LBE15676:
.LBB15677:
.LBB15675:
	.loc 28 849 0
	orr	r3, r3, r8, asl #9
	.loc 28 855 0
	orr	r3, r3, #1
.LBE15675:
.LBE15677:
.LBB15678:
.LBB15670:
	.loc 14 2014 0
	str	r3, [r6, fp, asl #2]
.LVL6289:
.LBB15667:
.LBB15666:
	.loc 4 212 0
@ 212 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c7, c11, 1
@ 0 "" 2
.LBB15664:
.LBB15665:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE15665:
.LBE15664:
.LBE15666:
.LBE15667:
.LBE15670:
.LBE15678:
.LBE15598:
.LBE15597:
	.loc 14 1860 0
	b	.L5660
.LVL6290:
.L5395:
.LBB15690:
.LBB15691:
	.loc 14 1746 0
	sub	r3, r0, #29
	cmp	r3, #3
	bls	.L5711
.LVL6291:
.L5692:
.LBE15691:
.LBE15690:
.LBB15784:
	.loc 14 1948 0
	mov	r2, #3
	movw	r3, #:lower16:current_syscall_error
	.loc 14 1950 0
	mov	r10, r2
	.loc 14 1948 0
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
.LVL6292:
.L5660:
.LBE15784:
	.loc 14 2007 0
	mov	r0, r10
	add	sp, sp, #84
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL6293:
.L5390:
	.cfi_restore_state
	.loc 14 2005 0
	movw	r0, #:lower16:.LC298
.LVL6294:
	movw	r1, #:lower16:.LC23
.LVL6295:
	movt	r0, #:upper16:.LC298
	movt	r1, #:upper16:.LC23
	movw	r2, #2005
.LVL6296:
	ldr	r3, .L5746+4
	bl	_fail
.LVL6297:
.L5626:
.LBB15785:
	.loc 14 1965 0
	movw	r3, #:lower16:current_syscall_error
	mov	r1, #2
	movt	r3, #:upper16:current_syscall_error
	.loc 14 1966 0
	mov	r2, #1
	.loc 14 1965 0
	str	r1, [r3, #24]
	.loc 14 1968 0
	mov	r10, #3
	.loc 14 1966 0
	str	r2, [r3, #4]
	.loc 14 1968 0
	b	.L5660
.LVL6298:
.L5693:
	.loc 14 1954 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
.LVL6299:
	movt	r3, #:upper16:current_syscall_error
	.loc 14 1956 0
	mov	r10, #3
.LBE15785:
	.loc 14 2007 0
	mov	r0, r10
.LVL6300:
.LBB15786:
	.loc 14 1954 0
	str	r2, [r3, #24]
.LBE15786:
	.loc 14 2007 0
	add	sp, sp, #84
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL6301:
.L5632:
	.cfi_restore_state
.LBB15787:
	.loc 14 1993 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #8
	movt	r3, #:upper16:current_syscall_error
	.loc 14 1995 0
	mov	r10, #3
	.loc 14 1993 0
	str	r2, [r3, #24]
	.loc 14 1995 0
	b	.L5660
.LVL6302:
.L5711:
.LBE15787:
.LBB15788:
.LBB15775:
.LBB15692:
	.loc 14 1758 0
	cmp	r1, #1
	bls	.L5712
.LVL6303:
.LBB15693:
.LBB15694:
	.loc 43 30 0
	movw	r7, #:lower16:ksCurThread
	movt	r7, #:upper16:ksCurThread
	ldr	r2, [r7]
.LVL6304:
.LBB15695:
.LBB15696:
	.loc 13 27 0
	ldr	r8, [r2, #8]
.LVL6305:
.LBE15696:
.LBE15695:
.LBE15694:
.LBE15693:
.LBB15697:
.LBB15698:
.LBB15699:
.LBB15700:
	ldr	r9, [r2, #12]
.LVL6306:
.LBE15700:
.LBE15699:
.LBE15698:
.LBE15697:
	.loc 14 1768 0
	cmp	r8, r9
	bcs	.L5713
	.loc 14 1776 0
	cmn	r8, #536870913
	cmpls	r9, #-536870912
	bhi	.L5714
.LVL6307:
.LBB15701:
.LBB15702:
	.loc 28 1035 0
	cmp	r6, #14
	.loc 28 1037 0
	uxtbeq	r3, r5
	.loc 28 1036 0
	andne	r3, r5, #15
.LBE15702:
.LBE15701:
	.loc 14 1782 0
	cmp	r3, #9
	bne	.L5689
.LVL6308:
.LBB15703:
.LBB15704:
	.loc 28 2176 0
	and	r3, r5, #15
	cmp	r3, #9
	bne	.L5430
.LVL6309:
.LBE15704:
.LBE15703:
	.loc 14 1782 0
	tst	r5, #16
	beq	.L5689
.LVL6310:
.LBB15706:
.LBB15707:
	.loc 28 2138 0
	ubfx	r4, r4, #0, #18
.LVL6311:
.LBE15707:
.LBE15706:
	.loc 14 1794 0
	add	r0, sp, #64
.LVL6312:
	mov	r1, r4
.LVL6313:
.LBB15708:
.LBB15709:
	.loc 28 2165 0
	bic	r5, r5, #16320
.LVL6314:
.LBE15709:
.LBE15708:
	.loc 14 1794 0
	bl	findPDForASID
.LVL6315:
	.loc 14 1795 0
	ldr	r10, [sp, #64]
.LBB15711:
.LBB15710:
	.loc 28 2165 0
	bic	r5, r5, #63
.LVL6316:
.LBE15710:
.LBE15711:
	.loc 14 1795 0
	cmp	r10, #0
	bne	.L5715
	.loc 14 1802 0
	ldr	r3, [sp, #68]
	cmp	r5, r3
	bne	.L5716
.LVL6317:
.LBB15712:
.LBB15713:
.LBB15714:
.LBB15715:
	.loc 14 439 0
	mov	r3, r8, lsr #20
.LVL6318:
.LBE15715:
.LBE15714:
.LBB15716:
.LBB15717:
	.loc 28 788 0
	ldr	r3, [r5, r3, asl #2]
.LVL6319:
	and	r2, r3, #3
.LBE15717:
.LBE15716:
	.loc 14 1702 0
	cmp	r2, #1
	beq	.L5411
	cmp	r2, #2
	bne	.L5410
.LVL6320:
.LBB15718:
.LBB15719:
	.loc 28 957 0
	mov	r6, r3, lsr #20
.LBE15719:
.LBE15718:
.LBB15721:
.LBB15722:
	.loc 28 985 0
	ubfx	r2, r3, #18, #1
.LBE15722:
.LBE15721:
	.loc 14 1705 0
	movw	r1, #65535
	mov	r3, #0
	movt	r1, 15
	cmp	r2, r3
.LBB15723:
.LBB15720:
	.loc 28 957 0
	mov	r6, r6, asl #20
.LVL6321:
.LBE15720:
.LBE15723:
	.loc 14 1705 0
	movt	r3, 65520
	mvnne	ip, #-16777216
	moveq	ip, r1
	movne	r3, #-16777216
.LVL6322:
.L5414:
.LBE15713:
.LBE15712:
	.loc 14 1823 0
	sub	r9, r9, #1
.LVL6323:
.LBB15742:
.LBB15743:
	.loc 14 1738 0
	and	r2, r3, r8
.LBE15743:
.LBE15742:
.LBB15744:
.LBB15745:
	and	r3, r3, r9
.LBE15745:
.LBE15744:
	.loc 14 1822 0
	cmp	r2, r3
	beq	.L5416
	.loc 14 1824 0
	movw	r3, #:lower16:current_syscall_error
	.loc 14 1827 0
	add	r2, r2, ip
	.loc 14 1824 0
	movt	r3, #:upper16:current_syscall_error
	mov	r1, #4
	.loc 14 1826 0
	str	r2, [r3, #12]
	.loc 14 1829 0
	mov	r10, #3
	.loc 14 1825 0
	str	r8, [r3, #8]
	.loc 14 1824 0
	str	r1, [r3, #24]
	b	.L5660
.LVL6324:
.L5444:
.LBE15692:
.LBE15775:
.LBE15788:
.LBB15789:
.LBB15565:
	.loc 14 1681 0
	movw	r7, #:lower16:ksCurThread
	movt	r7, #:upper16:ksCurThread
	ldr	r2, [r7]
.LVL6325:
.LBB15064:
.LBB15065:
.LBB15066:
.LBB15067:
	.loc 28 169 0
	ldr	r3, [r2, #72]
.LBE15067:
.LBE15066:
	.loc 26 418 0
	mov	r0, r2
.LVL6326:
.LBB15069:
.LBB15068:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #2
	str	r3, [r2, #72]
.LBE15068:
.LBE15069:
	.loc 26 418 0
	bl	scheduleTCB
.LVL6327:
.LBE15065:
.LBE15064:
.LBB15070:
.LBB15071:
.LBB15072:
.LBB15073:
	.loc 28 1035 0
	cmp	r6, #14
	.loc 28 1037 0
	uxtbeq	r3, r5
	.loc 28 1036 0
	andne	r3, r5, #15
.LVL6328:
.LBE15073:
.LBE15072:
	.loc 38 207 0
	and	r2, r3, #253
	cmp	r2, #1
	bne	.L5557
	.loc 38 210 0
	cmp	r3, #1
	beq	.L5606
	cmp	r3, #3
	bne	.L5717
.LVL6329:
.LBB15074:
.LBB15075:
	.loc 28 1919 0
	and	r3, r5, #15
.LVL6330:
	cmp	r3, #3
	bne	.L5562
.LVL6331:
	.loc 28 1922 0
	bic	r5, r5, #-268435441
.LVL6332:
	bic	r5, r5, #264241152
	mov	r5, r5, asl #10
	add	r3, r5, #536870912
.LVL6333:
.L5605:
.LBE15075:
.LBE15074:
.LBE15071:
.LBE15070:
.LBB15079:
.LBB15080:
	.loc 14 2045 0
	ldr	r2, [r7]
.LVL6334:
.LBB15081:
.LBB15082:
	.loc 13 21 0
	mov	r1, #1
.LBE15082:
.LBE15081:
.LBE15080:
.LBE15079:
	.loc 14 1682 0
	mov	r10, #0
.LBB15086:
.LBB15085:
.LBB15084:
.LBB15083:
	.loc 13 21 0
	stmib	r2, {r1, r3}
	b	.L5660
.LVL6335:
.L5443:
.LBE15083:
.LBE15084:
.LBE15085:
.LBE15086:
.LBB15087:
	.loc 14 1619 0
	cmp	r1, #1
	bls	.L5718
.LVL6336:
.LBB15088:
.LBB15089:
.LBB15090:
.LBB15091:
	.loc 28 1035 0
	cmp	r6, #14
	.loc 28 1037 0
	uxtbeq	r3, r5
	.loc 28 1036 0
	andne	r3, r5, #15
.LVL6337:
.LBE15091:
.LBE15090:
	.loc 38 143 0
	and	r2, r3, #253
.LVL6338:
	cmp	r2, #1
	bne	.L5513
	.loc 38 146 0
	cmp	r3, #1
.LBB15092:
.LBB15093:
.LBB15094:
.LBB15095:
	.loc 28 1729 0
	and	r8, r5, #15
.LVL6339:
.LBE15095:
.LBE15094:
.LBE15093:
.LBE15092:
	.loc 38 146 0
	beq	.L5719
.LVL6340:
.LBB15101:
.LBB15102:
.LBB15103:
.LBB15104:
	.loc 28 1893 0
	cmp	r8, #3
	bne	.L5517
.LVL6341:
	.loc 28 1896 0
	ubfx	r9, r5, #22, #8
.LVL6342:
.LBE15104:
.LBE15103:
.LBB15105:
.LBB15106:
	.loc 28 1818 0
	ubfx	r2, r4, #20, #10
.LBE15106:
.LBE15105:
	.loc 38 132 0
	mov	r3, r9
.LVL6343:
	add	r9, r2, r9, asl #10
.LVL6344:
.L5571:
.LBE15102:
.LBE15101:
.LBE15089:
.LBE15088:
.LBB15109:
.LBB15110:
.LBB15111:
.LBB15112:
	.loc 28 1035 0
	cmp	r6, #14
	.loc 28 1037 0
	uxtbeq	r3, r5
	.loc 28 1036 0
	movne	r3, r8
.LVL6345:
.LBE15112:
.LBE15111:
	.loc 38 255 0
	and	r2, r3, #253
	cmp	r2, #1
	bne	.L5574
	.loc 38 258 0
	cmp	r3, #1
	beq	.L5720
.LVL6346:
.LBB15113:
.LBB15114:
	.loc 28 1867 0
	cmp	r8, #3
	bne	.L5578
	.loc 28 1870 0
	mov	r3, r4, asl #14
.LVL6347:
	str	r3, [sp, #16]
.LVL6348:
.L5577:
.LBE15114:
.LBE15113:
.LBE15110:
.LBE15109:
.LBB15118:
.LBB15119:
.LBB15120:
.LBB15121:
.LBB15122:
	.loc 28 1035 0
	cmp	r6, #14
	.loc 28 1037 0
	uxtbeq	r3, r5
	.loc 28 1036 0
	movne	r3, r8
.LVL6349:
.LBE15122:
.LBE15121:
	.loc 38 143 0
	and	r2, r3, #253
	cmp	r2, #1
	bne	.L5513
	.loc 38 146 0
	cmp	r3, #1
	beq	.L5721
.LVL6350:
.LBB15123:
.LBB15124:
.LBB15125:
.LBB15126:
	.loc 28 1893 0
	cmp	r8, #3
	bne	.L5517
.LVL6351:
	.loc 28 1896 0
	ubfx	r3, r5, #22, #8
.LVL6352:
.LBE15126:
.LBE15125:
.LBB15127:
.LBB15128:
	.loc 28 1818 0
	ubfx	r2, r4, #20, #10
.LBE15128:
.LBE15127:
	.loc 38 132 0
	add	r3, r2, r3, asl #10
.LVL6353:
.L5582:
.LBE15124:
.LBE15123:
.LBE15120:
.LBE15119:
.LBE15118:
	.loc 14 1628 0
	cmp	r3, #0
	beq	.L5722
	.loc 14 1634 0
	add	r0, sp, #64
.LVL6354:
	mov	r1, r9
.LVL6355:
	bl	findPDForASID
.LVL6356:
	.loc 14 1635 0
	ldr	r10, [sp, #64]
	cmp	r10, #0
	bne	.L5723
.LVL6357:
.LBB15137:
.LBB15138:
	.loc 43 30 0
	movw	r7, #:lower16:ksCurThread
	movt	r7, #:upper16:ksCurThread
	ldr	r1, [r7]
.LVL6358:
.LBB15139:
.LBB15140:
	.loc 13 27 0
	ldr	r3, [r1, #8]
.LVL6359:
.LBE15140:
.LBE15139:
.LBE15138:
.LBE15137:
.LBB15141:
.LBB15142:
.LBB15143:
.LBB15144:
	ldr	r2, [r1, #12]
.LBE15144:
.LBE15143:
.LBE15142:
.LBE15141:
	.loc 14 1647 0
	cmp	r3, r2
	bcs	.L5724
.LVL6360:
.LBB15145:
.LBB15146:
.LBB15147:
.LBB15148:
	.loc 28 1035 0
	cmp	r6, #14
	.loc 28 1037 0
	uxtbeq	r0, r5
	.loc 28 1036 0
	movne	r0, r8
.LVL6361:
.LBE15148:
.LBE15147:
	.loc 38 228 0
	and	lr, r0, #253
	cmp	lr, #1
	bne	.L5535
	.loc 38 231 0
	cmp	r0, #3
	beq	.L5725
.LVL6362:
.L5651:
.LBE15146:
.LBE15145:
.LBB15152:
.LBB15153:
	.loc 37 113 0
	mov	r0, #4096
.LVL6363:
.L5588:
.LBE15153:
.LBE15152:
.LBB15157:
.LBB15158:
.LBB15159:
.LBB15160:
	.loc 28 1035 0
	cmp	r6, #14
	.loc 28 1037 0
	uxtbeq	lr, r5
	.loc 28 1036 0
	movne	lr, r8
.LVL6364:
.LBE15160:
.LBE15159:
	.loc 38 207 0
	and	r4, lr, #253
	cmp	r4, #1
	bne	.L5557
	.loc 38 210 0
	cmp	lr, #1
	beq	.L5598
	cmp	lr, #3
	bne	.L5726
.LVL6365:
.LBB15161:
.LBB15162:
	.loc 28 1919 0
	cmp	r8, #3
	bne	.L5562
	.loc 28 1922 0
	bic	r4, r5, #-268435441
	bic	r4, r4, #264241152
	mov	r4, r4, asl #10
.LVL6366:
.L5597:
.LBE15162:
.LBE15161:
.LBE15158:
.LBE15157:
	.loc 14 1659 0
	cmp	r2, r0
	cmpls	r3, r0
	bcc	.L5600
.LVL6367:
	.loc 14 1660 0
	add	r3, r1, #140
	movw	r0, #:lower16:.LC3
.LVL6368:
	str	r3, [sp]
	movw	r2, #1660
	ldr	ip, [r1, #68]
	mov	r3, r1
	movt	r0, #:upper16:.LC3
	ldr	r1, .L5746+20
.LVL6369:
	.loc 14 1663 0
	mov	r10, #3
	.loc 14 1660 0
	str	ip, [sp, #4]
	bl	kprintf
.LVL6370:
	movw	r0, #:lower16:.LC297
	movt	r0, #:upper16:.LC297
	bl	kprintf
.LVL6371:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL6372:
	.loc 14 1661 0
	movw	r3, #:lower16:current_syscall_error
	mov	r1, #1
	movt	r3, #:upper16:current_syscall_error
	.loc 14 1662 0
	mov	r2, #0
	.loc 14 1661 0
	str	r1, [r3, #24]
	.loc 14 1662 0
	str	r2, [r3]
	b	.L5660
.LVL6373:
.L5442:
.LBE15087:
	.loc 14 1603 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r2, [r3]
.LVL6374:
.LBB15190:
.LBB15191:
.LBB15192:
.LBB15193:
	.loc 28 169 0
	ldr	r3, [r2, #72]
.LBE15193:
.LBE15192:
	.loc 26 418 0
	mov	r0, r2
.LVL6375:
.LBB15195:
.LBB15194:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #2
	str	r3, [r2, #72]
.LBE15194:
.LBE15195:
	.loc 26 418 0
	bl	scheduleTCB
.LVL6376:
.LBE15191:
.LBE15190:
	.loc 14 1604 0
	add	r3, sp, #56
	str	r5, [sp, #56]
	str	r4, [sp, #60]
	mov	r2, r9
	ldmia	r3, {r0, r1}
	bl	performPageInvocationUnmap
.LVL6377:
	mov	r10, r0
	b	.L5660
.LVL6378:
.L5441:
.LBB15196:
	.loc 14 1503 0
	cmp	r8, #0
	cmpne	r1, #1
	bls	.L5693
.LVL6379:
.LBB15197:
.LBB15198:
	.loc 43 30 0
	movw	r7, #:lower16:ksCurThread
.LBE15198:
.LBE15197:
	.loc 14 1512 0
	ldr	r2, [r8]
.LVL6380:
.LBB15204:
.LBB15201:
	.loc 43 30 0
	movt	r7, #:upper16:ksCurThread
.LBE15201:
.LBE15204:
	.loc 14 1512 0
	ldr	r9, [r8, #4]
.LVL6381:
.LBB15205:
.LBB15202:
	.loc 43 30 0
	ldr	r3, [r7]
.LVL6382:
.LBE15202:
.LBE15205:
.LBB15206:
.LBB15207:
	.loc 28 1035 0
	and	r1, r2, #14
.LVL6383:
	cmp	r1, #14
.LBE15207:
.LBE15206:
.LBB15209:
.LBB15203:
.LBB15199:
.LBB15200:
	.loc 13 27 0
	ldr	r10, [r3, #8]
.LVL6384:
	ldr	r3, [r3, #12]
.LVL6385:
	str	r3, [sp, #28]
.LBE15200:
.LBE15199:
.LBE15203:
.LBE15209:
.LBB15210:
.LBB15208:
	.loc 28 1037 0
	uxtbeq	r3, r2
.LVL6386:
	.loc 28 1036 0
	andne	r3, r2, #15
.LBE15208:
.LBE15210:
	.loc 14 1514 0
	cmp	r3, #9
	bne	.L5626
.LVL6387:
.LBB15211:
.LBB15212:
	.loc 28 2176 0
	and	r3, r2, #15
	cmp	r3, #9
	bne	.L5430
.LVL6388:
.LBE15212:
.LBE15211:
	.loc 14 1514 0
	tst	r2, #16
	beq	.L5626
.LVL6389:
.LBB15213:
.LBB15214:
.LBB15215:
.LBB15216:
.LBB15217:
	.loc 28 1035 0
	cmp	r6, #14
	.loc 28 1037 0
	uxtbeq	r3, r5
	.loc 28 1036 0
	andne	r3, r5, #15
.LVL6390:
.LBE15217:
.LBE15216:
	.loc 38 143 0
	and	r1, r3, #253
	cmp	r1, #1
	bne	.L5513
	.loc 38 146 0
	cmp	r3, #1
.LBB15218:
.LBB15219:
.LBB15220:
.LBB15221:
	.loc 28 1729 0
	and	r8, r5, #15
.LVL6391:
.LBE15221:
.LBE15220:
.LBE15219:
.LBE15218:
	.loc 38 146 0
	beq	.L5727
.LVL6392:
.LBB15227:
.LBB15228:
.LBB15229:
.LBB15230:
	.loc 28 1893 0
	cmp	r8, #3
	bne	.L5517
.LVL6393:
	.loc 28 1896 0
	ubfx	r3, r5, #22, #8
.LVL6394:
.LBE15230:
.LBE15229:
.LBB15231:
.LBB15232:
	.loc 28 1818 0
	ubfx	r1, r4, #20, #10
.LBE15232:
.LBE15231:
	.loc 38 132 0
	add	r3, r1, r3, asl #10
.LVL6395:
.L5516:
.LBE15228:
.LBE15227:
.LBE15215:
.LBE15214:
.LBE15213:
	.loc 14 1523 0
	cmp	r3, #0
	beq	.L5630
.LVL6396:
.LBB15236:
.LBB15237:
.LBB15238:
.LBB15239:
	.loc 28 1035 0
	cmp	r6, #14
.LBE15239:
.LBE15238:
.LBE15237:
.LBE15236:
.LBB15253:
.LBB15254:
	.loc 28 2165 0
	bic	fp, r2, #16320
.LBE15254:
.LBE15253:
.LBB15256:
.LBB15248:
.LBB15241:
.LBB15240:
	.loc 28 1037 0
	uxtbeq	r3, r5
	.loc 28 1036 0
	movne	r3, r8
.LBE15240:
.LBE15241:
.LBE15248:
.LBE15256:
.LBB15257:
.LBB15255:
	.loc 28 2165 0
	bic	fp, fp, #63
.LVL6397:
.LBE15255:
.LBE15257:
.LBB15258:
.LBB15249:
	.loc 38 255 0
	and	r1, r3, #253
	cmp	r1, #1
	bne	.L5574
	.loc 38 258 0
	cmp	r3, #1
	beq	.L5728
.LVL6398:
.LBB15242:
.LBB15243:
	.loc 28 1867 0
	cmp	r8, #3
	.loc 28 1870 0
	moveq	r3, r4, asl #14
.LVL6399:
	streq	r3, [sp, #24]
	.loc 28 1867 0
	bne	.L5578
.LVL6400:
.L5523:
.LBE15243:
.LBE15242:
.LBE15249:
.LBE15258:
.LBB15259:
.LBB15260:
.LBB15261:
.LBB15262:
.LBB15263:
	.loc 28 1035 0
	cmp	r6, #14
	.loc 28 1037 0
	uxtbeq	r3, r5
	.loc 28 1036 0
	movne	r3, r8
.LVL6401:
.LBE15263:
.LBE15262:
	.loc 38 143 0
	and	r1, r3, #253
	cmp	r1, #1
	bne	.L5513
	.loc 38 146 0
	cmp	r3, #1
	beq	.L5729
.LVL6402:
.LBB15264:
.LBB15265:
.LBB15266:
.LBB15267:
	.loc 28 1893 0
	cmp	r8, #3
	bne	.L5517
.LVL6403:
	.loc 28 1896 0
	ubfx	r3, r5, #22, #8
.LVL6404:
.LBE15267:
.LBE15266:
.LBB15268:
.LBB15269:
	.loc 28 1818 0
	ubfx	r1, r4, #20, #10
.LBE15269:
.LBE15268:
	.loc 38 132 0
	add	r3, r1, r3, asl #10
.LVL6405:
.L5528:
.LBE15265:
.LBE15264:
.LBE15261:
.LBE15260:
	.loc 14 1539 0
	add	r2, sp, #64
.LVL6406:
	str	r3, [sp, #20]
	mov	r0, r2
.LVL6407:
	mov	r1, r3
	str	r2, [sp, #16]
	bl	findPDForASID
.LVL6408:
	.loc 14 1540 0
	ldr	r0, [sp, #64]
	ldr	r3, [sp, #20]
	cmp	r0, #0
	bne	.L5730
	.loc 14 1549 0
	ldr	r1, [sp, #68]
	cmp	fp, r1
	bne	.L5531
.LVL6409:
.LBB15277:
.LBB15278:
	.loc 28 2138 0
	ubfx	r9, r9, #0, #18
.LVL6410:
.LBE15278:
.LBE15277:
	.loc 14 1549 0
	cmp	r9, r3
	bne	.L5531
.LVL6411:
.LBE15259:
.LBB15280:
.LBB15281:
.LBB15282:
.LBB15283:
	.loc 28 1035 0
	cmp	r6, #14
	.loc 28 1037 0
	uxtbeq	r3, r5
	.loc 28 1036 0
	movne	r3, r8
.LVL6412:
.LBE15283:
.LBE15282:
	.loc 38 228 0
	and	r1, r3, #253
	cmp	r1, #1
	bne	.L5535
	.loc 38 231 0
	cmp	r3, #3
	beq	.L5731
	.loc 38 233 0
	mov	r3, #0
.LVL6413:
.L5536:
.LBE15281:
.LBE15280:
.LBB15287:
.LBB15288:
.LBB15289:
.LBB15290:
	.loc 28 1035 0
	cmp	r6, #14
	.loc 28 1037 0
	uxtbeq	r1, r5
	.loc 28 1036 0
	movne	r1, r8
.LVL6414:
.LBE15290:
.LBE15289:
	.loc 38 186 0
	and	lr, r1, #253
	cmp	lr, #1
	bne	.L5541
	.loc 38 189 0
	cmp	r1, #1
	beq	.L5543
	cmp	r1, #3
	bne	.L5542
.LVL6415:
.LBB15291:
.LBB15292:
	.loc 28 1841 0
	cmp	r8, #3
	bne	.L5546
	.loc 28 1844 0
	ubfx	r0, r4, #18, #2
.LVL6416:
.L5542:
.LBE15292:
.LBE15291:
.LBE15288:
.LBE15287:
	.loc 14 1562 0
	mov	r1, r10
.LVL6417:
	str	r3, [sp, #20]
.LVL6418:
	bl	maskVMRights
.LVL6419:
.LBB15296:
.LBB15297:
.LBB15298:
.LBB15299:
	.loc 37 113 0
	ldr	r3, [sp, #20]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L5590
.L5549:
	.word	.L5548
	.word	.L5550
	.word	.L5646
	.word	.L5552
.LVL6420:
.L5439:
.LBE15299:
.LBE15298:
.LBE15297:
.LBE15296:
.LBE15196:
.LBB15343:
	.loc 14 1381 0
	cmp	r8, #0
	cmpne	r1, #2
	bls	.L5693
.LVL6421:
	.loc 14 1391 0
	ldr	r3, [r8, #4]
.LBB15344:
.LBB15345:
	.loc 43 30 0
	movw	r7, #:lower16:ksCurThread
	movt	r7, #:upper16:ksCurThread
.LBE15345:
.LBE15344:
.LBB15350:
.LBB15351:
.LBB15352:
.LBB15353:
	.loc 28 1035 0
	cmp	r6, #14
.LBE15353:
.LBE15352:
.LBE15351:
.LBE15350:
	.loc 14 1391 0
	ldr	fp, [r8]
	str	r3, [sp, #20]
.LBB15361:
.LBB15348:
	.loc 43 30 0
	ldr	r3, [r7]
.LVL6422:
.LBE15348:
.LBE15361:
.LBB15362:
.LBB15363:
.LBB15364:
.LBB15365:
	.loc 13 27 0
	ldr	r1, [r3, #12]
.LVL6423:
.LBE15365:
.LBE15364:
.LBE15363:
.LBE15362:
.LBB15369:
.LBB15349:
.LBB15346:
.LBB15347:
	ldr	r2, [r3, #8]
.LVL6424:
	ldr	r3, [r3, #16]
.LVL6425:
.LBE15347:
.LBE15346:
.LBE15349:
.LBE15369:
.LBB15370:
.LBB15368:
.LBB15367:
.LBB15366:
	str	r1, [sp, #32]
.LVL6426:
	str	r3, [sp, #36]
.LBE15366:
.LBE15367:
.LBE15368:
.LBE15370:
.LBB15371:
.LBB15358:
.LBB15355:
.LBB15354:
	.loc 28 1037 0
	uxtbeq	r3, r5
.LVL6427:
	.loc 28 1036 0
	andne	r3, r5, #15
.LVL6428:
.LBE15354:
.LBE15355:
	.loc 38 228 0
	and	r1, r3, #253
	cmp	r1, #1
	bne	.L5535
	.loc 38 231 0
	cmp	r3, #3
	beq	.L5732
	.loc 38 233 0
	mov	ip, #0
.LVL6429:
.L5450:
.LBE15358:
.LBE15371:
.LBB15372:
.LBB15373:
.LBB15374:
.LBB15375:
	.loc 28 1035 0
	cmp	r6, #14
	.loc 28 1037 0
	uxtbeq	r3, r5
	.loc 28 1036 0
	andne	r3, r5, #15
.LVL6430:
.LBE15375:
.LBE15374:
	.loc 38 186 0
	and	r1, r3, #253
	cmp	r1, #1
	bne	.L5541
	.loc 38 189 0
	cmp	r3, #1
	beq	.L5457
	cmp	r3, #3
	bne	.L5733
.LVL6431:
.LBB15376:
.LBB15377:
	.loc 28 1841 0
	and	r3, r5, #15
.LVL6432:
	cmp	r3, #3
	.loc 28 1844 0
	ubfxeq	r3, r4, #18, #2
	streq	r3, [sp, #40]
	.loc 28 1841 0
	bne	.L5546
.LVL6433:
.L5456:
.LBE15377:
.LBE15376:
.LBE15373:
.LBE15372:
.LBB15385:
.LBB15386:
.LBB15387:
.LBB15388:
.LBB15389:
	.loc 28 1035 0
	cmp	r6, #14
	.loc 28 1037 0
	uxtbeq	r3, r5
	.loc 28 1036 0
	andne	r3, r5, #15
.LVL6434:
.LBE15389:
.LBE15388:
	.loc 38 143 0
	and	r1, r3, #253
	cmp	r1, #1
	bne	.L5513
	.loc 38 146 0
	cmp	r3, #1
.LBB15390:
.LBB15391:
.LBB15392:
.LBB15393:
	.loc 28 1729 0
	and	r8, r5, #15
.LVL6435:
.LBE15393:
.LBE15392:
.LBE15391:
.LBE15390:
	.loc 38 146 0
	beq	.L5734
.LVL6436:
.LBB15401:
.LBB15402:
.LBB15403:
.LBB15404:
	.loc 28 1893 0
	cmp	r8, #3
	bne	.L5517
.LVL6437:
	.loc 28 1896 0
	ubfx	r3, r5, #22, #8
.LVL6438:
.LBE15404:
.LBE15403:
.LBB15406:
.LBB15407:
	.loc 28 1818 0
	ubfx	r1, r4, #20, #10
.LBE15407:
.LBE15406:
	.loc 38 132 0
	add	r3, r1, r3, asl #10
.LVL6439:
.L5466:
.LBE15402:
.LBE15401:
.LBE15387:
.LBE15386:
.LBE15385:
	.loc 14 1396 0
	cmp	r3, #0
	bne	.L5689
.LVL6440:
.LBB15418:
.LBB15419:
	.loc 28 1035 0
	and	r3, fp, #14
	cmp	r3, #14
	.loc 28 1037 0
	uxtbeq	r3, fp
	.loc 28 1036 0
	andne	r3, fp, #15
.LBE15419:
.LBE15418:
	.loc 14 1404 0
	cmp	r3, #9
	bne	.L5626
.LVL6441:
.LBB15420:
.LBB15421:
	.loc 28 2176 0
	and	r3, fp, #15
	cmp	r3, #9
	bne	.L5430
.LVL6442:
.LBE15421:
.LBE15420:
	.loc 14 1404 0
	tst	fp, #16
	beq	.L5626
.LVL6443:
.LBB15422:
.LBB15423:
	.loc 28 2138 0
	ldr	r3, [sp, #20]
.LBE15423:
.LBE15422:
.LBB15425:
.LBB15426:
	.loc 28 2165 0
	bic	fp, fp, #16320
	str	ip, [sp, #28]
	bic	fp, fp, #63
	str	r2, [sp, #24]
.LBE15426:
.LBE15425:
.LBB15427:
.LBB15424:
	.loc 28 2138 0
	ubfx	r10, r3, #0, #18
.LBE15424:
.LBE15427:
.LBB15428:
	.loc 14 1419 0
	add	r3, sp, #64
	mov	r0, r3
.LVL6444:
	mov	r1, r10
	str	r3, [sp, #16]
	bl	findPDForASID
.LVL6445:
	.loc 14 1420 0
	ldr	r3, [sp, #64]
	ldr	r2, [sp, #24]
	ldr	ip, [sp, #28]
	cmp	r3, #0
	bne	.L5735
	.loc 14 1430 0
	ldr	r3, [sp, #68]
	cmp	fp, r3
	bne	.L5531
.LVL6446:
.LBE15428:
.LBB15429:
.LBB15430:
	.loc 37 113 0
	cmp	ip, #3
	ldrls	pc, [pc, ip, asl #2]
	b	.L5590
.L5478:
	.word	.L5477
	.word	.L5479
	.word	.L5641
	.word	.L5481
.LVL6447:
.L5704:
.LBE15430:
.LBE15429:
.LBE15343:
.LBE15565:
.LBE15789:
.LBB15790:
.LBB15059:
.LBB15043:
	.loc 28 1037 0
	uxtb	r3, r6
	b	.L5615
.LVL6448:
.L5712:
.LBE15043:
.LBE15059:
.LBE15790:
.LBB15791:
.LBB15776:
.LBB15767:
	.loc 14 1759 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC3
.LVL6449:
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC3
	ldr	ip, [r3]
.LVL6450:
	movw	r2, #1759
.LVL6451:
	ldr	r1, .L5746+16
.LVL6452:
	.loc 14 1761 0
	mov	r10, #3
	.loc 14 1759 0
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL6453:
	str	ip, [sp, #4]
	bl	kprintf
.LVL6454:
	movw	r0, #:lower16:.LC286
	movt	r0, #:upper16:.LC286
.LVL6455:
.L5687:
.LBE15767:
.LBE15776:
.LBE15791:
.LBB15792:
.LBB15566:
.LBB15533:
	.loc 14 1620 0
	bl	kprintf
.LVL6456:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL6457:
	.loc 14 1621 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
	b	.L5660
.LVL6458:
.L5531:
.LBE15533:
.LBB15534:
.LBB15306:
	.loc 14 1552 0
	movw	r3, #:lower16:current_syscall_error
	mov	r1, #2
	movt	r3, #:upper16:current_syscall_error
	.loc 14 1554 0
	mov	r2, #1
	.loc 14 1552 0
	str	r1, [r3, #24]
	.loc 14 1554 0
	str	r2, [r3, #4]
.L5530:
	.loc 14 1546 0
	mov	r10, #3
	b	.L5660
.LVL6459:
.L5641:
.LBE15306:
.LBE15534:
.LBB15535:
.LBB15433:
.LBB15431:
	.loc 37 113 0
	mov	r3, #1048576
.L5480:
.LVL6460:
	sub	r1, r2, #1
.LBE15431:
.LBE15433:
	.loc 14 1439 0
	add	r1, r1, r3
	.loc 14 1441 0
	cmn	r1, #536870913
	bhi	.L5482
	.loc 14 1449 0
	ldr	r0, [sp, #40]
	ldr	r1, [sp, #32]
	str	r3, [sp, #44]
	str	ip, [sp, #28]
	str	r2, [sp, #24]
.LVL6461:
	bl	maskVMRights
.LVL6462:
.LBB15434:
.LBB15435:
	.loc 14 1075 0
	ldr	r3, [sp, #44]
.LBE15435:
.LBE15434:
	.loc 14 1449 0
	mov	lr, r0
.LVL6463:
	.loc 14 1452 0
	ldr	r2, [sp, #24]
	ldr	ip, [sp, #28]
.LBB15437:
.LBB15436:
	.loc 14 1075 0
	sub	r3, r3, #1
.LBE15436:
.LBE15437:
	.loc 14 1452 0
	tst	r3, r2
	bne	.L5553
.LVL6464:
.LBB15438:
.LBB15439:
.LBB15440:
.LBB15441:
	.loc 28 1035 0
	cmp	r6, #14
	.loc 28 1037 0
	uxtbeq	r3, r5
	.loc 28 1036 0
	movne	r3, r8
.LVL6465:
.LBE15441:
.LBE15440:
	.loc 38 207 0
	and	r1, r3, #253
	cmp	r1, #1
	bne	.L5557
	.loc 38 210 0
	cmp	r3, #1
	beq	.L5489
	cmp	r3, #3
	bne	.L5736
.LVL6466:
.LBB15442:
.LBB15443:
	.loc 28 1919 0
	cmp	r8, #3
	.loc 28 1922 0
	biceq	r3, r5, #-268435441
.LVL6467:
	biceq	r3, r3, #264241152
	moveq	r3, r3, asl #10
	addeq	r1, r3, #536870912
	.loc 28 1919 0
	bne	.L5562
.LVL6468:
.L5488:
.LBE15443:
.LBE15442:
.LBE15439:
.LBE15438:
.LBB15451:
.LBB15452:
.LBB15453:
.LBB15454:
	.loc 28 1035 0
	cmp	r6, #14
	.loc 28 1037 0
	uxtbeq	r3, r5
	.loc 28 1036 0
	movne	r3, r8
.LVL6469:
.LBE15454:
.LBE15453:
	.loc 38 159 0
	and	r0, r3, #253
.LVL6470:
	cmp	r0, #1
	bne	.L5737
	.loc 38 162 0
	cmp	r3, #1
	beq	.L5738
.LVL6471:
.LBB15455:
.LBB15456:
	.loc 38 123 0
	ldr	r3, [sp, #20]
.LVL6472:
.LBB15457:
.LBB15458:
	.loc 28 1828 0
	cmp	r8, #3
.LBE15458:
.LBE15457:
	.loc 38 123 0
	ubfx	r3, r3, #0, #10
.LVL6473:
.LBB15463:
.LBB15459:
	.loc 28 1828 0
	bne	.L5739
.LVL6474:
.LBE15459:
.LBE15463:
	.loc 38 126 0
	mov	r0, r10, lsr #10
.LBB15464:
.LBB15465:
	.loc 28 1911 0
	bic	r5, r5, #1069547520
.LVL6475:
.LBE15465:
.LBE15464:
.LBB15467:
.LBB15460:
	.loc 28 1833 0
	bic	r4, r4, #1069547520
.LVL6476:
.LBE15460:
.LBE15467:
.LBB15468:
.LBB15466:
	.loc 28 1912 0
	orr	r5, r5, r0, asl #22
.LBE15466:
.LBE15468:
.LBB15469:
.LBB15461:
	.loc 28 1833 0
	bic	r4, r4, #3145728
	.loc 28 1834 0
	orr	r4, r4, r3, asl #20
.LVL6477:
.LBE15461:
.LBE15469:
.LBE15456:
.LBE15455:
.LBB15472:
.LBB15473:
	.loc 28 1880 0
	and	r3, r5, #15
.LVL6478:
	cmp	r3, #3
	.loc 28 1885 0
	moveq	r4, r4, lsr #18
.LVL6479:
	moveq	r4, r4, asl #18
	.loc 28 1886 0
	orreq	r4, r4, r2, lsr #14
	.loc 28 1880 0
	bne	.L5740
.LVL6480:
.L5499:
.LBE15473:
.LBE15472:
.LBE15452:
.LBE15451:
.LBB15500:
	.loc 14 1466 0
	ldr	r3, [sp, #36]
.LBE15500:
	.loc 14 1464 0
	cmp	ip, #1
.LBB15507:
	.loc 14 1466 0
	str	lr, [sp]
	ldr	r0, [sp, #16]
	stmib	sp, {r3, fp}
	mov	r3, ip
.LBE15507:
	.loc 14 1464 0
	bls	.L5741
.LVL6481:
.LBB15508:
	.loc 14 1479 0
	bl	createSafeMappingEntries_PDE
.LVL6482:
	ldr	r3, [sp, #64]
.LVL6483:
	.loc 14 1482 0
	cmp	r3, #0
	bne	.L5644
	.loc 14 1486 0
	ldr	r2, [r7]
.LVL6484:
.LBB15509:
.LBB15510:
.LBB15511:
.LBB15512:
	.loc 28 169 0
	ldr	r3, [r2, #72]
.LVL6485:
.LBE15512:
.LBE15511:
	.loc 26 418 0
	mov	r0, r2
.LBB15514:
.LBB15513:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #2
	str	r3, [r2, #72]
.LBE15513:
.LBE15514:
	.loc 26 418 0
	bl	scheduleTCB
.LVL6486:
.LBE15510:
.LBE15509:
	.loc 14 1487 0
	add	r3, sp, #80
	ldr	lr, [sp, #68]
	ldmdb	r3, {r0, r1}
	mov	r2, sp
	add	ip, sp, #56
.LVL6487:
	str	r5, [sp, #56]
.LVL6488:
	str	r4, [sp, #60]
	mov	r3, r9
	str	lr, [r2], #4
	stmia	r2, {r0, r1}
	mov	r0, r10
	ldmia	ip, {r1, r2}
	bl	performPageInvocationMapPDE
.LVL6489:
	mov	r10, r0
	b	.L5660
.LVL6490:
.L5479:
.LBE15508:
.LBB15515:
.LBB15432:
	.loc 37 113 0
	mov	r3, #65536
	b	.L5480
.L5477:
	mov	r3, #4096
	b	.L5480
.L5481:
	mov	r3, #16777216
	b	.L5480
.LVL6491:
.L5646:
.LBE15432:
.LBE15515:
.LBE15535:
.LBB15536:
.LBB15307:
.LBB15304:
.LBB15302:
.LBB15300:
	movw	r1, #65535
	movt	r1, 15
.L5551:
.LBE15300:
.LBE15302:
.LBE15304:
.LBE15307:
	.loc 14 1565 0
	ldr	r2, [sp, #24]
	tst	r1, r2
	bne	.L5553
.LVL6492:
.LBB15308:
.LBB15309:
.LBB15310:
.LBB15311:
	.loc 28 1035 0
	cmp	r6, #14
	.loc 28 1037 0
	uxtbeq	r1, r5
	.loc 28 1036 0
	movne	r1, r8
.LVL6493:
.LBE15311:
.LBE15310:
	.loc 38 207 0
	and	ip, r1, #253
	cmp	ip, #1
	bne	.L5557
	.loc 38 210 0
	cmp	r1, #1
	beq	.L5559
	cmp	r1, #3
	bne	.L5742
.LVL6494:
.LBB15312:
.LBB15313:
	.loc 28 1919 0
	cmp	r8, #3
	bne	.L5562
.LVL6495:
	.loc 28 1922 0
	bic	r5, r5, #-268435441
.LVL6496:
	bic	r5, r5, #264241152
	mov	r5, r5, asl #10
	add	r1, r5, #536870912
.LVL6497:
.L5558:
.LBE15313:
.LBE15312:
.LBE15309:
.LBE15308:
.LBB15317:
	.loc 14 1577 0
	ldr	r2, [sp, #28]
.LBE15317:
	.loc 14 1575 0
	cmp	r3, #1
.LBB15324:
	.loc 14 1577 0
	str	r0, [sp]
	ldr	r0, [sp, #16]
.LVL6498:
	stmib	sp, {r2, fp}
	ldr	r2, [sp, #24]
.LBE15324:
	.loc 14 1575 0
	bls	.L5743
.LBB15325:
	.loc 14 1589 0
	bl	createSafeMappingEntries_PDE
.LVL6499:
	ldr	r10, [sp, #64]
.LVL6500:
	.loc 14 1592 0
	cmp	r10, #0
	bne	.L5660
	.loc 14 1596 0
	ldr	r2, [r7]
.LVL6501:
.LBB15326:
.LBB15327:
.LBB15328:
.LBB15329:
	.loc 28 169 0
	ldr	r3, [r2, #72]
.LBE15329:
.LBE15328:
	.loc 26 418 0
	mov	r0, r2
.LBB15331:
.LBB15330:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #2
	str	r3, [r2, #72]
.LBE15330:
.LBE15331:
	.loc 26 418 0
	bl	scheduleTCB
.LVL6502:
.LBE15327:
.LBE15326:
	.loc 14 1597 0
	add	r3, sp, #80
	mov	r0, r9
	ldr	r1, [sp, #68]
	ldmdb	r3, {r2, r3}
	bl	performPageInvocationRemapPDE
.LVL6503:
	mov	r10, r0
.LVL6504:
	b	.L5660
.LVL6505:
.L5550:
.LBE15325:
.LBB15332:
.LBB15305:
.LBB15303:
.LBB15301:
	.loc 37 113 0
	movw	r1, #65535
	b	.L5551
.L5548:
	movw	r1, #4095
	b	.L5551
.L5552:
	mvn	r1, #-16777216
	b	.L5551
.LVL6506:
.L5708:
.LBE15301:
.LBE15303:
.LBE15305:
.LBE15332:
.LBE15536:
.LBE15566:
.LBE15792:
.LBB15793:
.LBB15686:
	.loc 14 1092 0
	mov	r0, r9
.LVL6507:
	bl	isFinalCapability
.LVL6508:
	cmp	r0, #0
	beq	.L5744
	.loc 14 1096 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r2, [r3]
.LVL6509:
.LBB15679:
.LBB15680:
.LBB15681:
.LBB15682:
	.loc 28 169 0
	ldr	r3, [r2, #72]
.LBE15682:
.LBE15681:
	.loc 26 418 0
	mov	r0, r2
.LBB15684:
.LBB15683:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #2
	str	r3, [r2, #72]
.LBE15683:
.LBE15684:
	.loc 26 418 0
	bl	scheduleTCB
.LVL6510:
.LBE15680:
.LBE15679:
	.loc 14 1097 0
	add	r3, sp, #64
	str	r5, [sp, #64]
	str	r4, [sp, #68]
	mov	r2, r9
	ldmia	r3, {r0, r1}
	bl	performPageTableInvocationUnmap
.LVL6511:
	mov	r10, r0
	b	.L5660
.LVL6512:
.L5713:
.LBE15686:
.LBE15793:
.LBB15794:
.LBB15777:
.LBB15768:
	.loc 14 1769 0
	add	r3, r2, #140
	movw	r0, #:lower16:.LC3
.LVL6513:
	str	r3, [sp]
	movt	r0, #:upper16:.LC3
	ldr	ip, [r2, #68]
	mov	r3, r2
	ldr	r1, .L5746+16
.LVL6514:
	movw	r2, #1769
.LVL6515:
	.loc 14 1772 0
	mov	r10, #3
	.loc 14 1769 0
	str	ip, [sp, #4]
	bl	kprintf
.LVL6516:
	movw	r0, #:lower16:.LC287
	movt	r0, #:upper16:.LC287
.LVL6517:
.L5688:
.LBE15768:
.LBE15777:
.LBE15794:
.LBB15795:
.LBB15567:
.LBB15537:
	.loc 14 1648 0
	bl	kprintf
.LVL6518:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL6519:
	.loc 14 1649 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #1
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
	.loc 14 1650 0
	str	r2, [r3]
	b	.L5660
.LVL6520:
.L5732:
.LBE15537:
.LBB15538:
.LBB15516:
.LBB15359:
.LBB15356:
.LBB15357:
	.loc 28 1801 0
	and	r3, r5, #15
.LVL6521:
	cmp	r3, #3
	.loc 28 1804 0
	moveq	ip, r4, lsr #30
	.loc 28 1801 0
	beq	.L5450
.LVL6522:
.L5538:
	bl	cap_frame_cap_get_capFSize.part.120
.LVL6523:
.L5630:
.LBE15357:
.LBE15356:
.LBE15359:
.LBE15516:
.LBE15538:
.LBE15567:
.LBE15795:
.LBB15796:
	.loc 14 1982 0
	movw	r2, #:lower16:current_syscall_error
	mov	r1, #2
	movt	r2, #:upper16:current_syscall_error
	.loc 14 1985 0
	mov	r10, #3
	.loc 14 1983 0
	str	r3, [r2, #4]
	.loc 14 1982 0
	str	r1, [r2, #24]
	.loc 14 1985 0
	b	.L5660
.LVL6524:
.L5707:
	.loc 14 1974 0
	movw	r2, #:lower16:current_syscall_error
	.loc 14 1976 0
	movw	r3, #:lower16:current_lookup_fault
	.loc 14 1974 0
	movt	r2, #:upper16:current_syscall_error
	.loc 14 1976 0
	movt	r3, #:upper16:current_lookup_fault
	.loc 14 1974 0
	mov	r1, #6
	.loc 14 1975 0
	str	r6, [r2, #20]
.LVL6525:
	.loc 14 1974 0
	str	r1, [r2, #24]
	.loc 14 1978 0
	mov	r10, #3
	.loc 14 1976 0
	str	r6, [r3]
	str	r6, [r3, #4]
	.loc 14 1978 0
	b	.L5660
.LVL6526:
.L5714:
.LBE15796:
.LBB15797:
.LBB15778:
.LBB15769:
	.loc 14 1777 0
	add	r3, r2, #140
	movw	r0, #:lower16:.LC3
.LVL6527:
	str	r3, [sp]
	movt	r0, #:upper16:.LC3
	ldr	ip, [r2, #68]
	mov	r3, r2
	ldr	r1, .L5746+16
.LVL6528:
	movw	r2, #1777
.LVL6529:
	str	ip, [sp, #4]
	bl	kprintf
.LVL6530:
	movw	r0, #:lower16:.LC288
	movt	r0, #:upper16:.LC288
	bl	kprintf
.LVL6531:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL6532:
	b	.L5692
.LVL6533:
.L5717:
.LBE15769:
.LBE15778:
.LBE15797:
.LBB15798:
.LBB15568:
.LBB15539:
.LBB15078:
	.loc 38 210 0
	mov	r3, #536870912
.LVL6534:
	b	.L5605
.LVL6535:
.L5606:
.LBB15076:
.LBB15077:
	.loc 28 1755 0
	and	r3, r5, #15
.LVL6536:
	cmp	r3, #1
	bne	.L5561
.LVL6537:
	.loc 28 1758 0
	bic	r5, r5, #-16777216
.LVL6538:
	bic	r5, r5, #15
	mov	r5, r5, asl #8
	add	r3, r5, #536870912
	b	.L5605
.LVL6539:
.L5730:
.LBE15077:
.LBE15076:
.LBE15078:
.LBE15539:
.LBB15540:
.LBB15333:
	.loc 14 1541 0
	ldr	ip, [r7]
.LVL6540:
	movw	r0, #:lower16:.LC3
	movt	r0, #:upper16:.LC3
	ldr	r1, .L5746+20
	movw	r2, #1541
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL6541:
	str	ip, [sp, #4]
	bl	kprintf
.LVL6542:
	movw	r0, #:lower16:.LC292
	movt	r0, #:upper16:.LC292
.LVL6543:
.L5694:
	bl	kprintf
.LVL6544:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL6545:
.L5695:
	.loc 14 1542 0
	movw	r3, #:lower16:current_syscall_error
	mov	r1, #6
	movt	r3, #:upper16:current_syscall_error
	.loc 14 1544 0
	mov	r2, #0
	.loc 14 1542 0
	str	r1, [r3, #24]
	.loc 14 1544 0
	str	r2, [r3, #20]
	b	.L5530
.LVL6546:
.L5710:
.LBE15333:
.LBE15540:
.LBE15568:
.LBE15798:
.LBB15799:
.LBB15687:
	.loc 14 1111 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #2
.LVL6547:
	movt	r3, #:upper16:current_syscall_error
	.loc 14 1115 0
	mov	r10, #3
	.loc 14 1113 0
	str	r1, [r3, #4]
	.loc 14 1111 0
	str	r2, [r3, #24]
	b	.L5660
.LVL6548:
.L5725:
.LBE15687:
.LBE15799:
.LBB15800:
.LBB15569:
.LBB15541:
.LBB15166:
.LBB15151:
.LBB15149:
.LBB15150:
	.loc 28 1801 0
	cmp	r8, #3
	bne	.L5538
.LVL6549:
	.loc 28 1804 0
	mov	r4, r4, lsr #30
.LVL6550:
.LBE15150:
.LBE15149:
.LBE15151:
.LBE15166:
.LBB15167:
.LBB15156:
	.loc 37 113 0
	cmp	r4, #3
	ldrls	pc, [pc, r4, asl #2]
	b	.L5590
.L5591:
	.word	.L5651
	.word	.L5592
	.word	.L5593
	.word	.L5594
.L5594:
	mov	r0, #16777216
.LVL6551:
	b	.L5588
.LVL6552:
.L5593:
	mov	r0, #1048576
.LVL6553:
	b	.L5588
.LVL6554:
.L5592:
	mov	r0, #65536
.LVL6555:
	b	.L5588
.LVL6556:
.L5590:
.LBB15154:
.LBB15155:
	.loc 37 127 0
	movw	r0, #:lower16:.LC26
	movw	r1, #:lower16:.LC27
	movt	r0, #:upper16:.LC26
	movt	r1, #:upper16:.LC27
	mov	r2, #127
	ldr	r3, .L5746+8
	bl	_fail
.LVL6557:
.L5457:
.LBE15155:
.LBE15154:
.LBE15156:
.LBE15167:
.LBE15541:
.LBB15542:
.LBB15517:
.LBB15382:
.LBB15379:
.LBB15380:
	.loc 28 1677 0
	and	r3, r5, #15
.LVL6558:
	cmp	r3, #1
	.loc 28 1680 0
	ubfxeq	r3, r4, #20, #2
	streq	r3, [sp, #40]
	.loc 28 1677 0
	beq	.L5456
.LVL6559:
.L5545:
	bl	cap_small_frame_cap_get_capFVMRights.part.117
.LVL6560:
.L5733:
.LBE15380:
.LBE15379:
	.loc 38 197 0
	mov	r3, #0
.LVL6561:
	str	r3, [sp, #40]
	b	.L5456
.L5747:
	.align	2
.L5746:
	.word	armKSASIDTable-4
	.word	.LANCHOR7-2680
	.word	.LANCHOR4+72
	.word	.LANCHOR7-4084
	.word	.LANCHOR7-2824
	.word	.LANCHOR7-2788
	.word	.LANCHOR7-2760
	.word	.LANCHOR4+3964
	.word	.LANCHOR7-4040
	.word	.LANCHOR7-2716
	.word	.LANCHOR4+3920
.LVL6562:
.L5482:
.LBE15382:
.LBE15517:
	.loc 14 1442 0
	movw	r3, #:lower16:current_syscall_error
	mov	r1, #1
	movt	r3, #:upper16:current_syscall_error
	.loc 14 1444 0
	mov	r2, #0
	.loc 14 1442 0
	str	r1, [r3, #24]
	.loc 14 1446 0
	mov	r10, #3
	.loc 14 1444 0
	str	r2, [r3]
	b	.L5660
.LVL6563:
.L5731:
.LBE15542:
.LBB15543:
.LBB15334:
.LBB15286:
.LBB15284:
.LBB15285:
	.loc 28 1801 0
	cmp	r8, #3
	bne	.L5538
	.loc 28 1804 0
	mov	r3, r4, lsr #30
.LVL6564:
	b	.L5536
.LVL6565:
.L5410:
.LBE15285:
.LBE15284:
.LBE15286:
.LBE15334:
.LBE15543:
.LBE15569:
.LBE15800:
.LBB15801:
.LBB15779:
.LBB15770:
	.loc 14 1817 0
	ldr	r2, [r7]
.LVL6566:
.LBB15746:
.LBB15747:
.LBB15748:
.LBB15749:
	.loc 28 169 0
	ldr	r3, [r2, #72]
.LBE15749:
.LBE15748:
	.loc 26 418 0
	mov	r0, r2
.LBB15751:
.LBB15750:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #2
	str	r3, [r2, #72]
.LBE15750:
.LBE15751:
	.loc 26 418 0
	bl	scheduleTCB
.LVL6567:
	b	.L5660
.LVL6568:
.L5689:
.LBE15747:
.LBE15746:
.LBE15770:
.LBE15779:
.LBE15801:
.LBB15802:
.LBB15570:
.LBB15544:
	.loc 14 1397 0
	movw	r3, #:lower16:current_syscall_error
	mov	r1, #2
	movt	r3, #:upper16:current_syscall_error
	.loc 14 1399 0
	mov	r2, #0
	.loc 14 1397 0
	str	r1, [r3, #24]
	.loc 14 1401 0
	mov	r10, #3
	.loc 14 1399 0
	str	r2, [r3, #4]
	b	.L5660
.LVL6569:
.L5720:
.LBE15544:
.LBB15545:
.LBB15168:
.LBB15117:
.LBB15115:
.LBB15116:
	.loc 28 1703 0
	cmp	r8, #1
	bne	.L5576
	.loc 28 1706 0
	mov	r3, r4, asl #12
.LVL6570:
	str	r3, [sp, #16]
	b	.L5577
.LVL6571:
.L5724:
.LBE15116:
.LBE15115:
.LBE15117:
.LBE15168:
	.loc 14 1648 0
	add	r3, r1, #140
	movw	r0, #:lower16:.LC3
	str	r3, [sp]
	movt	r0, #:upper16:.LC3
	ldr	ip, [r1, #68]
	mov	r3, r1
	mov	r2, #1648
	ldr	r1, .L5746+20
.LVL6572:
	.loc 14 1651 0
	mov	r10, #3
	.loc 14 1648 0
	str	ip, [sp, #4]
	bl	kprintf
.LVL6573:
	movw	r0, #:lower16:.LC296
	movt	r0, #:upper16:.LC296
	b	.L5688
.LVL6574:
.L5600:
.LBB15169:
.LBB15170:
.LBB15171:
.LBB15172:
	.loc 28 169 0
	ldr	lr, [r1, #72]
.LVL6575:
.LBE15172:
.LBE15171:
	.loc 26 418 0
	mov	r0, r1
.LVL6576:
.LBE15170:
.LBE15169:
	.loc 14 1668 0
	ldr	r6, [sp, #16]
.LVL6577:
	str	r2, [sp, #20]
.LVL6578:
.LBB15182:
.LBB15179:
.LBB15176:
.LBB15173:
	.loc 28 169 0
	bic	lr, lr, #15
.LBE15173:
.LBE15176:
.LBE15179:
.LBE15182:
	.loc 14 1668 0
	str	r3, [sp, #16]
.LBB15183:
.LBB15180:
.LBB15177:
.LBB15174:
	.loc 28 170 0
	orr	lr, lr, #2
.LBE15174:
.LBE15177:
.LBE15180:
.LBE15183:
	.loc 14 1668 0
	add	r5, r6, r3
.LVL6579:
.LBB15184:
.LBB15181:
.LBB15178:
.LBB15175:
	.loc 28 170 0
	str	lr, [r1, #72]
.LBE15175:
.LBE15178:
	.loc 26 418 0
	bl	scheduleTCB
.LVL6580:
	ldr	r2, [sp, #20]
.LBE15181:
.LBE15184:
	.loc 14 1672 0
	ldr	r0, [sp, #68]
	sub	r2, r2, #1
	add	r8, r2, r6
.LVL6581:
.LBB15185:
.LBB15186:
	.loc 14 2270 0
	cmp	r5, r8
	bcs	.L5660
	.loc 14 2271 0
	mov	r1, r9
	bl	setVMRootForFlush
.LVL6582:
	ldr	r3, [sp, #16]
	mov	r6, r0
.LVL6583:
	.loc 14 2273 0
	mov	r1, r5
	mov	r0, fp
.LVL6584:
	mov	r2, r8
	add	r3, r3, #536870912
	add	r3, r3, r4
	bl	doFlush
.LVL6585:
	.loc 14 2275 0
	cmp	r6, #0
	beq	.L5660
.LVL6586:
.L5691:
	.loc 14 2276 0
	ldr	r0, [r7]
	bl	setVMRoot
.LVL6587:
	b	.L5660
.LVL6588:
.L5411:
.LBE15186:
.LBE15185:
.LBE15545:
.LBE15570:
.LBE15802:
.LBB15803:
.LBB15780:
.LBB15771:
.LBB15752:
.LBB15740:
.LBB15724:
.LBB15725:
.LBB15726:
	.loc 28 880 0
	bic	r3, r3, #1020
.LVL6589:
.LBE15726:
.LBE15725:
.LBB15728:
.LBB15729:
	.loc 14 430 0
	ubfx	r2, r8, #12, #8
.LBE15729:
.LBE15728:
.LBB15730:
.LBB15727:
	.loc 28 880 0
	bic	r3, r3, #3
.LBE15727:
.LBE15730:
.LBB15731:
.LBB15732:
.LBB15733:
.LBB15734:
	.loc 28 2361 0
	add	r3, r3, r2, asl #2
	add	r3, r3, #-536870912
	ldr	r3, [r3]
.LBE15734:
.LBE15733:
	.loc 38 348 0
	tst	r3, #2
	bne	.L5415
.LVL6590:
	.loc 38 350 0
	tst	r3, #1
	beq	.L5410
.LVL6591:
.LBE15732:
.LBE15731:
.LBB15735:
.LBB15736:
	.loc 28 2427 0
	mov	r6, r3, lsr #16
	movw	ip, #65535
	mov	r3, r10
.LVL6592:
	mov	r6, r6, asl #16
.LVL6593:
	bfi	r3, ip, #16, #16
	b	.L5414
.LVL6594:
.L5719:
.LBE15736:
.LBE15735:
.LBE15724:
.LBE15740:
.LBE15752:
.LBE15771:
.LBE15780:
.LBE15803:
.LBB15804:
.LBB15571:
.LBB15546:
.LBB15187:
.LBB15108:
.LBB15107:
.LBB15100:
.LBB15097:
.LBB15096:
	.loc 28 1729 0
	cmp	r8, #1
	bne	.L5515
.LVL6595:
	.loc 28 1732 0
	mov	r3, r5, lsr #24
.LVL6596:
.LBE15096:
.LBE15097:
.LBB15098:
.LBB15099:
	.loc 28 1654 0
	mov	r9, r4, lsr #22
.LVL6597:
.LBE15099:
.LBE15098:
	.loc 38 116 0
	add	r9, r9, r3, asl #10
.LVL6598:
	b	.L5571
.LVL6599:
.L5721:
.LBE15100:
.LBE15107:
.LBE15108:
.LBE15187:
.LBB15188:
.LBB15136:
.LBB15135:
.LBB15129:
.LBB15130:
.LBB15131:
.LBB15132:
	.loc 28 1729 0
	cmp	r8, #1
	bne	.L5515
.LVL6600:
	.loc 28 1732 0
	mov	r2, r5, lsr #24
.LBE15132:
.LBE15131:
.LBB15133:
.LBB15134:
	.loc 28 1654 0
	mov	r3, r4, lsr #22
.LVL6601:
.LBE15134:
.LBE15133:
	.loc 38 116 0
	add	r3, r3, r2, asl #10
.LVL6602:
	b	.L5582
.LVL6603:
.L5728:
.LBE15130:
.LBE15129:
.LBE15135:
.LBE15136:
.LBE15188:
.LBE15546:
.LBB15547:
.LBB15335:
.LBB15250:
.LBB15245:
.LBB15246:
	.loc 28 1703 0
	cmp	r8, #1
	.loc 28 1706 0
	moveq	r3, r4, asl #12
.LVL6604:
	streq	r3, [sp, #24]
	.loc 28 1703 0
	beq	.L5523
.LVL6605:
.L5576:
	bl	cap_small_frame_cap_get_capFMappedAddress.part.104
.LVL6606:
.L5744:
.LBE15246:
.LBE15245:
.LBE15250:
.LBE15335:
.LBE15547:
.LBE15571:
.LBE15804:
.LBB15805:
.LBB15688:
	.loc 14 1093 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #9
	movt	r3, #:upper16:current_syscall_error
	.loc 14 1094 0
	mov	r10, #3
	.loc 14 1093 0
	str	r2, [r3, #24]
	b	.L5660
.LVL6607:
.L5734:
.LBE15688:
.LBE15805:
.LBB15806:
.LBB15572:
.LBB15548:
.LBB15518:
.LBB15415:
.LBB15412:
.LBB15410:
.LBB15400:
.LBB15396:
.LBB15394:
	.loc 28 1729 0
	cmp	r8, #1
	.loc 28 1732 0
	moveq	r1, r5, lsr #24
.LBE15394:
.LBE15396:
.LBB15397:
.LBB15398:
	.loc 28 1654 0
	moveq	r3, r4, lsr #22
.LVL6608:
.LBE15398:
.LBE15397:
	.loc 38 116 0
	addeq	r3, r3, r1, asl #10
.LBB15399:
.LBB15395:
	.loc 28 1729 0
	beq	.L5466
.LVL6609:
.L5515:
	movw	r0, #:lower16:.LC40
.LVL6610:
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC40
	movt	r1, #:upper16:.LC30
	movw	r2, #1730
	ldr	r3, .L5746+12
	bl	_assert_fail
.LVL6611:
.L5543:
.LBE15395:
.LBE15399:
.LBE15400:
.LBE15410:
.LBE15412:
.LBE15415:
.LBE15518:
.LBE15548:
.LBB15549:
.LBB15336:
.LBB15295:
.LBB15293:
.LBB15294:
	.loc 28 1677 0
	cmp	r8, #1
	bne	.L5545
	.loc 28 1680 0
	ubfx	r0, r4, #20, #2
	b	.L5542
.LVL6612:
.L5718:
.LBE15294:
.LBE15293:
.LBE15295:
.LBE15336:
.LBE15549:
.LBB15550:
	.loc 14 1620 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC3
.LVL6613:
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC3
	ldr	ip, [r3]
.LVL6614:
	movw	r2, #1620
.LVL6615:
	ldr	r1, .L5746+20
.LVL6616:
	.loc 14 1622 0
	mov	r10, #3
	.loc 14 1620 0
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL6617:
	str	ip, [sp, #4]
	bl	kprintf
.LVL6618:
	movw	r0, #:lower16:.LC293
	movt	r0, #:upper16:.LC293
	b	.L5687
.LVL6619:
.L5726:
.LBB15189:
.LBB15165:
	.loc 38 218 0
	mov	r4, #0
	b	.L5597
.L5598:
.LVL6620:
.LBB15163:
.LBB15164:
	.loc 28 1755 0
	cmp	r8, #1
	bne	.L5561
	.loc 28 1758 0
	bic	r4, r5, #-16777216
	bic	r4, r4, #15
	mov	r4, r4, asl #8
	b	.L5597
.LVL6621:
.L5727:
.LBE15164:
.LBE15163:
.LBE15165:
.LBE15189:
.LBE15550:
.LBB15551:
.LBB15337:
.LBB15235:
.LBB15234:
.LBB15233:
.LBB15226:
.LBB15223:
.LBB15222:
	.loc 28 1729 0
	cmp	r8, #1
	bne	.L5515
.LVL6622:
	.loc 28 1732 0
	mov	r1, r5, lsr #24
.LBE15222:
.LBE15223:
.LBB15224:
.LBB15225:
	.loc 28 1654 0
	mov	r3, r4, lsr #22
.LVL6623:
.LBE15225:
.LBE15224:
	.loc 38 116 0
	add	r3, r3, r1, asl #10
.LVL6624:
	b	.L5516
.LVL6625:
.L5729:
.LBE15226:
.LBE15233:
.LBE15234:
.LBE15235:
.LBE15337:
.LBB15338:
.LBB15279:
.LBB15276:
.LBB15270:
.LBB15271:
.LBB15272:
.LBB15273:
	.loc 28 1729 0
	cmp	r8, #1
	bne	.L5515
.LVL6626:
	.loc 28 1732 0
	mov	r3, r5, lsr #24
.LVL6627:
.LBE15273:
.LBE15272:
.LBB15274:
.LBB15275:
	.loc 28 1654 0
	mov	r1, r4, lsr #22
.LVL6628:
.LBE15275:
.LBE15274:
	.loc 38 116 0
	add	r3, r1, r3, asl #10
	b	.L5528
.LVL6629:
.L5742:
.LBE15271:
.LBE15270:
.LBE15276:
.LBE15279:
.LBE15338:
.LBB15339:
.LBB15316:
	.loc 38 210 0
	mov	r1, #536870912
.LVL6630:
	b	.L5558
.LVL6631:
.L5559:
.LBB15314:
.LBB15315:
	.loc 28 1755 0
	cmp	r8, #1
	bne	.L5561
.LVL6632:
	.loc 28 1758 0
	bic	r5, r5, #-16777216
.LVL6633:
	bic	r5, r5, #15
	mov	r5, r5, asl #8
	add	r1, r5, #536870912
.LVL6634:
	b	.L5558
.LVL6635:
.L5489:
.LBE15315:
.LBE15314:
.LBE15316:
.LBE15339:
.LBE15551:
.LBB15552:
.LBB15519:
.LBB15448:
.LBB15445:
.LBB15446:
	.loc 28 1755 0
	cmp	r8, #1
	.loc 28 1758 0
	biceq	r3, r5, #-16777216
.LVL6636:
	biceq	r3, r3, #15
	moveq	r3, r3, asl #8
	addeq	r1, r3, #536870912
	.loc 28 1755 0
	beq	.L5488
.LVL6637:
.L5561:
	bl	cap_small_frame_cap_get_capFBasePtr.isra.85.part.86
.LVL6638:
.L5736:
.LBE15446:
.LBE15445:
	.loc 38 210 0
	mov	r1, #536870912
	b	.L5488
.LVL6639:
.L5722:
.LBE15448:
.LBE15519:
.LBE15552:
.LBB15553:
	.loc 14 1629 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC3
.LVL6640:
	movt	r3, #:upper16:ksCurThread
	movw	r2, #1629
	ldr	ip, [r3]
.LVL6641:
	movt	r0, #:upper16:.LC3
	ldr	r1, .L5746+20
.LVL6642:
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL6643:
	str	ip, [sp, #4]
	bl	kprintf
.LVL6644:
	movw	r0, #:lower16:.LC294
	movt	r0, #:upper16:.LC294
	bl	kprintf
.LVL6645:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL6646:
	b	.L5692
.LVL6647:
.L5723:
	.loc 14 1636 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC3
	ldr	ip, [r3]
.LVL6648:
	movw	r2, #1636
	ldr	r1, .L5746+20
	.loc 14 1640 0
	mov	r10, #3
	.loc 14 1636 0
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL6649:
	str	ip, [sp, #4]
	bl	kprintf
.LVL6650:
	movw	r0, #:lower16:.LC295
	movt	r0, #:upper16:.LC295
.LVL6651:
.L5690:
	bl	kprintf
.LVL6652:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL6653:
	.loc 14 1637 0
	movw	r3, #:lower16:current_syscall_error
	mov	r1, #6
	movt	r3, #:upper16:current_syscall_error
	.loc 14 1639 0
	mov	r2, #0
	.loc 14 1637 0
	str	r1, [r3, #24]
	.loc 14 1639 0
	str	r2, [r3, #20]
	b	.L5660
.LVL6654:
.L5743:
.LBE15553:
.LBB15554:
.LBB15340:
	.loc 14 1577 0
	bl	createSafeMappingEntries_PTE
.LVL6655:
	ldr	r10, [sp, #64]
.LVL6656:
	.loc 14 1580 0
	cmp	r10, #0
	bne	.L5660
	.loc 14 1584 0
	ldr	r2, [r7]
.LVL6657:
.LBB15318:
.LBB15319:
.LBB15320:
.LBB15321:
	.loc 28 169 0
	ldr	r3, [r2, #72]
.LBE15321:
.LBE15320:
	.loc 26 418 0
	mov	r0, r2
.LBB15323:
.LBB15322:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #2
	str	r3, [r2, #72]
.LBE15322:
.LBE15323:
	.loc 26 418 0
	bl	scheduleTCB
.LVL6658:
.LBE15319:
.LBE15318:
	.loc 14 1585 0
	add	r3, sp, #80
	mov	r0, r9
	ldr	r1, [sp, #68]
	ldmdb	r3, {r2, r3}
	bl	performPageInvocationRemapPTE
.LVL6659:
	mov	r10, r0
.LVL6660:
	b	.L5660
.LVL6661:
.L5741:
.LBE15340:
.LBE15554:
.LBB15555:
.LBB15520:
	.loc 14 1466 0
	bl	createSafeMappingEntries_PTE
.LVL6662:
	ldr	r3, [sp, #64]
.LVL6663:
	.loc 14 1469 0
	cmp	r3, #0
	bne	.L5644
	.loc 14 1473 0
	ldr	r2, [r7]
.LVL6664:
.LBB15501:
.LBB15502:
.LBB15503:
.LBB15504:
	.loc 28 169 0
	ldr	r3, [r2, #72]
.LVL6665:
.LBE15504:
.LBE15503:
	.loc 26 418 0
	mov	r0, r2
.LBB15506:
.LBB15505:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #2
	str	r3, [r2, #72]
.LBE15505:
.LBE15506:
	.loc 26 418 0
	bl	scheduleTCB
.LVL6666:
.LBE15502:
.LBE15501:
	.loc 14 1474 0
	add	r3, sp, #80
	ldr	lr, [sp, #68]
	ldmdb	r3, {r0, r1}
	mov	r2, sp
	add	ip, sp, #56
.LVL6667:
	str	r5, [sp, #56]
.LVL6668:
	str	r4, [sp, #60]
	mov	r3, r9
	str	lr, [r2], #4
	stmia	r2, {r0, r1}
	mov	r0, r10
	ldmia	ip, {r1, r2}
	bl	performPageInvocationMapPTE
.LVL6669:
	mov	r10, r0
	b	.L5660
.LVL6670:
.L5715:
.LBE15520:
.LBE15555:
.LBE15572:
.LBE15806:
.LBB15807:
.LBB15781:
.LBB15772:
	.loc 14 1796 0
	ldr	ip, [r7]
.LVL6671:
	movw	r0, #:lower16:.LC3
	movt	r0, #:upper16:.LC3
	ldr	r1, .L5746+16
	movw	r2, #1796
	.loc 14 1799 0
	mov	r10, #3
	.loc 14 1796 0
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL6672:
	str	ip, [sp, #4]
	bl	kprintf
.LVL6673:
	movw	r0, #:lower16:.LC289
	movt	r0, #:upper16:.LC289
	b	.L5690
.LVL6674:
.L5716:
	.loc 14 1803 0
	ldr	ip, [r7]
.LVL6675:
	movw	r0, #:lower16:.LC3
	movw	r2, #1803
	ldr	r1, .L5746+16
	movt	r0, #:upper16:.LC3
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL6676:
	str	ip, [sp, #4]
	bl	kprintf
.LVL6677:
	movw	r0, #:lower16:.LC290
	movt	r0, #:upper16:.LC290
	bl	kprintf
.LVL6678:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL6679:
	.loc 14 1804 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #2
	movt	r3, #:upper16:current_syscall_error
	.loc 14 1805 0
	str	r10, [r3, #4]
	.loc 14 1806 0
	mov	r10, #3
	.loc 14 1804 0
	str	r2, [r3, #24]
	b	.L5660
.LVL6680:
.L5415:
.LBB15753:
.LBB15741:
.LBB15739:
.LBB15737:
.LBB15738:
	.loc 28 2537 0
	bic	r6, r3, #4080
	mov	r3, #61440
	bic	r6, r6, #15
.LVL6681:
	movt	r3, 65535
	movw	ip, #4095
	b	.L5414
.LVL6682:
.L5735:
.LBE15738:
.LBE15737:
.LBE15739:
.LBE15741:
.LBE15753:
.LBE15772:
.LBE15781:
.LBE15807:
.LBB15808:
.LBB15573:
.LBB15556:
.LBB15521:
	.loc 14 1421 0
	ldr	ip, [r7]
.LVL6683:
	movw	r0, #:lower16:.LC3
	movt	r0, #:upper16:.LC3
	ldr	r1, .L5746+20
	movw	r2, #1421
	add	lr, ip, #140
	mov	r3, ip
	str	lr, [sp]
	ldr	ip, [ip, #68]
.LVL6684:
	str	ip, [sp, #4]
	bl	kprintf
.LVL6685:
	movw	r0, #:lower16:.LC291
	movt	r0, #:upper16:.LC291
	b	.L5694
.LVL6686:
.L5553:
.LBE15521:
.LBE15556:
.LBB15557:
	.loc 14 1566 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #5
	movt	r3, #:upper16:current_syscall_error
	.loc 14 1569 0
	mov	r10, #3
	.loc 14 1566 0
	str	r2, [r3, #24]
	b	.L5660
.LVL6687:
.L5738:
.LBE15557:
.LBB15558:
.LBB15522:
.LBB15497:
.LBB15475:
.LBB15476:
	.loc 38 107 0
	ldr	r3, [sp, #20]
.LVL6688:
.LBB15477:
.LBB15478:
	.loc 28 1664 0
	cmp	r8, #1
.LBE15478:
.LBE15477:
	.loc 38 107 0
	ubfx	r3, r3, #0, #10
.LVL6689:
.LBB15483:
.LBB15479:
	.loc 28 1664 0
	bne	.L5745
.LVL6690:
.LBE15479:
.LBE15483:
	.loc 38 110 0
	mov	r0, r10, lsr #10
.LBB15484:
.LBB15485:
	.loc 28 1747 0
	bic	r5, r5, #-16777216
.LVL6691:
.LBE15485:
.LBE15484:
.LBB15487:
.LBB15480:
	.loc 28 1669 0
	ubfx	r4, r4, #0, #22
.LVL6692:
.LBE15480:
.LBE15487:
.LBB15488:
.LBB15486:
	.loc 28 1748 0
	orr	r5, r5, r0, asl #24
.LBE15486:
.LBE15488:
.LBB15489:
.LBB15481:
	.loc 28 1670 0
	orr	r4, r4, r3, asl #22
.LVL6693:
.LBE15481:
.LBE15489:
.LBE15476:
.LBE15475:
.LBB15492:
.LBB15493:
	.loc 28 1716 0
	and	r3, r5, #15
.LVL6694:
	cmp	r3, #1
	.loc 28 1721 0
	moveq	r4, r4, lsr #20
.LVL6695:
	moveq	r4, r4, asl #20
	.loc 28 1722 0
	orreq	r4, r4, r2, lsr #12
	.loc 28 1716 0
	beq	.L5499
	movw	r0, #:lower16:.LC40
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC40
	movt	r1, #:upper16:.LC30
	movw	r2, #1717
	ldr	r3, .L5746+24
	bl	_assert_fail
.LVL6696:
.L5416:
.LBE15493:
.LBE15492:
.LBE15497:
.LBE15522:
.LBE15558:
.LBE15573:
.LBE15808:
.LBB15809:
.LBB15782:
.LBB15773:
	.loc 14 1838 0
	ldr	r2, [r7]
	movw	r7, #:lower16:ksCurThread
	str	ip, [sp, #16]
.LVL6697:
	movt	r7, #:upper16:ksCurThread
.LBB15754:
.LBB15755:
.LBB15756:
.LBB15757:
	.loc 28 169 0
	ldr	r3, [r2, #72]
.LBE15757:
.LBE15756:
	.loc 26 418 0
	mov	r0, r2
.LBB15759:
.LBB15758:
	.loc 28 169 0
	bic	r3, r3, #15
	.loc 28 170 0
	orr	r3, r3, #2
	str	r3, [r2, #72]
.LBE15758:
.LBE15759:
	.loc 26 418 0
	bl	scheduleTCB
.LVL6698:
.LBE15755:
.LBE15754:
.LBB15760:
.LBB15761:
	.loc 14 2290 0
	cmp	r9, r8
	bls	.L5660
	.loc 14 2291 0
	mov	r1, r4
	mov	r0, r5
	bl	setVMRootForFlush
.LVL6699:
.LBE15761:
.LBE15760:
	.loc 14 1835 0
	ldr	ip, [sp, #16]
.LBB15764:
.LBB15762:
	.loc 14 2291 0
	mov	r4, r0
.LVL6700:
	.loc 14 2293 0
	mov	r1, r8
	mov	r0, fp
.LVL6701:
	mov	r2, r9
.LBE15762:
.LBE15764:
	.loc 14 1835 0
	and	r3, ip, r8
.LBB15765:
.LBB15763:
	.loc 14 2293 0
	add	r3, r3, r6
	bl	doFlush
.LVL6702:
	.loc 14 2295 0
	cmp	r4, #0
	beq	.L5660
	b	.L5691
.LVL6703:
.L5644:
.LBE15763:
.LBE15765:
.LBE15773:
.LBE15782:
.LBE15809:
.LBB15810:
.LBB15574:
.LBB15559:
.LBB15523:
	.loc 14 1482 0
	mov	r10, r3
	b	.L5660
.LVL6704:
.L5739:
.LBE15523:
.LBB15524:
.LBB15498:
.LBB15494:
.LBB15471:
.LBB15470:
.LBB15462:
	.loc 28 1828 0
	movw	r0, #:lower16:.LC41
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC41
	movt	r1, #:upper16:.LC30
	movw	r2, #1829
	ldr	r3, .L5746+28
.LVL6705:
	bl	_assert_fail
.LVL6706:
.L5737:
.LBE15462:
.LBE15470:
.LBE15471:
.LBE15494:
	bl	generic_frame_cap_set_capFMappedAddress.part.142
.LVL6707:
.L5546:
.LBE15498:
.LBE15524:
.LBB15525:
.LBB15383:
.LBB15381:
.LBB15378:
	bl	cap_frame_cap_get_capFVMRights.part.118
.LVL6708:
.L5517:
.LBE15378:
.LBE15381:
.LBE15383:
.LBE15525:
.LBB15526:
.LBB15416:
.LBB15413:
.LBB15411:
.LBB15409:
.LBB15408:
.LBB15405:
	.loc 28 1893 0
	movw	r0, #:lower16:.LC41
.LVL6709:
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC41
	movt	r1, #:upper16:.LC30
	movw	r2, #1894
	ldr	r3, .L5746+32
	bl	_assert_fail
.LVL6710:
.L5541:
.LBE15405:
.LBE15408:
.LBE15409:
.LBE15411:
.LBE15413:
.LBE15416:
.LBE15526:
.LBB15527:
.LBB15384:
	bl	generic_frame_cap_get_capFVMRights.part.119
.LVL6711:
.L5513:
.LBE15384:
.LBE15527:
.LBB15528:
.LBB15417:
.LBB15414:
	bl	generic_frame_cap_get_capFMappedASID.part.110
.LVL6712:
.L5557:
.LBE15414:
.LBE15417:
.LBE15528:
.LBB15529:
.LBB15449:
	bl	generic_frame_cap_get_capFBasePtr.isra.89.part.90
.LVL6713:
.L5578:
.LBE15449:
.LBE15529:
.LBE15559:
.LBB15560:
.LBB15341:
.LBB15251:
.LBB15247:
.LBB15244:
	bl	cap_frame_cap_get_capFMappedAddress.part.105
.LVL6714:
.L5709:
.LBE15244:
.LBE15247:
.LBE15251:
.LBE15341:
.LBE15560:
.LBE15574:
.LBE15810:
.LBB15811:
.LBB15689:
.LBB15685:
.LBB15601:
	bl	cap_page_table_cap_get_capPTIsMapped.part.101
.LVL6715:
.L5562:
.LBE15601:
.LBE15685:
.LBE15689:
.LBE15811:
.LBB15812:
.LBB15575:
.LBB15561:
.LBB15530:
.LBB15450:
.LBB15447:
.LBB15444:
	bl	cap_frame_cap_get_capFBasePtr.isra.87.part.88
.LVL6716:
.L5706:
.LBE15444:
.LBE15447:
.LBE15450:
.LBE15530:
.LBE15561:
.LBE15575:
.LBE15812:
.LBB15813:
.LBB15595:
.LBB15586:
	bl	cap_asid_pool_cap_get_capASIDBase.part.147
.LVL6717:
.L5574:
.LBE15586:
.LBE15595:
.LBE15813:
.LBB15814:
.LBB15576:
.LBB15562:
.LBB15342:
.LBB15252:
	bl	generic_frame_cap_get_capFMappedAddress.part.106
.LVL6718:
.L5430:
.LBE15252:
.LBE15342:
.LBE15562:
.LBE15576:
.LBE15814:
.LBB15815:
.LBB15783:
.LBB15774:
.LBB15766:
.LBB15705:
	bl	cap_page_directory_cap_get_capPDIsMapped.isra.135.part.136
.LVL6719:
.L5535:
.LBE15705:
.LBE15766:
.LBE15774:
.LBE15783:
.LBE15815:
.LBB15816:
.LBB15577:
.LBB15563:
.LBB15531:
.LBB15360:
	bl	generic_frame_cap_get_capFSize.part.121
.LVL6720:
.L5705:
.LBE15360:
.LBE15531:
.LBE15563:
.LBE15577:
.LBE15816:
.LBB15817:
.LBB15060:
.LBB15046:
	bl	cap_untyped_cap_get_capBlockSize.part.146
.LVL6721:
.L5740:
.LBE15046:
.LBE15060:
.LBE15817:
.LBB15818:
.LBB15578:
.LBB15564:
.LBB15532:
.LBB15499:
.LBB15495:
.LBB15474:
	.loc 28 1880 0
	movw	r0, #:lower16:.LC41
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC41
	movt	r1, #:upper16:.LC30
	movw	r2, #1881
	ldr	r3, .L5746+36
	bl	_assert_fail
.LVL6722:
.L5745:
.LBE15474:
.LBE15495:
.LBB15496:
.LBB15491:
.LBB15490:
.LBB15482:
	.loc 28 1664 0
	movw	r0, #:lower16:.LC40
	movw	r1, #:lower16:.LC30
	movt	r0, #:upper16:.LC40
	movt	r1, #:upper16:.LC30
	movw	r2, #1665
	ldr	r3, .L5746+40
.LVL6723:
	bl	_assert_fail
.LVL6724:
.LBE15482:
.LBE15490:
.LBE15491:
.LBE15496:
.LBE15499:
.LBE15532:
.LBE15564:
.LBE15578:
.LBE15818:
	.cfi_endproc
.LFE364:
	.size	decodeARMMMUInvocation, .-decodeARMMMUInvocation
	.align	2
	.global	Arch_decodeInvocation
	.type	Arch_decodeInvocation, %function
Arch_decodeInvocation:
.LFB463:
	.loc 23 468 0
	.cfi_startproc
	@ args = 24, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6725:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 23 468 0
	mov	r6, r0
	mov	r5, r1
	mov	r4, r2
	.loc 23 469 0
	mov	r0, r6
	mov	r1, r5
	mov	r2, r4
	.loc 23 470 0
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 23 469 0
	b	decodeARMMMUInvocation
.LVL6726:
	.cfi_endproc
.LFE463:
	.size	Arch_decodeInvocation, .-Arch_decodeInvocation
	.align	2
	.global	Arch_recycleCap
	.type	Arch_recycleCap, %function
Arch_recycleCap:
.LFB457:
	.loc 23 174 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6727:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 64
	.loc 23 174 0
	add	r6, sp, #8
	mov	r5, r2
.LVL6728:
	mov	r7, r0
	mov	r8, r1
	stmia	r6, {r2, r3}
.LVL6729:
.LBB15956:
.LBB15957:
	.loc 28 1035 0
	and	r2, r2, #14
	cmp	r2, #14
	ldr	r9, [sp, #12]
.LVL6730:
	beq	.L5751
	.loc 28 1036 0
	and	r3, r5, #15
.LBE15957:
.LBE15956:
	.loc 23 177 0
	sub	r1, r3, #1
.LVL6731:
.LBB15961:
.LBB15958:
	.loc 28 1036 0
	mov	r0, r3
.LVL6732:
.LBE15958:
.LBE15961:
	.loc 23 177 0
	cmp	r1, #10
	ldrls	pc, [pc, r1, asl #2]
	b	.L5752
.L5754:
	.word	.L5753
	.word	.L5752
	.word	.L5753
	.word	.L5752
	.word	.L5755
	.word	.L5752
	.word	.L5756
	.word	.L5752
	.word	.L5757
	.word	.L5752
	.word	.L5854
.L5755:
.LVL6733:
.LBB15962:
.LBB15963:
.LBB15964:
	.loc 28 1956 0
	ubfx	r0, r9, #0, #18
.LVL6734:
.LBE15964:
.LBE15963:
	.loc 23 240 0
	movw	r4, #:lower16:armKSASIDTable
	mov	r8, r0, lsr #10
.LVL6735:
	movt	r4, #:upper16:armKSASIDTable
.LBB15966:
.LBB15967:
	.loc 28 1970 0
	bic	r3, r5, #15
.LBE15967:
.LBE15966:
	.loc 23 240 0
	ldr	r6, [r4, r8, asl #2]
	cmp	r6, r3
	bne	.L5854
	.loc 23 241 0
	mov	r1, r6
	bl	deleteASIDPool
.LVL6736:
	.loc 23 242 0
	mov	r0, r6
	mov	r1, #4096
	bl	memzero
.LVL6737:
	.loc 23 243 0
	str	r6, [r4, r8, asl #2]
.LVL6738:
.L5854:
.LBE15962:
	.loc 23 252 0
	mov	r0, r7
.LBB15969:
	.loc 23 245 0
	stmia	r7, {r5, r9}
.LBE15969:
	.loc 23 252 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL6739:
.L5751:
	.cfi_restore_state
.LBB15970:
.LBB15959:
	.loc 28 1037 0
	uxtb	r3, r5
.LBE15959:
.LBE15970:
	.loc 23 177 0
	sub	r1, r3, #1
.LVL6740:
.LBB15971:
.LBB15960:
	.loc 28 1037 0
	mov	r0, r3
.LVL6741:
.LBE15960:
.LBE15971:
	.loc 23 177 0
	cmp	r1, #10
	ldrls	pc, [pc, r1, asl #2]
	b	.L5752
.L5760:
	.word	.L5759
	.word	.L5752
	.word	.L5759
	.word	.L5752
	.word	.L5761
	.word	.L5752
	.word	.L5762
	.word	.L5752
	.word	.L5763
	.word	.L5752
	.word	.L5854
.L5757:
.LVL6742:
.LBB15972:
.LBB15973:
.LBB15974:
	.loc 28 2165 0
	bic	r4, r5, #16320
.LBE15974:
.LBE15973:
	.loc 23 211 0
	mov	r1, #14336
.LBB15977:
.LBB15975:
	.loc 28 2165 0
	bic	r4, r4, #63
.LVL6743:
.LBE15975:
.LBE15977:
	.loc 23 211 0
	mov	r0, r4
	bl	memzero
.LVL6744:
	.loc 23 212 0
	add	r1, r4, #16320
.LBB15978:
.LBB15979:
	.loc 15 95 0
	mov	r3, r4, lsr #5
.LVL6745:
.LBE15979:
.LBE15978:
	.loc 23 212 0
	add	r1, r1, #63
.LBB15985:
.LBB15984:
	.loc 15 95 0
	mov	r1, r1, lsr #5
	add	r1, r1, #1
	cmp	r1, r3
	bls	.L5851
.L5901:
.LVL6746:
	.loc 15 96 0
	mov	r2, r3, asl #5
.LVL6747:
.LBB15980:
.LBB15981:
	.loc 4 212 0
@ 212 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c7, c11, 1
@ 0 "" 2
.LBB15982:
.LBB15983:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE15983:
.LBE15982:
.LBE15981:
.LBE15980:
	.loc 15 95 0
	add	r3, r3, #1
.LVL6748:
	cmp	r1, r3
	bne	.L5901
.LVL6749:
.L5851:
.LBE15984:
.LBE15985:
	.loc 23 216 0
	tst	r5, #16
	beq	.L5846
.LVL6750:
.LBB15986:
.LBB15987:
.LBB15988:
	.loc 28 2138 0
	ubfx	r10, r9, #0, #18
.LVL6751:
.LBE15988:
.LBE15987:
	.loc 23 220 0
	add	r0, sp, #16
	mov	r1, r10
	bl	findPDForASID
.LVL6752:
	.loc 23 221 0
	ldr	r3, [sp, #16]
	cmp	r3, #0
	bne	.L5846
	.loc 23 221 0 is_stmt 0 discriminator 1
	ldr	r3, [sp, #20]
	cmp	r3, r4
	beq	.L5927
.LVL6753:
.L5846:
.LBE15986:
.LBE15972:
.LBB15990:
	.loc 23 200 0 is_stmt 1
	str	r5, [sp, #8]
	mov	r0, sp
	str	r9, [sp, #12]
	mov	r3, r8
	ldmia	r6, {r1, r2}
	bl	Arch_finaliseCap
.LVL6754:
	.loc 23 201 0
	cmp	r8, #0
	beq	.L5854
	.loc 23 202 0
	mov	r0, r7
	ldmia	r6, {r1, r2}
	bl	resetMemMapping
.LVL6755:
.LBE15990:
	.loc 23 252 0
	mov	r0, r7
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL6756:
.L5756:
	.cfi_restore_state
.LBB16041:
.LBB15991:
.LBB15992:
	.loc 28 2101 0
	bic	r4, r5, #1020
.LBE15992:
.LBE15991:
	.loc 23 190 0
	mov	r10, #1024
.LBB15996:
.LBB15993:
	.loc 28 2101 0
	bic	r4, r4, #3
.LVL6757:
.L5825:
.LBE15993:
.LBE15996:
.LBB15997:
.LBB15998:
	.loc 4 331 0
	mov	r0, r4
	mov	r1, r10
	bl	memzero
.LVL6758:
	sub	r0, r4, #1
.LBB15999:
.LBB16000:
	.loc 15 95 0
	mov	r3, r4, lsr #5
.LVL6759:
.LBE16000:
.LBE15999:
	.loc 4 332 0
	add	r0, r0, r10
.LBB16006:
.LBB16005:
	.loc 15 95 0
	mov	r0, r0, lsr #5
	add	r0, r0, #1
	cmp	r0, r3
	bls	.L5845
.L5900:
.LVL6760:
	.loc 15 96 0
	mov	r1, r3, asl #5
.LVL6761:
.LBB16001:
.LBB16002:
	.loc 4 212 0
@ 212 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r1, c7, c11, 1
@ 0 "" 2
.LBB16003:
.LBB16004:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE16004:
.LBE16003:
.LBE16002:
.LBE16001:
	.loc 15 95 0
	add	r3, r3, #1
.LVL6762:
	cmp	r0, r3
	bne	.L5900
.LVL6763:
.L5845:
.LBE16005:
.LBE16006:
.LBE15998:
.LBE15997:
	.loc 23 192 0
	tst	r9, #1073741824
	beq	.L5846
.LVL6764:
.LBB16007:
.LBB16008:
.LBB16009:
	.loc 28 2049 0
	ubfx	r10, r9, #12, #18
.LVL6765:
.LBE16009:
.LBE16008:
	.loc 23 195 0
	mov	r2, r4
	mov	r0, r10
	mov	r1, r9, asl #20
.LVL6766:
	bl	pageTableMapped
.LVL6767:
	cmp	r0, #0
	beq	.L5846
.LVL6768:
.L5927:
	.loc 23 196 0
	mov	r0, r10
	bl	invalidateTLBByASID
.LVL6769:
	b	.L5846
.L5752:
.LBE16007:
.LBE16041:
	.loc 23 248 0
	movw	r0, #:lower16:.LC299
	movw	r1, #:lower16:.LC25
	movt	r0, #:upper16:.LC299
	movt	r1, #:upper16:.LC25
	mov	r2, #248
	ldr	r3, .L5937
	bl	_fail
.LVL6770:
.L5753:
.LBB16042:
.LBB16043:
	.loc 39 265 0
	cmp	r3, #2
	beq	.L5769
.LVL6771:
.LBB16044:
.LBB16045:
	.loc 38 272 0
	cmp	r3, #1
	beq	.L5772
	cmp	r3, #3
	.loc 38 291 0
	movne	r10, #0
	.loc 38 272 0
	beq	.L5772
.LVL6772:
.L5865:
.LBE16045:
.LBE16044:
.LBE16043:
.LBE16042:
.LBB16094:
.LBB16095:
	.loc 39 317 0
	sub	r1, r3, #2
	mov	r0, r3
	cmp	r1, #12
	ldrls	pc, [pc, r1, asl #2]
	b	.L5782
.L5784:
	.word	.L5783
	.word	.L5782
	.word	.L5785
	.word	.L5782
	.word	.L5786
	.word	.L5782
	.word	.L5787
	.word	.L5782
	.word	.L5788
	.word	.L5782
	.word	.L5789
	.word	.L5782
	.word	.L5787
.LVL6773:
.L5761:
	and	r3, r5, #15
.LBE16095:
.LBE16094:
.LBB16184:
.LBB15968:
.LBB15965:
	.loc 28 1953 0
	cmp	r3, #5
	beq	.L5755
	bl	cap_asid_pool_cap_get_capASIDBase.part.147
.LVL6774:
.L5762:
	and	r2, r5, #15
.LBE15965:
.LBE15968:
.LBE16184:
.LBB16185:
.LBB16010:
.LBB15994:
	.loc 28 2098 0
	cmp	r2, #7
	bne	.L5765
.LBE15994:
.LBE16010:
.LBB16011:
.LBB16012:
	.loc 39 265 0
	cmp	r3, #10
.LBE16012:
.LBE16011:
.LBB16036:
.LBB15995:
	.loc 28 2101 0
	bic	r4, r5, #1020
	bic	r4, r4, #3
.LVL6775:
.LBE15995:
.LBE16036:
.LBB16037:
.LBB16032:
	.loc 39 265 0
	beq	.L5826
	ble	.L5931
	cmp	r3, #30
	beq	.L5834
	bgt	.L5863
	cmp	r3, #12
	beq	.L5864
	cmp	r3, #14
	bne	.L5833
.LVL6776:
.L5834:
.LBB16013:
.LBB16014:
	mov	r10, #1
	b	.L5825
.LVL6777:
.L5763:
	and	r3, r5, #15
.LBE16014:
.LBE16013:
.LBE16032:
.LBE16037:
.LBE16185:
.LBB16186:
.LBB15989:
.LBB15976:
	.loc 28 2162 0
	cmp	r3, #9
	beq	.L5757
.L5764:
.LBE15976:
.LBE15989:
.LBE16186:
.LBB16187:
.LBB16174:
.LBB16096:
.LBB16097:
.LBB16098:
.LBB16099:
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.93.part.94
.LVL6778:
.L5759:
.LBE16099:
.LBE16098:
.LBE16097:
.LBE16096:
.LBE16174:
.LBE16187:
.LBB16188:
.LBB16085:
	.loc 39 265 0
	cmp	r3, #2
	bne	.L5920
	and	r3, r5, #15
.LVL6779:
.LBB16072:
.LBB16073:
	.loc 28 1114 0
	cmp	r3, #2
	bne	.L5855
.LVL6780:
.L5769:
.LBE16073:
.LBE16072:
.LBE16085:
.LBE16188:
.LBB16189:
.LBB16175:
.LBB16138:
.LBB16139:
	.loc 28 1035 0
	cmp	r2, #14
.LBE16139:
.LBE16138:
.LBE16175:
.LBE16189:
.LBB16190:
.LBB16086:
.LBB16075:
.LBB16074:
	.loc 28 1117 0
	and	r10, r9, #31
.LVL6781:
.LBE16074:
.LBE16075:
.LBE16086:
.LBE16190:
.LBB16191:
.LBB16176:
.LBB16143:
.LBB16140:
	.loc 28 1035 0
	beq	.L5925
.LVL6782:
.L5820:
.LBE16140:
.LBE16143:
.LBB16144:
.LBB16132:
.LBB16102:
.LBB16103:
	.loc 28 1970 0
	bic	r0, r5, #15
	mov	r4, r0, lsr #5
.LBE16103:
.LBE16102:
	.loc 38 315 0
	mov	fp, r0
.L5798:
.LVL6783:
.LBE16132:
.LBE16144:
.LBE16176:
.LBE16191:
.LBB16192:
.LBB16193:
	.loc 4 331 0
	mov	r3, #1
	mov	r10, r3, asl r10
.LVL6784:
	mov	r1, r10
	sub	r10, r10, #1
	bl	memzero
.LVL6785:
	.loc 4 332 0
	add	r2, r10, fp
.LBB16194:
.LBB16195:
	.loc 15 95 0
	mov	r2, r2, lsr #5
	add	r2, r2, #1
	cmp	r2, r4
	movhi	r3, r4
	bls	.L5824
.LVL6786:
.L5823:
	.loc 15 96 0
	mov	r1, r3, asl #5
.LVL6787:
.LBB16196:
.LBB16197:
	.loc 4 212 0
@ 212 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r1, c7, c11, 1
@ 0 "" 2
.LBB16198:
.LBB16199:
	.loc 2 23 0
@ 23 "/home/neelesh/research/seL4-tutorials-manifest/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LBE16199:
.LBE16198:
.LBE16197:
.LBE16196:
	.loc 15 95 0
	add	r3, r3, #1
.LVL6788:
	cmp	r2, r3
	bne	.L5823
.LVL6789:
.L5824:
.LBE16195:
.LBE16194:
.LBE16193:
.LBE16192:
	.loc 23 186 0
	str	r5, [sp, #8]
	mov	r3, r8
	str	r9, [sp, #12]
	mov	r0, sp
	ldmia	r6, {r1, r2}
	bl	Arch_finaliseCap
.LVL6790:
	.loc 23 187 0
	mov	r0, r7
	ldmia	r6, {r1, r2}
	bl	resetMemMapping
.LVL6791:
	.loc 23 252 0
	mov	r0, r7
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL6792:
.L5787:
	.cfi_restore_state
.LBB16203:
.LBB16202:
	.loc 4 331 0
	mov	r3, #1
	mov	r0, #0
	mov	r4, r3, asl r10
	mov	r1, r4
	bl	memzero
.LVL6793:
	sub	r2, r4, #1
.LBB16201:
.LBB16200:
	.loc 15 95 0
	mov	r3, #0
.LVL6794:
	mov	r2, r2, lsr #5
	add	r2, r2, #1
	b	.L5823
.LVL6795:
.L5794:
	and	r3, r5, #15
.LVL6796:
.L5788:
.LBE16200:
.LBE16201:
.LBE16202:
.LBE16203:
.LBB16204:
.LBB16177:
.LBB16145:
.LBB16146:
	.loc 28 1577 0
	cmp	r3, #10
	.loc 28 1580 0
	biceq	r0, r5, #31
	moveq	r4, r0, lsr #5
.LBE16146:
.LBE16145:
	.loc 39 328 0
	moveq	fp, r0
.LBB16148:
.LBB16147:
	.loc 28 1577 0
	beq	.L5798
	bl	cap_cnode_cap_get_capCNodePtr.isra.78.part.79
.LVL6797:
.L5790:
	and	r3, r5, #15
.LVL6798:
.L5783:
.LBE16147:
.LBE16148:
.LBB16149:
.LBB16150:
	.loc 28 1142 0
	cmp	r3, #2
	beq	.L5820
	bl	cap_untyped_cap_get_capPtr.isra.75.part.76
.LVL6799:
.L5793:
	and	r3, r5, #15
.LVL6800:
.L5786:
.LBE16150:
.LBE16149:
.LBB16151:
.LBB16152:
	.loc 28 1407 0
	cmp	r3, #6
	beq	.L5820
	bl	cap_notification_cap_get_capNtfnPtr.isra.68.part.69
.LVL6801:
.L5792:
	and	r3, r5, #15
.LVL6802:
.L5785:
.LBE16152:
.LBE16151:
.LBB16153:
.LBB16154:
	.loc 28 1185 0
	cmp	r3, #4
	.loc 28 1188 0
	biceq	r0, r9, #15
	moveq	r4, r0, lsr #5
.LBE16154:
.LBE16153:
	.loc 39 322 0
	moveq	fp, r0
.LBB16156:
.LBB16155:
	.loc 28 1185 0
	beq	.L5798
	bl	cap_endpoint_cap_get_capEPPtr.part.77
.LVL6803:
.L5795:
	and	r3, r5, #15
.LVL6804:
.L5789:
.LBE16155:
.LBE16156:
.LBB16157:
.LBB16158:
	.loc 28 1608 0
	cmp	r3, #12
.LBE16158:
.LBE16157:
	.loc 39 331 0
	biceq	fp, r5, #508
	biceq	fp, fp, #3
	moveq	r0, fp
	moveq	r4, fp, lsr #5
.LBB16160:
.LBB16159:
	.loc 28 1608 0
	beq	.L5798
	bl	cap_thread_cap_get_capTCBPtr.isra.59.part.60
.LVL6805:
.L5868:
.LBE16159:
.LBE16160:
.LBE16177:
.LBE16204:
.LBB16205:
.LBB16087:
.LBB16076:
.LBB16066:
.LBB16046:
.LBB16047:
	.loc 37 124 0
	mov	r10, #24
.L5781:
.LVL6806:
.LBE16047:
.LBE16046:
.LBE16066:
.LBE16076:
.LBE16087:
.LBE16205:
.LBB16206:
.LBB16178:
.LBB16161:
.LBB16141:
	.loc 28 1035 0
	cmp	r2, #14
	.loc 28 1036 0
	movne	r0, #3
.LVL6807:
	.loc 28 1035 0
	beq	.L5925
.LVL6808:
.L5782:
.LBE16141:
.LBE16161:
.LBB16162:
.LBB16133:
	.loc 38 302 0
	sub	r0, r0, #1
	cmp	r0, #8
	ldrls	pc, [pc, r0, asl #2]
	b	.L5787
.L5806:
	.word	.L5805
	.word	.L5787
	.word	.L5805
	.word	.L5787
	.word	.L5807
	.word	.L5787
	.word	.L5808
	.word	.L5787
	.word	.L5809
.L5809:
.LVL6809:
.LBB16105:
.LBB16100:
	.loc 28 2162 0
	and	r3, r5, #15
	cmp	r3, #9
	.loc 28 2165 0
	biceq	r0, r5, #16320
	biceq	r0, r0, #63
	moveq	r4, r0, lsr #5
.LBE16100:
.LBE16105:
	.loc 38 312 0
	moveq	fp, r0
.LBB16106:
.LBB16101:
	.loc 28 2162 0
	beq	.L5798
	b	.L5764
.L5808:
.LVL6810:
.LBE16101:
.LBE16106:
.LBB16107:
.LBB16108:
	.loc 28 2098 0
	and	r3, r5, #15
	cmp	r3, #7
	.loc 28 2101 0
	biceq	r0, r5, #1020
	biceq	r0, r0, #3
	moveq	r4, r0, lsr #5
.LBE16108:
.LBE16107:
	.loc 38 309 0
	moveq	fp, r0
.LBB16110:
.LBB16109:
	.loc 28 2098 0
	beq	.L5798
.LVL6811:
.L5765:
	bl	cap_page_table_cap_get_capPTBasePtr.isra.91.part.92
.LVL6812:
.L5807:
.LBE16109:
.LBE16110:
.LBB16111:
.LBB16104:
	.loc 28 1967 0
	and	r3, r5, #15
	cmp	r3, #5
	beq	.L5820
	bl	cap_asid_pool_cap_get_capASIDPool.isra.95.part.96
.LVL6813:
.L5805:
.LBE16104:
.LBE16111:
.LBB16112:
.LBB16113:
.LBB16114:
.LBB16115:
	.loc 28 1035 0
	cmp	r2, #14
	.loc 28 1037 0
	uxtbeq	r3, r5
	.loc 28 1036 0
	andne	r3, r5, #15
.LVL6814:
.LBE16115:
.LBE16114:
	.loc 38 207 0
	and	r2, r3, #253
	cmp	r2, #1
	bne	.L5932
	.loc 38 210 0
	cmp	r3, #1
	beq	.L5814
	cmp	r3, #3
	bne	.L5933
.LVL6815:
.LBB16116:
.LBB16117:
	.loc 28 1919 0
	and	r3, r5, #15
.LVL6816:
	cmp	r3, #3
	bne	.L5934
	.loc 28 1922 0
	bic	r0, r5, #-268435441
	bic	r0, r0, #264241152
	mov	r0, r0, asl #10
	mov	r4, r0, lsr #5
	mov	fp, r0
	b	.L5798
.LVL6817:
.L5920:
.LBE16117:
.LBE16116:
.LBE16113:
.LBE16112:
.LBE16133:
.LBE16162:
.LBE16178:
.LBE16206:
.LBB16207:
.LBB16088:
.LBB16077:
.LBB16067:
	.loc 38 272 0
	cmp	r3, #1
	beq	.L5772
	cmp	r3, #3
	.loc 38 291 0
	movne	r10, #0
	.loc 38 272 0
	bne	.L5771
.L5772:
.LVL6818:
.LBB16054:
.LBB16055:
	.loc 38 228 0
	and	r3, r0, #253
.LVL6819:
	cmp	r3, #1
	bne	.L5840
	.loc 38 231 0
	cmp	r0, #3
	beq	.L5935
.LBE16055:
.LBE16054:
.LBB16060:
.LBB16050:
	.loc 37 115 0
	mov	r10, #12
.L5774:
.LVL6820:
.LBE16050:
.LBE16060:
.LBE16067:
.LBE16077:
.LBE16088:
.LBE16207:
.LBB16208:
.LBB16179:
.LBB16163:
.LBB16142:
	.loc 28 1035 0
	cmp	r2, #14
	andne	r3, r5, #15
	bne	.L5865
.LVL6821:
.L5925:
	uxtb	r3, r5
.LVL6822:
.L5771:
.LBE16142:
.LBE16163:
	.loc 39 317 0
	sub	r1, r3, #2
	mov	r0, r3
	cmp	r1, #60
	ldrls	pc, [pc, r1, asl #2]
	b	.L5782
.L5791:
	.word	.L5790
	.word	.L5782
	.word	.L5792
	.word	.L5782
	.word	.L5793
	.word	.L5782
	.word	.L5787
	.word	.L5782
	.word	.L5794
	.word	.L5782
	.word	.L5795
	.word	.L5782
	.word	.L5787
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5787
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5796
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5782
	.word	.L5787
.L5796:
.LVL6823:
.LBB16164:
.LBB16165:
.LBB16166:
.LBB16167:
.LBB16168:
.LBB16169:
	.loc 28 2318 0
	cmp	r3, #46
	bne	.L5803
	.loc 28 2321 0
	ubfx	r3, r5, #8, #6
.LVL6824:
.LBE16169:
.LBE16168:
	.loc 39 97 0
	cmp	r3, #32
	.loc 39 100 0
	andne	r3, r3, #31
.LVL6825:
	mvnne	fp, #0
	addne	r3, r3, #1
	.loc 39 97 0
	mvneq	r3, #31
.LVL6826:
	movne	r3, fp, asl r3
.LBE16167:
.LBE16166:
	.loc 39 114 0
	and	fp, r3, r9
.LBE16165:
.LBE16164:
	.loc 39 334 0
	mov	r0, fp
	mov	r4, fp, lsr #5
	b	.L5798
.LVL6827:
.L5826:
.LBE16179:
.LBE16208:
.LBB16209:
.LBB16038:
.LBB16033:
.LBB16023:
.LBB16024:
	bl	cap_cnode_cap_get_capCNodeRadix.part.149
.LVL6828:
.L5864:
.LBE16024:
.LBE16023:
	.loc 39 265 0
	mov	r10, #512
	b	.L5825
.LVL6829:
.L5931:
	cmp	r3, #4
	beq	.L5878
	bgt	.L5862
	cmp	r3, #0
	beq	.L5834
	cmp	r3, #2
	beq	.L5855
.L5833:
.LVL6830:
.LBB16025:
.LBB16021:
	.loc 38 272 0
	sub	r2, r3, #1
	cmp	r2, #10
	ldrls	pc, [pc, r2, asl #2]
	b	.L5834
.L5836:
	.word	.L5835
	.word	.L5834
	.word	.L5835
	.word	.L5834
	.word	.L5918
	.word	.L5834
	.word	.L5876
	.word	.L5834
	.word	.L5838
	.word	.L5834
	.word	.L5834
.L5918:
.LBB16015:
.LBB16016:
	.loc 38 231 0
	mov	r10, #4096
	b	.L5825
.L5838:
.LBE16016:
.LBE16015:
	.loc 38 272 0
	mov	r10, #16384
	b	.L5825
.L5835:
.LVL6831:
.LBB16020:
.LBB16019:
	.loc 38 228 0
	and	r2, r3, #253
	cmp	r2, #1
	bne	.L5840
	.loc 38 231 0
	cmp	r3, #3
	bne	.L5918
.LVL6832:
.L5926:
.LBB16017:
.LBB16018:
	bl	cap_frame_cap_get_capFSize.part.120
.LVL6833:
.L5935:
.LBE16018:
.LBE16017:
.LBE16019:
.LBE16020:
.LBE16021:
.LBE16025:
.LBE16033:
.LBE16038:
.LBE16209:
.LBB16210:
.LBB16089:
.LBB16078:
.LBB16068:
.LBB16061:
.LBB16058:
.LBB16056:
.LBB16057:
	.loc 28 1801 0
	and	r3, r5, #15
	cmp	r3, #3
	bne	.L5926
.LVL6834:
	.loc 28 1804 0
	mov	r3, r9, lsr #30
.LVL6835:
.LBE16057:
.LBE16056:
.LBE16058:
.LBE16061:
.LBB16062:
.LBB16051:
	.loc 37 113 0
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L5777
.L5779:
	.word	.L5778
	.word	.L5867
	.word	.L5780
	.word	.L5868
.L5867:
	.loc 37 118 0
	mov	r10, #16
	b	.L5774
.L5780:
	.loc 37 121 0
	mov	r10, #20
	b	.L5781
.LVL6836:
.L5933:
.LBE16051:
.LBE16062:
.LBE16068:
.LBE16078:
.LBE16089:
.LBE16210:
.LBB16211:
.LBB16180:
.LBB16170:
.LBB16134:
.LBB16128:
.LBB16124:
	.loc 38 210 0
	mov	r4, #0
	mov	fp, r4
	mov	r0, r4
	b	.L5798
.L5814:
.LVL6837:
.LBB16119:
.LBB16120:
	.loc 28 1755 0
	and	r3, r5, #15
.LVL6838:
	cmp	r3, #1
	bne	.L5936
	.loc 28 1758 0
	bic	r0, r5, #-16777216
	bic	r0, r0, #15
	mov	r0, r0, asl #8
	mov	r4, r0, lsr #5
	mov	fp, r0
	b	.L5798
.LVL6839:
.L5777:
.LBE16120:
.LBE16119:
.LBE16124:
.LBE16128:
.LBE16134:
.LBE16170:
.LBE16180:
.LBE16211:
.LBB16212:
.LBB16090:
.LBB16079:
.LBB16069:
.LBB16063:
.LBB16052:
.LBB16048:
.LBB16049:
	.loc 37 127 0
	movw	r0, #:lower16:.LC26
.LVL6840:
	movw	r1, #:lower16:.LC27
	movt	r0, #:upper16:.LC26
	movt	r1, #:upper16:.LC27
	mov	r2, #127
	ldr	r3, .L5937+4
.LVL6841:
	bl	_fail
.LVL6842:
.L5932:
.LBE16049:
.LBE16048:
.LBE16052:
.LBE16063:
.LBE16069:
.LBE16079:
.LBE16090:
.LBE16212:
.LBB16213:
.LBB16181:
.LBB16171:
.LBB16135:
.LBB16129:
.LBB16125:
	bl	generic_frame_cap_get_capFBasePtr.isra.89.part.90
.LVL6843:
.L5778:
.LBE16125:
.LBE16129:
.LBE16135:
.LBE16171:
.LBE16181:
.LBE16213:
.LBB16214:
.LBB16091:
.LBB16080:
.LBB16070:
.LBB16064:
.LBB16053:
	.loc 37 115 0
	mov	r10, #12
	b	.L5781
.LVL6844:
.L5934:
.LBE16053:
.LBE16064:
.LBE16070:
.LBE16080:
.LBE16091:
.LBE16214:
.LBB16215:
.LBB16182:
.LBB16172:
.LBB16136:
.LBB16130:
.LBB16126:
.LBB16122:
.LBB16118:
	bl	cap_frame_cap_get_capFBasePtr.isra.87.part.88
.LVL6845:
.L5803:
.LBE16118:
.LBE16122:
.LBE16126:
.LBE16130:
.LBE16136:
.LBE16172:
.LBE16182:
.LBE16215:
.LBB16216:
.LBB16092:
.LBB16081:
.LBB16082:
.LBB16083:
	bl	cap_zombie_cap_get_capZombieType.isra.80.part.81
.LVL6846:
.L5855:
.LBE16083:
.LBE16082:
.LBE16081:
.LBE16092:
.LBE16216:
.LBB16217:
.LBB16039:
.LBB16034:
.LBB16026:
.LBB16027:
	bl	cap_untyped_cap_get_capBlockSize.part.146
.LVL6847:
.L5840:
.LBE16027:
.LBE16026:
.LBE16034:
.LBE16039:
.LBE16217:
.LBB16218:
.LBB16093:
.LBB16084:
.LBB16071:
.LBB16065:
.LBB16059:
	bl	generic_frame_cap_get_capFSize.part.121
.LVL6848:
.L5863:
.LBE16059:
.LBE16065:
.LBE16071:
.LBE16084:
.LBE16093:
.LBE16218:
.LBB16219:
.LBB16040:
.LBB16035:
	.loc 39 265 0
	cmp	r3, #46
	beq	.L5827
	cmp	r3, #62
	beq	.L5834
	b	.L5833
.L5827:
.LVL6849:
.LBB16028:
.LBB16029:
.LBB16030:
	.loc 28 2321 0
	ubfx	r3, r5, #8, #6
.LVL6850:
.LBE16030:
.LBE16029:
	.loc 39 283 0
	cmp	r3, #32
	beq	.L5864
	.loc 39 286 0
	and	r0, r3, #31
	mov	r3, #1
.LVL6851:
	add	r0, r0, #4
	mov	r10, r3, asl r0
	b	.L5825
.LVL6852:
.L5862:
.LBE16028:
	.loc 39 265 0
	cmp	r3, #6
	beq	.L5878
	cmp	r3, #8
	beq	.L5834
	b	.L5833
.L5878:
	mov	r10, #16
	b	.L5825
.LVL6853:
.L5876:
.LBB16031:
.LBB16022:
	.loc 38 272 0
	mov	r10, #1024
	b	.L5825
.LVL6854:
.L5936:
.LBE16022:
.LBE16031:
.LBE16035:
.LBE16040:
.LBE16219:
.LBB16220:
.LBB16183:
.LBB16173:
.LBB16137:
.LBB16131:
.LBB16127:
.LBB16123:
.LBB16121:
	bl	cap_small_frame_cap_get_capFBasePtr.isra.85.part.86
.LVL6855:
.L5938:
	.align	2
.L5937:
	.word	.LANCHOR7-2656
	.word	.LANCHOR4+72
.LBE16121:
.LBE16123:
.LBE16127:
.LBE16131:
.LBE16137:
.LBE16173:
.LBE16183:
.LBE16220:
	.cfi_endproc
.LFE457:
	.size	Arch_recycleCap, .-Arch_recycleCap
	.align	2
	.global	recycleCap
	.type	recycleCap, %function
recycleCap:
.LFB625:
	.loc 36 204 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6856:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
	.loc 36 204 0
	stmia	sp, {r2, r3}
	mov	r6, r3
.LBB16263:
.LBB16264:
.LBB16265:
.LBB16266:
	.loc 28 1035 0
	and	r3, r2, #14
.LBE16266:
.LBE16265:
.LBE16264:
.LBE16263:
	.loc 36 204 0
	mov	ip, sp
.LBB16273:
.LBB16271:
.LBB16269:
.LBB16267:
	.loc 28 1035 0
	cmp	r3, #14
.LBE16267:
.LBE16269:
.LBE16271:
.LBE16273:
	.loc 36 204 0
	mov	r5, r0
	mov	r4, r2
.LVL6857:
.LBB16274:
.LBB16272:
.LBB16270:
.LBB16268:
	.loc 28 1035 0
	beq	.L5940
.LBE16268:
.LBE16270:
.LBE16272:
.LBE16274:
	.loc 36 205 0
	tst	r2, #1
.LBB16275:
.LBB16276:
	.loc 28 1036 0
	andeq	r3, r2, #15
.LBE16276:
.LBE16275:
	.loc 36 205 0
	bne	.L5941
.L5945:
	.loc 36 209 0
	cmp	r3, #10
	beq	.L5946
	bls	.L5968
	cmp	r3, #46
	beq	.L5969
.LVL6858:
.L5946:
	.loc 36 267 0
	stmia	r5, {r4, r6}
.LVL6859:
.L5939:
	.loc 36 269 0
	mov	r0, r5
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
.LVL6860:
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL6861:
.L5968:
	.cfi_restore_state
	.loc 36 209 0
	cmp	r3, #0
	beq	.L5949
	cmp	r3, #4
	bne	.L5946
.LVL6862:
.LBB16278:
.LBB16279:
.LBB16280:
	.loc 28 1277 0
	and	r3, r4, #15
	cmp	r3, #4
	bne	.L5970
.LVL6863:
.LBE16280:
.LBE16279:
	.loc 36 259 0
	movs	r1, r4, lsr #4
.LVL6864:
	beq	.L5946
.LVL6865:
.LBB16282:
	.loc 36 262 0
	bic	r0, r6, #15
.LVL6866:
	bl	cancelBadgedSends
.LVL6867:
	b	.L5946
.LVL6868:
.L5940:
.LBE16282:
.LBE16278:
	.loc 36 205 0
	tst	r2, #1
.LBB16284:
.LBB16277:
	.loc 28 1037 0
	uxtbeq	r3, r2
.LBE16277:
.LBE16284:
	.loc 36 205 0
	beq	.L5945
.L5941:
	.loc 36 206 0
	mov	r0, r5
.LVL6869:
	ldmia	ip, {r2, r3}
	bl	Arch_recycleCap
.LVL6870:
	.loc 36 269 0
	mov	r0, r5
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL6871:
.L5949:
	.cfi_restore_state
	.loc 36 211 0
	movw	r0, #:lower16:.LC300
.LVL6872:
	movw	r1, #:lower16:.LC112
.LVL6873:
	movt	r0, #:upper16:.LC300
	movt	r1, #:upper16:.LC112
	mov	r2, #211
	ldr	r3, .L5977
	bl	_fail
.LVL6874:
.L5969:
.LBB16285:
.LBB16286:
.LBB16287:
	.loc 28 2318 0
	uxtb	r3, r4
	cmp	r3, #46
	bne	.L5971
	.loc 28 2321 0
	ubfx	r4, r4, #8, #6
.LVL6875:
.LBE16287:
.LBE16286:
	.loc 36 223 0
	cmp	r4, #32
	beq	.L5972
.LVL6876:
.LBB16289:
.LBB16290:
.LBB16291:
.LBB16292:
	.loc 39 100 0
	and	r2, r4, #31
.LVL6877:
.LBE16292:
.LBE16291:
.LBE16290:
.LBE16289:
.LBB16294:
.LBB16295:
	.loc 28 1490 0
	tst	r4, #32
.LBE16295:
.LBE16294:
.LBB16298:
.LBB16293:
	.loc 39 114 0
	add	r2, r2, #1
	mvn	r3, #0
	and	r6, r6, r3, asl r2
.LVL6878:
.LBE16293:
.LBE16298:
.LBB16299:
.LBB16296:
	.loc 28 1490 0
	bne	.L5973
	.loc 28 1499 0
	tst	r6, #31
	.loc 28 1491 0
	mov	r4, r4, asl #18
.LVL6879:
	.loc 28 1500 0
	biceq	r6, r6, #31
.LVL6880:
	.loc 28 1503 0
	orreq	r6, r6, #10
	.loc 28 1505 0
	streq	r4, [r5, #4]
	streq	r6, [r5]
	.loc 28 1499 0
	beq	.L5939
	movw	r0, #:lower16:.LC252
.LVL6881:
	movw	r1, #:lower16:.LC30
.LVL6882:
	movt	r0, #:upper16:.LC252
	movt	r1, #:upper16:.LC30
	movw	r2, #1499
.LVL6883:
	ldr	r3, .L5977+4
.LVL6884:
	bl	_assert_fail
.LVL6885:
.L5972:
.LBE16296:
.LBE16299:
.LBB16300:
.LBB16301:
.LBB16302:
	.loc 39 114 0
	bic	r6, r6, #31
.LVL6886:
.LBE16302:
.LBE16301:
	.loc 36 227 0
	add	r6, r6, #256
.LVL6887:
.LBB16303:
.LBB16304:
	.loc 28 146 0
	ldr	r3, [r6, #72]
	and	r3, r3, #15
.LVL6888:
.LBE16304:
.LBE16303:
	.loc 36 232 0
	cmp	r3, #7
	beq	.L5974
.LVL6889:
.LBB16305:
.LBB16306:
	.loc 28 108 0
	ldr	r3, [r6, #76]
.LVL6890:
.LBE16306:
.LBE16305:
	.loc 36 236 0
	tst	r3, #1
	bne	.L5975
	.loc 36 239 0
	ldr	r4, [r6, #84]
	cmp	r4, #0
	bne	.L5976
	.loc 36 246 0
	mov	r0, r6
.LVL6891:
	mov	r1, #140
.LVL6892:
	bl	memzero
.LVL6893:
	.loc 36 249 0
	movw	r3, #:lower16:ksCurDomain
.LBB16307:
.LBB16308:
	.loc 42 117 0
	mov	r0, #80
.LBE16308:
.LBE16307:
	.loc 36 249 0
	movt	r3, #:upper16:ksCurDomain
	.loc 36 248 0
	mov	r2, #5
	.loc 36 249 0
	ldr	r1, [r3]
.LBB16310:
.LBB16311:
	.loc 28 1600 0
	orr	r3, r6, #12
	.loc 28 1602 0
	str	r4, [r5, #4]
.LBE16311:
.LBE16310:
.LBB16313:
.LBB16309:
	.loc 42 117 0
	str	r0, [r6, #64]
.LBE16309:
.LBE16313:
	.loc 36 249 0
	str	r1, [r6, #104]
.LVL6894:
	.loc 36 248 0
	str	r2, [r6, #112]
.LBB16314:
.LBB16312:
	.loc 28 1602 0
	str	r3, [r5]
	b	.L5939
.LVL6895:
.L5971:
.LBE16312:
.LBE16314:
.LBE16300:
.LBB16315:
.LBB16288:
	bl	cap_zombie_cap_get_capZombieType.isra.80.part.81
.LVL6896:
.L5973:
.LBE16288:
.LBE16315:
.LBB16316:
.LBB16297:
	bl	cap_cnode_cap_new.part.190
.LVL6897:
.L5970:
.LBE16297:
.LBE16316:
.LBE16285:
.LBB16318:
.LBB16283:
.LBB16281:
	bl	cap_endpoint_cap_get_capEPBadge.isra.180.part.181
.LVL6898:
.L5976:
.LBE16281:
.LBE16283:
.LBE16318:
.LBB16319:
.LBB16317:
	.loc 36 239 0 discriminator 1
	movw	r0, #:lower16:.LC303
.LVL6899:
	movw	r1, #:lower16:.LC112
.LVL6900:
	movt	r0, #:upper16:.LC303
	movt	r1, #:upper16:.LC112
	mov	r2, #239
.LVL6901:
	ldr	r3, .L5977+8
.LVL6902:
	bl	_assert_fail
.LVL6903:
.L5975:
	.loc 36 236 0 discriminator 1
	movw	r0, #:lower16:.LC302
.LVL6904:
	movw	r1, #:lower16:.LC112
.LVL6905:
	movt	r0, #:upper16:.LC302
	movt	r1, #:upper16:.LC112
	mov	r2, #236
.LVL6906:
	ldr	r3, .L5977+8
.LVL6907:
	bl	_assert_fail
.LVL6908:
.L5974:
	.loc 36 232 0 discriminator 1
	movw	r0, #:lower16:.LC301
.LVL6909:
	movw	r1, #:lower16:.LC112
.LVL6910:
	movt	r0, #:upper16:.LC301
	movt	r1, #:upper16:.LC112
	mov	r2, #233
.LVL6911:
	ldr	r3, .L5977+8
.LVL6912:
	bl	_assert_fail
.LVL6913:
.L5978:
	.align	2
.L5977:
	.word	.LANCHOR7-2640
	.word	.LANCHOR4+2916
	.word	.LANCHOR7-2628
.LBE16317:
.LBE16319:
	.cfi_endproc
.LFE625:
	.size	recycleCap, .-recycleCap
	.align	2
	.global	cteRecycle
	.type	cteRecycle, %function
cteRecycle:
.LFB579:
	.loc 27 778 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6914:
	stmfd	sp!, {r4, r5, lr}
	sub	sp, sp, #28