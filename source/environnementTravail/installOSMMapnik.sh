#!/bin/sh



# 8ème Partie - Installation d'un environnement OSM
###############################################
# Installation d'un environnement OSM
echo "# 8ème Partie - Installation de mapnik, tirex, tileman"
echo "######################################################"
echo "#"
echo "# Ce script présente l'installation de mapnik dans l'environnement général"
echo "#"
echo "# Il existe des scripts pour installer "
echo "# mapnik dans un environnement virtuel python"
echo "#"
echo "# ./installPythonMapnik.sh"
echo "# ./installPythonMapnik2.sh"
echo "#"
echo "# Avant d'installer tirex et tileman, il faut que mapnik soit"
echo "# présent dans l'environnement général (et non pas dans un"
echo "# environnement virtuel)."
echo "# Attention, après installation de mapnik, il faut ensuite "
echo "# redémarrer un nouveau shell, de facon a ce que mapnik-config soit connu"
echo "# pour enfin installer tirex et tilman"
echo "#"
echo "# Installation de mapnik à partir des sources"
echo "#"
echo "# http://mapnik.org/pages/downloads.html"
echo "#"
echo "cd .."
      cd ..
echo "pwd"
      pwd
echo "rm -rf mapnik"
      rm -rf mapnik
echo "git clone https://github.com/mapnik/mapnik.git"
      git clone https://github.com/mapnik/mapnik.git
echo "cd mapnik"
      cd mapnik
echo "pwd"
      pwd
echo "git checkout v3.0.11"
      git checkout v3.0.11
echo "git submodule update --init"
      git submodule update --init
echo "./configure && make && make test"
      ./configure && make && make test
echo "#"
echo "# Les tests sont visibles ici :"
echo "#firefox /tmp/mapnik-visual-images/visual-test-results/index.html"
      #firefox /tmp/mapnik-visual-images/visual-test-results/index.html
echo "#"
echo "sudo make install"
      sudo make install
echo "#"
echo "cd ../environnementTravail"
      cd ../environnementTravail
echo "pwd"
      pwd
echo "#"
echo "#"


echo "#"
