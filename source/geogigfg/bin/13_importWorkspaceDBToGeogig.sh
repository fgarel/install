#!/bin/sh


        . ./05_flowParameters.sh

        echo "# "

        echo "#"
        echo "# -----------------------------------------------------------------------------------"
        echo "# Import des données de $DBNAME_WORKSPACE_FIN/$DBSCHE_WORKSPACE_FIN"
        echo "#           vers geogig $REPO_INDIVIDUEL_ONE/$BRANCHE_FEATURE_1"
        echo "# https://danielkummer.github.io/git-flow-cheatsheet/index.fr_FR.html#getting_started"
        echo "# https://gist.github.com/JamesMGreene/cdd0ac49f90c987e45ac"
        echo "# -----------------------------------------------------------------------------------"
        echo "#"
        echo "# C'est un depot geogig qui utilise postgresql comme storage backend"
        echo "# La doc est sur cette page"
        echo "# http://geogig.org/docs/repo/storage.html"
        echo "#"


        echo "# On transvase du depot vers la base dbworkspace"
        echo "#"
        echo "geogig --repo \"$REPO_INDIVIDUEL_ONE\" \ "
        echo "       pg import --host $DBHOST_WORKSPACE_FIN --database $DBNAME_WORKSPACE_FIN --user $DBUSER_WORKSPACE_FIN --password $DBPASS_WORKSPACE_FIN --schema \"$DBSCHE_WORKSPACE_FIN\" --all"
              #geogig --repo $REPO_INDIVIDUEL_ONE \
              #       pg export --host $DBHOST_WORKSPACE --database $DBNAME_WORKSPACE --user $DBUSER_WORKSPACE --password $DBPASS_WORKSPACE --schema "$DBSCHE_WORKSPACE" --all
              geogig --repo $REPO_INDIVIDUEL_ONE \
                     pg import --host $DBHOST_WORKSPACE_FIN --database $DBNAME_WORKSPACE_FIN --user $DBUSER_WORKSPACE_FIN --password $DBPASS_WORKSPACE_FIN --schema "$DBSCHE_WORKSPACE_FIN" --all
