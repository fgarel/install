#!/bin/sh



# 7ème Partie : Installation de postgresql et postgis
#####################################################
# Installation de postgresql et postgis
echo '# 7ème Partie : Installation de postgresql et postgis'
echo '#####################################################'
echo '#'
echo '# Creation des utilisateurs et des bases pour tester geogig'
echo '#'
echo '#'
echo '# Pour chacun des utilisateurs ...'
echo "#  - CDA"
echo "#  - Departement"
echo "#  - DGFiP"
echo "#  - erdf"
echo "#  - SDE"
echo "#  - SDEER"
echo "#  - Soluris"
echo "#  - VLR"
echo '# ... nous allons attribuer deux bases de données ...'
echo '# - rtge'
echo '# - pcrs'
echo '# ... qui seront configurées avec les extensions ...'
echo '# - adminpack'
echo '# - postgis'
echo '# - postgis_topology'
echo '# - fuzzystrmatch'
echo '# - hstore'

echo '#'
echo '# Creation des utilisateurs'
echo '# ========================='


listuser='CDA Departement DGFiP erdf SDE SDEER Soluris VLR'
listdb='pcrs rtge' ;
listext='adminpack plpgsql postgis postgis_topology fuzzystrmatch hstore' ;

for postgresqluser in $listuser ;
    do

        for database in $listdb ;
            do
                echo "#" ;
                echo '# Suppression de la base de données :' $database'_'$postgresqluser ;
                echo 'sudo -u postgres \' ;
                echo '     dropdb' $database'_'$postgresqluser ;
                sudo -u postgres \
                     dropdb $database'_'$postgresqluser ;
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
        sudo -u postgres psql -c "ALTER ROLE \"$postgresqluser\" NOSUPERUSER NOCREATEDB NOCREATEROLE;" ;

        echo '#' ;
        echo '# Creation des bases de cet utilisateur' ;
        echo '# -------------------------------------' ;

        for database in $listdb ;
            do
                echo "#" ;
                echo '# Création de la base de données :' $database'_'$postgresqluser ;
                echo 'sudo -u postgres \' ;
                echo '     createdb --encoding=UTF8 \' ;
                echo '              --owner='$postgresqluser '\' ;
                echo '             ' $database'_'$postgresqluser ;
                sudo -u postgres \
                     createdb --encoding=UTF8 \
                              --owner=$postgresqluser \
                              $database'_'$postgresqluser ;

                echo "#" ;
                echo "# Installation des extensions pour ces bases" ;
                echo "# ------------------------------------------" ;


                for extension in $listext ;
                    do
                        echo "#" ;
                        echo '# Installation de l extension :' $extension ;
                        echo 'sudo -u postgres \' ;
                        echo '     psql --username=postgres \' ;
                        echo '          --dbname='$database'_'$postgresqluser '\' ;
                        echo "          -c \"CREATE EXTENSION $extension;\"" ;
                        sudo -u postgres \
                             psql --username=postgres \
                                  --dbname=$database'_'$postgresqluser \
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

