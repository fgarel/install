#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# script pour le nettoyage des données :
# il y a des insertions systématiques dans la base de données origine
# le but de ce scrip est de générer
# les suppressions d'objets en fonction
# d'un scenario qui est entré sous la forme de
# dictionnaire



import sys

#
# ------------------------
#
acteurs=['CDA', 'Departement', 'DGFiP', 'erdf', 'SDE', 'SDEER', 'Soluris', 'VLR']

etapes=['Etape_01', 'Etape_02', 'Etape_03', 'Etape_04', 'Etape_05']

zones=['M11', 'M12', 'M13', 'M14', 'M15',
       'M21', 'M22', 'M23', 'M24', 'M25',
       'M31', 'M32', 'M33', 'M34', 'M35',
       'M41', 'M42', 'M43', 'M44', 'M45',
       'M51', 'M52', 'M53', 'M54', 'M55']

objets=['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS', 'PointCanevasPCRS', 'AffleurantSymbolePCRS', 'HaieEspaceVertPCRS', 'ArbreAlignementPCRS']

objet_identifiant={'EmprisePublicationPCRS': 'idEmprise',
                   'FacadePCRS': 'idObjet',
                   'BordurePCRS': 'idObjet',
                   'MurPCRS': 'idObjet',
                   'PointCanevasPCRS': 'idObjet',
                   'AffleurantSymbolePCRS': 'idAffleurant',
                   'HaieEspaceVertPCRS': 'idObjet',
                   'ArbreAlignementPCRS': 'idObjet'}

zones_levees={'CDA__Etape_01': ['M11'], \
              'CDA__Etape_02': ['M12', 'M21'], \
              'CDA__Etape_03': ['M13', 'M22', 'M31'], \
              'CDA__Etape_04': ['M14', 'M23', 'M32', 'M41'], \
              'CDA__Etape_05': ['M15', 'M24', 'M33', 'M42', 'M51'], \
              'Departement__Etape_01': ['M55'], \
              'Departement__Etape_02': ['M45', 'M54'], \
              'Departement__Etape_03': ['M35', 'M44', 'M53'], \
              'Departement__Etape_04': ['M25', 'M34', 'M43', 'M52'], \
              'Departement__Etape_05': ['M15', 'M24', 'M33', 'M42', 'M51'], \
              'DGFiP__Etape_01': ['M11', 'M12', 'M13', 'M14', 'M15', 'M21', 'M22', 'M23', 'M24', 'M25', 'M31', 'M32', 'M33', 'M34', 'M35', 'M41', 'M42', 'M43', 'M44', 'M45', 'M51', 'M52', 'M53', 'M54', 'M55'], \
              'DGFiP__Etape_02': ['M11', 'M12', 'M13', 'M14', 'M15', 'M21', 'M22', 'M23', 'M24', 'M25', 'M31', 'M32', 'M33', 'M34', 'M35', 'M41', 'M42', 'M43', 'M44', 'M45', 'M51', 'M52', 'M53', 'M54', 'M55'], \
              'DGFiP__Etape_03': ['M11', 'M12', 'M13', 'M14', 'M15', 'M21', 'M22', 'M23', 'M24', 'M25', 'M31', 'M32', 'M33', 'M34', 'M35', 'M41', 'M42', 'M43', 'M44', 'M45', 'M51', 'M52', 'M53', 'M54', 'M55'], \
              'DGFiP__Etape_04': ['M11', 'M12', 'M13', 'M14', 'M15', 'M21', 'M22', 'M23', 'M24', 'M25', 'M31', 'M32', 'M33', 'M34', 'M35', 'M41', 'M42', 'M43', 'M44', 'M45', 'M51', 'M52', 'M53', 'M54', 'M55'], \
              'DGFiP__Etape_05': ['M11', 'M12', 'M13', 'M14', 'M15', 'M21', 'M22', 'M23', 'M24', 'M25', 'M31', 'M32', 'M33', 'M34', 'M35', 'M41', 'M42', 'M43', 'M44', 'M45', 'M51', 'M52', 'M53', 'M54', 'M55'], \
              'erdf__Etape_01': ['M15'], \
              'erdf__Etape_02': ['M14', 'M25'], \
              'erdf__Etape_03': ['M13', 'M24', 'M35'], \
              'erdf__Etape_04': ['M12', 'M23', 'M34', 'M45'], \
              'erdf__Etape_05': ['M11', 'M22', 'M33', 'M44', 'M55'], \
              'SDE__Etape_01': ['M51'], \
              'SDE__Etape_02': ['M41', 'M52'], \
              'SDE__Etape_03': ['M42', 'M53'], \
              'SDE__Etape_04': ['M43', 'M54'], \
              'SDE__Etape_05': ['M44', 'M55'], \
              'SDEER__Etape_01': ['M55'], \
              'SDEER__Etape_02': ['M45', 'M54'], \
              'SDEER__Etape_03': ['M35', 'M44', 'M53'], \
              'SDEER__Etape_04': ['M25', 'M34', 'M43', 'M52'], \
              'SDEER__Etape_05': ['M15', 'M24'], \
              'Soluris__Etape_01': ['M11', 'M12', 'M13', 'M14', 'M15', 'M21', 'M22', 'M23', 'M24', 'M25', 'M31', 'M32', 'M33', 'M34', 'M35', 'M41', 'M42', 'M43', 'M44', 'M45', 'M51', 'M52', 'M53', 'M54', 'M55'], \
              'Soluris__Etape_02': ['M11', 'M12', 'M13', 'M14', 'M15', 'M21', 'M22', 'M23', 'M24', 'M25', 'M31', 'M32', 'M33', 'M34', 'M35', 'M41', 'M42', 'M43', 'M44', 'M45', 'M51', 'M52', 'M53', 'M54', 'M55'], \
              'Soluris__Etape_03': ['M11', 'M12', 'M13', 'M14', 'M15', 'M21', 'M22', 'M23', 'M24', 'M25', 'M31', 'M32', 'M33', 'M34', 'M35', 'M41', 'M42', 'M43', 'M44', 'M45', 'M51', 'M52', 'M53', 'M54', 'M55'], \
              'Soluris__Etape_04': ['M11', 'M12', 'M13', 'M14', 'M15', 'M21', 'M22', 'M23', 'M24', 'M25', 'M31', 'M32', 'M33', 'M34', 'M35', 'M41', 'M42', 'M43', 'M44', 'M45', 'M51', 'M52', 'M53', 'M54', 'M55'], \
              'Soluris__Etape_05': ['M11', 'M12', 'M13', 'M14', 'M15', 'M21', 'M22', 'M23', 'M24', 'M25', 'M31', 'M32', 'M33', 'M34', 'M35', 'M41', 'M42', 'M43', 'M44', 'M45', 'M51', 'M52', 'M53', 'M54', 'M55'], \
              'VLR__Etape_01': ['M31'], \
              'VLR__Etape_02': ['M21'], \
              'VLR__Etape_03': ['M11', 'M22'], \
              'VLR__Etape_04': ['M12'], \
              'VLR__Etape_05': ['M13', 'M31']}

