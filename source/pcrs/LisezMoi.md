# Cas d'utilisation du PCRS


## Init

###
Creation d'une version initiale d'une case à partir du cadastre

01_base_create.py
sql/01_create_table_pcrs_v20_20170921.sql
02_generate_caseFolio.py
03_init_from_cadastre.sql

###
Creation d'une version initiale d'une case à partir du rtge
01_base_create.py
sql/01_create_table_pcrs_v20_20170921.sql
02_generate_caseFolio.py
03_init_from_rtge.sh
sql/03_init_from_rtge.sql

## Pull

### Recherche d'une ou plusieurs cases

### Récuperation de la version en cours (version initiale ou version en cours)


## Push

### Mise à jour d'une case


## Diff

### Diff historique : diff entre version N et version N-1

### Diff branche : diff entre branche TopoNonControle et TopoNonControle

### Diff depot : diff entre depot enedis et depot cda


## Log

### Comptage des opérations d'ecriture

### Comptage des opérations de lecture


 sandman2ctl postgresql+psycopg2://frederic.garel:M....@172.17.150.6/sig
