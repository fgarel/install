#!/bin/sh

# vu ici (stable) : http://geoserver.org/
# https://github.com/locationtech/geogig/releases/tag/v1.2.0
#export GEOSERVER_VERSION='2.11.5'
#export GEOSERVER_VERSION='2.12.4'
export GEOSERVER_VERSION='2.13.2'
#export GEOSERVER_PLUGIN_GEOGIG_VERSION='2.11'
#export GEOSERVER_PLUGIN_GEOGIG_VERSION='2.12'
export GEOSERVER_PLUGIN_GEOGIG_VERSION='2.13'
# vu ici : http://geogig.org/
# et ici : https://github.com/locationtech/geogig/releases
#export GEOGIG_VERSION='1.1.0'
export GEOGIG_VERSION='1.2.0'
export TOMCAT_VERSION='8'
export POSTGRESQL_USER='fred'

echo "#"
echo "#"
echo "# Installation de unzip"
echo "#"
echo "sudo apt-get install unzip"
      sudo apt-get install unzip
echo "#"
echo "export OLDPWDFG=$(pwd)"
      export OLDPWDFG=$(pwd)
echo $OLDPWDFG
echo "cd .."
      cd ..
echo "pwd"
      pwd
echo "#"
echo "# Installation de geoserver et de quelques extensions"
echo "# dont le plugin geogig"
echo "#"
echo "# Attention : il faut peut-etre contourner le proxy..."
echo "# environnementTravail/docksshuttle1.sh"
echo "#"
echo "# Si ceux ci existent dejà, Suppression des sous-repertoires geoserver"
echo "#"
echo "rm -rf geoserver-$GEOSERVER_VERSION-war"
      rm -rf geoserver-$GEOSERVER_VERSION-war
echo "rm -rf gs-geogig-$GEOSERVER_PLUGIN_GEOGIG_VERSION"
      rm -rf gs-geogig-$GEOSERVER_PLUGIN_GEOGIG_VERSION
echo "#"
echo "#-----------------------------------------------------------------------"
echo "# Geoserver"
echo "#"
echo "# L'adresse est vu ici"
echo "# http://geoserver.org/download/"
echo "# http://geoserver.org/release/stable/"
echo "# il faut ensuite recuperer l'adresse du web archive (war) avec le bon numero de version"
#echo "wget https://downloads.sourceforge.net/project/geoserver/GeoServer/2.10.1/geoserver-2.10.1-bin.zip \ "
#echo "     -O geoserver-2.10.1-bin.zip"
#      wget https://downloads.sourceforge.net/project/geoserver/GeoServer/2.10.1/geoserver-2.10.1-bin.zip \
#           -O geoserver-2.10.1-bin.zip
echo "wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/geoserver-$GEOSERVER_VERSION-war.zip \ "
echo "     -O geoserver-$GEOSERVER_VERSION-war.zip"
      wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/geoserver-$GEOSERVER_VERSION-war.zip \
           -O geoserver-$GEOSERVER_VERSION-war.zip
echo "#"
echo "# Decompression des fichiers"
echo "#"
echo "unzip geoserver-$GEOSERVER_VERSION-war.zip -d geoserver-$GEOSERVER_VERSION-war"
      unzip geoserver-$GEOSERVER_VERSION-war.zip -d geoserver-$GEOSERVER_VERSION-war
echo "#"
echo "# Deploiement de geoserver :"
echo "# Recopie du war dans le repertoire webapps de tomcat"
echo "# http://docs.geoserver.org/latest/en/user/installation/war.html"
echo "#"
echo "sudo -u tomcat$TOMCAT_VERSION cp geoserver-$GEOSERVER_VERSION-war/geoserver.war /var/lib/tomcat$TOMCAT_VERSION/webapps/"
      sudo -u tomcat$TOMCAT_VERSION cp geoserver-$GEOSERVER_VERSION-war/geoserver.war /var/lib/tomcat$TOMCAT_VERSION/webapps/
