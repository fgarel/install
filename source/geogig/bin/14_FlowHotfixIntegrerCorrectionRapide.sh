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
        BRANCHEMASTER='master_selonInfosDisponibles'
        BRANCHEDEVELOP='develop_enCoursDeMiseAJourInterne'
        BRANCHEHOTFIX='hotfix_modifRapide'
        
        echo "#"
        echo "# -----------------------------------------------------------------------------------"
        echo "# Integration des corrections rapides"
        echo "#"
        echo "# https://danielkummer.github.io/git-flow-cheatsheet/index.fr_FR.html#hotfixes"
        echo "# https://gist.github.com/JamesMGreene/cdd0ac49f90c987e45ac"
        echo "# -----------------------------------------------------------------------------------"
        echo "#"

        echo "# Integration des corrections rapides"
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
        echo "# On se positionne dans la branche $BRANCHEMASTER"
        echo "#"
        echo "# http://geogig.org/docs/repo/branches.html"
        echo "#"
        echo "geogig --repo $REPOONE \ "
        echo '       checkout $BRANCHEMASTER'
              geogig --repo $REPOONE \
                     checkout $BRANCHEMASTER
        echo "#"
        echo "# On merge la branche $BRANCHEHOTFIX dans la branche $BRANCHEMASTER"
        echo "#"
        echo "# http://geogig.org/docs/repo/merging.html"
        echo "#"
        echo "geogig --repo $REPOONE \ "
        echo '       merge $BRANCHEHOTFIX'
              geogig --repo $REPOONE \
                     merge $BRANCHEHOTFIX
        echo "#"
        echo "# On tag la version"
        echo "#"
        echo "# http://geogig.org/docs/repo/merging.html"
        echo "#"
        echo "geogig --repo $REPOONE \ "
        echo '       tag -a $RELEASETAG'
              geogig --repo $REPOONE \
                     tag -a $RELEASETAG
        
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
        echo "# On merge la branche $BRANCHEHOTFIX dans la branche $BRANCHEDEVELOP"
        echo "#"
        echo "# http://geogig.org/docs/repo/merging.html"
        echo "#"
        echo "geogig --repo $REPOONE \ "
        echo '       merge $BRANCHEHOTFIX'
              geogig --repo $REPOONE \
                     merge $BRANCHEHOTFIX
        echo "#"
        echo "# On supprime la branche $BRANCHEHOTFIX"
        echo "#"
        echo "# http://geogig.org/docs/repo/merging.html"
        echo "#"
        echo "geogig --repo $REPOONE \ "
        echo '       branch -d $BRANCHEHOTFIX'
              geogig --repo $REPOONE \
                     branch -d $BRANCHEHOTFIX