.PHONY:all clean
CC=g++
CFLAGS=-Wall -Werror
SD=~/geometry/src/
OD=~/geometry/build/
EXECUTABLE=~/geometry/bin/geometry.exe
all: $(EXECUTABLE)
	
$(EXECUTABLE): $(OD)my_prog.o $(OD)perimetr.o $(OD)square.o 
	$(CC) $(CFLAGS) -o $(EXECUTABLE) $(OD)my_prog.o $(OD)perimetr.o $(OD)square.o -lm
$(OD)my_prog.o: $(SD)my_prog.cpp
	$(CC) $(CFLAGS) -c -o $(OD)my_prog.o $(SD)my_prog.cpp -lm
$(OD)perimetr.o: $(SD)perimetr.cpp
	$(CC) $(CFLAGS) -c -o $(OD)perimetr.o $(SD)perimetr.cpp -lm
$(OD)square.o: $(SD)square.cpp
	$(CC) $(CFLAGS) -c -o $(OD)square.o $(SD)square.cpp -lm
clean:
	rm -rf $(EXECUTABLE) $(OD)*.o
