# Configuration du serveru web

Nginx est le serveur qui va recevoir les requetes http
Etant donné que ce moteur est capable de gerer des "blocks virtuels",
https://www.digitalocean.com/community/tutorials/how-to-set-up-nginx-server-blocks-virtual-hosts-on-ubuntu-16-04
en fonction de l'adresse demandée, on va rediriger la requete vers les bonnes appli.

par exemple, si nginx est devant,
derriere on peut mettre :

 - une application flask si c'est l'adresse flask.mairie.fr qui est demandée
 - une application pgadmin si c'est l'adresse pgadmin.mairie.fr qui est demandée

## nginx en frontal

La configuration de nginx en tant que proxy se fait dans les fichiers suivants :

 - flask_settings
 - pgadmin_settings


Test de cette configurration
Modification du fichier /etc/hosts

```
sudo nvim /etc/hosts
```

```
127.0.0.1 localhost
127.0.0.1 flask flask.mairie.fr
127.0.0.1 pgadmin pgamdin.mairie.fr
```


## Des applications developpées en python

Mais, il n'y a pas que la redirection, il faut aussi lancer les applications grace à gunicorn

### Pour flask

Se mettre dans l'environnement flask
```
pew workon flask
```

Puis lancer l'application (qui s'appelle hello.py)
```
cd nginxFlask
gunicorn hello:app
```

### Pour pgadmin

Se mettre dans l'environnement pgadmin
```
pew workon pgadmin
```

Vérifier la configuration du serveurgunicorn

```
nvim /home/fred/.local/share/virtualenvs/pgadmin/lib/python3.5/site-packages/pgadmin4/config.py
```

le nom du serveur doit etre identique à celui inscrit dans la configuration de nginx
```
DEFAULT_SERVER = 'mail.cdalr.fr'
```

Puis lancer l'application
```
python /home/fred/.local/share/virtualenvs/pgadmin/lib/python3.5/site-packages/pgadmin4/pgadmin4.py
```
