# nmake makefile
#
# Tools used:
#  Compile::Watcom Resource Compiler
#  Compile::GNU C
#  Make: nmake or GNU make
all : vectfont.exe

vectfont.exe : vectfont.obj vectfont.res vf00.obj vf01.obj vf02.obj vf03.obj \
		vf04.obj vf05.obj vf06.obj vf07.obj vf08.obj vf09.obj vf10.obj \
		vf11.obj vf12.obj vf13.obj vf14.obj vf15.obj vectfont.def
	gcc -Zomf vectfont.obj vf00.obj vf01.obj vf02.obj vf03.obj vf04.obj \
		vf05.obj vf06.obj vf07.obj vf08.obj vf09.obj vf10.obj vf11.obj \
		vf12.obj vf13.obj vf14.obj vf15.obj vectfont.def -o vectfont.exe
	wrc vectfont.res

vectfont.obj : vectfont.c vectfont.h
	gcc -Wall -Zomf -c -O2 vectfont.c -o vectfont.obj

vf00.obj : vf00.c vectfont.h
	gcc -Wall -Zomf -c -O2 vf00.c -o vf00.obj

vf01.obj : vf01.c vectfont.h
	gcc -Wall -Zomf -c -O2 vf01.c -o vf01.obj

vf02.obj : vf02.c vectfont.h
	gcc -Wall -Zomf -c -O2 vf02.c -o vf02.obj

vf03.obj : vf03.c vectfont.h
	gcc -Wall -Zomf -c -O2 vf03.c -o vf03.obj

vf04.obj : vf04.c vectfont.h
	gcc -Wall -Zomf -c -O2 vf04.c -o vf04.obj

vf05.obj : vf05.c vectfont.h
	gcc -Wall -Zomf -c -O2 vf05.c -o vf05.obj

vf06.obj : vf06.c vectfont.h
	gcc -Wall -Zomf -c -O2 vf06.c -o vf06.obj

vf07.obj : vf07.c vectfont.h
	gcc -Wall -Zomf -c -O2 vf07.c -o vf07.obj

vf08.obj : vf08.c vectfont.h
	gcc -Wall -Zomf -c -O2 vf08.c -o vf08.obj

vf09.obj : vf09.c vectfont.h
	gcc -Wall -Zomf -c -O2 vf09.c -o vf09.obj

vf10.obj : vf10.c vectfont.h
	gcc -Wall -Zomf -c -O2 vf10.c -o vf10.obj

vf11.obj : vf11.c vectfont.h
	gcc -Wall -Zomf -c -O2 vf11.c -o vf11.obj

vf12.obj : vf12.c vectfont.h
	gcc -Wall -Zomf -c -O2 vf12.c -o vf12.obj

vf13.obj : vf13.c vectfont.h
	gcc -Wall -Zomf -c -O2 vf13.c -o vf13.obj

vf14.obj : vf14.c vectfont.h
	gcc -Wall -Zomf -c -O2 vf14.c -o vf14.obj

vf15.obj : vf15.c vectfont.h
	gcc -Wall -Zomf -c -O2 vf15.c -o vf15.obj

vectfont.res : vectfont.rc 
	wrc -r vectfont.rc

clean :
	rm -rf *exe *RES *obj