#!/bin/sh



# 3ème Partie : ServeurWeb
###############################################
# Installation de ServeurWeb
#-----------------------------------------------
echo "# 3ème Partie : ServeurWeb"
echo "###############################################"
echo "# Installation d'un serveur de Web"
echo "#"
echo "#"
echo "sudo aptitude install nginx-common"
      sudo aptitude install nginx-common
echo "sudo apt-get install nginx-common"
      sudo apt-get install nginx-common
echo "# sudo aptitude install nginx-core"
      # sudo aptitude install nginx-core
echo "# sudo aptitude install nginx-light"
      # sudo aptitude install nginx-light
echo "sudo aptitude install nginx-full"
      sudo aptitude install nginx-full
echo "sudo apt-get install nginx-full"
      sudo apt-get install nginx-full
echo "# sudo service nginx status"
      # sudo service nginx status
echo "sudo service nginx stop"
      sudo service nginx stop
echo "sudo nginx -t"
      sudo nginx -t
echo "sudo service nginx start"
      sudo service nginx start
echo "#"
echo "# En cas de probleme,"
echo "# systemctl status nginx.service"
echo "# journalctl -xe"
echo "#"
echo "# sudo service nginx status"
      # sudo service nginx status
echo "sudo aptitude install -y gunicorn3"
      sudo aptitude install -y gunicorn3
echo "sudo apt-get install -y gunicorn3"
      sudo apt-get install -y gunicorn3

echo
echo ""
echo "# Utilisation d'un fichier de configuration nginx existant"

echo ""
echo "sudo service nginx stop"
      sudo service nginx stop

echo ""
echo "# Recopie du fichier de configuration de nginx"
echo "#"
echo "# Suppression du fichier de config default"
echo "sudo rm /etc/nginx/sites-enabled/default"
      sudo rm /etc/nginx/sites-enabled/default
echo "#"
echo "# Recopie du fichier de configuration de nginx, special flask"
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/flask_garel_eu /etc/nginx/sites-available/flask_garel_eu"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/flask_garel_eu /etc/nginx/sites-available/flask_garel_eu
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/flask_cdalr_fr /etc/nginx/sites-available/flask_cdalr_fr"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/flask_cdalr_fr /etc/nginx/sites-available/flask_cdalr_fr
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/flask_mairie_fr /etc/nginx/sites-available/flask_mairie_fr"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/flask_mairie_fr /etc/nginx/sites-available/flask_mairie_fr
echo "#"
echo "# Prise en compte de ces paramètres"
echo "sudo ln -s /etc/nginx/sites-available/flask_garel_eu /etc/nginx/sites-enabled/flask_garel_eu"
      sudo ln -s /etc/nginx/sites-available/flask_garel_eu /etc/nginx/sites-enabled/flask_garel_eu
echo "sudo ln -s /etc/nginx/sites-available/flask_cdalr_fr /etc/nginx/sites-enabled/flask_cdalr_fr"
      sudo ln -s /etc/nginx/sites-available/flask_cdalr_fr /etc/nginx/sites-enabled/flask_cdalr_fr
echo "sudo ln -s /etc/nginx/sites-available/flask_mairie_fr /etc/nginx/sites-enabled/flask_mairie_fr"
      sudo ln -s /etc/nginx/sites-available/flask_mairie_fr /etc/nginx/sites-enabled/flask_mairie_fr
echo ""
echo "# Recopie du fichier de configuration de nginx, special djangopcrs"
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/djangopcrs_garel_eu /etc/nginx/sites-available/djangopcrs_garel_eu"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/djangopcrs_garel_eu /etc/nginx/sites-available/djangopcrs_garel_eu
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/djangopcrs_cdalr_fr /etc/nginx/sites-available/djangopcrs_cdalr_fr"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/djangopcrs_cdalr_fr /etc/nginx/sites-available/djangopcrs_cdalr_fr
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/djangopcrs_mairie_fr /etc/nginx/sites-available/djangopcrs_mairie_fr"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/djangopcrs_mairie_fr /etc/nginx/sites-available/djangopcrs_mairie_fr
echo "#"
echo "# Prise en compte de ces paramètres"
echo "sudo ln -s /etc/nginx/sites-available/djangopcrs_garel_eu /etc/nginx/sites-enabled/djangopcrs_garel_eu"
      sudo ln -s /etc/nginx/sites-available/djangopcrs_garel_eu /etc/nginx/sites-enabled/djangopcrs_garel_eu
echo "sudo ln -s /etc/nginx/sites-available/djangopcrs_cdalr_fr /etc/nginx/sites-enabled/djangopcrs_cdalr_fr"
      sudo ln -s /etc/nginx/sites-available/djangopcrs_cdalr_fr /etc/nginx/sites-enabled/djangopcrs_cdalr_fr
