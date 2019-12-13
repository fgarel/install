#!/bin/sh

# vu ici : http://geogig.org/
# nous ne prenons pas la derniere version (1.2.0)
# car la version zippée n'integre pas encore la version corrigée qui fonctionne avec postgresql 10
# nous ne prenons pas la version github
# car, bien qu'elle integre cette correction postgresql 10, elle ne fonctionne pas avec le plugin qgis
# file:///home/fred/.local/share/QGIS/QGIS3/profiles/default/python/plugins/geogig/docs/html/usage.html#geogig-plugin-interface-and-tools

#export GEOGIG_VERSION='1.1.0'
export GEOGIG_VERSION_A='1.2.0'
export GEOGIG_VERSION_B='1.2.1'
export GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X='2.12'

echo "#"
echo "# Installation de unzip"
echo "#"
echo "sudo apt-get install -y unzip"
      sudo apt-get install -y unzip
echo "#"
echo "# Installation de spatialite-gui sqlitebrowser et sqlite3"
echo "#"
echo "sudo apt-get install -y spatialite-gui sqlitebrowser sqlite3"
      sudo apt-get install -y spatialite-gui sqlitebrowser sqlite3
echo "#"
echo "sudo apt-get install -y libspatialite-dev"
      sudo apt-get install -y libspatialite-dev
echo "#"
echo "export OLDPWDFG=$(pwd)"
      export OLDPWDFG=$(pwd)
echo $OLDPWDFG
echo "cd .."
      cd ..
echo "pwd"
      pwd
