#!/bin/sh

echo "# Script à lancer l'interieur de l'environnement virtuel python appelé"
echo "# webdjangotemplate"
echo "# Cet environnement a été créé grace au Script"
echo "# installPythonWebDjangoTemplate.sh"
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
echo "#"
echo "# On se place dans le bon repertoire"
echo "pwd"
      pwd
echo "cd .."
      cd ..
echo "pwd"
      pwd
echo "#"
echo "# Creation du projet webdjangotemplate"
echo "django-admin startproject webdjangotemplate"
      django-admin startproject webdjangotemplate
echo "#"
echo "# Recopie du fichier settings.py"
echo "# qui contient les bonnes infos dans la variable ALLOWED_HOSTS"
echo "ALLOWED_HOSTS = ["
echo "    'djangotemplate.cdalr.fr',"
echo "    'djangotemplate.garel.eu',"
echo "    'djangotemplate.mairie.fr',"
echo "]"
echo "cp environnementTravail/webpython/webdjangotemplate_settings.py webdjangotemplate/webdjangotemplate/settings.py"
      cp environnementTravail/webpython/webdjangotemplate_settings.py webdjangotemplate/webdjangotemplate/settings.py
echo "#"
echo "# On lance la migration"
echo "cd webdjangotemplate"
      cd webdjangotemplate
echo "python3 manage.py migrate"
      python3 manage.py migrate
echo "cd .."
      cd ..
echo "#"
echo "# On lance le serveur"
echo "cd webdjangotemplate"
      cd webdjangotemplate
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
