#!/usr/bin/env python3
# coding=utf8
# the above tag defines encoding for this document and is for Python 2.x compatibility

# Utilisation du site
# https://regex101.com/codegen?language=python

import re

# Dans le fichier template sql/03_init_from_rtge.sql
# la chaine
# CDA-46-ppppp-qqqqq-AA-B-CC
# est a remplacer par
# CDA-46-00197-01045-16-B-22

regex_01_search  = r"CDA-46-ppppp-qqqqq-AA-B-CC"
regex_01_replace = r"CDA-46-00197-01045-16-B-22"
regex_01_replace = r"CDA-46-00197-01045-16-C-24"
regex_01_replace = r"CDA_PCRS_EXPORT"



with open('sql/03_init_from_rtge.sql') as file_input:
    texte_00 = file_input.read()
    #print(read_data)
    with open('sql/04_init_from_rtge.sql', 'w') as file_output:
        texte_01 = re.sub(regex_01_search,
                         regex_01_replace,
                         texte_00)
        file_output.write(texte_01)
        #print(nouveau_texte)
file_input.closed
file_output.closed
