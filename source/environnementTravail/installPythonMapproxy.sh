#!/bin/sh



# 6ème Partie - suite : Création d'un environnement python
###############################################
# Création d'un environnement python
echo "# 6ème Partie - suite : Création d'un environnement python"
echo "###############################################"
echo "#"
echo "# Pew peut maintenant être utilisé :"
echo "#"
echo "# Nous allons créer un environnement virtuel pour mapproxy"
echo "# MapProxy is an open source proxy for geospatial data."
echo "# It caches, accelerates and transforms data from existing "
echo "# map services and serves any desktop or web GIS client."
echo "# http://mapproxy.org/"
echo "#"
echo "# Pré-requis avant d'installer mapprproxy"
echo "# L'installation de mapproxy ne se passe pas très bien si nous n'avons pas"
echo "# au préalable, installé quelques paquets"
echo "#"
echo "# Ces paquets sont :"
echo "#"
echo "# sudo apt-get install libjpeg-dev"
echo "#"
sudo apt-get install libjpeg-dev
echo "#"
echo "# Installation de l'environnement virtuel"
echo "#"
echo "#   pew list_pythons -a | grep 3.4.3"
pew list_pythons -a | grep 3.4.3
echo "#"
echo "#   pew install 3.4.3"
pew install 3.4.3
echo "#"
echo '#   pew new -p $(pythonz locate 3.4.3) mapproxy'
pew new -p $(pythonz locate 3.4.3) mapproxy
echo ""
echo "# Dans l'environnement virtuel, l'installation continue avec"
echo "#"
echo "# pip install mapproxy"
echo "#"
echo ""

