#!/bin/sh



# 8ème Partie - Installation d'un environnement OSM
###############################################
# Installation d'un environnement OSM
echo "# 8ème Partie - Installation de cartocss"
echo "######################################################"
echo "#"
echo "# Ce script présente l'installation de cartocss"
echo "#"
echo "# cartocss est utilisé pour remplacer le fichier xml de mapnik"
echo "# https://github.com/gravitystorm/openstreetmap-carto"
echo "#"
echo "# Jusqu'à présent, il fallait avoir un fichier xml pour decrire le rendu"
echo "# Pour les données d'OpenStreetMap, il faut :"
echo "#   1. generer un fichier xml avec la commande generate-xml.py"
echo "#   2. lancer le rendu avec la commande mapnik-render"
echo "# "
echo "# Dorénavant, avec cartocss, il faut avoir un fichier de type css"
echo "# la syntaxe est plus souple et plus lisible"
echo "# L'edition peut-etre faite à la main ou avec des outils (mapbox ?)"
echo "# Pour rendre les données d'OpenStreetMap, il faut :"
echo "#   1. adapter le fichier css"
echo "#   2. lancer le rendu"

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
echo "cd ../environnementTravail"
      cd ../environnementTravail
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
echo "cd ../environnementTravail"
      cd ../environnementTravail
echo "pwd"
      pwd
echo "#"
echo "#----------------------"
echo "# Test de l'installation d'openstreetmap-carto"
echo "# et de openstreetmap-carto-vector-tiles :"
echo "#----------------------"
echo "# La doc est ici"
echo "# https://github.com/gravitystorm/openstreetmap-carto/blob/master/INSTALL.md"
echo "# https://github.com/geofabrik/openstreetmap-carto-vector-tiles/blob/master/INSTALL.md"
echo "#"
echo "# Test 1 : Test de mapnik avec les données osm (et configuration cartocss)"
echo "#   https://github.com/gravitystorm/openstreetmap-carto/blob/master/CONTRIBUTING.md"
echo "#   Jusqu'à présent, pour configurer le rendu,"
echo "#   nous avions utiliser un fichier xml,"
echo "#   nous allons maintenant utiliser un fichier css"
echo ""
echo ""
echo "#----------------------"
echo "#"
echo "#----------------------"
echo "# Reste a faire :"
echo "#----------------------"
#echo "# ./installOSMBoost.sh"
#echo "# ./installOSMMapnik.sh"
#echo "# ./installOSMPythonMapnik"
#echo "# ./installOSMCartoCSS.sh"
echo "# ./installOSMTirex.sh"
echo "# ./installOSMTilemanDebian.sh"
echo "#----------------------"


echo "#"