objets_leves={'CDA__Etape_01': ['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS'], \
              'CDA__Etape_02': ['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS'], \
              'CDA__Etape_03': ['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS', 'ArbreAlignementPCRS'], \
              'CDA__Etape_04': ['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS', 'HaieEspaceVertPCRS', 'ArbreAlignementPCRS'], \
              'CDA__Etape_05': ['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS', 'HaieEspaceVertPCRS', 'ArbreAlignementPCRS'], \
              'Departement__Etape_01': ['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS'], \
              'Departement__Etape_02': ['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS'], \
              'Departement__Etape_03': ['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS', 'AffleurantSymbolePCRS'], \
              'Departement__Etape_04': ['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS', 'AffleurantSymbolePCRS', 'ArbreAlignementPCRS'], \
              'Departement__Etape_05': ['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS', 'AffleurantSymbolePCRS', 'ArbreAlignementPCRS'], \
              'DGFiP__Etape_01': ['EmprisePublicationPCRS', 'PointCanevasPCRS'], \
              'DGFiP__Etape_02': ['EmprisePublicationPCRS', 'PointCanevasPCRS'], \
              'DGFiP__Etape_03': ['EmprisePublicationPCRS', 'PointCanevasPCRS'], \
              'DGFiP__Etape_04': ['EmprisePublicationPCRS', 'PointCanevasPCRS'], \
              'DGFiP__Etape_05': ['EmprisePublicationPCRS', 'PointCanevasPCRS'], \
              'erdf__Etape_01': ['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS'], \
              'erdf__Etape_02': ['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS'], \
              'erdf__Etape_03': ['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS', 'HaieEspaceVertPCRS'], \
              'erdf__Etape_04': ['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS', 'PointCanevasPCRS', 'HaieEspaceVertPCRS'], \
              'erdf__Etape_05': ['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS', 'PointCanevasPCRS', 'HaieEspaceVertPCRS'], \
              'SDE__Etape_01': ['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS'], \
              'SDE__Etape_02': ['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS'], \
              'SDE__Etape_03': ['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS', 'PointCanevasPCRS'], \
              'SDE__Etape_04': ['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS', 'PointCanevasPCRS', 'AffleurantSymbolePCRS'], \
              'SDE__Etape_05': ['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS', 'PointCanevasPCRS', 'AffleurantSymbolePCRS'], \
              'SDEER__Etape_01': ['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS', 'PointCanevasPCRS', 'AffleurantSymbolePCRS'], \
              'SDEER__Etape_02': ['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS', 'PointCanevasPCRS', 'AffleurantSymbolePCRS', 'HaieEspaceVertPCRS'], \
              'SDEER__Etape_03': ['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS', 'PointCanevasPCRS', 'AffleurantSymbolePCRS', 'HaieEspaceVertPCRS', 'ArbreAlignementPCRS'], \
              'SDEER__Etape_04': ['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS', 'PointCanevasPCRS', 'AffleurantSymbolePCRS', 'HaieEspaceVertPCRS', 'ArbreAlignementPCRS'], \
              'SDEER__Etape_05': ['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS', 'PointCanevasPCRS', 'AffleurantSymbolePCRS', 'HaieEspaceVertPCRS', 'ArbreAlignementPCRS'], \
              'Soluris__Etape_01': ['EmprisePublicationPCRS'], \
              'Soluris__Etape_02': ['EmprisePublicationPCRS'], \
              'Soluris__Etape_03': ['EmprisePublicationPCRS'], \
              'Soluris__Etape_04': ['EmprisePublicationPCRS'], \
              'Soluris__Etape_05': ['EmprisePublicationPCRS'], \
              'VLR__Etape_01': ['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS', 'PointCanevasPCRS', 'AffleurantSymbolePCRS'], \
              'VLR__Etape_02': ['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS', 'PointCanevasPCRS', 'AffleurantSymbolePCRS', 'ArbreAlignementPCRS'], \
              'VLR__Etape_03': ['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS', 'PointCanevasPCRS', 'AffleurantSymbolePCRS', 'HaieEspaceVertPCRS', 'ArbreAlignementPCRS'], \
              'VLR__Etape_04': ['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS', 'PointCanevasPCRS', 'AffleurantSymbolePCRS', 'HaieEspaceVertPCRS', 'ArbreAlignementPCRS'], \
              'VLR__Etape_05': ['EmprisePublicationPCRS', 'FacadePCRS', 'BordurePCRS', 'MurPCRS', 'PointCanevasPCRS', 'AffleurantSymbolePCRS', 'HaieEspaceVertPCRS', 'ArbreAlignementPCRS']}