echo "#"
# echo "# Installation des plugins de geoserver_geogig Version ZIP "
# echo "# ---------------------------------------------------------"
# echo "# Ce sont les plugins que l'on telecharge en version zip, par geogig lui-meme"
# echo "# OLD : Geogig lui meme ne semble pas fonctionner correctement avec postgresql 10"
# echo "#"
# echo "# Téléchargement des plugins version 1.2.0 et 1.2.1"
# echo "#  - geoserver-geogig-osm-plugin"
# echo "#  - geoserver-geogig-plugin"
# echo "#  - geogig-cli-app"
# echo "#"
# echo "# https://github.com/locationtech/geogig/releases"
# echo "#"
# echo "# Attention : il faut peut-etre contourner le proxy..."
# echo "# environnementTravail/docksshuttle1.sh"
# echo "#"
# echo "# VERSION_A"
# #echo "wget http://download.locationtech.org/geogig/geogig-$GEOGIG_VERSION_A.zip \ "
# #echo "     -O geogig-$GEOGIG_VERSION_A.zip"
# #      wget http://download.locationtech.org/geogig/geogig-$GEOGIG_VERSION_A.zip \
# #          -O geogig-$GEOGIG_VERSION_A.zip
# echo "wget https://github.com/locationtech/geogig/releases/download/v$GEOGIG_VERSION_A/geogig-plugins-osm-$GEOGIG_VERSION_A.zip \ "
# echo "     -O geogig-plugins-osm-$GEOGIG_VERSION_A.zip"
#       wget https://github.com/locationtech/geogig/releases/download/v$GEOGIG_VERSION_A/geogig-plugins-osm-$GEOGIG_VERSION_A.zip \
#            -O geogig-plugins-osm-$GEOGIG_VERSION_A.zip
# echo "# VERSION_B"
# echo "wget https://github.com/locationtech/geogig/releases/download/v$GEOGIG_VERSION_B/geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip \ "
# echo "     -O geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip"
#       wget https://github.com/locationtech/geogig/releases/download/v$GEOGIG_VERSION_B/geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip \
#            -O geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip
# echo "wget https://github.com/locationtech/geogig/releases/download/v$GEOGIG_VERSION_B/geogig-cli-app-$GEOGIG_VERSION_B.zip \ "
# echo "     -O geogig-cli-app-$GEOGIG_VERSION_B.zip"
#       wget https://github.com/locationtech/geogig/releases/download/v$GEOGIG_VERSION_B/geogig-cli-app-$GEOGIG_VERSION_B.zip \
#            -O geogig-cli-app-$GEOGIG_VERSION_B.zip
# echo "#"
# echo "# Si celui ci existe dejà, Suppression du sous-repertoire geogig"
# echo "#"
# echo "rm -rf geoserver-geogig-osm-plugin"
#       rm -rf geoserver-geogig-osm-plugin
# echo "rm -rf geoserver-geogig-plugin"
#       rm -rf geoserver-geogig-plugin
# echo "rm -rf geogig"
#       rm -rf geogig
#
#
# echo "#"
# echo "# Decompression du fichier"
# echo "#"
# echo "unzip geogig-plugins-osm-$GEOGIG_VERSION_A.zip -d geoserver-geogig-osm-plugin"
#       unzip geogig-plugins-osm-$GEOGIG_VERSION_A.zip -d geoserver-geogig-osm-plugin
# echo "unzip geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip -d geoserver-geogig-plugin"
#       unzip geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip -d geoserver-geogig-plugin
# echo "unzip geogig-cli-app-$GEOGIG_VERSION_B.zip -d ."
#       unzip geogig-cli-app-$GEOGIG_VERSION_B.zip -d .
#
#
# echo "#"
# echo "# Nettoyage"
# echo "#"
# echo "rm -f geogig-plugins-osm-$GEOGIG_VERSION_A.zip"
#       rm -f geogig-plugins-osm-$GEOGIG_VERSION_A.zip
# echo "rm -f geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip"
#       rm -f geogig-$GEOGIG_VERSION_B-geoserver-$GEOSERVER_GEOGIG_PLUGIN_VERSION_COURT_B_X-plugin.zip
# echo "rm -f geogig-cli-app-$GEOGIG_VERSION_B.zip"
#       rm -f geogig-cli-app-$GEOGIG_VERSION_B.zip
#
#
#
# echo "#"
# echo "# Ajout de geogig/bin dans le PATH"
# echo "#"
# echo "# plusieurs solutions s'offrent à nous :"
# echo "#   - première solution, on recopie les executables dans un repertoire plus conventionnel"
# echo "#   - seconde solution, on modifie le path dans le fichier zshrc_antigen"
# echo "#   - troisième solution (qui ne fonctionne pas en dehors du script), on modifie le path dans le script"
# echo "#"
# echo "# On adopte la première solution"
# echo "# suppression des fichiers deja preésents dans libexec"
# echo "rm -f $HOME/.local/libexec/*"
#       rm -f $HOME/.local/libexec/*
# echo "cp -rf $HOME/Documents/install/source/geogig/libexec/* $HOME/.local/libexec/"
#       cp -rf $HOME/Documents/install/source/geogig/libexec/* $HOME/.local/libexec/
# echo "cp -f $HOME/Documents/install/source/geogig/bin/geogig $HOME/.local/bin/"
#       cp -f $HOME/Documents/install/source/geogig/bin/geogig $HOME/.local/bin/
# echo "#-----------------------------------------------------------------------"
echo "#"
echo "#"
echo "# -------------------------------------"
echo "# Installation de jts Version Github "
echo "# -------------------------------------"
echo "# Besoin de jts pour geogig ??? : non, pas pour la verison 1.4 de geogig"
echo "# donc, inutile pour le moment"
echo "#"
#echo "# Suppression du repertoire si il existe"
#echo "rm -rf jts"
#      rm -rf jts
#echo "#"
#echo "git clone https://github.com/locationtech/jts"
#      git clone https://github.com/locationtech/jts
#echo "git fetch https://github.com/locationtech/geogig"
#      git fetch https://github.com/locationtech/geogig
#echo "#"
#echo "# On lance l'install dans le repertoire que l'on vient de cloner"
#echo "#"
#echo "cd jts"
#      cd jts
#echo "#"
#echo "# Installation de maven"
#echo "#"
#echo "sudo apt-get install -y maven"
#      sudo apt-get install -y maven
#echo "#"
#echo "cd src"
#      cd src
#echo "#"
#echo "#"
#echo "git checkout master"
#      git checkout master
#echo "#"
#echo "#"
#echo "mvn clean install"
#      mvn clean install
#echo "#"
##echo "mvn clean install -DskipTests=true"
##      mvn clean install -DskipTests=true
#echo "#"
#echo "#"
echo "cd $OLDPWDFG"
      cd $OLDPWDFG
echo "pwd"
      pwd
