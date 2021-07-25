*-----------------------------------------------------------
* Title      : I/O access test program
* Written by : Kazuhiro Ouchi
* Date       : 2021/07/24
* Description: A program that continuously accesses the I/O space and verifies that the chip select signal can be output correctly.
*-----------------------------------------------------------
    ORG    $8000

START:
      move.l #$02000300, d0 ; Point to the Ethernet chip.
      move.l d0, a0
wiggle:
      move.b (a0), d0       ; Access CSB0 (pin 55).
      bra wiggle            ; DO NOT JUMP! Keep it relative!

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
