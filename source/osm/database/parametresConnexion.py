#!/usr/bin/env python
# -*- coding: utf-8 -*-

u""" Definition des paramètres de connexion.

Paramètres de connexion à une base de données.

"""

#import psycopg2
#from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT # <-- ADD THIS LINE

class ParametresConnexion(object):

    u""" Cette classe correspont aux paramètres de connexion. """

    def __init__(self):
        u""" Fonction lancée au moment de l'instanciation. """
        # les parametres pour la creation
        # Attention : la creation se fait sur la machine localhost
        self.dict_dbuser_dbpass = {'fred': 'fgpass',
                                   'osmuser': 'osmpass',
                                   'mapnikuser': 'mapnikpass',
                                   'www-data': 'www-data'}
        self.dict_dbuser_listdroits = {'fred':       ['SUPERUSER', 'NOCREATEDB',
                                                      'NOCREATEROLE', 'NOREPLICATION'],
                                       'osmuser':    ['NOSUPERUSER', 'NOCREATEDB',
                                                      'NOCREATEROLE', 'NOREPLICATION'],
                                       'mapnikuser': ['NOSUPERUSER', 'NOCREATEDB',
                                                      'NOCREATEROLE', 'NOREPLICATION'],
                                       'www-data':   ['NOSUPERUSER', 'NOCREATEDB',
                                                      'NOCREATEROLE', 'NOREPLICATION']}
        #self.dbname = 'osm'
        #self.dbowner = 'osmuser'
        #self.listextension = ['adminpack', 'postgis', 'postgis_topology', 'fuzzystrmatch', 'hstore', 'dblink']
        #self.listschema = ['apidb', 'osm2pgsql']
        self.listdbname = ['osm', 'template_postgis']
        self.dict_dbname_dbowner = {'osm':              'osmuser',
                                    'template_postgis': 'fred'}

        self.dict_dbname_dict_dbuser_listdroits = \
            {'osm':              {'osmuser':    ['CONNECT', 'TEMPORARY', 'ALL'],
                                  'mapnikuser': ['CONNECT', 'TEMPORARY', 'ALL'],
                                  'www-data':   ['CONNECT', 'TEMPORARY', 'ALL']},
             'template_postgis': {'fred':       ['CONNECT', 'TEMPORARY', 'ALL']}}


        self.dict_dbname_listextensions = {'osm':              ['adminpack',
                                                                'postgis',
                                                                'postgis_topology',
                                                                'fuzzystrmatch',
                                                                'hstore',
                                                                'dblink'],
                                           'template_postgis': ['adminpack',
                                                                'postgis',
                                                                'postgis_topology',
                                                                'fuzzystrmatch',
                                                                'hstore',
                                                                'dblink']}
        self.dict_dbname_listschemas = {'osm': ['apidb',
                                                'osm2pgsql']}
        self.dict_dbuser_searchpath = {'osmuser':    '"$user", apidb, osm2pgsql, public',
                                       'mapnikuser': '"$user", osm2pgsql, public',
                                       'www-data':   '"$user", osm2pgsql, public'}
        self.dict_dbname_dict_schema_dict_dbuser_listdroits = \
            {'osm': {'apidb':     {'osmuser':    ['ALL']},
                     'osm2pgsql': {'osmuser':    ['ALL'],
                                   'mapnikuser': ['ALL'],
                                   'www-data':   ['ALL']}}}
        self.dict_dbname_dict_schema_listtables = \
            {'osm': {'apidb':     ['nodes',
                                   'ways'],
                     'osm2pgsql': ['planet_osm_point',
                                   'planet_osm_line',
                                   'planet_osm_roads',
                                   'planet_osm_polygon']}}

        self.dict_dbname_dict_schema_listsqlfilescreate = \
            {'osm':               {'apidb': [],
                                   'osm2pgsql': []}}
        self.dict_dbname_dict_schema_listsqlfilesinsert = \
            {'osm':               {'apidb': [],
                                   'osm2pgsql': []}}

        # les paramètres pour la connexion
        self.hostname = 'localhost'
        self.port = '5432'
        self.username = 'fred'
        self.password = 'fgpass'


def main():
    u""" Fonction appelée par défaut. """
    paramconnexion = ParametresConnexion()

    print('dict_dbuser_dbpass         = {}'.format(paramconnexion.dict_dbuser_dbpass))
    print('dict_dbuser_listdroits     = {}'.format(paramconnexion.dict_dbuser_listdroits))
    print('listdbname                 = {}'.format(paramconnexion.listdbname))
    print('dict_dbname_dbowner        = {}'.format(paramconnexion.dict_dbname_dbowner))
    print('dict_dbname_listextensions = {}'.format(paramconnexion.dict_dbname_listextensions))
    print('dict_dbname_listschemas    = {}'.format(paramconnexion.dict_dbname_listschemas))

    print('hostname                   = {}'.format(paramconnexion.hostname))
    print('port                       = {}'.format(paramconnexion.port))
    print('username                   = {}'.format(paramconnexion.username))
    print('password                   = {}'.format(paramconnexion.password))
    #print(connection)

if __name__ == '__main__':
    main()
