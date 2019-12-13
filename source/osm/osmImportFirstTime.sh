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
dataschema='apidb'
datauser='osmuser'
datapass='osmpass'

echo "# Astuce préalable :"
echo "#"
echo "# Pour éviter d'avoir à taper sans arret le mot de passe"
echo "# il est possible d'editer le fichier ~/.pgpass"
echo "# --------------------------- #"
echo "vi ~/.pgpass"
echo "# --------------------------- #"
echo "$datahost:5432:*:$datauser:$datapass"
echo "# --------------------------- #"
echo "chmod 600 ~/.pgpass"
echo "# --------------------------- #"
echo "#"


echo "# On installe d'abord les extensions hstore et postgis sur la base $database"
echo "#"
echo "# Suppression des extensions : - hstore"
echo "sudo \\"
echo "    -u postgres \\"
echo "    psql \\"
echo "        --host=$datahost \\"
echo "        --dbname=$database \\"
echo "        --username=postgres \\"
echo '        -c "DROP EXTENSION hstore;"'
      sudo \
          -u postgres \
          psql \
              --host=$datahost \
              --dbname=$database \
              --username=postgres \
              -c "DROP EXTENSION hstore;"
echo "# Suppression des extensions : - postgis_topology"
echo "sudo \\"
echo "    -u postgres \\"
echo "    psql \\"
echo "        --host=$datahost \\"
echo "        --dbname=$database \\"
echo "        --username=postgres \\"
echo '        -c "DROP EXTENSION postgis_topology CASCADE;"'
      sudo \
          -u postgres \
          psql \
              --host=$datahost \
              --dbname=$database \
              --username=postgres \
              -c "DROP EXTENSION postgis_topology CASCADE;"
echo "# Suppression des extensions : - postgis"
echo "sudo \\"
echo "    -u postgres \\"
echo "    psql \\"
echo "        --host=$datahost \\"
echo "        --dbname=$database \\"
echo "        --username=postgres \\"
echo '        -c "DROP EXTENSION postgis CASCADE;"'
      sudo \
          -u postgres \
          psql \
              --host=$datahost \
              --dbname=$database \
              --username=postgres \
              -c "DROP EXTENSION postgis CASCADE;"
echo "#"
echo "# Creation des extensions : - hstore"
echo "sudo \\"
echo "    -u postgres \\"
echo "    psql \\"
echo "        --host=$datahost \\"
echo "        --dbname=$database \\"
echo "        --username=postgres \\"
echo '        -c "CREATE EXTENSION if not exists hstore;"'
      sudo \
          -u postgres \
          psql \
              --host=$datahost \
              --dbname=$database \
              --username=postgres \
              -c "CREATE EXTENSION if not exists hstore;"
echo "# Création des extensions : - postgis"
echo "sudo \\"
echo "    -u postgres \\"
echo "    psql \\"
echo "        --host=$datahost \\"
echo "        --dbname=$database \\"
echo "        --username=postgres \\"
echo '        -c "CREATE EXTENSION if not exists postgis;"'
      sudo \
          -u postgres \
          psql \
              --host=$datahost \
              --dbname=$database \
              --username=postgres \
              -c "CREATE EXTENSION if not exists postgis;"
echo "# Création des extensions : - postgis_topology"
echo "sudo \\"
echo "    -u postgres \\"
echo "    psql \\"
echo "        --host=$datahost \\"
echo "        --dbname=$database \\"
echo "        --username=postgres \\"
echo '        -c "CREATE EXTENSION if not exists postgis_topology;"'
      sudo \
          -u postgres \
          psql \
              --host=$datahost \
              --dbname=$database \
              --username=postgres \
              -c "CREATE EXTENSION if not exists postgis_topology;"


echo "# Dans la base $database, on peut avoir plusieurs schemas"
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
echo "     -c \"ALTER ROLE \\\"$datauser\\\" SET search_path TO $dataschema, public;\""
      psql \
           --host=$datahost \
           --dbname=$database \
           --username=$datauser \
           -c "ALTER ROLE \"$datauser\" SET search_path TO $dataschema, public;"

echo "#"
echo "# Puis on execute quelques scripts pour créer des tables dans la base"
echo "#"
echo '# Préparation du schema : ajout de tables'
echo "# Des scripts sont prévus pour ça"
echo "sudo gunzip /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6.sql.gz"
      sudo gunzip /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6.sql.gz
echo "#"
echo "#"

echo "#"
echo "# Suppression de quelques vues (nodes_vlr, ways_vlr, nodes_cda, ways_cda)"
echo "#"
echo "psql \\"
echo "     --host=$datahost \\"
echo "     --dbname=$database \\"
echo "     --username=$datauser \\"
echo '     -c "drop view if exists nodes_vlr;"'
      psql \
           --host=$datahost \
           --dbname=$database \
           --username=$datauser \
           -c "drop view if exists nodes_vlr;"
echo "psql \\"
echo "     --host=$datahost \\"
echo "     --dbname=$database \\"
echo "     --username=$datauser \\"
echo '     -c "drop view if exists ways_vlr;"'
     psql \
          --host=$datahost \
          --dbname=$database \
          --username=$datauser \
          -c "drop view if exists ways_vlr;"
