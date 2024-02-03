#!/bin/bash
echo "================================================="
echo "            HADOOP USER CONF                     "
echo "================================================="
# Ajoutez un utilisateur du système Hadoop
sudo addgroup hadoop_
sudo adduser --ingroup hadoop_ hduser_
sudo adduser hduser_ sudo

# ssh conf
su hduser_

echo "Get new key. Press inter"
ssh-keygen -t rsa -P ""

echo "Activez l'accès SSH à la machine locale à l'aide de cette clé."
cat $HOME/.ssh/id_rsa.pub >> $HOME/.ssh/authorized_keys

echo "Testez maintenant la configuration SSH en vous connectant à localhost en tant qu'utilisateur « hduser »"
ssh localhost

echo " si erreur ssh  purger et installer en suivant ces etapes :"
echo "sudo apt-get purge openssh-server"
echo "sudo apt-get install openssh-server"

echo "================================================="
echo " INSTALL HADOOP                                  "
echo "================================================="
# Téléchargement de Hadoop 3.3.5
wget https://archive.apache.org/dist/hadoop/common/hadoop-3.3.5/hadoop-3.3.5.tar.gz

# Extraction du fichier téléchargé
sudo tar -xzf hadoop-3.3.5.tar.gz -C /opt/

# Déplacement vers le répertoire d'installation
cd /opt/hadoop-3.3.5

echo "=================================================="
echo "  Configuration de Hadoop                         "
echo "=================================================="
cp: la cible '/etc/hadoop/.' n'est pas un répertoire
sudo mkdir -p /etc/hadoop/
sudo cp etc/hadoop/*.xml etc/hadoop/*.cmd /etc/hadoop/


# Configuration des variables d'environnement
sudo sh -c 'echo "export HADOOP_HOME=/opt/hadoop-3.3.5" >> /etc/profile'
sudo sh -c 'echo "export PATH=\$PATH:\$HADOOP_HOME/bin" >> /etc/profile'
source /etc/profile


# Configuration du dossier de stockage temporaire pour Hadoop
mkdir -p /tmp/hadoop/namenode
mkdir -p /tmp/hadoop/datanode

# Mise à jour des autorisations pour les dossiers de stockage temporaire
chmod 755 /tmp/hadoop
chmod 750 /tmp/hadoop/namenode
chmod 750 /tmp/hadoop/datanode


# Nettoyage des fichiers temporaires
rm -f /opt/hadoop-3.3.5.tar.gz

echo "========================================================="
echo "CONFs HADOOP                                             "
echo "========================================================="
echo "nano ~/.bashrc"
echo "#Set HADOOP_HOME"
     "export HADOOP_HOME=/opt/hadoop-3.3.5"
     "#Set JAVA_HOME"
     "export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64"
     "# Add bin/ directory of Hadoop to PATH"
     "export PATH=$PATH:$HADOOP_HOME/bin"

. ~/.bashrc

# suite sur : https://www.guru99.com/fr/how-to-install-hadoop.html
