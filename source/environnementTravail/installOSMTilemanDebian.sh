#!/bin/sh



# 8ème Partie - Installation d'un environnement OSM
###############################################
# Installation d'un environnement OSM
echo "# 8ème Partie - Installation de mapnik, tirex, tileman"
echo "######################################################"
echo "#"
echo "# Ce script présente l'installation de tileman"
echo "#"
echo "# Attention, il faut d'abord installer mapnik, python-mapnik et tirex !"
echo "# ./installOSMMapnik.sh"
echo "# ./installOSMPythonMapnik.sh"
echo "# ./installOSMTirex.sh"
echo "#"
echo "# Avant d'installer tileman, il faut en effet que mapnik et tirex soient présents."
echo "# Après installation de mapnik, il faut "
echo "# redémarrer un nouveau shell, de facon a ce que mapnik-config soit connu"
echo "# pour enfin installer tirex et tilman"
echo "#"
echo "# Installation de tileman "
echo "#"
echo "# https://github.com/osmfj/tileman/blob/master/INSTALL.md"
echo "#"
echo "cd .."
      cd ..
echo "pwd"
      pwd
echo "rm -rf tileman*"
      rm -rf tileman*
echo "git clone https://github.com/osmfj/tileman.git"
      git clone https://github.com/osmfj/tileman.git
echo "#"
echo "# Attention, on remplace le Makefile ...."
echo "cp environnementTravail/tileman_Makefile tileman/Makefile"
      cp environnementTravail/tileman_Makefile tileman/Makefile
echo "cd tileman"
      cd tileman
echo "git submodule init"
      git submodule init
echo "git submodule update"
      git submodule update
echo "cp ../environnementTravail/tileman_lua-nginx-osm_Makefile lua-nginx-osm/Makefile"
      cp ../environnementTravail/tileman_lua-nginx-osm_Makefile lua-nginx-osm/Makefile
echo "cp ../environnementTravail/tileman_lua-nginx-osm_osm_data_Makefile lua-nginx-osm/osm/data/Makefile"
      cp ../environnementTravail/tileman_lua-nginx-osm_osm_data_Makefile lua-nginx-osm/osm/data/Makefile
echo "cp ../environnementTravail/tileman_lua-nginx-osm_osm_data_north-america_Makefile lua-nginx-osm/osm/data/north-america/Makefile"
      cp ../environnementTravail/tileman_lua-nginx-osm_osm_data_north-america_Makefile lua-nginx-osm/osm/data/north-america/Makefile
# echo "#"
# echo "#---------------------------------------------"
# echo "# Ensuite, pour installer tileman"
# echo "# il faut ajouter un dépot PPA"
# echo "# Sur Ubuntu, c'est ok, cf installOSMTilemanUbuntu.sh"
# echo "# mais pour Debian,"
# echo "# on peut suivre la procédure indiquée ici :"
# echo "# https://wiki.debian.org/CreatePackageFromPPA"
# echo "# step 1, sur la page"
# echo "#   https://launchpad.net/~osmjapan/+archive/ubuntu/ppa"
# echo "#   recuperation de l'url"
# echo "#   deb-src http://ppa.launchpad.net/osmjapan/ppa/ubuntu YOUR_UBUNTU_VERSION_HERE main "
# echo "# step 2, sur cette même page,"
# echo "#   on remarque que la derniere version publiée est"
# echo "#   trusty"
# echo "# step 3, la ligne pour le sources.list est donc"
# echo "#   deb-src http://ppa.launchpad.net/osmjapan/ppa/ubuntu trusty main "
# echo "# step 4, le dépot peut etre ajoute à la main ou via synaptic"
# echo "#"
# echo "#-----"
# echo 'sudo rm /etc/apt/sources.list.d/osmjapan-ubuntu-ppa-xenial.list'
#       sudo rm /etc/apt/sources.list.d/osmjapan-ubuntu-ppa-xenial.list
# echo 'sudo touch /etc/apt/sources.list.d/osmjapan-ubuntu-ppa-xenial.list'
#       sudo touch /etc/apt/sources.list.d/osmjapan-ubuntu-ppa-xenial.list
# echo "sudo su -c 'echo \"deb-src http://ppa.launchpad.net/osmjapan/ppa/ubuntu trusty main\" >> \\"
# echo "     /etc/apt/sources.list.d/osmjapan-ubuntu-ppa-xenial.list'"
#       sudo su -c 'echo "deb-src http://ppa.launchpad.net/osmjapan/ppa/ubuntu trusty main" >> \
#            /etc/apt/sources.list.d/osmjapan-ubuntu-ppa-xenial.list'
# echo "#-----"
# echo "#"
# echo "# step 5, sur la page, on a aussi l'info"
# echo "#   Signing key:"
# echo "#     1024R/CE5BFF82 (What is this?)"
# echo "#   Fingerprint:"
# echo "#     F32C5C884411317A82488233F42FF838CE5BFF82"
# echo "#   la commande pour ajouter la cle est donc"
# echo "#     sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys CE5BFF82"
# echo "#"
# echo "#   Attention, si besoin, il est peut etre necessaire de lancer ./docksshuttle1.sh"
# echo "#-----"
# echo "# ./docksshuttle1.sh"
#       # ./docksshuttle1.sh
# echo "sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys CE5BFF82"
#       sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys CE5BFF82
# echo "#-----"
# echo "#"
# echo "#---------------------------------------------"
# echo "#"
# echo "sudo aptitude update"
#       sudo aptitude update
echo "sudo aptitude install nginx-extras"
      sudo aptitude install nginx-extras
