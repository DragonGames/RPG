CC = g++
OPTIONS = `sdl-config --cflags --libs`
INCLUDES = -I .
OBJS = main.o
.PHONY: game clean

default: game
game: ${OBJS}
	${CC} ${OPTIONS} ${INCLUDES} ${OBJS} -o game main.cpp

%.o: %.c
	${CC} ${OPTIONS} -c $*.c ${INCLUDES} 

clear:
	-rm -rf *.o
	-rm game
