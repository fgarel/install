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
dataschema='osm2pgsql'
datauser='fred'
datapass='fgpass'

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


#echo "# On installe d'abord l'extension hstore sur la base $database"
#echo "#"
#echo "sudo -u postgres \\"
#echo "     psql --username=postgres \\"
#echo "          --dbname=$database \\"
#echo "          -c \"CREATE EXTENSION hstore;\""
#      sudo -u postgres \
#           psql --username=postgres \
#                --dbname=$database \
#                -c "CREATE EXTENSION hstore;"
#echo "#"


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


#datauser='www-data'

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
echo '          -d $database \'
#echo '          --style ~/Documents/install/source/openstreetmap-carto-vector-tiles/openstreetmap-carto.style \'
echo '          --style openstreetmap-carto.style \'
echo '          poitou-charentes-latest.osm.pbf'
#      sudo -u www-data \
      osm2pgsql \
                --bbox -1.261,46.116,-1.062,46.202 \
                --number-processes 4 \
                --latlong \
                --keep-coastlines \
                --hstore \
                --slim \
                -C 3000 \
                --cache-strategy sparse \
                -d $database \
                -U $datauser \
                --style /usr/share/osm2pgsql/default.style \
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
