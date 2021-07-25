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

