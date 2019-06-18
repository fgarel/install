#!/bin/sh



# 7ème Partie - suite : Création d'un environnement python
###############################################
# Création d'un environnement python
echo "# 7ème Partie - suite : Installation de gspreadsheet_fdw"
echo "# Multicorn-based PostgreSQL foreign data wrapper for Google Spreadsheets"
echo "# connecteur entre postgresql et Google Spreadsheet"
echo "###############################################"
echo "#"
echo "# https://github.com/lincolnturner/gspreadsheet_fdw"
echo "#"
echo "# Non : Nous N'utiliersons PAS poetry comme gestionnaire d'environnement virtuel"
echo "#"
echo "# "
echo "# "
echo "# On enregistre le chemin actuel"
echo "set OLDPWDFG=$(pwd)"
      set OLDPWDFG=$(pwd)
      echo $OLDPWDFG
echo "cd .."
      cd ..
echo "#"
echo "# les essais ci dessous ne sont pas concluants.."
echo "#"
echo "# la solution qui fonctionne c'est  gspreadsheet_fdw et pg_cron"
echo "#"
#echo "# Connecteur postgres-multicorn-restful-api"
#echo "# vu ici : https://github.com/ahungry/postgres-multicorn-restful-api"
#echo "# Clonage du postgres-multicorn-restful-api.git"
#echo "#"
#echo "sudo rm -rf postgres-multicorn-restful-api"
#      sudo rm -rf postgres-multicorn-restful-api
#echo "git clone git://github.com/ahungry/postgres-multicorn-restful-api"
#      git clone git://github.com/ahungry/postgres-multicorn-restful-api
#echo "cd postgres-multicorn-restful-api"
#      cd postgres-multicorn-restful-api
#echo "# pour python 2"
#echo "sudo make install"
#      sudo make install
#echo "# Attention, il faut aussi install python-multicorn"
#echo "sudo apt-get install python-multicorn"
#      sudo apt-get install python-multicorn
#echo "# pour python 3 (mais ca ne marche pas)"
#echo "sudo python3 setup.py install"
#      sudo python3 setup.py install
#echo "cd .."
#      cd ..
echo "#"
#echo "# Connecteur Multicorn amelioré avec google"
#echo "# vu ici : https://github.com/Kozea/Multicorn"
#echo "# Clonage du Multicorn (avec google)"
#echo "#"
#echo "sudo rm -rf Multicorn"
#      sudo rm -rf Multicorn
#echo "git clone git://github.com/Kozea/Multicorn"
#      git clone git://github.com/Kozea/Multicorn
#echo "cd Multicorn"
#      cd Multicorn
#echo "# pour python 2"
#echo "# Attention, il faut aussi install postgresql-server-dev-11"
#echo "sudo apt-get install postgresql-server-dev-11"
#      sudo apt-get install postgresql-server-dev-11
#echo "sudo python setup.py install"
#      sudo python setup.py install
#echo "# Attention, il faut aussi install python-multicorn"
#echo "sudo apt-get install python-multicorn"
#      sudo apt-get install python-multicorn
#echo "# pour python 3 (mais ca ne marche pas)"
#echo "sudo python3 setup.py install"
#      sudo python3 setup.py install
#echo "cd .."
#      cd ..
echo "#"
echo "# Connecteur gspreadsheet_fdw"
echo "# vu ici : https://github.com/lincolnturner/gspreadsheet_fdw.git"
echo "# Clonage du projet gspreadsheet_fdw.git"
echo "#"
echo "sudo rm -rf gspreadsheet_fdw"
      sudo rm -rf gspreadsheet_fdw
echo "git clone git://github.com/lincolnturner/gspreadsheet_fdw.git"
      git clone git://github.com/lincolnturner/gspreadsheet_fdw.git
echo "# On se place dans le bon repertoire"
echo "cd gspreadsheet_fdw"
      cd gspreadsheet_fdw
