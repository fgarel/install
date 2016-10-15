#!/bin/sh



# 8ème Partie - Installation d'un environnement OSM
###############################################
# Installation d'un environnement OSM
echo "# 8ème Partie - Installation de boost"
echo "######################################################"
echo "#"
echo "# Ce script présente l'installation de boost"
echo "#"
echo "# boost est nécessaire pour compiler mapnik"
echo "#"
echo "# http://www.boost.org/doc/libs/1_61_0/more/getting_started/unix-variants.html"
echo "#"

echo "#"
echo "cd .."
      cd ..
echo "pwd"
      pwd
echo "rm -rf boost_1_61_0"
      rm -rf boost_1_61_0
echo "rm boost_1_61_0.tar.bz2"
      rm boost_1_61_0.tar.bz2
echo "wget https://sourceforge.net/projects/boost/files/boost/1.61.0/boost_1_61_0.tar.bz2"
      wget https://sourceforge.net/projects/boost/files/boost/1.61.0/boost_1_61_0.tar.bz2
echo "tar --bzip2 -xf boost_1_61_0.tar.bz2"
      tar --bzip2 -xf boost_1_61_0.tar.bz2
echo "cd boost_1_61_0"
      cd boost_1_61_0
echo "pwd"
      pwd
echo "# ./boostrap.sh"
      # ./bootstrap.sh
echo "# ./b2 install"
      # ./b2 install
echo ""
echo "#"
echo "cd ../environnementTravail"
      cd ../environnementTravail
echo "pwd"
      pwd
echo "#"
echo "#----------------------"
echo "# Test de l'installation de boost :"
echo "#----------------------"
echo "#"
echo "#----------------------"
echo "# Reste a faire :"
echo "#----------------------"
#echo "# ./installOSMBoost.sh"
echo "# ./installOSMMapnik.sh"
echo "# ./installOSMCartoCSS.sh"
echo "# ./installOSMPythonMapnik"
echo "# ./installOSMTirex.sh"
echo "# ./installOSMTilemanDebian.sh"
echo "#----------------------"
