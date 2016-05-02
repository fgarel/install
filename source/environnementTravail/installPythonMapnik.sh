#!/bin/sh



# 7ème Partie - suite : Création d'un environnement python
###############################################
# Création d'un environnement python
echo "# 7ème Partie - suite : Création d'un environnement python"
echo "###############################################"
echo "#"
echo "# Installation de mapnik dans un environnement virtuel python"
echo "#"
echo "# En ce qui concerne l'installation de mapnik dans le système"
echo "# général, cf les scripts"
echo "# ./installOSMMapnik.sh"
echo "# ./installOSMTirex.sh"
echo "# ./installOSMTileman.sh"
echo "#"
echo "#"
echo '# Mapnik combines pixel-perfect image output with '
echo '# lightning-fast cartographic algorithms, and exposes'
echo '# nterfaces in C++, Python, and Node.'
echo "# http://mapnik.org/"
echo "#"
echo "# Pré-requis avant d'installer mapnik"
echo "# L'installation de mapnik ne se passe pas très bien si nous n'avons pas"
echo "# au préalable, installé quelques paquets"
echo "#"
echo "# Ces paquets sont :"
echo "#"
echo "sudo apt-get install libharfbuzz-dev"
      sudo apt-get install libharfbuzz-dev
echo "sudo apt-get install libicu-dev"
      sudo apt-get install libicu-dev
echo "sudo apt-get install libpng-dev"
      sudo apt-get install libpng-dev
echo "sudo apt-get install libproj-dev"
      sudo apt-get install libproj-dev
echo "sudo apt-get install libtiff-dev"
      sudo apt-get install libtiff-dev
echo "sudo apt-get install libwebp-dev"
      sudo apt-get install libwebp-dev
echo "sudo apt-get install libgdal-dev"
      sudo apt-get install libgdal-dev
echo "sudo apt-get install libfreetype6-dev"
      sudo apt-get install libfreetype6-dev
echo "sudo apt-get install libcairo2-dev"
      sudo apt-get install libcairo2-dev
echo "sudo apt-get install libboost-regex-dev"
      sudo apt-get install libboost-regex-dev
echo "sudo apt-get install libboost-program-options-dev"
      sudo apt-get install libboost-program-options-dev
echo "sudo apt-get install libboost-system-dev"
      sudo apt-get install libboost-system-dev
echo "sudo apt-get install libboost-filesystem-dev"
      sudo apt-get install libboost-filesystem-dev
echo "sudo apt-get install libboost-thread-dev"
      sudo apt-get install libboost-thread-dev
#echo "sudo apt-get install libboost-python1.55.0"
#      sudo apt-get install libboost-python1.55.0
echo "#"
echo "# Installation de l'environnement virtuel"
echo "#"
echo "# Utilisation de l'utilitaire Pew"
echo "pew list_pythons -a | grep 2.7.10"
      pew list_pythons -a | grep 2.7.10
echo "#"
echo "pew install 2.7.10"
      pew install 2.7.10
echo "#"
echo "# Nous allons démarrer l'environnement virtuel,"
echo "# Dans cet environnement, l'installation doit continuer avec"
echo "#"
echo "# --------------------"
echo '#'
echo '# Mise à jour de pip'
echo '#'
echo '# pip install --upgrade pip'
echo '#'
echo '# Installation de mapnik'
echo '# http://mapnik.org/pages/downloads.html'
echo '#'
echo '# git clone https://github.com/mapnik/mapnik.git'
echo '# cd mapnik'
echo '# git checkout v3.0.9'
echo '# git submodule update --init'
echo '# ./configure && make && make test'
echo '#'
echo "# --------------------"
echo '#'
echo '# Les lignes précédentes ont été mises dans le scirpt'
echo '# ./installPythonMapnik2.sh'
echo "# --------------------"
echo "#"
echo "# Démarrage de l'environnement virtuel"
echo "#"
echo 'pew new -p $(pythonz locate 2.7.10) mapnik'
      pew new -p $(pythonz locate 2.7.10) mapnik
echo "#"
echo ""
