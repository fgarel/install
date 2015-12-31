#!/bin/sh



# 8ème Partie - Téléchargement, la première fois, des données de la région poitou-charentes
###############################################
# Téléchargement, la première fois, des données de la région poitou-charentes
# Creation d'un repertoire de travail pour OSM
echo "# 8ème Partie - Téléchargemnt, la première fois, des données de la région poitou-charentes"
echo "###############################################"
echo "#"
echo "# On va telecharger les données de la région poitou-charentes"
echo "#"
echo "# Modification du fichier configuration.txt"
echo "# de façon a ce que osmosis ne telecharge que les mises à jour de"
echo "# la region poitou-charentes"
echo "#"
echo "# sudo -u www-data sed -i -e 's|baseUrl=.*|baseUrl=http://download.geofabrik.de/europe/france/poitou-charentes-updates/|' ~/Documents/osmosis/configuration.txt"
sudo -u www-data sed -i -e 's|baseUrl=.*|baseUrl=http://download.geofabrik.de/europe/france/poitou-charentes-updates/|' ~/Documents/osmosis/configuration.txt
echo "#"
echo "#"
echo "#"
echo "# wget http://download.geofabrik.de/europe/france/poitou-charentes-latest.osm.pbf"
sudo -u www-data wget -P /home/fred/Documents/osmosis/ http://download.geofabrik.de/europe/france/poitou-charentes-latest.osm.pbf
echo "#"
echo "#"
echo "# Modification du fichier configuration.txt"
echo "# de façon a ce que osmosis ne telecharge que les mises à jour de"
echo "# la region poitou-charentes"
echo "#"
echo "# sudo -u www-data sed -i -e 's|baseUrl=.*|baseUrl=http://download.geofabrik.de/europe/france/poitou-charentes-updates/|' ~/Documents/osmosis/configuration.txt"
sudo -u www-data sed -i -e 's|baseUrl=.*|baseUrl=http://download.geofabrik.de/europe/france/poitou-charentes-updates/|' ~/Documents/osmosis/configuration.txt
echo "#"

echo "#"
