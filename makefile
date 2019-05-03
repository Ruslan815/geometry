.PHONY:all clean
CC=gcc
CFLAGS=-Wall -Werror
SD=~/geometry/src/
OD=~/geometry/build/
EXECUTABLE=~/geometry/bin/geometry
all: $(EXECUTABLE)
	
$(EXECUTABLE): $(OD)my_prog.o $(OD)perimetr.o $(OD)square.o 
	$(CC) $(CFLAGS) -o $(EXECUTABLE) $(OD)my_prog.o $(OD)perimetr.o $(OD)square.o -lm
$(OD)my_prog.o: $(SD)my_prog.c
	$(CC) $(CFLAGS) -c -o $(OD)my_prog.o $(SD)my_prog.c -lm
$(OD)perimetr.o: $(SD)perimetr.c
	$(CC) $(CFLAGS) -c -o $(OD)perimetr.o $(SD)perimetr.c -lm
$(OD)square.o: $(SD)square.c
	$(CC) $(CFLAGS) -c -o $(OD)square.o $(SD)square.c -lm
clean:
	rm -rf $(EXECUTABLE) $(OD)*.o
