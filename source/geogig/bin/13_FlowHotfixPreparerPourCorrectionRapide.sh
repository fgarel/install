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
        BRANCHEHOTFIX='hotfix_modifRapide'

        echo "#"
        echo "# -----------------------------------------------------------------------------------"
        echo "# Commencement d'une correction rapide (Création d'une branche hotfix)"
        echo "#"
        echo "# https://danielkummer.github.io/git-flow-cheatsheet/index.fr_FR.html#hotfixes"
        echo "# https://gist.github.com/JamesMGreene/cdd0ac49f90c987e45ac"
        echo "# -----------------------------------------------------------------------------------"
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
        echo "# Creation de la branche $BRANCHEHOTFIX"
        echo "# et on se positionne dans la branche $BRANCHEHOTFIX"
        echo "#"
        echo "# http://geogig.org/docs/repo/branches.html"
        echo "#"
        echo "geogig --repo $REPOONE \ "
        echo '       branch -c $BRANCHEHOTFIX'
              geogig --repo $REPOONE \
                     branch -c $BRANCHEHOTFIX
        echo "#"
