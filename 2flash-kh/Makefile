
.EXPORT_ALL_VARIABLES:
#INCLUDE_DIR = /opt/uClinux/linux/include
INCLUDE_DIR = ../uClinux-dist/linux-3.x/arch/m68k/include
#
# Define architecture and board implemenation
#

#
# Define following flag to use flash version of ld configuration
#

#
#	Define location of cross-compiler
#

MODEL=CONFIG_DRAGONIXVZ

CFLAGS := -D$(MODEL) -DBOOTCODE -pipe -m68000 -D__COFF__ -DNO_MM -DNO_FPU -DMAGIC_ROM_PTR -DNO_FORGET  -I $(INCLUDE_DIR) -I ./

AFLAGS := $(CFLAGS) -Wa,--bitwise-or

#GCC_EXEC_PREFIX = m68k-coff-
#GCC_EXEC_PREFIX = m68k-uclinux-

#CC = $(GCC_EXEC_PREFIX)gcc
#AS = $(GCC_EXEC_PREFIX)as
#LD = $(GCC_EXEC_PREFIX)ld
#OBJCOPY = $(GCC_EXEC_PREFIX)objcopy
CC = m68k-uclinux-gcc
AS = m68k-uclinux-as
LD = m68k-uclinux-ld
OBJCOPY = m68k-uclinux-objcopy
SPLASHSCRIPT = tools/bootlogo.pl
STOB = ./stob
#LIBS = lib/libstandalone.a

#
#  Do platform specific stuff
#

LD_FILE = bootstrap.ld

OBJS = boot.o bootstrap.o utils.o univflash.o controller.o

#
# Do generic options here
#

.S.o:
	$(CC) $(AFLAGS) -c $<


bootstrap.srec: boot.bin
	$(OBJCOPY) --input-target=binary --output-target=srec \
	boot.bin bootstrap.srec
	cp ../image.bin image.bin
	./bin2b image.bin image.b
	cat bootstrap.srec | $(STOB) > bootcode.b
	cat init.b bootcode.b image.b >> boot.b
#	cat init.b bootcode.b >> boot.b
#	cat bootcode.b image.b >> boot.b
boot.bin: bootstrap.coff
	$(OBJCOPY) -O binary --remove-section=.data --remove-section=.bss \
		bootstrap.coff boot.text
	$(OBJCOPY) -O binary --remove-section=.text --remove-section=.bss \
		bootstrap.coff boot.data
	cat boot.text boot.data > boot.bin

bootstrap.coff: $(OBJS)
	$(LD) -T $(LD_FILE) -Map bootstrap.map -o bootstrap.coff $(OBJS) $(LIBS)

clean:
	rm -f *.map *.bin *.coff *.srec boot
	rm -f $(OBJS) *.s *.i *~ boot.b boot.data boot.text

distclean:
	find . -type f -name 'Makefile' | sed 's/Makefile//' | xargs -ithis make -C this clean
	rm -f include

all:
	make clean
	make








