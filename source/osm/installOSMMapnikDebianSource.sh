#!/bin/sh



# 8ème Partie - Installation d'un environnement OSM
###############################################
# Installation d'un environnement OSM
echo "# 8ème Partie - Installation de mapnik, libmapnik et libmapnik-dev"
echo "######################################################"
echo "#"
echo "# Ce script présente l'installation de mapnik, à partir des source,"
echo "# dans l'environnement 'général'"
echo "#"
echo "# Il existe d'autres scripts pour installer mapnik, mais, pour ces"
echo "# scripts précédents, dans un environnement virtuel python"
echo "#"
echo "# ./installPythonMapnik.sh"
echo "# ./installPythonMapnik2.sh"
echo "#"
echo "# Ici, il s'agit d'installer mapnik dans le système 'général'"
echo "#"
echo "# En effet, pour tirex et tileman, il faut que mapnik soit"
echo "# présent dans l'environnement général (et non pas dans un"
echo "# environnement virtuel)."
echo "# Attention, après installation de mapnik, il faut ensuite "
echo "# redémarrer un nouveau shell, de facon a ce que mapnik-config soit connu"
echo "# pour enfin installer tirex et tileman"
echo "#"
echo "# Installation de mapnik à partir des sources"
echo "#"
echo "# http://mapnik.org/pages/downloads.html"
echo "#"
echo "# Attention : Installation de libmapnik .....????"
echo "# libmapnik3.0 semble etre necessaire pour l'installation de tirex"
echo "# cf problème de librairies partagées"
echo "#"
#echo "sudo aptitude install libmapnik-dev"
#      sudo aptitude install libmapnik-dev
#echo "sudo aptitude install libmapnik3.0"
#      sudo aptitude install libmapnik3.0
echo ""
echo "#"
echo "# Nous utiliserons clang à la place de gcc"
echo "#"
echo 'export CXX="clang++-3.8" && export CC="clang-3.8"'
      export CXX="clang++-3.8" && export CC="clang-3.8"
echo "#"
echo "sudo apt-get remove python3-mapnik"
      sudo apt-get remove python3-mapnik
echo "sudo apt-get -y remove mapnik-utils libmapnik3.0"
      sudo apt-get -y remove mapnik-utils libmapnik3.0
echo "sudo apt-get -y remove mapnik-doc"
      sudo apt-get -y remove mapnik-doc
echo "sudo apt-get -y remove python-mapnik"
      sudo apt-get -y remove python-mapnik
echo "sudo apt-get -y remove libmapnik-dev"
      sudo apt-get -y remove libmapnik-dev

echo "sudo apt autoremove"
      sudo apt autoremove
##echo "sudo aptitude install fonts-dejavu ttf-dejavu ttf-dejavu-core ttf-dejavu-extra"
##      sudo aptitude install fonts-dejavu ttf-dejavu ttf-dejavu-core ttf-dejavu-extra
echo "# Après installation des fonts, il faut les enregistrer"
echo "# https://wiki.debian.org/Fonts"
##echo "fc-cache -fv # rebuilds cached list of fonts"
##      fc-cache -fv
echo "#"
#echo "sudo apt-get purge libmapnik* mapnik-* python-mapnik"
#      sudo apt-get purge libmapnik* mapnik-* python-mapnik
echo "#"
echo "sudo apt-get -y install libtiff5-dev libharfbuzz-dev libcairo2-dev libproj-dev"
      sudo apt-get -y install libtiff5-dev libharfbuzz-dev libcairo2-dev libproj-dev
echo "#"
echo "set OLDPWDFG=$(pwd)"
      set OLDPWDFG=$(pwd)
      echo $OLDPWDFG
echo "cd .."
      cd ..
echo "pwd"
      pwd
echo "# Nettoyage des installations précédentes"
echo "# sudo updatedb ; locate mapnik | grep fred | pager"
echo "# sudo updatedb ; locate mapnik | grep -v fred"
echo "sudo -H rm -rf /usr/local/lib/mapnik"
      sudo -H rm -rf /usr/local/lib/mapnik
echo "sudo -H rm -rf /usr/local/lib/libmapnik*"
      sudo -H rm -rf /usr/local/lib/libmapnik*
echo "sudo -H rm -rf /usr/local/include/mapnik"
      sudo -H rm -rf /usr/local/include/mapnik
echo "sudo -H rm -rf /usr/local/bin/mapnik*"
      sudo -H rm -rf /usr/local/bin/mapnik*
echo "sudo ldconfig"
      sudo ldconfig
echo "rm -rf mapnik"
      rm -rf mapnik
