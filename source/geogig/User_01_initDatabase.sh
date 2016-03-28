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


DBHOST=VLR6180Y
DBHOST=localhost

echo "#"
echo "# Création de la base sandbox"
echo "#"
echo "# la base est créée à l'aide du script qui se trouve ici :"
echo "# ~/Documents/install/source/environnementTravail/installPostgresqlGeogigGTReseaux.sh"
echo "#"
echo "#"
echo "# Création des schemas pour la base sandbox"
echo "#"
#psql -h VLR6180Y -d sandbox -U "VLR" -f "~/Documents/install/source/geogig/create_schema_sandbox.sql"
psql -h $DBHOST -d sandbox -U "VLR" -f "create_schema_sandbox.sql"
echo "#"
echo "# Création des tables pour la base sandbox"
echo "#"
listuser='CDA Departement DGFiP erdf SDE SDEER Soluris VLR';
listschema=''

for postgresqluser in $listuser ;
    do
        #for schema in $listschema ;
        #    do
        #        echo "schema = "\"$postgresqluser$schema\"
#                echo "sudo -u postgres psql -c \"ALTER ROLE \\\"$postgresqluser\\\" SUPERUSER NOCREATEDB NOCREATEROLE;\"" ;
#                sudo -u postgres psql -c "ALTER ROLE \"$postgresqluser\" SUPERUSER NOCREATEDB NOCREATEROLE;" ;
                psql -h $DBHOST -d sandbox -U $postgresqluser -c "ALTER ROLE \"$postgresqluser\" SET search_path TO \"$postgresqluser\", public;"
#                echo "sudo -u postgres psql -c \"ALTER ROLE \\\"$postgresqluser\\\" NOSUPERUSER NOCREATEDB NOCREATEROLE;\"" ;
#                sudo -u postgres psql -c "ALTER ROLE \"$postgresqluser\" NOSUPERUSER NOCREATEDB NOCREATEROLE;" ;
                #psql -h VLR6180Y -d sandbox -U $postgresqluser -c "show search_path;"
                psql -h $DBHOST -d sandbox -U $postgresqluser -f "create_table.sql"
        #    done
    done
