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
echo "#     oui => service docker status"
echo "#     oui => service docker start"
echo "#     non => sudo docker daemon &"
echo "# - que l'utilisateur unix fred doit dans le groupe docker"
echo "#     => sudo usermod -aG docker $USER"
echo "# - que la config de docker soit modifiée"
echo "#     non => Inside file /lib/systemd/system/docker.service change:"
echo "#              ExecStart=/usr/bin/dockerd fd://"
echo "#            with"
echo "#              ExecStart=/usr/bin/dockerd -H tcp://0.0.0.0:2375"
echo "#         => sudo vi /lib/systemd/system/docker.service"
echo "#     non => Inside file /etc/init.d/docker change:"
echo "#              DOCKER_OPTS="
echo "#            with"
echo "#              DOCKER_OPTS=\"-H tcp://0.0.0.0:2375\""
echo "#         => sudo vi /etc/init.d/docker"
echo "# - que la config dns de docker soit modifiée"
echo "#   vu ici : https://robinwinslow.uk/2016/06/23/fix-docker-networking-dns/"
echo "#     vi /etc/docker/daemon.json"
echo "#        {"
echo "#           \"dns\": [\"10.254.141.250\", \"10.254.141.253\"]"
echo "#        }"
echo "# - que le proxy squid ecoute le reseau local 172.17.0.0"
echo "#     vi /etc/squid/squid.conf"
echo "#        vers la ligne 975"
echo "#          acl localnet src 172.17.0.0/12"
echo "#        vers la ligne 1190"
echo "#          http_access allow localnet"
echo "# - qu'un tunnel sshuttle soit configuré pour que le traffic de 172.17.0.1"
echo "#   puisse sortir a travers fortigate"
echo "#     non => lancement du tunnel ../envionnementTravail/docksshuttle2.sh"
echo "#"
#echo "sudo service docker start"
#      sudo service docker start
#echo "docker run hello-world"
#      docker run hello-world
#echo "docker pull ubuntu"
#      docker pull ubuntu
#echo "docker image ls -a"
#      docker image ls -a
echo "docker images"
      docker images
#echo "docker container ls -a"
#      docker container ls -a
echo "docker ps"
      docker ps
echo "# Suppression des images et des containers deja existants"
echo "# Nettoyage : "
echo "# http://blog.zedroot.org/effacer-toutes-les-images-docker/"
echo "# http://patatos.over-blog.com/2016/09/commet-faire-du-menage-dans-les-conteneurs-et-images-docker.html"
echo "#"
echo "# - Containers :"
echo "#   - Pour supprimer tous les containers"
echo "#      docker rm -v $(docker ps -a -q)"
      #      docker rm -v $(docker ps -a -q)
echo "#   - Pour supprimer les containers qui ne tournent pas"
echo "#      docker rm -v $(docker ps -a -q -f status=exited)"
      #      docker rm -v $(docker ps -a -q -f status=exited)
echo "#"
echo "# - Images :"
echo "#   - Pour supprimer toutes les images"
echo "#      docker rmi $(docker images -q)"
      #      docker rmi $(docker images -q)
echo "#   - Pour supprimer les images intermediaires"
echo "      docker rmi $(docker images -q -f dangling=true)"
            docker rmi $(docker images -q -f dangling=true)
echo "#"
echo "# - Volumes :"
echo "#   - Pour supprimer les volumes orphelins"
echo "      docker volume rm $(docker volume ls -q -f dangling=true)"
            docker volume rm $(docker volume ls -q -f dangling=true)
echo "#"
echo "#"
echo "rm -rf docker-mapnik"
      rm -rf docker-mapnik
echo "git clone https://github.com/aldoridhoni/docker-mapnik"
      git clone https://github.com/aldoridhoni/docker-mapnik
echo "#"
echo "# Modification du Dockerfile"
echo "#"
echo "sed -i -E -e 's/MAINTAINER/# MAINTAINER/g' docker-mapnik/Dockerfile"
      sed -i -E -e 's/MAINTAINER/# MAINTAINER/g' docker-mapnik/Dockerfile
