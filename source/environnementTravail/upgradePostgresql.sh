#!/bin/sh

# ubuntu
export VERSION_POSTGRESQL="10"
export VERSION_POSTGIS="2.4"

# debian
export VERSION_POSTGRESQL="10"
export VERSION_POSTGIS="2.4"

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
echo "#"
echo "#"
echo "# Nous détaillons ici la Mise à Niveau du serveur postgresql"
echo "# et de l'extension postgis"

echo "# Make a backup. Make sure that your database is not being updated."
echo "pg_dumpall > outputfile"
      # Make a backup. Make sure that your database is not being updated.
      #pg_dumpall > outputfile

echo "# On liste les cluster"
echo "pg_lsclusters"
      # On liste les cluster
      pg_lsclusters

echo "# Arret de postgresql"
echo "sudo service postgresql stop"
      # Arret de postgresql
      sudo service postgresql stop
echo "#"
echo "# Installation Postgresql 10"
echo "sudo aptitude -y install postgresql-$VERSION_POSTGRESQL"
      sudo aptitude -y install postgresql-$VERSION_POSTGRESQL
echo "sudo apt-get install -y postgresql-$VERSION_POSTGRESQL"
      sudo apt-get install -y postgresql-$VERSION_POSTGRESQL
echo "#"
echo "# Installation de postgis"
echo "sudo aptitude -y install postgresql-$VERSION_POSTGRESQL-postgis-$VERSION_POSTGIS"
      sudo aptitude -y install postgresql-$VERSION_POSTGRESQL-postgis-$VERSION_POSTGIS
echo "sudo apt-get install -y postgresql-$VERSION_POSTGRESQL-postgis-$VERSION_POSTGIS"
      sudo apt-get install -y postgresql-$VERSION_POSTGRESQL-postgis-$VERSION_POSTGIS
echo "#"
echo "# Installation de postgis-scripts"
echo "sudo aptitude -y install postgresql-$VERSION_POSTGRESQL-postgis-$VERSION_POSTGIS-scripts"
      sudo aptitude -y install postgresql-$VERSION_POSTGRESQL-postgis-$VERSION_POSTGIS-scripts
echo "sudo apt-get install -y postgresql-$VERSION_POSTGRESQL-postgis-$VERSION_POSTGIS-scripts"
      sudo apt-get install -y postgresql-$VERSION_POSTGRESQL-postgis-$VERSION_POSTGIS-scripts
echo "#"
echo "# Installation de pgrouting"
echo "sudo aptitude -y install postgresql-$VERSION_POSTGRESQL-pgrouting"
      sudo aptitude -y install postgresql-$VERSION_POSTGRESQL-pgrouting
echo "sudo apt-get install -y postgresql-$VERSION_POSTGRESQL-pgrouting"
      sudo apt-get install -y postgresql-$VERSION_POSTGRESQL-pgrouting
echo "#"
echo "# Installation de pgrouting-scripts"
echo "sudo aptitude -y install postgresql-$VERSION_POSTGRESQL-pgrouting-scripts"
      sudo aptitude -y install postgresql-$VERSION_POSTGRESQL-pgrouting-scripts
echo "sudo apt-get install -y postgresql-$VERSION_POSTGRESQL-pgrouting-scripts"
      sudo apt-get install -y postgresql-$VERSION_POSTGRESQL-pgrouting-scripts
echo "#"
echo "# Installation de foreign data wrapper for OGR"
echo "sudo aptitude -y install postgresql-$VERSION_POSTGRESQL-ogr-fdw"
      sudo aptitude -y install postgresql-$VERSION_POSTGRESQL-ogr-fdw
echo "sudo apt-get -y install postgresql-$VERSION_POSTGRESQL-ogr-fdw"
      sudo apt-get -y install postgresql-$VERSION_POSTGRESQL-ogr-fdw
echo "#"
echo "# Installation de python3-multicorn"
echo "sudo aptitude -y install postgresql-$VERSION_POSTGRESQL-python3-multicorn"
      sudo aptitude -y install postgresql-$VERSION_POSTGRESQL-python3-multicorn
