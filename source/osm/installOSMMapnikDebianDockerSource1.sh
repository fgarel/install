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
echo "      docker rm -v $(docker ps -a -q -f status=exited)"
            docker rm -v $(docker ps -a -q -f status=exited)
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
echo "docker pull jawg/mapnik3:latest"
      docker pull jawg/mapnik3:latest
echo "#"
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
echo "      docker rm -v $(docker ps -a -q -f status=exited)"
            docker rm -v $(docker ps -a -q -f status=exited)
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
echo "# sudo docker run -d -p 9001:9001 -p 8000:80 -v (readlink --canonicalize .):/etc/tilestache/resources --name mapnik-debian jawg/mapnik3:latest"
      # sudo docker run -d -p 9001:9001 -p 8000:80 -v (readlink --canonicalize .):/etc/tilestache/resources --name mapnik-debian jawg/mapnik3:latest
echo "#"
echo "#"