echo "sudo ln -s /etc/nginx/sites-available/djangopcrs_mairie_fr /etc/nginx/sites-enabled/djangopcrs_mairie_fr"
      sudo ln -s /etc/nginx/sites-available/djangopcrs_mairie_fr /etc/nginx/sites-enabled/djangopcrs_mairie_fr
echo "#"
echo ""
echo "# Recopie du fichier de configuration de nginx, special djangoqgis"
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/djangoqgis_garel_eu /etc/nginx/sites-available/djangoqgis_garel_eu"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/djangoqgis_garel_eu /etc/nginx/sites-available/djangoqgis_garel_eu
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/djangoqgis_cdalr_fr /etc/nginx/sites-available/djangoqgis_cdalr_fr"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/djangoqgis_cdalr_fr /etc/nginx/sites-available/djangoqgis_cdalr_fr
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/djangoqgis_mairie_fr /etc/nginx/sites-available/djangoqgis_mairie_fr"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/djangoqgis_mairie_fr /etc/nginx/sites-available/djangoqgis_mairie_fr
echo "#"
echo "# Prise en compte de ces paramètres"
echo "sudo ln -s /etc/nginx/sites-available/djangoqgis_garel_eu /etc/nginx/sites-enabled/djangoqgis_garel_eu"
      sudo ln -s /etc/nginx/sites-available/djangoqgis_garel_eu /etc/nginx/sites-enabled/djangoqgis_garel_eu
echo "sudo ln -s /etc/nginx/sites-available/djangoqgis_cdalr_fr /etc/nginx/sites-enabled/djangoqgis_cdalr_fr"
      sudo ln -s /etc/nginx/sites-available/djangoqgis_cdalr_fr /etc/nginx/sites-enabled/djangoqgis_cdalr_fr
echo "sudo ln -s /etc/nginx/sites-available/djangoqgis_mairie_fr /etc/nginx/sites-enabled/djangoqgis_mairie_fr"
      sudo ln -s /etc/nginx/sites-available/djangoqgis_mairie_fr /etc/nginx/sites-enabled/djangoqgis_mairie_fr
echo "#"
echo ""
echo "# Recopie du fichier de configuration de nginx, special djangorest"
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/djangorest_garel_eu /etc/nginx/sites-available/djangorest_garel_eu"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/djangorest_garel_eu /etc/nginx/sites-available/djangorest_garel_eu
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/djangorest_cdalr_fr /etc/nginx/sites-available/djangorest_cdalr_fr"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/djangorest_cdalr_fr /etc/nginx/sites-available/djangorest_cdalr_fr
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/djangorest_mairie_fr /etc/nginx/sites-available/djangorest_mairie_fr"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/djangorest_mairie_fr /etc/nginx/sites-available/djangorest_mairie_fr
echo "#"
echo "# Prise en compte de ces paramètres"
echo "sudo ln -s /etc/nginx/sites-available/djangorest_garel_eu /etc/nginx/sites-enabled/djangorest_garel_eu"
      sudo ln -s /etc/nginx/sites-available/djangorest_garel_eu /etc/nginx/sites-enabled/djangorest_garel_eu
echo "sudo ln -s /etc/nginx/sites-available/djangorest_cdalr_fr /etc/nginx/sites-enabled/djangorest_cdalr_fr"
      sudo ln -s /etc/nginx/sites-available/djangorest_cdalr_fr /etc/nginx/sites-enabled/djangorest_cdalr_fr
echo "sudo ln -s /etc/nginx/sites-available/djangorest_mairie_fr /etc/nginx/sites-enabled/djangorest_mairie_fr"
      sudo ln -s /etc/nginx/sites-available/djangorest_mairie_fr /etc/nginx/sites-enabled/djangorest_mairie_fr
echo "#"
echo ""
echo "# Recopie du fichier de configuration de nginx, special djangotaiga"
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/djangotaiga_garel_eu /etc/nginx/sites-available/djangotaiga_garel_eu"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/djangotaiga_garel_eu /etc/nginx/sites-available/djangotaiga_garel_eu
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/djangotaiga_cdalr_fr /etc/nginx/sites-available/djangotaiga_cdalr_fr"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/djangotaiga_cdalr_fr /etc/nginx/sites-available/djangotaiga_cdalr_fr
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/djangotaiga_mairie_fr /etc/nginx/sites-available/djangotaiga_mairie_fr"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/djangotaiga_mairie_fr /etc/nginx/sites-available/djangotaiga_mairie_fr
echo "#"
echo "# Prise en compte de ces paramètres"
echo "sudo ln -s /etc/nginx/sites-available/djangotaiga_garel_eu /etc/nginx/sites-enabled/djangotaiga_garel_eu"
      sudo ln -s /etc/nginx/sites-available/djangotaiga_garel_eu /etc/nginx/sites-enabled/djangotaiga_garel_eu
