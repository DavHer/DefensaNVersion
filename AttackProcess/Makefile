# ------------------------------------------------
# Generic Makefile
#
# Author: David

# project name (generate executable with this name)
TARGET   = ejecutable64

CC       = gcc
# compiling flags here
CFLAGS   = -Wall -fno-stack-protector -z execstack 
CXXFLAGS = -O2 -g -Wall -fmessage-length=0 -std=c++11

LINKER   = gcc -o
# linking flags here
LFLAGS   = -fno-stack-protector -z execstack 

# change these to set the proper directories where each files shoould be
SRCDIR   = src
INCDIR	 = include
OBJDIR   = obj
BINDIR   = bin
ROOTDIR	 = ..

SOURCES  := $(wildcard $(SRCDIR)/*.c)
INCLUDES := $(wildcard $(INCDIR)/*.h)
OBJECTS  := $(SOURCES:$(SRCDIR)/%.c=$(OBJDIR)/%.o)
rm       = rm -f


$(BINDIR)/$(TARGET): $(OBJECTS)
	$(LINKER) $@ $(LFLAGS) $(OBJECTS)
	@cp -r $(BINDIR) $(ROOTDIR)
	@echo "Linking complete!"

$(OBJECTS): $(OBJDIR)/%.o : $(SRCDIR)/%.c
	$(CC) -I$(INCDIR) $(CFLAGS) -c $< -o $@
	@echo "Compiled "$<" successfully!"

.PHONEY: clean
clean:
	@$(rm) $(OBJECTS)
	@echo "Cleanup complete!"

.PHONEY: remove
remove: clean
	@$(rm) $(BINDIR)/$(TARGET) $(ROOTDIR)/$(BINDIR)/$(TARGET)
	@echo "Executable removed!"
