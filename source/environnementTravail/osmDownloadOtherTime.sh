#!/bin/sh



# 8ème Partie - Téléchargement, les fois suivantes, des données de la région poitou-charentes
###############################################
# Téléchargement, les fois suivantes, des données de la région poitou-charentes
# Creation d'un repertoire de travail pour OSM
echo "# 8ème Partie - Téléchargemnt, les fois suivantes, des données de la région poitou-charentes"
echo "###############################################"
echo "#"
echo "# On va telecharger les mises a jour des données de la région poitou-charentes"
echo "#"
echo "# Modification du fichier configuration.txt"
echo "# de façon a ce que osmosis ne telecharge que les mises à jour de"
echo "# la region poitou-charentes"
echo "#"
echo "# sudo -u www-data \\"
echo "                   sed -i -e 's|baseUrl=.*|baseUrl=http://download.geofabrik.de/europe/france/poitou-charentes-updates/|' ~/Documents/osmosis/configuration.txt"
#sudo -u www-data \
#                 sed -i -e 's|baseUrl=.*|baseUrl=http://download.geofabrik.de/europe/france/poitou-charentes-updates/|' ~/Documents/osmosis/configuration.txt
#sudo -u www-data \
                 sed -i -e 's|baseUrl=.*|baseUrl=http://download.geofabrik.de/europe/france/poitou-charentes-updates/|' ~/Documents/osmosis/configuration.txt
echo "#"
echo "#"
echo "# sudo -u www-data osmosis --read-replication-interval \\"
echo "#                          workingDirectory=/home/fred/Documents/osmosis \\"
echo "#                          --simplify-change \\"
echo "#                          --write-xml-change \\"
echo "#                          change.osc.gz"
#sudo -u www-data osmosis --read-replication-interval \
#                         workingDirectory=/home/fred/Documents/osmosis \
#                         --simplify-change \
#                         --write-xml-change \
#                         change.osc
#sudo -u www-data \
                 osmosis --read-replication-interval \
                         workingDirectory=/home/fred/Documents/osmosis \
                         --simplify-change \
                         --write-xml-change \
                         change.osc
echo "#"
echo "#"
echo "#"

echo "#"
