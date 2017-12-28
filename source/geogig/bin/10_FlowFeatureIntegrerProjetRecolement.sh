#!/bin/sh


DBHOST=localhost
DBPORT=5432
DBNAMEGEOGIG=geogig
DBNAMEORIGINE=sandbox
DBSCHEMAGEOGIG=pcrs
DBSCHEMAORIGINE=a_pcrs
DBREPO=17_vlr
DBUSER=fred
DBPASS=fred
USERNAME='Frédéric Garel'
USERMAIL='frederic.garel@ville-larochelle.fr'



listbranche2='planprojet planexecution topononcontrolee topodecontrole topocontrolee'
listbranche2='planprojet planexecution topodecontrole topocontrolee'

#repo='17_vlr'

#export repo_17_vlr="postgresql://localhost:5432/geogig/pcrs/17_vlr?user=vlr&password=vlr"

repo_17_vlr="postgresql://$DBHOST:$DBPORT/$DBNAMEGEOGIG/$DBSCHEMAGEOGIG/$DBREPO?user=$DBUSER&password=$DBPASS"


echo "#"
echo "# Creation et Initialisation du dépot vlr"
echo "#"
echo "# C'est un depot geogig qui utilise postgresql comme storage backend"
echo "# La doc est sur cette page"
echo "# http://geogig.org/docs/repo/storage.html"
echo "#"
echo "# Initialisation du depot geogig"
echo "#"
echo "#"
echo "geogig --repo $repo_17_vlr \ "
echo "       init"
      geogig --repo $repo_17_vlr \
             init
echo "#"
echo "# Configuration de geogig"
echo "#"
echo "geogig --repo $repo_17_vlr \ "
echo "       config --global user.name \"$USERNAME\""
      geogig --repo $repo_17_vlr \
             config --global user.name "$USERNAME"
echo "geogig --repo $repo_17_vlr \ "
echo "       config --global user.email \"$USERMAIL\""
      geogig --repo $repo_17_vlr \
             config --global user.email "$USERMAIL"
echo "#"
echo "# On renomme la branche master"
echo "#"
echo "geogig --repo $repo_17_vlr \ "
echo "       branch -m topononcontrolee"
      geogig --repo $repo_17_vlr \
             branch -m topononcontrolee
echo "#"
echo "# Import des données de la base origine dans le depot"
echo "#"
echo "geogig --repo $repo_17_vlr \ "
echo "       pg import --host $DBHOST --database $DBNAMEORIGINE --user $DBUSER --password $DBPASS --schema \"$DBSCHEMAORIGINE\" --all"
      geogig --repo $repo_17_vlr \
             pg import --host $DBHOST --database $DBNAMEORIGINE --user $DBUSER --password $DBPASS --schema \"$DBSCHEMAORIGINE\" --all
echo "#"
echo "# Enregistrement des données importées pour validation"
echo "#"
echo "geogig --repo $repo_17_vlr \ "
echo "       add"
      geogig --repo $repo_17_vlr \
             add
echo "#"
echo "# Commit"
echo "#"
echo "geogig --repo $repo_17_vlr \ "
echo "       commit -m 'Commit initial'"
      geogig --repo $repo_17_vlr \
             commit -m 'Commit initial'
echo "#"
echo "# Creation de 4 autres branches"
echo "#"
echo 'for branche in $listbranche2 ; '
echo '    do'
echo '        echo ""'
echo '        geogig --repo $repo_17_vlr \ '
echo '               branch $branche'
echo '    done'
     for branche in $listbranche2 ;
         do
             echo ""
             geogig --repo $repo_17_vlr \
                    branch $branche
         done
echo "#"
echo "# Status"
echo "#"
echo "geogig --repo $repo_17_vlr \ "
echo "       status"
      geogig --repo $repo_17_vlr \
             status
