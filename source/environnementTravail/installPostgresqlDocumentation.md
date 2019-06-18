
# Installation des dernieres verisons de
# postgresql, postgis et de pgadmin4


# Installation de postgresql
~/Documents/install/source/environnementTravail/installPostgresql.sh

# Installation de serveurWeb
~/Documents/install/source/environnementTravail/installServeurWeb.sh

# Installation de pgadmin
~/Documents/install/source/environnementTravail/
la doc est ici 
https://askubuntu.com/questions/831262/how-to-install-pgadmin-4-in-desktop-mode-on-ubuntu

On va créer un environnement virtuel python, au sein duquel on va installer pgadmin4.
Cet environnement virtuel est fait avec pipenv
on va au bon endroit
cd ~/Documents/install/source/pgadmin/

on lance pipenv
pipenv shell

on install grace à pip3
pip3 install https://ftp.postgresql.org/pub/pgadmin/pgadmin4/v3.5/pip/pgadmin4-3.5-py2.py3-none-any.whl

On configure
vi lib/python3.6/site-packages/pgadmin4/config_local.py

```
import os
DATA_DIR = os.path.realpath(os.path.expanduser(u'~/.pgadmin/'))
LOG_FILE = os.path.join(DATA_DIR, 'pgadmin4.log')
SQLITE_PATH = os.path.join(DATA_DIR, 'pgadmin4.db')
SESSION_DB_PATH = os.path.join(DATA_DIR, 'sessions')
STORAGE_DIR = os.path.join(DATA_DIR, 'storage')
SERVER_MODE = False
```

```
cd `pipenv --venv`/lib/python3.6/site-packages/pgadmin4/
cat << EOF > config_local.py
import os

DATA_DIR = os.path.realpath(os.path.expanduser(u'~/.pgadmin4/'))
LOG_FILE = os.path.join(DATA_DIR, 'pgadmin4.log')
SQLITE_PATH = os.path.join(DATA_DIR, 'pgadmin4.db')
SESSION_DB_PATH = os.path.join(DATA_DIR, 'sessions')
STORAGE_DIR = os.path.join(DATA_DIR, 'storage')
SERVER_MODE = False
EOF

```

On lance le serveur

```
python3 `pipenv --venv`/lib/python3.6/site-packages/pgadmin4/pgAdmin4.py
```



