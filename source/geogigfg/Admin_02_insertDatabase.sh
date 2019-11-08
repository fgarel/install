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
echo "# La base origine, ses schemas et ces tables ont été créés à l'étape précédente"
echo "#"
echo "# Insertion des données la base origine"
echo "#"

acteurs='CDA Departement DGFiP ERDF SDE SDEER Soluris VLR';
etapes='__Etape_01 __Etape_02 __Etape_03 __Etape_04 __Etape_05' ;
listuser='fred carto VLR seb dsti CDA 17';
listuser='fred' ; # uniquement fred
listuser='fred vlr cda soluris'
listuser='vlr cda'
listdb='origine sandbox pcrs rtge' ; # origine, sandbox, pcrs et rtge
listdb='pcrs rtge' ; # pcrs et rtge
listdb='pcrs' ; # pcrs
listdb='origine sandbox geogig' ;
listdb='origine' ; # uniquement origine
#listschema='__etape_01 __etape_02 __etape_03 __etape_04 __etape_05' ;
#listschema='__topononcontrolee __topodecontrole __topocontrolee __planexecution __planprojet' ;

for postgresqluser in $listuser ;
    do
        for database in $listdb ;
            do
                if [ $database = 'origine' ] ; then
                    # Base Origine : des schemas qui representent des étapes dans le temps
                    listschema='__etape_01 __etape_02 __etape_03 __etape_04 __etape_05' ;
                    #listschema='etape_01 etape_02 etape_03 etape_04 etape_05' ;
                elif [ $database = 'sandbox' ] ; then
                    # Base sandbox : des schemas qui representent des branches
                    listschema='__topononcontrolee __topodecontrole __topocontrolee __planexecution __planprojet' ;
                elif [ $database = 'geogig' ] ; then
                    # Base geogig : des schemas qui representent ?
                    listschema='__pcrs' ;
                fi
                for schema in $listschema ;
                    do
#                        echo "sudo -u postgres psql -c \"ALTER ROLE \\\"$postgresqluser\\\" SUPERUSER NOCREATEDB NOCREATEROLE;\"" ;
#                        sudo -u postgres psql -c "ALTER ROLE \"$postgresqluser\" SUPERUSER NOCREATEDB NOCREATEROLE;" ;
                        if [ $database = 'origine' ] ; then
                            echo "schema = "\"$postgresqluser$schema\"
                            psql -h $DBHOST -d $database -U $postgresqluser -c "ALTER ROLE \"$postgresqluser\" SET search_path TO \"$postgresqluser$schema\", public;"
                        else
                            echo "schema = "\"$schema\"
                            psql -h $DBHOST -d $database -U $postgresqluser -c "ALTER ROLE \"$postgresqluser\" SET search_path TO \"$schema\", public;"
                            #
                        fi
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
                        ./after_insert.py $postgresqluser$schema
                        psql -h $DBHOST -d $database -U $postgresqluser -f "after_insert_2.sql"
                    done
            done
    done
#psql -h $DBHOST -d origine -U $postgresqluser -f "after_insert_2.sql"


##psql -h localhost -d rtge_VLR -U VLR -f ~/Documents/technic/source/geogig/update2_sample.sql
