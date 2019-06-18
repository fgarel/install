#!/bin/sh



# 1ère Partie : Installation de quelques polices sur le poste client
###############################################
# Cette partie est à faire dans le terminal du poste client
# Cette installation permet par exemple de pouvoir utiliser
# le theme agnoster sous zsh-antigen
# Le but est d'installer des polices compatibles powerline
#-----------------------------------------------
echo "# 1ère partie : Installation de quelques polices sur le poste client"
echo "###############################################"
echo "# Le but est d'installer des polices compatibles powerline"
echo "#"
echo "# Cette partie est à faire dans le terminal du poste client"
echo "# Cette installation permet par exemple de pouvoir utiliser"
echo "# le theme agnoster sous zsh-antigen"
echo "#"
echo "# Pour info, voici la différence entre"
echo "#  - police d'écriture"
echo "#  - et fonte de caractères"
echo "# cf https://fr.wikipedia.org/wiki/Fonte_de_caract%C3%A8res"
echo "#"
echo "# La fonte de caractères se distingue de la police d’écriture"
echo "# qui regroupe tous les corps et graisses d’une même famille."
echo "# Ainsi, Helvetica est une police d’écriture."
echo "# L’Helvetica romain gras 10 points est une fonte,"
echo "# et l’Helvetica romain gras 12 points en est une autre."
echo "#"
echo "# -----------------------------------------------------"
echo "D'abord, il faut installer le paquet fontconfig qui contient"
echo "l'utilitaire fc-cache"
echo ""
echo "sudo apt-get install -y fontconfig"
      sudo apt-get install -y fontconfig
echo ""
echo "# apt-get install git"
echo "sudo aptitude install -y git"
      sudo aptitude install -y git
echo "sudo apt-get install -y git"
      sudo apt-get install -y git
echo ""
#echo "# Les fonts vont etre installés dans le repertoire ~/.fonts/"
#echo 'mkdir ~/.fonts/'
#      mkdir ~/.fonts
echo "# Les fonts vont etre installés dans le repertoire ~/.local/share/fonts/"
echo 'mkdir ~/.local/share/fonts/'
      mkdir ~/.local/share/fonts/
echo ""
echo "# Ensuite, on cherche à installer des fonts qui pourront etre utilisées avec powerline"
echo "# Mais, avant de faire cela, on va installer des fonts très classiques"
echo "# msfonts et autres"
echo "# On commence donc par le besoin 'supplementaire' avant de faire le 'powerline'"
echo "#"
echo "# -----------------------------------------------------"
echo "# Installation 1 : les polices ms"
echo "#"
echo 'mkdir ~/.local/share/fonts/msfonts'
      mkdir ~/.local/share/fonts/msfonts
echo "#"
echo "# Attention, l'installation demande l'acceptation de la licence..."
echo "# https://askubuntu.com/questions/16225/how-can-i-accept-the-microsoft-eula-agreement-for-ttf-mscorefonts-installer"
echo "sudo apt-get install -y sudo"
      sudo apt-get install -y sudo
echo "sudo apt-get install -y apt-transport-https"
      sudo apt-get install -y apt-transport-https
echo "echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | sudo debconf-set-selections"
      echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | sudo debconf-set-selections
echo "sudo apt-get install -y ttf-mscorefonts-installer"
      sudo apt-get install -y ttf-mscorefonts-installer
echo "#"
echo "#"
echo "#"
echo "sudo aptitude install -y ttf-mscorefonts-installer"
      sudo aptitude install -y ttf-mscorefonts-installer
echo "sudo apt-get install -y ttf-mscorefonts-installer"
      sudo apt-get install -y ttf-mscorefonts-installer
echo "#"
echo "#"
echo "set OLDPWDFG=$(pwd)"
      set OLDPWDFG=$(pwd)
      echo $OLDPWDFG
echo "#"
echo "# Si le telechargement est problématique, on peut utiliser une procedure parallèle :"
echo "# 1. Telechargement des fichiers de polices .exe dans un sous-repertoire msfonts"
#echo '     mkdir ~/.fonts/'
#           mkdir ~/.fonts
#echo '#    mkdir msfonts'
#           mkdir msfonts
echo '     cd ~/.local/share/fonts/msfonts'
           cd ~/.local/share/fonts/msfonts
echo "     cat /usr/share/package-data-downloads/ttf-mscorefonts-installer | grep Url | sed 's|Url:|wget|'"
           cat /usr/share/package-data-downloads/ttf-mscorefonts-installer | grep Url | sed 's|Url:|wget|'
echo "     cat /usr/share/package-data-downloads/ttf-mscorefonts-installer | grep Url | sed 's|Url:||' | xargs wget -N -c"
           cat /usr/share/package-data-downloads/ttf-mscorefonts-installer | grep Url | sed 's|Url:||' | xargs wget -N -c
