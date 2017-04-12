#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# script pour la creation d'une base de données :

#from connexion import parametres
#import parametresConnection
#from database import parametresConnection

import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT # <-- ADD THIS LINE

class Database(object):

    u""" Cette classe correspont à une connection via psycopg2. """

    def __init__(self, paramconnexion):
        u""" Fonction lancée au moment de l'instanciation. """
        self.hostname = paramconnexion.hostname
        self.port = paramconnexion.port
        self.username = paramconnexion.username
        self.password = paramconnexion.password
        self.dbname = ''
        self.extension = ''
        self.schema = ''
        self.conn = ''

    def conn_database(self, dbname):
        self.dbname = dbname
        #print("dbname = {}".format(self.dbname))
        self.conn = psycopg2.connect(host=self.hostname,
                                     port=self.port,
                                     dbname=self.dbname,
                                     user=self.username,
                                     password=self.password)
        return self.conn

    def create_database(self, dbname):
        #print("dbname = {}".format(self.dbname))
        self.conn = self.conn_database('postgres')
        #print("dbname = {}".format(self.dbname))
        self.dbname = dbname
        print("dbname = {}".format(self.dbname))

        self.conn.set_isolation_level(ISOLATION_LEVEL_AUTOCOMMIT) # <-- ADD THIS LINE
        self.cur = self.conn.cursor()
        self.cur.execute("DROP DATABASE if exists %s ;" % self.dbname)
        self.cur.execute("CREATE DATABASE %s  ;" % self.dbname)
        self.cur.close()
        self.conn.close()

    def create_extension(self, dbname, extension):
        self.dbname = dbname
        self.extension = extension
        #print('extension = {}'.format(self.extension))
        self.conn = self.conn_database(self.dbname)
        self.cur = self.conn.cursor()
        self.cur.execute("CREATE EXTENSION if not exists %s ;" % self.extension)
        self.cur.close()
        self.conn.close()

    def create_schema(self, dbname, schema):
        self.dbname = dbname
        self.schema = schema
        #print('schema = {}'.format(self.schema))
        self.conn = self.conn_database(self.dbname)
        self.cur = self.conn.cursor()
        self.cur.execute("CREATE SCHEMA if not exists %s ;" % self.schema)
        self.cur.close()
        self.conn.close()


def main():
    u""" Fonction appelée par défaut. """
    import parametresConnection
    mesparametres = parametresConnection.ParametresConnection()
    #print('hostname = {}'.format(paramconnexion.hostname))
    #print('username = {}'.format(paramconnexion.username))
    #print('password = {}'.format(paramconnexion.password))
    myconnection = Database(mesparametres)
    print('hostname = {}'.format(myconnection.hostname))
    print('port     = {}'.format(myconnection.port))
    print('username = {}'.format(myconnection.username))
    print('password = {}'.format(myconnection.password))

    # Creation de la base de données geogig
    myconnection.create_database('geogig')

    # Creation des extensions
    listext = ['adminpack', 'plpgsql', 'postgis', 'postgis_topology', 'fuzzystrmatch', 'hstore']
    listext = ['adminpack', 'postgis', 'postgis_topology', 'fuzzystrmatch', 'hstore']
    for extension in listext:
        #print('extension = {}'.format(extension))
        myconnection.create_extension('geogig', extension)

    # Creation des schemas
    listschema = ['pcrs']
    for schema in listschema:
        #print('schema = {}'.format(schema))
        myconnection.create_schema('geogig', schema)
        #cur.execute("CREATE SCHEMA if not exists %s  ;" % schema)

if __name__ == '__main__':
    main()