#echo "# Ajout de jts/bin dans le PATH"
#echo "#"
#echo "# plusieurs solutions s'offrent à nous :"
#echo "#   - première solution, on recopie les executables dans un repertoire plus conventionnel"
#echo "#   - seconde solution, on modifie le path dans le fichier zshrc_antigen"
#echo "#   - troisième solution (qui ne fonctionne pas en dehors du script), on modifie le path dans le script"
#echo "#"
#echo "# On adopte la première solution"
#echo "# suppression des fichiers deja preésents dans libexec"
#echo "rm -f $HOME/.local/libexec/*"
#      rm -f $HOME/.local/libexec/*
##echo "cp -rf $HOME/Documents/install/source/jts/src/cli/app/target/geogig/libexec/* $HOME/.local/libexec/"
##      cp -rf $HOME/Documents/install/source/jts/src/cli/app/target/geogig/libexec/* $HOME/.local/libexec/
##echo "cp -f $HOME/Documents/install/source/jts/src/cli/app/target/geogig/bin/geogig $HOME/.local/bin/"
##      cp -f $HOME/Documents/install/source/jts/src/cli/app/target/geogig/bin/geogig $HOME/.local/bin/
echo "#"
echo "#"
echo "# -------------------------------------"
echo "# Installation de geogig Version Github "
echo "# -------------------------------------"
echo "# la compilation des sources du depot master est documentée en deux endroits"
echo "# - http://geogig.org/technical/developers.html"
echo "# - https://travis-ci.org/locationtech/geogig/builds/405169486?utm_source=github_status&utm_medium=notification"
echo "#"
echo "cd $OLDPWDFG"
      cd $OLDPWDFG
echo "pwd"
      pwd
echo "cd .."
      cd ..
echo "pwd"
      pwd
echo "#"
#echo "# Suppression du repertoire si il existe"
echo "rm -rf geogig"
      rm -rf geogig
echo "#"
echo "git clone https://github.com/locationtech/geogig"
      git clone https://github.com/locationtech/geogig
#echo "git fetch https://github.com/locationtech/geogig"
#      git fetch https://github.com/locationtech/geogig
echo "#"
echo "# On lance l'install dans le repertoire que l'on vient de cloner"
echo "#"
echo "cd geogig"
      cd geogig
echo "#"
echo "# Installation de maven"
echo "#"
echo "sudo apt-get install -y maven"
      sudo apt-get install -y maven
echo "#"
echo "cd src"
      cd src
echo "#"
#echo "git checkout 1.1.x"
#      git checkout 1.1.x
echo "#"
#echo "git checkout 1.2.x"
#      git checkout 1.2.x
echo "#"
#echo "git checkout 1.3.x"
#      git checkout 1.3.x
echo "# test le 20191024 : pb de crs après la compilation"
echo "git checkout master"
      git checkout master
echo "# test le 20191024 : il faut utiliser la syntaxe de geogig 1, dans"
echo "# ../geogigfg/bin/06_...."
echo "git checkout 1.4.x"
      git checkout 1.4.x
echo "#"
echo "#"
echo "./mvnw clean install -DskipTests=true"
      ./mvnw clean install -DskipTests=true
echo "#"
#echo "mvn -B -U install -DskipTests=true"
#      mvn -B -U install -DskipTests=true
echo "#"
echo "#"
echo "#"
echo "cd $OLDPWDFG"
      cd $OLDPWDFG
echo "pwd"
      pwd
echo "# Ajout de geogig/bin dans le PATH"
echo "#"
echo "# plusieurs solutions s'offrent à nous :"
echo "#   - première solution, on recopie les executables dans un repertoire plus conventionnel"
echo "#   - seconde solution, on modifie le path dans le fichier zshrc_antigen"
echo "#   - troisième solution (qui ne fonctionne pas en dehors du script), on modifie le path dans le script"
echo "#"
echo "# On adopte la première solution"
#echo "# suppression des fichiers deja preésents dans libexec"
#echo "rm -f $HOME/.local/libexec/*"
#      rm -f $HOME/.local/libexec/*
echo "cp -rf $HOME/Documents/install/source/geogig/src/cli/app/target/geogig/libexec/* $HOME/.local/libexec/"
      cp -rf $HOME/Documents/install/source/geogig/src/cli/app/target/geogig/libexec/* $HOME/.local/libexec/
echo "cp -f $HOME/Documents/install/source/geogig/src/cli/app/target/geogig/bin/geogig $HOME/.local/bin/"
      cp -f $HOME/Documents/install/source/geogig/src/cli/app/target/geogig/bin/geogig $HOME/.local/bin/
#echo "#-----------------------------------------------------------------------"
#echo "echo \$PATH"
#echo "export PATH=\$PATH:/home/fred/Documents/install/source/geogig/geogig/bin"
#echo "echo \$PATH"
#      export PATH=$PATH:/home/fred/Documents/install/source/geogig/geogig/bin
#      echo $PATH
#echo "#-----------------------------------------------------------------------"
#echo "#-----------------------------------------------------------------------"
#echo "echo \$PATH"
#echo "export PATH=\$PATH:/home/fred/Documents/install/source/geogig/geogig/src/cli-app/target/geogig/bin"
#echo "echo \$PATH"
#      export PATH=$PATH:/home/fred/Documents/install/source/geogig/geogig/src/cli-app/target/geogig/bin
#      echo $PATH
#echo "#-----------------------------------------------------------------------"
echo "#"
