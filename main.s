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
	.file	"main.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Feed the plant\000"
	.text
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, #0
	ldr	ip, .L4
	sub	sp, sp, #8
	mov	r2, #83886080
	ldr	r1, .L4+4
	mov	r3, #256
	mov	r0, #3
	ldr	r5, .L4+8
	str	r4, [ip]
	mov	lr, pc
	bx	r5
	ldr	r5, .L4+12
	ldr	r0, .L4+16
	ldr	r3, .L4+20
	mov	lr, pc
	bx	r3
	ldr	r6, .L4+24
	mov	r3, #12
	mov	r2, #88
	mov	r1, #74
	mov	r0, #76
	str	r4, [sp]
	mov	lr, pc
	bx	r6
	mov	r0, r5
	mov	r2, #15
	ldr	r1, .L4+28
	ldr	r3, .L4+32
	mov	lr, pc
	bx	r3
	mov	r2, r5
	mov	r1, #76
	mov	r0, #78
	mov	r3, #39
	ldr	r5, .L4+36
	mov	lr, pc
	bx	r5
	ldr	r3, .L4+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+48
	str	r4, [r3]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	seed
	.word	cactiBGPal
	.word	DMANow
	.word	buffer
	.word	cactiBGBitmap
	.word	drawFullscreenImage4
	.word	drawRect4
	.word	.LC0
	.word	memcpy
	.word	drawString4
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	ldr	r2, .L7
	strh	r2, [r3]	@ movhi
	b	goToStart
.L8:
	.align	2
.L7:
	.word	1044
	.size	initialize, .-initialize
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L16
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L16+4
	ldr	r2, .L16+8
	ldr	r0, [r3]
	ldrh	r2, [r2]
	add	r0, r0, #1
	tst	r2, #8
	str	r0, [r3]
	beq	.L9
	ldr	r3, .L16+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L15
.L9:
	pop	{r4, lr}
	bx	lr
.L15:
	ldr	r3, .L16+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L16+20
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L16+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
	.word	waitForVBlank
	.word	seed
	.word	oldButtons
	.word	buttons
	.word	srand
	.word	initGame
	.word	state
	.size	start, .-start
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #1
	ldr	r3, .L19
	str	r2, [r3]
	bx	lr
.L20:
	.align	2
.L19:
	.word	state
	.size	goToGame, .-goToGame
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"Game paused.\000"
	.text
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L23
	mov	r0, #255
	ldr	r3, .L23+4
	mov	lr, pc
	bx	r3
	mov	r0, r4
	mov	r2, #13
	ldr	r1, .L23+8
	ldr	r3, .L23+12
	mov	lr, pc
	bx	r3
	mov	r2, r4
	mov	r1, #66
	mov	r0, #84
	mov	r3, #249
	ldr	r4, .L23+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L23+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L23+24
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L23+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L24:
	.align	2
.L23:
	.word	buffer
	.word	fillScreen4
	.word	.LC1
	.word	memcpy
	.word	drawString4
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L31
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L31+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L25
	ldr	r3, .L31+8
	ldrh	r3, [r3]
	tst	r3, #8
	moveq	r2, #1
	ldreq	r3, .L31+12
	streq	r2, [r3]
.L25:
	pop	{r4, lr}
	bx	lr
.L32:
	.align	2
.L31:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	state
	.size	pause, .-pause
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"You win!\000"
	.text
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r2, #83886080
	sub	sp, sp, #12
	ldr	r1, .L35
	mov	r3, #256
	mov	r0, #3
	ldr	r4, .L35+4
	mov	lr, pc
	bx	r4
	ldr	r0, .L35+8
	ldr	r3, .L35+12
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r4, .L35+16
	str	r3, [sp]
	mov	r2, #88
	mov	r3, #12
	mov	r1, #38
	mov	r0, #76
	ldr	r5, .L35+20
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r2, #9
	ldr	r1, .L35+24
	ldr	r3, .L35+28
	mov	lr, pc
	bx	r3
	mov	r2, r4
	mov	r1, #40
	mov	r0, #98
	mov	r3, #4
	ldr	r4, .L35+32
	mov	lr, pc
	bx	r4
	ldr	r3, .L35+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L35+40
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L35+44
	str	r2, [r3]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L36:
	.align	2
.L35:
	.word	winBGPal
	.word	DMANow
	.word	winBGBitmap
	.word	drawFullscreenImage4
	.word	buffer
	.word	drawRect4
	.word	.LC2
	.word	memcpy
	.word	drawString4
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L44
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L44+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L37
	ldr	r3, .L44+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L43
.L37:
	pop	{r4, lr}
	bx	lr
.L43:
	pop	{r4, lr}
	b	goToStart
.L45:
	.align	2
.L44:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	win, .-win
	.section	.rodata.str1.4
	.align	2
