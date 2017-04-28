#!/bin/sh



# 8ème Partie - Import, la première fois, des données de la région poitou-charentes de pbf vers postgis
###############################################
# Import, la première fois, des données de la région poitou-charentes de pbf vers postgis
# Creation d'un repertoire de travail pour OSM
echo "# 8ème Partie - Import, la première fois, des données de la région poitou-charentes de pbf vers postgis"
echo "###############################################"
echo "#"
echo "# La doc est ici"
echo "# http://wiki.openstreetmap.org/wiki/Osmosis/Detailed_Usage_0.44#PostGIS_Tasks_.28Snapshot_Schema.29"
echo "# http://wiki.openstreetmap.org/wiki/Osmosis/PostGIS_Setup"
echo "#"

datahost='localhost'
database='osm'
datauser='osmuser'
datapass='osmuser'

echo "# Astuce préalable :"
echo "#"
echo "# Pour éviter d'avoir à taper sans arret le mot de passe"
echo "# il est possible d'editer le fichier ~/.pgpass"
echo "# --------------------------- #"
echo "vi ~/.pgpass"
echo "# --------------------------- #"
echo "$datahost:5432:*:$datauser:$datauser"
echo "# --------------------------- #"
echo "chmod 600 ~/.pgpass"
echo "# --------------------------- #"
echo "#"


echo "# On installe d'abord l'extension hstore sur la base $database"
echo "#"
echo "sudo -u postgres \\"
echo "     psql --username=postgres \\"
echo '          --dbname=$database \'
echo "          -c \"CREATE EXTENSION hstore;\""
      sudo -u postgres \
           psql --username=postgres \
                --dbname=$database \
                -c "CREATE EXTENSION hstore;"
echo "#"

echo "# Dans la base $database, on peut avoir plusieurs schemas"
echo "#"
echo '# Faire en sorte de travailler dans le schema apidb'
echo "#"
echo 'psql \'
echo '     --host=$datahost \'
echo '     --dbname=$database \'
echo '     --username=$datauser \'
echo '     -c "ALTER DATABASE $database SET search_path TO apidb, public;"'
      psql \
           --host=$datahost \
           --dbname=$database \
           --username=$datauser \
           -c "ALTER DATABASE $database SET search_path TO apidb, public;"

echo "#"
echo "# Puis on execute quelques scripts pour créer des tables dans la base"
echo "#"
echo '# Préparation du schema : ajout de tables'
echo "# Des scripts sont prévus pour ça"
echo "sudo gunzip /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6.sql.gz"
      sudo gunzip /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6.sql.gz
echo "#"
echo "#"
echo 'psql \'
echo '     --host=$datahost \'
echo '     --dbname=$database \'
echo '     --username=$datauser \'
echo '     -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6.sql'
      psql \
           --host=$datahost \
           --dbname=$database \
           --username=$datauser \
           -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6.sql
echo "#"
echo 'psql \'
echo '     --host=$datahost \'
echo '     --dbname=$database \'
echo '     --username=$datauser \'
echo '     -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6_action.sql'
      psql \
           --host=$datahost \
           --dbname=$database \
           --username=$datauser \
           -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6_action.sql
echo "#"
echo 'psql \'
echo '     --host=$datahost \'
echo '     --dbname=$database \'
echo '     --username=$datauser \'
echo '     -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6_bbox.sql'
      psql  \
           --host=$datahost \
           --dbname=$database \
           --username=$datauser \
           -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6_bbox.sql
echo "#"
echo 'psql \'
echo '     --host=$datahost \'
echo '     --dbname=$database \'
echo '     --username=$datauser \'
echo '     -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6_linestring.sql'
      psql  \
           --host=$datahost \
           --dbname=$database \
           --username=$datauser \
           -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6_linestring.sql
echo "#"


echo "# ----------------------------------------------------------"
echo "# On va importer les données (de la région poitou-charentes)"
echo "# grace à osmosis"
echo "# http://wiki.openstreetmap.org/wiki/Osmosis/Detailed_Usage_0.45"
echo "# ----------------------------------------------------------"

echo '# Faire en sorte de travailler dans le schema apidb'
echo "#"
echo 'psql \'
echo '     --host=$datahost \'
echo '     --dbname=$database \'
echo '     --username=$datauser \'
echo '     -c "ALTER DATABASE $database SET search_path TO apidb, public;"'
      psql \
           --host=$datahost \
           --dbname=$database \
           --username=$datauser \
           -c "ALTER DATABASE $database SET search_path TO apidb, public;"

