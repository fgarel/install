#!/bin/sh


# chargement des variables
. ./05_flowParameters.sh

echo "#"
echo "# -----------------------------------------------------------------------------------"
echo "# Initialisation du dépot Central"
echo "#"
echo "# https://danielkummer.github.io/git-flow-cheatsheet/index.fr_FR.html#getting_started"
echo "# https://gist.github.com/JamesMGreene/cdd0ac49f90c987e45ac"
echo "# -----------------------------------------------------------------------------------"
echo "#"
echo "# C'est un depot geogig qui utilise postgresql comme storage backend"
echo "# La doc est sur cette page"
echo "# http://geogig.org/docs/repo/storage.html"
echo "#"
echo "# Initialisation du depot geogig central"
echo "#"
echo "geogig --repo $REPO_CENTRAL_ONE \ "
echo "       init"
      geogig --repo $REPO_CENTRAL_ONE \
             init
echo "#"
echo "# Configuration du dépot geogig central"
echo "#"
echo "geogig --repo $REPO_CENTRAL_ONE \ "
echo "       config --global user.name "$GGUSER_NAME""
      geogig --repo $REPO_CENTRAL_ONE \
             config --global user.name "$GGUSER_NAME"
echo "geogig --repo $REPO_CENTRAL_ONE \ "
echo "       config --global user.email "$GGUSER_EMAIL""
      geogig --repo $REPO_CENTRAL_ONE \
             config --global user.email "$GGUSER_EMAIL"
echo "#"
echo "# On renomme la branche master"
echo "#"
echo "geogig --repo $REPO_CENTRAL_ONE \ "
echo "       branch -m $BRANCHE_MASTER"
      geogig --repo $REPO_CENTRAL_ONE \
             branch -m $BRANCHE_MASTER
echo "#"
echo "# Import des données de la base origine dans le depot"
echo "#"
echo "#   - Dans un premier temps, on lance un script pour remplir une base origine"
echo "#"
echo "#     ./03_baseUpdate.py"
            ./03_baseUpdate.py
echo "#"
echo "#   - Dans un second temps, on transvase de la base origine vers le depot"
echo "#"
echo "geogig --repo $REPO_CENTRAL_ONE \ "
echo '       pg import --host $DBHOST_ORIGINE --database $DBNAME_ORIGINE --user $DBUSER_ORIGINE --password $DBPASS_ORIGINE --schema "$DBSCHE_ORIGINE" --all'
      geogig --repo $REPO_CENTRAL_ONE \
             pg import --host $DBHOST_ORIGINE --database $DBNAME_ORIGINE --user $DBUSER_ORIGINE --password $DBPASS_ORIGINE --schema "$DBSCHE_ORIGINE" --all
echo "#"
echo "# Enregistrement des données importées pour validation"
echo "#"
echo "geogig --repo $REPO_CENTRAL_ONE \ "
echo "       add"
      geogig --repo $REPO_CENTRAL_ONE \
             add
echo "#"
echo "# Commit"
echo "#"
echo "geogig --repo $REPO_CENTRAL_ONE \ "
echo "       commit -m 'Commit initial'"
      geogig --repo $REPO_CENTRAL_ONE \
             commit -m 'Commit initial'
echo "#"
echo "# Status"
echo "#"
echo "geogig --repo $REPO_CENTRAL_ONE \ "
echo "       status"
      geogig --repo $REPO_CENTRAL_ONE \
             status
echo "#"
