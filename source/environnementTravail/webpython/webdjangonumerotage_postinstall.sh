#!/bin/sh

echo "# Script à lancer l'interieur de l'environnement virtuel python appelé"
echo "# webdjangonumerotage"
echo "# Cet environnement a été créé grace au Script"
echo "# installPythonWebDjangoNumerotage.sh"
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
echo "# Creation du projet webdjangonumerotage"
echo "django-admin startproject webdjangonumerotage"
      django-admin startproject webdjangonumerotage
echo "#"
echo "# Recopie du fichier settings.py"
echo "# qui contient les bonnes infos dans la variable ALLOWED_HOSTS"
echo "ALLOWED_HOSTS = ["
echo "    'djangonumerotage.cdalr.fr',"
echo "    'djangonumerotage.garel.eu',"
echo "    'djangonumerotage.mairie.fr',"
echo "]"
echo "cp environnementTravail/webpython/webdjangonumerotage_settings.py webdjangotemplate/webdjangonumerotage/settings.py"
      cp environnementTravail/webpython/webdjangonumerotage_settings.py webdjangotemplate/webdjangonumerotage/settings.py
echo "#"
echo "# On lance la migration"
echo "cd webdjangonumerotage"
      cd webdjangonumerotage
echo "python3 manage.py migrate"
      python3 manage.py migrate
echo "cd .."
      cd ..
echo "#"
echo "# On lance le serveur"
echo "cd webdjangonumerotage"
      cd webdjangonumerotage
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
