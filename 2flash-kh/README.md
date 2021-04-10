# Flash programming software working in bootstrap mode of the 68XX328

It has been modified so that it can be compiled in the following environment.

* [uClinux-dist-20140504.tar.bz2](https://sourceforge.net/projects/uclinux/files/uClinux%20Stable/dist-20140504/uClinux-dist-20140504.tar.bz2/download) (SOURCEFORGE)
* [m68k-uclinux-tools-20121115.tar.bz2](https://code.google.com/archive/p/m68k/downloads) (Google Code Archive）

Note: The operation after modifying the program is unconfirmed.

The original source program can be found at the following URL.
* http://www.mediumware.net/DragonOne/DragonOne.htm

## License Information
(c) 2001 Daniel Haensse, daniel.haensse@freesurf.ch  
parts (c) 2000 Tom Walsh, tom@openhardware.net.  
parts (c) 1999 Vladimir Gurevich  
This software copyrighted under the GPL.  
Other copyrights apply as noted in their files.  

## How it works
First of all a bootable image is needed. This file is added to the flash programming binary by calling "make clean all", then bbug must be started and the connection has to be initialized by init. The image can be downloaded by "load boot.b". "start 1000" start the programming.  
Please note that the uP must be set into bootstrap mode which has to be removed after programming and resetting the uP.  
The file sst_flash.c contains the flashprogramming code. Different vendors have different command set. The adaption should be simple.  
The file boot.S contains the low-level initialisation of dram and flash chip select signals and serial communication.  

Have fun

Dani

## 使い方
### 書き込み手順
1. 起動可能なイメージファイルを準備してください。
1. "make clean all"を実行することで、フラッシュ書き込みプログラムにイメージファイルが追加されます。
1. 68XX328 CPUをブートストラップモードに設定してください。
1. BBUGを起動して、"init"コマンドで68XX328 CPUとの接続を初期化してください。
1. "load boot.b"コマンドでブートイメージをダウンロードしてください。
1. "start 1000"コマンドでフラッシュメモリへの書き込みが行われます。
1. フラッシュへの書き込みが終了し、リセットしたあとにブートストラップモードを解除してください。

### 補足
* sst_flash.cにはフラッシュプログラムのコードが含まれています。ベンダーによってコマンドセットが変わるので、フラッシュメモリに合わせて書き換える必要があります。* boot.Sファイルには、DRAMとフラッシュメモリのチップセレクト信号とシリアル通信の初期化コードが含まれています。