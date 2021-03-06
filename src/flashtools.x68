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

**********************************
* Defines
*
RAM_START           equ     $40000
RAM_END             equ     $44000
MAX_LINE_LENGTH     equ     80

**********************************
* ASCII Control Characters
*
BEL   equ $07
BKSP  equ $08       * CTRL-H
TAB   equ $09
LF    equ $0A
CR    equ $0D
ESC   equ $1B

CTRLC	EQU	$03     
CTRLX	EQU	$18     * Line Clear




**********************************
* Variables
*
varCurAddr  equ     RAM_END-4                        * Last address accessed
varLineBuf  equ     varCurAddr-MAX_LINE_LENGTH-2     * Line buffer

varLast     equ     varLineBuf


pSourceA        equ $00200000
pDestinationA   equ $10000000
pCSA            equ $fffff110

DELAYLOOP       EQU 10000000
ACTUALLENGTH    EQU $80000

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
    
    bra.s   toolLine
    
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
    cmp.b   #'R', d0            * Reset command
    beq.w   .flashReset
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
* Flash Info
******************************************
 .flashInfo:
    lea     msgInfoCSA, A0      * CSA is set to 0x
    bsr.w   printString
    move.l  pCSA, d0
    bsr.w   printHexLong
    lea     msgInfoMsg1, A0     * Plase make sure timing is right
    bsr.w   printString
    
     lea     pDestinationA, A1       * A1 = pDestinationA

    * Read Reset *
    lea     msgInfoMsg2, A0     * Resetting flash
    bsr.w   printString
    move.w  #$AAAA, (A1)
    move.w  #$5555,(A1)
    move.w  #$F0F0,(A1)

    lea     msgInfoMsg3, A0     * Autoselect
    bsr.w   printString
    move.w  #$AAAA,(A1)
    move.w  #$5555,(A1)
    move.w  #$9090,(A1)
    lea     msgInfoMsg4, A0     * Manufacturer ID
    bsr.w   printString
    move.W  (A1), d0   * AMD = 01h
    bsr.w   printHexWord
    bsr.w   printNewline

    lea     msgInfoMsg5, A0     * Device ID
    bsr.w   printString
    move.w  pDestinationA+2, d0 * Am29LV033C = A3h
    bsr.w   printHexWord
    bsr.w   printNewline

    lea     msgInfoMsg6, A0     * Sending CFI Query
    bsr.w   printString
    move.w  #$AAAA, (A1)
    move.w  #$5555, (A1)
    move.w  #$9898, (A1)   * CFI Query
    move.w  #$9898, (A1)   * CFI Query again
    lea     msgInfoMsg7, A0         * Reading CFI Query
    bsr.w   printString
    
    * Check Query OK?
    move.w  pDestinationA+($0010<<1), d0 * Address 10h
    bsr.w   printHexWord
    bsr.w   printNewline
*    cmp.w   #$5151, d0              * 'QQ'
*    bne.w   .CFIQueryError
    move.w  pDestinationA+($0011<<1), d0 * Address 11h
    bsr.w   printHexWord
    bsr.w   printNewline
*    cmp.w   #$5252, d0              * 'RR'
*    bne.w   .CFIQueryError
    move.w  pDestinationA+($0012<<1), d0  * Address 12h
    bsr.w   printHexWord
    bsr.w   printNewline
*    cmp.w   #$5959, d0              * 'YY'
*    bne.w   .CFIQueryError
    
    * Get Device Size
    lea     msgInfoMsg8, A0         * Size is 0x
    bsr.w   printString
    move.w  pDestinationA+($0027<<1), d1  * Address 27h  (Device Size = 2^N byte)
    and.w   #$FF, d1
    move.l  #1, d0
    asl.l   d1, d0
    bsr.w   printHexLong
    bsr.w   printNewline

    * Exit software id mode
    move.w  #$f0f0, (A1)

    bra.w   .exit

  .CFIQueryError:
    lea     msgInfoMsgNoanswer, A0   * CFI Query error
    bsr.w   printString
    bra.w   .exit