echo "# 2. Extraction"
echo "     cabextract *"
           cabextract *
echo '     cd $OLDPWD'
           cd $OLDPWD
echo "# 3. Installation avec lecture du repertoire de départ"
echo "#    Information a recopier dans la reponse a la question ci dessous"
echo "#    Répertoire contenant les polices MS (si elles ont déjà été téléchargées)"
echo "#    /home/fred/.local/share/fonts/msfonts"
echo "     sudo dpkg-reconfigure ttf-mscorefonts-installer"
           sudo dpkg-reconfigure ttf-mscorefonts-installer
echo "#    Répertoire contenant les polices MS (si elles ont déjà été téléchargées)"
echo "#    /home/fred/.local/share/fonts/msfonts"
echo ""
echo "# -----------------------------------------------------"
echo "# Installation 2 : une fonte speciale symbole fonts-symbola"
echo "#"
echo "# Installation de la fonte pour les symboles"
echo "# https://libraries.io/github/caiogondim/bullet-train-oh-my-zsh-theme"
echo "#"
echo "sudo aptitude install -y fonts-symbola"
      sudo aptitude install -y fonts-symbola
echo "sudo apt-get install -y fonts-symbola"
      sudo apt-get install -y fonts-symbola
echo "#"
echo "# -----------------------------------------------------"
echo "# Installation 3 : la fonte monoid / monoisome"
echo "#"
echo "# https://github.com/larsenwork/monoid"
echo "#"
echo 'mkdir ~/.local/share/fonts/monoisome'
      mkdir ~/.local/share/fonts/monoisome
echo 'cd ~/.local/share/fonts/monoisome'
      cd ~/.local/share/fonts/monoisome
echo 'wget \\'
echo '     -nc \\'
echo '     -O Monoisome-Regular.ttf \\'
echo '     https://github.com/larsenwork/monoid/blob/master/Monoisome/Monoisome-Regular.ttf?raw=true'
      wget \
           -nc \
           -O Monoisome-Regular.ttf \
           https://github.com/larsenwork/monoid/blob/master/Monoisome/Monoisome-Regular.ttf?raw=true
echo 'cd $OLDPWD'
      cd $OLDPWD
echo ""
echo "# -----------------------------------------------------"
echo "# Installation 4 : la fonte ricomoon"
echo "#"
echo "# https://github.com/syui/ricomoon/"
echo "#"
echo 'mkdir ~/.local/share/fonts/ricomoon'
      mkdir ~/.local/share/fonts/ricomoon
echo 'cd ~/.local/share/fonts/ricomoon'
      cd ~/.local/share/fonts/ricomoon
echo 'wget \\'
echo '     -nc \\'
echo '     -O Ricomoon.ttf \\'
echo '     https://github.com/syui/ricomoon/blob/master/fonts/Ricomoon.ttf?raw=true'
      wget \
           -nc \
           -O Ricomoon.ttf \
           https://github.com/syui/ricomoon/blob/master/fonts/Ricomoon.ttf?raw=true
echo 'cd $OLDPWD'
      cd $OLDPWD
echo ""
echo "# -----------------------------------------------------"
echo "# Installation 5 : une autre fonte de symbole awesome-terminal-fonts"
echo "#"
echo "git clone https://github.com/gabrielelana/awesome-terminal-fonts"
      git clone https://github.com/gabrielelana/awesome-terminal-fonts
echo "git fetch https://github.com/gabrielelana/awesome-terminal-fonts"
      git fetch https://github.com/gabrielelana/awesome-terminal-fonts
