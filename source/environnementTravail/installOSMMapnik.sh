#!/bin/sh



# 8ème Partie - Installation d'un environnement OSM
###############################################
# Installation d'un environnement OSM
echo "# 8ème Partie - Installation de mapnik, libmapnik et libmapnik-dev"
echo "######################################################"
echo "#"
echo "# Ce script présente l'installation de mapnik dans l'environnement général"
echo "#"
echo "# Il existe d'autres scripts pour installer mapnik, mais, pour ces"
echo "# scripts précédents, dans un environnement virtuel python"
echo "#"
echo "# ./installPythonMapnik.sh"
echo "# ./installPythonMapnik2.sh"
echo "#"
echo "# Ici, il s'agit d'installer mapnik dans le système général"
echo "#"
echo "# Avant d'installer tirex et tileman, il faut que mapnik soit"
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
echo "#"
echo "sudo aptitude install libmapnik-dev"
      sudo aptitude install libmapnik-dev
echo "sudo aptitude install libmapnik3.0"
      sudo aptitude install libmapnik3.0
echo "sudo aptitude remove libmapnik-dev"
      sudo aptitude remove libmapnik-dev
echo "sudo aptitude remove libmapnik3.0"
      sudo aptitude remove libmapnik3.0
echo "#"
echo "cd .."
      cd ..
echo "pwd"
      pwd
echo "rm -rf mapnik"
      rm -rf mapnik
echo "git clone https://github.com/mapnik/mapnik.git"
      git clone https://github.com/mapnik/mapnik.git
echo "cd mapnik"
      cd mapnik
echo "pwd"
      pwd
#echo '# En fonction des developpements, il se peut que la compilation'
#echo '# ne fonctionne pas très bien...'
#echo '# Entre autre, si il y a des erreurs '
#echo '# avec le message std::__cxx11::string'
#echo '# c est qu il faut forcer une variable de configuration'
#echo '# -D_GLIBCXX_USE_CXX11_ABI=1'
#echo '# cf .'
#echo '# http://stackoverflow.com/questions/33394934/converting-std-cxx11string-to-stdstring'
#echo '# Avec boost et scons, il faut voir  spécifier cette variable...'
echo '# Pour introduire cette variable, il semble que la solution est ici :'
echo '# https://github.com/mapnik/mapnik/wiki/UbuntuInstallation'
echo "# cf la ligne"
echo '# ./configure CUSTOM_CXXFLAGS="-D_GLIBCXX_USE_CXX11_ABI=0"'
echo '# ou ici'
echo '# https://github.com/mapnik/mapnik/blob/master/INSTALL.md'
echo '# ./configure CUSTOM_CXXFLAGS="-g -I/usr/include" CUSTOM_LDFLAGS="-L/usr/lib"'
#echo '# Autre solution : changer de branche'
#echo "git checkout v3.0.11"
#      git checkout v3.0.11
echo "git submodule update --init"
      git submodule update --init
echo "./configure && make && make test"
      ./configure && make && make test
echo "#"
echo "# Les tests sont visibles ici :"
echo "#firefox /tmp/mapnik-visual-images/visual-test-results/index.html"
      #firefox /tmp/mapnik-visual-images/visual-test-results/index.html
echo "#"
echo "sudo make install"
      sudo make install
echo "#"
echo "cd ../environnementTravail"
      cd ../environnementTravail
echo "pwd"
      pwd
echo "#"
echo "#----------------------"
echo "# test de l'installation de mapnik :"
echo "#----------------------"
echo "# https://github.com/mapnik/mapnik/wiki/UbuntuInstallation"
echo "# export JOBS=1 ; make test"
echo "# export JOBS=16 ; make test"
echo "# La doc est ici"
echo "# https://github.com/mapnik/mapnik/wiki/GettingStartedInPython"
echo '# mapnik-config -v # should return a version number'
#echo '# python -c "import mapnik;print mapnik.__file__" # should return the path to the python bindings and no errors'
#echo '# python3 -c "import mapnik;print(mapnik.__file__)" # should return the path to the python bindings and no errors'
#echo '# python -c "import sys; print '."'\n'".'.join(sys.path)"'
echo "#----------------------"
echo "#"
echo "#----------------------"
echo "# Reste a faire :"
echo "#----------------------"
#echo "# ./installOSMMapnik.sh"
echo "# ./installOSMPythonMapnik"
echo "# ./installOSMTirex.sh"
echo "# ./installOSMTilemanDebian.sh"
echo "#----------------------"


echo "#"
