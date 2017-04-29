#!/bin/sh



echo "# OsmImportOtherTime.sh"
echo "###############################################"
#echo "#"
#echo "#"
#echo "# Affichage de l'ancienne date"
#echo "cat /home/fred/Documents/osmosis/state.txt"
#      cat /home/fred/Documents/osmosis/state.txt

echo "# ----------------------------------------------------------"
echo '# Import du fichier diff "quotidien" dans la base'
echo "# grace à osmosis"
echo "# http://wiki.openstreetmap.org/wiki/Osmosis/Detailed_Usage_0.45"
echo "# ----------------------------------------------------------"
echo "#"

datahost='localhost'
database='osm'
datauser='osmuser'
datapass='osmuser'


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

echo "#"
echo "osmosis --read-xml-change \\"
echo "        /home/fred/Documents/osmosis/change.osc.gz \\"
echo '        --write-pgsql-change host="$datahost" database="$database" user="$datauser" password="$datapass"'
      osmosis --read-xml-change \
              /home/fred/Documents/osmosis/change.osc.gz \
              --write-pgsql-change host="$datahost" database="$database" user="$datauser" password="$datapass"
echo "#"
#echo "# Affichage de la nouvelle date"
echo "cat /home/fred/Documents/osmosis/state.txt"
      cat /home/fred/Documents/osmosis/state.txt
echo "#"

echo "# ----------------------------------------------------------"
echo '# Import du fichier diff "quotidien" dans la base'
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
echo "# Attention il faut se mettre dans le repertoire osmosis pour lancer la commande ...."
echo "#"
echo "cd ~/Documents/osmosis"
      cd ~/Documents/osmosis
echo "#"
echo 'sudo -u www-data \'
echo 'osm2pgsql \'
echo '          -a \'
echo '          --slim \'
echo '          -C 512 \'
echo '          --number-processes 2 \'
echo '          --cache-strategy sparse \'
echo '          -d $database \'
echo '          --style ~/Documents/install/source/openstreetmap-carto-vector-tiles/openstreetmap-carto.style \'
#echo '          --username $datauser \'
echo '          change.osc.gz \'
echo '          -e11-17 \'
echo '          -o expired-tiles.txt'
      sudo -u www-data \
      osm2pgsql \
                -a \
                --slim \
                -C 512 \
                --number-processes 2 \
                --cache-strategy sparse \
                -d $database \
                --style ~/Documents/install/source/openstreetmap-carto-vector-tiles/openstreetmap-carto.style \
                change.osc.gz \
                -e11-17 \
                -o expired-tiles.txt
echo "#"
echo "cd ~/Documents/install/source/environnementTravail"
      cd ~/Documents/install/source/environnementTravail
echo "#"

#echo "# ----------------------------------------------------------"
#echo '# Import du fichier diff "quotidien" dans la base'
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
echo "#"
