#!/bin/sh



echo "# OsmImportOtherTime.sh"
echo "###############################################"
#echo "#"
#echo "#"
#echo "# Affichage de l'ancienne date"
#echo "cat /home/fred/Documents/osmosis/state.txt"
#      cat /home/fred/Documents/osmosis/state.txt
echo "#"
echo "# Import du fichier diff \"quotidien\" dans la base"
#echo "#"
#echo "# La version avec l'outil osm2psql au lieu et a la place de osmosis est détaillée ici"
#echo "# sudo -u www-data osm2pgsl -a changes.osc.gz -e11-17 -o expired-tiles.txt"
# sudo -u www-data osm2pgsl -a changes.osc.gz -e11-17 -o expired-tiles.txt
echo "#"
echo "osmosis --read-xml-change \\"
echo "        /home/fred/Documents/osmosis/change.osc.gz \\"
#echo "        --simplify-change \\"
echo "        --write-pgsql-change host=\"localhost\" database=\"osm\" user=\"Fred\" password=\"Fred\""
      osmosis --read-xml-change \
              /home/fred/Documents/osmosis/change.osc.gz \
              --write-pgsql-change host="localhost" database="osm" user="Fred" password="Fred"
echo "#"
echo "# Affichage de la nouvelle date"
echo "cat /home/fred/Documents/osmosis/state.txt"
      cat /home/fred/Documents/osmosis/state.txt
echo "#"
#echo "#"
