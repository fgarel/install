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
echo "rm -rf openstreetmap-carto-vector-tiles"
      rm -rf openstreetmap-carto-vector-tiles
echo "git clone https://github.com/geofabrik/openstreetmap-carto-vector-tiles"
      git clone https://github.com/geofabrik/openstreetmap-carto-vector-tiles
echo "git fetch https://github.com/geofabrik/openstreetmap-carto-vector-tiles"
      git fetch https://github.com/geofabrik/openstreetmap-carto-vector-tiles
echo "cd openstreetmap-carto-vector-tiles"
      cd openstreetmap-carto-vector-tiles
echo "pwd"
      pwd
echo "git fetch origin master"
      git fetch origin master
echo "#"
echo "# Apres avoir cloner le projet, il faut faire quelques complements :"
echo "#   - installer des fontes"
echo "#   - faire un make. Ce make se charge de plusieurs autres choses :"
echo "#     - telechargement des cartes de bases"
echo "#     - installation d'outils complementaires (carto et kosmtik)"
echo "#"
echo "#"
# echo "# Installation des fonts"
# echo "#"
# echo "# D'après la page suivante,"
# echo "# https://github.com/geofabrik/openstreetmap-carto-vector-tiles/blob/master/INSTALL.md"
# echo "# Il est nécessaire d'installer des polices supplémentaires pour utiliser ce système de rendu"
# echo "#"
# echo "# Cette installation est dupliquée dans ../environnementTravail/installFonts.sh"
# echo "#"
# echo "sudo aptitude install -y fonts-noto fonts-noto-cjk fonts-noto-hinted fonts-noto-unhinted fonts-hanazono ttf-unifont"
#      sudo aptitude install -y fonts-noto fonts-noto-cjk fonts-noto-hinted fonts-noto-unhinted fonts-hanazono ttf-unifont
# echo "sudo apt-get install -y fonts-noto fonts-noto-cjk fonts-noto-hinted fonts-noto-unhinted fonts-hanazono ttf-unifont"
#      sudo apt-get install -y fonts-noto fonts-noto-cjk fonts-noto-hinted fonts-noto-unhinted fonts-hanazono ttf-unifont
# echo "sudo aptitude install -y fonts-dejavu ttf-dejavu ttf-dejavu-core ttf-dejavu-extra"
#      sudo aptitude install -y fonts-dejavu ttf-dejavu ttf-dejavu-core ttf-dejavu-extra
# echo "sudo apt-get install -y fonts-dejavu ttf-dejavu ttf-dejavu-core ttf-dejavu-extra"
#      sudo apt-get install -y fonts-dejavu ttf-dejavu ttf-dejavu-core ttf-dejavu-extra
# echo "#"
# echo "#"
# echo "# Après installation des fonts, il faut les enregistrer"
# echo "# https://wiki.debian.org/Fonts"
# echo "fc-cache -fv # rebuilds cached list of fonts"
#      fc-cache -fv

echo "#"

echo "# Comme recommandé, Création d'index, mais :"
echo "#   - l'utilisateur est www-data"
echo "#   - la base est osm"
echo "# La recomandation est vue ici :"
echo "# https://github.com/geofabrik/openstreetmap-carto-vector-tiles/blob/master/INSTALL.md"
echo "#"
echo 'sudo -u www-data \'
echo "     psql -d osm -f indexes.sql"
      sudo -u www-data \
           psql -d osm -f indexes.sql
echo "#"
echo "#"
echo "#"
echo "# Execution de la commande make"
echo "#"
echo "# Cependant, sept choses sont à faire avant d'executer make"
echo "#   - installer le paquet python-yaml"
echo "#   - modifier le makfile :"
echo "#       - de facon a pointer vers la bonne base de données"
echo "#       - de facon à utiliser python3"
echo "#   - ajout de l'utilisateur www-data dans le fichier .pgpass"
echo "#   - telecharger quelques données (contour continent océan)"
echo "#   - installer npm"
echo "#   - installer carto et kosmtik"
echo "#   - modification du fichier project.mml pour qu'il pointe vers la bonne base de données"
echo "# Une chose est à faire après le make"
echo "#   - modification du fichier project.mml pour supprimer la directive source"
echo "#"
echo "sudo apt-get install -y python3-yaml"
      sudo apt-get install -y python3-yaml
