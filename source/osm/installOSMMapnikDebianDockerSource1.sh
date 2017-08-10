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
echo "rm -rf docker-mapnik3"
      rm -rf docker-mapnik3
echo "git clone https://github.com/jawg/docker-mapnik3.git"
      git clone https://github.com/jawg/docker-mapnik3.git
echo "#"
#echo "Recopie du fichier Dockerfile"
#echo "#"
##echo "cp installOSMMapnikDebianDockerPaquet2.dockerfile docker-mapnik3/Dockerfile"
##      cp installOSMMapnikDebianDockerPaquet2.dockerfile docker-mapnik3/Dockerfile
#echo "cp installOSMDebian.sh docker-mapnik3/installOSMDebian.sh"
#      cp installOSMDebian.sh docker-mapnik3/installOSMDebian.sh
#echo "cp installOSMTools.sh docker-mapnik3/installOSMTools.sh"
#      cp installOSMTools.sh docker-mapnik3/installOSMTools.sh
#echo "cp installOSMCartoCSS.sh docker-mapnik3/installOSMCartoCSS.sh"
#      cp installOSMCartoCSS.sh docker-mapnik3/installOSMCartoCSS.sh
#echo "cp installOSMBoostDebianPaquet.sh docker-mapnik3/installOSMBoostDebianPaquet.sh"
#      cp installOSMBoostDebianPaquet.sh docker-mapnik3/installOSMBoostDebianPaquet.sh
#echo "cp installOSMMapnikDebianPaquet.sh docker-mapnik3/installOSMMapnikDebianPaquet.sh"
#      cp installOSMMapnikDebianPaquet.sh docker-mapnik3/installOSMMapnikDebianPaquet.sh
#echo "cp installOSMMapnikDebianDockerSource3.sh docker-mapnik3/installOSMMapnikDebianDockerSource3.sh"
#      cp installOSMMapnikDebianDockerSource3.sh docker-mapnik3/installOSMMapnikDebianDockerSource3.sh
#echo "cp installOSMPythonMapnikDebian.sh docker-mapnik3/installOSMPythonMapnikDebian.sh"
#      cp installOSMPythonMapnikDebian.sh docker-mapnik3/installOSMPythonMapnikDebian.sh
echo "#"

#echo "docker pull jawg/mapnik3:latest"
#      docker pull jawg/mapnik3:latest
#echo "# On se place dans le repertoire-depot que l'on vient de telecharger"
#echo "export OLDPWDFG=$(pwd)"
#      export OLDPWDFG=$(pwd)
#      echo $OLDPWDFG
#echo "cd docker-mapnik3"
#      cd docker-mapnik3
echo "#"
echo "#######################################"
echo "# Attention, pour construire l'image"
echo "# nous avons besoin d'acceder à internet"
echo "# il faut lancer le tunnel dans un autre terminal"
echo "../environnementTravail/docksshuttle2.sh"
#      ../environnementTravail/docksshuttle2.sh
echo "#######################################"
echo "#"
echo "Construction de l'image"
echo "#"
echo "docker build -t i-debian-mapnik docker-mapnik3/v3.0.15"
      docker build -t i-debian-mapnik docker-mapnik3/v3.0.15
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
echo "#"
echo "# Utilisation"
#echo "# sudo docker run -d -p 9001:9001 -p 8000:80 -v (readlink --canonicalize .):/etc/tilestache/resources --name c-debian-mapnik i-debian-mapnik"
      # sudo docker run -d -p 9001:9001 -p 8000:80 -v (readlink --canonicalize .):/etc/tilestache/resources --name c-mapnik-debian i-debian-mapnik
echo "# docker rm c-debian-mapnik"
echo '# docker run -ti -p 8081:80 -v $(readlink --canonicalize ..):/home/fred/Documents/install/source --name c-debian-mapnik i-debian-mapnik'
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
echo "# ./installOSMMapnikDebianDockerSource3.sh"
