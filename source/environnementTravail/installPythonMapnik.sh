#!/bin/sh



# 7ème Partie - suite : Création d'un environnement python
###############################################
# Création d'un environnement python
echo "# 7ème Partie - suite : Création d'un environnement python"
echo "###############################################"
echo "#"
echo "# Pew peut maintenant être utilisé :"
echo "#"
echo "# Nous allons créer un environnement virtuel pour mapnik"
echo "# "
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
echo "# sudo apt-get install libharfbuzz-dev"
echo "#"
sudo apt-get install libharfbuzz-dev
echo "#"
echo "# Installation de l'environnement virtuel"
echo "#"
echo "#   pew list_pythons -a | grep 2.7.10"
pew list_pythons -a | grep 2.7.10
echo "#"
echo "#   pew install 2.7.10"
pew install 2.7.10
echo "#"
echo "#   Nous allons démarrer l'environnement virtuel,"
echo "#   Dans cet environnement, l'installation doit continuer avec"
echo "#"
echo "#   --------------------"
echo '#'
echo '#   Installation de mapnik'
echo '#   http://mapnik.org/pages/downloads.html'
echo '#'
echo '#   git clone https://github.com/mapnik/mapnik.git'
echo '#   cd mapnik'
echo '#   git checkout v3.0.9'
echo '#   git submodule update --init'
echo '#   ./configure && make && make test'
echo '#'
echo "#   --------------------"
echo "#"
echo "#   Démarrage de l'environnement virtuel"
echo "#"
echo '#   pew new -p $(pythonz locate 2.7.10) mapnik'
pew new -p $(pythonz locate 2.7.10) mapnik
echo "#"
echo ""

