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
echo "# Aussi, pour la suite, nous allons faire en sorte que l'utilisateur actuel"
echo "# soit dans le groupe staff et www-data"
echo "# "
echo "# Le repertoire /home/fred/Documents/osmosis sera propriété de www-data"
echo "#"
echo "# Pour que l'utilisateur ait le droit d'écrire dans le repertoire osmosis"
echo "# il faut ajouter l'utilisateur dans le groupe www-data"
echo "#"
echo "sudo usermod -a -G www-data `whoami`"
      sudo usermod -a -G www-data `whoami`
echo "#"
echo "# Suppression du repertoire existant"
echo "sudo rm -rf ~/Documents/osmosis"
      sudo rm -rf ~/Documents/osmosis
echo "#"
echo "#"
echo "mkdir ~/Documents/osmosis"
      mkdir ~/Documents/osmosis
echo "sudo chown www-data:www-data ~/Documents/osmosis"
      sudo chown www-data:www-data ~/Documents/osmosis
echo "#"
echo "# On va lancer osmosis avec l'option read-replication-interval-init"
echo "# cela va configurer le dépot"
echo "# http://wiki.openstreetmap.org/wiki/Osmosis/Detailed_Usage_0.44#--read-replication-interval-init_.28--rrii.29"
echo "#"
echo "# Attention il faut se mettre dans le repertoire osmosis pour lancer la commande ...."
echo "#"
echo "cd ~/Documents/osmosis"
      cd ~/Documents/osmosis
echo "#"
#echo "sudo -u www-data osmosis --rrii workingDirectory=/home/fred/Documents/osmosis"
#      sudo -u www-data osmosis --rrii workingDirectory=/home/fred/Documents/osmosis
echo "sudo -u www-data osmosis --rrii workingDirectory=."
      sudo -u www-data osmosis --rrii workingDirectory=.
echo "#"
echo "cd ~/Documents/install/source/environnementTravail"
      cd ~/Documents/install/source/environnementTravail
#echo "osmosis --rrii workingDirectory=/home/fred/Documents/osmosis"
#      osmosis --rrii workingDirectory=/home/fred/Documents/osmosis
echo "#"
echo "# Modification du fichier configuration.txt"
echo "# de façon a ce que osmosis ne telecharge que les mises à jour de"
echo "# la region poitou-charentes"
echo "#"
#echo "# sudo -u www-data sed -i -e 's|baseUrl=.*|baseUrl=http://download.geofabrik.de/europe/france/poitou-charentes-updates/|' ~/Documents/osmosis/configuration.txt"
#sudo -u www-data sed -i -e 's|baseUrl=.*|baseUrl=http://download.geofabrik.de/europe/france/poitou-charentes-updates/|' ~/Documents/osmosis/configuration.txt
echo "sudo sed -i -e 's|baseUrl=.*|baseUrl=http://download.geofabrik.de/europe/france/poitou-charentes-updates/|' ~/Documents/osmosis/configuration.txt"
      sudo sed -i -e 's|baseUrl=.*|baseUrl=http://download.geofabrik.de/europe/france/poitou-charentes-updates/|' ~/Documents/osmosis/configuration.txt
echo "#"

echo "#"
