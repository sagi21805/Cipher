#!/bin/bash

# Update package list
sudo apt update && sudo apt upgrade -y

# Install OpenJDK
sudo apt install -y default-jdk

# Set JAVA_HOME and update PATH
JAVA_HOME=$(readlink -f $(which java) | sed "s:bin/java::")
echo "export JAVA_HOME=$JAVA_HOME" >> ~/.bashrc
echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> ~/.bashrc
source ~/.bashrc

sudo apt install zip
curl -s "https://get.sdkman.io" | bash
sdk install gradle

# Display Java version and paths
echo "Java version: "
java -version
echo "JAVA_HOME: $JAVA_HOME"
echo "Gradle Version: "
gradle -version

