#!/bin/sh


        DBHOST=pg.cdalr.fr
        DBPORT=5432
        DBNAMEGEOGIG=geogig
        #DBSCHEMAGEOGIG=pcrs
        DBSCHEMAGEOGIG=repos
        DBNAMEORIGINE=sandbox
        DBSCHEMAORIGINE=a_pcrs
        #DBREPO=CDA-46-00197-01045-21-A-18-A
        DBREPO=CDA-46-00197-01045-16-D-16
        DBUSER=fred
        DBPASS=fgpass
        USERNAME=Frédéric Garel
        USERMAIL=frederic.garel@ville-larochelle.fr

        REPOONE="postgresql://$DBHOST:$DBPORT/$DBNAMEGEOGIG/$DBSCHEMAGEOGIG/$DBREPO?user=$DBUSER&password=$DBPASS"
        REPOMULTI="postgresql://$DBHOST:$DBPORT/$DBNAMEGEOGIG/$DBSCHEMAGEOGIG?user=$DBUSER&password=$DBPASS"

        LISTBRANCHES='develop_enCoursDeMiseAJourInterne feature_projetExterne release_pourDiffusion hotfix_modifRapide'
        BRANCHEDEVELOP='develop_enCoursDeMiseAJourInterne'
        BRANCHEFEATURE='feature_projetExterne'

        echo "#"
        echo "# -----------------------------------------------------------------------------------"
        echo "# Création d'un projet (creation d'une branche feature)"
        echo "#"
        echo "# https://danielkummer.github.io/git-flow-cheatsheet/index.fr_FR.html#features"
        echo "# https://gist.github.com/JamesMGreene/cdd0ac49f90c987e45ac"
        echo "# -----------------------------------------------------------------------------------"
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
        echo "# Creation de la branche $BRANCHEFEATURE"
        echo "# et on se positionne dans la branche $BRANCHEFEATURE"
        echo "#"
        echo "# http://geogig.org/docs/repo/branches.html"
        echo "#"
        echo "geogig --repo $REPOONE \ "
        echo '       branch -c $BRANCHEFEATURE'
              geogig --repo $REPOONE \
                     branch -c $BRANCHEFEATURE
        echo "#"
