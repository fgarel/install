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
echo "# 1. Installation du paquet"
echo "#"
apt-get install postgresql-9.4-postgis-2.1
echo "#"
echo "# 2. Creation d'un utilisateur et d'une base de données"
echo "#"
echo "# Création de l'utilisateur"
echo "# 2 méthodes (a tester) :"
echo "#   - non interactif"
echo "#     sudo -u postgres createuser gisuser"
echo "#   - interactif"
echo "#     sudo su"
echo "#     su postgres"
echo "#     createuser -S \\"
echo "#                -d \\"
echo "#                -r \\"
echo "#                -P \\"
echo "#                -e fred \\"
echo "#     (Mie3Bhoutan)"
echo "#"
echo "# Création de la base de données"
echo '#'
echo "# sudo -u postgres createdb --encoding=UTF8 \\"
echo "#                           --owner=gisuser \\"
echo "#                           gis"
echo "#"
echo "# 3. Activation de postgis"
echo "# sudo -u postgres psql --username=postgres \\"
echo "#                       --dbname=gis \\"
echo "#                       -c \"CREATE EXTENSION postgis;\""
echo "#"
echo "# sudo -u postgres psql --username=postgres \\"
echo "#                       --dbname=gis \\"
echo "#                       -c \"CREATE EXTENSION postgis_topology;\""
echo "#"
echo "# sudo -u postgres psql --username=postgres \\"
echo "#                       --dbname=gis \\"
echo "#                       -c \"CREATE EXTENSION fuzzystrmatch;\""
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
