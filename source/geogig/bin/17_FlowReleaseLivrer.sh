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
        #BRANCHEMASTER='master_selonInfosDisponibles'
        #BRANCHEDEVELOP='develop_enCoursDeMiseAJourInterne'
        #BRANCHERELEASE='release_pourDiffusion'
        #RELEASETAG='1.0'

        . ./05_flowParameters.sh

        echo "#"
        echo "# -----------------------------------------------------------------------------------"
        echo "# Finalisation de la livraison"
        echo "#"
        echo "# https://danielkummer.github.io/git-flow-cheatsheet/index.fr_FR.html#release"
        echo "# https://gist.github.com/JamesMGreene/cdd0ac49f90c987e45ac"
        echo "# -----------------------------------------------------------------------------------"
        echo "#"

        echo "# Termine la livraison d'un plan"
        echo "#"
        echo "# Cette action effectue les opérations suivantes :"
        echo "#  - Passe sur la branche 'master'"
        echo "#  - Fusionne 'release' dans 'master'"
        echo "#  - Tag de la version"
        echo "#  - Passe sur la branche 'develop'"
        echo "#  - Fusionne 'release' dans 'develop'"
        echo "#  - Supprime la branche 'release'"
        echo "#"
        echo "#"
        echo "# On se positionne dans la branche $BRANCHE_MASTER"
        echo "#"
        echo "# http://geogig.org/docs/repo/branches.html"
        echo "#"
        echo "geogig --repo \"$REPO_INDIVIDUEL_ONE\" \ "
        echo "       checkout $BRANCHE_MASTER"
              geogig --repo $REPO_INDIVIDUEL_ONE \
                     checkout $BRANCHE_MASTER
        echo "#"
        echo "# On merge la branche $BRANCHE_RELEASE_1 dans la branche $BRANCHE_MASTER"
        echo "#"
        echo "# http://geogig.org/docs/repo/merging.html"
        echo "#"
        echo "geogig --repo \"$REPO_INDIVIDUEL_ONE\" \ "
        echo "       merge $BRANCHE_RELEASE_1"
              geogig --repo $REPO_INDIVIDUEL_ONE \
                     merge $BRANCHE_RELEASE_1
        echo "#"
        echo "# On tag la version"
        echo "#"
        echo "# http://geogig.org/docs/repo/merging.html"
        echo "#"
        echo "geogig --repo \"$REPO_INDIVIDUEL_ONE\" \ "
        echo "       tag -a $RELEASETAG"
              geogig --repo $REPO_INDIVIDUEL_ONE \
                     tag -a $RELEASETAG

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
        echo "# On merge la branche $BRANCHE_RELEASE_1 dans la branche $BRANCHE_DEVELOP"
        echo "#"
        echo "# http://geogig.org/docs/repo/merging.html"
        echo "#"
        echo "geogig --repo \"$REPO_INDIVIDUEL_ONE\" \ "
        echo "       merge $BRANCHE_RELEASE_1"
              geogig --repo $REPO_INDIVIDUEL_ONE \
                     merge $BRANCHE_RELEASE_1
        echo "#"
        echo "# On supprime la branche $BRANCHE_RELEASE_1"
        echo "#"
        echo "# http://geogig.org/docs/repo/merging.html"
        echo "#"
        echo "geogig --repo \"$REPO_INDIVIDUEL_ONE\" \ "
        echo "       branch -d $BRANCHE_RELEASE_1"
              geogig --repo $REPO_INDIVIDUEL_ONE \
                     branch -d $BRANCHE_RELEASE_1
