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
#      sudo usermod -a -G staff `whoami`

echo "#"
echo "# Installation de clang"
echo "#"
echo "#"
echo "# Il faut une version récente de clang (3.8)"
echo "# cela permet d'avoir C++14 "
echo "#"
echo "# Pour pouvoir installer une version récente de clang"
echo "# il faut adopter une strategie :"
echo "# - installer clang de jessie"
echo "# - installer clang-3.8 de jessie-backports"
echo "# - installer clang de stretch"
echo "#"
echo "# Au depart, on est sur jessie"
echo "sudo rm /etc/apt/sources.list.d/jessie-backports.list"
echo "#"
      sudo rm /etc/apt/sources.list.d/jessie-backports.list
echo "sudo rm /etc/apt/sources.list.d/stretch.list"
      sudo rm /etc/apt/sources.list.d/stretch.list
echo "#"
echo "sudo aptitude update"
      sudo aptitude update
echo "#"
echo "sudo aptitude install -y clang"
      sudo aptitude install -y clang
echo "#"
echo "# On passe ensuite sur jessie-backports"
echo "#"
echo "# Ajout du depot jessie-backports"
echo "#"
echo 'echo "deb http://ftp.debian.org/debian jessie-backports main" | sudo tee /etc/apt/sources.list.d/jessie-backports.list'
      echo "deb http://ftp.debian.org/debian jessie-backports main" | sudo tee /etc/apt/sources.list.d/jessie-backports.list
echo "#"
echo "sudo aptitude update"
      sudo aptitude update
echo "#"
echo "sudo aptitude install -y -t jessie-backports clang-3.8"
      sudo aptitude install -y -t jessie-backports clang-3.8
echo "#"
echo "#"
echo "# On passe enfin sur stretch"
echo "#"
echo "# Ajout du depot stretch"
echo "#"
#echo "# sudo vi /etc/apt/sources.list.d/stretch.list"
#echo "# deb http://ftp.debian.org/debian stretch main"
echo 'echo "deb http://ftp.debian.org/debian stretch main" | sudo tee /etc/apt/sources.list.d/stretch.list'
      echo "deb http://ftp.debian.org/debian stretch main" | sudo tee /etc/apt/sources.list.d/stretch.list
echo "#"
echo "sudo aptitude update"
      sudo aptitude update
echo "#"
echo "sudo aptitude install -y -t stretch clang"
      sudo aptitude install -y -t stretch clang
echo "#"
echo "# A la fin, on revient sur jessie"
echo "#"
echo "sudo rm /etc/apt/sources.list.d/jessie-backports.list"
      sudo rm /etc/apt/sources.list.d/jessie-backports.list
echo "sudo rm /etc/apt/sources.list.d/stretch.list"
      sudo rm /etc/apt/sources.list.d/stretch.list
echo "#"
echo "sudo aptitude update"
      sudo aptitude update

echo "#"
echo "# Il faut deinstaller les installations de boost qui ont été réalisées avec les paquets debian"
echo "# ils sont trop vieux"
echo "#"
echo "# sudo aptitude remove ....."
echo "sudo aptitude remove -y libboost1.55-dev"
      sudo aptitude remove -y libboost1.55-dev
echo "#"
echo "# il faut vider la base de ldconfig"
echo "#"
echo "# Pour mettre à jour son contenu :"
echo "# sudo ldconfig"
echo "#"
echo "# Pour voir son contenu :"
echo "# sudo ldconfig -p"
echo "#"
echo "# Pour voir les entrées relatives à boost 1.64"
echo "# sudo ldconfig -p | grep boost"
echo "sudo ldconfig -p | grep boost"
      sudo ldconfig -p | grep boost
echo "# sudo ldconfig -p | grep boost | grep 1.64"
echo "# sudo ldconfig -p | grep boost | grep 1.64 | cut -f 2 -d '>'"
echo "# "
echo "#"
echo "# Pour supprimer les entrées relatives à boost 1.64"
echo "sudo ldconfig -p | grep boost | grep 1.64 | cut -f 2 -d '>' | xargs -I{} sudo rm {}"
      sudo ldconfig -p | grep boost | grep 1.64 | cut -f 2 -d '>' | xargs -I{} sudo rm {}