echo "#"
#echo "#   --------------------"
#echo "# On enregistre le chemin actuel"
#echo "set OLDPWDFG=$(pwd)"
#echo "#"
#echo "# On se place dans le bon repertoire"
#echo "cd gspreadsheet_fdw"
#echo "#"
#echo "# Demarrage de l'environnement virtuel"
#echo 'poetry init \'
#echo '       --name="gspreadsheet_fdw" \'
#echo '       --description="environnement virtuel pour gspreadsheet_fdw" \'
#echo '       --author="Frédéric Garel <frederic.garel@gmail.com>" \'
#echo '       -n'
#      poetry init \
#             --name="gspreadsheet_fdw" \
#             --description="environnement virtuel pour gspreadsheet_fdw" \
#             --author="Frédéric Garel <frederic.garel@gmail.com>" \
#             -n
#echo "#"
#echo "# Installation de Google Data binding for python"
#echo "#"
#echo "poetry shell"
#      poetry shell
#echo "#"
#echo "pip3 install gdata --user"
#      pip3 install gdata --user
#echo "#"
#echo "#"
echo "# Installation de gspreadsheet_fdw"
echo "#"
echo "# Il faut aussi oauth2client "
echo "# vu ici : https://hub.docker.com/r/technekes/postgres-plus/dockerfile/"
echo "# ou ici : https://www.twilio.com/blog/2017/02/an-easy-way-to-read-and-write-to-a-google-spreadsheet-in-python.html"
echo "#"
echo "sudo -H pip3 install gdata"
      sudo -H pip3 install gdata
echo "sudo -H pip3 install --upgrade oauth2client gspread"
      sudo -H pip3 install --upgrade oauth2client gspread
echo "sudo python3 setup.py install"
      sudo python3 setup.py install
echo "#"
echo "#"
echo "# Retour au chemin initial"
echo 'cd $OLDPWD'
      cd $OLDPWD

echo "#"
#echo "#   --------------------"
#echo "# Environnement virtuel poetry"
#echo "#"
#echo "    Package name [gspreadsheet_fdw]: "
#echo "    Version [0.1.0]: "
#echo "    Description []:"
#echo "    Author [Frédéric Garel <frederic.garel@gmail.com>, n to skip]:"
#echo "    License []:"
#echo "    Compatible Python versions [^3.6]:"
#echo ""
#echo "    Would you like to define your dependencies (require) interactively? (yes/no) [yes]"
#echo "    Search for package:"
#echo ""
#echo "    Would you like to define your dev dependencies (require-dev) interactively (yes/no) [yes]"
#echo "    Search for package:"
#echo ""
#echo "    Generated file"
#echo ""
#echo "    ..."
#echo ""
#echo ""
#echo "    Do you confirm generation? (yes/no) [yes]"
#echo "#   --------------------"
#echo "  set OLDPWDFG=\$\(pwd\)"
#echo "  cd ../gspreadsheet_fdw"
#echo "  #poetry init"
#echo ""
#echo "  poetry shell"
#echo "  pip3 install gdata --user"
#echo "  python3 setup.py install --user"
#echo '  cd $OLDPWD'
#echo "#   --------------------"
echo "#"
echo "#"
echo "#"
echo "# Installation de pg_cron"
echo "# vu ici : https://github.com/citusdata/pg_cron/"
echo "# et ici : https://www.citusdata.com/blog/2016/09/09/pgcron-run-periodic-jobs-in-postgres/"
echo "#"
echo "# Le but est de rafraichir périodiquement des vues matérialisées"
echo "#"
echo "# Une vue matérialisée, c'est une sorte de cache de table distante"
echo "#   https://docs.postgresql.fr/11/sql-creatematerializedview.html"
echo "# Tandis que pour une vue normale, la requete est executée à chaque fois"
echo "#   https://docs.postgresql.fr/11/sql-createview.html"
echo "#"
echo "# C'est une astuce vue ici : https://github.com/ahungry/postgres-multicorn-restful-api"
echo "#"
echo "# Install the pg_cron extension"
echo "sudo apt-get -y install postgresql-11-cron"
      sudo apt-get -y install postgresql-11-cron
#echo "# Clonage du projet pg_cron.git"
#echo "#"
#echo "sudo rm -rf pg_cron"
#      sudo rm -rf pg_cron
#echo "git clone git://github.com/citusdata/pg_cron.git"
#      git clone git://github.com/citusdata/pg_cron.git
#echo "# On se place dans le bon repertoire"
#echo "cd pg_cron"
#      cd pg_cron
echo "#"
echo "# Fin de l'installation : il faut modifier postgresql.conf"
echo "sudo su"
echo 'su postgresql'
echo 'vi /etc/postgresql/11/main/postgresql.conf'
echo "shared_preload_libraries = 'pg_cron'"
echo "cron.database_name = 'espu'"
echo "#"
echo "sudo service postgresql restart"
echo "#"
echo "# la doc est ici :"
echo "# https://github.com/citusdata/pg_cron/"
echo "#"
echo "CREATE EXTENSION IF NOT EXISTS pg_cron;"
echo "-- Execution de la requete tout les 5 minutes"
echo 'SELECT cron.schedule('"'*/5 * * * *'"', $$REFRESH MATERIALIZED VIEW "voirie_administratif"."mv_numvoie_gspreadsheet";$$);'
echo "#"
echo ""
