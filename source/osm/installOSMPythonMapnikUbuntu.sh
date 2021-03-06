#!/bin/sh



# 8ème Partie - Installation d'un environnement OSM
###############################################
# Installation d'un environnement OSM
echo "# 8ème Partie - Installation de python-mapnik"
echo "######################################################"
echo "#"
echo "# Ce script présente l'installation de python-mapnik"
echo "#"
echo "# Il semble que le lien entre python et mapnik"
echo "# n'est pas automatique. "
echo "#"
echo "# En effet, après avoir installé mapnik, il n'est pas "
echo "# possible de faire un import python : le module n'est pas connu"
echo "#"
echo "# Il s'agit donc d'installer python-mapnik en plus de mapnik"
echo "#"
echo "# En effet, d'après la page"
echo "# https://github.com/mapnik/mapnik/blob/master/INSTALL.md"
echo "#"
echo "#   'Python bindings are not included by default.''"
echo "#   'You'll need to add those separately.'"
echo "#   'Build from source: https://github.com/mapnik/python-mapnik'"
echo "#"
echo "#"
echo "# Installation de python-mapnik à partir des sources"
echo "#"
echo "# https://github.com/mapnik/python-mapnik"
echo "#"
echo "# Attention : Installation de python-mapnik .....????"
echo "#"
echo "sudo aptitude install -y python-mapnik"
      sudo aptitude install -y python-mapnik
echo "sudo apt-get install -y python-mapnik"
      sudo apt-get install -y python-mapnik
#echo "sudo aptitude remove python-mapnik"
#      sudo aptitude remove python-mapnik
echo "sudo aptitude install -y python3-mapnik"
      sudo aptitude install -y python3-mapnik
echo "sudo apt-get install -y python3-mapnik"
      sudo apt-get install -y python3-mapnik


echo "#"
echo "# Installation de nik2img (python2) et nik4 (python3)"
echo "sudo aptitude install -y python3-pip"
      sudo aptitude install -y python3-pip
echo "sudo apt-get install -y python3-pip"
      sudo apt-get install -y python3-pip
echo "sudo -H pip3 install --upgrade pip"
      sudo -H pip3 install --upgrade pip
echo "sudo -H pip3 install nik4"
      sudo -H pip3 install nik4
echo "sudo -H pip install --upgrade pip"
      sudo -H pip install --upgrade pip
echo "sudo -H pip install nik2img"
      sudo -H pip install nik2img

