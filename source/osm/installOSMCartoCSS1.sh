#!/bin/sh



# 8ème Partie - Installation d'un environnement OSM
###############################################
# Installation d'un environnement OSM
echo "# 8ème Partie - Installation de cartocss"
echo "######################################################"
echo "#"
echo "# Ce script présente l'installation de cartocss"
echo "# CartoCSS n'est peut-etre pas la technique ideal"
echo "# mais il faut etudier un peu plus le monde mapbox..."
echo "# https://blog.mapbox.com/the-end-of-cartocss-da2d7427cf1"
echo "#"
echo "# Donc, pour le moment, on reste avec cartoCSS"
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
echo "#   cartocss est en effet composé de multiples fichier (project.mml et *.mss)"
echo "#"

echo "#"


echo "#"
echo "export OLDPWDFG=$(pwd)"
      export OLDPWDFG=$(pwd)
      echo $OLDPWDFG
echo "#"
#echo "# Installation d'openstreetmap-carto"
echo "cd .."
      cd ..
echo "pwd"
      pwd
#echo "rm -rf openstreetmap-carto"
#      rm -rf openstreetmap-carto
#echo "git clone https://github.com/gravitystorm/openstreetmap-carto"
#      git clone https://github.com/gravitystorm/openstreetmap-carto
#echo "cd openstreetmap-carto"
#      cd openstreetmap-carto
#echo "pwd"
#      pwd
#echo "#"
#echo "#"
#echo "sudo make install"
#      sudo make install
#echo "#"
#echo "cd $OLDPWDFG"
#      cd $OLDPWDFG
#echo "pwd"
#      pwd
echo "#"
echo "# Installation d'openstreetmap-carto-vector-tiles"
echo "#"
echo "# Les tuiles vecteurs"
echo "# https://github.com/mapbox/awesome-vector-tiles"
echo "#"
#echo "cd .."
#      cd ..
#echo "pwd"
#      pwd
echo "rm -rf openstreetmap-carto-vector-tiles"
      rm -rf openstreetmap-carto-vector-tiles
echo "git clone https://github.com/geofabrik/openstreetmap-carto-vector-tiles"
      git clone https://github.com/geofabrik/openstreetmap-carto-vector-tiles
#echo "git fetch https://github.com/geofabrik/openstreetmap-carto-vector-tiles"
#      git fetch https://github.com/geofabrik/openstreetmap-carto-vector-tiles
echo "cd openstreetmap-carto-vector-tiles"
      cd openstreetmap-carto-vector-tiles
echo "git fetch origin master"
      git fetch origin master
#echo "pwd"
#      pwd
echo "#"
echo "#"
echo "cd $OLDPWDFG"
      cd $OLDPWDFG
echo "pwd"
      pwd
echo "#"
echo "#"
echo "#----------------------"
echo "# Test de l'installation d'openstreetmap-carto"
echo "# et de openstreetmap-carto-vector-tiles :"
echo "#----------------------"
echo "#"
echo "# Nous avons deux modes d'utilisation :"
echo "# - soit l'utilisation du fihcier (.style),"
echo "# - soit l'utilisation des fichiers (project.mml et *.mss)"
echo "#   https://cartocss.readthedocs.io/en/latest/mml.html#mml-file-structure"
echo "#"
echo "# En ce qui concerne l'utilisation du fichier (.style),"
echo "#   - l'usage de cartocss ne pose aucun problème (cf osmImportFirstTime.sh)"
echo "# En ce qui concerne l'utilisation des fichiers (.mml et .mss),"
echo "#   - l'utilisation de l'utiliaire carto se fait comme ceci"
echo "#     cd openstreetmap-carto-vector-tiles"
echo "#     carto project.mml > openstreetmap-carto-vector-tiles.xml"
echo "#     mapnik-render openstreetmap-carto-vector-tiles.xml openstreetmap-carto-vector-tiles.png"
echo "#   - l'utilisation de l'utilitaire kosmtik se fait comme ceci"
echo "#     - dans le container"
echo "#       kosmtik --port 8000 --host 172.17.0.2 project.mml"
echo "#     - sur la machine physique local"
echo "#       http://172.17.0.2:8000"
echo "#   - et pour l'utilisation conjointe de mapnik et des feuilles de style cartocss"
echo "#     il faut deja que l'on ait installé mapnik et python-mapnik ..."
#echo "# en fait, avant de pouvoir"
#echo "# tester cartocss, il faut que l'on ait installer mapnik...."
echo "#    .. on ne fera donc les tests qu'après avoir installé mapnik et meme apres python-mapnik...."
echo "#    http://wiki.openstreetmap.org/wiki/User:Stanton/Mapnik_Test_Server#Mapnik_Initialization"
echo "#"
echo "# Autres styles"
echo "# http://wiki.openstreetmap.org/wiki/List_of_CartoCSS_projects"
echo "# https://blog.osm-baustelle.de/index.php/2017/07/17/yet-some-more-style-sheets-again/#more-203"
echo "# https://github.com/mapbox/mapbox-studio-pencil.tm2"
echo "# https://github.com/mapbox/mapbox-studio-space-station.tm2"
echo "# https://github.com/stekhn/blossom"
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