echo "#"
echo "# L'utilitaire shapeindex, "
echo "# utilisé pour créer des index lors du telechargement des données mondiales,"
echo "# est dans le paquet mapnik-utils"
echo "sudo apt-get install -y mapnik-utils"
      sudo apt-get install -y mapnik-utils
echo "#"
echo "# Modification du Makefile"
echo "	#PGOPTIONS='--client-min-messages=error' psql -d gis -f add-indexes.sql >/dev/null || true"
#echo "	PGOPTIONS='--client-min-messages=error' psql -h 172.17.0.1 -U www-data -d osm -f add-indexes.sql >/dev/null || true"
echo "	PGOPTIONS='--client-min-messages=error' psql -h localhost -U www-data -d osm -f add-indexes.sql >/dev/null || true"
echo "sed -i -E -e 's/-d gis/-h localhost -U www-data -d osm/g' ../openstreetmap-carto-vector-tiles/Makefile"
      sed -i -E -e 's/-d gis/-h localhost -U www-data -d osm/g' ../openstreetmap-carto-vector-tiles/Makefile
echo "#"
echo "# Dans le fichier Makefile, on remplace aussi python par python3 :"
echo "#"
echo "python convert_ymls.py"
echo "#"
echo "# par :"
echo "#"
echo "python3 convert_ymls.py"
echo "#"
echo "sed -i -E -e 's|python convert_ymls.py|python3 convert_ymls.py|g' ../openstreetmap-carto-vector-tiles/Makefile"
      sed -i -E -e 's|python convert_ymls.py|python3 convert_ymls.py|g' ../openstreetmap-carto-vector-tiles/Makefile
echo "#"
echo "# Dans le fichier Makefile, on remplace aussi la directive install-node-modules :"
echo "#"
echo "npm install tilelive-tmsource tilelive-tmstyle tilejson tilelive-http tilelive-vector tessera carto tilelive-file"
echo "#"
echo "# par :"
echo "#"
echo "npm install mapnik tilelive-tmsource tilelive-tmstyle @mapbox/tilejson tilelive-http @mapbox/tilelive-vector tilelive-file carto leaflet leaflet-hash kosmtik tessera"
echo "#"
echo "sed -i -E -e 's|npm install tilelive-tmsource tilelive-tmstyle tilejson tilelive-http tilelive-vector tessera carto tilelive-file|npm install mapnik tilelive-tmsource tilelive-tmstyle @mapbox/tilejson tilelive-http @mapbox/tilelive-vector tilelive-file carto leaflet leaflet-hash kosmtik tessera|g' ../openstreetmap-carto-vector-tiles/Makefile"
      sed -i -E -e 's|npm install tilelive-tmsource tilelive-tmstyle tilejson tilelive-http tilelive-vector tessera carto@">=0.16" tilelive-file|npm install mapnik tilelive-tmsource tilelive-tmstyle @mapbox/tilejson tilelive-http @mapbox/tilelive-vector tilelive-file carto leaflet leaflet-hash kosmtik tessera|g' ../openstreetmap-carto-vector-tiles/Makefile
echo "#"
echo "# L'utilisateur www-data doit pouvoir se connecter sans avoir a saisir son mot de passe"
#echo "echo '*:*:*:www-data:www-data' >> ~/.pgpass"
#      echo '*:*:*:www-data:www-data' >> ~/.pgpass
#echo "# On rajoute aussi osmuser et mapnikuser"
#echo "echo '*:*:*:osmuser:osmpass' >> ~/.pgpass"
#      echo '*:*:*:osmuser:osmpass' >> ~/.pgpass
#echo "echo '*:*:*:mapnikuser:mapnikpass' >> ~/.pgpass"
#      echo '*:*:*:mapnikuser:mapnikpass' >> ~/.pgpass
#echo "chmod 600 ~/.pgpass"
#      chmod 600 ~/.pgpass
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
echo "#"
echo "# Modification du fichier get-shapefiles.py"
echo "#"
echo "# Le service data.openstreetmapdata.com est arrété"
echo "# mais remplacé par osmdata.openstreetmap.de"
echo "# facon a ce qu'il pointe vers la base de données"
echo "#"
echo "# Il faut remplacer :"
echo "#"
echo "'url': 'http://data.openstreetmapdata.com/simplified-land-polygons-complete-3857.zip'"
echo "#"
echo "# par :"
echo "#"
echo "'url': 'http://osmdata.openstreetmap.de/download/simplified-land-polygons-complete-3857.zip'"
echo "#"
echo "sed -i -E -e 's|http://data.openstreetmapdata.com/|http://osmdata.openstreetmap.de/download/|g' ../openstreetmap-carto-vector-tiles/scripts/get-shapefiles.py"
      sed -i -E -e 's|http://data.openstreetmapdata.com/|http://osmdata.openstreetmap.de/download/|g' ../openstreetmap-carto-vector-tiles/scripts/get-shapefiles.py
