#!/bin/sh

pip install --upgrade pip

pip install Flask

pip install gunicorn

echo ""
echo "# Démarrage du serveur"
echo "gunicorn hello:app"
