#!/bin/sh

# -----------------------------------------------------------
# Initialisation de la base origine pour l'administrateur
# -----------------------------------------------------------
# Sript pour la configuration d'un serveur postgresql/postgis
# -----------------------------------------------------------
#
# La machine est         : VLR6180Y
# La base de données est : origine
#
# La Base origine est utilisée
# en lecture/ecriture
# par l'administrateur, pour la préparation du tutorial
# et en lecture seule
# par les utilisateurs de l'outil geogig

echo "#"
echo "# Création de la base origine"
echo "#"
echo "# la base est créée à l'aide du script qui se trouve ici :"
echo "# ~/Documents/install/source/environnementTravail/installPostgresqlGeogigGTReseaux.sh"
echo "#"
echo "#"
echo "# Création des schemas"
echo "#       et des tables"
echo "#                      pour la base origine"
echo "#"
echo "# les schémas et les tables sont créés à l'aide du script qui se trouve ici :"
echo "# ~/Documents/install/source/geogig/Admin_02_insertDatabase.sh"
echo "#"
echo "# Insertion des données la base origine"
echo "#"
listuser='CDA Departement DGFiP erdf SDE SDEER Soluris VLR';
listschema='__Etape_01 __Etape_02 __Etape_03 __Etape_04 __Etape_05' ;

for postgresqluser in $listuser ;
    do
        for schema in $listschema ;
            do
#                echo "sudo -u postgres psql -c \"ALTER ROLE \\\"$postgresqluser\\\" SUPERUSER NOCREATEDB NOCREATEROLE;\"" ;
#                sudo -u postgres psql -c "ALTER ROLE \"$postgresqluser\" SUPERUSER NOCREATEDB NOCREATEROLE;" ;
                echo "schema = "\"$postgresqluser$schema\"
                psql -h VLR6180Y -d origine -U $postgresqluser -c "ALTER ROLE \"$postgresqluser\" SET search_path TO \"$postgresqluser$schema\", public;"
#                echo "sudo -u postgres psql -c \"ALTER ROLE \\\"$postgresqluser\\\" NOSUPERUSER NOCREATEDB NOCREATEROLE;\"" ;
#                sudo -u postgres psql -c "ALTER ROLE \"$postgresqluser\" NOSUPERUSER NOCREATEDB NOCREATEROLE;" ;
                #psql -h VLR6180Y -d origine -U $postgresqluser -c "show search_path;"
                echo "#"
                echo "# Avant Insertion"
                echo "#"
                psql -h VLR6180Y -d origine -U $postgresqluser -f "before_insert.sql"
                echo "#"
                echo "# Insertion de données dans la base origine"
                echo "#"
                psql -h VLR6180Y -d origine -U $postgresqluser -f "insert.sql"
                echo "#"
                echo "# Après insertion"
                echo "#"
                psql -h VLR6180Y -d origine -U $postgresqluser -f "after_insert.sql"
            done
    done


##psql -h localhost -d rtge_VLR -U VLR -f ~/Documents/technic/source/geogig/update2_sample.sql