#echo "osmosis --read-pbf /home/fred/Documents/osmosis/poitou-charentes-latest.osm.pbf \\"
#echo '        --write-pgsql host="localhost" database="osm" postgresSchema="apidb" user="osmuser" password="osmuser"'
#osmosis --read-pbf /home/fred/Documents/osmosis/poitou-charentes-latest.osm.pbf \
#        --write-pgsql host="localhost" database="osm" postgresSchema="apidb" user="osmuser" password="osmuser"
echo "osmosis --read-pbf /home/fred/Documents/osmosis/poitou-charentes-latest.osm.pbf \\"
echo '        --write-pgsql host="$datahost" database="$database" user="$datauser" password="$datapass"'
      osmosis --read-pbf /home/fred/Documents/osmosis/poitou-charentes-latest.osm.pbf \
              --write-pgsql host="$datahost" database="$database" user="$datauser" password="$datapass"
echo "#"
echo "# Nota :"
echo "#"
echo "# En cas de problème d'import (pb de memoire, d'espace disque trop faible, ....)"
echo "# une piste possible, c'est d'augmenter l'espace disque..."
echo "# https://help.openstreetmap.org/questions/26900/import-error-could-not-extend-file"
echo "# Il faut au moins 7 Go, et meme 8 Go d'espace libre...."
echo "#"
echo "# recherche de fichier volumineux"
echo "# find . -size +100000"
echo "# rm ~/.pgadmin/pgadmin3.log"
echo "#"
echo "# tablespace et postgresql"
echo "# https://www.postgresql.org/docs/current/static/manage-ag-tablespaces.html"
echo "#"
echo "# http://wiki.postgresql.org/wiki/Tuning_Your_PostgreSQL_Server"
echo "#"
echo "# Correction d'erreur de type relation 1663/18421/31582"
echo "# http://blog.endpoint.com/2012/02/postgres-block-error-xyz.html"

echo "# ----------------------------------------------------------"
echo "# On va importer les données (de la région poitou-charentes)"
echo "# grace à osm2pgsql"
echo "# http://wiki.openstreetmap.org/wiki/Osm2pgsql"
echo "# ----------------------------------------------------------"

echo '# Faire en sorte de travailler dans le schema osm2pgsql'
echo "#"
echo 'psql \'
echo '     --host=$datahost \'
echo '     --dbname=$database \'
echo '     --username=$datauser \'
echo '     -c "ALTER DATABASE $database SET search_path TO osm2pgsql, public;"'
      psql \
           --host=$datahost \
           --dbname=$database \
           --username=$datauser \
           -c "ALTER DATABASE $database SET search_path TO osm2pgsql, public;"
echo "#"

echo "#"
echo "# Attention il faut se mettre dans le repertoire osmosis pour lancer la commande ...."
echo "#"
echo "cd ~/Documents/osmosis"
      cd ~/Documents/osmosis
echo "#"
echo 'sudo -u www-data \'
echo 'osm2pgsql \'
echo '          --slim \'
echo '          -C 512 \'
echo '          --number-processes 2 \'
echo '          --cache-strategy sparse \'
echo '          -d $database \'
echo '          --style ~/Documents/install/source/openstreetmap-carto/openstreetmap-carto.style \'
echo '          poitou-charentes-latest.osm.pbf'
      sudo -u www-data \
      osm2pgsql \
                --slim \
                -C 512 \
                --number-processes 2 \
                --cache-strategy sparse \
                -d $database \
                --style ~/Documents/install/source/openstreetmap-carto/openstreetmap-carto.style \
                poitou-charentes-latest.osm.pbf
echo "#"
echo "cd ~/Documents/install/source/environnementTravail"
      cd ~/Documents/install/source/environnementTravail
echo "#"
#echo "# ----------------------------------------------------------"
#echo "# On va importer les données (de la région poitou-charentes)"
#echo "# grace à osm2postgresql"
#echo "# http://wiki.openstreetmap.org/wiki/Osm2postgresql"
#echo "# ----------------------------------------------------------"

#echo '# Faire en sorte de travailler dans le schema osm2pgsql'
#echo "#"
#echo 'psql \'
#echo '     --host=$datahost \'
#echo '     --dbname=$database \'
#echo '     --username=$datauser \'
#echo '     -c "ALTER DATABASE $database SET search_path TO osm2postgresql, public;"'
#      psql \
#           --host=$datahost \
#           --dbname=$database \
#           --username=$datauser \
#           -c "ALTER DATABASE $database SET search_path TO osm2postgresql, public;"
#echo "#"
#echo './osm2postgresql_05rc4.sh \'
#echo '                          --host=$datahost \'
#echo '                          --dbname=$database \'
#echo '                          --username=$datauser \'
#echo '                          --pbf \'
#echo '                          -f /home/fred/Documents/osmosis/poitou-charentes-latest.osm.pbf'
#      ./osm2postgresql_05rc4.sh \
#                                --host=$datahost \
#                                --dbname=$database \
#                                --username=$datauser \
#                                --pbf \
#                                -f /home/fred/Documents/osmosis/poitou-charentes-latest.osm.pbf


echo ""
echo ""
