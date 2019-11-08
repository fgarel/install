#!/bin/sh


# ----------------------------
#
# 20191024 : utilisation de geosserver version github
# et de la branche 2.15.x
#
# sudo -u tomcat cp ../src/web/app/target/geoserver.war /var/lib/tomcat9/webapps/
# sudo -u tomcat cp ../src/community/geogig/target/*.jar /var/lib/tomcat9/webapps/geoserver/WEB-INF/lib/

# ---------------------------------------------------
# Comment choisir la version de Gesoerver et de Geoserver_geogig_plugin ?
#
# A un moment, nous avons tenté de mettre :
# - pour geoserver, la version maintenance de geoserver
# - pour le plugin, la version du depot community qui existe avec
# mais, ce couple n'a pas fonctionné avec tomcat9, java11
#
# Nous nous sommes rabattu sur la combinaison :
# - pour geoserver, la version stable
# - pour le plugin, la version de locationtech
#
# Il faut prendre la version maintenance de geoserver
# Car, c'est tout simplement elle qui peut integrer le plugin geoserver_geogig_plugin
# qui vient de la communauté
# https://build.geoserver.org/geoserver/2.14.x/community-latest/
#
# vu ici (stable) : http://geoserver.org/
# https://github.com/locationtech/geogig/releases/tag/v1.2.0
#export GEOSERVER_VERSION='2.11.5'
#export GEOSERVER_VERSION='2.12.4'
#export GEOSERVER_VERSION='2.13.2'
# la version stable
export GEOSERVER_VERSION='2.15.2'
# la version maintenance
#export GEOSERVER_VERSION='2.14.5'

# Geoserver vient avec un certain nombre de plugin,
# et pour ces plugins, il y a deux groupes :
#   - les plugins qui sont officiellement dans le groupe extension
#     https://sourceforge.net/projects/geoserver/files/GeoServer/2.14.5/extensions/
#   - les plugins, non officiels, qui sont dans le groupe community
#     https://build.geoserver.org/geoserver/2.14.x/community-latest/
# Pour le plugin geoserver_geogig_plugin,
# il y a un troisième endroit pour le récupérer :
#   - sur le site de locationtech
#     https://github.com/locationtech/geogig/releases/tag/v1.2.1
#
# Les informations pour le telechargement du plugin geogig sur le site de locationtech
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

# Les informations pour le telechargment du plugin du groupe community
export GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_Y='2.14'
export GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_Y='2.15'

export TOMCAT_VERSION_OK='9'
export POSTGRESQL_USER='fred'
# ---------------------------------------------------
#
echo "#"
echo "#"
echo "# Installation de unzip"
echo "#"
echo "sudo apt-get install -y unzip"
      sudo apt-get install -y unzip
echo "#"
echo "# Installation de maven"
echo "#"
echo "sudo apt-get install -y maven"
      sudo apt-get install -y maven
echo "#"
echo "export OLDPWDFG=$(pwd)"
      export OLDPWDFG=$(pwd)
echo "echo $OLDPWDFG"
      echo $OLDPWDFG
echo "cd .."
      cd ..
echo "pwd"
      pwd
