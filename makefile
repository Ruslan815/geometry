CC=g++
CFLAGS=-c -Wall
LDFLAGS=
SOURCES=my_prog.c
OBJECTS=$(SOURCES:.c=.0)
EXECUTABLE=geometry_1

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS)

.c.o:
	$(CC) $(CFLAGS) $< -o $@