echo "sudo ln -s /etc/nginx/sites-available/djangotaiga_cdalr_fr /etc/nginx/sites-enabled/djangotaiga_cdalr_fr"
      sudo ln -s /etc/nginx/sites-available/djangotaiga_cdalr_fr /etc/nginx/sites-enabled/djangotaiga_cdalr_fr
echo "sudo ln -s /etc/nginx/sites-available/djangotaiga_mairie_fr /etc/nginx/sites-enabled/djangotaiga_mairie_fr"
      sudo ln -s /etc/nginx/sites-available/djangotaiga_mairie_fr /etc/nginx/sites-enabled/djangotaiga_mairie_fr
echo "#"
echo "# Recopie du fichier de configuration de nginx, special djangotemplate"
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/djangotemplate_garel_eu /etc/nginx/sites-available/djangotemplate_garel_eu"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/djangotemplate_garel_eu /etc/nginx/sites-available/djangotemplate_garel_eu
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/djangotemplate_cdalr_fr /etc/nginx/sites-available/djangotemplate_cdalr_fr"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/djangotemplate_cdalr_fr /etc/nginx/sites-available/djangotemplate_cdalr_fr
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/djangotemplate_mairie_fr /etc/nginx/sites-available/djangotemplate_mairie_fr"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/djangotemplate_mairie_fr /etc/nginx/sites-available/djangotemplate_mairie_fr
echo "#"
echo "# Prise en compte de ces paramètres"
echo "sudo ln -s /etc/nginx/sites-available/djangotemplate_garel_eu /etc/nginx/sites-enabled/djangotemplate_garel_eu"
      sudo ln -s /etc/nginx/sites-available/djangotemplate_garel_eu /etc/nginx/sites-enabled/djangotemplate_garel_eu
echo "sudo ln -s /etc/nginx/sites-available/djangotemplate_cdalr_fr /etc/nginx/sites-enabled/djangotemplate_cdalr_fr"
      sudo ln -s /etc/nginx/sites-available/djangotemplate_cdalr_fr /etc/nginx/sites-enabled/djangotemplate_cdalr_fr
echo "sudo ln -s /etc/nginx/sites-available/djangotemplate_mairie_fr /etc/nginx/sites-enabled/djangotemplate_mairie_fr"
      sudo ln -s /etc/nginx/sites-available/djangotemplate_mairie_fr /etc/nginx/sites-enabled/djangotemplate_mairie_fr
echo "#"
echo "# Recopie du fichier de configuration de nginx, special pgadmin4"
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/pgadmin_garel_eu /etc/nginx/sites-available/pgadmin_garel_eu"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/pgadmin_garel_eu /etc/nginx/sites-available/pgadmin_garel_eu
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/pgadmin_cdalr_fr /etc/nginx/sites-available/pgadmin_cdalr_fr"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/pgadmin_cdalr_fr /etc/nginx/sites-available/pgadmin_cdalr_fr
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/pgadmin_mairie_fr /etc/nginx/sites-available/pgadmin_mairie_fr"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/pgadmin_mairie_fr /etc/nginx/sites-available/pgadmin_mairie_fr
echo "#"
echo "# Prise en compte de ces paramètres"
echo "sudo ln -s /etc/nginx/sites-available/pgadmin_garel_eu /etc/nginx/sites-enabled/pgadmin_garel_eu"
      sudo ln -s /etc/nginx/sites-available/pgadmin_garel_eu /etc/nginx/sites-enabled/pgadmin_garel_eu
echo "sudo ln -s /etc/nginx/sites-available/pgadmin_cdalr_fr /etc/nginx/sites-enabled/pgadmin_cdalr_fr"
      sudo ln -s /etc/nginx/sites-available/pgadmin_cdalr_fr /etc/nginx/sites-enabled/pgadmin_cdalr_fr
echo "sudo ln -s /etc/nginx/sites-available/pgadmin_mairie_fr /etc/nginx/sites-enabled/pgadmin_mairie_fr"
      sudo ln -s /etc/nginx/sites-available/pgadmin_mairie_fr /etc/nginx/sites-enabled/pgadmin_mairie_fr
echo "#"
echo "# Recopie du fichier de configuration de nginx, special www"
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/www_garel_eu /etc/nginx/sites-available/www_garel_eu"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/www_garel_eu /etc/nginx/sites-available/www_garel_eu
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/www_cdalr_fr /etc/nginx/sites-available/www_cdalr_fr"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/www_cdalr_fr /etc/nginx/sites-available/www_cdalr_fr
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/www_mairie_fr /etc/nginx/sites-available/www_mairie_fr"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/www_mairie_fr /etc/nginx/sites-available/www_mairie_fr
echo "#"
echo "# Prise en compte de ces paramètres"
echo "sudo ln -s /etc/nginx/sites-available/www_garel_eu /etc/nginx/sites-enabled/www_garel_eu"
      sudo ln -s /etc/nginx/sites-available/www_garel_eu /etc/nginx/sites-enabled/www_garel_eu
