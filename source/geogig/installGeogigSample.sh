#!/bin/sh

echo "#"
echo "# insertion de données dans une base postgis"
echo "#"
psql -h localhost -d gis -U fred -f ~/Documents/technic/source/geogit/create_sample.sql
psql -h localhost -d gis -U fred -f ~/Documents/technic/source/geogit/insert_sample.sql
psql -h localhost -d gis -U fred -f ~/Documents/technic/source/geogit/update_sample.sql
psql -h localhost -d gis -U fred -f ~/Documents/technic/source/geogit/update2_sample.sql

