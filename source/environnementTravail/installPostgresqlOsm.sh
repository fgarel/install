#!/bin/sh



# 7ème Partie : Installation de postgresql et postgis
#####################################################
# Installation de postgresql et postgis
echo '# 7ème Partie : Installation de postgresql et postgis'
echo '#####################################################'
echo '#'
echo '# Creation des utilisateurs et des bases pour utiliser les données d OSM'
echo '#'
echo '# Pour chacun des utilisateurs ...'
echo "#  - Fred"
echo '#'
echo '# ... nous allons attribuer deux bases de données ...'
echo '# - template_postgis'
echo '# - mapnik-tmp-postgis-test-db'
echo '# ... qui seront configurées avec les extensions ...'
echo '# - adminpack'
echo '# - postgis'
echo '# - postgis_topology'
echo '# - fuzzystrmatch'
echo '# - hstore'
echo '#'
echo '# attention : ici, le role fred a aussi le droit de créer des bases'
echo '#'
echo '#'
echo '# Creation des utilisateurs et des bases de données'
echo '# ================================================='


#listdbtodrop='osm osm_complement voieadresse voieadresse_complement sdis sdis_complement espu espu_complement voirie_filaire voirie_filaire_complement cadastre cadastre_complement sandbox graphe template_postgis mapnik-tmp-postgis-test-db' ;
listdbtodrop='osm osm_complement voieadresse voieadresse_complement sdis sdis_complement espu espu_complement graphe template_postgis mapnik-tmp-postgis-test-db' ;
listusertodrop='Fred fred osmuser mapnikuser www-data' ;
listuser='osmuser mapnikuser www-data'
#listuserowner='osmuser'  # le propriétaire des bases
postgresqluserowner='osmuser'  # le propriétaire des bases
listdb='osm osm_complement voieadresse voieadresse_complement sdis sdis_complement espu espu_complement graphe template_postgis mapnik-tmp-postgis-test-db' ;
listext='adminpack plpgsql postgis postgis_topology fuzzystrmatch hstore' ;
# liste des schemas pour la base osm
# les schemas pour les bases osm sont décrits ici
# http://wiki.openstreetmap.org/wiki/Databases_and_data_access_APIs#Database_Schemas
# listschema='apidb osm2pgsql osm2postgresql'
listschema='apidb osm2pgsql'

for database in $listdbtodrop ;
    do
        echo "#" ;
        echo '# Suppression de la base de données :' $database ;
        sudo -u postgres \
             dropdb $database ;
    done

for postgresqluser in $listusertodrop ;
    do
        echo '#' ;
        echo '# Suppression de l utilisateur :' $postgresqluser ;
        sudo -u postgres \
             dropuser "$postgresqluser";
    done

for postgresqluser in $listuser ;
    do
        #for database in $listdb ;
        #    do
        #        echo "#" ;
        #        echo '# Suppression de la base de données :' $database ;
        #        echo 'sudo -u postgres \' ;
        #        echo '     dropdb' $database ;
        #        sudo -u postgres \
        #             dropdb $database ;
        #    done
        #echo '#' ;
        #echo '# Suppression de l utilisateur :' $postgresqluser ;
        #echo '# -------------------------'
        #echo 'sudo -u postgres \' ;
        #echo '     dropuser' $postgresqluser ;
        #sudo -u postgres \
        #     dropuser "$postgresqluser";
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

    done

#for postgresqluserowner in $listuserowner ;
#    do
        echo '#' ;
        echo '# Creation des bases appartenant à :' $postgresqluserowner ;
        echo '# --------------------------------' ;

        for database in $listdb ;
            do
                echo "#" ;
                echo '# Création de la base de données :' $database ;
                echo "# ------------------------------------------" ;
                echo 'sudo -u postgres \' ;
                echo '     createdb --encoding=UTF8 \' ;
                echo '              --owner='$postgresqluserowner '\' ;
                echo '             ' $database ;
                sudo -u postgres \
                     createdb --encoding=UTF8 \
                              --owner=$postgresqluserowner \
                              $database ;

                for extension in $listext ;
                    do
                        echo "#" ;
                        echo '# Pour la base, ' $database ', installation de l extension :' $extension ;
                        echo "# ------------------------------------------" ;
                        echo 'sudo -u postgres \' ;
                        echo '     psql --username=postgres \' ;
                        echo '          --dbname='$database '\' ;
                        echo "          -c \"CREATE EXTENSION $extension;\"" ;
                        sudo -u postgres \
                             psql --username=postgres \
                                  --dbname=$database \
                                  -c "CREATE EXTENSION $extension;"
                    done
            done
#    done

# pour la base osm, creation de deux schemas
# ajout des droits sur ces deux schemas et sur le shema public
# pour l'utilisateur osmuser
#
database='osm'
for schema in $listschema ;
    do
        echo "#" ;
        echo '# Pour la base, ' $database ', installation du schema :' $schema ;
        echo "# ------------------------------------------" ;
        echo 'sudo -u postgres \' ;
        echo '     psql --username=postgres \' ;
        echo '          --dbname='$database '\' ;
        echo "          -c \"CREATE SCHEMA $schema;\"" ;
        sudo -u postgres \
             psql --username=postgres \
                  --dbname=$database \
                  -c "CREATE SCHEMA $schema;"
        echo 'sudo -u postgres \' ;
        echo '     psql --username=postgres \' ;
        echo '          --dbname='$database '\' ;
        echo "          -c \"GRANT ALL ON SCHEMA $schema TO \\\"$postgresqluserowner\\\";\"" ;
        sudo -u postgres \
             psql --username=postgres \
                  --dbname=$database \
                  -c "GRANT ALL ON SCHEMA $schema TO \"$postgresqluserowner\";"
        #echo 'sudo -u postgres \' ;
        #echo '     psql --username=postgres \' ;
        #echo '          --dbname='$database '\' ;
        #echo "          -c \"GRANT ALL ON SCHEMA public TO $listuserowner;\"" ;
        #sudo -u postgres \
        #     psql --username=postgres \
        #          --dbname=$database \
        #          -c "GRANT ALL ON SCHEMA public TO $listuserowner;"
    done

# pour la base osm, pour le schema osm2pgsql, ajout des droits
# pour les utilisateurs mapnikuser et www-data
database='osm'
schema='osm2pgsql'
listuser='mapnikuser www-data'
database='osm'
for postgresqluser in $listuser ;
    do
        echo 'sudo -u postgres \' ;
        echo '     psql --username=postgres \' ;
        echo '          --dbname='$database '\' ;
        echo "          -c \"GRANT ALL ON SCHEMA $schema TO \\\"$postgresqluser\\\";\"" ;
        sudo -u postgres \
             psql --username=postgres \
                  --dbname=$database \
                  -c "GRANT ALL ON SCHEMA $schema TO \"$postgresqluser\";"
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

echo "#"
echo "# 5. Redemarrage du serveur"
echo "# ---------------------------------------"
echo "#"
echo "sudo service postgresql restart"
#      sudo service postgresql restart
echo "#"
echo "# netstat -lataupen"
      # netstat -lataupen
echo "#"
echo ""
