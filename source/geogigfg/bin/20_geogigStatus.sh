#!/bin/sh


        . ./05_flowParameters.sh

        echo "# "

        echo "#"
        #echo "# -----------------------------------------------------------------------------------"
        #echo "# On affiche les infos sur le dépot $DBREPO_CENTRAL"
        #echo "#"
        #echo "# https://danielkummer.github.io/git-flow-cheatsheet/index.fr_FR.html#getting_started"
        #echo "# https://gist.github.com/JamesMGreene/cdd0ac49f90c987e45ac"
        #echo "# -----------------------------------------------------------------------------------"
        echo "#"
        #echo "# C'est un depot geogig qui utilise postgresql comme storage backend"
        #echo "# La doc est sur cette page"
        #echo "# http://geogig.org/docs/repo/storage.html"
        echo "#"

        echo "#"
        echo "# -----------------------------------------------------------------------------------"
        echo "# On affiche les infos sur le dépot central $DBREPO_CENTRAL"
        echo "# -----------------------------------------------------------------------------------"
        #echo "# Dans un premier temps, on vérifie si le dépot existe."
        echo "#"
        #echo "geogig --repo \"$REPO_CENTRAL_ONE\" \ "
        #echo "       status"
              geogig --repo $REPO_CENTRAL_ONE \
                     status
        if [ $? -eq 0 ]         # Test du code de sortie de la commande "geogig status".
        then
          echo "#"
          echo "# Log"
          echo "#"
          #echo "geogig --repo \"$REPO_CENTRAL_ONE\" \ "
          #echo "       log --all --summary"
                geogig --repo $REPO_CENTRAL_ONE \
                       log --all --summary
          echo "#"
          echo "# Branch"
          echo "#"
          #echo "geogig --repo \"$REPO_CENTRAL_ONE\" \ "
          #echo "       branch"
                geogig --repo $REPO_CENTRAL_ONE \
                       branch
          echo "#"
          echo "# Show"
          echo "#"
          #echo "geogig --repo \"$REPO_CENTRAL_ONE\" \ "
          #echo "       show EmpriseEchangePCRS/1"
                geogig --repo $REPO_CENTRAL_ONE \
                       show EmpriseEchangePCRS/1
          #exit 1
        else
          echo "erreur $?"
          echo "Dépot non existant...."
        fi


        echo "#"
        echo "# -----------------------------------------------------------------------------------"
        echo "# On affiche les infos sur le dépot local $DBREPO_LOCAL"
        echo "# -----------------------------------------------------------------------------------"
        #echo "# Dans un premier temps, on vérifie si le dépot existe."
        echo "#"
        #echo "geogig --repo \"$REPO_LOCAL_ONE\" \ "
        #echo "       status"
              geogig --repo $REPO_LOCAL_ONE \
                     status
        if [ $? -eq 0 ]         # Test du code de sortie de la commande "geogig status".
        then
          echo "#"
          echo "# Log"
          echo "#"
          #echo "geogig --repo \"$REPO_LOCAL_ONE\" \ "
          #echo "       log --all --summary"
                geogig --repo $REPO_LOCAL_ONE \
                       log --all --summary
          echo "#"
          echo "# Branch"
          echo "#"
          #echo "geogig --repo \"$REPO_LOCAL_ONE\" \ "
          #echo "       branch"
                geogig --repo $REPO_LOCAL_ONE \
                       branch
          echo "#"
          echo "# Show"
          echo "#"
          #echo "geogig --repo \"$REPO_LOCAL_ONE\" \ "
          #echo "       show EmpriseEchangePCRS/1"
                geogig --repo $REPO_LOCAL_ONE \
                       show EmpriseEchangePCRS/1
          #exit 1
        else
          echo "erreur $?"
          echo "Dépot non existant...."
        fi


        echo "#"
        echo "# -----------------------------------------------------------------------------------"
        echo "# On affiche les infos sur le dépot $DBREPO_INDIVIDUEL"
        echo "# -----------------------------------------------------------------------------------"
        #echo "# Dans un premier temps, on vérifie si le dépot existe."
        echo "#"
        #echo "geogig --repo \"$REPO_INDIVIDUEL_ONE\" \ "
        #echo "       status"
              geogig --repo $REPO_INDIVIDUEL_ONE \
                     status
        if [ $? -eq 0 ]         # Test du code de sortie de la commande "geogig status".
        then
          echo "#"
          echo "# Log"
          echo "#"
          #echo "geogig --repo \"$REPO_INDIVIDUEL_ONE\" \ "
          #echo "       log --all --summary"
                geogig --repo $REPO_INDIVIDUEL_ONE \
                       log --all --summary
          echo "#"
          echo "# Branch"
          echo "#"
          #echo "geogig --repo \"$REPO_INDIVIDUEL_ONE\" \ "
          #echo "       branch"
                geogig --repo $REPO_INDIVIDUEL_ONE \
                       branch
          echo "#"
          echo "# Show"
          echo "#"
          #echo "geogig --repo \"$REPO_INDIVIDUEL_ONE\" \ "
          #echo "       show EmpriseEchangePCRS/1"
                geogig --repo $REPO_INDIVIDUEL_ONE \
                       show EmpriseEchangePCRS/1
          #exit 1
        else
          echo "erreur $?"
          echo "Dépot non existant...."
        fi
