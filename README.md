# MC68EZ328 DragonOne SBC

Under construction...  

We are designing the MC68EZ328 DragonOne SBC with KiCad. 

Based on DragonOne V1.0 (C) Khaled Hassounah  
http://www.mediumware.net/DragonOne/DragonOne.htm  

## Spec

* CPU: MC68EZ328
* Flash RAM: AM29LV033 4Mx8bitx2
* DRAM: MT4LC4M16R6 4Mx16bit
* RTC: DS1306

## Repository Contents

* /2flash-kh/
  * Flash programming software working in bootstrap mode of the 68XX328 (by Khaled Hassounah)
* /bbug/
  * BBUG: a bootstrap mode debugger. Implementation of BBUG using python3 and pyserial. This is an experimental program, so it is still incomplete.
* /Hardware/
  * Schematic PDF
* /teraterm/
  * bbug.ttl --- BBUG: a bootstrap mode debugger. Implementation of BBUG using Teraterm macro. This is an experimental program, so it is still incomplete.
* /KiCad/
  * PCB design data and Gerber data for KiCad. (TBA) 
* /Pictues/ -- some pictures

## Pictures

MC68EZ328 CPU  
![MC68EZ328 CPU](/Pictures/dragonball_mc68ez328_cpu.jpg)

PCB image (alpha version)  
![PCB image by KiCad](/Pictures/DragonOne_rev01_kicad.jpg) 