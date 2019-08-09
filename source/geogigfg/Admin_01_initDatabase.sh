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
#DBHOST=pg.cdalr.fr
DBHOST=localhost

echo "#"
echo "# La base origine contiendra des schémas dont le nom"
echo "# est formaté de la facon suivante : "
echo "#"
echo "#   utilisateur__etape"
echo "#"
echo "# Dans la base origine, pour chacun de ces schemas, les tables pcrs sont créées."
echo "#"
echo "# La base geogig ne contient que le schema pcrs"
echo "# Aucune table n'est créée dans ce schéma de cette base."
echo "# ces tables systèmes seront automatiquement créées lors de l'injonction geogit Initialisation"
echo "# cf user_02"
echo "#"
#psql -h VLR6180Y -d origine -U "VLR" -f "~/Documents/install/source/geogig/create_schema_origine.sql"
#psql -h $DBHOST -d origine -U "VLR" -f "create_schema_origine.sql"
#psql -h $DBHOST -d pcrs -U "fred" -f "create_schema_pcrs.sql"

listuser='CDA Departement DGFiP ERDF SDE SDEER Soluris VLR';
listuser='fred carto VLR seb dsti CDA 17';
listuser='fred' ; # uniquement fred
listuser='vlr cda'
listdb='origine sandbox pcrs rtge' ; # origine, sandbox, pcrs et rtge
listdb='pcrs rtge' ; # pcrs et rtge
listdb='pcrs' ; # pcrs
listdb='origine sandbox geogig' ;
listdb='origine geogig' ;
#listschema='__topononcontrolee __topodecontrole __topocontrolee __planexecution __planprojet' ;

echo "#"
echo "# vi ~/.pgpass"
echo "#"
echo "localhost:5432:*:vlr:vlr"
echo "localhost:5432:*:cda:cda"
echo "pg.cdalr.fr:5432:*:vlr:vlr"
echo "pg.cdalr.fr:5432:*:cda:cda"
echo "#"
echo "#"


echo '#'
echo '# Creation des utilisateurs et des bases de données'
echo '# ================================================='

for postgresqluser in $listuser ;
    do
        for database in $listdb ;
            do
                if [ $database = 'origine' ] ; then
                    # Base Origine : des schemas qui representent des étapes dans le temps
                    listschema='__etape_01 __etape_02 __etape_03 __etape_04 __etape_05' ;
                    # listschema='etape_01 etape_02 etape_03 etape_04 etape_05' ;
                elif [ $database = 'sandbox' ] ; then
                    # Base sandbox : des schemas qui representent des branches
                    #listschema='__topononcontrolee __topodecontrole __topocontrolee __planexecution __planprojet' ;
                    listschema='topononcontrolee topodecontrole topocontrolee planexecution planprojet' ;
                elif [ $database = 'geogig' ] ; then
                    # Base geogig : des schemas qui representent ?
                    listschema='__pcrs' ;
                    listschema='pcrs' ;
                fi
                echo "#" ;
                echo '# database :' $database ;
                echo "#" ;
                for schema in $listschema ;
                    do
#                        echo "sudo -u postgres psql -c \"ALTER ROLE \\\"$postgresqluser\\\" SUPERUSER NOCREATEDB NOCREATEROLE;\"" ;
#                        sudo -u postgres psql -c "ALTER ROLE \"$postgresqluser\" SUPERUSER NOCREATEDB NOCREATEROLE;" ;
                        #
                        # Creation des schema dans la base
                        #
                        if [ $database = 'origine' ] ; then
                            echo "# schema = "\"$postgresqluser$schema\"
                            psql -h $DBHOST -d $database -U $postgresqluser -c "CREATE SCHEMA IF NOT EXISTS \"$postgresqluser$schema\" AUTHORIZATION \"$postgresqluser\";"
                            psql -h $DBHOST -d $database -U $postgresqluser -c "ALTER ROLE \"$postgresqluser\" SET search_path TO \"$postgresqluser$schema\", public;"
                        else
                            echo "# schema = "\"$schema\"
                            psql -h $DBHOST -d $database -U $postgresqluser -c "CREATE SCHEMA IF NOT EXISTS \"$schema\" AUTHORIZATION \"$postgresqluser\";"
                            psql -h $DBHOST -d $database -U $postgresqluser -c "ALTER ROLE \"$postgresqluser\" SET search_path TO \"$schema\", public;"
                        fi
#                        echo "sudo -u postgres psql -c \"ALTER ROLE \\\"$postgresqluser\\\" NOSUPERUSER NOCREATEDB NOCREATEROLE;\"" ;
#                        sudo -u postgres psql -c "ALTER ROLE \"$postgresqluser\" NOSUPERUSER NOCREATEDB NOCREATEROLE;" ;
                        #psql -h VLR6180Y -d origine -U $postgresqluser -c "show search_path;"
                        #
                        # Creation des tables dans les schemas de la base
                        #
                        if [ $database = 'origine' ] ; then
                            # Base Origine : des schemas qui representent des étapes dans le temps
                            psql -h $DBHOST -d $database -U $postgresqluser -f "create_table_pcrs.sql"
                        fi
                    done
            done
    done





