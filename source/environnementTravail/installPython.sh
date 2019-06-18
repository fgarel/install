#!/bin/sh


# debian
export VERSION_PYTHON="3.6.6"
export VERSION_PYTHON_COURT="3.6"
# Attention, il faut aussi ces valeurs dans zshrc_antigen puis relancer installZsh.sh
# La version 3.6.6 est la version qui foncionne avec installPythonWebDjangoTemplate.sh
#
# A. Installation d'une version specifique de python
# A.1. Pourquoi une version specifique
# https://wemake-django-template.readthedocs.io/en/latest/pages/template/overview.html
# A.2. Laquelle
# https://github.com/wemake-services/wemake-django-template/blob/master/pyproject.toml
#
# B. Installation du template
# cf installPythonWebDjangoTemplate.sh
# se mettre dans le repertoire et lancer la commande
# cookiecutter gh:wemake-services/wemake-django-template
# https://github.com/wemake-services/wemake-django-template

# 7ème Partie : Installation de python
###############################################
# Installation de python
echo "# 7ème Partie : Installation de python"
echo "###############################################"
echo "#"
echo "# On installe à la fois python3, pip3, powerline et poetry"
echo "#"
echo "# Installation de python 3.6.6 par compilation et non pas par paquet debian"
echo "#"
echo "# https://www.rosehosting.com/blog/how-to-install-python-3-6-4-on-debian-9/"
echo "# https://unix.stackexchange.com/questions/332641/how-to-install-python-3-6"
echo "#"
echo "sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev"
      sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev
echo "sudo apt-get install -y libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev"
      sudo apt-get install -y libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev
echo "sudo apt-get install -y libedit-dev"
      sudo apt-get install -y libedit-dev
echo "sudo apt-get install -y xz-utils tk-dev libffi-dev liblzma-dev"
      sudo apt-get install -y xz-utils tk-dev libffi-dev liblzma-dev
echo "#"
echo "# Installation de python $VERSION_PYTHON"
echo "wget https://www.python.org/ftp/python/$VERSION_PYTHON/Python-$VERSION_PYTHON.tgz"
      wget https://www.python.org/ftp/python/$VERSION_PYTHON/Python-$VERSION_PYTHON.tgz
echo "tar xvf Python-$VERSION_PYTHON.tgz"
      tar xvf Python-$VERSION_PYTHON.tgz
echo "cd Python-$VERSION_PYTHON"
      cd Python-$VERSION_PYTHON
echo "./configure --enable-optimizations --with-ensurepip=install"
      ./configure --enable-optimizations --with-ensurepip=install
echo "make -j8"
      make -j8
echo "sudo make altinstall"
      sudo make altinstall
echo "#"
echo "sudo update-alternatives --install /usr/bin/python python /usr/local/bin/python$VERSION_PYTHON_COURT 60"
      sudo update-alternatives --install /usr/bin/python python /usr/local/bin/python$VERSION_PYTHON_COURT 60
echo "#"
echo "sudo update-alternatives --config python"
      sudo update-alternatives --config python
echo "#"
echo "cd .."
      cd ..
echo "sudo rm -rf Python-$VERSION_PYTHON"
      sudo rm -rf Python-$VERSION_PYTHON
echo "rm -f Python-$VERSION_PYTHON.tgz"
      rm -f Python-$VERSION_PYTHON.tgz
#echo "sudo apt-get install -y python3-pip"
#      sudo apt-get install -y python3-pip
#echo "# sudo apt-get install python-pip"
      # sudo apt-get install python-pip
#echo "#"
#echo "# Installation du paquet python3-psycopg2"
#echo "sudo aptitude -y install python3-psycopg2"
#      sudo aptitude -y install python3-psycopg2
#echo "sudo apt-get -y install python3-psycopg2"
#      sudo apt-get -y install python3-psycopg2
echo "#"
echo "# Mise à jour de pip (niveau utilisateur pour ne pas casser le système)"
echo "sudo -H pip$VERSION_PYTHON_COURT install --upgrade pip"
      sudo -H pip$VERSION_PYTHON_COURT install --upgrade pip
echo "pip$VERSION_PYTHON_COURT install --upgrade pip --user"
      pip$VERSION_PYTHON_COURT install --upgrade pip --user
