#!/bin/sh



# 8ème Partie - Creation d'un repertoire de travail pour OSM
###############################################
# Creation d'un repertoire de travail pour OSM
echo "# 8ème Partie - Creation d'un repertoire de travail pour OSM"
echo "###############################################"
echo "#"
echo "# On va créer un dossier pour osmosis"
echo "# dont on va donner la propriété à l'utilisateur www-data,"
echo "# car c'est lui qui va faire les mises à jour."
echo "#"
echo "mkdir ~/Documents/osmosis"
      mkdir ~/Documents/osmosis
#echo "# sudo chown www-data:www-data ~/Documents/osmosis"
#sudo chown www-data:www-data ~/Documents/osmosis
echo "#"
echo "# On va lancer osmosis avec l'option read-replication-interval-init"
echo "# cela va configurer le dépot"
echo "# http://wiki.openstreetmap.org/wiki/Osmosis/Detailed_Usage_0.44#--read-replication-interval-init_.28--rrii.29"
#echo "# sudo -u www-data osmosis --rrii workingDirectory=/home/fred/Documents/osmosis"
#sudo -u www-data osmosis --rrii workingDirectory=/home/fred/Documents/osmosis
echo "#"
echo "osmosis --rrii workingDirectory=/home/fred/Documents/osmosis"
      osmosis --rrii workingDirectory=/home/fred/Documents/osmosis
echo "#"
echo "# Modification du fichier configuration.txt"
echo "# de façon a ce que osmosis ne telecharge que les mises à jour de"
echo "# la region poitou-charentes"
echo "#"
#echo "# sudo -u www-data sed -i -e 's|baseUrl=.*|baseUrl=http://download.geofabrik.de/europe/france/poitou-charentes-updates/|' ~/Documents/osmosis/configuration.txt"
#sudo -u www-data sed -i -e 's|baseUrl=.*|baseUrl=http://download.geofabrik.de/europe/france/poitou-charentes-updates/|' ~/Documents/osmosis/configuration.txt
echo "sed -i -e 's|baseUrl=.*|baseUrl=http://download.geofabrik.de/europe/france/poitou-charentes-updates/|' ~/Documents/osmosis/configuration.txt"
      sed -i -e 's|baseUrl=.*|baseUrl=http://download.geofabrik.de/europe/france/poitou-charentes-updates/|' ~/Documents/osmosis/configuration.txt
echo "#"

echo "#"
