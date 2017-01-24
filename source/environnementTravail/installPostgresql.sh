#!/bin/sh

# ubuntu
export VERSION_POSTGRESQL="9.6"
export VERSION_POSTGIS="2.3"

# debian
export VERSION_POSTGRESQL="9.4"
export VERSION_POSTGIS="2.1"

# 7ème Partie : Installation de postgresql et postgis
#####################################################
# Installation de postgresql et postgis
echo "# 7ème Partie : Installation de postgresql et postgis"
echo "#####################################################"
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
echo "#"
#echo "# 1. Suppression des installations précedentes"
#echo "# --------------------------------------------"
#echo "#"
#echo "# ---"
#echo "# sudo aptitude remove postgresql-9.4"
#echo "# ---"
#      # sudo aptitude -y remove postgresql-9.4
#echo "# ---"
#echo "# sudo aptitude search \\~c"
#echo "# ---"
#      # sudo aptitude search \~c
#echo "# ---"
#echo "# sudo dpkg -P postgresql-9.4"
#echo "# ---"
#      # sudo dpkg -P postgresql-9.4
#echo "# ---"
#echo "# sudo aptitude purge \\~c"
#echo "# ---"
#      # sudo aptitude purge \~c
#echo "#"
echo "#"
echo "# 2. Installation des paquets postgresql et postgis"
echo "# -------------------------------------------------"
echo "# ---"
#echo "sudo aptitude -y install postgresql-9.4-postgis-2.1"
#      sudo aptitude -y install postgresql-9.4-postgis-2.1
#echo "sudo aptitude -y install postgresql-9.6-postgis-2.3"
#      sudo aptitude -y install postgresql-9.6-postgis-2.3
#echo "sudo aptitude -y install postgresql-9.6-postgis-2.3-scripts"
#      sudo aptitude -y install postgresql-9.6-postgis-2.3-scripts
echo "sudo aptitude -y install postgresql-$VERSION_POSTGRESQL-postgis-$VERSION_POSTGIS"
      sudo aptitude -y install postgresql-$VERSION_POSTGRESQL-postgis-$VERSION_POSTGIS
echo "sudo aptitude -y install postgresql-$VERSION_POSTGRESQL-postgis-$VERSION_POSTGIS-scripts"
      sudo aptitude -y install postgresql-$VERSION_POSTGRESQL-postgis-$VERSION_POSTGIS-scripts
echo "#"
echo "# Installation des paquets nécessaires pour l'installation de pgcli"
echo "sudo apt-get install libpq-dev"
      sudo aptitude -y install libpq-dev
echo ""
echo "# Installation du paquet contrib (extensions)"
#echo "sudo aptitude -y install postgresql-contrib-9.6"
#      sudo aptitude -y install postgresql-contrib-9.6
echo "sudo aptitude -y install postgresql-contrib-$VERSION_POSTGRESQL"
      sudo aptitude -y install postgresql-contrib-$VERSION_POSTGRESQL
echo "#"
#echo "# Modification de /etc/postgresql/9.4/main/postgresql.conf"
#echo "# Modification de /etc/postgresql/9.6/main/postgresql.conf"
echo "# Modification de /etc/postgresql/$VERSION_POSTGRESQL/main/postgresql.conf"
echo "#"
echo "# ---"
echo "sudo \\"
echo '     sed -i -e "s|#listen_adresses = 'localhost'|listen_adresses = '*'|" \'
echo "     /etc/postgresql/$VERSION_POSTGRESQL/main/postgresql.conf"
echo "# ---"
      sudo \
           sed -i -e "s|#listen_addresses = 'localhost'|listen_addresses = '*'|" \
           /etc/postgresql/$VERSION_POSTGRESQL/main/postgresql.conf
echo "#"
echo "#"
echo "# Modification de /etc/postgresql/$VERSION_POSTGRESQL/main/pg_hba.conf"
echo "#"
echo "# ---"
echo "sudo \\"
echo "     sed -i -r -e '/host[ ]+all[ ]+all[ ]+127.0.0.1\/32[ ]+md5/a host    all             all             10.2.10.0/24            md5' \\"
echo "     /etc/postgresql/$VERSION_POSTGRESQL/main/pg_hba.conf"
echo "# ---"
      sudo \
           sed -i -r -e '/host[ ]+all[ ]+all[ ]+127.0.0.1\/32[ ]+md5/a host    all             all             10.2.10.0/24            md5' \
           /etc/postgresql/$VERSION_POSTGRESQL/main/pg_hba.conf
      sudo \
           sed -i -r -e '/host[ ]+all[ ]+all[ ]+127.0.0.1\/32[ ]+md5/a host    pcrs            fred            217.112.51.3/32         md5' \
           /etc/postgresql/$VERSION_POSTGRESQL/main/pg_hba.conf
echo "#"
echo "#"
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
