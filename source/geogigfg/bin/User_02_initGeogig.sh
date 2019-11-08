#!/bin/sh


DBHOST=localhost
DBNAME=origine
user=vlr

listbranche2='planprojet planexecution topononcontrolee topodecontrole topocontrolee'
listbranche2='planprojet planexecution topodecontrole topocontrolee'

# repo='17_vlr'

# export repo_17_vlr="postgresql://localhost:5432/geogig/pcrs/17_vlr?user=vlr&password=vlr"

# repo_17_vlr="postgresql://localhost:5432/geogig/pcrs/17_vlr?user=vlr&password=vlr"
repository_pcrs_CDA_46_00197_01045_16_D_16="postgresql://localhost:5432/geogig/pcrs/CDA-46-00197-01045-16-D-16?user=fred&password=fred"
repo=$repository_pcrs_CDA_46_00197_01045_16_D_16

echo "#"
echo "# Creation et Initialisation du dépot specifique à une case"
echo "#"
echo "# C'est un depot geogig qui utilise postgresql comme storage backend"
echo "# La doc est sur cette page"
echo "# http://geogig.org/docs/repo/storage.html"
echo "#"
echo "# Initialisation du depot geogig"
echo "#"
echo "#"
echo "geogig --repo $repo \ "
echo "       init"
      geogig --repo $repo \
             init
echo "#"
echo "# Configuration de geogig"
echo "#"
echo "geogig --repo $repo \ "
echo '       config --global user.name "Frédéric Garel"'
      geogig --repo $repo \
             config --global user.name "Frédéric Garel"
echo "geogig --repo $repo \ "
echo '       config --global user.email "frederic.garel@gmail.com"'
      geogig --repo $repo \
             config --global user.email "frederic.garel@gmail.com"
echo "#"
echo "# On renomme la branche master"
echo "#"
echo "geogig --repo $repo \ "
echo "       branch -m topononcontrolee"
      geogig --repo $repo \
             branch -m topononcontrolee
echo "#"
#echo "# Import des données de la base origine dans le depot"
#echo "#"
#echo "geogig --repo $repo \ "
#echo "       pg import --host $DBHOST --database origine --user $user --password $user --schema \"vlr__etape_01\" --all"
#      geogig --repo $repo \
#             pg import --host $DBHOST --database origine --user $user --password $user --schema \"vlr__etape_01\" --all
#echo "#"
#echo "# Enregistrement des données importées pour validation"
#echo "#"
#echo "geogig --repo $repo \ "
#echo "       add"
#      geogig --repo $repo \
#             add
echo "#"
echo "# Commit"
echo "#"
echo "geogig --repo $repo \ "
echo "       commit -m 'Commit initial'"
      geogig --repo $repo \
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
             geogig --repo $repo \
                    branch $branche
         done

