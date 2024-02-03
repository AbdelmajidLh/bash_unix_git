#!/bin/bash

sudo apt update

# installer jdkk
sudo apt install -y  default-jdk 

# version compilateur
echo "Verion compilateur"
javac -version

echo "========================================="
echo "Trouver le path jdk"
update-alternatives --display java

JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"

# ajouter le repertoire bin du jdk au path
echo "export PATH=\$PATH:$JAVA_HOME/bin" >> ~/.bashrc

# appliquer les modifs au fichier de conf actuel
source ~/.bashrc 

# verifier que Java a été ajouté au path
echo "Java ajouté au Path. Version:"
java -version
