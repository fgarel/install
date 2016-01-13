#!/bin/sh

echo "#"
echo "# Transfert des données (fichiers gml)"
echo "# stockés dans le repetoire ~/Documents/technic/source/geogit/pcrs/"
echo "# vers la base postgis rtge_VLR"
echo "#"

list=$(ls -1 ~/Documents/technic/source/geogit/pcrs/*.gml)
for file in $list ;
do
    echo $file ;
    ogr2ogr \
        -overwrite \
        -skipfailures \
        -f PostgreSQL pg:'host=localhost dbname=rtge_VLR user=VLR password=VLR' \
        $file ;
done