# echo "#"
# echo "# Installation de geoserver et de quelques extensions"
# echo "# dont le plugin geogig"
# echo "#"
# echo "# Attention : il faut peut-etre contourner le proxy..."
# echo "# environnementTravail/docksshuttle1.sh"
# echo "#"
# echo "# Si ceux ci existent dejà, Suppression des fichiers"
# echo "#"
# echo "rm -f geoserver-$GEOSERVER_VERSION-war.zip"
#       rm -f geoserver-$GEOSERVER_VERSION-war.zip
# echo "#"
# echo "# Si ceux ci existent dejà, Suppression des sous-repertoires geoserver"
# echo "#"
# echo "rm -rf geoserver-$GEOSERVER_VERSION-war"
#       rm -rf geoserver-$GEOSERVER_VERSION-war
# echo "#"
# echo "#-----------------------------------------------------------------------"
# echo "# Geoserver"
# echo "#"
# echo "# L'adresse est vu ici"
# echo "# http://geoserver.org/download/"
# echo "# http://geoserver.org/release/stable/"
# echo "# il faut ensuite recuperer l'adresse du web archive (war) avec le bon numero de version"
# #echo "wget https://downloads.sourceforge.net/project/geoserver/GeoServer/2.10.1/geoserver-2.10.1-bin.zip \ "
# #echo "     -O geoserver-2.10.1-bin.zip"
# #      wget https://downloads.sourceforge.net/project/geoserver/GeoServer/2.10.1/geoserver-2.10.1-bin.zip \
# #           -O geoserver-2.10.1-bin.zip
# echo "wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/geoserver-$GEOSERVER_VERSION-war.zip \ "
# echo "     -O geoserver-$GEOSERVER_VERSION-war.zip"
#       wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/geoserver-$GEOSERVER_VERSION-war.zip \
#            -O geoserver-$GEOSERVER_VERSION-war.zip
# echo "#"
# echo "# Decompression des fichiers"
# echo "#"
# echo "unzip geoserver-$GEOSERVER_VERSION-war.zip -d geoserver-$GEOSERVER_VERSION-war"
#       unzip geoserver-$GEOSERVER_VERSION-war.zip -d geoserver-$GEOSERVER_VERSION-war
# echo "#"
# echo "# Deploiement de geoserver :"
# echo "# Recopie du war dans le repertoire webapps de tomcat"
# echo "# http://docs.geoserver.org/latest/en/user/installation/war.html"
# echo "#"
# echo "sudo -u tomcat cp geoserver-$GEOSERVER_VERSION-war/geoserver.war /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/"
#       sudo -u tomcat cp geoserver-$GEOSERVER_VERSION-war/geoserver.war /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/
# echo "#"
# echo "# Nettoyage"
# echo "rm -f geoserver-$GEOSERVER_VERSION-war.zip"
#       rm -f geoserver-$GEOSERVER_VERSION-war.zip
# echo "rm -rf geoserver-$GEOSERVER_VERSION-war"
#       rm -rf geoserver-$GEOSERVER_VERSION-war
# echo "#"
# echo "##################################################"
# echo "# 2 facons de faire pour deployer les plugins :"
# echo "# - soit on attend le deploiement de geoserver"
# echo "# - soit on se precipite"
# #echo "# Creation du repertoire pour le plugin"
# #echo "# par ce qu'on attend pas que le deploiement le fasse pour nous..."
# #echo "sudo mkdir /var/lib/tomcat8/webapps/geoserver/WEB-INF/lib/"
# #      sudo mkdir /var/lib/tomcat8/webapps/geoserver/WEB-INF/lib/
# #echo "sudo chown tomcat8:tomcat8 /var/lib/tomcat8/webapps/geoserver/WEB-INF/lib/"
# #      sudo chown tomcat8:tomcat8 /var/lib/tomcat8/webapps/geoserver/WEB-INF/lib/
# #echo "#"
# #echo "# Ici, on attend 5 secondes que geoserver soit deployé sur le serveur"
# #echo "sleep 5"
# #      sleep 5
# #echo "#"
# #echo "#"
#
# echo "#-----------------------------------------------------------------------"
# echo "# Les plugins"
# echo "# Les plugins officiels (groupe extension)"
# echo "#"
# export LIST_PLUGINS_OFFICIEL='charts control-flow css csw dxf excel gdal importer libjpeg-turbo monitor ogr-wfs ogr-wps printing pyramid vectortiles wps'
# export LIST_PLUGINS_OFFICIEL='charts control-flow css csw dxf excel gdal importer libjpeg-turbo monitor ogr-wfs ogr-wps printing pyramid vectortiles'
# #export LIST_PLUGINS_OFFICIEL='dxf excel gdal'
# export LIST_PLUGINS_OFFICIEL='dxf excel gdal importer printing pyramid vectortiles'
# export LIST_PLUGINS_OFFICIEL=''
# for PLUGIN in $LIST_PLUGINS_OFFICIEL
# do
#     echo "# ###################################################"
#     echo "# Plugin : $PLUGIN"
#     echo "# Plugin : $PLUGIN ; Suppression du fichier zip local"
#     echo "rm -f geoserver-$GEOSERVER_VERSION-$PLUGIN-plugin.zip"
#           rm -f geoserver-$GEOSERVER_VERSION-$PLUGIN-plugin.zip
#     echo "# Plugin : $PLUGIN ; Suppression du repertoire"
#     echo "rm -rf geoserver-$PLUGIN-plugin"
#           rm -rf geoserver-$PLUGIN-plugin
#     echo "# Plugin : $PLUGIN ; Telechargement du plugin"
#     echo "wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/extensions/geoserver-$GEOSERVER_VERSION-$PLUGIN-plugin.zip \ "
#     echo "     -O geoserver-$GEOSERVER_VERSION-$PLUGIN-plugin.zip"
#           wget https://downloads.sourceforge.net/project/geoserver/GeoServer/$GEOSERVER_VERSION/extensions/geoserver-$GEOSERVER_VERSION-$PLUGIN-plugin.zip \
#                -O geoserver-$GEOSERVER_VERSION-$PLUGIN-plugin.zip
#     echo "# Plugin : $PLUGIN ; Decompression du fichier zip téléchargé"
#     echo "unzip geoserver-$GEOSERVER_VERSION-$PLUGIN-plugin.zip -d geoserver-$PLUGIN-plugin"
#           unzip geoserver-$GEOSERVER_VERSION-$PLUGIN-plugin.zip -d geoserver-$PLUGIN-plugin
#     echo "# Plugin : $PLUGIN ; Deploiement du plugin"
#     echo "sudo -u tomcat cp geoserver-$PLUGIN-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/"
#           sudo -u tomcat cp geoserver-$PLUGIN-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/
#     echo "# Plugin : $PLUGIN ; Suppression du fichier zip local"
#     echo "rm -f geoserver-$GEOSERVER_VERSION-$PLUGIN-plugin.zip"
#           rm -f geoserver-$GEOSERVER_VERSION-$PLUGIN-plugin.zip
#     echo "# Plugin : $PLUGIN ; Suppression du repertoire"
#     echo "rm -rf geoserver-$PLUGIN-plugin"
#           rm -rf geoserver-$PLUGIN-plugin
# done
# echo "# ###################################################"
#
#
# echo "#"
# echo "# En cas de pb d'installation du plugin, cela peut etre du aux droits dans le repertoire"
# echo "# /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/"
# echo "#"
# echo "# su"
# echo "# cd /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/"
# echo "# chown tomcat$TOMCAT_VERSION_OK:tomcat$TOMCAT_VERSION_OK *"
# echo "#"
# echo "# Puis, il faut relancer la webapp geoserver,"
# echo "# et le plugin devrait etre chargé"
# echo "#"
#
# echo "#"
# echo "#-----------------------------------------------------------------------"
# echo "# Les plugins"
# echo "# Les plugins non-officiels (groupe community)"
# echo "# https://build.geoserver.org/geoserver/$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_Y.x/community-latest/"
# echo "#"
# export LIST_PLUGINS_NONOFFICIEL='gdal-wcs gdal-wps geogig gpx mbstyle mbtiles pgraster python'
# export LIST_PLUGINS_NONOFFICIEL='gdal-wcs gdal-wps gpx mbstyle mbtiles pgraster python'
# export LIST_PLUGINS_NONOFFICIEL='pgraster python'
# export LIST_PLUGINS_NONOFFICIEL=''
# for PLUGIN in $LIST_PLUGINS_NONOFFICIEL
# do
#     echo "# ###################################################"
#     echo "# Plugin : $PLUGIN"
#     echo "# Plugin : $PLUGIN ; Suppression du fichier zip local"
#     echo "rm -f geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_Y-SNAPSHOT-$PLUGIN-plugin.zip"
#           rm -f geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_Y-SNAPSHOT-$PLUGIN-plugin.zip
#     echo "# Plugin : $PLUGIN ; Suppression du repertoire"
#     echo "rm -rf geoserver-$PLUGIN-plugin"
#           rm -rf geoserver-$PLUGIN-plugin
#     echo "# Plugin : $PLUGIN ; Telechargement du plugin"
#     echo "wget https://build.geoserver.org/geoserver/$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_Y.x/community-latest/geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_Y-SNAPSHOT-$PLUGIN-plugin.zip \ "
#     echo "     -O geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_Y-SNAPSHOT-$PLUGIN-plugin.zip"
#           wget https://build.geoserver.org/geoserver/$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_Y.x/community-latest/geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_Y-SNAPSHOT-$PLUGIN-plugin.zip \
#                -O geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_Y-SNAPSHOT-$PLUGIN-plugin.zip
#     echo "# Plugin : $PLUGIN ; Decompression du fichier zip téléchargé"
#     echo "unzip geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_Y-SNAPSHOT-$PLUGIN-plugin.zip -d geoserver-$PLUGIN-plugin"
#           unzip geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_Y-SNAPSHOT-$PLUGIN-plugin.zip -d geoserver-$PLUGIN-plugin
#     echo "# Plugin : $PLUGIN ; Deploiement du plugin"
#     echo "sudo -u tomcat cp geoserver-$PLUGIN-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/"
#           sudo -u tomcat cp geoserver-$PLUGIN-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/
#     echo "# Plugin : $PLUGIN ; Suppression du fichier zip local"
#     echo "rm -f geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_Y-SNAPSHOT-$PLUGIN-plugin.zip"
#           rm -f geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_Y-SNAPSHOT-$PLUGIN-plugin.zip
#     echo "# Plugin : $PLUGIN ; Suppression du repertoire"
#     echo "rm -rf geoserver-$PLUGIN-plugin"
#           rm -rf geoserver-$PLUGIN-plugin
# done
# echo "# ###################################################"
#
#
#
#
# echo "#-----------------------------------------------------------------------"
# echo "# Le plugin geoserver_geogig_plugin"
# echo "# Le plugin que l'on telecharge directement sur le site locationtech"
# echo "# https://github.com/locationtech/geogig/releases/tag/v$GEOGIG_VERSION_B"
# echo "#"
# echo "# Si ceux ci existent dejà, Suppression des fichiers"
# echo "rm -f geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip"
#       rm -f geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip
# echo "rm -f geogig-plugins-osm-$GEOGIG_VERSION_A.zip"
#       rm -f geogig-plugins-osm-$GEOGIG_VERSION_A.zip
# echo "#"
# echo "# Si ceux ci existent dejà, Suppression des sous-repertoires geoserver-..."
# echo "#"
# echo "rm -rf geoserver-geogig-plugin"
#       rm -rf geoserver-geogig-plugin
# echo "rm -rf geoserver-geogig-osm-plugin"
#       rm -rf geoserver-geogig-osm-plugin
# echo "#"
# echo "# Telechargement des plugins"
# echo "#"
# #echo "wget https://github.com/locationtech/geogig/releases/download/v1.0/gs-geogig-2.10.zip \ "
# #echo "     -O gs-geogig-2.10.zip"
# #      wget https://github.com/locationtech/geogig/releases/download/v1.0/gs-geogig-2.10.zip \
# #           -O gs-geogig-2.10.zip
# echo "wget https://github.com/locationtech/geogig/releases/download/v$GEOGIG_VERSION_B/geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip \ "
# echo "     -O geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip"
#       wget https://github.com/locationtech/geogig/releases/download/v$GEOGIG_VERSION_B/geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip \
#            -O geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip
# echo "wget https://github.com/locationtech/geogig/releases/download/v$GEOGIG_VERSION_A/geogig-plugins-osm-$GEOGIG_VERSION_A.zip \ "
# echo "     -O geogig-plugins-osm-$GEOGIG_VERSION_A.zip"
#       wget https://github.com/locationtech/geogig/releases/download/v$GEOGIG_VERSION_A/geogig-plugins-osm-$GEOGIG_VERSION_A.zip \
#            -O geogig-plugins-osm-$GEOGIG_VERSION_A.zip
# echo "#"
# echo "# Decompression des fichiers"
# echo "#"
# echo "unzip geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip -d geoserver-geogig-plugin"
#       unzip geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip -d geoserver-geogig-plugin
# echo "unzip geogig-plugins-osm-$GEOGIG_VERSION_A.zip -d ."
#       unzip geogig-plugins-osm-$GEOGIG_VERSION_A.zip -d .
# echo "mv geogig-plugins-osm-$GEOGIG_VERSION_A geoserver-geogig-osm-plugin"
#       mv geogig-plugins-osm-$GEOGIG_VERSION_A geoserver-geogig-osm-plugin
# echo "#"
# echo "# Deploiement du plugin"
# echo "#"
# echo "# Decompression du zip dans le repertoire WEB-INF/lib de l'application geoserver"
# echo "# http://geogig.org/docs/interaction/geoserver_ui.html"
# echo "#"
# echo "sudo -u tomcat cp geoserver-geogig-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/"
#       sudo -u tomcat cp geoserver-geogig-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/
# echo "sudo -u tomcat cp geoserver-geogig-osm-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/"
#       sudo -u tomcat cp geoserver-geogig-osm-plugin/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/
# echo "#"
# echo "# Nettoyage"
# echo "#"
# echo "# Si ceux ci existent dejà, Suppression des fichiers"
# echo "rm -f geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip"
#       rm -f geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip
# echo "rm -f geogig-plugins-osm-$GEOGIG_VERSION_A.zip"
#       rm -f geogig-plugins-osm-$GEOGIG_VERSION_A.zip
# echo "#"
# echo "# Si ceux ci existent dejà, Suppression des sous-repertoires geoserver-..."
# echo "#"
# echo "rm -rf geoserver-geogig-plugin"
#       rm -rf geoserver-geogig-plugin
# echo "rm -rf geoserver-geogig-osm-plugin"
#       rm -rf geoserver-geogig-osm-plugin
# echo "#"
# echo "# ###################################################"
# echo "#"
# echo "#"
# echo "cd $OLDPWDFG"
#       cd $OLDPWDFG
# echo "pwd"
#       pwd
#
# echo "# ###################################################"
# echo "# ###################################################"
# echo "# ###################################################"
# echo "export OLDPWDFG=$(pwd)"
#       export OLDPWDFG=$(pwd)
# echo $OLDPWDFG
#
# echo "cd .."
#       cd ..
# echo "pwd"
#       pwd
#
#
#

