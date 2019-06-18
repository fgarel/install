#!/bin/sh



echo "# osmMaj.sh"
echo "###############################################"
echo "#"
echo "#"
echo '# Attention, il faut distinguer deux scripts a cause des droits des utilisateurs'
echo '# En effet, osmosis et osm2pgsql ne sont pas lancer par le même utilisateur'
echo '# et pour automatiser ces taches, nous avons créer un script par utilisateur'
echo '# chacun aura son fichier crontab'
echo "#"
echo "#"
echo 'sudo -u www-data \'
echo "     ~fred/Documents/install/source/osm/osmMajWww-data.sh"
      sudo -u www-data \
           ~fred/Documents/install/source/osm/osmMajWww-data.sh
echo "#"
echo "~fred/Documents/install/source/osm/osmMajNormal-user.sh"
      ~fred/Documents/install/source/osm/osmMajNormal-user.sh
echo "#"
echo "# Test"
echo "#./osmTest.sh"
echo "#~fred/Documents/install/source/osm/osmTest.sh"
echo '#'
echo '#---------------------------------------'
echo '# Ajout de deux taches cron qui vont mettre a jour les donnes osm'
echo '# https://doc.ubuntu-fr.org/cron'
echo '#'
echo '# A. une tache cron pour l utilisateur www-data'
echo '#      cette tache se decompose en 1. telechargement des données'
echo '#                                  2. import avec osm2pgsql'
echo '# B. une tache cron pour l utilisateur normal'
echo '#      cette tache se limite a     3. import avec osmosis'
echo '#'
echo '#'
echo '# Tous les jours à 7 heure'
echo '# 0 7 * * * /home/fred/Documents/install/source/osm/osmMajWww-data.sh'
echo '# Tous les jours à 7 heure 10'
echo '# 10 7 * * * /home/fred/Documents/install/source/osm/osmMajNormal-user.sh'
echo '#'
echo '#---------------------------------------'
# Attention, il faudra peut-etre distinguer l'execution de osmosis et de osm2pgsql
# En effet, une commande peut-etre utilisée par l'utiliateur normal,
# tandis que l'autre outil doit etre utilisé par www-data
# Pour ajouter un job à la crontab de www-data, la commande est :

# sudo crontab -u www-data -e

# vu ici : https://askubuntu.com/questions/189189/how-to-run-crontab-as-userwww-data
# https://askubuntu.com/questions/879530/why-cron-tasks-created-by-www-data-are-not-running/879779#879779
