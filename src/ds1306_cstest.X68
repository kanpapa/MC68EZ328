*-----------------------------------------------------------
* Title      : DS1306 CS TEST PROGRAM
* Written by : Kazuhiro Ouchi @kanpapa
* Date       : 2021-08-16
* Description: Program to check the CS signal of the RTC DS1306.
*-----------------------------------------------------------
    ORG    $8000

* Port B
PBDIR       equ $FFFFF408
PBDATA      equ PBDIR+1
PBPUEN      equ PBDIR+2
PBSEL       equ PBDIR+3

* MC68EZ328     DS1306
* ----------------------
* PE0:SPMTXD -- SDI
* PE1:SPMRXD -- SDO
* PE2:SPMCLK -- SCLK
* PB1:CSB1   -- CE

START:  move.b  #$02,PBSEL.L    ; PORTB SEL1 = 1 (The I/O port function pins are connected.)
        move.w  #$0200,PBDIR.L  ; PORTB DIR1 = 1 (The pins are outputs.), RTC CS = Low

LOOP:   move.B  #$02,PBDATA.L   ; RTC CS = High
        NOP
        NOP
        move.B  #$00,PBDATA.L   ; RTC CS = Low

        bra     LOOP            ; return to moniror

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
