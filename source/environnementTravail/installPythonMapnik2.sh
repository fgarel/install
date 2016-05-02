#!/bin/sh



# 7ème Partie - suite : Création d'un environnement python
###############################################
# Création d'un environnement python
echo "# 7ème Partie - suite : Création d'un environnement python"
echo "###############################################"
echo "#"
echo "# Suite de l'installation de Mapnik dans un environnement virtuel python"
echo "#"
echo "# La première partie consistait à installer les dépendances"
echo "# pour la compilation et la création de l'environnement virtuel"
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
