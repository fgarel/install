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
echo "# Boost sera installé dans le repertoire /usr/local/lib"
echo "#"
echo "# Pour que l'utilisateur ait le droit d'écrire dans ce repertoire"
echo "# il faut ajouter l'utilisateur dans le groupe staff"
echo "#"
echo "sudo usermod -a -G staff `whoami`"
      sudo usermod -a -G staff `whoami`

echo "#"
echo "# Installation de clang"
echo "#"
#echo "sudo aptitude install clang"
#      sudo aptitude install clang
echo "#"
echo "#"
echo "#"
echo "cd .."
      cd ..
echo "pwd"
      pwd
#echo "rm -rf boost_1_59_0"
#      rm -rf boost_1_59_0
#echo "rm -rf boost_1_63_0"
#      rm -rf boost_1_63_0
echo "sudo rm -rf boost_1_64_0"
      sudo rm -rf boost_1_64_0
#echo "rm boost_1_59_0.tar.bz2"
#      rm boost_1_59_0.tar.bz2
#echo "rm boost_1_63_0.tar.bz2"
#      rm boost_1_63_0.tar.bz2
echo "rm boost_1_64_0.tar.bz2"
      rm boost_1_64_0.tar.bz2
#echo "wget https://sourceforge.net/projects/boost/files/boost/1.59.0/boost_1_59_0.tar.bz2"
#      wget https://sourceforge.net/projects/boost/files/boost/1.59.0/boost_1_59_0.tar.bz2
#echo "wget https://sourceforge.net/projects/boost/files/boost/1.63.0/boost_1_63_0.tar.bz2"
#      wget https://sourceforge.net/projects/boost/files/boost/1.63.0/boost_1_63_0.tar.bz2
echo "wget https://dl.bintray.com/boostorg/release/1.64.0/source/boost_1_64_0.tar.bz2"
      wget https://dl.bintray.com/boostorg/release/1.64.0/source/boost_1_64_0.tar.bz2
#echo "tar --bzip2 -xf boost_1_59_0.tar.bz2"
#      tar --bzip2 -xf boost_1_59_0.tar.bz2
#echo "tar --bzip2 -xf boost_1_63_0.tar.bz2"
#      tar --bzip2 -xf boost_1_63_0.tar.bz2
echo "tar --bzip2 -xf boost_1_64_0.tar.bz2"
      tar --bzip2 -xf boost_1_64_0.tar.bz2
#echo "cd boost_1_59_0"
#      cd boost_1_59_0
#echo "cd boost_1_63_0"
#      cd boost_1_63_0
echo "cd boost_1_64_0"
      cd boost_1_64_0
echo "pwd"
      pwd
echo "#"
echo "# pour les options, j'ai suivi la doc ici"
echo "# https://github.com/mapnik/mapnik/issues/3330"
echo "#"
echo "# ./boostrap.sh"
      # ./bootstrap.sh
#echo "sudo ./bootstrap.sh --with-toolset=clang --with-icu --with-python=python --libdir=/usr/local/lib --includedir=/usr/local/include"
#      sudo ./bootstrap.sh --with-toolset=clang --with-icu --with-python=python --libdir=/usr/local/lib --includedir=/usr/local/include
echo "sudo ./bootstrap.sh --with-toolset=gcc --with-icu --with-python=python --libdir=/usr/local/lib --includedir=/usr/local/include"
      sudo ./bootstrap.sh --with-toolset=gcc --with-icu --with-python=python --libdir=/usr/local/lib --includedir=/usr/local/include
#echo "# ./b2 install"
#      # ./b2 install
#echo "sudo ./b2 toolset=clang install"
#      sudo ./b2 toolset=clang install
echo "sudo ./b2 toolset=gcc install"
      sudo ./b2 toolset=gcc install

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
echo "# ./installOSMPythonMapnik"
echo "# ./installOSMCartoCSS.sh"
echo "# ./installOSMTirex.sh"
echo "# ./installOSMTilemanDebian.sh"
echo "#----------------------"
