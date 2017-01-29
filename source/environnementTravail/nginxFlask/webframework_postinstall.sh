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
