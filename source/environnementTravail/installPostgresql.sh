#!/bin/sh

# ubuntu
export VERSION_POSTGRESQL_OLD="10"
export VERSION_POSTGRESQL_OLD="11"
export VERSION_POSTGRESQL_OLD="12"
#export VERSION_POSTGRESQL_NEW="11"
export VERSION_POSTGRESQL_NEW="12"
export VERSION_POSTGRESQL_NEW="11"

export VERSION_POSTGIS_OLD="2.4"
export VERSION_POSTGIS_OLD="2.5"
export VERSION_POSTGIS_OLD="3"
#export VERSION_POSTGIS_NEW="2.5"
export VERSION_POSTGIS_NEW="3"
export VERSION_POSTGIS_NEW="2.5"

# debian
#export VERSION_POSTGRESQL_OLD="9.5"
#export VERSION_POSTGRESQL_NEW="9.6"
#export VERSION_POSTGIS_OLD="2.2"
#export VERSION_POSTGIS_NEW="2.3"

# 7ème Partie : Installation de postgresql et postgis
#####################################################
# Installation de postgresql et postgis
echo "# 7ème Partie : Installation de postgresql et postgis"
echo "#####################################################"
echo "# "
echo "# Pour avoir une version recente de postgresql, il est possible de prendre"
echo "# un nouveau depot"
echo "# la doc est ici"
echo "# https://www.postgresql.org/download/linux/debian/"
echo "#"
echo "#"
echo "# Doc sur la configuration"
echo "# http://wiki.openstreetmap.org/wiki/PostGIS/Installation"
echo "#"
echo "# Nous détaillons ici l'installation du serveur postgresql"
echo "# et de l'extension postgis"
echo "#"
echo "# En ce qui concerne le client, type pgcli,"
echo "# son installation est réalisée via le script installPythonMapproxy"
echo "# car elle se fait grace à pip."
echo "# Cependant, pour que cette installation de pgcli puisse fonctionner,"
echo "# il faut aussi installer quelques dépendances"
echo "#"
echo "# 0. Nouveau depot"
echo "# --------------------------------------------"
echo "#"
echo "# Nouveau depot"
echo "sudo cp -f ./apt/sources.list.d/03_postgresql.list /etc/apt/sources.list.d/03_postgresql.list"
      sudo cp -f ./apt/sources.list.d/03_postgresql.list /etc/apt/sources.list.d/03_postgresql.list
echo "#"
echo "wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -"
      wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
echo "#"
echo "sudo aptitude update"
      sudo aptitude update
echo "sudo apt-get update"
      sudo apt-get update
echo "#"
echo "sudo cp -f ./apt/preferences.d/03_postgresql.pref /etc/apt/preferences.d/03_postgresql.pref"
      sudo cp -f ./apt/preferences.d/03_postgresql.pref /etc/apt/preferences.d/03_postgresql.pref
echo "#"
echo "#"
echo "# 1. Installation des paquets postgresql et postgis"
echo "# -------------------------------------------------"
echo "# ---"
echo "# "
echo "# Installation de postgresql $VERSION_POSTGRESQL_NEW"
echo "sudo aptitude -y install postgresql-$VERSION_POSTGRESQL_NEW"
      sudo aptitude -y install postgresql-$VERSION_POSTGRESQL_NEW
echo "sudo aptitude -y install postgresql-$VERSION_POSTGRESQL_NEW"
      sudo aptitude -y install postgresql-$VERSION_POSTGRESQL_NEW
echo "sudo apt-get install -y postgresql-$VERSION_POSTGRESQL_NEW"
      sudo apt-get install -y postgresql-$VERSION_POSTGRESQL_NEW
echo "sudo apt-get install -y postgresql-$VERSION_POSTGRESQL_NEW"
      sudo apt-get install -y postgresql-$VERSION_POSTGRESQL_NEW
echo "#"
echo "# Installation de postgis $VERSION_POSTGIS_NEW"
echo "sudo aptitude -y install postgresql-$VERSION_POSTGRESQL_NEW-postgis-$VERSION_POSTGIS_NEW"
      sudo aptitude -y install postgresql-$VERSION_POSTGRESQL_NEW-postgis-$VERSION_POSTGIS_NEW
echo "sudo apt-get install -y postgresql-$VERSION_POSTGRESQL_NEW-postgis-$VERSION_POSTGIS_NEW"
      sudo apt-get install -y postgresql-$VERSION_POSTGRESQL_NEW-postgis-$VERSION_POSTGIS_NEW
