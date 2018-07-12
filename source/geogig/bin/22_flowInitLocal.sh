#!/bin/sh


# chargement des variables
. ./05_flowParameters.sh

echo "#"
echo "# -----------------------------------------------------------------------------------"
echo "# Initialisation du dépot Local"
echo "#"
echo "# https://danielkummer.github.io/git-flow-cheatsheet/index.fr_FR.html#getting_started"
echo "# https://gist.github.com/JamesMGreene/cdd0ac49f90c987e45ac"
echo "# -----------------------------------------------------------------------------------"
echo "#"
echo "# C'est un depot geogig qui utilise postgresql comme storage backend"
echo "# La doc est sur cette page"
echo "# http://geogig.org/docs/repo/storage.html"
# echo "#"
# echo "# Initialisation du depot geogig local"
# echo "#"
# echo "geogig --repo $REPO_LOCAL_ONE \ "
# echo "       init"
#      geogig --repo $REPO_LOCAL_ONE \
#             init
# echo "#"
# echo "# Configuration du dépot geogig local"
# echo "#"
# echo "geogig --repo $REPO_LOCAL_ONE \ "
# echo "       config --global user.name "$GGUSER_NAME""
#       geogig --repo $REPO_LOCAL_ONE \
#              config --global user.name "$GGUSER_NAME"
# echo "geogig --repo $REPO_LOCAL_ONE \ "
# echo "       config --global user.email "$GGUSER_EMAIL""
#       geogig --repo $REPO_LOCAL_ONE \
#              config --global user.email "$GGUSER_EMAIL"
# echo "#"
# echo "# On renomme la branche master"
# echo "#"
# echo "geogig --repo $REPO_LOCAL_ONE \ "
# echo "       branch -m $BRANCHE_MASTER"
#       geogig --repo $REPO_LOCAL_ONE \
#              branch -m $BRANCHE_MASTER
echo "#"
echo "# Clonage du depot central vers le dépot local"
echo "#"
echo "geogig \ "
echo "       clone $REPO_CENTRAL_ONE $REPO_LOCAL_ONE"
      geogig \
             clone $REPO_CENTRAL_ONE $REPO_LOCAL_ONE
# echo "#"
# echo "# Fetch du depot central vers le dépot local"
# echo "#"
# echo "geogig \ "
# echo "       fetch $REPO_CENTRAL_ONE $REPO_LOCAL_ONE"
#       geogig \
#              fetch $REPO_CENTRAL_ONE $REPO_LOCAL_ONE
# echo "#"
# echo "# Ajout de la branche distante"
# echo "#"
# echo "geogig --repo $REPO_LOCAL_ONE \ "
# echo "       add origin $REPO_CENTRAL_ONE"
#       geogig --repo $REPO_LOCAL_ONE \
#              add origin $REPO_CENTRAL_ONE
echo "#"
echo "# Configuration du dépot geogig local"
echo "#"
echo "geogig --repo $REPO_LOCAL_ONE \ "
echo "       config --global user.name "$GGUSER_NAME""
      geogig --repo $REPO_LOCAL_ONE \
             config --global user.name "$GGUSER_NAME"
echo "geogig --repo $REPO_LOCAL_ONE \ "
echo "       config --global user.email "$GGUSER_EMAIL""
      geogig --repo $REPO_LOCAL_ONE \
             config --global user.email "$GGUSER_EMAIL"
echo "#"
echo "# Commit"
echo "#"
echo "geogig --repo $REPO_LOCAL_ONE \ "
echo "       commit -m 'Commit initial'"
      geogig --repo $REPO_LOCAL_ONE \
             commit -m 'Commit initial'
echo "#"
echo "# On crée et on se postionne sur la branche develop"
echo "#"
echo "geogig --repo $REPO_LOCAL_ONE \ "
echo "       branch -c $BRANCHE_DEVELOP"
      geogig --repo $REPO_LOCAL_ONE \
             branch -c $BRANCHE_DEVELOP
echo "#"
echo "# Status"
echo "#"
echo "geogig --repo $REPO_LOCAL_ONE \ "
echo "       status"
      geogig --repo $REPO_LOCAL_ONE \
             status
echo "#"
