CC = g++ -I/usr/include/libusb-1.0 
GXX = g++
CXXFLAGS = -pipe -O2 -Wall -W -D_REENTRANT -lusb-1.0 -lm -ljpeg -fpermissive
INCPATH = -I. -I/usr/include/libusb-1.0

all: flirone.o flirone

flirone.o: src/flirone.c src/plank.h

flirone: src/flirone.o
	${CC} -o flirone src/flirone.o -lusb-1.0 -lm -ljpeg -Wall `pkg-config --libs opencv`

clean:
	rm -f flirone.o flirone

