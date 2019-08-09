#!/bin/sh

# vu ici (stable) : http://geoserver.org/
# https://github.com/locationtech/geogig/releases/tag/v1.2.0
#export GEOSERVER_VERSION='2.11.5'
#export GEOSERVER_VERSION='2.12.4'
#export GEOSERVER_VERSION='2.13.2'
export GEOSERVER_VERSION='2.15.2'
# vu ici : http://geogig.org/
# et ici : https://github.com/locationtech/geogig/releases
#export GEOGIG_VERSION='1.1.0'
#export GEOGIG_VERSION='1.2.0'
export GEOGIG_VERSION_A='1.2.0'
export GEOGIG_VERSION_B='1.2.1'
#export GEOSERVER_PLUGIN_GEOGIG_VERSION='2.11'
#export GEOSERVER_PLUGIN_GEOGIG_VERSION='2.12'
#export GEOSERVER_PLUGIN_GEOGIG_VERSION='2.13'
export GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X='2.12'
export TOMCAT_VERSION_OK='9'
export POSTGRESQL_USER='fred'

echo "#"
echo "#"
echo "# Installation de unzip"
echo "#"
echo "sudo apt-get install -y unzip"
      sudo apt-get install -y unzip
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
echo "# Si ceux ci existent dejà, Suppression des fichiers"
echo "#"
echo "rm -f geoserver-$GEOSERVER_VERSION-war.zip"
      rm -f geoserver-$GEOSERVER_VERSION-war.zip
echo "#"
echo "# Si ceux ci existent dejà, Suppression des sous-repertoires geoserver"
echo "#"
echo "rm -rf geoserver-$GEOSERVER_VERSION-war"
      rm -rf geoserver-$GEOSERVER_VERSION-war
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
echo "wget https://github.com/locationtech/geogig/releases/download/v$GEOGIG_VERSION_B/geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip \ "
#echo "     -O geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip"
#      wget https://github.com/locationtech/geogig/releases/download/v$GEOGIG_VERSION_B/geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip \
#           -O geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip
#echo "wget https://github.com/locationtech/geogig/releases/download/v$GEOGIG_VERSION_A/geogig-plugins-osm-$GEOGIG_VERSION_A-plugin.zip \ "
#echo "     -O geogig-plugins-osm-$GEOGIG_VERSION_A.zip"
#      wget https://github.com/locationtech/geogig/releases/download/v$GEOGIG_VERSION_A/geogig-plugins-osm-$GEOGIG_VERSION_A-plugin.zip \
#           -O geogig-plugins-osm-$GEOGIG_VERSION_A.zip
#echo "wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/extensions/geoserver-$GEOSERVER_VERSION-vectortiles-plugin.zip \ "
#echo "     -O geoserver-$GEOSERVER_VERSION-vectortiles-plugin.zip"
#      wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/extensions/geoserver-$GEOSERVER_VERSION-vectortiles-plugin.zip \
#           -O geoserver-$GEOSERVER_VERSION-vectortiles-plugin.zip
#echo "wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/extensions/geoserver-$GEOSERVER_VERSION-wps-plugin.zip \ "
#echo "     -O geoserver-$GEOSERVER_VERSION-wps-plugin.zip"
#      wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/extensions/geoserver-$GEOSERVER_VERSION-wps-plugin.zip \
#           -O geoserver-$GEOSERVER_VERSION-wps-plugin.zip
echo "#"
echo "# Decompression des fichiers"
echo "#"
echo "unzip geoserver-$GEOSERVER_VERSION-war.zip -d geoserver-$GEOSERVER_VERSION-war"
      unzip geoserver-$GEOSERVER_VERSION-war.zip -d geoserver-$GEOSERVER_VERSION-war
