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
#echo "sudo aptitude install python-mapnik"
#      sudo aptitude install python-mapnik
#echo "sudo aptitude remove python-mapnik"
#      sudo aptitude remove python-mapnik
echo "cd .."
      cd ..
echo "pwd"
      pwd
echo "sudo rm -rf python-mapnik"
      sudo rm -rf python-mapnik
echo "git clone https://github.com/mapnik/python-mapnik"
      git clone https://github.com/mapnik/python-mapnik
echo "cd python-mapnik"
      cd python-mapnik
echo "git submodule update --init"
      git submodule update --init
echo "pwd"
      pwd
echo "export MASON_BUILD=true"
      export MASON_BUILD=true
echo "./bootstrap.sh"
      ./bootstrap.sh
#echo "sudo python setup.py develop"
#      sudo python setup.py develop
#echo "sudo python setup.py install"
#      sudo python setup.py install
echo "#"
echo "cd ../environnementTravail"
      cd ../environnementTravail
echo "pwd"
      pwd

echo "#"
echo "# Installation de nik2img et nik4"
echo "sudo -H pip install nik4 ; sudo -H pip install nik2img"
      sudo -H pip install nik4 ; sudo -H pip install nik2img

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
echo "#   !!! Attention, il faut etre dans le repertoire mapnik !!!!"
echo "    cd ../mapnik ; \\"
echo "    mapnik-render \\"
echo "    ../environnementTravail/testMapnik.xml \\"
echo "    ../environnementTravail/testMapnik.png ;\\"
echo "    cd ../environnementTravail ; \\"
echo "    display testMapnik.png"
echo '# Test 6 : rendu avec des outils python (nik2img et nik4)'
echo "#   nik2img et nik4 : sont deux utilitaires qui utilisent mapnik,"
echo "#   en passant par python :  il faut donc installer python-mapnik"
echo "#   avant de pouvoir utiliser ces deux outils"
echo "#   https://github.com/springmeyer/nik2img/blob/master/INSTALL.txt"
echo "#   https://github.com/Zverik/Nik4"
echo "    sudo -H pip install nik4"
echo "    sudo -H pip install nik4 ; sudo -H pip install nik2img"
echo "#   Après installation, nous pouvons utiliser un autre test interne de mapnik"
echo "    cd ../mapnik ; \\"
echo "    make rendu ;\\"
echo "    cd ../environnementTravail ; \\"
echo "    display ...."
echo '# Test 7 : Test de mapnik avec les données osm (et configuration xml)'
echo "#   http://wiki.openstreetmap.org/wiki/User:Stanton/Mapnik_Test_Server"
echo "#   Un outil permet de generer un fichier xml"
echo "#   (fichier qui contient les paramètres pour que mapnik genère une carte)"
echo "#   à partir informations sources (base postgresql qui contient les données osm)"
echo "#   http://wiki.openstreetmap.org/wiki/User:Stanton/Mapnik_Test_Server#Mapnik_Initialization"
echo '#   '
echo "#----------------------"
echo "#"
echo "#----------------------"
echo "# Reste a faire :"
echo "#----------------------"
#echo "# ./installOSM.sh"
#echo "# ./installOSMCartoCSS.sh"
#echo "# ./installOSMBoostDebian.sh"
#echo "# ./installOSMMapnikDebian.sh"
##echo "# ./installOSMMapnikUbuntu.sh"
#echo "# ./installOSMPythonMapnikDebian"
##echo "# ./installOSMPythonMapnikUbuntu"
echo "# ./installOSMTirex.sh"
echo "# ./installOSMTilemanDebian.sh"
##echo "# ./installOSMTilemanUbuntu.sh"
echo "#----------------------"
echo "#"

echo "#"
