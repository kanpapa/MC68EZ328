#include <linux/config.h>
	
	.global _start
	.global _stext

	.global _rambase
	.global _ramvec
	.global _ramstart
	.global _ramend

#ifdef CONFIG_INIT_LCD
	.global splash_bits
#endif

	.data

/*
 *      Set up the usable of RAM stuff. Size of RAM is determined then
 *      an initial stack set up at the end.
 */
.align 4
_ramvec:
.long   0
_rambase:
.long   0
_ramstart:
.long   0
_ramend:
.long   0

#ifdef CONFIG_INIT_LCD
splash_bits:
#include "bootlogo.rh"
#endif
	
	.text
_start:
_stext:	movew	#0x2700,%sr
#ifdef CONFIG_INIT_LCD
	movel	#splash_bits, 0xfffffA00 /* LSSA */
	moveb	#0x28,   0xfffffA05	/* LVPW */
	movew	#0x280,  0xFFFFFa08	/* LXMAX */
	movew	#0x1df,  0xFFFFFa0a	/* LYMAX */
	moveb	#0,      0xfffffa29	/* LBAR */
	moveb	#0,      0xfffffa25	/* LPXCD */
	moveb	#0x08,   0xFFFFFa20	/* LPICF */
	moveb	#0x01,   0xFFFFFA21	/* -ve pol */
	moveb	#0x81,   0xfffffA27	/* LCKCON */
	movew	#0xff00, 0xfffff412	/* LCD pins */
#endif

#ifdef CONFIG_DIRECT_IO_ACCESS
	moveb	#0x0,	0xfffff000
#endif

        nop
        /* Init like the MOT ADS board.  Check this first */
        moveb   #0x00,   0xfffffb0b     /* Watchdog off */
        moveb   #0x10,   0xfffff000     /* SCR */

        movew   #0x2400, 0xfffff200     /* PLLCR */
        movew   #0x0123, 0xfffff202     /* PLLFSR */

        moveb   #0x00,   0xfffff40b     /* enable chip select */
        moveb   #0x00,   0xfffff423     /* enable /DWE */
        moveb   #0x08,   0xfffffd0d     /* disable hardmap */
        moveb   #0x07,   0xfffffd0f     /* level 7 interrupt clear */

        movew   #0x8000, 0xfffff100     /* FLASH at 0x10000000 */
        movew   #0x018d, 0xfffff110     /* 8Meg, 16bit, enable, 0ws */

        movew   #0x8f00, 0xfffffc00     /* DRAM configuration */
        movew   #0x9667, 0xfffffc02     /* DRAM control */
        movew   #0x0000, 0xfffff106     /* DRAM at 0x00000000 */
        movew   #0x068f, 0xfffff116     /* 8Meg, 16bit, enable, 0ws */

        moveb   #0x40,   0xfffff300     /* IVR */
        movel   #0x007FFFFF, %d0        /* IMR */
        movel   %d0,     0xfffff304

        moveb   0xfffff42b, %d0
        andb    #0xe0,   %d0
        moveb   %d0,     0xfffff42b

	moveb	#0x30,	0xFFFFF119      /* emucs init, 3ws */
	moveb	#0x03,	0xFFFFF42B	/* nable clko */

	movew	#0x8000, 0xFFFFF102	/* CSB */
	movew	#0x0190, 0xFFFFF112	/* disable eth + DPRAM - KH */

	moveb   #0x08,   0xfffff906     /* Ignore CTS */
        movew   #0x010b, 0xfffff902     /* BAUD to 9600 */
        movew   #0xe100, 0xfffff900     /* enable */

	moveal  #__ramend-CONFIG_MEMORY_RESERVE*0x100000 - 0x10, %sp
	movew	#32767, %d0  /* PLL settle wait loop */
1:	subq	#1, %d0
	bne	1b

	/* Copy data segment from ROM to RAM */
	moveal	#__data_rom_start, %a0
	moveal	#_sdata, %a1
	moveal	#_edata, %a2

	/* Copy %a0 to %a1 until %a1 == %a2 */
1:	movel	%a0@+, %a1@+
	cmpal	%a1, %a2
	bhi	1b

	moveal	#_sbss, %a0
	moveal	#_ebss, %a1
	/* Copy 0 to %a0 until %a0 == %a1 */
	
1:
	clrl	%a0@+
	cmpal	%a0, %a1
	bhi	1b

        movel   #_sdata, %d0    
        movel   %d0,    _rambase        
        movel   #_ebss,  %d0
        movel   %d0,    _ramstart
	movel	#__ramend-CONFIG_MEMORY_RESERVE*0x100000, %d0
	movel	%d0,	_ramend
	movel	#__ramvec,	%d0
	movel	%d0,	_ramvec
	
/*
 * load the current task pointer and stack
 */
        lea     init_task_union,%a0
        movel   %a0, _current_task
        lea     0x2000(%a0),%sp

1:	jsr	start_kernel
        bra 1b
_exit:

	jmp	_exit


putc:
	moveb	%d7,0xfffff907
1:
	movew	0xfffff906, %d7
	andw	#0x2000, %d7
	beq	1b
	rts

	.data
env:
	.long	0
	.text

