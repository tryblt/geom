.PHONY: clean all
CC = g++
CXXFLAGS = -Wall -Werror --std=c++17
EXE = bin/geom
TESTS = bin/test
DIR_SRC = build/src
DIR_TEST = build/test
GTEST_D = thirdparty/googletest
LD_FLAGS = -L $(GTEST_D)/lib -lgtest_main -lpthread
CFLAG += -isystem $(GTEST_D)/include
CXX += -g -Wall -Wextra -pthread -std=c++17

all: $(EXE) $(TESTS)

$(EXE): $(DIR_SRC)/main.o $(DIR_SRC)/printCoord.o $(DIR_SRC)/func.o
	$(CC) $(CXXFLAGS) $(DIR_SRC)/main.o $(DIR_SRC)/printCoord.o $(DIR_SRC)/func.o -o $(EXE)

$(DIR_SRC)/main.o: src/main.cpp
	$(CC) $(CXXFLAGS) -c src/main.cpp -o $(DIR_SRC)/main.o

$(DIR_SRC)/printCoord.o: src/printCoord.cpp
	$(CC) $(CXXFLAGS) -c src/printCoord.cpp -o $(DIR_SRC)/printCoord.o

$(DIR_SRC)/func.o: src/func.cpp
	$(CC) $(CXXFLAGS) -c src/func.cpp -o $(DIR_SRC)/func.o

$(TESTS) : $(DIR_SRC)/printCoord.o $(DIR_SRC)/func.o $(DIR_TEST)/test.o
	$(CXX) $(CFLAG) $(LD_FLAGS) $(DIR_SRC)/printCoord.o $(DIR_SRC)/func.o  $(DIR_TEST)/test.o -o $(TESTS)

$(DIR_TEST)/test.o: test/test.cpp
	$(CXX) $(CFLAG) -I $(GTEST_D)/include -I src -c test/test.cpp -o $(DIR_TEST)/test.o
	

clean:
	rm -rf $(DIR_SRC)/*.o 
	rm -rf $(DIR_TEST)/*.o
	bin/*.exe
