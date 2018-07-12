#!/bin/sh

# chargement des variables
. ./05_flowParameters.sh

echo "#"
echo "# Lancement du serveur geogig"
echo "#"
echo "# Il va attendre les connexions des clients sur un port d'ecoute"
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
echo "# ------------------------"
echo "# Servir un seul repo postgresql"
echo "# ------------------------"
echo "#"
echo "# Depot Central"
echo "geogig serve $REPO_CENTRAL_ONE -p $REPO_PORT_CENTRAL_ONE &"
      geogig serve $REPO_CENTRAL_ONE -p $REPO_PORT_CENTRAL_ONE &
echo "#"
echo "# Depot Local"
echo "geogig serve $REPO_LOCAL_ONE -p $REPO_PORT_LOCAL_ONE &"
      geogig serve $REPO_LOCAL_ONE -p $REPO_PORT_LOCAL_ONE &
echo "#"
echo "# ------------------------"
echo "# Servir plusieurs repo postgresql"
echo "# ------------------------"
echo "#"
echo "# Depot Central"
echo "geogig serve -m $REPO_CENTRAL_MULTI -p $REPO_PORT_CENTRAL_MULTI &"
      geogig serve -m $REPO_CENTRAL_MULTI -p $REPO_PORT_CENTRAL_MULTI &
echo "#"
echo "# Depot Local"
echo "geogig serve -m $REPO_LOCAL_MULTI -p $REPO_PORT_LOCAL_MULTI &"
      geogig serve -m $REPO_LOCAL_MULTI -p $REPO_PORT_LOCAL_MULTI &
echo "#"
sleep 5
# echo "cd $OLDPWDFG"
#       cd $OLDPWDFG
# echo "pwd"
#       pwd
