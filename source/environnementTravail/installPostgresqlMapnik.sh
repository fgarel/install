#!/bin/sh



# 7ème Partie : Installation de postgresql et postgis
#####################################################
# Installation de postgresql et postgis
echo '# 7ème Partie : Installation de postgresql et postgis'
echo '#####################################################'
echo '#'
echo '# Creation des utilisateurs et des bases pour tester mapnik'
echo '#'
echo '#'
echo '# Pour chacun des utilisateurs ...'
echo "#  - fred"
echo "#  - "
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
echo '# Creation des utilisateurs'
echo '# ========================='


listuser='fred'
listdb='template_postgis mapnik-tmp-postgis-test-db' ;
listext='adminpack plpgsql postgis postgis_topology fuzzystrmatch hstore' ;

for postgresqluser in $listuser ;
    do

        for database in $listdb ;
            do
                echo "#" ;
                echo '# Suppression de la base de données :' $database ;
                echo 'sudo -u postgres \' ;
                echo '     dropdb' $database ;
                sudo -u postgres \
                     dropdb $database ;
            done
        echo '#' ;
        echo '# Suppression de l utilisateur :' $postgresqluser ;
        echo '# -------------------------'
        echo 'sudo -u postgres \' ;
        echo '     dropuser' $postgresqluser ;
        sudo -u postgres \
             dropuser "$postgresqluser";
        echo '#' ;
        echo '# Création de l utilisateur :' $postgresqluser ;
        echo '# -------------------------'
        echo 'sudo -u postgres \' ;
        echo '     createuser' $postgresqluser ;
        sudo -u postgres \
             createuser "$postgresqluser";
        echo '# Modification du mot de passe et des droits'
        echo "sudo -u postgres psql -c \"ALTER ROLE \\\"$postgresqluser\\\" WITH PASSWORD '$postgresqluser';\"" ;
        echo "sudo -u postgres psql -c \"ALTER ROLE \\\"$postgresqluser\\\" NOSUPERUSER NOCREATEDB NOCREATEROLE;\"" ;
        sudo -u postgres psql -c "ALTER ROLE \"$postgresqluser\" WITH PASSWORD '$postgresqluser';" ;
        sudo -u postgres psql -c "ALTER ROLE \"$postgresqluser\" NOSUPERUSER CREATEDB NOCREATEROLE;" ;

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
            done
    done



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

