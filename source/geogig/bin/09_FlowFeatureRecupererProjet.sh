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
        REPOREMOTE="https://geogig.cdalr.fr/pcrs/$DBREPO"

        LISTBRANCHES='develop_enCoursDeMiseAJourInterne feature_projetExterne release_pourDiffusion hotfix_modifRapide'
        BRANCHEDEVELOP='develop_enCoursDeMiseAJourInterne'
        BRANCHEFEATURE='feature_projetExterne'

        echo "#"
        echo "# -----------------------------------------------------------------------------------"
        echo "# Récuperation d'un projet d'un autre utilisateur"
        echo "#"
        echo "# https://danielkummer.github.io/git-flow-cheatsheet/index.fr_FR.html#features"
        echo "# https://gist.github.com/JamesMGreene/cdd0ac49f90c987e45ac"
        echo "# -----------------------------------------------------------------------------------"
        echo "#"

        echo "# Récupération de la branche feature à partir du depot distant"
        echo "#"
        echo "# Cette action effectue les opérations suivantes :"
        echo "#  - Passe sur la branche 'feature'"
        echo "#  - Pull les données à partir du depot distant origin"
        echo "#"
        echo "#"
        echo "# On se positionne dans la branche $BRANCHEFEATURE"
        echo "#"
        echo "# http://geogig.org/docs/repo/branches.html"
        echo "#"
        echo "geogig --repo $REPOONE \ "
        echo '       checkout $BRANCHEFEATURE'
              geogig --repo $REPOONE \
                     checkout $BRANCHEFEATURE
        echo "#"
        echo "# On pull les données à partir du depot origin"
        echo "#"
        echo "# http://geogig.org/docs/repo/remotes.html"
        echo "#"
        echo "geogig --repo $REPOONE \ "
        echo '       pull --rebase origin $BRANCHEFEATURE'
              geogig --repo $REPOONE \
                     pull --rebase origin $BRANCHEFEATURE
