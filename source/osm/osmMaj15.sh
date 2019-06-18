#!/bin/sh



echo "# osmMaj15.sh"
echo "###############################################"
echo "#"
echo "#"
days='1 2 3 4 5 6 7 8 9 10 11 12 13 14 15'
for day in $days;
do
    echo "# day = "$day;
    echo "# ===========";
    echo "#";
    echo 'sudo -u www-data \'
    echo "     ~fred/Documents/install/source/osm/osmMajWww-data.sh"
          sudo -u www-data \
               ~fred/Documents/install/source/osm/osmMajWww-data.sh
    echo "#"
    echo "~fred/Documents/install/source/osm/osmMajNormal-user.sh"
          ~fred/Documents/install/source/osm/osmMajNormal-user.sh
    echo "#";
    echo "#";
done
echo "# Test"
echo "./osmTest.sh"
echo "~fred/Documents/install/source/osm/osmTest.sh"
      ~fred/Documents/install/source/osm/osmTest.sh
echo "#"
echo "# Affichage de la nouvelle date"
echo "cat /home/fred/Documents/osmosis/state.txt"
      cat /home/fred/Documents/osmosis/state.txt
echo "#"
