# poetry et whl pour installer pgamdin4

Nous allons utiliser poetry afin d'avoir un environnement python isolé
Nous utilisons le format whl pour installer pgamin4


## Recuperation du fichier whl
l'adresse a été récupéré ici :
https://www.postgresql.org/ftp/pgadmin/pgadmin4/v4.19/pip/

la commande wget est 
```
wget https://ftp.postgresql.org/pub/pgadmin/pgadmin4/v4.19/pip/pgadmin4-4.19-py2.py3-none-any.whl
```

## env poetry
poetry init

nous ne pouvons pas mettre pgadmin car il n'est pas dans pypi (ce n'est pas un module python)
par contre, nous pouvons installer une application fournie sous la forme d'un fichier whl

vu ici : 
https://github.com/python-poetry/poetry/issues/76

donc 
```
vi pyproject.toml
```

```
[tools.poetry.dependencies]
python= "^3.6"
pgadmin4 = { file = "./pgadmin4-4.19-py2.py3-none-any.whl" }
```


```
poetry install
```