echo "#"
echo "#----------------------"
echo "# test de l'installation de python-mapnik :"
echo "#----------------------"
echo "# La doc est ici"
echo "# https://github.com/mapnik/mapnik/wiki/GettingStartedInPython"
echo "#"
echo "# Test 1 : python"
echo '    python -c "import sys; print('\'\\\\n\''.join(sys.path))"'
echo "# Test 2 : test interne : registration ?"
echo "    ../mapnik/test/standalone/font_registration_test-bin"
echo "    ../mapnik/test/standalone/datasource_registration_test-bin"
echo "# Test 3 : mapnik-config"
echo '    mapnik-config -v # should return a version number'
echo '    mapnik-config --input-plugins'
echo '    ls -al $(mapnik-config --input-plugins)'
echo "# Test 4 : python import mapnik"
echo '    python -c "import mapnik;print(mapnik.__file__)" # should return the path to the python bindings and no errors'
echo '    python -c "from mapnik import DatasourceCache as c; print('"'shape'"' in c.plugin_names())"'
echo '    python -c "from mapnik import DatasourceCache as c; print('\'\\\\n\''.join(c.plugin_names()))"'
echo '# Test 5 : rendu avec outil mapnik-render'
echo "#   https://github.com/mapnik/mapnik/wiki/GettingStartedInXML"
echo "#   !!! Attention, il faut etre dans le repertoire mapnik !!!!"
#echo "    cd ../mapnik ; \\"
echo "    mapnik-render \\"
echo "      testMapnik.xml \\"
echo "      testMapnik.png ;\\"
#echo "    cd ../environnementTravail ; \\"
echo "    display testMapnik.png"
echo '# Test 6 : rendu avec des outils python (nik2img et nik4)'
echo "#   nik2img et nik4 : sont deux utilitaires qui utilisent mapnik,"
echo "#   en passant par python :  il faut donc installer python-mapnik"
echo "#   avant de pouvoir utiliser ces deux outils"
echo "#   https://github.com/springmeyer/nik2img/blob/master/INSTALL.txt"
echo "#   https://github.com/Zverik/Nik4"
echo "    sudo -H pip3 install nik4"
echo "    sudo -H pip install nik2img"
#echo "#   Après installation, nous pouvons utiliser un autre test interne de mapnik"
echo "    python testMapnik.py \\"
echo "    python3 testMapnik3.py \\"
#echo "    cd ../mapnik ; \\"
#echo "    make rendu ;\\"
#echo "    cd ../environnementTravail ; \\"
#echo "    display ...."
echo '# Test 7 : Test de mapnik avec les données osm (et configuration xml)'
echo "#   http://wiki.openstreetmap.org/wiki/User:Stanton/Mapnik_Test_Server"
echo "#   Un outil permet de generer un fichier xml"
echo "#   (fichier qui contient les paramètres pour que mapnik genère une carte)"
echo "#   à partir informations sources (base postgresql qui contient les données osm)"
echo "#   http://wiki.openstreetmap.org/wiki/User:Stanton/Mapnik_Test_Server#Mapnik_Initialization"
echo '#   '
echo "#----------------------"
echo "#----------------------"
echo "# Test de l'installation d'openstreetmap-carto"
echo "# et de openstreetmap-carto-vector-tiles :"
echo "#----------------------"
echo "#"
echo "# Nous avons précedemment installé cartocss"
echo "#"
echo "# nous allons testé son utilisation dans son deuxième mode,"
echo "# c'est à dire, l'utilisation des fichier (.mss) en tant que parammètres pour mapnik"
echo "#"
echo "# La doc est ici"
echo "# https://github.com/geofabrik/openstreetmap-carto-vector-tiles/blob/master/INSTALL.md"
echo "#"
echo "# Test 1 : Test de mapnik avec les données osm (et configuration cartocss)"
echo "#   https://github.com/gravitystorm/openstreetmap-carto/blob/master/CONTRIBUTING.md"
echo "#   Jusqu'à présent, pour configurer le rendu,"
echo "#   - nous avions utilisé un fichier xml,"
echo "#   - nous allons maintenant utiliser un fichier css"
echo "#"
echo "#   Jusqu'à présent donc, avec mapnik, il fallait avoir un fichier xml pour decrire le rendu"
echo "#   Pour les données d'OpenStreetMap, il fallait donc :"
echo "#     1. generer un fichier xml avec la commande generate-xml.py"
echo "#     2. lancer le rendu avec la commande mapnik-render"
echo "# "
echo "#   Dorénavant, avec cartocss, il faut avoir un fichier de type css"
echo "#   la syntaxe est plus souple et plus lisible"
echo "#   L'edition peut-etre faite à la main ou avec des outils (mapbox ?)"
echo "#   Pour rendre les données d'OpenStreetMap, il faut dorénavant:"
echo "#     1. adapter le fichier css"
echo "#     2. lancer le rendu"
echo "#----------------------"
echo "#"
echo "#----------------------"
echo "# Reste a faire :"
echo "#----------------------"
#echo "# ./installOSM.sh"
#echo "# ./installOSMCartoCSS.sh"
####echo "# ./installOSMBoostDebian.sh"
####echo "# ./installOSMMapnikDebian.sh"
#echo "# ./installOSMMapnikUbuntu.sh"
####echo "# ./installOSMPythonMapnikDebian"
#echo "# ./installOSMPythonMapnikUbuntu"
echo "# ./installOSMTirex.sh"
####echo "# ./installOSMTilemanDebian.sh"
echo "# ./installOSMTilemanUbuntu.sh"
echo "#----------------------"
echo "#"

echo "#"
