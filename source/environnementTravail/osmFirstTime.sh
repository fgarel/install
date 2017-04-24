#!/bin/sh


datahost='localhost'
database='osm'
dataschema='osm2pgsql'
datauser='osmuser'

echo "# osmFirstTime.sh"
echo "###############################################"

echo "#"
echo "# Enchainement de quelques scripts"
echo "#"

echo './installOsm.sh'
      ./installOsm.sh
echo './installOsmCartoCSS.sh'
      ./installOsmCartoCSS.sh
echo './installPostgresqlOsm.sh'
      ./installPostgresqlOsm.sh
echo './osmCreateRepository.sh'
      ./osmCreateRepository.sh
echo './osmDownloadFirstTime.sh'
      ./osmDownloadFirstTime.sh
echo './osmImportFirstTime2.sh'
      ./osmImportFirstTime2.sh
echo './osmTest.sh'
      ./osmTest.sh
