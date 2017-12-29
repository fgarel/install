#!/bin/sh


        DBHOST=localhost
        DBPORT=5432
        DBNAMEGEOGIG=geogig
        DBSCHEMAGEOGIG=pcrs
        DBNAMEORIGINE=sandbox
        DBSCHEMAORIGINE=a_pcrs
        DBREPO=CDA-46-00197-01045-21-A-18-A
        DBUSER=fred
        DBPASS=fred
        USERNAME=Frédéric Garel
        USERMAIL=frederic.garel@ville-larochelle.fr

        REPOONE="postgresql://$DBHOST:$DBPORT/$DBNAMEGEOGIG/$DBSCHEMAGEOGIG/$DBREPO?user=$DBUSER&password=$DBPASS"
        REPOMULTI="postgresql://$DBHOST:$DBPORT/$DBNAMEGEOGIG/$DBSCHEMAGEOGIG?user=$DBUSER&password=$DBPASS"

        LISTBRANCHES='develop_enCoursDeMiseAJourInterne feature_projetExterne release_pourDiffusion hotfix_modifRapide'
        BRANCHEDEVELOP='develop_enCoursDeMiseAJourInterne'
        BRANCHEFEATURE='feature_projetExterne'

        echo "#"
        echo "# -----------------------------------------------------------------------------------"
        echo "# Integration d'un plan de recolement (à la fin d'un amenagement, d'un projet)"
        echo "#"
        echo "# https://danielkummer.github.io/git-flow-cheatsheet/index.fr_FR.html#features"
        echo "# https://gist.github.com/JamesMGreene/cdd0ac49f90c987e45ac"
        echo "# -----------------------------------------------------------------------------------"
        echo "#"

        echo "# Termine le développement d'une fonctionnalité"
        echo "#"
        echo "# Cette action effectue les opérations suivantes :"
        echo "#  - Passe sur la branche 'develop'"
        echo "#  - Fusionne 'feature' dans 'develop'"
        echo "#  - Supprime la branche de fonctionnalité"
        echo "#"
        echo "#"
        echo "# On se positionne dans la branche $BRANCHEDEVELOP"
        echo "#"
        echo "# http://geogig.org/docs/repo/branches.html"
        echo "#"
        echo "geogig --repo $REPOONE \ "
        echo '       checkout $BRANCHEDEVELOP'
              geogig --repo $REPOONE \
                     checkout $BRANCHEDEVELOP
        echo "#"
        echo "# On merge la branche $BRANCHEFEATURE dans la branche $BRANCHEDEVELOP"
        echo "#"
        echo "# http://geogig.org/docs/repo/merging.html"
        echo "#"
        echo "geogig --repo $REPOONE \ "
        echo '       merge $BRANCHEFEATURE'
              geogig --repo $REPOONE \
                     merge $BRANCHEFEATURE
        echo "#"
        echo "# On supprime la branche $BRANCHEFEATURE"
        echo "#"
        echo "# http://geogig.org/docs/repo/merging.html"
        echo "#"
        echo "geogig --repo $REPOONE \ "
        echo '       branch -d $BRANCHEFEATURE'
              geogig --repo $REPOONE \
                     branch -d $BRANCHEFEATURE