echo "#"
echo "# Installation de powerline"
echo "# https://powerline.readthedocs.io/en/master/installation.html#pip-installation"
echo "#sudo -H pip$VERSION_PYTHON_COURT install powerline-status"
      #sudo -H pip$VERSION_PYTHON_COURT install powerline-status
echo "#sudo -H pip$VERSION_PYTHON_COURT install powerline-shell"
      #sudo -H pip$VERSION_PYTHON_COURT install powerline-shell
echo "#sudo -H pip$VERSION_PYTHON_COURT install --upgrade powerline-status"
      #sudo -H pip$VERSION_PYTHON_COURT install --upgrade powerline-status
echo "#sudo -H pip$VERSION_PYTHON_COURT install --upgrade powerline-shell"
      #sudo -H pip$VERSION_PYTHON_COURT install --upgrade powerline-shell
echo "pip$VERSION_PYTHON_COURT install powerline-status --user"
      pip$VERSION_PYTHON_COURT install powerline-status --user
echo "pip$VERSION_PYTHON_COURT install powerline-shell --user"
      pip$VERSION_PYTHON_COURT install powerline-shell --user
echo "pip$VERSION_PYTHON_COURT install --upgrade powerline-status --user"
      pip$VERSION_PYTHON_COURT install --upgrade powerline-status --user
echo "pip$VERSION_PYTHON_COURT install --upgrade powerline-shell --user"
      pip$VERSION_PYTHON_COURT install --upgrade powerline-shell --user
echo "#"
echo "# Apres l'installation de powerline-status, il faudra verifier que le "
echo "# zshrc_antigen est correctement configuré"
echo "#"
echo "#"
echo "# Installation d'un getionnaire d'environnement virtuel python"
echo "# il existe plusieurs gestionnaires : pew, pipenv "
echo "# et, le dernier testé : poetry"
echo "#"
echo "# Dorénavant, on ne s'occupe plus que de poetry"
echo "#"
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
echo "sudo apt-get install -y \\"
echo "                     build-essential \\"
echo "                     zlib1g-dev libbz2-dev \\"
echo "                     libssl-dev libreadline-dev \\"
echo "                     libncurses5-dev libsqlite3-dev \\"
echo "                     libgdbm-dev libdb-dev libexpat-dev \\"
echo "                     libpcap-dev liblzma-dev libpcre3-dev"
#      sudo apt-get install -y \
#                           build-essential \
#                           zlib1g-dev libbz2-dev \
#                           libssl-dev libreadline-dev \
#                           libncurses5-dev libsqlite3-dev \
#                           libgdbm-dev libdb-dev libexpat-dev \
#                           libpcap-dev liblzma-dev libpcre3-dev
echo "#"
echo "# Installation de pew"
echo "# https://github.com/berdario/pew"
echo "#"
#echo "sudo -H pip3 install --upgrade pip"
#      sudo -H pip3 install --upgrade pip
#echo "sudo -H pip3 install pew"
#      sudo -H pip3 install pew
echo "#pip$VERSION_PYTHON_COURT install pew --user"
#      pip$VERSION_PYTHON_COURT install pew --user
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
echo "#"
echo "# Installation de pipenv"
echo "# http://sametmax.com/pipenv-solution-moderne-pour-remplacer-pip-et-virtualenv/"
echo "#"
echo "# Mise à jour de pip, mais juste au niveau utilisateur"
echo "# pour pas casser le system"
echo "#python3 -m pip install pip --upgrade --user"
#      python3 -m pip install pip --upgrade --user
echo "#"
echo "# Installation de pipenv"
echo "#python3 -m pip install pipenv --user"
#      python3 -m pip install pipenv --user
echo "#"
echo "# Installation de poetry"
echo "# https://poetry.eustace.io/docs/"
echo "curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python"
      curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python
echo "#"
echo "# -------------------------"
echo "# Variable d'environnement"
echo "source $HOME/.poetry/env"
      source $HOME/.poetry/env
echo "# -------------------------"
echo "# Post installation"
echo "Updating poetry"
echo "poetry self:update"
      poetry self:update
echo "# Enable tab completion for Bash, Fish, or Zsh"
echo "# Zsh"
echo "mkdir ~/.zfunc/"
      mkdir ~/.zfunc/
echo "poetry completions zsh > ~/.zfunc/_poetry"
      poetry completions zsh > ~/.zfunc/_poetry
echo "#"

