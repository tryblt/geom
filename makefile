CC = g++
CFLAGS = -Wall -Werror

all: bin/geom

bin/geom: build/main.o build/printCoord.o build/Perimeter.o build/Area.o
	$(CC) $(CFLAGS) build/main.o build/printCoord.o build/Perimeter.o build/Area.o -o bin/geom

build/main.o: src/main.cpp
	$(CC) $(CFLAGS) -c src/main.cpp -o build/main.o

build/printCoord.o: src/printCoord.cpp
	$(CC) $(CFLAGS) -c src/printCoord.cpp -o build/printCoord.o

build/Perimeter.o: src/Perimeter.cpp
	$(CC) $(CFLAGS) -c src/Perimeter.cpp -o build/Perimeter.o

build/Area.o: src/Area.cpp
	$(CC) $(CFLAGS) -c src/Area.cpp -o build/Area.o
	
clean:
	rm -rf build/*.o
