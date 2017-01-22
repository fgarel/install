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
#echo "sudo aptitude install nginx-core"
#      sudo aptitude install nginx-core
#echo "sudo aptitude install nginx-light"
#      sudo aptitude install nginx-light
echo "sudo aptitude install nginx-full"
      sudo aptitude install nginx-full
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
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginxFlask/flask_garel_eu /etc/nginx/sites-available/flask_garel_eu"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginxFlask/flask_garel_eu /etc/nginx/sites-available/flask_garel_eu
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginxFlask/flask_cdalr_fr /etc/nginx/sites-available/flask_cdalr_fr"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginxFlask/flask_cdalr_fr /etc/nginx/sites-available/flask_cdalr_fr
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginxFlask/flask_mairie_fr /etc/nginx/sites-available/flask_mairie_fr"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginxFlask/flask_mairie_fr /etc/nginx/sites-available/flask_mairie_fr
echo "#"
echo "# Prise en compte de ces paramètres"
echo "sudo ln -s /etc/nginx/sites-available/flask_garel_eu /etc/nginx/sites-enabled/flask_garel_eu"
      sudo ln -s /etc/nginx/sites-available/flask_garel_eu /etc/nginx/sites-enabled/flask_garel_eu
echo "sudo ln -s /etc/nginx/sites-available/flask_cdalr_fr /etc/nginx/sites-enabled/flask_cdalr_fr"
      sudo ln -s /etc/nginx/sites-available/flask_cdalr_fr /etc/nginx/sites-enabled/flask_cdalr_fr
echo "# sudo ln -s /etc/nginx/sites-available/flask_mairie_fr /etc/nginx/sites-enabled/flask_mairie_fr"
      # sudo ln -s /etc/nginx/sites-available/flask_mairie_fr /etc/nginx/sites-enabled/flask_mairie_fr
echo ""
echo "# Recopie du fichier de configuration de nginx, special pgadmin4"
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginxFlask/pgadmin_garel_eu /etc/nginx/sites-available/pgadmin_garel_eu"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginxFlask/pgadmin_garel_eu /etc/nginx/sites-available/pgadmin_garel_eu
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginxFlask/pgadmin_cdalr_fr /etc/nginx/sites-available/pgadmin_cdalr_fr"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginxFlask/pgadmin_cdalr_fr /etc/nginx/sites-available/pgadmin_cdalr_fr
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginxFlask/pgadmin_mairie_fr /etc/nginx/sites-available/pgadmin_mairie_fr"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginxFlask/pgadmin_mairie_fr /etc/nginx/sites-available/pgadmin_mairie_fr
echo "#"
echo "# Prise en compte de ces paramètres"
echo "sudo ln -s /etc/nginx/sites-available/pgadmin_garel_eu /etc/nginx/sites-enabled/pgadmin_garel_eu"
      sudo ln -s /etc/nginx/sites-available/pgadmin_garel_eu /etc/nginx/sites-enabled/pgadmin_garel_eu
echo "sudo ln -s /etc/nginx/sites-available/pgadmin_cdalr_fr /etc/nginx/sites-enabled/pgadmin_cdalr_fr"
      sudo ln -s /etc/nginx/sites-available/pgadmin_cdalr_fr /etc/nginx/sites-enabled/pgadmin_cdalr_fr
echo "# sudo ln -s /etc/nginx/sites-available/pgadmin_mairie_fr /etc/nginx/sites-enabled/pgadmin_mairie_fr"
      # sudo ln -s /etc/nginx/sites-available/pgadmin_mairie_fr /etc/nginx/sites-enabled/pgadmin_mairie_fr
echo "#"
echo "# Recopie du fichier de configuration de nginx, special www"
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginxFlask/www_garel_eu /etc/nginx/sites-available/www_garel_eu"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginxFlask/www_garel_eu /etc/nginx/sites-available/www_garel_eu
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginxFlask/www_cdalr_fr /etc/nginx/sites-available/www_cdalr_fr"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginxFlask/www_cdalr_fr /etc/nginx/sites-available/www_cdalr_fr
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginxFlask/www_mairie_fr /etc/nginx/sites-available/www_mairie_fr"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginxFlask/www_mairie_fr /etc/nginx/sites-available/www_mairie_fr
echo "#"
echo "# Prise en compte de ces paramètres"
echo "sudo ln -s /etc/nginx/sites-available/www_garel_eu /etc/nginx/sites-enabled/www_garel_eu"
      sudo ln -s /etc/nginx/sites-available/www_garel_eu /etc/nginx/sites-enabled/www_garel_eu
echo "sudo ln -s /etc/nginx/sites-available/www_cdalr_fr /etc/nginx/sites-enabled/www_cdalr_fr"
      sudo ln -s /etc/nginx/sites-available/www_cdalr_fr /etc/nginx/sites-enabled/www_cdalr_fr
echo "# sudo ln -s /etc/nginx/sites-available/www_mairie_fr /etc/nginx/sites-enabled/www_mairie_fr"
      # sudo ln -s /etc/nginx/sites-available/www_mairie_fr /etc/nginx/sites-enabled/www_mairie_fr
echo "#"
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
echo ""
echo "127.0.0.1   flask.garel.eu"
echo "127.0.0.1   pgadmin.garel.eu"
echo "127.0.0.1   www.garel.eu"
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
echo "#"