#echo "unzip geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip -d geoserver-geogig-plugin"
#      unzip geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip -d geoserver-geogig-plugin
#echo "unzip geogig-plugins-osm-$GEOGIG_VERSION_A.zip -d geoserver-geogig-osm-plugin"
#      unzip geogig-plugins-osm-$GEOGIG_VERSION_A.zip -d geoserver-geogig-osm-plugin
#echo "unzip geoserver-$GEOSERVER_VERSION-vectortiles-plugin.zip -d geoserver-vectortiles-plugin"
#      unzip geoserver-$GEOSERVER_VERSION-vectortiles-plugin.zip -d geoserver-vectortiles-plugin
#echo "unzip geoserver-$GEOSERVER_VERSION-wps-plugin.zip -d geoserver-wps-plugin"
#      unzip geoserver-$GEOSERVER_VERSION-wps-plugin.zip -d geoserver-wps-plugin
echo "#"
echo "# Deploiement de geoserver :"
echo "# Recopie du war dans le repertoire webapps de tomcat"
echo "# http://docs.geoserver.org/latest/en/user/installation/war.html"
echo "#"
echo "sudo -u tomcat cp geoserver-$GEOSERVER_VERSION-war/geoserver.war /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/"
      sudo -u tomcat cp geoserver-$GEOSERVER_VERSION-war/geoserver.war /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/
echo "#"
echo "# Nettoyage"
echo "rm -f geoserver-$GEOSERVER_VERSION-war.zip"
      rm -f geoserver-$GEOSERVER_VERSION-war.zip
echo "rm -rf geoserver-$GEOSERVER_VERSION-war"
      rm -rf geoserver-$GEOSERVER_VERSION-war
echo "#"
echo "##################################################"
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
echo "# https://github.com/locationtech/geogig/releases/tag/v$GEOGIG_VERSION_B"
echo "#"
echo "# Si ceux ci existent dejà, Suppression des fichiers"
echo "rm -f geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip"
      rm -f geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip
echo "rm -f geogig-plugins-osm-$GEOGIG_VERSION_A.zip"
      rm -f geogig-plugins-osm-$GEOGIG_VERSION_A.zip
echo "rm -f geoserver-$GEOSERVER_VERSION-vectortiles-plugin.zip"
      rm -f geoserver-$GEOSERVER_VERSION-vectortiles-plugin.zip
echo "rm -f geoserver-$GEOSERVER_VERSION-wps-plugin.zip"
      rm -f geoserver-$GEOSERVER_VERSION-wps-plugin.zip
echo "rm -f geoserver-$GEOSERVER_VERSION-css-plugin.zip"
      rm -f geoserver-$GEOSERVER_VERSION-css-plugin.zip
echo "rm -f geoserver-$GEOSERVER_VERSION-pyramid-plugin.zip"
      rm -f geoserver-$GEOSERVER_VERSION-pyramid-plugin.zip
echo "rm -f geoserver-$GEOSERVER_VERSION-control-flow-plugin.zip"
      rm -f geoserver-$GEOSERVER_VERSION-control-flow-plugin.zip
echo "rm -f geoserver-$GEOSERVER_VERSION-libjpeg-turbo-plugin.zip"
      rm -f geoserver-$GEOSERVER_VERSION-libjpeg-turbo-plugin.zip
echo "rm -f geoserver-$GEOSERVER_VERSION-importer-plugin.zip"
      rm -f geoserver-$GEOSERVER_VERSION-importer-plugin.zip
echo "rm -f geoserver-$GEOSERVER_VERSION-csw-plugin.zip"
      rm -f geoserver-$GEOSERVER_VERSION-csw-plugin.zip
echo "rm -f geoserver-$GEOSERVER_VERSION-printing-plugin.zip"
      rm -f geoserver-$GEOSERVER_VERSION-printing-plugin.zip
echo "rm -f geoserver-$GEOSERVER_VERSION-monitor-plugin.zip"
      rm -f geoserver-$GEOSERVER_VERSION-monitor-plugin.zip
echo "rm -f geoserver-$GEOSERVER_VERSION-charts-plugin.zip"
      rm -f geoserver-$GEOSERVER_VERSION-charts-plugin.zip
echo "rm -f geoserver-$GEOSERVER_VERSION-gdal-plugin.zip"
      rm -f geoserver-$GEOSERVER_VERSION-gdal-plugin.zip
echo "#"
echo "# Si ceux ci existent dejà, Suppression des sous-repertoires geoserver-..."
echo "#"
echo "rm -rf geoserver-geogig-plugin"
      rm -rf geoserver-geogig-plugin
echo "rm -rf geoserver-geogig-osm-plugin"
      rm -rf geoserver-geogig-osm-plugin
echo "rm -rf geoserver-vectortiles-plugin"
      rm -rf geoserver-vectortiles-plugin