echo "#"
echo "# Installation de postgis-scripts $VERSION_POSTGIS_NEW"
echo "sudo aptitude -y install postgresql-$VERSION_POSTGRESQL_NEW-postgis-$VERSION_POSTGIS_NEW-scripts"
      sudo aptitude -y install postgresql-$VERSION_POSTGRESQL_NEW-postgis-$VERSION_POSTGIS_NEW-scripts
echo "sudo apt-get install -y postgresql-$VERSION_POSTGRESQL_NEW-postgis-$VERSION_POSTGIS_NEW-scripts"
      sudo apt-get install -y postgresql-$VERSION_POSTGRESQL_NEW-postgis-$VERSION_POSTGIS_NEW-scripts
echo "#"
echo "# Installation de pgrouting"
echo "sudo aptitude -y install postgresql-$VERSION_POSTGRESQL_NEW-pgrouting"
      sudo aptitude -y install postgresql-$VERSION_POSTGRESQL_NEW-pgrouting
echo "sudo apt-get install -y postgresql-$VERSION_POSTGRESQL_NEW-pgrouting"
      sudo apt-get install -y postgresql-$VERSION_POSTGRESQL_NEW-pgrouting
echo "#"
echo "# Installation de pgrouting-scripts"
echo "sudo aptitude -y install postgresql-$VERSION_POSTGRESQL_NEW-pgrouting-scripts"
      sudo aptitude -y install postgresql-$VERSION_POSTGRESQL_NEW-pgrouting-scripts
echo "sudo apt-get install -y postgresql-$VERSION_POSTGRESQL_NEW-pgrouting-scripts"
      sudo apt-get install -y postgresql-$VERSION_POSTGRESQL_NEW-pgrouting-scripts
echo "#"
echo "# Installation de foreign data wrapper for OGR"
echo "sudo aptitude -y install postgresql-$VERSION_POSTGRESQL_NEW-ogr-fdw"
      sudo aptitude -y install postgresql-$VERSION_POSTGRESQL_NEW-ogr-fdw
echo "sudo apt-get install -y postgresql-$VERSION_POSTGRESQL_NEW-ogr-fdw"
      sudo apt-get install -y postgresql-$VERSION_POSTGRESQL_NEW-ogr-fdw
echo "#"
echo "# Installation de python3-multicorn"
echo "sudo aptitude -y install postgresql-$VERSION_POSTGRESQL_NEW-python3-multicorn"
      sudo aptitude -y install postgresql-$VERSION_POSTGRESQL_NEW-python3-multicorn
echo "sudo apt-get install -y postgresql-$VERSION_POSTGRESQL_NEW-python3-multicorn"
      sudo apt-get install -y postgresql-$VERSION_POSTGRESQL_NEW-python3-multicorn
echo "#"
echo "# Installation du paquet contrib (extensions)"
#echo "sudo aptitude -y install postgresql-contrib-$VERSION_POSTGRESQL_NEW"
#      sudo aptitude -y install postgresql-contrib-$VERSION_POSTGRESQL_NEW
#echo "sudo apt-get -y install postgresql-contrib-$VERSION_POSTGRESQL_NEW"
#      sudo apt-get -y install postgresql-contrib-$VERSION_POSTGRESQL_NEW
echo "sudo aptitude -y install postgresql-contrib"
      sudo aptitude -y install postgresql-contrib
echo "sudo apt-get -y install postgresql-contrib"
      sudo apt-get -y install postgresql-contrib
echo "#"
echo "# Installation du paquet python3-psycopg2"
echo "sudo aptitude -y install python3-psycopg2"
      sudo aptitude -y install python3-psycopg2
echo "sudo apt-get -y install python3-psycopg2"
      sudo apt-get -y install python3-psycopg2
echo "#"
echo "# Installation des paquets nécessaires pour l'installation de pgcli"
echo "sudo apt-get install libpq-dev"
      sudo apt-get -y install libpq-dev
echo ""
echo "# Configuration de postgresql"
echo "# -------------------------------------------------------"
echo "#"
echo "# Modification de /etc/postgresql/$VERSION_POSTGRESQL_NEW/main/postgresql.conf"
echo "#"
echo "# ---"
echo "sudo \\"
echo '     sed -i -e "s|#listen_adresses = 'localhost'|listen_adresses = '*'|" \'
echo "     /etc/postgresql/$VERSION_POSTGRESQL_NEW/main/postgresql.conf"
echo "# ---"
      sudo \
           sed -i -e "s|#listen_addresses = 'localhost'|listen_addresses = '*'|" \
           /etc/postgresql/$VERSION_POSTGRESQL_NEW/main/postgresql.conf
