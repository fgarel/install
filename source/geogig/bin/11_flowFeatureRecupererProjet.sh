#!/bin/sh


        . ./05_flowParameters.sh

        echo "# "

        echo "#"
        echo "# -----------------------------------------------------------------------------------"
        echo "# Récuperation d'un projet du depot local (de   $REPO_LOCAL_ONE/$BRANCHE_FEATURE_1"
        echo "#                                          vers $REPO_INDIVIDUEL_ONE/$BRANCHE_FEATURE_1)"
        echo "# https://danielkummer.github.io/git-flow-cheatsheet/index.fr_FR.html#features"
        echo "# https://gist.github.com/JamesMGreene/cdd0ac49f90c987e45ac"
        echo "# -----------------------------------------------------------------------------------"
        echo "#"

        echo "# Récupération de la branche feature pouvant être modifiée sur le depot distant"
        echo "#"
        echo "# Cette action effectue les opérations suivantes :"
        echo "#  - Passe sur la branche 'feature'"
        echo "#  - Pull les données à partir du depot distant origin"
        echo "#"
        echo "#"
        echo "# On se positionne dans la branche $BRANCHE_FEATURE_1"
        echo "#"
        echo "# http://geogig.org/docs/repo/branches.html"
        echo "#"
        echo "geogig --repo \"$REPO_INDIVIDUEL_ONE\" \ "
        echo "       checkout $BRANCHE_FEATURE_1"
              geogig --repo $REPO_INDIVIDUEL_ONE \
                     checkout $BRANCHE_FEATURE_1
        echo "#"
        echo "# On pull les données à partir du depot origin"
        echo "#"
        echo "# http://geogig.org/docs/repo/remotes.html"
        echo "#"
        echo "geogig --repo \"$REPO_INDIVIDUEL_ONE\" \ "
        echo "       pull --rebase origin $BRANCHE_FEATURE_1"
              geogig --repo $REPO_INDIVIDUEL_ONE \
                     pull --rebase origin $BRANCHE_FEATURE_1
