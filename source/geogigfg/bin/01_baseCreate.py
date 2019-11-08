#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
***************************************************************************
    01_baseCreate.py
    ---------------------
    Date                 : August 2019
    Copyright            : (C) 2018-2019 La Rochelle,
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
__date__ = 'August 2019'
__copyright__ = '(C) 2018-2019 La Rochelle, http://www.ville-larochelle.fr'

# This will get replaced with a git SHA1 when you do a git archive

__revision__ = '$Format:%H$'


# Script pour la creation d'une base de données :

from database import database
from database import parametresConnexion


def main():
    u""" Fonction principale. """
    mesparametres = parametresConnexion.ParametresConnexion()
    maconnexion = database.Database(mesparametres)
    maconnexion.do_first()


if __name__ == '__main__':
    main()
