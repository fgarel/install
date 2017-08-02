#!/bin/sh


datahost='localhost'
database='osm'
dataschema='apidb'
datauser='osmuser'
datapass='osmpass'

echo "# osmTest.sh"
echo "###############################################"
echo "#"

echo "# Faire en sorte de travailler dans le schema $dataschema"
echo "#"
echo "psql \\"
echo "     --host=$datahost \\"
echo "     --dbname=$database \\"
echo "     --username=$datauser \\"
echo "     -c \"ALTER DATABASE $database SET search_path TO $dataschema, public;\""
      psql \
           --host=$datahost \
           --dbname=$database \
           --username=$datauser \
           -c "ALTER DATABASE $database SET search_path TO $dataschema, public;"
echo "psql \\"
echo "     --host=$datahost \\"
echo "     --dbname=$database \\"
echo "     --username=$datauser \\"
echo "     -c \"ALTER ROLE $datauser SET search_path TO $dataschema, public;\""
      psql \
           --host=$datahost \
           --dbname=$database \
           --username=$datauser \
           -c "ALTER ROLE $datauser SET search_path TO $dataschema, public;"

echo "#"
echo "# Affichage de la date"
echo "cat /home/fred/Documents/osmosis/state.txt"
      cat /home/fred/Documents/osmosis/state.txt
echo "#"
echo "#"
echo "# On interroge la base"
echo "psql \\"
echo "     --host=$datahost \\"
echo "     --dbname=$database \\"
echo "     --username=$datauser \\"
echo "     --no-password \\"
echo "     -f ~fred/Documents/install/source/osm/sql/analyse_base_osm_schema_apidb.sql"
#echo '     -f analyse_base_osm.sql'
      psql \
           --host=$datahost \
           --dbname=$database \
           --username=$datauser \
           --no-password \
           -f ~fred/Documents/install/source/osm/sql/analyse_base_osm_schema_apidb.sql
echo "#"

dataschema='osm2pgsql'
datauser='www-data'

echo "# Faire en sorte de travailler dans le schema $dataschema"
echo "#"
echo "psql \\"
echo "     --host=$datahost \\"
echo "     --dbname=$database \\"
echo "     --username=$datauser \\"
echo "     -c \"ALTER DATABASE $database SET search_path TO $dataschema, public;\""
      psql \
           --host=$datahost \
           --dbname=$database \
           --username=$datauser \
           -c "ALTER DATABASE $database SET search_path TO $dataschema, public;"

echo "psql \\"
echo "     --host=$datahost \\"
echo "     --dbname=$database \\"
echo "     --username=$datauser \\"
echo "     -c \"ALTER ROLE $datauser SET search_path TO $dataschema, public;\""
      psql \
           --host=$datahost \
           --dbname=$database \
           --username=$datauser \
           -c "ALTER ROLE $datauser SET search_path TO $dataschema, public;"
echo "#"
echo "# Affichage de la date"
echo "cat /home/fred/Documents/osmosis/state.txt"
      cat /home/fred/Documents/osmosis/state.txt
echo "#"
echo "#"
echo "# On interroge la base"
echo "psql \\"
echo "     --host=$datahost \\"
echo "     --dbname=$database \\"
echo "     --username=$datauser \\"
echo "     --no-password \\"
echo "     -f ~fred/Documents/install/source/osm/sql/analyse_base_osm_schema_osm2pgsql.sql"
#echo '     -f analyse_base_osm.sql'
      psql \
           --host=$datahost \
           --dbname=$database \
           --username=$datauser \
           --no-password \
           -f ~fred/Documents/install/source/osm/sql/analyse_base_osm_schema_osm2pgsql.sql
echo "#"
