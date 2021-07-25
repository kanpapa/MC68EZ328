*-----------------------------------------------------------
* Title      : CS8900A Test program
* Written by : Kazuhiro Ouchi
* Date       : 2021/07/25
* Description: To access any of the CS8900A's internal registers in I/O Mode
*-----------------------------------------------------------
    ORG    $8000

IOBASE  EQU $02000300

*
* 0000 1110 0110 0011 0000 0000 0000 1010
* 0    E    6    3    0    0    0    A
*

START:
*                                           ; Product identification code (+0000h)
      move.w     #$0080, (IOBASE + $000a)   ; PacketPage Pointer Port (I/O base + 000Ah).

      move.w    (IOBASE + $000c), d0        ; PacketPage Data Port (I/O base +000Ch)
      bsr       $0000171A                   ; call printhex word

      move.w    (IOBASE + $000e), d0        ; PacketPage Data Port (I/O base +000Eh)
      bsr       $0000171A                   ; call printhex word

      bra       $00001064                   ; return to moniror

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