echo "#"
echo "#"
echo "# -------------------------------------"
echo "# Installation de geoserver Version Github "
echo "# -------------------------------------"
echo "# geoserver (version github), integre dans le repertoire community,"
echo "# un sous repertoire geogig"
echo "# geoserver fonctionne en effet avec des extensions"
echo "# qui peuvent être classées en 3 classes :"
echo "# - core"
echo "# - extension"
echo "# - community"
echo "# cf ici :"
echo "# https://docs.geoserver.org/latest/en/developer/policies/community-modules.html"
echo "#"
echo "# geogig est donc une extension de type community"
echo "# et cette extension peut etre directement intégré au war de geoserver"
echo "# en utilisant la bonne option pour la commande maven"
echo "#"
echo "# Cette facon d'integrer le plugin gs-geogig directement dans le war de geoserver"
echo "# fonctionne mieux que nos premières tentatives qui consistait à ajour des fichiers jar"
echo "# dans le repertoire webapps/geoserver/WEB-INF/lib"
#echo "# Suppression du repertoire si il existe"
echo "rm -rf geoserver"
      rm -rf geoserver
echo "#"
echo "git clone https://github.com/geoserver/geoserver"
      git clone https://github.com/geoserver/geoserver
#echo "git fetch https://github.com/geoserver/geoserver"
#      git fetch https://github.com/geoserver/geoserver
echo "#"
echo "# On lance l'install dans le repertoire que l'on vient de cloner"
echo "#"
echo "cd geoserver"
      cd geoserver
