#!/bin/sh



# 7ème Partie - suite : Création d'un environnement python
###############################################
# Création d'un environnement python
echo "# 7ème Partie - suite : Création d'un environnement python"
echo "###############################################"
echo "#"
echo "# Installation d'un environnement virtuel python"
echo "#"
echo "# Dans cet environnement virtuel, installation de :"
echo "# - geogig, pour le versioning"
echo "# - stetl, un etl en python"

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
echo "./webpython/webdjangopcrs_postinstall.sh"
echo "#"
echo "# --------------------"
echo '#'
echo "# --------------------"
echo '# Apres, avoir installé un serveur web, nginx'
echo '# Apres, avoir installé un environnemnent virtuel webdjangopcrs'
echo "# on peut maintenant lancé l'environnement virtuel en question"
echo "# se mettre dans le bon repertoire"
echo 'cd nginxFlask'
echo "# --------------------"
echo "#"
echo "# Démarrage de l'environnement virtuel"
echo "#"
echo 'pew new -p $(pythonz locate 3.5.0) webdjangopcrs'
      pew new -p $(pythonz locate 3.5.0) webdjangopcrs
echo "#"
echo ""
