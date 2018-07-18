#!/bin/sh


#export GEOGIG_VERSION='1.2.0'

echo "#"
echo "# Installation des plugins QGIS permettant de travailler avec geogig"
echo "#"
echo "#"
echo "# Le plugin boundlessgeo"
echo "#"
#echo "# Si celui ci existe dejà, Suppression du sous-repertoire qgis-geogiglight-plugin"
#echo "#"
#echo "rm -rf qgis-geogiglight-plugin"
#      rm -rf qgis-geogiglight-plugin
#echo "#"
echo "export OLDPWDFG=$(pwd)"
      export OLDPWDFG=$(pwd)
echo $OLDPWDFG
echo "cd .."
      cd ..
echo "pwd"
      pwd
echo "#"
echo "# Suppression du repertoire si il existe"
echo "rm -rf qgis-geogiglight-plugin"
      rm -rf qgis-geogiglight-plugin
echo "#"
echo "git clone -b development https://github.com/boundlessgeo/qgis-geogiglight-plugin"
      git clone -b development https://github.com/boundlessgeo/qgis-geogiglight-plugin
#echo "git fetch https://github.com/boundlessgeo/qgis-geogiglight-plugin qgis3"
#      git fetch https://github.com/boundlessgeo/qgis-geogiglight-plugin qgis3
echo "#"

echo "# Installation de paver"
echo "#"
echo "# On met a jour pip3,....."
echo "sudo -H pip3 install --upgrade pip"
      sudo -H pip3 install --upgrade pip
#echo "# ...Mais, en fait, paver est en python2"
#echo "sudo -H pip install --upgrade pip"
#      sudo -H pip install --upgrade pip
echo "#"
echo "sudo -H pip3 install Paver"
      sudo -H pip3 install Paver
echo "#"
echo "sudo -H pip3 install --upgrade Paver"
      sudo -H pip3 install --upgrade Paver
echo "#"
echo "# On lance paver dans le repertoire que l'on vient de cloner"
echo "#"
echo "cd qgis-geogiglight-plugin"
      cd qgis-geogiglight-plugin
echo "#"
echo "paver setup"
      paver setup
echo "paver install"
      paver install
echo "#"
echo "cd .."
      cd ..
echo "#"
echo "# Mise à jour de requests"
echo "#"
echo "# Il y a un problème de mise à jour pour ce module"
echo "# urllib"
echo "# car, quand on lance qgis avec le plugin geogoig, sans la mise à jour de requests,"
echo "# nous detectons une erreur du type"
echo "# AttributeError: 'module' object has no attribute 'PROTOCOL_SSLv3'"
echo "# La solution est vu sur cette page"
echo "# https://stackoverflow.com/questions/28987891/patch-pyopenssl-for-sslv3-issue"
echo "#"
echo "sudo -H pip install --upgrade requests"
      sudo -H pip install --upgrade requests
echo "#"
echo "# Pour installer le plugin goegig sous qgis, il faut aussi installer"
echo "# le plugin TileLayer"

echo "#"
echo "# Une alternative au plugin boundlessgeo : Simplified Geogig Plugin"
echo "#"
echo "# https://github.com/SWM-IT/qgis-netze-gas/blob/master/documents/en_gb/Dokumentation%20GeogigLocalClient.rst#installation-of-the-plugins"
echo "#"
echo "# Installation de lib-qgis-common"
echo "#"
echo "git clone https://github.com/boundlessgeo/lib-qgis-commons"
      git clone https://github.com/boundlessgeo/lib-qgis-commons
echo "git fetch https://github.com/boundlessgeo/lib-qgis-commons"
      git fetch https://github.com/boundlessgeo/lib-qgis-commons
echo "#"
echo "# Recopie"
echo "#"
echo "cp -r ./lib-qgis-commons/qgiscommons2 ~/.qgis2/python/plugins"
      cp -r ./lib-qgis-commons/qgiscommons2 ~/.qgis2/python/plugins
echo "#"
echo "# Installation de Simplified Geogig Plugin"
echo "#"
echo "git clone https://github.com/SWM-IT/qgis-netze-gas"
      git clone https://github.com/SWM-IT/qgis-netze-gas
echo "git fetch https://github.com/SWM-IT/qgis-netze-gas"
      git fetch https://github.com/SWM-IT/qgis-netze-gas
echo "#"
echo "# Recopie"
echo "#"
echo "cp -r ./qgis-netze-gas/source/examples/python/plugins/GeogigLocalClient ~/.qgis2/python/plugins"
      cp -r ./qgis-netze-gas/source/examples/python/plugins/GeogigLocalClient ~/.qgis2/python/plugins
echo "#"
echo "cd $OLDPWDFG"
      cd $OLDPWDFG
echo "pwd"
      pwd
