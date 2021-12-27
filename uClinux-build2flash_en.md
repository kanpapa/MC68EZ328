# How to install the uClinux for the DragonOne SBC

## Installing the OS in the build environment

Run debian i386 in a VMWare Player virtual environment.

1. Install VMware Workstation Player. (Free for non-commercial use).
1. Download [debian-11.2.0-i386-netinst.iso](https://cdimage.debian.org/debian-cd/current/i386/iso-cd/) from [debian official site](https://www.debian.org/).
1. Create a new virtual machine and run debian 11.x 32bit.

## Install the necessary packages.

After debian i386 is started, follow the steps below to install the necessary packages.

```
$ sudo apt install build-essential
$ sudo apt install git
$ sudo apt install wish
```

## Download the resources needed for the build from GitHub.com

~/git as the working environment.

```
$ mkdir git
$ cd git
$ git clone https://github.com/kanpapa/uClinux-dist-20020220.git
$ git clone https://github.com/kanpapa/m68k-elf-tools.git
$ git clone https://github.com/kanpapa/MC68EZ328.git
```

## Installing the 68000 toolchain

```
$ cd ~/git/m68k-elf-tools
$ sudo ./m68k-elf-tools-20030314.sh
```

The 68000 toolchain will be installed under /usr/local.

## Building uClinux

```
$ cd ~/git/uClinux-dist-20020220/uClinux-dist
$ make xconfig
$ make dep
$ make
```

In xconfig, the target should be set as follows.

```
Lineo/uCsimm    Vender/Product
uClinux-2.4.x   Kernel Version
uC-libc         LibC Version
```

If the build is successful, uClinux-dist/images/image.bin will be generated.

## Create a bootstrap file

Add the image.bin converted to a b-record to the b-record of the monitor with the flash writing function, and finally add a b-record to start the monitor.

```
$ cd ~/git/MC68EZ328/bbug
$ python3 bin2b.py ~/git/uClinux-dist-20020220/uClinux-dist/images/image.bin > ../b/image.b
$ cd ../b
$ cat Monitor_flashtool_dram_nostart.b image.b > upload.b
$ echo "0000100000" >> upload.b
```

## Writing to flash memory

1. Set the MC68EZ328 SBC to bootstrap mode.
    * While holding down the BOOTSTRAP switch, press the RESET switch.
    * Press the Enter key once and make sure "@" is displayed.
1. Upload upload.b from the serial terminal.
    * If you use Teraterm, add a delay. (0ms for each character, about 100ms for each new line)
1. When the upload is complete, the monitor with flash writing function will start.
    ```
    Passed.
    
    Chartreuse's 68000 RAM Monitor
    for MC68EZ328 + Flashtool by kanpapa
    ==============================
    Available Commands: 
     (E)xamine   (D)eposit     (G)o      (H)elp
    Flash Commands: 
     (I)nfo      (F)lash Erase (P)rogram (R)eset
    >
    ````
1. Dump and confirm that the contents of image.b are loaded into 0x00200000.
    ```
    > E 00200000+10
    00200000: 00 7F FF FC 10 00 04 01 10 00 23 5C 10 00 23 78 ..........#\..#x
    ```
1. Erases the flash memory.
    ```
    > F
    Sending chip erase command sequence
    ...................................
         :
    ..................................
    lower chip DQ5 is up
    
    upper chip DQ5 is up
    
    Erase Successful.
    >
    ```
1. Write to flash memory.
    ```
    > P
    Programming
    
    Source address: 00200000
    Dest address: 10000000
    Length: 00200000
    10000000
    10001000
        :
    10200000
    Success
    >
    ```

## Checking uClinux startup

Press the reset button to start uClinux with MC68EZ328 SBC.

```
Linux version 2.4.17-uc0 (ocha@debian) (gcc version 2.95.3 20010315 (release)(ColdFire patches - 20010318 from http://fiddes.net/coldfire/)(uClinux XIP and shared lib patches from http://www.snapgear.com/)) #3 Sun 22 Aug 2021 04:05:22 PM JST

68EZ328 DragonBallEZ support (C) 1999 Rt-Control, Inc


uClinux/MC68EZ328
Flat model support (C) 1998,1999 Kenneth Albanowski, D. Jeff Dionne
On node 0 totalpages: 2048
zone(0): 0 pages.
zone(1): 2048 pages.
zone(2): 0 pages.
Kernel command line:
Calibrating delay loop... 0.92 BogoMIPS
Memory available: 7692k/8064k RAM, 0k/0k ROM (570k kernel code, 225k data)
Dentry-cache hash table entries: 1024 (order: 1, 8192 bytes)
Inode-cache hash table entries: 512 (order: 0, 4096 bytes)
Mount-cache hash table entries: 512 (order: 0, 4096 bytes)
Buffer-cache hash table entries: 1024 (order: 0, 4096 bytes)
Page-cache hash table entries: 2048 (order: 1, 8192 bytes)
POSIX conformance testing by UNIFIX
Linux NET4.0 for Linux 2.4
Based upon Swansea University Computer Society NET3.039
Initializing RT netlink socket
Starting kswapd
MC68328 serial driver version 1.00
ttyS0 at 0xfffff900 (irq = 64) is a builtin MC68328 UART
block: 64 slots per queue, batch=16
RAMDISK driver initialized: 16 RAM disks of 4096K size 1024 blocksize
cs89x0:cs89x0_probe(0x0)
cs89x0: Setting up uCsimm CS8900 Chip Select & IRQ ioaddr = 0x2000300
cs89x0.c: v2.4.3-pre1 Russell Nelson <nelson@crynwr.com>, Andrew Morton <andrewm@uow.edu.au>
eth0: cs8900 rev K found at 0x2000300
cs89x0 media RJ-45, IRQ 20, programmed I/O, MAC 00:10:8b:f1:da:01
cs89x0_probe1() successful
Blkmem copyright 1998,1999 D. Jeff Dionne
Blkmem copyright 1998 Kenneth Albanowski
Blkmem 1 disk images:
0: 100B4FB8-101847B7 [VIRTUAL 100B4FB8-101847B7] (RO)
NET4: Linux TCP/IP 1.0 for NET4.0
IP Protocols: ICMP, UDP, TCP
IP: routing cache hash table of 512 buckets, 4Kbytes
TCP: Hash tables configured (established 512 bind 512)
NET4: Unix domain sockets 1.0/SMP for Linux NET4.0.
VFS: Mounted root (romfs filesystem) readonly.
eth0: using half-duplex 10Base-T (RJ-45)
Welcome to
          ____ _  _
         /  __| ||_|
    _   _| |  | | _ ____  _   _  _  _
   | | | | |  | || |  _ \| | | |\ \/ /
   | |_| | |__| || | | | | |_| |/    \
   |  ___\____|_||_|_| |_|\____|\_/\_/
   | |
   |_|

For further information check:
http://www.uclinux.org/


uCsimm login: root
Password:
#
```
