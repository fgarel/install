#!/bin/sh
#
# doc sur mapproxy 
# https://mapproxy.org/docs/nightly/tutorial.html
#
# Se mettre dans l'environnement python mapproxy
# pew workon mapproxy

# Lancer le server
mapproxy-util serve-develop -b 0.0.0.0:8080 wms_ortho_cda.yaml

# utilisation sous qgis
# configurer une nouvelle couche wms
# nom de la connexion = sigar_ortho2014_geo17_mapproxy
# url de la connexion = http://vlr6180y.mairie.fr:8080/service