#echo "./awesome-terminal-fonts/install.sh"
#      ./awesome-terminal-fonts/install.sh
echo "sudo cp ./awesome-terminal-fonts/build/*.ttf ~/.local/share/fonts/"
      sudo cp ./awesome-terminal-fonts/build/*.ttf ~/.local/share/fonts/
echo "sudo cp ./awesome-terminal-fonts/build/*.sh ~/.local/share/fonts/"
      sudo cp ./awesome-terminal-fonts/build/*.sh ~/.local/share/fonts/
echo "sudo cp ./awesome-terminal-fonts/config/10-symbols.conf /etc/fonts/conf.avail/"
      sudo cp ./awesome-terminal-fonts/config/10-symbols.conf /etc/fonts/conf.avail/
echo "sudo ln -s ../conf.avail/10-symbols.conf /etc/fonts/conf.d/10-symbols.conf"
      sudo ln -s ../conf.avail/10-symbols.conf /etc/fonts/conf.d/10-symbols.conf
echo "#"
echo "# -----------------------------------------------------"
echo "# Installation 6 : la fonte fantasque-sans-mono"
echo "#"
echo "# Vu sur cette page"
echo "# https://github.com/unixorn/awesome-zsh-plugins#fonts"
echo "#"
echo "# Ajout de la fonte fantasque-sans-mono"
echo "# https://github.com/belluzj/fantasque-sans"
echo "#"
echo "mkdir ~/.local/share/fonts/FantasqueSansMono"
      mkdir ~/.local/share/fonts/FantasqueSansMono
echo "cd ~/.local/share/fonts/FantasqueSansMono"
      cd ~/.local/share/fonts/FantasqueSansMono
echo 'wget \\'
echo '     -nc \\'
echo '     -O FantasqueSansMono.tar.gz \\'
echo '     https://github.com/belluzj/fantasque-sans/releases/download/v1.7.1/FantasqueSansMono.tar.gz'
      wget \
           -nc \
           -O FantasqueSansMono.tar.gz \
           https://github.com/belluzj/fantasque-sans/releases/download/v1.7.1/FantasqueSansMono.tar.gz
echo "tar -xzvf FantasqueSansMono.tar.gz"
      tar -xzvf FantasqueSansMono.tar.gz
echo 'cd $OLDPWD'
      cd $OLDPWD
echo "#"
echo "# -----------------------------------------------------"
echo "# Installation 7 : la fonte fantasque_awesome_powerline"
echo "#"
echo "# Ajout de fantasque_awesome_powerline"
echo "#"
echo "mkdir ~/.local/share/fonts/FantasqueSansMono"
      mkdir ~/.local/share/fonts/FantasqueSansMono
echo "git clone https://github.com/ztomer/fantasque_awesome_powerline"
      git clone https://github.com/ztomer/fantasque_awesome_powerline
echo "git fetch https://github.com/ztomer/fantasque_awesome_powerline"
      git fetch https://github.com/ztomer/fantasque_awesome_powerline
echo "cp fantasque_awesome_powerline/*.ttf ~/.local/share/fonts/FantasqueSansMono/"
      cp fantasque_awesome_powerline/*.ttf ~/.local/share/fonts/FantasqueSansMono/
#echo "cp fantasque_awesome_powerline/fantasque.sh ."
#      cp fantasque_awesome_powerline/fantasque.sh .
#echo "rm -rf fantasque_awesome_powerline"
#      rm -rf fantasque_awesome_powerline


echo "# -----------------------------------------------------"
echo "# Installation 8 : les fontes powerline (hack, source code, ...)"
echo "#"
echo "# https://github.com/powerline/fonts"
echo "#"
echo "# La doc est ici : "
echo "#   https://powerline.readthedocs.org/en/latest/installation/linux.html#fonts-installation"
echo "# La doc sur le test est ici : "
echo "#   https://gist.github.com/agnoster/3712874"
echo "#"
echo "sudo apt-get install -y fonts-powerline"
      sudo apt-get install -y fonts-powerline
echo "git clone https://github.com/powerline/fonts fonts-powerline"
      git clone https://github.com/powerline/fonts fonts-powerline
echo "git fetch https://github.com/powerline/fonts fonts-powerline"
      git fetch https://github.com/powerline/fonts fonts-powerline
echo "cd fonts-powerline"
      cd fonts-powerline
echo "./install.sh"
      ./install.sh
echo 'cd $OLDPWD'
      cd $OLDPWD
echo ""

echo "# -----------------------------------------------------"
echo "# Installation 9 : powerline extra "
echo "#"
echo "# https://github.com/ryanoasis/powerline-extra-symbols"
echo "mkdir ~/.local/share/fonts/powerline-extra-symbols"
      mkdir ~/.local/share/fonts/powerline-extra-symbols
echo "cd ~/.local/share/fonts/powerline-extra-symbols"
      cd ~/.local/share/fonts/powerline-extra-symbols
echo 'wget \\'
echo '     -nc \\'
echo '     -O PowerlineExtraSymbols.otf \\'
echo '     https://github.com/ryanoasis/powerline-extra-symbols/blob/master/PowerlineExtraSymbols.otf?raw=true'
      wget \
           -nc \
           -O PowerlineExtraSymbols.otf \
           https://github.com/ryanoasis/powerline-extra-symbols/blob/master/PowerlineExtraSymbols.otf?raw=true
echo 'cd $OLDPWD'
      cd $OLDPWD
echo ""
echo "# -----------------------------------------------------"
echo "# Installation 10 : nerd fonts"
echo "#"
echo "# https://github.com/ryanoasis/nerd-fonts"
echo "#"
echo "git clone https://github.com/ryanoasis/nerd-fonts"
      git clone https://github.com/ryanoasis/nerd-fonts
echo "git fetch https://github.com/ryanoasis/nerd-fonts"
      git fetch https://github.com/ryanoasis/nerd-fonts
echo "cd nerd-fonts"
      cd nerd-fonts
echo "./install.sh"
      ./install.sh
echo 'cd $OLDPWD'
      cd $OLDPWD
echo ""
echo "# -----------------------------------------------------"
echo "# Installation 11 : les fonts pour les cartes (OSM et mapnik)"
echo "#"
echo "# Des fonts spécifiques existent pour les cartes"
echo "# Ces fonts sont utilisées par exemple pour le rendu"
echo "# des cartes avec le style openstreetmap-carto-vector-tiles"
echo "# par l'utilitaire mapnik"
echo "#"
echo "# D'après la page suivante,"
echo "# https://github.com/geofabrik/openstreetmap-carto-vector-tiles/blob/master/INSTALL.md"
echo "# Il est nécessaire d'installer des polices supplémentaires pour utiliser ce système de rendu"
echo "#"
echo "# Cette installation est dupliquée dans ../osm/installOSMCartoCSS.sh"
echo "#"
echo "sudo aptitude install -y fonts-noto fonts-noto-cjk fonts-noto-hinted fonts-noto-unhinted fonts-hanazono ttf-unifont"
      sudo aptitude install -y fonts-noto fonts-noto-cjk fonts-noto-hinted fonts-noto-unhinted fonts-hanazono ttf-unifont
echo "sudo aptitude install -y fonts-dejavu ttf-dejavu ttf-dejavu-core ttf-dejavu-extra"
      sudo aptitude install -y fonts-dejavu ttf-dejavu ttf-dejavu-core ttf-dejavu-extra
echo "sudo apt-get install -y fonts-noto fonts-noto-cjk fonts-noto-hinted fonts-noto-unhinted fonts-hanazono ttf-unifont"
      sudo apt-get install -y fonts-noto fonts-noto-cjk fonts-noto-hinted fonts-noto-unhinted fonts-hanazono ttf-unifont
echo "sudo apt-get install -y fonts-dejavu ttf-dejavu ttf-dejavu-core ttf-dejavu-extra"
      sudo apt-get install -y fonts-dejavu ttf-dejavu ttf-dejavu-core ttf-dejavu-extra
echo ""
echo "# -----------------------------------------------------"
echo "# Installation 12 : les fonts pour les cartes (OSM et mapnik) les fonts noto de google"
echo "#"
echo "# Des fonts 'no tofu' de google sont utilisées également par openstreetmap-carto-vector-tiles"
echo "# https://www.google.com/get/noto/"
echo "# Précédemment nous avons installé une partie de ces fonts avec des paquets de ditribution"
echo "# mais cette installation ne semble pas suffisante"
echo "#"
echo "# La procédure d'installation se trouve ici"
echo "# https://www.google.com/get/noto/help/install/"

echo "#"
echo "# -----------------------------------------------------"
echo "# Installation 13 : a continuer"
echo "#"
echo "# https://codeboxr.com/top-10-google-font-for-better-readability/"
echo "#"

echo ""
echo "# -----------------------------------------------------"
echo "#"
echo "# Enregistrement de ces nouvelles fontes / polices"
echo "#"
echo "fc-cache -vf ~/.local/share/fonts/"
      fc-cache -vf ~/.local/share/fonts/
echo "fc-cache -vf /usr/share/fonts/"
      fc-cache -vf /usr/share/fonts/
echo "fc-cache -vf"
      fc-cache -vf
echo "#"
echo "# -----------------------------------------------------"
echo "#"
echo "# Téléchargement des fichiers de fonts"
echo "#"
echo "#"
echo "# Test d'une fonte/police dans un terminal"
echo "#"
echo 'echo "\ue0b0 \u00b1 \ue0a0 \u27a6 \u2718 \u26a1 \u2699"'
      echo "\ue0b0 \u00b1 \ue0a0 \u27a6 \u2718 \u26a1 \u2699"
echo 'echo "\ue0b0 \u00b1 \ue0a0 \u27a6 \u2718 \u26a1 \u2699 \uF302 \uf170 \ue77d \ue73c \ue712 \u63c \U1f40d"'
      echo "\ue0b0 \u00b1 \ue0a0 \u27a6 \u2718 \u26a1 \u2699 \uF302 \uf170 \ue77d \ue73c \ue712 \u63c \U1f40d"
echo "#"
echo "# BULLETTRAIN_VIRTUALENV_PREFIX"
echo "# table des caractères / ubuntu derivative powerline / commun / U1f40d / snake, sixth of the signs of the asian zodiac"
echo "#"
echo "#"
echo "#-----------------------------------------------"
echo "#"

echo ""
echo ""
