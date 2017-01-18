#!/bin/sh



# 7ème Partie - suite : Création d'un environnement python
###############################################
# Création d'un environnement python
echo "# 7ème Partie - suite : Création d'un environnement python"
echo "###############################################"
echo "#"
echo "# Installation de flask dans un environnement virtuel python"
echo "#"

echo "#"
echo "# Installation de l'environnement virtuel"
echo "#"
echo "# Utilisation de l'utilitaire pew"
echo "pew list_pythons -a | grep 3.6"
      pew list_pythons -a | grep 3.6
echo "pew list_pythons -a | grep 3.5"
      pew list_pythons -a | grep 3.5
echo "#"
echo "pew install 3.5.1"
      pew install 3.5.1
echo "#"
echo "# Nous allons démarrer l'environnement virtuel,"
echo "# Dans cet environnement, l'installation doit continuer avec"
echo "#"
echo "# --------------------"
echo '#'
echo '# Mise à jour de pip'
echo 'pip install --upgrade pip'
echo '#'
echo '# Installation de networkx'
echo 'pip install networkx'
echo '#'
echo '# Installation de pygraphml'
echo 'pip install pygraphml'
echo '#'
echo '# Installation de pygraphviz'
echo 'pip install pygraphviz'
echo '#'
echo '# Installation de PyYAML'
echo 'pip install PyYAML'
echo '#'
echo '# Installation de decorator'
echo 'pip install decorator'
echo '#'
echo "# --------------------"
echo '#'
echo "# --------------------"
echo '# Un exemple de projet graphe est ici'
echo "# ~/Document/technic/source/graphe"
echo "# --------------------"
echo "#"
echo "# Démarrage de l'environnement virtuel"
echo "#"
echo 'pew new -p $(pythonz locate 3.5.1) graphe'
      pew new -p $(pythonz locate 3.5.1) graphe
echo "#"
echo ""
