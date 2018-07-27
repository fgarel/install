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

        . ./05_flowParameters.sh

        echo "# "

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
        echo "geogig --repo $REPO_CENTRAL_ONE \ "
        echo "       init"
              geogig --repo $REPO_CENTRAL_ONE \
                     init
        echo "#"
        echo "#"
        echo "# Configuration de geogig"
        echo "#"
        echo "geogig --repo $REPO_CENTRAL_ONE \ "
        echo "       config --global user.name "$GGUSER_NAME""
              geogig --repo $REPO_CENTRAL_ONE \
                     config --global user.name "$GGUSER_NAME"
        echo "geogig --repo $REPO_CENTRAL_ONE \ "
        echo "       config --global user.email "$GGUSER_EMAIL""
              geogig --repo $REPO_CENTRAL_ONE \
                     config --global user.email "$GGUSER_EMAIL"
        echo "#"
        echo "# On renomme la branche master"
        echo "#"
        echo "geogig --repo $REPO_CENTRAL_ONE \ "
        echo "       branch -m $BRANCHE_MASTER"
              geogig --repo $REPO_CENTRAL_ONE \
                     branch -m $BRANCHE_MASTER
        echo "#"
        echo "# Import des données de la base origine dans le depot"
        echo "#"
              ./03_baseUpdate.py
        echo "geogig --repo $REPO_CENTRAL_ONE \ "
        echo "       pg import --host $DBHOST_WORKSPACE --database $DBNAME_WORKSPACE --user $DBUSER_WORKSPACE --password $DBPASS_WORKSPACE --schema \"$DBSCHE_WORKSPACE\" --all"
              geogig --repo $REPO_CENTRAL_ONE \
                     pg import --host $DBHOST_WORKSPACE --database $DBNAME_WORKSPACE --user $DBUSER_WORKSPACE --password $DBPASS_WORKSPACE --schema "$DBSCHE_WORKSPACE" --all

        echo "#"
        echo "# Enregistrement des données importées pour validation"
        echo "#"
        echo "geogig --repo $REPO_CENTRAL_ONE \ "
        echo "       add"
              geogig --repo $REPO_CENTRAL_ONE \
                     add
        echo "#"
        echo "# Commit"
        echo "#"
        echo "geogig --repo $REPO_CENTRAL_ONE \ "
        echo "       commit -m 'Commit initial'"
              geogig --repo $REPO_CENTRAL_ONE \
                     commit -m 'Commit initial'
        echo "#"

        echo "#"
        #echo "# Ajout d'un depot origine (depot distant)"
        #echo "#"
        #echo "geogig --repo $REPO_LOCAL_ONE \ "
        #echo "       remote add origin $REPO_CENTRAL_ONE"
        #      geogig --repo $REPO_LOCAL_ONE \
        #             remote add origin $REPO_CENTRAL_ONE
        echo "#"



        echo "#"
        echo "# Creation de quelques autres branches"
        echo 'for BRANCHE in $LISTBRANCHES ; '
        echo '    do'
        echo '        echo ""'
        echo '        geogig --repo $REPOONE \ '
        echo '               branch $BRANCHE'
        echo '    done'
             for BRANCHE in $LISTBRANCHES ;
                 do
                     echo "# branche $BRANCHE"
                     geogig --repo $REPO_CENTRAL_ONE \
                            branch $BRANCHE
                 done

        echo "# On crée et on se postionne sur la branche develop"
        echo "geogig --repo $REPO_CENTRAL_ONE \ "
        echo "       branch -c $BRANCHE_DEVELOP"
              geogig --repo $REPO_CENTRAL_ONE \
                     branch -c $BRANCHE_DEVELOP

        echo "#"
        echo "# Status"
        echo "#"
        echo "geogig --repo $REPO_CENTRAL_ONE \ "
        echo "       status"
              geogig --repo $REPO_CENTRAL_ONE \
                     status
