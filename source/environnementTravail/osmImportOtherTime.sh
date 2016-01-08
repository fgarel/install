#!/bin/sh



# 8ème Partie - Import, les fois suivantes, des données de la région poitou-charentes de pbf vers postgis
###############################################
# Import, les fois suivantes, des données de la région poitou-charentes de pbf vers postgis
# Creation d'un repertoire de travail pour OSM
echo "# 8ème Partie - Import, les fois suivantes, des données de la région poitou-charentes de pbf vers postgis"
echo "###############################################"
echo "#"
echo "#"
echo "# Affichage de l'ancienne date"
echo "cat /home/fred/Documents/osmosis/state.txt"
      cat /home/fred/Documents/osmosis/state.txt
echo "#"
echo "#"
echo "# On va importer les mises a jour des données de la région poitou-charentes"
echo "#"
#echo "osmosis --read-pbf /home/fred/Documents/osmosis/poitou-charentes-latest.osm.pbf \\"
#echo "        --write-pgsql host=\"localhost\" database=\"osm\" user=\"www-data\" password=\"www-data\""
#osmosis --read-pbf /home/fred/Documents/osmosis/poitou-charentes-latest.osm.pbf \
#        --write-pgsql host="localhost" database="osm" user="www-data" password="www-data"
# sudo -u www-data osm2pgsl -a changes.osc.gz -e11-17 -o expired-tiles.txt
echo "#"
echo "osmosis --read-xml-change \\"
echo "        /home/fred/Documents/osmosis/change.osc.gz \\"
#echo "        --simplify-change \\"
echo "        --write-pgsql-change host=\"localhost\" database=\"osm\" user=\"www-data\" password=\"www-data\""
      osmosis --read-xml-change \
              /home/fred/Documents/osmosis/change.osc.gz \
              --write-pgsql-change host=\"localhost\" database=\"osm\" user=\"www-data\" password=\"www-data\"
echo "#"
echo "# Affichage de la nouvelle date"
echo "cat /home/fred/Documents/osmosis/state.txt"
      cat /home/fred/Documents/osmosis/state.txt
echo "#"

echo "#"
