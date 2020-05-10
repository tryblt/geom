.PHONY: clean all
CC = g++
CFLAGS = -Wall -Werror --std=c++17
EXE = bin/geom
TESTS = bin/test
DIR_SRC = build/src
DIR_TEST = build/test
all: $(EXE) $(TESTS)

$(EXE): $(DIR_SRC)/main.o $(DIR_SRC)/printCoord.o $(DIR_SRC)/func.o
	$(CC) $(CFLAGS) $(DIR_SRC)/main.o $(DIR_SRC)/printCoord.o $(DIR_SRC)/func.o -o $(EXE)

$(DIR_SRC)/main.o: src/main.cpp
	$(CC) $(CFLAGS) -c src/main.cpp -o $(DIR_SRC)/main.o

$(DIR_SRC)/printCoord.o: src/printCoord.cpp
	$(CC) $(CFLAGS) -c src/printCoord.cpp -o $(DIR_SRC)/printCoord.o

$(DIR_SRC)/func.o: src/func.cpp
	$(CC) $(CFLAGS) -c src/func.cpp -o $(DIR_SRC)/func.o

$(TESTS) : $(DIR_SRC)/printCoord.o $(DIR_SRC)/func.o
	$(CC) $(CFLAGS) 

clean:
	rm -rf build/*.o bin/*.exe
