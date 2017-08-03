#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# script pour la creation d'une base de données :

#from connexion import parametres
#import parametresConnection
#from database import parametresConnection

import subprocess
import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT # <-- ADD THIS LINE
from psycopg2.extensions import ISOLATION_LEVEL_READ_COMMITTED # <-- ADD THIS LINE


class Database(object):

    u""" Cette classe correspond à une base de donnée connectée via psycopg2. """

    def __init__(self, paramconnexion):
        u""" Fonction lancée au moment de l'instanciation. """
        self.dict_dbuser_dbpass = paramconnexion.dict_dbuser_dbpass
        self.dict_dbuser_listdroits = paramconnexion.dict_dbuser_listdroits
        self.listdbname = paramconnexion.listdbname
        self.dict_dbname_dbowner = paramconnexion.dict_dbname_dbowner
        self.dict_dbname_dict_dbuser_listdroits = paramconnexion.dict_dbname_dict_dbuser_listdroits
        self.dict_dbname_listextensions = paramconnexion.dict_dbname_listextensions
        self.dict_dbname_listschemas = paramconnexion.dict_dbname_listschemas
        self.dict_dbname_dict_schema_dict_dbuser_listdroits = paramconnexion.dict_dbname_dict_schema_dict_dbuser_listdroits
        self.dict_dbname_dict_schema_listtables = paramconnexion.dict_dbname_dict_schema_listtables

        self.hostname = paramconnexion.hostname
        self.port = paramconnexion.port
        self.username = paramconnexion.username
        self.password = paramconnexion.password
        self.conn = ''

    def conn_database(self, dbname):
        self.dbname = dbname
        #print("--> dbname = {}".format(self.dbname))
        self.conn = psycopg2.connect(host=self.hostname,
                                     port=self.port,
                                     dbname=self.dbname,
                                     user=self.username,
                                     password=self.password)
        return self.conn

    def create_role(self, username, password):
        # La creation du role se fait hors connexion :
        # on a pas besoin d'etre connecté à une base de données
        # pour créer le role
        # La creation du role se fait grace à la commande shell (en sudo)
        # createuser
        # et cette commande shell est appelé grace au module subprocess
        # Des exemples plus poussés de l'utilisation du module subprocess
        # peuvent etre trouvés dans dt-dict/bin/pdfReader.py

        # La premiere commande, c'est pour créer le role
        commande = "sudo -u postgres " + \
                   "     createuser \"" + username + "\""

        print("{}".format(commande))
        subprocess.call(
            commande,
            shell=True)

        # La seconde commande, c'est pour modifier son mot de passe
        commande = "sudo -u postgres " + \
                   "     psql -c " + \
                   "\"" + "ALTER ROLE \\\"" + username + "\\\"" + \
                   " WITH PASSWORD \'" + password + "\';" + "\""

        #print("commande    = {}".format(commande))
        subprocess.call(
            commande,
            shell=True)

    def update_role(self, username, rights):
        # La modifiaction du role se fait hors connexion :
        # on a pas besoin d'etre connecté à une base de données
        # pour modifier le role
        # La modification du role se fait grace à la commande shell (en sudo)
        # psql
        # et cette commande shell est appelé grace au module subprocess

        # La troisième commande, c'est pour lui affecter des droits
        commande = "sudo -u postgres " + \
                   "     psql -c " + \
                   "\"" + "ALTER ROLE \\\"" + username + "\\\"" + \
                   " " + rights + ";" + "\""

        print("{}".format(commande))
        subprocess.call(
            commande,
            shell=True)

    def create_database(self, dbname, dbowner):
        #print("dbname    = {}".format(self.dbname))
        self.conn = self.conn_database('postgres')
        self.dbname = dbname
        self.dbowner = dbowner
        self.conn.set_isolation_level(ISOLATION_LEVEL_AUTOCOMMIT) # <-- ADD THIS LINE
        self.cur = self.conn.cursor()
        self.cur.execute("DROP DATABASE if exists {} ;".format(self.dbname))
        self.cur.execute("CREATE DATABASE {} ;".format(self.dbname))
        self.cur.execute("ALTER DATABASE {} OWNER TO \"{}\";".format(self.dbname, self.dbowner))
        self.cur.execute("ALTER DATABASE {} SET search_path = \"$user\", public, topology;".format(self.dbname))

        self.cur.close()
        self.conn.close()

    def update_database(self, dbname, dbuser, rights):
        #print("dbname    = {}".format(self.dbname))
        self.conn = self.conn_database('postgres')
        self.dbname = dbname
        self.conn.set_isolation_level(ISOLATION_LEVEL_AUTOCOMMIT) # <-- ADD THIS LINE
        self.cur = self.conn.cursor()
        self.cur.execute("GRANT {} ON DATABASE {} TO \"{}\";".format(rights, dbname, dbuser))
        self.cur.close()
        self.conn.close()

    def create_extension(self, dbname, extension):
        self.dbname = dbname
        self.extension = extension
        #print("dbname    = {}".format(self.dbname))
        #print("extension = {}".format(self.extension))
        self.conn = self.conn_database(self.dbname)
        self.conn.autocommit = True
        self.cur = self.conn.cursor()
        self.cur.execute("CREATE EXTENSION if not exists {} ;".format(self.extension))
        self.cur.close()
        self.conn.close()

    def create_schema(self, dbname, schema):
        self.dbname = dbname
        self.schema = schema
        #print("dbname    = {}".format(self.dbname))
        #print('schema    = {}'.format(self.schema))
        self.conn = self.conn_database(self.dbname)
        self.conn.autocommit = True
        self.cur = self.conn.cursor()
        self.cur.execute("CREATE SCHEMA if not exists {} ;".format(self.schema))
        self.cur.close()
        self.conn.close()

    def update_schema(self, dbname, schema, dbuser, rights):
        self.dbname = dbname
        self.schema = schema
        #print("dbname    = {}".format(self.dbname))
        #print('schema    = {}'.format(self.schema))
        self.conn = self.conn_database(self.dbname)
        self.conn.autocommit = True
        self.cur = self.conn.cursor()
        #print("GRANT {} ON SCHEMA {} TO \"{}\";".format(rights, schema, dbuser))
        self.cur.execute("GRANT {} ON SCHEMA {} TO \"{}\";".format(rights, schema, dbuser))
        self.cur.close()
        self.conn.close()

    def create_table(self, dbname, schema, table):
        self.dbname = dbname
        self.schema = schema
        self.table = table
        #print("dbname    = {}".format(self.dbname))
        #print('schema    = {}'.format(self.schema))
        #print('table     = {}'.format(self.table))
        self.conn = self.conn_database(self.dbname)
        self.conn.autocommit = True
        self.cur = self.conn.cursor()
        self.cur.execute("CREATE table if not exists \"{}\".\"{}\" () ;".format(self.schema,self.table))
        self.cur.close()
        self.conn.close()


