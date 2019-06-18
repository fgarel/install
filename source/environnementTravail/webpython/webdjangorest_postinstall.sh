#!/bin/sh

echo "# Script à lancer l'interieur de l'environnement virtuel python appelé"
echo "# webdjangorest"
echo "# Cet environnement a été créé grace au Script"
echo "# installPythonWebDjangoRest.sh"
echo "#"
echo "# Le but de cet environnement est d'executer"
echo "# un site django"
echo "#"
echo ""
echo "# On commence par la mise à jour de pip"
echo "pip install --upgrade pip"
      pip install --upgrade pip
echo "#"
echo "# Installation de django"
echo "pip install django"
      pip install django
echo ""
echo "# Installation de djangorestframework"
echo "pip install djangorestframework"
      pip install djangorestframework
echo ""
echo "# Installation de psycopg2"
echo "pip install psycopg2"
      pip install psycopg2
echo ""
echo "# On se place dans le bon repertoire"
echo "pwd"
      pwd
echo "cd .."
      cd ..
echo "pwd"
      pwd
echo "#"
echo "# Creation du projet webdjangorest"
echo "django-admin startproject webdjangorest"
      django-admin startproject webdjangorest
echo "#"
echo "# Recopie du fichier settings.py"
echo "# qui contient les bonnes infos dans la variable ALLOWED_HOSTS"
echo "ALLOWED_HOSTS = ["
echo "    'djangorest.cdalr.fr',"
echo "    'djangorest.garel.eu',"
echo "    'djangorest.mairie.fr',"
echo "]"
echo "cp environnementTravail/webpython/webdjangorest_settings.py webdjangorest/webdjangorest/settings.py"
      cp environnementTravail/webpython/webdjangorest_settings.py webdjangorest/webdjangorest/settings.py
echo "#"
echo "# On lance la migration"
echo "cd webdjangorest"
      cd webdjangorest
echo "python3 manage.py migrate"
      python3 manage.py migrate
echo "cd .."
      cd ..
echo "#"
echo "# On lance le serveur"
echo "cd webdjangorest"
      cd webdjangorest
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
