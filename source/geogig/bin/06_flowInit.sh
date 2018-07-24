#!/bin/sh


        DBHOST=pg.cdalr.fr
        DBPORT=5432
        DBNAMEGEOGIG=geogig
        #DBSCHEMAGEOGIG=pcrs
        DBSCHEMAGEOGIG=repos
        DBNAMEORIGINE=sandbox
        DBSCHEMAORIGINE=a_pcrs
        #DBREPO=CDA-46-00197-01045-16-D-C
        DBREPO=CDA-46-00197-01045-16-D-16
        DBUSER=fred
        DBPASS=fgpass
        USERNAME='Frédéric Garel'
        USERMAIL=frederic.garel@ville-larochelle.fr

        REPOONE="postgresql://$DBHOST:$DBPORT/$DBNAMEGEOGIG/$DBSCHEMAGEOGIG/$DBREPO?user=$DBUSER&password=$DBPASS"
        REPOMULTI="postgresql://$DBHOST:$DBPORT/$DBNAMEGEOGIG/$DBSCHEMAGEOGIG?user=$DBUSER&password=$DBPASS"
        REPOREMOTE="https://geogig.cdalr.fr/pcrs/$DBREPO"

        #LISTBRANCHES='develop_enCoursDeMiseAJourInterne feature_projetExterne release_pourDiffusion hotfix_modifRapide'
        BRANCHEMASTER='master_selonInfosDisponibles'
        BRANCHEDEVELOP='develop_enCoursDeMiseAJourInterne'
        BRANCHERELEASE='release_pourDiffusion'

        echo "#"
        echo "# -----------------------------------------------------------------------------------"
        echo "# Initialisation du dépot CDA-46-00197-01045-16-D-C"
        echo "# Initialisation du dépot CDA-46-00197-01045-16-D-16"
        echo "#"
        echo "# https://danielkummer.github.io/git-flow-cheatsheet/index.fr_FR.html#getting_started"
        echo "# https://gist.github.com/JamesMGreene/cdd0ac49f90c987e45ac"
        echo "# -----------------------------------------------------------------------------------"
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
        echo "       branch -m $BRANCHEMASTER"
              geogig --repo $REPOONE \
                     branch -m $BRANCHEMASTER
        echo "#"
        echo "# Import des données de la base origine dans le depot"
        echo "#"
              ./03_baseUpdate.py
        echo "geogig --repo $REPOONE \ "
        echo '       pg import --host $DBHOST --database $DBNAMEORIGINE --user $DBUSER --password $DBPASS --schema "$DBSCHEMAORIGINE" --all'
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

        echo "#"
        echo "# Ajout d'un depot origine (depot distant)"
        echo "#"
        echo "geogig --repo $REPOONE \ "
        echo "       remote add origin $REPOREMOTE"
              geogig --repo $REPOONE \
                     remote add origin $REPOREMOTE
        echo "#"

        echo "# Creation de 2 autres branches"
        echo "#"
        echo "geogig --repo $REPOONE \ "
        echo '       branch $BRANCHERELEASE'
              geogig --repo $REPOONE \
                     branch $BRANCHERELEASE
        echo "#"
        echo "# On crée et on se postionne sur la branche develop"
        echo "geogig --repo $REPOONE \ "
        echo '       branch -c $BRANCHEDEVELOP'
              geogig --repo $REPOONE \
                     branch -c $BRANCHEDEVELOP

        echo "#"
        #echo 'for BRANCHE in $LISTBRANCHES ; '
        #echo '    do'
        #echo '        echo ""'
        #echo '        geogig --repo $REPOONE \ '
        #echo '               branch $BRANCHE'
        #echo '    done'
        #     for BRANCHE in $LISTBRANCHES ;
        #         do
        #             echo ""
        #             geogig --repo $REPOONE \
        #                    branch $BRANCHE
        #         done
        echo "#"
        echo "# Status"
        echo "#"
        echo "geogig --repo $REPOONE \ "
        echo "       status"
              geogig --repo $REPOONE \
                     status
