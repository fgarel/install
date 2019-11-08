#!/bin/sh


#datahost='localhost'
#database='osm'
#dataschema='osm2pgsql'
#datauser='osmuser'
#datapass='osmpass'

echo "# osmFirstTime.sh"
echo "###############################################"

echo "#"
echo "# Enchainement de quelques scripts"
echo "#"

echo './installOSMTools.sh'
      ./installOSMTools.sh
echo './installOSMCartoCSS1.sh'
      ./installOSMCartoCSS1.sh
echo '#./installPostgresqlOsm.sh'
      #./installPostgresqlOsm.sh
echo "sudo service postgresql status"
      sudo service postgresql status
echo "sudo service postgresql stop"
      sudo service postgresql stop
echo "sudo service postgresql status"
      sudo service postgresql status
echo "sudo service postgresql start"
      sudo service postgresql start
echo "sudo service postgresql status"
      sudo service postgresql status
echo "#####"
echo "#sudo -u postgres psql -c 'drop database osm;'"
      #sudo -u postgres psql -c 'drop database osm;'
echo "#####"
echo './01_base_create.py'
      ./01_base_create.py
echo './osmCreateRepository.sh'
      ./osmCreateRepository.sh
echo "################################"
echo '# vi ./osmDownloadFirstTime.sh #'
      # vi ./osmDownloadFirstTime.sh
echo "################################"
echo './osmDownloadFirstTime.sh'
      ./osmDownloadFirstTime.sh
echo './osmImportFirstTime.sh'
      ./osmImportFirstTime.sh
echo './osmImportFirstTime.sh'
echo "################################"
echo 'On ne fait pas encore les vues spécifiques pour la Rochelle'
echo 'car, dans le script installOSMCartoCSS2new, les instructions sql du makefile'
echo '../openstreetmap-carto-vector-tile/Makefile/postgresql_fix_geometry'
echo 'se soldent par un echec'
#echo './osmPrepareQgis.sh'
#      ./osmPrepareQgis.sh
echo "################################"
echo './osmTest.sh'
      ./osmTest.sh
echo './osmMaj.sh'
      ./osmMaj.sh
echo './osmMaj.sh'
      ./osmMaj.sh
echo './osmMaj.sh'
      ./osmMaj.sh
echo './osmTest.sh'
      ./osmTest.sh
