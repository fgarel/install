#!/usr/bin/env python
# -*- coding: utf-8 -*-

u""" Definition des paramètres de connexion.

Paramètres de connexion à une base de données.

"""

#import psycopg2
#from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT # <-- ADD THIS LINE

class ParametresConnection(object):

    u""" Cette classe correspont aux paramètres de connexion. """

    def __init__(self):
        u""" Fonction lancée au moment de l'instanciation. """
        self.hostname = 'localhost'
        self.username = 'fred'
        self.password = 'fred'


def main():
    u""" Fonction appelée par défaut. """
    paramconnexion = ParametresConnection()

    print('hostname = {}'.format(paramconnexion.hostname))
    print('username = {}'.format(paramconnexion.username))
    print('password = {}'.format(paramconnexion.password))
    #print(connection)

if __name__ == '__main__':
    main()
