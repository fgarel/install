#!/bin/sh

echo "# Script à lancer l'interieur de l'environnement virtuel python appelé"
echo "# webframework"
echo "# Cet environnement a été créé grace au Script"
echo "# installPythonWebFramefork.sh"
echo "#"
echo "# Le but de cet environnement est d'executer"
echo "# un comparateur entre flask, django et pyramid"
echo "# Ce comparateur a été vu a cette adresse"
echo "# https://github.com/ryansb/wut4lunch_demos"
echo "#"
echo "# Quel framework choisir entre flask, pyramid ou django ?"
echo "# https://www.airpair.com/python/posts/django-flask-pyramid"
echo "# https://github.com/ryansb/wut4lunch_demos"
echo "#"
echo "# On commence par la mise à jour de pip"
echo "pip install --upgrade pip"
      pip install --upgrade pip

echo ""
echo "# Telechargement du comparateur"
echo "git clone https://github.com/ryansb/wut4lunch_demos"
      git clone https://github.com/ryansb/wut4lunch_demos

echo "# Essai avec flask"
echo "cd wut4lunch_demos/flask_wut4lunch/"
      cd wut4lunch_demos/flask_wut4lunch/
echo "pip install -r requirements.txt"
      pip install -r requirements.txt
echo "python wut4lunch.py &"
      python wut4lunch.py &
echo "cd ../.."
      cd ../..

echo "# Essai avec pyramid"
echo "cd wut4lunch_demos/pyramid_wut4lunch/"
      cd wut4lunch_demos/pyramid_wut4lunch/
echo "python setup.py develop"
      python setup.py develop
echo "python pyramid_wut4lunch/scripts/initializedb.py development.ini"
      python pyramid_wut4lunch/scripts/initializedb.py development.ini
echo "pserve development.ini &"
      pserve development.ini &
echo "cd ../.."
      cd ../..

echo "# Essai avec django"
echo "cd wut4lunch_demos/hello_django/"
      cd wut4lunch_demos/hello_django/
echo "pip install Django==1.7"
      pip install Django==1.7
echo "pip install -r requirements.txt"
      pip install -r requirements.txt
echo "python manage.py migrate"
      python manage.py migrate
echo "python manage.py runserver &"
      python manage.py runserver &
echo "cd ../.."
      cd ../..

echo "# Flask   : http://127.0.0.1:5000/"
echo "# Pyramid : http://127.0.0.1:6543/"
echo "# Django  : http://127.0.0.1:8000/"
