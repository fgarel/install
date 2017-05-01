#!/bin/sh


datahost='localhost'
database='osm'
dataschema='apidb'
datauser='osmuser'

echo "# osmPrepareQgis.sh"
echo "###############################################"
echo "#"
echo "#"

datahost='localhost'
database='osm'
dataschema='osm2pgsql'
datauser='osmuser'

echo '# Faire en sorte de travailler dans le schema osm2pgsql'
echo "#"
echo 'psql \'
echo '     --host=$datahost \'
echo '     --dbname=$database \'
echo '     --username=$datauser \'
echo '     -c "ALTER DATABASE $database SET search_path TO $dataschema, public;"'
      psql \
           --host=$datahost \
           --dbname=$database \
           --username=$datauser \
           -c "ALTER DATABASE $database SET search_path TO $dataschema, public;"

echo "#"
echo "# On fabrique des vues limitées à des emprises geographiques"
echo 'psql \'
echo '     --host=$datahost \'
echo '     --dbname=$database \'
echo '     --username=$datauser \'
echo '     --no-password \'
#echo '     -f ~fred/Documents/install/source/environnementTravail/sql/prepareQgis_1_base_osm.sql'
echo '     -f ~fred/Documents/install/source/environnementTravail/sql/prepareQgis_2_base_osm.sql'
#echo '     -f analyse_base_osm.sql'
      psql \
           --host=$datahost \
           --dbname=$database \
           --username=$datauser \
           --no-password \
           -f ~fred/Documents/install/source/environnementTravail/sql/prepareQgis_2_base_osm.sql
#           -f ~fred/Documents/install/source/environnementTravail/sql/prepareQgis_2_base_osm.sql
echo "#"
