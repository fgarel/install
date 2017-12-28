#!/bin/sh


DBHOST=localhost
DBPORT=5432
DBNAMEGEOGIG=geogig
DBSCHEMAGEOGIG=pcrs
# DBNAMEORIGINE=sandbox
# DBSCHEMAORIGINE=a_pcrs
# DBREPO='CDA-46-00197-01045-16-D-16'
DBUSER=fred
DBPASS=fred

# REPOONE="postgresql://$DBHOST:$DBPORT/$DBNAMEGEOGIG/$DBSCHEMAGEOGIG/$DBREPO?user=$DBUSER&password=$DBPASS"
REPOMULTI="postgresql://$DBHOST:$DBPORT/$DBNAMEGEOGIG/$DBSCHEMAGEOGIG?user=$DBUSER&password=$DBPASS"

echo "#"
echo "# Lancement du serveur geogig"
echo "#"
echo "# Il va attendre les connexions des clients sur le port 8182"
echo "#"
echo "#"
# echo "export OLDPWDFG=$(pwd)"
#       export OLDPWDFG=$(pwd)
# echo $OLDPWDFG
# echo "cd .."
#       cd ..
# echo "pwd"
#       pwd
# echo "#"
# echo "# ------------------------"
# echo "# Servir un seul repo"
# echo "# ------------------------"
# echo "#"
# echo "cd ~/Documents/install/source/geogig/data/repo"
#       cd ~/Documents/install/source/geogig/data/repo
# echo "#"
# echo "geogig serve"
#       geogig serve
# echo "#"
# echo "# ------------------------"
# echo "# Servir plusieurs repo"
# echo "# ------------------------"
# echo "#"
# echo "cd ~/Documents/install/source/geogig/data"
#       cd ~/Documents/install/source/geogig/data
# echo "#"
# echo "geogig serve -m"
#       geogig serve -m
# echo "#"
# echo "# ------------------------"
# echo "# Servir un seul repo postgresql"
# echo "# ------------------------"
# echo "#"
# echo "#"
# echo "geogig serve $REPOONE"
#       geogig serve $REPOONE
echo "#"
echo "# ------------------------"
echo "# Servir plusieurs repo postgresql"
echo "# ------------------------"
echo "#"
echo "#"
echo "geogig serve -m $REPOMULTI"
      geogig serve -m $REPOMULTI
echo "#"
# echo "cd $OLDPWDFG"
#       cd $OLDPWDFG
# echo "pwd"
#       pwd
