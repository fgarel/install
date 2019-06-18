#!/bin/sh


        . ./05_flowParameters.sh

        echo "# "

        echo "#"
        echo "# -----------------------------------------------------------------------------------"
        echo "# Création d'un projet (creation d'une branche $BRANCHE_FEATURE_1)"
        echo "#"
        echo "# https://danielkummer.github.io/git-flow-cheatsheet/index.fr_FR.html#features"
        echo "# https://gist.github.com/JamesMGreene/cdd0ac49f90c987e45ac"
        echo "# -----------------------------------------------------------------------------------"
        echo "#"

        echo "# On se positionne dans la branche $BRANCHE_DEVELOP"
        echo "#"
        echo "# http://geogig.org/docs/repo/branches.html"
        echo "#"
        echo "geogig --repo \"$REPO_INDIVIDUEL_ONE\" \ "
        echo "       checkout $BRANCHE_DEVELOP"
              geogig --repo $REPO_INDIVIDUEL_ONE \
                     checkout $BRANCHE_DEVELOP
        echo "#"
        echo "# Creation de la branche $BRANCHE_FEATURE_1"
        echo "# et on se positionne dans la branche $BRANCHE_FEATURE_1"
        echo "#"
        echo "# http://geogig.org/docs/repo/branches.html"
        echo "#"
        echo "geogig --repo \"$REPO_INDIVIDUEL_ONE\" \ "
        echo "       branch -c $BRANCHE_FEATURE_1"
              geogig --repo $REPO_INDIVIDUEL_ONE \
                     branch -c $BRANCHE_FEATURE_1
        echo "#"
        echo "# On insiste : on se positionne dans la branche $BRANCHE_FEATURE_1"
        echo "#"
        echo "# http://geogig.org/docs/repo/branches.html"
        echo "#"
        echo "geogig --repo \"$REPO_INDIVIDUEL_ONE\" \ "
        echo "       checkout $BRANCHE_FEATURE_1"
              geogig --repo $REPO_INDIVIDUEL_ONE \
                     checkout $BRANCHE_FEATURE_1
