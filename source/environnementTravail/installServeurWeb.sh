#!/bin/sh



# 3ème Partie : ServeurMail
###############################################
# Installation de ServeurMail
#-----------------------------------------------
echo "# 3ème Partie : ServeurWeb"
echo "###############################################"
echo "# Installation d'un serveur de Web"
echo "#"
echo "#"
echo "sudo aptitude install nginx-common"
      sudo aptitude install nginx-common
echo "# sudo service nginx status"
      # sudo service nginx status
echo "sudo service nginx stop"
      sudo service nginx stop
echo "sudo nginx -t"
      sudo nginx -t
echo "sudo service nginx start"
      sudo service nginx start
echo "# sudo service nginx status"
      # sudo service nginx status
echo "sudo aptitude install -y gunicorn3"
      sudo aptitude install -y gunicorn3
