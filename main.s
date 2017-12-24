	.cpu arm7tdmi
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.global	WaitForVblank
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	WaitForVblank, %function
WaitForVblank:
.LFB2:
	.file 1 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\7.1.0\\include\\agb_lib.h"
	.loc 1 1584 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 1585 0
	ldr	r3, .L6
	movs	r2, r3
.L2:
	.loc 1 1585 0 is_stmt 0 discriminator 1
	ldrh	r1, [r3]
	cmp	r1, #159
	bhi	.L2
.L3:
	.loc 1 1586 0 is_stmt 1 discriminator 1
	ldrh	r3, [r2]
	cmp	r3, #159
	bls	.L3
	.loc 1 1587 0
	@ sp needed
	bx	lr
.L7:
	.align	2
.L6:
	.word	67108870
	.cfi_endproc
.LFE2:
	.size	WaitForVblank, .-WaitForVblank
	.align	1
	.global	Sleep
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Sleep, %function
Sleep:
.LFB1:
	.loc 1 1576 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	movs	r4, r0
.LVL1:
.L9:
	.loc 1 1579 0
	subs	r4, r4, #1
	bcs	.L10
.LVL2:
	.loc 1 1581 0
	@ sp needed
.LVL3:
	pop	{r4}
	pop	{r0}
	bx	r0
.LVL4:
.L10:
.LBB120:
	.loc 1 1580 0
	bl	WaitForVblank
.LVL5:
	b	.L9
.LBE120:
	.cfi_endproc
.LFE1:
	.size	Sleep, .-Sleep
	.align	1
	.global	DMA_Copy
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	DMA_Copy, %function
DMA_Copy:
.LFB3:
	.loc 1 1590 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 1591 0
	cmp	r0, #3
	bhi	.L11
	ldr	r4, [sp, #8]
	orrs	r3, r4
.LVL7:
	bl	__gnu_thumb1_case_uqi
.L14:
	.byte	(.L13-.L14)/2
	.byte	(.L15-.L14)/2
	.byte	(.L16-.L14)/2
	.byte	(.L17-.L14)/2
	.p2align 1
.L13:
	.loc 1 1594 0
	ldr	r0, .L19
.LVL8:
	str	r1, [r0]
.LVL9:
	.loc 1 1595 0
	ldr	r1, .L19+4
.LVL10:
	str	r2, [r1]
	.loc 1 1596 0
	ldr	r2, .L19+8
.LVL11:
.L18:
	.loc 1 1612 0
	str	r3, [r2]
.L11:
	.loc 1 1616 0
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.LVL12:
.L15:
	.loc 1 1599 0
	ldr	r0, .L19+12
.LVL13:
	str	r1, [r0]
.LVL14:
	.loc 1 1600 0
	ldr	r1, .L19+16
.LVL15:
	str	r2, [r1]
	.loc 1 1601 0
	ldr	r2, .L19+20
.LVL16:
	b	.L18
.LVL17:
.L16:
	.loc 1 1604 0
	ldr	r0, .L19+24
.LVL18:
	str	r1, [r0]
.LVL19:
	.loc 1 1605 0
	ldr	r1, .L19+28
.LVL20:
	str	r2, [r1]
	.loc 1 1606 0
	ldr	r2, .L19+32
.LVL21:
	b	.L18
.LVL22:
.L17:
	.loc 1 1610 0
	ldr	r0, .L19+36
.LVL23:
	str	r1, [r0]
.LVL24:
	.loc 1 1611 0
	ldr	r1, .L19+40
.LVL25:
	str	r2, [r1]
	.loc 1 1612 0
	ldr	r2, .L19+44
.LVL26:
	b	.L18
.L20:
	.align	2
.L19:
	.word	67109040
	.word	67109044
	.word	67109048
	.word	67109052
	.word	67109056
	.word	67109060
	.word	67109064
	.word	67109068
	.word	67109072
	.word	67109076
	.word	67109080
	.word	67109084
	.cfi_endproc
.LFE3:
	.size	DMA_Copy, .-DMA_Copy
	.align	1
	.global	PlotPixelOpaque
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PlotPixelOpaque, %function
PlotPixelOpaque:
.LFB4:
	.loc 1 1620 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL27:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 1621 0
	movs	r3, #120
	.loc 1 1620 0
	movs	r4, r1
	.loc 1 1621 0
	movs	r1, r4
	muls	r1, r3
.LVL28:
	ldr	r3, .L22
	adds	r0, r1, r0
.LVL29:
	ldr	r3, [r3]
	lsls	r0, r0, #1
	strh	r2, [r0, r3]
	.loc 1 1622 0
	@ sp needed
.LVL30:
	pop	{r4}
	pop	{r0}
	bx	r0
.L23:
	.align	2
.L22:
	.word	.LANCHOR0
	.cfi_endproc
.LFE4:
	.size	PlotPixelOpaque, .-PlotPixelOpaque
	.align	1
	.global	plot3
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	plot3, %function
plot3:
.LFB5:
	.loc 1 1625 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL31:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 1626 0
	movs	r3, #240
	.loc 1 1625 0
	movs	r4, r1
	.loc 1 1626 0
	movs	r1, r4
	muls	r1, r3
.LVL32:
	ldr	r3, .L25
	adds	r0, r1, r0
.LVL33:
	ldr	r3, [r3]
	lsls	r0, r0, #1
	strh	r2, [r0, r3]
	.loc 1 1627 0
	@ sp needed
.LVL34:
	pop	{r4}
	pop	{r0}
	bx	r0
.L26:
	.align	2
.L25:
	.word	.LANCHOR0
	.cfi_endproc
.LFE5:
	.size	plot3, .-plot3
	.align	1
	.global	PlotPixelTransparent
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PlotPixelTransparent, %function
PlotPixelTransparent:
.LFB6:
	.loc 1 1630 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL35:
	.loc 1 1634 0
	movs	r3, #120
	.loc 1 1630 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 1630 0
	movs	r4, r1
.LVL36:
	.loc 1 1634 0
	movs	r1, r4
	muls	r1, r3
.LVL37:
	.loc 1 1637 0
	ldr	r3, .L35
	.loc 1 1634 0
	adds	r0, r1, r0
.LVL38:
	.loc 1 1637 0
	lsls	r0, r0, #16
	ldr	r1, [r3]
	lsrs	r0, r0, #16
	lsls	r0, r0, #1
	adds	r0, r1, r0
.LVL39:
	movs	r3, r2
	movs	r1, #255
	bics	r3, r1
	.loc 1 1639 0
	tst	r2, r1
	bne	.L28
	.loc 1 1641 0
	cmp	r3, #0
	beq	.L27
	.loc 1 1644 0
	ldrh	r3, [r0]
	ands	r3, r1
.LVL40:
.L34:
	.loc 1 1652 0
	orrs	r2, r3
.LVL41:
.L30:
	.loc 1 1656 0
	strh	r2, [r0]
.L27:
	.loc 1 1657 0
	@ sp needed
.LVL42:
	pop	{r4}
	pop	{r0}
	bx	r0
.LVL43:
.L28:
	.loc 1 1649 0
	cmp	r3, #0
	bne	.L30
	.loc 1 1651 0
	ldrh	r3, [r0]
	bics	r3, r1
	b	.L34
.L36:
	.align	2
.L35:
	.word	.LANCHOR0
	.cfi_endproc
.LFE6:
	.size	PlotPixelTransparent, .-PlotPixelTransparent
	.align	1
	.global	DrawBitmapTransparent
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	DrawBitmapTransparent, %function
DrawBitmapTransparent:
.LFB7:
	.loc 1 1660 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL44:
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	movs	r4, r1
	.loc 1 1665 0
	movs	r5, #0
	.loc 1 1660 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 40
	.loc 1 1662 0
	lsrs	r7, r3, #1
	adds	r3, r2, r1
.LVL45:
	.loc 1 1660 0
	str	r0, [sp, #12]
.LVL46:
	str	r3, [sp, #8]
.LVL47:
.L38:
	.loc 1 1665 0 discriminator 1
	ldr	r3, [sp, #8]
	cmp	r4, r3
	bne	.L41
	.loc 1 1671 0
	add	sp, sp, #20
	@ sp needed
.LVL48:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.LVL49:
.L41:
	.loc 1 1667 0
	movs	r6, #0
	ldr	r2, [sp, #40]
	lsls	r3, r5, #1
	adds	r3, r2, r3
	str	r3, [sp, #4]
.LVL50:
.L39:
	.loc 1 1667 0 is_stmt 0 discriminator 1
	lsls	r3, r6, #16
	lsrs	r3, r3, #16
	cmp	r7, r3
	bhi	.L40
	adds	r5, r7, r5
.LVL51:
	lsls	r5, r5, #16
	lsrs	r5, r5, #16
	adds	r4, r4, #1
	b	.L38
.LVL52:
.L40:
	.loc 1 1668 0 is_stmt 1 discriminator 3
	ldr	r2, [sp, #4]
	lsls	r3, r6, #1
	ldrh	r2, [r2, r3]
	ldr	r3, [sp, #12]
	movs	r1, r4
	adds	r0, r3, r6
	bl	PlotPixelTransparent
.LVL53:
	adds	r6, r6, #1
.LVL54:
	b	.L39
	.cfi_endproc
.LFE7:
	.size	DrawBitmapTransparent, .-DrawBitmapTransparent
	.align	1
	.global	DrawBitmapOpaque
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	DrawBitmapOpaque, %function
DrawBitmapOpaque:
.LFB8:
	.loc 1 1673 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL55:
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	movs	r4, r1
	.loc 1 1678 0
	movs	r5, #0
	.loc 1 1673 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 40
	.loc 1 1675 0
	lsrs	r7, r3, #1
	adds	r3, r2, r1
.LVL56:
	.loc 1 1673 0
	str	r0, [sp, #12]
.LVL57:
	str	r3, [sp, #8]
.LVL58:
.L43:
	.loc 1 1678 0 discriminator 1
	ldr	r3, [sp, #8]
	cmp	r4, r3
	bne	.L46
	.loc 1 1685 0
	add	sp, sp, #20
	@ sp needed
.LVL59:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.LVL60:
.L46:
	.loc 1 1680 0
	movs	r6, #0
	ldr	r2, [sp, #40]
	lsls	r3, r5, #1
	adds	r3, r2, r3
	str	r3, [sp, #4]
.LVL61:
.L44:
	.loc 1 1680 0 is_stmt 0 discriminator 1
	lsls	r3, r6, #16
	lsrs	r3, r3, #16
	cmp	r7, r3
	bhi	.L45
	adds	r5, r7, r5
.LVL62:
	lsls	r5, r5, #16
	lsrs	r5, r5, #16
	adds	r4, r4, #1
	b	.L43
.LVL63:
.L45:
	.loc 1 1681 0 is_stmt 1 discriminator 3
	ldr	r2, [sp, #4]
	lsls	r3, r6, #1
	ldrh	r2, [r2, r3]
	ldr	r3, [sp, #12]
	movs	r1, r4
	adds	r0, r3, r6
	bl	PlotPixelOpaque
.LVL64:
	adds	r6, r6, #1
.LVL65:
	b	.L44
	.cfi_endproc
.LFE8:
	.size	DrawBitmapOpaque, .-DrawBitmapOpaque
	.align	1
	.global	DrawFullScreenOpaque
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	DrawFullScreenOpaque, %function
DrawFullScreenOpaque:
.LFB9:
	.loc 1 1688 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL66:
	.loc 1 1697 0
	ldr	r3, .L52
	ldr	r2, [r3]
	movs	r3, #150
	.loc 1 1688 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	lsls	r3, r3, #8
	adds	r1, r0, r3
.LVL67:
.L49:
	.loc 1 1688 0
	movs	r3, #0
.LVL68:
.L48:
	.loc 1 1697 0 discriminator 3
	ldrh	r4, [r0, r3]
	strh	r4, [r2, r3]
	adds	r3, r3, #2
	.loc 1 1695 0 discriminator 3
	cmp	r3, #240
	bne	.L48
	adds	r0, r0, #240
	adds	r2, r2, #240
	.loc 1 1692 0 discriminator 2
	cmp	r0, r1
	bne	.L49
	.loc 1 1701 0
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L53:
	.align	2
.L52:
	.word	.LANCHOR0
	.cfi_endproc
.LFE9:
	.size	DrawFullScreenOpaque, .-DrawFullScreenOpaque
	.align	1
	.global	Flip
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Flip, %function
Flip:
.LFB10:
	.loc 1 1704 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 1705 0
	bl	WaitForVblank
.LVL69:
	.loc 1 1707 0
	movs	r0, #128
	movs	r3, #16
	lsls	r0, r0, #19
	ldr	r2, [r0]
	ldr	r1, .L58
	tst	r2, r3
	beq	.L55
	.loc 1 1709 0
	bics	r2, r3
	str	r2, [r0]
	.loc 1 1710 0
	ldr	r3, [r1, #4]
.L57:
	.loc 1 1715 0
	str	r3, [r1]
	.loc 1 1717 0
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L55:
	.loc 1 1714 0
	orrs	r3, r2
	str	r3, [r0]
	.loc 1 1715 0
	ldr	r3, [r1, #8]
	b	.L57
.L59:
	.align	2
.L58:
	.word	.LANCHOR0
	.cfi_endproc
.LFE10:
	.size	Flip, .-Flip
	.align	1
	.global	SetPalette
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SetPalette, %function
SetPalette:
.LFB11:
	.loc 1 1719 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL70:
	.loc 1 1720 0
	ldr	r3, .L63
	.loc 1 1721 0
	movs	r2, #128
	.loc 1 1720 0
	ldr	r1, [r3, #12]
.LVL71:
	.loc 1 1721 0
	movs	r3, #0
	.loc 1 1719 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 1721 0
	lsls	r2, r2, #2
.LVL72:
.L61:
	.loc 1 1721 0 is_stmt 0 discriminator 1
	cmp	r3, r2
	bne	.L62
	.loc 1 1722 0 is_stmt 1
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L62:
.LVL73:
	.loc 1 1721 0 discriminator 2
	ldrh	r4, [r0, r3]
	strh	r4, [r1, r3]
	adds	r3, r3, #2
.LVL74:
	b	.L61
.L64:
	.align	2
.L63:
	.word	.LANCHOR0
	.cfi_endproc
.LFE11:
	.size	SetPalette, .-SetPalette
	.align	1
	.global	DrawBitmapSectorTransparent
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	DrawBitmapSectorTransparent, %function
DrawBitmapSectorTransparent:
.LFB12:
	.loc 1 1728 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 20, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL75:
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 48
	.loc 1 1728 0
	add	r4, sp, #60
.LVL76:
	add	r2, sp, #48
.LVL77:
	ldrh	r4, [r4]
.LVL78:
	.loc 1 1730 0
	lsrs	r3, r3, #1
.LVL79:
	.loc 1 1728 0
	ldrh	r5, [r2]
	.loc 1 1730 0
	str	r3, [sp, #4]
	.loc 1 1728 0
	add	r2, sp, #52
.LVL80:
	.loc 1 1731 0
	lsrs	r3, r4, #1
	.loc 1 1728 0
	ldrh	r2, [r2]
.LVL81:
	.loc 1 1734 0
	ldr	r4, [sp, #4]
	muls	r4, r2
	lsrs	r5, r5, #1
	adds	r4, r4, r5
	.loc 1 1737 0
	movs	r6, #0
	movs	r5, r1
	.loc 1 1728 0
	str	r0, [sp, #20]
.LVL82:
	add	r0, sp, #56
.LVL83:
	ldrh	r0, [r0]
.LVL84:
	.loc 1 1731 0
	str	r3, [sp, #8]
.LVL85:
	adds	r3, r0, r1
	.loc 1 1734 0
	lsls	r4, r4, #16
	str	r3, [sp, #16]
	lsrs	r4, r4, #16
.LVL86:
.L66:
	.loc 1 1737 0 discriminator 1
	ldr	r3, [sp, #16]
	cmp	r5, r3
	bne	.L69
	.loc 1 1744 0
	add	sp, sp, #28
	@ sp needed
.LVL87:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.LVL88:
.L69:
	.loc 1 1740 0
	movs	r7, #0
	adds	r3, r6, r4
	ldr	r2, [sp, #64]
	lsls	r3, r3, #1
	adds	r3, r2, r3
	str	r3, [sp, #12]
.LVL89:
.L67:
	.loc 1 1740 0 is_stmt 0 discriminator 1
	ldr	r2, [sp, #8]
	lsls	r3, r7, #16
	lsrs	r3, r3, #16
	cmp	r2, r3
	bhi	.L68
	ldr	r3, [sp, #4]
	adds	r6, r3, r6
.LVL90:
	lsls	r6, r6, #16
	lsrs	r6, r6, #16
	adds	r5, r5, #1
	b	.L66
.LVL91:
.L68:
	.loc 1 1741 0 is_stmt 1 discriminator 3
	ldr	r2, [sp, #12]
	lsls	r3, r7, #1
	ldrh	r2, [r2, r3]
	ldr	r3, [sp, #20]
	movs	r1, r5
	adds	r0, r3, r7
	bl	PlotPixelTransparent
.LVL92:
	adds	r7, r7, #1
.LVL93:
	b	.L67
	.cfi_endproc
.LFE12:
	.size	DrawBitmapSectorTransparent, .-DrawBitmapSectorTransparent
	.align	1
	.global	DrawBitmapSectorOpaque
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	DrawBitmapSectorOpaque, %function
DrawBitmapSectorOpaque:
.LFB13:
	.loc 1 1751 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 20, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL94:
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 48
	.loc 1 1751 0
	add	r4, sp, #60
.LVL95:
	add	r2, sp, #48
.LVL96:
	ldrh	r4, [r4]
.LVL97:
	.loc 1 1753 0
	lsrs	r3, r3, #1
.LVL98:
	.loc 1 1751 0
	ldrh	r5, [r2]
	.loc 1 1753 0
	str	r3, [sp, #4]
	.loc 1 1751 0
	add	r2, sp, #52
.LVL99:
	.loc 1 1754 0
	lsrs	r3, r4, #1
	.loc 1 1751 0
	ldrh	r2, [r2]
.LVL100:
	.loc 1 1757 0
	ldr	r4, [sp, #4]
	muls	r4, r2
	lsrs	r5, r5, #1
	adds	r4, r4, r5
	.loc 1 1760 0
	movs	r6, #0
	movs	r5, r1
	.loc 1 1751 0
	str	r0, [sp, #20]
.LVL101:
	add	r0, sp, #56
.LVL102:
	ldrh	r0, [r0]
.LVL103:
	.loc 1 1754 0
	str	r3, [sp, #8]
.LVL104:
	adds	r3, r0, r1
	.loc 1 1757 0
	lsls	r4, r4, #16
	str	r3, [sp, #16]
	lsrs	r4, r4, #16
.LVL105:
.L71:
	.loc 1 1760 0 discriminator 1
	ldr	r3, [sp, #16]
	cmp	r5, r3
	bne	.L74
	.loc 1 1767 0
	add	sp, sp, #28
	@ sp needed
.LVL106:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.LVL107:
.L74:
	.loc 1 1763 0
	movs	r7, #0
	adds	r3, r6, r4
	ldr	r2, [sp, #64]
	lsls	r3, r3, #1
	adds	r3, r2, r3
	str	r3, [sp, #12]
.LVL108:
.L72:
	.loc 1 1763 0 is_stmt 0 discriminator 1
	ldr	r2, [sp, #8]
	lsls	r3, r7, #16
	lsrs	r3, r3, #16
	cmp	r2, r3
	bhi	.L73
	ldr	r3, [sp, #4]
	adds	r6, r3, r6
.LVL109:
	lsls	r6, r6, #16
	lsrs	r6, r6, #16
	adds	r5, r5, #1
	b	.L71
.LVL110:
.L73:
	.loc 1 1764 0 is_stmt 1 discriminator 3
	ldr	r2, [sp, #12]
	lsls	r3, r7, #1
	ldrh	r2, [r2, r3]
	ldr	r3, [sp, #20]
	movs	r1, r5
	adds	r0, r3, r7
	bl	PlotPixelOpaque
.LVL111:
	adds	r7, r7, #1
.LVL112:
	b	.L72
	.cfi_endproc
.LFE13:
	.size	DrawBitmapSectorOpaque, .-DrawBitmapSectorOpaque
	.align	1
	.global	PlayWhiteNoise
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PlayWhiteNoise, %function
PlayWhiteNoise:
.LFB14:
	.loc 1 1769 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL113:
	.loc 1 1771 0
	movs	r2, #128
	ldr	r3, .L76
	strh	r2, [r3]
	.loc 1 1772 0
	ldr	r3, .L76+4
	subs	r2, r2, #10
	subs	r2, r2, #255
	strh	r2, [r3]
	.loc 1 1773 0
	ldr	r3, .L76+8
	adds	r2, r2, #139
	strh	r2, [r3]
	.loc 1 1775 0
	ldr	r3, .L76+12
	ldr	r2, .L76+16
	strh	r2, [r3]
	.loc 1 1776 0
	ldr	r3, .L76+20
	.loc 1 1777 0
	@ sp needed
	.loc 1 1776 0
	strh	r0, [r3]
	.loc 1 1777 0
	bx	lr
.L77:
	.align	2
.L76:
	.word	67108996
	.word	67108992
	.word	67108994
	.word	67108984
	.word	-2304
	.word	67108988
	.cfi_endproc
.LFE14:
	.size	PlayWhiteNoise, .-PlayWhiteNoise
	.align	1
	.global	PlayFrequencySweep
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PlayFrequencySweep, %function
PlayFrequencySweep:
.LFB15:
	.loc 1 1779 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL114:
	.loc 1 1781 0
	movs	r2, #128
	ldr	r3, .L79
	strh	r2, [r3]
	.loc 1 1782 0
	ldr	r3, .L79+4
	subs	r2, r2, #10
	subs	r2, r2, #255
	strh	r2, [r3]
	.loc 1 1783 0
	ldr	r3, .L79+8
	adds	r2, r2, #139
	strh	r2, [r3]
	.loc 1 1785 0
	ldr	r3, .L79+12
	adds	r2, r2, #84
	strh	r2, [r3]
	.loc 1 1786 0
	ldr	r3, .L79+16
	ldr	r2, .L79+20
	strh	r2, [r3]
	.loc 1 1787 0
	movs	r3, #128
	lsls	r3, r3, #8
	orrs	r0, r3
.LVL115:
	ldr	r3, .L79+24
	.loc 1 1788 0
	@ sp needed
	.loc 1 1787 0
	strh	r0, [r3]
	.loc 1 1788 0
	bx	lr
.L80:
	.align	2
.L79:
	.word	67108996
	.word	67108992
	.word	67108994
	.word	67108960
	.word	67108962
	.word	-2176
	.word	67108964
	.cfi_endproc
.LFE15:
	.size	PlayFrequencySweep, .-PlayFrequencySweep
	.align	1
	.global	PlayVolumeSweep
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PlayVolumeSweep, %function
PlayVolumeSweep:
.LFB16:
	.loc 1 1790 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL116:
	.loc 1 1792 0
	movs	r2, #128
	ldr	r3, .L82
	strh	r2, [r3]
	.loc 1 1793 0
	ldr	r3, .L82+4
	subs	r2, r2, #10
	subs	r2, r2, #255
	strh	r2, [r3]
	.loc 1 1794 0
	ldr	r3, .L82+8
	adds	r2, r2, #139
	strh	r2, [r3]
	.loc 1 1795 0
	ldr	r3, .L82+12
	ldr	r2, .L82+16
	strh	r2, [r3]
	.loc 1 1796 0
	movs	r3, #128
	lsls	r3, r3, #8
	orrs	r0, r3
.LVL117:
	ldr	r3, .L82+20
	.loc 1 1797 0
	@ sp needed
	.loc 1 1796 0
	strh	r0, [r3]
	.loc 1 1797 0
	bx	lr
.L83:
	.align	2
.L82:
	.word	67108996
	.word	67108992
	.word	67108994
	.word	67108968
	.word	-2176
	.word	67108972
	.cfi_endproc
.LFE16:
	.size	PlayVolumeSweep, .-PlayVolumeSweep
	.align	1
	.global	PlayNote
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PlayNote, %function
PlayNote:
.LFB17:
	.loc 1 1799 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL118:
	.loc 1 1803 0
	movs	r2, #128
	.loc 1 1799 0
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 1804 0
	movs	r4, #137
	.loc 1 1803 0
	ldr	r3, .L85
	strh	r2, [r3]
	.loc 1 1804 0
	ldr	r3, .L85+4
	rsbs	r4, r4, #0
	strh	r4, [r3]
	.loc 1 1806 0
	ldr	r3, .L85+8
	adds	r4, r4, #139
	strh	r4, [r3]
	.loc 1 1808 0
	ldr	r3, .L85+12
	adds	r4, r4, #62
	strh	r4, [r3]
	.loc 1 1809 0
	ldr	r5, .L85+16
	ldr	r4, .L85+20
	.loc 1 1810 0
	ldr	r6, .L85+24
	.loc 1 1809 0
	str	r5, [r4]
	.loc 1 1810 0
	ldr	r4, .L85+28
	str	r4, [r6]
	.loc 1 1811 0
	ldr	r6, .L85+32
	str	r5, [r6]
	.loc 1 1812 0
	ldr	r5, .L85+36
	str	r4, [r5]
	.loc 1 1813 0
	movs	r4, #0
	strh	r4, [r3]
	.loc 1 1815 0
	ldrh	r4, [r3]
	.loc 1 1801 0
	mvns	r1, r1
.LVL119:
	.loc 1 1815 0
	orrs	r2, r4
	strh	r2, [r3]
	.loc 1 1817 0
	movs	r3, #128
	lsls	r1, r1, #24
	lsls	r3, r3, #6
	lsrs	r1, r1, #24
	orrs	r1, r3
	ldr	r3, .L85+40
	strh	r1, [r3]
	.loc 1 1818 0
	movs	r3, #192
	lsls	r3, r3, #8
	orrs	r0, r3
.LVL120:
	ldr	r3, .L85+44
	.loc 1 1819 0
	@ sp needed
	.loc 1 1818 0
	strh	r0, [r3]
	.loc 1 1819 0
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L86:
	.align	2
.L85:
	.word	67108996
	.word	67108992
	.word	67108994
	.word	67108976
	.word	271733878
	.word	67109008
	.word	67109012
	.word	-1732584194
	.word	67109016
	.word	67109020
	.word	67108978
	.word	67108980
	.cfi_endproc
.LFE17:
	.size	PlayNote, .-PlayNote
	.align	1
	.global	DrawPixel3
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	DrawPixel3, %function
DrawPixel3:
.LFB127:
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	bl	plot3
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
	.cfi_endproc
.LFE127:
	.size	DrawPixel3, .-DrawPixel3
	.align	1
	.global	DrawChar
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	DrawChar, %function
DrawChar:
.LFB20:
	.loc 1 1844 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL121:
	.loc 1 1844 0
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 40
	.loc 1 1844 0
	str	r3, [sp, #8]
	add	r3, sp, #40
.LVL122:
	ldrh	r3, [r3]
.LVL123:
	str	r3, [sp, #12]
	movs	r3, r1
	movs	r6, r0
.LVL124:
	movs	r7, r1
	.loc 1 1851 0
	subs	r2, r2, #32
.LVL125:
	lsls	r4, r2, #6
	adds	r3, r3, #8
	ldr	r2, .L96
	subs	r4, r4, r0
	str	r3, [sp, #4]
	adds	r4, r4, r2
.LVL126:
.L89:
	movs	r3, r6
	.loc 1 1844 0
	movs	r5, r6
	adds	r3, r3, #8
	str	r3, [sp]
.LVL127:
.L92:
	.loc 1 1852 0
	ldrb	r3, [r4, r5]
	.loc 1 1853 0
	ldr	r2, [sp, #8]
	.loc 1 1852 0
	cmp	r3, #0
	bne	.L95
	.loc 1 1855 0
	ldr	r2, [sp, #12]
.L95:
	movs	r0, r5
	movs	r1, r7
	bl	plot3
.LVL128:
	.loc 1 1849 0
	ldr	r3, [sp]
	adds	r5, r5, #1
.LVL129:
	cmp	r5, r3
	bne	.L92
.LVL130:
	.loc 1 1848 0 discriminator 2
	ldr	r3, [sp, #4]
	adds	r7, r7, #1
.LVL131:
	adds	r4, r4, #8
	cmp	r7, r3
	bne	.L89
	.loc 1 1857 0
	add	sp, sp, #20
	@ sp needed
.LVL132:
.LVL133:
.LVL134:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L97:
	.align	2
.L96:
	.word	font_matrix
	.cfi_endproc
.LFE20:
	.size	DrawChar, .-DrawChar
	.align	1
	.global	Print
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Print, %function
Print:
.LFB19:
	.loc 1 1834 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL135:
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	movs	r6, r1
	movs	r5, r2
	movs	r4, r0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 40
	.loc 1 1834 0
	movs	r7, r3
	add	r3, sp, #40
.LVL136:
	ldrh	r3, [r3]
.LVL137:
	str	r3, [sp, #12]
.LVL138:
.L99:
	.loc 1 1836 0
	ldrb	r2, [r5]
	cmp	r2, #0
	bne	.L100
	.loc 1 1841 0
	add	sp, sp, #20
	@ sp needed
.LVL139:
.LVL140:
.LVL141:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.LVL142:
.L100:
	.loc 1 1838 0
	ldr	r3, [sp, #12]
	movs	r0, r4
	str	r3, [sp]
	movs	r1, r6
	movs	r3, r7
	adds	r5, r5, #1
.LVL143:
	bl	DrawChar
.LVL144:
	adds	r4, r4, #8
.LVL145:
	b	.L99
	.cfi_endproc
.LFE19:
	.size	Print, .-Print
	.align	1
	.global	DrawPixel4
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	DrawPixel4, %function
DrawPixel4:
.LFB125:
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	bl	PlotPixelOpaque
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
	.cfi_endproc
.LFE125:
	.size	DrawPixel4, .-DrawPixel4
	.align	1
	.global	DrawChar4
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	DrawChar4, %function
DrawChar4:
.LFB23:
	.loc 1 1880 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL146:
	.loc 1 1880 0
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 40
	.loc 1 1880 0
	str	r3, [sp, #8]
	add	r3, sp, #40
.LVL147:
	ldrh	r3, [r3]
.LVL148:
	str	r3, [sp, #12]
	movs	r3, r1
	movs	r6, r0
.LVL149:
	movs	r7, r1
	.loc 1 1887 0
	subs	r2, r2, #32
.LVL150:
	lsls	r4, r2, #6
	adds	r3, r3, #8
	ldr	r2, .L110
	subs	r4, r4, r0
	str	r3, [sp, #4]
	adds	r4, r4, r2
.LVL151:
.L103:
	movs	r3, r6
	.loc 1 1880 0
	movs	r5, r6
	adds	r3, r3, #8
	str	r3, [sp]
.LVL152:
.L106:
	.loc 1 1888 0
	ldrb	r3, [r4, r5]
	.loc 1 1889 0
	ldr	r2, [sp, #8]
	.loc 1 1888 0
	cmp	r3, #0
	bne	.L109
	.loc 1 1891 0
	ldr	r2, [sp, #12]
.L109:
	movs	r0, r5
	movs	r1, r7
	bl	PlotPixelOpaque
.LVL153:
	.loc 1 1885 0
	ldr	r3, [sp]
	adds	r5, r5, #1
.LVL154:
	cmp	r5, r3
	bne	.L106
.LVL155:
	.loc 1 1884 0 discriminator 2
	ldr	r3, [sp, #4]
	adds	r7, r7, #1
.LVL156:
	adds	r4, r4, #8
	cmp	r7, r3
	bne	.L103
	.loc 1 1893 0
	add	sp, sp, #20
	@ sp needed
.LVL157:
.LVL158:
.LVL159:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L111:
	.align	2
.L110:
	.word	font_matrix
	.cfi_endproc
.LFE23:
	.size	DrawChar4, .-DrawChar4
	.align	1
	.global	Print4
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Print4, %function
Print4:
.LFB22:
	.loc 1 1870 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL160:
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	movs	r6, r1
	movs	r5, r2
	movs	r4, r0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 40
	.loc 1 1870 0
	movs	r7, r3
	add	r3, sp, #40
.LVL161:
	ldrh	r3, [r3]
.LVL162:
	str	r3, [sp, #12]
.LVL163:
.L113:
	.loc 1 1872 0
	ldrb	r2, [r5]
	cmp	r2, #0
	bne	.L114
	.loc 1 1877 0
	add	sp, sp, #20
	@ sp needed
.LVL164:
.LVL165:
.LVL166:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.LVL167:
.L114:
	.loc 1 1874 0
	ldr	r3, [sp, #12]
	movs	r0, r4
	str	r3, [sp]
	movs	r1, r6
	movs	r3, r7
	adds	r5, r5, #1
.LVL168:
	bl	DrawChar4
.LVL169:
	adds	r4, r4, #8
.LVL170:
	b	.L113
	.cfi_endproc
.LFE22:
	.size	Print4, .-Print4
	.align	1
	.global	SleepQ
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SleepQ, %function
SleepQ:
.LFB24:
	.loc 1 1896 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL171:
	.loc 1 1904 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE24:
	.size	SleepQ, .-SleepQ
	.align	1
	.global	FadeOut
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	FadeOut, %function
FadeOut:
.LFB25:
	.loc 1 1909 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL172:
	.loc 1 1912 0
	movs	r2, #247
	.loc 1 1909 0
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 1909 0
	movs	r6, r0
.LVL173:
	.loc 1 1912 0
	movs	r4, #0
	ldr	r3, .L121
	strh	r2, [r3]
.LVL174:
.L119:
	.loc 1 1915 0
	movs	r5, r6
	.loc 1 1916 0
	ldr	r3, .L121+4
	strh	r4, [r3]
.LVL175:
.L117:
	.loc 1 1917 0
	subs	r5, r5, #1
	bcs	.L118
.LVL176:
	adds	r4, r4, #1
.LVL177:
	.loc 1 1913 0 discriminator 2
	cmp	r4, #17
	bne	.L119
	.loc 1 1920 0
	@ sp needed
.LVL178:
.LVL179:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.LVL180:
.L118:
	.loc 1 1918 0
	bl	WaitForVblank
.LVL181:
	b	.L117
.L122:
	.align	2
.L121:
	.word	67108944
	.word	67108948
	.cfi_endproc
.LFE25:
	.size	FadeOut, .-FadeOut
	.align	1
	.global	FadeIn
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	FadeIn, %function
FadeIn:
.LFB26:
	.loc 1 1924 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL182:
	.loc 1 1927 0
	movs	r2, #247
	.loc 1 1924 0
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 1924 0
	movs	r6, r0
.LVL183:
	.loc 1 1927 0
	movs	r4, #16
	ldr	r3, .L128
	strh	r2, [r3]
.LVL184:
.L126:
	.loc 1 1930 0
	movs	r5, r6
	.loc 1 1931 0
	ldr	r3, .L128+4
	strh	r4, [r3]
.LVL185:
.L124:
	.loc 1 1932 0
	subs	r5, r5, #1
	bcs	.L125
.LVL186:
	subs	r4, r4, #1
.LVL187:
	.loc 1 1928 0 discriminator 2
	ldr	r3, .L128+8
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
	cmp	r4, r3
	bne	.L126
	.loc 1 1935 0
	@ sp needed
.LVL188:
.LVL189:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.LVL190:
.L125:
	.loc 1 1933 0
	bl	WaitForVblank
.LVL191:
	b	.L124
.L129:
	.align	2
.L128:
	.word	67108944
	.word	67108948
	.word	65535
	.cfi_endproc
.LFE26:
	.size	FadeIn, .-FadeIn
	.align	1
	.global	MosaicOut
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MosaicOut, %function
MosaicOut:
.LFB27:
	.loc 1 1938 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL192:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 1938 0
	movs	r5, r0
	movs	r4, #0
.LVL193:
.L131:
	.loc 1 1942 0 discriminator 3
	bl	WaitForVblank
.LVL194:
	.loc 1 1943 0 discriminator 3
	ldr	r3, .L133
	.loc 1 1944 0 discriminator 3
	movs	r0, r5
	.loc 1 1943 0 discriminator 3
	str	r4, [r3]
	.loc 1 1944 0 discriminator 3
	bl	Sleep
.LVL195:
	adds	r4, r4, #2
	.loc 1 1940 0 discriminator 3
	ldr	r3, .L133+4
	adds	r4, r4, #255
	cmp	r4, r3
	bne	.L131
	.loc 1 1946 0
	@ sp needed
.LVL196:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L134:
	.align	2
.L133:
	.word	67108940
	.word	4112
	.cfi_endproc
.LFE27:
	.size	MosaicOut, .-MosaicOut
	.align	1
	.global	MosaicIn
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MosaicIn, %function
MosaicIn:
.LFB28:
	.loc 1 1949 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL197:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 1949 0
	movs	r5, r0
	ldr	r4, .L138
.LVL198:
.L136:
	.loc 1 1953 0 discriminator 3
	bl	WaitForVblank
.LVL199:
	.loc 1 1954 0 discriminator 3
	ldr	r3, .L138+4
	.loc 1 1955 0 discriminator 3
	movs	r0, r5
	.loc 1 1954 0 discriminator 3
	str	r4, [r3]
	.loc 1 1955 0 discriminator 3
	bl	Sleep
.LVL200:
	subs	r4, r4, #2
	.loc 1 1951 0 discriminator 3
	ldr	r3, .L138+8
	subs	r4, r4, #255
	cmp	r4, r3
	bne	.L136
	.loc 1 1957 0
	@ sp needed
.LVL201:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L139:
	.align	2
.L138:
	.word	3855
	.word	67108940
	.word	-257
	.cfi_endproc
.LFE28:
	.size	MosaicIn, .-MosaicIn
	.align	1
	.global	buffer
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	buffer, %function
buffer:
.LFB29:
	.loc 1 1960 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 1964 0
	ldr	r1, .L144
	ldr	r2, [r1, #16]
	ldr	r3, .L144+4
	cmp	r2, #1
	bne	.L141
	.loc 1 1965 0
	movs	r0, #192
	lsls	r0, r0, #19
.L143:
	.loc 1 1967 0
	str	r0, [r3]
	.loc 1 1969 0
	ldr	r3, .L144+8
	lsls	r0, r2, #4
	orrs	r3, r0
	movs	r0, #128
	lsls	r0, r0, #19
	strh	r3, [r0]
	.loc 1 1971 0
	movs	r3, #1
	subs	r3, r3, r2
	str	r3, [r1, #16]
	.loc 1 1972 0
	@ sp needed
	bx	lr
.L141:
	.loc 1 1967 0
	ldr	r0, .L144+12
	b	.L143
.L145:
	.align	2
.L144:
	.word	.LANCHOR0
	.word	v_buffer
	.word	5188
	.word	100704256
	.cfi_endproc
.LFE29:
	.size	buffer, .-buffer
	.align	1
	.global	CopyOAM
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	CopyOAM, %function
CopyOAM:
.LFB30:
	.loc 1 1976 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL202:
	.loc 1 1982 0
	ldr	r3, .L149
	.loc 1 1980 0
	movs	r2, #128
	.loc 1 1982 0
	ldr	r1, [r3, #20]
	movs	r3, #0
	.loc 1 1976 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 1982 0
	ldr	r4, .L149+4
	.loc 1 1980 0
	lsls	r2, r2, #3
.LVL203:
.L147:
	.loc 1 1982 0 discriminator 3
	ldrh	r0, [r4, r3]
	strh	r0, [r1, r3]
	adds	r3, r3, #2
	.loc 1 1980 0 discriminator 3
	cmp	r3, r2
	bne	.L147
	.loc 1 1984 0
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L150:
	.align	2
.L149:
	.word	.LANCHOR0
	.word	sprites
	.cfi_endproc
.LFE30:
	.size	CopyOAM, .-CopyOAM
	.align	1
	.global	InitializeSprites
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	InitializeSprites, %function
InitializeSprites:
.LFB31:
	.loc 1 1990 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL204:
	.loc 1 1992 0
	movs	r1, #128
	.loc 1 1990 0
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 1990 0
	movs	r3, #0
	.loc 1 1994 0
	movs	r4, #160
	.loc 1 1995 0
	movs	r0, #240
	.loc 1 1994 0
	ldr	r5, .L154
	.loc 1 1992 0
	lsls	r1, r1, #3
.LVL205:
.L152:
	.loc 1 1994 0 discriminator 3
	adds	r2, r3, r5
	adds	r3, r3, #8
	strh	r4, [r2]
	.loc 1 1995 0 discriminator 3
	strh	r0, [r2, #2]
	.loc 1 1992 0 discriminator 3
	cmp	r3, r1
	bne	.L152
	.loc 1 1998 0
	movs	r2, #0
	ldr	r3, .L154+4
	.loc 1 1999 0
	@ sp needed
	.loc 1 1998 0
	str	r2, [r3]
	.loc 1 1999 0
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L155:
	.align	2
.L154:
	.word	sprites
	.word	.LANCHOR1
	.cfi_endproc
.LFE31:
	.size	InitializeSprites, .-InitializeSprites
	.align	1
	.global	initSprite
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	initSprite, %function
initSprite:
.LFB32:
	.loc 1 2004 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL206:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 2011 0
	ldr	r3, .L157
	ldr	r4, .L157+4
	lsls	r0, r0, #3
.LVL207:
	strh	r4, [r0, r3]
	.loc 1 2012 0
	adds	r0, r3, r0
	movs	r3, #160
	orrs	r1, r3
.LVL208:
	.loc 1 2013 0
	adds	r3, r3, #97
	adds	r3, r3, #255
	adds	r2, r2, r3
.LVL209:
	.loc 1 2012 0
	strh	r1, [r0, #2]
	.loc 1 2013 0
	strh	r2, [r0, #4]
	.loc 1 2014 0
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L158:
	.align	2
.L157:
	.word	sprites
	.word	8432
	.cfi_endproc
.LFE32:
	.size	initSprite, .-initSprite
	.align	1
	.global	initRotSprite
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	initRotSprite, %function
initRotSprite:
.LFB33:
	.loc 1 2017 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL210:
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 2024 0
	ldr	r3, .L160
	ldr	r5, .L160+4
	lsls	r4, r0, #3
	strh	r5, [r4, r3]
	.loc 1 2025 0
	adds	r3, r3, r4
	movs	r4, #160
	lsls	r0, r0, #9
.LVL211:
	orrs	r1, r4
.LVL212:
	orrs	r0, r1
	.loc 1 2026 0
	movs	r1, #128
	lsls	r1, r1, #2
	adds	r2, r2, r1
.LVL213:
	.loc 1 2025 0
	strh	r0, [r3, #2]
	.loc 1 2026 0
	strh	r2, [r3, #4]
	.loc 1 2027 0
	@ sp needed
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L161:
	.align	2
.L160:
	.word	sprites
	.word	9200
	.cfi_endproc
.LFE33:
	.size	initRotSprite, .-initRotSprite
	.align	1
	.global	updateSprite
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	updateSprite, %function
updateSprite:
.LFB34:
	.loc 1 2030 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL214:
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 2030 0
	movs	r5, r3
.LVL215:
	.loc 1 2034 0
	lsls	r2, r2, #1
.LVL216:
	.loc 1 2036 0
	movs	r3, r5
	muls	r3, r2
.LVL217:
	.loc 1 2038 0
	movs	r2, #128
.LVL218:
	lsls	r4, r0, #3
	lsls	r2, r2, #2
	ldr	r0, .L163
.LVL219:
	adds	r1, r1, r2
.LVL220:
	adds	r0, r0, r4
	adds	r3, r3, r1
.LVL221:
	strh	r3, [r0, #4]
	.loc 1 2039 0
	@ sp needed
.LVL222:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L164:
	.align	2
.L163:
	.word	sprites
	.cfi_endproc
.LFE34:
	.size	updateSprite, .-updateSprite
	.align	1
	.global	MoveSprite
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MoveSprite, %function
MoveSprite:
.LFB35:
	.loc 1 2045 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL223:
	.loc 1 2046 0
	cmp	r1, #0
	bge	.L166
	.loc 1 2047 0
	movs	r3, #128
	lsls	r3, r3, #2
	adds	r1, r1, r3
.LVL224:
.L166:
	.loc 1 2048 0
	cmp	r2, #0
	bge	.L167
	.loc 1 2049 0
	adds	r2, r2, #1
.LVL225:
	adds	r2, r2, #255
.LVL226:
.L167:
	.loc 1 2051 0
	ldrh	r3, [r0, #2]
	lsrs	r3, r3, #9
	lsls	r3, r3, #9
	.loc 1 2052 0
	orrs	r1, r3
.LVL227:
	strh	r1, [r0, #2]
	.loc 1 2054 0
	movs	r1, #255
	ldrh	r3, [r0]
	bics	r3, r1
	.loc 1 2055 0
	orrs	r2, r3
.LVL228:
	strh	r2, [r0]
	.loc 1 2056 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE35:
	.size	MoveSprite, .-MoveSprite
	.global	__aeabi_idivmod
	.global	__aeabi_d2iz
	.align	1
	.global	RotateSprite
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	RotateSprite, %function
RotateSprite:
.LFB36:
	.loc 1 2059 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL229:
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	movs	r4, r0
	movs	r0, r1
.LVL230:
	.loc 1 2063 0
	movs	r1, #180
.LVL231:
	.loc 1 2059 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 40
	.loc 1 2059 0
	str	r2, [sp, #4]
	str	r3, [sp, #8]
	.loc 1 2063 0
	lsls	r1, r1, #1
	ldr	r3, .L169
.LVL232:
	bl	.L171
.LVL233:
	ldr	r3, .L169+4
	lsls	r7, r1, #3
	adds	r3, r3, r7
	ldr	r5, .L169+8
	ldr	r0, [r3]
	ldr	r1, [r3, #4]
	bl	.L172
.LVL234:
	.loc 1 2064 0
	ldr	r1, .L169+12
	adds	r1, r1, r7
	ldr	r3, [r1, #4]
	str	r3, [sp, #12]
	.loc 1 2068 0
	ldr	r3, .L169+16
	ldr	r3, [r3, #24]
	lsls	r4, r4, #5
.LVL235:
	adds	r4, r3, r4
	.loc 1 2063 0
	ldr	r3, [sp, #4]
	muls	r3, r0
	.loc 1 2064 0
	ldr	r7, [r1]
	.loc 1 2063 0
	asrs	r3, r3, #8
	movs	r6, r0
.LVL236:
	.loc 1 2068 0
	strh	r3, [r4, #6]
	.loc 1 2064 0
	ldr	r1, [sp, #12]
.LVL237:
	movs	r0, r7
.LVL238:
	bl	.L172
.LVL239:
	.loc 1 2065 0
	movs	r2, #128
	lsls	r2, r2, #24
	mov	ip, r2
	.loc 1 2064 0
	ldr	r3, [sp, #8]
	muls	r3, r0
	asrs	r0, r3, #8
	.loc 1 2065 0
	ldr	r3, [sp, #12]
	add	r3, r3, ip
	.loc 1 2069 0
	strh	r0, [r4, #14]
	.loc 1 2065 0
	movs	r1, r3
	movs	r0, r7
	bl	.L172
.LVL240:
	ldr	r3, [sp, #4]
	muls	r3, r0
	asrs	r0, r3, #8
	.loc 1 2066 0
	ldr	r3, [sp, #8]
	muls	r3, r6
	asrs	r6, r3, #8
.LVL241:
	.loc 1 2070 0
	strh	r0, [r4, #22]
	.loc 1 2071 0
	strh	r6, [r4, #30]
	.loc 1 2072 0
	add	sp, sp, #20
	@ sp needed
.LVL242:
.LVL243:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L170:
	.align	2
.L169:
	.word	__aeabi_idivmod
	.word	COS
	.word	__aeabi_d2iz
	.word	SIN
	.word	.LANCHOR0
	.cfi_endproc
.LFE36:
	.size	RotateSprite, .-RotateSprite
	.align	1
	.global	loadSpritePal
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	loadSpritePal, %function
loadSpritePal:
.LFB37:
	.loc 1 2080 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL244:
	.loc 1 2084 0
	ldr	r3, .L176
	.loc 1 2083 0
	movs	r2, #128
	.loc 1 2084 0
	ldr	r1, [r3, #28]
	movs	r3, #0
	.loc 1 2080 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 2083 0
	lsls	r2, r2, #2
.LVL245:
.L174:
	.loc 1 2084 0 discriminator 3
	ldrh	r4, [r0, r3]
	strh	r4, [r1, r3]
	adds	r3, r3, #2
	.loc 1 2083 0 discriminator 3
	cmp	r3, r2
	bne	.L174
	.loc 1 2085 0
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L177:
	.align	2
.L176:
	.word	.LANCHOR0
	.cfi_endproc
.LFE37:
	.size	loadSpritePal, .-loadSpritePal
	.align	1
	.global	loadSpriteGraphics
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	loadSpriteGraphics, %function
loadSpriteGraphics:
.LFB38:
	.loc 1 2088 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL246:
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 2094 0
	movs	r4, #0
	.loc 1 2095 0
	ldr	r3, .L181
	ldr	r6, [r3, #32]
	ldr	r3, .L181+4
	ldr	r2, [r3]
	lsls	r7, r2, #1
.LVL247:
.L179:
	.loc 1 2094 0 discriminator 1
	cmp	r4, r1
	blt	.L180
	.loc 1 2097 0
	ldr	r3, .L181+4
	adds	r1, r2, r1
.LVL248:
	str	r1, [r3]
	.loc 1 2098 0
	@ sp needed
.LVL249:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.LVL250:
.L180:
	lsls	r3, r4, #1
	.loc 1 2095 0 discriminator 3
	ldrh	r5, [r0, r3]
	mov	ip, r5
	movs	r5, #128
	adds	r3, r3, r7
	lsls	r5, r5, #7
	adds	r3, r3, r5
	mov	r5, ip
	.loc 1 2094 0 discriminator 3
	adds	r4, r4, #1
.LVL251:
	.loc 1 2095 0 discriminator 3
	strh	r5, [r6, r3]
	b	.L179
.L182:
	.align	2
.L181:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.cfi_endproc
.LFE38:
	.size	loadSpriteGraphics, .-loadSpriteGraphics
	.align	1
	.global	resetOffset
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	resetOffset, %function
resetOffset:
.LFB39:
	.loc 1 2101 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 2102 0
	movs	r2, #0
	ldr	r3, .L184
	.loc 1 2103 0
	@ sp needed
	.loc 1 2102 0
	str	r2, [r3]
	.loc 1 2103 0
	bx	lr
.L185:
	.align	2
.L184:
	.word	.LANCHOR1
	.cfi_endproc
.LFE39:
	.size	resetOffset, .-resetOffset
	.align	1
	.global	bgPal
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	bgPal, %function
bgPal:
.LFB40:
	.loc 1 2106 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL252:
	.loc 1 2106 0
	movs	r3, #160
	.loc 1 2109 0
	ldr	r2, .L189
	.loc 1 2106 0
	lsls	r3, r3, #19
.LVL253:
.L187:
	.loc 1 2110 0 discriminator 3
	movs	r1, #251
	lsls	r1, r1, #24
	adds	r1, r3, r1
	ldrh	r1, [r0, r1]
	strh	r1, [r3]
	adds	r3, r3, #2
	.loc 1 2109 0 discriminator 3
	cmp	r3, r2
	bne	.L187
	.loc 1 2112 0
	@ sp needed
	bx	lr
.L190:
	.align	2
.L189:
	.word	83886574
	.cfi_endproc
.LFE40:
	.size	bgPal, .-bgPal
	.align	1
	.global	bgPic
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	bgPic, %function
bgPic:
.LFB41:
	.loc 1 2116 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL254:
	.loc 1 2120 0
	ldr	r3, .L194
	.loc 1 2119 0
	movs	r2, #150
	.loc 1 2120 0
	ldr	r1, [r3]
	movs	r3, #0
	.loc 1 2116 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 2119 0
	lsls	r2, r2, #8
.LVL255:
.L192:
	.loc 1 2120 0 discriminator 3
	ldrh	r4, [r0, r3]
	strh	r4, [r1, r3]
	adds	r3, r3, #2
	.loc 1 2119 0 discriminator 3
	cmp	r3, r2
	bne	.L192
	.loc 1 2122 0
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L195:
	.align	2
.L194:
	.word	v_buffer
	.cfi_endproc
.LFE41:
	.size	bgPic, .-bgPic
	.align	1
	.global	bgPic2Buffer
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	bgPic2Buffer, %function
bgPic2Buffer:
.LFB42:
	.loc 1 2125 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL256:
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 2128 0
	movs	r2, #150
	.loc 1 2130 0
	movs	r5, #192
	.loc 1 2125 0
	movs	r3, #0
	.loc 1 2131 0
	ldr	r1, .L199
	.loc 1 2130 0
	lsls	r5, r5, #19
	.loc 1 2128 0
	lsls	r2, r2, #8
.LVL257:
.L197:
	.loc 1 2130 0 discriminator 3
	ldrh	r4, [r0, r3]
	strh	r4, [r3, r5]
	.loc 1 2131 0 discriminator 3
	ldrh	r4, [r0, r3]
	strh	r4, [r3, r1]
	adds	r3, r3, #2
	.loc 1 2128 0 discriminator 3
	cmp	r3, r2
	bne	.L197
	.loc 1 2133 0
	@ sp needed
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L200:
	.align	2
.L199:
	.word	100704256
	.cfi_endproc
.LFE42:
	.size	bgPic2Buffer, .-bgPic2Buffer
	.align	1
	.global	SetPalette2
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SetPalette2, %function
SetPalette2:
.LFB46:
	.loc 1 2174 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL258:
	.loc 1 2178 0
	movs	r3, #160
	.loc 1 2181 0
	ldr	r2, .L204
	.loc 1 2178 0
	lsls	r3, r3, #19
.LVL259:
.L202:
	.loc 1 2182 0 discriminator 3
	movs	r1, #251
	lsls	r1, r1, #24
	adds	r1, r3, r1
	ldrh	r1, [r0, r1]
	strh	r1, [r3]
	adds	r3, r3, #2
.LVL260:
	.loc 1 2181 0 discriminator 3
	cmp	r3, r2
	bne	.L202
	.loc 1 2184 0
	@ sp needed
	bx	lr
.L205:
	.align	2
.L204:
	.word	83887104
	.cfi_endproc
.LFE46:
	.size	SetPalette2, .-SetPalette2
	.global	__aeabi_idiv
	.align	1
	.global	FadeToGrayScale
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	FadeToGrayScale, %function
FadeToGrayScale:
.LFB48:
	.loc 1 2225 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL261:
.LBB128:
.LBB129:
	.loc 1 2166 0
	movs	r3, #160
.LBE129:
.LBE128:
	.loc 1 2225 0
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
.LBB133:
.LBB130:
	.loc 1 2168 0
	ldr	r2, .L215
.LBE130:
.LBE133:
	.loc 1 2225 0
	movs	r5, r1
.LBB134:
.LBB131:
	.loc 1 2169 0
	ldr	r1, .L215+4
.LVL262:
.LBE131:
.LBE134:
	.loc 1 2225 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 40
.LBB135:
.LBB132:
	.loc 1 2166 0
	lsls	r3, r3, #19
.LVL263:
.L207:
	.loc 1 2169 0
	movs	r4, #251
	ldrh	r6, [r3]
	lsls	r4, r4, #24
	adds	r4, r3, r4
	adds	r3, r3, #2
.LVL264:
	strh	r6, [r4, r1]
.LVL265:
	.loc 1 2168 0
	cmp	r3, r2
	bne	.L207
.LBE132:
.LBE135:
	.loc 1 2242 0
	movs	r6, #0
	lsls	r3, r0, #8
.LVL266:
	str	r3, [sp, #4]
	ldr	r4, .L215+8
.LVL267:
.L208:
	.loc 1 2238 0 discriminator 3
	movs	r2, #248
	.loc 1 2239 0 discriminator 3
	movs	r1, #248
	.loc 1 2237 0 discriminator 3
	ldr	r3, .L215+4
	ldrh	r3, [r3, r6]
.LVL268:
	.loc 1 2238 0 discriminator 3
	lsls	r2, r2, #5
	lsls	r7, r3, #8
	ands	r7, r2
.LVL269:
	.loc 1 2239 0 discriminator 3
	lsls	r1, r1, #5
	lsls	r2, r3, #3
	ands	r1, r2
	.loc 1 2240 0 discriminator 3
	movs	r2, #248
	lsrs	r3, r3, #2
.LVL270:
	lsls	r2, r2, #5
	ands	r2, r3
	.loc 1 2242 0 discriminator 3
	ldr	r3, [sp, #4]
	.loc 1 2239 0 discriminator 3
	str	r1, [sp, #8]
.LVL271:
	.loc 1 2240 0 discriminator 3
	str	r2, [sp, #12]
.LVL272:
	.loc 1 2242 0 discriminator 3
	subs	r0, r3, r7
	movs	r1, r5
.LVL273:
	ldr	r3, .L215+12
	bl	.L171
.LVL274:
	.loc 1 2245 0 discriminator 3
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #4]
	.loc 1 2242 0 discriminator 3
	strh	r0, [r4]
.LVL275:
	.loc 1 2243 0 discriminator 3
	strh	r7, [r4, #2]
.LVL276:
	.loc 1 2245 0 discriminator 3
	subs	r0, r3, r2
	movs	r1, r5
	ldr	r3, .L215+12
	bl	.L171
.LVL277:
	.loc 1 2246 0 discriminator 3
	mov	r3, sp
	ldrh	r3, [r3, #8]
	.loc 1 2248 0 discriminator 3
	ldr	r2, [sp, #12]
	.loc 1 2246 0 discriminator 3
	strh	r3, [r4, #6]
	.loc 1 2248 0 discriminator 3
	ldr	r3, [sp, #4]
	.loc 1 2245 0 discriminator 3
	strh	r0, [r4, #4]
.LVL278:
	.loc 1 2248 0 discriminator 3
	movs	r1, r5
	subs	r0, r3, r2
	ldr	r3, .L215+12
	bl	.L171
.LVL279:
	.loc 1 2249 0 discriminator 3
	mov	r3, sp
	ldrh	r3, [r3, #12]
	strh	r3, [r4, #10]
	.loc 1 2235 0 discriminator 3
	movs	r3, #128
	adds	r6, r6, #2
.LVL280:
	.loc 1 2248 0 discriminator 3
	strh	r0, [r4, #8]
.LVL281:
	.loc 1 2235 0 discriminator 3
	lsls	r3, r3, #3
	adds	r4, r4, #12
.LVL282:
	cmp	r6, r3
	bne	.L208
.LVL283:
	.loc 1 2252 0
	movs	r4, #1
.LVL284:
	adds	r3, r5, #1
	str	r3, [sp, #8]
.LVL285:
.L209:
.LBB136:
.LBB137:
	.loc 1 2192 0
	ldr	r3, [sp, #8]
	cmp	r3, r4
	bne	.L211
.LBE137:
.LBE136:
	.loc 1 2253 0
	add	sp, sp, #20
	@ sp needed
.LVL286:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.LVL287:
.L211:
.LBB142:
.LBB141:
	.loc 1 2192 0
	movs	r7, #0
	ldr	r2, .L215+8
.LBB138:
	.loc 1 2210 0
	ldr	r6, .L215+4
.L210:
.LVL288:
	.loc 1 2197 0
	movs	r1, #0
	ldrsh	r3, [r2, r1]
.LVL289:
	.loc 1 2198 0
	movs	r1, #2
	ldrsh	r0, [r2, r1]
	adds	r0, r0, r3
.LVL290:
	.loc 1 2201 0
	movs	r1, #4
	ldrsh	r3, [r2, r1]
	.loc 1 2202 0
	movs	r5, #6
	ldrsh	r1, [r2, r5]
	adds	r1, r1, r3
	.loc 1 2205 0
	movs	r5, #8
	ldrsh	r3, [r2, r5]
	str	r3, [sp, #4]
	.loc 1 2206 0
	movs	r3, #10
	ldrsh	r5, [r2, r3]
	mov	ip, r5
	ldr	r3, [sp, #4]
	add	r3, r3, ip
	.loc 1 2203 0
	strh	r1, [r2, #6]
	.loc 1 2207 0
	strh	r3, [r2, #10]
	.loc 1 2209 0
	asrs	r1, r1, #8
	asrs	r3, r3, #8
	lsls	r3, r3, #10
	lsls	r1, r1, #5
	orrs	r1, r3
	.loc 1 2196 0
	movs	r3, #128
	.loc 1 2199 0
	strh	r0, [r2, #2]
.LVL291:
	.loc 1 2209 0
	asrs	r0, r0, #8
.LVL292:
	orrs	r1, r0
	.loc 1 2210 0
	strh	r1, [r6, r7]
.LVL293:
	adds	r7, r7, #2
.LVL294:
	adds	r2, r2, #12
.LVL295:
	.loc 1 2196 0
	lsls	r3, r3, #3
	cmp	r7, r3
	bne	.L210
.LBB139:
.LBB140:
	.loc 1 2152 0
	.syntax divided
@ 2152 "c:\devkitpro\devkitarm\lib\gcc\arm-none-eabi\7.1.0\include\agb_lib.h" 1
	SWI	  5

@ 0 "" 2
.LVL296:
	.thumb
	.syntax unified
.LBE140:
.LBE139:
	.loc 1 2214 0
	movs	r0, r6
	bl	SetPalette2
.LVL297:
	adds	r4, r4, #1
.LVL298:
	b	.L209
.L216:
	.align	2
.L215:
	.word	83887104
	.word	CurrentPalette
	.word	FadeTable
	.word	__aeabi_idiv
.LBE138:
.LBE141:
.LBE142:
	.cfi_endproc
.LFE48:
	.size	FadeToGrayScale, .-FadeToGrayScale
	.align	1
	.global	drawbg2
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	drawbg2, %function
drawbg2:
.LFB49:
	.loc 1 2256 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL299:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 2256 0
	movs	r5, r1
	movs	r4, r0
	.loc 1 2257 0
	bl	bgPic
.LVL300:
	.loc 1 2258 0
	movs	r0, r5
	bl	bgPal
.LVL301:
	.loc 1 2259 0
	movs	r0, r4
	bl	bgPic2Buffer
.LVL302:
	.loc 1 2260 0
	@ sp needed
.LVL303:
.LVL304:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.cfi_endproc
.LFE49:
	.size	drawbg2, .-drawbg2
	.align	1
	.global	setbg2
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	setbg2, %function
setbg2:
.LFB50:
	.loc 1 2263 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL305:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 2263 0
	movs	r5, r0
	movs	r4, r1
	.loc 1 2264 0
	bl	WaitForVblank
.LVL306:
	.loc 1 2265 0
	ldr	r3, .L219
	.loc 1 2266 0
	movs	r0, r4
	.loc 1 2265 0
	str	r5, [r3]
	.loc 1 2266 0
	bl	SetPalette
.LVL307:
	.loc 1 2267 0
	ldr	r3, .L219+4
	ldr	r2, [r3, #36]
	ldr	r3, .L219+8
	str	r2, [r3]
	.loc 1 2268 0
	ldr	r3, .L219+12
	ldr	r2, .L219+16
	.loc 1 2269 0
	@ sp needed
	.loc 1 2268 0
	str	r2, [r3]
.LVL308:
.LVL309:
	.loc 1 2269 0
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L220:
	.align	2
.L219:
	.word	67109076
	.word	.LANCHOR0
	.word	67109080
	.word	67109084
	.word	-2147464448
	.cfi_endproc
.LFE50:
	.size	setbg2, .-setbg2
	.align	1
	.global	setbg2novb
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	setbg2novb, %function
setbg2novb:
.LFB51:
	.loc 1 2272 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL310:
	.loc 1 2273 0
	ldr	r3, .L222
	.loc 1 2272 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 2273 0
	str	r0, [r3]
	.loc 1 2274 0
	movs	r0, r1
.LVL311:
	bl	SetPalette
.LVL312:
	.loc 1 2275 0
	ldr	r3, .L222+4
	ldr	r2, [r3, #36]
	ldr	r3, .L222+8
	str	r2, [r3]
	.loc 1 2276 0
	ldr	r3, .L222+12
	ldr	r2, .L222+16
	.loc 1 2277 0
	@ sp needed
	.loc 1 2276 0
	str	r2, [r3]
	.loc 1 2277 0
	pop	{r4}
	pop	{r0}
	bx	r0
.L223:
	.align	2
.L222:
	.word	67109076
	.word	.LANCHOR0
	.word	67109080
	.word	67109084
	.word	-2147464448
	.cfi_endproc
.LFE51:
	.size	setbg2novb, .-setbg2novb
	.align	1
	.global	setbg2m3
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	setbg2m3, %function
setbg2m3:
.LFB52:
	.loc 1 2280 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL313:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 2280 0
	movs	r4, r0
	.loc 1 2281 0
	bl	WaitForVblank
.LVL314:
	.loc 1 2282 0
	ldr	r3, .L225
	str	r4, [r3]
	.loc 1 2283 0
	ldr	r3, .L225+4
	ldr	r2, [r3, #36]
	ldr	r3, .L225+8
	str	r2, [r3]
	.loc 1 2284 0
	ldr	r3, .L225+12
	ldr	r2, .L225+16
	.loc 1 2285 0
	@ sp needed
	.loc 1 2284 0
	str	r2, [r3]
.LVL315:
	.loc 1 2285 0
	pop	{r4}
	pop	{r0}
	bx	r0
.L226:
	.align	2
.L225:
	.word	67109076
	.word	.LANCHOR0
	.word	67109080
	.word	67109084
	.word	-2147445248
	.cfi_endproc
.LFE52:
	.size	setbg2m3, .-setbg2m3
	.align	1
	.global	InvertBGPalette
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	InvertBGPalette, %function
InvertBGPalette:
.LFB53:
	.loc 1 2289 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL316:
	movs	r1, #160
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 2293 0
	ldr	r0, .L230
	.loc 1 2289 0
	lsls	r1, r1, #19
.LVL317:
.L228:
.LBB143:
	.loc 1 2296 0 discriminator 3
	ldrh	r2, [r1]
	lsls	r2, r2, #16
.LVL318:
	.loc 1 2301 0 discriminator 3
	lsrs	r3, r2, #26
	.loc 1 2300 0 discriminator 3
	lsrs	r4, r2, #21
	.loc 1 2301 0 discriminator 3
	lsls	r3, r3, #3
	.loc 1 2300 0 discriminator 3
	lsls	r4, r4, #3
	.loc 1 2301 0 discriminator 3
	mvns	r3, r3
	.loc 1 2300 0 discriminator 3
	mvns	r4, r4
	.loc 1 2304 0 discriminator 3
	lsls	r3, r3, #24
	lsls	r4, r4, #24
	lsrs	r3, r3, #27
	lsrs	r4, r4, #27
	lsls	r3, r3, #10
	lsls	r4, r4, #5
	.loc 1 2299 0 discriminator 3
	lsrs	r2, r2, #13
.LVL319:
	.loc 1 2304 0 discriminator 3
	adds	r4, r3, r4
	.loc 1 2299 0 discriminator 3
	mvns	r3, r2
	.loc 1 2304 0 discriminator 3
	lsls	r3, r3, #24
	lsrs	r3, r3, #27
	adds	r3, r3, r4
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	adds	r1, r1, #2
.LBE143:
	.loc 1 2293 0 discriminator 3
	cmp	r1, r0
	bne	.L228
	.loc 1 2308 0
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L231:
	.align	2
.L230:
	.word	83886592
	.cfi_endproc
.LFE53:
	.size	InvertBGPalette, .-InvertBGPalette
	.align	1
	.global	CycleBGPalette
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	CycleBGPalette, %function
CycleBGPalette:
.LFB54:
	.loc 1 2313 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 2329 0
	ldr	r3, .L235
	ldr	r1, .L235+4
	ldrh	r2, [r3]
	strh	r2, [r1]
.LVL320:
	.loc 1 2332 0
	ldr	r1, .L235+8
.LVL321:
.L233:
	.loc 1 2335 0 discriminator 3
	ldrh	r2, [r3]
	subs	r0, r3, #2
	adds	r3, r3, #2
	strh	r2, [r0]
	.loc 1 2332 0 discriminator 3
	cmp	r3, r1
	bne	.L233
	.loc 1 2339 0
	@ sp needed
	bx	lr
.L236:
	.align	2
.L235:
	.word	83886082
	.word	83886590
	.word	83886592
	.cfi_endproc
.LFE54:
	.size	CycleBGPalette, .-CycleBGPalette
	.align	1
	.global	initsound16
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	initsound16, %function
initsound16:
.LFB55:
	.loc 1 2350 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL322:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 2351 0
	ldr	r4, .L238
	lsls	r0, r0, #4
.LVL323:
	str	r3, [r0, r4]
	movs	r3, #0
.LVL324:
	adds	r0, r4, r0
.LVL325:
	str	r1, [r0, #4]
	str	r2, [r0, #12]
	str	r3, [r0, #8]
	.loc 1 2352 0
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L239:
	.align	2
.L238:
	.word	sound
	.cfi_endproc
.LFE55:
	.size	initsound16, .-initsound16
	.align	1
	.global	initsound32
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	initsound32, %function
initsound32:
.LFB56:
	.loc 1 2355 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL326:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 2356 0
	ldr	r4, .L241
	lsls	r0, r0, #4
.LVL327:
	str	r3, [r0, r4]
	movs	r3, #0
.LVL328:
	adds	r0, r4, r0
.LVL329:
	str	r1, [r0, #4]
	str	r2, [r0, #12]
	str	r3, [r0, #8]
	.loc 1 2357 0
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L242:
	.align	2
.L241:
	.word	sound
	.cfi_endproc
.LFE56:
	.size	initsound32, .-initsound32
	.align	1
	.global	initsound8
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	initsound8, %function
initsound8:
.LFB57:
	.loc 1 2360 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL330:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 2361 0
	ldr	r4, .L244
	lsls	r0, r0, #4
.LVL331:
	str	r3, [r0, r4]
	movs	r3, #0
.LVL332:
	adds	r0, r4, r0
.LVL333:
	str	r1, [r0, #4]
	str	r2, [r0, #12]
	str	r3, [r0, #8]
	.loc 1 2362 0
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L245:
	.align	2
.L244:
	.word	sound
	.cfi_endproc
.LFE57:
	.size	initsound8, .-initsound8
	.align	1
	.global	SaveInt
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SaveInt, %function
SaveInt:
.LFB58:
	.loc 1 2365 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL334:
	push	{r0, r1, r2, r4, r5, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 0, -24
	.cfi_offset 1, -20
	.cfi_offset 2, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 2365 0
	movs	r4, r0
	movs	r2, r1
	.loc 1 2368 0
	ldr	r3, .L249
	ldr	r1, .L249+4
.LVL335:
	mov	r0, sp
.LVL336:
	bl	.L171
.LVL337:
	.loc 1 2375 0
	movs	r0, #224
	.loc 1 2369 0
	movs	r3, r4
	.loc 1 2375 0
	lsls	r0, r0, #20
.LVL338:
.L247:
	.loc 1 2371 0 discriminator 1
	mov	r5, sp
	subs	r2, r3, r4
	ldrb	r2, [r5, r2]
	adds	r1, r3, #1
	cmp	r2, #0
	bne	.L248
	.loc 1 2377 0
	@ sp needed
.LVL339:
	pop	{r0, r1, r2, r4, r5}
	pop	{r0}
	bx	r0
.LVL340:
.L248:
	.loc 1 2375 0 discriminator 2
	strb	r2, [r3, r0]
.LVL341:
	movs	r3, r1
	b	.L247
.L250:
	.align	2
.L249:
	.word	sprintf
	.word	.LC40
	.cfi_endproc
.LFE58:
	.size	SaveInt, .-SaveInt
	.align	1
	.global	Savestr
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Savestr, %function
Savestr:
.LFB59:
	.loc 1 2380 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL342:
	push	{r0, r1, r2, r4, r5, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 0, -24
	.cfi_offset 1, -20
	.cfi_offset 2, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 2380 0
	movs	r4, r0
	movs	r2, r1
	.loc 1 2383 0
	ldr	r3, .L254
	ldr	r1, .L254+4
.LVL343:
	mov	r0, sp
.LVL344:
	bl	.L171
.LVL345:
	.loc 1 2390 0
	movs	r0, #224
	.loc 1 2384 0
	movs	r3, r4
	.loc 1 2390 0
	lsls	r0, r0, #20
.LVL346:
.L252:
	.loc 1 2386 0 discriminator 1
	mov	r5, sp
	subs	r2, r3, r4
	ldrb	r2, [r5, r2]
	adds	r1, r3, #1
	cmp	r2, #0
	bne	.L253
	.loc 1 2392 0
	@ sp needed
.LVL347:
	pop	{r0, r1, r2, r4, r5}
	pop	{r0}
	bx	r0
.LVL348:
.L253:
	.loc 1 2390 0 discriminator 2
	strb	r2, [r3, r0]
.LVL349:
	movs	r3, r1
	b	.L252
.L255:
	.align	2
.L254:
	.word	sprintf
	.word	.LC40
	.cfi_endproc
.LFE59:
	.size	Savestr, .-Savestr
	.align	1
	.global	LoadInt
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	LoadInt, %function
LoadInt:
.LFB60:
	.loc 1 2395 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL350:
	.loc 1 2398 0
	movs	r3, #0
	.loc 1 2395 0
	push	{r0, r1, r2, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 0, -16
	.cfi_offset 1, -12
	.cfi_offset 2, -8
	.cfi_offset 14, -4
.LVL351:
.L257:
	.loc 1 2400 0 discriminator 3
	movs	r1, #224
	adds	r2, r3, r0
	lsls	r1, r1, #20
	adds	r2, r2, r1
	mov	r1, sp
	ldrb	r2, [r2]
	strb	r2, [r3, r1]
	.loc 1 2398 0 discriminator 3
	adds	r3, r3, #1
.LVL352:
	cmp	r3, #7
	bne	.L257
	.loc 1 2402 0
	mov	r0, sp
.LVL353:
	ldr	r3, .L259
.LVL354:
	bl	.L171
.LVL355:
	.loc 1 2403 0
	add	sp, sp, #12
	@ sp needed
	pop	{r1}
	bx	r1
.L260:
	.align	2
.L259:
	.word	atoi
	.cfi_endproc
.LFE60:
	.size	LoadInt, .-LoadInt
	.align	1
	.global	GetROMOff
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetROMOff, %function
GetROMOff:
.LFB61:
	.loc 1 2406 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL356:
	.loc 1 2409 0
	movs	r3, #0
	.loc 1 2406 0
	push	{r0, r1, r2, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 0, -16
	.cfi_offset 1, -12
	.cfi_offset 2, -8
	.cfi_offset 14, -4
.LVL357:
.L262:
	.loc 1 2411 0 discriminator 3
	movs	r1, #128
	adds	r2, r3, r0
	lsls	r1, r1, #20
	adds	r2, r2, r1
	mov	r1, sp
	ldrb	r2, [r2]
	strb	r2, [r3, r1]
	.loc 1 2409 0 discriminator 3
	adds	r3, r3, #1
.LVL358:
	cmp	r3, #7
	bne	.L262
	.loc 1 2413 0
	mov	r0, sp
.LVL359:
	ldr	r3, .L264
.LVL360:
	bl	.L171
.LVL361:
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	.loc 1 2414 0
	add	sp, sp, #12
	@ sp needed
	pop	{r1}
	bx	r1
.L265:
	.align	2
.L264:
	.word	atoi
	.cfi_endproc
.LFE61:
	.size	GetROMOff, .-GetROMOff
	.align	1
	.global	GetPixel3
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetPixel3, %function
GetPixel3:
.LFB62:
	.loc 1 2417 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL362:
	.loc 1 2417 0
	movs	r2, r1
	.loc 1 2418 0
	movs	r3, #240
	movs	r1, r2
	muls	r1, r3
.LVL363:
	ldr	r3, .L267
	adds	r0, r1, r0
.LVL364:
	ldr	r3, [r3]
	lsls	r0, r0, #1
	ldrh	r0, [r0, r3]
	.loc 1 2419 0
	@ sp needed
	bx	lr
.L268:
	.align	2
.L267:
	.word	.LANCHOR0
	.cfi_endproc
.LFE62:
	.size	GetPixel3, .-GetPixel3
	.align	1
	.global	GetPixel5
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetPixel5, %function
GetPixel5:
.LFB63:
	.loc 1 2422 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL365:
	.loc 1 2422 0
	movs	r2, r1
	.loc 1 2423 0
	movs	r3, #160
	movs	r1, r2
	muls	r1, r3
.LVL366:
	ldr	r3, .L270
	adds	r0, r1, r0
.LVL367:
	ldr	r3, [r3]
	lsls	r0, r0, #1
	ldrh	r0, [r0, r3]
	.loc 1 2424 0
	@ sp needed
	bx	lr
.L271:
	.align	2
.L270:
	.word	.LANCHOR0
	.cfi_endproc
.LFE63:
	.size	GetPixel5, .-GetPixel5
	.align	1
	.global	GetPixel4
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetPixel4, %function
GetPixel4:
.LFB64:
	.loc 1 2427 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL368:
	.loc 1 2427 0
	movs	r2, r1
	.loc 1 2428 0
	movs	r3, #120
	movs	r1, r2
	muls	r1, r3
.LVL369:
	ldr	r3, .L273
	adds	r0, r1, r0
.LVL370:
	ldr	r3, [r3]
	lsls	r0, r0, #1
	ldrh	r0, [r0, r3]
	.loc 1 2429 0
	@ sp needed
	bx	lr
.L274:
	.align	2
.L273:
	.word	.LANCHOR0
	.cfi_endproc
.LFE64:
	.size	GetPixel4, .-GetPixel4
	.align	1
	.global	GetArrayItem
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetArrayItem, %function
GetArrayItem:
.LFB65:
	.loc 1 2432 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL371:
	.loc 1 2433 0
	lsls	r0, r0, #1
.LVL372:
	ldrh	r0, [r0, r1]
	.loc 1 2434 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE65:
	.size	GetArrayItem, .-GetArrayItem
	.align	1
	.global	add
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	add, %function
add:
.LFB66:
	.loc 1 2437 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL373:
	.loc 1 2438 0
	adds	r0, r0, r1
.LVL374:
	.loc 1 2439 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE66:
	.size	add, .-add
	.align	1
	.global	sub
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	sub, %function
sub:
.LFB67:
	.loc 1 2442 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL375:
	.loc 1 2443 0
	subs	r0, r0, r1
.LVL376:
	.loc 1 2444 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE67:
	.size	sub, .-sub
	.align	1
	.global	divide
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	divide, %function
divide:
.LFB68:
	.loc 1 2447 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL377:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 2448 0
	ldr	r3, .L279
	bl	.L171
.LVL378:
	.loc 1 2449 0
	@ sp needed
	pop	{r4}
	pop	{r1}
	bx	r1
.L280:
	.align	2
.L279:
	.word	__aeabi_idiv
	.cfi_endproc
.LFE68:
	.size	divide, .-divide
	.align	1
	.global	mult
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	mult, %function
mult:
.LFB69:
	.loc 1 2452 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL379:
	.loc 1 2452 0
	movs	r3, r0
	.loc 1 2454 0
	@ sp needed
	.loc 1 2453 0
	movs	r0, r3
	muls	r0, r1
.LVL380:
	.loc 1 2454 0
	bx	lr
	.cfi_endproc
.LFE69:
	.size	mult, .-mult
	.align	1
	.global	len
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	len, %function
len:
.LFB70:
	.loc 1 2457 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL381:
	.loc 1 2459 0
	movs	r0, #4
.LVL382:
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE70:
	.size	len, .-len
	.align	1
	.global	dist
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	dist, %function
dist:
.LFB71:
	.loc 1 2462 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL383:
	.loc 1 2463 0
	adds	r2, r2, r3
.LVL384:
	adds	r0, r0, r1
.LVL385:
	subs	r0, r2, r0
	.loc 1 2464 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE71:
	.size	dist, .-dist
	.align	1
	.global	drawRect
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	drawRect, %function
drawRect:
.LFB72:
	.loc 1 2467 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL386:
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	movs	r7, r0
	movs	r6, r1
	.loc 1 2469 0
	movs	r5, r0
	.loc 1 2467 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 40
	.loc 1 2467 0
	str	r3, [sp, #8]
	add	r3, sp, #40
.LVL387:
	ldrh	r3, [r3]
.LVL388:
	str	r2, [sp, #4]
	str	r3, [sp, #12]
.LVL389:
.L285:
	.loc 1 2469 0 discriminator 1
	ldr	r2, [sp, #8]
	subs	r3, r5, r7
	cmp	r2, r3
	ble	.L284
	.loc 1 2469 0 is_stmt 0
	movs	r4, r6
	b	.L288
.LVL390:
.L286:
	.loc 1 2471 0 is_stmt 1 discriminator 3
	movs	r1, r4
	ldr	r2, [sp, #12]
	movs	r0, r5
	bl	plot3
.LVL391:
	adds	r4, r4, #1
.LVL392:
.L288:
	.loc 1 2470 0 discriminator 1
	ldr	r2, [sp, #4]
	subs	r3, r4, r6
.LVL393:
	cmp	r2, r3
	bgt	.L286
.LVL394:
	adds	r5, r5, #1
.LVL395:
	b	.L285
.LVL396:
.L284:
	.loc 1 2474 0
	add	sp, sp, #20
	@ sp needed
.LVL397:
.LVL398:
.LVL399:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.cfi_endproc
.LFE72:
	.size	drawRect, .-drawRect
	.align	1
	.global	fillscreen3
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	fillscreen3, %function
fillscreen3:
.LFB73:
	.loc 1 2477 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL400:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 2477 0
	movs	r6, r0
	.loc 1 2479 0
	movs	r5, #0
.LVL401:
.L290:
	.loc 1 2481 0
	movs	r4, #0
.LVL402:
.L291:
	.loc 1 2483 0 discriminator 3
	movs	r0, r4
	movs	r2, r6
	movs	r1, r5
	.loc 1 2481 0 discriminator 3
	adds	r4, r4, #1
.LVL403:
	.loc 1 2483 0 discriminator 3
	bl	plot3
.LVL404:
	.loc 1 2481 0 discriminator 3
	cmp	r4, #240
	bne	.L291
	.loc 1 2479 0 discriminator 2
	adds	r5, r5, #1
.LVL405:
	cmp	r5, #160
	bne	.L290
	.loc 1 2486 0
	@ sp needed
.LVL406:
.LVL407:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.cfi_endproc
.LFE73:
	.size	fillscreen3, .-fillscreen3
	.align	1
	.global	drawbitmap3
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	drawbitmap3, %function
drawbitmap3:
.LFB74:
	.loc 1 2489 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL408:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 2489 0
	movs	r6, r0
	.loc 1 2491 0
	movs	r5, #0
.LVL409:
.L295:
	.loc 1 2493 0
	movs	r4, #0
.LVL410:
.L296:
	.loc 1 2495 0 discriminator 3
	lsls	r3, r4, #1
	movs	r0, r4
	ldrh	r2, [r6, r3]
	movs	r1, r5
	.loc 1 2493 0 discriminator 3
	adds	r4, r4, #1
.LVL411:
	.loc 1 2495 0 discriminator 3
	bl	plot3
.LVL412:
	.loc 1 2493 0 discriminator 3
	cmp	r4, #240
	bne	.L296
	adds	r6, r6, #225
	.loc 1 2491 0 discriminator 2
	adds	r5, r5, #1
.LVL413:
	adds	r6, r6, #255
	cmp	r5, #160
	bne	.L295
	.loc 1 2498 0
	@ sp needed
.LVL414:
.LVL415:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.cfi_endproc
.LFE74:
	.size	drawbitmap3, .-drawbitmap3
	.align	1
	.global	fillpal
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	fillpal, %function
fillpal:
.LFB75:
	.loc 1 2501 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL416:
	.loc 1 2503 0
	ldr	r2, .L310
	.loc 1 2501 0
	push	{r0, r1, r4, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 0, -16
	.cfi_offset 1, -12
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	ldr	r3, .L310+4
	.loc 1 2503 0
	cmp	r0, r2
	bne	.L300
	movs	r2, #128
	ldr	r3, [r3, #40]
	lsls	r2, r2, #2
	adds	r2, r3, r2
.L301:
	.loc 1 2507 0 discriminator 3
	strh	r1, [r3]
.LVL417:
	adds	r3, r3, #2
	.loc 1 2505 0 discriminator 3
	cmp	r3, r2
	bne	.L301
.L299:
	.loc 1 2528 0
	@ sp needed
	pop	{r0, r1, r4}
	pop	{r0}
	bx	r0
.L300:
	.loc 1 2510 0
	ldr	r4, .L310+8
	ldr	r2, [r3, #28]
	cmp	r0, r4
	bne	.L303
	movs	r3, r2
	movs	r2, #128
	lsls	r2, r2, #2
	adds	r2, r3, r2
.L304:
.LBB146:
.LBB147:
	.loc 1 2514 0
	strh	r1, [r3]
.LVL418:
	adds	r3, r3, #2
	.loc 1 2512 0
	cmp	r3, r2
	bne	.L304
	b	.L299
.L303:
.LBE147:
.LBE146:
	.loc 1 2517 0
	movs	r1, #128
.LVL419:
	ldr	r0, .L310+12
.LVL420:
	lsls	r1, r1, #19
	str	r0, [r1]
.LVL421:
	.loc 1 2520 0
	ldr	r0, [r3, #40]
	movs	r3, #0
	.loc 1 2518 0
	movs	r1, #128
	.loc 1 2520 0
	movs	r4, r3
	.loc 1 2518 0
	lsls	r1, r1, #2
.LVL422:
.L305:
	.loc 1 2520 0 discriminator 3
	strh	r4, [r0, r3]
	.loc 1 2521 0 discriminator 3
	strh	r4, [r2, r3]
	adds	r3, r3, #2
	.loc 1 2518 0 discriminator 3
	cmp	r3, r1
	bne	.L305
	.loc 1 2523 0
	movs	r0, #0
	bl	fillscreen3
.LVL423:
	.loc 1 2524 0
	movs	r1, #8
	str	r4, [sp]
	movs	r3, #31
	ldr	r2, .L310+16
	movs	r0, r1
	bl	Print
.LVL424:
.L306:
	b	.L306
.L311:
	.align	2
.L310:
	.word	.LC51
	.word	.LANCHOR0
	.word	.LC54
	.word	1027
	.word	.LC56
	.cfi_endproc
.LFE75:
	.size	fillpal, .-fillpal
	.align	1
	.global	Initialize
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Initialize, %function
Initialize:
.LFB43:
	.loc 1 2136 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 2137 0
	bl	WaitForVblank
.LVL425:
	.loc 1 2138 0
	ldr	r1, .L313
	ldr	r0, .L313+4
	bl	fillpal
.LVL426:
	.loc 1 2139 0
	movs	r3, #128
	ldr	r2, .L313+8
	lsls	r3, r3, #19
	str	r2, [r3]
	.loc 1 2140 0
	movs	r2, #64
	ldr	r3, .L313+12
	.loc 1 2141 0
	movs	r0, #25
	.loc 1 2140 0
	strh	r2, [r3]
	.loc 1 2141 0
	bl	Sleep
.LVL427:
	.loc 1 2142 0
	movs	r0, #1
	bl	FadeOut
.LVL428:
	.loc 1 2143 0
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L314:
	.align	2
.L313:
	.word	65535
	.word	.LC51
	.word	1028
	.word	67108876
	.cfi_endproc
.LFE43:
	.size	Initialize, .-Initialize
	.align	1
	.global	DrawLine3
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	DrawLine3, %function
DrawLine3:
.LFB76:
	.loc 1 2531 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL429:
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	movs	r5, r1
	sub	sp, sp, #36
	.cfi_def_cfa_offset 56
	.loc 1 2531 0
	add	r1, sp, #56
.LVL430:
	ldrh	r1, [r1]
.LVL431:
	str	r1, [sp, #28]
	.loc 1 2537 0
	subs	r1, r2, r0
	.loc 1 2531 0
	movs	r4, r0
	.loc 1 2537 0
	asrs	r0, r1, #31
.LVL432:
	adds	r1, r1, r0
	eors	r1, r0
.LVL433:
	.loc 1 2538 0
	subs	r0, r3, r5
	asrs	r6, r0, #31
	adds	r0, r0, r6
	eors	r0, r6
.LVL434:
	.loc 1 2540 0
	cmp	r1, r0
	blt	.L316
	.loc 1 2543 0
	adds	r6, r1, #1
	.loc 1 2544 0
	lsls	r7, r0, #1
	.loc 1 2543 0
	str	r6, [sp, #8]
.LVL435:
	.loc 1 2544 0
	subs	r6, r7, r1
.LVL436:
	.loc 1 2546 0
	subs	r1, r0, r1
.LVL437:
	lsls	r1, r1, #1
	str	r1, [sp, #16]
	.loc 1 2549 0
	movs	r1, #0
	.loc 1 2545 0
	str	r7, [sp, #12]
.LVL438:
	.loc 1 2547 0
	movs	r7, #1
.LVL439:
	.loc 1 2549 0
	str	r1, [sp]
.LVL440:
.L317:
	movs	r1, #1
	str	r1, [sp, #20]
	.loc 1 2564 0
	cmp	r2, r4
	bge	.L318
	.loc 1 2567 0
	movs	r2, #1
.LVL441:
	rsbs	r2, r2, #0
	str	r2, [sp, #20]
	.loc 1 2566 0
	rsbs	r7, r7, #0
.LVL442:
.L318:
	movs	r2, #1
	str	r2, [sp, #24]
	.loc 1 2569 0
	cmp	r3, r5
	bge	.L319
	.loc 1 2571 0
	ldr	r3, [sp]
.LVL443:
	rsbs	r3, r3, #0
	str	r3, [sp]
.LVL444:
	.loc 1 2572 0
	movs	r3, #1
.LVL445:
	rsbs	r3, r3, #0
	str	r3, [sp, #24]
.LVL446:
.L319:
	.loc 1 2577 0
	movs	r3, #1
.LVL447:
.L327:
	.loc 1 2577 0 is_stmt 0 discriminator 2
	str	r3, [sp, #4]
.LVL448:
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #8]
	cmp	r3, r2
	bne	.L323
	.loc 1 2592 0 is_stmt 1
	add	sp, sp, #36
.LVL449:
	@ sp needed
.LVL450:
.LVL451:
.LVL452:
.LVL453:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.LVL454:
.L316:
	.loc 1 2555 0
	lsls	r7, r1, #1
	.loc 1 2557 0
	subs	r1, r1, r0
.LVL455:
	lsls	r1, r1, #1
	str	r1, [sp, #16]
	.loc 1 2560 0
	movs	r1, #1
	.loc 1 2554 0
	adds	r6, r0, #1
	str	r6, [sp, #8]
.LVL456:
	.loc 1 2556 0
	str	r7, [sp, #12]
	.loc 1 2555 0
	subs	r6, r7, r0
.LVL457:
	.loc 1 2560 0
	str	r1, [sp]
	.loc 1 2558 0
	movs	r7, #0
.LVL458:
	b	.L317
.LVL459:
.L323:
	.loc 1 2579 0
	ldr	r2, [sp, #28]
	movs	r1, r5
	movs	r0, r4
	bl	plot3
.LVL460:
	.loc 1 2580 0
	cmp	r6, #0
	bge	.L321
	.loc 1 2581 0
	ldr	r3, [sp, #12]
	adds	r6, r6, r3
.LVL461:
	.loc 1 2583 0
	ldr	r3, [sp]
	.loc 1 2582 0
	adds	r4, r4, r7
.LVL462:
.L326:
	.loc 1 2589 0
	adds	r5, r5, r3
.LVL463:
	.loc 1 2577 0
	ldr	r3, [sp, #4]
	adds	r3, r3, #1
	b	.L327
.L321:
	.loc 1 2587 0
	ldr	r3, [sp, #16]
	adds	r6, r6, r3
.LVL464:
	.loc 1 2588 0
	ldr	r3, [sp, #20]
	adds	r4, r4, r3
.LVL465:
	.loc 1 2589 0
	ldr	r3, [sp, #24]
	b	.L326
	.cfi_endproc
.LFE76:
	.size	DrawLine3, .-DrawLine3
	.align	1
	.global	DrawCircle3
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	DrawCircle3, %function
DrawCircle3:
.LFB77:
	.loc 1 2595 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL466:
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 48
.LVL467:
	.loc 1 2595 0
	str	r2, [sp]
.LVL468:
	str	r3, [sp, #20]
	.loc 1 2598 0
	lsls	r3, r2, #1
.LVL469:
	movs	r2, #3
.LVL470:
	subs	r3, r2, r3
	str	r3, [sp, #8]
.LVL471:
	.loc 1 2596 0
	movs	r3, #0
.LVL472:
	.loc 1 2595 0
	str	r0, [sp, #12]
	str	r1, [sp, #16]
	.loc 1 2596 0
	str	r3, [sp, #4]
.LVL473:
.L329:
	.loc 1 2599 0
	ldr	r3, [sp, #4]
	ldr	r2, [sp]
	cmp	r3, r2
	ble	.L332
	.loc 1 2614 0
	add	sp, sp, #28
.LVL474:
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L332:
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #4]
.LVL475:
	adds	r7, r3, r2
	.loc 1 2601 0
	ldr	r3, [sp]
	ldr	r2, [sp, #16]
	adds	r6, r3, r2
	ldr	r3, [sp, #20]
	lsls	r4, r3, #16
	lsrs	r4, r4, #16
	movs	r1, r6
	movs	r0, r7
	movs	r2, r4
	bl	plot3
.LVL476:
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #4]
	subs	r5, r3, r2
	.loc 1 2602 0
	movs	r1, r6
	movs	r0, r5
	movs	r2, r4
	bl	plot3
.LVL477:
	.loc 1 2603 0
	ldr	r3, [sp, #16]
	ldr	r2, [sp]
	subs	r6, r3, r2
	movs	r1, r6
	movs	r0, r7
	movs	r2, r4
	bl	plot3
.LVL478:
	.loc 1 2604 0
	movs	r1, r6
	movs	r0, r5
	movs	r2, r4
	bl	plot3
.LVL479:
	.loc 1 2605 0
	ldr	r3, [sp]
	ldr	r2, [sp, #12]
	adds	r7, r3, r2
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #16]
	adds	r6, r3, r2
	movs	r1, r6
	movs	r2, r4
	movs	r0, r7
	bl	plot3
.LVL480:
	.loc 1 2606 0
	ldr	r3, [sp, #12]
	ldr	r2, [sp]
	subs	r5, r3, r2
	movs	r1, r6
	movs	r2, r4
	movs	r0, r5
	bl	plot3
.LVL481:
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #4]
	subs	r6, r3, r2
	.loc 1 2607 0
	movs	r1, r6
	movs	r2, r4
	movs	r0, r7
	bl	plot3
.LVL482:
	.loc 1 2608 0
	movs	r2, r4
	movs	r1, r6
	movs	r0, r5
	bl	plot3
.LVL483:
	ldr	r3, [sp, #4]
	adds	r2, r3, #1
	.loc 1 2609 0
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bge	.L330
	.loc 1 2610 0
	ldr	r1, [sp, #8]
	lsls	r3, r2, #2
	adds	r3, r3, #2
	adds	r3, r1, r3
	str	r3, [sp, #8]
.LVL484:
.L331:
	.loc 1 2612 0
	str	r2, [sp, #4]
	b	.L329
.L330:
.LVL485:
	ldr	r1, [sp]
	ldr	r3, [sp, #4]
	subs	r3, r3, r1
	lsls	r3, r3, #2
	ldr	r1, [sp, #8]
	adds	r3, r3, #10
	adds	r3, r1, r3
	str	r3, [sp, #8]
.LVL486:
	ldr	r3, [sp]
.LVL487:
	subs	r3, r3, #1
.LVL488:
	str	r3, [sp]
	b	.L331
	.cfi_endproc
.LFE77:
	.size	DrawCircle3, .-DrawCircle3
	.align	1
	.global	ScrollBG
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	ScrollBG, %function
ScrollBG:
.LFB78:
	.loc 1 2623 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL489:
	movs	r3, r0
	.loc 1 2624 0
	ldr	r0, [r0, #8]
.LVL490:
	.loc 1 2623 0
	push	{lr}
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	.loc 1 2624 0
	cmp	r0, #3
	bhi	.L333
	ldr	r2, [r3]
	ldr	r3, [r3, #4]
.LVL491:
	bl	__gnu_thumb1_case_uqi
.L336:
	.byte	(.L335-.L336)/2
	.byte	(.L337-.L336)/2
	.byte	(.L338-.L336)/2
	.byte	(.L339-.L336)/2
	.p2align 1
.L335:
	.loc 1 2627 0
	ldr	r1, .L341
	strh	r2, [r1]
	.loc 1 2628 0
	ldr	r2, .L341+4
.L340:
	.loc 1 2640 0
	strh	r3, [r2]
.L333:
	.loc 1 2645 0
	@ sp needed
	pop	{r0}
	bx	r0
.L337:
	.loc 1 2631 0
	ldr	r1, .L341+8
	strh	r2, [r1]
	.loc 1 2632 0
	ldr	r2, .L341+12
	b	.L340
.L338:
	.loc 1 2635 0
	ldr	r1, .L341+16
	strh	r2, [r1]
	.loc 1 2636 0
	ldr	r2, .L341+20
	b	.L340
.L339:
	.loc 1 2639 0
	ldr	r1, .L341+24
	strh	r2, [r1]
	.loc 1 2640 0
	ldr	r2, .L341+28
	b	.L340
.L342:
	.align	2
.L341:
	.word	67108880
	.word	67108882
	.word	67108884
	.word	67108886
	.word	67108888
	.word	67108890
	.word	67108892
	.word	67108894
	.cfi_endproc
.LFE78:
	.size	ScrollBG, .-ScrollBG
	.align	1
	.global	seedMT
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	seedMT, %function
seedMT:
.LFB79:
	.loc 1 2655 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL492:
	.loc 1 2656 0
	movs	r3, #1
	orrs	r0, r3
.LVL493:
	.loc 1 2659 0
	movs	r3, #0
	.loc 1 2662 0
	movs	r1, #156
	.loc 1 2659 0
	ldr	r2, .L346
	.loc 1 2655 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 2659 0
	str	r3, [r2]
.LVL494:
	.loc 1 2660 0
	ldr	r2, .L346+4
	.loc 1 2664 0
	ldr	r4, .L346+8
	.loc 1 2660 0
	str	r0, [r2]
	.loc 1 2662 0
	lsls	r1, r1, #4
.LVL495:
.L344:
	adds	r3, r3, #4
.LVL496:
	cmp	r3, r1
	bne	.L345
	.loc 1 2669 0
	movs	r2, #1
	ldr	r3, .L346+12
.LVL497:
	.loc 1 2670 0
	@ sp needed
	.loc 1 2669 0
	str	r2, [r3]
	.loc 1 2670 0
	pop	{r4}
	pop	{r0}
	bx	r0
.LVL498:
.L345:
	.loc 1 2664 0
	muls	r0, r4
.LVL499:
	.loc 1 2665 0
	str	r0, [r2, r3]
	b	.L344
.L347:
	.align	2
.L346:
	.word	lft
	.word	state
	.word	69069
	.word	do_regen
	.cfi_endproc
.LFE79:
	.size	seedMT, .-seedMT
	.align	1
	.global	reloadMT
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	reloadMT, %function
reloadMT:
.LFB80:
	.loc 1 2673 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL500:
	push	{r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 2682 0
	ldr	r4, .L366
	ldr	r3, [r4]
	adds	r3, r3, #1
	bge	.L349
	.loc 1 2682 0 is_stmt 0 discriminator 1
	ldr	r0, .L366+4
	bl	seedMT
.LVL501:
.L349:
	.loc 1 2684 0 is_stmt 1
	ldr	r3, .L366+8
	.loc 1 2687 0
	movs	r6, #227
	.loc 1 2684 0
	str	r3, [r4]
	.loc 1 2688 0
	movs	r7, #1
	.loc 1 2687 0
	movs	r4, #0
	.loc 1 2685 0
	ldr	r2, .L366+12
	ldr	r3, .L366+16
	str	r2, [r3]
	.loc 1 2687 0
	ldr	r2, .L366+20
	ldr	r1, [r2]
.LVL502:
	ldr	r0, [r2, #4]
.LVL503:
	lsls	r6, r6, #2
.LVL504:
.L350:
	lsrs	r3, r1, #31
	lsls	r3, r3, #31
	mov	ip, r3
	.loc 1 2687 0 is_stmt 0 discriminator 2
	cmp	r4, r6
	bne	.L352
	movs	r5, #0
	.loc 1 2691 0 is_stmt 1
	movs	r7, #1
.LVL505:
.L353:
	.loc 1 2690 0 discriminator 2
	movs	r3, #198
	lsrs	r1, r1, #31
.LVL506:
	ldr	r4, [r2, r5]
	lsls	r1, r1, #31
	lsls	r3, r3, #3
	cmp	r5, r3
	bne	.L355
	.loc 1 2693 0
	ldr	r0, [r2]
.LVL507:
	.loc 1 2694 0
	lsls	r3, r0, #1
	lsrs	r3, r3, #1
	orrs	r3, r1
	movs	r1, #1
	lsrs	r3, r3, #1
	eors	r3, r4
	ands	r1, r0
	beq	.L356
	ldr	r1, .L366+24
.L356:
	.loc 1 2694 0 is_stmt 0 discriminator 4
	eors	r3, r1
	ldr	r1, .L366+28
	str	r3, [r2, r1]
	.loc 1 2695 0 is_stmt 1 discriminator 4
	lsrs	r2, r0, #11
	eors	r2, r0
.LVL508:
	.loc 1 2696 0 discriminator 4
	ldr	r0, .L366+32
	lsls	r3, r2, #7
	ands	r3, r0
	eors	r3, r2
.LVL509:
	.loc 1 2697 0 discriminator 4
	ldr	r2, .L366+36
	lsls	r0, r3, #15
	ands	r0, r2
	eors	r0, r3
.LVL510:
	.loc 1 2698 0 discriminator 4
	lsrs	r3, r0, #18
	eors	r0, r3
.LVL511:
	.loc 1 2699 0 discriminator 4
	@ sp needed
.LVL512:
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.LVL513:
.L352:
	.loc 1 2688 0
	mov	r1, ip
.LVL514:
	lsls	r3, r0, #1
	lsrs	r3, r3, #1
	orrs	r3, r1
	ldr	r1, .L366+40
	adds	r5, r2, r4
	adds	r1, r5, r1
	ldr	r1, [r1]
	lsrs	r3, r3, #1
	eors	r3, r1
	movs	r1, r0
	ands	r1, r7
	beq	.L351
	ldr	r1, .L366+24
.L351:
.LVL515:
	.loc 1 2688 0 is_stmt 0 discriminator 4
	eors	r3, r1
	str	r3, [r2, r4]
.LVL516:
	.loc 1 2687 0 is_stmt 1 discriminator 4
	movs	r1, r0
	adds	r4, r4, #4
.LVL517:
	ldr	r0, [r5, #8]
.LVL518:
	b	.L350
.LVL519:
.L355:
	.loc 1 2691 0
	lsls	r3, r0, #1
	lsrs	r3, r3, #1
	orrs	r3, r1
	movs	r1, r0
	lsrs	r3, r3, #1
	ands	r1, r7
	eors	r3, r4
	mov	ip, r1
	cmp	r1, #0
	beq	.L354
	ldr	r1, .L366+24
	mov	ip, r1
.L354:
.LVL520:
	.loc 1 2691 0 is_stmt 0 discriminator 4
	movs	r4, #227
	mov	r6, ip
	adds	r1, r2, r5
	lsls	r4, r4, #2
	adds	r4, r1, r4
	eors	r3, r6
	str	r3, [r4]
.LVL521:
	.loc 1 2690 0 is_stmt 1 discriminator 4
	movs	r3, #229
	lsls	r3, r3, #2
	adds	r3, r1, r3
.LVL522:
	adds	r5, r5, #4
.LVL523:
	movs	r1, r0
	ldr	r0, [r3]
.LVL524:
	b	.L353
.L367:
	.align	2
.L366:
	.word	lft
	.word	4357
	.word	623
	.word	state+4
	.word	next
	.word	state
	.word	-1727483681
	.word	2492
	.word	-1658038656
	.word	-272236544
	.word	1588
	.cfi_endproc
.LFE80:
	.size	reloadMT, .-reloadMT
	.align	1
	.global	randomMT
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	randomMT, %function
randomMT:
.LFB81:
	.loc 1 2702 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 2705 0
	ldr	r2, .L372
	ldr	r3, [r2]
	subs	r3, r3, #1
	.loc 1 2702 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 2705 0
	str	r3, [r2]
	.loc 1 2706 0
	cmp	r3, #0
	bge	.L369
	.loc 1 2708 0
	ldr	r3, .L372+4
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L370
	.loc 1 2710 0
	bl	reloadMT
.LVL525:
.L368:
	.loc 1 2724 0
	@ sp needed
	pop	{r4}
	pop	{r1}
	bx	r1
.L370:
	.loc 1 2712 0
	ldr	r3, .L372+8
	str	r3, [r2]
	.loc 1 2713 0
	ldr	r3, .L372+12
	ldr	r2, .L372+16
	str	r2, [r3]
.L369:
	.loc 1 2717 0
	ldr	r3, .L372+12
	ldr	r2, [r3]
	ldmia	r2!, {r0}
.LVL526:
	.loc 1 2718 0
	str	r2, [r3]
	.loc 1 2719 0
	lsrs	r3, r0, #11
	eors	r3, r0
.LVL527:
	.loc 1 2720 0
	ldr	r2, .L372+20
	lsls	r0, r3, #7
	ands	r0, r2
	eors	r3, r0
.LVL528:
	.loc 1 2721 0
	ldr	r2, .L372+24
	lsls	r0, r3, #15
	ands	r0, r2
	eors	r0, r3
.LVL529:
	.loc 1 2722 0
	lsrs	r3, r0, #18
	eors	r0, r3
.LVL530:
	.loc 1 2723 0
	b	.L368
.L373:
	.align	2
.L372:
	.word	lft
	.word	do_regen
	.word	623
	.word	next
	.word	state+4
	.word	-1658038656
	.word	-272236544
	.cfi_endproc
.LFE81:
	.size	randomMT, .-randomMT
	.global	__aeabi_uidivmod
	.align	1
	.global	Random
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Random, %function
Random:
.LFB82:
	.loc 1 2729 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL531:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 2729 0
	movs	r4, r0
	.loc 1 2730 0
	bl	randomMT
.LVL532:
	lsls	r0, r0, #16
	movs	r1, r4
	ldr	r3, .L375
	lsrs	r0, r0, #16
	bl	.L171
.LVL533:
	lsls	r0, r1, #16
	lsrs	r0, r0, #16
	.loc 1 2731 0
	@ sp needed
	pop	{r4}
	pop	{r1}
	bx	r1
.L376:
	.align	2
.L375:
	.word	__aeabi_uidivmod
	.cfi_endproc
.LFE82:
	.size	Random, .-Random
	.align	1
	.global	jmp
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	jmp, %function
jmp:
.LFB83:
	.loc 1 2734 0
	.cfi_startproc
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL534:
	.loc 1 2735 0
	mov	pc, r0
	.cfi_endproc
.LFE83:
	.size	jmp, .-jmp
	.align	1
	.global	hardreset
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	hardreset, %function
hardreset:
.LFB84:
	.loc 1 2739 0
	.cfi_startproc
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 2740 0
	movs	r3, #0
	mov	pc, r3
	.cfi_endproc
.LFE84:
	.size	hardreset, .-hardreset
	.align	1
	.global	cloneSprite
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	cloneSprite, %function
cloneSprite:
.LFB85:
	.loc 1 2744 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL535:
	.loc 1 2751 0
	ldr	r3, .L380
	lsls	r0, r0, #3
.LVL536:
	ldrh	r2, [r0, r3]
	lsls	r1, r1, #3
.LVL537:
	strh	r2, [r1, r3]
	.loc 1 2752 0
	adds	r0, r3, r0
	ldrh	r2, [r0, #2]
	adds	r3, r3, r1
	strh	r2, [r3, #2]
	.loc 1 2753 0
	ldrh	r2, [r0, #4]
	.loc 1 2754 0
	@ sp needed
	.loc 1 2753 0
	strh	r2, [r3, #4]
	.loc 1 2754 0
	bx	lr
.L381:
	.align	2
.L380:
	.word	sprites
	.cfi_endproc
.LFE85:
	.size	cloneSprite, .-cloneSprite
	.align	1
	.global	SleepF
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SleepF, %function
SleepF:
.LFB86:
	.loc 1 2757 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL538:
	.loc 1 2765 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE86:
	.size	SleepF, .-SleepF
	.align	1
	.global	scanlines3
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	scanlines3, %function
scanlines3:
.LFB87:
	.loc 1 2769 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL539:
	movs	r3, #241
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
	.cfi_offset 1, -28
	.cfi_offset 2, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 2769 0
	movs	r7, #1
	movs	r6, #240
	.loc 1 2777 0
	lsls	r4, r0, #16
	.loc 1 2769 0
	str	r3, [sp]
	rsbs	r7, r7, #0
	.loc 1 2777 0
	lsrs	r4, r4, #16
.LVL540:
.L385:
	adds	r3, r7, #1
	str	r3, [sp, #4]
.LVL541:
	.loc 1 2775 0
	movs	r5, #0
	.loc 1 2774 0
	bl	WaitForVblank
.LVL542:
.L384:
	.loc 1 2777 0 discriminator 3
	movs	r1, r5
	movs	r2, r4
	movs	r0, r7
	bl	plot3
.LVL543:
	.loc 1 2778 0 discriminator 3
	movs	r1, r5
	movs	r2, r4
	ldr	r0, [sp, #4]
	bl	plot3
.LVL544:
	.loc 1 2779 0 discriminator 3
	subs	r1, r5, #1
	movs	r2, r4
	ldr	r0, [sp]
	bl	plot3
.LVL545:
	.loc 1 2780 0 discriminator 3
	subs	r1, r5, #1
	movs	r2, r4
	movs	r0, r6
	.loc 1 2775 0 discriminator 3
	adds	r5, r5, #2
.LVL546:
	.loc 1 2780 0 discriminator 3
	bl	plot3
.LVL547:
	.loc 1 2775 0 discriminator 3
	cmp	r5, #160
	bne	.L384
.LVL548:
	ldr	r3, [sp]
	adds	r7, r7, #2
.LVL549:
	subs	r3, r3, #2
	str	r3, [sp]
	subs	r6, r6, #2
	.loc 1 2772 0 discriminator 2
	cmp	r7, #239
	bne	.L385
	.loc 1 2784 0
	@ sp needed
.LVL550:
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.cfi_endproc
.LFE87:
	.size	scanlines3, .-scanlines3
	.align	1
	.global	scanlinesdata3
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	scanlinesdata3, %function
scanlinesdata3:
.LFB88:
	.loc 1 2787 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL551:
	movs	r3, #241
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	movs	r6, #1
	movs	r7, #240
	sub	sp, sp, #20
	.cfi_def_cfa_offset 40
	.loc 1 2787 0
	str	r0, [sp, #8]
	str	r3, [sp, #4]
	rsbs	r6, r6, #0
.LVL552:
.L390:
	.loc 1 2793 0
	movs	r4, #0
	adds	r3, r6, #1
	str	r3, [sp, #12]
.LVL553:
	.loc 1 2792 0
	bl	WaitForVblank
.LVL554:
	ldr	r5, [sp, #8]
.LVL555:
.L389:
	.loc 1 2795 0 discriminator 3
	subs	r3, r5, #2
	ldrh	r2, [r3]
	movs	r1, r4
	movs	r0, r6
	bl	plot3
.LVL556:
	.loc 1 2796 0 discriminator 3
	ldrh	r2, [r5]
	movs	r1, r4
	ldr	r0, [sp, #12]
	bl	plot3
.LVL557:
	.loc 1 2797 0 discriminator 3
	movs	r3, r5
	subs	r3, r3, #223
	subs	r3, r3, #255
	ldrh	r2, [r3]
	subs	r1, r4, #1
	ldr	r0, [sp, #4]
	bl	plot3
.LVL558:
	.loc 1 2798 0 discriminator 3
	movs	r3, r5
	subs	r3, r3, #225
	subs	r3, r3, #255
	ldrh	r2, [r3]
	subs	r1, r4, #1
	movs	r0, r7
	bl	plot3
.LVL559:
	movs	r3, #240
	.loc 1 2793 0 discriminator 3
	adds	r4, r4, #2
.LVL560:
	lsls	r3, r3, #2
	adds	r5, r5, r3
	cmp	r4, #160
	bne	.L389
.LVL561:
	ldr	r3, [sp, #8]
	adds	r3, r3, #4
	str	r3, [sp, #8]
	ldr	r3, [sp, #4]
	adds	r6, r6, #2
.LVL562:
	subs	r3, r3, #2
	str	r3, [sp, #4]
	subs	r7, r7, #2
	.loc 1 2790 0 discriminator 2
	cmp	r6, #239
	bne	.L390
	.loc 1 2802 0
	add	sp, sp, #20
	@ sp needed
.LVL563:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.cfi_endproc
.LFE88:
	.size	scanlinesdata3, .-scanlinesdata3
	.align	1
	.global	SetOBJBefore
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SetOBJBefore, %function
SetOBJBefore:
.LFB89:
	.loc 1 2805 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL564:
	.loc 1 2807 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE89:
	.size	SetOBJBefore, .-SetOBJBefore
	.align	1
	.global	SetOBJBehind
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SetOBJBehind, %function
SetOBJBehind:
.LFB129:
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE129:
	.size	SetOBJBehind, .-SetOBJBehind
	.align	1
	.global	leftwipe3
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	leftwipe3, %function
leftwipe3:
.LFB91:
	.loc 1 2815 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL565:
	.loc 1 2815 0
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 2816 0
	movs	r6, #0
	.loc 1 2820 0
	lsls	r4, r0, #16
	lsrs	r4, r4, #16
.LVL566:
.L396:
	.loc 1 2818 0
	movs	r5, #0
.LVL567:
.L397:
	.loc 1 2820 0 discriminator 3
	movs	r1, r5
	movs	r2, r4
	movs	r0, r6
	.loc 1 2818 0 discriminator 3
	adds	r5, r5, #1
.LVL568:
	.loc 1 2820 0 discriminator 3
	bl	plot3
.LVL569:
	.loc 1 2818 0 discriminator 3
	cmp	r5, #160
	bne	.L397
.LVL570:
	.loc 1 2816 0 discriminator 2
	adds	r6, r6, #1
.LVL571:
	cmp	r6, #240
	bne	.L396
	.loc 1 2824 0
	@ sp needed
.LVL572:
.LVL573:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.cfi_endproc
.LFE91:
	.size	leftwipe3, .-leftwipe3
	.align	1
	.global	rightwipe3
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	rightwipe3, %function
rightwipe3:
.LFB92:
	.loc 1 2827 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL574:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 2830 0
	movs	r6, #240
	.loc 1 2832 0
	lsls	r4, r0, #16
	lsrs	r4, r4, #16
.LVL575:
.L401:
	.loc 1 2830 0
	movs	r5, #0
.LVL576:
.L402:
	.loc 1 2832 0 discriminator 3
	movs	r1, r5
	movs	r2, r4
	movs	r0, r6
	.loc 1 2830 0 discriminator 3
	adds	r5, r5, #1
.LVL577:
	.loc 1 2832 0 discriminator 3
	bl	plot3
.LVL578:
	.loc 1 2830 0 discriminator 3
	cmp	r5, #160
	bne	.L402
.LVL579:
	subs	r6, r6, #1
.LVL580:
	.loc 1 2828 0 discriminator 2
	cmp	r6, #0
	bne	.L401
	.loc 1 2836 0
	@ sp needed
.LVL581:
.LVL582:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.cfi_endproc
.LFE92:
	.size	rightwipe3, .-rightwipe3
	.align	1
	.global	topwipe3
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	topwipe3, %function
topwipe3:
.LFB93:
	.loc 1 2838 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL583:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 2839 0
	movs	r6, #0
	.loc 1 2843 0
	lsls	r4, r0, #16
	lsrs	r4, r4, #16
.LVL584:
.L406:
	.loc 1 2841 0
	movs	r5, #240
.LVL585:
.L407:
	.loc 1 2843 0 discriminator 3
	movs	r0, r5
	movs	r2, r4
	movs	r1, r6
	.loc 1 2841 0 discriminator 3
	subs	r5, r5, #1
.LVL586:
	.loc 1 2843 0 discriminator 3
	bl	plot3
.LVL587:
	.loc 1 2841 0 discriminator 3
	cmp	r5, #0
	bne	.L407
.LVL588:
	.loc 1 2839 0 discriminator 2
	adds	r6, r6, #1
.LVL589:
	cmp	r6, #160
	bne	.L406
	.loc 1 2847 0
	@ sp needed
.LVL590:
.LVL591:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.cfi_endproc
.LFE93:
	.size	topwipe3, .-topwipe3
	.align	1
	.global	bottomwipe3
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	bottomwipe3, %function
bottomwipe3:
.LFB94:
	.loc 1 2849 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL592:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 2852 0
	movs	r6, #160
	.loc 1 2854 0
	lsls	r4, r0, #16
	lsrs	r4, r4, #16
.LVL593:
.L411:
	.loc 1 2852 0
	movs	r5, #240
.LVL594:
.L412:
	.loc 1 2854 0 discriminator 3
	movs	r0, r5
	movs	r2, r4
	movs	r1, r6
	.loc 1 2852 0 discriminator 3
	subs	r5, r5, #1
.LVL595:
	.loc 1 2854 0 discriminator 3
	bl	plot3
.LVL596:
	.loc 1 2852 0 discriminator 3
	cmp	r5, #0
	bne	.L412
.LVL597:
	subs	r6, r6, #1
.LVL598:
	.loc 1 2850 0 discriminator 2
	cmp	r6, #0
	bne	.L411
	.loc 1 2858 0
	@ sp needed
.LVL599:
.LVL600:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.cfi_endproc
.LFE94:
	.size	bottomwipe3, .-bottomwipe3
	.align	1
	.global	static3
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	static3, %function
static3:
.LFB95:
	.loc 1 2860 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 2861 0
	ldr	r4, .L420
	bl	.L422
.LVL601:
	ldr	r3, .L420+4
	ands	r0, r3
.LVL602:
	bpl	.L417
	movs	r3, #2
	subs	r0, r0, #1
	rsbs	r3, r3, #0
	orrs	r0, r3
	adds	r0, r0, #1
.L417:
	ldr	r5, .L420+8
	.loc 1 2862 0
	cmp	r0, #1
	bne	.L416
	.loc 1 2864 0
	bl	.L422
.LVL603:
	movs	r6, r0
	bl	.L422
.LVL604:
	movs	r1, #160
	bl	.L172
.LVL605:
	movs	r0, r6
	movs	r4, r1
	movs	r1, #240
	bl	.L172
.LVL606:
	movs	r2, #0
	movs	r0, r1
.L419:
	.loc 1 2866 0
	movs	r1, r4
	bl	plot3
.LVL607:
	.loc 1 2868 0
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L416:
	.loc 1 2866 0
	bl	.L422
.LVL608:
	movs	r6, r0
	bl	.L422
.LVL609:
	movs	r1, #160
	bl	.L172
.LVL610:
	movs	r0, r6
	movs	r4, r1
	movs	r1, #240
	bl	.L172
.LVL611:
	ldr	r2, .L420+12
	movs	r0, r1
	b	.L419
.L421:
	.align	2
.L420:
	.word	rand
	.word	-2147483647
	.word	__aeabi_idivmod
	.word	65535
	.cfi_endproc
.LFE95:
	.size	static3, .-static3
	.align	1
	.global	circlewipe3
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	circlewipe3, %function
circlewipe3:
.LFB96:
	.loc 1 2870 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL612:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 2870 0
	movs	r5, r0
	.loc 1 2871 0
	movs	r4, #0
.LVL613:
.L424:
	.loc 1 2873 0 discriminator 3
	movs	r2, r4
	movs	r3, r5
	movs	r1, #80
	movs	r0, #120
	.loc 1 2871 0 discriminator 3
	adds	r4, r4, #1
.LVL614:
	.loc 1 2873 0 discriminator 3
	bl	DrawCircle3
.LVL615:
	.loc 1 2871 0 discriminator 3
	cmp	r4, #120
	bne	.L424
	.loc 1 2876 0
	@ sp needed
.LVL616:
.LVL617:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.cfi_endproc
.LFE96:
	.size	circlewipe3, .-circlewipe3
	.align	1
	.global	binarywipe3
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	binarywipe3, %function
binarywipe3:
.LFB97:
	.loc 1 2878 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL618:
	push	{r0, r1, r4, r5, r6, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 0, -24
	.cfi_offset 1, -20
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 2879 0
	movs	r4, #0
	ldr	r6, .L427
	lsls	r5, r0, #16
	lsrs	r5, r5, #16
	movs	r3, r5
	movs	r2, r6
	str	r4, [sp]
	movs	r1, r4
.LVL619:
	movs	r0, r4
.LVL620:
	bl	Print
.LVL621:
	.loc 1 2881 0
	movs	r3, r5
	movs	r2, r6
	str	r4, [sp]
	movs	r1, #8
	movs	r0, r4
	bl	Print
.LVL622:
	.loc 1 2883 0
	movs	r3, r5
	movs	r2, r6
	str	r4, [sp]
	movs	r1, #16
	movs	r0, r4
	bl	Print
.LVL623:
	.loc 1 2885 0
	movs	r3, r5
	movs	r2, r6
	str	r4, [sp]
	movs	r1, #24
	movs	r0, r4
	bl	Print
.LVL624:
	.loc 1 2887 0
	movs	r3, r5
	movs	r2, r6
	str	r4, [sp]
	movs	r1, #32
	movs	r0, r4
	bl	Print
.LVL625:
	.loc 1 2889 0
	movs	r3, r5
	movs	r2, r6
	str	r4, [sp]
	movs	r1, #40
	movs	r0, r4
	bl	Print
.LVL626:
	.loc 1 2891 0
	movs	r3, r5
	movs	r2, r6
	str	r4, [sp]
	movs	r1, #48
	movs	r0, r4
	bl	Print
.LVL627:
	.loc 1 2893 0
	movs	r3, r5
	movs	r2, r6
	str	r4, [sp]
	movs	r1, #8
	movs	r0, r4
	bl	Print
.LVL628:
	.loc 1 2895 0
	movs	r3, r5
	movs	r2, r6
	str	r4, [sp]
	movs	r1, #16
	movs	r0, r4
	bl	Print
.LVL629:
	.loc 1 2897 0
	movs	r3, r5
	movs	r2, r6
	str	r4, [sp]
	movs	r1, #24
	movs	r0, r4
	bl	Print
.LVL630:
	.loc 1 2899 0
	movs	r3, r5
	movs	r2, r6
	str	r4, [sp]
	movs	r1, #32
	movs	r0, r4
	bl	Print
.LVL631:
	.loc 1 2901 0
	movs	r3, r5
	movs	r2, r6
	str	r4, [sp]
	movs	r1, #40
	movs	r0, r4
	bl	Print
.LVL632:
	.loc 1 2903 0
	movs	r3, r5
	movs	r2, r6
	str	r4, [sp]
	movs	r1, #48
	movs	r0, r4
	bl	Print
.LVL633:
	.loc 1 2905 0
	movs	r3, r5
	movs	r2, r6
	str	r4, [sp]
	movs	r1, #56
	movs	r0, r4
	bl	Print
.LVL634:
	.loc 1 2907 0
	movs	r3, r5
	movs	r2, r6
	str	r4, [sp]
	movs	r1, #64
	movs	r0, r4
	bl	Print
.LVL635:
	.loc 1 2909 0
	movs	r3, r5
	movs	r2, r6
	str	r4, [sp]
	movs	r1, #72
	movs	r0, r4
	bl	Print
.LVL636:
	.loc 1 2911 0
	movs	r3, r5
	movs	r2, r6
	str	r4, [sp]
	movs	r1, #80
	movs	r0, r4
	bl	Print
.LVL637:
	.loc 1 2913 0
	movs	r3, r5
	movs	r2, r6
	str	r4, [sp]
	movs	r1, #88
	movs	r0, r4
	bl	Print
.LVL638:
	.loc 1 2915 0
	movs	r3, r5
	movs	r2, r6
	str	r4, [sp]
	movs	r1, #96
	movs	r0, r4
	bl	Print
.LVL639:
	.loc 1 2917 0
	movs	r3, r5
	movs	r2, r6
	str	r4, [sp]
	movs	r1, #104
	movs	r0, r4
	bl	Print
.LVL640:
	.loc 1 2919 0
	movs	r3, r5
	movs	r2, r6
	str	r4, [sp]
	movs	r1, #112
	movs	r0, r4
	bl	Print
.LVL641:
	.loc 1 2921 0
	movs	r3, r5
	movs	r2, r6
	str	r4, [sp]
	movs	r1, #120
	movs	r0, r4
	bl	Print
.LVL642:
	.loc 1 2923 0
	movs	r3, r5
	movs	r2, r6
	str	r4, [sp]
	movs	r1, #128
	movs	r0, r4
	bl	Print
.LVL643:
	.loc 1 2925 0
	movs	r3, r5
	movs	r2, r6
	str	r4, [sp]
	movs	r1, #136
	movs	r0, r4
	bl	Print
.LVL644:
	.loc 1 2927 0
	movs	r3, r5
	movs	r2, r6
	str	r4, [sp]
	movs	r1, #140
	movs	r0, r4
	bl	Print
.LVL645:
	.loc 1 2929 0
	movs	r3, r5
	movs	r2, r6
	str	r4, [sp]
	movs	r1, #148
	movs	r0, r4
	bl	Print
.LVL646:
	.loc 1 2931 0
	movs	r3, r5
	movs	r2, r6
	str	r4, [sp]
	movs	r1, #156
	movs	r0, r4
	bl	Print
.LVL647:
	.loc 1 2933 0
	movs	r3, r5
	movs	r2, r6
	str	r4, [sp]
	movs	r1, #164
	movs	r0, r4
	bl	Print
.LVL648:
	.loc 1 2935 0
	@ sp needed
	pop	{r0, r1, r4, r5, r6}
	pop	{r0}
	bx	r0
.L428:
	.align	2
.L427:
	.word	.LC76
	.cfi_endproc
.LFE97:
	.size	binarywipe3, .-binarywipe3
	.align	1
	.global	coolscanlines3
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	coolscanlines3, %function
coolscanlines3:
.LFB98:
	.loc 1 2938 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL649:
	push	{r0, r1, r2, r4, r5, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 0, -24
	.cfi_offset 1, -20
	.cfi_offset 2, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 2939 0
	movs	r5, #1
	.loc 1 2941 0
	lsls	r4, r0, #16
	lsrs	r4, r4, #16
.LVL650:
.L430:
	.loc 1 2941 0 is_stmt 0 discriminator 3
	movs	r3, r5
	movs	r1, r5
	str	r4, [sp]
	movs	r2, #240
	movs	r0, #0
	.loc 1 2939 0 is_stmt 1 discriminator 3
	adds	r5, r5, #2
.LVL651:
	.loc 1 2941 0 discriminator 3
	bl	DrawLine3
.LVL652:
	.loc 1 2939 0 discriminator 3
	cmp	r5, #161
	bne	.L430
	.loc 1 2944 0
	adds	r5, r5, #79
.LVL653:
.L431:
	.loc 1 2946 0 discriminator 3
	movs	r3, r5
	movs	r1, r5
	str	r4, [sp]
	movs	r2, #240
	movs	r0, #0
	.loc 1 2944 0 discriminator 3
	subs	r5, r5, #2
.LVL654:
	.loc 1 2946 0 discriminator 3
	bl	DrawLine3
.LVL655:
	.loc 1 2944 0 discriminator 3
	cmp	r5, #0
	bne	.L431
	.loc 1 2949 0
	@ sp needed
.LVL656:
	pop	{r0, r1, r2, r4, r5}
	pop	{r0}
	bx	r0
	.cfi_endproc
.LFE98:
	.size	coolscanlines3, .-coolscanlines3
	.align	1
	.global	GetBGPalPoint
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetBGPalPoint, %function
GetBGPalPoint:
.LFB99:
	.loc 1 2952 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL657:
	.loc 1 2953 0
	ldr	r3, .L435
	ldr	r3, [r3, #40]
	lsls	r0, r0, #1
.LVL658:
	ldrh	r0, [r0, r3]
	.loc 1 2954 0
	@ sp needed
	bx	lr
.L436:
	.align	2
.L435:
	.word	.LANCHOR0
	.cfi_endproc
.LFE99:
	.size	GetBGPalPoint, .-GetBGPalPoint
	.align	1
	.global	GetOBJPalPoint
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetOBJPalPoint, %function
GetOBJPalPoint:
.LFB100:
	.loc 1 2957 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL659:
	.loc 1 2958 0
	ldr	r3, .L438
	ldr	r3, [r3, #28]
	lsls	r0, r0, #1
.LVL660:
	ldrh	r0, [r0, r3]
	.loc 1 2959 0
	@ sp needed
	bx	lr
.L439:
	.align	2
.L438:
	.word	.LANCHOR0
	.cfi_endproc
.LFE100:
	.size	GetOBJPalPoint, .-GetOBJPalPoint
	.align	1
	.global	loadSpritePalPart
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	loadSpritePalPart, %function
loadSpritePalPart:
.LFB101:
	.loc 1 2962 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL661:
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	ldr	r4, .L443
	ldr	r4, [r4, #28]
	lsls	r3, r0, #1
	adds	r4, r4, r3
	.loc 1 2963 0
	movs	r3, #0
.LVL662:
.L441:
	.loc 1 2963 0 is_stmt 0 discriminator 1
	cmp	r0, r2
	blt	.L442
	.loc 1 2967 0 is_stmt 1
	@ sp needed
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L442:
	.loc 1 2965 0 discriminator 3
	ldrh	r5, [r1, r3]
	.loc 1 2963 0 discriminator 3
	adds	r0, r0, #1
.LVL663:
	.loc 1 2965 0 discriminator 3
	strh	r5, [r4, r3]
	adds	r3, r3, #2
	b	.L441
.L444:
	.align	2
.L443:
	.word	.LANCHOR0
	.cfi_endproc
.LFE101:
	.size	loadSpritePalPart, .-loadSpritePalPart
	.align	1
	.global	loadBGPalPart
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	loadBGPalPart, %function
loadBGPalPart:
.LFB102:
	.loc 1 2970 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL664:
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	ldr	r4, .L448
	ldr	r4, [r4, #40]
	lsls	r3, r0, #1
	adds	r4, r4, r3
	.loc 1 2971 0
	movs	r3, #0
.LVL665:
.L446:
	.loc 1 2971 0 is_stmt 0 discriminator 1
	cmp	r0, r2
	blt	.L447
	.loc 1 2975 0 is_stmt 1
	@ sp needed
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L447:
	.loc 1 2973 0 discriminator 3
	ldrh	r5, [r1, r3]
	.loc 1 2971 0 discriminator 3
	adds	r0, r0, #1
.LVL666:
	.loc 1 2973 0 discriminator 3
	strh	r5, [r4, r3]
	adds	r3, r3, #2
	b	.L446
.L449:
	.align	2
.L448:
	.word	.LANCHOR0
	.cfi_endproc
.LFE102:
	.size	loadBGPalPart, .-loadBGPalPart
	.align	1
	.global	SetBGPalPoint
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SetBGPalPoint, %function
SetBGPalPoint:
.LFB103:
	.loc 1 2978 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL667:
	.loc 1 2979 0
	ldr	r3, .L451
	ldr	r3, [r3, #40]
	lsls	r0, r0, #1
.LVL668:
	strh	r1, [r0, r3]
	.loc 1 2980 0
	@ sp needed
	bx	lr
.L452:
	.align	2
.L451:
	.word	.LANCHOR0
	.cfi_endproc
.LFE103:
	.size	SetBGPalPoint, .-SetBGPalPoint
	.align	1
	.global	SetOBJPalPoint
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SetOBJPalPoint, %function
SetOBJPalPoint:
.LFB104:
	.loc 1 2983 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL669:
	.loc 1 2984 0
	ldr	r3, .L454
	ldr	r3, [r3, #28]
	lsls	r0, r0, #1
.LVL670:
	strh	r1, [r0, r3]
	.loc 1 2985 0
	@ sp needed
	bx	lr
.L455:
	.align	2
.L454:
	.word	.LANCHOR0
	.cfi_endproc
.LFE104:
	.size	SetOBJPalPoint, .-SetOBJPalPoint
	.align	1
	.global	glideSpritetoPos
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	glideSpritetoPos, %function
glideSpritetoPos:
.LFB105:
	.loc 1 2988 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 16, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL671:
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	movs	r4, r1
	movs	r7, r3
	movs	r5, r2
	.loc 1 2989 0
	ldr	r3, .L469
.LVL672:
	lsls	r0, r0, #3
.LVL673:
	adds	r3, r0, r3
	.loc 1 2988 0
	sub	sp, sp, #36
	.cfi_def_cfa_offset 56
	.loc 1 2989 0
	movs	r0, r3
	str	r3, [sp, #12]
	bl	MoveSprite
.LVL674:
	.loc 1 2995 0
	subs	r3, r7, r4
	asrs	r2, r3, #31
	adds	r3, r3, r2
	eors	r3, r2
.LVL675:
	.loc 1 2996 0
	ldr	r2, [sp, #56]
	subs	r2, r2, r5
	asrs	r1, r2, #31
	adds	r2, r2, r1
	eors	r2, r1
.LVL676:
	.loc 1 2998 0
	cmp	r3, r2
	blt	.L457
	.loc 1 3001 0
	adds	r1, r3, #1
	str	r1, [sp, #16]
.LVL677:
	.loc 1 3002 0
	lsls	r1, r2, #1
.LVL678:
	subs	r6, r1, r3
.LVL679:
	.loc 1 3004 0
	subs	r3, r2, r3
.LVL680:
	lsls	r3, r3, #1
	str	r3, [sp, #24]
	.loc 1 3007 0
	movs	r3, #0
	.loc 1 3003 0
	str	r1, [sp, #20]
.LVL681:
	.loc 1 3007 0
	str	r3, [sp, #4]
	.loc 1 3005 0
	adds	r3, r3, #1
.LVL682:
.L467:
	.loc 1 3016 0
	str	r3, [sp]
.LVL683:
	movs	r3, #1
.LVL684:
	str	r3, [sp, #28]
	.loc 1 3022 0
	cmp	r4, r7
	ble	.L459
	.loc 1 3024 0
	ldr	r3, [sp]
	rsbs	r3, r3, #0
	str	r3, [sp]
.LVL685:
	.loc 1 3025 0
	movs	r3, #1
.LVL686:
	rsbs	r3, r3, #0
	str	r3, [sp, #28]
.LVL687:
.L459:
	.loc 1 3027 0
	ldr	r3, [sp, #56]
	movs	r7, #1
.LVL688:
	cmp	r5, r3
	ble	.L460
	.loc 1 3029 0
	ldr	r3, [sp, #4]
	rsbs	r3, r3, #0
	str	r3, [sp, #4]
.LVL689:
	.loc 1 3030 0
	subs	r7, r7, #2
.LVL690:
.L460:
	.loc 1 3035 0
	movs	r3, #1
.LVL691:
.L468:
	.loc 1 3035 0 is_stmt 0 discriminator 2
	str	r3, [sp, #8]
.LVL692:
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #16]
	cmp	r3, r2
	bne	.L464
	.loc 1 3053 0 is_stmt 1
	add	sp, sp, #36
.LVL693:
	@ sp needed
.LVL694:
.LVL695:
.LVL696:
.LVL697:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.LVL698:
.L457:
	.loc 1 3012 0
	adds	r1, r2, #1
	str	r1, [sp, #16]
.LVL699:
	.loc 1 3013 0
	lsls	r1, r3, #1
.LVL700:
	.loc 1 3015 0
	subs	r3, r3, r2
.LVL701:
	lsls	r3, r3, #1
	str	r3, [sp, #24]
	.loc 1 3018 0
	movs	r3, #1
	.loc 1 3013 0
	subs	r6, r1, r2
.LVL702:
	.loc 1 3018 0
	str	r3, [sp, #4]
	.loc 1 3014 0
	str	r1, [sp, #20]
.LVL703:
	.loc 1 3016 0
	movs	r3, #0
	b	.L467
.LVL704:
.L464:
	.loc 1 3037 0
	bl	WaitForVblank
.LVL705:
	.loc 1 3038 0
	bl	CopyOAM
.LVL706:
	.loc 1 3039 0
	movs	r2, r5
	movs	r1, r4
	ldr	r0, [sp, #12]
	bl	MoveSprite
.LVL707:
	.loc 1 3040 0
	cmp	r6, #0
	bge	.L462
	.loc 1 3041 0
	ldr	r3, [sp, #20]
	adds	r6, r6, r3
.LVL708:
	.loc 1 3042 0
	ldr	r3, [sp]
	adds	r4, r4, r3
.LVL709:
	.loc 1 3043 0
	ldr	r3, [sp, #4]
	adds	r5, r5, r3
.LVL710:
.L463:
	.loc 1 3035 0 discriminator 2
	ldr	r3, [sp, #8]
	adds	r3, r3, #1
	b	.L468
.L462:
	.loc 1 3047 0
	ldr	r3, [sp, #24]
	adds	r6, r6, r3
.LVL711:
	.loc 1 3048 0
	ldr	r3, [sp, #28]
	.loc 1 3049 0
	adds	r5, r5, r7
.LVL712:
	.loc 1 3048 0
	adds	r4, r4, r3
.LVL713:
	b	.L463
.L470:
	.align	2
.L469:
	.word	sprites
	.cfi_endproc
.LFE105:
	.size	glideSpritetoPos, .-glideSpritetoPos
	.align	1
	.global	playSoundUntilDone
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	playSoundUntilDone, %function
playSoundUntilDone:
.LFB106:
	.loc 1 3055 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL714:
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
	.cfi_offset 1, -28
	.cfi_offset 2, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 3056 0
	ldr	r3, .L472
	ldr	r2, .L472+4
	.loc 1 3055 0
	str	r1, [sp, #4]
	.loc 1 3056 0
	strh	r3, [r2]
	.loc 1 3057 0
	movs	r3, #128
	ldr	r1, .L472+8
.LVL715:
	strh	r3, [r1]
	.loc 1 3058 0
	ldr	r3, .L472+12
	lsls	r0, r0, #4
.LVL716:
	ldr	r4, [r0, r3]
	.loc 1 3061 0
	adds	r3, r3, r0
	movs	r0, #255
	.loc 1 3058 0
	ldr	r7, .L472+16
	.loc 1 3059 0
	ldr	r6, .L472+20
	ldr	r2, .L472+24
	.loc 1 3058 0
	str	r4, [r7]
	.loc 1 3059 0
	str	r2, [r6]
	.loc 1 3060 0
	ldr	r4, .L472+28
	ldr	r2, .L472+32
	.loc 1 3061 0
	ldr	r1, [r3, #4]
	.loc 1 3060 0
	strh	r2, [r4]
	.loc 1 3061 0
	ldr	r3, .L472+36
	lsls	r0, r0, #24
	bl	.L171
.LVL717:
	.loc 1 3062 0
	movs	r3, #192
	.loc 1 3061 0
	ldr	r5, .L472+40
	.loc 1 3062 0
	ldr	r4, .L472+44
	.loc 1 3061 0
	lsls	r0, r0, #16
	lsrs	r0, r0, #16
	strh	r0, [r5]
	.loc 1 3062 0
	strh	r3, [r4]
	.loc 1 3063 0
	ldr	r0, [sp, #4]
	bl	Sleep
.LVL718:
	.loc 1 3064 0
	movs	r3, #0
	ldr	r2, .L472+4
	.loc 1 3065 0
	ldr	r1, .L472+8
	.loc 1 3064 0
	strh	r3, [r2]
	.loc 1 3068 0
	ldr	r2, .L472+28
	.loc 1 3065 0
	strh	r3, [r1]
	.loc 1 3071 0
	@ sp needed
	.loc 1 3066 0
	str	r3, [r7]
	.loc 1 3067 0
	str	r3, [r6]
	.loc 1 3068 0
	strh	r3, [r2]
	.loc 1 3069 0
	strh	r3, [r5]
	.loc 1 3070 0
	strh	r3, [r4]
	.loc 1 3071 0
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L473:
	.align	2
.L472:
	.word	2820
	.word	67108994
	.word	67108996
	.word	sound
	.word	67109052
	.word	67109056
	.word	67109024
	.word	67109062
	.word	-18880
	.word	__aeabi_idiv
	.word	67109120
	.word	67109122
	.cfi_endproc
.LFE106:
	.size	playSoundUntilDone, .-playSoundUntilDone
	.align	1
	.global	spl_CreateFakeBSOD
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	spl_CreateFakeBSOD, %function
spl_CreateFakeBSOD:
.LFB107:
	.loc 1 3074 0
	.cfi_startproc
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 0, -24
	.cfi_offset 1, -20
	.cfi_offset 2, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 3075 0
	movs	r5, #248
	.loc 1 3076 0
	ldr	r4, .L476
	.loc 1 3075 0
	lsls	r5, r5, #7
	movs	r0, r5
	bl	fillscreen3
.LVL719:
	.loc 1 3076 0
	movs	r3, r4
	ldr	r2, .L476+4
	movs	r1, #8
	movs	r0, #20
	str	r5, [sp]
	bl	Print
.LVL720:
	.loc 1 3077 0
	movs	r3, r4
	ldr	r2, .L476+8
	movs	r1, #17
	movs	r0, #16
	str	r5, [sp]
	bl	Print
.LVL721:
	.loc 1 3078 0
	movs	r3, r4
	ldr	r2, .L476+12
	movs	r1, #26
	movs	r0, #8
	str	r5, [sp]
	bl	Print
.LVL722:
	.loc 1 3079 0
	movs	r3, #33
	movs	r2, #39
	movs	r1, r3
	movs	r0, r3
	str	r4, [sp]
	bl	DrawLine3
.LVL723:
	.loc 1 3080 0
	movs	r3, #33
	movs	r2, #71
	movs	r1, r3
	movs	r0, #64
	str	r4, [sp]
	bl	DrawLine3
.LVL724:
	.loc 1 3081 0
	movs	r3, r4
	ldr	r2, .L476+16
	movs	r1, #35
	movs	r0, #8
	str	r5, [sp]
	bl	Print
.LVL725:
	.loc 1 3082 0
	movs	r3, #42
	movs	r2, #39
	movs	r1, r3
	movs	r0, #33
	str	r4, [sp]
	bl	DrawLine3
.LVL726:
	.loc 1 3083 0
	movs	r3, r4
	ldr	r2, .L476+20
	movs	r1, #80
	movs	r0, #16
	str	r5, [sp]
	bl	Print
.LVL727:
	.loc 1 3084 0
	movs	r3, r4
	ldr	r2, .L476+24
	movs	r1, #89
	movs	r0, #16
	str	r5, [sp]
	bl	Print
.LVL728:
	.loc 1 3085 0
	str	r5, [sp]
	movs	r3, r4
	ldr	r2, .L476+28
	movs	r1, #98
	movs	r0, #8
	bl	Print
.LVL729:
.L475:
	b	.L475
.L477:
	.align	2
.L476:
	.word	65535
	.word	.LC87
	.word	.LC89
	.word	.LC91
	.word	.LC93
	.word	.LC95
	.word	.LC97
	.word	.LC99
	.cfi_endproc
.LFE107:
	.size	spl_CreateFakeBSOD, .-spl_CreateFakeBSOD
	.align	1
	.global	GetOBJPos
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetOBJPos, %function
GetOBJPos:
.LFB108:
	.loc 1 3108 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL730:
	.loc 1 3111 0
	movs	r3, #224
	lsls	r3, r3, #15
	adds	r0, r0, r3
.LVL731:
	.loc 1 3112 0
	cmp	r1, #0
	bne	.L479
	.loc 1 3114 0
	ldr	r3, .L482
	ldr	r3, [r3, #44]
	lsls	r0, r0, #6
.LVL732:
	ldr	r0, [r0, r3]
	adds	r0, r0, #8
.L478:
	.loc 1 3120 0
	@ sp needed
	bx	lr
.LVL733:
.L479:
	.loc 1 3116 0
	cmp	r1, #1
	bne	.L478
	.loc 1 3118 0
	ldr	r3, .L482
	ldr	r3, [r3, #44]
	lsls	r0, r0, #6
.LVL734:
	ldr	r0, [r0, r3]
	adds	r0, r0, #10
	b	.L478
.L483:
	.align	2
.L482:
	.word	.LANCHOR0
	.cfi_endproc
.LFE108:
	.size	GetOBJPos, .-GetOBJPos
	.align	1
	.global	GetOBJAttrib
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetOBJAttrib, %function
GetOBJAttrib:
.LFB109:
	.loc 1 3122 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL735:
	.loc 1 3123 0
	cmp	r1, #0
	bne	.L485
	.loc 1 3125 0
	ldr	r3, .L490
	lsls	r0, r0, #3
.LVL736:
	ldrh	r0, [r0, r3]
.L484:
	.loc 1 3139 0
	@ sp needed
	bx	lr
.LVL737:
.L485:
	.loc 1 3127 0
	cmp	r1, #1
	bne	.L487
	.loc 1 3129 0
	ldr	r3, .L490
	lsls	r0, r0, #3
.LVL738:
	adds	r0, r3, r0
	ldrh	r0, [r0, #2]
	b	.L484
.LVL739:
.L487:
	.loc 1 3131 0
	cmp	r1, #2
	bne	.L488
	.loc 1 3133 0
	ldr	r3, .L490
	lsls	r0, r0, #3
.LVL740:
	adds	r0, r3, r0
	ldrh	r0, [r0, #4]
	b	.L484
.LVL741:
.L488:
	.loc 1 3135 0
	cmp	r1, #3
	bne	.L484
	.loc 1 3137 0
	ldr	r3, .L490
	lsls	r0, r0, #3
.LVL742:
	adds	r0, r3, r0
	ldrh	r0, [r0, #6]
	b	.L484
.L491:
	.align	2
.L490:
	.word	sprites
	.cfi_endproc
.LFE109:
	.size	GetOBJAttrib, .-GetOBJAttrib
	.align	1
	.global	GetOBJOffset
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetOBJOffset, %function
GetOBJOffset:
.LFB110:
	.loc 1 3141 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL743:
	.loc 1 3143 0
	movs	r0, #0
.LVL744:
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE110:
	.size	GetOBJOffset, .-GetOBJOffset
	.align	1
	.global	GetDataTile
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetDataTile, %function
GetDataTile:
.LFB111:
	.loc 1 3145 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL745:
	.loc 1 3145 0
	movs	r2, r0
	.loc 1 3147 0
	movs	r3, #240
	movs	r0, r2
	muls	r0, r3
.LVL746:
	lsls	r0, r0, #4
	ldrh	r0, [r1, r0]
	.loc 1 3148 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE111:
	.size	GetDataTile, .-GetDataTile
	.align	1
	.global	loadBGTiles
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	loadBGTiles, %function
loadBGTiles:
.LFB112:
	.loc 1 3150 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL747:
	.loc 1 3153 0
	movs	r2, r0
	ldr	r3, .L497
	ldr	r1, [r3, #48]
.L495:
	.loc 1 3151 0
	ldrh	r3, [r0]
	cmp	r3, #0
	bne	.L496
	.loc 1 3155 0
	@ sp needed
	bx	lr
.L496:
	.loc 1 3153 0
	ldrh	r3, [r2]
	strh	r3, [r1]
	b	.L495
.L498:
	.align	2
.L497:
	.word	.LANCHOR0
	.cfi_endproc
.LFE112:
	.size	loadBGTiles, .-loadBGTiles
	.align	1
	.global	replaceArrayElmt
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	replaceArrayElmt, %function
replaceArrayElmt:
.LFB113:
	.loc 1 3157 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL748:
	.loc 1 3158 0
	ldrb	r3, [r2]
	lsls	r0, r0, #1
.LVL749:
	strh	r3, [r0, r1]
	.loc 1 3159 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE113:
	.size	replaceArrayElmt, .-replaceArrayElmt
	.align	1
	.global	drawbitmap3att
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	drawbitmap3att, %function
drawbitmap3att:
.LFB114:
	.loc 1 3162 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL750:
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	movs	r7, r2
	.loc 1 3163 0
	movs	r4, #0
	.loc 1 3162 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 40
	.loc 1 3162 0
	str	r0, [sp, #8]
	str	r1, [sp, #12]
.LVL751:
.L501:
	.loc 1 3163 0 discriminator 1
	cmp	r4, r7
	bge	.L500
	lsls	r3, r4, #1
	str	r3, [sp, #4]
	ldr	r6, [sp, #8]
	.loc 1 3165 0
	movs	r5, #0
	b	.L504
.LVL752:
.L502:
	.loc 1 3167 0 discriminator 3
	ldrh	r2, [r6]
	movs	r0, r5
	movs	r1, r4
	bl	plot3
.LVL753:
	ldr	r3, [sp, #4]
	.loc 1 3165 0 discriminator 3
	adds	r5, r5, #1
.LVL754:
	adds	r6, r6, r3
.LVL755:
.L504:
	.loc 1 3165 0 is_stmt 0 discriminator 1
	ldr	r3, [sp, #12]
	cmp	r5, r3
	blt	.L502
	.loc 1 3163 0 is_stmt 1 discriminator 2
	adds	r4, r4, #1
.LVL756:
	b	.L501
.LVL757:
.L500:
	.loc 1 3170 0
	add	sp, sp, #20
	@ sp needed
.LVL758:
.LVL759:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.cfi_endproc
.LFE114:
	.size	drawbitmap3att, .-drawbitmap3att
	.align	1
	.global	GetROMHeader
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetROMHeader, %function
GetROMHeader:
.LFB115:
	.loc 1 3173 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL760:
	push	{r0, r1, r2, r3, r4, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 0, -24
	.cfi_offset 1, -20
	.cfi_offset 2, -16
	.cfi_offset 3, -12
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 3177 0
	movs	r3, #0
	.loc 1 3179 0
	ldr	r1, .L508
	add	r0, sp, #4
.LVL761:
.L506:
	.loc 1 3179 0 is_stmt 0 discriminator 3
	ldrb	r2, [r3, r1]
	strb	r2, [r3, r0]
	.loc 1 3177 0 is_stmt 1 discriminator 3
	adds	r3, r3, #1
.LVL762:
	cmp	r3, #12
	bne	.L506
	.loc 1 3181 0
	ldr	r3, .L508+4
.LVL763:
	bl	.L171
.LVL764:
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	.loc 1 3182 0
	add	sp, sp, #20
	@ sp needed
	pop	{r1}
	bx	r1
.L509:
	.align	2
.L508:
	.word	134217888
	.word	atoi
	.cfi_endproc
.LFE115:
	.size	GetROMHeader, .-GetROMHeader
	.align	1
	.global	FadeOutWhite
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	FadeOutWhite, %function
FadeOutWhite:
.LFB116:
	.loc 1 3185 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL765:
	.loc 1 3188 0
	movs	r2, #191
	.loc 1 3185 0
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 3185 0
	movs	r6, r0
.LVL766:
	.loc 1 3188 0
	movs	r4, #0
	ldr	r3, .L515
	strh	r2, [r3]
.LVL767:
.L513:
	.loc 1 3191 0
	movs	r5, r6
	.loc 1 3192 0
	ldr	r3, .L515+4
	strh	r4, [r3]
.LVL768:
.L511:
	.loc 1 3193 0
	subs	r5, r5, #1
	bcs	.L512
.LVL769:
	adds	r4, r4, #1
.LVL770:
	.loc 1 3189 0 discriminator 2
	cmp	r4, #17
	bne	.L513
	.loc 1 3196 0
	@ sp needed
.LVL771:
.LVL772:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.LVL773:
.L512:
	.loc 1 3194 0
	bl	WaitForVblank
.LVL774:
	b	.L511
.L516:
	.align	2
.L515:
	.word	67108944
	.word	67108948
	.cfi_endproc
.LFE116:
	.size	FadeOutWhite, .-FadeOutWhite
	.align	1
	.global	FadeInWhite
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	FadeInWhite, %function
FadeInWhite:
.LFB117:
	.loc 1 3200 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL775:
	.loc 1 3203 0
	movs	r2, #191
	.loc 1 3200 0
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 3200 0
	movs	r6, r0
.LVL776:
	.loc 1 3203 0
	movs	r4, #16
	ldr	r3, .L522
	strh	r2, [r3]
.LVL777:
.L520:
	.loc 1 3206 0
	movs	r5, r6
	.loc 1 3207 0
	ldr	r3, .L522+4
	strh	r4, [r3]
.LVL778:
.L518:
	.loc 1 3208 0
	subs	r5, r5, #1
	bcs	.L519
.LVL779:
	subs	r4, r4, #1
.LVL780:
	.loc 1 3204 0 discriminator 2
	ldr	r3, .L522+8
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
	cmp	r4, r3
	bne	.L520
	.loc 1 3211 0
	@ sp needed
.LVL781:
.LVL782:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.LVL783:
.L519:
	.loc 1 3209 0
	bl	WaitForVblank
.LVL784:
	b	.L518
.L523:
	.align	2
.L522:
	.word	67108944
	.word	67108948
	.word	65535
	.cfi_endproc
.LFE117:
	.size	FadeInWhite, .-FadeInWhite
	.align	1
	.global	battle
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	battle, %function
battle:
.LFB118:
	.file 2 "main.c"
	.loc 2 52 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 53 0
	movs	r3, #5
	.loc 2 52 0
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 2 57 0
	movs	r6, #2
	.loc 2 53 0
	ldr	r5, .L624
	str	r3, [r5, #16]
	.loc 2 52 0
	sub	sp, sp, #28
	.cfi_def_cfa_offset 48
	.loc 2 57 0
	rsbs	r6, r6, #0
.L525:
	.loc 2 54 0
	ldr	r4, [r5, #16]
	subs	r3, r4, #1
	str	r3, [r5, #16]
	ldr	r2, [r5, #4]
	cmp	r4, #0
	beq	.LCB7100
	b	.L527	@long jump
.LCB7100:
	.loc 2 61 0
	ldr	r7, .L624+4
	str	r2, [r7, #4]
	.loc 2 62 0
	movs	r2, #150
	ldr	r6, .L624+8
	lsls	r2, r2, #9
	ldr	r1, .L624+12
	ldr	r3, .L624+16
	ldr	r0, [r6]
	bl	.L171
.LVL785:
	.loc 2 63 0
	movs	r3, #128
	.loc 2 64 0
	ldr	r5, .L624+20
	.loc 2 63 0
	ldr	r2, .L624+24
	lsls	r3, r3, #19
	.loc 2 64 0
	movs	r0, r5
	.loc 2 63 0
	str	r2, [r3]
	.loc 2 64 0
	movs	r1, #240
	movs	r2, #160
	bl	MoveSprite
.LVL786:
	.loc 2 65 0
	ldr	r3, .L624+28
	strh	r3, [r5, #16]
	.loc 2 66 0
	ldr	r3, .L624+32
	strh	r3, [r5, #18]
	.loc 2 67 0
	movs	r3, #174
	.loc 2 68 0
	movs	r1, #30
	.loc 2 67 0
	lsls	r3, r3, #2
	strh	r3, [r5, #20]
	.loc 2 68 0
	ldr	r3, .L624+36
	ldr	r2, [r3, #32]
	movs	r3, r1
	muls	r3, r2
	str	r3, [r7]
	.loc 2 69 0
	bl	CopyOAM
.LVL787:
	.loc 2 70 0
	movs	r3, #1
	.loc 2 71 0
	ldr	r0, .L624+40
	.loc 2 70 0
	str	r3, [r7, #4]
	.loc 2 71 0
	bl	loadSpritePal
.LVL788:
	.loc 2 73 0
	movs	r1, #222
	.loc 2 72 0
	ldr	r3, .L624+44
	.loc 2 73 0
	lsls	r1, r1, #5
	ldr	r0, .L624+48
	.loc 2 72 0
	str	r4, [r3]
	.loc 2 73 0
	bl	loadSpriteGraphics
.LVL789:
	.loc 2 74 0
	movs	r0, #2
	bl	FadeIn
.LVL790:
	.loc 2 75 0
	ldr	r2, [r7]
	ldr	r1, .L624+52
	ldr	r3, .L624+56
	ldr	r0, .L624+60
	bl	.L171
.LVL791:
	.loc 2 76 0
	movs	r0, #1
	ldr	r5, .L624+64
	ldr	r2, .L624+60
	movs	r3, r5
	movs	r1, #8
	rsbs	r0, r0, #0
	str	r4, [sp]
	bl	Print
.LVL792:
	.loc 2 77 0
	movs	r3, r4
	ldr	r2, .L624+68
	movs	r1, #110
	movs	r0, #25
	str	r5, [sp]
	bl	Print
.LVL793:
	.loc 2 78 0
	movs	r3, r4
	ldr	r2, .L624+72
	str	r5, [sp]
	movs	r1, #119
	movs	r0, #25
	bl	Print
.LVL794:
	.loc 2 79 0
	movs	r3, #1
	str	r5, [sp, #12]
	ldr	r2, .L624+76
.L528:
	.loc 2 79 0 is_stmt 0 discriminator 1
	ldrh	r1, [r2]
	tst	r1, r3
	bne	.L528
	.loc 2 80 0 is_stmt 1
	movs	r3, #1
.L529:
	.loc 2 80 0 is_stmt 0 discriminator 1
	ldr	r2, .L624+76
	ldrh	r2, [r2]
	tst	r2, r3
	beq	.L529
	.loc 2 81 0 is_stmt 1
	movs	r2, #150
	ldr	r0, [r6]
	lsls	r2, r2, #9
	ldr	r1, .L624+12
	ldr	r3, .L624+16
	bl	.L171
.LVL795:
	.loc 2 82 0
	ldr	r3, [sp, #12]
	ldr	r2, .L624+80
	str	r3, [sp]
	movs	r1, #110
	movs	r3, #0
	movs	r0, #25
	bl	Print
.LVL796:
	.loc 2 83 0
	ldr	r3, [sp, #12]
	ldr	r2, .L624+84
	str	r3, [sp]
	movs	r1, #126
	movs	r3, #0
	movs	r0, #41
	bl	Print
.LVL797:
	.loc 2 84 0
	ldr	r3, .L624+20
	ldr	r2, .L624+88
	strh	r2, [r3, #8]
	.loc 2 85 0
	movs	r2, #33
	strh	r2, [r3, #10]
	.loc 2 86 0
	movs	r2, #238
	lsls	r2, r2, #2
	strh	r2, [r3, #12]
	.loc 2 87 0
	ldr	r2, .L624+36
	ldr	r3, [r2, #32]
	ldr	r4, .L624+60
	str	r3, [sp]
	ldr	r1, .L624+92
	ldr	r3, [r2, #24]
	ldr	r6, .L624+56
	ldr	r2, [r2, #16]
	movs	r0, r4
	bl	.L630
.LVL798:
	.loc 2 88 0
	movs	r5, #0
	movs	r0, #1
	ldr	r3, .L624+64
	movs	r2, r4
	movs	r1, r5
	rsbs	r0, r0, #0
	str	r5, [sp]
	bl	Print
.LVL799:
	.loc 2 89 0
	ldr	r2, [r7]
	ldr	r1, .L624+52
	movs	r0, r4
	bl	.L630
.LVL800:
	.loc 2 90 0
	movs	r0, #1
	ldr	r3, .L624+64
	movs	r2, r4
	movs	r1, #8
	rsbs	r0, r0, #0
	str	r5, [sp]
	bl	Print
.LVL801:
	.loc 2 91 0
	bl	CopyOAM
.LVL802:
	ldr	r3, .L624+88
	str	r3, [sp, #20]
.L530:
	.loc 2 99 0
	movs	r7, #32
.L536:
	.loc 2 92 0
	ldr	r3, .L624+36
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bgt	.L577
	ldr	r3, .L624+4
	ldr	r3, [r3]
	cmp	r3, #0
	bgt	.LCB7303
	b	.L524	@long jump
.LCB7303:
.L577:
	.loc 2 94 0
	ldr	r5, .L624
	ldr	r3, [r5, #32]
	.loc 2 95 0
	ldr	r2, [r5, #4]
	.loc 2 94 0
	adds	r3, r3, #1
	str	r3, [r5, #32]
	.loc 2 95 0
	lsrs	r3, r2, #31
	adds	r3, r3, r2
	asrs	r3, r3, #1
	.loc 2 96 0
	ldr	r6, .L624+96
	.loc 2 95 0
	str	r3, [r5]
	.loc 2 96 0
	bl	.L630
.LVL803:
	ldr	r4, .L624+100
	ands	r0, r4
	bpl	.L531
	movs	r3, #2
	subs	r0, r0, #1
	rsbs	r3, r3, #0
	orrs	r0, r3
	adds	r0, r0, #1
.L531:
	adds	r0, r0, #1
	str	r0, [r5, #4]
	.loc 2 97 0
	ldr	r1, [r5]
	movs	r0, #0
	bl	SaveInt
.LVL804:
	.loc 2 98 0
	bl	CopyOAM
.LVL805:
	.loc 2 99 0
	ldr	r3, .L624+76
	ldrh	r3, [r3]
	ands	r3, r7
	bne	.L532
	.loc 2 101 0
	str	r3, [r5, #20]
.L532:
	.loc 2 103 0
	ldr	r3, .L624+76
	ldrh	r3, [r3]
	lsls	r3, r3, #27
	bmi	.L533
	.loc 2 105 0
	movs	r3, #1
	str	r3, [r5, #20]
.L533:
	.loc 2 107 0
	ldr	r3, [r5, #20]
	cmp	r3, #0
	bne	.L534
	.loc 2 109 0
	movs	r2, #126
	movs	r1, #36
	ldr	r0, .L624+104
	bl	MoveSprite
.LVL806:
.L534:
	.loc 2 111 0
	ldr	r3, [r5, #20]
	cmp	r3, #1
	bne	.L535
	.loc 2 113 0
	movs	r2, #126
	movs	r1, #148
	ldr	r0, .L624+104
	bl	MoveSprite
.LVL807:
.L535:
	.loc 2 115 0
	ldr	r3, .L624+76
	ldrh	r2, [r3]
	movs	r3, #1
	tst	r2, r3
	bne	.L536
.L537:
	.loc 2 117 0 discriminator 1
	ldr	r2, .L624+76
	ldrh	r2, [r2]
	tst	r2, r3
	beq	.L537
	.loc 2 118 0
	ldr	r2, [r5, #4]
	lsrs	r3, r2, #31
	adds	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r5]
	.loc 2 119 0
	bl	.L630
.LVL808:
	ands	r4, r0
	bpl	.L538
	movs	r3, #2
	subs	r4, r4, #1
	rsbs	r3, r3, #0
	orrs	r4, r3
	adds	r4, r4, #1
.L538:
	adds	r4, r4, #1
	.loc 2 120 0
	ldr	r1, [r5]
	movs	r0, #0
	.loc 2 119 0
	str	r4, [r5, #4]
	.loc 2 120 0
	bl	SaveInt
.LVL809:
	.loc 2 121 0
	ldr	r6, [r5, #20]
	cmp	r6, #0
	beq	.LCB7430
	bl	.L539	@far jump
.LCB7430:
	.loc 2 123 0
	mov	r2, sp
	ldr	r3, .L624+20
	ldrh	r2, [r2, #20]
	strh	r2, [r3, #8]
	.loc 2 124 0
	ldr	r2, .L624+108
	strh	r2, [r3, #10]
	.loc 2 125 0
	movs	r2, #238
	lsls	r2, r2, #2
	strh	r2, [r3, #12]
	.loc 2 126 0
	movs	r2, #150
	ldr	r3, .L624+8
	ldr	r3, [r3]
	lsls	r2, r2, #9
	str	r3, [sp, #16]
	ldr	r1, .L624+12
	movs	r0, r3
	ldr	r3, .L624+16
	bl	.L171
.LVL810:
	.loc 2 127 0
	ldr	r4, .L624+36
	ldr	r3, [r4, #32]
	str	r3, [sp]
	ldr	r1, .L624+92
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #16]
	ldr	r7, .L624+56
	ldr	r0, .L624+60
	bl	.L631
.LVL811:
	.loc 2 128 0
	movs	r0, #1
	ldr	r3, .L624+64
	ldr	r2, .L624+60
	movs	r1, r6
	rsbs	r0, r0, #0
	str	r6, [sp]
	bl	Print
.LVL812:
	.loc 2 129 0
	ldr	r7, .L624+4
	ldr	r1, .L624+52
	ldr	r2, [r7]
	ldr	r3, .L624+56
	ldr	r0, .L624+60
	bl	.L171
.LVL813:
	.loc 2 130 0
	movs	r0, #1
	ldr	r3, .L624+64
	ldr	r2, .L624+60
	movs	r1, #8
	rsbs	r0, r0, #0
	str	r6, [sp]
	bl	Print
.LVL814:
	.loc 2 131 0
	ldr	r3, [sp, #12]
	ldr	r2, .L624+112
	str	r3, [sp]
	movs	r1, #106
	movs	r3, r6
	movs	r0, #25
	bl	Print
.LVL815:
	.loc 2 132 0
	movs	r3, #4
	str	r3, [r4, #12]
	.loc 2 133 0
	subs	r3, r3, #3
	str	r3, [r5, #20]
	.loc 2 136 0
	ldr	r3, [sp, #12]
	ldr	r2, .L624+116
	str	r3, [sp]
	movs	r1, #115
	movs	r3, r6
	movs	r0, #25
	bl	Print
.LVL816:
	.loc 2 138 0
	ldr	r3, [r4, #12]
	cmp	r3, #2
	ble	.L540
	.loc 2 140 0
	ldr	r3, [sp, #12]
	ldr	r2, .L624+120
	str	r3, [sp]
	movs	r1, #124
	movs	r3, r6
	movs	r0, #25
	bl	Print
.LVL817:
.L540:
	.loc 2 142 0
	ldr	r3, [r4, #12]
	cmp	r3, #3
	ble	.L541
	.loc 2 144 0
	ldr	r3, [sp, #12]
	ldr	r2, .L624+124
	str	r3, [sp]
	movs	r1, #133
	movs	r3, #0
	movs	r0, #25
	bl	Print
.LVL818:
.L541:
	.loc 2 150 0
	movs	r6, #128
.L550:
	.loc 2 146 0
	movs	r2, #1
	ldr	r3, .L624+76
	ldrh	r3, [r3]
	tst	r3, r2
	bne	.L551
	.loc 2 177 0
	movs	r3, r2
.L552:
	.loc 2 177 0 is_stmt 0 discriminator 1
	ldr	r2, .L624+76
	ldrh	r2, [r2]
	tst	r2, r3
	beq	.L552
	.loc 2 178 0 is_stmt 1
	movs	r2, #160
	movs	r1, #240
	ldr	r0, .L624+104
	bl	MoveSprite
.LVL819:
	.loc 2 179 0
	bl	CopyOAM
.LVL820:
	.loc 2 180 0
	ldr	r2, .L624
	ldr	r3, [r2, #20]
	str	r3, [r2, #24]
	.loc 2 181 0
	cmp	r3, #1
	beq	.LCB7573
	b	.L553	@long jump
.LCB7573:
	.loc 2 183 0
	movs	r1, #25
	ldr	r0, [r4, #64]
	muls	r0, r1
	movs	r1, r0
	ldr	r3, [r4, #32]
	adds	r3, r3, #5
	lsls	r3, r3, #1
	adds	r0, r3, r0
	str	r0, [r2, #28]
	.loc 2 184 0
	subs	r3, r3, #10
	adds	r3, r3, r1
.L622:
	.loc 2 200 0
	ldr	r2, [r7]
	subs	r3, r2, r3
	str	r3, [r7]
	b	.L554
.L527:
	.loc 2 56 0
	lsrs	r3, r2, #31
	adds	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r5]
	.loc 2 57 0
	ldr	r3, .L624+96
	bl	.L171
.LVL821:
	ldr	r3, .L624+100
	ands	r0, r3
	bpl	.L526
	subs	r0, r0, #1
	orrs	r0, r6
	adds	r0, r0, #1
.L526:
	adds	r0, r0, #1
	str	r0, [r5, #4]
	.loc 2 58 0
	ldr	r1, [r5]
	movs	r0, #0
	bl	SaveInt
.LVL822:
	.loc 2 59 0
	ldr	r3, [r5, #32]
	adds	r3, r3, #1
	str	r3, [r5, #32]
	b	.L525
.L625:
	.align	2
.L624:
	.word	game
	.word	enemy
	.word	.LANCHOR0
	.word	btlBitmap
	.word	memcpy
	.word	sprites
	.word	5187
	.word	-24566
	.word	-16276
	.word	player
	.word	sprsPalette
	.word	.LANCHOR1
	.word	sprs
	.word	.LC116
	.word	sprintf
	.word	buf
	.word	65535
	.word	.LC120
	.word	.LC122
	.word	67109168
	.word	.LC124
	.word	.LC126
	.word	8318
	.word	.LC128
	.word	rand
	.word	-2147483647
	.word	sprites+8
	.word	4129
	.word	.LC131
	.word	.LC133
	.word	.LC135
	.word	.LC137
.L551:
	.loc 2 148 0
	ldr	r5, .L626
	ldr	r3, [r5, #32]
	adds	r3, r3, #1
	str	r3, [r5, #32]
	.loc 2 149 0
	bl	CopyOAM
.LVL823:
	.loc 2 150 0
	ldr	r3, .L626+4
	ldrh	r3, [r3]
	tst	r3, r6
	bne	.L543
	.loc 2 150 0 is_stmt 0 discriminator 1
	ldr	r3, [r4, #12]
	cmp	r3, #1
	ble	.L543
	ldr	r3, [r5, #20]
	.loc 2 150 0 discriminator 2
	cmp	r3, #4
	beq	.L543
.L544:
	.loc 2 152 0 is_stmt 1 discriminator 1
	ldr	r2, .L626+4
	ldrh	r2, [r2]
	tst	r2, r6
	beq	.L544
	.loc 2 153 0
	adds	r3, r3, #1
	str	r3, [r5, #20]
.L543:
	.loc 2 155 0
	movs	r2, #64
	ldr	r3, .L626+4
	ldrh	r3, [r3]
	tst	r3, r2
	bne	.L545
	.loc 2 155 0 is_stmt 0 discriminator 1
	ldr	r3, [r4, #12]
	cmp	r3, #1
	ble	.L545
	ldr	r3, [r5, #20]
	.loc 2 155 0 discriminator 2
	cmp	r3, #0
	beq	.L545
.L546:
	.loc 2 157 0 is_stmt 1 discriminator 1
	ldr	r1, .L626+4
	ldrh	r1, [r1]
	tst	r1, r2
	beq	.L546
	.loc 2 158 0
	subs	r3, r3, #1
	str	r3, [r5, #20]
.L545:
	.loc 2 160 0
	ldr	r3, [r5, #20]
	cmp	r3, #1
	bne	.L547
	.loc 2 162 0
	movs	r2, #107
	movs	r1, #73
	ldr	r0, .L626+8
	bl	MoveSprite
.LVL824:
.L547:
	.loc 2 164 0
	ldr	r3, [r5, #20]
	cmp	r3, #2
	bne	.L548
	.loc 2 166 0
	movs	r2, #115
	movs	r1, #113
	ldr	r0, .L626+8
	bl	MoveSprite
.LVL825:
.L548:
	.loc 2 168 0
	ldr	r3, [r5, #20]
	cmp	r3, #3
	bne	.L549
	.loc 2 170 0
	movs	r2, #124
	movs	r1, #58
	ldr	r0, .L626+8
	bl	MoveSprite
.LVL826:
.L549:
	.loc 2 172 0
	ldr	r3, [r5, #20]
	cmp	r3, #4
	beq	.LCB7767
	b	.L550	@long jump
.LCB7767:
	.loc 2 174 0
	movs	r2, #133
	movs	r1, #169
	ldr	r0, .L626+8
	bl	MoveSprite
.LVL827:
	b	.L550
.L553:
	.loc 2 186 0
	cmp	r3, #2
	bne	.L555
	.loc 2 188 0
	ldr	r3, [r4, #32]
	lsls	r3, r3, #1
	adds	r3, r3, #15
.L621:
	.loc 2 199 0
	str	r3, [r2, #28]
	b	.L622
.L555:
	.loc 2 191 0
	cmp	r3, #3
	beq	.LCB7791
	b	.L556	@long jump
.LCB7791:
	.loc 2 193 0
	ldr	r1, [r4, #32]
	muls	r1, r3
	movs	r3, r1
	adds	r3, r3, #17
	str	r3, [r2, #28]
	.loc 2 194 0
	ldr	r2, [r7]
	subs	r3, r2, r3
	str	r3, [r7]
	.loc 2 195 0
	ldr	r3, [r4, #16]
	adds	r3, r3, #5
	str	r3, [r4, #16]
.L554:
	.loc 2 202 0
	movs	r2, #150
	ldr	r3, .L626+12
	ldr	r3, [r3]
	lsls	r2, r2, #9
	str	r3, [sp, #16]
	ldr	r1, .L626+16
	movs	r0, r3
	ldr	r3, .L626+20
	bl	.L171
.LVL828:
	.loc 2 203 0
	ldr	r2, .L626+24
	ldr	r3, [r2, #32]
	ldr	r5, .L626+28
	str	r3, [sp]
	ldr	r1, .L626+32
	ldr	r3, [r2, #24]
	ldr	r6, .L626+36
	ldr	r2, [r2, #16]
	movs	r0, r5
	bl	.L630
.LVL829:
	.loc 2 204 0
	movs	r6, #0
	movs	r0, #1
	ldr	r3, .L626+40
	movs	r2, r5
	movs	r1, r6
	rsbs	r0, r0, #0
	str	r6, [sp]
	bl	Print
.LVL830:
	.loc 2 205 0
	ldr	r2, [r7]
	ldr	r1, .L626+44
	ldr	r3, .L626+36
	movs	r0, r5
	bl	.L171
.LVL831:
	.loc 2 206 0
	movs	r0, #1
	ldr	r3, .L626+40
	movs	r2, r5
	movs	r1, #8
	rsbs	r0, r0, #0
	str	r6, [sp]
	bl	Print
.LVL832:
	.loc 2 207 0
	ldr	r3, [sp, #12]
	ldr	r2, .L626+48
	str	r3, [sp]
	movs	r1, #106
	movs	r3, r6
	movs	r0, #25
	bl	Print
.LVL833:
	.loc 2 208 0
	movs	r3, #1
.L557:
	.loc 2 208 0 is_stmt 0 discriminator 1
	ldr	r2, .L626+4
	ldrh	r2, [r2]
	tst	r2, r3
	bne	.L557
	.loc 2 209 0 is_stmt 1
	movs	r3, #1
.L558:
	.loc 2 209 0 is_stmt 0 discriminator 1
	ldr	r2, .L626+4
	ldrh	r2, [r2]
	tst	r2, r3
	beq	.L558
	.loc 2 210 0 is_stmt 1
	ldr	r3, .L626
	ldr	r1, .L626+52
	ldr	r2, [r3, #28]
	movs	r0, r5
	ldr	r3, .L626+36
	bl	.L171
.LVL834:
	.loc 2 211 0
	ldr	r3, [sp, #12]
	movs	r2, r5
	str	r3, [sp]
	movs	r1, #106
	movs	r3, #0
	movs	r0, #25
	bl	Print
.LVL835:
	.loc 2 212 0
	ldr	r3, [sp, #12]
	ldr	r2, .L626+56
	str	r3, [sp]
	movs	r1, #115
	movs	r3, #0
	movs	r0, #25
	bl	Print
.LVL836:
	.loc 2 213 0
	movs	r3, #1
.L559:
	.loc 2 213 0 is_stmt 0 discriminator 1
	ldr	r2, .L626+4
	ldrh	r2, [r2]
	tst	r2, r3
	bne	.L559
	.loc 2 214 0 is_stmt 1
	movs	r2, #1
	ldr	r3, .L626+4
.L560:
	.loc 2 214 0 is_stmt 0 discriminator 1
	ldrh	r1, [r3]
	tst	r1, r2
	beq	.L560
	.loc 2 215 0 is_stmt 1
	movs	r2, #150
	ldr	r5, .L626+12
	ldr	r6, .L626+16
	ldr	r3, .L626+20
	lsls	r2, r2, #9
	movs	r1, r6
	ldr	r0, [r5]
	bl	.L171
.LVL837:
	.loc 2 216 0
	ldr	r3, [r7]
	cmp	r3, #0
	ble	.LCB7948
	b	.L561	@long jump
.LCB7948:
	.loc 2 218 0
	movs	r2, #150
	movs	r1, r6
	ldr	r0, [r5]
	lsls	r2, r2, #9
	ldr	r3, .L626+20
	bl	.L171
.LVL838:
	.loc 2 219 0
	ldr	r3, [r4, #32]
	ldr	r5, .L626+28
	str	r3, [sp]
	ldr	r1, .L626+32
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #16]
	ldr	r6, .L626+36
	movs	r0, r5
	bl	.L630
.LVL839:
	.loc 2 220 0
	movs	r7, #0
	movs	r0, #1
	ldr	r3, .L626+40
	movs	r2, r5
	movs	r1, r7
	rsbs	r0, r0, #0
	str	r7, [sp]
	bl	Print
.LVL840:
	.loc 2 221 0
	movs	r2, #160
	movs	r1, #240
	ldr	r0, .L626+60
	bl	MoveSprite
.LVL841:
	.loc 2 222 0
	bl	CopyOAM
.LVL842:
	.loc 2 223 0
	ldr	r3, .L626+64
	bl	.L171
.LVL843:
	ldr	r3, .L626+68
	movs	r1, #5
	bl	.L171
.LVL844:
	adds	r6, r1, #1
	.loc 2 224 0
	movs	r1, #250
	.loc 2 223 0
	ldr	r3, .L626
	.loc 2 224 0
	lsls	r1, r1, #1
	ldr	r0, [r3, #32]
	.loc 2 223 0
	str	r6, [r3, #28]
	.loc 2 224 0
	ldr	r3, .L626+72
	bl	.L171
.LVL845:
	ldr	r3, [r4, #32]
	subs	r0, r0, r3
	.loc 2 225 0
	ldr	r3, [r4, #24]
	adds	r6, r3, r6
	.loc 2 226 0
	ldr	r3, .L626+40
	.loc 2 224 0
	adds	r0, r0, #45
	str	r0, [r4, #68]
	.loc 2 225 0
	str	r6, [r4, #24]
	.loc 2 226 0
	ldr	r2, .L626+76
	str	r3, [sp]
	movs	r1, #106
	movs	r3, r7
	movs	r0, #25
	bl	Print
.LVL846:
	.loc 2 227 0
	movs	r3, #1
.L562:
	.loc 2 227 0 is_stmt 0 discriminator 1
	ldr	r2, .L626+4
	ldrh	r2, [r2]
	tst	r2, r3
	bne	.L562
	.loc 2 228 0 is_stmt 1
	movs	r3, #1
.L563:
	.loc 2 228 0 is_stmt 0 discriminator 1
	ldr	r2, .L626+4
	ldrh	r2, [r2]
	tst	r2, r3
	beq	.L563
	.loc 2 229 0 is_stmt 1
	ldr	r4, .L626+24
	.loc 2 230 0
	ldr	r7, .L626+40
	.loc 2 229 0
	ldr	r2, [r4, #68]
	ldr	r1, .L626+80
	ldr	r6, .L626+36
	movs	r0, r5
	bl	.L630
.LVL847:
	.loc 2 230 0
	movs	r3, #0
	movs	r2, r5
	movs	r1, #115
	movs	r0, #25
	str	r7, [sp]
	bl	Print
.LVL848:
	.loc 2 231 0
	ldr	r3, .L626
	ldr	r1, .L626+84
	ldr	r2, [r3, #28]
	movs	r0, r5
	bl	.L630
.LVL849:
	.loc 2 232 0
	movs	r3, #0
	movs	r2, r5
	str	r7, [sp]
	movs	r1, #124
	movs	r0, #25
	bl	Print
.LVL850:
	.loc 2 233 0
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #72]
	cmp	r3, r2
	blt	.L564
	.loc 2 235 0
	subs	r3, r3, r2
	.loc 2 236 0
	movs	r2, #20
	.loc 2 235 0
	str	r3, [r4, #20]
	.loc 2 236 0
	ldr	r3, [r4, #32]
	movs	r0, r2
	muls	r0, r3
	asrs	r2, r3, #31
	adds	r3, r3, r2
	eors	r3, r2
	adds	r0, r0, r3
	lsls	r0, r0, #2
	ldr	r3, .L626+72
	movs	r1, #3
	bl	.L171
.LVL851:
	.loc 2 237 0
	ldr	r3, [r4]
	adds	r3, r3, #50
	.loc 2 236 0
	str	r0, [r4, #72]
	.loc 2 237 0
	str	r3, [r4]
	.loc 2 238 0
	str	r3, [r4, #16]
.L564:
	.loc 2 240 0 discriminator 1
	movs	r3, #1
.L565:
	ldr	r2, .L626+4
	ldrh	r2, [r2]
	tst	r2, r3
	bne	.L565
	.loc 2 241 0
	movs	r3, #1
.L566:
	.loc 2 241 0 is_stmt 0 discriminator 1
	ldr	r2, .L626+4
	ldrh	r2, [r2]
	tst	r2, r3
	beq	.L566
	.loc 2 242 0 is_stmt 1
	movs	r0, #5
	bl	FadeOut
.LVL852:
	.loc 2 243 0
	movs	r2, #150
	ldr	r3, .L626+12
	lsls	r2, r2, #9
	ldr	r0, [r3]
	ldr	r1, .L626+88
	ldr	r3, .L626+20
	bl	.L171
.LVL853:
	.loc 2 244 0
	ldr	r4, .L626+24
.L623:
	.loc 2 312 0
	ldr	r3, [r4, #32]
	str	r3, [sp]
	ldr	r1, .L626+32
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #16]
	movs	r0, r5
	ldr	r6, .L626+36
	bl	.L630
.LVL854:
	.loc 2 313 0
	movs	r1, #0
	movs	r0, #1
	ldr	r3, .L626+40
	str	r1, [sp]
	movs	r2, r5
	rsbs	r0, r0, #0
	.loc 2 314 0
	adds	r4, r4, #36
	.loc 2 313 0
	bl	Print
.LVL855:
	.loc 2 314 0
	ldmia	r4!, {r1, r2}
	ldr	r0, .L626+92
	bl	MoveSprite
.LVL856:
	.loc 2 315 0
	movs	r2, #160
	movs	r1, #240
	ldr	r0, .L626+8
	bl	MoveSprite
.LVL857:
	.loc 2 316 0
	ldr	r0, .L626+60
	movs	r2, #160
	movs	r1, #240
	bl	MoveSprite
.LVL858:
	.loc 2 317 0
	bl	CopyOAM
.LVL859:
	.loc 2 318 0
	movs	r0, #2
	bl	FadeIn
.LVL860:
.L524:
	.loc 2 323 0
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L556:
	.loc 2 197 0
	cmp	r3, #4
	beq	.LCB8186
	b	.L554	@long jump
.LCB8186:
	.loc 2 199 0
	ldr	r1, [r4, #32]
	adds	r3, r3, #1
	muls	r1, r3
	movs	r3, r1
	movs	r1, #30
	ldr	r0, [r4, #8]
	muls	r0, r1
	adds	r3, r3, r0
	b	.L621
.L627:
	.align	2
.L626:
	.word	game
	.word	67109168
	.word	sprites+8
	.word	.LANCHOR0
	.word	btlBitmap
	.word	memcpy
	.word	player
	.word	buf
	.word	.LC128
	.word	sprintf
	.word	65535
	.word	.LC116
	.word	.LC139
	.word	.LC141
	.word	.LC143
	.word	sprites+16
	.word	rand
	.word	__aeabi_idivmod
	.word	__aeabi_idiv
	.word	.LC148
	.word	.LC150
	.word	.LC152
	.word	r1Bitmap
	.word	sprites
.L561:
	.loc 2 253 0
	ldr	r2, .L628
	ldr	r3, [r2, #32]
	ldr	r5, .L628+4
	str	r3, [sp]
	ldr	r1, .L628+8
	ldr	r3, [r2, #24]
	ldr	r6, .L628+12
	ldr	r2, [r2, #16]
	movs	r0, r5
	bl	.L630
.LVL861:
	.loc 2 254 0
	movs	r4, #0
	movs	r0, #1
	ldr	r3, .L628+16
	movs	r2, r5
	movs	r1, r4
	rsbs	r0, r0, #0
	str	r4, [sp]
	bl	Print
.LVL862:
	.loc 2 255 0
	ldr	r2, [r7]
	ldr	r1, .L628+20
	movs	r0, r5
	bl	.L630
.LVL863:
	.loc 2 256 0
	movs	r0, #1
	ldr	r3, .L628+16
	movs	r2, r5
	movs	r1, #8
	rsbs	r0, r0, #0
	str	r4, [sp]
	bl	Print
.LVL864:
	.loc 2 257 0
	ldr	r3, .L628+16
	ldr	r2, .L628+24
	str	r3, [sp]
	movs	r1, #106
	movs	r3, r4
	movs	r0, #25
	bl	Print
.LVL865:
	.loc 2 258 0
	movs	r3, #1
.L568:
	.loc 2 258 0 is_stmt 0 discriminator 1
	ldr	r2, .L628+28
	ldrh	r2, [r2]
	tst	r2, r3
	bne	.L568
	.loc 2 259 0 is_stmt 1
	movs	r3, #1
.L569:
	.loc 2 259 0 is_stmt 0 discriminator 1
	ldr	r2, .L628+28
	ldrh	r2, [r2]
	tst	r2, r3
	beq	.L569
	.loc 2 260 0 is_stmt 1
	ldr	r5, .L628+32
	bl	.L172
.LVL866:
	movs	r1, #250
	ldr	r6, .L628+36
	ldr	r3, .L628+40
	str	r0, [sp, #16]
	lsls	r1, r1, #1
	ldr	r0, [r6, #32]
	bl	.L171
.LVL867:
	ldr	r4, .L628
	ldr	r3, [r4, #32]
	ldr	r7, .L628+44
	adds	r1, r0, r3
	ldr	r0, [sp, #16]
	bl	.L631
.LVL868:
	str	r1, [r6, #28]
	.loc 2 261 0
	bl	.L172
.LVL869:
	movs	r1, #250
	movs	r5, r0
	ldr	r3, .L628+40
	lsls	r1, r1, #1
	ldr	r0, [r6, #32]
	bl	.L171
.LVL870:
	ldr	r3, [r4, #32]
	adds	r1, r0, r3
	movs	r0, r5
	bl	.L631
.LVL871:
	.loc 2 262 0
	movs	r2, #150
	.loc 2 261 0
	ldr	r3, [r4, #16]
	subs	r1, r3, r1
	.loc 2 262 0
	ldr	r3, .L628+48
	.loc 2 261 0
	str	r1, [r4, #16]
	.loc 2 262 0
	lsls	r2, r2, #9
	ldr	r1, .L628+52
	ldr	r0, [r3]
	ldr	r3, .L628+56
	bl	.L171
.LVL872:
	.loc 2 263 0
	ldr	r3, [r4, #32]
	ldr	r5, .L628+4
	str	r3, [sp]
	ldr	r1, .L628+8
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #16]
	ldr	r7, .L628+12
	movs	r0, r5
	bl	.L631
.LVL873:
	.loc 2 264 0
	movs	r3, #0
	movs	r0, #1
	str	r3, [sp]
	movs	r2, r5
	ldr	r3, .L628+16
	movs	r1, #0
	rsbs	r0, r0, #0
	bl	Print
.LVL874:
	.loc 2 265 0
	ldr	r2, .L628+60
	ldr	r1, .L628+20
	ldr	r2, [r2]
	ldr	r7, .L628+12
	movs	r0, r5
	bl	.L631
.LVL875:
	.loc 2 266 0
	movs	r3, #0
	movs	r0, #1
	str	r3, [sp]
	movs	r2, r5
	ldr	r3, .L628+16
	movs	r1, #8
	rsbs	r0, r0, #0
	bl	Print
.LVL876:
	.loc 2 267 0
	ldr	r2, [r6, #28]
	ldr	r1, .L628+64
	ldr	r7, .L628+12
	movs	r0, r5
	bl	.L631
.LVL877:
	.loc 2 268 0
	ldr	r2, .L628+16
	movs	r7, r2
	str	r2, [sp]
	movs	r3, #0
	movs	r2, r5
	movs	r1, #106
	movs	r0, #25
	bl	Print
.LVL878:
	.loc 2 269 0
	movs	r3, #0
	str	r7, [sp]
	ldr	r2, .L628+68
	movs	r1, #115
	movs	r0, #25
	bl	Print
.LVL879:
	.loc 2 270 0
	movs	r3, #0
	str	r3, [r6, #20]
	.loc 2 271 0
	adds	r3, r3, #1
.L570:
	.loc 2 271 0 is_stmt 0 discriminator 1
	ldr	r2, .L628+28
	ldrh	r2, [r2]
	tst	r2, r3
	bne	.L570
	.loc 2 272 0 is_stmt 1
	movs	r3, #1
.L571:
	.loc 2 272 0 is_stmt 0 discriminator 1
	ldr	r2, .L628+28
	ldrh	r2, [r2]
	tst	r2, r3
	beq	.L571
	.loc 2 273 0 is_stmt 1
	ldr	r3, [r4, #16]
	cmp	r3, #0
	bgt	.L572
	.loc 2 275 0
	movs	r3, #128
	ldr	r2, .L628+72
	lsls	r3, r3, #19
	str	r2, [r3]
	.loc 2 276 0
	movs	r0, #0
	bl	fillscreen3
.LVL880:
	.loc 2 277 0
	movs	r0, #60
	bl	Sleep
.LVL881:
	.loc 2 278 0
	movs	r3, #0
	ldr	r2, .L628+76
	str	r3, [sp]
	movs	r1, #76
	ldr	r3, .L628+16
	movs	r0, #84
	bl	Print
.LVL882:
.L573:
	.loc 2 281 0
	ldr	r2, .L628+28
	ldrh	r7, [r2]
	ldrh	r3, [r2]
	ldrh	r6, [r2]
	str	r3, [sp, #12]
	ldrh	r5, [r2]
	ldrh	r4, [r2]
	ldrh	r0, [r2]
	ldrh	r1, [r2]
	ldrh	r3, [r2]
	str	r3, [sp, #16]
	ldrh	r3, [r2]
	mov	ip, r3
	ldrh	r3, [r2]
	str	r3, [sp, #20]
	movs	r3, #1
	bics	r3, r7
	movs	r7, r3
	movs	r3, #2
	ldr	r2, [sp, #12]
	bics	r3, r2
	orrs	r3, r7
	movs	r7, #128
	lsls	r7, r7, #2
	bics	r7, r6
	orrs	r3, r7
	movs	r7, #128
	lsls	r7, r7, #1
	bics	r7, r5
	movs	r5, #4
	bics	r5, r4
	movs	r4, #8
	bics	r4, r0
	movs	r0, #64
	bics	r0, r1
	movs	r1, #128
	orrs	r7, r3
	orrs	r7, r5
	ldr	r3, [sp, #16]
	orrs	r7, r4
	bics	r1, r3
	orrs	r7, r0
	orrs	r7, r1
	mov	r3, ip
	movs	r1, #32
	bics	r1, r3
	orrs	r7, r1
	movs	r1, #16
	ldr	r3, [sp, #20]
	bics	r1, r3
	orrs	r7, r1
	beq	.L573
	.loc 2 283 0
	.syntax divided
@ 283 "main.c" 1
	swi 0x26
@ 0 "" 2
	.thumb
	.syntax unified
	b	.L573
.L572:
	.loc 2 288 0
	ldr	r3, .L628+80
	ldr	r2, .L628+84
	strh	r2, [r3, #8]
	.loc 2 289 0
	movs	r2, #33
	strh	r2, [r3, #10]
	.loc 2 290 0
	movs	r2, #238
	lsls	r2, r2, #2
	strh	r2, [r3, #12]
	.loc 2 292 0
	movs	r2, #150
	ldr	r3, .L628+48
	lsls	r2, r2, #9
	ldr	r0, [r3]
	ldr	r1, .L628+52
	ldr	r3, .L628+56
	bl	.L171
.LVL883:
	.loc 2 293 0
	ldr	r3, .L628+16
	movs	r5, r3
	str	r3, [sp]
	ldr	r2, .L628+88
	movs	r3, #0
	movs	r1, #110
	movs	r0, #25
	bl	Print
.LVL884:
	.loc 2 294 0
	str	r5, [sp]
	movs	r3, #0
	ldr	r2, .L628+92
	movs	r1, #126
	movs	r0, #41
	bl	Print
.LVL885:
	.loc 2 295 0
	ldr	r3, [r4, #32]
	ldr	r5, .L628+4
	str	r3, [sp]
	ldr	r1, .L628+8
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #16]
	ldr	r6, .L628+12
	movs	r0, r5
	bl	.L630
.LVL886:
	.loc 2 296 0
	movs	r4, #0
	movs	r0, #1
	ldr	r3, .L628+16
	movs	r2, r5
	movs	r1, r4
	rsbs	r0, r0, #0
	str	r4, [sp]
	bl	Print
.LVL887:
	.loc 2 297 0
	ldr	r3, .L628+60
	ldr	r1, .L628+20
	ldr	r2, [r3]
	movs	r0, r5
	bl	.L630
.LVL888:
	.loc 2 298 0
	movs	r0, #1
	str	r4, [sp]
	ldr	r3, .L628+16
	movs	r2, r5
	movs	r1, #8
	rsbs	r0, r0, #0
	bl	Print
.LVL889:
.L539:
	.loc 2 300 0
	ldr	r3, .L628+36
	ldr	r4, [r3, #20]
	cmp	r4, #1
	beq	.LCB8647
	bl	.L530	@far jump
.LCB8647:
	.loc 2 302 0
	ldr	r2, .L628
	ldr	r3, [r2, #32]
	ldr	r6, .L628+4
	str	r3, [sp]
	ldr	r7, .L628+12
	ldr	r3, [r2, #24]
	ldr	r1, .L628+8
	ldr	r2, [r2, #16]
	movs	r0, r6
	bl	.L631
.LVL890:
	.loc 2 303 0
	movs	r5, #0
	movs	r0, #1
	movs	r2, r6
	ldr	r3, .L628+16
	movs	r1, r5
	rsbs	r0, r0, #0
	str	r5, [sp]
	bl	Print
.LVL891:
	.loc 2 304 0
	ldr	r3, .L628+60
	ldr	r1, .L628+20
	ldr	r2, [r3]
	movs	r0, r6
	bl	.L631
.LVL892:
	.loc 2 305 0
	movs	r0, #1
	ldr	r3, .L628+16
	movs	r2, r6
	movs	r1, #8
	rsbs	r0, r0, #0
	str	r5, [sp]
	bl	Print
.LVL893:
	.loc 2 306 0
	movs	r2, #150
	ldr	r7, .L628+48
	lsls	r2, r2, #9
	ldr	r1, .L628+52
	ldr	r0, [r7]
	ldr	r6, .L628+56
	bl	.L630
.LVL894:
	.loc 2 307 0
	ldr	r3, [sp, #12]
	ldr	r2, .L628+96
	str	r3, [sp]
	movs	r1, #110
	movs	r3, r5
	movs	r0, #25
	bl	Print
.LVL895:
.L575:
	.loc 2 308 0 discriminator 1
	ldr	r3, .L628+28
	ldrh	r3, [r3]
	tst	r3, r4
	bne	.L575
	.loc 2 309 0
	movs	r3, #1
.L576:
	.loc 2 309 0 is_stmt 0 discriminator 1
	ldr	r2, .L628+28
	ldrh	r2, [r2]
	tst	r2, r3
	beq	.L576
	.loc 2 310 0 is_stmt 1
	movs	r0, #5
	bl	FadeOut
.LVL896:
	.loc 2 311 0
	movs	r2, #150
	ldr	r0, [r7]
	lsls	r2, r2, #9
	ldr	r1, .L628+100
	bl	.L630
.LVL897:
	.loc 2 312 0
	ldr	r4, .L628
	ldr	r5, .L628+4
	b	.L623
.L629:
	.align	2
.L628:
	.word	player
	.word	buf
	.word	.LC128
	.word	sprintf
	.word	65535
	.word	.LC116
	.word	.LC155
	.word	67109168
	.word	rand
	.word	game
	.word	__aeabi_idiv
	.word	__aeabi_idivmod
	.word	.LANCHOR0
	.word	btlBitmap
	.word	memcpy
	.word	enemy
	.word	.LC141
	.word	.LC157
	.word	1027
	.word	.LC159
	.word	sprites
	.word	8318
	.word	.LC124
	.word	.LC126
	.word	.LC161
	.word	r1Bitmap
	.cfi_endproc
.LFE118:
	.size	battle, .-battle
	.align	1
	.global	playSound
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	playSound, %function
playSound:
.LFB119:
	.loc 2 324 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL898:
	.loc 2 325 0
	ldr	r3, .L633
	ldr	r2, .L633+4
	.loc 2 324 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 2 325 0
	strh	r2, [r3]
	.loc 2 326 0
	movs	r2, #128
	ldr	r3, .L633+8
	strh	r2, [r3]
	.loc 2 327 0
	ldr	r3, .L633+12
	lsls	r0, r0, #4
.LVL899:
	ldr	r1, [r0, r3]
	.loc 2 330 0
	adds	r3, r3, r0
	movs	r0, #255
	.loc 2 327 0
	ldr	r2, .L633+16
	str	r1, [r2]
	.loc 2 328 0
	ldr	r2, .L633+20
	ldr	r1, .L633+24
	str	r1, [r2]
	.loc 2 329 0
	ldr	r2, .L633+28
	ldr	r1, .L633+32
	.loc 2 330 0
	lsls	r0, r0, #24
	.loc 2 329 0
	strh	r1, [r2]
	.loc 2 330 0
	ldr	r1, [r3, #4]
	ldr	r3, .L633+36
	bl	.L171
.LVL900:
	.loc 2 331 0
	movs	r2, #192
	.loc 2 330 0
	ldr	r3, .L633+40
	lsls	r0, r0, #16
	lsrs	r0, r0, #16
	strh	r0, [r3]
	.loc 2 331 0
	ldr	r3, .L633+44
	.loc 2 332 0
	@ sp needed
	.loc 2 331 0
	strh	r2, [r3]
	.loc 2 332 0
	pop	{r4}
	pop	{r0}
	bx	r0
.L634:
	.align	2
.L633:
	.word	67108994
	.word	2831
	.word	67108996
	.word	sound
	.word	67109052
	.word	67109056
	.word	67109024
	.word	67109062
	.word	-18880
	.word	__aeabi_idiv
	.word	67109120
	.word	67109122
	.cfi_endproc
.LFE119:
	.size	playSound, .-playSound
	.align	1
	.global	tstsndcmp
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	tstsndcmp, %function
tstsndcmp:
.LFB120:
	.loc 2 334 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL901:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 2 335 0
	ldr	r5, .L638
	ldr	r3, [r5, #8]
	cmp	r3, r1
	blt	.L636
.LVL902:
.LBB150:
.LBB151:
	.loc 2 336 0
	movs	r4, #0
	ldr	r3, .L638+4
	strh	r4, [r3]
	.loc 2 337 0
	ldr	r3, .L638+8
	strh	r4, [r3]
	.loc 2 338 0
	ldr	r3, .L638+12
	str	r4, [r3]
	.loc 2 339 0
	ldr	r3, .L638+16
	str	r4, [r3]
	.loc 2 340 0
	ldr	r3, .L638+20
	strh	r4, [r3]
	.loc 2 341 0
	ldr	r3, .L638+24
	strh	r4, [r3]
	.loc 2 342 0
	str	r4, [r3]
	.loc 2 343 0
	bl	playSound
.LVL903:
	.loc 2 344 0
	str	r4, [r5, #8]
.LVL904:
.L635:
.LBE151:
.LBE150:
	.loc 2 349 0
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.LVL905:
.L636:
	.loc 2 347 0
	adds	r3, r3, #1
	str	r3, [r5, #8]
	.loc 2 349 0
	b	.L635
.L639:
	.align	2
.L638:
	.word	game
	.word	67108994
	.word	67108996
	.word	67109052
	.word	67109056
	.word	67109062
	.word	67109120
	.cfi_endproc
.LFE120:
	.size	tstsndcmp, .-tstsndcmp
	.section	.text.startup,"ax",%progbits
	.align	1
	.global	main
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	main, %function
main:
.LFB121:
	.loc 2 351 0
	.cfi_startproc
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 2 352 0
	ldr	r3, .L742
	.loc 2 351 0
	sub	sp, sp, #36
	.cfi_def_cfa_offset 56
	.loc 2 352 0
	movs	r0, #0
	bl	.L749
.LVL906:
	ldr	r5, .L742+4
	.loc 2 354 0
	ldr	r3, .L742+8
	.loc 2 352 0
	str	r0, [r5]
	.loc 2 354 0
	ldr	r0, .L742+12
	bl	.L749
.LVL907:
	.loc 2 355 0
	movs	r1, #222
	ldr	r0, .L742+16
	lsls	r1, r1, #5
	ldr	r3, .L742+20
	bl	.L749
.LVL908:
	.loc 2 356 0
	movs	r2, #214
	ldr	r3, .L742+24
	.loc 2 359 0
	movs	r6, #128
	.loc 2 356 0
	strh	r2, [r3]
	.loc 2 357 0
	ldr	r3, .L742+28
	bl	.L749
.LVL909:
	.loc 2 358 0
	ldr	r1, .L742+32
	ldr	r0, .L742+36
	ldr	r3, .L742+40
	bl	.L749
.LVL910:
	.loc 2 360 0
	movs	r2, #64
	.loc 2 359 0
	ldr	r3, .L742+44
	lsls	r6, r6, #19
	str	r3, [r6]
	.loc 2 360 0
	ldr	r3, .L742+48
	.loc 2 361 0
	movs	r0, #25
	.loc 2 360 0
	strh	r2, [r3]
	.loc 2 361 0
	ldr	r3, .L742+52
	bl	.L749
.LVL911:
	.loc 2 362 0
	ldr	r4, .L742+56
	ldr	r7, .L742+60
	movs	r2, #160
	movs	r1, #240
	movs	r0, r4
	bl	.L750
.LVL912:
	.loc 2 363 0
	movs	r2, #160
	movs	r1, #240
	ldr	r0, .L742+64
	bl	.L750
.LVL913:
	.loc 2 364 0
	ldr	r3, .L742+68
	.loc 2 366 0
	ldr	r7, .L742+72
	.loc 2 364 0
	bl	.L749
.LVL914:
	.loc 2 365 0
	movs	r0, #3
	ldr	r3, .L742+76
	bl	.L749
.LVL915:
	.loc 2 367 0
	ldr	r0, .L742+80
	ldr	r3, .L742+84
	.loc 2 366 0
	str	r7, [r6]
	.loc 2 367 0
	bl	.L749
.LVL916:
	.loc 2 368 0
	movs	r2, #150
	ldr	r3, .L742+88
	lsls	r2, r2, #8
	ldr	r1, .L742+92
	ldr	r0, [r3]
	ldr	r3, .L742+96
	bl	.L749
.LVL917:
	.loc 2 369 0
	movs	r0, #8
	ldr	r3, .L742+100
	bl	.L749
.LVL918:
	.loc 2 370 0
	movs	r0, #30
	ldr	r3, .L742+52
	bl	.L749
.LVL919:
	.loc 2 371 0
	ldr	r3, .L742+104
	ldr	r0, [r5]
	bl	.L749
.LVL920:
.LBB152:
.LBB153:
	.loc 1 2011 0
	ldr	r3, .L742+108
	strh	r3, [r4, #16]
	.loc 1 2012 0
	movs	r3, #160
	strh	r3, [r4, #18]
	.loc 1 2013 0
	adds	r3, r3, #185
	adds	r3, r3, #255
	strh	r3, [r4, #20]
	str	r7, [sp, #28]
.L641:
.LBE153:
.LBE152:
	.loc 2 373 0
	ldr	r3, .L742+112
	ldrh	r2, [r3]
	mov	ip, r2
	ldrh	r2, [r3]
	str	r2, [sp, #12]
	ldrh	r2, [r3]
	ldrh	r6, [r3]
	ldrh	r5, [r3]
	ldrh	r4, [r3]
	ldrh	r0, [r3]
	ldrh	r1, [r3]
	ldrh	r7, [r3]
	str	r7, [sp, #20]
	ldrh	r7, [r3]
	str	r2, [sp, #16]
	str	r7, [sp, #24]
	mov	r2, ip
	movs	r7, #1
	bics	r7, r2
	mov	ip, r7
	movs	r7, #2
	ldr	r2, [sp, #12]
	bics	r7, r2
	movs	r2, r7
	mov	r7, ip
	orrs	r2, r7
	movs	r7, #128
	mov	ip, r2
	ldr	r2, [sp, #16]
	lsls	r7, r7, #2
	bics	r7, r2
	mov	r2, ip
	orrs	r2, r7
	movs	r7, #128
	lsls	r7, r7, #1
	bics	r7, r6
	movs	r6, #4
	bics	r6, r5
	movs	r5, #8
	orrs	r2, r7
	bics	r5, r4
	orrs	r2, r6
	orrs	r2, r5
	movs	r5, #64
	bics	r5, r0
	movs	r0, #128
	orrs	r2, r5
	movs	r5, #32
	bics	r0, r1
	ldr	r1, [sp, #20]
	orrs	r2, r0
	bics	r5, r1
	orrs	r5, r2
	movs	r2, #16
	ldr	r1, [sp, #24]
	bics	r2, r1
	orrs	r5, r2
	str	r3, [sp, #12]
	bne	.LCB9119
	b	.L642	@long jump
.LCB9119:
	.loc 2 379 0
	ldr	r1, [sp, #28]
	subs	r3, r3, #49
	subs	r3, r3, #255
	str	r1, [r3]
	.loc 2 380 0
	ldr	r1, .L742+28
	bl	.L751
.LVL921:
	.loc 2 381 0
	ldr	r7, .L742+84
	ldr	r0, .L742+116
	bl	.L750
.LVL922:
	.loc 2 382 0
	movs	r2, #150
	ldr	r5, .L742+88
	ldr	r4, .L742+96
	lsls	r2, r2, #8
	ldr	r1, .L742+120
	ldr	r0, [r5]
	bl	.L752
.LVL923:
	.loc 2 383 0
	movs	r0, #180
	ldr	r6, .L742+52
	lsls	r0, r0, #1
	bl	.L753
.LVL924:
	.loc 2 384 0
	ldr	r1, .L742+28
	bl	.L751
.LVL925:
	.loc 2 385 0
	ldr	r0, .L742+124
	bl	.L750
.LVL926:
	.loc 2 386 0
	movs	r2, #150
	ldr	r1, .L742+128
	lsls	r2, r2, #8
	ldr	r0, [r5]
	bl	.L752
.LVL927:
	.loc 2 387 0
	movs	r0, #180
	lsls	r0, r0, #1
	bl	.L753
.LVL928:
	.loc 2 388 0
	ldr	r1, .L742+28
	bl	.L751
.LVL929:
	.loc 2 389 0
	ldr	r0, .L742+132
	bl	.L750
.LVL930:
	.loc 2 390 0
	movs	r2, #150
	ldr	r1, .L742+136
	lsls	r2, r2, #8
	ldr	r0, [r5]
	bl	.L752
.LVL931:
	.loc 2 391 0
	movs	r0, #180
	lsls	r0, r0, #1
	bl	.L753
.LVL932:
	.loc 2 392 0
	ldr	r1, .L742+28
	bl	.L751
.LVL933:
	.loc 2 393 0
	ldr	r0, .L742+140
	bl	.L750
.LVL934:
	.loc 2 394 0
	movs	r2, #150
	ldr	r1, .L742+144
	lsls	r2, r2, #8
	ldr	r0, [r5]
	bl	.L752
.LVL935:
	.loc 2 395 0
	movs	r0, #180
	lsls	r0, r0, #1
	bl	.L753
.LVL936:
	.loc 2 396 0
	ldr	r1, .L742+28
	bl	.L751
.LVL937:
	.loc 2 397 0
	ldr	r0, .L742+148
	bl	.L750
.LVL938:
	.loc 2 398 0
	movs	r2, #150
	ldr	r1, .L742+152
	lsls	r2, r2, #8
	ldr	r0, [r5]
	bl	.L752
.LVL939:
	.loc 2 399 0
	movs	r0, #180
	lsls	r0, r0, #1
	bl	.L753
.LVL940:
	.loc 2 400 0
	ldr	r6, .L742+56
	ldr	r3, .L742+156
	strh	r3, [r6]
	.loc 2 401 0
	ldr	r3, .L742+160
	strh	r3, [r6, #2]
	.loc 2 402 0
	movs	r3, #134
	.loc 2 403 0
	movs	r2, #150
	.loc 2 402 0
	lsls	r3, r3, #2
	strh	r3, [r6, #4]
	.loc 2 403 0
	ldr	r0, [r5]
	lsls	r2, r2, #9
	ldr	r1, .L742+164
	bl	.L752
.LVL941:
	.loc 2 404 0
	movs	r2, #0
	movs	r0, r6
	movs	r1, r2
	ldr	r3, .L742+60
	bl	.L749
.LVL942:
	.loc 2 405 0
	movs	r1, #16
	movs	r3, #5
	ldr	r4, .L742+168
	str	r1, [r4, #36]
	adds	r1, r1, #48
	str	r1, [r4, #40]
	subs	r1, r1, #62
	str	r1, [r4, #44]
	.loc 2 406 0
	ldr	r1, .L742+28
	.loc 2 405 0
	str	r3, [r4, #48]
	.loc 2 406 0
	bl	.L751
.LVL943:
	.loc 2 407 0
	movs	r2, #128
	ldr	r3, .L742+172
	lsls	r2, r2, #19
	str	r3, [r2]
	.loc 2 408 0
	ldr	r3, .L742+68
	bl	.L749
.LVL944:
	.loc 2 409 0
	movs	r5, #0
	.loc 2 411 0
	movs	r3, #1
	.loc 2 410 0
	movs	r2, #100
	.loc 2 412 0
	ldr	r6, .L742+4
	.loc 2 409 0
	str	r5, [r4, #24]
	.loc 2 410 0
	str	r2, [r4, #16]
	.loc 2 411 0
	str	r3, [r4, #32]
	.loc 2 412 0
	str	r3, [r6, #12]
	.loc 2 413 0
	ldr	r1, .L742+176
	str	r3, [sp]
	ldr	r0, .L742+180
	movs	r3, r5
	ldr	r7, .L742+184
	bl	.L750
.LVL945:
	.loc 2 414 0
	movs	r0, #1
	movs	r1, r5
	str	r5, [sp]
	ldr	r3, .L742+32
	ldr	r2, .L742+180
	rsbs	r0, r0, #0
	ldr	r5, .L742+188
	bl	.L754
.LVL946:
	.loc 2 415 0
	movs	r2, #20
	ldr	r3, [r4, #32]
	movs	r0, r2
	muls	r0, r3
	asrs	r2, r3, #31
	adds	r3, r3, r2
	eors	r3, r2
	adds	r0, r0, r3
	lsls	r0, r0, #2
	ldr	r3, .L742+192
	movs	r1, #3
	bl	.L749
.LVL947:
	.loc 2 421 0
	movs	r3, #16
	str	r3, [sp, #24]
.LBB154:
.LBB155:
	.loc 1 2038 0
	adds	r3, r3, #241
	adds	r3, r3, #255
.LBE155:
.LBE154:
	.loc 2 415 0
	str	r0, [r4, #72]
.LBB158:
.LBB156:
	.loc 1 2038 0
	str	r3, [sp, #20]
.L697:
.LBE156:
.LBE158:
	.loc 2 418 0
	ldr	r2, [r6, #4]
	lsrs	r3, r2, #31
	adds	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r6]
	.loc 2 419 0
	ldr	r3, .L742+196
	bl	.L749
.LVL948:
	ldr	r3, .L742+200
	movs	r1, #25
	bl	.L749
.LVL949:
	adds	r1, r1, #1
	str	r1, [r6, #4]
	.loc 2 420 0
	ldr	r3, .L742+204
	ldr	r1, [r6]
	movs	r0, #0
	bl	.L749
.LVL950:
	.loc 2 421 0
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #24]
	ldrh	r3, [r3]
	ands	r3, r2
	bne	.L644
	.loc 2 422 0
	ldr	r2, .L742+168
	ldr	r1, .L742+208
	ldr	r4, [r2, #36]
	ldr	r0, .L742+56
	orrs	r1, r4
	strh	r1, [r0, #2]
.LVL951:
.LBB159:
.LBB157:
	.loc 1 2038 0
	mov	r1, sp
	ldrh	r1, [r1, #20]
	strh	r1, [r0, #4]
.LVL952:
.LBE157:
.LBE159:
	.loc 2 425 0
	ldr	r1, [r2, #44]
	adds	r1, r1, #1
	.loc 2 424 0
	str	r3, [r2, #60]
	.loc 2 425 0
	str	r1, [r2, #44]
	.loc 2 426 0
	str	r3, [r2, #52]
.L728:
	.loc 2 427 0 discriminator 2
	str	r3, [r6, #16]
	ldr	r3, [r6, #16]
	ldr	r2, [r6, #4]
	cmp	r3, #15
	bgt	.L647
	.loc 2 428 0
	lsrs	r3, r2, #31
	adds	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r6]
	.loc 2 429 0
	ldr	r3, .L742+196
	bl	.L749
.LVL953:
	ldr	r3, .L742+200
	movs	r1, #25
	bl	.L749
.LVL954:
	adds	r1, r1, #1
	str	r1, [r6, #4]
	.loc 2 430 0
	movs	r0, #0
	ldr	r1, [r6]
	ldr	r3, .L742+204
	bl	.L749
.LVL955:
	.loc 2 431 0
	ldr	r4, .L742+168
	ldr	r5, [r4, #36]
	ldr	r3, [r4, #40]
	adds	r5, r5, #16
	movs	r1, r3
	movs	r0, r5
	ldr	r7, .L742+212
	str	r3, [sp, #16]
	bl	.L750
.LVL956:
	cmp	r0, #0
	beq	.LCB9416
	b	.L646	@long jump
.LCB9416:
.L648:
	.loc 2 432 0
	ldr	r3, [r4, #44]
	subs	r3, r3, #1
	str	r3, [r4, #44]
.L647:
	.loc 2 480 0
	movs	r4, #0
	.loc 2 481 0
	ldr	r3, [r6, #4]
	.loc 2 480 0
	str	r4, [r6, #16]
	.loc 2 481 0
	cmp	r3, #1
	bne	.L644
	.loc 2 483 0
	movs	r5, #128
	.loc 2 484 0
	movs	r1, #252
	.loc 2 483 0
	ldr	r7, .L742+216
	lsls	r5, r5, #19
	.loc 2 484 0
	lsls	r1, r1, #22
	movs	r0, r4
	ldr	r3, .L742+220
	.loc 2 483 0
	str	r7, [r5]
	.loc 2 484 0
	bl	.L749
.LVL957:
	.loc 2 485 0
	ldr	r3, .L742+224
	movs	r0, r4
	bl	.L749
.LVL958:
	.loc 2 486 0
	str	r7, [r5]
	.loc 2 487 0
	ldr	r3, .L742+228
	bl	.L749
.LVL959:
.L644:
	.loc 2 490 0
	ldr	r7, .L742+168
	ldr	r3, [r7, #52]
	subs	r3, r3, #1
	cmp	r3, #1
	bls	.L661
	.loc 2 491 0
	movs	r3, #0
	str	r3, [r7, #56]
.L661:
	.loc 2 493 0
	ldr	r3, [sp, #12]
	ldrh	r2, [r3]
	movs	r3, #64
	ands	r3, r2
	beq	.LCB9469
	b	.L663	@long jump
.LCB9469:
	.loc 2 494 0
	ldr	r2, [r7, #48]
	subs	r2, r2, #1
	str	r2, [r7, #48]
	.loc 2 495 0
	ldr	r5, .L742+208
	ldr	r2, [r7, #36]
	ldr	r0, .L742+56
	orrs	r2, r5
	strh	r2, [r0, #2]
.LVL960:
.LBB160:
.LBB161:
	.loc 1 2038 0
	movs	r2, #142
	lsls	r2, r2, #2
	strh	r2, [r0, #4]
.LVL961:
.LBE161:
.LBE160:
	.loc 2 497 0
	str	r3, [r7, #60]
.L731:
	.loc 2 498 0 discriminator 2
	str	r3, [r6, #16]
	ldr	r3, [r6, #16]
	ldr	r2, [r6, #4]
	cmp	r3, #15
	ble	.LCB9507
	b	.L666	@long jump
.LCB9507:
	.loc 2 499 0
	lsrs	r3, r2, #31
	adds	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r6]
	.loc 2 500 0
	ldr	r3, .L742+196
	bl	.L749
.LVL962:
	ldr	r3, .L742+200
	movs	r1, #25
	bl	.L749
.LVL963:
	adds	r1, r1, #1
	str	r1, [r6, #4]
	.loc 2 501 0
	movs	r0, #0
	ldr	r1, [r6]
	ldr	r3, .L742+204
	bl	.L749
.LVL964:
	.loc 2 502 0
	movs	r3, #1
	ldr	r4, .L742+168
	str	r3, [r4, #52]
	.loc 2 503 0
	ldr	r3, [r4, #40]
	ldr	r0, [r4, #36]
	subs	r1, r3, #1
	ldr	r3, .L742+212
	bl	.L749
.LVL965:
	b	.L743
.L744:
	.align	2
.L742:
	.word	LoadInt
	.word	game
	.word	loadSpritePal
	.word	sprsPalette
	.word	sprs
	.word	loadSpriteGraphics
	.word	67108944
	.word	WaitForVblank
	.word	65535
	.word	.LC51
	.word	fillpal
	.word	1028
	.word	67108876
	.word	Sleep
	.word	sprites
	.word	MoveSprite
	.word	sprites+8
	.word	CopyOAM
	.word	5188
	.word	FadeOut
	.word	ttlscrPalette
	.word	SetPalette
	.word	.LANCHOR0
	.word	ttlscrBitmap
	.word	memcpy
	.word	FadeIn
	.word	srand
	.word	8432
	.word	67109168
	.word	stry1Palette
	.word	stry1Bitmap
	.word	stry2Palette
	.word	stry2Bitmap
	.word	stry3Palette
	.word	stry3Bitmap
	.word	stry4Palette
	.word	stry4Bitmap
	.word	stry5Palette
	.word	stry5Bitmap
	.word	-24416
	.word	-32528
	.word	r1Bitmap
	.word	player
	.word	5187
	.word	.LC128
	.word	buf
	.word	sprintf
	.word	Print
	.word	__aeabi_idiv
	.word	rand
	.word	__aeabi_idivmod
	.word	SaveInt
	.word	-32768
	.word	GetPixel3
	.word	1027
	.word	scanlines3
	.word	fillscreen3
	.word	battle
.L743:
	cmp	r0, #0
	beq	.LCB9604
	b	.L665	@long jump
.LCB9604:
.L732:
	.loc 2 516 0
	ldr	r3, [r4, #48]
	adds	r3, r3, #1
	str	r3, [r4, #48]
.L666:
	.loc 2 547 0
	movs	r4, #0
	.loc 2 548 0
	ldr	r3, [r6, #4]
	.loc 2 547 0
	str	r4, [r6, #16]
	.loc 2 548 0
	cmp	r3, #1
	bne	.L663
	.loc 2 550 0
	movs	r5, #128
	.loc 2 551 0
	movs	r1, #252
	.loc 2 550 0
	ldr	r3, .L745
	lsls	r5, r5, #19
	str	r3, [r5]
	.loc 2 551 0
	lsls	r1, r1, #22
	movs	r0, r4
	ldr	r3, .L745+4
	bl	.L749
.LVL966:
	.loc 2 552 0
	ldr	r3, .L745+8
	movs	r0, r4
	bl	.L749
.LVL967:
	.loc 2 553 0
	ldr	r3, .L745
	str	r3, [r5]
	.loc 2 554 0
	ldr	r3, .L745+12
	bl	.L749
.LVL968:
.L663:
	.loc 2 557 0
	ldr	r2, .L745+16
	ldr	r3, [r2, #52]
	subs	r3, r3, #1
	cmp	r3, #1
	bls	.L678
	.loc 2 558 0
	movs	r3, #0
	str	r3, [r2, #56]
.L678:
	.loc 2 560 0
	ldr	r3, [sp, #12]
	ldrh	r2, [r3]
	movs	r3, #32
	ands	r3, r2
	beq	.LCB9665
	b	.L680	@long jump
.LCB9665:
	.loc 2 562 0
	ldr	r2, [r7, #44]
	subs	r2, r2, #1
	str	r2, [r7, #44]
	.loc 2 563 0
	ldr	r4, [r7, #36]
	ldr	r2, .L745+20
	ldr	r0, .L745+24
	orrs	r2, r4
	strh	r2, [r0, #2]
.LVL969:
.LBB162:
.LBB163:
	.loc 1 2038 0
	mov	r2, sp
.LBE163:
.LBE162:
	.loc 2 561 0
	movs	r1, #3
.LBB166:
.LBB164:
	.loc 1 2038 0
	ldrh	r2, [r2, #20]
.LBE164:
.LBE166:
	.loc 2 561 0
	str	r1, [r7, #52]
.LBB167:
.LBB165:
	.loc 1 2038 0
	strh	r2, [r0, #4]
.LVL970:
.LBE165:
.LBE167:
	.loc 2 565 0
	str	r3, [r7, #60]
	.loc 2 566 0
	str	r3, [r6, #16]
	.loc 2 567 0
	str	r1, [sp, #28]
.L681:
	.loc 2 566 0 discriminator 1
	ldr	r3, [r6, #16]
	cmp	r3, #15
	ble	.LCB9714
	b	.L683	@long jump
.LCB9714:
	.loc 2 567 0
	ldr	r4, .L745+16
	ldr	r3, [sp, #28]
	str	r3, [r4, #52]
	.loc 2 568 0
	ldr	r3, [r4, #36]
	subs	r5, r3, #1
	ldr	r3, [r4, #40]
	movs	r0, r5
	str	r3, [sp, #16]
	movs	r1, r3
	ldr	r3, .L745+28
	bl	.L749
.LVL971:
	cmp	r0, #0
	beq	.LCB9730
	b	.L682	@long jump
.LCB9730:
.L740:
	.loc 2 588 0
	ldr	r3, [r4, #44]
	adds	r3, r3, #1
	b	.L734
.L642:
	.loc 2 375 0
	ldr	r4, .L745+32
	ldr	r2, [r4, #4]
	lsrs	r3, r2, #31
	adds	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r4]
	.loc 2 376 0
	ldr	r3, .L745+36
	bl	.L749
.LVL972:
	ldr	r3, .L745+40
	movs	r1, #200
	bl	.L749
.LVL973:
	adds	r1, r1, #1
	str	r1, [r4, #4]
	.loc 2 377 0
	movs	r0, r5
	ldr	r1, [r4]
	ldr	r3, .L745+44
	bl	.L749
.LVL974:
	b	.L641
.L646:
	.loc 2 435 0
	ldr	r1, [sp, #16]
	movs	r0, r5
	adds	r1, r1, #16
	bl	.L750
.LVL975:
	cmp	r0, #0
	bne	.LCB9769
	b	.L648	@long jump
.LCB9769:
	.loc 2 440 0
	ldr	r3, .L745+48
	bl	.L749
.LVL976:
	.loc 2 441 0
	ldr	r3, .L745+52
	movs	r0, #1
	ldr	r1, [r3, #28]
	ldr	r3, .L745+56
	bl	.L749
.LVL977:
	.loc 2 443 0
	movs	r1, #2
	.loc 2 442 0
	ldr	r3, [r4, #60]
	adds	r2, r3, #1
	str	r2, [r4, #60]
	.loc 2 443 0
	ldr	r2, [sp, #12]
	ldrh	r2, [r2]
	tst	r2, r1
	bne	.L649
	.loc 2 446 0
	ldr	r5, [r4, #36]
	.loc 2 445 0
	adds	r3, r3, r1
	str	r3, [r4, #60]
	.loc 2 446 0
	adds	r3, r5, #1
	str	r3, [r4, #36]
	.loc 2 447 0
	ldr	r3, [r6, #16]
	adds	r3, r3, #1
	str	r3, [r6, #16]
	.loc 2 448 0
	ldr	r3, [r4, #40]
	adds	r5, r5, #17
	movs	r1, r3
	movs	r0, r5
	str	r3, [sp, #16]
	bl	.L750
.LVL978:
	cmp	r0, #0
	bne	.L650
.L651:
	.loc 2 449 0
	ldr	r2, .L745+16
	ldr	r3, [r2, #44]
	subs	r3, r3, #1
	str	r3, [r2, #44]
	.loc 2 450 0
	b	.L647
.L650:
	.loc 2 452 0
	ldr	r1, [sp, #16]
	movs	r0, r5
	adds	r1, r1, #16
	bl	.L750
.LVL979:
	cmp	r0, #0
	beq	.L651
.L649:
	.loc 2 457 0
	movs	r1, #7
	ldr	r3, .L745+16
	ldr	r2, [r3, #60]
	ands	r2, r1
	bne	.L653
	.loc 2 458 0
	ldr	r1, [r3, #56]
	adds	r1, r1, #1
	.loc 2 459 0
	cmp	r1, #3
	bgt	.L654
	.loc 2 458 0
	str	r1, [r3, #56]
.L653:
	.loc 2 463 0
	ldr	r2, [r3, #56]
	ldr	r3, .L745+24
	cmp	r2, #0
	bne	.L656
.L658:
.LVL980:
.LBB168:
.LBB169:
	.loc 1 2038 0
	movs	r2, #150
.LVL981:
.L727:
.LBE169:
.LBE168:
.LBB170:
.LBB171:
	lsls	r2, r2, #2
	strh	r2, [r3, #4]
.LBE171:
.LBE170:
	.loc 2 475 0
	ldr	r3, [r4, #36]
	.loc 2 476 0
	ldr	r2, [r4, #40]
	.loc 2 475 0
	adds	r1, r3, #1
	.loc 2 476 0
	ldr	r0, .L745+24
	ldr	r3, .L745+60
	.loc 2 475 0
	str	r1, [r4, #36]
	.loc 2 476 0
	bl	.L749
.LVL982:
	.loc 2 477 0
	ldr	r3, .L745+64
	bl	.L749
.LVL983:
	.loc 2 478 0
	movs	r3, #0
	str	r3, [r4, #52]
	.loc 2 427 0
	ldr	r3, [r6, #16]
	adds	r3, r3, #1
	b	.L728
.L654:
	.loc 2 460 0
	str	r2, [r3, #56]
	b	.L653
.L656:
	.loc 2 466 0
	cmp	r2, #2
	beq	.L658
.LVL984:
.LBB173:
.LBB172:
	.loc 1 2038 0
	movs	r2, #154
	b	.L727
.LVL985:
.L665:
.LBE172:
.LBE173:
	.loc 2 507 0
	ldr	r3, .L745+48
	bl	.L749
.LVL986:
	.loc 2 508 0
	ldr	r3, .L745+52
	movs	r0, #1
	ldr	r1, [r3, #28]
	ldr	r3, .L745+56
	bl	.L749
.LVL987:
	.loc 2 510 0
	movs	r1, #2
	.loc 2 509 0
	ldr	r3, [r4, #28]
	adds	r2, r3, #1
	str	r2, [r4, #28]
	.loc 2 510 0
	ldr	r2, [sp, #12]
	ldrh	r2, [r2]
	tst	r2, r1
	bne	.L667
	.loc 2 512 0
	adds	r3, r3, r1
	.loc 2 513 0
	ldr	r1, [r4, #40]
	.loc 2 512 0
	str	r3, [r4, #28]
	.loc 2 513 0
	subs	r3, r1, #1
	str	r3, [r4, #40]
	.loc 2 514 0
	ldr	r3, [r6, #16]
	adds	r3, r3, #1
	str	r3, [r6, #16]
	.loc 2 515 0
	subs	r1, r1, #2
	ldr	r0, [r4, #36]
	ldr	r3, .L745+28
	bl	.L749
.LVL988:
	cmp	r0, #0
	bne	.LCB9959
	b	.L732	@long jump
.LCB9959:
.L667:
	.loc 2 520 0
	movs	r2, #7
	ldr	r3, .L745+16
	ldr	r1, [r3, #28]
	ands	r2, r1
	bne	.L669
	.loc 2 521 0
	ldr	r1, [r3, #56]
	adds	r1, r1, #1
	.loc 2 522 0
	cmp	r1, #3
	bgt	.L670
	.loc 2 521 0
	str	r1, [r3, #56]
.L669:
	ldr	r1, [r3, #36]
	.loc 2 526 0
	ldr	r0, [r3, #56]
	lsls	r3, r1, #16
	asrs	r3, r3, #16
	ldr	r2, .L745+24
	cmp	r0, #0
	bne	.L672
.L739:
	.loc 2 535 0
	orrs	r3, r5
	strh	r3, [r2, #2]
.LVL989:
.LBB174:
.LBB175:
	.loc 1 2038 0
	movs	r3, #142
.LVL990:
.L729:
.LBE175:
.LBE174:
.LBB176:
.LBB177:
	lsls	r3, r3, #2
	strh	r3, [r2, #4]
.LBE177:
.LBE176:
	.loc 2 542 0
	ldr	r3, [r7, #40]
	.loc 2 543 0
	ldr	r0, .L745+24
	.loc 2 542 0
	subs	r2, r3, #1
	.loc 2 543 0
	ldr	r3, .L745+60
	.loc 2 542 0
	str	r2, [r7, #40]
	.loc 2 543 0
	bl	.L749
.LVL991:
	.loc 2 544 0
	ldr	r3, .L745+64
	bl	.L749
.LVL992:
	.loc 2 545 0
	movs	r3, #1
	str	r3, [r7, #52]
	.loc 2 498 0
	ldr	r3, [r6, #16]
	adds	r3, r3, #1
	b	.L731
.L670:
	.loc 2 523 0
	str	r2, [r3, #56]
	b	.L669
.L672:
	.loc 2 530 0
	cmp	r0, #1
	bne	.L674
	.loc 2 531 0
	orrs	r3, r5
.L730:
	.loc 2 539 0
	strh	r3, [r2, #2]
.LVL993:
.LBB179:
.LBB178:
	.loc 1 2038 0
	movs	r3, #146
	b	.L729
.LVL994:
.L674:
.LBE178:
.LBE179:
	.loc 2 534 0
	cmp	r0, #2
	beq	.L739
	.loc 2 539 0
	ldr	r0, .L745+20
	orrs	r3, r0
	b	.L730
.L682:
	.loc 2 572 0
	ldr	r1, [sp, #16]
	movs	r0, r5
	adds	r1, r1, #16
	ldr	r3, .L745+28
	bl	.L749
.LVL995:
	cmp	r0, #0
	beq	.LCB10078
	b	.L684	@long jump
.LCB10078:
.L735:
	.loc 2 573 0
	ldr	r3, [r4, #44]
	subs	r3, r3, #1
.L734:
	str	r3, [r4, #44]
.L683:
	.loc 2 619 0
	movs	r4, #0
	.loc 2 620 0
	ldr	r3, [r6, #4]
	.loc 2 619 0
	str	r4, [r6, #16]
	.loc 2 620 0
	cmp	r3, #1
	bne	.L680
	.loc 2 622 0
	movs	r5, #128
	.loc 2 623 0
	movs	r1, #252
	.loc 2 622 0
	ldr	r3, .L745
	lsls	r5, r5, #19
	str	r3, [r5]
	.loc 2 623 0
	lsls	r1, r1, #22
	movs	r0, r4
	ldr	r3, .L745+4
	bl	.L749
.LVL996:
	.loc 2 624 0
	ldr	r3, .L745+8
	movs	r0, r4
	bl	.L749
.LVL997:
	.loc 2 625 0
	ldr	r3, .L745
	str	r3, [r5]
	.loc 2 626 0
	ldr	r3, .L745+12
	bl	.L749
.LVL998:
.L680:
	.loc 2 629 0
	ldr	r2, .L745+16
	ldr	r3, [r2, #52]
	subs	r3, r3, #1
	cmp	r3, #1
	bls	.L696
	.loc 2 630 0
	movs	r3, #0
	str	r3, [r2, #56]
.L696:
	.loc 2 632 0
	ldr	r3, [sp, #12]
	ldrh	r2, [r3]
	movs	r3, #128
	ands	r3, r2
	beq	.LCB10141
	b	.L697	@long jump
.LCB10141:
	.loc 2 634 0
	ldr	r2, [r7, #48]
	adds	r2, r2, #1
	.loc 2 635 0
	ldr	r4, .L745+68
	.loc 2 634 0
	str	r2, [r7, #48]
	.loc 2 635 0
	ldr	r2, [r7, #36]
	ldr	r0, .L745+24
	orrs	r2, r4
	strh	r2, [r0, #2]
.LVL999:
.LBB180:
.LBB181:
	.loc 1 2038 0
	movs	r2, #136
.LBE181:
.LBE180:
	.loc 2 633 0
	movs	r1, #2
	movs	r5, r4
.LBB184:
.LBB182:
	.loc 1 2038 0
	lsls	r2, r2, #2
.LBE182:
.LBE184:
	.loc 2 633 0
	str	r1, [r7, #52]
.LBB185:
.LBB183:
	.loc 1 2038 0
	strh	r2, [r0, #4]
.LVL1000:
.LBE183:
.LBE185:
	.loc 2 637 0
	str	r3, [r7, #60]
	.loc 2 638 0
	str	r3, [r6, #16]
	.loc 2 649 0
	str	r1, [sp, #16]
.L698:
	.loc 2 638 0 discriminator 1
	ldr	r3, [r6, #16]
	ldr	r2, [r6, #4]
	cmp	r3, #15
	bgt	.L700
	.loc 2 639 0
	lsrs	r3, r2, #31
	adds	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r6]
	.loc 2 640 0
	ldr	r3, .L745+36
	bl	.L749
.LVL1001:
	ldr	r3, .L745+40
	movs	r1, #25
	bl	.L749
.LVL1002:
	adds	r1, r1, #1
	str	r1, [r6, #4]
	.loc 2 641 0
	movs	r0, #0
	ldr	r1, [r6]
	ldr	r3, .L745+44
	bl	.L749
.LVL1003:
	.loc 2 642 0
	ldr	r4, .L745+16
	ldr	r1, [r4, #40]
	ldr	r0, [r4, #36]
	adds	r1, r1, #32
	ldr	r3, .L745+28
	bl	.L749
.LVL1004:
	cmp	r0, #0
	beq	.LCB10221
	b	.L699	@long jump
.LCB10221:
.L738:
	.loc 2 655 0
	ldr	r3, [r4, #48]
	subs	r3, r3, #1
	str	r3, [r4, #48]
.L700:
	.loc 2 686 0
	movs	r4, #0
	.loc 2 687 0
	ldr	r3, [r6, #4]
	.loc 2 686 0
	str	r4, [r6, #16]
	.loc 2 687 0
	cmp	r3, #1
	beq	.LCB10234
	b	.L697	@long jump
.LCB10234:
	.loc 2 689 0
	movs	r5, #128
	.loc 2 690 0
	movs	r1, #252
	.loc 2 689 0
	ldr	r7, .L745
	lsls	r5, r5, #19
	.loc 2 690 0
	lsls	r1, r1, #22
	movs	r0, r4
	.loc 2 689 0
	str	r7, [r5]
	.loc 2 690 0
	ldr	r3, .L745+4
	bl	.L749
.LVL1005:
	.loc 2 691 0
	movs	r0, r4
	ldr	r3, .L745+8
	bl	.L749
.LVL1006:
	.loc 2 692 0
	str	r7, [r5]
	.loc 2 693 0
	ldr	r3, .L745+12
	bl	.L749
.LVL1007:
	b	.L697
.L746:
	.align	2
.L745:
	.word	1027
	.word	scanlines3
	.word	fillscreen3
	.word	battle
	.word	player
	.word	-28672
	.word	sprites
	.word	GetPixel3
	.word	game
	.word	rand
	.word	__aeabi_idivmod
	.word	SaveInt
	.word	WaitForVblank
	.word	sound
	.word	tstsndcmp
	.word	MoveSprite
	.word	CopyOAM
	.word	-32768
.L684:
	.loc 2 576 0
	ldr	r3, .L747
	bl	.L749
.LVL1008:
	.loc 2 577 0
	ldr	r3, .L747+4
	movs	r0, #1
	ldr	r1, [r3, #28]
	ldr	r3, .L747+8
	bl	.L749
.LVL1009:
	.loc 2 578 0
	ldr	r2, [r6, #4]
	lsrs	r3, r2, #31
	adds	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r6]
	.loc 2 579 0
	ldr	r3, .L747+12
	bl	.L749
.LVL1010:
	ldr	r3, .L747+16
	movs	r1, #25
	bl	.L749
.LVL1011:
	adds	r1, r1, #1
	str	r1, [r6, #4]
	.loc 2 580 0
	ldr	r3, .L747+20
	ldr	r1, [r6]
	movs	r0, #0
	bl	.L749
.LVL1012:
	.loc 2 582 0
	movs	r1, #2
	.loc 2 581 0
	ldr	r3, [r4, #60]
	adds	r2, r3, #1
	str	r2, [r4, #60]
	.loc 2 582 0
	ldr	r2, [sp, #12]
	ldrh	r2, [r2]
	tst	r2, r1
	bne	.L685
	.loc 2 585 0
	ldr	r5, [r4, #36]
	.loc 2 584 0
	adds	r3, r3, r1
	str	r3, [r4, #60]
	.loc 2 585 0
	subs	r3, r5, #1
	str	r3, [r4, #36]
	.loc 2 586 0
	ldr	r3, [r6, #16]
	adds	r3, r3, #1
	str	r3, [r6, #16]
	.loc 2 587 0
	ldr	r3, [r4, #40]
	subs	r5, r5, #2
	str	r3, [sp, #16]
	movs	r1, r3
	movs	r0, r5
	ldr	r3, .L747+24
	bl	.L749
.LVL1013:
	cmp	r0, #0
	bne	.LCB10339
	b	.L740	@long jump
.LCB10339:
	.loc 2 591 0
	ldr	r1, [sp, #16]
	movs	r0, r5
	adds	r1, r1, #16
	ldr	r3, .L747+24
	bl	.L749
.LVL1014:
	cmp	r0, #0
	bne	.LCB10347
	b	.L735	@long jump
.LCB10347:
.L685:
	.loc 2 596 0
	movs	r2, #7
	ldr	r3, .L747+28
	ldr	r1, [r3, #60]
	ands	r2, r1
	bne	.L688
	.loc 2 597 0
	ldr	r1, [r3, #56]
	adds	r1, r1, #1
	.loc 2 598 0
	cmp	r1, #3
	bgt	.L689
	.loc 2 597 0
	str	r1, [r3, #56]
.L688:
	.loc 2 602 0
	ldr	r2, [r3, #56]
	ldr	r0, .L747+32
	cmp	r2, #0
	bne	.L691
.L693:
.LVL1015:
.LBB186:
.LBB187:
	.loc 1 2038 0
	movs	r2, #150
.LVL1016:
.L733:
.LBE187:
.LBE186:
.LBB188:
.LBB189:
	lsls	r2, r2, #2
	strh	r2, [r0, #4]
.LBE189:
.LBE188:
	.loc 2 615 0
	ldr	r2, [r3, #36]
	subs	r1, r2, #1
	str	r1, [r3, #36]
	.loc 2 616 0
	ldr	r2, [r3, #40]
	ldr	r3, .L747+36
	bl	.L749
.LVL1017:
	.loc 2 617 0
	ldr	r3, .L747+40
	bl	.L749
.LVL1018:
	.loc 2 566 0
	ldr	r3, [r6, #16]
	adds	r3, r3, #1
	str	r3, [r6, #16]
	b	.L681
.L689:
	.loc 2 599 0
	str	r2, [r3, #56]
	b	.L688
.L691:
	.loc 2 605 0
	cmp	r2, #2
	beq	.L693
.LVL1019:
.LBB191:
.LBB190:
	.loc 1 2038 0
	movs	r2, #154
	b	.L733
.LVL1020:
.L699:
.LBE190:
.LBE191:
	.loc 2 646 0
	ldr	r3, .L747
	bl	.L749
.LVL1021:
	.loc 2 647 0
	ldr	r3, .L747+4
	movs	r0, #1
	ldr	r1, [r3, #28]
	ldr	r3, .L747+8
	bl	.L749
.LVL1022:
	.loc 2 648 0
	ldr	r3, [r4, #28]
	adds	r2, r3, #1
	str	r2, [r4, #28]
	.loc 2 649 0
	ldr	r2, [sp, #12]
	ldr	r1, [sp, #16]
	ldrh	r2, [r2]
	tst	r2, r1
	bne	.L701
	.loc 2 652 0
	ldr	r1, [r4, #40]
	.loc 2 651 0
	adds	r3, r3, #2
	str	r3, [r4, #28]
	.loc 2 652 0
	adds	r3, r1, #1
	str	r3, [r4, #40]
	.loc 2 653 0
	ldr	r3, [r6, #16]
	adds	r3, r3, #1
	str	r3, [r6, #16]
	.loc 2 654 0
	adds	r1, r1, #33
	ldr	r0, [r4, #36]
	ldr	r3, .L747+24
	bl	.L749
.LVL1023:
	cmp	r0, #0
	bne	.LCB10478
	b	.L738	@long jump
.LCB10478:
.L701:
	.loc 2 659 0
	movs	r1, #7
	ldr	r3, .L747+28
	ldr	r2, [r3, #28]
	ands	r2, r1
	bne	.L703
	.loc 2 660 0
	ldr	r1, [r3, #56]
	adds	r1, r1, #1
	.loc 2 661 0
	cmp	r1, #3
	bgt	.L704
	.loc 2 660 0
	str	r1, [r3, #56]
.L703:
	ldr	r1, [r3, #36]
	.loc 2 665 0
	ldr	r2, [r3, #56]
	lsls	r3, r1, #16
	asrs	r3, r3, #16
	ldr	r0, .L747+32
	cmp	r2, #0
	bne	.L706
.L741:
	.loc 2 674 0
	orrs	r3, r5
	strh	r3, [r0, #2]
.LVL1024:
.LBB192:
.LBB193:
	.loc 1 2038 0
	movs	r3, #134
.LVL1025:
.L736:
.LBE193:
.LBE192:
.LBB194:
.LBB195:
	lsls	r3, r3, #2
	strh	r3, [r0, #4]
.LBE195:
.LBE194:
	.loc 2 681 0
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	.loc 2 682 0
	ldr	r3, .L747+36
	.loc 2 681 0
	str	r2, [r7, #40]
	.loc 2 682 0
	bl	.L749
.LVL1026:
	.loc 2 683 0
	ldr	r3, .L747+40
	bl	.L749
.LVL1027:
	.loc 2 684 0
	ldr	r3, [sp, #16]
	str	r3, [r7, #52]
	.loc 2 638 0
	ldr	r3, [r6, #16]
	adds	r3, r3, #1
	str	r3, [r6, #16]
	b	.L698
.L704:
	.loc 2 662 0
	str	r2, [r3, #56]
	b	.L703
.L706:
	.loc 2 669 0
	cmp	r2, #1
	bne	.L708
	.loc 2 670 0
	orrs	r3, r5
.L737:
	.loc 2 678 0
	strh	r3, [r0, #2]
.LVL1028:
.LBB197:
.LBB196:
	.loc 1 2038 0
	movs	r3, #138
	b	.L736
.LVL1029:
.L708:
.LBE196:
.LBE197:
	.loc 2 673 0
	cmp	r2, #2
	beq	.L741
	.loc 2 678 0
	ldr	r2, .L747+44
	orrs	r3, r2
	b	.L737
.L748:
	.align	2
.L747:
	.word	WaitForVblank
	.word	sound
	.word	tstsndcmp
	.word	rand
	.word	__aeabi_idivmod
	.word	SaveInt
	.word	GetPixel3
	.word	player
	.word	sprites
	.word	MoveSprite
	.word	CopyOAM
	.word	-28672
.L751:
	bx	r1
.L749:
	bx	r3
.L752:
	bx	r4
.L754:
	bx	r5
.L753:
	bx	r6
.L750:
	bx	r7
	.cfi_endproc
.LFE121:
	.size	main, .-main
	.comm	buf2,4,4
	.comm	btlBitmap,76800,2
	.comm	ttlscrPalette,512,2
	.comm	ttlscrBitmap,38400,2
	.comm	sprsPalette,512,2
	.comm	sprs,14208,2
	.comm	stry5Palette,512,2
	.comm	r1Bitmap,76800,2
	.comm	stry5Bitmap,38400,2
	.comm	stry4Palette,512,2
	.comm	stry4Bitmap,38400,2
	.comm	stry3Palette,512,2
	.comm	stry3Bitmap,38400,2
	.comm	stry2Palette,512,2
	.comm	stry2Bitmap,38400,2
	.comm	stry1Palette,512,2
	.comm	stry1Bitmap,38400,2
	.comm	do_regen,4,4
	.comm	lft,4,4
	.comm	next,4,4
	.comm	state,2500,4
	.comm	sound,400,4
	.global	FadeTable
	.global	CurrentPalette
	.global	RAD
	.global	COS
	.global	SIN
	.global	font_matrix
	.global	zoom
	.global	angle
	.global	rotData
	.comm	sprites,1024,2
	.global	Memory
	.global	ScanlineCounter
	.global	paletteMem
	.global	videoBuffer
	.global	BackBuffer
	.global	FrontBuffer
	.comm	loop,4,4
	.global	OAM
	.global	offsetOAM
	.global	vframe
	.comm	v_buffer,4,4
	.global	internalname
	.global	Cartridge
	.global	BGTileMem
	.global	OBJPaletteMem
	.global	BGPaletteMem
	.global	OAMData
	.global	VideoBuffer
	.global	OAMmem
	.comm	enemy,8,4
	.comm	player,76,4
	.comm	game,36,4
	.comm	buf,1024,4
	.section	.rodata
	.align	3
	.type	RAD, %object
	.size	RAD, 2880
RAD:
	.word	0
	.word	0
	.word	584335455
	.word	1066524487
	.word	584335455
	.word	1067573063
	.word	1497369910
	.word	1068158695
	.word	1968510643
	.word	1068621637
	.word	1040852682
	.word	1068914455
	.word	255636453
	.word	1069207278
	.word	-814463238
	.word	1069500090
	.word	-942281465
	.word	1069670211
	.word	-1955756308
	.word	1069816626
	.word	-343322506
	.word	1069963032
	.word	1269111296
	.word	1070109439
	.word	-1413422198
	.word	1070255845
	.word	1868070256
	.word	1070402260
	.word	-814463238
	.word	1070548666
	.word	-1748498366
	.word	1070645584
	.word	-942281465
	.word	1070718787
	.word	698464762
	.word	1070791995
	.word	1504681663
	.word	1070865198
	.word	-1984068732
	.word	1070938401
	.word	-343322506
	.word	1071011608
	.word	462894395
	.word	1071084812
	.word	1269111296
	.word	1071158015
	.word	2075328197
	.word	1071231218
	.word	-578892872
	.word	1071304425
	.word	227324029
	.word	1071377629
	.word	1033540930
	.word	1071450832
	.word	1839757831
	.word	1071524035
	.word	-814463238
	.word	1071597242
	.word	-4123169
	.word	1071657558
	.word	-1748498366
	.word	1071694160
	.word	1219358395
	.word	1071730764
	.word	-525016802
	.word	1071767365
	.word	2025575296
	.word	1071803967
	.word	281200099
	.word	1071840569
	.word	-1045910436
	.word	1071877172
	.word	1504681663
	.word	1071913774
	.word	-239693535
	.word	1071950375
	.word	-1566804070
	.word	1071986979
	.word	983788029
	.word	1072023581
	.word	-760587169
	.word	1072060182
	.word	1790004930
	.word	1072096784
	.word	462894395
	.word	1072133388
	.word	-1281480802
	.word	1072169989
	.word	1269111296
	.word	1072206591
	.word	-475263901
	.word	1072243192
	.word	-1802374436
	.word	1072279796
	.word	748217663
	.word	1072316398
	.word	-996157535
	.word	1072352999
	.word	1971699227
	.word	1072389603
	.word	227324029
	.word	1072426205
	.word	-1517051168
	.word	1072462806
	.word	1033540930
	.word	1072499408
	.word	-293569605
	.word	1072536011
	.word	-2037944802
	.word	1072572613
	.word	512647296
	.word	1072609215
	.word	-814463238
	.word	1072645818
	.word	1736128860
	.word	1072682420
	.word	-4123169
	.word	1072706134
	.word	-1502207761
	.word	1072724432
	.word	-913969041
	.word	1072742740
	.word	1882913663
	.word	1072761038
	.word	384829070
	.word	1072779336
	.word	973067791
	.word	1072797644
	.word	-525016802
	.word	1072815941
	.word	-2023101395
	.word	1072834239
	.word	-1434862674
	.word	1072852547
	.word	1362020029
	.word	1072870845
	.word	-136064564
	.word	1072889142
	.word	452174157
	.word	1072907451
	.word	-1045910436
	.word	1072925748
	.word	1750972267
	.word	1072944046
	.word	-1955756308
	.word	1072962354
	.word	841126395
	.word	1072980652
	.word	-656958198
	.word	1072998949
	.word	-68719477
	.word	1073017257
	.word	-1566804070
	.word	1073035555
	.word	1230078634
	.word	1073053853
	.word	1818317354
	.word	1073072161
	.word	320232762
	.word	1073090459
	.word	-1177851831
	.word	1073108756
	.word	-589613110
	.word	1073127064
	.word	-2087697703
	.word	1073145362
	.word	709185000
	.word	1073163660
	.word	1297423721
	.word	1073181968
	.word	-200660872
	.word	1073200265
	.word	-1698745465
	.word	1073218563
	.word	-1110506744
	.word	1073236871
	.word	1686375959
	.word	1073255169
	.word	188291366
	.word	1073273467
	.word	-1309793227
	.word	1073291764
	.word	-721554506
	.word	1073310072
	.word	2075328197
	.word	1073328370
	.word	577243605
	.word	1073346668
	.word	1165482325
	.word	1073364976
	.word	-332602267
	.word	1073383273
	.word	-1830686860
	.word	1073401571
	.word	-1242448139
	.word	1073419879
	.word	1554434564
	.word	1073438177
	.word	56349971
	.word	1073456475
	.word	644588692
	.word	1073474783
	.word	-853495901
	.word	1073493080
	.word	1943386802
	.word	1073511378
	.word	-1763341773
	.word	1073529686
	.word	1033540930
	.word	1073547984
	.word	-464543663
	.word	1073566281
	.word	123695058
	.word	1073584590
	.word	-1374389535
	.word	1073602887
	.word	1422493168
	.word	1073621185
	.word	2010731889
	.word	1073639493
	.word	512647296
	.word	1073657791
	.word	-985437296
	.word	1073676088
	.word	-397198576
	.word	1073694396
	.word	-1895283168
	.word	1073712694
	.word	901599535
	.word	1073730992
	.word	744919128
	.word	1073745562
	.word	-4123169
	.word	1073754710
	.word	-753165465
	.word	1073763859
	.word	-459046105
	.word	1073773013
	.word	-1208088401
	.word	1073782162
	.word	-1957130697
	.word	1073791311
	.word	-1663011337
	.word	1073800465
	.word	1882913663
	.word	1073809614
	.word	1133871366
	.word	1073818763
	.word	1427990727
	.word	1073827917
	.word	678948430
	.word	1073837066
	.word	-70093866
	.word	1073846214
	.word	224025494
	.word	1073855369
	.word	-525016802
	.word	1073864517
	.word	-1274059099
	.word	1073873666
	.word	-979939738
	.word	1073882820
	.word	-1728982035
	.word	1073891969
	.word	1816942965
	.word	1073901118
	.word	2111062325
	.word	1073910272
	.word	1362020029
	.word	1073919421
	.word	612977732
	.word	1073928570
	.word	907097093
	.word	1073937724
	.word	158054796
	.word	1073946873
	.word	-590987500
	.word	1073956021
	.word	-296868139
	.word	1073965175
	.word	-1045910436
	.word	1073974324
	.word	-1794952732
	.word	1073983473
	.word	-1500833372
	.word	1073992627
	.word	2045091628
	.word	1074001776
	.word	1296049331
	.word	1074010925
	.word	1590168692
	.word	1074020079
	.word	841126395
	.word	1074029228
	.word	92084099
	.word	1074038377
	.word	386203459
	.word	1074047531
	.word	-362838837
	.word	1074056679
	.word	-1111881134
	.word	1074065828
	.word	-1860923430
	.word	1074074977
	.word	-1566804070
	.word	1074084131
	.word	1979120930
	.word	1074093280
	.word	1230078634
	.word	1074102429
	.word	1524197994
	.word	1074111583
	.word	775155698
	.word	1074120732
	.word	26113401
	.word	1074129881
	.word	320232762
	.word	1074139035
	.word	-428809535
	.word	1074148183
	.word	-1177851831
	.word	1074157332
	.word	-883732471
	.word	1074166486
	.word	-1632774767
	.word	1074175635
	.word	1913150232
	.word	1074184784
	.word	-2087697703
	.word	1074193938
	.word	1458227296
	.word	1074203087
	.word	709185000
	.word	1074212236
	.word	1003304360
	.word	1074221390
	.word	254262064
	.word	1074230539
	.word	-494780232
	.word	1074239687
	.word	-200660872
	.word	1074248841
	.word	-949703168
	.word	1074257990
	.word	-1698745465
	.word	1074267139
	.word	-1404626104
	.word	1074276293
	.word	2141298895
	.word	1074285442
	.word	1392256599
	.word	1074294591
	.word	1686375959
	.word	1074303745
	.word	937333663
	.word	1074312894
	.word	188291366
	.word	1074322043
	.word	482410727
	.word	1074331197
	.word	-266631570
	.word	1074340345
	.word	-1015673866
	.word	1074349494
	.word	-721554506
	.word	1074358648
	.word	-1470596802
	.word	1074367797
	.word	2075328197
	.word	1074376946
	.word	-1925519738
	.word	1074386100
	.word	1620405261
	.word	1074395249
	.word	871362965
	.word	1074404398
	.word	1165482325
	.word	1074413552
	.word	416440029
	.word	1074422701
	.word	-332602267
	.word	1074431849
	.word	-38482907
	.word	1074441003
	.word	-787525203
	.word	1074450152
	.word	-1536567500
	.word	1074459301
	.word	-1242448139
	.word	1074468455
	.word	-1991490436
	.word	1074477604
	.word	1554434564
	.word	1074486753
	.word	1848553924
	.word	1074495907
	.word	1099511628
	.word	1074505056
	.word	350469331
	.word	1074514205
	.word	644588692
	.word	1074523359
	.word	-104453605
	.word	1074532507
	.word	-853495901
	.word	1074541656
	.word	-559376541
	.word	1074550810
	.word	-1308418837
	.word	1074559959
	.word	-2057461133
	.word	1074569108
	.word	-1763341773
	.word	1074578262
	.word	1782583227
	.word	1074587411
	.word	1033540930
	.word	1074596560
	.word	1327660291
	.word	1074605714
	.word	578617994
	.word	1074614863
	.word	-170424302
	.word	1074624011
	.word	-919466599
	.word	1074633160
	.word	-625347238
	.word	1074642314
	.word	-1374389535
	.word	1074651463
	.word	-2123431831
	.word	1074660612
	.word	-1829312471
	.word	1074669766
	.word	1716612529
	.word	1074678915
	.word	967570232
	.word	1074688064
	.word	1261689593
	.word	1074697218
	.word	512647296
	.word	1074706367
	.word	-236395000
	.word	1074715515
	.word	57724360
	.word	1074724670
	.word	-691317936
	.word	1074733818
	.word	-1440360232
	.word	1074742967
	.word	-1146240872
	.word	1074752121
	.word	-1895283168
	.word	1074761270
	.word	1650641831
	.word	1074770419
	.word	1944761192
	.word	1074779573
	.word	1195718895
	.word	1074788722
	.word	-1924145349
	.word	1074794135
	.word	-1777085668
	.word	1074798712
	.word	-4123169
	.word	1074803286
	.word	1768839331
	.word	1074807861
	.word	1915899011
	.word	1074812438
	.word	-606105785
	.word	1074817012
	.word	1166856715
	.word	1074821587
	.word	1313916395
	.word	1074826164
	.word	-1208088401
	.word	1074830738
	.word	564874099
	.word	1074835313
	.word	711933779
	.word	1074839890
	.word	-1810071017
	.word	1074844464
	.word	-37108517
	.word	1074849038
	.word	109951163
	.word	1074853616
	.word	1882913663
	.word	1074858190
	.word	-639091134
	.word	1074862764
	.word	-492031453
	.word	1074867341
	.word	1280931046
	.word	1074871916
	.word	-1241073750
	.word	1074876490
	.word	-1094014070
	.word	1074881067
	.word	678948430
	.word	1074885642
	.word	-1843056366
	.word	1074890216
	.word	-1695996686
	.word	1074894793
	.word	76965814
	.word	1074899368
	.word	1849928314
	.word	1074903942
	.word	1996987994
	.word	1074908519
	.word	-525016802
	.word	1074913093
	.word	1247945698
	.word	1074917668
	.word	1395005378
	.word	1074922245
	.word	-1126999418
	.word	1074926819
	.word	645963081
	.word	1074931394
	.word	793022762
	.word	1074935971
	.word	-1728982035
	.word	1074940545
	.word	43980465
	.word	1074945120
	.word	191040145
	.word	1074949697
	.word	1964002645
	.word	1074954271
	.word	-558002151
	.word	1074958845
	.word	-410942471
	.word	1074963422
	.word	1362020029
	.word	1074967997
	.word	-1159984767
	.word	1074972571
	.word	612977732
	.word	1074977146
	.word	760037413
	.word	1074981723
	.word	-1761967384
	.word	1074986297
	.word	10995116
	.word	1074990872
	.word	158054796
	.word	1074995449
	.word	1931017296
	.word	1075000023
	.word	-590987500
	.word	1075004597
	.word	-443927820
	.word	1075009174
	.word	1329034680
	.word	1075013749
	.word	-1192970116
	.word	1075018323
	.word	-1045910436
	.word	1075022900
	.word	727052064
	.word	1075027475
	.word	-1794952732
	.word	1075032049
	.word	-1647893052
	.word	1075036626
	.word	125069448
	.word	1075041201
	.word	1898031947
	.word	1075045775
	.word	2045091628
	.word	1075050352
	.word	-476913169
	.word	1075054926
	.word	1296049331
	.word	1075059501
	.word	1443109011
	.word	1075064078
	.word	-1078895785
	.word	1075068652
	.word	694066715
	.word	1075073227
	.word	841126395
	.word	1075077804
	.word	-1680878401
	.word	1075082378
	.word	92084099
	.word	1075086953
	.word	239143779
	.word	1075091530
	.word	2012106279
	.word	1075096104
	.word	-509898517
	.word	1075100678
	.word	-362838837
	.word	1075105255
	.word	1410123663
	.word	1075109830
	.word	-1111881134
	.word	1075114404
	.word	-964821453
	.word	1075118981
	.word	808141046
	.word	1075123556
	.word	-1713863750
	.word	1075128130
	.word	-1566804070
	.word	1075132707
	.word	206158430
	.word	1075137282
	.word	1979120930
	.word	1075141856
	.word	2126180610
	.word	1075146433
	.word	-395824186
	.word	1075151007
	.word	1377138314
	.word	1075155582
	.word	1524197994
	.word	1075160159
	.word	-997806802
	.word	1075164733
	.word	775155698
	.word	1075169308
	.word	922215378
	.word	1075173885
	.word	-1599789418
	.word	1075178459
	.word	173173081
	.word	1075183034
	.word	320232762
	.word	1075187611
	.word	2093195261
	.word	1075192185
	.word	-428809535
	.word	1075196759
	.word	-281749855
	.word	1075201336
	.word	1491212645
	.word	1075205911
	.word	-1030792151
	.word	1075210485
	.word	-883732471
	.word	1075215062
	.word	889230029
	.word	1075219637
	.word	-1632774767
	.word	1075224211
	.word	-1485715087
	.word	1075228788
	.word	287247413
	.word	1075233363
	.word	2060209913
	.word	1075237937
	.word	-2087697703
	.word	1075242514
	.word	-314735203
	.word	1075247088
	.word	1458227296
	.word	1075251663
	.word	-1063777500
	.word	1075256237
	.word	-916717820
	.word	1075260814
	.word	856244680
	.word	1075265389
	.word	-1665760116
	.word	1075269963
	.word	-1518700436
	.word	1075274540
	.word	254262064
	.word	1075279115
	.word	2027224564
	.word	1075283689
	.word	-2120683052
	.word	1075288266
	.word	-347720552
	.word	1075292840
	.word	1425241948
	.word	1075297415
	.word	1572301628
	.word	1075301992
	.word	-949703168
	.word	1075306566
	.word	823259331
	.word	1075311141
	.word	970319012
	.word	1075315718
	.word	-1551685785
	.word	1075320292
	.word	221276715
	.word	1075324867
	.word	368336395
	.word	1075329444
	.word	2141298895
	.word	1075334018
	.word	-380705901
	.word	1075338592
	.word	-233646221
	.word	1075343169
	.word	1539316279
	.word	1075347744
	.word	-982688517
	.word	1075352318
	.word	-835628837
	.word	1075356895
	.word	937333663
	.word	1075361470
	.word	-1584671134
	.word	1075366044
	.word	-1437611453
	.word	1075370621
	.word	335351046
	.word	1075375196
	.word	2108313546
	.word	1075379770
	.word	-2039594070
	.word	1075384347
	.type	COS, %object
	.size	COS, 2880
COS:
	.word	0
	.word	1081081856
	.word	-2095944040
	.word	1081081536
	.word	206158430
	.word	1081080578
	.word	-1683627180
	.word	1081078980
	.word	824633721
	.word	1081076744
	.word	-34359738
	.word	1081073876
	.word	-790273982
	.word	1081070370
	.word	-1443109011
	.word	1081066225
	.word	-1168231105
	.word	1081061449
	.word	-790273982
	.word	1081056034
	.word	1340029796
	.word	1081049997
	.word	103079215
	.word	1081043329
	.word	-206158430
	.word	1081036029
	.word	1236950581
	.word	1081028108
	.word	137438953
	.word	1081019564
	.word	790273982
	.word	1081010397
	.word	-274877907
	.word	1081000615
	.word	1236950581
	.word	1080990220
	.word	1030792151
	.word	1080979210
	.word	755914244
	.word	1080967602
	.word	-1236950581
	.word	1080955379
	.word	1821066134
	.word	1080942567
	.word	-309237645
	.word	1080929148
	.word	-1683627180
	.word	1080915140
	.word	-1477468750
	.word	1080900550
	.word	-515396076
	.word	1080885370
	.word	2027224564
	.word	1080869609
	.word	-790273982
	.word	1080853282
	.word	-1202590843
	.word	1080836382
	.word	1614907703
	.word	1080818917
	.word	-103079215
	.word	1080800894
	.word	-2061584302
	.word	1080782315
	.word	858993459
	.word	1080763187
	.word	1717986918
	.word	1080743526
	.word	-309237645
	.word	1080723324
	.word	-103079215
	.word	1080702590
	.word	-1133871366
	.word	1080681332
	.word	-1752346657
	.word	1080659566
	.word	1511828488
	.word	1080637284
	.word	893353198
	.word	1080614494
	.word	-1958505087
	.word	1080591212
	.word	-1924145349
	.word	1080567447
	.word	171798692
	.word	1080543191
	.word	-1786706395
	.word	1080518467
	.word	-34359738
	.word	1080493268
	.word	-1511828488
	.word	1080467611
	.word	-274877907
	.word	1080441511
	.word	-1443109011
	.word	1080414961
	.word	927712936
	.word	1080387977
	.word	-1752346657
	.word	1080360558
	.word	1580547965
	.word	1080332730
	.word	1511828488
	.word	1080304484
	.word	-309237645
	.word	1080275836
	.word	2061584302
	.word	1080246804
	.word	-790273982
	.word	1080217378
	.word	-2095944040
	.word	1080187584
	.word	-1855425872
	.word	1080157421
	.word	755914244
	.word	1080126898
	.word	-1202590843
	.word	1080096030
	.word	858993459
	.word	1080064819
	.word	0
	.word	1080033280
	.word	-1614907703
	.word	1079969562
	.word	171798692
	.word	1079905239
	.word	1065151889
	.word	1079840309
	.word	-1580547965
	.word	1079774789
	.word	-171798692
	.word	1079708712
	.word	0
	.word	1079642112
	.word	1580547965
	.word	1079574970
	.word	1752346657
	.word	1079507345
	.word	2068456250
	.word	1079439235
	.word	1896657558
	.word	1079370668
	.word	-219902326
	.word	1079301663
	.word	1298798110
	.word	1079232243
	.word	-852121512
	.word	1079162427
	.word	-1092639680
	.word	1079092238
	.word	1862297820
	.word	1079021697
	.word	-1690499128
	.word	1078916949
	.word	130567006
	.word	1078774589
	.word	-1126999418
	.word	1078631651
	.word	-1704243023
	.word	1078488183
	.word	968944622
	.word	1078344227
	.word	2061584302
	.word	1078199828
	.word	-151182849
	.word	1078055029
	.word	474164389
	.word	1077883627
	.word	625347238
	.word	1077592693
	.word	1456852907
	.word	1077301228
	.word	-481036337
	.word	1077009317
	.word	-96207267
	.word	1076546541
	.word	-467292442
	.word	1075961475
	.word	-1230078634
	.word	1074913122
	.word	1274712209
	.word	1060520584
	.word	1957130697
	.word	-1072570704
	.word	-1021171424
	.word	-1071522262
	.word	1436237064
	.word	-1070937185
	.word	54975581
	.word	-1070474376
	.word	1992864825
	.word	-1070182466
	.word	1161359157
	.word	-1069891001
	.word	1010176308
	.word	-1069600067
	.word	116823110
	.word	-1069428641
	.word	-776530087
	.word	-1069283840
	.word	-1869169767
	.word	-1069139441
	.word	-1436237064
	.word	-1068995488
	.word	-858993459
	.word	-1068852020
	.word	398572965
	.word	-1068709082
	.word	-1422493168
	.word	-1068566722
	.word	-1704243023
	.word	-1068461961
	.word	-364213227
	.word	-1068391420
	.word	-123695058
	.word	-1068321231
	.word	2027224564
	.word	-1068251415
	.word	508524128
	.word	-1068181994
	.word	-1669883285
	.word	-1068112990
	.word	-1498084593
	.word	-1068044423
	.word	-1814194186
	.word	-1067976313
	.word	1580547965
	.word	-1067908678
	.word	-1649267442
	.word	-1067841553
	.word	-171798692
	.word	-1067774936
	.word	-1580547965
	.word	-1067708859
	.word	-584115552
	.word	-1067643356
	.word	-1477468750
	.word	-1067578426
	.word	-1614907703
	.word	-1067514086
	.word	0
	.word	-1067450368
	.word	34359738
	.word	-1067418837
	.word	-2027224564
	.word	-1067387626
	.word	-68719477
	.word	-1067356759
	.word	1614907703
	.word	-1067326235
	.word	1374389535
	.word	-1067296072
	.word	-790273982
	.word	-1067266270
	.word	1236950581
	.word	-1067236852
	.word	-309237645
	.word	-1067207812
	.word	1511828488
	.word	-1067179164
	.word	755914244
	.word	-1067150926
	.word	-1752346657
	.word	-1067123090
	.word	103079215
	.word	-1067095679
	.word	2027224564
	.word	-1067068695
	.word	-1099511628
	.word	-1067042145
	.word	-1511828488
	.word	-1067016037
	.word	-34359738
	.word	-1066990380
	.word	1683627180
	.word	-1066965189
	.word	171798692
	.word	-1066940457
	.word	1546188227
	.word	-1066916209
	.word	-1958505087
	.word	-1066892436
	.word	893353198
	.word	-1066869154
	.word	687194767
	.word	-1066846372
	.word	1717986918
	.word	-1066824090
	.word	-1133871366
	.word	-1066802316
	.word	-103079215
	.word	-1066781058
	.word	-1133871366
	.word	-1066760332
	.word	893353198
	.word	-1066740130
	.word	858993459
	.word	-1066720461
	.word	-2061584302
	.word	-1066701333
	.word	-927712936
	.word	-1066682762
	.word	790273982
	.word	-1066664739
	.word	-2027224564
	.word	-1066647274
	.word	-1614907703
	.word	-1066630374
	.word	2027224564
	.word	-1066614039
	.word	-515396076
	.word	-1066598278
	.word	1992864825
	.word	-1066583106
	.word	-1683627180
	.word	-1066568508
	.word	-309237645
	.word	-1066554500
	.word	996432413
	.word	-1066541089
	.word	-1236950581
	.word	-1066528269
	.word	755914244
	.word	-1066516046
	.word	1030792151
	.word	-1066504438
	.word	1236950581
	.word	-1066493428
	.word	-274877907
	.word	-1066483033
	.word	790273982
	.word	-1066473251
	.word	137438953
	.word	-1066464084
	.word	1236950581
	.word	-1066455540
	.word	-206158430
	.word	-1066447619
	.word	-721554506
	.word	-1066440328
	.word	1340029796
	.word	-1066433651
	.word	-790273982
	.word	-1066427614
	.word	-1168231105
	.word	-1066422199
	.word	-1443109011
	.word	-1066417423
	.word	-790273982
	.word	-1066413278
	.word	-34359738
	.word	-1066409772
	.word	824633721
	.word	-1066406904
	.word	-1683627180
	.word	-1066404668
	.word	206158430
	.word	-1066403070
	.word	-2095944040
	.word	-1066402112
	.word	0
	.word	-1066401792
	.word	-2095944040
	.word	-1066402112
	.word	206158430
	.word	-1066403070
	.word	-1683627180
	.word	-1066404668
	.word	824633721
	.word	-1066406904
	.word	-34359738
	.word	-1066409772
	.word	-790273982
	.word	-1066413278
	.word	-1443109011
	.word	-1066417423
	.word	-1168231105
	.word	-1066422199
	.word	-790273982
	.word	-1066427614
	.word	1340029796
	.word	-1066433651
	.word	103079215
	.word	-1066440319
	.word	-206158430
	.word	-1066447619
	.word	1236950581
	.word	-1066455540
	.word	137438953
	.word	-1066464084
	.word	790273982
	.word	-1066473251
	.word	-274877907
	.word	-1066483033
	.word	1236950581
	.word	-1066493428
	.word	1855425872
	.word	-1066504430
	.word	755914244
	.word	-1066516046
	.word	-412316860
	.word	-1066528261
	.word	1821066134
	.word	-1066541081
	.word	-309237645
	.word	-1066554500
	.word	-858993459
	.word	-1066568500
	.word	-1477468750
	.word	-1066583098
	.word	-515396076
	.word	-1066598278
	.word	-1443109011
	.word	-1066614031
	.word	-790273982
	.word	-1066630366
	.word	-1202590843
	.word	-1066647266
	.word	1614907703
	.word	-1066664731
	.word	-103079215
	.word	-1066682754
	.word	-2061584302
	.word	-1066701333
	.word	1683627180
	.word	-1066720453
	.word	1717986918
	.word	-1066740122
	.word	-309237645
	.word	-1066760324
	.word	-103079215
	.word	-1066781058
	.word	-309237645
	.word	-1066802308
	.word	-1752346657
	.word	-1066824082
	.word	1511828488
	.word	-1066846364
	.word	1717986918
	.word	-1066869146
	.word	-1133871366
	.word	-1066892428
	.word	-1924145349
	.word	-1066916201
	.word	996432413
	.word	-1066940449
	.word	-1786706395
	.word	-1066965181
	.word	790273982
	.word	-1066990371
	.word	-687194767
	.word	-1067016029
	.word	-274877907
	.word	-1067042137
	.word	-1443109011
	.word	-1067068687
	.word	927712936
	.word	-1067095671
	.word	-927712936
	.word	-1067123082
	.word	1580547965
	.word	-1067150918
	.word	-1958505087
	.word	-1067179156
	.word	515396076
	.word	-1067207803
	.word	2061584302
	.word	-1067236844
	.word	34359738
	.word	-1067266261
	.word	-2095944040
	.word	-1067296064
	.word	-1855425872
	.word	-1067326227
	.word	755914244
	.word	-1067356750
	.word	-1202590843
	.word	-1067387618
	.word	1683627180
	.word	-1067418821
	.word	824633721
	.word	-1067450360
	.word	34359738
	.word	-1067514069
	.word	1821066134
	.word	-1067578393
	.word	1065151889
	.word	-1067643339
	.word	68719477
	.word	-1067708842
	.word	1477468750
	.word	-1067774919
	.word	0
	.word	-1067841536
	.word	-1065151889
	.word	-1067908662
	.word	-529139971
	.word	-1067976292
	.word	-213030378
	.word	-1068044402
	.word	1168231105
	.word	-1068112970
	.word	-948328779
	.word	-1068181975
	.word	-982688517
	.word	-1068251394
	.word	1161359157
	.word	-1068321209
	.word	920840988
	.word	-1068391398
	.word	-419188808
	.word	-1068461940
	.word	1147615261
	.word	-1068566679
	.word	-1326285901
	.word	-1068709040
	.word	1711114971
	.word	-1068851977
	.word	-1972248982
	.word	-1068995442
	.word	700938663
	.word	-1069139398
	.word	1793578343
	.word	-1069283797
	.word	-419188808
	.word	-1069428596
	.word	1855425872
	.word	-1069599982
	.word	89335320
	.word	-1069890909
	.word	920840988
	.word	-1070182374
	.word	-1017048256
	.word	-1070474285
	.word	-1168231105
	.word	-1070937015
	.word	86586541
	.word	-1071522083
	.word	-122320669
	.word	-1072570348
	.word	1906190324
	.word	-1085230615
	.word	849372732
	.word	1074912766
	.word	-240518169
	.word	1075961298
	.word	-1786706395
	.word	1076546371
	.word	590987500
	.word	1077009226
	.word	-1766090552
	.word	1077301136
	.word	-219902326
	.word	1077592607
	.word	1546188227
	.word	1077883535
	.word	1573676017
	.word	1078054987
	.word	-508524128
	.word	1078199785
	.word	-1601163808
	.word	1078344184
	.word	20615843
	.word	1078488141
	.word	597859448
	.word	1078631609
	.word	666578924
	.word	1078774543
	.word	34359738
	.word	1078916907
	.word	577243605
	.word	1079021676
	.word	1917273401
	.word	1079092217
	.word	-2137175726
	.word	1079162406
	.word	13743895
	.word	1079232222
	.word	-1504956541
	.word	1079301642
	.word	611603343
	.word	1079370647
	.word	-769658139
	.word	1079439215
	.word	-1085767732
	.word	1079507325
	.word	-68719477
	.word	1079574953
	.word	-1649267442
	.word	1079642095
	.word	-1821066134
	.word	1079708696
	.word	1065151889
	.word	1079774773
	.word	-584115552
	.word	1079840292
	.word	-1477468750
	.word	1079905222
	.word	1030792151
	.word	1079969546
	.word	-1649267442
	.word	1080033263
	.word	34359738
	.word	1080064811
	.word	1443109011
	.word	1080096014
	.word	-68719477
	.word	1080126889
	.word	790273982
	.word	1080157405
	.word	1374389535
	.word	1080187576
	.word	-1614907703
	.word	1080217370
	.word	1236950581
	.word	1080246796
	.word	-1133871366
	.word	1080275828
	.word	687194767
	.word	1080304476
	.word	755914244
	.word	1080332722
	.word	1717986918
	.word	1080360550
	.word	103079215
	.word	1080387969
	.word	2027224564
	.word	1080414953
	.word	-1099511628
	.word	1080441503
	.word	1958505087
	.word	1080467603
	.word	-858993459
	.word	1080493260
	.word	1683627180
	.word	1080518459
	.word	-652835029
	.word	1080543182
	.word	1546188227
	.word	1080567439
	.word	-1958505087
	.word	1080591212
	.word	893353198
	.word	1080614494
	.word	687194767
	.word	1080637276
	.word	1717986918
	.word	1080659558
	.word	-1133871366
	.word	1080681332
	.word	-927712936
	.word	1080702582
	.word	-1133871366
	.word	1080723316
	.word	893353198
	.word	1080743518
	.word	858993459
	.word	1080763187
	.word	1408749273
	.word	1080782307
	.word	-927712936
	.word	1080800886
	.word	790273982
	.word	1080818909
	.word	-2027224564
	.word	1080836374
	.word	-1614907703
	.word	1080853274
	.word	2027224564
	.word	1080869609
	.word	-1340029796
	.word	1080885362
	.word	1992864825
	.word	1080900542
	.word	-1683627180
	.word	1080915140
	.word	-309237645
	.word	1080929148
	.word	996432413
	.word	1080942559
	.word	-1236950581
	.word	1080955379
	.word	-68719477
	.word	1080967593
	.word	1030792151
	.word	1080979210
	.word	1236950581
	.word	1080990220
	.word	-274877907
	.word	1081000615
	.word	790273982
	.word	1081010397
	.word	-687194767
	.word	1081019555
	.word	412316860
	.word	1081028100
	.word	-206158430
	.word	1081036029
	.word	-721554506
	.word	1081043320
	.word	1340029796
	.word	1081049997
	.word	-790273982
	.word	1081056034
	.word	-1992864825
	.word	1081061441
	.word	-1443109011
	.word	1081066225
	.word	-1614907703
	.word	1081070362
	.word	-34359738
	.word	1081073876
	.word	824633721
	.word	1081076744
	.word	-1683627180
	.word	1081078980
	.word	206158430
	.word	1081080578
	.word	-2095944040
	.word	1081081536
	.type	SIN, %object
	.size	SIN, 2880
SIN:
	.word	0
	.word	0
	.word	-1783957616
	.word	1074913033
	.word	1403251715
	.word	1075961431
	.word	-1477468750
	.word	1076546502
	.word	-1401877325
	.word	1077009291
	.word	-1381261482
	.word	1077301208
	.word	2082200145
	.word	1077592673
	.word	-446676599
	.word	1077883600
	.word	577243605
	.word	1078055020
	.word	-1504956541
	.word	1078199818
	.word	1697371075
	.word	1078344217
	.word	-975816570
	.word	1078488173
	.word	-1587419913
	.word	1078631638
	.word	-329853488
	.word	1078774575
	.word	-962072674
	.word	1078916939
	.word	-2068456250
	.word	1079021692
	.word	-728426453
	.word	1079092233
	.word	-487908285
	.word	1079162422
	.word	1663011337
	.word	1079232238
	.word	144310901
	.word	1079301659
	.word	-2034096511
	.word	1079370663
	.word	-1862297820
	.word	1079439230
	.word	2116559883
	.word	1079507340
	.word	1580547965
	.word	1079574970
	.word	-1649267442
	.word	1079642095
	.word	-171798692
	.word	1079708712
	.word	-1580547965
	.word	1079774789
	.word	-584115552
	.word	1079840292
	.word	171798692
	.word	1079905239
	.word	-1614907703
	.word	1079969562
	.word	0
	.word	1080033280
	.word	858993459
	.word	1080064819
	.word	-2027224564
	.word	1080096022
	.word	-68719477
	.word	1080126889
	.word	1614907703
	.word	1080157413
	.word	1374389535
	.word	1080187576
	.word	-790273982
	.word	1080217378
	.word	2061584302
	.word	1080246804
	.word	-309237645
	.word	1080275836
	.word	1511828488
	.word	1080304484
	.word	1580547965
	.word	1080332730
	.word	-1752346657
	.word	1080360558
	.word	103079215
	.word	1080387969
	.word	2027224564
	.word	1080414953
	.word	-1099511628
	.word	1080441503
	.word	-1511828488
	.word	1080467611
	.word	-34359738
	.word	1080493268
	.word	1683627180
	.word	1080518459
	.word	171798692
	.word	1080543191
	.word	-1924145349
	.word	1080567447
	.word	-1958505087
	.word	1080591212
	.word	893353198
	.word	1080614494
	.word	1511828488
	.word	1080637284
	.word	-1752346657
	.word	1080659566
	.word	-1133871366
	.word	1080681332
	.word	-103079215
	.word	1080702590
	.word	-309237645
	.word	1080723324
	.word	1717986918
	.word	1080743526
	.word	858993459
	.word	1080763187
	.word	-2061584302
	.word	1080782315
	.word	-927712936
	.word	1080800886
	.word	1614907703
	.word	1080818917
	.word	-2027224564
	.word	1080836374
	.word	-790273982
	.word	1080853282
	.word	2027224564
	.word	1080869609
	.word	-515396076
	.word	1080885370
	.word	-1477468750
	.word	1080900550
	.word	-1683627180
	.word	1080915140
	.word	-309237645
	.word	1080929148
	.word	996432413
	.word	1080942559
	.word	-1236950581
	.word	1080955379
	.word	755914244
	.word	1080967602
	.word	1030792151
	.word	1080979210
	.word	1236950581
	.word	1080990220
	.word	-274877907
	.word	1081000615
	.word	790273982
	.word	1081010397
	.word	137438953
	.word	1081019564
	.word	1236950581
	.word	1081028108
	.word	-206158430
	.word	1081036029
	.word	103079215
	.word	1081043329
	.word	1340029796
	.word	1081049997
	.word	-790273982
	.word	1081056034
	.word	-1168231105
	.word	1081061449
	.word	-1443109011
	.word	1081066225
	.word	-790273982
	.word	1081070370
	.word	-34359738
	.word	1081073876
	.word	824633721
	.word	1081076744
	.word	-1683627180
	.word	1081078980
	.word	206158430
	.word	1081080578
	.word	-2095944040
	.word	1081081536
	.word	0
	.word	1081081856
	.word	-2095944040
	.word	1081081536
	.word	206158430
	.word	1081080578
	.word	-1683627180
	.word	1081078980
	.word	824633721
	.word	1081076744
	.word	-34359738
	.word	1081073876
	.word	-790273982
	.word	1081070370
	.word	-1443109011
	.word	1081066225
	.word	-1168231105
	.word	1081061449
	.word	-790273982
	.word	1081056034
	.word	1340029796
	.word	1081049997
	.word	103079215
	.word	1081043329
	.word	-206158430
	.word	1081036029
	.word	1236950581
	.word	1081028108
	.word	137438953
	.word	1081019564
	.word	790273982
	.word	1081010397
	.word	-274877907
	.word	1081000615
	.word	1236950581
	.word	1080990220
	.word	1855425872
	.word	1080979218
	.word	755914244
	.word	1080967602
	.word	-1236950581
	.word	1080955379
	.word	1821066134
	.word	1080942567
	.word	-309237645
	.word	1080929148
	.word	-1683627180
	.word	1080915140
	.word	-1477468750
	.word	1080900550
	.word	-515396076
	.word	1080885370
	.word	2027224564
	.word	1080869609
	.word	-790273982
	.word	1080853282
	.word	-1202590843
	.word	1080836382
	.word	1614907703
	.word	1080818917
	.word	-103079215
	.word	1080800894
	.word	-2061584302
	.word	1080782315
	.word	1683627180
	.word	1080763195
	.word	1717986918
	.word	1080743526
	.word	-309237645
	.word	1080723324
	.word	-103079215
	.word	1080702590
	.word	-309237645
	.word	1080681340
	.word	-1752346657
	.word	1080659566
	.word	1511828488
	.word	1080637284
	.word	1717986918
	.word	1080614502
	.word	-1133871366
	.word	1080591220
	.word	-1924145349
	.word	1080567447
	.word	171798692
	.word	1080543191
	.word	-1786706395
	.word	1080518467
	.word	-34359738
	.word	1080493268
	.word	-687194767
	.word	1080467619
	.word	-274877907
	.word	1080441511
	.word	-1443109011
	.word	1080414961
	.word	927712936
	.word	1080387977
	.word	-927712936
	.word	1080360566
	.word	1580547965
	.word	1080332730
	.word	1511828488
	.word	1080304484
	.word	515396076
	.word	1080275845
	.word	2061584302
	.word	1080246804
	.word	-790273982
	.word	1080217378
	.word	-2095944040
	.word	1080187584
	.word	-1855425872
	.word	1080157421
	.word	755914244
	.word	1080126898
	.word	-1202590843
	.word	1080096030
	.word	858993459
	.word	1080064819
	.word	0
	.word	1080033280
	.word	34359738
	.word	1079969579
	.word	171798692
	.word	1079905239
	.word	1065151889
	.word	1079840309
	.word	68719477
	.word	1079774806
	.word	1477468750
	.word	1079708729
	.word	0
	.word	1079642112
	.word	-1065151889
	.word	1079574986
	.word	1388133430
	.word	1079507350
	.word	151182849
	.word	1079439242
	.word	1532444331
	.word	1079370673
	.word	-584115552
	.word	1079301668
	.word	934584884
	.word	1079232248
	.word	-1216334738
	.word	1079162432
	.word	1285054215
	.word	1079092245
	.word	-54975581
	.word	1079021703
	.word	1876041715
	.word	1078916959
	.word	-597859448
	.word	1078774598
	.word	-1855425872
	.word	1078631661
	.word	1862297820
	.word	1078488193
	.word	1429365116
	.word	1078344240
	.word	-1772962500
	.word	1078199841
	.word	309237645
	.word	1078055043
	.word	-982688517
	.word	1077883646
	.word	-831505669
	.word	1077592712
	.word	0
	.word	1077301248
	.word	-1937889244
	.word	1077009337
	.word	1745474709
	.word	1076546594
	.word	1957130697
	.word	1075961520
	.word	-676199651
	.word	1074913211
	.word	1908149653
	.word	1061569162
	.word	1403251715
	.word	-1072570793
	.word	849372732
	.word	-1071522306
	.word	-405444913
	.word	-1070937238
	.word	1511828488
	.word	-1070474396
	.word	-845249564
	.word	-1070182486
	.word	-1676755232
	.word	-1069891021
	.word	-1827938081
	.word	-1069600087
	.word	845249564
	.word	-1069428651
	.word	-1236950581
	.word	-1069283853
	.word	1965377035
	.word	-1069139454
	.word	-707810610
	.word	-1068995498
	.word	-130567006
	.word	-1068852030
	.word	1126999418
	.word	-1068709092
	.word	-694066715
	.word	-1068566732
	.word	-1340029796
	.word	-1068461966
	.word	0
	.word	-1068391424
	.word	1793578343
	.word	-1068321237
	.word	-350469331
	.word	-1068251422
	.word	-1869169767
	.word	-1068182001
	.word	247390116
	.word	-1068112996
	.word	-1133871366
	.word	-1068044428
	.word	-1449980959
	.word	-1067976318
	.word	-68719477
	.word	-1067908695
	.word	-1649267442
	.word	-1067841553
	.word	-171798692
	.word	-1067774936
	.word	1065151889
	.word	-1067708875
	.word	-584115552
	.word	-1067643356
	.word	-1477468750
	.word	-1067578426
	.word	-1614907703
	.word	-1067514086
	.word	-1649267442
	.word	-1067450385
	.word	34359738
	.word	-1067418837
	.word	-2027224564
	.word	-1067387626
	.word	-68719477
	.word	-1067356759
	.word	1614907703
	.word	-1067326235
	.word	1374389535
	.word	-1067296072
	.word	-1614907703
	.word	-1067266278
	.word	1236950581
	.word	-1067236852
	.word	-309237645
	.word	-1067207812
	.word	687194767
	.word	-1067179172
	.word	755914244
	.word	-1067150926
	.word	1717986918
	.word	-1067123098
	.word	103079215
	.word	-1067095679
	.word	2027224564
	.word	-1067068695
	.word	-1099511628
	.word	-1067042145
	.word	-1511828488
	.word	-1067016037
	.word	-858993459
	.word	-1066990388
	.word	1683627180
	.word	-1066965189
	.word	-652835029
	.word	-1066940466
	.word	1546188227
	.word	-1066916209
	.word	-1958505087
	.word	-1066892436
	.word	893353198
	.word	-1066869154
	.word	687194767
	.word	-1066846372
	.word	1717986918
	.word	-1066824090
	.word	-1133871366
	.word	-1066802316
	.word	-927712936
	.word	-1066781066
	.word	-1133871366
	.word	-1066760332
	.word	893353198
	.word	-1066740130
	.word	858993459
	.word	-1066720461
	.word	1408749273
	.word	-1066701341
	.word	-927712936
	.word	-1066682762
	.word	790273982
	.word	-1066664739
	.word	-2027224564
	.word	-1066647274
	.word	-1614907703
	.word	-1066630374
	.word	2027224564
	.word	-1066614039
	.word	-1340029796
	.word	-1066598286
	.word	1992864825
	.word	-1066583106
	.word	-1683627180
	.word	-1066568508
	.word	-309237645
	.word	-1066554500
	.word	996432413
	.word	-1066541089
	.word	-1236950581
	.word	-1066528269
	.word	-68719477
	.word	-1066516055
	.word	1030792151
	.word	-1066504438
	.word	1236950581
	.word	-1066493428
	.word	-274877907
	.word	-1066483033
	.word	790273982
	.word	-1066473251
	.word	-687194767
	.word	-1066464093
	.word	1236950581
	.word	-1066455540
	.word	-206158430
	.word	-1066447619
	.word	-721554506
	.word	-1066440328
	.word	1340029796
	.word	-1066433651
	.word	-790273982
	.word	-1066427614
	.word	-1992864825
	.word	-1066422207
	.word	-1443109011
	.word	-1066417423
	.word	-790273982
	.word	-1066413278
	.word	-34359738
	.word	-1066409772
	.word	824633721
	.word	-1066406904
	.word	-1683627180
	.word	-1066404668
	.word	206158430
	.word	-1066403070
	.word	-2095944040
	.word	-1066402112
	.word	0
	.word	-1066401792
	.word	-2095944040
	.word	-1066402112
	.word	206158430
	.word	-1066403070
	.word	-1683627180
	.word	-1066404668
	.word	824633721
	.word	-1066406904
	.word	-34359738
	.word	-1066409772
	.word	-790273982
	.word	-1066413278
	.word	-1443109011
	.word	-1066417423
	.word	-1168231105
	.word	-1066422199
	.word	-790273982
	.word	-1066427614
	.word	1340029796
	.word	-1066433651
	.word	103079215
	.word	-1066440319
	.word	-206158430
	.word	-1066447619
	.word	1236950581
	.word	-1066455540
	.word	137438953
	.word	-1066464084
	.word	790273982
	.word	-1066473251
	.word	-274877907
	.word	-1066483033
	.word	1236950581
	.word	-1066493428
	.word	1855425872
	.word	-1066504430
	.word	755914244
	.word	-1066516046
	.word	-412316860
	.word	-1066528261
	.word	1821066134
	.word	-1066541081
	.word	-309237645
	.word	-1066554500
	.word	-858993459
	.word	-1066568500
	.word	-1477468750
	.word	-1066583098
	.word	-515396076
	.word	-1066598278
	.word	-1443109011
	.word	-1066614031
	.word	-790273982
	.word	-1066630366
	.word	-1202590843
	.word	-1066647266
	.word	1614907703
	.word	-1066664731
	.word	-103079215
	.word	-1066682754
	.word	-2061584302
	.word	-1066701333
	.word	1683627180
	.word	-1066720453
	.word	1717986918
	.word	-1066740122
	.word	-309237645
	.word	-1066760324
	.word	721554506
	.word	-1066781049
	.word	-309237645
	.word	-1066802308
	.word	-1752346657
	.word	-1066824082
	.word	1511828488
	.word	-1066846364
	.word	1717986918
	.word	-1066869146
	.word	-1133871366
	.word	-1066892428
	.word	-1924145349
	.word	-1066916201
	.word	996432413
	.word	-1066940449
	.word	-1786706395
	.word	-1066965181
	.word	790273982
	.word	-1066990371
	.word	-687194767
	.word	-1067016029
	.word	-274877907
	.word	-1067042137
	.word	-1443109011
	.word	-1067068687
	.word	927712936
	.word	-1067095671
	.word	-927712936
	.word	-1067123082
	.word	-1889785610
	.word	-1067150910
	.word	-1958505087
	.word	-1067179156
	.word	515396076
	.word	-1067207803
	.word	-1408749273
	.word	-1067236836
	.word	34359738
	.word	-1067266261
	.word	-1271310320
	.word	-1067296056
	.word	-1855425872
	.word	-1067326227
	.word	1580547965
	.word	-1067356742
	.word	-1202590843
	.word	-1067387618
	.word	1683627180
	.word	-1067418821
	.word	824633721
	.word	-1067450360
	.word	34359738
	.word	-1067514069
	.word	1821066134
	.word	-1067578393
	.word	-1580547965
	.word	-1067643323
	.word	68719477
	.word	-1067708842
	.word	1477468750
	.word	-1067774919
	.word	1649267442
	.word	-1067841520
	.word	-1065151889
	.word	-1067908662
	.word	-893353198
	.word	-1067976287
	.word	-577243605
	.word	-1068044397
	.word	-749042296
	.word	-1068112964
	.word	1429365116
	.word	-1068181968
	.word	-1346901744
	.word	-1068251389
	.word	797145930
	.word	-1068321204
	.word	556627762
	.word	-1068391393
	.word	-783402035
	.word	-1068461935
	.word	1608035756
	.word	-1068566666
	.word	-2054712354
	.word	-1068709030
	.word	-2123431831
	.word	-1068851964
	.word	1594291860
	.word	-1068995432
	.word	-27487791
	.word	-1069139389
	.word	1065151889
	.word	-1069283787
	.word	-1147615261
	.word	-1069428586
	.word	-1518700436
	.word	-1069599956
	.word	-1367517587
	.word	-1069890890
	.word	-536011919
	.word	-1070182355
	.word	1821066134
	.word	-1070474265
	.word	673450872
	.word	-1070936962
	.word	-1783957616
	.word	-1071522039
	.word	431558314
	.word	-1072570258
	.type	font_matrix, %object
	.size	font_matrix, 3968
font_matrix:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.type	BackBuffer, %object
	.size	BackBuffer, 4
BackBuffer:
	.word	100704256
	.type	FrontBuffer, %object
	.size	FrontBuffer, 4
FrontBuffer:
	.word	100663296
	.type	paletteMem, %object
	.size	paletteMem, 4
paletteMem:
	.word	83886080
	.type	vframe, %object
	.size	vframe, 4
vframe:
	.word	1
	.type	OAM, %object
	.size	OAM, 4
OAM:
	.word	117440512
	.type	rotData, %object
	.size	rotData, 4
rotData:
	.word	sprites
	.type	OBJPaletteMem, %object
	.size	OBJPaletteMem, 4
OBJPaletteMem:
	.word	83886592
	.type	OAMData, %object
	.size	OAMData, 4
OAMData:
	.word	100728832
	.type	VideoBuffer, %object
	.size	VideoBuffer, 4
VideoBuffer:
	.word	100663296
	.type	BGPaletteMem, %object
	.size	BGPaletteMem, 4
BGPaletteMem:
	.word	83886080
	.type	OAMmem, %object
	.size	OAMmem, 4
OAMmem:
	.word	117440512
	.type	BGTileMem, %object
	.size	BGTileMem, 4
BGTileMem:
	.word	100679680
	.type	zoom, %object
	.size	zoom, 4
zoom:
	.word	256
	.type	ScanlineCounter, %object
	.size	ScanlineCounter, 4
ScanlineCounter:
	.word	67108870
	.type	internalname, %object
	.size	internalname, 4
internalname:
	.word	134217888
	.type	Cartridge, %object
	.size	Cartridge, 4
Cartridge:
	.word	134217728
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	offsetOAM, %object
	.size	offsetOAM, 4
offsetOAM:
	.space	4
	.type	angle, %object
	.size	angle, 4
angle:
	.space	4
	.type	Memory, %object
	.size	Memory, 4
Memory:
	.space	4
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC40:
	.ascii	"%d\000"
.LC51:
	.ascii	"bg\000"
.LC54:
	.ascii	"obj\000"
.LC56:
	.ascii	"ERROR. INVALID PAL TYPE.\000"
.LC76:
	.ascii	"101001010010001100110010110010\000"
.LC87:
	.ascii	"HARDWARE FAILURE.CONTACT \000"
.LC89:
	.ascii	"NINTENDO CUSTOMER SUPPORT. \000"
.LC91:
	.ascii	"MDR_BUS_ERR\000"
.LC93:
	.ascii	"ILL_INSTR\000"
.LC95:
	.ascii	"0XDEADDEAD 0X64C0 0X00CC33\000"
.LC97:
	.ascii	"0XFFFFFFFF 0x001F 0X1F3AE0\000"
.LC99:
	.ascii	"0X5656 (0X0000 0X6666 0X3333)\000"
.LC116:
	.ascii	"ENEMY HP: %d\000"
.LC120:
	.ascii	"A WILD MISSINGNO.\000"
.LC122:
	.ascii	"APPEARED!\000"
.LC124:
	.ascii	"WHAT WILL SCRATCH DO?\000"
.LC126:
	.ascii	"FIGHT!        RUN...\000"
.LC128:
	.ascii	"HP:%d COINS:%d LVL:%d \000"
.LC131:
	.ascii	"TACKLE\000"
.LC133:
	.ascii	"SNAP ATTACK\000"
.LC135:
	.ascii	"MEOW\000"
.LC137:
	.ascii	"COMMUNITY CREATION\000"
.LC139:
	.ascii	"SCRATCH ATTACKS!\000"
.LC141:
	.ascii	"%d DAMAGE WAS DONE TO\000"
.LC143:
	.ascii	"THE FOE!\000"
.LC148:
	.ascii	"YOU WON!\000"
.LC150:
	.ascii	"YOU EARNED %d EXP AND\000"
.LC152:
	.ascii	"%d COINS.\000"
.LC155:
	.ascii	"THE FOE ATTACKS!\000"
.LC157:
	.ascii	"SCRATCH!\000"
.LC159:
	.ascii	"GAME OVER\000"
.LC161:
	.ascii	"GOT AWAY!\000"
	.section	.sbss,"aw",%nobits
	.align	1
	.type	FadeTable, %object
	.size	FadeTable, 6144
FadeTable:
	.space	6144
	.type	CurrentPalette, %object
	.size	CurrentPalette, 1024
CurrentPalette:
	.space	1024
	.text
.Letext0:
	.file 3 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 4 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_types.h"
	.file 5 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 6 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\lock.h"
	.file 7 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\7.1.0\\include\\stddef.h"
	.file 8 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_types.h"
	.file 9 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h"
	.file 10 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h"
	.file 11 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\math.h"
	.file 12 "defs.h"
	.file 13 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x5dd6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF429
	.byte	0xc
	.4byte	.LASF430
	.4byte	.LASF431
	.4byte	.Ldebug_ranges0+0x100
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	0x43
	.4byte	0x3c
	.uleb128 0x4
	.4byte	0x3c
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x49
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x6
	.4byte	0x49
	.uleb128 0x7
	.ascii	"buf\000"
	.byte	0x2
	.byte	0x1
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x3
	.4byte	buf
	.uleb128 0x8
	.byte	0x24
	.byte	0x2
	.byte	0x2
	.4byte	0xd9
	.uleb128 0x9
	.4byte	.LASF3
	.byte	0x2
	.byte	0x4
	.4byte	0xd9
	.byte	0
	.uleb128 0x9
	.4byte	.LASF4
	.byte	0x2
	.byte	0x5
	.4byte	0xd9
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF5
	.byte	0x2
	.byte	0x6
	.4byte	0xd9
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF6
	.byte	0x2
	.byte	0x7
	.4byte	0xd9
	.byte	0xc
	.uleb128 0xa
	.ascii	"i\000"
	.byte	0x2
	.byte	0x8
	.4byte	0xd9
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF7
	.byte	0x2
	.byte	0x9
	.4byte	0xd9
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF8
	.byte	0x2
	.byte	0xa
	.4byte	0xd9
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF9
	.byte	0x2
	.byte	0xb
	.4byte	0xd9
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF10
	.byte	0x2
	.byte	0xc
	.4byte	0xd9
	.byte	0x20
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0xc
	.ascii	"rom\000"
	.byte	0x2
	.byte	0xd
	.4byte	0x66
	.uleb128 0x8
	.byte	0x4c
	.byte	0x2
	.byte	0xf
	.4byte	0x1d4
	.uleb128 0x9
	.4byte	.LASF11
	.byte	0x2
	.byte	0x11
	.4byte	0xd9
	.byte	0
	.uleb128 0x9
	.4byte	.LASF12
	.byte	0x2
	.byte	0x12
	.4byte	0xd9
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x2
	.byte	0x13
	.4byte	0xd9
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x2
	.byte	0x14
	.4byte	0xd9
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x2
	.byte	0x15
	.4byte	0xd9
	.byte	0x10
	.uleb128 0xa
	.ascii	"exp\000"
	.byte	0x2
	.byte	0x16
	.4byte	0xd9
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x2
	.byte	0x17
	.4byte	0xd9
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x2
	.byte	0x18
	.4byte	0xd9
	.byte	0x1c
	.uleb128 0xa
	.ascii	"lvl\000"
	.byte	0x2
	.byte	0x19
	.4byte	0xd9
	.byte	0x20
	.uleb128 0xa
	.ascii	"x\000"
	.byte	0x2
	.byte	0x1a
	.4byte	0xd9
	.byte	0x24
	.uleb128 0xa
	.ascii	"y\000"
	.byte	0x2
	.byte	0x1b
	.4byte	0xd9
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x2
	.byte	0x1c
	.4byte	0xd9
	.byte	0x2c
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x2
	.byte	0x1d
	.4byte	0xd9
	.byte	0x30
	.uleb128 0xa
	.ascii	"dir\000"
	.byte	0x2
	.byte	0x1e
	.4byte	0xd9
	.byte	0x34
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x2
	.byte	0x1f
	.4byte	0xd9
	.byte	0x38
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x2
	.byte	0x20
	.4byte	0xd9
	.byte	0x3c
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x2
	.byte	0x21
	.4byte	0xd9
	.byte	0x40
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x2
	.byte	0x22
	.4byte	0xd9
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x2
	.byte	0x23
	.4byte	0xd9
	.byte	0x48
	.byte	0
	.uleb128 0xc
	.ascii	"plr\000"
	.byte	0x2
	.byte	0x24
	.4byte	0xeb
	.uleb128 0x8
	.byte	0x8
	.byte	0x2
	.byte	0x25
	.4byte	0x1fe
	.uleb128 0xa
	.ascii	"hp\000"
	.byte	0x2
	.byte	0x27
	.4byte	0xd9
	.byte	0
	.uleb128 0xa
	.ascii	"id\000"
	.byte	0x2
	.byte	0x28
	.4byte	0xd9
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.ascii	"ene\000"
	.byte	0x2
	.byte	0x29
	.4byte	0x1df
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x2
	.byte	0x2b
	.4byte	0xe0
	.uleb128 0x5
	.byte	0x3
	.4byte	game
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x2
	.byte	0x2c
	.4byte	0x1d4
	.uleb128 0x5
	.byte	0x3
	.4byte	player
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x2
	.byte	0x2d
	.4byte	0x1fe
	.uleb128 0x5
	.byte	0x3
	.4byte	enemy
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF28
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF29
	.uleb128 0x6
	.4byte	0x243
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF30
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF31
	.uleb128 0xe
	.4byte	0x256
	.uleb128 0x6
	.4byte	0x256
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x3
	.byte	0x4d
	.4byte	0x272
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF33
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x3
	.byte	0x4f
	.4byte	0x284
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF35
	.uleb128 0xe
	.4byte	0x284
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x3
	.byte	0x67
	.4byte	0x29b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF37
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF38
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF39
	.uleb128 0x10
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x4
	.byte	0x7
	.4byte	0x290
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0x4
	.byte	0xa
	.4byte	0x290
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x5
	.byte	0x2c
	.4byte	0x267
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x5
	.byte	0x30
	.4byte	0x279
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x6
	.byte	0x7
	.4byte	0x2c8
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0xc
	.byte	0x6
	.byte	0x9
	.4byte	0x31a
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x6
	.byte	0xa
	.4byte	0x2de
	.byte	0
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x6
	.byte	0xb
	.4byte	0x2d3
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x6
	.byte	0xc
	.4byte	0x2d3
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x6
	.byte	0xf
	.4byte	0x2e9
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x7
	.2byte	0x165
	.4byte	0x3c
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.byte	0xa6
	.4byte	0x350
	.uleb128 0x14
	.4byte	.LASF50
	.byte	0x8
	.byte	0xa8
	.4byte	0x325
	.uleb128 0x14
	.4byte	.LASF51
	.byte	0x8
	.byte	0xa9
	.4byte	0x350
	.byte	0
	.uleb128 0x3
	.4byte	0x243
	.4byte	0x360
	.uleb128 0x4
	.4byte	0x3c
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.byte	0x8
	.byte	0xa3
	.4byte	0x381
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x8
	.byte	0xa5
	.4byte	0xd9
	.byte	0
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x8
	.byte	0xaa
	.4byte	0x331
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x8
	.byte	0xab
	.4byte	0x360
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0x8
	.byte	0xaf
	.4byte	0x31a
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x9
	.byte	0x16
	.4byte	0x284
	.uleb128 0x11
	.4byte	.LASF58
	.byte	0x18
	.byte	0x9
	.byte	0x2f
	.4byte	0x3f5
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x9
	.byte	0x31
	.4byte	0x3f5
	.byte	0
	.uleb128 0xa
	.ascii	"_k\000"
	.byte	0x9
	.byte	0x32
	.4byte	0xd9
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x9
	.byte	0x32
	.4byte	0xd9
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x9
	.byte	0x32
	.4byte	0xd9
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x9
	.byte	0x32
	.4byte	0xd9
	.byte	0x10
	.uleb128 0xa
	.ascii	"_x\000"
	.byte	0x9
	.byte	0x33
	.4byte	0x3fb
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3a2
	.uleb128 0x3
	.4byte	0x397
	.4byte	0x40b
	.uleb128 0x4
	.4byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0x24
	.byte	0x9
	.byte	0x37
	.4byte	0x484
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x9
	.byte	0x39
	.4byte	0xd9
	.byte	0
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x9
	.byte	0x3a
	.4byte	0xd9
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x9
	.byte	0x3b
	.4byte	0xd9
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x9
	.byte	0x3c
	.4byte	0xd9
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x9
	.byte	0x3d
	.4byte	0xd9
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x9
	.byte	0x3e
	.4byte	0xd9
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x9
	.byte	0x3f
	.4byte	0xd9
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x9
	.byte	0x40
	.4byte	0xd9
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x9
	.byte	0x41
	.4byte	0xd9
	.byte	0x20
	.byte	0
	.uleb128 0x15
	.4byte	.LASF73
	.2byte	0x108
	.byte	0x9
	.byte	0x4a
	.4byte	0x4c4
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x9
	.byte	0x4b
	.4byte	0x4c4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x9
	.byte	0x4c
	.4byte	0x4c4
	.byte	0x80
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0x9
	.byte	0x4e
	.4byte	0x397
	.2byte	0x100
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0x9
	.byte	0x51
	.4byte	0x397
	.2byte	0x104
	.byte	0
	.uleb128 0x3
	.4byte	0x2b0
	.4byte	0x4d4
	.uleb128 0x4
	.4byte	0x3c
	.byte	0x1f
	.byte	0
	.uleb128 0x15
	.4byte	.LASF78
	.2byte	0x190
	.byte	0x9
	.byte	0x5d
	.4byte	0x512
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x9
	.byte	0x5e
	.4byte	0x512
	.byte	0
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x9
	.byte	0x5f
	.4byte	0xd9
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x9
	.byte	0x61
	.4byte	0x518
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x9
	.byte	0x62
	.4byte	0x484
	.byte	0x88
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4d4
	.uleb128 0x3
	.4byte	0x528
	.4byte	0x528
	.uleb128 0x4
	.4byte	0x3c
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x52e
	.uleb128 0x17
	.uleb128 0x11
	.4byte	.LASF81
	.byte	0x8
	.byte	0x9
	.byte	0x75
	.4byte	0x554
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x9
	.byte	0x76
	.4byte	0x554
	.byte	0
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x9
	.byte	0x77
	.4byte	0xd9
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x243
	.uleb128 0x11
	.4byte	.LASF84
	.byte	0x78
	.byte	0x9
	.byte	0xb5
	.4byte	0x684
	.uleb128 0xa
	.ascii	"_p\000"
	.byte	0x9
	.byte	0xb6
	.4byte	0x554
	.byte	0
	.uleb128 0xa
	.ascii	"_r\000"
	.byte	0x9
	.byte	0xb7
	.4byte	0xd9
	.byte	0x4
	.uleb128 0xa
	.ascii	"_w\000"
	.byte	0x9
	.byte	0xb8
	.4byte	0xd9
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x9
	.byte	0xb9
	.4byte	0x24f
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x9
	.byte	0xba
	.4byte	0x24f
	.byte	0xe
	.uleb128 0xa
	.ascii	"_bf\000"
	.byte	0x9
	.byte	0xbb
	.4byte	0x52f
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x9
	.byte	0xbc
	.4byte	0xd9
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x9
	.byte	0xc3
	.4byte	0x2b0
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x9
	.byte	0xc5
	.4byte	0x7ed
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x9
	.byte	0xc7
	.4byte	0x817
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x9
	.byte	0xca
	.4byte	0x83b
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x9
	.byte	0xcb
	.4byte	0x855
	.byte	0x2c
	.uleb128 0xa
	.ascii	"_ub\000"
	.byte	0x9
	.byte	0xce
	.4byte	0x52f
	.byte	0x30
	.uleb128 0xa
	.ascii	"_up\000"
	.byte	0x9
	.byte	0xcf
	.4byte	0x554
	.byte	0x38
	.uleb128 0xa
	.ascii	"_ur\000"
	.byte	0x9
	.byte	0xd0
	.4byte	0xd9
	.byte	0x3c
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x9
	.byte	0xd3
	.4byte	0x85b
	.byte	0x40
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x9
	.byte	0xd4
	.4byte	0x86b
	.byte	0x43
	.uleb128 0xa
	.ascii	"_lb\000"
	.byte	0x9
	.byte	0xd7
	.4byte	0x52f
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0x9
	.byte	0xda
	.4byte	0xd9
	.byte	0x4c
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0x9
	.byte	0xdb
	.4byte	0x2b2
	.byte	0x50
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0x9
	.byte	0xde
	.4byte	0x6a2
	.byte	0x58
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x9
	.byte	0xe2
	.4byte	0x38c
	.byte	0x5c
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0x9
	.byte	0xe4
	.4byte	0x381
	.byte	0x68
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0x9
	.byte	0xe5
	.4byte	0xd9
	.byte	0x70
	.byte	0
	.uleb128 0x18
	.4byte	0xd9
	.4byte	0x6a2
	.uleb128 0x19
	.4byte	0x6a2
	.uleb128 0x19
	.4byte	0x2b0
	.uleb128 0x19
	.4byte	0x43
	.uleb128 0x19
	.4byte	0xd9
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6ad
	.uleb128 0x6
	.4byte	0x6a2
	.uleb128 0x1a
	.4byte	.LASF101
	.2byte	0x460
	.byte	0x9
	.2byte	0x23b
	.4byte	0x7ed
	.uleb128 0x1b
	.4byte	.LASF102
	.byte	0x9
	.2byte	0x23d
	.4byte	0xd9
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF103
	.byte	0x9
	.2byte	0x242
	.4byte	0x8c2
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF104
	.byte	0x9
	.2byte	0x242
	.4byte	0x8c2
	.byte	0x8
	.uleb128 0x1b
	.4byte	.LASF105
	.byte	0x9
	.2byte	0x242
	.4byte	0x8c2
	.byte	0xc
	.uleb128 0x1b
	.4byte	.LASF106
	.byte	0x9
	.2byte	0x244
	.4byte	0xd9
	.byte	0x10
	.uleb128 0x1b
	.4byte	.LASF107
	.byte	0x9
	.2byte	0x245
	.4byte	0xaa4
	.byte	0x14
	.uleb128 0x1b
	.4byte	.LASF108
	.byte	0x9
	.2byte	0x248
	.4byte	0xd9
	.byte	0x30
	.uleb128 0x1b
	.4byte	.LASF109
	.byte	0x9
	.2byte	0x249
	.4byte	0xab9
	.byte	0x34
	.uleb128 0x1b
	.4byte	.LASF110
	.byte	0x9
	.2byte	0x24b
	.4byte	0xd9
	.byte	0x38
	.uleb128 0x1b
	.4byte	.LASF111
	.byte	0x9
	.2byte	0x24d
	.4byte	0xaca
	.byte	0x3c
	.uleb128 0x1b
	.4byte	.LASF112
	.byte	0x9
	.2byte	0x250
	.4byte	0x3f5
	.byte	0x40
	.uleb128 0x1b
	.4byte	.LASF113
	.byte	0x9
	.2byte	0x251
	.4byte	0xd9
	.byte	0x44
	.uleb128 0x1b
	.4byte	.LASF114
	.byte	0x9
	.2byte	0x252
	.4byte	0x3f5
	.byte	0x48
	.uleb128 0x1b
	.4byte	.LASF115
	.byte	0x9
	.2byte	0x253
	.4byte	0xad0
	.byte	0x4c
	.uleb128 0x1b
	.4byte	.LASF116
	.byte	0x9
	.2byte	0x256
	.4byte	0xd9
	.byte	0x50
	.uleb128 0x1b
	.4byte	.LASF117
	.byte	0x9
	.2byte	0x257
	.4byte	0x43
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LASF118
	.byte	0x9
	.2byte	0x27a
	.4byte	0xa82
	.byte	0x58
	.uleb128 0x1c
	.4byte	.LASF78
	.byte	0x9
	.2byte	0x27e
	.4byte	0x512
	.2byte	0x148
	.uleb128 0x1c
	.4byte	.LASF119
	.byte	0x9
	.2byte	0x27f
	.4byte	0x4d4
	.2byte	0x14c
	.uleb128 0x1c
	.4byte	.LASF120
	.byte	0x9
	.2byte	0x283
	.4byte	0xae1
	.2byte	0x2dc
	.uleb128 0x1c
	.4byte	.LASF121
	.byte	0x9
	.2byte	0x288
	.4byte	0x887
	.2byte	0x2e0
	.uleb128 0x1c
	.4byte	.LASF122
	.byte	0x9
	.2byte	0x289
	.4byte	0xaed
	.2byte	0x2f0
	.uleb128 0x1c
	.4byte	.LASF123
	.byte	0x9
	.2byte	0x28a
	.4byte	0x2b0
	.2byte	0x458
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x684
	.uleb128 0x18
	.4byte	0xd9
	.4byte	0x811
	.uleb128 0x19
	.4byte	0x6a2
	.uleb128 0x19
	.4byte	0x2b0
	.uleb128 0x19
	.4byte	0x811
	.uleb128 0x19
	.4byte	0xd9
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x50
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7f3
	.uleb128 0x18
	.4byte	0x2bd
	.4byte	0x83b
	.uleb128 0x19
	.4byte	0x6a2
	.uleb128 0x19
	.4byte	0x2b0
	.uleb128 0x19
	.4byte	0x2bd
	.uleb128 0x19
	.4byte	0xd9
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x81d
	.uleb128 0x18
	.4byte	0xd9
	.4byte	0x855
	.uleb128 0x19
	.4byte	0x6a2
	.uleb128 0x19
	.4byte	0x2b0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x841
	.uleb128 0x3
	.4byte	0x243
	.4byte	0x86b
	.uleb128 0x4
	.4byte	0x3c
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	0x243
	.4byte	0x87b
	.uleb128 0x4
	.4byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF124
	.byte	0x9
	.2byte	0x11f
	.4byte	0x55a
	.uleb128 0x1d
	.4byte	.LASF125
	.byte	0xc
	.byte	0x9
	.2byte	0x123
	.4byte	0x8bc
	.uleb128 0x1b
	.4byte	.LASF59
	.byte	0x9
	.2byte	0x125
	.4byte	0x8bc
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF126
	.byte	0x9
	.2byte	0x126
	.4byte	0xd9
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF127
	.byte	0x9
	.2byte	0x127
	.4byte	0x8c2
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x887
	.uleb128 0x5
	.byte	0x4
	.4byte	0x87b
	.uleb128 0x1d
	.4byte	.LASF128
	.byte	0xe
	.byte	0x9
	.2byte	0x13f
	.4byte	0x8fd
	.uleb128 0x1b
	.4byte	.LASF129
	.byte	0x9
	.2byte	0x140
	.4byte	0x8fd
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF130
	.byte	0x9
	.2byte	0x141
	.4byte	0x8fd
	.byte	0x6
	.uleb128 0x1b
	.4byte	.LASF131
	.byte	0x9
	.2byte	0x142
	.4byte	0x256
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	0x256
	.4byte	0x90d
	.uleb128 0x4
	.4byte	0x3c
	.byte	0x2
	.byte	0
	.uleb128 0x1e
	.byte	0xd0
	.byte	0x9
	.2byte	0x25b
	.4byte	0xa0e
	.uleb128 0x1b
	.4byte	.LASF132
	.byte	0x9
	.2byte	0x25d
	.4byte	0x3c
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF133
	.byte	0x9
	.2byte	0x25e
	.4byte	0x43
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF134
	.byte	0x9
	.2byte	0x25f
	.4byte	0xa0e
	.byte	0x8
	.uleb128 0x1b
	.4byte	.LASF135
	.byte	0x9
	.2byte	0x260
	.4byte	0x40b
	.byte	0x24
	.uleb128 0x1b
	.4byte	.LASF136
	.byte	0x9
	.2byte	0x261
	.4byte	0xd9
	.byte	0x48
	.uleb128 0x1b
	.4byte	.LASF137
	.byte	0x9
	.2byte	0x262
	.4byte	0x2a2
	.byte	0x50
	.uleb128 0x1b
	.4byte	.LASF138
	.byte	0x9
	.2byte	0x263
	.4byte	0x8c8
	.byte	0x58
	.uleb128 0x1b
	.4byte	.LASF139
	.byte	0x9
	.2byte	0x264
	.4byte	0x381
	.byte	0x68
	.uleb128 0x1b
	.4byte	.LASF140
	.byte	0x9
	.2byte	0x265
	.4byte	0x381
	.byte	0x70
	.uleb128 0x1b
	.4byte	.LASF141
	.byte	0x9
	.2byte	0x266
	.4byte	0x381
	.byte	0x78
	.uleb128 0x1b
	.4byte	.LASF142
	.byte	0x9
	.2byte	0x267
	.4byte	0xa1e
	.byte	0x80
	.uleb128 0x1b
	.4byte	.LASF143
	.byte	0x9
	.2byte	0x268
	.4byte	0xa2e
	.byte	0x88
	.uleb128 0x1b
	.4byte	.LASF144
	.byte	0x9
	.2byte	0x269
	.4byte	0xd9
	.byte	0xa0
	.uleb128 0x1b
	.4byte	.LASF145
	.byte	0x9
	.2byte	0x26a
	.4byte	0x381
	.byte	0xa4
	.uleb128 0x1b
	.4byte	.LASF146
	.byte	0x9
	.2byte	0x26b
	.4byte	0x381
	.byte	0xac
	.uleb128 0x1b
	.4byte	.LASF147
	.byte	0x9
	.2byte	0x26c
	.4byte	0x381
	.byte	0xb4
	.uleb128 0x1b
	.4byte	.LASF148
	.byte	0x9
	.2byte	0x26d
	.4byte	0x381
	.byte	0xbc
	.uleb128 0x1b
	.4byte	.LASF149
	.byte	0x9
	.2byte	0x26e
	.4byte	0x381
	.byte	0xc4
	.uleb128 0x1b
	.4byte	.LASF150
	.byte	0x9
	.2byte	0x26f
	.4byte	0xd9
	.byte	0xcc
	.byte	0
	.uleb128 0x3
	.4byte	0x49
	.4byte	0xa1e
	.uleb128 0x4
	.4byte	0x3c
	.byte	0x19
	.byte	0
	.uleb128 0x3
	.4byte	0x49
	.4byte	0xa2e
	.uleb128 0x4
	.4byte	0x3c
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	0x49
	.4byte	0xa3e
	.uleb128 0x4
	.4byte	0x3c
	.byte	0x17
	.byte	0
	.uleb128 0x1e
	.byte	0xf0
	.byte	0x9
	.2byte	0x274
	.4byte	0xa62
	.uleb128 0x1b
	.4byte	.LASF151
	.byte	0x9
	.2byte	0x277
	.4byte	0xa62
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF152
	.byte	0x9
	.2byte	0x278
	.4byte	0xa72
	.byte	0x78
	.byte	0
	.uleb128 0x3
	.4byte	0x554
	.4byte	0xa72
	.uleb128 0x4
	.4byte	0x3c
	.byte	0x1d
	.byte	0
	.uleb128 0x3
	.4byte	0x3c
	.4byte	0xa82
	.uleb128 0x4
	.4byte	0x3c
	.byte	0x1d
	.byte	0
	.uleb128 0x1f
	.byte	0xf0
	.byte	0x9
	.2byte	0x259
	.4byte	0xaa4
	.uleb128 0x20
	.4byte	.LASF101
	.byte	0x9
	.2byte	0x270
	.4byte	0x90d
	.uleb128 0x20
	.4byte	.LASF153
	.byte	0x9
	.2byte	0x279
	.4byte	0xa3e
	.byte	0
	.uleb128 0x3
	.4byte	0x49
	.4byte	0xab4
	.uleb128 0x4
	.4byte	0x3c
	.byte	0x18
	.byte	0
	.uleb128 0x21
	.4byte	.LASF432
	.uleb128 0x5
	.byte	0x4
	.4byte	0xab4
	.uleb128 0x22
	.4byte	0xaca
	.uleb128 0x19
	.4byte	0x6a2
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xabf
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3f5
	.uleb128 0x22
	.4byte	0xae1
	.uleb128 0x19
	.4byte	0xd9
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xae7
	.uleb128 0x5
	.byte	0x4
	.4byte	0xad6
	.uleb128 0x3
	.4byte	0x87b
	.4byte	0xafd
	.uleb128 0x4
	.4byte	0x3c
	.byte	0x2
	.byte	0
	.uleb128 0x23
	.4byte	.LASF154
	.byte	0x9
	.2byte	0x301
	.4byte	0x6a2
	.uleb128 0x23
	.4byte	.LASF155
	.byte	0x9
	.2byte	0x302
	.4byte	0x6a8
	.uleb128 0x24
	.4byte	.LASF156
	.byte	0xa
	.byte	0x63
	.4byte	0x43
	.uleb128 0xc
	.ascii	"u8\000"
	.byte	0x1
	.byte	0xd
	.4byte	0x243
	.uleb128 0xc
	.ascii	"u16\000"
	.byte	0x1
	.byte	0xe
	.4byte	0x256
	.uleb128 0xe
	.4byte	0xb2a
	.uleb128 0xc
	.ascii	"u32\000"
	.byte	0x1
	.byte	0xf
	.4byte	0x284
	.uleb128 0xf
	.4byte	.LASF157
	.byte	0x1
	.byte	0x12
	.4byte	0x25d
	.uleb128 0xf
	.4byte	.LASF158
	.byte	0x1
	.byte	0x13
	.4byte	0x28b
	.uleb128 0xc
	.ascii	"s8\000"
	.byte	0x1
	.byte	0x29
	.4byte	0x23c
	.uleb128 0xc
	.ascii	"s16\000"
	.byte	0x1
	.byte	0x2a
	.4byte	0x24f
	.uleb128 0xc
	.ascii	"s32\000"
	.byte	0x1
	.byte	0x2b
	.4byte	0x272
	.uleb128 0xf
	.4byte	.LASF159
	.byte	0x1
	.byte	0x33
	.4byte	0xb86
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF160
	.uleb128 0x6
	.4byte	0xb86
	.uleb128 0xd
	.4byte	.LASF161
	.byte	0x1
	.byte	0x3a
	.4byte	0xba3
	.uleb128 0x5
	.byte	0x3
	.4byte	OAMmem
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb3a
	.uleb128 0xd
	.4byte	.LASF162
	.byte	0x1
	.byte	0x3b
	.4byte	0xbba
	.uleb128 0x5
	.byte	0x3
	.4byte	VideoBuffer
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb2a
	.uleb128 0xd
	.4byte	.LASF163
	.byte	0x1
	.byte	0x3c
	.4byte	0xbba
	.uleb128 0x5
	.byte	0x3
	.4byte	OAMData
	.uleb128 0xd
	.4byte	.LASF164
	.byte	0x1
	.byte	0x3d
	.4byte	0xbba
	.uleb128 0x5
	.byte	0x3
	.4byte	BGPaletteMem
	.uleb128 0xd
	.4byte	.LASF165
	.byte	0x1
	.byte	0x3e
	.4byte	0xbba
	.uleb128 0x5
	.byte	0x3
	.4byte	OBJPaletteMem
	.uleb128 0xd
	.4byte	.LASF166
	.byte	0x1
	.byte	0x3f
	.4byte	0xbba
	.uleb128 0x5
	.byte	0x3
	.4byte	BGTileMem
	.uleb128 0xd
	.4byte	.LASF167
	.byte	0x1
	.byte	0x40
	.4byte	0xc15
	.uleb128 0x5
	.byte	0x3
	.4byte	Cartridge
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb20
	.uleb128 0xd
	.4byte	.LASF168
	.byte	0x1
	.byte	0x41
	.4byte	0xc15
	.uleb128 0x5
	.byte	0x3
	.4byte	internalname
	.uleb128 0xd
	.4byte	.LASF169
	.byte	0x1
	.byte	0x42
	.4byte	0xc3d
	.uleb128 0x5
	.byte	0x3
	.4byte	v_buffer
	.uleb128 0x5
	.byte	0x4
	.4byte	0x256
	.uleb128 0xd
	.4byte	.LASF170
	.byte	0x1
	.byte	0x43
	.4byte	0xd9
	.uleb128 0x5
	.byte	0x3
	.4byte	vframe
	.uleb128 0xd
	.4byte	.LASF171
	.byte	0x1
	.byte	0x44
	.4byte	0xd9
	.uleb128 0x5
	.byte	0x3
	.4byte	offsetOAM
	.uleb128 0x7
	.ascii	"OAM\000"
	.byte	0x1
	.byte	0x46
	.4byte	0xbba
	.uleb128 0x5
	.byte	0x3
	.4byte	OAM
	.uleb128 0xd
	.4byte	.LASF172
	.byte	0x1
	.byte	0x47
	.4byte	0xd9
	.uleb128 0x5
	.byte	0x3
	.4byte	loop
	.uleb128 0xd
	.4byte	.LASF173
	.byte	0x1
	.byte	0x49
	.4byte	0xbba
	.uleb128 0x5
	.byte	0x3
	.4byte	FrontBuffer
	.uleb128 0xd
	.4byte	.LASF174
	.byte	0x1
	.byte	0x4a
	.4byte	0xbba
	.uleb128 0x5
	.byte	0x3
	.4byte	BackBuffer
	.uleb128 0xd
	.4byte	.LASF175
	.byte	0x1
	.byte	0x4b
	.4byte	0xbba
	.uleb128 0x5
	.byte	0x3
	.4byte	videoBuffer
	.uleb128 0xd
	.4byte	.LASF176
	.byte	0x1
	.byte	0x4c
	.4byte	0xbba
	.uleb128 0x5
	.byte	0x3
	.4byte	paletteMem
	.uleb128 0xd
	.4byte	.LASF177
	.byte	0x1
	.byte	0x4d
	.4byte	0xcdc
	.uleb128 0x5
	.byte	0x3
	.4byte	ScanlineCounter
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb35
	.uleb128 0xd
	.4byte	.LASF178
	.byte	0x1
	.byte	0x4e
	.4byte	0xba3
	.uleb128 0x5
	.byte	0x3
	.4byte	Memory
	.uleb128 0x1d
	.4byte	.LASF179
	.byte	0x8
	.byte	0x1
	.2byte	0x359
	.4byte	0xd35
	.uleb128 0x1b
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x35c
	.4byte	0xb2a
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x35d
	.4byte	0xb2a
	.byte	0x2
	.uleb128 0x1b
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x35e
	.4byte	0xb2a
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x35f
	.4byte	0xb2a
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x361
	.4byte	0xcf3
	.uleb128 0x1d
	.4byte	.LASF185
	.byte	0x20
	.byte	0x1
	.2byte	0x363
	.4byte	0xdb3
	.uleb128 0x1b
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x366
	.4byte	0xdb3
	.byte	0
	.uleb128 0x25
	.ascii	"pa\000"
	.byte	0x1
	.2byte	0x367
	.4byte	0xb2a
	.byte	0x6
	.uleb128 0x1b
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x368
	.4byte	0xdb3
	.byte	0x8
	.uleb128 0x25
	.ascii	"pb\000"
	.byte	0x1
	.2byte	0x369
	.4byte	0xb2a
	.byte	0xe
	.uleb128 0x1b
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x36a
	.4byte	0xdb3
	.byte	0x10
	.uleb128 0x25
	.ascii	"pc\000"
	.byte	0x1
	.2byte	0x36b
	.4byte	0xb2a
	.byte	0x16
	.uleb128 0x1b
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x36c
	.4byte	0xdb3
	.byte	0x18
	.uleb128 0x25
	.ascii	"pd\000"
	.byte	0x1
	.2byte	0x36d
	.4byte	0xb2a
	.byte	0x1e
	.byte	0
	.uleb128 0x3
	.4byte	0xb2a
	.4byte	0xdc3
	.uleb128 0x4
	.4byte	0x3c
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x36f
	.4byte	0xdcf
	.uleb128 0x5
	.byte	0x4
	.4byte	0xd41
	.uleb128 0x3
	.4byte	0xd35
	.4byte	0xde5
	.uleb128 0x4
	.4byte	0x3c
	.byte	0x7f
	.byte	0
	.uleb128 0x26
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x37d
	.4byte	0xdd5
	.uleb128 0x5
	.byte	0x3
	.4byte	sprites
	.uleb128 0x26
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x380
	.4byte	0xdc3
	.uleb128 0x5
	.byte	0x3
	.4byte	rotData
	.uleb128 0x26
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x382
	.4byte	0xb70
	.uleb128 0x5
	.byte	0x3
	.4byte	angle
	.uleb128 0x26
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x383
	.4byte	0xb70
	.uleb128 0x5
	.byte	0x3
	.4byte	zoom
	.uleb128 0x3
	.4byte	0x24a
	.4byte	0xe3e
	.uleb128 0x27
	.4byte	0x3c
	.2byte	0xf7f
	.byte	0
	.uleb128 0x6
	.4byte	0xe2d
	.uleb128 0x26
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x385
	.4byte	0xe3e
	.uleb128 0x5
	.byte	0x3
	.4byte	font_matrix
	.uleb128 0x3
	.4byte	0xb8d
	.4byte	0xe66
	.uleb128 0x27
	.4byte	0x3c
	.2byte	0x167
	.byte	0
	.uleb128 0x6
	.4byte	0xe55
	.uleb128 0x28
	.ascii	"SIN\000"
	.byte	0x1
	.2byte	0x5b7
	.4byte	0xe66
	.uleb128 0x5
	.byte	0x3
	.4byte	SIN
	.uleb128 0x28
	.ascii	"COS\000"
	.byte	0x1
	.2byte	0x5dc
	.4byte	0xe66
	.uleb128 0x5
	.byte	0x3
	.4byte	COS
	.uleb128 0x28
	.ascii	"RAD\000"
	.byte	0x1
	.2byte	0x601
	.4byte	0xe66
	.uleb128 0x5
	.byte	0x3
	.4byte	RAD
	.uleb128 0x3
	.4byte	0xb2a
	.4byte	0xeb2
	.uleb128 0x27
	.4byte	0x3c
	.2byte	0x1ff
	.byte	0
	.uleb128 0x26
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x86a
	.4byte	0xea1
	.uleb128 0x5
	.byte	0x3
	.4byte	CurrentPalette
	.uleb128 0x3
	.4byte	0xb65
	.4byte	0xed5
	.uleb128 0x27
	.4byte	0x3c
	.2byte	0xbff
	.byte	0
	.uleb128 0x26
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x870
	.4byte	0xec4
	.uleb128 0x5
	.byte	0x3
	.4byte	FadeTable
	.uleb128 0x1e
	.byte	0x10
	.byte	0x1
	.2byte	0x925
	.4byte	0xf25
	.uleb128 0x1b
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x927
	.4byte	0xf25
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x928
	.4byte	0xd9
	.byte	0x4
	.uleb128 0x25
	.ascii	"tic\000"
	.byte	0x1
	.2byte	0x929
	.4byte	0xd9
	.byte	0x8
	.uleb128 0x25
	.ascii	"end\000"
	.byte	0x1
	.2byte	0x92a
	.4byte	0xd9
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x24a
	.uleb128 0x12
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x92b
	.4byte	0xee7
	.uleb128 0x3
	.4byte	0xf2b
	.4byte	0xf47
	.uleb128 0x4
	.4byte	0x3c
	.byte	0x18
	.byte	0
	.uleb128 0x26
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x92b
	.4byte	0xf37
	.uleb128 0x5
	.byte	0x3
	.4byte	sound
	.uleb128 0x29
	.ascii	"BG\000"
	.byte	0xc
	.byte	0x1
	.2byte	0xa38
	.4byte	0xf87
	.uleb128 0x25
	.ascii	"x\000"
	.byte	0x1
	.2byte	0xa3a
	.4byte	0xd9
	.byte	0
	.uleb128 0x25
	.ascii	"y\000"
	.byte	0x1
	.2byte	0xa3a
	.4byte	0xd9
	.byte	0x4
	.uleb128 0x25
	.ascii	"n\000"
	.byte	0x1
	.2byte	0xa3a
	.4byte	0xd9
	.byte	0x8
	.byte	0
	.uleb128 0x2a
	.ascii	"BG\000"
	.byte	0x1
	.2byte	0xa3b
	.4byte	0xf59
	.uleb128 0x3
	.4byte	0xb3a
	.4byte	0xfa3
	.uleb128 0x27
	.4byte	0x3c
	.2byte	0x270
	.byte	0
	.uleb128 0x26
	.4byte	.LASF202
	.byte	0x1
	.2byte	0xa58
	.4byte	0xf92
	.uleb128 0x5
	.byte	0x3
	.4byte	state
	.uleb128 0x26
	.4byte	.LASF203
	.byte	0x1
	.2byte	0xa59
	.4byte	0xba3
	.uleb128 0x5
	.byte	0x3
	.4byte	next
	.uleb128 0x28
	.ascii	"lft\000"
	.byte	0x1
	.2byte	0xa5a
	.4byte	0xb70
	.uleb128 0x5
	.byte	0x3
	.4byte	lft
	.uleb128 0x26
	.4byte	.LASF204
	.byte	0x1
	.2byte	0xa5c
	.4byte	0xd9
	.uleb128 0x5
	.byte	0x3
	.4byte	do_regen
	.uleb128 0x2b
	.4byte	.LASF433
	.byte	0x5
	.byte	0x1
	.4byte	0x23c
	.byte	0xb
	.2byte	0x299
	.4byte	0x1016
	.uleb128 0x2c
	.4byte	.LASF205
	.sleb128 -1
	.uleb128 0x2d
	.4byte	.LASF206
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF207
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF208
	.byte	0x2
	.byte	0
	.uleb128 0x23
	.4byte	.LASF209
	.byte	0xb
	.2byte	0x2a4
	.4byte	0xfeb
	.uleb128 0x3
	.4byte	0x262
	.4byte	0x1033
	.uleb128 0x27
	.4byte	0x3c
	.2byte	0x4aff
	.byte	0
	.uleb128 0x6
	.4byte	0x1022
	.uleb128 0xd
	.4byte	.LASF210
	.byte	0xc
	.byte	0x1
	.4byte	0x1033
	.uleb128 0x5
	.byte	0x3
	.4byte	stry1Bitmap
	.uleb128 0x3
	.4byte	0x262
	.4byte	0x1059
	.uleb128 0x4
	.4byte	0x3c
	.byte	0xff
	.byte	0
	.uleb128 0x6
	.4byte	0x1049
	.uleb128 0xd
	.4byte	.LASF211
	.byte	0xc
	.byte	0x2
	.4byte	0x1059
	.uleb128 0x5
	.byte	0x3
	.4byte	stry1Palette
	.uleb128 0xd
	.4byte	.LASF212
	.byte	0xc
	.byte	0x3
	.4byte	0x1033
	.uleb128 0x5
	.byte	0x3
	.4byte	stry2Bitmap
	.uleb128 0xd
	.4byte	.LASF213
	.byte	0xc
	.byte	0x4
	.4byte	0x1059
	.uleb128 0x5
	.byte	0x3
	.4byte	stry2Palette
	.uleb128 0xd
	.4byte	.LASF214
	.byte	0xc
	.byte	0x5
	.4byte	0x1033
	.uleb128 0x5
	.byte	0x3
	.4byte	stry3Bitmap
	.uleb128 0xd
	.4byte	.LASF215
	.byte	0xc
	.byte	0x6
	.4byte	0x1059
	.uleb128 0x5
	.byte	0x3
	.4byte	stry3Palette
	.uleb128 0xd
	.4byte	.LASF216
	.byte	0xc
	.byte	0x7
	.4byte	0x1033
	.uleb128 0x5
	.byte	0x3
	.4byte	stry4Bitmap
	.uleb128 0xd
	.4byte	.LASF217
	.byte	0xc
	.byte	0x8
	.4byte	0x1059
	.uleb128 0x5
	.byte	0x3
	.4byte	stry4Palette
	.uleb128 0xd
	.4byte	.LASF218
	.byte	0xc
	.byte	0x9
	.4byte	0x1033
	.uleb128 0x5
	.byte	0x3
	.4byte	stry5Bitmap
	.uleb128 0x3
	.4byte	0x262
	.4byte	0x10f7
	.uleb128 0x27
	.4byte	0x3c
	.2byte	0x95ff
	.byte	0
	.uleb128 0x6
	.4byte	0x10e6
	.uleb128 0xd
	.4byte	.LASF219
	.byte	0xc
	.byte	0xa
	.4byte	0x10f7
	.uleb128 0x5
	.byte	0x3
	.4byte	r1Bitmap
	.uleb128 0xd
	.4byte	.LASF220
	.byte	0xc
	.byte	0xb
	.4byte	0x1059
	.uleb128 0x5
	.byte	0x3
	.4byte	stry5Palette
	.uleb128 0x3
	.4byte	0x262
	.4byte	0x112f
	.uleb128 0x27
	.4byte	0x3c
	.2byte	0x1bbf
	.byte	0
	.uleb128 0x6
	.4byte	0x111e
	.uleb128 0xd
	.4byte	.LASF221
	.byte	0xc
	.byte	0xc
	.4byte	0x112f
	.uleb128 0x5
	.byte	0x3
	.4byte	sprs
	.uleb128 0xd
	.4byte	.LASF222
	.byte	0xc
	.byte	0xd
	.4byte	0x1059
	.uleb128 0x5
	.byte	0x3
	.4byte	sprsPalette
	.uleb128 0xd
	.4byte	.LASF223
	.byte	0xc
	.byte	0xe
	.4byte	0x1033
	.uleb128 0x5
	.byte	0x3
	.4byte	ttlscrBitmap
	.uleb128 0xd
	.4byte	.LASF224
	.byte	0xc
	.byte	0xf
	.4byte	0x1059
	.uleb128 0x5
	.byte	0x3
	.4byte	ttlscrPalette
	.uleb128 0xd
	.4byte	.LASF225
	.byte	0xc
	.byte	0x10
	.4byte	0x10f7
	.uleb128 0x5
	.byte	0x3
	.4byte	btlBitmap
	.uleb128 0xd
	.4byte	.LASF226
	.byte	0x2
	.byte	0x32
	.4byte	0xc15
	.uleb128 0x5
	.byte	0x3
	.4byte	buf2
	.uleb128 0x2e
	.4byte	.LASF228
	.byte	0x2
	.2byte	0x15e
	.4byte	0xd9
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c90
	.uleb128 0x2f
	.ascii	"s\000"
	.byte	0x2
	.2byte	0x161
	.4byte	0xd9
	.uleb128 0x30
	.4byte	0x4fe8
	.4byte	.LBB152
	.4byte	.LBE152-.LBB152
	.byte	0x2
	.2byte	0x174
	.4byte	0x11f9
	.uleb128 0x31
	.4byte	0x500d
	.byte	0x58
	.uleb128 0x31
	.4byte	0x5001
	.byte	0
	.uleb128 0x31
	.4byte	0x4ff5
	.byte	0x2
	.uleb128 0x32
	.4byte	.LBB153
	.4byte	.LBE153-.LBB153
	.uleb128 0x33
	.4byte	0x5c03
	.uleb128 0x33
	.4byte	0x5c09
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0x4f35
	.4byte	.LBB154
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x2
	.2byte	0x1a7
	.4byte	0x1242
	.uleb128 0x35
	.4byte	0x4f66
	.4byte	.LLST331
	.uleb128 0x35
	.4byte	0x4f5a
	.4byte	.LLST331
	.uleb128 0x35
	.4byte	0x4f4e
	.4byte	.LLST331
	.uleb128 0x35
	.4byte	0x4f42
	.4byte	.LLST331
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0x40
	.uleb128 0x33
	.4byte	0x5c47
	.uleb128 0x33
	.4byte	0x5c50
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	0x4f35
	.4byte	.LBB160
	.4byte	.LBE160-.LBB160
	.byte	0x2
	.2byte	0x1f0
	.4byte	0x128f
	.uleb128 0x35
	.4byte	0x4f66
	.4byte	.LLST335
	.uleb128 0x35
	.4byte	0x4f5a
	.4byte	.LLST335
	.uleb128 0x35
	.4byte	0x4f4e
	.4byte	.LLST337
	.uleb128 0x35
	.4byte	0x4f42
	.4byte	.LLST335
	.uleb128 0x32
	.4byte	.LBB161
	.4byte	.LBE161-.LBB161
	.uleb128 0x33
	.4byte	0x5c47
	.uleb128 0x33
	.4byte	0x5c50
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0x4f35
	.4byte	.LBB162
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x2
	.2byte	0x234
	.4byte	0x12d8
	.uleb128 0x35
	.4byte	0x4f66
	.4byte	.LLST339
	.uleb128 0x35
	.4byte	0x4f5a
	.4byte	.LLST339
	.uleb128 0x35
	.4byte	0x4f4e
	.4byte	.LLST339
	.uleb128 0x35
	.4byte	0x4f42
	.4byte	.LLST339
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0x60
	.uleb128 0x33
	.4byte	0x5c47
	.uleb128 0x33
	.4byte	0x5c50
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	0x4f35
	.4byte	.LBB168
	.4byte	.LBE168-.LBB168
	.byte	0x2
	.2byte	0x1d0
	.4byte	0x1325
	.uleb128 0x35
	.4byte	0x4f66
	.4byte	.LLST343
	.uleb128 0x35
	.4byte	0x4f5a
	.4byte	.LLST343
	.uleb128 0x35
	.4byte	0x4f4e
	.4byte	.LLST345
	.uleb128 0x35
	.4byte	0x4f42
	.4byte	.LLST343
	.uleb128 0x32
	.4byte	.LBB169
	.4byte	.LBE169-.LBB169
	.uleb128 0x33
	.4byte	0x5c47
	.uleb128 0x33
	.4byte	0x5c50
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0x4f35
	.4byte	.LBB170
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x2
	.2byte	0x1d3
	.4byte	0x136e
	.uleb128 0x35
	.4byte	0x4f66
	.4byte	.LLST347
	.uleb128 0x35
	.4byte	0x4f5a
	.4byte	.LLST347
	.uleb128 0x35
	.4byte	0x4f4e
	.4byte	.LLST349
	.uleb128 0x35
	.4byte	0x4f42
	.4byte	.LLST347
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0x80
	.uleb128 0x33
	.4byte	0x5c47
	.uleb128 0x33
	.4byte	0x5c50
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	0x4f35
	.4byte	.LBB174
	.4byte	.LBE174-.LBB174
	.byte	0x2
	.2byte	0x218
	.4byte	0x13bb
	.uleb128 0x35
	.4byte	0x4f66
	.4byte	.LLST351
	.uleb128 0x35
	.4byte	0x4f5a
	.4byte	.LLST351
	.uleb128 0x35
	.4byte	0x4f4e
	.4byte	.LLST353
	.uleb128 0x35
	.4byte	0x4f42
	.4byte	.LLST351
	.uleb128 0x32
	.4byte	.LBB175
	.4byte	.LBE175-.LBB175
	.uleb128 0x33
	.4byte	0x5c47
	.uleb128 0x33
	.4byte	0x5c50
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0x4f35
	.4byte	.LBB176
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x2
	.2byte	0x21c
	.4byte	0x1404
	.uleb128 0x35
	.4byte	0x4f66
	.4byte	.LLST355
	.uleb128 0x35
	.4byte	0x4f5a
	.4byte	.LLST355
	.uleb128 0x35
	.4byte	0x4f4e
	.4byte	.LLST357
	.uleb128 0x35
	.4byte	0x4f42
	.4byte	.LLST355
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0x98
	.uleb128 0x33
	.4byte	0x5c47
	.uleb128 0x33
	.4byte	0x5c50
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0x4f35
	.4byte	.LBB180
	.4byte	.Ldebug_ranges0+0xb0
	.byte	0x2
	.2byte	0x27c
	.4byte	0x144d
	.uleb128 0x35
	.4byte	0x4f66
	.4byte	.LLST359
	.uleb128 0x35
	.4byte	0x4f5a
	.4byte	.LLST359
	.uleb128 0x35
	.4byte	0x4f4e
	.4byte	.LLST361
	.uleb128 0x35
	.4byte	0x4f42
	.4byte	.LLST359
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0xb0
	.uleb128 0x33
	.4byte	0x5c47
	.uleb128 0x33
	.4byte	0x5c50
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	0x4f35
	.4byte	.LBB186
	.4byte	.LBE186-.LBB186
	.byte	0x2
	.2byte	0x25b
	.4byte	0x149a
	.uleb128 0x35
	.4byte	0x4f66
	.4byte	.LLST363
	.uleb128 0x35
	.4byte	0x4f5a
	.4byte	.LLST363
	.uleb128 0x35
	.4byte	0x4f4e
	.4byte	.LLST365
	.uleb128 0x35
	.4byte	0x4f42
	.4byte	.LLST363
	.uleb128 0x32
	.4byte	.LBB187
	.4byte	.LBE187-.LBB187
	.uleb128 0x33
	.4byte	0x5c47
	.uleb128 0x33
	.4byte	0x5c50
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0x4f35
	.4byte	.LBB188
	.4byte	.Ldebug_ranges0+0xd0
	.byte	0x2
	.2byte	0x25e
	.4byte	0x14e3
	.uleb128 0x35
	.4byte	0x4f66
	.4byte	.LLST367
	.uleb128 0x35
	.4byte	0x4f5a
	.4byte	.LLST367
	.uleb128 0x35
	.4byte	0x4f4e
	.4byte	.LLST369
	.uleb128 0x35
	.4byte	0x4f42
	.4byte	.LLST367
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0xd0
	.uleb128 0x33
	.4byte	0x5c47
	.uleb128 0x33
	.4byte	0x5c50
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	0x4f35
	.4byte	.LBB192
	.4byte	.LBE192-.LBB192
	.byte	0x2
	.2byte	0x2a3
	.4byte	0x1530
	.uleb128 0x35
	.4byte	0x4f66
	.4byte	.LLST371
	.uleb128 0x35
	.4byte	0x4f5a
	.4byte	.LLST371
	.uleb128 0x35
	.4byte	0x4f4e
	.4byte	.LLST373
	.uleb128 0x35
	.4byte	0x4f42
	.4byte	.LLST371
	.uleb128 0x32
	.4byte	.LBB193
	.4byte	.LBE193-.LBB193
	.uleb128 0x33
	.4byte	0x5c47
	.uleb128 0x33
	.4byte	0x5c50
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0x4f35
	.4byte	.LBB194
	.4byte	.Ldebug_ranges0+0xe8
	.byte	0x2
	.2byte	0x2a7
	.4byte	0x1579
	.uleb128 0x35
	.4byte	0x4f66
	.4byte	.LLST375
	.uleb128 0x35
	.4byte	0x4f5a
	.4byte	.LLST375
	.uleb128 0x35
	.4byte	0x4f4e
	.4byte	.LLST377
	.uleb128 0x35
	.4byte	0x4f42
	.4byte	.LLST375
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0xe8
	.uleb128 0x33
	.4byte	0x5c47
	.uleb128 0x33
	.4byte	0x5c50
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL906
	.4byte	0x464d
	.4byte	0x158c
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x37
	.4byte	.LVL907
	.4byte	0x4e14
	.4byte	0x15a3
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	sprsPalette
	.byte	0
	.uleb128 0x37
	.4byte	.LVL908
	.4byte	0x4dc5
	.4byte	0x15c1
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	sprs
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1bc0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL909
	.4byte	0x5b69
	.uleb128 0x37
	.4byte	.LVL910
	.4byte	0x4213
	.4byte	0x15e7
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC51
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x37
	.4byte	.LVL911
	.4byte	0x5b7b
	.4byte	0x15fa
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x49
	.byte	0
	.uleb128 0x37
	.4byte	.LVL912
	.4byte	0x4eef
	.4byte	0x161a
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0xf0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0xa0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL913
	.4byte	0x4eef
	.4byte	0x163d
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	sprites+8
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0xf0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0xa0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL914
	.4byte	0x5055
	.uleb128 0x37
	.4byte	.LVL915
	.4byte	0x518d
	.4byte	0x1659
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x37
	.4byte	.LVL916
	.4byte	0x57ff
	.4byte	0x1670
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	ttlscrPalette
	.byte	0
	.uleb128 0x37
	.4byte	.LVL917
	.4byte	0x5d9a
	.4byte	0x168e
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	ttlscrBitmap
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x9600
	.byte	0
	.uleb128 0x37
	.4byte	.LVL918
	.4byte	0x513d
	.4byte	0x16a1
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x37
	.4byte	.LVL919
	.4byte	0x5b7b
	.4byte	0x16b4
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.uleb128 0x39
	.4byte	.LVL920
	.4byte	0x5da9
	.uleb128 0x39
	.4byte	.LVL921
	.4byte	0x5b69
	.uleb128 0x37
	.4byte	.LVL922
	.4byte	0x57ff
	.4byte	0x16dd
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	stry1Palette
	.byte	0
	.uleb128 0x37
	.4byte	.LVL923
	.4byte	0x5d9a
	.4byte	0x16fb
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	stry1Bitmap
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x9600
	.byte	0
	.uleb128 0x37
	.4byte	.LVL924
	.4byte	0x5b7b
	.4byte	0x1710
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x168
	.byte	0
	.uleb128 0x39
	.4byte	.LVL925
	.4byte	0x5b69
	.uleb128 0x37
	.4byte	.LVL926
	.4byte	0x57ff
	.4byte	0x1730
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	stry2Palette
	.byte	0
	.uleb128 0x37
	.4byte	.LVL927
	.4byte	0x5d9a
	.4byte	0x174e
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	stry2Bitmap
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x9600
	.byte	0
	.uleb128 0x37
	.4byte	.LVL928
	.4byte	0x5b7b
	.4byte	0x1763
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x168
	.byte	0
	.uleb128 0x39
	.4byte	.LVL929
	.4byte	0x5b69
	.uleb128 0x37
	.4byte	.LVL930
	.4byte	0x57ff
	.4byte	0x1783
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	stry3Palette
	.byte	0
	.uleb128 0x37
	.4byte	.LVL931
	.4byte	0x5d9a
	.4byte	0x17a1
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	stry3Bitmap
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x9600
	.byte	0
	.uleb128 0x37
	.4byte	.LVL932
	.4byte	0x5b7b
	.4byte	0x17b6
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x168
	.byte	0
	.uleb128 0x39
	.4byte	.LVL933
	.4byte	0x5b69
	.uleb128 0x37
	.4byte	.LVL934
	.4byte	0x57ff
	.4byte	0x17d6
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	stry4Palette
	.byte	0
	.uleb128 0x37
	.4byte	.LVL935
	.4byte	0x5d9a
	.4byte	0x17f4
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	stry4Bitmap
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x9600
	.byte	0
	.uleb128 0x37
	.4byte	.LVL936
	.4byte	0x5b7b
	.4byte	0x1809
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x168
	.byte	0
	.uleb128 0x39
	.4byte	.LVL937
	.4byte	0x5b69
	.uleb128 0x37
	.4byte	.LVL938
	.4byte	0x57ff
	.4byte	0x1829
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	stry5Palette
	.byte	0
	.uleb128 0x37
	.4byte	.LVL939
	.4byte	0x5d9a
	.4byte	0x1847
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	stry5Bitmap
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x9600
	.byte	0
	.uleb128 0x37
	.4byte	.LVL940
	.4byte	0x5b7b
	.4byte	0x185c
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x168
	.byte	0
	.uleb128 0x37
	.4byte	.LVL941
	.4byte	0x5d9a
	.4byte	0x187b
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	r1Bitmap
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x8
	.byte	0x96
	.byte	0x39
	.byte	0x24
	.byte	0
	.uleb128 0x37
	.4byte	.LVL942
	.4byte	0x4eef
	.4byte	0x1899
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.4byte	.LVL943
	.4byte	0x5b69
	.uleb128 0x39
	.4byte	.LVL944
	.4byte	0x5055
	.uleb128 0x37
	.4byte	.LVL945
	.4byte	0x5db4
	.4byte	0x18dd
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	buf
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC128
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x37
	.4byte	.LVL946
	.4byte	0x543a
	.4byte	0x190b
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	buf
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL947
	.uleb128 0x39
	.4byte	.LVL948
	.4byte	0x5dc3
	.uleb128 0x3a
	.4byte	.LVL949
	.uleb128 0x37
	.4byte	.LVL950
	.4byte	0x4712
	.4byte	0x1931
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.4byte	.LVL953
	.4byte	0x5dc3
	.uleb128 0x3a
	.4byte	.LVL954
	.uleb128 0x37
	.4byte	.LVL955
	.4byte	0x4712
	.4byte	0x1952
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x37
	.4byte	.LVL956
	.4byte	0x45ae
	.4byte	0x196d
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0
	.uleb128 0x37
	.4byte	.LVL957
	.4byte	0x3c4e
	.4byte	0x1981
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL958
	.4byte	0x42a0
	.4byte	0x1995
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL959
	.4byte	0x1cde
	.uleb128 0x39
	.4byte	.LVL962
	.4byte	0x5dc3
	.uleb128 0x3a
	.4byte	.LVL963
	.uleb128 0x37
	.4byte	.LVL964
	.4byte	0x4712
	.4byte	0x19bf
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.4byte	.LVL965
	.4byte	0x45ae
	.uleb128 0x37
	.4byte	.LVL966
	.4byte	0x3c4e
	.4byte	0x19dc
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL967
	.4byte	0x42a0
	.4byte	0x19f0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL968
	.4byte	0x1cde
	.uleb128 0x37
	.4byte	.LVL971
	.4byte	0x45ae
	.4byte	0x1a14
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0
	.uleb128 0x39
	.4byte	.LVL972
	.4byte	0x5dc3
	.uleb128 0x3a
	.4byte	.LVL973
	.uleb128 0x37
	.4byte	.LVL974
	.4byte	0x4712
	.4byte	0x1a36
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL975
	.4byte	0x45ae
	.4byte	0x1a53
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x39
	.4byte	.LVL976
	.4byte	0x5b69
	.uleb128 0x37
	.4byte	.LVL977
	.4byte	0x1c90
	.4byte	0x1a6f
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x37
	.4byte	.LVL978
	.4byte	0x45ae
	.4byte	0x1a8a
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0
	.uleb128 0x37
	.4byte	.LVL979
	.4byte	0x45ae
	.4byte	0x1aa7
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x37
	.4byte	.LVL982
	.4byte	0x4eef
	.4byte	0x1abe
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	sprites
	.byte	0
	.uleb128 0x39
	.4byte	.LVL983
	.4byte	0x5055
	.uleb128 0x39
	.4byte	.LVL986
	.4byte	0x5b69
	.uleb128 0x37
	.4byte	.LVL987
	.4byte	0x1c90
	.4byte	0x1ae3
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x39
	.4byte	.LVL988
	.4byte	0x45ae
	.uleb128 0x37
	.4byte	.LVL991
	.4byte	0x4eef
	.4byte	0x1b03
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	sprites
	.byte	0
	.uleb128 0x39
	.4byte	.LVL992
	.4byte	0x5055
	.uleb128 0x37
	.4byte	.LVL995
	.4byte	0x45ae
	.4byte	0x1b29
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x37
	.4byte	.LVL996
	.4byte	0x3c4e
	.4byte	0x1b3d
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL997
	.4byte	0x42a0
	.4byte	0x1b51
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL998
	.4byte	0x1cde
	.uleb128 0x39
	.4byte	.LVL1001
	.4byte	0x5dc3
	.uleb128 0x3a
	.4byte	.LVL1002
	.uleb128 0x37
	.4byte	.LVL1003
	.4byte	0x4712
	.4byte	0x1b7b
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.4byte	.LVL1004
	.4byte	0x45ae
	.uleb128 0x37
	.4byte	.LVL1005
	.4byte	0x3c4e
	.4byte	0x1b98
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL1006
	.4byte	0x42a0
	.4byte	0x1bac
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL1007
	.4byte	0x1cde
	.uleb128 0x39
	.4byte	.LVL1008
	.4byte	0x5b69
	.uleb128 0x37
	.4byte	.LVL1009
	.4byte	0x1c90
	.4byte	0x1bd1
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x39
	.4byte	.LVL1010
	.4byte	0x5dc3
	.uleb128 0x3a
	.4byte	.LVL1011
	.uleb128 0x37
	.4byte	.LVL1012
	.4byte	0x4712
	.4byte	0x1bf2
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x37
	.4byte	.LVL1013
	.4byte	0x45ae
	.4byte	0x1c0d
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0
	.uleb128 0x37
	.4byte	.LVL1014
	.4byte	0x45ae
	.4byte	0x1c2a
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x37
	.4byte	.LVL1017
	.4byte	0x4eef
	.4byte	0x1c41
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	sprites
	.byte	0
	.uleb128 0x39
	.4byte	.LVL1018
	.4byte	0x5055
	.uleb128 0x39
	.4byte	.LVL1021
	.4byte	0x5b69
	.uleb128 0x37
	.4byte	.LVL1022
	.4byte	0x1c90
	.4byte	0x1c66
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x39
	.4byte	.LVL1023
	.4byte	0x45ae
	.uleb128 0x37
	.4byte	.LVL1026
	.4byte	0x4eef
	.4byte	0x1c86
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	sprites
	.byte	0
	.uleb128 0x39
	.4byte	.LVL1027
	.4byte	0x5055
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF283
	.byte	0x2
	.2byte	0x14e
	.byte	0x1
	.4byte	0x1cb4
	.uleb128 0x3c
	.ascii	"s\000"
	.byte	0x2
	.2byte	0x14e
	.4byte	0xd9
	.uleb128 0x3d
	.4byte	.LASF227
	.byte	0x2
	.2byte	0x14e
	.4byte	0xd9
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF229
	.byte	0x2
	.2byte	0x144
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cde
	.uleb128 0x3f
	.ascii	"s\000"
	.byte	0x2
	.2byte	0x144
	.4byte	0xd9
	.4byte	.LLST326
	.uleb128 0x3a
	.4byte	.LVL900
	.byte	0
	.uleb128 0x40
	.4byte	.LASF252
	.byte	0x2
	.byte	0x33
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2aca
	.uleb128 0x37
	.4byte	.LVL785
	.4byte	0x5d9a
	.4byte	0x1d12
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	btlBitmap
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x8
	.byte	0x96
	.byte	0x39
	.byte	0x24
	.byte	0
	.uleb128 0x37
	.4byte	.LVL786
	.4byte	0x4eef
	.4byte	0x1d32
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0xf0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0xa0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL787
	.4byte	0x5055
	.uleb128 0x37
	.4byte	.LVL788
	.4byte	0x4e14
	.4byte	0x1d52
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	sprsPalette
	.byte	0
	.uleb128 0x37
	.4byte	.LVL789
	.4byte	0x4dc5
	.4byte	0x1d70
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	sprs
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1bc0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL790
	.4byte	0x513d
	.4byte	0x1d83
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x37
	.4byte	.LVL791
	.4byte	0x5db4
	.4byte	0x1da3
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	buf
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC116
	.byte	0
	.uleb128 0x37
	.4byte	.LVL792
	.4byte	0x543a
	.4byte	0x1dd2
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	buf
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL793
	.4byte	0x543a
	.4byte	0x1e01
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x49
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x6e
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC120
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL794
	.4byte	0x543a
	.4byte	0x1e30
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x49
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x77
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC122
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL795
	.4byte	0x5d9a
	.4byte	0x1e4f
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	btlBitmap
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x8
	.byte	0x96
	.byte	0x39
	.byte	0x24
	.byte	0
	.uleb128 0x37
	.4byte	.LVL796
	.4byte	0x543a
	.4byte	0x1e7f
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x49
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x6e
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC124
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.byte	0
	.uleb128 0x37
	.4byte	.LVL797
	.4byte	0x543a
	.4byte	0x1eb0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x29
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x7e
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC126
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.byte	0
	.uleb128 0x37
	.4byte	.LVL798
	.4byte	0x5db4
	.4byte	0x1ecd
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC128
	.byte	0
	.uleb128 0x37
	.4byte	.LVL799
	.4byte	0x543a
	.4byte	0x1efc
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL800
	.4byte	0x5db4
	.4byte	0x1f19
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC116
	.byte	0
	.uleb128 0x37
	.4byte	.LVL801
	.4byte	0x543a
	.4byte	0x1f47
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL802
	.4byte	0x5055
	.uleb128 0x39
	.4byte	.LVL803
	.4byte	0x5dc3
	.uleb128 0x37
	.4byte	.LVL804
	.4byte	0x4712
	.4byte	0x1f6c
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.4byte	.LVL805
	.4byte	0x5055
	.uleb128 0x37
	.4byte	.LVL806
	.4byte	0x4eef
	.4byte	0x1f98
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	sprites+8
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x7e
	.byte	0
	.uleb128 0x37
	.4byte	.LVL807
	.4byte	0x4eef
	.4byte	0x1fbb
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	sprites+8
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x94
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x7e
	.byte	0
	.uleb128 0x39
	.4byte	.LVL808
	.4byte	0x5dc3
	.uleb128 0x37
	.4byte	.LVL809
	.4byte	0x4712
	.4byte	0x1fd7
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x37
	.4byte	.LVL810
	.4byte	0x5d9a
	.4byte	0x1ffd
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	btlBitmap
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x8
	.byte	0x96
	.byte	0x39
	.byte	0x24
	.byte	0
	.uleb128 0x37
	.4byte	.LVL811
	.4byte	0x5db4
	.4byte	0x201d
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	buf
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC128
	.byte	0
	.uleb128 0x37
	.4byte	.LVL812
	.4byte	0x543a
	.4byte	0x204f
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	buf
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL813
	.4byte	0x5db4
	.4byte	0x206f
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	buf
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC116
	.byte	0
	.uleb128 0x37
	.4byte	.LVL814
	.4byte	0x543a
	.4byte	0x20a0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	buf
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL815
	.4byte	0x543a
	.4byte	0x20d1
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x49
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x6a
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC131
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.byte	0
	.uleb128 0x37
	.4byte	.LVL816
	.4byte	0x543a
	.4byte	0x2102
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x49
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x73
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC133
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.byte	0
	.uleb128 0x37
	.4byte	.LVL817
	.4byte	0x543a
	.4byte	0x2133
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x49
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x7c
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC135
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.byte	0
	.uleb128 0x37
	.4byte	.LVL818
	.4byte	0x543a
	.4byte	0x2163
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x49
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x85
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC137
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.byte	0
	.uleb128 0x37
	.4byte	.LVL819
	.4byte	0x4eef
	.4byte	0x2186
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	sprites+8
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0xf0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0xa0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL820
	.4byte	0x5055
	.uleb128 0x39
	.4byte	.LVL821
	.4byte	0x5dc3
	.uleb128 0x37
	.4byte	.LVL822
	.4byte	0x4712
	.4byte	0x21ab
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.4byte	.LVL823
	.4byte	0x5055
	.uleb128 0x37
	.4byte	.LVL824
	.4byte	0x4eef
	.4byte	0x21d7
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	sprites+8
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x49
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x6b
	.byte	0
	.uleb128 0x37
	.4byte	.LVL825
	.4byte	0x4eef
	.4byte	0x21fa
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	sprites+8
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x71
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x73
	.byte	0
	.uleb128 0x37
	.4byte	.LVL826
	.4byte	0x4eef
	.4byte	0x221d
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	sprites+8
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x3a
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x7c
	.byte	0
	.uleb128 0x37
	.4byte	.LVL827
	.4byte	0x4eef
	.4byte	0x2240
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	sprites+8
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0xa9
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x85
	.byte	0
	.uleb128 0x37
	.4byte	.LVL828
	.4byte	0x5d9a
	.4byte	0x2266
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	btlBitmap
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x8
	.byte	0x96
	.byte	0x39
	.byte	0x24
	.byte	0
	.uleb128 0x37
	.4byte	.LVL829
	.4byte	0x5db4
	.4byte	0x2283
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC128
	.byte	0
	.uleb128 0x37
	.4byte	.LVL830
	.4byte	0x543a
	.4byte	0x22b2
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL831
	.4byte	0x5db4
	.4byte	0x22cf
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC116
	.byte	0
	.uleb128 0x37
	.4byte	.LVL832
	.4byte	0x543a
	.4byte	0x22fd
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL833
	.4byte	0x543a
	.4byte	0x232e
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x49
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x6a
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC139
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.byte	0
	.uleb128 0x37
	.4byte	.LVL834
	.4byte	0x5db4
	.4byte	0x234b
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC141
	.byte	0
	.uleb128 0x37
	.4byte	.LVL835
	.4byte	0x543a
	.4byte	0x2379
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x49
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x6a
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.byte	0
	.uleb128 0x37
	.4byte	.LVL836
	.4byte	0x543a
	.4byte	0x23aa
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x49
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x73
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC143
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.byte	0
	.uleb128 0x37
	.4byte	.LVL837
	.4byte	0x5d9a
	.4byte	0x23c6
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x8
	.byte	0x96
	.byte	0x39
	.byte	0x24
	.byte	0
	.uleb128 0x37
	.4byte	.LVL838
	.4byte	0x5d9a
	.4byte	0x23e2
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x8
	.byte	0x96
	.byte	0x39
	.byte	0x24
	.byte	0
	.uleb128 0x37
	.4byte	.LVL839
	.4byte	0x5db4
	.4byte	0x23ff
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC128
	.byte	0
	.uleb128 0x37
	.4byte	.LVL840
	.4byte	0x543a
	.4byte	0x242e
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL841
	.4byte	0x4eef
	.4byte	0x2451
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	sprites+16
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0xf0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0xa0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL842
	.4byte	0x5055
	.uleb128 0x39
	.4byte	.LVL843
	.4byte	0x5dc3
	.uleb128 0x3a
	.4byte	.LVL844
	.uleb128 0x3a
	.4byte	.LVL845
	.uleb128 0x37
	.4byte	.LVL846
	.4byte	0x543a
	.4byte	0x249e
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x49
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x6a
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC148
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.byte	0
	.uleb128 0x37
	.4byte	.LVL847
	.4byte	0x5db4
	.4byte	0x24bb
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC150
	.byte	0
	.uleb128 0x37
	.4byte	.LVL848
	.4byte	0x543a
	.4byte	0x24e8
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x49
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x73
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.byte	0
	.uleb128 0x37
	.4byte	.LVL849
	.4byte	0x5db4
	.4byte	0x2505
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC152
	.byte	0
	.uleb128 0x37
	.4byte	.LVL850
	.4byte	0x543a
	.4byte	0x2532
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x49
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x7c
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL851
	.uleb128 0x37
	.4byte	.LVL852
	.4byte	0x518d
	.4byte	0x254a
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x37
	.4byte	.LVL853
	.4byte	0x5d9a
	.4byte	0x2569
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	r1Bitmap
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x8
	.byte	0x96
	.byte	0x39
	.byte	0x24
	.byte	0
	.uleb128 0x37
	.4byte	.LVL854
	.4byte	0x5db4
	.4byte	0x2586
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC128
	.byte	0
	.uleb128 0x37
	.4byte	.LVL855
	.4byte	0x543a
	.4byte	0x25b3
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x37
	.4byte	.LVL856
	.4byte	0x4eef
	.4byte	0x25ca
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	sprites
	.byte	0
	.uleb128 0x37
	.4byte	.LVL857
	.4byte	0x4eef
	.4byte	0x25ed
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	sprites+8
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0xf0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0xa0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL858
	.4byte	0x4eef
	.4byte	0x2610
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	sprites+16
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0xf0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0xa0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL859
	.4byte	0x5055
	.uleb128 0x37
	.4byte	.LVL860
	.4byte	0x513d
	.4byte	0x262c
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x37
	.4byte	.LVL861
	.4byte	0x5db4
	.4byte	0x2649
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC128
	.byte	0
	.uleb128 0x37
	.4byte	.LVL862
	.4byte	0x543a
	.4byte	0x2678
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL863
	.4byte	0x5db4
	.4byte	0x2695
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC116
	.byte	0
	.uleb128 0x37
	.4byte	.LVL864
	.4byte	0x543a
	.4byte	0x26c3
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL865
	.4byte	0x543a
	.4byte	0x26f4
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x49
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x6a
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC155
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.byte	0
	.uleb128 0x39
	.4byte	.LVL866
	.4byte	0x5dc3
	.uleb128 0x3a
	.4byte	.LVL867
	.uleb128 0x41
	.4byte	.LVL868
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x39
	.4byte	.LVL869
	.4byte	0x5dc3
	.uleb128 0x3a
	.4byte	.LVL870
	.uleb128 0x41
	.4byte	.LVL871
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x37
	.4byte	.LVL872
	.4byte	0x5d9a
	.4byte	0x273f
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	btlBitmap
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x8
	.byte	0x96
	.byte	0x39
	.byte	0x24
	.byte	0
	.uleb128 0x37
	.4byte	.LVL873
	.4byte	0x5db4
	.4byte	0x275c
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC128
	.byte	0
	.uleb128 0x37
	.4byte	.LVL874
	.4byte	0x543a
	.4byte	0x2789
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x37
	.4byte	.LVL875
	.4byte	0x5db4
	.4byte	0x27a6
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC116
	.byte	0
	.uleb128 0x37
	.4byte	.LVL876
	.4byte	0x543a
	.4byte	0x27d3
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x37
	.4byte	.LVL877
	.4byte	0x5db4
	.4byte	0x27f0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC141
	.byte	0
	.uleb128 0x37
	.4byte	.LVL878
	.4byte	0x543a
	.4byte	0x281d
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x49
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x6a
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.byte	0
	.uleb128 0x37
	.4byte	.LVL879
	.4byte	0x543a
	.4byte	0x284d
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x49
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x73
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC157
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.byte	0
	.uleb128 0x37
	.4byte	.LVL880
	.4byte	0x42a0
	.4byte	0x2860
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x37
	.4byte	.LVL881
	.4byte	0x5b7b
	.4byte	0x2874
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.uleb128 0x37
	.4byte	.LVL882
	.4byte	0x543a
	.4byte	0x28a5
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x54
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x4c
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC159
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x37
	.4byte	.LVL883
	.4byte	0x5d9a
	.4byte	0x28c4
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	btlBitmap
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x8
	.byte	0x96
	.byte	0x39
	.byte	0x24
	.byte	0
	.uleb128 0x37
	.4byte	.LVL884
	.4byte	0x543a
	.4byte	0x28f2
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x49
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x6e
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC124
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL885
	.4byte	0x543a
	.4byte	0x2921
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x29
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x7e
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC126
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL886
	.4byte	0x5db4
	.4byte	0x293e
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC128
	.byte	0
	.uleb128 0x37
	.4byte	.LVL887
	.4byte	0x543a
	.4byte	0x296b
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL888
	.4byte	0x5db4
	.4byte	0x2988
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC116
	.byte	0
	.uleb128 0x37
	.4byte	.LVL889
	.4byte	0x543a
	.4byte	0x29b4
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL890
	.4byte	0x5db4
	.4byte	0x29d1
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC128
	.byte	0
	.uleb128 0x37
	.4byte	.LVL891
	.4byte	0x543a
	.4byte	0x2a00
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL892
	.4byte	0x5db4
	.4byte	0x2a1d
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC116
	.byte	0
	.uleb128 0x37
	.4byte	.LVL893
	.4byte	0x543a
	.4byte	0x2a4b
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL894
	.4byte	0x5d9a
	.4byte	0x2a6a
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	btlBitmap
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x8
	.byte	0x96
	.byte	0x39
	.byte	0x24
	.byte	0
	.uleb128 0x37
	.4byte	.LVL895
	.4byte	0x543a
	.4byte	0x2a9b
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x49
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x6e
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC161
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x2
	.byte	0
	.uleb128 0x37
	.4byte	.LVL896
	.4byte	0x518d
	.4byte	0x2aae
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x42
	.4byte	.LVL897
	.4byte	0x5d9a
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	r1Bitmap
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x8
	.byte	0x96
	.byte	0x39
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF230
	.byte	0x1
	.2byte	0xc7f
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b1a
	.uleb128 0x43
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xc7f
	.4byte	0xb3a
	.4byte	.LLST323
	.uleb128 0x44
	.4byte	.LASF231
	.byte	0x1
	.2byte	0xc81
	.4byte	0xb3a
	.4byte	.LLST324
	.uleb128 0x44
	.4byte	.LASF232
	.byte	0x1
	.2byte	0xc82
	.4byte	0xb5b
	.4byte	.LLST325
	.uleb128 0x39
	.4byte	.LVL784
	.4byte	0x5b69
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF233
	.byte	0x1
	.2byte	0xc70
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b6a
	.uleb128 0x43
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xc70
	.4byte	0xb3a
	.4byte	.LLST320
	.uleb128 0x44
	.4byte	.LASF231
	.byte	0x1
	.2byte	0xc72
	.4byte	0xb3a
	.4byte	.LLST321
	.uleb128 0x44
	.4byte	.LASF232
	.byte	0x1
	.2byte	0xc73
	.4byte	0xb5b
	.4byte	.LLST322
	.uleb128 0x39
	.4byte	.LVL774
	.4byte	0x5b69
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF234
	.byte	0x1
	.2byte	0xc64
	.4byte	0x49
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2bbf
	.uleb128 0x45
	.4byte	.LASF235
	.byte	0x1
	.2byte	0xc66
	.4byte	0xb2a
	.byte	0xa0
	.uleb128 0x46
	.ascii	"i\000"
	.byte	0x1
	.2byte	0xc67
	.4byte	0xd9
	.4byte	.LLST319
	.uleb128 0x47
	.4byte	.LASF236
	.byte	0x1
	.2byte	0xc68
	.4byte	0x2bbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x42
	.4byte	.LVL764
	.4byte	0x5dce
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	0x49
	.4byte	0x2bcf
	.uleb128 0x4
	.4byte	0x3c
	.byte	0xb
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF237
	.byte	0x1
	.2byte	0xc59
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c4a
	.uleb128 0x43
	.4byte	.LASF238
	.byte	0x1
	.2byte	0xc59
	.4byte	0xbba
	.4byte	.LLST314
	.uleb128 0x43
	.4byte	.LASF239
	.byte	0x1
	.2byte	0xc59
	.4byte	0xd9
	.4byte	.LLST315
	.uleb128 0x43
	.4byte	.LASF240
	.byte	0x1
	.2byte	0xc59
	.4byte	0xd9
	.4byte	.LLST316
	.uleb128 0x46
	.ascii	"x1\000"
	.byte	0x1
	.2byte	0xc5a
	.4byte	0xd9
	.4byte	.LLST317
	.uleb128 0x46
	.ascii	"y1\000"
	.byte	0x1
	.2byte	0xc5a
	.4byte	0xd9
	.4byte	.LLST318
	.uleb128 0x42
	.4byte	.LVL753
	.4byte	0x5a84
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF241
	.byte	0x1
	.2byte	0xc54
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c8d
	.uleb128 0x43
	.4byte	.LASF242
	.byte	0x1
	.2byte	0xc54
	.4byte	0xd9
	.4byte	.LLST313
	.uleb128 0x48
	.4byte	.LASF238
	.byte	0x1
	.2byte	0xc54
	.4byte	0xbba
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x48
	.4byte	.LASF243
	.byte	0x1
	.2byte	0xc54
	.4byte	0x43
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF244
	.byte	0x1
	.2byte	0xc4d
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2cbc
	.uleb128 0x48
	.4byte	.LASF238
	.byte	0x1
	.2byte	0xc4d
	.4byte	0xbba
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2f
	.ascii	"i\000"
	.byte	0x1
	.2byte	0xc4e
	.4byte	0xd9
	.byte	0
	.uleb128 0x49
	.4byte	.LASF246
	.byte	0x1
	.2byte	0xc48
	.4byte	0xb2a
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2cff
	.uleb128 0x43
	.4byte	.LASF245
	.byte	0x1
	.2byte	0xc48
	.4byte	0xd9
	.4byte	.LLST312
	.uleb128 0x48
	.4byte	.LASF238
	.byte	0x1
	.2byte	0xc48
	.4byte	0xbba
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2f
	.ascii	"x\000"
	.byte	0x1
	.2byte	0xc4a
	.4byte	0xd9
	.byte	0
	.uleb128 0x49
	.4byte	.LASF247
	.byte	0x1
	.2byte	0xc44
	.4byte	0xd9
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d2a
	.uleb128 0x3f
	.ascii	"spr\000"
	.byte	0x1
	.2byte	0xc44
	.4byte	0xd9
	.4byte	.LLST311
	.byte	0
	.uleb128 0x49
	.4byte	.LASF248
	.byte	0x1
	.2byte	0xc31
	.4byte	0xd9
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d63
	.uleb128 0x3f
	.ascii	"spr\000"
	.byte	0x1
	.2byte	0xc31
	.4byte	0xd9
	.4byte	.LLST310
	.uleb128 0x4a
	.ascii	"att\000"
	.byte	0x1
	.2byte	0xc31
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x49
	.4byte	.LASF249
	.byte	0x1
	.2byte	0xc23
	.4byte	0xd9
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2dbc
	.uleb128 0x3f
	.ascii	"spr\000"
	.byte	0x1
	.2byte	0xc23
	.4byte	0xd9
	.4byte	.LLST308
	.uleb128 0x48
	.4byte	.LASF250
	.byte	0x1
	.2byte	0xc23
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x46
	.ascii	"reg\000"
	.byte	0x1
	.2byte	0xc25
	.4byte	0xd9
	.4byte	.LLST309
	.uleb128 0x4b
	.4byte	.LASF251
	.byte	0x1
	.2byte	0xc26
	.4byte	0xd9
	.4byte	0x7000000
	.byte	0
	.uleb128 0x4c
	.4byte	.LASF253
	.byte	0x1
	.2byte	0xc01
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2fb0
	.uleb128 0x37
	.4byte	.LVL719
	.4byte	0x42a0
	.4byte	0x2de6
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL720
	.4byte	0x543a
	.4byte	0x2e14
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC87
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL721
	.4byte	0x543a
	.4byte	0x2e42
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x41
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC89
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL722
	.4byte	0x543a
	.4byte	0x2e70
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x4a
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC91
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL723
	.4byte	0x40ca
	.4byte	0x2e9d
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x27
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL724
	.4byte	0x40ca
	.4byte	0x2eca
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x47
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL725
	.4byte	0x543a
	.4byte	0x2ef9
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC93
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL726
	.4byte	0x40ca
	.4byte	0x2f26
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x2a
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x27
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0x2a
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL727
	.4byte	0x543a
	.4byte	0x2f55
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x50
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC95
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL728
	.4byte	0x543a
	.4byte	0x2f84
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x59
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC97
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x42
	.4byte	.LVL729
	.4byte	0x543a
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC99
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF254
	.byte	0x1
	.2byte	0xbef
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ffb
	.uleb128 0x3f
	.ascii	"s\000"
	.byte	0x1
	.2byte	0xbef
	.4byte	0xd9
	.4byte	.LLST306
	.uleb128 0x3f
	.ascii	"end\000"
	.byte	0x1
	.2byte	0xbef
	.4byte	0xd9
	.4byte	.LLST307
	.uleb128 0x3a
	.4byte	.LVL717
	.uleb128 0x42
	.4byte	.LVL718
	.4byte	0x5b7b
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF255
	.byte	0x1
	.2byte	0xbab
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3184
	.uleb128 0x3f
	.ascii	"spr\000"
	.byte	0x1
	.2byte	0xbab
	.4byte	0xd9
	.4byte	.LLST289
	.uleb128 0x3f
	.ascii	"x1\000"
	.byte	0x1
	.2byte	0xbab
	.4byte	0xd9
	.4byte	.LLST290
	.uleb128 0x3f
	.ascii	"y1\000"
	.byte	0x1
	.2byte	0xbab
	.4byte	0xd9
	.4byte	.LLST291
	.uleb128 0x3f
	.ascii	"x2\000"
	.byte	0x1
	.2byte	0xbab
	.4byte	0xd9
	.4byte	.LLST292
	.uleb128 0x4a
	.ascii	"y2\000"
	.byte	0x1
	.2byte	0xbab
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x48
	.4byte	.LASF227
	.byte	0x1
	.2byte	0xbab
	.4byte	0xb7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x46
	.ascii	"i\000"
	.byte	0x1
	.2byte	0xbae
	.4byte	0xd9
	.4byte	.LLST293
	.uleb128 0x44
	.4byte	.LASF256
	.byte	0x1
	.2byte	0xbae
	.4byte	0xd9
	.4byte	.LLST294
	.uleb128 0x44
	.4byte	.LASF257
	.byte	0x1
	.2byte	0xbae
	.4byte	0xd9
	.4byte	.LLST295
	.uleb128 0x44
	.4byte	.LASF258
	.byte	0x1
	.2byte	0xbae
	.4byte	0xd9
	.4byte	.LLST296
	.uleb128 0x46
	.ascii	"d\000"
	.byte	0x1
	.2byte	0xbaf
	.4byte	0xd9
	.4byte	.LLST297
	.uleb128 0x44
	.4byte	.LASF259
	.byte	0x1
	.2byte	0xbaf
	.4byte	0xd9
	.4byte	.LLST298
	.uleb128 0x44
	.4byte	.LASF260
	.byte	0x1
	.2byte	0xbaf
	.4byte	0xd9
	.4byte	.LLST299
	.uleb128 0x46
	.ascii	"x\000"
	.byte	0x1
	.2byte	0xbb0
	.4byte	0xd9
	.4byte	.LLST300
	.uleb128 0x44
	.4byte	.LASF261
	.byte	0x1
	.2byte	0xbb0
	.4byte	0xd9
	.4byte	.LLST301
	.uleb128 0x44
	.4byte	.LASF262
	.byte	0x1
	.2byte	0xbb0
	.4byte	0xd9
	.4byte	.LLST302
	.uleb128 0x46
	.ascii	"y\000"
	.byte	0x1
	.2byte	0xbb1
	.4byte	0xd9
	.4byte	.LLST303
	.uleb128 0x44
	.4byte	.LASF263
	.byte	0x1
	.2byte	0xbb1
	.4byte	0xd9
	.4byte	.LLST304
	.uleb128 0x44
	.4byte	.LASF264
	.byte	0x1
	.2byte	0xbb1
	.4byte	0xd9
	.4byte	.LLST305
	.uleb128 0x37
	.4byte	.LVL674
	.4byte	0x4eef
	.4byte	0x3154
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL705
	.4byte	0x5b69
	.uleb128 0x39
	.4byte	.LVL706
	.4byte	0x5055
	.uleb128 0x42
	.4byte	.LVL707
	.4byte	0x4eef
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF265
	.byte	0x1
	.2byte	0xba6
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31b9
	.uleb128 0x43
	.4byte	.LASF266
	.byte	0x1
	.2byte	0xba6
	.4byte	0xd9
	.4byte	.LLST288
	.uleb128 0x48
	.4byte	.LASF267
	.byte	0x1
	.2byte	0xba6
	.4byte	0xbba
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF268
	.byte	0x1
	.2byte	0xba1
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31ee
	.uleb128 0x43
	.4byte	.LASF266
	.byte	0x1
	.2byte	0xba1
	.4byte	0xd9
	.4byte	.LLST287
	.uleb128 0x48
	.4byte	.LASF267
	.byte	0x1
	.2byte	0xba1
	.4byte	0xbba
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF269
	.byte	0x1
	.2byte	0xb99
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x323d
	.uleb128 0x43
	.4byte	.LASF251
	.byte	0x1
	.2byte	0xb99
	.4byte	0xd9
	.4byte	.LLST286
	.uleb128 0x48
	.4byte	.LASF238
	.byte	0x1
	.2byte	0xb99
	.4byte	0xbba
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4a
	.ascii	"end\000"
	.byte	0x1
	.2byte	0xb99
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4d
	.ascii	"i\000"
	.byte	0x1
	.2byte	0xb9a
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF270
	.byte	0x1
	.2byte	0xb91
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x328c
	.uleb128 0x43
	.4byte	.LASF251
	.byte	0x1
	.2byte	0xb91
	.4byte	0xd9
	.4byte	.LLST285
	.uleb128 0x48
	.4byte	.LASF238
	.byte	0x1
	.2byte	0xb91
	.4byte	0xbba
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4a
	.ascii	"end\000"
	.byte	0x1
	.2byte	0xb91
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4d
	.ascii	"i\000"
	.byte	0x1
	.2byte	0xb92
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x49
	.4byte	.LASF271
	.byte	0x1
	.2byte	0xb8c
	.4byte	0xd9
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x32b7
	.uleb128 0x43
	.4byte	.LASF266
	.byte	0x1
	.2byte	0xb8c
	.4byte	0xd9
	.4byte	.LLST284
	.byte	0
	.uleb128 0x49
	.4byte	.LASF272
	.byte	0x1
	.2byte	0xb87
	.4byte	0xd9
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x32e2
	.uleb128 0x43
	.4byte	.LASF266
	.byte	0x1
	.2byte	0xb87
	.4byte	0xd9
	.4byte	.LLST283
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF273
	.byte	0x1
	.2byte	0xb79
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x337b
	.uleb128 0x43
	.4byte	.LASF267
	.byte	0x1
	.2byte	0xb79
	.4byte	0xbba
	.4byte	.LLST280
	.uleb128 0x43
	.4byte	.LASF227
	.byte	0x1
	.2byte	0xb79
	.4byte	0x25
	.4byte	.LLST281
	.uleb128 0x46
	.ascii	"i\000"
	.byte	0x1
	.2byte	0xb7a
	.4byte	0xd9
	.4byte	.LLST282
	.uleb128 0x37
	.4byte	.LVL652
	.4byte	0x40ca
	.4byte	0x3352
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 -2
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0xf0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 -2
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x42
	.4byte	.LVL655
	.4byte	0x40ca
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 2
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0xf0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 2
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF274
	.byte	0x1
	.2byte	0xb3d
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3894
	.uleb128 0x43
	.4byte	.LASF267
	.byte	0x1
	.2byte	0xb3d
	.4byte	0xbba
	.4byte	.LLST278
	.uleb128 0x43
	.4byte	.LASF227
	.byte	0x1
	.2byte	0xb3d
	.4byte	0x25
	.4byte	.LLST279
	.uleb128 0x37
	.4byte	.LVL621
	.4byte	0x543a
	.4byte	0x33de
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL622
	.4byte	0x543a
	.4byte	0x340a
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL623
	.4byte	0x543a
	.4byte	0x3436
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL624
	.4byte	0x543a
	.4byte	0x3462
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL625
	.4byte	0x543a
	.4byte	0x348f
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL626
	.4byte	0x543a
	.4byte	0x34bc
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL627
	.4byte	0x543a
	.4byte	0x34e9
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL628
	.4byte	0x543a
	.4byte	0x3515
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL629
	.4byte	0x543a
	.4byte	0x3541
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL630
	.4byte	0x543a
	.4byte	0x356d
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL631
	.4byte	0x543a
	.4byte	0x359a
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL632
	.4byte	0x543a
	.4byte	0x35c7
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL633
	.4byte	0x543a
	.4byte	0x35f4
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL634
	.4byte	0x543a
	.4byte	0x3621
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL635
	.4byte	0x543a
	.4byte	0x364e
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL636
	.4byte	0x543a
	.4byte	0x367b
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x48
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL637
	.4byte	0x543a
	.4byte	0x36a8
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x50
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL638
	.4byte	0x543a
	.4byte	0x36d5
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x58
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL639
	.4byte	0x543a
	.4byte	0x3702
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x60
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL640
	.4byte	0x543a
	.4byte	0x372f
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x68
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL641
	.4byte	0x543a
	.4byte	0x375c
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x70
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL642
	.4byte	0x543a
	.4byte	0x3789
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x78
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL643
	.4byte	0x543a
	.4byte	0x37b6
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL644
	.4byte	0x543a
	.4byte	0x37e3
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x88
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL645
	.4byte	0x543a
	.4byte	0x3810
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x8c
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL646
	.4byte	0x543a
	.4byte	0x383d
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x94
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL647
	.4byte	0x543a
	.4byte	0x386a
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x9c
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x42
	.4byte	.LVL648
	.4byte	0x543a
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0xa4
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF275
	.byte	0x1
	.2byte	0xb35
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3905
	.uleb128 0x43
	.4byte	.LASF267
	.byte	0x1
	.2byte	0xb35
	.4byte	0xbba
	.4byte	.LLST275
	.uleb128 0x43
	.4byte	.LASF227
	.byte	0x1
	.2byte	0xb35
	.4byte	0x25
	.4byte	.LLST276
	.uleb128 0x46
	.ascii	"r\000"
	.byte	0x1
	.2byte	0xb36
	.4byte	0xd9
	.4byte	.LLST277
	.uleb128 0x2f
	.ascii	"i\000"
	.byte	0x1
	.2byte	0xb36
	.4byte	0xd9
	.uleb128 0x42
	.4byte	.LVL615
	.4byte	0x3f4d
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x78
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x50
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 -1
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF276
	.byte	0x1
	.2byte	0xb2b
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x397b
	.uleb128 0x46
	.ascii	"x\000"
	.byte	0x1
	.2byte	0xb2c
	.4byte	0xd9
	.4byte	.LLST274
	.uleb128 0x39
	.4byte	.LVL601
	.4byte	0x5dc3
	.uleb128 0x39
	.4byte	.LVL603
	.4byte	0x5dc3
	.uleb128 0x39
	.4byte	.LVL604
	.4byte	0x5dc3
	.uleb128 0x41
	.4byte	.LVL605
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x41
	.4byte	.LVL606
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x37
	.4byte	.LVL607
	.4byte	0x5a84
	.4byte	0x3968
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL608
	.4byte	0x5dc3
	.uleb128 0x39
	.4byte	.LVL609
	.4byte	0x5dc3
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF277
	.byte	0x1
	.2byte	0xb20
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x39ec
	.uleb128 0x43
	.4byte	.LASF267
	.byte	0x1
	.2byte	0xb20
	.4byte	0xbba
	.4byte	.LLST270
	.uleb128 0x43
	.4byte	.LASF227
	.byte	0x1
	.2byte	0xb20
	.4byte	0x25
	.4byte	.LLST271
	.uleb128 0x46
	.ascii	"x1\000"
	.byte	0x1
	.2byte	0xb21
	.4byte	0xd9
	.4byte	.LLST272
	.uleb128 0x46
	.ascii	"y1\000"
	.byte	0x1
	.2byte	0xb21
	.4byte	0xd9
	.4byte	.LLST273
	.uleb128 0x42
	.4byte	.LVL596
	.4byte	0x5a84
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 1
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF278
	.byte	0x1
	.2byte	0xb15
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a5d
	.uleb128 0x43
	.4byte	.LASF267
	.byte	0x1
	.2byte	0xb15
	.4byte	0xbba
	.4byte	.LLST266
	.uleb128 0x43
	.4byte	.LASF227
	.byte	0x1
	.2byte	0xb15
	.4byte	0x25
	.4byte	.LLST267
	.uleb128 0x46
	.ascii	"x1\000"
	.byte	0x1
	.2byte	0xb16
	.4byte	0xd9
	.4byte	.LLST268
	.uleb128 0x46
	.ascii	"y1\000"
	.byte	0x1
	.2byte	0xb16
	.4byte	0xd9
	.4byte	.LLST269
	.uleb128 0x42
	.4byte	.LVL587
	.4byte	0x5a84
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 1
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF279
	.byte	0x1
	.2byte	0xb0a
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ace
	.uleb128 0x43
	.4byte	.LASF267
	.byte	0x1
	.2byte	0xb0a
	.4byte	0xbba
	.4byte	.LLST262
	.uleb128 0x43
	.4byte	.LASF227
	.byte	0x1
	.2byte	0xb0a
	.4byte	0x25
	.4byte	.LLST263
	.uleb128 0x46
	.ascii	"x1\000"
	.byte	0x1
	.2byte	0xb0b
	.4byte	0xd9
	.4byte	.LLST264
	.uleb128 0x46
	.ascii	"y1\000"
	.byte	0x1
	.2byte	0xb0b
	.4byte	0xd9
	.4byte	.LLST265
	.uleb128 0x42
	.4byte	.LVL578
	.4byte	0x5a84
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 -1
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF280
	.byte	0x1
	.2byte	0xafe
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3b3f
	.uleb128 0x43
	.4byte	.LASF267
	.byte	0x1
	.2byte	0xafe
	.4byte	0xbba
	.4byte	.LLST258
	.uleb128 0x43
	.4byte	.LASF227
	.byte	0x1
	.2byte	0xafe
	.4byte	0x25
	.4byte	.LLST259
	.uleb128 0x46
	.ascii	"x1\000"
	.byte	0x1
	.2byte	0xaff
	.4byte	0xd9
	.4byte	.LLST260
	.uleb128 0x46
	.ascii	"y1\000"
	.byte	0x1
	.2byte	0xaff
	.4byte	0xd9
	.4byte	.LLST261
	.uleb128 0x42
	.4byte	.LVL569
	.4byte	0x5a84
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 -1
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4f
	.4byte	.LASF380
	.byte	0x1
	.2byte	0xaf9
	.4byte	0x3b64
	.uleb128 0x3d
	.4byte	.LASF281
	.byte	0x1
	.2byte	0xaf9
	.4byte	0xd9
	.uleb128 0x3d
	.4byte	.LASF282
	.byte	0x1
	.2byte	0xaf9
	.4byte	0xd9
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF284
	.byte	0x1
	.2byte	0xaf4
	.byte	0x1
	.4byte	0x3b8a
	.uleb128 0x3d
	.4byte	.LASF281
	.byte	0x1
	.2byte	0xaf4
	.4byte	0xd9
	.uleb128 0x3d
	.4byte	.LASF282
	.byte	0x1
	.2byte	0xaf4
	.4byte	0xd9
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF285
	.byte	0x1
	.2byte	0xae2
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c4e
	.uleb128 0x43
	.4byte	.LASF238
	.byte	0x1
	.2byte	0xae2
	.4byte	0xbba
	.4byte	.LLST254
	.uleb128 0x43
	.4byte	.LASF227
	.byte	0x1
	.2byte	0xae2
	.4byte	0x25
	.4byte	.LLST255
	.uleb128 0x46
	.ascii	"x1\000"
	.byte	0x1
	.2byte	0xae4
	.4byte	0xd9
	.4byte	.LLST256
	.uleb128 0x46
	.ascii	"y1\000"
	.byte	0x1
	.2byte	0xae4
	.4byte	0xd9
	.4byte	.LLST257
	.uleb128 0x39
	.4byte	.LVL554
	.4byte	0x5b69
	.uleb128 0x37
	.4byte	.LVL556
	.4byte	0x5a84
	.4byte	0x3c01
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL557
	.4byte	0x5a84
	.4byte	0x3c1c
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL558
	.4byte	0x5a84
	.4byte	0x3c37
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 -1
	.byte	0
	.uleb128 0x42
	.4byte	.LVL559
	.4byte	0x5a84
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF286
	.byte	0x1
	.2byte	0xad0
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d28
	.uleb128 0x43
	.4byte	.LASF267
	.byte	0x1
	.2byte	0xad0
	.4byte	0xbba
	.4byte	.LLST250
	.uleb128 0x43
	.4byte	.LASF227
	.byte	0x1
	.2byte	0xad0
	.4byte	0x25
	.4byte	.LLST251
	.uleb128 0x46
	.ascii	"x\000"
	.byte	0x1
	.2byte	0xad2
	.4byte	0xd9
	.4byte	.LLST252
	.uleb128 0x46
	.ascii	"y\000"
	.byte	0x1
	.2byte	0xad2
	.4byte	0xd9
	.4byte	.LLST253
	.uleb128 0x39
	.4byte	.LVL542
	.4byte	0x5b69
	.uleb128 0x37
	.4byte	.LVL543
	.4byte	0x5a84
	.4byte	0x3cc9
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL544
	.4byte	0x5a84
	.4byte	0x3cea
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL545
	.4byte	0x5a84
	.4byte	0x3d0b
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x7d
	.sleb128 0
	.byte	0x6
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 -1
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x42
	.4byte	.LVL547
	.4byte	0x5a84
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 -3
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF287
	.byte	0x1
	.2byte	0xac4
	.byte	0x1
	.4byte	0x3d5e
	.uleb128 0x3c
	.ascii	"i\000"
	.byte	0x1
	.2byte	0xac4
	.4byte	0xb86
	.uleb128 0x2f
	.ascii	"x\000"
	.byte	0x1
	.2byte	0xac6
	.4byte	0xd9
	.uleb128 0x2f
	.ascii	"y\000"
	.byte	0x1
	.2byte	0xac6
	.4byte	0xd9
	.uleb128 0x2f
	.ascii	"c\000"
	.byte	0x1
	.2byte	0xac7
	.4byte	0xd9
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF288
	.byte	0x1
	.2byte	0xab7
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3dab
	.uleb128 0x43
	.4byte	.LASF289
	.byte	0x1
	.2byte	0xab7
	.4byte	0xd9
	.4byte	.LLST248
	.uleb128 0x43
	.4byte	.LASF290
	.byte	0x1
	.2byte	0xab7
	.4byte	0xd9
	.4byte	.LLST249
	.uleb128 0x50
	.ascii	"x\000"
	.byte	0x1
	.2byte	0xab9
	.4byte	0xd9
	.byte	0xf0
	.uleb128 0x50
	.ascii	"y\000"
	.byte	0x1
	.2byte	0xab9
	.4byte	0xd9
	.byte	0xa0
	.byte	0
	.uleb128 0x51
	.4byte	.LASF434
	.byte	0x1
	.2byte	0xab2
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x52
	.ascii	"jmp\000"
	.byte	0x1
	.2byte	0xaad
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3de2
	.uleb128 0x48
	.4byte	.LASF291
	.byte	0x1
	.2byte	0xaad
	.4byte	0x2b0
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x49
	.4byte	.LASF292
	.byte	0x1
	.2byte	0xaa8
	.4byte	0xb2a
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3e1b
	.uleb128 0x43
	.4byte	.LASF293
	.byte	0x1
	.2byte	0xaa8
	.4byte	0xb2a
	.4byte	.LLST247
	.uleb128 0x39
	.4byte	.LVL532
	.4byte	0x3e1b
	.uleb128 0x3a
	.4byte	.LVL533
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF294
	.byte	0x1
	.2byte	0xa8d
	.4byte	0xb3a
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3e4d
	.uleb128 0x46
	.ascii	"y\000"
	.byte	0x1
	.2byte	0xa8f
	.4byte	0xb3a
	.4byte	.LLST246
	.uleb128 0x39
	.4byte	.LVL525
	.4byte	0x3e4d
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF295
	.byte	0x1
	.2byte	0xa70
	.4byte	0xb3a
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ed2
	.uleb128 0x46
	.ascii	"p0\000"
	.byte	0x1
	.2byte	0xa72
	.4byte	0xba3
	.4byte	.LLST240
	.uleb128 0x46
	.ascii	"p2\000"
	.byte	0x1
	.2byte	0xa73
	.4byte	0xba3
	.4byte	.LLST241
	.uleb128 0x46
	.ascii	"pM\000"
	.byte	0x1
	.2byte	0xa74
	.4byte	0xba3
	.4byte	.LLST242
	.uleb128 0x46
	.ascii	"s0\000"
	.byte	0x1
	.2byte	0xa75
	.4byte	0xb3a
	.4byte	.LLST243
	.uleb128 0x46
	.ascii	"s1\000"
	.byte	0x1
	.2byte	0xa76
	.4byte	0xb3a
	.4byte	.LLST244
	.uleb128 0x46
	.ascii	"j\000"
	.byte	0x1
	.2byte	0xa77
	.4byte	0xd9
	.4byte	.LLST245
	.uleb128 0x42
	.4byte	.LVL501
	.4byte	0x3ed2
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1105
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF296
	.byte	0x1
	.2byte	0xa5e
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f21
	.uleb128 0x43
	.4byte	.LASF3
	.byte	0x1
	.2byte	0xa5e
	.4byte	0xb3a
	.4byte	.LLST237
	.uleb128 0x4d
	.ascii	"x\000"
	.byte	0x1
	.2byte	0xa60
	.4byte	0xb3a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x46
	.ascii	"s\000"
	.byte	0x1
	.2byte	0xa61
	.4byte	0xba3
	.4byte	.LLST238
	.uleb128 0x46
	.ascii	"j\000"
	.byte	0x1
	.2byte	0xa62
	.4byte	0xb3a
	.4byte	.LLST239
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF297
	.byte	0x1
	.2byte	0xa3e
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f47
	.uleb128 0x3f
	.ascii	"bg\000"
	.byte	0x1
	.2byte	0xa3e
	.4byte	0x3f47
	.4byte	.LLST236
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf87
	.uleb128 0x3e
	.4byte	.LASF298
	.byte	0x1
	.2byte	0xa22
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x40ca
	.uleb128 0x43
	.4byte	.LASF299
	.byte	0x1
	.2byte	0xa22
	.4byte	0xd9
	.4byte	.LLST229
	.uleb128 0x43
	.4byte	.LASF300
	.byte	0x1
	.2byte	0xa22
	.4byte	0xd9
	.4byte	.LLST230
	.uleb128 0x43
	.4byte	.LASF301
	.byte	0x1
	.2byte	0xa22
	.4byte	0xd9
	.4byte	.LLST231
	.uleb128 0x43
	.4byte	.LASF267
	.byte	0x1
	.2byte	0xa22
	.4byte	0xd9
	.4byte	.LLST232
	.uleb128 0x46
	.ascii	"x\000"
	.byte	0x1
	.2byte	0xa24
	.4byte	0xd9
	.4byte	.LLST233
	.uleb128 0x46
	.ascii	"y\000"
	.byte	0x1
	.2byte	0xa25
	.4byte	0xd9
	.4byte	.LLST234
	.uleb128 0x46
	.ascii	"p\000"
	.byte	0x1
	.2byte	0xa26
	.4byte	0xd9
	.4byte	.LLST235
	.uleb128 0x37
	.4byte	.LVL476
	.4byte	0x5a84
	.4byte	0x3fed
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL477
	.4byte	0x5a84
	.4byte	0x400d
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL478
	.4byte	0x5a84
	.4byte	0x402d
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL479
	.4byte	0x5a84
	.4byte	0x404d
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL480
	.4byte	0x5a84
	.4byte	0x406d
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL481
	.4byte	0x5a84
	.4byte	0x408d
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL482
	.4byte	0x5a84
	.4byte	0x40ad
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x42
	.4byte	.LVL483
	.4byte	0x5a84
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF302
	.byte	0x1
	.2byte	0x9e2
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4213
	.uleb128 0x3f
	.ascii	"x1\000"
	.byte	0x1
	.2byte	0x9e2
	.4byte	0xd9
	.4byte	.LLST211
	.uleb128 0x3f
	.ascii	"y1\000"
	.byte	0x1
	.2byte	0x9e2
	.4byte	0xd9
	.4byte	.LLST212
	.uleb128 0x3f
	.ascii	"x2\000"
	.byte	0x1
	.2byte	0x9e2
	.4byte	0xd9
	.4byte	.LLST213
	.uleb128 0x3f
	.ascii	"y2\000"
	.byte	0x1
	.2byte	0x9e2
	.4byte	0xd9
	.4byte	.LLST214
	.uleb128 0x43
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x9e2
	.4byte	0x256
	.4byte	.LLST215
	.uleb128 0x46
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x9e4
	.4byte	0xd9
	.4byte	.LLST216
	.uleb128 0x44
	.4byte	.LASF256
	.byte	0x1
	.2byte	0x9e4
	.4byte	0xd9
	.4byte	.LLST217
	.uleb128 0x44
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x9e4
	.4byte	0xd9
	.4byte	.LLST218
	.uleb128 0x44
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x9e4
	.4byte	0xd9
	.4byte	.LLST219
	.uleb128 0x46
	.ascii	"d\000"
	.byte	0x1
	.2byte	0x9e5
	.4byte	0xd9
	.4byte	.LLST220
	.uleb128 0x44
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x9e5
	.4byte	0xd9
	.4byte	.LLST221
	.uleb128 0x44
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x9e5
	.4byte	0xd9
	.4byte	.LLST222
	.uleb128 0x46
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x9e6
	.4byte	0xd9
	.4byte	.LLST223
	.uleb128 0x44
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x9e6
	.4byte	0xd9
	.4byte	.LLST224
	.uleb128 0x44
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x9e6
	.4byte	0xd9
	.4byte	.LLST225
	.uleb128 0x46
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x9e7
	.4byte	0xd9
	.4byte	.LLST226
	.uleb128 0x44
	.4byte	.LASF263
	.byte	0x1
	.2byte	0x9e7
	.4byte	0xd9
	.4byte	.LLST227
	.uleb128 0x44
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x9e7
	.4byte	0xd9
	.4byte	.LLST228
	.uleb128 0x42
	.4byte	.LVL460
	.4byte	0x5a84
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x94
	.byte	0x2
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF303
	.byte	0x1
	.2byte	0x9c4
	.byte	0x1
	.4byte	0x4245
	.uleb128 0x3d
	.4byte	.LASF304
	.byte	0x1
	.2byte	0x9c4
	.4byte	0x43
	.uleb128 0x3d
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x9c4
	.4byte	0xb2a
	.uleb128 0x53
	.4byte	.LASF305
	.byte	0x1
	.2byte	0x9c6
	.4byte	0xd9
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF306
	.byte	0x1
	.2byte	0x9b8
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x42a0
	.uleb128 0x43
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x9b8
	.4byte	0xbba
	.4byte	.LLST205
	.uleb128 0x46
	.ascii	"x1\000"
	.byte	0x1
	.2byte	0x9ba
	.4byte	0xd9
	.4byte	.LLST206
	.uleb128 0x46
	.ascii	"y1\000"
	.byte	0x1
	.2byte	0x9ba
	.4byte	0xd9
	.4byte	.LLST207
	.uleb128 0x42
	.4byte	.LVL412
	.4byte	0x5a84
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 -1
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF307
	.byte	0x1
	.2byte	0x9ac
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4301
	.uleb128 0x43
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x9ac
	.4byte	0xb2a
	.4byte	.LLST202
	.uleb128 0x46
	.ascii	"x1\000"
	.byte	0x1
	.2byte	0x9ae
	.4byte	0xd9
	.4byte	.LLST203
	.uleb128 0x46
	.ascii	"y1\000"
	.byte	0x1
	.2byte	0x9ae
	.4byte	0xd9
	.4byte	.LLST204
	.uleb128 0x42
	.4byte	.LVL404
	.4byte	0x5a84
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 -1
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF308
	.byte	0x1
	.2byte	0x9a3
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x439e
	.uleb128 0x3f
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x9a3
	.4byte	0xd9
	.4byte	.LLST195
	.uleb128 0x3f
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x9a3
	.4byte	0xd9
	.4byte	.LLST196
	.uleb128 0x43
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x9a3
	.4byte	0xd9
	.4byte	.LLST197
	.uleb128 0x43
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x9a3
	.4byte	0xd9
	.4byte	.LLST198
	.uleb128 0x43
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x9a3
	.4byte	0xb2a
	.4byte	.LLST199
	.uleb128 0x46
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x9a4
	.4byte	0xd9
	.4byte	.LLST200
	.uleb128 0x46
	.ascii	"j\000"
	.byte	0x1
	.2byte	0x9a4
	.4byte	0xd9
	.4byte	.LLST201
	.uleb128 0x42
	.4byte	.LVL391
	.4byte	0x5a84
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x94
	.byte	0x2
	.byte	0
	.byte	0
	.uleb128 0x49
	.4byte	.LASF309
	.byte	0x1
	.2byte	0x99d
	.4byte	0xd9
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x43f1
	.uleb128 0x3f
	.ascii	"sx\000"
	.byte	0x1
	.2byte	0x99d
	.4byte	0xd9
	.4byte	.LLST193
	.uleb128 0x4a
	.ascii	"sy\000"
	.byte	0x1
	.2byte	0x99d
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3f
	.ascii	"dx\000"
	.byte	0x1
	.2byte	0x99d
	.4byte	0xd9
	.4byte	.LLST194
	.uleb128 0x4a
	.ascii	"dy\000"
	.byte	0x1
	.2byte	0x99d
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x54
	.ascii	"len\000"
	.byte	0x1
	.2byte	0x998
	.4byte	0xd9
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x441c
	.uleb128 0x43
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x998
	.4byte	0x43
	.4byte	.LLST192
	.byte	0
	.uleb128 0x49
	.4byte	.LASF310
	.byte	0x1
	.2byte	0x993
	.4byte	0xd9
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4455
	.uleb128 0x43
	.4byte	.LASF311
	.byte	0x1
	.2byte	0x993
	.4byte	0xd9
	.4byte	.LLST191
	.uleb128 0x48
	.4byte	.LASF312
	.byte	0x1
	.2byte	0x993
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x49
	.4byte	.LASF313
	.byte	0x1
	.2byte	0x98e
	.4byte	0xd9
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4495
	.uleb128 0x43
	.4byte	.LASF311
	.byte	0x1
	.2byte	0x98e
	.4byte	0xd9
	.4byte	.LLST189
	.uleb128 0x43
	.4byte	.LASF312
	.byte	0x1
	.2byte	0x98e
	.4byte	0xd9
	.4byte	.LLST190
	.uleb128 0x3a
	.4byte	.LVL378
	.byte	0
	.uleb128 0x54
	.ascii	"sub\000"
	.byte	0x1
	.2byte	0x989
	.4byte	0xd9
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x44ce
	.uleb128 0x43
	.4byte	.LASF311
	.byte	0x1
	.2byte	0x989
	.4byte	0xd9
	.4byte	.LLST188
	.uleb128 0x48
	.4byte	.LASF312
	.byte	0x1
	.2byte	0x989
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x54
	.ascii	"add\000"
	.byte	0x1
	.2byte	0x984
	.4byte	0xd9
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4507
	.uleb128 0x43
	.4byte	.LASF311
	.byte	0x1
	.2byte	0x984
	.4byte	0xd9
	.4byte	.LLST187
	.uleb128 0x48
	.4byte	.LASF312
	.byte	0x1
	.2byte	0x984
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x49
	.4byte	.LASF314
	.byte	0x1
	.2byte	0x97f
	.4byte	0xd9
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4540
	.uleb128 0x3f
	.ascii	"pos\000"
	.byte	0x1
	.2byte	0x97f
	.4byte	0xd9
	.4byte	.LLST186
	.uleb128 0x48
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x97f
	.4byte	0xbba
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x49
	.4byte	.LASF315
	.byte	0x1
	.2byte	0x97a
	.4byte	0xd9
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4577
	.uleb128 0x3f
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x97a
	.4byte	0xd9
	.4byte	.LLST184
	.uleb128 0x3f
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x97a
	.4byte	0xd9
	.4byte	.LLST185
	.byte	0
	.uleb128 0x49
	.4byte	.LASF316
	.byte	0x1
	.2byte	0x975
	.4byte	0xd9
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x45ae
	.uleb128 0x3f
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x975
	.4byte	0xd9
	.4byte	.LLST182
	.uleb128 0x3f
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x975
	.4byte	0xd9
	.4byte	.LLST183
	.byte	0
	.uleb128 0x49
	.4byte	.LASF317
	.byte	0x1
	.2byte	0x970
	.4byte	0xd9
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x45e5
	.uleb128 0x3f
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x970
	.4byte	0xd9
	.4byte	.LLST180
	.uleb128 0x3f
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x970
	.4byte	0xd9
	.4byte	.LLST181
	.byte	0
	.uleb128 0x49
	.4byte	.LASF318
	.byte	0x1
	.2byte	0x965
	.4byte	0x49
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x463d
	.uleb128 0x43
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x965
	.4byte	0xb2a
	.4byte	.LLST178
	.uleb128 0x46
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x967
	.4byte	0xd9
	.4byte	.LLST179
	.uleb128 0x47
	.4byte	.LASF319
	.byte	0x1
	.2byte	0x968
	.4byte	0x463d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x42
	.4byte	.LVL361
	.4byte	0x5dce
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	0x49
	.4byte	0x464d
	.uleb128 0x4
	.4byte	0x3c
	.byte	0x6
	.byte	0
	.uleb128 0x49
	.4byte	.LASF320
	.byte	0x1
	.2byte	0x95a
	.4byte	0xd9
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x46a5
	.uleb128 0x43
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x95a
	.4byte	0xb2a
	.4byte	.LLST176
	.uleb128 0x46
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x95c
	.4byte	0xd9
	.4byte	.LLST177
	.uleb128 0x47
	.4byte	.LASF319
	.byte	0x1
	.2byte	0x95d
	.4byte	0x463d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x42
	.4byte	.LVL355
	.4byte	0x5dce
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF321
	.byte	0x1
	.2byte	0x94b
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4712
	.uleb128 0x43
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x94b
	.4byte	0xb2a
	.4byte	.LLST173
	.uleb128 0x43
	.4byte	.LASF322
	.byte	0x1
	.2byte	0x94b
	.4byte	0x49
	.4byte	.LLST174
	.uleb128 0x46
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x94d
	.4byte	0xd9
	.4byte	.LLST175
	.uleb128 0x47
	.4byte	.LASF319
	.byte	0x1
	.2byte	0x94e
	.4byte	0x463d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x42
	.4byte	.LVL345
	.4byte	0x5db4
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF323
	.byte	0x1
	.2byte	0x93c
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4786
	.uleb128 0x43
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x93c
	.4byte	0xb2a
	.4byte	.LLST170
	.uleb128 0x43
	.4byte	.LASF322
	.byte	0x1
	.2byte	0x93c
	.4byte	0xd9
	.4byte	.LLST171
	.uleb128 0x46
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x93e
	.4byte	0xd9
	.4byte	.LLST172
	.uleb128 0x47
	.4byte	.LASF319
	.byte	0x1
	.2byte	0x93f
	.4byte	0x463d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x42
	.4byte	.LVL337
	.4byte	0x5db4
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF324
	.byte	0x1
	.2byte	0x937
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x47d1
	.uleb128 0x3f
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x937
	.4byte	0xd9
	.4byte	.LLST168
	.uleb128 0x4a
	.ascii	"f\000"
	.byte	0x1
	.2byte	0x937
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4a
	.ascii	"e\000"
	.byte	0x1
	.2byte	0x937
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3f
	.ascii	"d\000"
	.byte	0x1
	.2byte	0x937
	.4byte	0xc15
	.4byte	.LLST169
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF325
	.byte	0x1
	.2byte	0x932
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x481c
	.uleb128 0x3f
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x932
	.4byte	0xd9
	.4byte	.LLST166
	.uleb128 0x4a
	.ascii	"f\000"
	.byte	0x1
	.2byte	0x932
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4a
	.ascii	"e\000"
	.byte	0x1
	.2byte	0x932
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3f
	.ascii	"d\000"
	.byte	0x1
	.2byte	0x932
	.4byte	0xba3
	.4byte	.LLST167
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF326
	.byte	0x1
	.2byte	0x92d
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4867
	.uleb128 0x3f
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x92d
	.4byte	0xd9
	.4byte	.LLST164
	.uleb128 0x4a
	.ascii	"f\000"
	.byte	0x1
	.2byte	0x92d
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4a
	.ascii	"e\000"
	.byte	0x1
	.2byte	0x92d
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3f
	.ascii	"d\000"
	.byte	0x1
	.2byte	0x92d
	.4byte	0xbba
	.4byte	.LLST165
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF327
	.byte	0x1
	.2byte	0x908
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x488c
	.uleb128 0x46
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x90a
	.4byte	0xd9
	.4byte	.LLST163
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF328
	.byte	0x1
	.2byte	0x8f0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x48f5
	.uleb128 0x46
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x8f2
	.4byte	0xd9
	.4byte	.LLST158
	.uleb128 0x32
	.4byte	.LBB143
	.4byte	.LBE143-.LBB143
	.uleb128 0x44
	.4byte	.LASF329
	.byte	0x1
	.2byte	0x8f8
	.4byte	0xb2a
	.4byte	.LLST159
	.uleb128 0x46
	.ascii	"R\000"
	.byte	0x1
	.2byte	0x8fb
	.4byte	0xb20
	.4byte	.LLST160
	.uleb128 0x46
	.ascii	"G\000"
	.byte	0x1
	.2byte	0x8fc
	.4byte	0xb20
	.4byte	.LLST161
	.uleb128 0x46
	.ascii	"B\000"
	.byte	0x1
	.2byte	0x8fd
	.4byte	0xb20
	.4byte	.LLST162
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF330
	.byte	0x1
	.2byte	0x8e7
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4925
	.uleb128 0x43
	.4byte	.LASF331
	.byte	0x1
	.2byte	0x8e7
	.4byte	0xbba
	.4byte	.LLST157
	.uleb128 0x39
	.4byte	.LVL314
	.4byte	0x5b69
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF332
	.byte	0x1
	.2byte	0x8df
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x496d
	.uleb128 0x43
	.4byte	.LASF331
	.byte	0x1
	.2byte	0x8df
	.4byte	0xbba
	.4byte	.LLST155
	.uleb128 0x3f
	.ascii	"pal\000"
	.byte	0x1
	.2byte	0x8df
	.4byte	0xbba
	.4byte	.LLST156
	.uleb128 0x42
	.4byte	.LVL312
	.4byte	0x57ff
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF333
	.byte	0x1
	.2byte	0x8d6
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x49bd
	.uleb128 0x43
	.4byte	.LASF331
	.byte	0x1
	.2byte	0x8d6
	.4byte	0xbba
	.4byte	.LLST153
	.uleb128 0x3f
	.ascii	"pal\000"
	.byte	0x1
	.2byte	0x8d6
	.4byte	0xbba
	.4byte	.LLST154
	.uleb128 0x39
	.4byte	.LVL306
	.4byte	0x5b69
	.uleb128 0x42
	.4byte	.LVL307
	.4byte	0x57ff
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF334
	.byte	0x1
	.2byte	0x8cf
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a2c
	.uleb128 0x43
	.4byte	.LASF331
	.byte	0x1
	.2byte	0x8cf
	.4byte	0xbba
	.4byte	.LLST151
	.uleb128 0x3f
	.ascii	"pal\000"
	.byte	0x1
	.2byte	0x8cf
	.4byte	0xbba
	.4byte	.LLST152
	.uleb128 0x37
	.4byte	.LVL300
	.4byte	0x4d4d
	.4byte	0x4a07
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL301
	.4byte	0x4d80
	.4byte	0x4a1b
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x42
	.4byte	.LVL302
	.4byte	0x4d14
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF335
	.byte	0x1
	.2byte	0x8b1
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b9b
	.uleb128 0x43
	.4byte	.LASF336
	.byte	0x1
	.2byte	0x8b1
	.4byte	0xd9
	.4byte	.LLST135
	.uleb128 0x43
	.4byte	.LASF337
	.byte	0x1
	.2byte	0x8b1
	.4byte	0xd9
	.4byte	.LLST136
	.uleb128 0x53
	.4byte	.LASF338
	.byte	0x1
	.2byte	0x8b3
	.4byte	0xd9
	.uleb128 0x46
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x8b3
	.4byte	0xd9
	.4byte	.LLST137
	.uleb128 0x46
	.ascii	"g\000"
	.byte	0x1
	.2byte	0x8b3
	.4byte	0xd9
	.4byte	.LLST138
	.uleb128 0x46
	.ascii	"b\000"
	.byte	0x1
	.2byte	0x8b3
	.4byte	0xd9
	.4byte	.LLST139
	.uleb128 0x44
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x8b3
	.4byte	0xd9
	.4byte	.LLST140
	.uleb128 0x46
	.ascii	"Src\000"
	.byte	0x1
	.2byte	0x8b4
	.4byte	0xbba
	.4byte	.LLST141
	.uleb128 0x44
	.4byte	.LASF339
	.byte	0x1
	.2byte	0x8b5
	.4byte	0x4b9b
	.4byte	.LLST142
	.uleb128 0x34
	.4byte	0x4c69
	.4byte	.LBB128
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x8b7
	.4byte	0x4afe
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x55
	.4byte	0x4c76
	.4byte	.LLST143
	.uleb128 0x55
	.4byte	0x4c80
	.4byte	.LLST144
	.uleb128 0x55
	.4byte	0x4c8c
	.4byte	.LLST145
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0x4ba1
	.4byte	.LBB136
	.4byte	.Ldebug_ranges0+0x28
	.byte	0x1
	.2byte	0x8cc
	.4byte	0x4b8b
	.uleb128 0x35
	.4byte	0x4bae
	.4byte	.LLST146
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0x28
	.uleb128 0x55
	.4byte	0x4bba
	.4byte	.LLST147
	.uleb128 0x33
	.4byte	0x4bc4
	.uleb128 0x33
	.4byte	0x4bce
	.uleb128 0x33
	.4byte	0x4bd8
	.uleb128 0x55
	.4byte	0x4be4
	.4byte	.LLST148
	.uleb128 0x33
	.4byte	0x4bf0
	.uleb128 0x56
	.4byte	0x4bfc
	.4byte	.LBB138
	.4byte	.LBE138-.LBB138
	.uleb128 0x55
	.4byte	0x4bfd
	.4byte	.LLST149
	.uleb128 0x55
	.4byte	0x4c09
	.4byte	.LLST150
	.uleb128 0x57
	.4byte	0x4c99
	.4byte	.LBB139
	.4byte	.LBE139-.LBB139
	.byte	0x1
	.2byte	0x8a5
	.uleb128 0x42
	.4byte	.LVL297
	.4byte	0x4c17
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	CurrentPalette
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL274
	.uleb128 0x3a
	.4byte	.LVL277
	.uleb128 0x3a
	.4byte	.LVL279
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb65
	.uleb128 0x58
	.4byte	.LASF435
	.byte	0x1
	.2byte	0x88b
	.byte	0x1
	.4byte	0x4c17
	.uleb128 0x3d
	.4byte	.LASF340
	.byte	0x1
	.2byte	0x88b
	.4byte	0xb3a
	.uleb128 0x2f
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x88d
	.4byte	0xd9
	.uleb128 0x2f
	.ascii	"g\000"
	.byte	0x1
	.2byte	0x88d
	.4byte	0xd9
	.uleb128 0x2f
	.ascii	"b\000"
	.byte	0x1
	.2byte	0x88d
	.4byte	0xd9
	.uleb128 0x53
	.4byte	.LASF338
	.byte	0x1
	.2byte	0x88d
	.4byte	0xd9
	.uleb128 0x53
	.4byte	.LASF341
	.byte	0x1
	.2byte	0x88d
	.4byte	0xd9
	.uleb128 0x53
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x88d
	.4byte	0xd9
	.uleb128 0x59
	.uleb128 0x2f
	.ascii	"Src\000"
	.byte	0x1
	.2byte	0x891
	.4byte	0x4b9b
	.uleb128 0x53
	.4byte	.LASF342
	.byte	0x1
	.2byte	0x892
	.4byte	0xbba
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF343
	.byte	0x1
	.2byte	0x87e
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c69
	.uleb128 0x48
	.4byte	.LASF344
	.byte	0x1
	.2byte	0x87e
	.4byte	0xbba
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x44
	.4byte	.LASF345
	.byte	0x1
	.2byte	0x880
	.4byte	0xbba
	.4byte	.LLST132
	.uleb128 0x46
	.ascii	"To\000"
	.byte	0x1
	.2byte	0x880
	.4byte	0xbba
	.4byte	.LLST133
	.uleb128 0x46
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x883
	.4byte	0xd9
	.4byte	.LLST134
	.byte	0
	.uleb128 0x5a
	.4byte	.LASF436
	.byte	0x1
	.2byte	0x873
	.byte	0x1
	.4byte	0x4c99
	.uleb128 0x2f
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x875
	.4byte	0xd9
	.uleb128 0x2f
	.ascii	"Src\000"
	.byte	0x1
	.2byte	0x876
	.4byte	0xbba
	.uleb128 0x53
	.4byte	.LASF342
	.byte	0x1
	.2byte	0x877
	.4byte	0xbba
	.byte	0
	.uleb128 0x5b
	.4byte	.LASF437
	.byte	0x1
	.2byte	0x868
	.byte	0x3
	.uleb128 0x4c
	.4byte	.LASF346
	.byte	0x1
	.2byte	0x857
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d14
	.uleb128 0x5c
	.4byte	.LASF303
	.byte	0x1
	.2byte	0x85a
	.4byte	0xd9
	.4byte	0x4cca
	.uleb128 0x5d
	.byte	0
	.uleb128 0x39
	.4byte	.LVL425
	.4byte	0x5b69
	.uleb128 0x37
	.4byte	.LVL426
	.4byte	0x4213
	.4byte	0x4cf1
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC51
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0xffff
	.byte	0
	.uleb128 0x37
	.4byte	.LVL427
	.4byte	0x5b7b
	.4byte	0x4d04
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x49
	.byte	0
	.uleb128 0x42
	.4byte	.LVL428
	.4byte	0x518d
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF347
	.byte	0x1
	.2byte	0x84c
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d47
	.uleb128 0x4a
	.ascii	"pic\000"
	.byte	0x1
	.2byte	0x84c
	.4byte	0x4d47
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x46
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x84e
	.4byte	0xd9
	.4byte	.LLST131
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3c
	.uleb128 0x3e
	.4byte	.LASF348
	.byte	0x1
	.2byte	0x843
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d80
	.uleb128 0x4a
	.ascii	"pic\000"
	.byte	0x1
	.2byte	0x843
	.4byte	0x4d47
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x46
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x845
	.4byte	0xd9
	.4byte	.LLST130
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF349
	.byte	0x1
	.2byte	0x839
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4db3
	.uleb128 0x4a
	.ascii	"pal\000"
	.byte	0x1
	.2byte	0x839
	.4byte	0x4d47
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x46
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x83b
	.4byte	0xd9
	.4byte	.LLST129
	.byte	0
	.uleb128 0x5e
	.4byte	.LASF365
	.byte	0x1
	.2byte	0x834
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3e
	.4byte	.LASF350
	.byte	0x1
	.2byte	0x827
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e14
	.uleb128 0x4a
	.ascii	"gfx\000"
	.byte	0x1
	.2byte	0x827
	.4byte	0x4d47
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x43
	.4byte	.LASF351
	.byte	0x1
	.2byte	0x827
	.4byte	0xd9
	.4byte	.LLST127
	.uleb128 0x46
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x829
	.4byte	0xd9
	.4byte	.LLST128
	.uleb128 0x53
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x82a
	.4byte	0xd9
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF352
	.byte	0x1
	.2byte	0x81f
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e47
	.uleb128 0x4a
	.ascii	"pal\000"
	.byte	0x1
	.2byte	0x81f
	.4byte	0x4d47
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x46
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x821
	.4byte	0xd9
	.4byte	.LLST126
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF353
	.byte	0x1
	.2byte	0x80a
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4eef
	.uleb128 0x43
	.4byte	.LASF354
	.byte	0x1
	.2byte	0x80a
	.4byte	0xd9
	.4byte	.LLST120
	.uleb128 0x43
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x80a
	.4byte	0xb70
	.4byte	.LLST121
	.uleb128 0x43
	.4byte	.LASF355
	.byte	0x1
	.2byte	0x80a
	.4byte	0xb70
	.4byte	.LLST122
	.uleb128 0x43
	.4byte	.LASF356
	.byte	0x1
	.2byte	0x80a
	.4byte	0xb70
	.4byte	.LLST123
	.uleb128 0x46
	.ascii	"pa\000"
	.byte	0x1
	.2byte	0x80d
	.4byte	0xb70
	.4byte	.LLST124
	.uleb128 0x2f
	.ascii	"pb\000"
	.byte	0x1
	.2byte	0x80d
	.4byte	0xb70
	.uleb128 0x2f
	.ascii	"pc\000"
	.byte	0x1
	.2byte	0x80d
	.4byte	0xb70
	.uleb128 0x46
	.ascii	"pd\000"
	.byte	0x1
	.2byte	0x80d
	.4byte	0xb70
	.4byte	.LLST125
	.uleb128 0x3a
	.4byte	.LVL233
	.uleb128 0x41
	.4byte	.LVL234
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x41
	.4byte	.LVL239
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x41
	.4byte	.LVL240
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF357
	.byte	0x1
	.2byte	0x7fc
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f2f
	.uleb128 0x4a
	.ascii	"sp\000"
	.byte	0x1
	.2byte	0x7fc
	.4byte	0x4f2f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3f
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x7fc
	.4byte	0xd9
	.4byte	.LLST118
	.uleb128 0x3f
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x7fc
	.4byte	0xd9
	.4byte	.LLST119
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xd35
	.uleb128 0x3b
	.4byte	.LASF358
	.byte	0x1
	.2byte	0x7ed
	.byte	0x1
	.4byte	0x4f8b
	.uleb128 0x3c
	.ascii	"spr\000"
	.byte	0x1
	.2byte	0x7ed
	.4byte	0xd9
	.uleb128 0x3d
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x7ed
	.4byte	0xd9
	.uleb128 0x3d
	.4byte	.LASF359
	.byte	0x1
	.2byte	0x7ed
	.4byte	0xd9
	.uleb128 0x3c
	.ascii	"ani\000"
	.byte	0x1
	.2byte	0x7ed
	.4byte	0xd9
	.uleb128 0x53
	.4byte	.LASF360
	.byte	0x1
	.2byte	0x7ef
	.4byte	0xd9
	.uleb128 0x53
	.4byte	.LASF351
	.byte	0x1
	.2byte	0x7f0
	.4byte	0xd9
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF361
	.byte	0x1
	.2byte	0x7e0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4fe8
	.uleb128 0x3f
	.ascii	"spr\000"
	.byte	0x1
	.2byte	0x7e0
	.4byte	0xd9
	.4byte	.LLST109
	.uleb128 0x43
	.4byte	.LASF351
	.byte	0x1
	.2byte	0x7e0
	.4byte	0xd9
	.4byte	.LLST110
	.uleb128 0x43
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x7e0
	.4byte	0xd9
	.4byte	.LLST111
	.uleb128 0x50
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x7e2
	.4byte	0xd9
	.byte	0xf0
	.uleb128 0x50
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x7e2
	.4byte	0xd9
	.byte	0xa0
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF362
	.byte	0x1
	.2byte	0x7d3
	.byte	0x1
	.4byte	0x502e
	.uleb128 0x3c
	.ascii	"spr\000"
	.byte	0x1
	.2byte	0x7d3
	.4byte	0xd9
	.uleb128 0x3d
	.4byte	.LASF351
	.byte	0x1
	.2byte	0x7d3
	.4byte	0xd9
	.uleb128 0x3d
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x7d3
	.4byte	0xd9
	.uleb128 0x2f
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x7d5
	.4byte	0xd9
	.uleb128 0x2f
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x7d5
	.4byte	0xd9
	.byte	0
	.uleb128 0x4c
	.4byte	.LASF363
	.byte	0x1
	.2byte	0x7c5
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5055
	.uleb128 0x44
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x7c7
	.4byte	0xd9
	.4byte	.LLST105
	.byte	0
	.uleb128 0x4c
	.4byte	.LASF364
	.byte	0x1
	.2byte	0x7b7
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x508f
	.uleb128 0x44
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x7b9
	.4byte	0xb2a
	.4byte	.LLST104
	.uleb128 0x47
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x7ba
	.4byte	0xbba
	.uleb128 0x6
	.byte	0x3
	.4byte	sprites
	.byte	0x9f
	.byte	0
	.uleb128 0x5e
	.4byte	.LASF366
	.byte	0x1
	.2byte	0x7a7
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3e
	.4byte	.LASF367
	.byte	0x1
	.2byte	0x79c
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x50ef
	.uleb128 0x43
	.4byte	.LASF368
	.byte	0x1
	.2byte	0x79c
	.4byte	0xd9
	.4byte	.LLST102
	.uleb128 0x46
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x79e
	.4byte	0xd9
	.4byte	.LLST103
	.uleb128 0x39
	.4byte	.LVL199
	.4byte	0x5b69
	.uleb128 0x42
	.4byte	.LVL200
	.4byte	0x5b7b
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF369
	.byte	0x1
	.2byte	0x791
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x513d
	.uleb128 0x43
	.4byte	.LASF368
	.byte	0x1
	.2byte	0x791
	.4byte	0xd9
	.4byte	.LLST100
	.uleb128 0x46
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x793
	.4byte	0xd9
	.4byte	.LLST101
	.uleb128 0x39
	.4byte	.LVL194
	.4byte	0x5b69
	.uleb128 0x42
	.4byte	.LVL195
	.4byte	0x5b7b
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF370
	.byte	0x1
	.2byte	0x783
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x518d
	.uleb128 0x43
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x783
	.4byte	0xb3a
	.4byte	.LLST97
	.uleb128 0x44
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x785
	.4byte	0xb3a
	.4byte	.LLST98
	.uleb128 0x44
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x786
	.4byte	0xb5b
	.4byte	.LLST99
	.uleb128 0x39
	.4byte	.LVL191
	.4byte	0x5b69
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF371
	.byte	0x1
	.2byte	0x774
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51dd
	.uleb128 0x43
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x774
	.4byte	0xb3a
	.4byte	.LLST94
	.uleb128 0x44
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x776
	.4byte	0xb3a
	.4byte	.LLST95
	.uleb128 0x44
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x777
	.4byte	0xb5b
	.4byte	.LLST96
	.uleb128 0x39
	.4byte	.LVL181
	.4byte	0x5b69
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF372
	.byte	0x1
	.2byte	0x767
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x521f
	.uleb128 0x4a
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x767
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2f
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x769
	.4byte	0xd9
	.uleb128 0x50
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x769
	.4byte	0xd9
	.byte	0
	.uleb128 0x2f
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x76a
	.4byte	0xd9
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF373
	.byte	0x1
	.2byte	0x757
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x52c8
	.uleb128 0x43
	.4byte	.LASF374
	.byte	0x1
	.2byte	0x757
	.4byte	0xd9
	.4byte	.LLST80
	.uleb128 0x3f
	.ascii	"top\000"
	.byte	0x1
	.2byte	0x757
	.4byte	0xd9
	.4byte	.LLST81
	.uleb128 0x43
	.4byte	.LASF375
	.byte	0x1
	.2byte	0x757
	.4byte	0x49
	.4byte	.LLST82
	.uleb128 0x43
	.4byte	.LASF376
	.byte	0x1
	.2byte	0x757
	.4byte	0x256
	.4byte	.LLST83
	.uleb128 0x43
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x757
	.4byte	0x256
	.4byte	.LLST84
	.uleb128 0x46
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x759
	.4byte	0xd9
	.4byte	.LLST85
	.uleb128 0x46
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x759
	.4byte	0xd9
	.4byte	.LLST86
	.uleb128 0x44
	.4byte	.LASF378
	.byte	0x1
	.2byte	0x75a
	.4byte	0x49
	.4byte	.LLST87
	.uleb128 0x42
	.4byte	.LVL153
	.4byte	0x5ac3
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF379
	.byte	0x1
	.2byte	0x74d
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5364
	.uleb128 0x43
	.4byte	.LASF374
	.byte	0x1
	.2byte	0x74d
	.4byte	0xd9
	.4byte	.LLST88
	.uleb128 0x3f
	.ascii	"top\000"
	.byte	0x1
	.2byte	0x74d
	.4byte	0xd9
	.4byte	.LLST89
	.uleb128 0x3f
	.ascii	"str\000"
	.byte	0x1
	.2byte	0x74d
	.4byte	0x43
	.4byte	.LLST90
	.uleb128 0x43
	.4byte	.LASF376
	.byte	0x1
	.2byte	0x74d
	.4byte	0x256
	.4byte	.LLST91
	.uleb128 0x43
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x74d
	.4byte	0x256
	.4byte	.LLST92
	.uleb128 0x46
	.ascii	"pos\000"
	.byte	0x1
	.2byte	0x74f
	.4byte	0xd9
	.4byte	.LLST93
	.uleb128 0x42
	.4byte	.LVL169
	.4byte	0x521f
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x94
	.byte	0x2
	.byte	0
	.byte	0
	.uleb128 0x4f
	.4byte	.LASF381
	.byte	0x1
	.2byte	0x747
	.4byte	0x5391
	.uleb128 0x3c
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x747
	.4byte	0xd9
	.uleb128 0x3c
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x747
	.4byte	0xd9
	.uleb128 0x3d
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x747
	.4byte	0x256
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF382
	.byte	0x1
	.2byte	0x733
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x543a
	.uleb128 0x43
	.4byte	.LASF374
	.byte	0x1
	.2byte	0x733
	.4byte	0xd9
	.4byte	.LLST66
	.uleb128 0x3f
	.ascii	"top\000"
	.byte	0x1
	.2byte	0x733
	.4byte	0xd9
	.4byte	.LLST67
	.uleb128 0x43
	.4byte	.LASF375
	.byte	0x1
	.2byte	0x733
	.4byte	0x49
	.4byte	.LLST68
	.uleb128 0x43
	.4byte	.LASF376
	.byte	0x1
	.2byte	0x733
	.4byte	0x256
	.4byte	.LLST69
	.uleb128 0x43
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x733
	.4byte	0x256
	.4byte	.LLST70
	.uleb128 0x46
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x735
	.4byte	0xd9
	.4byte	.LLST71
	.uleb128 0x46
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x735
	.4byte	0xd9
	.4byte	.LLST72
	.uleb128 0x44
	.4byte	.LASF378
	.byte	0x1
	.2byte	0x736
	.4byte	0x49
	.4byte	.LLST73
	.uleb128 0x42
	.4byte	.LVL128
	.4byte	0x5a84
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF383
	.byte	0x1
	.2byte	0x729
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x54d6
	.uleb128 0x43
	.4byte	.LASF374
	.byte	0x1
	.2byte	0x729
	.4byte	0xd9
	.4byte	.LLST74
	.uleb128 0x3f
	.ascii	"top\000"
	.byte	0x1
	.2byte	0x729
	.4byte	0xd9
	.4byte	.LLST75
	.uleb128 0x3f
	.ascii	"str\000"
	.byte	0x1
	.2byte	0x729
	.4byte	0x43
	.4byte	.LLST76
	.uleb128 0x43
	.4byte	.LASF376
	.byte	0x1
	.2byte	0x729
	.4byte	0x256
	.4byte	.LLST77
	.uleb128 0x43
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x729
	.4byte	0x256
	.4byte	.LLST78
	.uleb128 0x46
	.ascii	"pos\000"
	.byte	0x1
	.2byte	0x72b
	.4byte	0xd9
	.4byte	.LLST79
	.uleb128 0x42
	.4byte	.LVL144
	.4byte	0x5391
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x94
	.byte	0x2
	.byte	0
	.byte	0
	.uleb128 0x4f
	.4byte	.LASF384
	.byte	0x1
	.2byte	0x723
	.4byte	0x5503
	.uleb128 0x3c
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x723
	.4byte	0xd9
	.uleb128 0x3c
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x723
	.4byte	0xd9
	.uleb128 0x3d
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x723
	.4byte	0x256
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF385
	.byte	0x1
	.2byte	0x707
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x554a
	.uleb128 0x43
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x707
	.4byte	0xb2a
	.4byte	.LLST63
	.uleb128 0x43
	.4byte	.LASF386
	.byte	0x1
	.2byte	0x707
	.4byte	0x243
	.4byte	.LLST64
	.uleb128 0x44
	.4byte	.LASF387
	.byte	0x1
	.2byte	0x709
	.4byte	0x243
	.4byte	.LLST65
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF388
	.byte	0x1
	.2byte	0x6fe
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5571
	.uleb128 0x43
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x6fe
	.4byte	0xb2a
	.4byte	.LLST62
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF389
	.byte	0x1
	.2byte	0x6f3
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5598
	.uleb128 0x43
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x6f3
	.4byte	0xb2a
	.4byte	.LLST61
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF390
	.byte	0x1
	.2byte	0x6e9
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x55bd
	.uleb128 0x48
	.4byte	.LASF391
	.byte	0x1
	.2byte	0x6e9
	.4byte	0xb2a
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF392
	.byte	0x1
	.2byte	0x6d3
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x56de
	.uleb128 0x3f
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x6d3
	.4byte	0xb2a
	.4byte	.LLST49
	.uleb128 0x3f
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x6d3
	.4byte	0xb2a
	.4byte	.LLST50
	.uleb128 0x43
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x6d4
	.4byte	0xb2a
	.4byte	.LLST51
	.uleb128 0x43
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x6d4
	.4byte	0xb2a
	.4byte	.LLST52
	.uleb128 0x43
	.4byte	.LASF393
	.byte	0x1
	.2byte	0x6d5
	.4byte	0xb2a
	.4byte	.LLST53
	.uleb128 0x43
	.4byte	.LASF394
	.byte	0x1
	.2byte	0x6d5
	.4byte	0xb2a
	.4byte	.LLST54
	.uleb128 0x43
	.4byte	.LASF395
	.byte	0x1
	.2byte	0x6d6
	.4byte	0xb2a
	.4byte	.LLST55
	.uleb128 0x43
	.4byte	.LASF396
	.byte	0x1
	.2byte	0x6d6
	.4byte	0xb2a
	.4byte	.LLST56
	.uleb128 0x43
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x6d7
	.4byte	0xbba
	.4byte	.LLST57
	.uleb128 0x46
	.ascii	"cx\000"
	.byte	0x1
	.2byte	0x6d8
	.4byte	0xb2a
	.4byte	.LLST58
	.uleb128 0x2f
	.ascii	"cy\000"
	.byte	0x1
	.2byte	0x6d8
	.4byte	0xb2a
	.uleb128 0x47
	.4byte	.LASF397
	.byte	0x1
	.2byte	0x6d9
	.4byte	0xb2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x47
	.4byte	.LASF398
	.byte	0x1
	.2byte	0x6da
	.4byte	0xb2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x44
	.4byte	.LASF399
	.byte	0x1
	.2byte	0x6db
	.4byte	0xb2a
	.4byte	.LLST59
	.uleb128 0x53
	.4byte	.LASF400
	.byte	0x1
	.2byte	0x6dc
	.4byte	0xb2a
	.uleb128 0x44
	.4byte	.LASF401
	.byte	0x1
	.2byte	0x6dd
	.4byte	0xb2a
	.4byte	.LLST60
	.uleb128 0x42
	.4byte	.LVL111
	.4byte	0x5ac3
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x6
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF402
	.byte	0x1
	.2byte	0x6bc
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x57ff
	.uleb128 0x3f
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x6bc
	.4byte	0xb2a
	.4byte	.LLST37
	.uleb128 0x3f
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x6bc
	.4byte	0xb2a
	.4byte	.LLST38
	.uleb128 0x43
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x6bd
	.4byte	0xb2a
	.4byte	.LLST39
	.uleb128 0x43
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x6bd
	.4byte	0xb2a
	.4byte	.LLST40
	.uleb128 0x43
	.4byte	.LASF393
	.byte	0x1
	.2byte	0x6be
	.4byte	0xb2a
	.4byte	.LLST41
	.uleb128 0x43
	.4byte	.LASF394
	.byte	0x1
	.2byte	0x6be
	.4byte	0xb2a
	.4byte	.LLST42
	.uleb128 0x43
	.4byte	.LASF395
	.byte	0x1
	.2byte	0x6bf
	.4byte	0xb2a
	.4byte	.LLST43
	.uleb128 0x43
	.4byte	.LASF396
	.byte	0x1
	.2byte	0x6bf
	.4byte	0xb2a
	.4byte	.LLST44
	.uleb128 0x43
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x6c0
	.4byte	0xbba
	.4byte	.LLST45
	.uleb128 0x46
	.ascii	"cx\000"
	.byte	0x1
	.2byte	0x6c1
	.4byte	0xb2a
	.4byte	.LLST46
	.uleb128 0x2f
	.ascii	"cy\000"
	.byte	0x1
	.2byte	0x6c1
	.4byte	0xb2a
	.uleb128 0x47
	.4byte	.LASF397
	.byte	0x1
	.2byte	0x6c2
	.4byte	0xb2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x47
	.4byte	.LASF398
	.byte	0x1
	.2byte	0x6c3
	.4byte	0xb2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x44
	.4byte	.LASF399
	.byte	0x1
	.2byte	0x6c4
	.4byte	0xb2a
	.4byte	.LLST47
	.uleb128 0x53
	.4byte	.LASF400
	.byte	0x1
	.2byte	0x6c5
	.4byte	0xb2a
	.uleb128 0x44
	.4byte	.LASF401
	.byte	0x1
	.2byte	0x6c6
	.4byte	0xb2a
	.4byte	.LLST48
	.uleb128 0x42
	.4byte	.LVL92
	.4byte	0x5a15
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x6
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF403
	.byte	0x1
	.2byte	0x6b7
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5834
	.uleb128 0x43
	.4byte	.LASF404
	.byte	0x1
	.2byte	0x6b7
	.4byte	0xbba
	.4byte	.LLST35
	.uleb128 0x46
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x6b8
	.4byte	0xbba
	.4byte	.LLST36
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF405
	.byte	0x1
	.2byte	0x6a7
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5854
	.uleb128 0x39
	.4byte	.LVL69
	.4byte	0x5b69
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF406
	.byte	0x1
	.2byte	0x697
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x58a1
	.uleb128 0x43
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x697
	.4byte	0xbba
	.4byte	.LLST32
	.uleb128 0x46
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x699
	.4byte	0xd9
	.4byte	.LLST33
	.uleb128 0x46
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x699
	.4byte	0xd9
	.4byte	.LLST34
	.uleb128 0x2f
	.ascii	"t\000"
	.byte	0x1
	.2byte	0x69a
	.4byte	0xb2a
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF407
	.byte	0x1
	.2byte	0x689
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x595b
	.uleb128 0x3f
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x689
	.4byte	0xb2a
	.4byte	.LLST24
	.uleb128 0x3f
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x689
	.4byte	0xb2a
	.4byte	.LLST25
	.uleb128 0x43
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x689
	.4byte	0xb2a
	.4byte	.LLST26
	.uleb128 0x43
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x689
	.4byte	0xb2a
	.4byte	.LLST27
	.uleb128 0x48
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x689
	.4byte	0xbba
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii	"cx\000"
	.byte	0x1
	.2byte	0x68a
	.4byte	0xb2a
	.4byte	.LLST28
	.uleb128 0x46
	.ascii	"cy\000"
	.byte	0x1
	.2byte	0x68a
	.4byte	0xb2a
	.4byte	.LLST29
	.uleb128 0x44
	.4byte	.LASF397
	.byte	0x1
	.2byte	0x68b
	.4byte	0xb2a
	.4byte	.LLST30
	.uleb128 0x44
	.4byte	.LASF399
	.byte	0x1
	.2byte	0x68c
	.4byte	0xb2a
	.4byte	.LLST31
	.uleb128 0x42
	.4byte	.LVL64
	.4byte	0x5ac3
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x6
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF408
	.byte	0x1
	.2byte	0x67c
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a15
	.uleb128 0x3f
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x67c
	.4byte	0xb2a
	.4byte	.LLST16
	.uleb128 0x3f
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x67c
	.4byte	0xb2a
	.4byte	.LLST17
	.uleb128 0x43
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x67c
	.4byte	0xb2a
	.4byte	.LLST18
	.uleb128 0x43
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x67c
	.4byte	0xb2a
	.4byte	.LLST19
	.uleb128 0x48
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x67c
	.4byte	0xbba
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.ascii	"cx\000"
	.byte	0x1
	.2byte	0x67d
	.4byte	0xb2a
	.4byte	.LLST20
	.uleb128 0x46
	.ascii	"cy\000"
	.byte	0x1
	.2byte	0x67d
	.4byte	0xb2a
	.4byte	.LLST21
	.uleb128 0x44
	.4byte	.LASF397
	.byte	0x1
	.2byte	0x67e
	.4byte	0xb2a
	.4byte	.LLST22
	.uleb128 0x44
	.4byte	.LASF399
	.byte	0x1
	.2byte	0x67f
	.4byte	0xb2a
	.4byte	.LLST23
	.uleb128 0x42
	.4byte	.LVL53
	.4byte	0x5a15
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x6
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF409
	.byte	0x1
	.2byte	0x65d
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a84
	.uleb128 0x3f
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x65d
	.4byte	0xd9
	.4byte	.LLST11
	.uleb128 0x3f
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x65d
	.4byte	0xd9
	.4byte	.LLST12
	.uleb128 0x3f
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x65d
	.4byte	0x256
	.4byte	.LLST13
	.uleb128 0x44
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x65f
	.4byte	0xb2a
	.4byte	.LLST14
	.uleb128 0x44
	.4byte	.LASF410
	.byte	0x1
	.2byte	0x662
	.4byte	0xb2a
	.4byte	.LLST15
	.uleb128 0x47
	.4byte	.LASF411
	.byte	0x1
	.2byte	0x665
	.4byte	0xbba
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF412
	.byte	0x1
	.2byte	0x658
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ac3
	.uleb128 0x3f
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x658
	.4byte	0xd9
	.4byte	.LLST9
	.uleb128 0x3f
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x658
	.4byte	0xd9
	.4byte	.LLST10
	.uleb128 0x4a
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x658
	.4byte	0x256
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF413
	.byte	0x1
	.2byte	0x653
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b02
	.uleb128 0x3f
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x653
	.4byte	0xd9
	.4byte	.LLST7
	.uleb128 0x3f
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x653
	.4byte	0xd9
	.4byte	.LLST8
	.uleb128 0x4a
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x653
	.4byte	0x256
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF414
	.byte	0x1
	.2byte	0x635
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b69
	.uleb128 0x43
	.4byte	.LASF415
	.byte	0x1
	.2byte	0x635
	.4byte	0xb20
	.4byte	.LLST2
	.uleb128 0x43
	.4byte	.LASF416
	.byte	0x1
	.2byte	0x635
	.4byte	0x2b0
	.4byte	.LLST3
	.uleb128 0x43
	.4byte	.LASF417
	.byte	0x1
	.2byte	0x635
	.4byte	0x2b0
	.4byte	.LLST4
	.uleb128 0x43
	.4byte	.LASF418
	.byte	0x1
	.2byte	0x635
	.4byte	0xb3a
	.4byte	.LLST5
	.uleb128 0x43
	.4byte	.LASF419
	.byte	0x1
	.2byte	0x635
	.4byte	0xb3a
	.4byte	.LLST6
	.byte	0
	.uleb128 0x5e
	.4byte	.LASF420
	.byte	0x1
	.2byte	0x62f
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3e
	.4byte	.LASF421
	.byte	0x1
	.2byte	0x627
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5bd5
	.uleb128 0x43
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x627
	.4byte	0xb3a
	.4byte	.LLST0
	.uleb128 0x46
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x629
	.4byte	0xd9
	.4byte	.LLST1
	.uleb128 0x32
	.4byte	.LBB120
	.4byte	.LBE120-.LBB120
	.uleb128 0x5c
	.4byte	.LASF420
	.byte	0x1
	.2byte	0x62c
	.4byte	0xd9
	.4byte	0x5bca
	.uleb128 0x5d
	.byte	0
	.uleb128 0x39
	.4byte	.LVL5
	.4byte	0x5b69
	.byte	0
	.byte	0
	.uleb128 0x5f
	.4byte	0x4fe8
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c10
	.uleb128 0x35
	.4byte	0x4ff5
	.4byte	.LLST106
	.uleb128 0x35
	.4byte	0x5001
	.4byte	.LLST107
	.uleb128 0x35
	.4byte	0x500d
	.4byte	.LLST108
	.uleb128 0x60
	.4byte	0x5019
	.byte	0xf0
	.uleb128 0x60
	.4byte	0x5023
	.byte	0xa0
	.byte	0
	.uleb128 0x5f
	.4byte	0x4f35
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c5a
	.uleb128 0x35
	.4byte	0x4f42
	.4byte	.LLST112
	.uleb128 0x35
	.4byte	0x4f4e
	.4byte	.LLST113
	.uleb128 0x35
	.4byte	0x4f5a
	.4byte	.LLST114
	.uleb128 0x35
	.4byte	0x4f66
	.4byte	.LLST115
	.uleb128 0x55
	.4byte	0x4f72
	.4byte	.LLST116
	.uleb128 0x55
	.4byte	0x4f7e
	.4byte	.LLST117
	.byte	0
	.uleb128 0x5f
	.4byte	0x4213
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5cf1
	.uleb128 0x35
	.4byte	0x4220
	.4byte	.LLST208
	.uleb128 0x35
	.4byte	0x422c
	.4byte	.LLST209
	.uleb128 0x55
	.4byte	0x4238
	.4byte	.LLST210
	.uleb128 0x61
	.4byte	0x4213
	.4byte	.LBB146
	.4byte	.LBE146-.LBB146
	.4byte	0x5cb3
	.uleb128 0x62
	.4byte	0x4220
	.uleb128 0x62
	.4byte	0x422c
	.uleb128 0x32
	.4byte	.LBB147
	.4byte	.LBE147-.LBB147
	.uleb128 0x33
	.4byte	0x5c7f
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL423
	.4byte	0x42a0
	.4byte	0x5cc7
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x42
	.4byte	.LVL424
	.4byte	0x543a
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC56
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x4f
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5f
	.4byte	0x3d28
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d21
	.uleb128 0x63
	.4byte	0x3d35
	.uleb128 0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x33
	.4byte	0x3d3f
	.uleb128 0x60
	.4byte	0x3d49
	.byte	0
	.uleb128 0x33
	.4byte	0x3d53
	.byte	0
	.uleb128 0x5f
	.4byte	0x3b64
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d43
	.uleb128 0x63
	.4byte	0x3b71
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x63
	.4byte	0x3b7d
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x5f
	.4byte	0x1c90
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d9a
	.uleb128 0x35
	.4byte	0x1c9d
	.4byte	.LLST327
	.uleb128 0x35
	.4byte	0x1ca7
	.4byte	.LLST328
	.uleb128 0x56
	.4byte	0x1c90
	.4byte	.LBB150
	.4byte	.LBE150-.LBB150
	.uleb128 0x35
	.4byte	0x1ca7
	.4byte	.LLST329
	.uleb128 0x35
	.4byte	0x1c9d
	.4byte	.LLST330
	.uleb128 0x42
	.4byte	.LVL903
	.4byte	0x1cb4
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x64
	.4byte	.LASF422
	.4byte	.LASF424
	.byte	0xd
	.byte	0
	.4byte	.LASF422
	.uleb128 0x65
	.4byte	.LASF426
	.4byte	.LASF426
	.byte	0xa
	.byte	0x9a
	.uleb128 0x64
	.4byte	.LASF423
	.4byte	.LASF425
	.byte	0xd
	.byte	0
	.4byte	.LASF423
	.uleb128 0x65
	.4byte	.LASF427
	.4byte	.LASF427
	.byte	0xa
	.byte	0x8c
	.uleb128 0x65
	.4byte	.LASF428
	.4byte	.LASF428
	.byte	0xa
	.byte	0x51
	.byte	0
	.section	.debug_abbrev,"",%progbits
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
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xc
	.uleb128 0x16
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
	.uleb128 0xd
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
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x17
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
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x1f
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0x20
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
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x2a
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4b
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
	.uleb128 0x4c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4d
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x50
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x51
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x53
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
	.byte	0
	.byte	0
	.uleb128 0x54
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x55
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x56
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x57
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x58
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x5a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5d
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5e
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x5f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x60
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x61
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x62
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x63
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x64
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x65
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST331:
	.4byte	.LVL951
	.4byte	.LVL952
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST335:
	.4byte	.LVL960
	.4byte	.LVL961
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST337:
	.4byte	.LVL960
	.4byte	.LVL961
	.2byte	0x3
	.byte	0x8
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST339:
	.4byte	.LVL969
	.4byte	.LVL970
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST343:
	.4byte	.LVL980
	.4byte	.LVL981
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST345:
	.4byte	.LVL980
	.4byte	.LVL981
	.2byte	0x3
	.byte	0x8
	.byte	0x58
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST347:
	.4byte	.LVL984
	.4byte	.LVL985
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST349:
	.4byte	.LVL984
	.4byte	.LVL985
	.2byte	0x3
	.byte	0x8
	.byte	0x68
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST351:
	.4byte	.LVL989
	.4byte	.LVL990
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST353:
	.4byte	.LVL989
	.4byte	.LVL990
	.2byte	0x3
	.byte	0x8
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST355:
	.4byte	.LVL993
	.4byte	.LVL994
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST357:
	.4byte	.LVL993
	.4byte	.LVL994
	.2byte	0x3
	.byte	0x8
	.byte	0x48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST359:
	.4byte	.LVL999
	.4byte	.LVL1000
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST361:
	.4byte	.LVL999
	.4byte	.LVL1000
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST363:
	.4byte	.LVL1015
	.4byte	.LVL1016
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST365:
	.4byte	.LVL1015
	.4byte	.LVL1016
	.2byte	0x3
	.byte	0x8
	.byte	0x58
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST367:
	.4byte	.LVL1019
	.4byte	.LVL1020
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST369:
	.4byte	.LVL1019
	.4byte	.LVL1020
	.2byte	0x3
	.byte	0x8
	.byte	0x68
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST371:
	.4byte	.LVL1024
	.4byte	.LVL1025
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST373:
	.4byte	.LVL1024
	.4byte	.LVL1025
	.2byte	0x2
	.byte	0x48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST375:
	.4byte	.LVL1028
	.4byte	.LVL1029
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST377:
	.4byte	.LVL1028
	.4byte	.LVL1029
	.2byte	0x3
	.byte	0x8
	.byte	0x28
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST326:
	.4byte	.LVL898
	.4byte	.LVL899
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL899
	.4byte	.LFE119
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST323:
	.4byte	.LVL775
	.4byte	.LVL777
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL777
	.4byte	.LVL778
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL778
	.4byte	.LVL779
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL779
	.4byte	.LVL781
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL783
	.4byte	.LFE117
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST324:
	.4byte	.LVL776
	.4byte	.LVL777
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL777
	.4byte	.LVL782
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL782
	.4byte	.LVL783
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL783
	.4byte	.LFE117
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST325:
	.4byte	.LVL777
	.4byte	.LVL779
	.2byte	0x5
	.byte	0x40
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL779
	.4byte	.LVL780
	.2byte	0x5
	.byte	0x41
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL783
	.4byte	.LFE117
	.2byte	0x5
	.byte	0x40
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST320:
	.4byte	.LVL765
	.4byte	.LVL767
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL767
	.4byte	.LVL768
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL768
	.4byte	.LVL769
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL769
	.4byte	.LVL771
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL773
	.4byte	.LFE116
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST321:
	.4byte	.LVL766
	.4byte	.LVL767
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL767
	.4byte	.LVL772
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL772
	.4byte	.LVL773
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL773
	.4byte	.LFE116
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST322:
	.4byte	.LVL767
	.4byte	.LVL769
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL769
	.4byte	.LVL770
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL773
	.4byte	.LFE116
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST319:
	.4byte	.LVL760
	.4byte	.LVL761
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL761
	.4byte	.LVL763
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST314:
	.4byte	.LVL750
	.4byte	.LVL751
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL751
	.4byte	.LFE114
	.2byte	0x2
	.byte	0x91
	.sleb128 -32
	.4byte	0
	.4byte	0
.LLST315:
	.4byte	.LVL750
	.4byte	.LVL751
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL751
	.4byte	.LFE114
	.2byte	0x2
	.byte	0x91
	.sleb128 -28
	.4byte	0
	.4byte	0
.LLST316:
	.4byte	.LVL750
	.4byte	.LVL751
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL751
	.4byte	.LVL759
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL759
	.4byte	.LFE114
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST317:
	.4byte	.LVL752
	.4byte	.LVL757
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST318:
	.4byte	.LVL750
	.4byte	.LVL751
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL751
	.4byte	.LVL758
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST313:
	.4byte	.LVL748
	.4byte	.LVL749
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL749
	.4byte	.LFE113
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST312:
	.4byte	.LVL745
	.4byte	.LVL746
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL746
	.4byte	.LFE111
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST311:
	.4byte	.LVL743
	.4byte	.LVL744
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL744
	.4byte	.LFE110
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST310:
	.4byte	.LVL735
	.4byte	.LVL736
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL736
	.4byte	.LVL737
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL737
	.4byte	.LVL738
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL738
	.4byte	.LVL739
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL739
	.4byte	.LVL740
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL740
	.4byte	.LVL741
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL741
	.4byte	.LVL742
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL742
	.4byte	.LFE109
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST308:
	.4byte	.LVL730
	.4byte	.LVL731
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL731
	.4byte	.LVL732
	.2byte	0x6
	.byte	0x70
	.sleb128 -7340032
	.byte	0x9f
	.4byte	.LVL732
	.4byte	.LFE108
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST309:
	.4byte	.LVL731
	.4byte	.LVL732
	.2byte	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL732
	.4byte	.LVL733
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x4c
	.byte	0x42
	.byte	0x24
	.byte	0x22
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL733
	.4byte	.LVL734
	.2byte	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL734
	.4byte	.LFE108
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x4c
	.byte	0x42
	.byte	0x24
	.byte	0x22
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST306:
	.4byte	.LVL714
	.4byte	.LVL716
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL716
	.4byte	.LFE106
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST307:
	.4byte	.LVL714
	.4byte	.LVL715
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL715
	.4byte	.LFE106
	.2byte	0x2
	.byte	0x91
	.sleb128 -28
	.4byte	0
	.4byte	0
.LLST289:
	.4byte	.LVL671
	.4byte	.LVL673
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL673
	.4byte	.LFE105
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST290:
	.4byte	.LVL671
	.4byte	.LVL674-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL674-1
	.4byte	.LVL691
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL691
	.4byte	.LVL698
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL698
	.4byte	.LVL704
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL704
	.4byte	.LFE105
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST291:
	.4byte	.LVL671
	.4byte	.LVL674-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL674-1
	.4byte	.LVL691
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL691
	.4byte	.LVL698
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL698
	.4byte	.LVL704
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL704
	.4byte	.LFE105
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST292:
	.4byte	.LVL671
	.4byte	.LVL672
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL672
	.4byte	.LVL688
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL688
	.4byte	.LVL698
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL698
	.4byte	.LVL704
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL704
	.4byte	.LFE105
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST293:
	.4byte	.LVL690
	.4byte	.LVL691
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL692
	.4byte	.LVL698
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL704
	.4byte	.LVL705-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL705-1
	.4byte	.LFE105
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST294:
	.4byte	.LVL675
	.4byte	.LVL680
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL680
	.4byte	.LVL682
	.2byte	0x6
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL682
	.4byte	.LVL688
	.2byte	0x16
	.byte	0x77
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL688
	.4byte	.LVL691
	.2byte	0x19
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL691
	.4byte	.LVL698
	.2byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL698
	.4byte	.LVL701
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL701
	.4byte	.LVL704
	.2byte	0x16
	.byte	0x77
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL704
	.4byte	.LFE105
	.2byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST295:
	.4byte	.LVL676
	.4byte	.LVL691
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL691
	.4byte	.LVL698
	.2byte	0x1c
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL698
	.4byte	.LVL704
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL704
	.4byte	.LFE105
	.2byte	0x1c
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST296:
	.4byte	.LVL677
	.4byte	.LVL678
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL678
	.4byte	.LVL698
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL699
	.4byte	.LVL700
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL700
	.4byte	.LFE105
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST297:
	.4byte	.LVL679
	.4byte	.LVL696
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL702
	.4byte	.LFE105
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST298:
	.4byte	.LVL681
	.4byte	.LVL682
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL683
	.4byte	.LVL698
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	.LVL703
	.4byte	.LVL704
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL704
	.4byte	.LFE105
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	0
	.4byte	0
.LLST299:
	.4byte	.LVL681
	.4byte	.LVL698
	.2byte	0x2
	.byte	0x91
	.sleb128 -32
	.4byte	.LVL703
	.4byte	.LFE105
	.2byte	0x2
	.byte	0x91
	.sleb128 -32
	.4byte	0
	.4byte	0
.LLST300:
	.4byte	.LVL690
	.4byte	.LVL694
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL704
	.4byte	.LFE105
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST301:
	.4byte	.LVL681
	.4byte	.LVL682
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL683
	.4byte	.LVL684
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL684
	.4byte	.LVL685
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LVL685
	.4byte	.LVL686
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL686
	.4byte	.LVL693
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LVL693
	.4byte	.LVL698
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL703
	.4byte	.LVL704
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL704
	.4byte	.LFE105
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST302:
	.4byte	.LVL681
	.4byte	.LVL685
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL685
	.4byte	.LVL687
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL687
	.4byte	.LVL698
	.2byte	0x2
	.byte	0x91
	.sleb128 -28
	.4byte	.LVL703
	.4byte	.LVL704
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL704
	.4byte	.LFE105
	.2byte	0x2
	.byte	0x91
	.sleb128 -28
	.4byte	0
	.4byte	0
.LLST303:
	.4byte	.LVL690
	.4byte	.LVL695
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL704
	.4byte	.LVL712
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL713
	.4byte	.LFE105
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST304:
	.4byte	.LVL681
	.4byte	.LVL682
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL683
	.4byte	.LVL689
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL689
	.4byte	.LVL690
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL690
	.4byte	.LVL698
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL703
	.4byte	.LVL704
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL704
	.4byte	.LFE105
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST305:
	.4byte	.LVL681
	.4byte	.LVL689
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL689
	.4byte	.LVL690
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL690
	.4byte	.LVL697
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL703
	.4byte	.LVL704
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL704
	.4byte	.LFE105
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST288:
	.4byte	.LVL669
	.4byte	.LVL670
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL670
	.4byte	.LFE104
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST287:
	.4byte	.LVL667
	.4byte	.LVL668
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL668
	.4byte	.LFE103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST286:
	.4byte	.LVL664
	.4byte	.LVL665
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL665
	.4byte	.LFE102
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST285:
	.4byte	.LVL661
	.4byte	.LVL662
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL662
	.4byte	.LFE101
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST284:
	.4byte	.LVL659
	.4byte	.LVL660
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL660
	.4byte	.LFE100
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST283:
	.4byte	.LVL657
	.4byte	.LVL658
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL658
	.4byte	.LFE99
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST280:
	.4byte	.LVL649
	.4byte	.LVL650
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL650
	.4byte	.LFE98
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST281:
	.4byte	.LVL649
	.4byte	.LVL650
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL650
	.4byte	.LFE98
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST282:
	.4byte	.LVL649
	.4byte	.LVL650
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL650
	.4byte	.LVL651
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL651
	.4byte	.LVL652-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL652-1
	.4byte	.LVL652
	.2byte	0x3
	.byte	0x75
	.sleb128 -2
	.byte	0x9f
	.4byte	.LVL652
	.4byte	.LVL654
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL654
	.4byte	.LVL655-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL655-1
	.4byte	.LVL655
	.2byte	0x3
	.byte	0x75
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL655
	.4byte	.LVL656
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST278:
	.4byte	.LVL618
	.4byte	.LVL620
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL620
	.4byte	.LFE97
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST279:
	.4byte	.LVL618
	.4byte	.LVL619
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL619
	.4byte	.LFE97
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST275:
	.4byte	.LVL612
	.4byte	.LVL613
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL613
	.4byte	.LVL617
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL617
	.4byte	.LFE96
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST276:
	.4byte	.LVL612
	.4byte	.LVL613
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL613
	.4byte	.LFE96
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST277:
	.4byte	.LVL612
	.4byte	.LVL613
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL613
	.4byte	.LVL614
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL614
	.4byte	.LVL615-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL615-1
	.4byte	.LVL615
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL615
	.4byte	.LVL616
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST274:
	.4byte	.LVL601
	.4byte	.LVL602
	.2byte	0x9
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST270:
	.4byte	.LVL592
	.4byte	.LVL593
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL593
	.4byte	.LFE94
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST271:
	.4byte	.LVL592
	.4byte	.LVL593
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL593
	.4byte	.LFE94
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST272:
	.4byte	.LVL593
	.4byte	.LVL594
	.2byte	0x3
	.byte	0x8
	.byte	0xf0
	.byte	0x9f
	.4byte	.LVL594
	.4byte	.LVL595
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL595
	.4byte	.LVL596-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL596-1
	.4byte	.LVL596
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL596
	.4byte	.LVL599
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST273:
	.4byte	.LVL592
	.4byte	.LVL593
	.2byte	0x3
	.byte	0x8
	.byte	0xa0
	.byte	0x9f
	.4byte	.LVL593
	.4byte	.LVL597
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL597
	.4byte	.LVL598
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL598
	.4byte	.LVL600
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST266:
	.4byte	.LVL583
	.4byte	.LVL584
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL584
	.4byte	.LFE93
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST267:
	.4byte	.LVL583
	.4byte	.LVL584
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL584
	.4byte	.LFE93
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST268:
	.4byte	.LVL584
	.4byte	.LVL585
	.2byte	0x3
	.byte	0x8
	.byte	0xf0
	.byte	0x9f
	.4byte	.LVL585
	.4byte	.LVL586
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL586
	.4byte	.LVL587-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL587-1
	.4byte	.LVL587
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL587
	.4byte	.LVL590
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST269:
	.4byte	.LVL583
	.4byte	.LVL584
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL584
	.4byte	.LVL591
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST262:
	.4byte	.LVL574
	.4byte	.LVL575
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL575
	.4byte	.LFE92
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST263:
	.4byte	.LVL574
	.4byte	.LVL575
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL575
	.4byte	.LFE92
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST264:
	.4byte	.LVL574
	.4byte	.LVL575
	.2byte	0x3
	.byte	0x8
	.byte	0xf0
	.byte	0x9f
	.4byte	.LVL575
	.4byte	.LVL579
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL579
	.4byte	.LVL580
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL580
	.4byte	.LVL582
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST265:
	.4byte	.LVL575
	.4byte	.LVL576
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL576
	.4byte	.LVL577
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL577
	.4byte	.LVL578-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL578-1
	.4byte	.LVL578
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL578
	.4byte	.LVL581
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST258:
	.4byte	.LVL565
	.4byte	.LVL566
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL566
	.4byte	.LFE91
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST259:
	.4byte	.LVL565
	.4byte	.LVL566
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL566
	.4byte	.LFE91
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST260:
	.4byte	.LVL565
	.4byte	.LVL566
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL566
	.4byte	.LVL573
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST261:
	.4byte	.LVL566
	.4byte	.LVL567
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL567
	.4byte	.LVL568
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL568
	.4byte	.LVL569-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL569-1
	.4byte	.LVL569
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL569
	.4byte	.LVL572
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST254:
	.4byte	.LVL551
	.4byte	.LVL552
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL552
	.4byte	.LFE88
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST255:
	.4byte	.LVL551
	.4byte	.LVL552
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL552
	.4byte	.LFE88
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST256:
	.4byte	.LVL551
	.4byte	.LVL552
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL553
	.4byte	.LVL554-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL554-1
	.4byte	.LVL561
	.2byte	0x2
	.byte	0x91
	.sleb128 -28
	.4byte	.LVL561
	.4byte	.LVL562
	.2byte	0x3
	.byte	0x76
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL562
	.4byte	.LFE88
	.2byte	0x6
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST257:
	.4byte	.LVL554
	.4byte	.LVL555
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL555
	.4byte	.LVL563
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST250:
	.4byte	.LVL539
	.4byte	.LVL540
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL540
	.4byte	.LFE87
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST251:
	.4byte	.LVL539
	.4byte	.LVL540
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL540
	.4byte	.LFE87
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST252:
	.4byte	.LVL539
	.4byte	.LVL540
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL541
	.4byte	.LVL542-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL542-1
	.4byte	.LVL548
	.2byte	0x2
	.byte	0x91
	.sleb128 -28
	.4byte	.LVL548
	.4byte	.LVL549
	.2byte	0x3
	.byte	0x77
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL549
	.4byte	.LFE87
	.2byte	0x6
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST253:
	.4byte	.LVL542
	.4byte	.LVL546
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL546
	.4byte	.LVL547
	.2byte	0x3
	.byte	0x75
	.sleb128 -2
	.byte	0x9f
	.4byte	.LVL547
	.4byte	.LVL550
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST248:
	.4byte	.LVL535
	.4byte	.LVL536
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL536
	.4byte	.LFE85
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST249:
	.4byte	.LVL535
	.4byte	.LVL537
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL537
	.4byte	.LFE85
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST247:
	.4byte	.LVL531
	.4byte	.LVL532-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL532-1
	.4byte	.LFE82
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST246:
	.4byte	.LVL526
	.4byte	.LVL527
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL527
	.4byte	.LVL529
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL529
	.4byte	.LFE81
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST240:
	.4byte	.LVL500
	.4byte	.LVL504
	.2byte	0x6
	.byte	0x3
	.4byte	state
	.byte	0x9f
	.4byte	.LVL504
	.4byte	.LVL505
	.2byte	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	state
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL505
	.4byte	.LVL512
	.2byte	0x9
	.byte	0x75
	.sleb128 0
	.byte	0x3
	.4byte	state+908
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL513
	.4byte	.LVL515
	.2byte	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	state
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL515
	.4byte	.LVL517
	.2byte	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	state+4
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL517
	.4byte	.LVL519
	.2byte	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	state
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL519
	.4byte	.LVL520
	.2byte	0x9
	.byte	0x75
	.sleb128 0
	.byte	0x3
	.4byte	state+908
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL520
	.4byte	.LVL523
	.2byte	0x9
	.byte	0x75
	.sleb128 0
	.byte	0x3
	.4byte	state+912
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL523
	.4byte	.LFE80
	.2byte	0x9
	.byte	0x75
	.sleb128 0
	.byte	0x3
	.4byte	state+908
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST241:
	.4byte	.LVL500
	.4byte	.LVL504
	.2byte	0x6
	.byte	0x3
	.4byte	state+8
	.byte	0x9f
	.4byte	.LVL504
	.4byte	.LVL505
	.2byte	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	state+8
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL505
	.4byte	.LVL512
	.2byte	0x9
	.byte	0x75
	.sleb128 0
	.byte	0x3
	.4byte	state+916
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL513
	.4byte	.LVL516
	.2byte	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	state+8
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL516
	.4byte	.LVL517
	.2byte	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	state+12
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL517
	.4byte	.LVL519
	.2byte	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	state+8
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL519
	.4byte	.LVL521
	.2byte	0x9
	.byte	0x75
	.sleb128 0
	.byte	0x3
	.4byte	state+916
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL521
	.4byte	.LVL523
	.2byte	0x9
	.byte	0x75
	.sleb128 0
	.byte	0x3
	.4byte	state+920
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL523
	.4byte	.LFE80
	.2byte	0x9
	.byte	0x75
	.sleb128 0
	.byte	0x3
	.4byte	state+916
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST242:
	.4byte	.LVL500
	.4byte	.LVL504
	.2byte	0x6
	.byte	0x3
	.4byte	state+1588
	.byte	0x9f
	.4byte	.LVL504
	.4byte	.LVL505
	.2byte	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	state+1588
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL505
	.4byte	.LVL512
	.2byte	0x9
	.byte	0x75
	.sleb128 0
	.byte	0x3
	.4byte	state
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL513
	.4byte	.LVL517
	.2byte	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	state+1592
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL517
	.4byte	.LVL519
	.2byte	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	state+1588
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL519
	.4byte	.LVL523
	.2byte	0x9
	.byte	0x75
	.sleb128 0
	.byte	0x3
	.4byte	state+4
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL523
	.4byte	.LFE80
	.2byte	0x9
	.byte	0x75
	.sleb128 0
	.byte	0x3
	.4byte	state
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST243:
	.4byte	.LVL502
	.4byte	.LVL506
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL513
	.4byte	.LVL514
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL516
	.4byte	.LVL518
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL518
	.4byte	.LVL519
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL521
	.4byte	.LVL524
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL524
	.4byte	.LFE80
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST244:
	.4byte	.LVL503
	.4byte	.LVL508
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL508
	.4byte	.LVL509
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL509
	.4byte	.LVL510
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL510
	.4byte	.LVL511
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL513
	.4byte	.LVL516
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL516
	.4byte	.LVL519
	.2byte	0x2
	.byte	0x75
	.sleb128 8
	.4byte	.LVL519
	.4byte	.LVL522
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL522
	.4byte	.LFE80
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST245:
	.4byte	.LVL503
	.4byte	.LVL504
	.2byte	0x3
	.byte	0x8
	.byte	0xe4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST237:
	.4byte	.LVL492
	.4byte	.LVL493
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL493
	.4byte	.LFE79
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST238:
	.4byte	.LVL493
	.4byte	.LVL494
	.2byte	0x6
	.byte	0x3
	.4byte	state
	.byte	0x9f
	.4byte	.LVL494
	.4byte	.LVL495
	.2byte	0x6
	.byte	0x3
	.4byte	state+4
	.byte	0x9f
	.4byte	.LVL495
	.4byte	.LVL496
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	state+4
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL496
	.4byte	.LVL497
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	state
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL498
	.4byte	.LFE79
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	state+4
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST239:
	.4byte	.LVL493
	.4byte	.LVL495
	.2byte	0x4
	.byte	0xa
	.2byte	0x270
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST236:
	.4byte	.LVL489
	.4byte	.LVL490
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL490
	.4byte	.LVL491
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL491
	.4byte	.LFE78
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST229:
	.4byte	.LVL466
	.4byte	.LVL473
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL473
	.4byte	.LFE77
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	0
	.4byte	0
.LLST230:
	.4byte	.LVL466
	.4byte	.LVL473
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL473
	.4byte	.LFE77
	.2byte	0x2
	.byte	0x91
	.sleb128 -32
	.4byte	0
	.4byte	0
.LLST231:
	.4byte	.LVL466
	.4byte	.LVL470
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL470
	.4byte	.LVL473
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LVL473
	.4byte	.LFE77
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST232:
	.4byte	.LVL466
	.4byte	.LVL469
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL469
	.4byte	.LFE77
	.2byte	0x2
	.byte	0x91
	.sleb128 -28
	.4byte	0
	.4byte	0
.LLST233:
	.4byte	.LVL466
	.4byte	.LVL473
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST234:
	.4byte	.LVL467
	.4byte	.LVL468
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LVL473
	.4byte	.LVL474
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LVL474
	.4byte	.LVL475
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL475
	.4byte	.LVL485
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LVL485
	.4byte	.LVL488
	.2byte	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL488
	.4byte	.LFE77
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST235:
	.4byte	.LVL471
	.4byte	.LVL472
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL472
	.4byte	.LVL486
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL486
	.4byte	.LVL487
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL487
	.4byte	.LFE77
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST211:
	.4byte	.LVL429
	.4byte	.LVL432
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL432
	.4byte	.LVL447
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL447
	.4byte	.LVL454
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL454
	.4byte	.LVL459
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL459
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST212:
	.4byte	.LVL429
	.4byte	.LVL430
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL430
	.4byte	.LVL447
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL447
	.4byte	.LVL454
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL454
	.4byte	.LVL459
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL459
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST213:
	.4byte	.LVL429
	.4byte	.LVL441
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL441
	.4byte	.LVL454
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL454
	.4byte	.LVL459
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL459
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST214:
	.4byte	.LVL429
	.4byte	.LVL443
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL443
	.4byte	.LVL454
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL454
	.4byte	.LVL459
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL459
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST215:
	.4byte	.LVL429
	.4byte	.LVL430
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL430
	.4byte	.LVL431
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LVL431
	.4byte	.LFE76
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST216:
	.4byte	.LVL446
	.4byte	.LVL447
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL448
	.4byte	.LVL454
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL459
	.4byte	.LVL460-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL460-1
	.4byte	.LFE76
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST217:
	.4byte	.LVL433
	.4byte	.LVL437
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL437
	.4byte	.LVL440
	.2byte	0x6
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL440
	.4byte	.LVL441
	.2byte	0x16
	.byte	0x72
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x72
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL441
	.4byte	.LVL447
	.2byte	0x19
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL447
	.4byte	.LVL454
	.2byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL454
	.4byte	.LVL455
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL455
	.4byte	.LVL459
	.2byte	0x16
	.byte	0x72
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x72
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL459
	.4byte	.LFE76
	.2byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST218:
	.4byte	.LVL434
	.4byte	.LVL447
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL447
	.4byte	.LVL454
	.2byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL454
	.4byte	.LVL459
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL459
	.4byte	.LFE76
	.2byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST219:
	.4byte	.LVL435
	.4byte	.LVL436
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL436
	.4byte	.LVL454
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL456
	.4byte	.LVL457
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL457
	.4byte	.LFE76
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST220:
	.4byte	.LVL436
	.4byte	.LVL452
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL457
	.4byte	.LFE76
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST221:
	.4byte	.LVL438
	.4byte	.LVL439
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL439
	.4byte	.LVL454
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL457
	.4byte	.LVL458
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL458
	.4byte	.LFE76
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST222:
	.4byte	.LVL438
	.4byte	.LVL454
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL457
	.4byte	.LFE76
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST223:
	.4byte	.LVL446
	.4byte	.LVL450
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL459
	.4byte	.LFE76
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST224:
	.4byte	.LVL438
	.4byte	.LVL440
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL440
	.4byte	.LVL453
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL457
	.4byte	.LVL459
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL459
	.4byte	.LFE76
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST225:
	.4byte	.LVL438
	.4byte	.LVL442
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL442
	.4byte	.LVL454
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	.LVL457
	.4byte	.LVL459
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL459
	.4byte	.LFE76
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	0
	.4byte	0
.LLST226:
	.4byte	.LVL446
	.4byte	.LVL451
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL459
	.4byte	.LFE76
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST227:
	.4byte	.LVL438
	.4byte	.LVL440
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL440
	.4byte	.LVL444
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LVL444
	.4byte	.LVL445
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL445
	.4byte	.LVL449
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LVL449
	.4byte	.LVL454
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL457
	.4byte	.LVL459
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL459
	.4byte	.LFE76
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST228:
	.4byte	.LVL438
	.4byte	.LVL444
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL444
	.4byte	.LVL446
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL446
	.4byte	.LVL454
	.2byte	0x2
	.byte	0x91
	.sleb128 -32
	.4byte	.LVL457
	.4byte	.LVL459
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL459
	.4byte	.LFE76
	.2byte	0x2
	.byte	0x91
	.sleb128 -32
	.4byte	0
	.4byte	0
.LLST205:
	.4byte	.LVL408
	.4byte	.LVL409
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL409
	.4byte	.LFE74
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST206:
	.4byte	.LVL409
	.4byte	.LVL410
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL410
	.4byte	.LVL411
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL411
	.4byte	.LVL412-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL412-1
	.4byte	.LVL412
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL412
	.4byte	.LVL414
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST207:
	.4byte	.LVL408
	.4byte	.LVL409
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL409
	.4byte	.LVL415
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST202:
	.4byte	.LVL400
	.4byte	.LVL401
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL401
	.4byte	.LFE73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST203:
	.4byte	.LVL401
	.4byte	.LVL402
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL402
	.4byte	.LVL403
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL403
	.4byte	.LVL404-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL404-1
	.4byte	.LVL404
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL404
	.4byte	.LVL406
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST204:
	.4byte	.LVL400
	.4byte	.LVL401
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL401
	.4byte	.LVL407
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST195:
	.4byte	.LVL386
	.4byte	.LVL389
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL389
	.4byte	.LVL399
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL399
	.4byte	.LFE72
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST196:
	.4byte	.LVL386
	.4byte	.LVL389
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL389
	.4byte	.LVL398
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL398
	.4byte	.LFE72
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST197:
	.4byte	.LVL386
	.4byte	.LVL389
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL389
	.4byte	.LFE72
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	0
	.4byte	0
.LLST198:
	.4byte	.LVL386
	.4byte	.LVL387
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL387
	.4byte	.LVL388
	.2byte	0x2
	.byte	0x73
	.sleb128 -32
	.4byte	.LVL388
	.4byte	.LFE72
	.2byte	0x2
	.byte	0x91
	.sleb128 -32
	.4byte	0
	.4byte	0
.LLST199:
	.4byte	.LVL386
	.4byte	.LVL387
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL387
	.4byte	.LVL388
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL388
	.4byte	.LFE72
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST200:
	.4byte	.LVL386
	.4byte	.LVL389
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL389
	.4byte	.LVL394
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL394
	.4byte	.LVL395
	.2byte	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL395
	.4byte	.LVL397
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST201:
	.4byte	.LVL390
	.4byte	.LVL391-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL391-1
	.4byte	.LVL391
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL391
	.4byte	.LVL392
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL392
	.4byte	.LVL393
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL393
	.4byte	.LVL396
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST193:
	.4byte	.LVL383
	.4byte	.LVL385
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL385
	.4byte	.LFE71
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST194:
	.4byte	.LVL383
	.4byte	.LVL384
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL384
	.4byte	.LFE71
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST192:
	.4byte	.LVL381
	.4byte	.LVL382
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL382
	.4byte	.LFE70
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST191:
	.4byte	.LVL379
	.4byte	.LVL380
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL380
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST189:
	.4byte	.LVL377
	.4byte	.LVL378-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL378-1
	.4byte	.LFE68
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST190:
	.4byte	.LVL377
	.4byte	.LVL378-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL378-1
	.4byte	.LFE68
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST188:
	.4byte	.LVL375
	.4byte	.LVL376
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL376
	.4byte	.LFE67
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST187:
	.4byte	.LVL373
	.4byte	.LVL374
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL374
	.4byte	.LFE66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST186:
	.4byte	.LVL371
	.4byte	.LVL372
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL372
	.4byte	.LFE65
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST184:
	.4byte	.LVL368
	.4byte	.LVL370
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL370
	.4byte	.LFE64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST185:
	.4byte	.LVL368
	.4byte	.LVL369
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL369
	.4byte	.LFE64
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST182:
	.4byte	.LVL365
	.4byte	.LVL367
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL367
	.4byte	.LFE63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST183:
	.4byte	.LVL365
	.4byte	.LVL366
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL366
	.4byte	.LFE63
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST180:
	.4byte	.LVL362
	.4byte	.LVL364
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL364
	.4byte	.LFE62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST181:
	.4byte	.LVL362
	.4byte	.LVL363
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL363
	.4byte	.LFE62
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST178:
	.4byte	.LVL356
	.4byte	.LVL359
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL359
	.4byte	.LFE61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST179:
	.4byte	.LVL356
	.4byte	.LVL357
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL357
	.4byte	.LVL360
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST176:
	.4byte	.LVL350
	.4byte	.LVL353
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL353
	.4byte	.LFE60
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST177:
	.4byte	.LVL350
	.4byte	.LVL351
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL351
	.4byte	.LVL354
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST173:
	.4byte	.LVL342
	.4byte	.LVL344
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL344
	.4byte	.LFE59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST174:
	.4byte	.LVL342
	.4byte	.LVL343
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL343
	.4byte	.LFE59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST175:
	.4byte	.LVL345
	.4byte	.LVL346
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL346
	.4byte	.LVL347
	.2byte	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL348
	.4byte	.LVL349
	.2byte	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL349
	.4byte	.LFE59
	.2byte	0xa
	.byte	0x71
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST170:
	.4byte	.LVL334
	.4byte	.LVL336
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL336
	.4byte	.LFE58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST171:
	.4byte	.LVL334
	.4byte	.LVL335
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL335
	.4byte	.LVL337-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL337-1
	.4byte	.LFE58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST172:
	.4byte	.LVL337
	.4byte	.LVL338
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL338
	.4byte	.LVL339
	.2byte	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL340
	.4byte	.LVL341
	.2byte	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL341
	.4byte	.LFE58
	.2byte	0xa
	.byte	0x71
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST168:
	.4byte	.LVL330
	.4byte	.LVL331
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL331
	.4byte	.LFE57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST169:
	.4byte	.LVL330
	.4byte	.LVL332
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL332
	.4byte	.LVL333
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.4byte	.LVL333
	.4byte	.LFE57
	.2byte	0x2
	.byte	0x70
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST166:
	.4byte	.LVL326
	.4byte	.LVL327
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL327
	.4byte	.LFE56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST167:
	.4byte	.LVL326
	.4byte	.LVL328
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL328
	.4byte	.LVL329
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.4byte	.LVL329
	.4byte	.LFE56
	.2byte	0x2
	.byte	0x70
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST164:
	.4byte	.LVL322
	.4byte	.LVL323
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL323
	.4byte	.LFE55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST165:
	.4byte	.LVL322
	.4byte	.LVL324
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL324
	.4byte	.LVL325
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.4byte	.LVL325
	.4byte	.LFE55
	.2byte	0x2
	.byte	0x70
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST163:
	.4byte	.LVL320
	.4byte	.LVL321
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST158:
	.4byte	.LVL316
	.4byte	.LVL317
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST159:
	.4byte	.LVL318
	.4byte	.LVL319
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST160:
	.4byte	.LVL318
	.4byte	.LVL319
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x33
	.byte	0x24
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST161:
	.4byte	.LVL318
	.4byte	.LVL319
	.2byte	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x35
	.byte	0x25
	.byte	0x33
	.byte	0x24
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST162:
	.4byte	.LVL318
	.4byte	.LVL319
	.2byte	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x3a
	.byte	0x25
	.byte	0x33
	.byte	0x24
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST157:
	.4byte	.LVL313
	.4byte	.LVL314-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL314-1
	.4byte	.LVL315
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL315
	.4byte	.LFE52
	.2byte	0x5
	.byte	0xc
	.4byte	0x40000d4
	.4byte	0
	.4byte	0
.LLST155:
	.4byte	.LVL310
	.4byte	.LVL311
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL311
	.4byte	.LVL312-1
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL312-1
	.4byte	.LFE51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST156:
	.4byte	.LVL310
	.4byte	.LVL312-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL312-1
	.4byte	.LFE51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST153:
	.4byte	.LVL305
	.4byte	.LVL306-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL306-1
	.4byte	.LVL309
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL309
	.4byte	.LFE50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST154:
	.4byte	.LVL305
	.4byte	.LVL306-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL306-1
	.4byte	.LVL308
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL308
	.4byte	.LFE50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST151:
	.4byte	.LVL299
	.4byte	.LVL300-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL300-1
	.4byte	.LVL303
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL303
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST152:
	.4byte	.LVL299
	.4byte	.LVL300-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL300-1
	.4byte	.LVL304
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL304
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST135:
	.4byte	.LVL261
	.4byte	.LVL267
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL267
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST136:
	.4byte	.LVL261
	.4byte	.LVL262
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL262
	.4byte	.LVL285
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL285
	.4byte	.LFE48
	.2byte	0x6
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST137:
	.4byte	.LVL269
	.4byte	.LVL285
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST138:
	.4byte	.LVL271
	.4byte	.LVL273
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL273
	.4byte	.LVL285
	.2byte	0x2
	.byte	0x91
	.sleb128 -32
	.4byte	0
	.4byte	0
.LLST139:
	.4byte	.LVL272
	.4byte	.LVL274-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL274-1
	.4byte	.LFE48
	.2byte	0x2
	.byte	0x91
	.sleb128 -28
	.4byte	0
	.4byte	0
.LLST140:
	.4byte	.LVL268
	.4byte	.LVL270
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL270
	.4byte	.LVL274-1
	.2byte	0xf
	.byte	0x76
	.sleb128 0
	.byte	0x3
	.4byte	CurrentPalette
	.byte	0x22
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST141:
	.4byte	.LVL267
	.4byte	.LVL280
	.2byte	0x9
	.byte	0x76
	.sleb128 0
	.byte	0x3
	.4byte	CurrentPalette+2
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL280
	.4byte	.LVL285
	.2byte	0x9
	.byte	0x76
	.sleb128 0
	.byte	0x3
	.4byte	CurrentPalette
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST142:
	.4byte	.LVL267
	.4byte	.LVL272
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL272
	.4byte	.LVL275
	.2byte	0x3
	.byte	0x74
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL275
	.4byte	.LVL276
	.2byte	0x3
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL276
	.4byte	.LVL278
	.2byte	0x3
	.byte	0x74
	.sleb128 6
	.byte	0x9f
	.4byte	.LVL278
	.4byte	.LVL281
	.2byte	0x3
	.byte	0x74
	.sleb128 10
	.byte	0x9f
	.4byte	.LVL281
	.4byte	.LVL282
	.2byte	0x3
	.byte	0x74
	.sleb128 12
	.byte	0x9f
	.4byte	.LVL282
	.4byte	.LVL284
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST143:
	.4byte	.LVL261
	.4byte	.LVL263
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST144:
	.4byte	.LVL261
	.4byte	.LVL263
	.2byte	0x4
	.byte	0x44
	.byte	0x46
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL263
	.4byte	.LVL264
	.2byte	0x3
	.byte	0x73
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL264
	.4byte	.LVL265
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST145:
	.4byte	.LVL261
	.4byte	.LVL263
	.2byte	0x6
	.byte	0x3
	.4byte	CurrentPalette
	.byte	0x9f
	.4byte	.LVL263
	.4byte	.LVL264
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	CurrentPalette-83886078
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL264
	.4byte	.LVL266
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	CurrentPalette-83886080
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL266
	.4byte	.LVL267
	.2byte	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	CurrentPalette+2
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST146:
	.4byte	.LVL283
	.4byte	.LVL285
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL285
	.4byte	.LFE48
	.2byte	0x6
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST147:
	.4byte	.LVL289
	.4byte	.LVL290
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL290
	.4byte	.LVL292
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST148:
	.4byte	.LVL283
	.4byte	.LVL285
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL285
	.4byte	.LVL286
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL287
	.4byte	.LVL297
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL297
	.4byte	.LVL298
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL298
	.4byte	.LFE48
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST149:
	.4byte	.LVL288
	.4byte	.LVL290
	.2byte	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL290
	.4byte	.LVL291
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL291
	.4byte	.LVL295
	.2byte	0x3
	.byte	0x72
	.sleb128 12
	.byte	0x9f
	.4byte	.LVL295
	.4byte	.LVL296
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST150:
	.4byte	.LVL288
	.4byte	.LVL291
	.2byte	0x9
	.byte	0x77
	.sleb128 0
	.byte	0x3
	.4byte	CurrentPalette
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL291
	.4byte	.LVL294
	.2byte	0x9
	.byte	0x77
	.sleb128 0
	.byte	0x3
	.4byte	CurrentPalette+2
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL294
	.4byte	.LFE48
	.2byte	0x9
	.byte	0x77
	.sleb128 0
	.byte	0x3
	.4byte	CurrentPalette
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST132:
	.4byte	.LVL258
	.4byte	.LVL259
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL259
	.4byte	.LVL260
	.2byte	0xc
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0xc
	.4byte	0x4fffffe
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL260
	.4byte	.LFE46
	.2byte	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x44
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST133:
	.4byte	.LVL258
	.4byte	.LVL259
	.2byte	0x4
	.byte	0x44
	.byte	0x46
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL259
	.4byte	.LVL260
	.2byte	0x3
	.byte	0x73
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL260
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST134:
	.4byte	.LVL258
	.4byte	.LVL259
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST131:
	.4byte	.LVL256
	.4byte	.LVL257
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST130:
	.4byte	.LVL254
	.4byte	.LVL255
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST129:
	.4byte	.LVL252
	.4byte	.LVL253
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST127:
	.4byte	.LVL246
	.4byte	.LVL248
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL248
	.4byte	.LVL250
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL250
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST128:
	.4byte	.LVL246
	.4byte	.LVL247
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL247
	.4byte	.LVL249
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL250
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST126:
	.4byte	.LVL244
	.4byte	.LVL245
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST120:
	.4byte	.LVL229
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL230
	.4byte	.LVL235
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL235
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST121:
	.4byte	.LVL229
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL231
	.4byte	.LVL233-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL233-1
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST122:
	.4byte	.LVL229
	.4byte	.LVL233-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL233-1
	.4byte	.LFE36
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	0
	.4byte	0
.LLST123:
	.4byte	.LVL229
	.4byte	.LVL232
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL232
	.4byte	.LFE36
	.2byte	0x2
	.byte	0x91
	.sleb128 -32
	.4byte	0
	.4byte	0
.LLST124:
	.4byte	.LVL236
	.4byte	.LVL239-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL239-1
	.4byte	.LVL241
	.2byte	0x9
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x1e
	.byte	0x38
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST125:
	.4byte	.LVL236
	.4byte	.LVL238
	.2byte	0x9
	.byte	0x70
	.sleb128 0
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.byte	0x1e
	.byte	0x38
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL238
	.4byte	.LVL241
	.2byte	0x9
	.byte	0x76
	.sleb128 0
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.byte	0x1e
	.byte	0x38
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL241
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST118:
	.4byte	.LVL223
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL224
	.4byte	.LVL227
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST119:
	.4byte	.LVL223
	.4byte	.LVL225
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL225
	.4byte	.LVL226
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL226
	.4byte	.LVL228
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LVL210
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL211
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST110:
	.4byte	.LVL210
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL212
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST111:
	.4byte	.LVL210
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL213
	.4byte	.LFE33
	.2byte	0x4
	.byte	0x72
	.sleb128 -512
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LVL204
	.4byte	.LVL205
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LVL197
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL198
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL201
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LVL197
	.4byte	.LVL198
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LVL192
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL193
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL196
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL192
	.4byte	.LVL193
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL182
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL184
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL185
	.4byte	.LVL186
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL186
	.4byte	.LVL188
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL190
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL183
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL184
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL189
	.4byte	.LVL190
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL190
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL184
	.4byte	.LVL186
	.2byte	0x5
	.byte	0x40
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0x5
	.byte	0x41
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL190
	.4byte	.LFE26
	.2byte	0x5
	.byte	0x40
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL172
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL174
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL176
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL180
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL174
	.4byte	.LVL179
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL180
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL174
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL180
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL146
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL151
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL158
	.4byte	.LFE23
	.2byte	0x6
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL146
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL151
	.4byte	.LFE23
	.2byte	0x6
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL146
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL150
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL147
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL148
	.4byte	.LFE23
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LVL157
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL149
	.4byte	.LVL151
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL151
	.4byte	.LVL155
	.2byte	0x9
	.byte	0x77
	.sleb128 0
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0x1c
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x9
	.byte	0x77
	.sleb128 0
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0x1c
	.byte	0x23
	.uleb128 0x9
	.byte	0x9f
	.4byte	.LVL156
	.4byte	.LVL159
	.2byte	0x9
	.byte	0x77
	.sleb128 0
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0x1c
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL152
	.4byte	.LVL153-1
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL160
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL163
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL160
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL163
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL160
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL163
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL167
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL161
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL162
	.4byte	.LFE22
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL160
	.4byte	.LVL163
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LVL169
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL169
	.4byte	.LVL170
	.2byte	0x9
	.byte	0x74
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1c
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	.LVL170
	.4byte	.LFE22
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL121
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL126
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL133
	.4byte	.LFE20
	.2byte	0x6
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL121
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL126
	.4byte	.LFE20
	.2byte	0x6
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL121
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL125
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL122
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL123
	.4byte	.LFE20
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LVL132
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL124
	.4byte	.LVL126
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL130
	.2byte	0x9
	.byte	0x77
	.sleb128 0
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0x1c
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x9
	.byte	0x77
	.sleb128 0
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0x1c
	.byte	0x23
	.uleb128 0x9
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LVL134
	.2byte	0x9
	.byte	0x77
	.sleb128 0
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0x1c
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL127
	.4byte	.LVL128-1
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL135
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL138
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL135
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL138
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL135
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL138
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL142
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL136
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL137
	.4byte	.LFE19
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL135
	.4byte	.LVL138
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LVL144
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x9
	.byte	0x74
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1c
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LFE19
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL118
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL120
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL119
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x4
	.byte	0x71
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LFE17
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL117
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL115
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL94
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL102
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL94
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL105
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL94
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL98
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL96
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL99
	.4byte	.LFE13
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL96
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x72
	.sleb128 4
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL100
	.4byte	.LFE13
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL96
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x72
	.sleb128 8
	.4byte	.LVL99
	.4byte	.LVL102
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x2
	.byte	0x70
	.sleb128 0
	.4byte	.LVL103
	.4byte	.LFE13
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x72
	.sleb128 12
	.4byte	.LVL99
	.4byte	.LFE13
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x2
	.byte	0x91
	.sleb128 16
	.4byte	.LVL96
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x72
	.sleb128 16
	.4byte	.LVL99
	.4byte	.LFE13
	.2byte	0x2
	.byte	0x91
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL110
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1c
	.byte	0x91
	.sleb128 4
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x31
	.byte	0x25
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL75
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL83
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL75
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL86
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL75
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL80
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x72
	.sleb128 4
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL81
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x72
	.sleb128 8
	.4byte	.LVL80
	.4byte	.LVL83
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x2
	.byte	0x70
	.sleb128 0
	.4byte	.LVL84
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x72
	.sleb128 12
	.4byte	.LVL80
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x91
	.sleb128 16
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x72
	.sleb128 16
	.4byte	.LVL80
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x91
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL91
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1c
	.byte	0x91
	.sleb128 4
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x31
	.byte	0x25
	.byte	0x22
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LFE11
	.2byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x8
	.byte	0x71
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LFE11
	.2byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL67
	.4byte	.LFE9
	.2byte	0x5
	.byte	0x71
	.sleb128 -38400
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL58
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL58
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL60
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL63
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL47
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL47
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL49
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL52
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL38
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL37
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL35
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0x78
	.byte	0x1e
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL42
	.2byte	0xa
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0x78
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x8
	.byte	0x78
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LFE6
	.2byte	0xa
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0x78
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL33
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL34
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL29
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL30
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL18
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL23
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x70
	.sleb128 0
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x70
	.sleb128 0
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x70
	.sleb128 0
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL25
	.4byte	.LFE3
	.2byte	0x2
	.byte	0x70
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE3
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL207
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL206
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL208
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL206
	.4byte	.LVL209
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL209
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST112:
	.4byte	.LVL214
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL219
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST113:
	.4byte	.LVL214
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL220
	.4byte	.LFE34
	.2byte	0x4
	.byte	0x71
	.sleb128 -512
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST114:
	.4byte	.LVL214
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL216
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST115:
	.4byte	.LVL214
	.4byte	.LVL217
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL217
	.4byte	.LVL222
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL222
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST116:
	.4byte	.LVL215
	.4byte	.LVL216
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL216
	.4byte	.LVL217
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL217
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL221
	.4byte	.LVL222
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL222
	.4byte	.LFE34
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST117:
	.4byte	.LVL214
	.4byte	.LVL216
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL216
	.4byte	.LVL218
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL218
	.4byte	.LFE34
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST208:
	.4byte	.LVL416
	.4byte	.LVL420
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL420
	.4byte	.LFE75
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST209:
	.4byte	.LVL416
	.4byte	.LVL419
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL419
	.4byte	.LFE75
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST210:
	.4byte	.LVL421
	.4byte	.LVL422
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST327:
	.4byte	.LVL901
	.4byte	.LVL903-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL903-1
	.4byte	.LVL905
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL905
	.4byte	.LFE120
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST328:
	.4byte	.LVL901
	.4byte	.LVL903-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL903-1
	.4byte	.LVL905
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL905
	.4byte	.LFE120
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST329:
	.4byte	.LVL902
	.4byte	.LVL903-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL903-1
	.4byte	.LVL904
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST330:
	.4byte	.LVL902
	.4byte	.LVL903-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL903-1
	.4byte	.LVL904
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB128
	.4byte	.LBE128
	.4byte	.LBB133
	.4byte	.LBE133
	.4byte	.LBB134
	.4byte	.LBE134
	.4byte	.LBB135
	.4byte	.LBE135
	.4byte	0
	.4byte	0
	.4byte	.LBB136
	.4byte	.LBE136
	.4byte	.LBB142
	.4byte	.LBE142
	.4byte	0
	.4byte	0
	.4byte	.LBB154
	.4byte	.LBE154
	.4byte	.LBB158
	.4byte	.LBE158
	.4byte	.LBB159
	.4byte	.LBE159
	.4byte	0
	.4byte	0
	.4byte	.LBB162
	.4byte	.LBE162
	.4byte	.LBB166
	.4byte	.LBE166
	.4byte	.LBB167
	.4byte	.LBE167
	.4byte	0
	.4byte	0
	.4byte	.LBB170
	.4byte	.LBE170
	.4byte	.LBB173
	.4byte	.LBE173
	.4byte	0
	.4byte	0
	.4byte	.LBB176
	.4byte	.LBE176
	.4byte	.LBB179
	.4byte	.LBE179
	.4byte	0
	.4byte	0
	.4byte	.LBB180
	.4byte	.LBE180
	.4byte	.LBB184
	.4byte	.LBE184
	.4byte	.LBB185
	.4byte	.LBE185
	.4byte	0
	.4byte	0
	.4byte	.LBB188
	.4byte	.LBE188
	.4byte	.LBB191
	.4byte	.LBE191
	.4byte	0
	.4byte	0
	.4byte	.LBB194
	.4byte	.LBE194
	.4byte	.LBB197
	.4byte	.LBE197
	.4byte	0
	.4byte	0
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.LFB121
	.4byte	.LFE121
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF381:
	.ascii	"DrawPixel4\000"
.LASF190:
	.ascii	"pRotData\000"
.LASF196:
	.ascii	"CurrentPalette\000"
.LASF317:
	.ascii	"GetPixel3\000"
.LASF224:
	.ascii	"ttlscrPalette\000"
.LASF316:
	.ascii	"GetPixel5\000"
.LASF299:
	.ascii	"xCenter\000"
.LASF388:
	.ascii	"PlayVolumeSweep\000"
.LASF430:
	.ascii	"main.c\000"
.LASF207:
	.ascii	"__fdlibm_xopen\000"
.LASF325:
	.ascii	"initsound32\000"
.LASF280:
	.ascii	"leftwipe3\000"
.LASF13:
	.ascii	"largercreation\000"
.LASF191:
	.ascii	"sprites\000"
.LASF426:
	.ascii	"srand\000"
.LASF73:
	.ascii	"_on_exit_args\000"
.LASF161:
	.ascii	"OAMmem\000"
.LASF270:
	.ascii	"loadSpritePalPart\000"
.LASF9:
	.ascii	"dealt\000"
.LASF294:
	.ascii	"randomMT\000"
.LASF216:
	.ascii	"stry4Bitmap\000"
.LASF141:
	.ascii	"_wctomb_state\000"
.LASF434:
	.ascii	"hardreset\000"
.LASF385:
	.ascii	"PlayNote\000"
.LASF366:
	.ascii	"buffer\000"
.LASF261:
	.ascii	"xinc1\000"
.LASF138:
	.ascii	"_r48\000"
.LASF405:
	.ascii	"Flip\000"
.LASF184:
	.ascii	"OAMEntry\000"
.LASF8:
	.ascii	"usedatk\000"
.LASF143:
	.ascii	"_signal_buf\000"
.LASF213:
	.ascii	"stry2Palette\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF203:
	.ascii	"next\000"
.LASF395:
	.ascii	"bitmapheight\000"
.LASF87:
	.ascii	"_lbfsize\000"
.LASF85:
	.ascii	"_flags\000"
.LASF220:
	.ascii	"stry5Palette\000"
.LASF32:
	.ascii	"__int32_t\000"
.LASF159:
	.ascii	"int16\000"
.LASF102:
	.ascii	"_errno\000"
.LASF428:
	.ascii	"atoi\000"
.LASF297:
	.ascii	"ScrollBG\000"
.LASF290:
	.ascii	"nspr\000"
.LASF100:
	.ascii	"_flags2\000"
.LASF248:
	.ascii	"GetOBJAttrib\000"
.LASF187:
	.ascii	"filler2\000"
.LASF252:
	.ascii	"battle\000"
.LASF189:
	.ascii	"filler4\000"
.LASF408:
	.ascii	"DrawBitmapTransparent\000"
.LASF398:
	.ascii	"halfBitmapWidth\000"
.LASF403:
	.ascii	"SetPalette\000"
.LASF321:
	.ascii	"Savestr\000"
.LASF215:
	.ascii	"stry3Palette\000"
.LASF48:
	.ascii	"_LOCK_RECURSIVE_T\000"
.LASF421:
	.ascii	"Sleep\000"
.LASF401:
	.ascii	"start_at\000"
.LASF350:
	.ascii	"loadSpriteGraphics\000"
.LASF89:
	.ascii	"_read\000"
.LASF419:
	.ascii	"mode\000"
.LASF145:
	.ascii	"_mbrlen_state\000"
.LASF402:
	.ascii	"DrawBitmapSectorTransparent\000"
.LASF219:
	.ascii	"r1Bitmap\000"
.LASF198:
	.ascii	"song\000"
.LASF104:
	.ascii	"_stdout\000"
.LASF406:
	.ascii	"DrawFullScreenOpaque\000"
.LASF20:
	.ascii	"anim\000"
.LASF14:
	.ascii	"movecnt\000"
.LASF41:
	.ascii	"_fpos_t\000"
.LASF80:
	.ascii	"_fns\000"
.LASF88:
	.ascii	"_cookie\000"
.LASF307:
	.ascii	"fillscreen3\000"
.LASF17:
	.ascii	"udframe\000"
.LASF253:
	.ascii	"spl_CreateFakeBSOD\000"
.LASF176:
	.ascii	"paletteMem\000"
.LASF212:
	.ascii	"stry2Bitmap\000"
.LASF58:
	.ascii	"_Bigint\000"
.LASF407:
	.ascii	"DrawBitmapOpaque\000"
.LASF70:
	.ascii	"__tm_wday\000"
.LASF320:
	.ascii	"LoadInt\000"
.LASF373:
	.ascii	"DrawChar4\000"
.LASF112:
	.ascii	"_result\000"
.LASF337:
	.ascii	"FrameCount\000"
.LASF232:
	.ascii	"Phase\000"
.LASF43:
	.ascii	"uint32_t\000"
.LASF66:
	.ascii	"__tm_hour\000"
.LASF352:
	.ascii	"loadSpritePal\000"
.LASF436:
	.ascii	"GetCurrentPalette\000"
.LASF276:
	.ascii	"static3\000"
.LASF283:
	.ascii	"tstsndcmp\000"
.LASF177:
	.ascii	"ScanlineCounter\000"
.LASF344:
	.ascii	"Palette\000"
.LASF186:
	.ascii	"filler1\000"
.LASF52:
	.ascii	"__count\000"
.LASF188:
	.ascii	"filler3\000"
.LASF0:
	.ascii	"float\000"
.LASF245:
	.ascii	"tile\000"
.LASF335:
	.ascii	"FadeToGrayScale\000"
.LASF72:
	.ascii	"__tm_isdst\000"
.LASF192:
	.ascii	"rotData\000"
.LASF65:
	.ascii	"__tm_min\000"
.LASF154:
	.ascii	"_impure_ptr\000"
.LASF151:
	.ascii	"_nextf\000"
.LASF128:
	.ascii	"_rand48\000"
.LASF200:
	.ascii	"sounds\000"
.LASF113:
	.ascii	"_result_k\000"
.LASF38:
	.ascii	"long long unsigned int\000"
.LASF134:
	.ascii	"_asctime_buf\000"
.LASF370:
	.ascii	"FadeIn\000"
.LASF84:
	.ascii	"__sFILE\000"
.LASF62:
	.ascii	"_wds\000"
.LASF226:
	.ascii	"buf2\000"
.LASF194:
	.ascii	"zoom\000"
.LASF162:
	.ascii	"VideoBuffer\000"
.LASF124:
	.ascii	"__FILE\000"
.LASF208:
	.ascii	"__fdlibm_posix\000"
.LASF96:
	.ascii	"_offset\000"
.LASF227:
	.ascii	"time\000"
.LASF243:
	.ascii	"nbyte\000"
.LASF244:
	.ascii	"loadBGTiles\000"
.LASF322:
	.ascii	"value\000"
.LASF429:
	.ascii	"GNU C11 7.1.0 -mlong-calls -mcpu=arm7tdmi -mtune=ar"
	.ascii	"m7tdmi -marm -mthumb -mthumb-interwork -g -Og -O1 -"
	.ascii	"O2 -O3 -O -Os -ffast-math -fomit-frame-pointer\000"
.LASF172:
	.ascii	"loop\000"
.LASF107:
	.ascii	"_emergency\000"
.LASF267:
	.ascii	"color\000"
.LASF353:
	.ascii	"RotateSprite\000"
.LASF246:
	.ascii	"GetDataTile\000"
.LASF379:
	.ascii	"Print4\000"
.LASF47:
	.ascii	"counter\000"
.LASF431:
	.ascii	"C:\\Users\\nickm\\Desktop\\Code\\Game Boy Advance\\"
	.ascii	"Scratchy World Recreation\000"
.LASF5:
	.ascii	"musici\000"
.LASF204:
	.ascii	"do_regen\000"
.LASF437:
	.ascii	"VBlankIntrWait\000"
.LASF314:
	.ascii	"GetArrayItem\000"
.LASF239:
	.ascii	"width\000"
.LASF265:
	.ascii	"SetOBJPalPoint\000"
.LASF235:
	.ascii	"offset\000"
.LASF64:
	.ascii	"__tm_sec\000"
.LASF156:
	.ascii	"suboptarg\000"
.LASF71:
	.ascii	"__tm_yday\000"
.LASF375:
	.ascii	"letter\000"
.LASF106:
	.ascii	"_inc\000"
.LASF79:
	.ascii	"_ind\000"
.LASF158:
	.ascii	"vu32\000"
.LASF286:
	.ascii	"scanlines3\000"
.LASF157:
	.ascii	"vu16\000"
.LASF394:
	.ascii	"bitmapy\000"
.LASF330:
	.ascii	"setbg2m3\000"
.LASF59:
	.ascii	"_next\000"
.LASF210:
	.ascii	"stry1Bitmap\000"
.LASF147:
	.ascii	"_mbsrtowcs_state\000"
.LASF382:
	.ascii	"DrawChar\000"
.LASF383:
	.ascii	"Print\000"
.LASF327:
	.ascii	"CycleBGPalette\000"
.LASF26:
	.ascii	"player\000"
.LASF53:
	.ascii	"__value\000"
.LASF114:
	.ascii	"_p5s\000"
.LASF310:
	.ascii	"mult\000"
.LASF341:
	.ascii	"count\000"
.LASF230:
	.ascii	"FadeInWhite\000"
.LASF46:
	.ascii	"thread_tag\000"
.LASF149:
	.ascii	"_wcsrtombs_state\000"
.LASF139:
	.ascii	"_mblen_state\000"
.LASF251:
	.ascii	"start\000"
.LASF356:
	.ascii	"y_scale\000"
.LASF2:
	.ascii	"char\000"
.LASF67:
	.ascii	"__tm_mday\000"
.LASF168:
	.ascii	"internalname\000"
.LASF120:
	.ascii	"_sig_func\000"
.LASF146:
	.ascii	"_mbrtowc_state\000"
.LASF119:
	.ascii	"_atexit0\000"
.LASF284:
	.ascii	"SetOBJBefore\000"
.LASF285:
	.ascii	"scanlinesdata3\000"
.LASF349:
	.ascii	"bgPal\000"
.LASF304:
	.ascii	"paltype\000"
.LASF263:
	.ascii	"yinc1\000"
.LASF319:
	.ascii	"string\000"
.LASF234:
	.ascii	"GetROMHeader\000"
.LASF178:
	.ascii	"Memory\000"
.LASF414:
	.ascii	"DMA_Copy\000"
.LASF55:
	.ascii	"_flock_t\000"
.LASF268:
	.ascii	"SetBGPalPoint\000"
.LASF21:
	.ascii	"frames\000"
.LASF173:
	.ascii	"FrontBuffer\000"
.LASF409:
	.ascii	"PlotPixelTransparent\000"
.LASF50:
	.ascii	"__wch\000"
.LASF127:
	.ascii	"_iobs\000"
.LASF417:
	.ascii	"dest\000"
.LASF11:
	.ascii	"maxhp\000"
.LASF92:
	.ascii	"_close\000"
.LASF16:
	.ascii	"coins\000"
.LASF376:
	.ascii	"color1\000"
.LASF423:
	.ascii	"sprintf\000"
.LASF110:
	.ascii	"__sdidinit\000"
.LASF249:
	.ascii	"GetOBJPos\000"
.LASF302:
	.ascii	"DrawLine3\000"
.LASF195:
	.ascii	"font_matrix\000"
.LASF318:
	.ascii	"GetROMOff\000"
.LASF427:
	.ascii	"rand\000"
.LASF214:
	.ascii	"stry3Bitmap\000"
.LASF254:
	.ascii	"playSoundUntilDone\000"
.LASF364:
	.ascii	"CopyOAM\000"
.LASF103:
	.ascii	"_stdin\000"
.LASF136:
	.ascii	"_gamma_signgam\000"
.LASF57:
	.ascii	"__lock_t\000"
.LASF37:
	.ascii	"long long int\000"
.LASF163:
	.ascii	"OAMData\000"
.LASF82:
	.ascii	"_base\000"
.LASF45:
	.ascii	"lock\000"
.LASF115:
	.ascii	"_freelist\000"
.LASF123:
	.ascii	"deviceData\000"
.LASF130:
	.ascii	"_mult\000"
.LASF360:
	.ascii	"frame\000"
.LASF56:
	.ascii	"__ULong\000"
.LASF206:
	.ascii	"__fdlibm_svid\000"
.LASF278:
	.ascii	"topwipe3\000"
.LASF303:
	.ascii	"fillpal\000"
.LASF148:
	.ascii	"_wcrtomb_state\000"
.LASF328:
	.ascii	"InvertBGPalette\000"
.LASF342:
	.ascii	"Dest\000"
.LASF24:
	.ascii	"reqexp\000"
.LASF413:
	.ascii	"PlotPixelOpaque\000"
.LASF86:
	.ascii	"_file\000"
.LASF333:
	.ascii	"setbg2\000"
.LASF201:
	.ascii	"sound\000"
.LASF435:
	.ascii	"DoFade\000"
.LASF361:
	.ascii	"initRotSprite\000"
.LASF165:
	.ascii	"OBJPaletteMem\000"
.LASF311:
	.ascii	"var1\000"
.LASF312:
	.ascii	"var2\000"
.LASF384:
	.ascii	"DrawPixel3\000"
.LASF27:
	.ascii	"enemy\000"
.LASF111:
	.ascii	"__cleanup\000"
.LASF209:
	.ascii	"__fdlib_version\000"
.LASF404:
	.ascii	"palette\000"
.LASF54:
	.ascii	"_mbstate_t\000"
.LASF277:
	.ascii	"bottomwipe3\000"
.LASF323:
	.ascii	"SaveInt\000"
.LASF308:
	.ascii	"drawRect\000"
.LASF271:
	.ascii	"GetOBJPalPoint\000"
.LASF345:
	.ascii	"From\000"
.LASF174:
	.ascii	"BackBuffer\000"
.LASF309:
	.ascii	"dist\000"
.LASF400:
	.ascii	"y_times_bitmapHalfWidth\000"
.LASF331:
	.ascii	"image\000"
.LASF18:
	.ascii	"tilex\000"
.LASF19:
	.ascii	"tiley\000"
.LASF275:
	.ascii	"circlewipe3\000"
.LASF274:
	.ascii	"binarywipe3\000"
.LASF236:
	.ascii	"header\000"
.LASF300:
	.ascii	"yCenter\000"
.LASF240:
	.ascii	"height\000"
.LASF150:
	.ascii	"_h_errno\000"
.LASF367:
	.ascii	"MosaicIn\000"
.LASF399:
	.ascii	"y_times_halfWidth\000"
.LASF391:
	.ascii	"selector\000"
.LASF258:
	.ascii	"numpixels\000"
.LASF3:
	.ascii	"seed\000"
.LASF167:
	.ascii	"Cartridge\000"
.LASF347:
	.ascii	"bgPic2Buffer\000"
.LASF229:
	.ascii	"playSound\000"
.LASF225:
	.ascii	"btlBitmap\000"
.LASF343:
	.ascii	"SetPalette2\000"
.LASF218:
	.ascii	"stry5Bitmap\000"
.LASF377:
	.ascii	"color2\000"
.LASF238:
	.ascii	"data\000"
.LASF272:
	.ascii	"GetBGPalPoint\000"
.LASF68:
	.ascii	"__tm_mon\000"
.LASF389:
	.ascii	"PlayFrequencySweep\000"
.LASF36:
	.ascii	"__int64_t\000"
.LASF39:
	.ascii	"long double\000"
.LASF378:
	.ascii	"draw\000"
.LASF44:
	.ascii	"_LOCK_T\000"
.LASF355:
	.ascii	"x_scale\000"
.LASF222:
	.ascii	"sprsPalette\000"
.LASF357:
	.ascii	"MoveSprite\000"
.LASF228:
	.ascii	"main\000"
.LASF90:
	.ascii	"_write\000"
.LASF392:
	.ascii	"DrawBitmapSectorOpaque\000"
.LASF415:
	.ascii	"channel\000"
.LASF193:
	.ascii	"angle\000"
.LASF6:
	.ascii	"room\000"
.LASF295:
	.ascii	"reloadMT\000"
.LASF78:
	.ascii	"_atexit\000"
.LASF99:
	.ascii	"_mbstate\000"
.LASF266:
	.ascii	"slot\000"
.LASF30:
	.ascii	"short int\000"
.LASF256:
	.ascii	"deltax\000"
.LASF257:
	.ascii	"deltay\000"
.LASF340:
	.ascii	"FadeCount\000"
.LASF289:
	.ascii	"ospr\000"
.LASF33:
	.ascii	"long int\000"
.LASF411:
	.ascii	"vptr\000"
.LASF397:
	.ascii	"halfWidth\000"
.LASF241:
	.ascii	"replaceArrayElmt\000"
.LASF247:
	.ascii	"GetOBJOffset\000"
.LASF368:
	.ascii	"delay\000"
.LASF336:
	.ascii	"gray\000"
.LASF410:
	.ascii	"location\000"
.LASF386:
	.ascii	"length\000"
.LASF339:
	.ascii	"Table\000"
.LASF211:
	.ascii	"stry1Palette\000"
.LASF12:
	.ascii	"shield\000"
.LASF420:
	.ascii	"WaitForVblank\000"
.LASF122:
	.ascii	"__sf\000"
.LASF61:
	.ascii	"_sign\000"
.LASF231:
	.ascii	"temp\000"
.LASF326:
	.ascii	"initsound16\000"
.LASF25:
	.ascii	"game\000"
.LASF97:
	.ascii	"_data\000"
.LASF217:
	.ascii	"stry4Palette\000"
.LASF51:
	.ascii	"__wchb\000"
.LASF155:
	.ascii	"_global_impure_ptr\000"
.LASF69:
	.ascii	"__tm_year\000"
.LASF15:
	.ascii	"health\000"
.LASF346:
	.ascii	"Initialize\000"
.LASF7:
	.ascii	"arpos\000"
.LASF255:
	.ascii	"glideSpritetoPos\000"
.LASF205:
	.ascii	"__fdlibm_ieee\000"
.LASF387:
	.ascii	"adjustedLength\000"
.LASF135:
	.ascii	"_localtime_buf\000"
.LASF273:
	.ascii	"coolscanlines3\000"
.LASF153:
	.ascii	"_unused\000"
.LASF416:
	.ascii	"source\000"
.LASF118:
	.ascii	"_new\000"
.LASF116:
	.ascii	"_cvtlen\000"
.LASF60:
	.ascii	"_maxwds\000"
.LASF142:
	.ascii	"_l64a_buf\000"
.LASF371:
	.ascii	"FadeOut\000"
.LASF281:
	.ascii	"spr1\000"
.LASF282:
	.ascii	"spr2\000"
.LASF264:
	.ascii	"yinc2\000"
.LASF315:
	.ascii	"GetPixel4\000"
.LASF221:
	.ascii	"sprs\000"
.LASF305:
	.ascii	"pixpos\000"
.LASF95:
	.ascii	"_blksize\000"
.LASF262:
	.ascii	"xinc2\000"
.LASF63:
	.ascii	"__tm\000"
.LASF98:
	.ascii	"_lock\000"
.LASF334:
	.ascii	"drawbg2\000"
.LASF35:
	.ascii	"long unsigned int\000"
.LASF180:
	.ascii	"attribute0\000"
.LASF181:
	.ascii	"attribute1\000"
.LASF182:
	.ascii	"attribute2\000"
.LASF183:
	.ascii	"attribute3\000"
.LASF332:
	.ascii	"setbg2novb\000"
.LASF126:
	.ascii	"_niobs\000"
.LASF49:
	.ascii	"wint_t\000"
.LASF175:
	.ascii	"videoBuffer\000"
.LASF42:
	.ascii	"int32_t\000"
.LASF359:
	.ascii	"sprsize\000"
.LASF164:
	.ascii	"BGPaletteMem\000"
.LASF301:
	.ascii	"radius\000"
.LASF75:
	.ascii	"_dso_handle\000"
.LASF242:
	.ascii	"byte\000"
.LASF202:
	.ascii	"state\000"
.LASF292:
	.ascii	"Random\000"
.LASF338:
	.ascii	"index\000"
.LASF279:
	.ascii	"rightwipe3\000"
.LASF185:
	.ascii	"tagRotData\000"
.LASF171:
	.ascii	"offsetOAM\000"
.LASF250:
	.ascii	"type\000"
.LASF117:
	.ascii	"_cvtbuf\000"
.LASF29:
	.ascii	"unsigned char\000"
.LASF34:
	.ascii	"__uint32_t\000"
.LASF393:
	.ascii	"bitmapx\000"
.LASF144:
	.ascii	"_getdate_err\000"
.LASF365:
	.ascii	"resetOffset\000"
.LASF362:
	.ascii	"initSprite\000"
.LASF259:
	.ascii	"dinc1\000"
.LASF260:
	.ascii	"dinc2\000"
.LASF351:
	.ascii	"size\000"
.LASF131:
	.ascii	"_add\000"
.LASF418:
	.ascii	"WordCount\000"
.LASF288:
	.ascii	"cloneSprite\000"
.LASF237:
	.ascii	"drawbitmap3att\000"
.LASF324:
	.ascii	"initsound8\000"
.LASF313:
	.ascii	"divide\000"
.LASF372:
	.ascii	"SleepQ\000"
.LASF287:
	.ascii	"SleepF\000"
.LASF199:
	.ascii	"frequency\000"
.LASF81:
	.ascii	"__sbuf\000"
.LASF390:
	.ascii	"PlayWhiteNoise\000"
.LASF374:
	.ascii	"left\000"
.LASF223:
	.ascii	"ttlscrBitmap\000"
.LASF296:
	.ascii	"seedMT\000"
.LASF329:
	.ascii	"Color\000"
.LASF170:
	.ascii	"vframe\000"
.LASF166:
	.ascii	"BGTileMem\000"
.LASF125:
	.ascii	"_glue\000"
.LASF433:
	.ascii	"__fdlibm_version\000"
.LASF169:
	.ascii	"v_buffer\000"
.LASF306:
	.ascii	"drawbitmap3\000"
.LASF121:
	.ascii	"__sglue\000"
.LASF354:
	.ascii	"rotDataIndex\000"
.LASF133:
	.ascii	"_strtok_last\000"
.LASF140:
	.ascii	"_mbtowc_state\000"
.LASF109:
	.ascii	"_locale\000"
.LASF293:
	.ascii	"Range\000"
.LASF233:
	.ascii	"FadeOutWhite\000"
.LASF74:
	.ascii	"_fnargs\000"
.LASF28:
	.ascii	"signed char\000"
.LASF412:
	.ascii	"plot3\000"
.LASF101:
	.ascii	"_reent\000"
.LASF31:
	.ascii	"short unsigned int\000"
.LASF179:
	.ascii	"tagOAMEntry\000"
.LASF422:
	.ascii	"memcpy\000"
.LASF424:
	.ascii	"__builtin_memcpy\000"
.LASF23:
	.ascii	"earned\000"
.LASF298:
	.ascii	"DrawCircle3\000"
.LASF380:
	.ascii	"SetOBJBehind\000"
.LASF76:
	.ascii	"_fntypes\000"
.LASF348:
	.ascii	"bgPic\000"
.LASF358:
	.ascii	"updateSprite\000"
.LASF83:
	.ascii	"_size\000"
.LASF160:
	.ascii	"double\000"
.LASF40:
	.ascii	"_off_t\000"
.LASF396:
	.ascii	"bitmapwidth\000"
.LASF94:
	.ascii	"_nbuf\000"
.LASF132:
	.ascii	"_unused_rand\000"
.LASF369:
	.ascii	"MosaicOut\000"
.LASF269:
	.ascii	"loadBGPalPart\000"
.LASF291:
	.ascii	"address\000"
.LASF363:
	.ascii	"InitializeSprites\000"
.LASF108:
	.ascii	"_unspecified_locale_info\000"
.LASF425:
	.ascii	"__builtin_sprintf\000"
.LASF10:
	.ascii	"timer\000"
.LASF77:
	.ascii	"_is_cxa\000"
.LASF129:
	.ascii	"_seed\000"
.LASF137:
	.ascii	"_rand_next\000"
.LASF432:
	.ascii	"__locale_t\000"
.LASF91:
	.ascii	"_seek\000"
.LASF4:
	.ascii	"rngnum\000"
.LASF105:
	.ascii	"_stderr\000"
.LASF152:
	.ascii	"_nmalloc\000"
.LASF93:
	.ascii	"_ubuf\000"
.LASF197:
	.ascii	"FadeTable\000"
.LASF22:
	.ascii	"hardhead\000"
	.ident	"GCC: (devkitARM release 47) 7.1.0"
	.text
	.code 16
	.align	1
.L171:
	bx	r3
.L422:
	bx	r4
.L172:
	bx	r5
.L630:
	bx	r6
.L631:
	bx	r7
