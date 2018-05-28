#!/bin/sh
#
# doc sur mapproxy 
# https://mapproxy.org/docs/nightly/tutorial.html
#
# Se mettre dans l'environnement python mapproxy
echo "# Se mettre dans l'environnement mapproxy"
echo "# Attention : il faut le faire a la main"
echo "# voici la commande à executer"
echo "pew workon mapproxy"
#      pew workon mapproxy
echo ""

# si besoin, arret de tomcat8
echo "# Arret de tomcat8"
echo "sudo service tomcat8 stop"
      sudo service tomcat8 stop
echo ""
# Lancement le server
echo "# Lancement du proxy"
echo "mapproxy-util serve-develop -b 0.0.0.0:8080 wms_ortho_cda_plus.yaml"
      mapproxy-util serve-develop -b 0.0.0.0:8080 wms_ortho_cda_plus.yaml

# utilisation sous qgis
# configurer une nouvelle couche wms
# nom de la connexion = sigar_ortho2014_geo17_mapproxy
# url de la connexion = http://vlr6180y.mairie.fr:8080/service

