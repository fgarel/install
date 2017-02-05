#!/bin/sh



#DBHOST=VLR6180Y
#DBHOST=pg.cdalr.fr
DBHOST=localhost
#listusertodrop='cda departement dgfip enedis sde sdeer soluris vlr' ;
#listdbtodrop='geogig' ;
listuser='cda departement dgfip enedis sde sdeer soluris vlr' ;
listdb='geogig' ;
listext='adminpack plpgsql postgis postgis_topology fuzzystrmatch hstore' ;
listschema='pcrs' ;

echo '#'
echo "# Creation des utilisateurs : $listuser"
echo '#'
echo "# Creation de la base $listdb"
echo '#'
echo "# Cette base sera configurée avec les extensions suivantes : $listext"
echo "#"
echo "# Cette base contiendra les schemas suivants $listschema"


echo '# Suppression des utiisateurs et des bases de données'
echo '#####################################################'
for database in $listdb;
    do
        echo "#" ;
        echo '# Suppression de la base de données :' $database ;
        sudo -u postgres \
             dropdb $database ;
    done

for postgresqluser in $listuser ;
    do
        echo '#' ;
        echo '# Suppression de l utilisateur :' $postgresqluser ;
        sudo -u postgres \
             dropuser "$postgresqluser";
    done


echo '# Creation des bases de données'
echo '#####################################################'
for postgresqluser in $listuser ;
    do
        echo '#' ;
        echo '# Création de l utilisateur :' $postgresqluser ;
        echo '# -------------------------'
        echo 'sudo -u postgres \' ;
        echo '     createuser' $postgresqluser ;
        sudo -u postgres \
             createuser "$postgresqluser";
        echo '# Modification du mot de passe et des droits'
        echo "sudo -u postgres psql -c \"ALTER ROLE \\\"$postgresqluser\\\" WITH PASSWORD '$postgresqluser';\"" ;
        #echo "sudo -u postgres psql -c \"ALTER ROLE \\\"$postgresqluser\\\" NOSUPERUSER NOCREATEDB NOCREATEROLE;\"" ;
        echo '# ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! !'
        echo '# Attention, ici on se met en superuser pour la creation des schemas '
        echo '# ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! !'
        echo "sudo -u postgres psql -c \"ALTER ROLE \\\"$postgresqluser\\\" SUPERUSER NOCREATEDB NOCREATEROLE;\"" ;
        sudo -u postgres psql -c "ALTER ROLE \"$postgresqluser\" WITH PASSWORD '$postgresqluser';" ;
        sudo -u postgres psql -c "ALTER ROLE \"$postgresqluser\" SUPERUSER NOCREATEDB NOCREATEROLE;" ;

        echo '#' ;
        echo '# Creation des bases de cet utilisateur' ;
        echo '# -------------------------------------' ;

        for database in $listdb ;
            do
                echo "#" ;
                echo '# Création de la base de données :' $database ;
                echo 'sudo -u postgres \' ;
                echo '     createdb --encoding=UTF8 \' ;
                echo '              --owner='$postgresqluser '\' ;
                echo '             ' $database ;
                sudo -u postgres \
                     createdb --encoding=UTF8 \
                              --owner=$postgresqluser \
                              $database ;

                echo "#" ;
                echo "# Installation des extensions pour ces bases" ;
                echo "# ------------------------------------------" ;

                for extension in $listext ;
                    do
                        echo "#" ;
                        echo '# Installation de l extension :' $extension ;
                        echo 'sudo -u postgres \' ;
                        echo '     psql --username=postgres \' ;
                        echo '          --dbname='$database '\' ;
                        echo "          -c \"CREATE EXTENSION $extension;\"" ;
                        sudo -u postgres \
                             psql --username=postgres \
                                  --dbname=$database \
                                  -c "CREATE EXTENSION $extension;"
                    done

                echo "#" ;
                echo "# Creation des schemas pour cette base" ;
                echo "# ------------------------------------" ;

                for schema in $listschema ;
                    do
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

#    for postgresqluser in $listuser ;
#        do
#          echo '# Modification du mot de passe et des droits'
#          echo '# ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! !'
#          echo '# Attention, ici on repasse en nosuperuser après la creation des schemas '
#          echo '# ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! !'
#          echo "sudo -u postgres psql -c \"ALTER ROLE \\\"$postgresqluser\\\" NOSUPERUSER NOCREATEDB NOCREATEROLE;\"" ;
#          sudo -u postgres psql -c "ALTER ROLE \"$postgresqluser\" NOSUPERUSER NOCREATEDB NOCREATEROLE;" ;
#    done
