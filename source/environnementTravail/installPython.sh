#!/bin/sh



# 7ème Partie : Installation de python
###############################################
# Installation de python
echo "# 7ème Partie : Installation de python"
echo "###############################################"
echo "#"
echo "# On installe à la fois python et pip"
echo "#"
echo "# sudo apt-get install python-pip"
#sudo apt-get install python3-pip
sudo apt-get install python-pip
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
#sudo pip3 install pew
sudo pip install pew
echo "# http://sametmax.com/mieux-que-python-virtualenvwrapper-pew/"
echo "#"
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
echo ""

# 6ème Partie - suite : Création d'un environnement python
###############################################
# Création d'un environnement python
echo "# 6ème Partie - suite : Création d'un environnement python"
echo "###############################################"
echo "#"
echo "# Pew peut maintenant être utilisé :"
echo "#"
echo "# Nous allons créer un environnement virtuel pour mapproxy"
echo "# MapProxy is an open source proxy for geospatial data."
echo "# It caches, accelerates and transforms data from existing "
echo "# map services and serves any desktop or web GIS client."
echo "# http://mapproxy.org/"
echo "#"
echo "# Pré-requis avant d'installer mapprproxy"
echo "# L'installation de mapproxy ne se passe pas très bien si nous n'avons pas"
echo "# au préalable, installé quelques paquets"
echo "#"
echo "# Ces paquets sont :"
echo "#"
echo "# sudo apt-get install libjpeg-dev"
echo "#"
sudo apt-get install libjpeg-dev
echo "#"
echo "# Voici quelques infos sur pew"
echo "#"
echo "# Pour info, rappel d'un problème résolu entre zsh et pew :"
echo "# Quand on fabrique un environnement virtuel,"
echo "# le système lance automatiqument un shell dans cet environnement"
echo "# mais, le fichier ~.zshrc n'est pas lu"
echo "# il faut donc penser à lire ce fichier ~/.zshrc"
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
pew list_pythons -a | grep 3.4.3
echo "#   pew install 2.7.10"
echo "#   pew install 3.4.3"
pew install 3.4.3
echo "#   #pew new mapproxy"
echo '#   #pew new -p $(pythonz locate 2.7.10) mapproxy'
echo '#   pew new -p $(pythonz locate 3.4.3) mapproxy'
pew new -p $(pythonz locate 3.4.3) mapproxy
echo ""
