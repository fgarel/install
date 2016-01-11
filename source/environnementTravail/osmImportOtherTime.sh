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
#echo "# On interroge la base avant import"
#echo "sudo -u www-data \\"
#echo "     psql --username=www-data \\"
#echo "          --dbname=osm \\"
#echo "          -f analyse_base_osm.sql"
#      sudo -u www-data \
#           psql --username=www-data \
#                --dbname=osm \
#                -f analyse_base_osm.sql
#echo "#"
echo "# On va importer les mises a jour des données"
echo "#"
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
echo "# On interroge la base apres import"
echo 'psql \'
echo '     --host=localhost \'
echo '     --dbname=osm \'
echo '     --username=Fred \'
echo '     --no-password \'
echo '     -f analyse_base_osm.sql'
      psql \
           --host=localhost \
           --dbname=osm \
           --username=Fred \
           --no-password \
           -f analyse_base_osm.sql
echo "#"