echo "#"
echo "cd scripts"
      cd scripts
echo "# Si on a installé mapnik-utils (utilitaire shapeindex ),"
echo "# alors, on peut faire l'indexation au moment du telechargement"
echo "./get-shapefiles.py"
      ./get-shapefiles.py
#echo "# Dans le cas contraire, on telecharge sans indexation"
#echo "./get-shapefiles.py --no-shape"
#      ./get-shapefiles.py --no-shape
echo "cd .."
      cd ..
echo "#"
echo "#"
echo "# Suppression de manik-utils"
echo "#"
echo "sudo apt-get remove -y mapnik-utils libmapnik3.0 node-mapnik"
      sudo apt-get remove -y mapnik-utils libmapnik3.0 node-mapnik
echo "#"
echo "# Execution des autres scripts"
echo "# Ces deux autres scripts, ainsi que make, ont besoin des modules complementaires de python "
echo "#"
echo "# Ajout des modules python, en version 2 pour les scripts"
echo "#"
echo "sudo -H python2 -m pip install --upgrade pip"
      sudo -H python2 -m pip install --upgrade pip
echo "sudo -H python2 -m pip install colormath"
      sudo -H python2 -m pip install colormath
echo "sudo -H python2 -m pip install lxml"
      sudo -H python2 -m pip install lxml
echo "#"
echo "# Ajout des modules python, en version 3 (utile ?)"
echo "sudo -H pip3 install --upgrade pip"
      sudo -H pip3 install --upgrade pip
echo "sudo -H pip3 install colormath"
      sudo -H pip3 install colormath
echo "sudo -H pip3 install lxml"
      sudo -H pip3 install lxml
echo "#"
echo "Les symboles arrivent ici : symbols/shields/"
echo "python2 ./scripts/generate_shields.py"
      python2 ./scripts/generate_shields.py
echo "python2 ./scripts/generate_road_colours.py > road-colors-generated.mss"
      python2 ./scripts/generate_road_colours.py > road-colors-generated.mss
echo "#"
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
echo "sudo apt-get remove -y npm"
      sudo apt-get remove -y npm
      sudo apt-get remove -y nodejs
echo "sudo apt autoremove -y"
      sudo apt autoremove -y
#echo "sudo apt-get install -y npm"
#      sudo apt-get install -y npm
echo "npm -v"
      npm -v
      sudo rm -rf /usr/local/bin/npm \
                  /usr/local/share/man/man1/node.1 \
                  /usr/local/lib/dtrace/node.d \
                  ~/.npm \
                  ~/.node-gyp
      sudo rm -rf /usr/local/lib/node_modules


echo "#"
echo "#"
echo "# Installation de npm, à partir des paquets"
echo "sudo apt-get remove -y npm"
#      sudo apt-get remove -y npm
#      sudo apt-get remove -y nodejs
echo "# Installation de npm, mais pas avec les paquets debian/ubuntu"
echo "curl -0 -L https://npmjs.org/install.sh | sudo sh"
      curl -0 -L https://npmjs.org/install.sh | sudo sh
echo "sudo rm -rf ~/.npm"
      sudo rm -rf ~/.npm
echo "npm -v"
      npm -v
echo "#"
echo "# Mise à jour de npm (en utilisant npm...)"
echo "# https://stackoverflow.com/questions/23393707/how-to-update-npm"
#echo "sudo npm install -g npm"
#      sudo npm install -g npm
echo "npm -v"
      npm -v
echo "#"
echo "# carto est à installer localement, tandis que"
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
echo "#"
echo "make install-node-modules"
      make install-node-modules