echo "rm -rf geoserver-wps-plugin"
      rm -rf geoserver-wps-plugin
echo "rm -rf geoserver-css-plugin"
      rm -rf geoserver-css-plugin
echo "rm -rf geoserver-pyramid-plugin"
      rm -rf geoserver-pyramid-plugin
echo "rm -rf geoserver-control-flow-plugin"
      rm -rf geoserver-control-flow-plugin
echo "rm -rf geoserver-libjpeg-turbo-plugin"
      rm -rf geoserver-libjpeg-turbo-plugin
echo "rm -rf geoserver-importer-plugin"
      rm -rf geoserver-importer-plugin
echo "rm -rf geoserver-csw-plugin"
      rm -rf geoserver-csw-plugin
echo "rm -rf geoserver-printing-plugin"
      rm -rf geoserver-printing-plugin
echo "rm -rf geoserver-monitor-plugin"
      rm -rf geoserver-monitor-plugin
echo "rm -rf geoserver-charts-plugin"
      rm -rf geoserver-charts-plugin
echo "rm -rf geoserver-gdal-plugin"
      rm -rf geoserver-gdal-plugin
echo "#"
#echo "wget https://github.com/locationtech/geogig/releases/download/v1.0/gs-geogig-2.10.zip \ "
#echo "     -O gs-geogig-2.10.zip"
#      wget https://github.com/locationtech/geogig/releases/download/v1.0/gs-geogig-2.10.zip \
#           -O gs-geogig-2.10.zip
echo "wget https://github.com/locationtech/geogig/releases/download/v$GEOGIG_VERSION_B/geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip \ "
echo "     -O geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip"
      wget https://github.com/locationtech/geogig/releases/download/v$GEOGIG_VERSION_B/geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip \
           -O geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip
echo "wget https://github.com/locationtech/geogig/releases/download/v$GEOGIG_VERSION_A/geogig-plugins-osm-$GEOGIG_VERSION_A.zip \ "
echo "     -O geogig-plugins-osm-$GEOGIG_VERSION_A.zip"
      wget https://github.com/locationtech/geogig/releases/download/v$GEOGIG_VERSION_A/geogig-plugins-osm-$GEOGIG_VERSION_A.zip \
           -O geogig-plugins-osm-$GEOGIG_VERSION_A.zip
echo "wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/extensions/geoserver-$GEOSERVER_VERSION-vectortiles-plugin.zip \ "
echo "     -O geoserver-$GEOSERVER_VERSION-vectortiles-plugin.zip"
      wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/extensions/geoserver-$GEOSERVER_VERSION-vectortiles-plugin.zip \
           -O geoserver-$GEOSERVER_VERSION-vectortiles-plugin.zip
echo "wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/extensions/geoserver-$GEOSERVER_VERSION-wps-plugin.zip \ "
echo "     -O geoserver-$GEOSERVER_VERSION-wps-plugin.zip"
      wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/extensions/geoserver-$GEOSERVER_VERSION-wps-plugin.zip \
           -O geoserver-$GEOSERVER_VERSION-wps-plugin.zip
echo "wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/extensions/geoserver-$GEOSERVER_VERSION-css-plugin.zip \ "
echo "     -O geoserver-$GEOSERVER_VERSION-css-plugin.zip"
      wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/extensions/geoserver-$GEOSERVER_VERSION-css-plugin.zip \
           -O geoserver-$GEOSERVER_VERSION-css-plugin.zip
echo "wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/extensions/geoserver-$GEOSERVER_VERSION-pyramid-plugin.zip \ "
echo "     -O geoserver-$GEOSERVER_VERSION-pyramid-plugin.zip"
      wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/extensions/geoserver-$GEOSERVER_VERSION-pyramid-plugin.zip \
           -O geoserver-$GEOSERVER_VERSION-pyramid-plugin.zip
echo "wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/extensions/geoserver-$GEOSERVER_VERSION-control-flow-plugin.zip \ "
echo "     -O geoserver-$GEOSERVER_VERSION-control-flow-plugin.zip"
      wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/extensions/geoserver-$GEOSERVER_VERSION-control-flow-plugin.zip \
           -O geoserver-$GEOSERVER_VERSION-control-flow-plugin.zip
