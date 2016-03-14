#!/usr/bin/env python3
# -*- coding: utf-8 -*-

#import csv
#with open('test.dxf', 'r') as inputfile:
#with open("/home/fred/f/CARTOGRAPHIE/Plans/1_Topo_Existants/4_Plans_conformes_CC46/Ottawa-rochepierre-créches/100097_Rue d\'ottawa-Rue de Rochepierre_Topo 2016.dxf", 'r') as inputfile:
outputfile_01_HEADER = open('dataout_01_HEADER.txt', 'w')

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
            encoded_2 = line.encode('latin1').decode('latin1').strip()
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
                ligne_en_stock = line.strip()
        #    csvwriter.writerow(row)
    #       close csvoutputfile
    outputfile.close()
inputfile.close()


list_sections={'HEADER': 'dataout_01_HEADER.txt', \
               'CLASSES': 'dataout_02_CLASSES.txt', \
               'TABLES': 'dataout_03_TABLES.txt', \
               'BLOCKS': 'dataout_04_BLOCKS.txt', \
               'ENTITIES': 'dataout_05_ENTITIES.txt', \
               'OBJECTS': 'dataout_06_OBJECTS.txt'}
with open('dataout.txt', 'r') as inputfile:
    section_en_cours=list_sections[0]
    list_sections.remove(section_en_cours)
    outputfile = open('dataout_01_HEADER.txt', 'w')
    for line in inputfile:
        code, valeur = line.split('£')
        valeur = valeur[:-1]
        if (code != 0 or valeur != 'SECTION'):
            #print('{0}'.format(line))
            print('{0} {1}'.format(code, valeur))
            outputfile.write('{0}£{1}\n'.format(code, valeur))
        elif (code == 0 and valeur == 'SECTION' and section_en_cours == ''):
            section_en_cours='HEADER'
            outputfile = open('dataout_01_HEADER.txt', 'w')
            print('-------------------------------HEADER')
        elif (code == 0 and valeur == 'SECTION' and section_en_cours == 'HEADER'):
            outputfile.close()
            section_en_cours='CLASSES'
            outputfile = open('dataout_02_CLASSES.txt', 'w')
            print('-------------------------------CLASSES')
        elif (code == 0 and valeur == 'SECTION' and section_en_cours == 'CLASSES'):
            outputfile.close()
            section_en_cours='TABLES'
            outputfile = open('dataout_03_TABLES.txt', 'w')
            print('-------------------------------TABLES')
        elif (code == 0 and valeur == 'SECTION' and section_en_cours == 'TABLES'):
            outputfile.close()
            section_en_cours='BLOCKS'
            outputfile = open('dataout_04_BLOCKS.txt', 'w')
            print('-------------------------------BLOCKS')
        elif (code == 0 and valeur == 'SECTION' and section_en_cours == 'BLOCKS'):
            outputfile.close()
            section_en_cours='ENTITIES'
            outputfile = open('dataout_05_ENTITIES.txt', 'w')
            print('-------------------------------ENTITIES')
        elif (code == 0 and valeur == 'SECTION' and section_en_cours == 'ENTITIES'):
            outputfile.close()
            section_en_cours='OBJECTS'
            outputfile = open('dataout_06_OBJECTS.txt', 'w')
            print('-------------------------------OBJECTS')
        elif (code == 0 and valeur == 'EOF' and section_en_cours == 'OBJECTS'):
            outputfile.close()
            print('-------------------------------EOF')
        #outputfile.write('{0}'.format(line))
    #outputfile.close()
inputfile.close()
#fic.close()
