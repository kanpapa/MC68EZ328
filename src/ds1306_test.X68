*-----------------------------------------------------------
* Title      : DS1306 TEST PROGRAM
* Written by : Kazuhiro Ouchi
* Date       : 2021-08-16
* Description: The following software code demonstrates a 10-bit exchange with the SPMCLK at 1MHz
*              (SYSCLK = 16MHz). The interrupt bit is polled, which means no interrupt is posted to the
*              processor.
*-----------------------------------------------------------
    ORG    $8000

* SPIM
SPIMDATA    equ $fffff800
SPIMCONT    equ SPIMDATA+2

* Port E
PEDIR       equ $fffff420
PEDATA      equ PEDIR+1
PEPUEN      equ PEDIR+2
PESEL       equ PEDIR+3

* Monitor entry point
monitorHotstart equ $00001064
printHexWord    equ $0000171A
printHexAddr    equ $00001724
printHexLong    equ $0000172C
printHexByte    equ $0000174C

* MC68EZ328     DS1306
* ----------------------
* PE0:SPMTXD -- SDI
* PE1:SPMRXD -- SDO
* PE2:SPMCLK -- SCLK
* PB1:CSB1   -- CE

* DS1306 RTC REGISTERS AND ADDRESS MAP
SEC_READ    equ     $00
SEC_WRITE   equ     $80
MIN_READ    equ     $01
MIN_WRITE   equ     $81

START:

INITIALIZE: lea     SPIMDATA.L,A0   ; point to SPIM registers
            lea     PEDIR.L,A1      ; point to enable bit register (Port E-3)
            andi.b  #$f8,3(A1)      ; select Port E pins to SPIM function. 1111 1000   0 = The internal chip function pins are connected.
            move.w  #$4007,2(A0)    ; PHA=0, POL=0, 10-bit, divide by 16 clk  0100 0000 0000 1001
                                    ;  010 DATA RATE 1/16CLK
                                    ;  xxx Reserved
                                    ;  0 ENABLE
                                    ;  0 XCH
                                    ;  0 IRQ
                                    ;  0 IRQEN
                                    ;  0 PHA
                                    ;  0 POL
                                    ;  0111 BIT COUNT 10bit

EXCHANGE:   bset.b  #1,2(A0)        ; enable SPIM module
            move.w  SEC_READ,(A0)   ; load data to be transmitted
            bset.b  #0,2(A0)        ; trigger the exchange
        
POLL:       btst.b  #7,3(A0)        ; poll the IRQ bit
            bpl.s   POLL            ; not set read it again

            bclr    #7,3(A0)        ; clear the interrupt bit
            bclr    #1,2(A0)        ; disable the SPIM
            move.b  1(A0),D0        ; read the data from the external device

            bsr     printHexByte    ; call printhex byte

            bra     monitorHotstart ; return to moniror

            ;rts

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