.LC3:
	.ascii	"You Lose.\000"
	.text
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r2, #83886080
	sub	sp, sp, #12
	ldr	r1, .L48
	mov	r3, #256
	mov	r0, #3
	ldr	r4, .L48+4
	mov	lr, pc
	bx	r4
	ldr	r0, .L48+8
	ldr	r3, .L48+12
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r4, .L48+16
	str	r3, [sp]
	mov	r2, #88
	mov	r3, #12
	mov	r1, #38
	mov	r0, #76
	ldr	r5, .L48+20
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r2, #10
	ldr	r1, .L48+24
	ldr	r3, .L48+28
	mov	lr, pc
	bx	r3
	mov	r2, r4
	mov	r1, #40
	mov	r0, #93
	mov	r3, #5
	ldr	r4, .L48+32
	mov	lr, pc
	bx	r4
	ldr	r3, .L48+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L48+40
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L48+44
	str	r2, [r3]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L49:
	.align	2
.L48:
	.word	LoseBgPal
	.word	DMANow
	.word	LoseBgBitmap
	.word	drawFullscreenImage4
	.word	buffer
	.word	drawRect4
	.word	.LC3
	.word	memcpy
	.word	drawString4
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToLose, .-goToLose
	.section	.rodata.str1.4
	.align	2
.LC4:
	.ascii	"H:%d\000"
	.align	2
.LC5:
	.ascii	"T:%d\000"
	.align	2
.LC6:
	.ascii	"N:%d\000"
	.text
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L69
	ldr	r4, .L69+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L69+8
	mov	lr, pc
	bx	r3
	ldr	r6, .L69+12
	ldr	r2, [r4]
	ldr	r1, .L69+16
	ldr	r0, .L69+20
	mov	lr, pc
	bx	r6
	ldr	r5, .L69+24
	mov	r3, #250
	mov	r1, #135
	mov	r0, #8
	ldr	r2, .L69+20
	mov	lr, pc
	bx	r5
	ldr	r2, [r4, #4]
	ldr	r1, .L69+28
	ldr	r0, .L69+20
	mov	lr, pc
	bx	r6
	mov	r3, #251
	mov	r1, #135
	mov	r0, #40
	ldr	r2, .L69+20
	mov	lr, pc
	bx	r5
	ldr	r2, [r4, #8]
	ldr	r1, .L69+32
	ldr	r0, .L69+20
	mov	lr, pc
	bx	r6
	mov	r1, #135
	mov	r0, #72
	ldr	r2, .L69+20
	mov	r3, #252
	mov	lr, pc
	bx	r5
	ldr	r3, .L69+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L69+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L69+44
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L51
	ldr	r3, .L69+48
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L67
.L51:
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L68
	cmp	r3, #10
	beq	.L55
	ldr	r3, [r4, #4]
.L53:
	cmp	r3, #10
	beq	.L55
	ldr	r3, [r4, #8]
.L54:
	cmp	r3, #10
	beq	.L55
	pop	{r4, r5, r6, lr}
	bx	lr
.L68:
	ldr	r3, [r4, #4]
	cmp	r3, #0
	bne	.L53
	ldr	r3, [r4, #8]
	cmp	r3, #0
	bne	.L54
	pop	{r4, r5, r6, lr}
	b	goToWin
.L55:
	pop	{r4, r5, r6, lr}
	b	goToLose
.L67:
	pop	{r4, r5, r6, lr}
	b	goToPause
.L70:
	.align	2
.L69:
	.word	updateGame
	.word	itemsNeeded
	.word	drawGame
	.word	sprintf
	.word	.LC4
	.word	buffer
	.word	drawString4
	.word	.LC5
	.word	.LC6
	.word	waitForVBlank
	.word	flipPage
	.word	oldButtons
	.word	buttons
	.size	game, .-game
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	ldr	r1, .L82
	push	{r4, r7, fp, lr}
	ldr	r3, .L82+4
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r6, .L82+8
	ldr	fp, .L82+12
	ldr	r5, .L82+16
	ldr	r10, .L82+20
	ldr	r9, .L82+24
	ldr	r8, .L82+28
	ldr	r7, .L82+32
	ldr	r4, .L82+36
.L72:
	ldr	r2, [r6]
	ldrh	r3, [fp]
.L73:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [fp]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L73
.L75:
	.word	.L78
	.word	.L77
	.word	.L76
	.word	.L74
	.word	.L74
.L74:
	mov	lr, pc
	bx	r7
	b	.L72
.L76:
	mov	lr, pc
	bx	r8
	b	.L72
.L77:
	mov	lr, pc
	bx	r9
	b	.L72
.L78:
	mov	lr, pc
	bx	r10
	b	.L72
.L83:
	.align	2
.L82:
	.word	1044
	.word	goToStart
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	game
	.word	pause
	.word	win
	.word	67109120
	.size	main, .-main
	.text
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.comm	buffer,41,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	seed,4,4
	.comm	state,4,4
	.comm	addElement,4,4
	.comm	activeCac,4,4
	.comm	selectCount,4,4
	.comm	cactusFlip,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
