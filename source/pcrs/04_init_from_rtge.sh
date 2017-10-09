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
#DBHOST=localhost
DBHOST=172.17.150.6
DBPORT=5432
#DBUSER=fred
DBUSER=frederic.garel
#DBPASS=fred
#DBPASS=fred
#DBNAME=pcrs
DBNAME=sig
#DBSCHEMA=private
DBSCHEMA=a_pcrs
#psql -h $DBHOST -p $DBPORT -d $DBNAME -U $DBUSER -c "ALTER ROLE \"$DBUSER\" SET search_path TO \"$DBSCHEMA\", public;"
#psql -h $DBHOST -p $DBPORT -d $DBNAME -U $DBUSER -f "sql/01_create_table_pcrs_v2.sql"
#psql -h $DBHOST -p $DBPORT -d $DBNAME -U $DBUSER -f "sql/02_rtge2pcrs_create.sql"
psql -h $DBHOST -p $DBPORT -d $DBNAME -U $DBUSER -f "sql/04_init_from_rtge.sql"
