*-----------------------------------------------------------
* Title      : flash tools 
* Written by : Kazuhiro Ouchi @kanpapa
* Date       : 2021/05/04
* Description: flash present for MC68EZ328 DragonOne SBC
* Based on ChartreuseK/68k-Monitor
*-----------------------------------------------------------

;
; Memory map
;
; $00000000-$007fffff DRAM (4Mx16bit)
; $00080000-$0fffffff -
; $10000000-$107fffff Flash Memory (4Mx16bit)
;

pSourceA        equ $00200000
pDestinationA   equ $10000000
pCSA            equ $fffff110

STACK_START     equ $2000

        ORG    $1000

START:
        lea    STACK_START, SP     * Set our stack pointer to be sure

**************************************************
* Warm Restart entry point
*
toolStart:
    lea     msgBanner, A0   * Show our banner
    bsr.w   printString
    lea     msgHelp,   A0   * And the command help message
    bsr.w   printString

toolLine:                * Our main monitor loop
    lea     msgPrompt, a0   * Prompt
    bsr.w   printString     
    bsr.w   readLine        * Read in the line
    bsr.w   lineToUpper     * Convert to upper-case for ease of parsing
    bsr.w   parseLine       * Then parse and respond to the line
    
    bra.s   monitorLine
    
***************************************
* Converts input line to uppercase
lineToUpper:
    lea     varLineBuf, a0   * Get the start of the line buffer
 .loop:
    move.b  (a0), d0         * Read in a character
    cmp.b   #'a', d0         
    blt.s   .next            * Is it less than lower-case 'a', then move on
    cmp.b   #'z', d0
    bgt.s   .next            * Is it greater than lower-case 'z', then move on
    sub.b   #$20, d0         * Then convert a to A, b to B, etc.
 .next:
    move.b  d0, (a0)+        * Store the character back into a0, and move to the next
    bne.s   .loop            * Keep going till we hit a null terminator
    rts

***************************************
* Parse Line
parseLine:
    movem.l a2-a3, -(SP)        * Save registers
    lea     varLineBuf, a0
 .findCommand:
    move.b  (a0)+, d0
    cmp.b   #' ', d0            * Ignore spaces
    beq.w   .findCommand    
    cmp.b   #'I', d0            * Info command
    beq.w   .flashInfo
    cmp.b   #'E', d0            * Erase command
    beq.w   .flashErase
    cmp.b   #'P', d0            * Program command
    beq.w   .flashProgram
    cmp.b   #'H', d0            * Help command
    beq.w   .help
    cmp.b   #0, d0              * Ignore blank lines
    beq.s   .exit               
 .invalid:   
    lea     msgInvalidCommand, a0
    bsr.w   printString
 .exit:
    movem.l (SP)+, a2-a3        * Restore registers
    rts
    
******************************************
.flashInfo:
.flashErase:
.flashProgram:
    lea     msgInfoCSA, A0   * Show our banner
    bsr.w   printString
    move.l  pCSA, d0
    bsr.w   printHexLong
    lea     msgInfoMsg1, A0
    bsr.w   printString

    * Read Reset *
    lea     msgInfoMsg2, A0
    bsr.w   printString
    move.w  #$AAAA, pDestinationA
    move.w  #$5555, pDestinationA
    move.w  #$F0F0, pDestinationA

    lea     msgInfoMsg3, A0     * Autoselect code
    bsr.w   printString
    move.w  #$AAAA, pDestinationA
    move.w  #$5555, pDestinationA
    move.w  #$9090, pDestinationA
    lea     msgInfoMsg4, A0     * Manufacture code
    bsr.w   printString
    move.b  pDestinationA, d0
    bsr.w   printHexByte
    bsr.w   printNewline

    lea     msgInfoMsg5, A0     * Device code
    bsr.w   printString
    move.b  pDestinationA+1, d0
    bsr.w   printHexByte
    bsr.w   printNewline

    lea     msgInfoMsg6, A0     * Sending CFI Query
    bsr.w   printString
    move.w  #$AAAA, pDestinationA
    move.w  #$5555, pDestinationA
    move.w  #$9898, pDestinationA   * CFI Query
    move.w  #$9898, pDestinationA   * CFI Query again
    lea     msgInfoMsg7, A0         * Reading CFI Query
    bsr.w   printString
    * if
    lea     msgInfoMsg8, A0         * Size is 0x
    move.w  pDestinationA+$0027, d0
    and.l   #$ff, d0
    rol.l   1, d0                   * 1 << d0
    bsr.w   printHexWord
    bsr.w   printNewline

    * Exit software id mode

    * TBD


    bra.w   .exit

******************************************
 .help:
    lea     msgHelp, a0
    bsr.w   printString
    bra.w   .exit

 .invalidAddr:
    lea     msgInvalidAddress, a0
    bsr.w   printString
    bra.w   .exit

 .invalidVal:
    lea     msgInvalidValue, a0
    bsr.w   printString
    bra.w   .exit