echo "#"
echo "sudo aptitude install geoip-database"
      sudo aptitude install geoip-database
echo "sudo aptitude install lua-bitop"
      sudo aptitude install lua-bitop
echo "sudo aptitude install lua5.1"
      sudo aptitude install lua5.1
echo "#"
echo "sudo apt-get install devscripts build-essential"
      sudo apt-get install devscripts build-essential
echo "sudo apt-get install dh-lua libcgal-dev cmake"
      sudo apt-get install dh-lua libcgal-dev cmake
echo "sudo apt-get install libcgal-qt5-11"
      sudo apt-get install libcgal-qt5-11

echo "#"
echo "# lua-nginx-osm"
echo "#"
echo "cd lua-nginx-osm"
      cd lua-nginx-osm
echo "make"
      make
echo "sudo make install"
      sudo make install
echo "dpkg-buildpackage -us -uc"
      dpkg-buildpackage -us -uc
echo "#"
echo "# Les paquets sont placés dans le repertoire parent"
echo "# /home/fred/Documents/install/source"
echo "#"
echo "cd .."
      cd ..
echo "sudo dpkg -i lua-nginx-osm.deb"
      sudo dpkg -i lua-nginx-osm_0.43_all.deb

# echo "### sudo su -c 'apt-get source --build lua-nginx-osm'"
#       ### sudo su -c 'apt-get source --build lua-nginx-osm'
# echo "### sudo dpkg -i lua-nginx-osm_0.44ubuntu1_all.deb"
#       ### sudo dpkg -i lua-nginx-osm_0.44ubuntu1_all.deb
# echo "#"
# echo "### sudo su -c 'apt-get source --build tirex'"
#       ### sudo su -c 'apt-get source --build tirex'
# echo "### sudo dpkg -i tirex-core_0.4.2tileman2_amd64.deb"
#       ### sudo dpkg -i tirex-core_0.4.2tileman2_amd64.deb
# echo "#"
echo "sudo aptitude install libipc-sharelite-perl"
      sudo aptitude install libipc-sharelite-perl
echo "sudo aptitude install libmapnik-dev"
      sudo aptitude install libmapnik-dev
echo "sudo aptitude install libsigc++-2.0-dev"
      sudo aptitude install libsigc++-2.0-dev

echo "#"
echo "# tileman"
echo "#"
echo "# Attention, pour le paquet tileman, il y a une modif à faire à la main"
echo "# sudo apt-get source --build tileman"
echo "# sudo aptitude install osm2pgsql"
echo "# sudo dpkg -i tileman_1.4.1_all.deb"
echo "# et hooo, déception, ca ne fonctionne pas..."
echo "# Attention : modif du fichier debian/control pour la gestion des dependances"
echo "# sudo vi tileman-1.4.1/debian/control"
echo "# afin de changer les versions des paquets "
echo "# postgresql-9.3-postgis-2.1     >> en >> postgresql-9.4-postgis-2.1"
echo "# postgresql-9.3-postgis-scripts >> en >> postgresql-9.4-postgis-scripts"
echo "#"
echo "# on recommence le build"
echo "# sudo apt-get source --build tileman"
echo "# et on test l'install"
echo "# sudo dpkg -i tileman_1.4.1_all.deb"
echo "# et yes, ca fonctionne !"
echo "#"
echo "#"
echo "sed -i -e 's|postgresql-9.1-postgis|postgresql-9.4-postgis-2.1|' debian/control"
      sed -i -e 's|postgresql-9.1-postgis|postgresql-9.4-postgis-2.1|' debian/control
# echo "sudo apt-get source --build tileman"
# echo "sudo dpkg -i tileman_1.4.1_all.deb"
# echo "#"

echo "make"
      make
echo "sudo make install"
      sudo make install
echo "dpkg-buildpackage -us -uc"
      dpkg-buildpackage -us -uc
echo "#"
echo "# Les paquets sont placés dans le repertoire parent"
echo "# /home/fred/Documents/install/source"
echo "#"
echo "sudo dpkg -i ../tileman_1.4.1_all.deb"
      sudo dpkg -i ../tileman_1.4.1_all.deb

# echo "#"
# echo "# sudo ln -s /etc/nginx/sites-available/tileman-proxy /etc/nginx/sites-enabled/tileman-proxy"
# echo "# sudo ln -s /etc/nginx/sites-available/tileman-server /etc/nginx/sites-enabled/tileman-server"
# echo "#"
# echo "# sudo service nginx stop"
# echo "# sudo systemctl status nginx.service"
# echo "# sudo mkdir -p /opt/tileman/cache"
# echo "# sudo service nginx start"
# echo "#"

echo "cd ../environnementTravail"
      cd ../environnementTravail
echo "pwd"
      pwd


echo "#"
echo "#----------------------"
echo "# Utilisation de tileman "
echo "#----------------------"
echo "# La doc est ici"
echo "#"
echo "# test de nginx"
echo "# http://localhost"
echo "#"
echo "# test du site ..."
echo "#"
echo "#"
echo "# test du site ..."
echo "#"
echo "#"
echo "#----------------------"
echo "#"
#echo "#----------------------"
#echo "# Reste a faire :"
#echo "#----------------------"
#echo "# ./installOSMBoost.sh"
#echo "# ./installOSMMapnik.sh"
#echo "# ./installOSMPythonMapnik"
#echo "# ./installOSMCartoCSS.sh"
#echo "# ./installOSMTirex.sh"
#echo "# ./installOSMTilemanDebian.sh"
#echo "#----------------------"


echo "#"
