SRC = src
BIN = bin-wat

OBJS = $(BIN)\vectfont.obj &
       $(BIN)\vf00.obj $(BIN)\vf01.obj $(BIN)\vf02.obj $(BIN)\vf03.obj &
       $(BIN)\vf04.obj $(BIN)\vf05.obj $(BIN)\vf06.obj $(BIN)\vf07.obj &
       $(BIN)\vf08.obj $(BIN)\vf09.obj $(BIN)\vf10.obj $(BIN)\vf11.obj &
       $(BIN)\vf12.obj $(BIN)\vf13.obj $(BIN)\vf14.obj $(BIN)\vf15.obj

all : $(BIN)\vectfont.exe .SYMBOLIC

$(BIN)\vectfont.exe : $(OBJS) $(BIN)\vectfont.res $(SRC)\vectfont.lnk
	wlink system os2v2_pm name $(BIN)\vectfont.exe op q op maxe=25 &
	    file { $(OBJS) } @$(SRC)\vectfont.lnk
	wrc -q $(BIN)\vectfont.res $(BIN)\vectfont.exe

$(BIN)\vectfont.res : $(SRC)\vectfont.rc $(SRC)\vectfont.h
	if not exist $(BIN) md $(BIN)
	wrc -r $(SRC)\vectfont.rc -fo=$(BIN)\vectfont.res

$(BIN)\vectfont.obj : $(SRC)\vectfont.c $(SRC)\vectfont.h
	if not exist $(BIN) md $(BIN)
	wcc386 -bt=os2 -q -Ot -wx -I$(SRC) $(SRC)\vectfont.c -fo=$(BIN)\vectfont.obj

$(BIN)\vf00.obj : $(SRC)\vf00.c $(SRC)\vectfont.h
	wcc386 -bt=os2 -q -Ot -wx -I$(SRC) $(SRC)\vf00.c -fo=$(BIN)\vf00.obj

$(BIN)\vf01.obj : $(SRC)\vf01.c $(SRC)\vectfont.h
	wcc386 -bt=os2 -q -Ot -wx -I$(SRC) $(SRC)\vf01.c -fo=$(BIN)\vf01.obj

$(BIN)\vf02.obj : $(SRC)\vf02.c $(SRC)\vectfont.h
	wcc386 -bt=os2 -q -Ot -wx -I$(SRC) $(SRC)\vf02.c -fo=$(BIN)\vf02.obj

$(BIN)\vf03.obj : $(SRC)\vf03.c $(SRC)\vectfont.h
	wcc386 -bt=os2 -q -Ot -wx -I$(SRC) $(SRC)\vf03.c -fo=$(BIN)\vf03.obj

$(BIN)\vf04.obj : $(SRC)\vf04.c $(SRC)\vectfont.h
	wcc386 -bt=os2 -q -Ot -wx -I$(SRC) $(SRC)\vf04.c -fo=$(BIN)\vf04.obj

$(BIN)\vf05.obj : $(SRC)\vf05.c $(SRC)\vectfont.h
	wcc386 -bt=os2 -q -Ot -wx -I$(SRC) $(SRC)\vf05.c -fo=$(BIN)\vf05.obj

$(BIN)\vf06.obj : $(SRC)\vf06.c $(SRC)\vectfont.h
	wcc386 -bt=os2 -q -Ot -wx -I$(SRC) $(SRC)\vf06.c -fo=$(BIN)\vf06.obj

$(BIN)\vf07.obj : $(SRC)\vf07.c $(SRC)\vectfont.h
	wcc386 -bt=os2 -q -Ot -wx -I$(SRC) $(SRC)\vf07.c -fo=$(BIN)\vf07.obj

$(BIN)\vf08.obj : $(SRC)\vf08.c $(SRC)\vectfont.h
	wcc386 -bt=os2 -q -Ot -wx -I$(SRC) $(SRC)\vf08.c -fo=$(BIN)\vf08.obj

$(BIN)\vf09.obj : $(SRC)\vf09.c $(SRC)\vectfont.h
	wcc386 -bt=os2 -q -Ot -wx -I$(SRC) $(SRC)\vf09.c -fo=$(BIN)\vf09.obj

$(BIN)\vf10.obj : $(SRC)\vf10.c $(SRC)\vectfont.h
	wcc386 -bt=os2 -q -Ot -wx -I$(SRC) $(SRC)\vf10.c -fo=$(BIN)\vf10.obj

$(BIN)\vf11.obj : $(SRC)\vf11.c $(SRC)\vectfont.h
	wcc386 -bt=os2 -q -Ot -wx -I$(SRC) $(SRC)\vf11.c -fo=$(BIN)\vf11.obj

$(BIN)\vf12.obj : $(SRC)\vf12.c $(SRC)\vectfont.h
	wcc386 -bt=os2 -q -Ot -wx -I$(SRC) $(SRC)\vf12.c -fo=$(BIN)\vf12.obj

$(BIN)\vf13.obj : $(SRC)\vf13.c $(SRC)\vectfont.h
	wcc386 -bt=os2 -q -Ot -wx -I$(SRC) $(SRC)\vf13.c -fo=$(BIN)\vf13.obj

$(BIN)\vf14.obj : $(SRC)\vf14.c $(SRC)\vectfont.h
	wcc386 -bt=os2 -q -Ot -wx -I$(SRC) $(SRC)\vf14.c -fo=$(BIN)\vf14.obj

$(BIN)\vf15.obj : $(SRC)\vf15.c $(SRC)\vectfont.h
	wcc386 -bt=os2 -q -Ot -wx -I$(SRC) $(SRC)\vf15.c -fo=$(BIN)\vf15.obj

clean : .SYMBOLIC
	rm -f $(BIN)\*.obj $(BIN)\*.res $(BIN)\*.exe $(BIN)\*.map