echo '# Installation de mapnik'
echo '#   http://mapnik.org/pages/downloads.html'
echo "#   https://github.com/mapnik/mapnik/wiki/UbuntuInstallation"
echo '#'
echo "git clone https://github.com/mapnik/mapnik.git --depth=10"
      git clone https://github.com/mapnik/mapnik.git --depth=10
echo "cd mapnik"
      cd mapnik
echo "pwd"
      pwd
#echo 'git checkout v3.0.9'
#      git checkout v3.0.9
echo "git fetch origin master"
      git fetch origin master
echo "git submodule update --init"
      git submodule update --init
#echo "git submodule update --init deps/mapbox/variant"
#      git submodule update --init deps/mapbox/variant
echo "./bootstrap.sh"
      ./bootstrap.sh
echo "#"
echo "#"
echo "# Normalement pour faire une instalation à partir des sources"
echo "# on fait habituellement les instructions"
echo "# configure, make, make install"
echo "# Ici, on va utiliser scons"
echo "# Utilisation de scons à la place de make"
echo "# https://github.com/mapnik/mapnik/wiki/UsingScons"
echo "#"
echo "# Dans le script installOSMBoostDebian.sh, nous avons installé"
echo "# boost avec icu,"
echo "# Nous allons maintenant faire le lien entre"
echo "# mapnik et libboost-regex avec icu"
echo "#"
echo "# ce lien se fait grace à une recopie de la librairie"
echo "# à l'endroit adequat"
echo "#"
echo "ln -s /usr/local/lib/libboost_regex.a mason_packages/.link/lib/libboost_regex.a"
      ln -s /usr/local/lib/libboost_regex.a mason_packages/.link/lib/libboost_regex.a
echo "#"
#echo '# En fonction des developpements, il se peut que la compilation'
#echo '# ne fonctionne pas très bien...'
#echo '# Entre autre, si il y a des erreurs '
#echo '# avec le message std::__cxx11::string'
#echo '# c est qu il faut forcer une variable de configuration'
#echo '# -D_GLIBCXX_USE_CXX11_ABI=1'
#echo '# cf .'
#echo '# http://stackoverflow.com/questions/33394934/converting-std-cxx11string-to-stdstring'
#echo '# Avec boost et scons, il faut voir  spécifier cette variable...'
#echo '# Pour introduire cette variable, il semble que la solution est ici :'
#echo '# https://github.com/mapnik/mapnik/wiki/UbuntuInstallation'
#echo "# cf la ligne"
#echo '# ./configure CUSTOM_CXXFLAGS="-D_GLIBCXX_USE_CXX11_ABI=0"'
#echo '# ou ici'
#echo '# https://github.com/mapnik/mapnik/blob/master/INSTALL.md'
#echo '# ./configure CUSTOM_CXXFLAGS="-g -I/usr/include" CUSTOM_LDFLAGS="-L/usr/lib"'
echo '# Autre solution : changer de branche'
echo "git checkout v3.0.9"
      git checkout v3.0.9
#echo "./configure"
#      ./configure
#echo "./configure CXX=g++ CC=gcc"
#      ./configure CXX=g++ CC=gcc
#echo './configure CUSTOM_CXXFLAGS="-D_GLIBCXX_USE_CXX11_ABI=0"'
#      ./configure CUSTOM_CXXFLAGS="-D_GLIBCXX_USE_CXX11_ABI=0"
#echo './configure CXX=${CXX} CC=${CC}'
#      ./configure CXX=${CXX} CC=${CC}
echo "#"
echo "# Autre facon de faire le lien"
echo "# mettre les options BOOST_INCLUDES et BOOST_LIBS"
echo "#"
echo "# cette astuce a été vue ici"
echo "# https://github.com/mapnik/mapnik/issues/2124"
echo "#"
echo "python scons/scons.py configure CXX=${CXX} CC=${CC} BOOST_INCLUDES=/usr/local/include/ BOOST_LIBS=/usr/local/lib/"
echo "#"
echo 'python scons/scons.py configure CXX=${CXX} CC=${CC} CUSTOM_CXXFLAGS="-D_GLIBCXX_USE_CXX11_ABI=1"'
      python scons/scons.py configure CXX=${CXX} CC=${CC} CUSTOM_CXXFLAGS="-D_GLIBCXX_USE_CXX11_ABI=0"
