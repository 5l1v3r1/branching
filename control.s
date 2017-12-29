	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 4
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"control.c"
	.text
	.align	2
	.global	while_loop_signed
	.syntax unified
	.arm
	.fpu vfp
	.type	while_loop_signed, %function
while_loop_signed:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldr	r6, .L11
	mov	r5, #0
.L2:
	cmp	r5, r4
	blt	.L3
	ldr	r6, .L11+4
	mov	r5, #0
.L4:
	cmp	r5, r4
	ble	.L5
	ldr	r6, .L11+8
	mov	r5, r4
.L6:
	cmp	r5, #0
	bgt	.L7
	ldr	r5, .L11+12
.L8:
	cmp	r4, #0
	bge	.L9
	pop	{r4, r5, r6, pc}
.L3:
	mov	r0, r6
	bl	puts
	add	r5, r5, #1
	b	.L2
.L5:
	mov	r0, r6
	bl	puts
	add	r5, r5, #1
	b	.L4
.L7:
	mov	r0, r6
	bl	puts
	sub	r5, r5, #1
	b	.L6
.L9:
	mov	r0, r5
	bl	puts
	sub	r4, r4, #1
	b	.L8
.L12:
	.align	2
.L11:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.size	while_loop_signed, .-while_loop_signed
	.align	2
	.global	while_loop_unsigned
	.syntax unified
	.arm
	.fpu vfp
	.type	while_loop_unsigned, %function
while_loop_unsigned:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	ldr	r6, .L22
	mov	r5, #0
.L14:
	cmp	r5, r4
	bne	.L15
	ldr	r7, .L22+4
	mov	r6, #0
.L16:
	mov	r0, r7
	add	r6, r6, #1
	bl	puts
	cmp	r5, r6
	bcs	.L16
	ldr	r5, .L22+8
.L17:
	cmp	r4, #0
	bne	.L18
	ldr	r4, .L22+12
.L19:
	mov	r0, r4
	bl	puts
	b	.L19
.L15:
	mov	r0, r6
	bl	puts
	add	r5, r5, #1
	b	.L14
.L18:
	mov	r0, r5
	bl	puts
	sub	r4, r4, #1
	b	.L17
.L23:
	.align	2
.L22:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.size	while_loop_unsigned, .-while_loop_unsigned
	.align	2
	.global	do_while_loop_signed
	.syntax unified
	.arm
	.fpu vfp
	.type	do_while_loop_signed, %function
do_while_loop_signed:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldr	r6, .L34
	mov	r5, #0
.L25:
	mov	r0, r6
	add	r5, r5, #1
	bl	puts
	cmp	r5, r4
	blt	.L25
	ldr	r6, .L34+4
	mov	r5, #0
.L26:
	mov	r0, r6
	add	r5, r5, #1
	bl	puts
	cmp	r4, r5
	bge	.L26
	ldr	r6, .L34+8
	mov	r5, r4
.L27:
	mov	r0, r6
	sub	r5, r5, #1
	bl	puts
	cmp	r5, #0
	bgt	.L27
	ldr	r5, .L34+12
.L28:
	mov	r0, r5
	bl	puts
	subs	r4, r4, #1
	bpl	.L28
	pop	{r4, r5, r6, pc}
.L35:
	.align	2
.L34:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.size	do_while_loop_signed, .-do_while_loop_signed
	.align	2
	.global	do_while_loop_unsigned
	.syntax unified
	.arm
	.fpu vfp
	.type	do_while_loop_unsigned, %function
do_while_loop_unsigned:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldr	r6, .L45
	mov	r5, #0
.L37:
	mov	r0, r6
	add	r5, r5, #1
	bl	puts
	cmp	r5, r4
	bcc	.L37
	ldr	r6, .L45+4
	mov	r5, #0
.L38:
	mov	r0, r6
	add	r5, r5, #1
	bl	puts
	cmp	r4, r5
	bcs	.L38
	ldr	r5, .L45+8
.L39:
	mov	r0, r5
	bl	puts
	subs	r4, r4, #1
	bne	.L39
	ldr	r4, .L45+12
.L40:
	mov	r0, r4
	bl	puts
	b	.L40
.L46:
	.align	2
.L45:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.size	do_while_loop_unsigned, .-do_while_loop_unsigned
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, [r1, #4]
	bl	atoi
	mov	r4, r0
	bl	while_loop_signed
	mov	r0, r4
	bl	while_loop_unsigned
	.size	main, .-main
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC0:
	.ascii	"in LT loop\000"
.LC1:
	.ascii	"in LTE loop\000"
.LC2:
	.ascii	"in GT loop\000"
.LC3:
	.ascii	"in GTE loop\000"
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
