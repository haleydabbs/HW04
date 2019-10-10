	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"game.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCactus.part.0, %function
updateCactus.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L3
	ldr	r1, [r3, #20]
	ldr	r2, [r3, #44]
	rsbs	r1, r1, #1
	movcc	r1, #0
	rsbs	r2, r2, #1
	movcc	r2, #0
	mov	ip, #0
	ldr	r0, .L3+4
	str	r1, [r3, #20]
	str	r2, [r3, #44]
	str	ip, [r0]
	bx	lr
.L4:
	.align	2
.L3:
	.word	cacti
	.word	.LANCHOR0
	.size	updateCactus.part.0, .-updateCactus.part.0
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, #48
	mov	r4, #1
	ldr	r3, .L7
	str	r5, [r3, #12]
	str	r5, [r3, #36]
	ldr	r5, .L7+4
	str	r4, [r3, #20]
	str	r4, [r5, #20]
	mov	r4, #251	@ movhi
	strh	r4, [r5, #40]	@ movhi
	mov	r4, #80
	mov	ip, #0
	mov	r6, #60
	mov	lr, #54
	mov	fp, #56
	mov	r10, #64
	mov	r0, #180
	mov	r1, #10
	mov	r2, #50
	str	r4, [r5, #48]
	mov	r9, #30
	mov	r8, #250
	mov	r7, #55
	mov	r4, #252	@ movhi
	sub	sp, sp, #20
	str	ip, [r3, #44]
	str	ip, [r5, #44]
	str	ip, [r5, #68]
	mov	ip, sp
	str	r6, [r3, #8]
	str	r6, [r3]
	ldr	r6, .L7+8
	str	r6, [r3, #16]
	ldr	r6, .L7+12
	str	lr, [r3, #4]
	str	lr, [r3, #28]
	str	fp, [r3, #32]
	str	r10, [r3, #24]
	str	r6, [r3, #40]
	ldr	r3, .L7+16
	strh	r4, [r5, #64]	@ movhi
	str	r9, [r5]
	strh	r8, [r5, #16]	@ movhi
	str	r7, [r5, #24]
	str	r0, [r5, #4]
	str	r0, [r5, #28]
	str	r0, [r5, #52]
	str	r1, [r5, #8]
	str	r1, [r5, #32]
	str	r1, [r5, #56]
	str	r2, [r5, #12]
	str	r2, [r5, #36]
	str	r2, [r5, #60]
	ldm	r3, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2}
	ldr	r4, .L7+20
	strh	r3, [ip]	@ movhi
	mov	r2, #83886080
	mov	r3, #7
	mov	r0, #3
	ldr	r1, .L7+24
	mov	lr, pc
	bx	r4
	ldrh	r2, [sp]
	ldr	r3, .L7+28
	strh	r2, [r3, #242]	@ movhi
	ldrh	r2, [sp, #2]
	strh	r2, [r3, #244]	@ movhi
	ldrh	r2, [sp, #4]
	strh	r2, [r3, #246]	@ movhi
	ldrh	r2, [sp, #6]
	strh	r2, [r3, #248]	@ movhi
	ldrh	r2, [sp, #8]
	strh	r2, [r3, #250]	@ movhi
	ldrh	r2, [sp, #10]
	strh	r2, [r3, #252]	@ movhi
	ldrh	r2, [sp, #12]
	strh	r2, [r3, #254]	@ movhi
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	cacti
	.word	elements
	.word	cactusBitmap
	.word	cactus2Bitmap
	.word	.LANCHOR1
	.word	DMANow
	.word	cactusPal
	.word	83886336
	.size	initGame, .-initGame
	.align	2
	.global	initCactus
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCactus, %function
initCactus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #60
	mov	ip, #56
	push	{r4, r5, lr}
	mov	r1, #48
	mov	r5, #1
	mov	r4, #0
	mov	lr, #64
	mov	r2, #54
	ldr	r3, .L11
	str	r0, [r3, #8]
	str	r0, [r3]
	str	ip, [r3, #32]
	ldr	r0, .L11+4
	ldr	ip, .L11+8
	str	r5, [r3, #20]
	str	r4, [r3, #44]
	str	lr, [r3, #24]
	str	ip, [r3, #16]
	str	r0, [r3, #40]
	str	r1, [r3, #12]
	str	r1, [r3, #36]
	str	r2, [r3, #4]
	str	r2, [r3, #28]
	pop	{r4, r5, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	cacti
	.word	cactus2Bitmap
	.word	cactusBitmap
	.size	initCactus, .-initCactus
	.align	2
	.global	initElements
	.syntax unified
	.arm
	.fpu softvfp
	.type	initElements, %function
initElements:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r0, #180
	mov	r1, #10
	mov	r2, #50
	mov	r9, #30
	mov	r8, #1
	mov	r7, #250
	mov	r6, #55
	mov	r5, #251
	mov	r4, #80
	mov	lr, #252
	mov	ip, #0
	ldr	r3, .L15
	str	r9, [r3]
	str	r8, [r3, #20]
	strh	r7, [r3, #16]	@ movhi
	str	r6, [r3, #24]
	strh	r5, [r3, #40]	@ movhi
	str	r4, [r3, #48]
	strh	lr, [r3, #64]	@ movhi
	str	r0, [r3, #4]
	str	r0, [r3, #28]
	str	r0, [r3, #52]
	str	r1, [r3, #8]
	str	r1, [r3, #32]
	str	r1, [r3, #56]
	str	r2, [r3, #12]
	str	r2, [r3, #36]
	str	r2, [r3, #60]
	str	ip, [r3, #44]
	str	ip, [r3, #68]
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L16:
	.align	2
.L15:
	.word	elements
	.size	initElements, .-initElements
	.align	2
	.global	updateCactus
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCactus, %function
updateCactus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L19
	ldr	r3, [r3]
	cmp	r3, #50
	bxne	lr
	b	updateCactus.part.0
.L20:
	.align	2
.L19:
	.word	.LANCHOR0
	.size	updateCactus, .-updateCactus
	.align	2
	.global	updateSelect
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSelect, %function
updateSelect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L31
	ldrh	r3, [r3]
	tst	r3, #128
	beq	.L22
	ldr	r2, .L31+4
	ldrh	r2, [r2]
	tst	r2, #128
	bne	.L22
	ldr	r1, .L31+8
	ldr	r2, [r1, #4]
	ldr	r3, .L31+12
	add	r2, r2, #1
	smull	r0, r3, r2, r3
	sub	r3, r3, r2, asr #31
	add	r3, r3, r3, lsl #1
	sub	r3, r2, r3
	str	r3, [r1, #4]
	bx	lr
.L22:
	tst	r3, #64
	bxeq	lr
	ldr	r3, .L31+4
	ldrh	r3, [r3]
	tst	r3, #64
	bxne	lr
	ldr	r2, .L31+8
	ldr	r3, [r2, #4]
	cmp	r3, #0
	moveq	r3, #2
	subne	r3, r3, #1
	str	r3, [r2, #4]
	bx	lr
.L32:
	.align	2
.L31:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	1431655766
	.size	updateSelect, .-updateSelect
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L40
	ldr	r3, [r2]
	add	r3, r3, #1
	cmp	r3, #50
	str	r3, [r2]
	bne	updateSelect
.L39:
	push	{r4, lr}
	bl	updateCactus.part.0
	pop	{r4, lr}
	b	updateSelect
.L41:
	.align	2
.L40:
	.word	.LANCHOR0
	.size	updateGame, .-updateGame
	.align	2
	.global	flipCacti
	.syntax unified
	.arm
	.fpu softvfp
	.type	flipCacti, %function
flipCacti:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L43
	ldr	r1, [r3, #20]
	ldr	r2, [r3, #44]
	rsbs	r1, r1, #1
	movcc	r1, #0
	rsbs	r2, r2, #1
	movcc	r2, #0
	mov	ip, #0
	ldr	r0, .L43+4
	str	r1, [r3, #20]
	str	r2, [r3, #44]
	str	ip, [r0]
	bx	lr
.L44:
	.align	2
.L43:
	.word	cacti
	.word	.LANCHOR0
	.size	flipCacti, .-flipCacti
	.align	2
	.global	drawCacti
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCacti, %function
drawCacti:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #20]
	cmp	r3, #0
	bxeq	lr
	push	{r4, lr}
	ldr	r2, [r0, #16]
	sub	sp, sp, #8
	ldr	r3, [r0, #8]
	str	r2, [sp]
	ldr	r4, .L54
	ldr	r2, [r0, #12]
	ldr	r1, [r0]
	ldr	r0, [r0, #4]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L55:
	.align	2
.L54:
	.word	drawImage4
	.size	drawCacti, .-drawCacti
	.align	2
	.global	drawSelect
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSelect, %function
drawSelect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #254
	ldr	r3, .L58
	push	{r4, lr}
	ldr	r3, [r3, #4]
	ldr	r1, .L58+4
	add	r3, r3, r3, lsl #1
	ldr	r1, [r1, r3, lsl #3]
	sub	sp, sp, #8
	str	r2, [sp]
	mov	r3, #14
	mov	r2, #54
	mov	r0, #178
	ldr	r4, .L58+8
	sub	r1, r1, #2
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L59:
	.align	2
.L58:
	.word	.LANCHOR0
	.word	elements
	.word	drawRect4
	.size	drawSelect, .-drawSelect
	.align	2
	.global	drawPlantBox
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlantBox, %function
drawPlantBox:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r5, #255
	sub	sp, sp, #12
	ldr	r4, .L62
	mov	r3, #2
	mov	r2, #240
	mov	r1, #120
	mov	r0, #0
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #122
	mov	r2, #2
	mov	r1, #0
	mov	r0, #170
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L63:
	.align	2
.L62:
	.word	drawRect4
	.size	drawPlantBox, .-drawPlantBox
	.align	2
	.global	drawElements
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawElements, %function
drawElements:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L68
	ldr	r6, .L68+4
	sub	sp, sp, #8
	add	r5, r4, #72
.L65:
	ldrb	r2, [r4, #16]	@ zero_extendqisi2
	ldr	r3, [r4, #8]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	str	r2, [sp]
	add	r4, r4, #24
	ldr	r2, [r4, #-12]
	mov	lr, pc
	bx	r6
	cmp	r4, r5
	bne	.L65
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L69:
	.align	2
.L68:
	.word	elements
	.word	drawRect4
	.size	drawElements, .-drawElements
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r4, .L82
	ldr	r3, .L82+4
	mov	r0, #249
	sub	sp, sp, #12
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #20]
	cmp	r3, #0
	bne	.L80
	ldr	r3, [r4, #44]
	cmp	r3, #0
	bne	.L81
.L72:
	bl	drawSelect
	bl	drawPlantBox
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	b	drawElements
.L80:
	ldr	r2, [r4, #16]
	ldr	r3, [r4, #8]
	str	r2, [sp]
	ldr	r5, .L82+8
	ldr	r2, [r4, #12]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #44]
	cmp	r3, #0
	beq	.L72
.L81:
	ldr	r2, [r4, #40]
	ldr	r3, [r4, #32]
	str	r2, [sp]
	ldr	r2, [r4, #36]
	ldr	r1, [r4, #24]
	ldr	r0, [r4, #28]
	ldr	r4, .L82+8
	mov	lr, pc
	bx	r4
	b	.L72
.L83:
	.align	2
.L82:
	.word	cacti
	.word	fillScreen4
	.word	drawImage4
	.size	drawGame, .-drawGame
	.comm	elements,72,4
	.comm	cacti,48,4
	.global	selectCount
	.global	cactusFlip
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
.LC0:
	.short	0
	.short	31775
	.short	32736
	.short	992
	.short	31
	.short	32767
	.short	15855
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	cactusFlip, %object
	.size	cactusFlip, 4
cactusFlip:
	.space	4
	.type	selectCount, %object
	.size	selectCount, 4
selectCount:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
