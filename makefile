CFLG= -s -municode -mwindows
# Remove -mwindows and it will become console app.
all: h.o r.o
	gcc h.o r.o $(CFLG) -o h
h.o:
	gcc -c h.c -o h.o
r.o:
	windres -i r.rc -o r.o
cl:
	-@rm -f -r h.o h.exe r.o tst.txt
re: cl all
tst: all
	wscript.exe test.vbs
zip: all
	upx -9 h.exe