echo "#"
echo "# 2 facons de faire pour deployer le plugin geogig"
echo "# - soit on attend le deploiement de geoserver"
echo "# - soit on se precipite"
#echo "# Creation du repertoire pour le plugin"
#echo "# par ce qu'on attend pas que le deploiement le fasse pour nous..."
#echo "sudo mkdir /var/lib/tomcat8/webapps/geoserver/WEB-INF/lib/"
#      sudo mkdir /var/lib/tomcat8/webapps/geoserver/WEB-INF/lib/
#echo "sudo chown tomcat8:tomcat8 /var/lib/tomcat8/webapps/geoserver/WEB-INF/lib/"
#      sudo chown tomcat8:tomcat8 /var/lib/tomcat8/webapps/geoserver/WEB-INF/lib/
#echo "#"
#echo "# Ici, on attend 5 secondes que geoserver soit deployé sur le serveur"
#echo "sleep 5"
#      sleep 5
#echo "#"
#echo "#"

echo "#-----------------------------------------------------------------------"
echo "# Les extensions"
echo "#"
echo "# https://github.com/locationtech/geogig/releases/tag/v$GEOGIG_VERSION"
echo "#"
#echo "wget https://github.com/locationtech/geogig/releases/download/v1.0/gs-geogig-2.10.zip \ "
#echo "     -O gs-geogig-2.10.zip"
#      wget https://github.com/locationtech/geogig/releases/download/v1.0/gs-geogig-2.10.zip \
#           -O gs-geogig-2.10.zip
echo "wget https://github.com/locationtech/geogig/releases/download/v$GEOGIG_VERSION/geoserver-$GEOSERVER_PLUGIN_GEOGIG_VERSION-SNAPSHOT-geogig-plugin.zip \ "
echo "     -O gs-geogig-$GEOSERVER_PLUGIN_GEOGIG_VERSION.zip"
      wget https://github.com/locationtech/geogig/releases/download/v$GEOGIG_VERSION/geoserver-$GEOSERVER_PLUGIN_GEOGIG_VERSION-SNAPSHOT-geogig-plugin.zip \
           -O gs-geogig-$GEOSERVER_PLUGIN_GEOGIG_VERSION.zip
echo "#"
echo "# Decompression des fichiers"
echo "#"
echo "unzip gs-geogig-$GEOSERVER_PLUGIN_GEOGIG_VERSION.zip -d gs-geogig-$GEOSERVER_PLUGIN_GEOGIG_VERSION"
      unzip gs-geogig-$GEOSERVER_PLUGIN_GEOGIG_VERSION.zip -d gs-geogig-$GEOSERVER_PLUGIN_GEOGIG_VERSION