echo "wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/extensions/geoserver-$GEOSERVER_VERSION-libjpeg-turbo-plugin.zip \ "
echo "     -O geoserver-$GEOSERVER_VERSION-libjpeg-turbo-plugin.zip"
      wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/extensions/geoserver-$GEOSERVER_VERSION-libjpeg-turbo-plugin.zip \
           -O geoserver-$GEOSERVER_VERSION-libjpeg-turbo-plugin.zip
echo "wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/extensions/geoserver-$GEOSERVER_VERSION-importer-plugin.zip \ "
echo "     -O geoserver-$GEOSERVER_VERSION-importer-plugin.zip"
      wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/extensions/geoserver-$GEOSERVER_VERSION-importer-plugin.zip \
           -O geoserver-$GEOSERVER_VERSION-importer-plugin.zip
echo "wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/extensions/geoserver-$GEOSERVER_VERSION-csw-plugin.zip \ "
echo "     -O geoserver-$GEOSERVER_VERSION-csw-plugin.zip"
      wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/extensions/geoserver-$GEOSERVER_VERSION-csw-plugin.zip \
           -O geoserver-$GEOSERVER_VERSION-csw-plugin.zip
echo "wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/extensions/geoserver-$GEOSERVER_VERSION-printing-plugin.zip \ "
echo "     -O geoserver-$GEOSERVER_VERSION-printing-plugin.zip"
      wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/extensions/geoserver-$GEOSERVER_VERSION-printing-plugin.zip \
           -O geoserver-$GEOSERVER_VERSION-printing-plugin.zip
echo "wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/extensions/geoserver-$GEOSERVER_VERSION-monitor-plugin.zip \ "
echo "     -O geoserver-$GEOSERVER_VERSION-monitor-plugin.zip"
      wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/extensions/geoserver-$GEOSERVER_VERSION-monitor-plugin.zip \
           -O geoserver-$GEOSERVER_VERSION-monitor-plugin.zip
echo "wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/extensions/geoserver-$GEOSERVER_VERSION-charts-plugin.zip \ "
echo "     -O geoserver-$GEOSERVER_VERSION-charts-plugin.zip"
      wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/extensions/geoserver-$GEOSERVER_VERSION-charts-plugin.zip \
           -O geoserver-$GEOSERVER_VERSION-charts-plugin.zip
echo "wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/extensions/geoserver-$GEOSERVER_VERSION-gdal-plugin.zip \ "
echo "     -O geoserver-$GEOSERVER_VERSION-gdal-plugin.zip"
      wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/extensions/geoserver-$GEOSERVER_VERSION-gdal-plugin.zip \
           -O geoserver-$GEOSERVER_VERSION-gdal-plugin.zip
echo "#"
echo "# Decompression des fichiers"
echo "#"
echo "unzip geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip -d geoserver-geogig-plugin"
      unzip geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip -d geoserver-geogig-plugin
echo "unzip geogig-plugins-osm-$GEOGIG_VERSION_A.zip -d ."
      unzip geogig-plugins-osm-$GEOGIG_VERSION_A.zip -d .
echo "mv geogig-plugins-osm-$GEOGIG_VERSION_A geoserver-geogig-osm-plugin"
      mv geogig-plugins-osm-$GEOGIG_VERSION_A geoserver-geogig-osm-plugin
echo "unzip geoserver-$GEOSERVER_VERSION-vectortiles-plugin.zip -d geoserver-vectortiles-plugin"
      unzip geoserver-$GEOSERVER_VERSION-vectortiles-plugin.zip -d geoserver-vectortiles-plugin
echo "unzip geoserver-$GEOSERVER_VERSION-wps-plugin.zip -d geoserver-wps-plugin"
      unzip geoserver-$GEOSERVER_VERSION-wps-plugin.zip -d geoserver-wps-plugin
echo "unzip geoserver-$GEOSERVER_VERSION-css-plugin.zip -d geoserver-css-plugin"
      unzip geoserver-$GEOSERVER_VERSION-css-plugin.zip -d geoserver-css-plugin
echo "unzip geoserver-$GEOSERVER_VERSION-pyramid-plugin.zip -d geoserver-pyramid-plugin"
      unzip geoserver-$GEOSERVER_VERSION-pyramid-plugin.zip -d geoserver-pyramid-plugin