echo "# "
echo "# Mise à jour du contenu :"
echo "sudo ldconfig"
      sudo ldconfig
echo "#"
echo "# Vérification :"
echo "sudo ldconfig -p | grep boost | grep 1.64"
      sudo ldconfig -p | grep boost | grep 1.64
echo "#"
echo "cd .."
      cd ..
echo "pwd"
      pwd

echo "#"
echo "# Installation de icu"
echo "#"
echo "# http://site.icu-project.org/download/59"
echo "#"
echo "wget http://download.icu-project.org/files/icu4c/57.1/icu4c-57_1-src.tgz"
      wget http://download.icu-project.org/files/icu4c/57.1/icu4c-57_1-src.tgz
#echo "wget http://download.icu-project.org/files/icu4c/59.1/icu4c-59_1-src.tgz"
#      wget http://download.icu-project.org/files/icu4c/59.1/icu4c-59_1-src.tgz
echo "#"
echo "sudo rm -rf icu4c-57_1-src"
      sudo rm -rf icu4c-57_1-src
echo "# "
echo "tar -xzf icu4c-57_1-src.tgz"
      tar -xzf icu4c-57_1-src.tgz
echo "# "
echo "cd icu/source"
      cd icu/source
echo "pwd"
      pwd
echo "#"
echo "./configure"
      ./configure
echo "#"
echo "make"
      make
echo "#"
echo "sudo make install"
      sudo make install
echo "#"

echo "cd ../.."
      cd ../..
echo "#"
echo "rm icu4c-57_1-src.tgz"
      rm icu4c-57_1-src.tgz
echo "#"
echo "sudo ldconfig"
      sudo ldconfig
echo "#"
echo "pwd"
echo "#"
echo "# Installation de boost,"
echo "# avec boost-regex, relié à icu..."
echo "#"
#echo "rm -rf boost_1_59_0"
#      rm -rf boost_1_59_0
echo "sudo rm -rf boost_1_63_0"
      sudo rm -rf boost_1_63_0
#echo "sudo rm -rf boost_1_64_0"
#      sudo rm -rf boost_1_64_0
#echo "rm boost_1_59_0.tar.bz2"
#      rm boost_1_59_0.tar.bz2
echo "rm boost_1_63_0.tar.bz2"
      rm boost_1_63_0.tar.bz2
#echo "rm boost_1_64_0.tar.bz2"
#      rm boost_1_64_0.tar.bz2
#echo "wget https://sourceforge.net/projects/boost/files/boost/1.59.0/boost_1_59_0.tar.bz2"
#      wget https://sourceforge.net/projects/boost/files/boost/1.59.0/boost_1_59_0.tar.bz2
echo "wget https://sourceforge.net/projects/boost/files/boost/1.63.0/boost_1_63_0.tar.bz2"
      wget https://sourceforge.net/projects/boost/files/boost/1.63.0/boost_1_63_0.tar.bz2
#echo "wget https://dl.bintray.com/boostorg/release/1.64.0/source/boost_1_64_0.tar.bz2"
#      wget https://dl.bintray.com/boostorg/release/1.64.0/source/boost_1_64_0.tar.bz2
#echo "tar --bzip2 -xf boost_1_59_0.tar.bz2"
#      tar --bzip2 -xf boost_1_59_0.tar.bz2
echo "tar --bzip2 -xf boost_1_63_0.tar.bz2"
      tar --bzip2 -xf boost_1_63_0.tar.bz2
#echo "tar --bzip2 -xf boost_1_64_0.tar.bz2"
#      tar --bzip2 -xf boost_1_64_0.tar.bz2
#echo "cd boost_1_59_0"
#      cd boost_1_59_0
echo "cd boost_1_63_0"
      cd boost_1_63_0
