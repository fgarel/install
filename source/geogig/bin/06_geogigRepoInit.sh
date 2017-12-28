#!/bin/sh


        DBHOST=localhost
        DBPORT=5432
        DBNAMEGEOGIG=geogig
        DBSCHEMAGEOGIG=pcrs
        DBNAMEORIGINE=sandbox
        DBSCHEMAORIGINE=a_pcrs
        DBREPO=CDA-46-00197-01045-21-A-18-A
        DBUSER=fred
        DBPASS=fred
        USERNAME=Frédéric Garel
        USERMAIL=frederic.garel@ville-larochelle.fr

        REPOMULTI="postgresql://$DBHOST:$DBPORT/$DBNAMEGEOGIG/$DBSCHEMAGEOGIG?user=$DBUSER&password=$DBPASS"

        LISTBRANCHES='develop_enCoursDeMiseAJourInterne feature_projetExterne release_pourDiffusion hotfix_modifRapide'

        echo "#"
        echo "#"
        echo "# Creation et Initialisation du dépot CDA-46-00197-01045-21-A-18-A"
        echo "#"
        echo "# C'est un depot geogig qui utilise postgresql comme storage backend"
        echo "# La doc est sur cette page"
        echo "# http://geogig.org/docs/repo/storage.html"
        echo "#"
        echo "# Initialisation du depot geogig"
        echo "#"
        echo "#"
        echo "geogig --repo $REPOONE \ "
        echo "       init"
              geogig --repo $REPOONE \
                     init
        echo "#"
        echo "#"
        echo "# Configuration de geogig"
        echo "#"
        echo "geogig --repo $REPOONE \ "
        echo "       config --global user.name "$USERNAME""
              geogig --repo $REPOONE \
                     config --global user.name "$USERNAME"
        echo "geogig --repo $REPOONE \ "
        echo "       config --global user.email "$USERMAIL""
              geogig --repo $REPOONE \
                     config --global user.email "$USERMAIL"
        echo "#"
        echo "# On renomme la branche master"
        echo "#"
        echo "geogig --repo $REPOONE \ "
        echo "       branch -m master_selonInfosDisponibles"
              geogig --repo $REPOONE \
                     branch -m master_selonInfosDisponibles
        echo "#"
        echo "# Import des données de la base origine dans le depot"
        echo "#"
              ./03_baseUpdate.py
        echo "geogig --repo $REPOONE \ "
        echo "       pg import --host $DBHOST --database $DBNAMEORIGINE --user $DBUSER --password $DBPASS --schema "$DBSCHEMAORIGINE" --all"
              geogig --repo $REPOONE \
                     pg import --host $DBHOST --database $DBNAMEORIGINE --user $DBUSER --password $DBPASS --schema "$DBSCHEMAORIGINE" --all

        echo "#"
        echo "# Enregistrement des données importées pour validation"
        echo "#"
        echo "geogig --repo $REPOONE \ "
        echo "       add"
              geogig --repo $REPOONE \
                     add
        echo "#"
        echo "# Commit"
        echo "#"
        echo "geogig --repo $REPOONE \ "
        echo "       commit -m 'Commit initial'"
              geogig --repo $REPOONE \
                     commit -m 'Commit initial'
        echo "#"
        echo "# Creation de 4 autres branches"
        echo "#"
        echo 'for BRANCHE in $LISTBRANCHES ; '
        echo '    do'
        echo '        echo ""'
        echo '        geogig --repo $REPOONE \ '
        echo '               branch $BRANCHE'
        echo '    done'
             for BRANCHE in $LISTBRANCHES ;
                 do
                     echo ""
                     geogig --repo $REPOONE \
                            branch $BRANCHE
                 done
        echo "#"
        echo "# Status"
        echo "#"
        echo "geogig --repo $REPOONE \ "
        echo "       status"
              geogig --repo $REPOONE \
                     status
        