echo "sudo ln -s /etc/nginx/sites-available/www_cdalr_fr /etc/nginx/sites-enabled/www_cdalr_fr"
      sudo ln -s /etc/nginx/sites-available/www_cdalr_fr /etc/nginx/sites-enabled/www_cdalr_fr
echo "sudo ln -s /etc/nginx/sites-available/www_mairie_fr /etc/nginx/sites-enabled/www_mairie_fr"
      sudo ln -s /etc/nginx/sites-available/www_mairie_fr /etc/nginx/sites-enabled/www_mairie_fr
echo "#"
echo "# Recopie du fichier de configuration de nginx, special geoserver"
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/geoserver_garel_eu /etc/nginx/sites-available/geoserver_garel_eu"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/geoserver_garel_eu /etc/nginx/sites-available/geoserver_garel_eu
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/geoserver_cdalr_fr /etc/nginx/sites-available/geoserver_cdalr_fr"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/geoserver_cdalr_fr /etc/nginx/sites-available/geoserver_cdalr_fr
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/geoserver_mairie_fr /etc/nginx/sites-available/geoserver_mairie_fr"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginx/geoserver_mairie_fr /etc/nginx/sites-available/geoserver_mairie_fr
echo "#"
echo "# Prise en compte de ces paramètres"
echo "sudo ln -s /etc/nginx/sites-available/geoserver_garel_eu /etc/nginx/sites-enabled/geoserver_garel_eu"
      sudo ln -s /etc/nginx/sites-available/geoserver_garel_eu /etc/nginx/sites-enabled/geoserver_garel_eu
echo "sudo ln -s /etc/nginx/sites-available/geoserver_cdalr_fr /etc/nginx/sites-enabled/geoserver_cdalr_fr"
      sudo ln -s /etc/nginx/sites-available/geoserver_cdalr_fr /etc/nginx/sites-enabled/geoserver_cdalr_fr
echo "sudo ln -s /etc/nginx/sites-available/geoserver_mairie_fr /etc/nginx/sites-enabled/geoserver_mairie_fr"
      sudo ln -s /etc/nginx/sites-available/geoserver_mairie_fr /etc/nginx/sites-enabled/geoserver_mairie_fr
echo "# redemarrage de nginx"
echo ""
echo "sudo nginx -t"
      sudo nginx -t
echo "sudo service nginx start"
      sudo service nginx start
echo ""
echo "# -----------------------------------------------"
echo "# Attention : pour que ca fonctionne,"
echo "# il faut que le fichier /etc/hosts possede les lignes suivantes"
echo "#"
echo "sudo vi /etc/hosts"
echo "#"
echo "127.0.0.1   flask.cdalr.fr"
echo "127.0.0.1   pgadmin.cdalr.fr"
echo "127.0.0.1   www.cdalr.fr"
echo "127.0.0.1   geoserver.cdalr.fr"
echo "127.0.0.1   djangopcrs.cdalr.fr"
echo "127.0.0.1   djangoqgis.cdalr.fr"
echo "127.0.0.1   djangorest.cdalr.fr"
echo "127.0.0.1   djangotaiga.cdalr.fr"
echo "127.0.0.1   djangotemplate.cdalr.fr"
echo ""
echo "127.0.0.1   flask.garel.eu"
echo "127.0.0.1   pgadmin.garel.eu"
echo "127.0.0.1   www.garel.eu"
echo "..."
echo ""
      cat nginx/hosts
echo "#"
echo "sudo cp nginx/hosts /etc/hosts"
      sudo cp nginx/hosts /etc/hosts
echo "#"
echo "# -----------------------------------------------"
echo "# Autre config : le dns"
echo "#"
echo "#"
echo "# le dns doit avoir les entrées suivantes"
echo "#"
echo "# ici, la config d'ovh, qu'il faut changer"
echo "#"
echo "# garel.eu.       A       213.186.33.5"
echo "#"
echo "# il faut mettre l'adresse ip du serveur"
echo "#"
echo "# garel.eu.       A       xxx.xxx.xxx.xxx"
echo "# mail.garel.eu.  A       xxx.xxx.xxx.xxx"
echo "# *.garel.eu.     CNAME   garel.eu."
echo "# -----------------------------------------------"
echo "#"
echo "# La configuration de geoserver peut-etre amelioré en suivant"
echo "# les instructions de cette page"
echo "# http://stackoverflow.com/questions/19866203/nginx-configuration-to-pass-site-directly-to-tomcat-webapp-with-context"
echo "#"
