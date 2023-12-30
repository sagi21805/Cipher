# Makefile for Java project
JCC = javac
JFLAGS = -g
J = java

# Define the source and build directories
SOURCE_DIR := src
BUILD_DIR := build

# Find all .java files in the source directory
SOURCES := $(shell find $(SOURCE_DIR) -name '*.java')

default: $(SOURCES)
	$(JCC) -d $(BUILD_DIR) $(SOURCES)

.PHONY: run
run:
	$(J) -cp build SnowFlake.SnowFlake

.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)

.PHONY: help
help:
	$(info	Run `make` to compile the project)
	$(info  Run `make clean` to erase the build directory)
	$(info 	Run `make help` to show this message)


