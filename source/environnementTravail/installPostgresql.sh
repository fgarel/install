#!/bin/sh



# 7ème Partie : Installation de postgresql et postgis
#####################################################
# Installation de postgresql et postgis
echo "# 7ème Partie : Installation de postgresql et postgis"
echo "#####################################################"
echo "#"
echo "# Doc sur la configuration"
echo "# http://wiki.openstreetmap.org/wiki/PostGIS/Installation"
echo "#"
echo "# 0. Suppression des bases et des utilisateurs"
echo "#"
echo "# sudo -u postgres psql -c \"DROP DATABASE cadastre;\""
sudo -u postgres psql -c "DROP DATABASE cadastre;"
echo "# sudo -u postgres psql -c \"DROP DATABASE rtge;\""
sudo -u postgres psql -c "DROP DATABASE rtge;"
echo "# sudo -u postgres psql -c \"DROP DATABASE pcrs;\""
sudo -u postgres psql -c "DROP DATABASE pcrs;"
echo "# sudo -u postgres psql -c \"DROP DATABASE graphe;\""
sudo -u postgres psql -c "DROP DATABASE graphe;"
echo "# sudo -u postgres psql -c \"DROP DATABASE osm;\""
sudo -u postgres psql -c "DROP DATABASE osm;"
echo "#"
echo "# sudo -u postgres psql -c \"DROP ROLE gisuser;\""
sudo -u postgres psql -c "DROP ROLE gisuser;"
echo "# sudo -u postgres psql -c \"DROP ROLE \"www-data\";\""
sudo -u postgres psql -c "DROP ROLE \"www-data\";"
echo "#"
echo "#"
echo "#"
echo "#"
echo "#"
echo "# 1. Installation des paquets postgresql et postgis"
echo "# -------------------------------------------------"
echo "#"
echo "# sudo apt-get install postgresql-9.4-postgis-2.1"
sudo apt-get install postgresql-9.4-postgis-2.1
echo "#"
echo "# 2. Creation des utilisateurs et des bases de données"
echo "# ----------------------------------------------------"
echo "#"
echo "# Pour la creation des utilisateurs, 2 méthodes (a tester) :"
echo "#   - non interactif"
echo "#     sudo -u postgres createuser gisuser"
echo "#   - interactif"
echo "#     sudo su"
echo "#     su postgres"
echo "#     createuser -S \\"
echo "#                -d \\"
echo "#                -r \\"
echo "#                -P \\"
echo "#                -e gisuser"
echo "#"
echo "# Création de l'utilisateur : gisuser"
echo "#"
echo "#     sudo -u postgres createuser -S \\"
echo "#                                 -d \\"
echo "#                                 -r \\"
echo "#                                 -P \\"
echo "#                                 -e  gisuser"
echo "#     (Mie3Bhoutan)"
sudo -u postgres createuser \
                            gisuser
echo "#"
echo "# Modification du mot de passe et des droits"
echo "#"
echo "# sudo -u postgres psql -c \"ALTER ROLE gisuser WITH PASSWORD 'Mie3Bhoutan';\""
echo "# sudo -u postgres psql -c \"ALTER ROLE gisuser NOSUPERUSER NOCREATEDB NOCREATEROLE;\""
sudo -u postgres psql -c "ALTER ROLE gisuser WITH PASSWORD 'Mie3Bhoutan';"
sudo -u postgres psql -c "ALTER ROLE gisuser NOSUPERUSER NOCREATEDB NOCREATEROLE;"
echo "#"
echo "# Création de l'utilisateur : www-data"
echo "#"
echo "#     sudo -u postgres createuser -S \\"
echo "#                                 -d \\"
echo "#                                 -r \\"
echo "#                                 -P \\"
echo "#                                 -e  www-data"
echo "#     (www-data)"
sudo -u postgres createuser \
                            www-data
echo "#"
echo "# Modification du mot de passe et des droits"
echo "#"
echo "# sudo -u postgres psql -c \"ALTER ROLE \"www-data\" WITH PASSWORD 'www-data';\""
echo "# sudo -u postgres psql -c \"ALTER ROLE \"www-data\" NOSUPERUSER NOCREATEDB NOCREATEROLE;\""
sudo -u postgres psql -c "ALTER ROLE \"www-data\" WITH PASSWORD 'www-data';"
sudo -u postgres psql -c "ALTER ROLE \"www-data\" NOSUPERUSER NOCREATEDB NOCREATEROLE;"
echo "#"
echo "# Création de la base de données : cadastre"
echo '#'
echo "# sudo -u postgres createdb --encoding=UTF8 \\"
echo "#                           --owner=gisuser \\"
echo "#                           cadastre"
sudo -u postgres createdb --encoding=UTF8 \
                          --owner=gisuser \
                          cadastre
