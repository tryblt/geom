.PHONY: clean all
CC = g++
CFLAGS = -Wall -Werror --std=c++17
EXE = bin/geom
TESTS = bin/test
DIR_SRC = build/src
DIR_TEST = build/test
GTEST_D = thirdparty/googletest
LD_FLAGS = -L $(GTEST_D)/lib -lpthread -lgtest_main
all: $(EXE) $(TESTS)

$(EXE): $(DIR_SRC)/main.o $(DIR_SRC)/printCoord.o $(DIR_SRC)/func.o
	$(CC) $(CFLAGS) $(DIR_SRC)/main.o $(DIR_SRC)/printCoord.o $(DIR_SRC)/func.o -o $(EXE)

$(DIR_SRC)/main.o: src/main.cpp
	$(CC) $(CFLAGS) -c src/main.cpp -o $(DIR_SRC)/main.o

$(DIR_SRC)/printCoord.o: src/printCoord.cpp
	$(CC) $(CFLAGS) -c src/printCoord.cpp -o $(DIR_SRC)/printCoord.o

$(DIR_SRC)/func.o: src/func.cpp
	$(CC) $(CFLAGS) -c src/func.cpp -o $(DIR_SRC)/func.o

$(TESTS) : $(DIR_TEST)/test.o $(DIR_SRC)/printCoord.o $(DIR_SRC)/func.o
	$(CC) $(CFLAGS) $(LD_FLAGS) $(DIR_TEST)/test.o $(DIR_SRC)/printCoord.o $(DIR_SRC)/func.o

$(DIR_TEST)/test.o: test/test.cpp
	$(CC) $(CFLAGS) -I $(GTEST_D)/include -I src -c test/test.cpp $@
	

clean:
	rm -rf build/*.o bin/*.exe
