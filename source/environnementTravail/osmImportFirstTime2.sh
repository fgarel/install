#!/bin/sh



# 8ème Partie - Import, la première fois, des données de la région poitou-charentes de pbf vers postgis
###############################################
# Import, la première fois, des données de la région poitou-charentes de pbf vers postgis
# Creation d'un repertoire de travail pour OSM
echo "# 8ème Partie - Import, la première fois, des données de la région poitou-charentes de pbf vers postgis"
echo "###############################################"
echo "#"
echo "# la doc est ici"
echo "# http://wiki.openstreetmap.org/wiki/Osmosis/Detailed_Usage_0.44#PostGIS_Tasks_.28Snapshot_Schema.29"
echo "# http://wiki.openstreetmap.org/wiki/Osmosis/PostGIS_Setup"
echo "#"
echo "# On installe d'abord l'extension hstore sur la base osm"
echo "#"
echo "# sudo -u postgres psql --username=postgres \\"
echo "#                       --dbname=osm \\"
echo "#                       -c \"CREATE EXTENSION hstore;\""
sudo -u postgres psql --username=postgres \
                      --dbname=osm \
                      -c "CREATE EXTENSION hstore;"
echo "#"
echo "# Puis on execute quelques scripts pour créer des tables dans la base"
echo "#"
echo "# sudo gunzip /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6.sql.gz"
sudo gunzip /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6.sql.gz
echo "#"
echo "# sudo -u www-data psql --username=www-data \\"
echo "#                       --dbname=osm \\"
echo "#                       -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6.sql"
sudo -u www-data psql --username=www-data \
                      --dbname=osm \
                      -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6.sql
echo "#"
echo "# sudo -u www-data psql --username=www-data \\"
echo "#                       --dbname=osm \\"
echo "#                       -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6_action.sql"
sudo -u www-data psql --username=www-data \
                      --dbname=osm \
                      -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6_action.sql
echo "#"
echo "# sudo -u www-data psql --username=www-data \\"
echo "#                       --dbname=osm \\"
echo "#                       -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6_bbox.sql"
sudo -u www-data psql --username=www-data \
                      --dbname=osm \
                      -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6_bbox.sql
echo "#"
echo "# sudo -u www-data psql --username=www-data \\"
echo "#                       --dbname=osm \\"
echo "#                       -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6_linestring.sql"
sudo -u www-data psql --username=www-data \
                      --dbname=osm \
                      -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6_linestring.sql
echo "#"
echo "#"
echo "#"
echo "# On va importer les données de la région poitou-charentes"
echo "#"
echo "# osmosis --read-pbf /home/fred/Documents/osmosis/poitou-charentes-latest.osm.pbf \\"
echo "#         --write-pgsql host=\"localhost\" database=\"osm\" user=\"www-data\" password=\"www-data\""
echo "#"
osmosis --read-pbf /home/fred/Documents/osmosis/poitou-charentes-latest.osm.pbf \
        --write-pgsql host="localhost" database="osm" user="www-data" password="www-data"
echo "#"

echo "#"
