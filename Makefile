# Compiler
CC = gcc

# Source files
SRCS = biggest.c factorial.c sum.c

# Object files
OBJS = $(SRCS:.c=.o)

# Executables
EXES = biggest.exe factorial.exe sum.exe

all: $(EXES)

%.exe: %.o
	$(CC) -o $@ $^

%.o: %.c
	$(CC) -c $<

clean:
	rm -f *.o *.exe

