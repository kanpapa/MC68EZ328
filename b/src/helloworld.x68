*-----------------------------------------------------------
* Title      : Hello world for MC68EZ328 DragonOne SBC 
* Written by : Kazuhiro Ouchi @kanpapa
* Date       : 2021/05/01
* Description: Output the character string "Hello world" to UART
*-----------------------------------------------------------

;
; Memory map
;
; $00000000-$007fffff DRAM (4Mx16bit)
; $00080000-$0fffffff -
; $10000000-$107fffff Flash Memory (4Mx16bit)
;
         ORG    $1000

START:

loop:    lea.l  message.l,a3
         bsr    wstr
         bra    loop

;
; a3 Pointed to first byte
; end with 0
wstr:    move.b (a3)+,d7
         cmp.b  #0,d7
         beq    wstr1
         bsr    putc
         bra    wstr
wstr1:   rts

;
; Put UART data
;
putc:
	    move.b	d7,$fffff907
pclp:
	    move.w	$fffff906,d7
	    and.w	#$2000,d7
	    beq	pclp
	    rts
;
; Get UART data (unused)
;
getc:
        move.w  $fffff904,d7
        and.w   #$2000,d7
        beq getc
        move.b  $fffff905,d7
        rts
;
; Messages data
;
cr       equ    $0d        ;ASCII code for Carriage Return
lf       equ    $0a        ;ASCII code for Line Feed
message  dc.b   'HELLO WORLD',cr,lf,0

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
