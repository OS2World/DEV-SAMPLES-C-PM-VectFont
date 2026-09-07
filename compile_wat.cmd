@echo off
SET EMXOMFLD_TYPE=WLINK
SET EMXOMFLD_LINKER=wl.exe
SET EMXOMFLD_PRELINK=0
wmake -f makefile.wat clean
wmake -f makefile.wat 2>&1 | tee make_wat.out
