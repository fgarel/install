#!/bin/sh

echo "# Script à lancer l'interieur de l'environnement virtuel python appelé"
echo "# webdjangoqgis"
echo "# Cet environnement a été créé grace au Script"
echo "# installPythonWebDjangoQgis.sh"
echo "#"
echo "# Le but de cet environnement est d'executer"
echo "# un site django avec liaison vers qgis"
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
echo "# Installation de ..."
#echo "pip install ..."
#      pip install geogig-py
echo ""
echo "# Installation de ..."
#echo "pip install ..."
#      pip install GeoAlchemy2
echo ""

echo ""

echo "# On se place dans le bon repertoire"
echo "pwd"
      pwd
echo "cd .."
      cd ..
echo "pwd"
      pwd
echo "#"
echo "# Creation du projet webdjangoqgis"
echo "django-admin startproject webdjangoqgis"
      django-admin startproject webdjangoqgis
echo "#"
echo "# Recopie du fichier settings.py"
echo "# qui contient les bonnes infos dans la variable ALLOWED_HOSTS"
echo "ALLOWED_HOSTS = ["
echo "    'djangoqgis.cdalr.fr',"
echo "    'djangoqgis.garel.eu',"
echo "    'djangoqgis.mairie.fr',"
echo "]"
echo "cp environnementTravail/webpython/webdjangoqgis_settings.py webdjangoqgis/webdjangoqgis/settings.py"
      cp environnementTravail/webpython/webdjangoqgis_settings.py webdjangoqgis/webdjangoqgis/settings.py
echo "#"
echo "# On lance la migration"
echo "cd webdjangoqgis"
      cd webdjangoqgis
echo "python3 manage.py migrate"
      python3 manage.py migrate
echo "cd .."
      cd ..
echo "#"
echo "# On lance le serveur"
echo "cd webdjangoqgis"
      cd webdjangoqgis
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
