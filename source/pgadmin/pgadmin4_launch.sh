#!/bin/sh

# se mettre dans l'environnement virtuel
# pipenv shell

# lancement de pgadmin4
python3 `pipenv --venv`/lib/python3.6/site-packages/pgadmin4/pgAdmin4.py

# le site est alors accessible à la page
# http://localhost:5050/
# http://pgadmin.mairie.fr/
