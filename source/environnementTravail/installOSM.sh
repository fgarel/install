#!/bin/sh



# 8ème Partie - Installation d'un environnement OSM
###############################################
# Installation d'un environnement OSM
echo "# 8ème Partie - Installation d'un environnement OSM"
echo "###############################################"
echo "#"
echo "# Nous allons créer un environnement "
echo "# (Ici, il faut comprendre le mot environnement comme ensemble d'outils, "
echo "# et non pas comme une environnement virtuel python)"
echo "# pour faciliter la manipulation de données OSM."
echo "#"
echo "# La documentation sur l'installation et l'utilisation de cet"
echo "# environnement est détaillé dans"
echo "# Linux Magazine N°188"
echo "#"
echo "# Pré-requis avant d'installer les données OSM"
echo "# Des outils comme osmosis sont développés en Java"
echo "# D'autre part, il faut aussi veillez  avoir postgresql qui tourne..."
echo "#"
echo "# La base de données postgresql, avec l'extension postgis, nécessaire pour stocker les données"
echo "# L'outil osmosis, nécessaire pour télécharger les données OpenStreetMap, est fourni par le paquet osmosis"
echo "# L'outil osm2pgsql, nécessaire pour importer les données dans postgresql, est fourni par le paquet osmosis"
echo "# L'outil renderd, nécessaire pour fabriquer les tuiles, est fourni par le paquet osmosis"
echo "# Le module apache mod_tile, nécessaire pour servir les tuiles, est fourni par le paquet libapache2-mod-tile"
echo "#"
echo "#"
echo "# Ces paquets sont donc :"
echo "#"
echo "# sudo apt-get install libapache2-mod-tile"
echo "sudo apt-get install osmosis"
#sudo apt-get install libapache2-mod-tile
sudo apt-get install osmosis
echo "#"
echo "# sudo apt-get install ..."
echo "#"
#sudo apt-get install libxslt1-dev
echo "#"
echo "#"
echo "# Avec cette suite d'outils, nous allons maintenant créer quelques petits scripts"
echo "# qui vont automatiser certaines taches :"
echo "#"
echo "# osmCreateRepository.sh"
echo "# osmDownloadFirstTime.sh"
echo "# osmDownloadOtherTime.sh"
echo "# osmImportFirstTime.sh"
echo "# osmImportOtherTime.sh"
echo "# osmRender.sh"

echo "#"
