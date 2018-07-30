#!/bin/sh


        . ./05_flowParameters.sh

        echo "# "

        echo "#"
        echo "# -----------------------------------------------------------------------------------"
        echo "# Clonage du dépot central $DBREPO_CENTRAL"
        echo "# vers un depot local $DBREPO_LOCAL"
        echo "# https://danielkummer.github.io/git-flow-cheatsheet/index.fr_FR.html#getting_started"
        echo "# https://gist.github.com/JamesMGreene/cdd0ac49f90c987e45ac"
        echo "# -----------------------------------------------------------------------------------"
        echo "#"
        echo "# C'est un depot geogig qui utilise postgresql comme storage backend"
        echo "# La doc est sur cette page"
        echo "# http://geogig.org/docs/repo/storage.html"
        echo "#"

        echo "#"
        echo "geogig --repo \"$REPO_LOCAL_ONE\" \ "
        echo "       status"
              geogig --repo $REPO_LOCAL_ONE \
                     status
        if [ $? -eq 0 ]         # Test du code de sortie de la commande "geogig status".
        then

          echo "Dépot deja existant : fetch"
          echo "#"
          echo "# Fetch du depot geogig"
          echo "#"
          echo "geogig --repo \"$REPO_LOCAL_ONE\" \ "
          echo "       fetch"
                geogig --repo $REPO_LOCAL_ONE \
                       fetch
        else
          echo "erreur $?"
          echo "Dépot non existant : clone"
          echo "#"
          echo "# Clonage du depot geogig"
          echo "#"
          echo "geogig clone \"$REPO_CENTRAL_ONE\" \ "
          echo "             \"$REPO_LOCAL_ONE\""
                geogig clone $REPO_CENTRAL_ONE \
                             $REPO_LOCAL_ONE
        fi

        #echo "#"
        #echo "# Interrogation du depot local"
        #echo "#"
        #echo "geogig --repo $REPO_LOCAL_ONE ls"
        #      geogig --repo $REPO_LOCAL_ONE ls
        #echo "geogig --repo $REPO_LOCAL_ONE ls EmpriseEchangePCRS"
        #      geogig --repo $REPO_LOCAL_ONE ls EmpriseEchangePCRS
        #echo "geogig --repo $REPO_LOCAL_ONE show EmpriseEchangePCRS"
        #      geogig --repo $REPO_LOCAL_ONE show EmpriseEchangePCRS
        #echo "#"

        #echo "#"
        #echo "# Status"
        #echo "#"
        #echo "geogig --repo $REPO_LOCAL_ONE \ "
        #echo "       status"
        #      geogig --repo $REPO_LOCAL_ONE \
        #             status
