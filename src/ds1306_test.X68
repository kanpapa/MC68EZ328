*-----------------------------------------------------------
* Title      : DS1306 TEST PROGRAM
* Written by : Kazuhiro Ouchi @kanpapa
* Date       : 2021-08-22
* Description: The sample software code for DS1306 RTC.
*              8-bit exchange with the SPMCLK at 1MHz (SYSCLK = 16MHz).
*              The interrupt bit is polled, which means no interrupt is posted to the
*              processor.
*-----------------------------------------------------------
    ORG    $8000
* SPIM
SPIMDATA    equ $fffff800
SPIMCONT    equ SPIMDATA+2

* MC68EZ328     DS1306
* ----------------------
* PE0:SPMTXD -- SDI
* PE1:SPMRXD -- SDO
* PE2:SPMCLK -- SCLK
* PB1:CSB1   -- CE

* Port E
PEDIR       equ $fffff420
PEDATA      equ PEDIR+1
PEPUEN      equ PEDIR+2
PESEL       equ PEDIR+3

* Port B
PBDIR       equ $FFFFF408
PBDATA      equ PBDIR+1
PBPUEN      equ PBDIR+2
PBSEL       equ PBDIR+3

* Monitor entry point
monitorHotstart equ $00001064
printHexWord    equ $0000171A
printHexAddr    equ $00001724
printHexLong    equ $0000172C
printHexByte    equ $0000174C

* DS1306 RTC REGISTERS AND ADDRESS MAP
SEC_READ    equ     $00
SEC_WRITE   equ     $80
MIN_READ    equ     $01
MIN_WRITE   equ     $81

START:      move.b  #$02,PBSEL.L    ; PORTB SEL1 = 1 (The I/O port function pins are connected.)
            move.w  #$0200,PBDIR.L  ; PORTB DIR1 = 1 (The pins are outputs.), RTC CS = Low

INITIALIZE: lea     SPIMDATA.L,A0   ; point to SPIM registers
            lea     PEDIR.L,A1      ; point to enable bit register (Port E-3)
            andi.b  #$f8,3(A1)      ; select Port E pins to SPIM function. 1111 1000   0 = The internal chip function pins are connected.
            move.w  #$4027,2(A0)    ; PHA=1, POL=0, 8-bit, divide by 16 clk  0100 0000 0010 0111
                                    ;  010 DATA RATE 1/16CLK
                                    ;  xxx Reserved
                                    ;  0 ENABLE
                                    ;  0 XCH
                                    ;  0 IRQ
                                    ;  0 IRQEN
                                    ;  1 PHA
                                    ;  0 POL
                                    ;  0111 BIT COUNT 8bit
            bset.b  #1,2(A0)        ; enable SPIM module
*
* WRITING TO THE CLOCK REGISTERS
*
WRITEREG:   move.B  #$02,PBDATA.L   ; RTC CS = High
            nop
            nop
            nop
            move.B  #$A0, D0        ; Write to first RAM location
            bsr     EXCHANGE        ; Send
            move.B  #$A5,D0         ; set a pattern
            bsr     EXCHANGE        ; Read data
            nop
            nop
            nop
            move.B  #$00,PBDATA.L   ; RTC CS = Low
*
* READING FROM THE CLOCK REGISTERS
*
READREG:    move.B  #$02,PBDATA.L   ; RTC CS = High
            nop
            nop
            nop
            move.B  #$20,D0         ; Read from RAM
            bsr     EXCHANGE        ; Send address
            move.B  #$00,D0         ; Dummy data
            bsr     EXCHANGE        ; Read data
            nop
            nop
            nop
            move.B  #$00,PBDATA.L   ; RTC CS = Low
*
* END PROCESS
*
            bclr    #1,2(A0)        ; disable the SPIM
            bsr     printHexByte    ; call printhex byte
            bra     monitorHotstart ; return to moniror
*
* SPI EXCHANGE SUB ROUTINE
*
*   Input
*        D0: RTC Register Address
*        A0: SPIMDATA.L
*   Output
*        D0: Register value
*
EXCHANGE:   btst.b  #0,2(A0)        ; check idle (XCH = 0?)
            bne.s   EXCHANGE        ; set read it again
            move.w  D0,(A0)         ; load data to be transmitted
            bset.b  #0,2(A0)        ; trigger the exchange

POLL:       btst.b  #7,3(A0)        ; poll the IRQ bit
            bpl.s   POLL            ; not set read it again

            bclr    #7,3(A0)        ; clear the interrupt bit

POLL2:      btst.b  #0,2(A0)        ; check idle (XCH = 0?)
            bne.s   POLL2           ; set read it again
            move.b  1(A0),D0        ; read the data from the RTC

            rts

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
