#!/bin/sh

echo "# Script à lancer l'interieur de l'environnement virtuel python appelé"
echo "# webdjangotaiga"
echo "# Cet environnement a été créé grace au Script"
echo "# installPythonWebDjangoTaiga.sh"
echo "#"
echo "# Le but de cet environnement est d'executer"
echo "# un site django avec liaison vers taiga"
echo "#"
echo ""
echo "# On commence par la mise à jour de pip"
echo "pip install --upgrade pip"
      pip install --upgrade pip
echo "#"
echo "# Installation de django"
echo "pip install django"
      pip install django
echo "#"
#echo "# Installation de ..."
#      pip install geogig-py
echo ""
echo "# Installation de ..."
#echo "pip install ..."
#      pip install GeoAlchemy2
echo ""


echo "# On se place dans le bon repertoire"
echo "pwd"
      pwd
echo "cd .."
      cd ..
echo "pwd"
      pwd
echo "#"
echo "# Creation du projet webdjangoqtaiga"
echo "django-admin startproject webdjangotaiga"
      django-admin startproject webdjangotaiga
echo "#"
echo "# Recopie du fichier settings.py"
echo "# qui contient les bonnes infos dans la variable ALLOWED_HOSTS"
echo "ALLOWED_HOSTS = ["
echo "    'djangotaiga.cdalr.fr',"
echo "    'djangotaiga.garel.eu',"
echo "    'djangotaiga.mairie.fr',"
echo "]"
echo "cp environnementTravail/webpython/webdjangotaiga_settings.py webdjangotaiga/webdjangotaiga/settings.py"
      cp environnementTravail/webpython/webdjangotaiga_settings.py webdjangotaiga/webdjangotaiga/settings.py
echo "#"
echo "# On lance la migration"
echo "cd webdjangotaiga"
      cd webdjangotaiga
echo "python3 manage.py migrate"
      python3 manage.py migrate
echo "cd .."
      cd ..
echo "#"
echo "# On lance le serveur"
echo "cd webdjangotaiga"
      cd webdjangotaiga
echo "python3 manage.py runserver &"
      python3 manage.py runserver &
echo "cd .."
      cd ..
echo ""
echo "# On se replace dans le bon repertoire"
echo "pwd"
      pwd
echo "cd environnementTravail"
      cd environnementTravail
echo "pwd"
      pwd
echo ""
echo ""