******************************************
* Flash Erase
******************************************
  .flashErase:
    move.W  #$2020, DQ5Check
    move.w  #0,  UpperUp
    move.w  #0,  LowerUp
    move.l  #0, counter
    lea     pDestinationA, A1       * A1 = pDestinationA

    lea     msgEraseMsg1, A0        * Sending chip erase command sequence
    bsr.w   printString
    move.w  #$AAAA, (A1)   * Chip Erase command sequence
    move.w  #$5555, (A1)
    move.w  #$8080, (A1)
    move.w  #$AAAA, (A1)
    move.w  #$5555, (A1)
    move.w  #$1010, (A1)

  .flashlp01:
    move.w  (A1), d1       * read bits 2 and 6 (DQ6: Toggle Bit I, DQ2: Toggle Bit II)
    and.w   #$4444, d1      * 01000100 01000100

    move.w  (A1), D0       * check bits 2 and 6 for toggling
    and.w   #$4444, d0      * 01000100 01000100
    cmp.w   d0, d1                  * Toggle Bit= Toggle?
    beq.W   .flashSuccess

    move.l  counter, d0
    and.l   #$ffff0000, d0
    cmp.l   counter, d0
    beq.W   .flashSkipDots

    move.B  #'.', D0                * puts "."
    bsr.w   outChar
    move.l  #0, counter             * counter = 0

  .flashSkipDots:
    addq.l  #1, counter               * counter++
    
    move.w  (A1), D0
    and.w   DQ5Check, D0             * lower chip and Upper chip DQ5 is 0
    beq.W   .flashlp01
    
    move.w  (A1), D0
    and.w   #$0020, D0                * lower chip?
    beq.w   .flashNoLower           * lower chip DQ5 is 0 (Not lower chip)
    and.w   #$ff00, DQ5Check
    lea     msgEraseMsgLower, A0     * lower chip DQ5 is up
    move.w  #1, LowerUp
    bsr.w   printString
  
  .flashNoLower:
    move.w  (A1), D0
    and.w   #$2000, D0
    beq.w   .flashlp01             * Upper chip DQ5 is 0 ????
    and.w   #$00ff, DQ5Check
    lea     msgEraseMsgUpper, A0  * upper chip DQ5 is up
    bsr.w   printString
    move.w  #1, UpperUp
   
    tst.w   UpperUp
    beq.w   .flashlp01
     
    tst.w   LowerUp
    beq.w   .flashlp01

    move.W  (A1), D1       * Read DQ7  -DQ0 Twice (Notes 1, 2)
    and.w   $4444, d1
    
    move.w  (A1), D0       * check bits 2 and 6 for toggling
    and.w   $4444, d0
    cmp.w   d0, d1                  * Toggle Bit= Toggle?
    beq.W   .flashSuccess

    * Erase/Program Operation NotComplete
    move.W  $f0f0, (A1)             * Reset
    lea     msgEraseMsgError, A0        * At least one chip reported erase error, aborting
    bsr.w   printString
    bra.W   .exit

  .flashSuccess:
    lea     msgEraseMsgSuccess, A0  * Erase Successful
    bsr.w   printString
    bra.w   .exit

******************************************
* flash Program
******************************************
  .flashProgram:
    move.l  #0,D1                       * D1 = loop
    move.l  #0,counter

    lea     pDestinationA,A1            * A1: Dest address (Flashmemory address)
    lea     pSourceA,A2                 * A2: Source address (buffer address) 
    
    lea     msgProgMsgBanner,A0         * Programming
    bsr.w   printString

  .flashProg1:                          *{ main loop
    move.L  D1,D0                       *   if ((loop % 0x1000) == 0 && counter == 0)
    andi.L  #$00000FFF,D0
    bne.W   .flashProg2
    tst.L   counter
    bne.w   .flashProg2
                                        *   {
    bsr.w   printNewline                *       putS("\n\r");
    move.l  A1,D0                       *       pDestinationA + loop
    add.L   D1,D0
    bsr.w   printHexLong
                                        *   }
  .flashProg2:
    cmpi.L  #ACTUALLENGTH,D1            *   if (loop != ACTUALLENGTH)  // KH - modified to be able to control how much is written to the flash memory
    beq.W   .flashProg6                 *   {   x=act, y=d1  loop - act  x > y   x <= y

    tst.L   counter                     *       if(counter == 0)
    bne.w   .flashProg3                 *       {

    * move.B  #'W',d0                   *           debug
    * bsr.W   outChar

    move.w  #$AAAA,(A1)
    move.w  #$5555,(A1)
    move.w  #$A0A0,(A1)
    move.w  ($0,A2,D1.L),($0,A1,D1.L)   *           *(pDestinationA + loop) = *(pSourceA + loop);
    move.L  #DELAYLOOP,counter          *           counter = DELAYLOOP;
    bra.W   .flashProg6                 *       }

  .flashProg3:                          *       } else {
    tst.L  counter                      *            if(counter > 0)
    beq.w  .flashProg4                   *           {  x=0 y=counter y-x x < y  x >= y
    
    subi.L  #1,counter                  *               counter--;
                                        *            }
  .flashProg4:
    tst.l   counter                     *            if (counter == 0)   timeout error
    bne.w   .flashProg5                 *            {
    
    lea     msgProgMsgTimeout, A0       *                Timeout error Bank A at
    bsr.w   printString
    bsr.w   printNewline                *                "\n\r"
    move.l  ($0,A1,D1.L),D0             *                (pDestinationA + loop)
    bsr.w   printHexLong
    bsr.w   printNewline                *                "\n\r"
    bra.w   .exit                       *                return(1)
                                        *            }
  .flashProg5:
    move.w  ($0,A1,D1.L),D0             *            if (*(pDestinationA + loop) & 0x8080
    andi.w  #$8080,D0                   *

    move.w  ($0,A2,D1.L),D2             *               == (*(pSourceA + loop) & 0x8080))
    andi.w  #$8080,D2
    cmp.W   D0,D2
    bne.W   .flashProg6                 *            {

    addi.L  #2,D1                       *                loop+2; (wordp)
    move.L	#0,counter                  *                counter=0
                                        *            }
                                        *       }
                                        *   }
  .flashProg6:
    cmpi.L  #ACTUALLENGTH,D1            *   if (loop == ACTUALLENGTH)
    bne.w   .flashProg1                 *   {

    lea     msgProgMsgSuccess, A0       *       Success
    bsr.w   printString
    bra.w   .exit                       *       return(0)
                                        *   }
                                        *}  //while

