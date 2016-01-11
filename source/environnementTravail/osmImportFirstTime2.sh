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
echo "# On installe d'abord l'extension hstore sur la base osm"
echo "#"
echo "sudo -u postgres \\"
echo "     psql --username=postgres \\"
echo "          --dbname=osm \\"
echo "          -c \"CREATE EXTENSION hstore;\""
      sudo -u postgres \
           psql --username=postgres \
                --dbname=osm \
                -c "CREATE EXTENSION hstore;"
echo "#"
echo "#"
echo "# Puis on execute quelques scripts pour créer des tables dans la base"
echo "#"
echo "# Il est d'abord necessaire de se connecter à la base avant de pouvoir"
echo "# executer des scripts"
echo "#"
echo "# Astuce :"
echo "#"
echo "# Pour éviter d'avoir à taper sans arret le mot de passe"
echo "# il est possible d'editer le fichier ~/.pgpass"
echo "# --------------------------- #"
echo "vi ~/.pgpass"
echo "# --------------------------- #"
echo "localhost:5432:*:Fred:Fred"
echo "# --------------------------- #"
echo "chmod 600 ~/.pgpass"
echo "# --------------------------- #"
echo "#"
echo "sudo gunzip /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6.sql.gz"
      sudo gunzip /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6.sql.gz
echo "#"
echo 'psql \'
echo '     --host=localhost \'
echo '     --dbname=osm \'
echo '     --username=Fred \'
echo '     --no-password \'
echo '     -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6.sql'
#      sudo -u Fred \
      psql \
           --host=localhost \
           --dbname=osm \
           --username=Fred \
           -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6.sql
echo "#"
echo 'psql \'
echo '     --host=localhost \'
echo '     --dbname=osm \'
echo '     --username=Fred \'
echo '     --no-password \'
echo '     -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6_action.sql'
      psql \
           --host=localhost \
           --dbname=osm \
           --username=Fred \
           -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6_action.sql
echo "#"
echo 'psql \'
echo '     --host=localhost \'
echo '     --dbname=osm \'
echo '     --username=Fred \'
echo '     --no-password \'
echo '          -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6_bbox.sql'
      psql \
           --host=localhost \
           --dbname=osm \
           --username=Fred \
           -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6_bbox.sql
echo "#"
echo 'psql \'
echo '     --host=localhost \'
echo '     --dbname=osm \'
echo '     --username=Fred \'
echo '     --no-password \'
echo '     -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6_linestring.sql'
      psql \
           --host=localhost \
           --dbname=osm \
           --username=Fred \
           -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6_linestring.sql
echo "#"
echo "#"
echo "#"
echo "#"
echo "# On va importer les données (de la région poitou-charentes)"
echo "# grace à osmosis"
echo "#"
echo "osmosis --read-pbf /home/fred/Documents/osmosis/poitou-charentes-latest.osm.pbf \\"
echo '        --write-pgsql host=\"localhost\" database=\"osm\" user=\"www-data\" password=\"www-data\"'
      osmosis --read-pbf /home/fred/Documents/osmosis/poitou-charentes-latest.osm.pbf \
              --write-pgsql host="localhost" database="osm" user="Fred" password="Fred"
echo "#"
echo ""
echo ""
