*-----------------------------------------------------------
* Title      : Echoback test for MC68EZ328 DragonOne SBC
* Written by : Kazuhiro Ouchi @kanpapa
* Date       : 2021/05/02
* Description: UART echoback test
*-----------------------------------------------------------

;
; Memory map
;
; $00000000-$007fffff DRAM (4Mx16bit)
; $00080000-$0fffffff -
; $10000000-$107fffff Flash Memory (4Mx16bit)
;

STACK_START equ $2000

        ORG    $1000

START:
        lea    STACK_START, SP     * Set our stack pointer to be sure

loop:   bsr    getc
        bsr    putc
        bra    loop

;
; Put UART data
;
putc:
	    move.b	d7,$fffff907
pclp:
	    move.w	$fffff906,d7
	    and.w	#$2000,d7
	    beq     pclp
	    rts
;
; Get UART data
;
getc:
        move.w  $fffff904,d7
        and.w   #$2000,d7
        beq     getc
        move.b  $fffff905,d7
        rts

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
