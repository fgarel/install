#!/bin/sh

echo "#"
echo "# Insertion de données dans une base postgis"
echo "#"
#psql -h localhost -d rtge_VLR -U VLR -f ~/Documents/technic/source/geogit/create_sample.sql
psql -h localhost -d origine -U Fred -f ~/Documents/technic/source/geogit/create_sample.sql
psql -h localhost -d origine -U Fred -f ~/Documents/technic/source/geogit/insert_sample.sql
psql -h localhost -d origine -U Fred -f ~/Documents/technic/source/geogit/update_sample.sql
#psql -h localhost -d rtge_VLR -U VLR -f ~/Documents/technic/source/geogit/update2_sample.sql

