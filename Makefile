HOSTCFLAGS := "-march=24kc -O3 -Wall -Wmissing-prototypes -Wstrict-prototypes"
CROSS_COMPILE := mips-openwrt-linux-uclibc-
ARCH := mips
KBUILD_HAVE_NLS := no
CC := mips-openwrt-linux-uclibc-gcc

obj-m := pps-gpio-poll.o
PWD := $(shell pwd)
default:
	$(MAKE) -C $(KDIR) HOSTCFLAGS=$(HOSTCFLAGS) CROSS_COMPILE=$(CROSS_COMPILE) ARCH=$(ARCH) KBUILD_HAVE_NLS=$(KBUILD_HAVE_NLS) CC=$(CC) SUBDIRS=$(PWD) modules
