#!/bin/sh



echo "# osmDownloadOtherTime.sh"
echo "###############################################"
#echo "#"
#echo "# On va telecharger les mises a jour des données de la région poitou-charentes"
#echo "#"
#echo "# Modification du fichier configuration.txt"
#echo "# de façon a ce que osmosis ne telecharge que les mises à jour de"
#echo "# la region poitou-charentes"
#echo "#"
#echo "# #sudo -u www-data \\"
#echo "sed -i -e 's|baseUrl=.*|baseUrl=http://download.geofabrik.de/europe/france/poitou-charentes-updates/|' ~/Documents/osmosis/configuration.txt"
#      sed -i -e 's|baseUrl=.*|baseUrl=http://download.geofabrik.de/europe/france/poitou-charentes-updates/|' ~/Documents/osmosis/configuration.txt
#echo "#"
#echo "# Affichage de l'ancienne date"
#echo "cat /home/fred/Documents/osmosis/state.txt"
#      cat /home/fred/Documents/osmosis/state.txt
echo "#"
echo "export OLDPWDFG=$(pwd)"
      export OLDPWDFG=$(pwd)
      echo $OLDPWDFG
echo "#"
echo "cd ~/Documents/osmosis"
      cd ~/Documents/osmosis
echo "#"
echo "# Téléchargement d'un fichier diff \"quotidien\""
echo "sudo -u www-data \\"
echo "osmosis --read-replication-interval \\"
echo "        workingDirectory=. \\"
echo "        --simplify-change \\"
echo "        --write-xml-change \\"
echo "        change.osc.gz"
      sudo -u www-data \
      osmosis --read-replication-interval \
              workingDirectory=. \
              --simplify-change \
              --write-xml-change \
              change.osc.gz
echo "#"
echo "# Affichage de le nouvelle date"
echo "cat /home/fred/Documents/osmosis/state.txt"
      cat /home/fred/Documents/osmosis/state.txt
echo "#"
echo "#"
#echo "cd ~/Documents/install/source/osm"
#      cd ~/Documents/install/source/osm
echo "cd $OLDPWDFG"
      cd $OLDPWDFG
echo "pwd"
      pwd
echo "#"
#echo "# Affichage des changements"
#echo "#zcat /home/fred/Documents/osmosis/change.osc.gz"
#      #zcat /home/fred/Documents/osmosis/change.osc.gz
#echo "#"
