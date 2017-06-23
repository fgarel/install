#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# script pour la creation d'une base de données :

from database import database
from database import parametresConnection

#import psycopg2
#from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT # <-- ADD THIS LINE


def main():
    u""" Fonction appelée par défaut. """
    mesparametres = parametresConnection.ParametresConnection()
    #paramconnexion = parametres.Parametres()
    #print('hostname = {}'.format(paramconnexion.hostname))
    #print('username = {}'.format(paramconnexion.username))
    #print('password = {}'.format(paramconnexion.password))
    myconnection = database.Database(mesparametres)
    print('hostname = {}'.format(myconnection.hostname))
    print('username = {}'.format(myconnection.username))
    print('password = {}'.format(myconnection.password))

    # Creation de la base de données geogig
    #### myconnection.create_database('geogig')
    myconnection.create_database('pcrs')

    # Creation des extensions
    listext = ['adminpack', 'plpgsql', 'postgis', 'postgis_topology', 'fuzzystrmatch', 'hstore']
    listext = ['adminpack', 'postgis', 'postgis_topology', 'fuzzystrmatch', 'hstore']
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
