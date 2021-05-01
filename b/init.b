********************************************************
* init.b 
* for MC68EZ328 DragonOne SBC
********************************************************
FFFFF1190130        emucs init, 3ws
FFFFF000011C        SCR 
FFFFFB0B0100        Disable WD
FFFFF42B0103        enable clko
FFFFF40B0100        enable chip select
FFFFFD0D0108        disable hardmap
FFFFFD0E0107        clear level 7 interrupt
FFFFF4230100        set PE3 as *DWE
***
CSA
***
FFFFF100028000      Group Base Add 8M
FFFFF1100201ED      Chip Sel

***
CSB
***
FFFFF102028000      CSB
FFFFF112020190      disable eth + DPRAM - KH

************
EDO DRAM
4Mx16(12/10)
************
FFFFFC00028F00      DRAM Config
FFFFFC02029667      DRAM Control
FFFFF106020000      CSD Address = 0
FFFFF11602069F      enable DRAM cs

FFFFF3000140        IVR
FFFFF30404007FFFFF  IMR