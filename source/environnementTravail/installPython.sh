#!/bin/sh



# 7ème Partie : Installation de python
###############################################
# Installation de python
echo "# 7ème Partie : Installation de python"
echo "###############################################"
echo "#"
echo "# On installe à la fois python et pip"
echo "#"
echo "sudo apt-get install python3-pip"
      sudo apt-get install python3-pip
echo "# sudo apt-get install python-pip"
      # sudo apt-get install python-pip
echo "#"
echo "# Pré-requis avant d'installer pew : pythonz"
echo "# Pew utilise pythonz pour installer différentes versions de python."
echo "# Or, d'après le site suivant :"
echo "#   https://github.com/saghul/pythonz"
echo "# ptyhonz a besoin de plusieurs paquets pour pouvoir fonctionner"
echo "# correctement."
echo "# Ces paquets sont :"
echo "#"
echo "# sudo apt-get install build-essential zlib1g-dev libbz2-dev libssl-dev libreadline-dev libncurses5-dev libsqlite3-dev libgdbm-dev libdb-dev libexpat-dev libpcap-dev liblzma-dev libpcre3-dev"
echo "#"
echo "sudo apt-get install build-essential \\"
echo "                     zlib1g-dev libbz2-dev \\"
echo "                     libssl-dev libreadline-dev \\"
echo "                     libncurses5-dev libsqlite3-dev \\"
echo "                     libgdbm-dev libdb-dev libexpat-dev \\"
echo "                     libpcap-dev liblzma-dev libpcre3-dev"
      sudo apt-get install build-essential \
                           zlib1g-dev libbz2-dev \
                           libssl-dev libreadline-dev \
                           libncurses5-dev libsqlite3-dev \
                           libgdbm-dev libdb-dev libexpat-dev \
                           libpcap-dev liblzma-dev libpcre3-dev
echo "#"
echo "# Installation de pew"
echo "# https://github.com/berdario/pew"
echo "#"
echo "sudo -H pip3 install --upgrade pip"
      sudo -H pip3 install --upgrade pip
echo "sudo -H pip3 install pew"
      sudo -H pip3 install pew
echo "#"
echo "# http://sametmax.com/mieux-que-python-virtualenvwrapper-pew/"
echo "#"
echo "#                                           virtualenvwrapper   pew"
echo "#    Lister les env existant                workon              pew ls"
echo "#    Créer un env                           mkvirtualenv name   pew new name"
echo "#    Supprimer un env                       rmvirtualenv name   pew rm name"
echo "#    Activer un env                         workon name         pew workon name"
echo '#    Aller dans le dossier site-packages    cdsitepackages      cd $(pew sitepackages_dir)'
echo '#    Valeur par défaut pour $WORKON_HOME    ~/.virtualenvs      ~/local/share/virtualenvs'
echo "#      (dossier qui contient tous les envs) ~/.virtualenvs      ~/local/share/virtualenvs"
echo "#"
echo "# Voici quelques infos sur pew"
echo "#"
echo "# Pour info, rappel d'un problème résolu entre zsh et pew :"
echo "# Quand on fabrique un environnement virtuel,"
echo "# le système lance automatiqument un shell dans cet environnement"
echo "# mais, le fichier ~.zshrc n'est pas lu"
echo "# il fallait donc penser à lire ce fichier ~/.zshrc"
echo "#"
echo "# source ~/.zshrc"
echo "#"
echo "# Enfin, après avoir créé l'environnement virtuel,"
echo "# nous allons travailler dans ce nouvel environnement"
echo "# consulter les modules déjà installés"
echo "# et installer un module supplémentaire"
echo "# Les commandes pour l'usage quotidien  sont donc :"
echo "#"
echo "#   pew workon mapproxy"
echo "#   pip freeze"
echo "#   sudo pip install mapproxy"
echo "#"
echo "# Mais revenons aux commandes à connaitre pour la création."
echo "# Les commandes à savoir :"
echo "#   pew list_pythons"
echo "#   #pew list_pythons -a"
echo "#   pew list_pythons -a | grep 2.7"
echo "#   pew list_pythons -a | grep 3.4.3"
echo "#   pew install 2.7.10"
echo "#   pew install 3.4.3"
echo "#   #pew new mapproxy"
echo '#   #pew new -p $(pythonz locate 2.7.10) mapproxy'
echo '#   pew new -p $(pythonz locate 3.4.3) mapproxy'
echo ""

