#!/bin/sh



echo "# osmMaj.sh"
echo "###############################################"
echo "#"
echo "#"
echo "# Téléchargement des données diff"
echo "./osmDownloadOtherTime.sh"
echo "~fred/Documents/install/source/osm/osmDownloadOtherTime.sh"
      ~fred/Documents/install/source/osm/osmDownloadOtherTime.sh
echo "#"
echo "#"
echo "# Import de ces données"
echo "./osmImportOtherTime.sh"
echo "~fred/Documents/install/source/osm/osmImportOtherTime.sh"
      ~fred/Documents/install/source/osm/osmImportOtherTime.sh
echo "#"
echo "#"
echo "# Test"
echo "#./osmTest.sh"
echo "#~fred/Documents/install/source/osm/osmTest.sh"
      #~fred/Documents/install/source/environnementTravail/osmTest.sh
echo "#"
echo '#'
echo '#---------------------------------------'
echo '# Ajout d une tache cron qui va mettre a jour les donnes osm'
echo '# https://doc.ubuntu-fr.org/cron'
echo '#'
echo '# crontab -l'
echo '#'
echo '# crontab -e'
echo '#'
echo '# tous les jours à 7 heure'
echo '# 0 7 * * * /home/fred/Documents/install/source/environnementTravail/osmMaj.sh'
echo '#'
echo '#---------------------------------------'
# attention, il faudra peut-etre distinguer l'execution de osmosis et de osm2pgsql
# en effet, une commande peut-etre utilisée par l'utiliateur normal,
# tandis que l'autre outil doit etre untilisé par www-data
# pour ajouter un job à la crontab de www-data, la commande est :

# sudo crontab -u www-data -e

# vu ici : https://askubuntu.com/questions/189189/how-to-run-crontab-as-userwww-data
# https://askubuntu.com/questions/879530/why-cron-tasks-created-by-www-data-are-not-running/879779#879779
