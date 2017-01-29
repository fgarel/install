#!/bin/sh



# 7ème Partie - suite : Création d'un environnement python
###############################################
# Création d'un environnement python
echo "# 7ème Partie - suite : Création d'un environnement python"
echo "###############################################"
echo "#"
echo "# Installation de geogig dans un environnement virtuel python"
echo "#"
echo "# quel framework choisir entre flask, pyramid ou django ?"
echo "# https://www.airpair.com/python/posts/django-flask-pyramid"

echo "# installation de paquet nécessaire pour Stetl"
echo "# apt-file search gdal-config"
echo "sudo aptitude install libgdal-dev"
      sudo aptitude install libgdal-dev
echo "#"
echo "# Installation de l'environnement virtuel"
echo "#"
echo "# Utilisation de l'utilitaire pew"
echo "pew list_pythons -a | grep 3.6"
      pew list_pythons -a | grep 3.6
echo "pew list_pythons -a | grep 3.5"
      pew list_pythons -a | grep 3.5
echo "#"
echo "pew install 3.5.0"
      pew install 3.5.0
echo "#"
echo "# Nous allons démarrer l'environnement virtuel,"
echo "# Dans cet environnement, l'installation doit continuer avec"
echo "#"
echo "# --------------------"
echo '#'
echo '# Mise à jour de pip'
echo 'pip install --upgrade pip'
echo '#'
echo '# Installation de geogig-py'
echo 'pip install geogig-py'
echo '#'
echo ""
echo "cd nginxFlask"
echo "webgeogig_postinstall.sh"
echo ""
echo "# --------------------"
echo '#'
echo "# --------------------"
echo '# Apres, avoir installé un serveur web, nginx'
echo '# apres, avoir installé un environnemnent virtuel webgeogig'
echo "# on peut maintenant lancé l'environnement virtuel en question"
echo "# se mettre dans le bon repertoire"
echo 'cd nginxFlask'
echo "# --------------------"
echo "#"
echo "# Démarrage de l'environnement virtuel"
echo "#"
echo 'pew new -p $(pythonz locate 3.5.0) webgeogig'
      pew new -p $(pythonz locate 3.5.0) webgeogig
echo "#"
echo ""
