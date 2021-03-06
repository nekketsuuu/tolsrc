GCC = gcc
MAKE = make
LIBRARIAN = ar rcs 
DEL = rm -f

MAKER = $(MAKE) -r
MAKEC = $(MAKE) -C
COMPILE = $(GCC) -c -Os -m32
LINK = $(GCC) -m32 -Wl,-s
LINK_ADDLIB =

GODRV = ../drv_stdc/drv_stdc.obj
GODRVDIR = ../drv_stdc
LINKOPT_CPP0 =
LINKOPT_CC1  =
LINKOPT_CC1P =

%.o : %.c Makefile ../include/rules.mak
	$(COMPILE) -DIN_GCC -DHAVE_CONFIG_H -I../include -o $*.o $*.c

%.obj : %.c Makefile ../include/rules.mak
	$(COMPILE) -o $*.obj $*.c
