# uClinuxのビルドからフラッシュへの書き込みまで

## OSのインストール

Debian 10 i386をVMWare Playerの仮想環境で動かします。

1. VMware Workstation Playerをインストールします。(非営利目的であれば無償)
1. [debian](https://www.debian.org/)の公式サイトから[debian-10.10.0-i386-xfce-CD-1.iso](https://cdimage.debian.org/debian-cd/current/i386/iso-cd/)をダウンロードします。
1. 新規仮想マシンの作成で、debian 10.10 32bitを動かします。

## 必要なパッケージをインストール

Debian 10 i386が起動したら以下の手順で必要なパッケージをインストールします。

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
$ git clone https://github.com/kanpapa/MC68EZ328.git
```

## 68000のツールチェインのインストール

```
$ cd ~/git/MC68EZ328/m68k-elf-tools
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

```
$ cd ~/git/MC68EZ328/bbug
$ python3 bin2b.py ~/git/uclinux-dist-20020220/uClinux-dist/images/image.bin > ../b/image.b
$ cd ../b
$ cat Monitor_flashtool_dram_nostart.b image.b > upload.b
$ echo "0000100000" >> upload.b
```

## フラッシュメモリへの書き込み

1. MC68EZ328 SBCをブートストラップモードにします。
1. upload.bをシリアルターミナルからアップロードします。
1. アップロードが完了すると、フラッシュ書き込み機能付きモニタが起動します。
1. image.binの内容が0x00200000に読み込まれていることをダンプして確認します。
1. フラッシュメモリを消去します。
1. フラッシュメモリに書き込みます。

## uClinuxの起動確認

リセットボタンを押すとMC68EZ328 SBCでuClinuxが起動します。

