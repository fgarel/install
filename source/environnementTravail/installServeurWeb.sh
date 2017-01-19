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
echo "sudo aptitude install nginx-core"
      sudo aptitude install nginx-core
echo "sudo aptitude install nginx-light"
      sudo aptitude install nginx-light
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
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginxFlask/flask_settings /etc/nginx/sites-available/flask_settings"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginxFlask/flask_settings /etc/nginx/sites-available/flask_settings
echo "#"
echo "# Prise en compte de ces paramètres"
echo "sudo ln -s /etc/nginx/sites-available/flask_settings /etc/nginx/sites-enabled/flask_settings"
      sudo ln -s /etc/nginx/sites-available/flask_settings /etc/nginx/sites-enabled/flask_settings
echo ""
echo "# Prise en compte de ces paramètres"
echo "# Recopie du fichier de configuration de nginx, special pgadmin4"
echo "sudo cp /home/fred/Documents/install/source/environnementTravail/nginxFlask/pgadmin_settings /etc/nginx/sites-available/pgadmin_settings"
      sudo cp /home/fred/Documents/install/source/environnementTravail/nginxFlask/pgadmin_settings /etc/nginx/sites-available/pgadmin_settings
echo "#"
echo "# Prise en compte de ces paramètres"
echo "sudo ln -s /etc/nginx/sites-available/pgadmin_settings /etc/nginx/sites-enabled/pgadmin_settings"
      sudo ln -s /etc/nginx/sites-available/pgadmin_settings /etc/nginx/sites-enabled/pgadmin_settings
echo ""
echo "# redemarrage de nginx"
echo ""
echo "sudo nginx -t"
      sudo nginx -t
echo "sudo service nginx start"
      sudo service nginx start

echo "#"
