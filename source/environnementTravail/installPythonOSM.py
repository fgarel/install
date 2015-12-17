#!/bin/sh



# 6ème Partie - suite : Création d'un environnement python
###############################################
# Création d'un environnement python
echo "# 6ème Partie - suite : Création d'un environnement python"
echo "###############################################"
echo "#"
echo "# Pew peut maintenant être utilisé :"
echo "#"
echo "# Nous allons créer un environnement virtuel pour faciliter"
echo "# la manipulation de données OSM."
echo "# ... d'ou le nom de cet environnement ... OSM"
echo "#"
echo "# La documentation sur l'installation et l'utilisation de cet"
echo "# environnement est détaillé dans"
echo "# Linux Magazine N°..."
echo "# technic/source/environnementTravail/Chapter05_sphinx.rst"
echo "#"
echo "# Pré-requis avant d'installer les données OSM"
echo "# L'installation de sphinx ne se passe pas très bien si nous n'avons pas"
echo "# au préalable, installé quelques paquets"
echo "#"
echo "# La base de données postgresql, avec l'extension postgis, nécessaire pour stocker les données"
echo "# L'outil ..., nécessaire pour fabriquer un build pdf, est fourni par le paquet ..."
echo "#"
echo "#"
echo "# Ces paquets sont donc :"
echo "#"
echo "# sudo apt-get install ..."
echo "# sudo apt-get install ..."
sudo apt-get install texlive-latex-recommended \
                     texlive-latex-extra \
                     texlive-fonts-recommended \
                     texlive-font-utils \
                     texlive-lang-french
echo "#"
echo "# sudo apt-get install ..."
echo "#"
sudo apt-get install libxslt1-dev
echo "#"
echo "#"
echo "# Cherchons à connaitre la version de python qui"
echo "# correspond au paquet python3-dev"
echo "#"
echo "# aptitude show python3-dev"
echo "#"
echo "# Recherche et installation de la version de python utilisée par pew"
echo "#   pew list_pythons -a | grep 3.4.2"
pew list_pythons -a | grep 3.4.2
echo "#   pew install 3.4.2"
pew install 3.4.2
echo "#"
echo "# Creation de l'environnement virtuel osm"
echo '#   pew new -p $(pythonz locate 3.4.2) osm'
pew new -p $(pythonz locate 3.4.2) osm
echo ""
echo ""
echo "# Dans l'environnement virtuel, l'installation continue avec"
echo "#"
echo "# pip install aafigure"
echo "# pip install hieroglyph"
echo "# pip install hovercraft"
echo "# pip install reportlab"
echo "# pip install Sphinx"
echo "# pip install sphinxcontrib-aafig"
echo "# pip install sphinxcontrib-googlemaps"
echo "# pip install sphinxcontrib-plantuml"

echo "#"
