#!/usr/bin/env python3
# -*- coding: utf-8 -*-

#import csv
#with open('test.dxf', 'r') as inputfile:
#with open("/home/fred/f/CARTOGRAPHIE/Plans/1_Topo_Existants/4_Plans_conformes_CC46/Ottawa-rochepierre-créches/100097_Rue d\'ottawa-Rue de Rochepierre_Topo 2016.dxf", 'r') as inputfile:
#outputfile_01_HEADER = open('dataout_01_HEADER.txt', 'w')

#from dictionnaireOrdonne import DictionnaireOrdonne
#from string import Template


with open("original.dxf", 'r') as inputfile:
    #with open('dataout.txt', 'w') as outputfile:
    with open('dataout.txt', 'w') as outputfile:
        #line = inputfile.read()
        #csvwriter = csv.writer(csvoutputfile, delimiter='-',lineterminator='\n')
        #print(line)
        #outputfile.write(line)
        compteur_ligne=0
        ligne_en_stock=''
        section_en_cours='HEADER'
        for line in inputfile:
            compteur_ligne += 1
            #encoded_1 = line.encode()
            encoded_2 = line.encode('latin1').decode('latin1')[:-1]
            #encoded_3 = line.encode('latin1').decode('utf-8')
            #encoded_4 = line.encode('utf-8').decode('latin1')
            #encoded_5 = line.encode('utf-8').decode('utf-8')
            #decoded = line.decode('utf-8')
            #print(compteur_ligne, encoded_2)
            #outputfile.write(compteur_ligne, line)

            if (compteur_ligne%2 == 0):
                ##print(compteur_ligne, ligne_en_stock, encoded_2)
                #outputfile.write('{0}£{1}£{2}\n'.format(compteur_ligne, ligne_en_stock, encoded_2))
                outputfile.write('{0}£{1}\n'.format(ligne_en_stock, encoded_2))
                #csvwriter = csv.writer(outputfile, delimiter='-',lineterminator='\n')
            else:
                ligne_en_stock = line[:-1]
        #    csvwriter.writerow(row)
    #       close csvoutputfile
    outputfile.close()
inputfile.close()


list_sections={'dataout_01_HEADER.txt': 'HEADER', \
               'dataout_02_CLASSES.txt': 'CLASSES', \
               'dataout_03_TABLES.txt': 'TABLES', \
               'dataout_04_BLOCKS.txt': 'BLOCKS', \
               'dataout_05_ENTITIES.txt': 'ENTITIES', \
               'dataout_06_OBJECTS.txt': 'OBJECTS'}


with open('dataout.txt', 'r') as inputfile:
    # dans l'ordre des fichers a écrire,
    # creation de deux listes
    cles_triees = sorted(list_sections.keys())
    valeurs_triees = []
    for cle in cles_triees:
        valeurs_triees.append(list_sections[cle])

    
    outputfile = open(cles_triees[0], 'w')
    ligne_sauvegardee = ''
    numero_ligne=0
    for line in inputfile:
        numero_ligne+=1
        code, valeur = line.split('£')
        valeur = valeur[:-1]

        if (ligne_sauvegardee == '' and valeur != 'EOF' and (code != '  0' or valeur != 'SECTION')):
            if numero_ligne>228800:
                #print('{0} {1}'.format(code, valeur))
                print(code, valeur)
            outputfile.write('{0}£{1}\n'.format(code, valeur))

        if (code == '  0' and valeur == 'SECTION'):
            outputfile.close()
            #print('attention : changement de section')
            ligne_sauvegardee = '{0}£{1}\n'.format(code, valeur)
            continue
            
        if (ligne_sauvegardee != '' and code == '  2' and valeur in valeurs_triees):
            #print('attention : changement de section 2 ')
            section_en_cours=valeur
            for cle in cles_triees:
                if list_sections[cle] == valeur:
                    outputfile = open(cle, 'w')
                    #print(ligne_sauvegardee)
                    outputfile.write(ligne_sauvegardee)
                    ligne_sauvegardee=''
                    #print('{0} {1}'.format(code, valeur))
                    outputfile.write('{0}£{1}\n'.format(code, valeur))
                    break
                
        if (code == '  0' and valeur == 'EOF'):
            outputfile.close()
    inputfile.close()
    #outputfile.close()


a = DictionnaireOrdonne(list_sections)
#list_sections=DictionnaireOrdonne( \
#               'HEADER'= 'dataout_01_HEADER.txt', \
#               'CLASSES'= 'dataout_02_CLASSES.txt', \
#               'TABLES'= 'dataout_03_TABLES.txt', \
#               'BLOCKS'= 'dataout_04_BLOCKS.txt', \
#               'ENTITIES'= 'dataout_05_ENTITIES.txt', \
#               'OBJECTS'= 'dataout_06_OBJECTS.txt')
#print(a)
#print(a.sort)