#!/usr/bin/env python3

#import csv
#with open('test.dxf', 'r') as inputfile:
#with open("/home/fred/f/CARTOGRAPHIE/Plans/1_Topo_Existants/4_Plans_conformes_CC46/Ottawa-rochepierre-créches/100097_Rue d\'ottawa-Rue de Rochepierre_Topo 2016.dxf", 'r') as inputfile:
with open("original.dxf", 'r') as inputfile:
    #with open('dataout.txt', 'w') as outputfile:
    with open('dataout.txt', 'w') as outputfile:
        #line = inputfile.read()
        #csvwriter = csv.writer(csvoutputfile, delimiter='-',lineterminator='\n')
        #print(line)
        #outputfile.write(line)
        compteur_ligne=0
        ligne_en_stock=''
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
                outputfile.write('{0}£{1}£{2}\n'.format(compteur_ligne, ligne_en_stock, encoded_2))
                #csvwriter = csv.writer(outputfile, delimiter='-',lineterminator='\n')
            else:
                ligne_en_stock = line.strip()
        #    csvwriter.writerow(row)
    #       close csvoutputfile
    outputfile.close()
inputfile.close()

#fic.close()
