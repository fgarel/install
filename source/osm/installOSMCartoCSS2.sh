#!/bin/sh



# 8ème Partie - Installation d'un environnement OSM
###############################################
# Installation d'un environnement OSM
echo "# 8ème Partie - paramétrage et préparation de cartocss"
echo "######################################################"
echo "#"
echo "# Ce script présente la fin de l'installation de cartocss"
echo "# CartoCSS n'est peut-etre pas la technique ideal"
echo "# mais il faut etudier un peu plus le monde mapbox..."
echo "# https://blog.mapbox.com/the-end-of-cartocss-da2d7427cf1"
echo "#"
echo "# Donc, pour le moment, on reste avec cartoCSS"
echo "#"
echo "# Cartocss est composé de deux choses :"
echo "#"
echo "# - la première chose, c'est un fichier d'extension (.style)"
echo "#   et ce fichier (.style) est utilisé comme paramètre par l'utilitaire osm2pgsql"
echo "#   pour l'import des données du format pbf vers un schema dans postgresql"
echo "#   Ce fichier (.style) est recopié dans le repertoire ~/documents/osmosis via le script ./osmCreateRepository.sh"
echo "#   Ce fichier (.style) est utilisé par l'utilitaire osm2pgsql dans les scripts osmImportFirstTime.sh et osmImportOtherTime.sh"
echo "#"
echo "# - la seconde chose, c'est que cartocss peut etre utilisé utilisé pour"
echo "#   remplacer les feuilles de styles (.xml) de mapnik"
echo "#   cartocss est en effet composé de multiples fichier (project.mml et *.mss)"
echo "#"

echo "#"


echo "#"
echo "export OLDPWDFG=$(pwd)"
      export OLDPWDFG=$(pwd)
      echo $OLDPWDFG
echo "#"
#echo "# Installation d'openstreetmap-carto"
echo "cd .."
      cd ..
echo "pwd"
      pwd
#echo "rm -rf openstreetmap-carto"
#      rm -rf openstreetmap-carto
#echo "git clone https://github.com/gravitystorm/openstreetmap-carto"
#      git clone https://github.com/gravitystorm/openstreetmap-carto
#echo "cd openstreetmap-carto"
#      cd openstreetmap-carto
#echo "pwd"
#      pwd
#echo "#"
#echo "#"
#echo "sudo make install"
#      sudo make install
#echo "#"
#echo "cd $OLDPWDFG"
#      cd $OLDPWDFG
#echo "pwd"
#      pwd
echo "#"
echo "# Installation d'openstreetmap-carto-vector-tiles"
echo "#"
echo "# Les tuiles vecteurs"
echo "# https://github.com/mapbox/awesome-vector-tiles"
echo "#"
#echo "cd .."
#      cd ..
#echo "pwd"
#      pwd
#echo "rm -rf openstreetmap-carto-vector-tiles"
#      rm -rf openstreetmap-carto-vector-tiles
echo "git clone https://github.com/geofabrik/openstreetmap-carto-vector-tiles"
      git clone https://github.com/geofabrik/openstreetmap-carto-vector-tiles
echo "git fetch https://github.com/geofabrik/openstreetmap-carto-vector-tiles"
      git fetch https://github.com/geofabrik/openstreetmap-carto-vector-tiles
echo "cd openstreetmap-carto-vector-tiles"
      cd openstreetmap-carto-vector-tiles
echo "pwd"
      pwd
