#!/bin/sh


export PYTHON_VERSION_COURT=3.6
#
# Pour que ce script fonctionne, il faut une version specifique de python
# cf installPython.sh
# A. Installation d'une version spécifique de Python
# A.1. Pourquoi une version spécifique
# https://wemake-django-template.readthedocs.io/en/latest/pages/template/overview.html
# A.2. Laquelle
# https://github.com/wemake-services/wemake-django-template/blob/master/pyproject.toml

# B. Installation du template
# https://github.com/wemake-services/wemake-django-template
# se mettre dans le repertoire et lancer la commande
# cookiecutter gh:wemake-services/wemake-django-template

# 7ème Partie - suite : Création d'un environnement python
###############################################
# Création d'un environnement python pour le developpement web django
echo "# 7ème Partie - suite : Création d'un environnement python"
echo "###############################################"
echo "#"
echo "# Il s'agit de fournir les outils pour faire du developpement web avec django"
echo "#"
echo "# Et pour se lancer rapidement, nous allons utiliser un template"
echo "# https://wemake-django-template.readthedocs.io/en/latest/index.html"
echo "# https://github.com/wemake-services/wemake-django-template"
echo "# "
echo "# Nous allons donc installer ce template, puis l'utiliser"

echo "#"
echo "# il faut :"
echo "#   - python, au moins la version 3.6, pour avoir le module secrets"
echo "#       cette installation de python est dans installPython.sh et installZsh.sh"
echo "#   - cookiecutter"
echo "#       cookiecutter est un système de template, pour démarer un nouveau projet"
echo "#       https://github.com/audreyr/cookiecutter"
echo "#       cf ci dessous"
echo "#   - wemake-django-template est "
echo "#     le template, tres complet, tres bien structure, qui nous servira de base"
echo "#   - poetry :"
echo "#       poetry est un nouveau système pour gerer les environnements virutels python"
echo "#       https://poetry.eustace.io/docs/"
echo "#       ./installPython.sh"
echo "#   - docker"
echo "#   - docker-compose"
echo "#   - docker"
echo "#"
echo "# Installation des dependances"
echo "#"
echo "sudo -H pip$PYTHON_VERSION_COURT install cookiecutter jinja2-git"
      sudo -H pip$PYTHON_VERSION_COURT install cookiecutter jinja2-git
echo ""
echo "#"
echo "# Avec la command suivante, il faudra repondre aux questions :"
echo "#   - You've downloaded /...../wemake-django-template before. Is it okay to delete and re-download it? [yes] : yes"
echo "#   - project_name [test_project]:         test_project"
echo "#   - project_verbose_name [Test Project]: test de l'utilisation de wemake-django-template"
echo "#   - project_domain [myapp.com]:          cdalr.fr"
echo "#   - organization [wemake.sevices]:       VLR Voirie Topo"
echo "# "
echo "cookiecutter gh:wemake-services/wemake-django-template"
      cookiecutter gh:wemake-services/wemake-django-template
echo "#"
echo "# Puis, une fois que notre repertoire projet est créé, il faut l'initialiser :"
echo "#   cd repertoire"
echo "#   poetry install"
echo "# "
echo "cd test_project"
      cd test_project
echo "poetry install"
      poetry install
#echo "# on clone"
#echo "git clone https://github.com/wemake-services/wemake-django-template"
#      git clone https://github.com/wemake-services/wemake-django-template
#echo "git fetch https://github.com/wemake-services/wemake-django-template"
#      git fetch https://github.com/wemake-services/wemake-django-template
#echo "#"
#echo "cd wemake-django-template"
#      cd wemake-django-template
echo "#"
#echo "docker-compose build"
#      docker-compose build
#echo "docker-compose run --rm web python manage.py migrate"
#      docker-compose run --rm web python manage.py migrate
#echo "docker-compose up"
#      docker-compose up
echo "#"
#echo "# Nous allons démarrer l'environnement virtuel,"
#echo "# Dans cet environnement, l'installation doit continuer avec"
#echo "#"
#echo "# --------------------"
#echo '#'
#echo "./webpython/webdjangotemplate_postinstall.sh"
#echo "#"
#echo "# --------------------"
#echo '#'
#echo "# --------------------"
#echo '# Apres, avoir installé un serveur web, nginx'
#echo '# Apres, avoir installé un environnemnent virtuel webdjangotemplate'
#echo "# on peut maintenant lancé l'environnement virtuel en question"
#echo "# se mettre dans le bon repertoire"
#echo 'cd nginxFlask'
#echo "# --------------------"
#echo "#"
#echo "# Démarrage de l'environnement virtuel"
#echo "#"
#echo 'pew new -p $(pythonz locate 3.5.0) webdjangotemplate'
##      pew new -p $(pythonz locate 3.5.0) webdjangotemplate
#echo "#"
echo ""