echo "#"
echo "sudo \\"
echo '     sed -i -e "s|port = 5433|port = 5432|" \'
echo "     /etc/postgresql/$VERSION_POSTGRESQL_NEW/main/postgresql.conf"
      sudo \
           sed -i -e "s|port = 5433|port = 5432|" \
           /etc/postgresql/$VERSION_POSTGRESQL_NEW/main/postgresql.conf
echo "#"
echo "#"
echo "# Modification de /etc/postgresql/$VERSION_POSTGRESQL_NEW/main/pg_hba.conf"
echo "#"
echo "# ---"
echo "sudo \\"
echo "     sed -i -r -e '/host[ ]+all[ ]+all[ ]+127.0.0.1/a host    all             all             10.2.10.0/24            md5' \\"
echo "     /etc/postgresql/$VERSION_POSTGRESQL_NEW/main/pg_hba.conf"
echo "# ---"
      sudo \
           sed -i -r -e '/host[ ]+all[ ]+all[ ]+127.0.0.1/a host    all             all             10.2.10.0/24            md5' \
           /etc/postgresql/$VERSION_POSTGRESQL_NEW/main/pg_hba.conf
      sudo \
           sed -i -r -e '/host[ ]+all[ ]+all[ ]+127.0.0.1/a host    all             fred            217.112.51.3/32         md5' \
           /etc/postgresql/$VERSION_POSTGRESQL_NEW/main/pg_hba.conf
      sudo \
           sed -i -r -e '/host[ ]+all[ ]+all[ ]+127.0.0.1/a host    all             fred            149.202.43.81/32        md5' \
           /etc/postgresql/$VERSION_POSTGRESQL_NEW/main/pg_hba.conf
      sudo \
           sed -i -r -e '/host[ ]+all[ ]+all[ ]+127.0.0.1/a host    all             fred            78.200.3.27/32          md5' \
           /etc/postgresql/$VERSION_POSTGRESQL_NEW/main/pg_hba.conf
echo "#"
echo "# 2. Suppression des installations précedentes"
echo "# --------------------------------------------"
echo "#"
echo "# ---"
echo "sudo aptitude -y remove postgresql-$VERSION_POSTGRESQL_OLD"
      sudo aptitude -y remove postgresql-$VERSION_POSTGRESQL_OLD
echo "sudo apt-get -y remove postgresql-$VERSION_POSTGRESQL_OLD"
      sudo apt-get -y remove postgresql-$VERSION_POSTGRESQL_OLD
echo "# ---"
echo "sudo aptitude search \\~c"
      sudo aptitude search \~c
echo "sudo apt-cache search \\~c"
      sudo apt-cache search \~c
echo "# ---"
echo "sudo dpkg -P postgresql-$VERSION_POSTGRESQL_OLD"
      sudo dpkg -P postgresql-$VERSION_POSTGRESQL_OLD
echo "# ---"
echo "sudo aptitude -y purge \\~c"
      sudo aptitude -y purge \~c
echo "sudo apt-get -y purge"
      sudo apt-get -y purge
echo "sudo apt -y autoremove"
      sudo apt -y autoremove
#echo "#"
echo "# On liste les cluster"
echo "pg_lsclusters"
      pg_lsclusters
echo "#"
echo "# remove du cluster $VERSION_POSTGRESQL_OLD : Attention DANGER"
echo "sudo pg_dropcluster $VERSION_POSTGRESQL_OLD main --stop"
      #sudo pg_dropcluster $VERSION_POSTGRESQL_OLD main --stop
echo "#"
echo "# On liste les cluster"
echo "pg_lsclusters"
      pg_lsclusters
echo "#"
echo "# 3. Suppression / Creation des utilisateurs et des bases de données"
echo "# ------------------------------------------------------------------"
echo "#"
echo "# Cette partie est réalisée via les scripts :"
echo "#  - installPostgresqlGeogigGTReseaux.sh"
echo "#  - installPostgresqlGeogigVLR.sh"
echo "#  - installPostgresqlAutresVLR.sh"

echo "#"
echo "# 5. Redemarrage du serveur"
echo "# ---------------------------------------"
echo "#"
echo "sudo service postgresql restart"
      sudo service postgresql restart
echo "#"
echo "# netstat -lataupen"
      # netstat -lataupen
echo "#"
echo "# vi ~/.pgpass"
echo "#"
echo "#"
echo "localhost:5432:*:fred:fred"
echo "pg.cdalr.fr:5432:*:fred:fred"
echo "#"
echo "# chmod 600 ~/.pgpass"
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
