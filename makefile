CC = g++
CFLAGS = -Wall -Werror

all: bin/geom

bin/geom: build/main.o build/printCoord.o build/func.o
	$(CC) $(CFLAGS) build/main.o build/printCoord.o build/func.o -o bin/geom

build/main.o: src/main.cpp
	$(CC) $(CFLAGS) -c src/main.cpp -o build/main.o

build/printCoord.o: src/printCoord.cpp
	$(CC) $(CFLAGS) -c src/printCoord.cpp -o build/printCoord.o

build/func.o: src/func.cpp
	$(CC) $(CFLAGS) -c src/func.cpp -o build/func.o

clean:
	rm -rf build/*.o bin/*.exe
