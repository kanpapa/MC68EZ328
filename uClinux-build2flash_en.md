# How to install the uClinux for the DragonOne SBC

## Installing the OS in the build environment

Run debian 10 i386 in a VMWare Player virtual environment.

1. Install VMware Workstation Player. (Free for non-commercial use).
1. Download [debian-10.10.0-i386-xfce-CD-1.iso](https://cdimage.debian.org/debian-cd/current/i386/iso-cd/) from [debian official site](https://www.debian.org/).
1. Create a new virtual machine and run debian 10.10 32bit.

## Install the necessary packages.

After debian 10 i386 is started, follow the steps below to install the necessary packages.

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

