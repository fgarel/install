#!/bin/sh



# 7ème Partie - suite : Création d'un environnement python
###############################################
# Création d'un environnement python
echo "# 7ème Partie - suite : Création d'un environnement python"
echo "###############################################"
echo "#"
echo "# Installation d'un comparateur de framework dans un environnement virtuel python"
echo "#"
echo "# Quel framework choisir entre flask, pyramid ou django ?"
echo "# https://www.airpair.com/python/posts/django-flask-pyramid"
echo "# https://github.com/ryansb/wut4lunch_demos"

echo "#"
echo "# Installation de l'environnement virtuel"
echo "#"
echo "# Utilisation de l'utilitaire pew"
echo "pew list_pythons -a | grep 3.5"
      pew list_pythons -a | grep 3.5
echo "pew list_pythons -a | grep 2.7"
      pew list_pythons -a | grep 2.7
echo "#"
echo "pew install 3.5.0"
      pew install 3.5.0
echo "pew install 2.7.11"
      pew install 2.7.11
echo "#"
echo "# Nous allons démarrer l'environnement virtuel,"
echo "# Dans cet environnement, l'installation doit continuer avec"
echo "#"
echo "# --------------------"
echo '#'
echo "./webpython/webframework_postinstall.sh"
echo ""
echo "# --------------------"
echo '#'
echo "# --------------------"
echo '# Apres, avoir installé un serveur web, nginx'
echo '# Apres, avoir installé un environnemnent virtuel webframework'
echo "# on peut maintenant lancé l'environnement virtuel en question"
echo "# se mettre dans le bon repertoire"
echo 'cd nginxFlask'
echo "# --------------------"
echo "#"
echo "# Démarrage de l'environnement virtuel"
echo "#"
#echo 'pew new -p $(pythonz locate 3.5.0) webframework'
#      pew new -p $(pythonz locate 3.5.0) webframework
echo 'pew new -p $(pythonz locate 2.7.11) webframework'
      pew new -p $(pythonz locate 2.7.11) webframework
echo "#"
echo ""