echo "#"
echo "#"
echo "# Install Mapnik (running configure and compiling first if not done yet)"
echo "#"
echo "# Astuce, car nous avons un problème de chargement de plugins :"
echo "# https://github.com/mapnik/mapnik/wiki/PluginArchitecture"
echo "# To compile the plugins statically with mapnik library"
echo "# (ttps://github.com/mapnik/mapnik/tree/static-plugins"
echo "#"
echo "# Au lieu de faire un scons sans paramètre :"
echo "# python scons/scons.py"
      # python scons/scons.py
#echo "make"
#      make
echo "# On ajoute les paramètres adéquats :"
echo "#sudo python scons/scons.py INPUT_PLUGINS='all' PLUGIN_LINKING='static'"
      #sudo python scons/scons.py INPUT_PLUGINS='all' PLUGIN_LINKING='static'
echo "python scons/scons.py INPUT_PLUGINS='all' PLUGIN_LINKING='static'"
      python scons/scons.py INPUT_PLUGINS='all' PLUGIN_LINKING='static'
echo "#"
echo "# Puis on fait l'install"
#echo "# sudo make install"
#      # sudo make install
echo "sudo python scons/scons.py install"
      sudo python scons/scons.py install
echo "#"
echo "# et enfin, on execute les tests"
#echo "make test"
#      make test
echo "sudo python scons/scons.py test"
      sudo python scons/scons.py test
echo "#"
echo "# Les tests sont visibles ici :"
echo "firefox file:///tmp/mapnik-visual-images/visual-test-results/index.html &"
      #firefox file:///tmp/mapnik-visual-images/visual-test-results/index.html
echo "#"
echo "cd ../environnementTravail"
      cd ../environnementTravail
echo "pwd"
      pwd
echo "#"
echo "# Attention, avant tout utilisation, il faut ajouter des variables d'environnement"
echo "#"
echo "../mapnik/mapnik-settings.env"
      ../mapnik/mapnik-settings.env
echo "source ../mapnik/mapnik-settings.env"
      source ../mapnik/mapnik-settings.env
echo "#"
echo "# Vérification de ces variables d'environnement"
echo "env | grep PROJ"
      env | grep PROJ
echo "#----------------------"
echo "# Test de l'installation de mapnik :"
echo "#----------------------"
echo "# Test 1 : test interne : make test"
echo "#   https://github.com/mapnik/mapnik/wiki/UbuntuInstallation"
echo "    cd ../mapnik ; export JOBS=1 ; make test ; cd ../environnementTravail"
echo "    cd ../mapnik ; export JOBS=16 ; make test ; cd ../environnementTravail"
echo "# Test 2 : test interne : registration ?"
echo "    cd ../mapnik ; \\"
echo "    ./test/standalone/font_registration_test-bin ; \\"
echo "    cd ../environnementTravail"
echo "    ../mapnik/test/standalone/font_registration_test-bin"
echo "    cd ../mapnik ; \\"
echo "    ./test/standalone/datasource_registration_test-bin ; \\"
echo "    cd ../environnementTravail"
echo "    ../mapnik/test/standalone/datasource_registration_test-bin"
echo "# Test 3 : mapnik-config"
echo "#   (mapnik-config est normalement dans le paquet libmapnik-dev)"
echo "#   La doc est ici"
echo "#   https://github.com/mapnik/mapnik/wiki/GettingStartedInPython"
echo '    mapnik-config -v # should return a version number'
echo '    mapnik-config --input-plugins'
echo '    ls -al $(mapnik-config --input-plugins)'
echo "# Test 4 : mapnik-render"
echo "#   Attention, il faut etre dans le repertoire mapnik !!!!"
echo "#   (mapnik-render est normalement dans le paquet mapnik-utils)"
echo "    cd ../mapnik ; \\"
echo "    mapnik-render \\"
echo "    ../environnementTravail/testMapnik.xml \\"
echo "    ../environnementTravail/testMapnik.png ;\\"
echo "    cd ../environnementTravail ; \\"
echo "    display testMapnik.png"
echo "#"
echo "#----------------------"
echo "#"
echo "#----------------------"
echo "# Reste a faire :"
echo "#----------------------"
#echo "# ./installOSM.sh"
#echo "# ./installOSMCartoCSS.sh"
#echo "# ./installOSMBoostDebian.sh"
#echo "# ./installOSMMapnikUbuntuSource.sh"
##echo "# ./installOSMMapnikUbuntuPaquet.sh"
#echo "# ./installOSMPythonMapnikDebian"
echo "# ./installOSMPythonMapnikUbuntu"
echo "# ./installOSMTirex.sh"
####echo "# ./installOSMTilemanDebian.sh"
echo "# ./installOSMTilemanUbuntu.sh"
echo "#----------------------"


echo "#"
