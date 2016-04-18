#!/bin/sh



echo "# osmTest.sh"
echo "###############################################"
echo "#"
echo "#"
echo "# Affichage de la date"
echo "cat /home/fred/Documents/osmosis/state.txt"
      cat /home/fred/Documents/osmosis/state.txt
echo "#"
echo "#"
echo "# On interroge la base"
echo 'psql \'
echo '     --host=localhost \'
echo '     --dbname=osm \'
echo '     --username=Fred \'
echo '     --no-password \'
echo '     -f ~fred/Documents/install/source/environnementTravail/analyse_base_osm.sql'
#echo '     -f analyse_base_osm.sql'
      psql \
           --host=localhost \
           --dbname=osm \
           --username=Fred \
           --no-password \
           -f ~fred/Documents/install/source/environnementTravail/analyse_base_osm.sql
echo "#"
