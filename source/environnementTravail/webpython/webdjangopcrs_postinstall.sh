#!/bin/sh

echo "# Script à lancer l'interieur de l'environnement virtuel python appelé"
echo "# webdjangopcrs"
echo "# Cet environnement a été créé grace au Script"
echo "# installPythonWebDjangoPcrs.sh"
echo "#"
echo "# Le but de cet environnement est d'executer"
echo "# un site django avec geogig-py et stetl"
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
echo "# Installation de geogig-py"
echo "pip install geogig-py"
      pip install geogig-py
echo ""
echo "# Installation de GeoAlchemy2"
echo "pip install GeoAlchemy2"
      pip install GeoAlchemy2
echo ""
echo "# Installation de stetl"
echo "#"
echo "# L'install de stetl montre que l'install de gdal est problématique"
echo "# ?? http://stackoverflow.com/questions/38630474/error-while-installing-gdal"
echo "#"
echo "#mkdir gdal_install"
echo '#pip install --no-cache-dir --download="gdal_install" GDAL'
echo "#cd gdal_install"
echo "#tar -xzvf GDAL-2.1.3.tar.gz"
echo "#cd GDAL-2.1.3"
echo "#python setup.py build_ext --include-dirs=/usr/include/gdal/"
echo "python setup.py install"
echo ""
echo "# http://gis.stackexchange.com/questions/28966/python-gdal-package-missing-header-file-when-installing-via-pip/74060#74060"
echo "#"
echo "export CPLUS_INCLUDE_PATH=/usr/include/gdal"
      export CPLUS_INCLUDE_PATH=/usr/include/gdal
echo "export C_INCLUDE_PATH=/usr/include/gdal"
      export C_INCLUDE_PATH=/usr/include/gdal
echo "pip install GDAL==1.10.0"
      pip install GDAL==1.10.0
echo "pip install Stetl"
      pip install Stetl
echo ""
echo "# On se place dans le bon repertoire"
echo "pwd"
      pwd
echo "cd .."
      cd ..
echo "pwd"
      pwd
echo "#"
echo "# Creation du projet webdjangopcrs"
echo "django-admin startproject webdjangopcrs"
      django-admin startproject webdjangopcrs
echo "#"
echo "# Recopie du fichier settings.py"
echo "# qui contient les bonnes infos dans la variable ALLOWED_HOSTS"
echo "ALLOWED_HOSTS = ["
echo "    'djangopcrs.cdalr.fr',"
echo "    'djangopcrs.garel.eu',"
echo "    'djangopcrs.mairie.fr',"
echo "]"
echo "cp environnementTravail/webpython/webdjangopcrs_settings.py webdjangopcrs/webdjangopcrs/settings.py"
      cp environnementTravail/webpython/webdjangopcrs_settings.py webdjangopcrs/webdjangopcrs/settings.py
echo "#"
echo "# On lance la migration"
echo "cd webdjangopcrs"
      cd webdjangopcrs
echo "python3 manage.py migrate"
      python3 manage.py migrate
echo "cd .."
      cd ..
echo "#"
echo "# On lance le serveur"
echo "cd webdjangopcrs"
      cd webdjangopcrs
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
