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
echo './osmPrepareQgis.sh'
      ./osmPrepareQgis.sh
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
