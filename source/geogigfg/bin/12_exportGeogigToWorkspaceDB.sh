#!/bin/sh


        . ./05_flowParameters.sh

        echo "# "

        echo "#"
        echo "# -----------------------------------------------------------------------------------"
        echo "# Export des données de geogig $REPO_INDIVIDUEL_ONE/$BRANCHE_FEATURE_1"
        echo "#                         vers $DBNAME_WORKSPACE_FIN/$DBSCHE_WORKSPACE_FIN"
        echo "# https://danielkummer.github.io/git-flow-cheatsheet/index.fr_FR.html#getting_started"
        echo "# https://gist.github.com/JamesMGreene/cdd0ac49f90c987e45ac"
        echo "# -----------------------------------------------------------------------------------"
        echo "#"
        echo "# C'est un depot geogig qui utilise postgresql comme storage backend"
        echo "# La doc est sur cette page"
        echo "# http://geogig.org/docs/repo/storage.html"
        echo "#"


        echo "#   - Dans un premier temps, on lance un script pour remplir une base dbworkspace/pcrs"
        echo "#     dbworkspace/init"
        echo "#"
        echo "#     ./03_baseSqlFilesCreate.py"
              ./03_baseSqlFilesCreate.py
        echo "#"
        echo "#   - Dans un second temps, on transvase de la base origine vers le depot"
        echo "# On transvase du depot vers la base dbworkspace"
        echo "#"
        echo 'for TABLE in $LISTTABLES_WITH_OVERWRITE ; '
        echo '    do'
        echo '        echo "# table $TABLE"'
        echo '        echo "# syntaxe geogig 1.x"'
        echo "        geogig --repo \"$REPO_INDIVIDUEL_ONE\" \ "
        echo "               pg export --host $DBHOST_WORKSPACE_FIN --database $DBNAME_WORKSPACE_FIN --user $DBUSER_WORKSPACE_FIN --password $DBPASS_WORKSPACE_FIN --schema \"$DBSCHE_WORKSPACE_FIN\" --overwrite \$TABLE \$TABLE"
        echo '        echo "# syntaxe geogig 2.x"'
        echo "        geogig --repo \"$REPO_INDIVIDUEL_ONE\" \ "
        echo "               pg --host $DBHOST_WORKSPACE_FIN --database $DBNAME_WORKSPACE_FIN --user $DBUSER_WORKSPACE_FIN --password $DBPASS_WORKSPACE_FIN --schema \"$DBSCHE_WORKSPACE_FIN\" export --overwrite \$TABLE \$TABLE"
        echo '    done'
              for TABLE in $LISTTABLES_WITH_OVERWRITE ;
                  do
                      echo "# table $TABLE"
                      #echo "# syntaxe geogig 1.x"
                      geogig --repo $REPO_INDIVIDUEL_ONE \
                             pg export --host $DBHOST_WORKSPACE_FIN --database $DBNAME_WORKSPACE_FIN --user $DBUSER_WORKSPACE_FIN --password $DBPASS_WORKSPACE_FIN --schema "$DBSCHE_WORKSPACE_FIN" --overwrite $TABLE $TABLE
                      #echo "# syntaxe geogig 2.x"
                      #geogig --repo $REPO_INDIVIDUEL_ONE \
                      #       pg --host $DBHOST_WORKSPACE_FIN --database $DBNAME_WORKSPACE_FIN --user $DBUSER_WORKSPACE_FIN --password $DBPASS_WORKSPACE_FIN --schema "$DBSCHE_WORKSPACE_FIN" export --overwrite $TABLE $TABLE
                  done
        echo "#"
        echo 'for TABLE in $LISTTABLES_WITHOUT_OVERWRITE ; '
        echo '    do'
        echo '        echo "# table $TABLE"'
        echo "        geogig --repo \"$REPO_INDIVIDUEL_ONE\" \ "
        echo "               pg export --host $DBHOST_WORKSPACE_FIN --database $DBNAME_WORKSPACE_FIN --user $DBUSER_WORKSPACE_FIN --password $DBPASS_WORKSPACE_FIN --schema \"$DBSCHE_WORKSPACE_FIN\" \$TABLE \$TABLE"
        echo '    done'
              #for TABLE in $LISTTABLES_WITHOUT_OVERWRITE ;
              #    do
              #        echo "# table $TABLE"
              #        geogig --repo $REPO_INDIVIDUEL_ONE \
              #               pg export --host $DBHOST_WORKSPACE_FIN --database $DBNAME_WORKSPACE_FIN --user $DBUSER_WORKSPACE_FIN --password $DBPASS_WORKSPACE_FIN --schema "$DBSCHE_WORKSPACE_FIN" $TABLE $TABLE
              #    done
