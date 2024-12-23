CC=g++
CFLAGS=-std=c++11 -Wall
AR=ar

# Targets
LIB_TARGET=libcalculator.a
EXE_TARGET=calculator

# Files
SRC=main.cpp calculator.cpp
OBJ=$(SRC:.cpp=.o)

all: $(LIB_TARGET) $(EXE_TARGET)

# Create static library
$(LIB_TARGET): calculator.o
	$(AR) rcs $@ $^

# Create executable
$(EXE_TARGET): main.o $(LIB_TARGET)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(LIB_TARGET) $(EXE_TARGET)

.PHONY: clean