echo "#"
echo "# Création de la base de données : rtge"
echo '#'
echo "# sudo -u postgres createdb --encoding=UTF8 \\"
echo "#                           --owner=gisuser \\"
echo "#                           rtge"
sudo -u postgres createdb --encoding=UTF8 \
                          --owner=gisuser \
                          rtge
echo "#"
echo "# Création de la base de données : pcrs"
echo '#'
echo "# sudo -u postgres createdb --encoding=UTF8 \\"
echo "#                           --owner=gisuser \\"
echo "#                           pcrs"
sudo -u postgres createdb --encoding=UTF8 \
                          --owner=gisuser \
                          pcrs
echo "#"
echo "# Création de la base de données : graphe"
echo '#'
echo "# sudo -u postgres createdb --encoding=UTF8 \\"
echo "#                           --owner=gisuser \\"
echo "#                           graphe"
sudo -u postgres createdb --encoding=UTF8 \
                          --owner=gisuser \
                          graphe
echo "#"
echo "# Création de la base de données : osm"
echo '#'
echo "# sudo -u postgres createdb --encoding=UTF8 \\"
echo "#                           --owner=www-data \\"
echo "#                           osm"
sudo -u postgres createdb --encoding=UTF8 \
                          --owner=www-data \
                          osm
echo "#"
echo "# 3. Activation d'adminpack et de postgis"
echo "# ---------------------------------------"
echo "#"
echo "# On installe d'abord l'extension adminpack sur la base postgres"
echo "#"
echo "# sudo -u postgres psql --username=postgres \\"
echo "#                       --dbname=postgres \\"
echo "#                       -c \"CREATE EXTENSION adminpack;\""
sudo -u postgres psql --username=postgres \
                      --dbname=postgres \
                      -c "CREATE EXTENSION adminpack;"
echo "#"
echo "#"
echo "#"
echo "#"
echo "# sudo -u postgres psql --username=postgres \\"
echo "#                       --dbname=cadastre \\"
echo "#                       -c \"CREATE EXTENSION adminpack;\""
sudo -u postgres psql --username=postgres \
                      --dbname=cadastre \
                      -c "CREATE EXTENSION adminpack;"
echo "#"
echo "# sudo -u postgres psql --username=postgres \\"
echo "#                       --dbname=cadastre \\"
echo "#                       -c \"CREATE EXTENSION postgis;\""
sudo -u postgres psql --username=postgres \
                      --dbname=cadastre \
                      -c "CREATE EXTENSION postgis;"
echo "#"
echo "# sudo -u postgres psql --username=postgres \\"
echo "#                       --dbname=cadastre \\"
echo "#                       -c \"CREATE EXTENSION postgis_topology;\""
sudo -u postgres psql --username=postgres \
                      --dbname=cadastre \
                      -c "CREATE EXTENSION postgis_topology;"
echo "#"
echo "# sudo -u postgres psql --username=postgres \\"
echo "#                       --dbname=cadastre \\"
echo "#                       -c \"CREATE EXTENSION fuzzystrmatch;\""
sudo -u postgres psql --username=postgres \
                      --dbname=cadastre \
                      -c "CREATE EXTENSION fuzzystrmatch;"
echo "#"
echo "#"
echo "#"
echo "# sudo -u postgres psql --username=postgres \\"
echo "#                       --dbname=rtge \\"
echo "#                       -c \"CREATE EXTENSION adminpack;\""
sudo -u postgres psql --username=postgres \
                      --dbname=rtge \
                      -c "CREATE EXTENSION adminpack;"
echo "#"
echo "# sudo -u postgres psql --username=postgres \\"
echo "#                       --dbname=rtge \\"
echo "#                       -c \"CREATE EXTENSION postgis;\""
sudo -u postgres psql --username=postgres \
                      --dbname=rtge \
                      -c "CREATE EXTENSION postgis;"
echo "#"
echo "# sudo -u postgres psql --username=postgres \\"
echo "#                       --dbname=rtge \\"
echo "#                       -c \"CREATE EXTENSION postgis_topology;\""
sudo -u postgres psql --username=postgres \
                      --dbname=rtge \
                      -c "CREATE EXTENSION postgis_topology;"
echo "#"
echo "# sudo -u postgres psql --username=postgres \\"
echo "#                       --dbname=rtge \\"
echo "#                       -c \"CREATE EXTENSION fuzzystrmatch;\""
sudo -u postgres psql --username=postgres \
                      --dbname=rtge \
                      -c "CREATE EXTENSION fuzzystrmatch;"
