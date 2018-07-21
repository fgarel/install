#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
***************************************************************************
    02_casePrepare.py
    ---------------------
    Date                 : January 2018
    Copyright            : (C) 2018-2018 La Rochelle,
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
__date__ = 'January 2018'
__copyright__ = '(C) 2018-2018 La Rochelle, http://www.ville-larochelle.fr'

# This will get replaced with a git SHA1 when you do a git archive

__revision__ = '$Format:%H$'


# Lancement de la creation d'une case
# ~/Documents/install/pcrs/bin/case/case.py

from database import database
from database import parametresConnexion


def main():
    u""" Fonction principale. """
    print('Lancement de la creation d une case')
    print('# ~/Documents/install/source/pcrs/bin/case/case.py')
    print('#')
    print('# Les fichiers resultats de ce script sont :')
    print('vi ~/Documents/install/source/pcrs/bin/sql/03_empriseEchangePCRSInsert.sql')
    print('vi ~/Documents/install/source/geogig/bin/05_flowParameters.sh')
    # mesparametres = parametresConnexion.ParametresConnexion()
    # maconnexion = database.Database(mesparametres)
    # maconnexion.do_all()


if __name__ == '__main__':
    main()
