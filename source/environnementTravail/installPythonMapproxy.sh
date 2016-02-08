#!/bin/sh



# 7ème Partie - suite : Création d'un environnement python
###############################################
# Création d'un environnement python
echo "# 7ème Partie - suite : Création d'un environnement python"
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
echo "# http://forum.openstreetmap.fr/viewtopic.php?f=3&t=829&start=0"
echo "#"
echo "# Pré-requis avant d'installer mapproxy"
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
echo "#   Nous allons démarrer l'environnement virtuel,"
echo "#   Dans cet environnement, l'installation doit continuer avec"
echo "#"
echo "#   --------------------"
echo "#   pip install mapproxy"
echo "#   pip install pgcli"
echo "#   pip install pgcli --upgrade"
echo '#'
echo '# Installation de mapnik'
echo '# http://mapnik.org/pages/downloads.html'
echo '#'
echo '# git clone https://github.com/mapnik/mapnik.git'
echo '# cd mapnik'
echo '# git checkout v3.0.9'
echo '# git submodule update --init'
echo '# configure && make && make test'
echo '#'
echo "#   --------------------"
echo "#"
echo "#   Démarrage de l'environnement virtuel"
echo "#"
echo '#   pew new -p $(pythonz locate 3.4.3) mapproxy'
pew new -p $(pythonz locate 3.4.3) mapproxy
echo "#"
echo ""

