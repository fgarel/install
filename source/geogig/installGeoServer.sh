#!/bin/sh

echo "#"
echo "#"
echo "# Installation de unzip"
echo "#"
echo "sudo apt-get install unzip"
      sudo apt-get install unzip
echo "#"
echo "# Installation de geoserver et de quelques extensions"
echo "# dont le plugin geogig"
echo "#"
echo "# Attention : il faut peut-etre contourner le proxy..."
echo "# environnementTravail/docksshuttle1.sh"
echo "#"
echo "# geoserver"
echo "#"
echo "wget https://downloads.sourceforge.net/project/geoserver/GeoServer/2.10.1/geoserver-2.10.1-bin.zip \ "
echo "     -O geoserver-2.10.1-bin.zip"
      wget https://downloads.sourceforge.net/project/geoserver/GeoServer/2.10.1/geoserver-2.10.1-bin.zip \
           -O geoserver-2.10.1-bin.zip
echo "wget https://downloads.sourceforge.net/project/geoserver/GeoServer/2.10.1/geoserver-2.10.1-war.zip \ "
echo "     -O geoserver-2.10.1-war.zip"
      wget https://downloads.sourceforge.net/project/geoserver/GeoServer/2.10.1/geoserver-2.10.1-war.zip \
           -O geoserver-2.10.1-war.zip
echo "#"
echo "# les extensions"
echo "#"
echo "wget https://github.com/locationtech/geogig/releases/download/v1.0/gs-geogig-2.10.zip \ "
echo "     -O gs-geogig-2.10.zip"
      wget https://github.com/locationtech/geogig/releases/download/v1.0/gs-geogig-2.10.zip \ 
           -O gs-geogig-2.10.zip
echo "#"
echo "# Si celui ci existe dejà, Suppression des sous-repertoires geoserver"
echo "#"
echo "rm -rf geoserver-2.10.1-bin"
      rm -rf geoserver-2.10.1-bin
echo "rm -rf geoserver-2.10.1-war"
      rm -rf geoserver-2.10.1-war
echo "rm -rf gs-geogig-2.10"
      rm -rf gs-geogig-2.10
echo "#"
echo "# Decompression des fichiers"
echo "#"
echo "unzip geoserver-2.10.1-bin.zip -d geoserver-2.10.1-bin"
      unzip geoserver-2.10.1-bin.zip -d geoserver-2.10.1-bin
echo "unzip geoserver-2.10.1-war.zip -d geoserver-2.10.1-war"
      unzip geoserver-2.10.1-war.zip -d geoserver-2.10.1-war
echo "unzip gs-geogig-2.10.zip -d gs-geogig-2.10"
      unzip gs-geogig-2.10.zip -d gs-geogig-2.10
echo "#"
echo "# Nettoyage"
echo "#"
echo "rm -f geoserver-2.10.1-bin.zip"
      rm -f geoserver-2.10.1-bin.zip
echo "rm -f geoserver-2.10.1-war.zip"
      rm -f geoserver-2.10.1-war.zip
echo "rm -f gs-geogig-2.10.zip"
      rm -f gs-geogig-2.10.zip
echo "#"
echo "# # Ajout de geoserver/bin dans le PATH"
echo "#"
echo "#-----------------------------------------------------------------------"
echo "#echo \$PATH"
echo "#export PATH=\$PATH:/home/fred/Documents/install/source/geogig/geogig/bin"
echo "#echo \$PATH"
      #export PATH=$PATH:/home/fred/Documents/install/source/geogig/geogig/bin
      #echo $PATH
echo "#-----------------------------------------------------------------------"
echo "#"
