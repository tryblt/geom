all: bin/geom

bin/geom: build/main.o build/printCoord.o build/Perimeter.o build/Area.o
	g++ -Wall -Werror build/main.o build/printCoord.o build/Perimeter.o build/Area.o -o bin/geom

build/main.o: src/main.cpp
	g++ -Wall -Werror -c src/main.cpp -o build/main.o

build/printCoord.o: src/printCoord.cpp
	g++ -Wall -Werror -c src/printCoord.cpp -o build/printCoord.o

build/Perimeter.o: src/Perimeter.cpp
	g++ -Wall -Werror -c src/Perimeter.cpp -o build/Perimeter.o

build/Area.o: src/Area.cpp
	g++ -Wall -Werror -c src/Area.cpp -o build/Area.o
	
clean:
	rm -rf build/*.o
