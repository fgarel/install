#!/bin/sh



# 7ème Partie - suite : Création d'un environnement python
###############################################
# Création d'un environnement python
echo "# 7ème Partie - suite : Création d'un environnement python"
echo "###############################################"
echo "#"
echo "# Installation d'un environnement virtuel python"
echo "#"
echo "# Dans cet environnement virtuel, installation de :"
echo "# -"
echo "# -"
echo "#"
echo "# la documentation est vue ici :"
echo "# http://taigaio.github.io/taiga-doc/dist/setup-production.html"
echo "#"
echo "# Paquets essentiels"
sudo apt-get update
sudo apt-get install -y build-essential binutils-doc autoconf flex bison libjpeg-dev
sudo apt-get install -y libfreetype6-dev zlib1g-dev libzmq3-dev libgdbm-dev libncurses5-dev
sudo apt-get install -y automake libtool libffi-dev curl git tmux gettext
sudo apt-get install -y nginx
sudo apt-get install -y rabbitmq-server redis-server
sudo apt-get install -y libxml2-dev libxslt-dev
sudo apt-get install -y libssl-dev libffi-dev
echo "# Installation de l'environnement virtuel"
echo "#"
echo "# Utilisation de l'utilitaire pew"
echo "pew list_pythons -a | grep 3.6"
      pew list_pythons -a | grep 3.6
echo "pew list_pythons -a | grep 3.5"
      pew list_pythons -a | grep 3.5
echo "#"
echo "pew install 3.5.0"
      pew install 3.5.0
echo "#"
echo "# Nous allons démarrer l'environnement virtuel,"
echo "# Dans cet environnement, l'installation doit continuer avec"
echo "#"
echo "# --------------------"
echo '#'
echo "./webpython/webdjangotaiga_postinstall.sh"
echo "#"
echo "# --------------------"
echo '#'
echo "# --------------------"
echo '# Apres, avoir installé un serveur web, nginx'
echo '# apres, avoir installé un environnemnent virtuel webdjangotaiga'
echo "# on peut maintenant lancé l'environnement virtuel en question"
echo "# se mettre dans le bon repertoire"
echo 'cd nginxFlask'
echo "# --------------------"
echo "#"
echo "# Démarrage de l'environnement virtuel"
echo "#"
echo 'pew new -p $(pythonz locate 3.5.0) webdjangotaiga'
      pew new -p $(pythonz locate 3.5.0) webdjangotaiga
echo "#"
echo ""