echo "sed -i -E -e 's/RUN update-locale/# RUN update-locale/g' docker-mapnik/Dockerfile"
      sed -i -E -e 's/RUN update-locale/# RUN update-locale/g' docker-mapnik/Dockerfile
echo "sed -i -E -e 's/3.0.10/3.0.15/g' docker-mapnik/Dockerfile"
      sed -i -E -e 's/3.0.10/3.0.15/g' docker-mapnik/Dockerfile
echo "sed -i -E -e 's/RUN apt-get -qq install -y --no-install-recommends/RUN apt-get install -y --no-install-recommends/g' docker-mapnik/Dockerfile"
      sed -i -E -e 's/RUN apt-get -qq install -y --no-install-recommends/RUN apt-get install -y --no-install-recommends/g' docker-mapnik/Dockerfile
echo "sed -i -E -e 's/RUN curl/# RUN curl/g' docker-mapnik/Dockerfile"
      sed -i -D -e 's/RUN curl/# RUN curl/g' docker-mapnik/Dockerfile
echo "sed -i -E -e 's/RUN cd \/tmp\/ && curl/# RUN cd \/tmp\/ && curl/g' docker-mapnik/Dockerfile"
      sed -i -D -e 's/RUN cd \/tmp\/ && curl/# RUN cd \/tmp\/ && curl/g' docker-mapnik/Dockerfile
echo "sed -i -E -e 's/   &&/#    &&/g' docker-mapnik/Dockerfile"
      sed -i -D -e 's/   &&/#    &&/g' docker-mapnik/Dockerfile
#echo "sed -i -E -e 's///g' docker-mapnik/Dockerfile"
#      sed -i -D -e 's///g' docker-mapnik/Dockerfile
#echo "sed -i -E -e 's///g' docker-mapnik/Dockerfile"
#      sed -i -D -e 's///g' docker-mapnik/Dockerfile
#echo "sed -i -E -e 's///g' docker-mapnik/Dockerfile"
#      sed -i -D -e 's///g' docker-mapnik/Dockerfile
#echo "Recopie du fichier Dockerfile"
#echo "Recopie du fichier Dockerfile"
#echo "#"
#echo "cp installOSMMapnikUbuntuDockerPaquet2.dockerfile docker-mapnik/Dockerfile"
#      cp installOSMMapnikUbuntuDockerPaquet2.dockerfile docker-mapnik/Dockerfile
#echo "cp installOSMUbuntu.sh docker-mapnik/installOSMUbuntu.sh"
#      cp installOSMUbuntu.sh docker-mapnik/installOSMUbuntu.sh
#echo "cp installOSMTools.sh docker-mapnik/installOSMTools.sh"
#      cp installOSMTools.sh docker-mapnik/installOSMTools.sh
#echo "cp installOSMCartoCSS.sh docker-mapnik/installOSMCartoCSS.sh"
#      cp installOSMCartoCSS.sh docker-mapnik/installOSMCartoCSS.sh
#echo "cp installOSMBoostUbuntuPaquet.sh docker-mapnik/installOSMBoostUbuntuPaquet.sh"
#      cp installOSMBoostUbuntuPaquet.sh docker-mapnik/installOSMBoostUbuntuPaquet.sh
#echo "cp installOSMMapnikUbuntuPaquet.sh docker-mapnik/installOSMMapnikUbuntuPaquet.sh"
#      cp installOSMMapnikUbuntuPaquet.sh docker-mapnik/installOSMMapnikUbuntuPaquet.sh
#echo "cp installOSMMapnikUbuntuDockerPaquet3.sh docker-mapnik/installOSMMapnikUbuntuDockerPaquet3.sh"
#      cp installOSMMapnikUbuntuDockerPaquet3.sh docker-mapnik/installOSMMapnikUbuntuDockerPaquet3.sh
#echo "cp installOSMPythonMapnikUbuntu.sh docker-mapnik/installOSMPythonMapnikUbuntu.sh"
#      cp installOSMPythonMapnikUbuntu.sh docker-mapnik/installOSMPythonMapnikUbuntu.sh
#echo "#"
#echo "# On se place dans le repertoire-depot que l'on vient de telecharger"
#echo "export OLDPWDFG=$(pwd)"
#      export OLDPWDFG=$(pwd)
#      echo $OLDPWDFG
#echo "cd docker-mapnik"
#      cd docker-mapnik
echo "#"
echo "#"
echo "#######################################"
echo "# Attention, pour construire l'image"
echo "# nous avons besoin d'acceder à internet"
echo "# il faut lancer le tunnel dans un autre terminal"
echo "../environnementTravail/docksshuttle2.sh"
#      ../environnementTravail/docksshuttle2.sh
echo ""
echo "#######################################"
echo "#"
echo "Construction de l'image"
echo "#"
echo "docker build -t i-ubuntu-mapnik docker-mapnik"
      docker build -t i-ubuntu-mapnik docker-mapnik