echo "#"
echo "# Apres avoir cloner le projet, il faut faire quelques complements :"
echo "#   - installer des fontes"
echo "#   - faire un make. Ce make se charge de plusieurs autres choses :"
echo "#     - telechargement des cartes de bases"
echo "#     - installation d'outils complementaires (carto et kosmtik)"
echo "#"
echo "#"
#echo "# Installation des fonts"
#echo "#"
#echo "# D'après la page suivante,"
#echo "# https://github.com/geofabrik/openstreetmap-carto-vector-tiles/blob/master/INSTALL.md"
#echo "# Il est nécessaire d'installer des polices supplémentaires pour utiliser ce système de rendu"
#echo "#"
#echo "# Cette installation est dupliquée dans ../environnementTravail/installFonts.sh"
#echo "#"
#echo "sudo aptitude install -y fonts-noto fonts-noto-cjk fonts-noto-hinted fonts-noto-unhinted fonts-hanazono ttf-unifont"
#      sudo aptitude install -y fonts-noto fonts-noto-cjk fonts-noto-hinted fonts-noto-unhinted fonts-hanazono ttf-unifont
#echo "sudo apt-get install -y fonts-noto fonts-noto-cjk fonts-noto-hinted fonts-noto-unhinted fonts-hanazono ttf-unifont"
#      sudo apt-get install -y fonts-noto fonts-noto-cjk fonts-noto-hinted fonts-noto-unhinted fonts-hanazono ttf-unifont
#echo "sudo aptitude install -y fonts-dejavu ttf-dejavu ttf-dejavu-core ttf-dejavu-extra"
#      sudo aptitude install -y fonts-dejavu ttf-dejavu ttf-dejavu-core ttf-dejavu-extra
#echo "sudo apt-get install -y fonts-dejavu ttf-dejavu ttf-dejavu-core ttf-dejavu-extra"
#      sudo apt-get install -y fonts-dejavu ttf-dejavu ttf-dejavu-core ttf-dejavu-extra
#echo "#"
#echo "#"
#echo "# Après installation des fonts, il faut les enregistrer"
#echo "# https://wiki.debian.org/Fonts"
#echo "fc-cache -fv # rebuilds cached list of fonts"
#      fc-cache -fv
echo "#"
echo "# Execution de la commande make"
echo "#"
echo "# Cependant, sept choses sont à faire avant d'executer make"
echo "#   - installer le paquet python-yaml"
echo "#   - modifier le makfile de facon a pointer vers la bonne base de données"
echo "#   - ajout de l'utilisateur www-data dans le fichier .pgpass"
echo "#   - telecharger quelques données (contour continent océan)"
echo "#   - installer npm"
echo "#   - installer carto et kosmtik"
echo "#   - modification du fichier project.mml pour qu'il pointe vers la bonne base de données"
echo "# Une chose est à faire après le make"
echo "#   - modification du fichier project.mml pour supprimer la directive source"
echo "#"
echo "sudo apt-get install -y python-yaml"
      sudo apt-get install -y python-yaml
echo "#"
echo "# Modification du Makefile"
echo "	#PGOPTIONS='--client-min-messages=error' psql -d gis -f add-indexes.sql >/dev/null || true"
echo "	PGOPTIONS='--client-min-messages=error' psql -h 172.17.0.1 -U www-data -d osm -f add-indexes.sql >/dev/null || true"
echo "sed -i -E -e 's/-d gis/-h 172.17.0.1 -U www-data -d osm/g' ../openstreetmap-carto-vector-tiles/Makefile"
      sed -i -E -e 's/-d gis/-h 172.17.0.1 -U www-data -d osm/g' ../openstreetmap-carto-vector-tiles/Makefile
echo "#"
echo "# L'utilisateur www-data doit pouvoir se connecter sans avoir a saisir son mot de passe"
echo "echo '*:*:*:www-data:www-data' >> ~/.pgpass"
      echo '*:*:*:www-data:www-data' >> ~/.pgpass
echo "# On rajoute aussi osmuser et mapnikuser"
echo "echo '*:*:*:osmuser:osmpass' >> ~/.pgpass"
      echo '*:*:*:osmuser:osmpass' >> ~/.pgpass
echo "echo '*:*:*:mapnikuser:mapnikpass' >> ~/.pgpass"
      echo '*:*:*:mapnikuser:mapnikpass' >> ~/.pgpass
echo "chmod 600 ~/.pgpass"
      chmod 600 ~/.pgpass
echo "#"
echo "# Il faut aussi telecharger des données pour que le test fonctionne"
echo "#"
echo "# http://openstreetmapdata.com/data/land-polygons"
echo "# https://github.com/gravitystorm/openstreetmap-carto/issues/39"
echo "# "
#echo "# curl http://data.openstreetmapdata.com/simplified-land-polygons-complete-3857.zip"
#echo "curl -O http://www.volkerschatz.com/net/osm/scripts/get-shapefiles.sh"
#      curl -O http://www.volkerschatz.com/net/osm/scripts/get-shapefiles.sh
#echo "chmod +x get-shapefiles.sh"
#      chmod +x get-shapefiles.sh
#echo "./get-shapefiles.sh"
#      ./get-shapefiles.sh
echo "cd scripts"
      cd scripts
echo "./get-shapefiles.py --no-shape"
      ./get-shapefiles.py --no-shape
echo "cd .."
      cd ..
