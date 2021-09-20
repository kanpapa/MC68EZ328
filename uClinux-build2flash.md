# uClinuxのビルドからフラッシュへの書き込みまで

## ビルド環境のOSのインストール

debian 10 i386をVMWare Playerの仮想環境で動かします。

1. VMware Workstation Playerをインストールします。(非営利目的であれば無償)
1. [debian](https://www.debian.org/)の公式サイトから[debian-10.10.0-i386-xfce-CD-1.iso](https://cdimage.debian.org/debian-cd/current/i386/iso-cd/)をダウンロードします。
1. 新規仮想マシンの作成で、debian 10.10 32bitを動かします。

## 必要なパッケージをインストール

debian 10 i386が起動したら以下の手順で必要なパッケージをインストールします。

```
$ sudo apt install build-essential
$ sudo apt install git
$ sudo apt install wish
```

## ソースをGitHub.comからダウンロード

~/gitを作業環境としています。

```
$ mkdir git
$ cd git
$ git clone https://github.com/kanpapa/uClinux-dist-20020220.git
$ git clone https://github.com/kanpapa/m68k-elf-tools.git
$ git clone https://github.com/kanpapa/MC68EZ328.git
```

## 68000のツールチェインのインストール

```
$ cd ~/git/m68k-elf-tools
$ sudo ./m68k-elf-tools-20030314.sh
```

/usr/local 配下に68000のツールチェインがインストールされます。

## uClinuxのビルド

```
$ cd ~/git/uClinux-dist-20020220/uClinux-dist
$ make xconfig
$ make dep
$ make
```

xconfigでターゲットは以下のように設定します。

```
Lineo/uCsimm    Vender/Product
uClinux-2.4.x   Kernel Version
uC-libc         LibC Version
```

ビルドが成功すれば、uClinux-dist/images/image.bin が生成されます。

## ブートストラップファイルの作成

フラッシュ書き込み機能付きモニタのbレコードに、bレコードに変換したimage.binを追加し、最後にモニタを起動するbレコードを追加します。

```
$ cd ~/git/MC68EZ328/bbug
$ python3 bin2b.py ~/git/uClinux-dist-20020220/uClinux-dist/images/image.bin > ../b/image.b
$ cd ../b
$ cat Monitor_flashtool_dram_nostart.b image.b > upload.b
$ echo "0000100000" >> upload.b
```

## フラッシュメモリへの書き込み

1. MC68EZ328 SBCをブートストラップモードにします。
    * BOOTSTRAPスイッチを押したまま、RESETスイッチを押します。
    * Enterキーを一度押し、"@"が表示されることを確認します。
1. upload.bをシリアルターミナルからアップロードします。
    * Teratermを使う場合は、遅延を入れます。(1文字ごとに0ms, 改行ごとに100ms程度）
1. アップロードが完了すると、フラッシュ書き込み機能付きモニタが起動します。
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
1. image.bの内容が0x00200000に読み込まれていることをダンプして確認します。
    ```
    > E 00200000+10
    00200000: 00 7F FF FC 10 00 04 01 10 00 23 5C 10 00 23 78 ..........#\..#x
    ```
1. フラッシュメモリを消去します。
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
1. フラッシュメモリに書き込みます。
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

## uClinuxの起動確認

リセットボタンを押すとMC68EZ328 SBCでuClinuxが起動します。

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
