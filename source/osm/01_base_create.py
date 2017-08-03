#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# script pour la creation d'une base de données :

from database import database
from database import parametresConnexion

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


    # Creation des roles / utilisateurs
    for dbuser, dbpass in maconnexion.dict_dbuser_dbpass.items():
        maconnexion.create_role(dbuser, dbpass)

    # Affectation des droits (niveau utilisateurs)
    for dbuser, listdroits in maconnexion.dict_dbuser_listdroits.items():
        for droit in listdroits:
            maconnexion.update_role(dbuser, droit)

    # Creation de la base de données
    for dbname, dbowner in maconnexion.dict_dbname_dbowner.items():
        maconnexion.create_database(dbname, dbowner)

    # Affectation des droits (niveau base de données)
    for dbname, dict_dbuser_listdroits in maconnexion.dict_dbname_dict_dbuser_listdroits.items():
        for dbuser, listdroits in dict_dbuser_listdroits.items():
            for droit in listdroits:
                maconnexion.update_database(dbname, dbuser, droit)

    # Creation des extensions
    for dbname, listextensions in maconnexion.dict_dbname_listextensions.items():
        #print('extension = {}'.format(extension))
        for extension in listextensions:
            maconnexion.create_extension(dbname, extension)

    # Creation des schemas
    for dbname, listschemas in maconnexion.dict_dbname_listschemas.items():
        for schema in listschemas:
            #print('schema = {}'.format(schema))
            maconnexion.create_schema(dbname, schema)

    # Affectation des droits (niveau schemas)
    for dbname, dict_schema_dict_dbuser_listdroits in maconnexion.dict_dbname_dict_schema_dict_dbuser_listdroits.items():
        for schema, dict_dbuser_listdroits in dict_schema_dict_dbuser_listdroits.items():
            for dbuser, listdroits in dict_dbuser_listdroits.items():
                for droit in listdroits:
                    maconnexion.update_schema(dbname, schema, dbuser, droit)
                    
    # Creation des tables
    for dbname, dict_schema_listtables in maconnexion.dict_dbname_dict_schema_listtables.items():
        for schema, listtables in dict_schema_listtables.items():
            for table in listtables:
                maconnexion.create_table(dbname, schema, table)

if __name__ == '__main__':
    main()
