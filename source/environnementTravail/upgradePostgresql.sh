#!/bin/sh

# ubuntu
export VERSION_POSTGRESQL_OLD="9.6"
export VERSION_POSTGRESQL_OLD="10"
export VERSION_POSTGIS_OLD="2.3"
export VERSION_POSTGIS_NEW="2.4"

# debian
export VERSION_POSTGRESQL_OLD="9.6"
export VERSION_POSTGRESQL_NEW="10"
export VERSION_POSTGIS_OLD="2.3"
export VERSION_POSTGIS_NEW="2.4"

# 7ème Partie : Installation de postgresql et postgis
#####################################################
# Mise à Niveau de postgresql et postgis
echo "# 7ème Partie : Mise à Niveau de postgresql et postgis"
echo "#####################################################"
echo "#"
echo "# Doc sur la Mise à Niveau"
echo "# http://blog.dbsqware.com/postgresql-procedure-dupgrade-avec-pg_upgrade/"
echo "# https://docs.postgresql.fr/10/upgrading.html"
echo "# https://docs.postgresql.fr/10/pgupgrade.html"
echo "# Pour avoir une version recente de postgresql, il est possible de prendre"
echo "# un nouveau depot"
echo "# la doc est ici"
echo "# https://www.postgresql.org/download/linux/debian/"
echo "#"
echo "# Nouveau depot"
echo "sudo cp pgdg.list /etc/apt/sources.list.d/pgdg.list"
      sudo cp pgdg.list /etc/apt/sources.list.d/pgdg.list
echo "#"
echo "wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -"
      wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
echo "#"
echo "sudo aptitude update"
      sudo aptitude update
echo "sudo apt-get update"
      sudo apt-get update
echo "#"
echo "sudo cp pgdg.pref /etc/apt/preferences.d/pgdg.pref"
      sudo cp pgdg.pref /etc/apt/preferences.d/pgdg.pref
echo "#"
echo "#"
echo "# Nous détaillons ici la Mise à Niveau du serveur postgresql"
echo "# et de l'extension postgis"
echo "#"
echo "# Make a backup. Make sure that your database is not being updated."
echo "#pg_dumpall > outputfile"
      #pg_dumpall > outputfile
echo "#"
echo "# On liste les cluster"
echo "pg_lsclusters"
      pg_lsclusters
echo "#"
echo "# Arret de postgresql"
echo "sudo service postgresql stop"
      sudo service postgresql stop
echo "#"
echo "# Installation Postgresql new"
echo "sudo aptitude -y install postgresql-$VERSION_POSTGRESQL_NEW"
      sudo aptitude -y install postgresql-$VERSION_POSTGRESQL_NEW
echo "sudo apt-get install -y postgresql-$VERSION_POSTGRESQL_NEW"
      sudo apt-get install -y postgresql-$VERSION_POSTGRESQL_NEW
echo "#"
echo "# Installation de postgis"
echo "sudo aptitude -y install postgresql-$VERSION_POSTGRESQL_NEW-postgis-$VERSION_POSTGIS_NEW"
      sudo aptitude -y install postgresql-$VERSION_POSTGRESQL_NEW-postgis-$VERSION_POSTGIS_NEW
echo "sudo apt-get install -y postgresql-$VERSION_POSTGRESQL_NEW-postgis-$VERSION_POSTGIS_NEW"
      sudo apt-get install -y postgresql-$VERSION_POSTGRESQL_NEW-postgis-$VERSION_POSTGIS_NEW
echo "#"
echo "# Installation de postgis-scripts"
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
echo "sudo apt-get -y install postgresql-$VERSION_POSTGRESQL_NEW-ogr-fdw"
      sudo apt-get -y install postgresql-$VERSION_POSTGRESQL_NEW-ogr-fdw
echo "#"
echo "# Installation de python3-multicorn"
echo "sudo aptitude -y install postgresql-$VERSION_POSTGRESQL_NEW-python3-multicorn"
      sudo aptitude -y install postgresql-$VERSION_POSTGRESQL_NEW-python3-multicorn
echo "sudo apt-get -y install postgresql-$VERSION_POSTGRESQL_NEW-python3-multicorn"
      sudo apt-get -y install postgresql-$VERSION_POSTGRESQL_NEW-python3-multicorn
echo "#"
echo "# Installation de plpython3"
echo "sudo aptitude -y install postgresql-plpython3-$VERSION_POSTGRESQL_NEW"
      sudo aptitude -y install postgresql-plpython3-$VERSION_POSTGRESQL_NEW
echo "sudo apt-get -y install postgresql-plpython3-$VERSION_POSTGRESQL_NEW"
      sudo apt-get -y install postgresql-plpython3-$VERSION_POSTGRESQL_NEW
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
echo "#"
echo "#"
echo "# Upgrade de postgresql"
echo "# -------------------------------------------------------"
echo "#"
echo "# Stop Postgres before we make any changes"
echo "sudo service postgresql stop"
      sudo service postgresql stop
echo "#"
echo "# On liste les cluster"
echo "pg_lsclusters"
      pg_lsclusters
