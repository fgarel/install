#!/bin/sh

# -----------------------------------------------------------
# Initialisation de la base sandbox pour les utilisateurs
# -----------------------------------------------------------
# Sript pour la configuration d'un serveur postgresql/postgis
# -----------------------------------------------------------
#
# La machine est         : VLR6180Y
# La base de données est : sandbox
#
# La Base sandbox est utilisée
# en lecture/ecriture
# par les utilisateurs de l'outil geogig


#DBHOST=VLR6180Y
DBHOST=localhost
DBPORT=5432
DBUSER=fred
DBPASS=fred
DBNAME=pcrs
DBSCHEMA=private
psql -h $DBHOST -p $DBPORT -d $DBNAME -U $DBUSER -c "ALTER ROLE \"$DBUSER\" SET search_path TO \"$DBSCHEMA\", public;"
psql -h $DBHOST -p $DBPORT -d $DBNAME -U $DBUSER -f "sql/01_create_table_pcrs_v2.sql"
psql -h $DBHOST -p $DBPORT -d $DBNAME -U $DBUSER -f "sql/02_rtge2pcrs_create.sql"
psql -h $DBHOST -p $DBPORT -d $DBNAME -U $DBUSER -f "sql/03_rtge2pcrs_select.sql"
