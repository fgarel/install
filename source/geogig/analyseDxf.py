#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# script pour l'analyse d'un fichier DXF et sa transformation
# en tables intégrables sous postgis
#
# la doc sur le dxf est ici :
# http://www.autodesk.com/techpubs/autocad/acadr14/dxf/dxf_reference.htm
# https://www.cs.cmu.edu/afs/cs/academic/class/15294-s15/lectures/dxf/dxf.pdf
# https://fr.wikipedia.org/wiki/Drawing_eXchange_Format
# https://fr.wikipedia.org/wiki/Open_Design_Alliance
# 
# 
# une ou deux librairies python :
#
# ezdxf pour lire, écrire, manipuler le dxf
# https://pypi.python.org/pypi/ezdxf
# http://pythonhosted.org/ezdxf/ 
# https://media.readthedocs.org/pdf/ezdxf/latest/ezdxf.pdf
#
# dxfgrabber pour lire le dxf
# https://pypi.python.org/pypi/dxfgrabber
# https://pythonhosted.org/dxfgrabber/
# https://media.readthedocs.org/pdf/dxfgrabber/latest/dxfgrabber.pdf
#
# dxfwrite pour ecrire :
# https://pypi.python.org/pypi/dxfwrite/
# http://pythonhosted.org/dxfwrite/
#
#
#
# with open("/home/fred/f/CARTOGRAPHIE/Plans/1_Topo_Existants/4_Plans_conformes_CC46/Ottawa-rochepierre-créches/100097_Rue d\'ottawa-Rue de Rochepierre_Topo 2016.dxf", 'r') as inputfile:
#

#
# 1ère partie de ce script
# ------------------------
# les lignes du dxf sont regroupées deux par deux
# en effet, une ligne impaire contient un code
# la ligne suivante, une ligne paire donc, contient la valeur
# on regroupe donc ces deux lignes pour obtenir un fichier
# qui aura pour chacune de ces lignes
# code, valeur


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




#
# 2ème partie de ce script
# ------------------------
# le fichier unique est ensuite decoupé en 6 parties
# en effet, un fichier dxf est structuré en 6 sections
# 


list_sections={'dataout_01_HEADER.txt': 'HEADER', \
               'dataout_02_CLASSES.txt': 'CLASSES', \
               'dataout_03_TABLES.txt': 'TABLES', \
               'dataout_04_BLOCKS.txt': 'BLOCKS', \
               'dataout_05_ENTITIES.txt': 'ENTITIES', \
               'dataout_06_OBJECTS.txt': 'OBJECTS'}


with open('dataout.txt', 'r') as inputfile:
    # dans l'ordre des fichiers a écrire,
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
                print(code, valeur)
            outputfile.write('{0}£{1}\n'.format(code, valeur))

        if (code == '  0' and valeur == 'SECTION'):
            outputfile.close()
            ligne_sauvegardee = '{0}£{1}\n'.format(code, valeur)
            continue
            
        if (ligne_sauvegardee != '' and code == '  2' and valeur in valeurs_triees):
            section_en_cours=valeur
            for cle in cles_triees:
                if list_sections[cle] == valeur:
                    outputfile = open(cle, 'w')
                    outputfile.write(ligne_sauvegardee)
                    ligne_sauvegardee=''
                    outputfile.write('{0}£{1}\n'.format(code, valeur))
                    break
                
        if (code == '  0' and valeur == 'EOF'):
            outputfile.close()
inputfile.close()


#
# 3ème partie de ce script
# ------------------------

# utilisation des librairies
import ezdxf

dwg = ezdxf.readfile("original.dxf")

modelspace = dwg.modelspace()
for e in modelspace:
    if e.dxftype() == 'LINE':
        #print("LINE on layer: %s\n" % e.dxf.layer)
        pass
        #print("start point: %s\n" % e.dxf.start)
        #print("end point: %s\n" % e.dxf.end)