echo "#"
echo "# Rename or remove ????"
echo "# On renomme d'abord, on supprimera après...."
echo "#"
echo "# rename :"
echo "# Rename the new Postgres version's default cluster"
echo "# We need to rename the new postgres cluster so that when we upgrade the old cluster the names won't conflict."
echo "# When Postgres packages install, they create a default cluster for you to use."
echo "# There already is a cluster main for $VERSION_POSTGRESQL_NEW (since this is created by default on package installation)."
echo "# This is done so that a fresh installation works out of the box without the need to create a cluster first,"
echo "# but of course it clashes when you try to upgrade 9.6/main when 10/main also exists."
echo "# We need to rename the new postgres cluster so that when we upgrade the old cluster the names won't conflict."
echo "#"
echo "sudo pg_renamecluster $VERSION_POSTGIS_NEW main main_vide_$VERSION_POSTGRESQL_NEW"
      sudo pg_renamecluster $VERSION_POSTGRESQL_NEW main main_vide_$VERSION_POSTGRESQL_NEW
echo "#"
echo "# On liste les cluster"
echo "pg_lsclusters"
      pg_lsclusters
echo "#"
echo "# Upgrade the old cluster to the latest version"
echo "sudo pg_upgradecluster $VERSION_POSTGRESQL_OLD main"
      sudo pg_upgradecluster $VERSION_POSTGRESQL_OLD main
echo "#"
echo "# On liste les cluster"
echo "pg_lsclusters"
      pg_lsclusters
echo "#"
echo "# remove :"
echo "#"
echo "# There already is a cluster main for $VERSION_POSTGRESQL_NEW (since this is created by default on package installation)."
echo "# This is done so that a fresh installation works out of the box without the need to create a cluster first,"
echo "# but of course it clashes when you try to upgrade $VERSION_POSTGRESQL_OLD/main when $VERSION_POSTGRESQL_NEW/main also exists."
echo "# The recommended procedure is to remove the $VERSION_POSTGRESQL_NEW cluster with pg_dropcluster and then upgrade with pg_upgradecluster."
echo "#"
echo "# remove du cluster main_vide_$VERSION_POSTGRESQL_NEW"
echo "sudo pg_dropcluster $VERSION_POSTGRESQL_NEW main_vide_$VERSION_POSTGRESQL_NEW --stop"
      sudo pg_dropcluster $VERSION_POSTGRESQL_NEW main_vide_$VERSION_POSTGRESQL_NEW --stop
echo "#"
echo "# On liste les cluster"
echo "pg_lsclusters"
      pg_lsclusters
echo "#"
echo "# remove du cluster $VERSION_POSTGRESQL_OLD : Attention DANGER"
echo "sudo pg_dropcluster $VERSION_POSTGRESQL_OLD main --stop"
      sudo pg_dropcluster $VERSION_POSTGRESQL_OLD main --stop
echo "#"
echo "# On liste les cluster"
echo "pg_lsclusters"
      pg_lsclusters
echo "#"
echo "#"
echo "# Configuration de postgresql"
echo "# -------------------------------------------------------"
echo "#"
echo "# Modification de /etc/postgresql/$VERSION_POSTGRESQL_NEW/main/postgresql.conf"
echo "#"
echo "sudo \\"
echo '     sed -i -e "s|#listen_adresses = 'localhost'|listen_adresses = '*'|" \'
echo "     /etc/postgresql/$VERSION_POSTGRESQL_NEW/main/postgresql.conf"
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
echo "sudo \\"
echo "     sed -i -r -e '/host[ ]+all[ ]+all[ ]+127.0.0.1/a host    all             all             10.2.10.0/24            md5' \\"
echo "     /etc/postgresql/$VERSION_POSTGRESQL_NEW/main/pg_hba.conf"
      sudo \
           sed -i -r -e '/host[ ]+all[ ]+all[ ]+127.0.0.1/a host    all             all             10.2.10.0/24            md5' \
           /etc/postgresql/$VERSION_POSTGRESQL_NEW/main/pg_hba.conf
      sudo \
           sed -i -r -e '/host[ ]+all[ ]+all[ ]+127.0.0.1/a host    pcrs            fred            217.112.51.3/32         md5' \
           /etc/postgresql/$VERSION_POSTGRESQL_NEW/main/pg_hba.conf
echo "#"
echo "# Start Postgres"
echo "sudo service postgresql status"
      sudo service postgresql status
echo "sudo service postgresql start"
      sudo service postgresql start
echo "sudo service postgresql status"
      sudo service postgresql status
echo "sudo service postgresql reload"
      sudo service postgresql reload
echo "sudo service postgresql status"
      sudo service postgresql status
echo "#"
echo "#"
echo "# Suppression des installations précédentes de postgresql"
echo "# -------------------------------------------------------"
echo "#"
echo "sudo aptitude -y remove postgresql-$VERSION_POSTGRESQL_OLD"
      sudo aptitude -y remove postgresql-$VERSION_POSTGRESQL_OLD
echo "sudo apt-get -y remove postgresql-$VERSION_POSTGRESQL_OLD"
      sudo apt-get -y remove postgresql-$VERSION_POSTGRESQL_OLD
echo "#"
echo "sudo aptitude search \\~c"
      sudo aptitude search \~c
echo "sudo apt-cache search \\~c"
      sudo apt-cache search \~c
echo "#"
echo "sudo dpkg -P postgresql-$VERSION_POSTGRESQL_OLD"
      sudo dpkg -P postgresql-$VERSION_POSTGRESQL_OLD
echo "#"
echo "sudo aptitude -y purge \\~c"
      sudo aptitude -y purge \~c
echo "sudo apt-get -y --purge autoremove"
      sudo apt-get -y --purge autoremove
echo "sudo apt -y autoremove"
      sudo apt -y autoremove
echo "#"
echo "# vi ~/.pgpass"
echo "#"
echo "localhost:5432:*:fred:fred"
echo "pg.cdalr.fr:5432:*:fred:fred"
echo "#"
echo "# chmod 600 ~/.pgpass"

