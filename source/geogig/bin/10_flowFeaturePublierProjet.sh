#!/bin/sh


        . ./05_flowParameters.sh

        echo "# "

        echo "#"
        echo "# -----------------------------------------------------------------------------------"
        echo "# Publication/Partage d'un projet (de   $REPO_INDIVIDUEL_ONE/$BRANCHE_FEATURE_1"
        echo "#                                  vers $REPO_LOCAL_ONE/$BRANCHE_FEATURE_1)"
        echo "# https://danielkummer.github.io/git-flow-cheatsheet/index.fr_FR.html#features"
        echo "# https://gist.github.com/JamesMGreene/cdd0ac49f90c987e45ac"
        echo "# -----------------------------------------------------------------------------------"
        echo "#"

        echo "# Publication/Partage de la branche feature $BRANCHE_FEATURE_1"
        echo "#"
        echo "# Cette action effectue les opérations suivantes :"
        echo "#  - Passe sur la branche 'feature'"
        echo "#  - Push les données sur le depot distant origin"
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
        echo "# On push les données sur le depot origin"
        echo "#"
        echo "# http://geogig.org/docs/repo/remotes.html"
        echo "#"
        echo "geogig --repo \"$REPO_INDIVIDUEL_ONE\" \ "
        echo "       push origin $BRANCHE_FEATURE_1"
              geogig --repo $REPO_INDIVIDUEL_ONE \
                     push origin $BRANCHE_FEATURE_1
