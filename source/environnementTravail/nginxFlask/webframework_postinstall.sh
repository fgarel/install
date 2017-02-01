#!/bin/sh

pip install --upgrade pip

#pip install geogig-py

#pip install GeoAlchemy2

# l'install de stetl montre que l'install de gdal est problématique
# ?? http://stackoverflow.com/questions/38630474/error-while-installing-gdal
#
#mkdir gdal_install
#pip install --no-cache-dir --download="gdal_install" GDAL
#cd gdal_install
#tar -xzvf GDAL-2.1.3.tar.gz
#cd GDAL-2.1.3
#python setup.py build_ext --include-dirs=/usr/include/gdal/
#python setup.py install

# http://gis.stackexchange.com/questions/28966/python-gdal-package-missing-header-file-when-installing-via-pip/74060#74060
#

#export CPLUS_INCLUDE_PATH=/usr/include/gdal
#export C_INCLUDE_PATH=/usr/include/gdal
#pip install GDAL==1.10.0

#pip install Stetl

echo ""
echo "# Démarrage du serveur"
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
