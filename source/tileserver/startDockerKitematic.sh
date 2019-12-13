#!/bin/sh

# Ce script a pour objectif de lancer un serveur de tuile.
#
# Nous avons un petit problème de reseau quand on utilise la technologie docker
#
# Avant de faire un docker run , nous avons modifié le fichier /etc/resolv.conf avec 10.254.141.250
# 
# Dans un premier temps, nous avons essayé de resoudre le problème avec un autre image docker
# mais, cet essai ne nous est pas utile pour le moment.
# 
# Essai non utilie : Mise en place de dns
#docker run \
#       --rm \
#       --hostname dns.mageddo \
#       -v /var/run/docker.sock:/var/run/docker.sock \
#       -v /etc/resolv.conf:/etc/resolv.conf \
#       defreitas/dns-proxy-server

# tileserver

docker run \
       --rm \
       -it \
       -v $(pwd):/data \
       -p 8081:80 \
       klokantech/openmaptiles-server


