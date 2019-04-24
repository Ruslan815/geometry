.PHONY: clean all

all: geometry
	
geometry: my_prog.o perimetr.o square.o
	g++ build/my_prog.o build/perimetr.o build/square.o -Wall -Werror -lm  -o bin/geometry
my_prog.o: src/my_prog.cpp
	g++ src/my_prog.cpp -o build/my_prog.o -c -Wall -Werror

perimetr.o: src/perimetr.cpp
	g++  src/perimetr.cpp -o build/perimetr.o -c -Wall -Werror -lm

square.o: src/square.cpp
	g++ src/square.cpp -o build/square.o -c -Wall -Werror -lm

clean:
	rm -rf build/*.o bin/geometry