echo "#"
echo "npm install mapnik tilelive-tmsource tilelive-tmstyle @mapbox/tilejson tilelive-http @mapbox/tilelive-vector tilelive-file carto leaflet leaflet-hash kosmtik tessera"
echo "npm install @hapi/hawk @hapi/sntp mapnik @mapbox/tilejson @mapbox/tilelive-vector tilelive-tmsource tilelive-tmstyle tilelive-http tilelive-file carto leaflet leaflet-hash kosmtik tessera"
      npm install @hapi/hawk @hapi/sntp mapnik @mapbox/tilejson @mapbox/tilelive-vector tilelive-tmsource tilelive-tmstyle tilelive-http tilelive-file carto leaflet leaflet-hash kosmtik tessera
echo "#"
#echo "make install-node-modules"
#      make install-node-modules
echo "#"
#echo "#"
#echo "sudo npm -g install mapnik"
#      sudo npm -g install mapnik
#echo "npm install mapnik"
#      npm install mapnik
#echo "sudo npm -g install kosmtik"
#      sudo npm -g install kosmtik
#echo "npm install kosmtik"
#      npm install kosmtik
#echo "sudo npm -g install tessera"
#      sudo npm -g install tessera
#echo "npm install @mapbox/tilejson"
#      npm install @mapbox/tilejson
#echo "npm install @mapbox/tilelive-vector"
#      npm install @mapbox/tilelive-vector
#echo "npm install carto"
#      npm install carto
###echo "#"
####echo "# https://github.com/mojodna/tessera"
####echo "sudo npm -g install tessera"
####      sudo npm -g install tessera
#echo "npm install @hapi/hawk @hapi/sntp mapnik @mapbox/tilejson @mapbox/tilelive-vector carto leaflet leaflet-hash kosmtik tessera"
#      npm install @hapi/hawk @hapi/sntp mapnik @mapbox/tilejson @mapbox/tilelive-vector carto leaflet leaflet-hash kosmtik tessera

echo "#"
echo "# Modification du fichier project.mml"
echo "#"
echo "# Nous voulons lancer un serveur de tuile pour qu'il "
echo "# serve le project.mml qui est dans le repertoire openstreetmap-carto-vector-tiles"
echo "# Cependant, nous devons modifier un peu ce fichier project.mml"
echo "#"
echo "# Modification du fichier project.mml de facon a ce qu'il pointe vers la base de données"
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
#echo '#    host: 172.17.0.1'
echo '#    host: localhost'
echo '#    dbname: "osm"'
echo '#    user: "www-data"'
echo '#    password: "www-data"'
echo '#    key_field: ""'
echo '#    geometry_field: "way"'
echo "#"
echo "sed -i -E -e '/  type: \"postgis\"/ a \ \ \ \ host: localhost' ../openstreetmap-carto-vector-tiles/project.mml"
      sed -i -E -e '/  type: \"postgis\"/ a \ \ \ \ host: localhost' ../openstreetmap-carto-vector-tiles/project.mml
echo "sed -i -E -e 's/  dbname: \"gis\"/  dbname: \"osm\"/g' ../openstreetmap-carto-vector-tiles/project.mml"
      sed -i -E -e 's/  dbname: \"gis\"/  dbname: \"osm\"/g' ../openstreetmap-carto-vector-tiles/project.mml
echo "sed -i -E -e '/  dbname: \"osm\"/ a \ \ \ \ user: \"www-data\"' ../openstreetmap-carto-vector-tiles/project.mml"
      sed -i -E -e '/  dbname: \"osm\"/ a \ \ \ \ user: \"www-data\"' ../openstreetmap-carto-vector-tiles/project.mml
echo "sed -i -E -e '/  user: \"www-data\"/ a \ \ \ \ password: \"www-data\"' ../openstreetmap-carto-vector-tiles/project.mml"
      sed -i -E -e '/  user: \"www-data\"/ a \ \ \ \ password: \"www-data\"' ../openstreetmap-carto-vector-tiles/project.mml
echo "#"

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
echo "make postgresql-fix-geometry"
      make postgresql-fix-geometry
echo "#"
echo "make kosmtik"
      make kosmtik




echo "#"
echo "cd $OLDPWDFG"
      cd $OLDPWDFG
echo "pwd"
      pwd

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

echo "#----------------------"
#echo "# ./index.js serve /home/fred/Documents/install/source/openstreetmap-carto-vector-tiles/osm-carto.tm2/project.yml"
echo "cd ../openstreetmap-carto-vector-tiles/"
echo "./node_modules/.bin/kosmtik serve --port 6789 ./project.mml"
##echo "# ./node_modules/.bin/tessera serve project.mml"
echo "#----------------------"
echo "http://localhost:6789/"
echo "#"