echo "#"
echo "# Deploiement du plugin geogig :"
echo "# Decompression du zip dans le repertoire WEB-INF/lib de l'application geoserver"
echo "# http://geogig.org/docs/interaction/geoserver_ui.html"
echo "#"
echo "sudo -u tomcat$TOMCAT_VERSION cp gs-geogig-$GEOSERVER_PLUGIN_GEOGIG_VERSION/*.jar /var/lib/tomcat$TOMCAT_VERSION/webapps/geoserver/WEB-INF/lib/"
      sudo -u tomcat$TOMCAT_VERSION cp gs-geogig-$GEOSERVER_PLUGIN_GEOGIG_VERSION/*.jar /var/lib/tomcat$TOMCAT_VERSION/webapps/geoserver/WEB-INF/lib/
echo "#"
echo "# En cas de pb d'installation du plugin, cela peut etre du aux droits dans le repertoire"
echo "# /var/lib/tomcat$TOMCAT_VERSION/webapps/geoserver/WEB-INF/lib/"
echo "#"
echo "# su"
echo "# cd /var/lib/tomcat$TOMCAT_VERSION/webapps/geoserver/WEB-INF/lib/"
echo "# chown tomcat$TOMCAT_VERSION:tomcat$TOMCAT_VERSION *"
echo "#"
echo "# Puis, il faut relancer la webapp geoserver,"
echo "# et le plugin devrait etre chargé"
echo "#"
echo "# Nettoyage"
echo "#"
echo "rm -f geoserver-$GEOSERVER_VERSION-war.zip"
      rm -f geoserver-$GEOSERVER_VERSION-war.zip
echo "rm -rf geoserver-$GEOSERVER_VERSION-war"
      rm -rf geoserver-$GEOSERVER_VERSION-war
echo "rm -f gs-geogig-$GEOSERVER_PLUGIN_GEOGIG_VERSION.zip"
      rm -f gs-geogig-$GEOSERVER_PLUGIN_GEOGIG_VERSION.zip
echo "rm -rf gs-geogig-$GEOSERVER_PLUGIN_GEOGIG_VERSION"
      rm -rf gs-geogig-$GEOSERVER_PLUGIN_GEOGIG_VERSION
echo "#"
echo "cd $OLDPWDFG"
      cd $OLDPWDFG
echo "pwd"
      pwd
echo "#-----------------------------------------------------------------------"
echo "#"
echo "# Attention, il faut redemarer geoserver, pour qu'il prenne en compte le plugin geogig"
echo "#"
echo "# http://geoserver.cdalr.fr/manage/html/"
echo "#"
echo "#-----------------------------------------------------------------------"
echo "#-----------------------------------------------------------------------"
echo "#"
echo "# Avant de pouvoir utiliser geoserver avec l'extension geogig, il est nécessaire"
echo "# de creer une base de données, que l'on va appeler geogig,"
echo "# et qui va servir a la gestion interne de l'outil"
echo "# En d'autres termes, cette base de données ne va pas servir à accueillir"
echo "# les données geographiques"
echo "#"
echo "# Cette base de données est créé à l'aide de l'utilisateur $POSTGRESQL_USER"
echo "# Il faut donc que cet utilisateur soit capable de créer une base"
echo "sudo -u postgres psql -c \"ALTER ROLE '$POSTGRESQL_USER' WITH PASSWORD '$POSTGRESQL_USER';\" ;"
echo "sudo -u postgres psql -c \"ALTER ROLE '$POSTGRESQL_USER' SUPERUSER NOCREATEDB NOCREATEROLE;\" ;"
echo "#"
echo "# La création de cette base de données geogig se fait grace au script python"
echo "# ./01_base_create.py"
echo "#"
echo "#-----------------------------------------------------------------------"
echo "#-----------------------------------------------------------------------"
echo "#"
echo "# Voici maintenant les premiers pas avec geoserver/geogig"
echo "# http://docs.geoserver.org/latest/en/user/gettingstarted/web-admin-quickstart/index.html"
echo "#"
echo "#"
echo "#"
echo "# Ensuite, il faut se logguer avec l'identifiant / mot de passe suivant"
echo "# admin/geoserver"
echo "#"
echo "# Creation d'un espace de travail pcrs"
echo "# name : pcrs"
echo "# uri : http://geoserver.cdalr.fr/geoserver/pcrs"
echo "# default workspace : oui"
echo "#"
echo "# Creation d'un nouvel entrepot de type geogig"
echo "# workspace : pcrs"
echo "# data source name : pcrs_repos"
echo "# description : "
echo "# enable : yes"
echo "# "
echo "# paramètres de connexion"
echo "#"
echo "# create a new repository"
echo "# repository type : Postgresql"
echo "# repository name : pcrs_repos"
echo "# ..."
echo "# database name : geogig"
echo "# schema name : pcrs"
echo "# username : fred"
echo "# password : "
echo "# ..."
echo "# ..."
echo "#-----------------------------------------------------------------------"
echo "#"
