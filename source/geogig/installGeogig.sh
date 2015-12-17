#!/bin/sh

echo "#"
echo "# Installation de spatialite-gui sqlitebrowser et sqlite3"
echo "#"
echo "# sudo apt-get install spatialite-gui sqlitebrowser sqlite3"
sudo apt-get install spatialite-gui sqlitebrowser sqlite3
echo "#"
echo "# Installation de geogig : Téléchargement de la dernière version"
echo "#"
echo "# wget http://sourceforge.net/projects/geogig/files/latest/download"
wget http://sourceforge.net/projects/geogig/files/latest/download \
     -O geogig-cli-app.zip
echo "#"
echo "# Si celui ci existe dejà, Suppression du sous-repertoire geogig"
echo "#"
echo "# rm -rf geogig"
rm -rf geogig
echo "#"
echo "# Decompression du fichier"
echo "#"
echo "# unzip geogig-cli-app.zip"
unzip geogig-cli-app.zip
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