echo "#"
echo "#"
echo "cd src"
      cd src
echo "#"
echo "#"
echo "# Pour savoir sur quelle branche il faut aller, on va y aller à taton,"
echo "# c'est à dire en allant directement dans le repertoire du plugin, src/community/geogig "
echo "# puis en testant la compilation."
echo "# Si cela focntionne pour le plugin, alors, cela fonctionnera pour le reste"
echo "#"
echo "# Au moment de l'écriture de ces lignes,"
echo "# la version 2.15.x fonctionne, alors que"
echo "# les versions 2.16.x et 2.17.x ne fonctionnnent pas..."
echo "#"
echo "git checkout master"
      git checkout master
echo "#"
ehco "# update de 20191104"
echo "git checkout 2.15.x"
      git checkout 2.15.x
echo "#"
echo "# Pour voir les options qu'il faut utiliser avec la commande maven,"
echo "# il faut aller voir sur cette page : "
echo "# https://docs.geoserver.org/latest/en/developer/maven-guide/index.html"
echo "#"

echo "# On va utiliser l'option profile (-P)"
echo "# et pour inclure le maximum de choses, on va regarder le contenu des profiles,"
echo "# et le contenu des profiles est disponible en lisant les fichiers pom.xml"
echo "# https://github.com/geoserver/geoserver/blob/2.15.x/src/community/pom.xml"
echo "#"
ehco "#"
#echo "mvn clean install"
#      mvn clean install
echo "#"
echo "# Attention, l'extension community gdal-translate pose problème"
echo "# (pas à la compilation du fichier war, mais au moemenet de son deloiement dans tomcat)"