echo "unzip geoserver-$GEOSERVER_VERSION-control-flow-plugin.zip -d geoserver-control-flow-plugin"
      unzip geoserver-$GEOSERVER_VERSION-control-flow-plugin.zip -d geoserver-control-flow-plugin
echo "unzip geoserver-$GEOSERVER_VERSION-libjpeg-turbo-plugin.zip -d geoserver-libjpeg-turbo-plugin"
      unzip geoserver-$GEOSERVER_VERSION-libjpeg-turbo-plugin.zip -d geoserver-libjpeg-turbo-plugin
echo "unzip geoserver-$GEOSERVER_VERSION-importer-plugin.zip -d geoserver-importer-plugin"
      unzip geoserver-$GEOSERVER_VERSION-importer-plugin.zip -d geoserver-importer-plugin
echo "unzip geoserver-$GEOSERVER_VERSION-csw-plugin.zip -d geoserver-csw-plugin"
      unzip geoserver-$GEOSERVER_VERSION-csw-plugin.zip -d geoserver-csw-plugin
echo "unzip geoserver-$GEOSERVER_VERSION-printing-plugin.zip -d geoserver-printing-plugin"
      unzip geoserver-$GEOSERVER_VERSION-printing-plugin.zip -d geoserver-printing-plugin
echo "unzip geoserver-$GEOSERVER_VERSION-monitor-plugin.zip -d geoserver-monitor-plugin"
      unzip geoserver-$GEOSERVER_VERSION-monitor-plugin.zip -d geoserver-monitor-plugin
echo "unzip geoserver-$GEOSERVER_VERSION-charts-plugin.zip -d geoserver-charts-plugin"
      unzip geoserver-$GEOSERVER_VERSION-charts-plugin.zip -d geoserver-charts-plugin
echo "unzip geoserver-$GEOSERVER_VERSION-gdal-plugin.zip -d geoserver-gdal-plugin"
      unzip geoserver-$GEOSERVER_VERSION-gdal-plugin.zip -d geoserver-gdal-plugin
echo "#"
echo "# Deploiement du plugin geogig :"
echo "# Decompression du zip dans le repertoire WEB-INF/lib de l'application geoserver"
echo "# http://geogig.org/docs/interaction/geoserver_ui.html"
echo "#"
echo "sudo -u tomcat cp geoserver-geogig-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/"
      sudo -u tomcat cp geoserver-geogig-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/
echo "sudo -u tomcat cp geoserver-geogig-osm-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/"
      sudo -u tomcat cp geoserver-geogig-osm-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/
echo "sudo -u tomcat cp geoserver-vectortiles-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/"
      sudo -u tomcat cp geoserver-vectortiles-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/
echo "sudo -u tomcat cp geoserver-wps-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/"
      sudo -u tomcat cp geoserver-wps-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/
echo "sudo -u tomcat cp geoserver-css-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/"
      sudo -u tomcat cp geoserver-css-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/
echo "sudo -u tomcat cp geoserver-pyramid-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/"
      sudo -u tomcat cp geoserver-pyramid-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/
echo "sudo -u tomcat cp geoserver-control-flow-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/"
      sudo -u tomcat cp geoserver-control-flow-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/
echo "sudo -u tomcat cp geoserver-libjpeg-turbo-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/"
      sudo -u tomcat cp geoserver-libjpeg-turbo-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/
echo "sudo -u tomcat cp geoserver-importer-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/"
      sudo -u tomcat cp geoserver-importer-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/
echo "sudo -u tomcat cp geoserver-csw-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/"
      sudo -u tomcat cp geoserver-csw-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/
echo "sudo -u tomcat cp geoserver-printing-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/"
      sudo -u tomcat cp geoserver-printing-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/
echo "sudo -u tomcat cp geoserver-monitor-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/"
      sudo -u tomcat cp geoserver-monitor-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/
echo "sudo -u tomcat cp geoserver-charts-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/"
      sudo -u tomcat cp geoserver-charts-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/
echo "sudo -u tomcat cp geoserver-gdal-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/"
      sudo -u tomcat cp geoserver-gdal-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/
echo "#"
echo "# En cas de pb d'installation du plugin, cela peut etre du aux droits dans le repertoire"
echo "# /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/"
echo "#"
echo "# su"
echo "# cd /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/"
echo "# chown tomcat$TOMCAT_VERSION_OK:tomcat$TOMCAT_VERSION_OK *"
echo "#"
echo "# Puis, il faut relancer la webapp geoserver,"
echo "# et le plugin devrait etre chargé"
echo "#"
echo "# Nettoyage"
echo "#"
echo "# Si ceux ci existent dejà, Suppression des fichiers"
echo "rm -f geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip"
      rm -f geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip
