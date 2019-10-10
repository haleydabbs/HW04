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
	ldr	r3, .L7
	ldr	r1, [r3, #20]
	cmp	r1, #0
	movne	r1, #0
	ldreq	r2, .L7+4
	moveq	r0, #1
	streq	r1, [r2]
	strne	r1, [r3, #20]
	mov	r1, #0
	streq	r0, [r3, #20]
	ldr	r0, [r3, #44]
	ldrne	r2, .L7+4
	cmp	r0, r1
	str	r1, [r2, #4]
	moveq	r1, #1
	strne	r1, [r3, #44]
	streq	r1, [r3, #44]
	streq	r1, [r2]
	bx	lr
.L8:
	.align	2
.L7:
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
	mov	r8, #48
	mov	lr, #0
	ldr	r2, .L13
	str	r8, [r2, #12]
	str	r8, [r2, #36]
	ldr	r8, .L13+4
	str	lr, [r2, #44]
	mov	r3, lr
	str	lr, [r8, #44]
	str	lr, [r8, #68]
	mov	lr, #30
	str	lr, [r8]
	mov	lr, #250	@ movhi
	strh	lr, [r8, #16]	@ movhi
	mov	lr, #55
	str	lr, [r8, #24]
	mov	lr, #251	@ movhi
	mov	r10, #56
	strh	lr, [r8, #40]	@ movhi
	mov	lr, #80
	str	r10, [r2, #32]
	mov	r10, #64
	mov	r9, #60
	mov	r7, #1
	mov	fp, #54
	mov	r6, #180
	mov	r5, #10
	mov	r4, #50
	str	lr, [r8, #48]
	mov	lr, #252	@ movhi
	mov	r1, #4
	mov	ip, #2
	mov	r0, #254
	str	r10, [r2, #24]
	ldr	r10, .L13+8
	str	r10, [r2, #16]
	ldr	r10, .L13+12
	str	r9, [r2, #8]
	str	r9, [r2]
	str	r10, [r2, #40]
	str	r7, [r2, #20]
	str	fp, [r2, #4]
	str	fp, [r2, #28]
	ldr	r2, .L13+16
	str	r7, [r8, #20]
	str	r6, [r8, #4]
	str	r6, [r8, #28]
	str	r6, [r8, #52]
	str	r5, [r8, #8]
	str	r5, [r8, #32]
	str	r5, [r8, #56]
	str	r4, [r8, #12]
	str	r4, [r8, #36]
	str	r4, [r8, #60]
	strh	lr, [r8, #64]	@ movhi
	sub	sp, sp, #20
	add	lr, r2, #140
.L10:
	str	r1, [r2, #8]
	str	r1, [r2, #12]
	str	r3, [r2]
	str	r3, [r2, #4]
	str	ip, [r2, #20]
	strh	r0, [r2, #16]	@ movhi
	str	r3, [r2, #24]
	add	r2, r2, #28
	cmp	lr, r2
	bne	.L10
	mov	ip, sp
	ldr	r3, .L13+20
	ldm	r3, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2}
	ldr	r4, .L13+24
	strh	r3, [ip]	@ movhi
	mov	r2, #83886080
	mov	r3, #7
	mov	r0, #3
	ldr	r1, .L13+28
	mov	lr, pc
	bx	r4
	ldrh	r2, [sp]
	ldr	r3, .L13+32
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
.L14:
	.align	2
.L13:
	.word	cacti
	.word	elements
	.word	cactusBitmap
	.word	cactus2Bitmap
	.word	items
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
	ldr	r3, .L17
	str	r0, [r3, #8]
	str	r0, [r3]
	str	ip, [r3, #32]
	ldr	r0, .L17+4
	ldr	ip, .L17+8
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
.L18:
	.align	2
.L17:
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
	ldr	r3, .L21
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
.L22:
	.align	2
.L21:
	.word	elements
	.size	initElements, .-initElements
	.align	2
	.global	initEItems
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEItems, %function
initEItems:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #4
	mov	r2, #0
	mov	lr, #2
	mov	ip, #254
	ldr	r3, .L27
	add	r0, r3, #140
.L24:
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3]
	str	r2, [r3, #4]
	str	lr, [r3, #20]
	strh	ip, [r3, #16]	@ movhi
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L24
	ldr	lr, [sp], #4
	bx	lr
.L28:
	.align	2
.L27:
	.word	items
	.size	initEItems, .-initEItems
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
	ldr	r3, .L31
	ldr	r3, [r3, #4]
	cmp	r3, #50
	bxne	lr
	b	updateCactus.part.0
.L32:
	.align	2
.L31:
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
	ldr	r3, .L43
	ldrh	r3, [r3]
	tst	r3, #128
	beq	.L34
	ldr	r2, .L43+4
	ldrh	r2, [r2]
	tst	r2, #128
	bne	.L34
	ldr	r1, .L43+8
	ldr	r2, [r1, #8]
	ldr	r3, .L43+12
	add	r2, r2, #1
	smull	r0, r3, r2, r3
	sub	r3, r3, r2, asr #31
	add	r3, r3, r3, lsl #1
	sub	r3, r2, r3
	str	r3, [r1, #8]
	bx	lr
.L34:
	tst	r3, #64
	bxeq	lr
	ldr	r3, .L43+4
	ldrh	r3, [r3]
	tst	r3, #64
	bxne	lr
	ldr	r2, .L43+8
	ldr	r3, [r2, #8]
	cmp	r3, #0
	moveq	r3, #2
	subne	r3, r3, #1
	str	r3, [r2, #8]
	bx	lr
.L44:
	.align	2
.L43:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	1431655766
	.size	updateSelect, .-updateSelect
	.align	2
	.global	dropItems
	.syntax unified
	.arm
	.fpu softvfp
	.type	dropItems, %function
dropItems:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r6, .L52
	mov	r4, #0
	mov	r3, r6
.L48:
	ldr	r5, [r3, #24]
	cmp	r5, #0
	beq	.L51
	add	r4, r4, #1
	cmp	r4, #5
	add	r3, r3, #28
	bne	.L48
	pop	{r4, r5, r6, lr}
	bx	lr
.L51:
	ldr	r3, .L52+4
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r3, .L52+8
	smull	r2, ip, r3, r0
	ldr	r3, .L52+12
	ldr	r2, [r3, #8]
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #4
	add	r3, r3, r3, lsl #2
	rsb	r3, r3, r3, lsl #4
	sub	r3, r0, r3, lsl r1
	ldr	r0, .L52+16
	add	r2, r2, r2, lsl r1
	add	r2, r0, r2, lsl #3
	rsb	r4, r4, r4, lsl #3
	ldrh	r2, [r2, #16]
	str	r5, [r6, r4, lsl #2]
	add	r3, r3, #10
	add	r4, r6, r4, lsl #2
	str	r3, [r4, #4]
	strh	r2, [r4, #16]	@ movhi
	str	r1, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L53:
	.align	2
.L52:
	.word	items
	.word	rand
	.word	458129845
	.word	.LANCHOR0
	.word	elements
	.size	dropItems, .-dropItems
	.align	2
	.global	updateItems
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateItems, %function
updateItems:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #24]
	cmp	r3, #0
	bxeq	lr
	ldr	r3, [r0, #20]
	ldr	r2, [r0]
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldr	r0, [r0, #8]
	add	r2, r2, r3
	add	r3, r2, r0
	cmp	r3, #119
	movgt	r3, #0
	ldr	r5, .L70
	strgt	r3, [r4, #24]
	ldr	r3, [r5]
	sub	sp, sp, #16
	ldr	r1, .L70+4
	str	r2, [r4]
	ldr	lr, [r4, #12]
	ldr	ip, [r4, #4]
	add	r3, r3, r3, lsl #1
	str	r0, [sp, #12]
	str	r2, [sp, #4]
	add	r0, r1, r3, lsl #3
	ldr	r2, [r0, #12]
	ldr	r1, [r1, r3, lsl #3]
	ldr	r6, .L70+8
	ldr	r3, [r0, #8]
	ldr	r0, [r0, #4]
	str	lr, [sp, #8]
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L54
	mov	r2, #0
	ldr	r3, [r5, #8]
	cmp	r3, r2
	str	r2, [r4, #24]
	bne	.L59
	ldr	r3, .L70+12
	ldr	r2, [r3]
	cmp	r2, #0
	subgt	r2, r2, #1
	strgt	r2, [r3]
	bgt	.L54
.L60:
	ldr	r2, [r3, #8]
	cmp	r2, #0
	subgt	r2, r2, #1
	strgt	r2, [r3, #8]
.L54:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L59:
	cmp	r3, #1
	ldr	r3, .L70+12
	bne	.L60
	ldr	r2, [r3, #4]
	cmp	r2, #0
	subgt	r2, r2, #1
	strgt	r2, [r3, #4]
	bgt	.L54
	b	.L60
.L71:
	.align	2
.L70:
	.word	.LANCHOR0
	.word	cacti
	.word	collision
	.word	.LANCHOR2
	.size	updateItems, .-updateItems
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
	ldr	r2, .L80
	ldr	r3, [r2, #4]
	add	r3, r3, #1
	cmp	r3, #50
	push	{r4, lr}
	str	r3, [r2, #4]
	bleq	updateCactus.part.0
.L73:
	bl	updateSelect
	ldr	r3, .L80+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L74
	ldr	r3, .L80+8
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L79
.L74:
	ldr	r0, .L80+12
	bl	updateItems
	ldr	r0, .L80+16
	bl	updateItems
	ldr	r0, .L80+20
	bl	updateItems
	ldr	r0, .L80+24
	bl	updateItems
	ldr	r0, .L80+28
	pop	{r4, lr}
	b	updateItems
.L79:
	bl	dropItems
	b	.L74
.L81:
	.align	2
.L80:
	.word	.LANCHOR0
	.word	oldButtons
	.word	buttons
	.word	items
	.word	items+28
	.word	items+56
	.word	items+84
	.word	items+112
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
	ldr	r3, .L87
	ldr	r1, [r3, #20]
	cmp	r1, #0
	movne	r1, #0
	ldreq	r2, .L87+4
	moveq	r0, #1
	streq	r1, [r2]
	strne	r1, [r3, #20]
	mov	r1, #0
	streq	r0, [r3, #20]
	ldr	r0, [r3, #44]
	ldrne	r2, .L87+4
	cmp	r0, r1
	str	r1, [r2, #4]
	moveq	r1, #1
	strne	r1, [r3, #44]
	streq	r1, [r3, #44]
	streq	r1, [r2]
	bx	lr
.L88:
	.align	2
.L87:
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
	ldr	r4, .L98
	ldr	r2, [r0, #12]
	ldr	r1, [r0]
	ldr	r0, [r0, #4]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L99:
	.align	2
.L98:
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
	ldr	r3, .L102
	push	{r4, lr}
	ldr	r3, [r3, #8]
	ldr	r1, .L102+4
	add	r3, r3, r3, lsl #1
	ldr	r1, [r1, r3, lsl #3]
	sub	sp, sp, #8
	str	r2, [sp]
	mov	r3, #14
	mov	r2, #54
	mov	r0, #178
	ldr	r4, .L102+8
	sub	r1, r1, #2
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L103:
	.align	2
.L102:
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
	ldr	r4, .L106
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
.L107:
	.align	2
.L106:
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
	ldr	r4, .L112
	ldr	r6, .L112+4
	sub	sp, sp, #8
	add	r5, r4, #72
.L109:
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
	bne	.L109
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L113:
	.align	2
.L112:
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L133
	ldr	r3, .L133+4
	mov	r0, #249
	sub	sp, sp, #8
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #20]
	cmp	r3, #0
	bne	.L130
	ldr	r3, [r4, #44]
	cmp	r3, #0
	bne	.L131
.L116:
	bl	drawSelect
	bl	drawPlantBox
	bl	drawElements
	ldr	r4, .L133+8
	ldr	r6, .L133+12
	add	r5, r4, #140
.L118:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L132
.L117:
	add	r4, r4, #28
	cmp	r4, r5
	bne	.L118
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L132:
	ldrb	r2, [r4, #16]	@ zero_extendqisi2
	ldr	r3, [r4, #8]
	str	r2, [sp]
	ldr	r2, [r4, #12]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r6
	b	.L117
.L130:
	ldr	r2, [r4, #16]
	ldr	r3, [r4, #8]
	str	r2, [sp]
	ldr	r5, .L133+16
	ldr	r2, [r4, #12]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #44]
	cmp	r3, #0
	beq	.L116
.L131:
	ldr	r2, [r4, #40]
	ldr	r3, [r4, #32]
	str	r2, [sp]
	ldr	r2, [r4, #36]
	ldr	r1, [r4, #24]
	ldr	r0, [r4, #28]
	ldr	r4, .L133+16
	mov	lr, pc
	bx	r4
	b	.L116
.L134:
	.align	2
.L133:
	.word	cacti
	.word	fillScreen4
	.word	items
	.word	drawRect4
	.word	drawImage4
	.size	drawGame, .-drawGame
	.align	2
	.global	drawItems
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawItems, %function
drawItems:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #24]
	cmp	r3, #0
	bxeq	lr
	push	{r4, lr}
	ldrb	r2, [r0, #16]	@ zero_extendqisi2
	sub	sp, sp, #8
	ldr	r3, [r0, #8]
	str	r2, [sp]
	ldr	r4, .L144
	ldr	r2, [r0, #12]
	ldr	r1, [r0]
	ldr	r0, [r0, #4]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L145:
	.align	2
.L144:
	.word	drawRect4
	.size	drawItems, .-drawItems
	.global	waterNeeded
	.global	nutrientNeeded
	.global	happinessNeeded
	.comm	items,140,4
	.comm	elements,72,4
	.comm	cacti,48,4
	.global	activeCac
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
	.data
	.align	2
	.set	.LANCHOR2,. + 0
	.type	happinessNeeded, %object
	.size	happinessNeeded, 4
happinessNeeded:
	.word	9
	.type	waterNeeded, %object
	.size	waterNeeded, 4
waterNeeded:
	.word	9
	.type	nutrientNeeded, %object
	.size	nutrientNeeded, 4
nutrientNeeded:
	.word	9
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	activeCac, %object
	.size	activeCac, 4
activeCac:
	.space	4
	.type	cactusFlip, %object
	.size	cactusFlip, 4
cactusFlip:
	.space	4
	.type	selectCount, %object
	.size	selectCount, 4
selectCount:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
