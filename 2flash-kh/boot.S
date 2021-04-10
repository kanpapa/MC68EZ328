/* Dragonix VZ flash bootstrap programming software
 This is GNU software
 Copyright 2001 by Daniel Haensse <daniel.haensse@freesurf.ch>*/

	.global __text_start
	.global __main
	.global __bss_start
	.global __bss_end
	.global __ram_start
	.global __ram_end
	.global __rom_start
	.global __rom_end
	.global __data_start
	.global __data_end

	.global splash_bits
	.global _start
	.global _stext

#define DEBUG
#define STACK_GAURD 0x10

	.text
	.ORG 0x1000
_start:
_stext:
        movew	#0x2700, %sr            /* Exceptions off! */

/* Init chip registers.
(most of the work is alredy done by bbug and init.b) */

//	movew   #0x2400, 0xfffff200	/* PLLCR */
//	movew   #0x0123, 0xfffff202	/* PLLFSR */


//	movew	#16384, %d0  /* PLL settle wait loop */
//L0:
//	subw	#1, %d0
//	bne	L0

	moveq	#'A',%d7
	moveb	%d7,0xfffff907          /* No absolute addresses */
pclp1:
	movew	0xfffff906, %d7
	andw	#0x2000, %d7
	beq	pclp1


	moveal	#_ramend, %ssp
	moveal	#__bss_start, %a0
	moveal	#__bss_end, %a1

	/* Copy 0 to %a0 until %a0 >= %a1 */
L1:
	movel	#0, %a0@+
	cmpal	%a0, %a1
	bhi	L1


	moveq	#'B', %d7
	jsr	putc


	pea	0
	pea	env
	pea	%sp@(4)
	pea	0

	moveq	#'C', %d7
	jsr	putc

lp:
	jsr	loader

  /* I added the following line to cause DragonBall to go back to his bootstrap mode */
	//rts

_exit:
	jmp	_exit

__main:
	/* nothing */
	rts

putc:
	moveb	%d7,0xfffff907
pclp:
	movew	0xfffff906, %d7
	andw	#0x2000, %d7
	beq	pclp
	rts

	.data
env:
	.long	0
