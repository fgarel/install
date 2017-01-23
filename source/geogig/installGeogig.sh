#!/bin/sh

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
echo "# Installation de geogig : Téléchargement de la dernière version"
echo "#"
echo "# Attention : il faut peut-etre contourner le proxy..."
echo "# environnementTravail/docksshuttle1.sh"
echo "#"
echo "wget http://download.locationtech.org/geogig/geogig-1.0.zip \ "
echo "     -O geogig-1.0.zip"
      wget http://download.locationtech.org/geogig/geogig-1.0.zip \
          -O geogig-1.0.zip
echo "#"
echo "# Si celui ci existe dejà, Suppression du sous-repertoire geogig"
echo "#"
echo "rm -rf geogig"
      rm -rf geogig
echo "#"
echo "# Decompression du fichier"
echo "#"
echo "unzip geogig-1.0.zip -d ."
      unzip geogig-1.0.zip -d .
echo "#"
echo "# Nettoyage"
echo "#"
echo "rm -f geogig-1.0.zip"
      rm -f geogig-1.0.zip
echo "#"
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
