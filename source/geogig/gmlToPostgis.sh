#!/bin/sh

echo "#"
echo "# Transfert des données (fichiers gml)"
echo "# stockés dans le repetoire ~/Documents/technic/source/geogig/pcrs/"
echo "# vers la base postgis origine"
echo "#"

list=$(ls -1 ~/Documents/technic/source/geogig/pcrs/*.gml)
for file in $list ;
do
    echo $file ;
    ogr2ogr \
        -overwrite \
        -skipfailures \
        -f PostgreSQL pg:'host=localhost dbname=origine user=Fred password=Fred' \
        $file ;
done