echo "#"
echo "# Installation de cartocss et de kosmtik"
echo "#"
echo "# D'après la page suivante,"
echo "# https://github.com/mapbox/carto"
echo "# https://cartocss.readthedocs.io/en/latest/"
echo "# Il existe un outil, appelé carto, developpé a partir de nodejs,"
echo "# qui permet de transfomer des styles mml en style xml"
#echo "#"
####echo "# Installation a partir des paquets : trop vieille version..."
####echo "sudo aptitude install -y node-carto"
####      sudo aptitude install -y node-carto
####echo "sudo apt-get install -y node-carto"
####      sudo apt-get install -y node-carto
#echo "#"
echo "# Installation a partir de npm : it's rocks"
echo "sudo apt-get install -y npm"
      sudo apt-get install -y npm
echo "npm -v"
      npm -v
echo "#"
#echo "# Mise à jour de npm (en utilisant npm...)"
#echo "# https://stackoverflow.com/questions/23393707/how-to-update-npm"
#echo "sudo npm install -g npm"
#      sudo npm install -g npm
#echo "sudo apt-get remove -y npm"
#      sudo apt-get remove -y npm
#echo "npm -v"
#      npm -v
echo "#"
echo "# carto est pas a installer localement, tandis que"
echo "# kosmtik est a installer globalement (-g)"
echo "# Ils vont etre installé dans le sous-repertoire node_modules "
echo "# du repertoire openstreetmap-carto-vector-tiles"
echo "#"
echo "# De plus, ces deux outils sont à installer avant de faire le make"
echo "# car l'outil make a besoin de l'outil"
echo "# node_modules/.bin/mapnik-shapeindex.js"
echo "#"
#echo "#"
#echo "cd ../openstreetmap-carto-vector-tiles"
#      cd ../openstreetmap-carto-vector-tiles
####echo "sudo npm -g install carto"
####      sudo npm -g install carto
echo "npm install carto"
      npm install carto
#echo "#"
#echo "sudo npm -g install mapnik"
#      sudo npm -g install mapnik
#echo "npm install mapnik"
#      npm install mapnik
echo "sudo npm -g install kosmtik"
      sudo npm -g install kosmtik
#echo "npm install kosmtik"
#      npm install kosmtik
#echo "sudo npm -g install tessera"
#      sudo npm -g install tessera
###echo "#"
####echo "# https://github.com/mojodna/tessera"
####echo "sudo npm -g install tessera"
####      sudo npm -g install tessera
echo "#"
echo "# Modification du fichier project.mml"
echo "#"
echo "# A l'interieur du container, nous voulons lancer kosmtik pour qu'il "
echo "# serve le project.mml qui est dans le repertoire openstreetmap-carto-vector-tiles"
echo "# Cependant, nous devons modifier un peu ce fichier project.mml"
echo "#"
echo  "# Modification du fichier project.mml de facon a ce qu'il pointe vers la base de données"
echo "#"
echo "#"
echo "# Il faut remplacer :"
echo "#"
echo '#  osm2pgsql: &osm2pgsql'
echo '#    type: "postgis"'
echo '#    dbname: "gis"'
echo '#    key_field: ""'
echo '#    geometry_field: "way"'
echo "#"
echo "# par :"
echo "#"
echo '#  osm2pgsql: &osm2pgsql'
echo '#    type: "postgis"'
echo '#    host: 172.17.0.1'
echo '#    dbname: "osm"'
echo '#    user: "www-data"'
echo '#    password: "www-data"'
echo '#    key_field: ""'
echo '#    geometry_field: "way"'
echo "#"
echo "sed -i -E -e '/  type: \"postgis\"/ a \ \ \ \ host: 172.17.0.1' ../openstreetmap-carto-vector-tiles/project.mml"
      sed -i -E -e '/  type: \"postgis\"/ a \ \ \ \ host: 172.17.0.1' ../openstreetmap-carto-vector-tiles/project.mml
echo "sed -i -E -e 's/  dbname: \"gis\"/  dbname: \"osm\"/g' ../openstreetmap-carto-vector-tiles/project.mml"
      sed -i -E -e 's/  dbname: \"gis\"/  dbname: \"osm\"/g' ../openstreetmap-carto-vector-tiles/project.mml
echo "sed -i -E -e '/  dbname: \"osm\"/ a \ \ \ \ user: \"www-data\"' ../openstreetmap-carto-vector-tiles/project.mml"
      sed -i -E -e '/  dbname: \"osm\"/ a \ \ \ \ user: \"www-data\"' ../openstreetmap-carto-vector-tiles/project.mml
echo "sed -i -E -e '/  user: \"www-data\"/ a \ \ \ \ password: \"www-data\"' ../openstreetmap-carto-vector-tiles/project.mml"
      sed -i -E -e '/  user: \"www-data\"/ a \ \ \ \ password: \"www-data\"' ../openstreetmap-carto-vector-tiles/project.mml