echo "sudo apt-get -y install postgresql-$VERSION_POSTGRESQL-python3-multicorn"
      sudo apt-get -y install postgresql-$VERSION_POSTGRESQL-python3-multicorn
echo "#"
echo "# Installation de plpython3"
echo "sudo aptitude -y install postgresql-plpython3-$VERSION_POSTGRESQL"
      sudo aptitude -y install postgresql-plpython3-$VERSION_POSTGRESQL
echo "sudo apt-get -y install postgresql-plpython3-$VERSION_POSTGRESQL"
      sudo apt-get -y install postgresql-plpython3-$VERSION_POSTGRESQL
echo "#"
echo "# Installation du paquet contrib (extensions)"
#echo "sudo aptitude -y install postgresql-contrib-$VERSION_POSTGRESQL"
#      sudo aptitude -y install postgresql-contrib-$VERSION_POSTGRESQL
#echo "sudo apt-get -y install postgresql-contrib-$VERSION_POSTGRESQL"
#      sudo apt-get -y install postgresql-contrib-$VERSION_POSTGRESQL
echo "sudo aptitude -y install postgresql-contrib"
      sudo aptitude -y install postgresql-contrib
echo "sudo apt-get -y install postgresql-contrib"
      sudo apt-get -y install postgresql-contrib
echo "#"
echo "# Installation des paquets nécessaires pour l'installation de pgcli"
echo "sudo apt-get install libpq-dev"
      sudo apt-get -y install libpq-dev
echo "#"
echo "# Installation du paquet python3-psycopg2"
echo "sudo aptitude -y install python3-psycopg2"
      sudo aptitude -y install python3-psycopg2
echo "sudo apt-get -y install python3-psycopg2"
      sudo apt-get -y install python3-psycopg2
echo "#"
echo "# Stop Postgres before we make any changes"
echo "sudo service postgresql stop"
      # Stop Postgres before we make any changes
      sudo service postgresql stop
echo "#"
echo "#"
echo "# Rename or remove ????"
echo "# On renomme d'abord, on supprimera après...."
echo "#"
echo "# rename :"
echo "# Rename the new Postgres version's default cluster"
echo "# When Postgres packages install, they create a default cluster for you to use."
echo "# There already is a cluster main for 10 (since this is created by default on package installation)."
echo "# This is done so that a fresh installation works out of the box without the need to create a cluster first,"
echo "# but of course it clashes when you try to upgrade 9.6/main when 10/main also exists."
echo "# We need to rename the new postgres cluster so that when we upgrade the old cluster the names won't conflict."
echo "sudo pg_renamecluster 10 main main_vide_10"
      # Rename the new Postgres version's default cluster
      # When Postgres packages install, they create a default cluster for you to use.
      # We need to rename the new postgres cluster so that when we upgrade the old cluster the names won't conflict.
      sudo pg_renamecluster 10 main main_vide_10
echo "#"

echo "#"
echo "#"
echo "# On liste les cluster"
echo "pg_lsclusters"
      # On liste les cluster
      pg_lsclusters
echo "#"
echo "# Upgrade the old cluster to the latest version"
echo "sudo pg_upgradecluster 9.6 main"
      # Upgrade the old cluster to the latest version
      sudo pg_upgradecluster 9.6 main
echo "#"
echo "# On liste les cluster"
echo "pg_lsclusters"
      # On liste les cluster
      pg_lsclusters
echo "#"
echo "# remove :"
echo "# remove du cluster 9.6"
echo "sudo pg_dropcluster 9.6 main --stop"
      sudo pg_dropcluster 9.6 main --stop
echo "# There already is a cluster main for 10 (since this is created by default on package installation)."
echo "# This is done so that a fresh installation works out of the box without the need to create a cluster first,"
echo "# but of course it clashes when you try to upgrade 9.6/main when 10/main also exists."
echo "# The recommended procedure is to remove the 10 cluster with pg_dropcluster and then upgrade with pg_upgradecluster."
echo "sudo pg_dropcluster 10 main_vide_10 --stop"
      sudo pg_dropcluster 10 main_vide_10 --stop
