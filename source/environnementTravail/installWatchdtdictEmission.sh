#!/bin/sh

echo "#"
echo '# Installation de watchdtdict-emission'
echo '# ===================================='
echo '#'
echo 'cp watchdtdict-emission-init watchdtdict-emission/watchdtdict-emission-init'
      cp watchdtdict-emission-init watchdtdict-emission/watchdtdict-emission-init
echo '#'
echo 'sudo cp watchdtdict-emission/watchdtdict-emission-init /etc/init.d/watchdtdict-emission'
      sudo cp watchdtdict-emission/watchdtdict-emission-init /etc/init.d/watchdtdict-emission
echo '#'
echo 'sudo update-rc.d watchdtdict-emission defaults'
      sudo update-rc.d watchdtdict-emission defaults
echo '#'
echo 'sudo service watchdtdict-emission status'
      sudo service watchdtdict-emission status
echo '#'
echo 'sudo service watchdtdict-emission stop'
      sudo service watchdtdict-emission stop
echo '#'
echo 'sudo service watchdtdict-emission status'
      sudo service watchdtdict-emission status
echo '#'
echo 'sudo service watchdtdict-emission start'
      sudo service watchdtdict-emisison start
echo '#'
echo 'sudo service watchdtdict-emission status'
      sudo service watchdtdict-emission status
echo '#'
echo '#---------------------------------------'
echo '# En plus de la creation d un service, il faut'
echo '# ajouter une tache cron qui va déplacer le contenu du'
echo '# du repertoire a surveiller'
echo '#'
echo '# crontab -l'
echo '#'
echo '# crontab -e'
echo '#'
echo '# */5 7-19 * * mon,tue,wed,thu,fri /home/fred/Documents/install/source/environnementTravail/watchdtdict-emission/mv2tmp.sh'
echo '#'
echo '#---------------------------------------'
