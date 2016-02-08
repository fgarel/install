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
echo "# Nous somme dans l environnement, l'installation continue avec"
echo "#"
echo "# --------------------"
echo '#'
echo '# Mise à jour de pip'
echo '#'
echo 'pip install --upgrade pip'
      pip install --upgrade pip
echo '#'
echo '# Installation de mapnik'
echo '#   http://mapnik.org/pages/downloads.html'
echo '#'
echo 'git clone https://github.com/mapnik/mapnik.git'
      git clone https://github.com/mapnik/mapnik.git
      git fetch https://github.com/mapnik/mapnik.git
echo 'cd mapnik'
      cd mapnik
echo 'git checkout v3.0.9'
      git checkout v3.0.9
echo 'git submodule update --init'
      git submodule update --init
echo './configure && make && make test'
#      ./configure && make && make test
      ./configure
      make
      make test
echo '#'
echo "# --------------------"
echo "#"
echo "#"
echo ""

