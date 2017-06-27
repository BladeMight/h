CFLG= -s -municode -mwindows
# Remove -mwindows and it will become console app.
all: h.o
	gcc h.o $(CFLG) -o h
h.o:
	gcc.cmd -c h.c -o h.o
cl:
	-@rm -f -r h.o h.exe
re: cl all
tst: all
	./h.exe cmd.exe "/c @echo HELLO FROM H!"