echo "#"
echo "# Autre modification à faire dans le fichier project.mml"
echo "#"
echo "# Pour le moment, on utilise le projet avec kosmtik, sans tessera"
echo "#"
echo "sed -i -E -e 's/^source: /#source: /g' ../openstreetmap-carto-vector-tiles/project.mml"
      sed -i -E -e 's/^source: /#source: /g' ../openstreetmap-carto-vector-tiles/project.mml
echo "#"
echo "#"
echo "# Enfin, le make !"
echo "#"
echo "# Une fois que l'on a installé npm, on peut executer le make (Makefile)"
echo "# de facon à installer les outils complementaires (tessera, ....)"
echo "#"
echo "make"
      make
echo "#"
#echo "sudo make install"
#      sudo make install
echo "#"
echo "# Après le make, nous retournons effectuer "
echo "# une autre modification dans le fichier project.mml"
echo "#"
echo "# Pour le moment, on utilise le projet avec kosmtik, sans tessera"
echo "#"
echo "sed -i -E -e 's/^source: /#source: /g' ../openstreetmap-carto-vector-tiles/project.mml"
      sed -i -E -e 's/^source: /#source: /g' ../openstreetmap-carto-vector-tiles/project.mml
echo "#"
echo "#"
echo "cd $OLDPWDFG"
      cd $OLDPWDFG
echo "pwd"
      pwd
echo "#"
echo "#"
echo "#----------------------"
echo "# Test de l'installation d'openstreetmap-carto"
echo "# et de openstreetmap-carto-vector-tiles :"
echo "#----------------------"
echo "#"
echo "# Nous avons deux modes d'utilisation :"
echo "# - soit l'utilisation du fihcier (.style),"
echo "# - soit l'utilisation des fichiers (project.mml et *.mss)"
echo "#   https://cartocss.readthedocs.io/en/latest/mml.html#mml-file-structure"
echo "#"
echo "# En ce qui concerne l'utilisation du fichier (.style),"
echo "#   - l'usage de cartocss ne pose aucun problème (cf osmImportFirstTime.sh)"
echo "# En ce qui concerne l'utilisation des fichiers (.mml et .mss),"
echo "#   - l'utilisation de l'utiliaire carto se fait comme ceci"
echo "#     cd openstreetmap-carto-vector-tiles"
echo "#     carto project.mml > openstreetmap-carto-vector-tiles.xml"
echo "#     mapnik-render openstreetmap-carto-vector-tiles.xml openstreetmap-carto-vector-tiles.png"
echo "#   - l'utilisation de l'utilitaire kosmtik se fait comme ceci"
echo "#     - dans le container"
echo "#       kosmtik --port 8000 --host 172.17.0.2 project.mml"
echo "#     - sur la machine physique local"
echo "#       http://172.17.0.2:8000"
echo "#   - et pour l'utilisation conjointe de mapnik et des feuilles de style cartocss"
echo "#     il faut deja que l'on ait installé mapnik et python-mapnik ..."
#echo "# en fait, avant de pouvoir"
#echo "# tester cartocss, il faut que l'on ait installer mapnik...."
echo "#    .. on ne fera donc les tests qu'après avoir installé mapnik et meme apres python-mapnik...."
echo "#    http://wiki.openstreetmap.org/wiki/User:Stanton/Mapnik_Test_Server#Mapnik_Initialization"
echo "#"
echo "# Autres styles"
echo "# http://wiki.openstreetmap.org/wiki/List_of_CartoCSS_projects"
echo "# https://blog.osm-baustelle.de/index.php/2017/07/17/yet-some-more-style-sheets-again/#more-203"
echo "# https://github.com/mapbox/mapbox-studio-pencil.tm2"
echo "# https://github.com/mapbox/mapbox-studio-space-station.tm2"
echo "# https://github.com/stekhn/blossom"
echo "#----------------------"
echo "#"
echo "#----------------------"
echo "# Reste a faire :"
echo "#----------------------"
#echo "# ./installOSM.sh"
#echo "# ./installOSMCartoCSS.sh"
####echo "# ./installOSMBoostDebian.sh"
echo "# ./installOSMMapnikDebianPaquet.sh"
####echo "# ./installOSMMapnikUbuntuSource.sh"
##echo "# ./installOSMMapnikUbuntuPaquet.sh"
echo "# ./installOSMPythonMapnikDebian.sh"
##echo "# ./installOSMPythonMapnikUbuntu.sh"
echo "# ./installOSMTirex.sh"
echo "# ./installOSMTilemanDebian.sh"
##echo "# ./installOSMTilemanUbuntu.sh"
echo "#----------------------"


echo "#"