#echo "cd boost_1_64_0"
#      cd boost_1_64_0
echo "pwd"
      pwd
echo "#"
echo "# pour les options, j'ai suivi la doc ici"
echo "# https://github.com/mapnik/mapnik/issues/3330"
echo "#"
echo "# ./boostrap.sh"
      # ./bootstrap.sh
#echo "./bootstrap.sh --with-toolset=clang --with-icu --with-python=python --libdir=/usr/local/lib --includedir=/usr/local/include"
#      ./bootstrap.sh --with-toolset=clang --with-icu --with-python=python --libdir=/usr/local/lib --includedir=/usr/local/include
echo "./bootstrap.sh --with-toolset=clang --with-icu=/home/fred/Documents/install/source/icu/source/ --libdir=/usr/local/lib --includedir=/usr/local/include"
      ./bootstrap.sh --with-toolset=clang --with-icu=/home/fred/Documents/install/source/icu/source/ --libdir=/usr/local/lib --includedir=/usr/local/include
#echo "sudo ./bootstrap.sh --with-toolset=gcc --with-icu --with-python=python --libdir=/usr/local/lib --includedir=/usr/local/include"
#      sudo ./bootstrap.sh --with-toolset=gcc --with-icu --with-python=python --libdir=/usr/local/lib --includedir=/usr/local/include
echo "#"
echo "# Il y a un problème de liaison entre boost-regex et icu"
echo "# pour forcer le lien, il faut recompiler boost-regex avec les paramètres suivants"
echo "# l'info a été vue sur cette page"
echo "#"
echo "# Pour verifier que boost_regex est compilé avec icu"
echo "#"
echo './bjam  --reconfigure | grep "has_icu builds"'
      ./bjam  --reconfigure | grep "has_icu builds"
echo "#"
echo "# Compilation et installation"
#echo "# ./b2 install"
#      # ./b2 install
echo "sudo ./b2 toolset=clang install"
      sudo ./b2 toolset=clang install
#echo "sudo ./b2 toolset=gcc install"
#      sudo ./b2 toolset=gcc install
echo "#"
echo "# https://github.com/mapnik/mapnik/wiki/InstallationTroubleshooting"
echo "# Boost/ICU linking error when linking libmapnik"
echo "#"

#echo "sudo ./bjam --with-regex toolset=clang -sHAVE_U=1 -sICU_PATH=/usr/local/ -a install"
echo "sudo ./bjam --with-regex toolset=clang -sICU_PATH=/home/fred/Documents/install/source/icu/source/ -a install"
      sudo ./bjam --with-regex toolset=clang -sICU_PATH=/home/fred/Documents/install/source/icu/source/ -a install
echo ""
echo "#"
echo "cd ../environnementTravail"
      cd ../environnementTravail
echo "pwd"
      pwd
echo "#"
echo "rm ../boost_1_63_0.tar.bz2"
      rm ../boost_1_63_0.tar.bz2
#echo "rm ../boost_1_64_0.tar.bz2"
#      rm ../boost_1_64_0.tar.bz2
echo "#"
echo "sudo ldconfig"
      sudo ldconfig
echo "#"
echo "#----------------------"
echo "# Test de l'installation de boost :"
echo "#----------------------"
echo "#"
echo "#----------------------"
echo "# Reste a faire :"
echo "#----------------------"
#echo "# ./installOSM.sh"
#echo "# ./installOSMCartoCSS.sh"
#echo "# ./installOSMBoostDebian.sh"
echo "# ./installOSMMapnikDebian.sh"
##echo "# ./installOSMMapnikUbuntu.sh"
echo "# ./installOSMPythonMapnikDebian"
##echo "# ./installOSMPythonMapnikUbuntu"
echo "# ./installOSMTirex.sh"
echo "# ./installOSMTilemanDebian.sh"
##echo "# ./installOSMTilemanUbuntu.sh"
echo "#----------------------"