echo "#"
echo "#"
echo "#"
echo "# sudo -u postgres psql --username=postgres \\"
echo "#                       --dbname=pcrs \\"
echo "#                       -c \"CREATE EXTENSION adminpack;\""
sudo -u postgres psql --username=postgres \
                      --dbname=pcrs \
                      -c "CREATE EXTENSION adminpack;"
echo "#"
echo "# sudo -u postgres psql --username=postgres \\"
echo "#                       --dbname=pcrs \\"
echo "#                       -c \"CREATE EXTENSION postgis;\""
sudo -u postgres psql --username=postgres \
                      --dbname=pcrs \
                      -c "CREATE EXTENSION postgis;"
echo "#"
echo "# sudo -u postgres psql --username=postgres \\"
echo "#                       --dbname=pcrs \\"
echo "#                       -c \"CREATE EXTENSION postgis_topology;\""
sudo -u postgres psql --username=postgres \
                      --dbname=pcrs \
                      -c "CREATE EXTENSION postgis_topology;"
echo "#"
echo "# sudo -u postgres psql --username=postgres \\"
echo "#                       --dbname=pcrs \\"
echo "#                       -c \"CREATE EXTENSION fuzzystrmatch;\""
sudo -u postgres psql --username=postgres \
                      --dbname=pcrs \
                      -c "CREATE EXTENSION fuzzystrmatch;"
echo "#"
echo "#"
echo "#"
echo "# sudo -u postgres psql --username=postgres \\"
echo "#                       --dbname=graphe \\"
echo "#                       -c \"CREATE EXTENSION adminpack;\""
sudo -u postgres psql --username=postgres \
                      --dbname=graphe \
                      -c "CREATE EXTENSION adminpack;"
echo "#"
echo "# sudo -u postgres psql --username=postgres \\"
echo "#                       --dbname=graphe \\"
echo "#                       -c \"CREATE EXTENSION postgis;\""
sudo -u postgres psql --username=postgres \
                      --dbname=graphe \
                      -c "CREATE EXTENSION postgis;"
echo "#"
echo "# sudo -u postgres psql --username=postgres \\"
echo "#                       --dbname=graphe \\"
echo "#                       -c \"CREATE EXTENSION postgis_topology;\""
sudo -u postgres psql --username=postgres \
                      --dbname=graphe \
                      -c "CREATE EXTENSION postgis_topology;"
echo "#"
echo "# sudo -u postgres psql --username=postgres \\"
echo "#                       --dbname=graphe \\"
echo "#                       -c \"CREATE EXTENSION fuzzystrmatch;\""
sudo -u postgres psql --username=postgres \
                      --dbname=graphe \
                      -c "CREATE EXTENSION fuzzystrmatch;"
echo "#"
echo "#"
echo "#"
echo "# sudo -u postgres psql --username=postgres \\"
echo "#                       --dbname=osm \\"
echo "#                       -c \"CREATE EXTENSION adminpack;\""
sudo -u postgres psql --username=postgres \
                      --dbname=osm \
                      -c "CREATE EXTENSION adminpack;"
echo "#"
echo "# sudo -u postgres psql --username=postgres \\"
echo "#                       --dbname=osm \\"
echo "#                       -c \"CREATE EXTENSION postgis;\""
sudo -u postgres psql --username=postgres \
                      --dbname=osm \
                      -c "CREATE EXTENSION postgis;"
echo "#"
echo "# sudo -u postgres psql --username=postgres \\"
echo "#                       --dbname=osm \\"
echo "#                       -c \"CREATE EXTENSION postgis_topology;\""
sudo -u postgres psql --username=postgres \
                      --dbname=osm \
                      -c "CREATE EXTENSION postgis_topology;"
echo "#"
echo "# sudo -u postgres psql --username=postgres \\"
echo "#                       --dbname=osm \\"
echo "#                       -c \"CREATE EXTENSION fuzzystrmatch;\""
sudo -u postgres psql --username=postgres \
                      --dbname=osm \
                      -c "CREATE EXTENSION fuzzystrmatch;"
echo "#"
echo ""

# 8ème Partie : Installation de mapnik
###############################################
# Installation de mapnik
echo "# 8ème Partie : Installation de mapnik"
echo "###############################################"
echo ""

# 9ème Partie : Installation de stetl
###############################################
# Installation de stetl
echo "# 9ème Partie : Installation de stetl"
echo "###############################################"
echo "#"
echo "# Docs :"
echo "# http://www.stetl.org/"
echo "# http://github.com/jusb4/stetl"
