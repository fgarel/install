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
echo "#https://github.com/larsenwork/monoid"
echo "#"
echo 'mkdir ~/.local/share/fonts/monoisome'
      mkdir ~/.local/share/fonts/monoisome
echo 'cd ~/.local/share/fonts/monoisome'
      cd ~/.local/share/fonts/monoisome
echo 'wget https://github.com/larsenwork/monoid/blob/master/Monoisome/Monoisome-Regular.ttf?raw=true'
      wget https://github.com/larsenwork/monoid/blob/master/Monoisome/Monoisome-Regular.ttf?raw=true
echo 'cd $OLDPWD'
      cd $OLDPWD
echo ""
echo "# -----------------------------------------------------"
echo "# Installation 4 : une autre fonte de symbole awesome-terminal-fonts"
echo "#"
echo "git clone https://github.com/gabrielelana/awesome-terminal-fonts"
      git clone https://github.com/gabrielelana/awesome-terminal-fonts
echo "git fetch https://github.com/gabrielelana/awesome-terminal-fonts"
      git fetch https://github.com/gabrielelana/awesome-terminal-fonts
echo "./awesome-terminal-fonts/install.sh"
      ./awesome-terminal-fonts/install.sh
echo "sudo cp ./awesome-terminal-fonts/config/10-symbols.conf /etc/fonts/conf.avail/"
      sudo cp ./awesome-terminal-fonts/config/10-symbols.conf /etc/fonts/conf.avail/
echo "sudo ln -s ../conf.avail/10-symbols.conf /etc/fonts/conf.d/10-symbols.conf"
      sudo ln -s ../conf.avail/10-symbols.conf /etc/fonts/conf.d/10-symbols.conf
echo "#"
echo "# -----------------------------------------------------"
echo "# Installation 5 : la fonte fantasque-sans-mono"
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
echo "wget https://github.com/belluzj/fantasque-sans/releases/download/v1.7.1/FantasqueSansMono.tar.gz \\"
echo "     -O FantasqueSansMono.tar.gz"
      wget https://github.com/belluzj/fantasque-sans/releases/download/v1.7.1/FantasqueSansMono.tar.gz \
           -O FantasqueSansMono.tar.gz
echo "tar -xzvf FantasqueSansMono.tar.gz"
      tar -xzvf FantasqueSansMono.tar.gz
echo 'cd $OLDPWD'
      cd $OLDPWD
echo "#"
echo "# -----------------------------------------------------"
echo "# Installation 6 : la fonte fantasque_awesome_powerline"
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
echo "# Installation 7 : les fontes powerline (hack, source code, ...)"
echo "#"
echo "# https://github.com/powerline/fonts"
echo "#"
echo "# La doc est ici : "
echo "#   https://powerline.readthedocs.org/en/latest/installation/linux.html#fonts-installation"
echo "# La doc sur le test est ici : "
echo "#   https://gist.github.com/agnoster/3712874"
echo "#"
echo "suod apt-get install -y fonts-powerline"
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
echo "# Installation 8 : powerline extra "
echo "#"
echo "# https://github.com/ryanoasis/powerline-extra-symbols"
echo "mkdir ~/.local/share/fonts/powerline-extra-symbols"
      mkdir ~/.local/share/fonts/powerline-extra-symbols
echo "cd ~/.local/share/fonts/powerline-extra-symbols"
      cd ~/.local/share/fonts/powerline-extra-symbols
echo "wget https://github.com/ryanoasis/powerline-extra-symbols/blob/master/PowerlineExtraSymbols.otf?raw=true \\"
echo "     -O PowerlineExtraSymbols.otf"
      wget https://github.com/ryanoasis/powerline-extra-symbols/blob/master/PowerlineExtraSymbols.otf?raw=true \
           -O PowerlineExtraSymbols.otf
echo 'cd $OLDPWD'
      cd $OLDPWD
echo ""
echo "# -----------------------------------------------------"
echo "# Installation 9 : nerd fonts"
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
echo "#"
echo "# Enregistrement de ces nouvelles fontes / polices"
echo "#"
echo "fc-cache -vf ~/.local/share/fonts/"
      fc-cache -vf ~/.local/share/fonts/
#echo "fc-cache -vf ~/.fonts/"
#      fc-cache -vf ~/.fonts/
#echo "fc-cache -vf ~/.local/share/fonts/"
#      fc-cache -vf ~/.local/share/fonts/
#echo "fc-cache -vf ~/.fonts/"
#      fc-cache -vf ~/.fonts/
#echo "fc-cache -vf fonts/"
#      fc-cache -vf fonts/
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
echo "#"
echo "# BULLETTRAIN_VIRTUALENV_PREFIX"
echo "# table des caractères / ubuntu derivative powerline / commun / U1f40 / snake, sixth of the signs of the asian zodiac"
echo "#"
echo "#"
echo "#-----------------------------------------------"
echo "#"

echo ""
echo ""
