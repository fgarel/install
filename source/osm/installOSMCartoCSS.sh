#!/bin/sh



# 8ème Partie - Installation d'un environnement OSM
###############################################
# Installation d'un environnement OSM
echo "# 8ème Partie - Installation de cartocss"
echo "######################################################"
echo "#"
echo "# Ce script présente l'installation de cartocss"
echo "#"
echo "# Cartocss est composé de deux choses :"
echo "#"
echo "# - la première chose, c'est un fichier d'extension (.style)"
echo "#   et ce fichier (.style) est utilisé comme paramètre par l'utilitaire osm2pgsql"
echo "#   pour l'import des données du format pbf vers un schema dans postgresql"
echo "#   Ce fichier (.style) est recopié dans le repertoire ~/documents/osmosis via le script ./osmCreateRepository.sh"
echo "#   Ce fichier (.style) est utilisé par l'utilitaire osm2pgsql dans les scripts osmImportFirstTime.sh et osmImportOtherTime.sh"
echo "#"
echo "# - la seconde chose, c'est que cartocss peut etre utilisé utilisé pour"
echo "#   remplacer les feuilles de styles (.xml) de mapnik"
echo "#   cartocss est en effet composé de multiples fichier (.mss)"
echo "#"

echo "#"


echo "#"
echo "set OLDPWDFG=$(pwd)"
      set OLDPWDFG=$(pwd)
      echo $OLDPWDFG
echo "#"
echo "# Installation d'openstreetmap-carto"
echo "cd .."
      cd ..
echo "pwd"
      pwd
echo "rm -rf openstreetmap-carto"
      rm -rf openstreetmap-carto
echo "git clone https://github.com/gravitystorm/openstreetmap-carto"
      git clone https://github.com/gravitystorm/openstreetmap-carto
echo "cd openstreetmap-carto"
      cd openstreetmap-carto
echo "pwd"
      pwd
echo "#"
echo "#"
#echo "sudo make install"
#      sudo make install
echo "#"
echo "cd $OLDPWDFG"
      cd $OLDPWDFG
echo "pwd"
      pwd
echo "#"
echo "# Installation d'openstreetmap-carto-vector-tiles"
echo "cd .."
      cd ..
echo "pwd"
      pwd
echo "rm -rf openstreetmap-carto-vector-tiles"
      rm -rf openstreetmap-carto-vector-tiles
echo "git clone https://github.com/geofabrik/openstreetmap-carto-vector-tiles"
      git clone https://github.com/geofabrik/openstreetmap-carto-vector-tiles
echo "cd openstreetmap-carto-vector-tiles"
      cd openstreetmap-carto-vector-tiles
echo "pwd"
      pwd
echo "#"
echo "#"
#echo "sudo make install"
#      sudo make install
echo "#"
echo "cd $OLDPWDFG"
      cd $OLDPWDFG
echo "pwd"
      pwd
echo "#"
echo "# Installation des fonts"
echo "#"
echo "# D'après la page suivante,"
echo "# https://github.com/geofabrik/openstreetmap-carto-vector-tiles/blob/master/INSTALL.md"
echo "# Il est nécessaire d'installer des polices supplémentaires pour utiliser ce système de rendu"
echo "#"
echo "# Cette installation est dupliquée dans ../environnementTravail/installFonts.sh"
echo "#"
echo "sudo aptitude install fonts-noto-cjk fonts-noto-hinted fonts-noto-unhinted fonts-hanazono ttf-unifont"
      sudo aptitude install fonts-noto-cjk fonts-noto-hinted fonts-noto-unhinted fonts-hanazono ttf-unifont
echo "sudo aptitude install fonts-dejavu ttf-dejavu ttf-dejavu-core ttf-dejavu-extra"
      sudo aptitude install fonts-dejavu ttf-dejavu ttf-dejavu-core ttf-dejavu-extra
echo "sudo apt-get -y install fonts-noto-cjk fonts-noto-hinted fonts-noto-unhinted fonts-hanazono ttf-unifont"
      sudo apt-get -y install fonts-noto-cjk fonts-noto-hinted fonts-noto-unhinted fonts-hanazono ttf-unifont
echo "sudo apt-get -y install fonts-dejavu ttf-dejavu ttf-dejavu-core ttf-dejavu-extra"
      sudo apt-get -y install fonts-dejavu ttf-dejavu ttf-dejavu-core ttf-dejavu-extra
echo "#"
echo "# Après installation des fonts, il faut les enregistrer"
echo "# https://wiki.debian.org/Fonts"
echo "fc-cache -fv # rebuilds cached list of fonts"
      fc-cache -fv
echo "#"
echo "#----------------------"
echo "# Test de l'installation d'openstreetmap-carto"
echo "# et de openstreetmap-carto-vector-tiles :"
echo "#----------------------"
echo "#"
echo "# Nous avons deux modes d'utilisation :"
echo "# - soit l'utilisation du fihcier (.style),"
echo "# - soit l'utilisation des fichiers (.mss)"
echo "#"
echo "# En ce qui concerne l'utilisation du fichier (.style), l'usage de cartocss ne pose aucun problème"
echo "# En ce qui concerne l'utilisation des fichiers (.mss), en fait, avant de pouvoir"
echo "# avant de pouvoir tester cartocss, il faut que l'on ait installer mapnik...."
echo "# On ne fera donc les tests qu'après avoir installé mapnik et meme apres python-mapnik"
echo "#"
echo ""
echo "#----------------------"
echo "#"
echo "#----------------------"
echo "# Reste a faire :"
echo "#----------------------"
#echo "# ./installOSM.sh"
#echo "# ./installOSMCartoCSS.sh"
####echo "# ./installOSMBoostDebian.sh"
echo "# ./installOSMMapnikDebianPaquet.sh"
####echo "# ./installOSMMapnikUbuntuSource.sh"
##echo "# ./installOSMMapnikUbuntuPaquet.sh"
echo "# ./installOSMPythonMapnikDebian.sh"
##echo "# ./installOSMPythonMapnikUbuntu.sh"
echo "# ./installOSMTirex.sh"
echo "# ./installOSMTilemanDebian.sh"
##echo "# ./installOSMTilemanUbuntu.sh"
echo "#----------------------"


echo "#"