******************************************
* flash Reset
******************************************
  .flashReset:
    lea     msgResetMsg, A0        * Flash was reset
    bsr.w   printString

	move.w  #$F0F0, pDestinationA

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
*
******
* Read in a line into the line buffer
readLine:
    movem.l d2/a2, -(SP)     * Save changed registers
    lea     varLineBuf, a2   * Start of the lineBuffer
    eor.w   d2, d2           * Clear the character counter
 .loop:
    bsr.w   inChar           * Read a character from the serial port
    cmp.b   #BKSP, d0        * Is it a backspace?
    beq.s   .backspace
    cmp.b   #CTRLX, d0       * Is it Ctrl-H (Line Clear)?
    beq.s   .lineclear
    cmp.b   #CR, d0          * Is it a carriage return?
    beq.s   .endline
    cmp.b   #LF, d0          * Is it anything else but a LF?
    beq.s   .loop            * Ignore LFs and get the next character
 .char:                      * Normal character to be inserted into the buffer
    cmp.w   #MAX_LINE_LENGTH, d2
    bge.s   .loop            * If the buffer is full ignore the character
    move.b  d0, (a2)+        * Otherwise store the character
    addq.w  #1, d2           * Increment character count
    bsr.w   outChar          * Echo the character
    bra.s   .loop            * And get the next one
 .backspace:
    tst.w   d2               * Are we at the beginning of the line?
    beq.s   .loop            * Then ignore it
    bsr.w   outChar          * Backspace
    move.b  #' ', d0
    bsr.w   outChar          * Space
    move.b  #BKSP, d0
    bsr.w   outChar          * Backspace
    subq.l  #1, a2           * Move back in the buffer
    subq.l  #1, d2           * And current character count
    bra.s   .loop            * And goto the next character
 .lineclear:
    tst     d2               * Anything to clear?
    beq.s   .loop            * If not, fetch the next character
    suba.l  d2, a2           * Return to the start of the buffer
 .lineclearloop:
    move.b  #BKSP, d0
    bsr.w   outChar          * Backspace
    move.b  #' ', d0
    bsr.w   outChar          * Space
    move.b  #BKSP, d0
    bsr.w   outChar          * Backspace
    subq.w  #1, d2
    bne.s   .lineclearloop   * Go till the start of the line
    bra.s   .loop
 .endline:
    bsr.w   outChar          * Echo the CR
    move.b  #LF, d0
    bsr.w   outChar          * Line feed to be safe
    move.b  #0, (a2)         * Terminate the line (Buffer is longer than max to allow this at full length)
    movea.l a2, a0           * Ready the pointer to return (if needed)
    movem.l (SP)+, d2/a2     * Restore registers
    rts                      * And return

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
    dc.b ' (I)nfo    (E)rase    (P)rogram    (R)eset    (H)elp',CR,LF,0
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
    dc.b 'Manufacturers Code=',0
msgInfoMsg5:
    dc.b 'Device Code=',0
msgInfoMsg6:
    dc.b 'Sending CFI Query',CR,LF,0
msgInfoMsg7:
    dc.b 'Reading CFI Query identification',CR,LF,0
msgInfoMsg8:
    dc.b 'Size is 0x',0
msgInfoMsgNoanswer:
    dc.b 'No answer',CR,LF,0
msgEraseMsg1:
    dc.b 'Sending chip erase command sequence',CR,LF,0
msgEraseMsgLower:
    dc.b CR,LF,'lower chip DQ5 is up',CR,LF,0
msgEraseMsgUpper:
    dc.b CR,LF,'upper chip DQ5 is up',CR,LF,0
msgEraseMsgError:
    dc.b CR,LF,'At least one chip reported erase error, aborting',CR,LF,0
msgEraseMsgSuccess:
    dc.b CR,LF,'Erase Successful.',CR,LF,0
msgProgMsgBanner:
    dc.b 'Programming',CR,LF,0
msgProgMsgTimeout:    
    dc.b CR,LF,'Timeout error Bank A at ',0
msgProgMsgWinner:    
    dc.b 'The Winner is Bank A 8-)',0
msgProgMsgSuccess:    
    dc.b CR,LF,'Success',CR,LF,0
msgResetMsg:
    dc.b CR,LF,'Flash was reset',CR,LF,0
    
    ORG   (*+3)&-4  * Force Long Word alignment

counter:
    ds.l    1
size:
    ds.L    1
status:
    ds.W    1
toggleCheck:
    ds.W    1
DQ5Check:
    ds.W    1
UpperUp:
    ds.w    1
LowerUp:
    ds.w    1


    END    START        ; last line of source







*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
