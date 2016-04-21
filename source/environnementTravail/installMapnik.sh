#!/bin/sh



# 8ème Partie - Installation d'un environnement OSM
###############################################
# Installation d'un environnement OSM
echo "# 8ème Partie - Installation de mapnik et de tirex"
echo "##################################################"
echo "#"
echo "# Ce script présente en meme temps, l'installation de mapnik et de tirex"
echo "# Cependant, il faut que mapnik soit installé en premier"
echo "# redemarrer un nouveau shell, de facon a que que mapnik-config soit connu"
echo "# puis installer tirex"
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
echo "# Installation de tirex "
echo "#"
echo "# https://github.com/openstreetmap/tirex"
echo "#"
echo "cd .."
      cd ..
echo "pwd"
      pwd
echo "rm -rf tirex"
      rm -rf tirex
echo "git clone https://github.com/geofabrik/tirex.git"
      git clone https://github.com/geofabrik/tirex.git
echo "cd tirex"
      cd tirex
echo "sudo aptitude install libipc-sharelite-perl"
      sudo aptitude install libipc-sharelite-perl
echo "make"
      make
echo "make clean"
      make clean
echo "#"
echo "# Pour ce qui est de l'installation,"
echo "# la commande "
echo "# make install"
echo "# semble fonctionner (si mapnik a été préalablement installé)"
echo "# cependant, nous avons eu ce type d'erreur"
echo "# Cannot open master UNIX domain socket: No such file or directory"
echo "# et d'après cette liste de discussion,"
echo "# https://lists.openstreetmap.org/pipermail/dev/2011-June/023004.html"
echo "# la solution est de passer par la fabrication de paquet debian"
echo "# non pas avec"
echo "# make deb"
echo "# mais avec"
echo "# dpkg-buildpackage -us -uc"
echo "#"
echo "#"
echo "# sudo make install"
      # sudo make install
echo "# sudo make install-example-map"
      # sudo make install-example-map
echo "sudo aptitude install devscripts"
      sudo aptitude install devscripts
echo "#make deb"
      #make deb
echo "#make deb-clean"
      #make deb-clean
echo "dpkg-buildpackage -us -uc"
      dpkg-buildpackage -us -uc
echo "#"
echo "# Les paquets sont placés dans le repertoire parent"
echo "# /home/fred/Documents/install/source"
echo "#"
echo "sudo dpkg -i ../tirex-core.deb"
      sudo dpkg -i ../tirex-core_0.4.1precise1_amd64.deb
echo "sudo dpkg -i ../tirex-backend-mapnik.deb"
      sudo dpkg -i ../tirex-backend-mapnik_0.4.1precise1_amd64.deb
echo "sudo dpkg -i ../tirex-example-map.deb"
      sudo dpkg -i ../tirex-example-map_0.4.1precise1_amd64.deb
echo "sudo dpkg -i ../tirex-syncd.deb"
      sudo dpkg -i ../tirex-syncd_0.4.1precise1_amd64.deb
echo "#"
echo "#"
echo "sudo aptitude install libtest-simple-perl"
      sudo aptitude install libtest-simple-perl
echo "sudo aptitude install libtest-harness-perl"
      sudo aptitude install libtest-harness-perl
echo "prove"
      prove
echo "cd ../environnementTravail"
      cd ../environnementTravail
echo "pwd"
      pwd
echo "#"

echo "#"
