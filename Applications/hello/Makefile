ROOTDIR=../uClinux-dist
ROMFSDIR = $(ROOTDIR)/romfs
ROMFSINST = romfs-inst.sh
PATH := $(PATH):$(ROOTDIR)/tools

UCLINUX_BUILD_USER = 1
include $(ROOTDIR)/.config
LIBCDIR=$(CONFIG_LIBCDIR)
include $(ROOTDIR)/config.arch

EXEC = hello
OBJS = hello.o

all: $(EXEC)

$(EXEC): $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $(OBJS) $(LDLIBS)

clean:
	-rm -f $(EXEC) *.elf *.gdb *.o

romfs:
	$(ROMFSINST) /bin/$(EXEC)

%.o: %.c
	$(CC) -c $(CFLAGS) -o $@ $<