# dans l'ordre des fichiers a écrire,
# creation de deux listes
"""
cles_triees = sorted(zones_levees.keys())
liste_triee_zones_levees = []
for cle in cles_triees:
    liste_triee_zones_levees.append(zones_levees[cle])
cles_triees = sorted(objets_leves.keys())
liste_triee_objets_leves = []
for cle in cles_triees:
    liste_triee_objets_leves.append(objets_leves[cle])

#print(liste_triee_zones_levees)
#print(liste_triee_objets_leves)
"""

if (len(sys.argv) == 1):
    acteur_etape_courant='VLR__Etape_01'
else:
    acteur_etape_courant=sys.argv[1]

#print('len(sys.argv) = {0}'.format(len(sys.argv)))
#print('sys.argv[1] = {0}'.format(sys.argv[1]))
#print('acteur_etape_courant = {0}'.format(acteur_etape_courant))

with open('after_insert_2.sql', 'w') as outputfile:
    #outputfile = open(cles_triees[0], 'w')
    #ligne_sauvegardee = ''
    #numero_ligne=0
    for acteur in acteurs:
        for etape in etapes:
            acteur_etape = '{0}__{1}'.format(acteur, etape)
            if (acteur_etape == acteur_etape_courant):
                # tableaux complementaires
                zones_non_levees = []
                for zone in zones:
                    if zone not in zones_levees[acteur_etape]:
                        zones_non_levees.append(zone)
                objets_non_leves = []
                for objet in objets:
                    if objet not in objets_leves[acteur_etape]:
                        objets_non_leves.append(objet)
                #print('-- acteur_etape = {0}'.format(acteur_etape))
                outputfile.write('-- acteur_etape = {0}\n'.format(acteur_etape))
                # suppression des objets qui non pas été levés
                for objet in objets_non_leves:
                    #print('delete from "{0}"."{1}";'.format(acteur_etape, objet))
                    outputfile.write('delete from "{0}"."{1}";\n'.format(acteur_etape, objet))
                # et pour les objets leves, suppression des objets qui
                # ne sont pas dans une zone levee
                for objet in objets_leves[acteur_etape]:
                    for zone in zones_non_levees:
                        #print('delete * from "{0}"."{1}" where "{2}" like \'{3}%\';'.format(acteur_etape, objet, objet_identifiant[objet], zone))
                        outputfile.write('delete from "{0}"."{1}" where "{2}" like \'{3}%\';\n'.format(acteur_etape, objet, objet_identifiant[objet], zone))

outputfile.close()

