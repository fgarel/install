#!/bin/sh



# 8ème Partie - Installation d'un environnement OSM
###############################################
# Installation d'un environnement OSM
echo "# 8ème Partie - Installation de mapnik, tirex, tileman"
echo "######################################################"
echo "#"
echo "# Ce script présente l'installation de tirex et tileman"
echo "#"
echo "# Attention, il faut d'abord installer mapnik !"
echo "# installOSMMapnik.sh"
echo "#"
echo "# Avant d'installer tirex et tileman, il faut en effet que mapnik soit"
echo "# installé en premier."
echo "# Après installation de mapnik, il faut ensuite "
echo "# redemarrer un nouveau shell, de facon a ce que mapnik-config soit connu"
echo "# puis enfin installer tirex et tilman"
echo "#"
echo "# Installation de tileman "
echo "#"
echo "# https://github.com/osmfj/tileman/blob/master/INSTALL.md"
echo "#"
echo "cd .."
      cd ..
echo "pwd"
      pwd
echo "rm -rf tileman"
      rm -rf tileman
echo "git clone https://github.com/osmfj/tileman.git"
      git clone https://github.com/osmfj/tileman.git
echo "cd tileman"
      cd tileman
echo "git submodule init"
      git submodule init
echo "git submodule update"
      git submodule update

echo "#"
echo "cd ../environnementTravail"
      cd ../environnementTravail
echo "pwd"
      pwd


echo "#"
