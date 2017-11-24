#!/bin/sh



echo "# osmMajWww-data.sh"
echo "###############################################"
echo "#"
echo "#"
echo "# Téléchargement des données diff"
#echo "./osmDownloadOtherTime.sh"
echo "~fred/Documents/install/source/osm/osmDownloadOtherTimeWww-data.sh"
      ~fred/Documents/install/source/osm/osmDownloadOtherTimeWww-data.sh
echo "#"
echo "#"
echo "# Import de ces données"
#echo "./osmImportOtherTime.sh"
echo "~fred/Documents/install/source/osm/osmImportOtherTimePart2Www-data.sh"
      ~fred/Documents/install/source/osm/osmImportOtherTimePart2Www-data.sh
echo "#"
echo "#"
echo "# Test"
echo "#./osmTest.sh"
echo "#~fred/Documents/install/source/osm/osmTest.sh"
      #~fred/Documents/install/source/osm/osmTest.sh
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
echo '# Pour ajouter un job à la crontab de www-data, la commande est :'
echo '#'
echo '# sudo crontab -u www-data -e'
echo '#'
echo '# vu ici : https://askubuntu.com/questions/189189/how-to-run-crontab-as-userwww-data'
echo '#'
echo '# tous les jours à 7 heure'
echo '# 0 7 * * * /home/fred/Documents/install/source/osm/osmMajWww-data.sh'
echo '#'
echo '#---------------------------------------'
# Attention, il faudra peut-etre distinguer l'execution de osmosis et de osm2pgsql
# En effet, une commande peut-etre utilisée par l'utiliateur normal,
# tandis que l'autre outil doit etre utilisé par www-data
# Pour ajouter un job à la crontab de www-data, la commande est :

# sudo crontab -u www-data -e

# vu ici : https://askubuntu.com/questions/189189/how-to-run-crontab-as-userwww-data
# https://askubuntu.com/questions/879530/why-cron-tasks-created-by-www-data-are-not-running/879779#879779
