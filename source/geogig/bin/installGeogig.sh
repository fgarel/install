#!/bin/sh

# vu ici : http://geogig.org/
export GEOGIG_VERSION='1.2.0'

echo "#"
echo "# Installation de unzip"
echo "#"
echo "sudo apt-get install unzip"
      sudo apt-get install unzip
echo "#"
echo "# Installation de spatialite-gui sqlitebrowser et sqlite3"
echo "#"
echo "sudo apt-get install spatialite-gui sqlitebrowser sqlite3"
      sudo apt-get install spatialite-gui sqlitebrowser sqlite3
echo "#"
echo "export OLDPWDFG=$(pwd)"
      export OLDPWDFG=$(pwd)
echo $OLDPWDFG
echo "cd .."
      cd ..
echo "pwd"
      pwd
echo "#"
echo "# Installation de geogig Version ZIP "
echo "# ----------------------------------"
echo "#"
echo "# Téléchargement de la version 1.2"
echo "#"
echo "# Attention : il faut peut-etre contourner le proxy..."
echo "# environnementTravail/docksshuttle1.sh"
echo "#"
#echo "wget http://download.locationtech.org/geogig/geogig-1.1.0.zip \ "
#echo "     -O geogig-1.1.0.zip"
#      wget http://download.locationtech.org/geogig/geogig-1.1.0.zip \
#          -O geogig-1.1.0.zip
echo "wget http://download.locationtech.org/geogig/geogig-$GEOGIG_VERSION.zip \ "
echo "     -O geogig-$GEOGIG_VERSION.zip"
      wget http://download.locationtech.org/geogig/geogig-$GEOGIG_VERSION.zip \
          -O geogig-$GEOGIG_VERSION.zip
echo "#"
echo "# Si celui ci existe dejà, Suppression du sous-repertoire geogig"
echo "#"
echo "rm -rf geogig"
      rm -rf geogig
echo "#"
echo "# Decompression du fichier"
echo "#"
#echo "unzip geogig-1.1.0.zip -d ."
#      unzip geogig-1.1.0.zip -d .
echo "unzip geogig-$GEOGIG_VERSION.zip -d ."
      unzip geogig-$GEOGIG_VERSION.zip -d .
echo "#"
echo "# Nettoyage"
echo "#"
#echo "rm -f geogig-1.1.0.zip"
#      rm -f geogig-1.1.0.zip
echo "rm -f geogig-$GEOGIG_VERSION.zip"
      rm -f geogig-$GEOGIG_VERSION.zip

echo "#"
echo "#"
echo "# Installation de geogig Version Github "
echo "# -------------------------------------"
echo "#"
echo "# Suppression du repertoire si il existe"
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
echo "# Pour la compilation, la doc est ici :"
echo "# http://geogig.org/technical/developers.html"
echo "#"
echo "# Installation de maven"
echo "#"
echo "sudo apt-get install -y maven"
      sudo apt-get install -y maven
echo "#"
echo "cd src/parent"
      cd src/parent
echo "#"
echo "mvn clean install"
      mvn clean install
echo "#"
echo "#"
echo "#"
echo "#"
echo "#"
echo "cd $OLDPWDFG"
      cd $OLDPWDFG
echo "pwd"
      pwd
echo "# Ajout de geogig/bin dans le PATH"
echo "#"
echo "#-----------------------------------------------------------------------"
echo "echo \$PATH"
echo "export PATH=\$PATH:/home/fred/Documents/install/source/geogig/geogig/bin"
echo "echo \$PATH"
      export PATH=$PATH:/home/fred/Documents/install/source/geogig/geogig/bin
      echo $PATH
echo "#-----------------------------------------------------------------------"
echo "#"