echo "psql \\"
echo "     --host=$datahost \\"
echo "     --dbname=$database \\"
echo "     --username=$datauser \\"
echo '     -c "drop view if exists nodes_cda;"'
      psql \
           --host=$datahost \
           --dbname=$database \
           --username=$datauser \
           -c "drop view if exists nodes_cda;"
echo "psql \\"
echo "     --host=$datahost \\"
echo "     --dbname=$database \\"
echo "     --username=$datauser \\"
echo '     -c "drop view if exists ways_cda;"'
     psql \
          --host=$datahost \
          --dbname=$database \
          --username=$datauser \
          -c "drop view if exists ways_cda;"
echo "#"

# echo "#"
# echo "# Suppression et creation de l'extension hstore"
# echo "#"
# echo "psql \\"
# echo "     --host=$datahost \\"
# echo "     --dbname=$database \\"
# echo "     --username=$datauser \\"
# echo '     -c "DROP EXTENSION hstore;"'
#       psql \
#            --host=$datahost \
#            --dbname=$database \
#            --username=$datauser \
#            -c "DROP EXTENSION hstore;"
# echo "#"
# echo "psql \\"
# echo "     --host=$datahost \\"
# echo "     --dbname=$database \\"
# echo "     --username=$datauser \\"
# echo '     -c "CREATE EXTENSION if not exists hstore;"'
#       psql \
#            --host=$datahost \
#            --dbname=$database \
#            --username=$datauser \
#            -c "CREATE EXTENSION if not exists hstore;"
# echo "psql \\"
# echo "     --host=$datahost \\"
# echo "     --dbname=$database \\"
# echo "     --username=$datauser \\"
# echo '     -c "DROP EXTENSION postgis CASCADE;"'
#      psql \
#           --host=$datahost \
#           --dbname=$database \
#           --username=$datauser \
#           -c "DROP EXTENSION postgis CASCADE;"
# echo "#"
# echo "psql \\"
# echo "     --host=$datahost \\"
# echo "     --dbname=$database \\"
# echo "     --username=$datauser \\"
# echo '     -c "CREATE EXTENSION if not exists postgis;"'
#      psql \
#           --host=$datahost \
#           --dbname=$database \
#           --username=$datauser \
#           -c "CREATE EXTENSION if not exists postgis;"
# echo "#"
# echo "#"
# echo "#"


echo "# Execution de script pour le modele de données"
echo "#"
echo "psql \\"
echo "     --host=$datahost \\"
echo "     --dbname=$database \\"
echo "     --username=$datauser \\"
echo '     -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6.sql'
      psql \
           --host=$datahost \
           --dbname=$database \
           --username=$datauser \
           -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6.sql
echo "#"
echo "psql \\"
echo "     --host=$datahost \\"
echo "     --dbname=$database \\"
echo "     --username=$datauser \\"
echo '     -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6_action.sql'
      psql \
           --host=$datahost \
           --dbname=$database \
           --username=$datauser \
           -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6_action.sql
echo "#"
echo "psql \\"
echo "     --host=$datahost \\"
echo "     --dbname=$database \\"
echo "     --username=$datauser \\"
echo '     -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6_bbox.sql'
      psql  \
           --host=$datahost \
           --dbname=$database \
           --username=$datauser \
           -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6_bbox.sql
echo "#"
echo "psql \\"
echo "     --host=$datahost \\"
echo "     --dbname=$database \\"
echo "     --username=$datauser \\"
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

dataschema='apidb'
datauser='osmuser'

echo "# Dans la base $database, on peut avoir plusieurs schemas"
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
echo "     -c \"ALTER ROLE \\\"$datauser\\\" SET search_path TO $dataschema, public;\""
      psql \
           --host=$datahost \
           --dbname=$database \
           --username=$datauser \
           -c "ALTER ROLE \"$datauser\" SET search_path TO $dataschema, public;"

echo "osmosis --read-pbf /home/fred/Documents/osmosis/poitou-charentes-latest.osm.pbf \\"
echo "        --write-pgsql host=\"$datahost\" database=\"$database\" user=\"$datauser\" password=\"$datapass\""
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

dataschema='osm2pgsql'
datauser='fred'

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
echo "     -c \"ALTER ROLE \\\"$datauser\\\" SET search_path TO $dataschema, public;\""
      psql \
           --host=$datahost \
           --dbname=$database \
           --username=$datauser \
           -c "ALTER ROLE \"$datauser\" SET search_path TO $dataschema, public;"


datauser='www-data'

echo "#"
echo "# Attention il faut se mettre dans le repertoire osmosis pour lancer la commande ...."
echo "#"
echo "export OLDPWDFG=$(pwd)"
      export OLDPWDFG=$(pwd)
      echo $OLDPWDFG
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
echo "          -d $database \ "
#echo '          --style ~/Documents/install/source/openstreetmap-carto-vector-tiles/openstreetmap-carto.style \'
echo '          --style openstreetmap-carto.style \'
echo '          poitou-charentes-latest.osm.pbf'
      sudo -u www-data \
      osm2pgsql \
                --slim \
                -C 512 \
                --number-processes 2 \
                --cache-strategy sparse \
                -d $database \
                --style openstreetmap-carto.style \
                poitou-charentes-latest.osm.pbf
echo "#"
#echo "cd ~/Documents/install/source/osm"
#      cd ~/Documents/install/source/osm
echo "cd $OLDPWDFG"
      cd $OLDPWDFG
echo "pwd"
      pwd
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
