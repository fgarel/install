#!/bin/sh



# 7ème Partie - suite : Création d'un environnement python
###############################################
# Création d'un environnement python
echo "# 7ème Partie - suite : Création d'un environnement python"
echo "###############################################"
echo "#"
echo "# Pew peut maintenant être utilisé :"
echo "#"
echo "# Nous allons créer un environnement virtuel pour installer"
echo "# Pgadmin4"
echo "# "
echo "# pgAdmin 4 is a rewrite of pgAdmin III (see below) in Python/Javascript."
echo "# https://www.postgresql.org/ftp/pgadmin3/"
echo "# "
echo "# L'installation se fait avec pip dans un environnement virtuel"
echo "# "
echo "# Nous utiliserons pew, python3"
echo "# "
echo "# Cherchons à connaitre la version de python qui"
echo "# correspond au paquet python3-dev"
echo "#"
echo "# aptitude show python3-dev | grep Version"
        aptitude show python3-dev | grep Version
echo "#"
echo "# Recherche et installation de la version de python utilisée par pew"
echo "#   pew list_pythons -a | grep 3.5.0"
echo "#"
          pew list_pythons -a | grep 3.5.0
echo "#   pew install 3.5.0"
          pew install 3.5.0
echo "#"
echo "#"
echo "# Téléchargement du paquet pgadmin4"
echo "#"
echo "# https://www.pgadmin.org/download/pip4.php?lang=fr_FR"
echo "#"
echo "#"
echo "# wget https://ftp.postgresql.org/pub/pgadmin3/pgadmin4/v1.1/pip/pgadmin4-1.1-py3-none-any.whl"
        wget https://ftp.postgresql.org/pub/pgadmin3/pgadmin4/v1.1/pip/pgadmin4-1.1-py3-none-any.whl

echo "#"
echo "# Puis, on suit la doc qui est ici :"
echo "#  http://askubuntu.com/questions/788457/how-to-install-pgadmin-4-in-server-mode-on-ubuntu-16-04"
echo "#  http://askubuntu.com/questions/835618/install-pgadmin-4-on-ubuntu"
echo "#  https://www.pgadmin.org/docs4/dev/server_deployment.html"
echo "#"
echo "#   Nous allons démarrer l'environnement virtuel,"
echo "#   Dans cet environnement, l'installation doit continuer avec"
echo "#"
echo "#   --------------------"
echo "    sudo -H pip3 install pgadmin4-1.1-py3-none-any.whl"
echo "    cp /home/fred/.local/share/virtualenvs/pgadmin/lib/python3.5/site-packages/pgadmin4/config.py \ "
echo "       /home/fred/.local/share/virtualenvs/pgadmin/lib/python3.5/site-packages/pgadmin4/config-local.py"
echo "    python /home/fred/.local/share/virtualenvs/pgadmin/lib/python3.5/site-packages/pgadmin4/pgAdmin4.py"
echo "#   "
echo "#   Il faut ensuite aller sur :"
echo "#   localhost:5050"
echo "#   --------------------"
echo "#"
echo "#   Démarrage de l'environnement virtuel"
echo "#"
echo '#   pew new -p $(pythonz locate 3.5.0) pgadmin'
          pew new -p $(pythonz locate 3.5.0) pgadmin
echo "#"
echo ""
