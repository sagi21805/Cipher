#!/bin/bash

# Update package list
sudo apt update && sudo apt upgrade -y

# Install OpenJDK
sudo apt install -y default-jdk make

# Set JAVA_HOME and update PATH
JAVA_HOME=$(readlink -f $(which java) | sed "s:bin/java::")
echo "export JAVA_HOME=$JAVA_HOME" >> ~/.bashrc
echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> ~/.bashrc
source ~/.bashrc


# Display Java version and paths
echo "Java version: "
java -version
echo "JAVA_HOME: $JAVA_HOME"