echo "#"
#echo "# on revient dans le repertoire initial"
#echo "cd .."
#      cd ..
#echo "echo $OLDPWDFG"
#      echo $OLDPWDFG
#echo "cd $OLDPWDFG"
#      cd $OLDPWDFG
#echo "pwd"
#      pwd
echo "#"
echo "#"
echo "# Nettoyage : "
echo "# http://blog.zedroot.org/effacer-toutes-les-images-docker/"
echo "# http://patatos.over-blog.com/2016/09/commet-faire-du-menage-dans-les-conteneurs-et-images-docker.html"
echo "#"
echo "# - Containers :"
echo "#   - Pour supprimer tous les containers"
echo "#      docker rm -v $(docker ps -a -q)"
      #      docker rm -v $(docker ps -a -q)
echo "#   - Pour supprimer les containers qui ne tournent pas"
echo "#      docker rm -v $(docker ps -a -q -f status=exited)"
      #      docker rm -v $(docker ps -a -q -f status=exited)
echo "#"
echo "# - Images :"
echo "#   - Pour supprimer toutes les images"
echo "#      docker rmi $(docker images -q)"
      #      docker rmi $(docker images -q)
echo "#   - Pour supprimer les images intermediaires"
echo "      docker rmi $(docker images -q -f dangling=true)"
            docker rmi $(docker images -q -f dangling=true)
echo "#"
echo "# - Volumes :"
echo "#   - Pour supprimer les volumes orphelins"
echo "      docker volume rm $(docker volume ls -q -f dangling=true)"
            docker volume rm $(docker volume ls -q -f dangling=true)
echo "#"

echo "# En cas de problème de construction de l'image"
echo "# ../environnementTravail/docksshuttlle2.sh"
echo "# docker build -t i-ubuntu-mapnik docker-mapnik"
echo '# docker run -ti -v $(readlink --canonicalize ..):/home/fred/Documents/install/source --name c-ubuntu-mapnik i-ubuntu-mapnik'
echo "#"
echo "# Utilisation"
#echo "# sudo docker run -d -p 9001:9001 -p 8000:80 -v $(readlink --canonicalize .):/etc/tilestache/resources --name c-ubuntu-mapnik i-ubuntu-mapnik"
      # sudo docker run -d -p 9001:9001 -p 8000:80 -v $(readlink --canonicalize .):/etc/tilestache/resources --name c-ubuntu-mapnik i-ubuntu-mapnik
echo "# docker rm c-ubuntu-mapnik"
echo '# docker run -ti -p 8000:80 -v $(readlink --canonicalize ..):/home/fred/Documents/install/source --name c-ubuntu-mapnik i-ubuntu-mapnik'
echo "# apt-get update"
echo "# apt-get install sudo"
echo "# adduser fred"
echo "# adduser fred sudo"
echo "# cd /home/fred"
echo "# chown fred:fred ."
echo "# chown -R fred:fred Documents"
echo "# su fred"
echo "# cd ~/Documents/install/source/environnementTravail"
echo "# ./installAll.sh"
echo "# cd ~/Documents/install/source/osm"
echo "# ./installOSMMapnikUbuntuDockerPaquet3.sh"
