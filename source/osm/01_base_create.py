#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# script pour la creation d'une base de données :

from database import database
from database import parametresConnection

#import psycopg2
#from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT # <-- ADD THIS LINE


def main():
    u""" Fonction appelée par défaut. """
    mesparametres = parametresConnexion.ParametresConnexion()
    #paramconnexion = parametres.Parametres()
    #print('hostname = {}'.format(paramconnexion.hostname))
    #print('username = {}'.format(paramconnexion.username))
    #print('password = {}'.format(paramconnexion.password))
    maconnexion = database.Database(mesparametres)
    print('hostname = {}'.format(maconnexion.hostname))
    print('username = {}'.format(maconnexion.username))
    print('password = {}'.format(maconnexion.password))

    # Creation des roles de connexion
    dict_dbuser_dbpass = {'osmuser': 'osmpass',
                          'mapnikuser': 'mapnikpass',
                          'www-data': 'www-data'}
    for dbuser, dbpass in dict_dbuser_dbpass.items():
        maconnexion.create_role(dbuser, dbpass)

    # Creation de la base de données
    madatabase = 'osm'
    #### myconnection.create_database('geogig')
    maconnexion.create_database('osm')

    # Creation des extensions
    #listext = ['adminpack', 'plpgsql', 'postgis', 'postgis_topology', 'fuzzystrmatch', 'hstore']
    listext = ['adminpack', 'postgis', 'postgis_topology', 'fuzzystrmatch', 'hstore', 'dblink']
    for extension in listext:
        #print('extension = {}'.format(extension))
        ####myconnection.create_extension('geogig', extension)
        myconnection.create_extension('pcrs', extension)

    # Creation des schemas
    #### listschema = ['pcrs']
    listschema = ['private']
    for schema in listschema:
        #print('schema = {}'.format(schema))
        ####myconnection.create_schema('geogig', schema)
        myconnection.create_schema('pcrs', schema)
        #cur.execute("CREATE SCHEMA if not exists %s  ;" % schema)

if __name__ == '__main__':
    main()
