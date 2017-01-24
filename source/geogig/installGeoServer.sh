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
#echo "wget https://downloads.sourceforge.net/project/geoserver/GeoServer/2.10.1/geoserver-2.10.1-bin.zip \ "
#echo "     -O geoserver-2.10.1-bin.zip"
#      wget https://downloads.sourceforge.net/project/geoserver/GeoServer/2.10.1/geoserver-2.10.1-bin.zip \
#           -O geoserver-2.10.1-bin.zip
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
#echo "rm -rf geoserver-2.10.1-bin"
#      rm -rf geoserver-2.10.1-bin
echo "rm -rf geoserver-2.10.1-war"
      rm -rf geoserver-2.10.1-war
echo "rm -rf gs-geogig-2.10"
      rm -rf gs-geogig-2.10
echo "#"
echo "# Decompression des fichiers"
echo "#"
#echo "unzip geoserver-2.10.1-bin.zip -d geoserver-2.10.1-bin"
#      unzip geoserver-2.10.1-bin.zip -d geoserver-2.10.1-bin
echo "unzip geoserver-2.10.1-war.zip -d geoserver-2.10.1-war"
      unzip geoserver-2.10.1-war.zip -d geoserver-2.10.1-war
echo "unzip gs-geogig-2.10.zip -d gs-geogig-2.10"
      unzip gs-geogig-2.10.zip -d gs-geogig-2.10
echo "#"
echo "# Deploiement de geoserver :"
echo "# Recopie du war dans le repertoire webapps de tomcat"
echo "# http://docs.geoserver.org/latest/en/user/installation/war.html"
echo "#"
#echo "sudo cp geoserver-2.10.1-war/geoserver.war /var/lib/tomcat8/webapps/"
#      sudo cp geoserver-2.10.1-war/geoserver.war /var/lib/tomcat8/webapps/
echo "#"
echo "# Deploiement du plugin geogig :"
echo "# Decompression du zip dans le repertoire WEB-INF/lib"
echo "# http://geogig.org/docs/interaction/geoserver_ui.html"
echo "#"
echo "sudo cp gs-geogig-2.10/*.jar /var/lib/tomcat8/webapps/geoserver/WEB-INF/lib/"
      sudo cp gs-geogig-2.10/*.jar /var/lib/tomcat8/webapps/geoserver/WEB-INF/lib/
echo "#"
echo "# Nettoyage"
echo "#"
#echo "rm -f geoserver-2.10.1-bin.zip"
#      rm -f geoserver-2.10.1-bin.zip
echo "rm -f geoserver-2.10.1-war.zip"
      rm -f geoserver-2.10.1-war.zip
echo "rm -rf geoserver-2.10.1-war"
      rm -rf geoserver-2.10.1-war
echo "rm -f gs-geogig-2.10.zip"
      rm -f gs-geogig-2.10.zip
echo "rm -rf gs-geogig-2.10"
      rm -rf gs-geogig-2.10
echo "#"
echo "#-----------------------------------------------------------------------"
echo "# http://docs.geoserver.org/latest/en/user/gettingstarted/web-admin-quickstart/index.html"
echo "# Ensuite, il faut se logguer avec l'identifiant / mot de passe suivant"
echo "# admin/geoserver"
echo "#"
echo "#"
echo "#-----------------------------------------------------------------------"
echo "#"
