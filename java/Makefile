
JCC = javac
JFLAGS = -g
RM = rm -r
BUILD_DIR = .build
SOURCE_DIR = src


default: Main.class


Main.class: $(SOURCE_DIR)/Main.java
	$(JCC) -d build src/*.java

# To start over from scratch, type 'make clean'.  
# Removes all .class files, so that the next make rebuilds them
clean:
	$(RM) build/*.class

default: Main.class
