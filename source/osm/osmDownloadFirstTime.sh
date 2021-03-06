#!/bin/sh



# 8ème Partie - Téléchargement, la première fois, des données de la région poitou-charentes
###############################################
# Téléchargement, la première fois, des données de la région poitou-charentes
# Creation d'un repertoire de travail pour OSM
echo "# 8ème Partie - Téléchargemnt, la première fois, des données de la région poitou-charentes"
echo "###############################################"
echo "#"
echo "# On va telecharger les données de la région poitou-charentes"
echo "#"
echo "# Il faut telecharger :"
echo "# - le fichier pbf"
echo "#   http://download.geofabrik.de/europe/france/poitou-charentes-latest.osm.pbf"
echo "# - et le fichier state qui lui correspond"
echo "#   ce fichier a un nom et est dans un sous repertoire qui change tous les jours"
echo "#"

echo "# Attention modif à faire à la main"
# http://download.geofabrik.de/europe/france/poitou-charentes-updates/000/
export STATE_PATH="002"
export STATE_FILE="378"
echo "# Pour connaitre les valeurs à rensigner ci dessus"
echo "# - il faut aller voir l'explication ci dessous"
echo "#   (cf. plus bas pour connaitre l'info à renseigner ici)"
echo "# - et aller voir le dernier fichier vu dans ce repertoire :"
echo "#   http://download.geofabrik.de/europe/france/poitou-charentes-updates/000/"
echo "#   http://download.geofabrik.de/europe/france/poitou-charentes-updates/000/$STATE_PATH/"
echo "#"
#
#
echo "#"
echo "# Il existe plusieurs sites qui facilite le techargement de données osm au format planet"
echo "#"
echo "# Ces sites sont :"
echo "# - https://mapzen.com/data/metro-extracts/"
echo "# - http://download.geofabrik.de/"

echo "#"
echo "# Attention il faut se mettre dans le repertoire osmosis pour lancer la commande ...."
echo "#"
echo "export OLDPWDFG=$(pwd)"
      export OLDPWDFG=$(pwd)
      echo $OLDPWDFG
echo "#"
echo "cd ~/Documents/osmosis"
      cd ~/Documents/osmosis
echo "#"
echo "# Suppression des fichiers *.pbf et state.txt"
echo "sudo -u www-data rm poitou-charentes-latest.osm.pbf"
#      sudo -u www-data rm change.osc.gz
#      sudo -u www-data rm expired-tiles.txt
      sudo -u www-data rm poitou-charentes-latest.osm.pbf
      sudo -u www-data rm state.txt
echo "#"
echo "#"
echo "sudo -u www-data wget http://download.geofabrik.de/europe/france/poitou-charentes-latest.osm.pbf"
      sudo -u www-data wget http://download.geofabrik.de/europe/france/poitou-charentes-latest.osm.pbf
#echo "wget -P /home/fred/Documents/osmosis/ \\"
#echo "     http://download.geofabrik.de/europe/france/poitou-charentes-latest.osm.pbf"
#      wget -P /home/fred/Documents/osmosis/ \
#           http://download.geofabrik.de/europe/france/poitou-charentes-latest.osm.pbf
echo "#"

echo "#"
echo "# Une fois que les données sont téléchargées pour la première fois,"
echo "# il faut aussi télécharger un fichier state.txt"
echo "#"
echo "# Osmosis se repère temporellement grace à un fichier qui s'appelle state.txt"
echo "# Par la suite, osmosis va gérer ce fchier state.txt, mais il faut l'initialiser."
echo "# On va donc sur la page que nous avons mis dans la variable baseUrl :"
echo "# On va dans le dossier 000 et on va à nouveau dans le dossier 000, 001 ou 002"
echo "# Dans notre cas, l'adresse à laquelle nous sommes est :"
echo "#"
echo "# http://download.geofabrik.de/europe/france/poitou-charentes-updates/000/000/"
echo "# http://download.geofabrik.de/europe/france/poitou-charentes-updates/000/001/"
echo "# ou"
echo "# http://download.geofabrik.de/europe/france/poitou-charentes-updates/000/002/"
echo "#"
echo "# Dans cette page, il y a un ensemble de couples de fichiers"
echo "# state.txt et osc.gz, chaque paire étant préfixée d'un nombre."
echo "# Il y a également la date d'édition des fichiers."
echo "#"
echo "# On va télécharger le fichier xxx.state.txt qui date (de la veille ?)"
echo "# du jour où l'on a téléchargé le .pbf."
echo "# On prend celui du jour (de la veille ?), car on veut être sûr qu'on ne rate pas"
echo "# de données : ce n'est pas grave de prendre des données plus vielles,"
echo "# car il va juste réécrire dessus."
echo "#"
echo "# Dans notre cas, nous sommes le 17 octobre 2019,"
echo "# alors, on va telecharger le fichier qui se trouve dans ce repertoire :"
echo "#"
echo "# http://download.geofabrik.de/europe/france/poitou-charentes-updates/000/$STATE_PATH/"
echo "#"
echo "# et qui s'appelle"
echo "#"
echo "# $STATE_FILE.state.txt  -> car il date du 17 octobre 2019"
echo "#"
echo "# cf aussi https://osm.mazdermind.de/replicate-sequences/"
echo "#"
#echo "wget -P /home/fred/Documents/osmosis/\\"
#echo "     http://download.geofabrik.de/europe/france/poitou-charentes-updates/000/002/034.state.txt"
#      wget -P /home/fred/Documents/osmosis/ \
#           http://download.geofabrik.de/europe/france/poitou-charentes-updates/000/002/034.state.txt
#echo "sudo -u www-data wget http://download.geofabrik.de/europe/france/poitou-charentes-updates/000/002/034.state.txt"
#      sudo -u www-data wget http://download.geofabrik.de/europe/france/poitou-charentes-updates/000/002/034.state.txt
echo "sudo -u www-data wget http://download.geofabrik.de/europe/france/poitou-charentes-updates/000/$STATE_PATH/$STATE_FILE.state.txt"
      sudo -u www-data wget http://download.geofabrik.de/europe/france/poitou-charentes-updates/000/$STATE_PATH/$STATE_FILE.state.txt

echo "#"
echo "# Lorsqu'on a téléchargé le fichier xxx.state.txt, il est nécessaire de le renommer en state.txt"
echo "#"
#echo "sudo -u www-data mv 034.state.txt state.txt"
#      sudo -u www-data mv 034.state.txt state.txt
echo "sudo -u www-data mv $STATE_FILE.state.txt state.txt"
      sudo -u www-data mv $STATE_FILE.state.txt state.txt
#echo "mv /home/fred/Documents/osmosis/596-state.txt /home/fred/Documents/osmosis/state.txt"
#      mv /home/fred/Documents/osmosis/596.state.txt /home/fred/Documents/osmosis/state.txt
echo "#"
#echo "cd ~/Documents/install/source/osm"
#      cd ~/Documents/install/source/osm
echo "cd $OLDPWDFG"
      cd $OLDPWDFG
echo "pwd"
      pwd
echo "#"
