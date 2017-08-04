#!/bin/sh



# 8ème Partie - Installation d'un environnement OSM
###############################################
# Installation d'un environnement OSM
echo "# 8ème Partie - Installation de mapnik dans un container docker"
echo "######################################################"
echo "#"
echo "# Ici, on teste l'installation de mapnik dans un container docker"
echo "#"
echo ""
echo "# Attention, pour utiliser docker, il faut :"
echo "#   vu sur cette page :"
echo "#   https://forums.docker.com/t/cannot-connect-to-the-docker-daemon-is-the-docker-daemon-running-on-this-host/8925/15"
echo "#"
echo "# - que le daemon soit lancé"
echo "#     non => service docker status"
echo "#     non => service docker start"
echo "#     oui => sudo docker daemon &"
echo "# - que l'utilisateur unix fred doit dans le groupe docker"
echo "#     => sudo usermod -aG docker $USER"
echo "# - que la config de docker soit modifiée"
echo "#     Inside file /lib/systemd/system/docker.service change:"
echo "#       ExecStart=/usr/bin/dockerd fd://"
echo "#       with"
echo "#       ExecStart=/usr/bin/dockerd -H tcp://0.0.0.0:2375"
echo "#     => sudo vi /lib/systemd/system/docker.service"
echo "#     Inside file /etc/init.d/docker change:"
echo "#       DOCKER_OPTS="
echo "#       with"
echo "#       DOCKER_OPTS=\"-H tcp://0.0.0.0:2375\""
echo "#     => sudo vi /etc/init.d/docker"
echo "#"
echo "# "

echo "#"
echo "#"
#echo "sudo service docker start"
#      sudo service docker start
#echo "docker run hello-world"
#      docker run hello-world
#echo "docker pull ubuntu"
#      docker pull ubuntu
echo "docker image ls -a"
      docker image ls -a
echo "docker images"
      docker images
echo "docker container ls -a"
      docker container ls -a
echo "docker ps"
      docker ps

echo "#"
echo "rm -rf docker-mapnik"
      rm -rf docker-mapnik
echo "git clone https://github.com/aldoridhoni/docker-mapnik"
      git clone https://github.com/aldoridhoni/docker-mapnik
echo "#"
echo "Recopie du fichier Dockerfile"
echo "#"
echo "cp installOSMMapnikUbuntuDockerPaquet2.dockerfile docker-mapnik/Dockerfile"
      cp installOSMMapnikUbuntuDockerPaquet2.dockerfile docker-mapnik/Dockerfile

echo "cp installOSM.sh docker-mapnik/installOSM.sh"
      cp installOSM.sh docker-mapnik/installOSM.sh

echo "cp installOSMCartoCSS.sh docker-mapnik/installOSMCartoCSS.sh"
      cp installOSMCartoCSS.sh docker-mapnik/installOSMCartoCSS.sh

echo "cp installOSMBoostUbuntuPaquet.sh docker-mapnik/installOSMBoostUbuntuPaquet.sh"
      cp installOSMBoostUbuntuPaquet.sh docker-mapnik/installOSMBoostUbuntuPaquet.sh

echo "cp installOSMMapnikUbuntuPaquet.sh docker-mapnik/installOSMMapnikUbuntuPaquet.sh"
      cp installOSMMapnikUbuntuPaquet.sh docker-mapnik/installOSMMapnikUbuntuPaquet.sh

#echo "cp installOSMMapnikUbuntuDockerPaquet3.sh docker-mapnik/installOSMMapnikUbuntuDockerPaquet3.sh"
#      cp installOSMMapnikUbuntuDockerPaquet3.sh docker-mapnik/installOSMMapnikUbuntuDockerPaquet3.sh

echo "cp installOSMPythonMapnikUbuntu.sh docker-mapnik/installOSMPythonMapnikUbuntu.sh"
      cp installOSMPythonMapnikUbuntu.sh docker-mapnik/installOSMPythonMapnikUbuntu.sh

echo "cd docker-mapnik"
      cd docker-mapnik

echo "docker build -t ubuntu-mapnik ."
      docker build -t ubuntu-mapnik .
echo "cd .."
      cd ..
#echo "docker image ls -a"
#      docker image ls -a
#echo "docker container ls -a"
#      docker container ls -a
#
echo "#----------------------"
echo "# Test de l'installation de mapnik :"
echo "#----------------------"
#echo "# Test 1 : test interne : make test"
#echo "#   https://github.com/mapnik/mapnik/wiki/UbuntuInstallation"
#echo "    cd ../mapnik ; export JOBS=1 ; make test ; cd ../environnementTravail"
#echo "    cd ../mapnik ; export JOBS=16 ; make test ; cd ../environnementTravail"
#echo "# Test 2 : test interne : registration ?"
#echo "    cd ../mapnik ; \\"
#echo "    ./test/standalone/font_registration_test-bin ; \\"
#echo "    cd ../environnementTravail"
#echo "    ../mapnik/test/standalone/font_registration_test-bin"
#echo "    cd ../mapnik ; \\"
#echo "    ./test/standalone/datasource_registration_test-bin ; \\"
#echo "    cd ../environnementTravail"
#echo "    ../mapnik/test/standalone/datasource_registration_test-bin"
echo "# Test 3 : mapnik-config"
echo "#   (mapnik-config est normalement dans le paquet libmapnik-dev)"
echo "#   La doc est ici"
echo "#   https://github.com/mapnik/mapnik/wiki/GettingStartedInPython"
echo '    mapnik-config -v # should return a version number'
echo '    mapnik-config --input-plugins'
echo '    ls -al $(mapnik-config --input-plugins)'
echo "# Test 4 : mapnik-render"
echo "#   https://github.com/mapnik/mapnik/wiki/GettingStartedInXML"
echo "#   Attention, il faut etre dans le repertoire mapnik !!!!"
echo "#   (mapnik-render est normalement dans le paquet mapnik-utils)"
echo "    cd ../mapnik ; \\"
echo "    mapnik-render \\"
echo "    ../environnementTravail/testMapnik.xml \\"
echo "    ../environnementTravail/testMapnik.png ;\\"
echo "    cd ../environnementTravail ; \\"
echo "    display testMapnik.png"
echo "#"
echo "#----------------------"
echo "# Reste a faire :"
echo "#----------------------"
#echo "# ./installOSM.sh"
#echo "# ./installOSMCartoCSS.sh"
####echo "# ./installOSMBoostDebian.sh"
#echo "# ./installOSMMapnikUbuntuSource.sh"
##echo "# ./installOSMMapnikUbuntuPaquet.sh"
####echo "# ./installOSMPythonMapnikDebian"
echo "# ./installOSMPythonMapnikUbuntu"
echo "# ./installOSMTirex.sh"
####echo "# ./installOSMTilemanDebian.sh"
echo "# ./installOSMTilemanUbuntu.sh"
echo "#----------------------"
echo "#"
