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
                                   'francois': 'fcpass',
                                   'michel': 'mrpass',
                                   'pascal': 'pbpass',
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
        self.listdbname = ['geogig_central',
                           'geogig_local',
                           'geogig_individuel',
                           'dbworkspace']
        self.dict_dbname_dbowner = {'geogig_central':    'fred',
                                    'geogig_local':      'fred',
                                    'geogig_individuel': 'fred',
                                    'dbworkspace':       'fred'}

        self.dict_dbname_dict_dbuser_listdroits = \
            {'geogig_central':    {'fred':                 ['CONNECT', 'TEMPORARY', 'ALL'],
                                   'cda':                  ['CONNECT', 'TEMPORARY', 'ALL'],
                                   'soluris':              ['CONNECT', 'TEMPORARY', 'ALL'],
                                   'enedis':               ['CONNECT', 'TEMPORARY', 'ALL'],
                                   'sde':                  ['CONNECT', 'TEMPORARY', 'ALL'],
                                   'sdeer':                ['CONNECT', 'TEMPORARY', 'ALL'],
                                   'dgfip':                ['CONNECT', 'TEMPORARY', 'ALL']},
             'geogig_local':      {'fred':                 ['CONNECT', 'TEMPORARY', 'ALL'],
                                   'francois':             ['CONNECT', 'TEMPORARY', 'ALL'],
                                   'michel':               ['CONNECT', 'TEMPORARY', 'ALL'],
                                   'pascal':               ['CONNECT', 'TEMPORARY', 'ALL']},
             'geogig_individuel': {'fred':                 ['CONNECT', 'TEMPORARY', 'ALL'],
                                   'francois':             ['CONNECT', 'TEMPORARY', 'ALL'],
                                   'michel':               ['CONNECT', 'TEMPORARY', 'ALL'],
                                   'pascal':               ['CONNECT', 'TEMPORARY', 'ALL']},
             'dbworkspace':       {'fred':                 ['CONNECT', 'TEMPORARY', 'ALL'],
                                   'francois':             ['CONNECT', 'TEMPORARY', 'ALL'],
                                   'michel':               ['CONNECT', 'TEMPORARY', 'ALL'],
                                   'pascal':               ['CONNECT', 'TEMPORARY', 'ALL']}}


        # self.dict_dbname_listextensions = {'geogig':           ['adminpack',
        #                                                         'postgis',
        #                                                         'postgis_topology',
        #                                                         'fuzzystrmatch',
        #                                                         'hstore',
        #                                                         'dblink']}
        self.dict_dbname_listextensions = {'geogig_central':    ['adminpack'],
                                           'geogig_local':      ['adminpack'],
                                           'geogig_individuel': ['adminpack'],
                                           'dbworkspace':       ['adminpack',
                                                                 'fuzzystrmatch',
                                                                 'postgis',
                                                                 'postgis_raster',
                                                                 'postgis_topology',
                                                                 'postgis_sfcgal',
                                                                 'address_standardizer',
                                                                 'postgis_tiger_geocoder',
                                                                 'hstore',
                                                                 'dblink']}

        self.dict_dbname_listschemas = {'geogig_central':    ['pcrs'],
                                        'geogig_local':      ['pcrs',
                                                              'espu',
                                                              'bati',
                                                              'rtge',
                                                              'rese',
                                                              'cada'],
                                        'geogig_individuel': ['pcrs',
                                                              'espu',
                                                              'bati',
                                                              'rtge',
                                                              'rese',
                                                              'cada'],
                                        'dbworkspace':       ['pcrs',
                                                              'init',
                                                              'other',
                                                              'cases']}
        self.dict_dbuser_searchpath = {'fred':                 '"$user", public',
                                       'francois':             '"$user", pcrs, espu, public',
                                       'michel':               '"$user", pcrs, espu, public',
                                       'pascal':               '"$user", pcrs, espu, public',
                                       'cda':                  'pcrs, public',
                                       'soluris':              'pcrs, public',
                                       'enedis':               'pcrs, public',
                                       'sde':                  'pcrs, public',
                                       'sdeer':                'pcrs, public',
                                       'dgfip':                'pcrs, public'}
        self.dict_dbname_dict_schema_dict_dbuser_listdroits = \
            {'geogig_central':    {'pcrs':             {'fred':                 ['ALL'],
                                                        'cda':                  ['ALL'],
                                                        'soluris':              ['ALL'],
                                                        'enedis':               ['ALL'],
                                                        'sde':                  ['ALL'],
                                                        'sdeer':                ['ALL'],
                                                        'dgfip':                ['ALL']}},
             'geogig_local':      {'pcrs':             {'fred':                 ['ALL'],
                                                        'francois':             ['ALL'],
                                                        'michel':               ['ALL'],
                                                        'pascal':               ['ALL']},
                                   'espu':             {'fred':                 ['ALL'],
                                                        'francois':             ['ALL'],
                                                        'michel':               ['ALL'],
                                                        'pascal':               ['ALL']},
                                   'bati':             {'fred':                 ['ALL'],
                                                        'francois':             ['ALL'],
                                                        'michel':               ['ALL'],
                                                        'pascal':               ['ALL']},
                                   'rtge':             {'fred':                 ['ALL'],
                                                        'francois':             ['ALL'],
                                                        'michel':               ['ALL'],
                                                        'pascal':               ['ALL']},
                                   'rese':             {'fred':                 ['ALL'],
                                                        'francois':             ['ALL'],
                                                        'michel':               ['ALL'],
                                                        'pascal':               ['ALL']},
                                   'cada':             {'fred':                 ['ALL'],
                                                        'francois':             ['ALL'],
                                                        'michel':               ['ALL'],
                                                        'pascal':               ['ALL']}},
             'geogig_individuel': {'pcrs':             {'fred':                 ['ALL'],
                                                        'francois':             ['ALL'],
                                                        'michel':               ['ALL'],
                                                        'pascal':               ['ALL']},
                                   'espu':             {'fred':                 ['ALL'],
                                                        'francois':             ['ALL'],
                                                        'michel':               ['ALL'],
                                                        'pascal':               ['ALL']},
                                   'bati':             {'fred':                 ['ALL'],
                                                        'francois':             ['ALL'],
                                                        'michel':               ['ALL'],
                                                        'pascal':               ['ALL']},
                                   'rtge':             {'fred':                 ['ALL'],
                                                        'francois':             ['ALL'],
                                                        'michel':               ['ALL'],
                                                        'pascal':               ['ALL']},
                                   'rese':             {'fred':                 ['ALL'],
                                                        'francois':             ['ALL'],
                                                        'michel':               ['ALL'],
                                                        'pascal':               ['ALL']},
                                   'cada':             {'fred':                 ['ALL'],
                                                        'francois':             ['ALL'],
                                                        'michel':               ['ALL'],
                                                        'pascal':               ['ALL']}},
             'dbworkspace':       {'pcrs':             {'fred':                 ['ALL'],
                                                        'francois':             ['ALL'],
                                                        'michel':               ['ALL'],
                                                        'pascal':               ['ALL']},
                                   'init':             {'fred':                 ['ALL'],
                                                        'francois':             ['ALL'],
                                                        'michel':               ['ALL'],
                                                        'pascal':               ['ALL']},
                                   'other':            {'fred':                 ['ALL'],
                                                        'francois':             ['ALL'],
                                                        'michel':               ['ALL'],
                                                        'pascal':               ['ALL']},
                                   'cases':            {'fred':                 ['ALL'],
                                                        'francois':             ['ALL'],
                                                        'michel':               ['ALL'],
                                                        'pascal':               ['ALL']}}
                                                                                        }
        self.dict_dbname_dict_schema_listtables = \
            {'geogig_central':    {'pcrs': []},
             'geogig_local':      {'pcrs': [],
                                   'espu': [],
                                   'bati': [],
                                   'rtge': [],
                                   'rese': [],
                                   'cada': []},
             'geogig_individuel': {'pcrs': [],
                                   'espu': [],
                                   'bati': [],
                                   'rtge': [],
                                   'rese': [],
                                   'cada': []},
             'dbworkspace':       {'pcrs': [],
                                   'init': [],
                                   'other': [],
                                   'cases': []}}

        self.dict_dbname_dict_schema_listsqlfilescreate = \
            {'geogig_central':    {'pcrs': []},
             'geogig_local':      {'pcrs': [],
                                   'espu': [],
                                   'bati': [],
                                   'rtge': [],
                                   'rese': [],
                                   'cada': []},
             'geogig_individuel': {'pcrs': [],
                                   'espu': [],
                                   'bati': [],
                                   'rtge': [],
                                   'rese': [],
                                   'cada': []},
             'dbworkspace':       {'pcrs': ['../../pcrs/bin/sql/01_create_table_pcrs_pcrs_v199_20171227.sql'],
                                   'init': ['../../pcrs/bin/sql/01_create_table_pcrs_init_v199_20171227.sql'],
                                   'other': [],
                                   'cases': []}}
        self.dict_dbname_dict_schema_listsqlfilesinsert = \
            {'geogig_central':    {'pcrs': []},
             'geogig_local':      {'pcrs': [],
                                   'espu': [],
                                   'bati': [],
                                   'rtge': [],
                                   'rese': [],
                                   'cada': []},
             'geogig_individuel': {'pcrs': [],
                                   'espu': [],
                                   'bati': [],
                                   'rtge': [],
                                   'rese': [],
                                   'cada': []},
             'dbworkspace':       {'pcrs': [],
                                   'init': ['../../pcrs/bin/sql/03_empriseEchangePCRSInsert.sql'],
                                   'other': [],
                                   'cases': []}}

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
