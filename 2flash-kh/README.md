# Flash programming software working in bootstrap mode of the 68XX328

It has been modified so that it can be compiled in the following environment.

* [uClinux-dist-20140504.tar.bz2](https://sourceforge.net/projects/uclinux/files/uClinux%20Stable/dist-20140504/uClinux-dist-20140504.tar.bz2/download) (SOURCEFORGE)
* [m68k-uclinux-tools-20121115.tar.bz2](https://code.google.com/archive/p/m68k/downloads) (Google Code Archive）

Note: The operation after modifying the program is unconfirmed.

The original source program can be found at the following URL.
http://www.mediumware.net/DragonOne/DragonOne.htm

(c) 2001 Daniel Haensse, daniel.haensse@freesurf.ch  
parts (c) 2000 Tom Walsh, tom@openhardware.net.  
parts (c) 1999 Vladimir Gurevich  
This software copyrighted under the GPL.  
Other copyrights apply as noted in their files.  

# How it works:
First of all a bootable image is needed. This file is added to
the flash programming binary by calling "make clean all",
then bbug must be started and the connection has to be initialized by
init. The image can be downloaded by "load boot.b". "start 1000" start the programming.
Please note that the uP must be set into bootstrap mode which has to be removed after programming and
resetting the uP.
The file sst_flash.c contains the flashprogramming code. Different vendors have different command set. The adaption should be simple.
The file boot.S contains the low-level initialisation of dram and flash chip select signals and serial communication.

Have fun

Dani