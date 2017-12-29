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
        self.dict_dbuser_dbpass = {'fred': 'fred',
                                   'francois': 'fc',
                                   'michel': 'mr',
                                   'pascal': 'pb',
                                   'cda': 'cdapass',
                                   'soluris': 'solurispass',
                                   'enedis': 'enedispass',
                                   'sde': 'sdepass',
                                   'sdeer': 'sdeerpass',
                                   'dgfip': 'dgfippass'}
        self.dict_dbuser_listdroits = {'fred':                 ['SUPERUSER', 'NOCREATEDB',
                                                                'NOCREATEROLE', 'NOREPLICATION'],
                                       'francois':             ['NOSUPERUSER', 'NOCREATEDB',
                                                                'NOCREATEROLE', 'NOREPLICATION'],
                                       'michel':               ['NOSUPERUSER', 'NOCREATEDB',
                                                                'NOCREATEROLE', 'NOREPLICATION'],
                                       'pascal':               ['NOSUPERUSER', 'NOCREATEDB',
                                                                'NOCREATEROLE', 'NOREPLICATION'],
                                       'cda':                  ['NOSUPERUSER', 'NOCREATEDB',
                                                                'NOCREATEROLE', 'NOREPLICATION'],
                                       'soluris':              ['NOSUPERUSER', 'NOCREATEDB',
                                                                'NOCREATEROLE', 'NOREPLICATION'],
                                       'enedis':               ['NOSUPERUSER', 'NOCREATEDB',
                                                                'NOCREATEROLE', 'NOREPLICATION'],
                                       'sde':                  ['NOSUPERUSER', 'NOCREATEDB',
                                                                'NOCREATEROLE', 'NOREPLICATION'],
                                       'sdeer':                ['NOSUPERUSER', 'NOCREATEDB',
                                                                'NOCREATEROLE', 'NOREPLICATION'],
                                       'dgfip':                ['NOSUPERUSER', 'NOCREATEDB',
                                                                'NOCREATEROLE', 'NOREPLICATION']}
        #self.dbname = 'osm'
        #self.dbowner = 'osmuser'
        #self.listextension = ['adminpack', 'postgis', 'postgis_topology', 'fuzzystrmatch', 'hstore', 'dblink']
        #self.listschema = ['apidb', 'osm2pgsql']
        self.listdbname = ['pcrs']
        self.dict_dbname_dbowner = {'pcrs':      'fred'}

        self.dict_dbname_dict_dbuser_listdroits = \
            {'pcrs':             {'fred':                 ['CONNECT', 'TEMPORARY', 'ALL'],
                                  'francois':             ['CONNECT', 'TEMPORARY', 'ALL'],
                                  'michel':               ['CONNECT', 'TEMPORARY', 'ALL'],
                                  'pascal':               ['CONNECT', 'TEMPORARY', 'ALL'],
                                  'cda':                  ['CONNECT', 'TEMPORARY', 'ALL'],
                                  'soluris':              ['CONNECT', 'TEMPORARY', 'ALL'],
                                  'enedis':               ['CONNECT', 'TEMPORARY', 'ALL'],
                                  'sde':                  ['CONNECT', 'TEMPORARY', 'ALL'],
                                  'sdeer':                ['CONNECT', 'TEMPORARY', 'ALL'],
                                  'dgfip':                ['CONNECT', 'TEMPORARY', 'ALL']}}


        self.dict_dbname_listextensions = {'pcrs':             ['adminpack',
                                                                'postgis',
                                                                'postgis_topology',
                                                                'fuzzystrmatch',
                                                                'hstore',
                                                                'dblink']}

        self.dict_dbname_listschemas = {'pcrs':   ['user_01',
                                                   'user_02',
                                                   'user_03',
                                                   'user_04']}
        self.dict_dbuser_searchpath = {'fred':                 '"$user", user_01, public',
                                       'francois':             '"$user", user_02, public',
                                       'michel':               '"$user", user_03, public',
                                       'pascal':               '"$user", user_04, public',
                                       'cda':                  'public',
                                       'soluris':              'public',
                                       'enedis':               'public',
                                       'sde':                  'public',
                                       'sdeer':                'public',
                                       'dgfip':                'public'                                       }
        self.dict_dbname_dict_schema_dict_dbuser_listdroits = \
            {'pcrs': {'user_01':                    {'fred':                 ['ALL'],
                                                     'francois':             ['ALL'],
                                                     'michel':               ['ALL'],
                                                     'pascal':               ['ALL']},
                      'user_02':                    {'fred':                 ['ALL'],
                                                     'francois':             ['ALL'],
                                                     'michel':               ['ALL'],
                                                     'pascal':               ['ALL']},
                      'user_03':                    {'fred':                 ['ALL'],
                                                     'francois':             ['ALL'],
                                                     'michel':               ['ALL'],
                                                     'pascal':               ['ALL']},
                      'user_04':                    {'fred':                 ['ALL'],
                                                     'francois':             ['ALL'],
                                                     'michel':               ['ALL'],
                                                     'pascal':               ['ALL']}}}
        self.dict_dbname_dict_schema_listtables = \
            {'pcrs':     {'user_01': [],
                          'user_02': [],
                          'user_03': [],
                          'user_04': []}}


        self.dict_dbname_dict_schema_listsqlfiles = \
            {'pcrs':     {'user_01': [],
                          'user_02': [],
                          'user_03': [],
                          'user_04': []}}

        # les paramètres pour la connexion
        self.hostname = 'localhost'
        self.port = '5432'
        self.username = 'fred'
        self.password = 'fred'


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