******
* Input/Output utils
******
* Prints a newline (CR, LF)
printNewline:
    lea     msgNewline, a0
******
* Print a null terminated string
*
printString:
 .loop:
    move.b  (a0)+, d0    * Read in character
    beq.s   .end         * Check for the null
    
    bsr.s   outChar      * Otherwise write the character
    bra.s   .loop        * And continue
 .end:
    rts

** KEEP All printHex functions together **
******
* Print a hex word
printHexWord:
    move.l  d2, -(SP)    * Save D2
    move.l  d0, d2       * Save the address in d2
    
    rol.l   #8, d2       * 4321 -> 3214
    rol.l   #8, d2       * 3214 -> 2143 
    bra.s   printHex_wordentry  * Print out the last 16 bits
*****
* Print a hex 24-bit address
printHexAddr:
    move.l d2, -(SP)     * Save D2
    move.l d0, d2          * Save the address in d2
    
    rol.l   #8, d2       * 4321 -> 3214
    bra.s   printHex_addrentry  * Print out the last 24 bits
******
* Print a hex long
printHexLong:
    move.l  d2, -(SP)     * Save D2
    move.l  d0, d2        * Save the address in d2
    
    rol.l   #8, d2        * 4321 -> 3214 high byte in low
    move.l  d2, d0
    bsr.s   printHexByte  * Print the high byte (24-31)
printHex_addrentry:     
    rol.l   #8, d2        * 3214 -> 2143 middle-high byte in low
    move.l  d2, d0              
    bsr.s   printHexByte  * Print the high-middle byte (16-23)
printHex_wordentry:    
    rol.l   #8, d2        * 2143 -> 1432 Middle byte in low
    move.l  d2, d0
    bsr.s   printHexByte  * Print the middle byte (8-15)
    rol.l   #8, d2
    move.l  d2, d0
    bsr.s   printHexByte  * Print the low byte (0-7)
    
    move.l (SP)+, d2      * Restore D2
    RTS
    
******
* Print a hex byte
*  - Takes byte in D0
printHexByte:
    move.l  D2, -(SP)
    move.b  D0, D2
    lsr.b   #$4, D0
    add.b   #'0', D0
    cmp.b   #'9', D0     * Check if the hex number was from 0-9
    ble.s   .second
    add.b   #7, D0       * Shift 0xA-0xF from ':' to 'A'
.second:
    bsr.s   outChar      * Print the digit
    andi.b  #$0F, D2     * Now we want the lower digit Mask only the lower digit
    add.b   #'0', D2
    cmp.b   #'9', D2     * Same as before    
    ble.s   .end
    add.b   #7, D2
.end:
    move.b  D2, D0
    bsr.s   outChar      * Print the lower digit
    move.l  (SP)+, D2
    rts
    
*****
* Writes a character to Port A, blocking if not ready (Full buffer)
*  - Takes a character in D0
outChar:
     move.b  d0,$fffff907
outChar1:
     move.w  $fffff906,d0
     and.w   #$2000,d0
     beq     outChar1
     rts

*****
* Reads in a character from Port A, blocking if none available
*  - Returns character in D0
*    
inChar:
     move.w  $FFFFF904,d0
     and.w   #$2000,d0
     beq     inChar
     move.b  $fffff905,d0
     rts

**********************************
* Strings
*
msgBanner:
    dc.b CR,LF,'Flash tools 0.1 for MC68EZ328',CR,LF,0
msgHelp:
    dc.b 'Available Commands: ',CR,LF
    dc.b ' (I)nfo    (E)rase    (P)rogram    (H)elp',CR,LF,0
msgDepositPrompt:
    dc.b ': ',0
msgPrompt:
    dc.b '> ',0
msgInvalidCommand:
    dc.b 'Invalid Command',CR,LF,0
msgInvalidAddress:
    dc.b 'Invalid Address',CR,LF,0
msgInvalidValue:
    dc.b 'Invalid Value',CR,LF,0
msgRamFail:
    dc.b 'Failed at: ',0
msgRamPass:
    dc.b 'Passed.',CR,LF,0
msgNewline:
    dc.b CR,LF,0
msgColonSpace:
    dc.b ': ',0
msgInfoCSA:
    dc.B 'CSA is set to 0x',0
msgInfoMsg1:
    dc.b CR,LF,'Plase make sure timing is right',CR,LF,0
msgInfoMsg2:
    dc.b 'Resetting flash',CR,LF,0
msgInfoMsg3:
    dc.b 'Autoselect Code',CR,LF,0
msgInfoMsg4:
    dc.b 'Manufacturer's Code=',0
msgInfoMsg5:
    dc.b 'Device Code=',0
msgInfoMsg6:
    dc.b 'Sending CFI Query',CR,LF,0
msgInfoMsg7:
    dc.b 'Reading CFI Query identification',CR,LF,0
msgInfoMsg8:
    dc.b 'Size is 0X',0
msgInfoMsgNoanswer:
    dc.b 'No answer',CR,LF,0

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