def main():
    u""" Fonction appelée par défaut. """
    import parametresConnexion
    mesparametres = parametresConnexion.ParametresConnexion()
    #print('hostname = {}'.format(paramconnexion.hostname))
    #print('username = {}'.format(paramconnexion.username))
    #print('password = {}'.format(paramconnexion.password))
    maconnexion = Database(mesparametres)
    # print('dict_dbuser_dbpass = {}'.format(maconnexion.dict_dbuser_dbpass))
    # print('dict_dbuser_droits = {}'.format(maconnexion.dict_dbuser_droits))
    # print('dbname             = {}'.format(maconnexion.dbname))
    # print('dbowner            = {}'.format(maconnexion.dbowner))
    # print('listextension      = {}'.format(maconnexion.listextension))
    # print('listschema         = {}'.format(maconnexion.listschema))
    #
    # print('hostname           = {}'.format(maconnexion.hostname))
    # print('port               = {}'.format(maconnexion.port))
    # print('username           = {}'.format(maconnexion.username))
    # print('password           = {}'.format(maconnexion.password))


    # Creation des roles / utilisateurs
    print('1. Creation des roles / utilisateurs')
    for dbuser, dbpass in maconnexion.dict_dbuser_dbpass.items():
        maconnexion.create_role(dbuser, dbpass)

    # Affectation des droits (niveau utilisateurs)
    print('2 Affectation des droits (niveau utilisateurs)')
    for dbuser, listdroits in maconnexion.dict_dbuser_listdroits.items():
        for droit in listdroits:
            maconnexion.update_role(dbuser, droit)

    # Creation de la base de données
    print('3 Creation de la base de données')
    for dbname, dbowner in maconnexion.dict_dbname_dbowner.items():
        maconnexion.create_database(dbname, dbowner)

    # Affectation des droits (niveau base de données)
    print('4 Affectation des droits (niveau base de données)')
    for dbname, dict_dbuser_listdroits in maconnexion.dict_dbname_dict_dbuser_listdroits.items():
        for dbuser, listdroits in dict_dbuser_listdroits.items():
            for droit in listdroits:
                maconnexion.update_database(dbname, dbuser, droit)

    # Creation des extensions
    print('5 Creation des extensions')
    for dbname, listextensions in maconnexion.dict_dbname_listextensions.items():
        #print('extension = {}'.format(extension))
        for extension in listextensions:
            maconnexion.create_extension(dbname, extension)

    # Creation des schemas
    print('6 Creation des schemas')
    for dbname, listschemas in maconnexion.dict_dbname_listschemas.items():
        for schema in listschemas:
            #print('schema = {}'.format(schema))
            maconnexion.create_schema(dbname, schema)

    # Affectation des droits (niveau schemas)
    print('7 Affectation des droits (niveau schemas)')
    for dbname, dict_schema_dict_dbuser_listdroits in maconnexion.dict_dbname_dict_schema_dict_dbuser_listdroits.items():
        for schema, dict_dbuser_listdroits in dict_schema_dict_dbuser_listdroits.items():
            for dbuser, listdroits in dict_dbuser_listdroits.items():
                for droit in listdroits:
                    maconnexion.update_schema(dbname, schema, dbuser, droit)

    # Creation des tables
    print('8 Creation des tables')
    for dbname, dict_schema_listtables in maconnexion.dict_dbname_dict_schema_listtables.items():
        for schema, listtables in dict_schema_listtables.items():
            for table in listtables:
                maconnexion.create_table(dbname, schema, table)


if __name__ == '__main__':
    main()
