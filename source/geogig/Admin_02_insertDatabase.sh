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

#DBHOST=VLR6180Y
DBHOST=localhost

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
acteurs='CDA Departement DGFiP ERDF SDE SDEER Soluris VLR';
etapes='__Etape_01 __Etape_02 __Etape_03 __Etape_04 __Etape_05' ;
listuser='fred carto VLR seb dsti CDA 17';
listuser='fred' ; # uniquement fred
listdb='origine sandbox pcrs rtge' ; # origine, sandbox, pcrs et rtge
listdb='pcrs rtge' ; # pcrs et rtge
listdb='pcrs' ; # pcrs
listschema='__Etape_01 __Etape_02 __Etape_03 __Etape_04 __Etape_05' ;
listschema='__PlanTopoControle __Controle __PlanTopoNonControle __PlanExecution __PlanProjet' ;
listschema='__PlanTopoNonControle' ;

for postgresqluser in $listuser ;
    do
        for database in $listdb ;
            do
                for schema in $listschema ;
                    do
#                        echo "sudo -u postgres psql -c \"ALTER ROLE \\\"$postgresqluser\\\" SUPERUSER NOCREATEDB NOCREATEROLE;\"" ;
#                        sudo -u postgres psql -c "ALTER ROLE \"$postgresqluser\" SUPERUSER NOCREATEDB NOCREATEROLE;" ;
                        #echo "schema = "\"$postgresqluser$etape\"
                        #schema="$postgresqluser$etape"
                        #echo "schema = "$schema
                        psql -h $DBHOST -d $database -U $postgresqluser -c "ALTER ROLE \"$postgresqluser\" SET search_path TO \"$postgresqluser$schema\", public;"
#                        echo "sudo -u postgres psql -c \"ALTER ROLE \\\"$postgresqluser\\\" NOSUPERUSER NOCREATEDB NOCREATEROLE;\"" ;
#                        sudo -u postgres psql -c "ALTER ROLE \"$postgresqluser\" NOSUPERUSER NOCREATEDB NOCREATEROLE;" ;
                        #psql -h VLR6180Y -d origine -U $postgresqluser -c "show search_path;"
                        echo "#"
                        echo "# Avant Insertion"
                        echo "#"
                        #psql -h $DBHOST -d origine -U $postgresqluser -f "before_insert.sql"
                        psql -h $DBHOST -d $database -U $postgresqluser -f "before_insert_$postgresqluser.sql"
                        echo "#"
                        echo "# Insertion de données dans la base $database"
                        echo "#"
                        psql -h $DBHOST -d $database -U $postgresqluser -f "insert.sql"
                        echo "#"
                        echo "# Après insertion"
                        echo "#"
                        # ce premier after_insert.sql, c'est pour
                        # nettoyer au niveau de la structuration
                        # colonne géometrie, etc
                        psql -h $DBHOST -d $database -U $postgresqluser -f "after_insert.sql"
                        # le deuxieme after_insert_2.sql, c'est aussi
                        # pour nettoyer, mais c'est fois ci au niveau du contenu
                        # suppression des objets selon le scenario
                        # qui est paramétré dans after_insert.py
                    #    ./after_insert.py $postgresqluser$schema
                    #    psql -h $DBHOST -d $database -U $postgresqluser -f "after_insert_2.sql"
                    done
            done
    done
#psql -h $DBHOST -d origine -U $postgresqluser -f "after_insert_2.sql"


##psql -h localhost -d rtge_VLR -U VLR -f ~/Documents/technic/source/geogig/update2_sample.sql
