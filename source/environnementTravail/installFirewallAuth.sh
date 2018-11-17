#!/bin/sh

echo "#"
echo "# Installation de firewall-auth"
echo "# ============================="
echo "#"
echo "# https://github.com/vikraman/firewall-auth-sh"
echo '#'
echo '# Cet utilitaire, lancé en tant que service,'
echo '# permet de garder la connexion active.'
echo '# Sans cet utilitaire, nous sommes déconnectés du réseau'
echo '# de manière périodique : le firewall nous redemande une authentification'
echo '#'
echo '# L installation se fait :'
echo '#   1 - en clonant le projet'
echo '#   2 - en modifiant le fichier .sh puis en deplacant ce fihcier .sh dans le repertoire courant'
echo '#   3 - en mettant un fichier init dans le repertoire /ect/init.d, en enregistrant ce service, puis en le lancant'
echo "#"
echo "rm -rf firewall-auth-sh"
      rm -rf firewall-auth-sh
echo "#"
echo "git clone https://github.com/vikraman/firewall-auth-sh.git"
      git clone https://github.com/vikraman/firewall-auth-sh.git
echo "#"
echo 'sed -i "s|\"username\"|\"LINUXDEV\"|" firewall-auth-sh/firewall-auth.sh'
      sed -i "s|\"username\"|\"LINUXDEV\"|" firewall-auth-sh/firewall-auth.sh
echo '#'
echo 'sed -i "s|\"password\"|\"LINUXDEV\"|" firewall-auth-sh/firewall-auth.sh'
      sed -i "s|\"password\"|\"LINUXDEV\"|" firewall-auth-sh/firewall-auth.sh
echo '#'
echo 'sed -i "s|\"http://74.125.236.208\"|\"www.google.fr\"|" firewall-auth-sh/firewall-auth.sh'
      sed -i "s|\"http://74.125.236.208\"|\"www.google.fr\"|" firewall-auth-sh/firewall-auth.sh
echo '#'
echo 'sed -i "s|trap|# trap|" firewall-auth-sh/firewall-auth.sh'
      sed -i "s|trap|#trap|" firewall-auth-sh/firewall-auth.sh
echo '#'
echo 'cp firewall-auth-sh/firewall-auth.sh firewall-auth.sh'
      cp firewall-auth-sh/firewall-auth.sh firewall-auth.sh
echo '#'
echo '#'
#echo "rm -rf firewall-auth-sh"
#      rm -rf firewall-auth-sh
echo "#"
echo '#'
echo 'sudo cp firewall-auth-init /etc/init.d/firewall-auth'
      sudo cp firewall-auth-init /etc/init.d/firewall-auth
echo '#'
echo '# sudo update-rc.d firewall-auth defaults'
      sudo update-rc.d firewall-auth defaults
echo '#'
echo 'sudo service firewall-auth status'
      sudo service firewall-auth status
echo '#'
echo 'sudo service firewall-auth stop'
      sudo service firewall-auth stop
echo '#'
echo 'sudo service firewall-auth status'
      sudo service firewall-auth status
echo '#'
echo 'sudo service firewall-auth start'
      sudo service firewall-auth start
echo '#'
echo 'sudo service firewall-auth status'
      sudo service firewall-auth status

