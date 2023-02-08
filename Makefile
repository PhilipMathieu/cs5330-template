# compiler and flags
CC = g++
CXXFLAGS = -std=c++17 -I$(CVPATH) -I$(INCLUDE)

# paths for executables, headers, source, and opencv
BINDIR = ./bin
INCLUDE = ./include
SRCDIR = ./src
CVPATH = /usr/local/include/opencv4

# opencv libraries to link for this project
LIBS = -ltiff -lpng -ljpeg -lz -lopencv_core -lopencv_highgui -lopencv_video -lopencv_videoio -lopencv_imgcodecs -lopencv_imgproc -lopencv_objdetect

all: clean project

project: # add source files here
	$(CC) -g $(CXXFLAGS) $(SRCDIR)/$^ -o $(BINDIR)/$@ $(LIBS)

clean:
	rm -f *.o *~ bin/*