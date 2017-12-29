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
# Script pour la creation des folios PCRS

import sys
from case import case


def main():
    u""" Fonction appelée par défaut. """
    #from ../database import parametresConnexion

    if len(sys.argv) > 5 or len(sys.argv)  == 4:
        raise 'Pas plus de quatre arguments.....'
    elif len(sys.argv) == 5:
        # Si on a quatre arguments, alors, c'est que les données initiales sont
        # les coordonnées d'un point (X et Y)
        # l'echelle du plan
        # le format de papier
        mygenerateur = case.GenerateurCaseFolio(float(sys.argv[3]), sys.argv[4])
        mygenerateur.casesFromXMYM(float(sys.argv[1]),float(sys.argv[2]))
    elif len(sys.argv) == 3:
        # Si on a deux arguments, alors, c'est que les données initiales sont
        # les coordonnées d'un point
        mygenerateur = case.GenerateurCaseFolio(200, "A1")
        mygenerateur.XM = sys.argv[1]
        mygenerateur.YM = sys.argv[2]
        mygenerateur.casesFromXMYM(float(sys.argv[1]),float(sys.argv[2]))
    elif len(sys.argv) == 2:
        # Si on a qu'un argument, alors, c'est que nous avons comme donnée initiale
        # le nom de la case
        mygenerateur = case.GenerateurCaseFolio()
        mygenerateur.casesFromName(sys.argv[1])
    elif len(sys.argv) == 1:
        mygenerateur = case.GenerateurCaseFolio(200, "A1")
        mygenerateur.casesFromXMYM(1379337.91,5225674.16)
        print('Test !')
        print('1 argument  : nom d une case')
        print('              CDA-46-00197-01045-21-A-18')
        print('              CDA-46-00197-01045-16-D-16')
        print('              CDA-46-00197-01045-16-D-16-D')
        print('2 arguments : X et Y d un point')
        print('              1379337.91 5225674.16')
        print('              1379700 5226110')
        print('4 arguments : nom d une case, echelle, format papier')
        print('              1379700 5226110 1000 A1')
        print('              1379700 5226110 200 A1')
        print('              1379700 5226110 200 A3')

    mygenerateur.sqlFileCreate(
        dbschema='a_pcrs',
        sqlfile='../../pcrs/bin/sql/03_empriseEchangePCRSInsert.sql')
    mygenerateur.geogigShellCreate(
        dbhost='localhost',
        dbport=5432,
        dbname='geogig',
        dbschema='pcrs',
        dbuser='fred',
        dbpass='fred',
        ggusername='Frédéric Garel',
        gguseremail='frederic.garel@ville-larochelle.fr',
        geogigfile='../../geogig/bin/05_flowParameters.sh')
    #print('CCC        = {}'.format(mygenerateur.CCC))
    #print('PP         = {}'.format(mygenerateur.PP))
    #print('separateur = {}'.format(mygenerateur.separateur))


if __name__ == '__main__':
    #import pdb; pdb.set_trace()
    main()
