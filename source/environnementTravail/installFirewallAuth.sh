#!/bin/sh

echo "#"
echo "# Installation de firewall-auth"
echo "# ============================="
echo "#"
echo "# https://github.com/vikraman/firewall-auth-sh"
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
#echo 'head firewall-auth-sh/firewall-auth.sh'
#      head -n 10 firewall-auth-sh/firewall-auth.sh
#echo '#'
echo '#'
echo 'cp firewall-auth-init firewall-auth-sh/firewall-auth-init'
      cp firewall-auth-init firewall-auth-sh/firewall-auth-init
echo '#'
echo 'sudo cp firewall-auth-sh/firewall-auth-init /etc/init.d/firewall-auth'
      sudo cp firewall-auth-sh/firewall-auth-init /etc/init.d/firewall-auth
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

