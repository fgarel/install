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
echo "# Ensuite, pour installer nginx-extras"
echo "# il faut ajouter un dépot PPA"
echo "# Sur Ubuntu, c'est ok"
echo "sudo add-apt-repository ppa:osmjapan/ppa"
      sudo add-apt-repository ppa:osmjapan/ppa
#echo "# mais pour Debian,"
#echo "# on peut suivre la procédure indiquée ici :"
#echo "# https://wiki.debian.org/CreatePackageFromPPA"
#echo "# step 1, sur la page"
#echo "#   https://launchpad.net/~osmjapan/+archive/ubuntu/ppa"
#echo "#   recuperation de l'url"
#echo "#   deb-src http://ppa.launchpad.net/osmjapan/ppa/ubuntu YOUR_UBUNTU_VERSION_HERE main "
#echo "# step 2, sur cette même page,"
#echo "#   on remarque que la derniere version publiée est"
#echo "#   trusty"
#echo "# step 3, la ligne pour le sources.list est donc"
#echo "#   deb-src http://ppa.launchpad.net/osmjapan/ppa/ubuntu trusty main "
#echo "# step 4, le dépot peut etre ajoute à la main ou via synaptic"
#echo "# step 5, sur la page, on a aussi l'info"
#echo "#   Signing key:"
#echo "#     1024R/CE5BFF82 (What is this?)"
#echo "#   Fingerprint:"
#echo "#     F32C5C884411317A82488233F42FF838CE5BFF82"
#echo "#   la commande pour ajouter la cle est donc"
echo "sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys CE5BFF82"
      sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys CE5BFF82
echo "#"
echo "sudo aptitude update"
      sudo aptitude update
echo "# sudo aptitude install nginx-extras"
#echo "#"
#echo "# sudo aptitude install geoip-database"
#echo "# sudo aptitude install lua-bitop"
#echo "# sudo aptitude install lua5.1"
#echo "#"
#echo "# sudo apt-get install devscripts build-essential"
#echo "# sudo apt-get install dh-lua libcgal-dev cmake"
#echo "# sudo apt-get source --build lua-nginx-osm"
#echo "# sudo dpkg -i lua-nginx-osm_0.44ubuntu1_all.deb"
#echo "#"
#echo "# sudo apt-get source --build tirex"
#echo "# sudo aptitude install libipc-sharelite-perl"
#echo "# sudo dpkg -i tirex-core_0.4.2tileman2_amd64.deb"
#echo "#"
#echo "# Attention, pour le paquet tileman, il y a une modif à faire à la main"
#echo "# sudo apt-get source --build tileman"
#echo "# sudo aptitude install osm2pgsql"
#echo "# sudo dpkg -i tileman_1.4.1_all.deb"
#echo "# et hooo, déception, ca ne fonctionne pas..."
#echo "# Attention : modif du fichier debian/control pour la gestion des dependances"
#echo "# sudo vi tileman-1.4.1/debian/control"
#echo "# afin de changer les paquets "
#echo "# postgresql-9.3-postgis-2.1 en postgresql-9.4-postgis-2.1"
#echo "# postgresql-9.3-postgis-scripts en postgresql-9.4-postgis-scripts"
#echo "#"
#echo "# on recommence le build"
#echo "# sudo apt-get source --build tileman"
#echo "# et on test l'install"
#echo "# sudo dpkg -i tileman_1.4.1_all.deb"
#echo "# et yes, ca fonctionne !"
#echo "#"
#echo "# sudo ln -s /etc/nginx/sites-available/tileman-proxy /etc/nginx/sites-enabled/tileman-proxy"
#echo "#"
#echo "# sudo service nginx stop"
#echo "# sudo systemctl status nginx.service"
#echo "# sudo mkdir -p /opt/tileman/cache"
#echo "# sudo service nginx start"
echo "#"

echo "#"
echo "#"
echo "#"

echo "cd ../environnementTravail"
      cd ../environnementTravail
echo "pwd"
      pwd

#echo "#----------------------"
#echo "# Reste a faire :"
#echo "#----------------------"
#echo "# ./installOSMCartoCSS.sh"
#echo "# ./installOSMBoost.sh"
#echo "# ./installOSMMapnikUbuntu.sh"
#echo "# ./installOSMPythonMapnikUbuntu"
#echo "# ./installOSMTirex.sh"
#echo "# ./installOSMTilemanUbuntu.sh"
#echo "#----------------------"

echo "#"