#echo "mvn -DskipTests=true -P allExtensions,colormap,gdal,gdal-translate,geogig,geopkg,mbstyle,mbtiles,pgraster,script,spatialite clean install"
#      mvn -DskipTests=true -P allExtensions,colormap,gdal,gdal-translate,geogig,geopkg,mbstyle,mbtiles,pgraster,script,spatialite clean install
echo "mvn -DskipTests=true -P allExtensions,colormap,gdal,geogig,geopkg,mbstyle,mbtiles,pgraster,script,spatialite clean install"
      mvn -DskipTests=true -P allExtensions,colormap,gdal,geogig,geopkg,mbstyle,mbtiles,pgraster,script,spatialite clean install
#echo "mvn -DskipTests=true -P allExtensions,communityRelease,geogig clean install"
#      mvn -DskipTests=true -P allExtensions,communityRelease,geogig clean install
#echo "mvn -DskipTests=true -P allExtensions,geogig clean install"
#      mvn -DskipTests=true -P allExtensions,geogig clean install
echo "#"
echo "# Deploiement de geoserver : Ajout du war dans Tomcat"
echo "#"
echo "# Recopie du war dans le repertoire webapps de tomcat"
echo "# http://docs.geoserver.org/latest/en/user/installation/war.html"
echo "#"
#echo "sudo -u tomcat cp geoserver-$GEOSERVER_VERSION-war/geoserver.war /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/"
#      sudo -u tomcat cp geoserver-$GEOSERVER_VERSION-war/geoserver.war /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/
echo "#"
echo "sudo -u tomcat cp ../../geoserver/src/web/app/target/geoserver.war /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/"
      sudo -u tomcat cp ../../geoserver/src/web/app/target/geoserver.war /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/
