#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
***************************************************************************
    01_baseCreate.py
    ---------------------
    Date                 : June 2019
    Copyright            : (C) 2019-2019 La Rochelle,
                           http://www.ville-larochelle.fr
***************************************************************************
*                                                                         *
*   This program is free software; you can redistribute it and/or modify  *
*   it under the terms of the GNU General Public License as published by  *
*   the Free Software Foundation; either version 2 of the License, or     *
*   (at your option) any later version.                                   *
*                                                                         *
***************************************************************************
"""

__author__ = 'Frédéric Garel'
__date__ = 'June 2019'
__copyright__ = '(C) 2019-2019 La Rochelle, http://www.ville-larochelle.fr'

# This will get replaced with a git SHA1 when you do a git archive

__revision__ = '$Format:%H$'


u""" Initialisation d'une base de données.

Initialisation d'une base de données.

"""

from database import database
from database import parametresConnexion

#import psycopg2
#from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT # <-- ADD THIS LINE


def main():
    u""" Fonction principale. """
    mesparametres = parametresConnexion.ParametresConnexion()
    maconnexion = database.Database(mesparametres)
    maconnexion.do_all()


if __name__ == '__main__':
    main()
