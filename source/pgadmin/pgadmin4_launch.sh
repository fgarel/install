#!/bin/sh

# Se mettre dans l'environnement virtuel
# pipenv shell
echo "# Se mettre dans l'environnement virtuel"
echo "pipenv shell"
echo ""

echo "# lancement de pgadmin4"
echo 'python3 `pipenv --venv`/lib/python3.6/site-packages/pgadmin4/pgAdmin4.py'
# lancement de pgadmin4
python3 `pipenv --venv`/lib/python3.6/site-packages/pgadmin4/pgAdmin4.py

# le site est alors accessible à la page
# http://localhost:5050/
# http://pgadmin.mairie.fr/
echo "# le site est alors accessible à la page"
echo "# http://localhost:5050/"
echo "# http://pgadmin.mairie.fr/"
