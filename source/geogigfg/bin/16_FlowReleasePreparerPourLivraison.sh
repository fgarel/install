#!/bin/sh


        #DBHOST=localhost
        #DBPORT=5432
        #DBNAMEGEOGIG=geogig
        #DBSCHEMAGEOGIG=pcrs
        #DBNAMEORIGINE=sandbox
        #DBSCHEMAORIGINE=a_pcrs
        #DBREPO=CDA-46-00197-01045-21-A-18-A
        #DBUSER=fred
        #DBPASS=fred
        #USERNAME=Frédéric Garel
        #USERMAIL=frederic.garel@ville-larochelle.fr

        #REPOONE="postgresql://$DBHOST:$DBPORT/$DBNAMEGEOGIG/$DBSCHEMAGEOGIG/$DBREPO?user=$DBUSER&password=$DBPASS"
        #REPOMULTI="postgresql://$DBHOST:$DBPORT/$DBNAMEGEOGIG/$DBSCHEMAGEOGIG?user=$DBUSER&password=$DBPASS"

        #LISTBRANCHES='develop_enCoursDeMiseAJourInterne feature_projetExterne release_pourDiffusion hotfix_modifRapide'
        #BRANCHEDEVELOP='develop_enCoursDeMiseAJourInterne'
        #BRANCHERELEASE='release_pourDiffusion'

        . ./05_flowParameters.sh

        echo "#"
        echo "# -----------------------------------------------------------------------------------"
        echo "# Création d'un livraison (création d'une branche release)"
        echo "#"
        echo "# https://danielkummer.github.io/git-flow-cheatsheet/index.fr_FR.html#release"
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
        echo "# Creation de la branche $BRANCHE_RELEASE_1"
        echo "# et on se positionne dans la branche $BRANCHE_RELEASE_1"
        echo "#"
        echo "# http://geogig.org/docs/repo/branches.html"
        echo "#"
        echo "geogig --repo \"$REPO_INDIVIDUEL_ONE\" \ "
        echo "       branch -c $BRANCHE_RELEASE_1"
              geogig --repo $REPO_INDIVIDUEL_ONE \
                     branch -c $BRANCHE_RELEASE_1
        echo "#"
        echo "# On insiste : on se positionne dans la branche $BRANCHE_RELEASE_1"
        echo "#"
        echo "# http://geogig.org/docs/repo/branches.html"
        echo "#"
        echo "geogig --repo \"$REPO_INDIVIDUEL_ONE\" \ "
        echo "       checkout $BRANCHE_RELEASE_1"
              geogig --repo $REPO_INDIVIDUEL_ONE \
                     checkout $BRANCHE_RELEASE_1