echo "#"
echo "# ----------------------------"
echo "# On passe au plugin gs-geogig :"
echo "# UPDATE 20191104 : ce plugin est inclu dans le war de geoserver (cf ci-dessus)"
echo "# il n'y a pa de jar a rajouter après le deploiement du war"
echo "#"
echo "# On laisse ce bout de code, uniquement comme documentation,"
echo "# car, pour vérifier de temps en semps si ce plugin se compile"
echo "# avec un autre numero de version"

#echo "mvn -B -U install -DskipTests=true"
#      mvn -B -U install -DskipTests=true
#echo "cd community/geogig"
#      cd community/geogig
echo "#"
#echo "mvn -DskipTests=true clean install"
#      mvn -DskipTests=true clean install
echo "#"
echo "#"
echo "cd $OLDPWDFG"
      cd $OLDPWDFG
echo "pwd"
      pwd
echo "#"

#echo "#"
#echo "# Deploiement du plugin gs-geogig"
#echo "#"
#echo "# Decompression du zip dans le repertoire WEB-INF/lib de l'application geoserver"
#echo "# http://geogig.org/docs/interaction/geoserver_ui.html"
#echo "#"
#echo "sudo -u tomcat cp ../geoserver/src/community/geogig/target/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/"
#      sudo -u tomcat cp ../geoserver/src/community/geogig/target/*.jar /var/lib/tomcat$TOMCAT_VERSION_OK/webapps/geoserver/WEB-INF/lib/

#echo "# suppression des fichiers deja preésents dans libexec"
#echo "rm -f $HOME/.local/libexec/*"
#      rm -f $HOME/.local/libexec/*
##echo "cp -rf $HOME/Documents/install/source/jts/src/cli/app/target/geogig/libexec/* $HOME/.local/libexec/"
##      cp -rf $HOME/Documents/install/source/jts/src/cli/app/target/geogig/libexec/* $HOME/.local/libexec/
##echo "cp -f $HOME/Documents/install/source/jts/src/cli/app/target/geogig/bin/geogig $HOME/.local/bin/"
##      cp -f $HOME/Documents/install/source/jts/src/cli/app/target/geogig/bin/geogig $HOME/.local/bin/
echo "#"
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
