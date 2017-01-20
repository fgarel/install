#!/bin/sh

pip install --upgrade pip

pip install ../pgadmin4-1.1-py3-none-any.whl

cp /home/fred/.local/share/virtualenvs/pgadmin/lib/python3.5/site-packages/pgadmin4/config.py \
   /home/fred/.local/share/virtualenvs/pgadmin/lib/python3.5/site-packages/pgadmin4/config-local.py

sed -i "s|DEFAULT_SERVER='localhost'|DEFAULT_SERVER='mail.cdalr.fr'|g" /home/fred/.local/share/virtualenvs/pgadmin/lib/python3.5/site-packages/pgadmin4/config.py
sed -i "s|DEFAULT_SERVER = 'localhost'|DEFAULT_SERVER = 'mail.cdalr.fr'|g" /home/fred/.local/share/virtualenvs/pgadmin/lib/python3.5/site-packages/pgadmin4/config.py
echo ""
echo ""
echo "# modification manuel de la configuration"
echo "nvim /home/fred/.local/share/virtualenvs/pgadmin/lib/python3.5/site-packages/pgadmin4/config.py"
echo ""
echo "# Démarrage du serveur"
echo "python /home/fred/.local/share/virtualenvs/pgadmin/lib/python3.5/site-packages/pgadmin4/pgAdmin4.py"
