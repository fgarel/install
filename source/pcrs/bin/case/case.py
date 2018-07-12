#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# script pour la creation des folios PCRS

#from database import database
#from database import parametresConnection
import sys
import math
import datetime
import os
import stat
# les deux derniers imports, c'est
# pour rendre le script executable...
# https://stackoverflow.com/questions/12791997/how-do-you-do-a-simple-chmod-x-from-within-python

class GenerateurCaseFolio(object):

    u""" Cette classe correspond à un generateur.

    La classe fournit :
    - une fonction qui genère une instruction sql à partir d'une coordonnée
    - une fonction qui genère une instruction sql à partir d'un nom de case
    """

    def __init__(self, echelle=200, format='A1'):
        u""" Fonction lancée au moment de l'instanciation. """
        self.CCC = "CDA"
        self.PP = "46"
        self.separateur = "-"

        if (echelle == 10000 and format == "A1"):
            self.format = "010000_A1_07000_05000"
        elif (echelle == 5000 and format == "A1"):
            self.format = "005000_A1_03500_02500"
        elif (echelle == 2000 and format == "A1"):
            self.format = "002000_A1_01400_01000"
        elif (echelle == 1000 and format == "A1"):
            self.format = "001000_A1_00700_00500"
        elif (echelle == 500 and format == "A1"):
            self.format = "000500_A1_00350_00250"
        elif (echelle == 200 and format == "A1"):
            self.format = "000200_A1_00140_00100"
        elif (echelle == 200 and format == "A3"):
            self.format = "000200_A3_00070_00050"
        else:
            self.format = "000200_A1_00140_00100"

        # self.format = "010000_A1_07000_05000"
        # self.format = "005000_A1_03500_02500"
        # self.format = "002000_A1_01400_01000"
        # self.format = "001000_A1_00700_00500"
        # self.format = "000500_A1_00350_00250"
        # self.format = "000200_A1_00140_00100"
        # self.format = "000200_A3_00070_00050"
        self.datePublication = datetime.datetime.now().strftime("%Y-%m-%d")
        self.gestionnaire = '05'
        self.type = '03'
        self.dictDiviseEn04 = { '0,1': 'A', '1,1': 'B',
                                '0,0': 'C', '1,0': 'D'}
        self.dictDiviseEn25 = { '0,4': '01', '1,4': '02', '2,4': '03', '3,4': '04', '4,4': '05',
                                '0,3': '06', '1,3': '07', '2,3': '08', '3,3': '09', '4,3': '10',
                                '0,2': '11', '1,2': '12', '2,2': '13', '3,2': '14', '4,2': '15',
                                '0,1': '16', '1,1': '17', '2,1': '18', '3,1': '19', '4,1': '20',
                                '0,0': '21', '1,0': '22', '2,0': '23', '3,0': '24', '4,0': '25'}
        self.case_010000_A1_07000_05000 = "LL-ppppp-qqqqq"
        self.case_005000_A1_03500_02500 = "LL-ppppp-qqqqq-A"
        self.case_002000_A1_01400_01000 = "LL-ppppp-qqqqq-AA"
        self.case_001000_A1_00700_00500 = "LL-ppppp-qqqqq-AA-B"
        self.case_000500_A1_00350_00250 = "LL-ppppp-qqqqq-AA-B-C"
        self.case_000200_A1_00140_00100 = "LL-ppppp-qqqqq-AA-B-CC"
        self.case_000200_A3_00070_00050 = "LL-ppppp-qqqqq-AA-B-CC-D"
        self.ppppp = 0
        self.p002000 = 0
        self.p001000 = 0
        self.p000200 = 0
        self.p000200A3 = 0
        self.qqqqq = 0
        self.q002000 = 0
        self.q001000 = 0
        self.q000200 = 0
        self.q000200A3 = 0
        self.XM = 0
        self.YM = 0

    def geomFromXY(self, xBasGauche, yBasGauche, pasX, pasY):
        u""" """
        return \
            """st_multi(
                      st_geomfromtext('POLYGON(({X1} {Y1}, {X2} {Y2}, {X3} {Y3}, {X4} {Y4}, {X1} {Y1}))', 3946)
                  )""".format(X1 = xBasGauche,
                        Y1 = yBasGauche,
                        X2 = xBasGauche,
                        Y2 = yBasGauche + pasY,
                        X3 = xBasGauche + pasX,
                        Y3 = yBasGauche + pasY,
                        X4 = xBasGauche + pasX,
                        Y4 = yBasGauche)


    def casesFromXMYM(self, XM, YM):
        u""" """
        # Pour les cases au 1/10000ème
        self.ppppp = '{:0>5}'.format(int(XM // 7000))
        self.qqqqq = '{:0>5}'.format(int(YM // 5000))
        self.case_010000_A1_07000_05000 = self.CCC + self.separateur + self.PP + self.separateur + self.ppppp + self.separateur + self.qqqqq
        self.geom_010000_A1_07000_05000 = self.geomFromXY(int(self.ppppp) * 7000,
                                                          int(self.qqqqq) * 5000,
                                                          7000,
                                                          5000)
        #print("case_010000_A1_07000_05000 = {}".format(self.case_010000_A1_07000_05000))
        #print("geom_010000_A1_07000_05000 = {}".format(self.geom_010000_A1_07000_05000))
        self.restex010000 = round(XM % 7000, 8)
        self.restey010000 = round(YM % 5000, 8)
        ##print('10000 p = {}, q = {}, d = {}, e = {}'.format(self.ppppp, self.qqqqq, self.restex010000, self.restey010000))

        # Pour les cases au 1/5000ème
        self.p005000 = '{:0>1}'.format(int(self.restex010000 // 3500))
        self.q005000 = '{:0>1}'.format(int(self.restey010000 // 2500))
        self.A = "{}".format(self.dictDiviseEn04[self.p005000 + "," + self.q005000])
        self.case_005000_A1_03500_02500 = self.case_010000_A1_07000_05000 + self.separateur + self.A
        self.geom_005000_A1_03500_02500 = self.geomFromXY(int(self.ppppp) * 7000 +
                                                          int(self.p005000) * 3500,
                                                          int(self.qqqqq) * 5000 +
                                                          int(self.q005000) * 2500,
                                                          3500,
                                                          2500)
        #print("case_005000_A1_03500_02500 = {}".format(self.case_005000_A1_03500_02500))
        #print("geom_005000_A1_03500_02500 = {}".format(self.geom_005000_A1_03500_02500))

        # Pour les cases au 1/2000ème
        self.p002000 = '{:0>1}'.format(int(self.restex010000 // 1400))
        self.q002000 = '{:0>1}'.format(int(self.restey010000 // 1000))
        self.AA = "{}".format(self.dictDiviseEn25[self.p002000 + "," + self.q002000])
        self.case_002000_A1_01400_01000 = self.case_010000_A1_07000_05000 + self.separateur + self.AA
        self.geom_002000_A1_01400_01000 = self.geomFromXY(int(self.ppppp) * 7000 +
                                                          int(self.p002000) * 1400,
                                                          int(self.qqqqq) * 5000 +
                                                          int(self.q002000) * 1000,
                                                          1400,
                                                          1000)
        #print("case_002000_A1_01400_01000 = {}".format(self.case_002000_A1_01400_01000))
        #print("geom_002000_A1_01400_01000 = {}".format(self.geom_002000_A1_01400_01000))
        self.restex002000 = round(float(self.restex010000) % 1400, 8)
        self.restey002000 = round(float(self.restey010000) % 1000, 8)
        ##print('02000 p = {}, q = {}, d = {}, e = {}'.format(self.p002000, self.q002000, self.restex002000, self.restey002000))

        # Pour les cases au 1/1000ème
        self.p001000 = '{:0>1}'.format(int(self.restex002000 // 700))
        self.q001000 = '{:0>1}'.format(int(self.restey002000 // 500))
        self.B = "{}".format(self.dictDiviseEn04[self.p001000 + "," + self.q001000])
        self.case_001000_A1_00700_00500 = self.case_002000_A1_01400_01000 + self.separateur + self.B
        self.geom_001000_A1_00700_00500 = self.geomFromXY(int(self.ppppp) * 7000 +
                                                          int(self.p002000) * 1400 +
                                                          int(self.p001000) * 700,
                                                          int(self.qqqqq) * 5000 +
                                                          int(self.q002000) * 1000 +
                                                          int(self.q001000) * 500,
                                                          700,
                                                          500)
        #print("case_001000_A1_00700_00500 = {}".format(self.case_001000_A1_00700_00500))
        #print("geom_001000_A1_00700_00500 = {}".format(self.geom_001000_A1_00700_00500))
        self.restex001000 = round(float(self.restex002000) % 700, 8)
        self.restey001000 = round(float(self.restey002000) % 500, 8)
        ##print('01000 p = {}, q = {}, d = {}, e = {}'.format(self.p001000, self.q001000, self.restex001000, self.restey001000))

        # Pour les cases au 1/500ème
        self.p000500 = '{:0>1}'.format(int(self.restex001000 // 350))
        self.q000500 = '{:0>1}'.format(int(self.restey001000 // 250))
        self.C = "{}".format(self.dictDiviseEn04[self.p000500 + "," + self.q000500])
        self.case_000500_A1_00350_00250 = self.case_001000_A1_00700_00500 + self.separateur + self.C
        self.geom_000500_A1_00350_00250 = self.geomFromXY(int(self.ppppp) * 7000 +
                                                          int(self.p002000) * 1400 +
                                                          int(self.p001000) * 700 +
                                                          int(self.p000500) * 350,
                                                          int(self.qqqqq) * 5000 +
                                                          int(self.q002000) * 1000 +
                                                          int(self.q001000) * 500 +
                                                          int(self.q000500) * 250,
                                                          350,
                                                          250)
        #print("case_000500_A1_00350_00250 = {}".format(self.case_000500_A1_00350_00250))
        #print("geom_000500_A1_00350_00250 = {}".format(self.geom_000500_A1_00350_00250))

        # Pour les cases au 1/200ème
        self.p000200 = '{:0>1}'.format(int(self.restex001000 // 140))
        self.q000200 = '{:0>1}'.format(int(self.restey001000 // 100))
        self.CC = "{}".format(self.dictDiviseEn25[self.p000200 + "," + self.q000200])
        self.case_000200_A1_00140_00100 = self.case_001000_A1_00700_00500 + self.separateur + self.CC
        self.geom_000200_A1_00140_00100 = self.geomFromXY(int(self.ppppp) * 7000 +
                                                          int(self.p002000) * 1400 +
                                                          int(self.p001000) * 700 +
                                                          int(self.p000200) * 140,
                                                          int(self.qqqqq) * 5000 +
                                                          int(self.q002000) * 1000 +
                                                          int(self.q001000) * 500 +
                                                          int(self.q000200) * 100,
                                                          140,
                                                          100)
        #print("case_000200_A1_00140_00100 = {}".format(self.case_000200_A1_00140_00100))
        #print("geom_000200_A1_00140_00100 = {}".format(self.geom_000200_A1_00140_00100))
        self.restex000200 = round(float(self.restex001000) % 140, 8)
        self.restey000200 = round(float(self.restey001000) % 100, 8)
        ##print('00200 p = {}, q = {}, d = {}, e = {}'.format(self.p000200, self.q000200, self.restex000200, self.restey000200))

        # Pour les cases au 1/200ème A3
        self.p000200A3 = '{:0>1}'.format(int(self.restex000200 // 70))
        self.q000200A3 = '{:0>1}'.format(int(self.restey000200 // 50))
        self.D = "{}".format(self.dictDiviseEn04[self.p000200A3 + "," + self.q000200A3])
        self.case_000200_A3_00070_00050 = self.case_000200_A1_00140_00100 + self.separateur + self.D
        self.geom_000200_A3_00070_00050 = self.geomFromXY(int(self.ppppp) * 7000 +
                                                          int(self.p002000) * 1400 +
                                                          int(self.p001000) * 700 +
                                                          int(self.p000200) * 140 +
                                                          int(self.p000200A3) * 70,
                                                          int(self.qqqqq) * 5000 +
                                                          int(self.q002000) * 1000 +
                                                          int(self.q001000) * 500 +
                                                          int(self.q000200) * 100 +
                                                          int(self.q000200A3) * 50,
                                                          70,
                                                          50)
        #print("case_000200_A3_00070_00050 = {}".format(self.case_000200_A3_00070_00050))
        #print("geom_000200_A3_00070_00050 = {}".format(self.geom_000200_A3_00070_00050))
        self.restex000200A3 = round(float(self.restex000200) % 70, 8)
        self.restey000200A3 = round(float(self.restey000200) % 50, 8)
        #print('00200A3 p = {}, q = {}, d = {}, e = {}'.format(self.p000200A3, self.q000200A3, self.restex000200A3, self.restey000200A3))
        return

    def casesFromName(self, case):
        u""" """
        #regex_ppppp = r"(...)-(..)-(.....)-(.....)"
        self.ppppp = case[7:12]
        self.qqqqq = case[13:18]
        #print(self.ppppp, self.qqqqq)
        if len(case)==18:
            self.XM = int(self.ppppp) * 7000
            self.YM = int(self.qqqqq) * 5000
            self.format = "010000_A1_07000_05000"
        elif len(case)==20:
            self.A = case[19]
            for cle, valeur in self.dictDiviseEn04.items():
                if valeur == self.A:
                    self.p005000,self.q005000 = cle.split(',')
            self.XM = int(self.ppppp) * 7000 + int(self.p005000) * 3500
            self.YM = int(self.qqqqq) * 5000 + int(self.q005000) * 2500
            self.format = "005000_A1_03500_02500"
        elif len(case)==21:
            self.AA = case[19:21]
            #print(case, self.AA)
            for cle, valeur in self.dictDiviseEn25.items():
                if valeur == self.AA:
                    self.p002000,self.q002000 = cle.split(',')
                    #print(self.p002000, self.q002000)
            self.XM = int(self.ppppp) * 7000 + int(self.p002000) * 1400
            self.YM = int(self.qqqqq) * 5000 + int(self.q002000) * 1000
            self.format = "002000_A1_01400_01000"
        elif len(case)==23:
            self.AA = case[19:21]
            self.B = case[22]
            for cle, valeur in self.dictDiviseEn25.items():
                if valeur == self.AA:
                    self.p002000,self.q002000 = cle.split(',')
                    #print(self.p002000, self.q002000)
            for cle, valeur in self.dictDiviseEn04.items():
                if valeur == self.B:
                    self.p001000,self.q001000 = cle.split(',')
                    #print(self.p001000, self.q001000)
            self.XM = int(self.ppppp) * 7000 + int(self.p002000) * 1400 + int(self.p001000) * 700
            self.YM = int(self.qqqqq) * 5000 + int(self.q002000) * 1000 + int(self.q001000) * 500
            self.format = "001000_A1_00700_00500"
        elif len(case)==25:
            self.AA = case[19:21]
            self.B = case[22]
            self.C = case[24]
            for cle, valeur in self.dictDiviseEn25.items():
                if valeur == self.AA:
                    self.p002000,self.q002000 = cle.split(',')
                    #print(self.p002000, self.q002000)
            for cle, valeur in self.dictDiviseEn04.items():
                if valeur == self.B:
                    self.p001000,self.q001000 = cle.split(',')
                    #print(self.p001000, self.q001000)
            for cle, valeur in self.dictDiviseEn04.items():
                if valeur == self.C:
                    self.p000500,self.q000500 = cle.split(',')
                    #print(self.p000500, self.q000500)
            self.XM = int(self.ppppp) * 7000 + int(self.p002000) * 1400 + int(self.p001000) * 700 + int(self.p000500) * 350
            self.YM = int(self.qqqqq) * 5000 + int(self.q002000) * 1000 + int(self.q001000) * 500 + int(self.q000500) * 250
            self.format = "000500_A1_00350_00250"
        elif len(case)==26:
            self.AA = case[19:21]
            self.B = case[22]
            self.CC = case[24:26]
            #print(self.CC)
            for cle, valeur in self.dictDiviseEn25.items():
                if valeur == self.AA:
                    self.p002000,self.q002000 = cle.split(',')
                    #print(self.p002000, self.q002000)
            for cle, valeur in self.dictDiviseEn04.items():
                if valeur == self.B:
                    self.p001000,self.q001000 = cle.split(',')
                    #print(self.p001000, self.q001000)
            for cle, valeur in self.dictDiviseEn25.items():
                if valeur == self.CC:
                    self.p000200,self.q000200 = cle.split(',')
                    #print(self.p000200, self.q000200)
            self.XM = int(self.ppppp) * 7000 + int(self.p002000) * 1400 + int(self.p001000) * 700 + int(self.p000200) * 140
            self.YM = int(self.qqqqq) * 5000 + int(self.q002000) * 1000 + int(self.q001000) * 500 + int(self.q000200) * 100
            self.format = "000200_A1_00140_00100"
        elif len(case)==28:
            self.AA = case[19:21]
            self.B = case[22]
            self.CC = case[24:26]
            self.D = case[27]
            for cle, valeur in self.dictDiviseEn25.items():
                if valeur == self.AA:
                    self.p002000,self.q002000 = cle.split(',')
                    #print(self.p002000, self.q002000)
            for cle, valeur in self.dictDiviseEn04.items():
                if valeur == self.B:
                    self.p001000,self.q001000 = cle.split(',')
                    #print(self.p001000, self.q001000)
            for cle, valeur in self.dictDiviseEn25.items():
                if valeur == self.CC:
                    self.p000200,self.q000200 = cle.split(',')
                    #print(self.p000200, self.q000200)
            for cle, valeur in self.dictDiviseEn04.items():
                if valeur == self.D:
                    self.p000200A3,self.q000200A3 = cle.split(',')
                    #print(self.p000200A3, self.q000200A3)
            self.XM = int(self.ppppp) * 7000 + int(self.p002000) * 1400 + int(self.p001000) * 700 + int(self.p000200) * 140 + int(self.p000200A3) * 70
            self.YM = int(self.qqqqq) * 5000 + int(self.q002000) * 1000 + int(self.q001000) * 500 + int(self.q000200) * 100 + int(self.q000200A3) * 50
            self.format = "000200_A3_00070_00050"
        #print('XM = {}, YM =  {}'.format(self.XM, self.YM))
        self.casesFromXMYM(self.XM, self.YM)


    def updateCaseGeom(self):
        u""" """
        if (self.format == "010000_A1_07000_05000"):
            self.case = self.case_010000_A1_07000_05000
            self.geom = self.geom_010000_A1_07000_05000
        elif (self.format == "005000_A1_03500_02500"):
            self.case = self.case_005000_A1_03500_02500
            self.geom = self.geom_005000_A1_03500_02500
        elif (self.format == "002000_A1_01400_01000"):
            self.case = self.case_002000_A1_01400_01000
            self.geom = self.geom_002000_A1_01400_01000
        elif (self.format == "001000_A1_00700_00500"):
            self.case = self.case_001000_A1_00700_00500
            self.geom = self.geom_001000_A1_00700_00500
        elif (self.format == "000500_A1_00350_00250"):
            self.case = self.case_000500_A1_00350_00250
            self.geom = self.geom_000500_A1_00350_00250
        elif (self.format == "000200_A1_00140_00100"):
            self.case = self.case_000200_A1_00140_00100
            self.geom = self.geom_000200_A1_00140_00100
        elif (self.format == "000200_A3_00070_00050"):
            self.case = self.case_000200_A3_00070_00050
            self.geom = self.geom_000200_A3_00070_00050

    def sqlFileCreate(self, dbschema, sqlfile):
        u""" """
        self.updateCaseGeom()

        self.sqlfileraw = open(sqlfile,'w')

        print("""
        INSERT INTO origine."EmpriseEchangePCRS"(
                                    complement,
                                    "datePublication",
                                    gestionnaire,
                                    type,
                                    geometrie)
            select
              '{case}' as "complement",
              date '{date}' as "datePublication",
              '{gestionnaire}' as "gestionnaire",
              '{type}' as "type",
              {geom} as geometrie;""".format(case=self.case,
                                             date=self.datePublication,
                                             gestionnaire=self.gestionnaire,
                                             type=self.type,
                                             geom=self.geom))
        self.sqlfileraw.write("""
        INSERT INTO "{schema}"."EmpriseEchangePCRS"(
                                    complement,
                                    "datePublication",
                                    gestionnaire,
                                    type,
                                    geometrie)
            select
              '{case}' as "complement",
              date '{date}' as "datePublication",
              '{gestionnaire}' as "gestionnaire",
              '{type}' as "type",
              {geom} as geometrie;""".format(schema=dbschema,
                                             case=self.case,
                                             date=self.datePublication,
                                             gestionnaire=self.gestionnaire,
                                             type=self.type,
                                             geom=self.geom))
        self.sqlfileraw.close()
        return

    def geogigShellCreate(self,
                          dbhost='localhost',
                          dbport=5432,
                          dbname='geogig',
                          dbschema='pcrs',
                          dbuser='',
                          dbpass='',
                          ggusername='',
                          gguseremail='',
                          geogigfile=''):
        u""" """

        self.updateCaseGeom()
        self.geogigfileraw = open(geogigfile,'w')
        self.geogigfileraw.write("#!/bin/sh\n")
        self.geogigfileraw.write("\n")
        self.geogigfileraw.write("""
        DBHOST_ORIGINE={dbhost}
        DBPORT_ORIGINE={dbport}
        DBNAME_ORIGINE=sandbox
        DBSCHE_ORIGINE=a_pcrs
        DBUSER_ORIGINE={dbuser}
        DBPASS_ORIGINE={dbpass}

        DBHOST_CENTRAL={dbhost}
        DBPORT_CENTRAL={dbport}
        DBNAME_CENTRAL={dbname}
        DBSCHE_CENTRAL={dbschema}
        DBREPO_CENTRAL={dbrepo}
        DBUSER_CENTRAL={dbuser}
        DBPASS_CENTRAL={dbpass}

        DBHOST_LOCAL={dbhost}
        DBPORT_LOCAL={dbport}
        DBNAME_LOCAL=pcrs
        DBSCHE_LOCAL=user_01
        DBREPO_LOCAL=case
        DBUSER_LOCAL={dbuser}
        DBPASS_LOCAL={dbpass}

        GGUSER_NAME="{ggusername}"
        GGUSER_EMAIL="{gguseremail}"

        REPO_CENTRAL_ONE="postgresql://$DBHOST_CENTRAL:$DBPORT_CENTRAL/$DBNAME_CENTRAL/$DBSCHE_CENTRAL/$DBREPO_CENTRAL?user=$DBUSER_CENTRAL&password=$DBPASS_CENTRAL"
        REPO_CENTRAL_MULTI="postgresql://$DBHOST_CENTRAL:$DBPORT_CENTRAL/$DBNAME_CENTRAL/$DBSCHE_CENTRAL?user=$DBUSER_CENTRAL&password=$DBPASS_CENTRAL"
        REPO_LOCAL_ONE="postgresql://$DBHOST_LOCAL:$DBPORT_LOCAL/$DBNAME_LOCAL/$DBSCHE_LOCAL/$DBREPO_LOCAL?user=$DBUSER_LOCAL&password=$DBPASS_LOCAL"
        REPO_LOCAL_MULTI="postgresql://$DBHOST_LOCAL:$DBPORT_LOCAL/$DBNAME_LOCAL/$DBSCHE_LOCAL?user=$DBUSER_LOCAL&password=$DBPASS_LOCAL"

        REPO_PORT_CENTRAL_ONE=8181
        REPO_PORT_CENTRAL_MULTI=8182
        REPO_PORT_LOCAL_ONE=8183
        REPO_PORT_LOCAL_MULTI=8184

        BRANCHE_MASTER='master_diffusionAuPublic'
        BRANCHE_DEVELOP='develop_miseAJourInterne'
        BRANCHE_RELEASE_1='release_preparationAvantDiffusion/1'
        BRANCHE_FEATURE_1='feature_misaAjourImportanteProjetExterne/1'
        BRANCHE_HOTFIX_1='hotfix_modifRapide/1'

        """.format(dbhost=dbhost,
                   dbport=dbport,
                   dbname=dbname,
                   dbschema=dbschema,
                   dbrepo=self.case,
                   dbuser=dbuser,
                   dbpass=dbpass,
                   ggusername=ggusername,
                   gguseremail=gguseremail))
        self.geogigfileraw.close()

        # pour rendre le script executable...
        # https://stackoverflow.com/questions/12791997/how-do-you-do-a-simple-chmod-x-from-within-python
        st = os.stat(geogigfile)
        os.chmod(geogigfile, st.st_mode | stat.S_IEXEC)

        return

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
        mygenerateur = GenerateurCaseFolio(float(sys.argv[3]), sys.argv[4])
        mygenerateur.casesFromXMYM(float(sys.argv[1]),float(sys.argv[2]))
    elif len(sys.argv) == 3:
        # Si on a deux arguments, alors, c'est que les données initiales sont
        # les coordonnées d'un point
        mygenerateur = GenerateurCaseFolio(200, "A1")
        mygenerateur.XM = sys.argv[1]
        mygenerateur.YM = sys.argv[2]
        mygenerateur.casesFromXMYM(float(sys.argv[1]),float(sys.argv[2]))
    elif len(sys.argv) == 2:
        # Si on a qu'un argument, alors, c'est que nous avons comme donnée initiale
        # le nom de la case
        mygenerateur = GenerateurCaseFolio()
        mygenerateur.casesFromName(sys.argv[1])
    elif len(sys.argv) == 1:
        mygenerateur = GenerateurCaseFolio(200, "A1")
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
        sqlfile='../../../pcrs/bin/sql/03_empriseEchangePCRSInsert.sql')
    mygenerateur.geogigShellCreate(
        dbhost='localhost',
        dbport=5432,
        dbname='geogig',
        dbschema='pcrs',
        dbuser='fred',
        dbpass='fred',
        ggusername='Frédéric Garel',
        gguseremail='frederic.garel@ville-larochelle.fr',
        geogigfile='../../../geogig/bin/05_flowParameters.sh')
    #print('CCC        = {}'.format(mygenerateur.CCC))
    #print('PP         = {}'.format(mygenerateur.PP))
    #print('separateur = {}'.format(mygenerateur.separateur))


if __name__ == '__main__':
    #import pdb; pdb.set_trace()
    main()
