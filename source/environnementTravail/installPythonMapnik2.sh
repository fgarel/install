#!/bin/sh



# 7ème Partie - suite : Création d'un environnement python
###############################################
# Création d'un environnement python
echo "# 7ème Partie - suite : Création d'un environnement python"
echo "###############################################"
echo "#"
echo "# Suite de l'installation de Mapnik dans un environnement virtuel python"
echo "#"
echo "# La première partie consistait à installer les dépendances"
echo "# pour la compilation et la création de l'environnement virtuel"
echo "#"
echo "# Nous somme dans l environnement, l'installation continue avec"
echo "#"
echo "# --------------------"
echo '#'
echo '# Mise à jour de pip'
echo '#'
echo 'pip install --upgrade pip'
      pip install --upgrade pip
echo '#'
echo "#"
echo "cd .."
      cd ..
echo "pwd"
      pwd
echo "rm -rf mapnik_virtuel"
      rm -rf mapnik_virtuel
echo '# Installation de mapnik'
echo '#   http://mapnik.org/pages/downloads.html'
echo "#   https://github.com/mapnik/mapnik/wiki/UbuntuInstallation"
echo '#'
echo 'git clone https://github.com/mapnik/mapnik.git mapnik_virtuel'
      git clone https://github.com/mapnik/mapnik.git mapnik_virtuel
#echo "git clone https://github.com/mapnik/mapnik.git"
#      git clone https://github.com/mapnik/mapnik.git
echo "cd mapnik_virtuel"
      cd mapnik_virtuel
echo "pwd"
      pwd
#echo 'git checkout v3.0.9'
#      git checkout v3.0.9
echo 'git submodule update --init'
      git submodule update --init
echo "./bootstrap.sh"
      ./bootstrap.sh
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
#echo '# Autre solution : changer de branche'
#echo "git checkout v3.0.11"
#      git checkout v3.0.11
echo "# ./configure"
      # ./configure
echo './configure CUSTOM_CXXFLAGS="-D_GLIBCXX_USE_CXX11_ABI=0"'
      ./configure CUSTOM_CXXFLAGS="-D_GLIBCXX_USE_CXX11_ABI=0"
echo "make"
      make
echo "make test"
      make test
echo "#"
echo "# Les tests sont visibles ici :"
echo "#firefox /tmp/mapnik-visual-images/visual-test-results/index.html"
      #firefox /tmp/mapnik-visual-images/visual-test-results/index.html
echo "#"
echo "sudo make install"
      sudo make install
echo "#"
echo '#'
echo "cd ../environnementTravail"
      cd ../environnementTravail
echo "pwd"
      pwd
echo '#'
echo "# Attention, il faut ajouter des variables d'environnement"
echo "../mapnik_virtuel/mapnik-settings.env"
      ../mapnik_virtuel/mapnik-settings.env
echo "source ../mapnik_virtuel/mapnik-settings.env"
      source ../mapnik_virtuel/mapnik-settings.env
echo "# Vérification de ces variables d'environnement"
echo "env | grep PROJ"
      env | grep PROJ
echo '#'
echo "# --------------------"
echo "#"
echo "#"
echo ""