echo "rm -f geogig-plugins-osm-$GEOGIG_VERSION_A.zip"
      rm -f geogig-plugins-osm-$GEOGIG_VERSION_A.zip
echo "rm -f geoserver-$GEOSERVER_VERSION-vectortiles-plugin.zip"
      rm -f geoserver-$GEOSERVER_VERSION-vectortiles-plugin.zip
echo "rm -f geoserver-$GEOSERVER_VERSION-wps-plugin.zip"
      rm -f geoserver-$GEOSERVER_VERSION-wps-plugin.zip
echo "rm -f geoserver-$GEOSERVER_VERSION-css-plugin.zip"
      rm -f geoserver-$GEOSERVER_VERSION-css-plugin.zip
echo "rm -f geoserver-$GEOSERVER_VERSION-pyramid-plugin.zip"
      rm -f geoserver-$GEOSERVER_VERSION-pyramid-plugin.zip
echo "rm -f geoserver-$GEOSERVER_VERSION-control-flow-plugin.zip"
      rm -f geoserver-$GEOSERVER_VERSION-control-flow-plugin.zip
echo "rm -f geoserver-$GEOSERVER_VERSION-libjpeg-turbo-plugin.zip"
      rm -f geoserver-$GEOSERVER_VERSION-libjpeg-turbo-plugin.zip
echo "rm -f geoserver-$GEOSERVER_VERSION-importer-plugin.zip"
      rm -f geoserver-$GEOSERVER_VERSION-importer-plugin.zip
echo "rm -f geoserver-$GEOSERVER_VERSION-csw-plugin.zip"
      rm -f geoserver-$GEOSERVER_VERSION-csw-plugin.zip
echo "rm -f geoserver-$GEOSERVER_VERSION-printing-plugin.zip"
      rm -f geoserver-$GEOSERVER_VERSION-printing-plugin.zip
echo "rm -f geoserver-$GEOSERVER_VERSION-monitor-plugin.zip"
      rm -f geoserver-$GEOSERVER_VERSION-monitor-plugin.zip
echo "rm -f geoserver-$GEOSERVER_VERSION-charts-plugin.zip"
      rm -f geoserver-$GEOSERVER_VERSION-charts-plugin.zip
echo "rm -f geoserver-$GEOSERVER_VERSION-gdal-plugin.zip"
      rm -f geoserver-$GEOSERVER_VERSION-gdal-plugin.zip
echo "#"
echo "# Si ceux ci existent dejà, Suppression des sous-repertoires geoserver-..."
echo "#"
echo "rm -rf geoserver-geogig-plugin"
      rm -rf geoserver-geogig-plugin
echo "rm -rf geoserver-geogig-osm-plugin"
      rm -rf geoserver-geogig-osm-plugin
echo "rm -rf geoserver-vectortiles-plugin"
      rm -rf geoserver-vectortiles-plugin
echo "rm -rf geoserver-wps-plugin"
      rm -rf geoserver-wps-plugin
echo "rm -rf geoserver-css-plugin"
      rm -rf geoserver-css-plugin
echo "rm -rf geoserver-pyramid-plugin"
      rm -rf geoserver-pyramid-plugin
echo "rm -rf geoserver-control-flow-plugin"
      rm -rf geoserver-control-flow-plugin
echo "rm -rf geoserver-libjpeg-turbo-plugin"
      rm -rf geoserver-libjpeg-turbo-plugin
echo "rm -rf geoserver-importer-plugin"
      rm -rf geoserver-importer-plugin
echo "rm -rf geoserver-csw-plugin"
      rm -rf geoserver-csw-plugin
echo "rm -rf geoserver-printing-plugin"
      rm -rf geoserver-printing-plugin
echo "rm -rf geoserver-monitor-plugin"
      rm -rf geoserver-monitor-plugin
echo "rm -rf geoserver-charts-plugin"
      rm -rf geoserver-charts-plugin
echo "rm -rf geoserver-gdal-plugin"
      rm -rf geoserver-gdal-plugin
echo "#"
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
