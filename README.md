# MC68EZ328 DragonOne SBC

Under construction...  

We are designing the MC68EZ328 DragonOne SBC with KiCad.

Based on DragonOne V1.0 (C) Khaled Hassounah  
http://www.mediumware.net/DragonOne/DragonOne.htm  

## Spec

* CPU: MC68EZ328 DragonBall-EZ
* Flash Memory: Am29LV033C 32 Megabit (4M x 8-Bit) x 2
* DRAM: MT4LC4M16R6 32 Megabit (4M x 16-bit)
* RTC: DS1306

## Repository Contents

* /2flash-kh/
  * Flash programming software working in bootstrap mode of the 68XX328 (by Khaled Hassounah)
* /b/
  * All b-record for programming and testing the MC68EZ328 DragonOne.
* /bbug/
  * BBUG: a bootstrap mode debugger. Implementation of BBUG using python3 and pyserial.
* /Hardware/
  * Schematic PDF
* /KiCad/
  * PCB design data and Gerber data for [KiCad](https://www.kicad.org/). (TBA) 
* /Pictues/
  * some pictures
* /src
  * All Source Code for Flash Programming and test programming. The assembler uses [EASy68K](http://www.easy68k.com/).
* /teraterm/
  * BBUG: a bootstrap mode debugger. Implementation of BBUG using Teraterm macro. This is an experimental program, so it is still incomplete.

## Pictures

MC68EZ328 CPU  
![MC68EZ328 CPU](/Pictures/dragonball_mc68ez328_cpu.jpg)

PCB image (alpha version)  
![PCB image by KiCad](/Pictures/DragonOne_rev01_kicad.jpg)


## License Information

This code is public domain under the BSD-3-Clause License.

References to any products, programs or services do not imply that they will be available in all countries in which their respective owner operates.

Company, product, or services names may be trademarks or services marks of others.

All libraries used in this code are copyright their respective authors.

68k-Monitor Copyright (c) 2015, Hayden Kroepfl

The DragonOne Microcomputer hardware design Copyright (C) Khaled Hassounah

Many thanks to the original authors for making their designs and code avaialble as open source.

