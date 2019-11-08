#!/bin/sh


        . ./05_flowParameters.sh

        echo "# "

        echo "#"
        echo "# -----------------------------------------------------------------------------------"
        echo "# Initialisation du dépot central $DBREPO_CENTRAL"
        echo "#"
        echo "# https://danielkummer.github.io/git-flow-cheatsheet/index.fr_FR.html#getting_started"
        echo "# https://gist.github.com/JamesMGreene/cdd0ac49f90c987e45ac"
        echo "# -----------------------------------------------------------------------------------"
        echo "#"
        echo "# C'est un depot geogig qui utilise postgresql comme storage backend"
        echo "# La doc est sur cette page"
        echo "# http://geogig.org/docs/repo/storage.html"
        echo "#"

        echo "#"
        echo "# Dans un premier temps, on vérifie si le dépot existe."
        echo "#"
        echo "geogig --repo \"$REPO_CENTRAL_ONE\" \ "
        echo "       status"
              geogig --repo $REPO_CENTRAL_ONE \
                     status
        if [ $? -eq 0 ]         # Test du code de sortie de la commande "geogig status".
        then
          echo "Dépot deja existant : rien à faire"
          exit 1
        else
          echo "erreur $?"
          echo "Dépot non existant : on initialise...."
        fi

        echo "# Initialisation du depot geogig"
        echo "#"
        echo "geogig --repo \"$REPO_CENTRAL_ONE\" \ "
        echo "       init"
              geogig --repo $REPO_CENTRAL_ONE \
                     init
        echo "#"
        echo "#"
        echo "# Configuration de geogig"
        echo "#"
        echo "geogig --repo \"$REPO_CENTRAL_ONE\" \ "
        echo "       config --global user.name "$GGUSER_NAME""
              geogig --repo $REPO_CENTRAL_ONE \
                     config --global user.name "$GGUSER_NAME"
        echo "geogig --repo \"$REPO_CENTRAL_ONE\" \ "
        echo "       config --global user.email "$GGUSER_EMAIL""
              geogig --repo $REPO_CENTRAL_ONE \
                     config --global user.email "$GGUSER_EMAIL"
        echo "#"
        echo "# On renomme la branche master"
        echo "#"
        echo "geogig --repo \"$REPO_CENTRAL_ONE\" \ "
        echo "       branch -m $BRANCHE_MASTER"
              geogig --repo $REPO_CENTRAL_ONE \
                     branch -m $BRANCHE_MASTER
        echo "#"
        echo "# Import des données de la base origine dans le depot"
        echo "#"
        echo "#   - Dans un premier temps, on lance un script pour remplir une base origine"
        echo "#     dbworkspace/init"
        echo "#"
        echo "#     ./03_baseSqlFilesCreate.py"
        echo "#     ./03_baseSqlFilesInsert.py"
              ./03_baseSqlFilesCreate.py
              ./03_baseSqlFilesInsert.py
        echo "#"
        echo "#   - Dans un second temps, on transvase de la base origine vers le depot"
        echo "#"
        echo "# syntaxe geogig 1.x"
        echo "geogig --repo \"$REPO_CENTRAL_ONE\" \ "
        echo "       pg import --host $DBHOST_WORKSPACE_INI --database $DBNAME_WORKSPACE_INI --user $DBUSER_WORKSPACE_INI --password $DBPASS_WORKSPACE_INI --schema \"$DBSCHE_WORKSPACE_INI\" --all"
              geogig --repo $REPO_CENTRAL_ONE \
                     pg import --host $DBHOST_WORKSPACE_INI --database $DBNAME_WORKSPACE_INI --user $DBUSER_WORKSPACE_INI --password $DBPASS_WORKSPACE_INI --schema "$DBSCHE_WORKSPACE_INI" --all

        ##echo "# syntaxe geogig 2.x"
        ##echo "geogig --repo \"$REPO_CENTRAL_ONE\" \ "
        ##echo "       pg --host $DBHOST_WORKSPACE_INI --database $DBNAME_WORKSPACE_INI --user $DBUSER_WORKSPACE_INI --password $DBPASS_WORKSPACE_INI --schema \"$DBSCHE_WORKSPACE_INI\" import --all"
        ##      geogig --repo $REPO_CENTRAL_ONE \
        ##             pg --host $DBHOST_WORKSPACE_INI --database $DBNAME_WORKSPACE_INI --user $DBUSER_WORKSPACE_INI --password $DBPASS_WORKSPACE_INI --schema "$DBSCHE_WORKSPACE_INI" import --all


        echo "#"
        echo "# Enregistrement des données importées pour validation"
        echo "#"
        echo "geogig --repo \"$REPO_CENTRAL_ONE\" \ "
        echo "       add"
              geogig --repo $REPO_CENTRAL_ONE \
                     add
        echo "#"
        echo "# Commit"
        echo "#"
        echo "geogig --repo \"$REPO_CENTRAL_ONE\" \ "
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
        echo "geogig --repo \"$REPO_CENTRAL_ONE\" \ "
        echo "       branch -c $BRANCHE_DEVELOP"
              geogig --repo $REPO_CENTRAL_ONE \
                     branch -c $BRANCHE_DEVELOP

        echo "#"
        echo "# Status"
        echo "#"
        echo "geogig --repo \"$REPO_CENTRAL_ONE\" \ "
        echo "       status"
              geogig --repo $REPO_CENTRAL_ONE \
                     status
