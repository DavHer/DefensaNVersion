# ------------------------------------------------
# Generic Makefile
#
# Author: David

# project name (generate executable with this name)
TARGET   = DefenseProcess

CC       = g++
# compiling flags here
CFLAGS   = -std=c99 -Wall -I.
CXXFLAGS = -O2 -g -Wall -fmessage-length=0 -std=c++11

LINKER   = g++ -o
# linking flags here
LFLAGS   = -pthread

# change these to set the proper directories where each files shoould be
SRCDIR   = src
INCDIR	 = include
OBJDIR   = obj
BINDIR   = bin
ROOTDIR	 = ..

SOURCES  := $(wildcard $(SRCDIR)/*.cpp)
INCLUDES := $(wildcard $(INCDIR)/*.h)
OBJECTS  := $(SOURCES:$(SRCDIR)/%.cpp=$(OBJDIR)/%.o)
rm       = rm -f


$(BINDIR)/$(TARGET): $(OBJECTS)
	@$(LINKER) $@ $(LFLAGS) $(OBJECTS)
	@cp -r $(BINDIR) $(ROOTDIR)
	@echo "Linking complete!"

$(OBJECTS): $(OBJDIR)/%.o : $(SRCDIR)/%.cpp
	@$(CC) -I$(INCDIR) $(CXXFLAGS) -c $< -o $@
	@echo "Compiled "$<" successfully!"

.PHONEY: clean
clean:
	@$(rm) $(OBJECTS)
	@echo "Cleanup complete!"

.PHONEY: remove
remove: clean
	@$(rm) $(BINDIR)/$(TARGET) $(ROOTDIR)/$(BINDIR)/$(TARGET)
	@echo "Executable removed!"
