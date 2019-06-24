#!/usr/bin/env python3
# -*- coding: utf-8 -*-

#
# Generated Tue Jun 18 18:09:03 2019 by generateDS.py version 2.32.0.
# Python 3.6.6 (default, Apr 15 2019, 17:23:34)  [GCC 8.3.0]
#
# Command line options:
#   ('-o', 'dtdict_api_v30.py')
#   ('-s', 'dtdict_appli1_v30.py')
#   ('--super', 'dtdict_api_v30')
#   ('--member-specs', 'dict')
#   ('--external-encoding', 'utf-8')
#   ('--export', 'write literal etree')
#
# Command line arguments:
#   XSD_3_0_20181120/XSD/schemaTeleservice_pad_3_0.xsd
#
# Command line:
#   /usr/local/bin/generateDS.py -o "dtdict_api_v30.py" -s "dtdict_appli1_v30.py" --super="dtdict_api_v30" --member-specs="dict" --external-encoding="utf-8" --export="write literal etree" XSD_3_0_20181120/XSD/schemaTeleservice_pad_3_0.xsd
#
# Current working directory (os.getcwd()):
#   watchdtdict-emission
#

import os
import sys
from lxml import etree as etree_

import dtdict_api_v30 as supermod

def parsexml_(infile, parser=None, **kwargs):
    if parser is None:
        # Use the lxml ElementTree compatible parser so that, e.g.,
        #   we ignore comments.
        parser = etree_.ETCompatXMLParser()
    try:
        if isinstance(infile, os.PathLike):
            infile = os.path.join(infile)
    except AttributeError:
        pass
    doc = etree_.parse(infile, parser=parser, **kwargs)
    return doc

#
# Globals
#

ExternalEncoding = 'utf-8'

#
# Data representation classes
#


class dossierConsultationSub(supermod.dossierConsultation):
    def __init__(self, DT=None, DICT=None, dtDictConjointes=None, ATU=None, listeDesOuvrages=None, listeDesREADE=None, **kwargs_):
        super(dossierConsultationSub, self).__init__(DT, DICT, dtDictConjointes, ATU, listeDesOuvrages, listeDesREADE,  **kwargs_)
supermod.dossierConsultation.subclass = dossierConsultationSub
# end class dossierConsultationSub


class informationsDT_PadSub(supermod.informationsDT_Pad):
    def __init__(self, noConsultationDuTeleserviceSeize=None, noConsultationDuTeleservice=None, dateDeLaDeclaration=None, **kwargs_):
        super(informationsDT_PadSub, self).__init__(noConsultationDuTeleserviceSeize, noConsultationDuTeleservice, dateDeLaDeclaration,  **kwargs_)
supermod.informationsDT_Pad.subclass = informationsDT_PadSub
# end class informationsDT_PadSub


class contactSub(supermod.contact):
    def __init__(self, code=None, nom=None, prenom=None, societe=None, agence=None, complement=None, numero=None, voie=None, lieuDitBP=None, codePostal=None, commune=None, codePays=None, faxObligatoire=None, mailObligatoire=None, telephone=None, telephoneUrgence=None, faxUrgence=None, mailUrgence=None, telEndommagement=None, referenceInterne=None, site=None, gestionDesFichiersDematerialises=None, **kwargs_):
        super(contactSub, self).__init__(code, nom, prenom, societe, agence, complement, numero, voie, lieuDitBP, codePostal, commune, codePays, faxObligatoire, mailObligatoire, telephone, telephoneUrgence, faxUrgence, mailUrgence, telEndommagement, referenceInterne, site, gestionDesFichiersDematerialises,  **kwargs_)
supermod.contact.subclass = contactSub
# end class contactSub


class faxObligatoireSub(supermod.faxObligatoire):
    def __init__(self, fax=None, courriel=None, **kwargs_):
        super(faxObligatoireSub, self).__init__(fax, courriel,  **kwargs_)
supermod.faxObligatoire.subclass = faxObligatoireSub
# end class faxObligatoireSub


class mailObligatoireSub(supermod.mailObligatoire):
    def __init__(self, fax=None, courriel=None, **kwargs_):
        super(mailObligatoireSub, self).__init__(fax, courriel,  **kwargs_)
supermod.mailObligatoire.subclass = mailObligatoireSub
# end class mailObligatoireSub


class zoneSub(supermod.zone):
    def __init__(self, code=None, consigne=None, contact=None, **kwargs_):
        super(zoneSub, self).__init__(code, consigne, contact,  **kwargs_)
supermod.zone.subclass = zoneSub
# end class zoneSub


class zonesSub(supermod.zones):
    def __init__(self, zone=None, **kwargs_):
        super(zonesSub, self).__init__(zone,  **kwargs_)
supermod.zones.subclass = zonesSub
# end class zonesSub


class ouvrageSub(supermod.ouvrage):
    def __init__(self, listeDesZones=None, pourLesReseauxSensiblesPourLaSecuriteUniquement=None, categorieOuvrage=None, classeOuvrage=None, positionnementOuvrage=None, code=None, denominationOuvrage=None, statut=None, dateCreation=None, **kwargs_):
        super(ouvrageSub, self).__init__(listeDesZones, pourLesReseauxSensiblesPourLaSecuriteUniquement, categorieOuvrage, classeOuvrage, positionnementOuvrage, code, denominationOuvrage, statut, dateCreation,  **kwargs_)
supermod.ouvrage.subclass = ouvrageSub
# end class ouvrageSub


class pourLesReseauxSensiblesPourLaSecuriteReponseAttendueOuNonAttendueSub(supermod.pourLesReseauxSensiblesPourLaSecuriteReponseAttendueOuNonAttendue):
    def __init__(self, pasDeReponseAFournirChantierTermine=None, reponseAttendueChantierAVenir=None, **kwargs_):
        super(pourLesReseauxSensiblesPourLaSecuriteReponseAttendueOuNonAttendueSub, self).__init__(pasDeReponseAFournirChantierTermine, reponseAttendueChantierAVenir,  **kwargs_)
supermod.pourLesReseauxSensiblesPourLaSecuriteReponseAttendueOuNonAttendue.subclass = pourLesReseauxSensiblesPourLaSecuriteReponseAttendueOuNonAttendueSub
# end class pourLesReseauxSensiblesPourLaSecuriteReponseAttendueOuNonAttendueSub


class pourLesReseauxSensiblesATUSub(supermod.pourLesReseauxSensiblesATU):
    def __init__(self, chantierTermineOuChantierAVenir=None, nomDuRepresentantDeLExploitantContacte=None, dateDuContactTelephonique=None, heureDuContactTelephonique=None, **kwargs_):
        super(pourLesReseauxSensiblesATUSub, self).__init__(chantierTermineOuChantierAVenir, nomDuRepresentantDeLExploitantContacte, dateDuContactTelephonique, heureDuContactTelephonique,  **kwargs_)
supermod.pourLesReseauxSensiblesATU.subclass = pourLesReseauxSensiblesATUSub
# end class pourLesReseauxSensiblesATUSub


class gestionDesFichiersDematerialisesSub(supermod.gestionDesFichiersDematerialises):
    def __init__(self, gereLesFichiersDematerialises=None, formatDesFichiersDematerialises=None, **kwargs_):
        super(gestionDesFichiersDematerialisesSub, self).__init__(gereLesFichiersDematerialises, formatDesFichiersDematerialises,  **kwargs_)
supermod.gestionDesFichiersDematerialises.subclass = gestionDesFichiersDematerialisesSub
# end class gestionDesFichiersDematerialisesSub


class ouvragesSub(supermod.ouvrages):
    def __init__(self, ouvrage=None, **kwargs_):
        super(ouvragesSub, self).__init__(ouvrage,  **kwargs_)
supermod.ouvrages.subclass = ouvragesSub
# end class ouvragesSub


class readesSub(supermod.reades):
    def __init__(self, reade=None, **kwargs_):
        super(readesSub, self).__init__(reade,  **kwargs_)
supermod.reades.subclass = readesSub
# end class readesSub


class readeSub(supermod.reade):
    def __init__(self, classe=None, code=None, type_=None, dateCreation=None, denomination=None, diametre=None, renseignements=None, raisonSociale=None, dernierExploitant=None, **kwargs_):
        super(readeSub, self).__init__(classe, code, type_, dateCreation, denomination, diametre, renseignements, raisonSociale, dernierExploitant,  **kwargs_)
supermod.reade.subclass = readeSub
# end class readeSub


class listeNumerosConsultationSub(supermod.listeNumerosConsultation):
    def __init__(self, numeroConsultation=None, **kwargs_):
        super(listeNumerosConsultationSub, self).__init__(numeroConsultation,  **kwargs_)
supermod.listeNumerosConsultation.subclass = listeNumerosConsultationSub
# end class listeNumerosConsultationSub


class numeroConsultationSub(supermod.numeroConsultation):
    def __init__(self, numero_dossier=None, nature=None, emprise=None, listeDesCommunes=None, heureDebutDesTravaux=None, dateDebutDesTravaux=None, **kwargs_):
        super(numeroConsultationSub, self).__init__(numero_dossier, nature, emprise, listeDesCommunes, heureDebutDesTravaux, dateDebutDesTravaux,  **kwargs_)
supermod.numeroConsultation.subclass = numeroConsultationSub
# end class numeroConsultationSub


class listeMoisStatistiquesSub(supermod.listeMoisStatistiques):
    def __init__(self, moisStatistiques=None, **kwargs_):
        super(listeMoisStatistiquesSub, self).__init__(moisStatistiques,  **kwargs_)
supermod.listeMoisStatistiques.subclass = listeMoisStatistiquesSub
# end class listeMoisStatistiquesSub


class moisStatistiquesSub(supermod.moisStatistiques):
    def __init__(self, mois=None, listeCommunesStatistiques=None, **kwargs_):
        super(moisStatistiquesSub, self).__init__(mois, listeCommunesStatistiques,  **kwargs_)
supermod.moisStatistiques.subclass = moisStatistiquesSub
# end class moisStatistiquesSub


class communeStatistiquesSub(supermod.communeStatistiques):
    def __init__(self, commune=None, nombreConsultations=None, **kwargs_):
        super(communeStatistiquesSub, self).__init__(commune, nombreConsultations,  **kwargs_)
supermod.communeStatistiques.subclass = communeStatistiquesSub
# end class communeStatistiquesSub


class informationsDTBaseSub(supermod.informationsDTBase):
    def __init__(self, noAffaireDuResponsableDuProjet=None, typeEntite=None, declarationConjointeDTDICT=None, responsableDuProjet=None, representantDuResponsableDeProjet=None, emplacementDuProjet=None, emprise=None, souhaitsPourLeRecepisse=None, projetEtSonCalendrier=None, investigationsComplementaires=None, extensiontype_=None, **kwargs_):
        super(informationsDTBaseSub, self).__init__(noAffaireDuResponsableDuProjet, typeEntite, declarationConjointeDTDICT, responsableDuProjet, representantDuResponsableDeProjet, emplacementDuProjet, emprise, souhaitsPourLeRecepisse, projetEtSonCalendrier, investigationsComplementaires, extensiontype_,  **kwargs_)
supermod.informationsDTBase.subclass = informationsDTBaseSub
# end class informationsDTBaseSub


class informationsDTCoreSub(supermod.informationsDTCore):
    def __init__(self, noAffaireDuResponsableDuProjet=None, typeEntite=None, declarationConjointeDTDICT=None, responsableDuProjet=None, representantDuResponsableDeProjet=None, emplacementDuProjet=None, emprise=None, souhaitsPourLeRecepisse=None, projetEtSonCalendrier=None, investigationsComplementaires=None, signatureDuResponsableDuProjetOuDeSonRepresentant=None, extensiontype_=None, **kwargs_):
        super(informationsDTCoreSub, self).__init__(noAffaireDuResponsableDuProjet, typeEntite, declarationConjointeDTDICT, responsableDuProjet, representantDuResponsableDeProjet, emplacementDuProjet, emprise, souhaitsPourLeRecepisse, projetEtSonCalendrier, investigationsComplementaires, signatureDuResponsableDuProjetOuDeSonRepresentant, extensiontype_,  **kwargs_)
supermod.informationsDTCore.subclass = informationsDTCoreSub
# end class informationsDTCoreSub


class informationsDTsimplifieeSub(supermod.informationsDTsimplifiee):
    def __init__(self, noConsultationDuTeleserviceSeize=None, noConsultationDuTeleservice=None, noAffaireDuResponsableDuProjet=None, dateDeLaDeclaration=None, typeEntite=None, declarationConjointeDTDICT=None, responsableDuProjet=None, representantDuResponsableDeProjet=None, emplacementDuProjet=None, emprise=None, souhaitsPourLeRecepisse=None, projetEtSonCalendrier=None, investigationsComplementaires=None, signatureDuResponsableDuProjetOuDeSonRepresentant=None, **kwargs_):
        super(informationsDTsimplifieeSub, self).__init__(noConsultationDuTeleserviceSeize, noConsultationDuTeleservice, noAffaireDuResponsableDuProjet, dateDeLaDeclaration, typeEntite, declarationConjointeDTDICT, responsableDuProjet, representantDuResponsableDeProjet, emplacementDuProjet, emprise, souhaitsPourLeRecepisse, projetEtSonCalendrier, investigationsComplementaires, signatureDuResponsableDuProjetOuDeSonRepresentant,  **kwargs_)
supermod.informationsDTsimplifiee.subclass = informationsDTsimplifieeSub
# end class informationsDTsimplifieeSub


class informationsDICTCoreSub(supermod.informationsDICTCore):
    def __init__(self, noAffaireDeLexecutantDesTravaux=None, natureDeLaDeclaration=None, executantDesTravaux=None, emplacementDesTravaux=None, emprise=None, souhaitsPourLeRecepisse=None, travauxEtLeurCalendrier=None, signatureDeLExecutantDesTravauxOuDeSonRepresentant=None, extensiontype_=None, **kwargs_):
        super(informationsDICTCoreSub, self).__init__(noAffaireDeLexecutantDesTravaux, natureDeLaDeclaration, executantDesTravaux, emplacementDesTravaux, emprise, souhaitsPourLeRecepisse, travauxEtLeurCalendrier, signatureDeLExecutantDesTravauxOuDeSonRepresentant, extensiontype_,  **kwargs_)
supermod.informationsDICTCore.subclass = informationsDICTCoreSub
# end class informationsDICTCoreSub


class informationsDtDictConjointesCoreSub(supermod.informationsDtDictConjointesCore):
    def __init__(self, nomDuSignataire=None, nombrePagesJointes=None, extensiontype_=None, **kwargs_):
        super(informationsDtDictConjointesCoreSub, self).__init__(nomDuSignataire, nombrePagesJointes, extensiontype_,  **kwargs_)
supermod.informationsDtDictConjointesCore.subclass = informationsDtDictConjointesCoreSub
# end class informationsDtDictConjointesCoreSub


class informationsATUCoreSub(supermod.informationsATUCore):
    def __init__(self, justificationDeLUrgence=None, personneOrdonnantLesTravauxUrgents=None, emprise=None, entrepriseChargeeDeLExecutionDesTravaux=None, travauxEmplacementDureeDescription=None, nomDuSignataire=None, extensiontype_=None, **kwargs_):
        super(informationsATUCoreSub, self).__init__(justificationDeLUrgence, personneOrdonnantLesTravauxUrgents, emprise, entrepriseChargeeDeLExecutionDesTravaux, travauxEmplacementDureeDescription, nomDuSignataire, extensiontype_,  **kwargs_)
supermod.informationsATUCore.subclass = informationsATUCoreSub
# end class informationsATUCoreSub


class empriseSub(supermod.emprise):
    def __init__(self, geometrie=None, surface=None, referenceDelaCarte=None, **kwargs_):
        super(empriseSub, self).__init__(geometrie, surface, referenceDelaCarte,  **kwargs_)
supermod.emprise.subclass = empriseSub
# end class empriseSub


class empriseNonObligatoireSub(supermod.empriseNonObligatoire):
    def __init__(self, geometrie=None, surface=None, referenceDelaCarte=None, **kwargs_):
        super(empriseNonObligatoireSub, self).__init__(geometrie, surface, referenceDelaCarte,  **kwargs_)
supermod.empriseNonObligatoire.subclass = empriseNonObligatoireSub
# end class empriseNonObligatoireSub


class identificationPersonneSub(supermod.identificationPersonne):
    def __init__(self, denomination=None, complementService=None, numero=None, voie=None, lieuDitBP=None, codePostal=None, commune=None, pays=None, noSiret=None, nomDeLaPersonneAContacter=None, tel=None, fax=None, courriel=None, **kwargs_):
        super(identificationPersonneSub, self).__init__(denomination, complementService, numero, voie, lieuDitBP, codePostal, commune, pays, noSiret, nomDeLaPersonneAContacter, tel, fax, courriel,  **kwargs_)
supermod.identificationPersonne.subclass = identificationPersonneSub
# end class identificationPersonneSub


class identificationPersonneATUSub(supermod.identificationPersonneATU):
    def __init__(self, nom=None, complementDAdresse=None, numero=None, voie=None, lieuDitBP=None, codePostal=None, commune=None, pays=None, noSiret=None, nomDeLaPersonneAContacter=None, tel=None, fax=None, courriel=None, **kwargs_):
        super(identificationPersonneATUSub, self).__init__(nom, complementDAdresse, numero, voie, lieuDitBP, codePostal, commune, pays, noSiret, nomDeLaPersonneAContacter, tel, fax, courriel,  **kwargs_)
supermod.identificationPersonneATU.subclass = identificationPersonneATUSub
# end class identificationPersonneATUSub


class investigationsComplementairesDTSub(supermod.investigationsComplementairesDT):
    def __init__(self, realisationDInvestigationsComplementaires=None, motifDeRealisationOuNonDInvestigation=None, dateDesInvestigationsComplementaires=None, InvestigationsSusceptibleDeNecessiterUneDICT=None, envoiDesResultatsAuxExploitantsDOuvragesEtAuxEntreprises=None, **kwargs_):
        super(investigationsComplementairesDTSub, self).__init__(realisationDInvestigationsComplementaires, motifDeRealisationOuNonDInvestigation, dateDesInvestigationsComplementaires, InvestigationsSusceptibleDeNecessiterUneDICT, envoiDesResultatsAuxExploitantsDOuvragesEtAuxEntreprises,  **kwargs_)
supermod.investigationsComplementairesDT.subclass = investigationsComplementairesDTSub
# end class investigationsComplementairesDTSub


class projetEtSonCalendrierSub(supermod.projetEtSonCalendrier):
    def __init__(self, natureDesTravaux=None, decrivezLeProjet=None, emploiDeTechniquesSansTranchees=None, distanceMinimaleEntreLesTravauxEtLaLigneElectrique=None, souhaitLesPlansDesReseauxElectriqueAeriens=None, datePrevuePourLeCommencementDesTravaux=None, dureeDuChantierEnJours=None, positionnementDesTravauxPrevusParLeDeclarant=None, **kwargs_):
        super(projetEtSonCalendrierSub, self).__init__(natureDesTravaux, decrivezLeProjet, emploiDeTechniquesSansTranchees, distanceMinimaleEntreLesTravauxEtLaLigneElectrique, souhaitLesPlansDesReseauxElectriqueAeriens, datePrevuePourLeCommencementDesTravaux, dureeDuChantierEnJours, positionnementDesTravauxPrevusParLeDeclarant,  **kwargs_)
supermod.projetEtSonCalendrier.subclass = projetEtSonCalendrierSub
# end class projetEtSonCalendrierSub


class projetEtSonCalendrierNonObligatoireSub(supermod.projetEtSonCalendrierNonObligatoire):
    def __init__(self, natureDesTravaux=None, decrivezLeProjet=None, emploiDeTechniquesSansTranchees=None, distanceMinimaleEntreLesTravauxEtLaLigneElectrique=None, souhaitLesPlansDesReseauxElectriqueAeriens=None, datePrevuePourLeCommencementDesTravaux=None, dureeDuChantierEnJours=None, positionnementDesTravauxPrevusParLeDeclarant=None, **kwargs_):
        super(projetEtSonCalendrierNonObligatoireSub, self).__init__(natureDesTravaux, decrivezLeProjet, emploiDeTechniquesSansTranchees, distanceMinimaleEntreLesTravauxEtLaLigneElectrique, souhaitLesPlansDesReseauxElectriqueAeriens, datePrevuePourLeCommencementDesTravaux, dureeDuChantierEnJours, positionnementDesTravauxPrevusParLeDeclarant,  **kwargs_)
supermod.projetEtSonCalendrierNonObligatoire.subclass = projetEtSonCalendrierNonObligatoireSub
# end class projetEtSonCalendrierNonObligatoireSub


class travauxEtLeurCalendrierSub(supermod.travauxEtLeurCalendrier):
    def __init__(self, natureDesTravaux=None, decrivezLesTravaux=None, techniquesUtilisees=None, autreTechnique=None, profondeurMaxDExcavation=None, modificationProfilTerrain=None, communicationResultatsInvestigations=None, distanceMinimaleEntreLesTravauxEtLaLigneElectrique=None, souhaitLesPlansDesReseauxElectriqueAeriens=None, datePrevuePourLeCommencementDesTravaux=None, dureeDuChantierEnJours=None, positionnementDesTravauxPrevusParLeDeclarant=None, **kwargs_):
        super(travauxEtLeurCalendrierSub, self).__init__(natureDesTravaux, decrivezLesTravaux, techniquesUtilisees, autreTechnique, profondeurMaxDExcavation, modificationProfilTerrain, communicationResultatsInvestigations, distanceMinimaleEntreLesTravauxEtLaLigneElectrique, souhaitLesPlansDesReseauxElectriqueAeriens, datePrevuePourLeCommencementDesTravaux, dureeDuChantierEnJours, positionnementDesTravauxPrevusParLeDeclarant,  **kwargs_)
supermod.travauxEtLeurCalendrier.subclass = travauxEtLeurCalendrierSub
# end class travauxEtLeurCalendrierSub


class responsableDuProjetSub(supermod.responsableDuProjet):
    def __init__(self, denomination=None, noSiret=None, pays=None, **kwargs_):
        super(responsableDuProjetSub, self).__init__(denomination, noSiret, pays,  **kwargs_)
supermod.responsableDuProjet.subclass = responsableDuProjetSub
# end class responsableDuProjetSub


class responsableDuProjetNonObligatoireSub(supermod.responsableDuProjetNonObligatoire):
    def __init__(self, denomination=None, noSiret=None, pays=None, **kwargs_):
        super(responsableDuProjetNonObligatoireSub, self).__init__(denomination, noSiret, pays,  **kwargs_)
supermod.responsableDuProjetNonObligatoire.subclass = responsableDuProjetNonObligatoireSub
# end class responsableDuProjetNonObligatoireSub


class responsableDuProjetSimplifieeSub(supermod.responsableDuProjetSimplifiee):
    def __init__(self, denomination=None, noSiret=None, pays=None, **kwargs_):
        super(responsableDuProjetSimplifieeSub, self).__init__(denomination, noSiret, pays,  **kwargs_)
supermod.responsableDuProjetSimplifiee.subclass = responsableDuProjetSimplifieeSub
# end class responsableDuProjetSimplifieeSub


class representantDuResponsableDeProjetSub(supermod.representantDuResponsableDeProjet):
    def __init__(self, denomination=None, complementService=None, numero=None, voie=None, lieuDitBP=None, codePostal=None, commune=None, personneAcontacter=None, tel=None, fax=None, courriel=None, **kwargs_):
        super(representantDuResponsableDeProjetSub, self).__init__(denomination, complementService, numero, voie, lieuDitBP, codePostal, commune, personneAcontacter, tel, fax, courriel,  **kwargs_)
supermod.representantDuResponsableDeProjet.subclass = representantDuResponsableDeProjetSub
# end class representantDuResponsableDeProjetSub


class representantDuResponsableDeProjetNonObligatoireSub(supermod.representantDuResponsableDeProjetNonObligatoire):
    def __init__(self, denomination=None, complementService=None, numero=None, voie=None, lieuDitBP=None, codePostal=None, commune=None, personneAcontacter=None, tel=None, fax=None, courriel=None, **kwargs_):
        super(representantDuResponsableDeProjetNonObligatoireSub, self).__init__(denomination, complementService, numero, voie, lieuDitBP, codePostal, commune, personneAcontacter, tel, fax, courriel,  **kwargs_)
supermod.representantDuResponsableDeProjetNonObligatoire.subclass = representantDuResponsableDeProjetNonObligatoireSub
# end class representantDuResponsableDeProjetNonObligatoireSub


class signatureDuResponsableDuProjetSub(supermod.signatureDuResponsableDuProjet):
    def __init__(self, nomDuSignataire=None, nombrePagesJointes=None, **kwargs_):
        super(signatureDuResponsableDuProjetSub, self).__init__(nomDuSignataire, nombrePagesJointes,  **kwargs_)
supermod.signatureDuResponsableDuProjet.subclass = signatureDuResponsableDuProjetSub
# end class signatureDuResponsableDuProjetSub


class signatureDeLExecutantDesTravauxSub(supermod.signatureDeLExecutantDesTravaux):
    def __init__(self, nomDuSignataire=None, nombrePagesJointes=None, **kwargs_):
        super(signatureDeLExecutantDesTravauxSub, self).__init__(nomDuSignataire, nombrePagesJointes,  **kwargs_)
supermod.signatureDeLExecutantDesTravaux.subclass = signatureDeLExecutantDesTravauxSub
# end class signatureDeLExecutantDesTravauxSub


class signatureDeLExecutantDesTravauxNonObligatoireSub(supermod.signatureDeLExecutantDesTravauxNonObligatoire):
    def __init__(self, nomDuSignataire=None, nombrePagesJointes=None, **kwargs_):
        super(signatureDeLExecutantDesTravauxNonObligatoireSub, self).__init__(nomDuSignataire, nombrePagesJointes,  **kwargs_)
supermod.signatureDeLExecutantDesTravauxNonObligatoire.subclass = signatureDeLExecutantDesTravauxNonObligatoireSub
# end class signatureDeLExecutantDesTravauxNonObligatoireSub


class travauxEmplacementDureeDescriptionATUSub(supermod.travauxEmplacementDureeDescriptionATU):
    def __init__(self, adresse=None, codePostal=None, commune=None, dateDebutDesTravaux=None, heureDebutDesTravaux=None, dureeTravauxDemiJournees=None, travauxEtMoyensMisEnOeuvre=None, positionnementDesTravauxPrevusParLeDeclarant=None, listeDesEmplacementsDesCommunesConcerneesATU=None, **kwargs_):
        super(travauxEmplacementDureeDescriptionATUSub, self).__init__(adresse, codePostal, commune, dateDebutDesTravaux, heureDebutDesTravaux, dureeTravauxDemiJournees, travauxEtMoyensMisEnOeuvre, positionnementDesTravauxPrevusParLeDeclarant, listeDesEmplacementsDesCommunesConcerneesATU,  **kwargs_)
supermod.travauxEmplacementDureeDescriptionATU.subclass = travauxEmplacementDureeDescriptionATUSub
# end class travauxEmplacementDureeDescriptionATUSub


class entrepriseChargeeDeLExecutionDesTravauxATUSub(supermod.entrepriseChargeeDeLExecutionDesTravauxATU):
    def __init__(self, nom=None, adresse=None, codePostal=None, commune=None, **kwargs_):
        super(entrepriseChargeeDeLExecutionDesTravauxATUSub, self).__init__(nom, adresse, codePostal, commune,  **kwargs_)
supermod.entrepriseChargeeDeLExecutionDesTravauxATU.subclass = entrepriseChargeeDeLExecutionDesTravauxATUSub
# end class entrepriseChargeeDeLExecutionDesTravauxATUSub


class justificationDeLUrgenceATUSub(supermod.justificationDeLUrgenceATU):
    def __init__(self, securite=None, continuiteDuServicePublic=None, sauvegardeDesPersonnesEtDesBiens=None, casDeForceMajeure=None, **kwargs_):
        super(justificationDeLUrgenceATUSub, self).__init__(securite, continuiteDuServicePublic, sauvegardeDesPersonnesEtDesBiens, casDeForceMajeure,  **kwargs_)
supermod.justificationDeLUrgenceATU.subclass = justificationDeLUrgenceATUSub
# end class justificationDeLUrgenceATUSub


class localisationChantierSub(supermod.localisationChantier):
    def __init__(self, adresse=None, CP=None, communePrincipale=None, codeINSEE=None, nombreDeCommunes=None, listeDesEmplacementsDesCommunesConcernees=None, **kwargs_):
        super(localisationChantierSub, self).__init__(adresse, CP, communePrincipale, codeINSEE, nombreDeCommunes, listeDesEmplacementsDesCommunesConcernees,  **kwargs_)
supermod.localisationChantier.subclass = localisationChantierSub
# end class localisationChantierSub


class localisationChantierNonObligatoireSub(supermod.localisationChantierNonObligatoire):
    def __init__(self, adresse=None, CP=None, communePrincipale=None, codeINSEE=None, nombreDeCommunes=None, listeDesEmplacementsDesCommunesConcernees=None, **kwargs_):
        super(localisationChantierNonObligatoireSub, self).__init__(adresse, CP, communePrincipale, codeINSEE, nombreDeCommunes, listeDesEmplacementsDesCommunesConcernees,  **kwargs_)
supermod.localisationChantierNonObligatoire.subclass = localisationChantierNonObligatoireSub
# end class localisationChantierNonObligatoireSub


class emplacementSub(supermod.emplacement):
    def __init__(self, emplacementDeLaCommuneConcernee=None, **kwargs_):
        super(emplacementSub, self).__init__(emplacementDeLaCommuneConcernee,  **kwargs_)
supermod.emplacement.subclass = emplacementSub
# end class emplacementSub


class souhaitsPourLeRecepisseSub(supermod.souhaitsPourLeRecepisse):
    def __init__(self, souhaiteRecevoirLeRecepisse=None, modeReceptionElectronique=None, modeReceptionCourrier=None, modeReceptionFax=None, **kwargs_):
        super(souhaitsPourLeRecepisseSub, self).__init__(souhaiteRecevoirLeRecepisse, modeReceptionElectronique, modeReceptionCourrier, modeReceptionFax,  **kwargs_)
supermod.souhaitsPourLeRecepisse.subclass = souhaitsPourLeRecepisseSub
# end class souhaitsPourLeRecepisseSub


class souhaitsPourLeRecepisseDICTSub(supermod.souhaitsPourLeRecepisseDICT):
    def __init__(self, modeReceptionElectronique=None, modeReceptionCourrier=None, modeReceptionFax=None, **kwargs_):
        super(souhaitsPourLeRecepisseDICTSub, self).__init__(modeReceptionElectronique, modeReceptionCourrier, modeReceptionFax,  **kwargs_)
supermod.souhaitsPourLeRecepisseDICT.subclass = souhaitsPourLeRecepisseDICTSub
# end class souhaitsPourLeRecepisseDICTSub


class modeReceptionElectroniqueSub(supermod.modeReceptionElectronique):
    def __init__(self, tailleDesPlans=None, couleurDesPlans=None, souhaitDePlansVectoriels=None, formatDesPlansVectoriels=None, **kwargs_):
        super(modeReceptionElectroniqueSub, self).__init__(tailleDesPlans, couleurDesPlans, souhaitDePlansVectoriels, formatDesPlansVectoriels,  **kwargs_)
supermod.modeReceptionElectronique.subclass = modeReceptionElectroniqueSub
# end class modeReceptionElectroniqueSub


class modeReceptionCourrierSub(supermod.modeReceptionCourrier):
    def __init__(self, **kwargs_):
        super(modeReceptionCourrierSub, self).__init__( **kwargs_)
supermod.modeReceptionCourrier.subclass = modeReceptionCourrierSub
# end class modeReceptionCourrierSub


class modeReceptionFaxSub(supermod.modeReceptionFax):
    def __init__(self, **kwargs_):
        super(modeReceptionFaxSub, self).__init__( **kwargs_)
supermod.modeReceptionFax.subclass = modeReceptionFaxSub
# end class modeReceptionFaxSub


class criteresSub(supermod.criteres):
    def __init__(self, numero_dossier=None, region=None, departement=None, commune=None, type_=None, dateConsultationMin=None, dateConsultationMax=None, dateDebutTravauxMin=None, dateDebutTravauxMax=None, **kwargs_):
        super(criteresSub, self).__init__(numero_dossier, region, departement, commune, type_, dateConsultationMin, dateConsultationMax, dateDebutTravauxMin, dateDebutTravauxMax,  **kwargs_)
supermod.criteres.subclass = criteresSub
# end class criteresSub


class SIRETStructureTypeSub(supermod.SIRETStructureType):
    def __init__(self, SIREN=None, NIC=None, **kwargs_):
        super(SIRETStructureTypeSub, self).__init__(SIREN, NIC,  **kwargs_)
supermod.SIRETStructureType.subclass = SIRETStructureTypeSub
# end class SIRETStructureTypeSub


class SIRET_ctypeSub(supermod.SIRET_ctype):
    def __init__(self, SIREN=None, NIC=None, **kwargs_):
        super(SIRET_ctypeSub, self).__init__(SIREN, NIC,  **kwargs_)
supermod.SIRET_ctype.subclass = SIRET_ctypeSub
# end class SIRET_ctypeSub


class NIRAvecCleStructureTypeSub(supermod.NIRAvecCleStructureType):
    def __init__(self, NIR=None, CleNIR=None, **kwargs_):
        super(NIRAvecCleStructureTypeSub, self).__init__(NIR, CleNIR,  **kwargs_)
supermod.NIRAvecCleStructureType.subclass = NIRAvecCleStructureTypeSub
# end class NIRAvecCleStructureTypeSub


class NIR_Avec_Clé_ctypeSub(supermod.NIR_Avec_Clé_ctype):
    def __init__(self, NIR=None, Clé_NIR=None, **kwargs_):
        super(NIR_Avec_Clé_ctypeSub, self).__init__(NIR, Clé_NIR,  **kwargs_)
supermod.NIR_Avec_Clé_ctype.subclass = NIR_Avec_Clé_ctypeSub
# end class NIR_Avec_Clé_ctypeSub


class AdresseGeopostaleTypeSub(supermod.AdresseGeopostaleType):
    def __init__(self, AdresseGeographique=None, AdressePostale=None, **kwargs_):
        super(AdresseGeopostaleTypeSub, self).__init__(AdresseGeographique, AdressePostale,  **kwargs_)
supermod.AdresseGeopostaleType.subclass = AdresseGeopostaleTypeSub
# end class AdresseGeopostaleTypeSub


class AdresseGeographiqueTypeSub(supermod.AdresseGeographiqueType):
    def __init__(self, PointRemise=None, Complement=None, NumeroVoie=None, Extension=None, TypeVoie=None, NomVoie=None, LieuDit=None, MentionDistribution=None, Cedex=None, LibelleBureauCedex=None, CodePostal=None, Localite=None, DivisionTerritoriale=None, Pays=None, **kwargs_):
        super(AdresseGeographiqueTypeSub, self).__init__(PointRemise, Complement, NumeroVoie, Extension, TypeVoie, NomVoie, LieuDit, MentionDistribution, Cedex, LibelleBureauCedex, CodePostal, Localite, DivisionTerritoriale, Pays,  **kwargs_)
supermod.AdresseGeographiqueType.subclass = AdresseGeographiqueTypeSub
# end class AdresseGeographiqueTypeSub


class AdressePostaleTypeSub(supermod.AdressePostaleType):
    def __init__(self, LigneUne=None, LigneDeux=None, LigneTrois=None, LigneQuatre=None, LigneCinq=None, LigneSix=None, LigneSept=None, **kwargs_):
        super(AdressePostaleTypeSub, self).__init__(LigneUne, LigneDeux, LigneTrois, LigneQuatre, LigneCinq, LigneSix, LigneSept,  **kwargs_)
supermod.AdressePostaleType.subclass = AdressePostaleTypeSub
# end class AdressePostaleTypeSub


class IndividuTypeSub(supermod.IndividuType):
    def __init__(self, Noms=None, Prenoms=None, Naissance=None, Sexe=None, Deces=None, Filiation=None, **kwargs_):
        super(IndividuTypeSub, self).__init__(Noms, Prenoms, Naissance, Sexe, Deces, Filiation,  **kwargs_)
supermod.IndividuType.subclass = IndividuTypeSub
# end class IndividuTypeSub


class IndividuSansFiliationTypeSub(supermod.IndividuSansFiliationType):
    def __init__(self, Noms=None, Prenoms=None, Naissance=None, Sexe=None, Deces=None, Filiation=None, **kwargs_):
        super(IndividuSansFiliationTypeSub, self).__init__(Noms, Prenoms, Naissance, Sexe, Deces, Filiation,  **kwargs_)
supermod.IndividuSansFiliationType.subclass = IndividuSansFiliationTypeSub
# end class IndividuSansFiliationTypeSub


class NomsEtatCivilTypeSub(supermod.NomsEtatCivilType):
    def __init__(self, NomFamille=None, NomUsage=None, Pseudonyme=None, **kwargs_):
        super(NomsEtatCivilTypeSub, self).__init__(NomFamille, NomUsage, Pseudonyme,  **kwargs_)
supermod.NomsEtatCivilType.subclass = NomsEtatCivilTypeSub
# end class NomsEtatCivilTypeSub


class NomDeFamilleSeulTypeSub(supermod.NomDeFamilleSeulType):
    def __init__(self, NomFamille=None, **kwargs_):
        super(NomDeFamilleSeulTypeSub, self).__init__(NomFamille,  **kwargs_)
supermod.NomDeFamilleSeulType.subclass = NomDeFamilleSeulTypeSub
# end class NomDeFamilleSeulTypeSub


class PrenomsEtatCivilTypeSub(supermod.PrenomsEtatCivilType):
    def __init__(self, PrenomUsuel=None, Prenom=None, **kwargs_):
        super(PrenomsEtatCivilTypeSub, self).__init__(PrenomUsuel, Prenom,  **kwargs_)
supermod.PrenomsEtatCivilType.subclass = PrenomsEtatCivilTypeSub
# end class PrenomsEtatCivilTypeSub


class PrenomsOfficielsSeulsTypeSub(supermod.PrenomsOfficielsSeulsType):
    def __init__(self, Prenom=None, **kwargs_):
        super(PrenomsOfficielsSeulsTypeSub, self).__init__(Prenom,  **kwargs_)
supermod.PrenomsOfficielsSeulsType.subclass = PrenomsOfficielsSeulsTypeSub
# end class PrenomsOfficielsSeulsTypeSub


class NaissanceTypeSub(supermod.NaissanceType):
    def __init__(self, DateNaissance=None, LieuNaissance=None, NumeroActeNaissance=None, **kwargs_):
        super(NaissanceTypeSub, self).__init__(DateNaissance, LieuNaissance, NumeroActeNaissance,  **kwargs_)
supermod.NaissanceType.subclass = NaissanceTypeSub
# end class NaissanceTypeSub


class DecesTypeSub(supermod.DecesType):
    def __init__(self, TypeDeces=None, DateDeces=None, LieuDeces=None, NumeroActeDeces=None, **kwargs_):
        super(DecesTypeSub, self).__init__(TypeDeces, DateDeces, LieuDeces, NumeroActeDeces,  **kwargs_)
supermod.DecesType.subclass = DecesTypeSub
# end class DecesTypeSub


class LieuTypeSub(supermod.LieuType):
    def __init__(self, Localite=None, DivisionTerritoriale=None, Pays=None, **kwargs_):
        super(LieuTypeSub, self).__init__(Localite, DivisionTerritoriale, Pays,  **kwargs_)
supermod.LieuType.subclass = LieuTypeSub
# end class LieuTypeSub


class ElementLieuTypeSub(supermod.ElementLieuType):
    def __init__(self, code=None, valueOf_=None, **kwargs_):
        super(ElementLieuTypeSub, self).__init__(code, valueOf_,  **kwargs_)
supermod.ElementLieuType.subclass = ElementLieuTypeSub
# end class ElementLieuTypeSub


class PaysTypeSub(supermod.PaysType):
    def __init__(self, code=None, valueOf_=None, **kwargs_):
        super(PaysTypeSub, self).__init__(code, valueOf_,  **kwargs_)
supermod.PaysType.subclass = PaysTypeSub
# end class PaysTypeSub


class HistoryPropertyTypeSub(supermod.HistoryPropertyType):
    def __init__(self, owns='false', AbstractTimeSlice=None, **kwargs_):
        super(HistoryPropertyTypeSub, self).__init__(owns, AbstractTimeSlice,  **kwargs_)
supermod.HistoryPropertyType.subclass = HistoryPropertyTypeSub
# end class HistoryPropertyTypeSub


class FeaturePropertyTypeSub(supermod.FeaturePropertyType):
    def __init__(self, owns='false', type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, AbstractFeature=None, **kwargs_):
        super(FeaturePropertyTypeSub, self).__init__(owns, type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, AbstractFeature,  **kwargs_)
supermod.FeaturePropertyType.subclass = FeaturePropertyTypeSub
# end class FeaturePropertyTypeSub


class BoundingShapeTypeSub(supermod.BoundingShapeType):
    def __init__(self, nilReason=None, Envelope=None, Null=None, **kwargs_):
        super(BoundingShapeTypeSub, self).__init__(nilReason, Envelope, Null,  **kwargs_)
supermod.BoundingShapeType.subclass = BoundingShapeTypeSub
# end class BoundingShapeTypeSub


class AbstractFeatureMemberTypeSub(supermod.AbstractFeatureMemberType):
    def __init__(self, owns='false', extensiontype_=None, **kwargs_):
        super(AbstractFeatureMemberTypeSub, self).__init__(owns, extensiontype_,  **kwargs_)
supermod.AbstractFeatureMemberType.subclass = AbstractFeatureMemberTypeSub
# end class AbstractFeatureMemberTypeSub


class MultiGeometryPropertyTypeSub(supermod.MultiGeometryPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, owns='false', AbstractGeometricAggregate=None, **kwargs_):
        super(MultiGeometryPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, owns, AbstractGeometricAggregate,  **kwargs_)
supermod.MultiGeometryPropertyType.subclass = MultiGeometryPropertyTypeSub
# end class MultiGeometryPropertyTypeSub


class MultiPointPropertyTypeSub(supermod.MultiPointPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, owns='false', MultiPoint=None, **kwargs_):
        super(MultiPointPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, owns, MultiPoint,  **kwargs_)
supermod.MultiPointPropertyType.subclass = MultiPointPropertyTypeSub
# end class MultiPointPropertyTypeSub


class MultiCurvePropertyTypeSub(supermod.MultiCurvePropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, owns='false', MultiCurve=None, **kwargs_):
        super(MultiCurvePropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, owns, MultiCurve,  **kwargs_)
supermod.MultiCurvePropertyType.subclass = MultiCurvePropertyTypeSub
# end class MultiCurvePropertyTypeSub


class MultiSurfacePropertyTypeSub(supermod.MultiSurfacePropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, owns='false', MultiSurface=None, **kwargs_):
        super(MultiSurfacePropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, owns, MultiSurface,  **kwargs_)
supermod.MultiSurfacePropertyType.subclass = MultiSurfacePropertyTypeSub
# end class MultiSurfacePropertyTypeSub


class MultiSolidPropertyTypeSub(supermod.MultiSolidPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, owns='false', MultiSolid=None, **kwargs_):
        super(MultiSolidPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, owns, MultiSolid,  **kwargs_)
supermod.MultiSolidPropertyType.subclass = MultiSolidPropertyTypeSub
# end class MultiSolidPropertyTypeSub


class AbstractCurveSegmentTypeSub(supermod.AbstractCurveSegmentType):
    def __init__(self, numDerivativesAtStart='0', numDerivativesAtEnd='0', numDerivativeInterior='0', extensiontype_=None, **kwargs_):
        super(AbstractCurveSegmentTypeSub, self).__init__(numDerivativesAtStart, numDerivativesAtEnd, numDerivativeInterior, extensiontype_,  **kwargs_)
supermod.AbstractCurveSegmentType.subclass = AbstractCurveSegmentTypeSub
# end class AbstractCurveSegmentTypeSub


class CurveSegmentArrayPropertyTypeSub(supermod.CurveSegmentArrayPropertyType):
    def __init__(self, AbstractCurveSegment=None, **kwargs_):
        super(CurveSegmentArrayPropertyTypeSub, self).__init__(AbstractCurveSegment,  **kwargs_)
supermod.CurveSegmentArrayPropertyType.subclass = CurveSegmentArrayPropertyTypeSub
# end class CurveSegmentArrayPropertyTypeSub


class LineStringSegmentTypeSub(supermod.LineStringSegmentType):
    def __init__(self, numDerivativesAtStart='0', numDerivativesAtEnd='0', numDerivativeInterior='0', interpolation='linear', pos=None, pointProperty=None, pointRep=None, posList=None, coordinates=None, **kwargs_):
        super(LineStringSegmentTypeSub, self).__init__(numDerivativesAtStart, numDerivativesAtEnd, numDerivativeInterior, interpolation, pos, pointProperty, pointRep, posList, coordinates,  **kwargs_)
supermod.LineStringSegmentType.subclass = LineStringSegmentTypeSub
# end class LineStringSegmentTypeSub


class ArcStringTypeSub(supermod.ArcStringType):
    def __init__(self, numDerivativesAtStart='0', numDerivativesAtEnd='0', numDerivativeInterior='0', interpolation='circularArc3Points', numArc=None, pos=None, pointProperty=None, pointRep=None, posList=None, coordinates=None, **kwargs_):
        super(ArcStringTypeSub, self).__init__(numDerivativesAtStart, numDerivativesAtEnd, numDerivativeInterior, interpolation, numArc, pos, pointProperty, pointRep, posList, coordinates,  **kwargs_)
supermod.ArcStringType.subclass = ArcStringTypeSub
# end class ArcStringTypeSub


class ArcTypeSub(supermod.ArcType):
    def __init__(self, numArc='1', pos=None, pointProperty=None, pointRep=None, posList=None, coordinates=None, extensiontype_=None, **kwargs_):
        super(ArcTypeSub, self).__init__(numArc, pos, pointProperty, pointRep, posList, coordinates, extensiontype_,  **kwargs_)
supermod.ArcType.subclass = ArcTypeSub
# end class ArcTypeSub


class CircleTypeSub(supermod.CircleType):
    def __init__(self, numArc='1', pos=None, pointProperty=None, pointRep=None, posList=None, coordinates=None, **kwargs_):
        super(CircleTypeSub, self).__init__(numArc, pos, pointProperty, pointRep, posList, coordinates,  **kwargs_)
supermod.CircleType.subclass = CircleTypeSub
# end class CircleTypeSub


class ArcStringByBulgeTypeSub(supermod.ArcStringByBulgeType):
    def __init__(self, numDerivativesAtStart='0', numDerivativesAtEnd='0', numDerivativeInterior='0', interpolation='circularArc2PointWithBulge', numArc=None, pos=None, pointProperty=None, pointRep=None, posList=None, coordinates=None, bulge=None, normal=None, **kwargs_):
        super(ArcStringByBulgeTypeSub, self).__init__(numDerivativesAtStart, numDerivativesAtEnd, numDerivativeInterior, interpolation, numArc, pos, pointProperty, pointRep, posList, coordinates, bulge, normal,  **kwargs_)
supermod.ArcStringByBulgeType.subclass = ArcStringByBulgeTypeSub
# end class ArcStringByBulgeTypeSub


class ArcByBulgeTypeSub(supermod.ArcByBulgeType):
    def __init__(self, numArc='1', pos=None, pointProperty=None, pointRep=None, posList=None, coordinates=None, bulge=None, normal=None, **kwargs_):
        super(ArcByBulgeTypeSub, self).__init__(numArc, pos, pointProperty, pointRep, posList, coordinates, bulge, normal,  **kwargs_)
supermod.ArcByBulgeType.subclass = ArcByBulgeTypeSub
# end class ArcByBulgeTypeSub


class ArcByCenterPointTypeSub(supermod.ArcByCenterPointType):
    def __init__(self, numDerivativesAtStart='0', numDerivativesAtEnd='0', numDerivativeInterior='0', interpolation='circularArcCenterPointWithRadius', numArc='1', pos=None, pointProperty=None, pointRep=None, posList=None, coordinates=None, radius=None, startAngle=None, endAngle=None, **kwargs_):
        super(ArcByCenterPointTypeSub, self).__init__(numDerivativesAtStart, numDerivativesAtEnd, numDerivativeInterior, interpolation, numArc, pos, pointProperty, pointRep, posList, coordinates, radius, startAngle, endAngle,  **kwargs_)
supermod.ArcByCenterPointType.subclass = ArcByCenterPointTypeSub
# end class ArcByCenterPointTypeSub


class CircleByCenterPointTypeSub(supermod.CircleByCenterPointType):
    def __init__(self, pos=None, pointProperty=None, pointRep=None, posList=None, coordinates=None, radius=None, **kwargs_):
        super(CircleByCenterPointTypeSub, self).__init__(pos, pointProperty, pointRep, posList, coordinates, radius,  **kwargs_)
supermod.CircleByCenterPointType.subclass = CircleByCenterPointTypeSub
# end class CircleByCenterPointTypeSub


class CubicSplineTypeSub(supermod.CubicSplineType):
    def __init__(self, numDerivativesAtStart='0', numDerivativesAtEnd='0', numDerivativeInterior='0', interpolation='cubicSpline', degree='3', pos=None, pointProperty=None, pointRep=None, posList=None, coordinates=None, vectorAtStart=None, vectorAtEnd=None, **kwargs_):
        super(CubicSplineTypeSub, self).__init__(numDerivativesAtStart, numDerivativesAtEnd, numDerivativeInterior, interpolation, degree, pos, pointProperty, pointRep, posList, coordinates, vectorAtStart, vectorAtEnd,  **kwargs_)
supermod.CubicSplineType.subclass = CubicSplineTypeSub
# end class CubicSplineTypeSub


class BSplineTypeSub(supermod.BSplineType):
    def __init__(self, numDerivativesAtStart='0', numDerivativesAtEnd='0', numDerivativeInterior='0', interpolation='polynomialSpline', isPolynomial=None, knotType=None, pos=None, pointProperty=None, pointRep=None, posList=None, coordinates=None, degree=None, knot=None, **kwargs_):
        super(BSplineTypeSub, self).__init__(numDerivativesAtStart, numDerivativesAtEnd, numDerivativeInterior, interpolation, isPolynomial, knotType, pos, pointProperty, pointRep, posList, coordinates, degree, knot,  **kwargs_)
supermod.BSplineType.subclass = BSplineTypeSub
# end class BSplineTypeSub


class KnotTypeSub(supermod.KnotType):
    def __init__(self, value=None, multiplicity=None, weight=None, **kwargs_):
        super(KnotTypeSub, self).__init__(value, multiplicity, weight,  **kwargs_)
supermod.KnotType.subclass = KnotTypeSub
# end class KnotTypeSub


class KnotPropertyTypeSub(supermod.KnotPropertyType):
    def __init__(self, Knot=None, **kwargs_):
        super(KnotPropertyTypeSub, self).__init__(Knot,  **kwargs_)
supermod.KnotPropertyType.subclass = KnotPropertyTypeSub
# end class KnotPropertyTypeSub


class BezierTypeSub(supermod.BezierType):
    def __init__(self, interpolation='polynomialSpline', isPolynomial='true', knotType=None, pos=None, pointProperty=None, pointRep=None, posList=None, coordinates=None, degree=None, knot=None, **kwargs_):
        super(BezierTypeSub, self).__init__(interpolation, isPolynomial, knotType, pos, pointProperty, pointRep, posList, coordinates, degree, knot,  **kwargs_)
supermod.BezierType.subclass = BezierTypeSub
# end class BezierTypeSub


class OffsetCurveTypeSub(supermod.OffsetCurveType):
    def __init__(self, numDerivativesAtStart='0', numDerivativesAtEnd='0', numDerivativeInterior='0', offsetBase=None, distance=None, refDirection=None, **kwargs_):
        super(OffsetCurveTypeSub, self).__init__(numDerivativesAtStart, numDerivativesAtEnd, numDerivativeInterior, offsetBase, distance, refDirection,  **kwargs_)
supermod.OffsetCurveType.subclass = OffsetCurveTypeSub
# end class OffsetCurveTypeSub


class AffinePlacementTypeSub(supermod.AffinePlacementType):
    def __init__(self, location=None, refDirection=None, inDimension=None, outDimension=None, **kwargs_):
        super(AffinePlacementTypeSub, self).__init__(location, refDirection, inDimension, outDimension,  **kwargs_)
supermod.AffinePlacementType.subclass = AffinePlacementTypeSub
# end class AffinePlacementTypeSub


class ClothoidTypeSub(supermod.ClothoidType):
    def __init__(self, numDerivativesAtStart='0', numDerivativesAtEnd='0', numDerivativeInterior='0', interpolation='clothoid', refLocation=None, scaleFactor=None, startParameter=None, endParameter=None, **kwargs_):
        super(ClothoidTypeSub, self).__init__(numDerivativesAtStart, numDerivativesAtEnd, numDerivativeInterior, interpolation, refLocation, scaleFactor, startParameter, endParameter,  **kwargs_)
supermod.ClothoidType.subclass = ClothoidTypeSub
# end class ClothoidTypeSub


class GeodesicStringTypeSub(supermod.GeodesicStringType):
    def __init__(self, numDerivativesAtStart='0', numDerivativesAtEnd='0', numDerivativeInterior='0', interpolation='geodesic', posList=None, pos=None, pointProperty=None, extensiontype_=None, **kwargs_):
        super(GeodesicStringTypeSub, self).__init__(numDerivativesAtStart, numDerivativesAtEnd, numDerivativeInterior, interpolation, posList, pos, pointProperty, extensiontype_,  **kwargs_)
supermod.GeodesicStringType.subclass = GeodesicStringTypeSub
# end class GeodesicStringTypeSub


class GeodesicTypeSub(supermod.GeodesicType):
    def __init__(self, numDerivativesAtStart='0', numDerivativesAtEnd='0', numDerivativeInterior='0', interpolation='geodesic', posList=None, pos=None, pointProperty=None, **kwargs_):
        super(GeodesicTypeSub, self).__init__(numDerivativesAtStart, numDerivativesAtEnd, numDerivativeInterior, interpolation, posList, pos, pointProperty,  **kwargs_)
supermod.GeodesicType.subclass = GeodesicTypeSub
# end class GeodesicTypeSub


class AbstractSurfacePatchTypeSub(supermod.AbstractSurfacePatchType):
    def __init__(self, extensiontype_=None, **kwargs_):
        super(AbstractSurfacePatchTypeSub, self).__init__(extensiontype_,  **kwargs_)
supermod.AbstractSurfacePatchType.subclass = AbstractSurfacePatchTypeSub
# end class AbstractSurfacePatchTypeSub


class SurfacePatchArrayPropertyTypeSub(supermod.SurfacePatchArrayPropertyType):
    def __init__(self, AbstractSurfacePatch=None, **kwargs_):
        super(SurfacePatchArrayPropertyTypeSub, self).__init__(AbstractSurfacePatch,  **kwargs_)
supermod.SurfacePatchArrayPropertyType.subclass = SurfacePatchArrayPropertyTypeSub
# end class SurfacePatchArrayPropertyTypeSub


class PolygonPatchTypeSub(supermod.PolygonPatchType):
    def __init__(self, interpolation='planar', exterior=None, interior=None, **kwargs_):
        super(PolygonPatchTypeSub, self).__init__(interpolation, exterior, interior,  **kwargs_)
supermod.PolygonPatchType.subclass = PolygonPatchTypeSub
# end class PolygonPatchTypeSub


class TriangleTypeSub(supermod.TriangleType):
    def __init__(self, interpolation='planar', exterior=None, **kwargs_):
        super(TriangleTypeSub, self).__init__(interpolation, exterior,  **kwargs_)
supermod.TriangleType.subclass = TriangleTypeSub
# end class TriangleTypeSub


class RectangleTypeSub(supermod.RectangleType):
    def __init__(self, interpolation='planar', exterior=None, **kwargs_):
        super(RectangleTypeSub, self).__init__(interpolation, exterior,  **kwargs_)
supermod.RectangleType.subclass = RectangleTypeSub
# end class RectangleTypeSub


class RingPropertyTypeSub(supermod.RingPropertyType):
    def __init__(self, Ring=None, **kwargs_):
        super(RingPropertyTypeSub, self).__init__(Ring,  **kwargs_)
supermod.RingPropertyType.subclass = RingPropertyTypeSub
# end class RingPropertyTypeSub


class AbstractParametricCurveSurfaceTypeSub(supermod.AbstractParametricCurveSurfaceType):
    def __init__(self, aggregationType=None, extensiontype_=None, **kwargs_):
        super(AbstractParametricCurveSurfaceTypeSub, self).__init__(aggregationType, extensiontype_,  **kwargs_)
supermod.AbstractParametricCurveSurfaceType.subclass = AbstractParametricCurveSurfaceTypeSub
# end class AbstractParametricCurveSurfaceTypeSub


class AbstractGriddedSurfaceTypeSub(supermod.AbstractGriddedSurfaceType):
    def __init__(self, aggregationType=None, rows_attr=None, columns=None, rows=None, extensiontype_=None, **kwargs_):
        super(AbstractGriddedSurfaceTypeSub, self).__init__(aggregationType, rows_attr, columns, rows, extensiontype_,  **kwargs_)
supermod.AbstractGriddedSurfaceType.subclass = AbstractGriddedSurfaceTypeSub
# end class AbstractGriddedSurfaceTypeSub


class ConeTypeSub(supermod.ConeType):
    def __init__(self, aggregationType=None, rows_attr=None, columns=None, rows=None, horizontalCurveType='circularArc3Points', verticalCurveType='linear', **kwargs_):
        super(ConeTypeSub, self).__init__(aggregationType, rows_attr, columns, rows, horizontalCurveType, verticalCurveType,  **kwargs_)
supermod.ConeType.subclass = ConeTypeSub
# end class ConeTypeSub


class CylinderTypeSub(supermod.CylinderType):
    def __init__(self, aggregationType=None, rows_attr=None, columns=None, rows=None, horizontalCurveType='circularArc3Points', verticalCurveType='linear', **kwargs_):
        super(CylinderTypeSub, self).__init__(aggregationType, rows_attr, columns, rows, horizontalCurveType, verticalCurveType,  **kwargs_)
supermod.CylinderType.subclass = CylinderTypeSub
# end class CylinderTypeSub


class SphereTypeSub(supermod.SphereType):
    def __init__(self, aggregationType=None, rows_attr=None, columns=None, rows=None, horizontalCurveType='circularArc3Points', verticalCurveType='circularArc3Points', **kwargs_):
        super(SphereTypeSub, self).__init__(aggregationType, rows_attr, columns, rows, horizontalCurveType, verticalCurveType,  **kwargs_)
supermod.SphereType.subclass = SphereTypeSub
# end class SphereTypeSub


class LineStringSegmentArrayPropertyTypeSub(supermod.LineStringSegmentArrayPropertyType):
    def __init__(self, LineStringSegment=None, **kwargs_):
        super(LineStringSegmentArrayPropertyTypeSub, self).__init__(LineStringSegment,  **kwargs_)
supermod.LineStringSegmentArrayPropertyType.subclass = LineStringSegmentArrayPropertyTypeSub
# end class LineStringSegmentArrayPropertyTypeSub


class SolidPropertyTypeSub(supermod.SolidPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, owns='false', AbstractSolid=None, **kwargs_):
        super(SolidPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, owns, AbstractSolid,  **kwargs_)
supermod.SolidPropertyType.subclass = SolidPropertyTypeSub
# end class SolidPropertyTypeSub


class SolidArrayPropertyTypeSub(supermod.SolidArrayPropertyType):
    def __init__(self, owns='false', AbstractSolid=None, **kwargs_):
        super(SolidArrayPropertyTypeSub, self).__init__(owns, AbstractSolid,  **kwargs_)
supermod.SolidArrayPropertyType.subclass = SolidArrayPropertyTypeSub
# end class SolidArrayPropertyTypeSub


class ShellPropertyTypeSub(supermod.ShellPropertyType):
    def __init__(self, Shell=None, **kwargs_):
        super(ShellPropertyTypeSub, self).__init__(Shell,  **kwargs_)
supermod.ShellPropertyType.subclass = ShellPropertyTypeSub
# end class ShellPropertyTypeSub


class SurfacePropertyTypeSub(supermod.SurfacePropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, owns='false', AbstractSurface=None, **kwargs_):
        super(SurfacePropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, owns, AbstractSurface,  **kwargs_)
supermod.SurfacePropertyType.subclass = SurfacePropertyTypeSub
# end class SurfacePropertyTypeSub


class SurfaceArrayPropertyTypeSub(supermod.SurfaceArrayPropertyType):
    def __init__(self, owns='false', AbstractSurface=None, **kwargs_):
        super(SurfaceArrayPropertyTypeSub, self).__init__(owns, AbstractSurface,  **kwargs_)
supermod.SurfaceArrayPropertyType.subclass = SurfaceArrayPropertyTypeSub
# end class SurfaceArrayPropertyTypeSub


class AbstractRingPropertyTypeSub(supermod.AbstractRingPropertyType):
    def __init__(self, AbstractRing=None, **kwargs_):
        super(AbstractRingPropertyTypeSub, self).__init__(AbstractRing,  **kwargs_)
supermod.AbstractRingPropertyType.subclass = AbstractRingPropertyTypeSub
# end class AbstractRingPropertyTypeSub


class LinearRingPropertyTypeSub(supermod.LinearRingPropertyType):
    def __init__(self, LinearRing=None, **kwargs_):
        super(LinearRingPropertyTypeSub, self).__init__(LinearRing,  **kwargs_)
supermod.LinearRingPropertyType.subclass = LinearRingPropertyTypeSub
# end class LinearRingPropertyTypeSub


class GeometryPropertyTypeSub(supermod.GeometryPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, owns='false', AbstractGeometry=None, **kwargs_):
        super(GeometryPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, owns, AbstractGeometry,  **kwargs_)
supermod.GeometryPropertyType.subclass = GeometryPropertyTypeSub
# end class GeometryPropertyTypeSub


class GeometryArrayPropertyTypeSub(supermod.GeometryArrayPropertyType):
    def __init__(self, owns='false', AbstractGeometry=None, **kwargs_):
        super(GeometryArrayPropertyTypeSub, self).__init__(owns, AbstractGeometry,  **kwargs_)
supermod.GeometryArrayPropertyType.subclass = GeometryArrayPropertyTypeSub
# end class GeometryArrayPropertyTypeSub


class DirectPositionTypeSub(supermod.DirectPositionType):
    def __init__(self, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, valueOf_=None, extensiontype_=None, **kwargs_):
        super(DirectPositionTypeSub, self).__init__(srsName, srsDimension, axisLabels, uomLabels, valueOf_, extensiontype_,  **kwargs_)
supermod.DirectPositionType.subclass = DirectPositionTypeSub
# end class DirectPositionTypeSub


class DirectPositionListTypeSub(supermod.DirectPositionListType):
    def __init__(self, count=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, valueOf_=None, **kwargs_):
        super(DirectPositionListTypeSub, self).__init__(count, srsName, srsDimension, axisLabels, uomLabels, valueOf_,  **kwargs_)
supermod.DirectPositionListType.subclass = DirectPositionListTypeSub
# end class DirectPositionListTypeSub


class VectorTypeSub(supermod.VectorType):
    def __init__(self, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, valueOf_=None, **kwargs_):
        super(VectorTypeSub, self).__init__(srsName, srsDimension, axisLabels, uomLabels, valueOf_,  **kwargs_)
supermod.VectorType.subclass = VectorTypeSub
# end class VectorTypeSub


class EnvelopeTypeSub(supermod.EnvelopeType):
    def __init__(self, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, lowerCorner=None, upperCorner=None, pos=None, coordinates=None, extensiontype_=None, **kwargs_):
        super(EnvelopeTypeSub, self).__init__(srsName, srsDimension, axisLabels, uomLabels, lowerCorner, upperCorner, pos, coordinates, extensiontype_,  **kwargs_)
supermod.EnvelopeType.subclass = EnvelopeTypeSub
# end class EnvelopeTypeSub


class GeometricPrimitivePropertyTypeSub(supermod.GeometricPrimitivePropertyType):
    def __init__(self, owns='false', type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, AbstractGeometricPrimitive=None, **kwargs_):
        super(GeometricPrimitivePropertyTypeSub, self).__init__(owns, type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, AbstractGeometricPrimitive,  **kwargs_)
supermod.GeometricPrimitivePropertyType.subclass = GeometricPrimitivePropertyTypeSub
# end class GeometricPrimitivePropertyTypeSub


class PointPropertyTypeSub(supermod.PointPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, owns='false', Point=None, **kwargs_):
        super(PointPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, owns, Point,  **kwargs_)
supermod.PointPropertyType.subclass = PointPropertyTypeSub
# end class PointPropertyTypeSub


class PointArrayPropertyTypeSub(supermod.PointArrayPropertyType):
    def __init__(self, owns='false', Point=None, **kwargs_):
        super(PointArrayPropertyTypeSub, self).__init__(owns, Point,  **kwargs_)
supermod.PointArrayPropertyType.subclass = PointArrayPropertyTypeSub
# end class PointArrayPropertyTypeSub


class CurvePropertyTypeSub(supermod.CurvePropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, owns='false', AbstractCurve=None, **kwargs_):
        super(CurvePropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, owns, AbstractCurve,  **kwargs_)
supermod.CurvePropertyType.subclass = CurvePropertyTypeSub
# end class CurvePropertyTypeSub


class CurveArrayPropertyTypeSub(supermod.CurveArrayPropertyType):
    def __init__(self, owns='false', AbstractCurve=None, **kwargs_):
        super(CurveArrayPropertyTypeSub, self).__init__(owns, AbstractCurve,  **kwargs_)
supermod.CurveArrayPropertyType.subclass = CurveArrayPropertyTypeSub
# end class CurveArrayPropertyTypeSub


class UnitOfMeasureTypeSub(supermod.UnitOfMeasureType):
    def __init__(self, uom=None, extensiontype_=None, **kwargs_):
        super(UnitOfMeasureTypeSub, self).__init__(uom, extensiontype_,  **kwargs_)
supermod.UnitOfMeasureType.subclass = UnitOfMeasureTypeSub
# end class UnitOfMeasureTypeSub


class DerivationUnitTermTypeSub(supermod.DerivationUnitTermType):
    def __init__(self, uom=None, exponent=None, **kwargs_):
        super(DerivationUnitTermTypeSub, self).__init__(uom, exponent,  **kwargs_)
supermod.DerivationUnitTermType.subclass = DerivationUnitTermTypeSub
# end class DerivationUnitTermTypeSub


class ConversionToPreferredUnitTypeSub(supermod.ConversionToPreferredUnitType):
    def __init__(self, uom=None, factor=None, formula=None, **kwargs_):
        super(ConversionToPreferredUnitTypeSub, self).__init__(uom, factor, formula,  **kwargs_)
supermod.ConversionToPreferredUnitType.subclass = ConversionToPreferredUnitTypeSub
# end class ConversionToPreferredUnitTypeSub


class FormulaTypeSub(supermod.FormulaType):
    def __init__(self, a=None, b=None, c=None, d=None, **kwargs_):
        super(FormulaTypeSub, self).__init__(a, b, c, d,  **kwargs_)
supermod.FormulaType.subclass = FormulaTypeSub
# end class FormulaTypeSub


class DefinitionBaseTypeSub(supermod.DefinitionBaseType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, extensiontype_=None, **kwargs_):
        super(DefinitionBaseTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, extensiontype_,  **kwargs_)
supermod.DefinitionBaseType.subclass = DefinitionBaseTypeSub
# end class DefinitionBaseTypeSub


class DefinitionTypeSub(supermod.DefinitionType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, extensiontype_=None, **kwargs_):
        super(DefinitionTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, extensiontype_,  **kwargs_)
supermod.DefinitionType.subclass = DefinitionTypeSub
# end class DefinitionTypeSub


class DictionaryTypeSub(supermod.DictionaryType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, aggregationType=None, dictionaryEntry=None, indirectEntry=None, **kwargs_):
        super(DictionaryTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, aggregationType, dictionaryEntry, indirectEntry,  **kwargs_)
supermod.DictionaryType.subclass = DictionaryTypeSub
# end class DictionaryTypeSub


class AbstractGMLTypeSub(supermod.AbstractGMLType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, extensiontype_=None, **kwargs_):
        super(AbstractGMLTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, extensiontype_,  **kwargs_)
supermod.AbstractGMLType.subclass = AbstractGMLTypeSub
# end class AbstractGMLTypeSub


class AssociationRoleTypeSub(supermod.AssociationRoleType):
    def __init__(self, owns='false', type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, anytypeobjs_=None, **kwargs_):
        super(AssociationRoleTypeSub, self).__init__(owns, type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, anytypeobjs_,  **kwargs_)
supermod.AssociationRoleType.subclass = AssociationRoleTypeSub
# end class AssociationRoleTypeSub


class ReferenceTypeSub(supermod.ReferenceType):
    def __init__(self, owns='false', type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, **kwargs_):
        super(ReferenceTypeSub, self).__init__(owns, type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema,  **kwargs_)
supermod.ReferenceType.subclass = ReferenceTypeSub
# end class ReferenceTypeSub


class InlinePropertyTypeSub(supermod.InlinePropertyType):
    def __init__(self, owns='false', anytypeobjs_=None, **kwargs_):
        super(InlinePropertyTypeSub, self).__init__(owns, anytypeobjs_,  **kwargs_)
supermod.InlinePropertyType.subclass = InlinePropertyTypeSub
# end class InlinePropertyTypeSub


class AbstractMemberTypeSub(supermod.AbstractMemberType):
    def __init__(self, owns='false', extensiontype_=None, **kwargs_):
        super(AbstractMemberTypeSub, self).__init__(owns, extensiontype_,  **kwargs_)
supermod.AbstractMemberType.subclass = AbstractMemberTypeSub
# end class AbstractMemberTypeSub


class AbstractMetadataPropertyTypeSub(supermod.AbstractMetadataPropertyType):
    def __init__(self, owns='false', **kwargs_):
        super(AbstractMetadataPropertyTypeSub, self).__init__(owns,  **kwargs_)
supermod.AbstractMetadataPropertyType.subclass = AbstractMetadataPropertyTypeSub
# end class AbstractMetadataPropertyTypeSub


class CodeType1Sub(supermod.CodeType1):
    def __init__(self, codeSpace=None, valueOf_=None, **kwargs_):
        super(CodeType1Sub, self).__init__(codeSpace, valueOf_,  **kwargs_)
supermod.CodeType1.subclass = CodeType1Sub
# end class CodeType1Sub


class CodeWithAuthorityTypeSub(supermod.CodeWithAuthorityType):
    def __init__(self, codeSpace=None, valueOf_=None, **kwargs_):
        super(CodeWithAuthorityTypeSub, self).__init__(codeSpace, valueOf_,  **kwargs_)
supermod.CodeWithAuthorityType.subclass = CodeWithAuthorityTypeSub
# end class CodeWithAuthorityTypeSub


class MeasureTypeSub(supermod.MeasureType):
    def __init__(self, uom=None, valueOf_=None, extensiontype_=None, **kwargs_):
        super(MeasureTypeSub, self).__init__(uom, valueOf_, extensiontype_,  **kwargs_)
supermod.MeasureType.subclass = MeasureTypeSub
# end class MeasureTypeSub


class CoordinatesTypeSub(supermod.CoordinatesType):
    def __init__(self, decimal='.', cs=',', ts=' ', valueOf_=None, **kwargs_):
        super(CoordinatesTypeSub, self).__init__(decimal, cs, ts, valueOf_,  **kwargs_)
supermod.CoordinatesType.subclass = CoordinatesTypeSub
# end class CoordinatesTypeSub


class CodeListTypeSub(supermod.CodeListType):
    def __init__(self, codeSpace=None, valueOf_=None, **kwargs_):
        super(CodeListTypeSub, self).__init__(codeSpace, valueOf_,  **kwargs_)
supermod.CodeListType.subclass = CodeListTypeSub
# end class CodeListTypeSub


class CodeOrNilReasonListTypeSub(supermod.CodeOrNilReasonListType):
    def __init__(self, codeSpace=None, valueOf_=None, extensiontype_=None, **kwargs_):
        super(CodeOrNilReasonListTypeSub, self).__init__(codeSpace, valueOf_, extensiontype_,  **kwargs_)
supermod.CodeOrNilReasonListType.subclass = CodeOrNilReasonListTypeSub
# end class CodeOrNilReasonListTypeSub


class MeasureListTypeSub(supermod.MeasureListType):
    def __init__(self, uom=None, valueOf_=None, **kwargs_):
        super(MeasureListTypeSub, self).__init__(uom, valueOf_,  **kwargs_)
supermod.MeasureListType.subclass = MeasureListTypeSub
# end class MeasureListTypeSub


class MeasureOrNilReasonListTypeSub(supermod.MeasureOrNilReasonListType):
    def __init__(self, uom=None, valueOf_=None, extensiontype_=None, **kwargs_):
        super(MeasureOrNilReasonListTypeSub, self).__init__(uom, valueOf_, extensiontype_,  **kwargs_)
supermod.MeasureOrNilReasonListType.subclass = MeasureOrNilReasonListTypeSub
# end class MeasureOrNilReasonListTypeSub


class simpleSub(supermod.simple):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, anytypeobjs_=None, valueOf_=None, mixedclass_=None, content_=None, **kwargs_):
        super(simpleSub, self).__init__(type_, href, role, arcrole, title, show, actuate, anytypeobjs_, valueOf_, mixedclass_, content_,  **kwargs_)
supermod.simple.subclass = simpleSub
# end class simpleSub


class extendedSub(supermod.extended):
    def __init__(self, type_='extended', role=None, title_attr=None, title=None, resource=None, locator=None, arc=None, **kwargs_):
        super(extendedSub, self).__init__(type_, role, title_attr, title, resource, locator, arc,  **kwargs_)
supermod.extended.subclass = extendedSub
# end class extendedSub


class titleEltTypeSub(supermod.titleEltType):
    def __init__(self, type_='title', lang=None, anytypeobjs_=None, valueOf_=None, mixedclass_=None, content_=None, **kwargs_):
        super(titleEltTypeSub, self).__init__(type_, lang, anytypeobjs_, valueOf_, mixedclass_, content_,  **kwargs_)
supermod.titleEltType.subclass = titleEltTypeSub
# end class titleEltTypeSub


class resourceTypeSub(supermod.resourceType):
    def __init__(self, type_='resource', role=None, title=None, label=None, anytypeobjs_=None, valueOf_=None, mixedclass_=None, content_=None, **kwargs_):
        super(resourceTypeSub, self).__init__(type_, role, title, label, anytypeobjs_, valueOf_, mixedclass_, content_,  **kwargs_)
supermod.resourceType.subclass = resourceTypeSub
# end class resourceTypeSub


class locatorTypeSub(supermod.locatorType):
    def __init__(self, type_='locator', href=None, role=None, title_attr=None, label=None, title=None, **kwargs_):
        super(locatorTypeSub, self).__init__(type_, href, role, title_attr, label, title,  **kwargs_)
supermod.locatorType.subclass = locatorTypeSub
# end class locatorTypeSub


class arcTypeSub(supermod.arcType):
    def __init__(self, type_='arc', arcrole=None, title_attr=None, show=None, actuate=None, from_=None, to=None, title=None, **kwargs_):
        super(arcTypeSub, self).__init__(type_, arcrole, title_attr, show, actuate, from_, to, title,  **kwargs_)
supermod.arcType.subclass = arcTypeSub
# end class arcTypeSub


class AbstractTimeObjectTypeSub(supermod.AbstractTimeObjectType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, extensiontype_=None, **kwargs_):
        super(AbstractTimeObjectTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, extensiontype_,  **kwargs_)
supermod.AbstractTimeObjectType.subclass = AbstractTimeObjectTypeSub
# end class AbstractTimeObjectTypeSub


class AbstractTimePrimitiveTypeSub(supermod.AbstractTimePrimitiveType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, relatedTime=None, extensiontype_=None, **kwargs_):
        super(AbstractTimePrimitiveTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, relatedTime, extensiontype_,  **kwargs_)
supermod.AbstractTimePrimitiveType.subclass = AbstractTimePrimitiveTypeSub
# end class AbstractTimePrimitiveTypeSub


class TimePrimitivePropertyTypeSub(supermod.TimePrimitivePropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, owns='false', AbstractTimePrimitive=None, extensiontype_=None, **kwargs_):
        super(TimePrimitivePropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, owns, AbstractTimePrimitive, extensiontype_,  **kwargs_)
supermod.TimePrimitivePropertyType.subclass = TimePrimitivePropertyTypeSub
# end class TimePrimitivePropertyTypeSub


class RelatedTimeTypeSub(supermod.RelatedTimeType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, owns='false', AbstractTimePrimitive=None, relativePosition=None, **kwargs_):
        super(RelatedTimeTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, owns, AbstractTimePrimitive, relativePosition,  **kwargs_)
supermod.RelatedTimeType.subclass = RelatedTimeTypeSub
# end class RelatedTimeTypeSub


class AbstractTimeComplexTypeSub(supermod.AbstractTimeComplexType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, extensiontype_=None, **kwargs_):
        super(AbstractTimeComplexTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, extensiontype_,  **kwargs_)
supermod.AbstractTimeComplexType.subclass = AbstractTimeComplexTypeSub
# end class AbstractTimeComplexTypeSub


class AbstractTimeGeometricPrimitiveTypeSub(supermod.AbstractTimeGeometricPrimitiveType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, relatedTime=None, frame='#ISO-8601', extensiontype_=None, **kwargs_):
        super(AbstractTimeGeometricPrimitiveTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, relatedTime, frame, extensiontype_,  **kwargs_)
supermod.AbstractTimeGeometricPrimitiveType.subclass = AbstractTimeGeometricPrimitiveTypeSub
# end class AbstractTimeGeometricPrimitiveTypeSub


class TimeInstantTypeSub(supermod.TimeInstantType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, relatedTime=None, frame='#ISO-8601', timePosition=None, **kwargs_):
        super(TimeInstantTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, relatedTime, frame, timePosition,  **kwargs_)
supermod.TimeInstantType.subclass = TimeInstantTypeSub
# end class TimeInstantTypeSub


class TimeInstantPropertyTypeSub(supermod.TimeInstantPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, owns='false', TimeInstant=None, **kwargs_):
        super(TimeInstantPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, owns, TimeInstant,  **kwargs_)
supermod.TimeInstantPropertyType.subclass = TimeInstantPropertyTypeSub
# end class TimeInstantPropertyTypeSub


class TimePeriodTypeSub(supermod.TimePeriodType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, relatedTime=None, frame='#ISO-8601', beginPosition=None, begin=None, endPosition=None, end=None, duration=None, timeInterval=None, **kwargs_):
        super(TimePeriodTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, relatedTime, frame, beginPosition, begin, endPosition, end, duration, timeInterval,  **kwargs_)
supermod.TimePeriodType.subclass = TimePeriodTypeSub
# end class TimePeriodTypeSub


class TimePeriodPropertyTypeSub(supermod.TimePeriodPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, owns='false', TimePeriod=None, **kwargs_):
        super(TimePeriodPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, owns, TimePeriod,  **kwargs_)
supermod.TimePeriodPropertyType.subclass = TimePeriodPropertyTypeSub
# end class TimePeriodPropertyTypeSub


class TimePositionTypeSub(supermod.TimePositionType):
    def __init__(self, frame='#ISO-8601', calendarEraName=None, indeterminatePosition=None, valueOf_=None, **kwargs_):
        super(TimePositionTypeSub, self).__init__(frame, calendarEraName, indeterminatePosition, valueOf_,  **kwargs_)
supermod.TimePositionType.subclass = TimePositionTypeSub
# end class TimePositionTypeSub


class TimeIntervalLengthTypeSub(supermod.TimeIntervalLengthType):
    def __init__(self, unit=None, radix=None, factor=None, valueOf_=None, **kwargs_):
        super(TimeIntervalLengthTypeSub, self).__init__(unit, radix, factor, valueOf_,  **kwargs_)
supermod.TimeIntervalLengthType.subclass = TimeIntervalLengthTypeSub
# end class TimeIntervalLengthTypeSub


class DirectionPropertyTypeSub(supermod.DirectionPropertyType):
    def __init__(self, owns='false', type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, DirectionVector=None, DirectionDescription=None, CompassPoint=None, DirectionKeyword=None, DirectionString=None, **kwargs_):
        super(DirectionPropertyTypeSub, self).__init__(owns, type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, DirectionVector, DirectionDescription, CompassPoint, DirectionKeyword, DirectionString,  **kwargs_)
supermod.DirectionPropertyType.subclass = DirectionPropertyTypeSub
# end class DirectionPropertyTypeSub


class DirectionVectorTypeSub(supermod.DirectionVectorType):
    def __init__(self, vector=None, horizontalAngle=None, verticalAngle=None, **kwargs_):
        super(DirectionVectorTypeSub, self).__init__(vector, horizontalAngle, verticalAngle,  **kwargs_)
supermod.DirectionVectorType.subclass = DirectionVectorTypeSub
# end class DirectionVectorTypeSub


class DirectionDescriptionTypeSub(supermod.DirectionDescriptionType):
    def __init__(self, compassPoint=None, keyword=None, description=None, reference=None, **kwargs_):
        super(DirectionDescriptionTypeSub, self).__init__(compassPoint, keyword, description, reference,  **kwargs_)
supermod.DirectionDescriptionType.subclass = DirectionDescriptionTypeSub
# end class DirectionDescriptionTypeSub


class AbstractTopologyTypeSub(supermod.AbstractTopologyType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, extensiontype_=None, **kwargs_):
        super(AbstractTopologyTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, extensiontype_,  **kwargs_)
supermod.AbstractTopologyType.subclass = AbstractTopologyTypeSub
# end class AbstractTopologyTypeSub


class AbstractTopoPrimitiveTypeSub(supermod.AbstractTopoPrimitiveType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, extensiontype_=None, **kwargs_):
        super(AbstractTopoPrimitiveTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, extensiontype_,  **kwargs_)
supermod.AbstractTopoPrimitiveType.subclass = AbstractTopoPrimitiveTypeSub
# end class AbstractTopoPrimitiveTypeSub


class NodeOrEdgePropertyTypeSub(supermod.NodeOrEdgePropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, owns='false', Node=None, Edge=None, **kwargs_):
        super(NodeOrEdgePropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, owns, Node, Edge,  **kwargs_)
supermod.NodeOrEdgePropertyType.subclass = NodeOrEdgePropertyTypeSub
# end class NodeOrEdgePropertyTypeSub


class NodePropertyTypeSub(supermod.NodePropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, owns='false', Node=None, **kwargs_):
        super(NodePropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, owns, Node,  **kwargs_)
supermod.NodePropertyType.subclass = NodePropertyTypeSub
# end class NodePropertyTypeSub


class FaceOrTopoSolidPropertyTypeSub(supermod.FaceOrTopoSolidPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, owns='false', Face=None, TopoSolid=None, **kwargs_):
        super(FaceOrTopoSolidPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, owns, Face, TopoSolid,  **kwargs_)
supermod.FaceOrTopoSolidPropertyType.subclass = FaceOrTopoSolidPropertyTypeSub
# end class FaceOrTopoSolidPropertyTypeSub


class TopoSolidPropertyTypeSub(supermod.TopoSolidPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, owns='false', TopoSolid=None, **kwargs_):
        super(TopoSolidPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, owns, TopoSolid,  **kwargs_)
supermod.TopoSolidPropertyType.subclass = TopoSolidPropertyTypeSub
# end class TopoSolidPropertyTypeSub


class NodeTypeSub(supermod.NodeType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, aggregationType=None, container=None, directedEdge=None, pointProperty=None, **kwargs_):
        super(NodeTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, aggregationType, container, directedEdge, pointProperty,  **kwargs_)
supermod.NodeType.subclass = NodeTypeSub
# end class NodeTypeSub


class DirectedNodePropertyTypeSub(supermod.DirectedNodePropertyType):
    def __init__(self, orientation='+', type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, owns='false', Node=None, **kwargs_):
        super(DirectedNodePropertyTypeSub, self).__init__(orientation, type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, owns, Node,  **kwargs_)
supermod.DirectedNodePropertyType.subclass = DirectedNodePropertyTypeSub
# end class DirectedNodePropertyTypeSub


class EdgeTypeSub(supermod.EdgeType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, aggregationType=None, container=None, directedNode=None, directedFace=None, curveProperty=None, **kwargs_):
        super(EdgeTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, aggregationType, container, directedNode, directedFace, curveProperty,  **kwargs_)
supermod.EdgeType.subclass = EdgeTypeSub
# end class EdgeTypeSub


class DirectedEdgePropertyTypeSub(supermod.DirectedEdgePropertyType):
    def __init__(self, orientation='+', type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, owns='false', Edge=None, **kwargs_):
        super(DirectedEdgePropertyTypeSub, self).__init__(orientation, type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, owns, Edge,  **kwargs_)
supermod.DirectedEdgePropertyType.subclass = DirectedEdgePropertyTypeSub
# end class DirectedEdgePropertyTypeSub


class FaceTypeSub(supermod.FaceType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, universal='false', aggregationType=None, isolated=None, directedEdge=None, directedTopoSolid=None, surfaceProperty=None, **kwargs_):
        super(FaceTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, universal, aggregationType, isolated, directedEdge, directedTopoSolid, surfaceProperty,  **kwargs_)
supermod.FaceType.subclass = FaceTypeSub
# end class FaceTypeSub


class DirectedFacePropertyTypeSub(supermod.DirectedFacePropertyType):
    def __init__(self, orientation='+', type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, owns='false', Face=None, **kwargs_):
        super(DirectedFacePropertyTypeSub, self).__init__(orientation, type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, owns, Face,  **kwargs_)
supermod.DirectedFacePropertyType.subclass = DirectedFacePropertyTypeSub
# end class DirectedFacePropertyTypeSub


class TopoSolidTypeSub(supermod.TopoSolidType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, universal='false', aggregationType=None, isolated=None, directedFace=None, solidProperty=None, **kwargs_):
        super(TopoSolidTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, universal, aggregationType, isolated, directedFace, solidProperty,  **kwargs_)
supermod.TopoSolidType.subclass = TopoSolidTypeSub
# end class TopoSolidTypeSub


class DirectedTopoSolidPropertyTypeSub(supermod.DirectedTopoSolidPropertyType):
    def __init__(self, orientation='+', type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, owns='false', TopoSolid=None, **kwargs_):
        super(DirectedTopoSolidPropertyTypeSub, self).__init__(orientation, type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, owns, TopoSolid,  **kwargs_)
supermod.DirectedTopoSolidPropertyType.subclass = DirectedTopoSolidPropertyTypeSub
# end class DirectedTopoSolidPropertyTypeSub


class TopoPointTypeSub(supermod.TopoPointType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, directedNode=None, **kwargs_):
        super(TopoPointTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, directedNode,  **kwargs_)
supermod.TopoPointType.subclass = TopoPointTypeSub
# end class TopoPointTypeSub


class TopoPointPropertyTypeSub(supermod.TopoPointPropertyType):
    def __init__(self, owns='false', TopoPoint=None, **kwargs_):
        super(TopoPointPropertyTypeSub, self).__init__(owns, TopoPoint,  **kwargs_)
supermod.TopoPointPropertyType.subclass = TopoPointPropertyTypeSub
# end class TopoPointPropertyTypeSub


class TopoCurveTypeSub(supermod.TopoCurveType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, aggregationType=None, directedEdge=None, **kwargs_):
        super(TopoCurveTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, aggregationType, directedEdge,  **kwargs_)
supermod.TopoCurveType.subclass = TopoCurveTypeSub
# end class TopoCurveTypeSub


class TopoCurvePropertyTypeSub(supermod.TopoCurvePropertyType):
    def __init__(self, owns='false', TopoCurve=None, **kwargs_):
        super(TopoCurvePropertyTypeSub, self).__init__(owns, TopoCurve,  **kwargs_)
supermod.TopoCurvePropertyType.subclass = TopoCurvePropertyTypeSub
# end class TopoCurvePropertyTypeSub


class TopoSurfaceTypeSub(supermod.TopoSurfaceType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, aggregationType=None, directedFace=None, **kwargs_):
        super(TopoSurfaceTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, aggregationType, directedFace,  **kwargs_)
supermod.TopoSurfaceType.subclass = TopoSurfaceTypeSub
# end class TopoSurfaceTypeSub


class TopoSurfacePropertyTypeSub(supermod.TopoSurfacePropertyType):
    def __init__(self, owns='false', TopoSurface=None, **kwargs_):
        super(TopoSurfacePropertyTypeSub, self).__init__(owns, TopoSurface,  **kwargs_)
supermod.TopoSurfacePropertyType.subclass = TopoSurfacePropertyTypeSub
# end class TopoSurfacePropertyTypeSub


class TopoVolumeTypeSub(supermod.TopoVolumeType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, aggregationType=None, directedTopoSolid=None, **kwargs_):
        super(TopoVolumeTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, aggregationType, directedTopoSolid,  **kwargs_)
supermod.TopoVolumeType.subclass = TopoVolumeTypeSub
# end class TopoVolumeTypeSub


class TopoVolumePropertyTypeSub(supermod.TopoVolumePropertyType):
    def __init__(self, owns='false', TopoVolume=None, **kwargs_):
        super(TopoVolumePropertyTypeSub, self).__init__(owns, TopoVolume,  **kwargs_)
supermod.TopoVolumePropertyType.subclass = TopoVolumePropertyTypeSub
# end class TopoVolumePropertyTypeSub


class TopoComplexTypeSub(supermod.TopoComplexType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, isMaximal='false', aggregationType=None, maximalComplex=None, superComplex=None, subComplex=None, topoPrimitiveMember=None, topoPrimitiveMembers=None, **kwargs_):
        super(TopoComplexTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, isMaximal, aggregationType, maximalComplex, superComplex, subComplex, topoPrimitiveMember, topoPrimitiveMembers,  **kwargs_)
supermod.TopoComplexType.subclass = TopoComplexTypeSub
# end class TopoComplexTypeSub


class TopoPrimitiveMemberTypeSub(supermod.TopoPrimitiveMemberType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, owns='false', AbstractTopoPrimitive=None, **kwargs_):
        super(TopoPrimitiveMemberTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, owns, AbstractTopoPrimitive,  **kwargs_)
supermod.TopoPrimitiveMemberType.subclass = TopoPrimitiveMemberTypeSub
# end class TopoPrimitiveMemberTypeSub


class TopoPrimitiveArrayAssociationTypeSub(supermod.TopoPrimitiveArrayAssociationType):
    def __init__(self, owns='false', AbstractTopoPrimitive=None, **kwargs_):
        super(TopoPrimitiveArrayAssociationTypeSub, self).__init__(owns, AbstractTopoPrimitive,  **kwargs_)
supermod.TopoPrimitiveArrayAssociationType.subclass = TopoPrimitiveArrayAssociationTypeSub
# end class TopoPrimitiveArrayAssociationTypeSub


class TopoComplexPropertyTypeSub(supermod.TopoComplexPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, TopoComplex=None, **kwargs_):
        super(TopoComplexPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, TopoComplex,  **kwargs_)
supermod.TopoComplexPropertyType.subclass = TopoComplexPropertyTypeSub
# end class TopoComplexPropertyTypeSub


class GeometricComplexPropertyTypeSub(supermod.GeometricComplexPropertyType):
    def __init__(self, owns='false', type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, GeometricComplex=None, CompositeCurve=None, CompositeSurface=None, CompositeSolid=None, **kwargs_):
        super(GeometricComplexPropertyTypeSub, self).__init__(owns, type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, GeometricComplex, CompositeCurve, CompositeSurface, CompositeSolid,  **kwargs_)
supermod.GeometricComplexPropertyType.subclass = GeometricComplexPropertyTypeSub
# end class GeometricComplexPropertyTypeSub


class DomainSetTypeSub(supermod.DomainSetType):
    def __init__(self, owns='false', type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, AbstractGeometry=None, AbstractTimeObject=None, **kwargs_):
        super(DomainSetTypeSub, self).__init__(owns, type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, AbstractGeometry, AbstractTimeObject,  **kwargs_)
supermod.DomainSetType.subclass = DomainSetTypeSub
# end class DomainSetTypeSub


class RangeSetTypeSub(supermod.RangeSetType):
    def __init__(self, ValueArray=None, AbstractScalarValueList=None, DataBlock=None, File=None, **kwargs_):
        super(RangeSetTypeSub, self).__init__(ValueArray, AbstractScalarValueList, DataBlock, File,  **kwargs_)
supermod.RangeSetType.subclass = RangeSetTypeSub
# end class RangeSetTypeSub


class DataBlockTypeSub(supermod.DataBlockType):
    def __init__(self, rangeParameters=None, tupleList=None, doubleOrNilReasonTupleList=None, **kwargs_):
        super(DataBlockTypeSub, self).__init__(rangeParameters, tupleList, doubleOrNilReasonTupleList,  **kwargs_)
supermod.DataBlockType.subclass = DataBlockTypeSub
# end class DataBlockTypeSub


class FileTypeSub(supermod.FileType):
    def __init__(self, rangeParameters=None, fileName=None, fileReference=None, fileStructure=None, mimeType=None, compression=None, **kwargs_):
        super(FileTypeSub, self).__init__(rangeParameters, fileName, fileReference, fileStructure, mimeType, compression,  **kwargs_)
supermod.FileType.subclass = FileTypeSub
# end class FileTypeSub


class CoverageFunctionTypeSub(supermod.CoverageFunctionType):
    def __init__(self, MappingRule=None, CoverageMappingRule=None, GridFunction=None, **kwargs_):
        super(CoverageFunctionTypeSub, self).__init__(MappingRule, CoverageMappingRule, GridFunction,  **kwargs_)
supermod.CoverageFunctionType.subclass = CoverageFunctionTypeSub
# end class CoverageFunctionTypeSub


class MappingRuleTypeSub(supermod.MappingRuleType):
    def __init__(self, ruleDefinition=None, ruleReference=None, **kwargs_):
        super(MappingRuleTypeSub, self).__init__(ruleDefinition, ruleReference,  **kwargs_)
supermod.MappingRuleType.subclass = MappingRuleTypeSub
# end class MappingRuleTypeSub


class GridFunctionTypeSub(supermod.GridFunctionType):
    def __init__(self, sequenceRule=None, startPoint=None, **kwargs_):
        super(GridFunctionTypeSub, self).__init__(sequenceRule, startPoint,  **kwargs_)
supermod.GridFunctionType.subclass = GridFunctionTypeSub
# end class GridFunctionTypeSub


class SequenceRuleTypeSub(supermod.SequenceRuleType):
    def __init__(self, order=None, axisOrder=None, valueOf_=None, **kwargs_):
        super(SequenceRuleTypeSub, self).__init__(order, axisOrder, valueOf_,  **kwargs_)
supermod.SequenceRuleType.subclass = SequenceRuleTypeSub
# end class SequenceRuleTypeSub


class CategorySub(supermod.Category):
    def __init__(self, nilReason=None, valueOf_=None, **kwargs_):
        super(CategorySub, self).__init__(nilReason, valueOf_,  **kwargs_)
supermod.Category.subclass = CategorySub
# end class CategorySub


class CountSub(supermod.Count):
    def __init__(self, nilReason=None, valueOf_=None, **kwargs_):
        super(CountSub, self).__init__(nilReason, valueOf_,  **kwargs_)
supermod.Count.subclass = CountSub
# end class CountSub


class QuantitySub(supermod.Quantity):
    def __init__(self, uom=None, nilReason=None, valueOf_=None, **kwargs_):
        super(QuantitySub, self).__init__(uom, nilReason, valueOf_,  **kwargs_)
supermod.Quantity.subclass = QuantitySub
# end class QuantitySub


class ValuePropertyTypeSub(supermod.ValuePropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, owns='false', AbstractValue=None, AbstractGeometry=None, AbstractTimeObject=None, Null=None, **kwargs_):
        super(ValuePropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, owns, AbstractValue, AbstractGeometry, AbstractTimeObject, Null,  **kwargs_)
supermod.ValuePropertyType.subclass = ValuePropertyTypeSub
# end class ValuePropertyTypeSub


class ValueArrayPropertyTypeSub(supermod.ValueArrayPropertyType):
    def __init__(self, owns='false', AbstractValue=None, AbstractGeometry=None, AbstractTimeObject=None, Null=None, **kwargs_):
        super(ValueArrayPropertyTypeSub, self).__init__(owns, AbstractValue, AbstractGeometry, AbstractTimeObject, Null,  **kwargs_)
supermod.ValueArrayPropertyType.subclass = ValueArrayPropertyTypeSub
# end class ValueArrayPropertyTypeSub


class CompositeValueTypeSub(supermod.CompositeValueType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, aggregationType=None, valueComponent=None, valueComponents=None, extensiontype_=None, **kwargs_):
        super(CompositeValueTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, aggregationType, valueComponent, valueComponents, extensiontype_,  **kwargs_)
supermod.CompositeValueType.subclass = CompositeValueTypeSub
# end class CompositeValueTypeSub


class ValueArrayTypeSub(supermod.ValueArrayType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, aggregationType=None, valueComponent=None, valueComponents=None, codeSpace=None, uom=None, **kwargs_):
        super(ValueArrayTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, aggregationType, valueComponent, valueComponents, codeSpace, uom,  **kwargs_)
supermod.ValueArrayType.subclass = ValueArrayTypeSub
# end class ValueArrayTypeSub


class CategoryExtentTypeSub(supermod.CategoryExtentType):
    def __init__(self, codeSpace=None, valueOf_=None, **kwargs_):
        super(CategoryExtentTypeSub, self).__init__(codeSpace, valueOf_,  **kwargs_)
supermod.CategoryExtentType.subclass = CategoryExtentTypeSub
# end class CategoryExtentTypeSub


class QuantityExtentTypeSub(supermod.QuantityExtentType):
    def __init__(self, uom=None, valueOf_=None, **kwargs_):
        super(QuantityExtentTypeSub, self).__init__(uom, valueOf_,  **kwargs_)
supermod.QuantityExtentType.subclass = QuantityExtentTypeSub
# end class QuantityExtentTypeSub


class BooleanPropertyTypeSub(supermod.BooleanPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, Boolean=None, **kwargs_):
        super(BooleanPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, Boolean,  **kwargs_)
supermod.BooleanPropertyType.subclass = BooleanPropertyTypeSub
# end class BooleanPropertyTypeSub


class CategoryPropertyTypeSub(supermod.CategoryPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, Category=None, **kwargs_):
        super(CategoryPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, Category,  **kwargs_)
supermod.CategoryPropertyType.subclass = CategoryPropertyTypeSub
# end class CategoryPropertyTypeSub


class QuantityPropertyTypeSub(supermod.QuantityPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, Quantity=None, **kwargs_):
        super(QuantityPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, Quantity,  **kwargs_)
supermod.QuantityPropertyType.subclass = QuantityPropertyTypeSub
# end class QuantityPropertyTypeSub


class CountPropertyTypeSub(supermod.CountPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, Count=None, **kwargs_):
        super(CountPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, Count,  **kwargs_)
supermod.CountPropertyType.subclass = CountPropertyTypeSub
# end class CountPropertyTypeSub


class GridLimitsTypeSub(supermod.GridLimitsType):
    def __init__(self, GridEnvelope=None, **kwargs_):
        super(GridLimitsTypeSub, self).__init__(GridEnvelope,  **kwargs_)
supermod.GridLimitsType.subclass = GridLimitsTypeSub
# end class GridLimitsTypeSub


class GridEnvelopeTypeSub(supermod.GridEnvelopeType):
    def __init__(self, low=None, high=None, **kwargs_):
        super(GridEnvelopeTypeSub, self).__init__(low, high,  **kwargs_)
supermod.GridEnvelopeType.subclass = GridEnvelopeTypeSub
# end class GridEnvelopeTypeSub


class SingleCRSPropertyTypeSub(supermod.SingleCRSPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, AbstractSingleCRS=None, **kwargs_):
        super(SingleCRSPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, AbstractSingleCRS,  **kwargs_)
supermod.SingleCRSPropertyType.subclass = SingleCRSPropertyTypeSub
# end class SingleCRSPropertyTypeSub


class CompoundCRSPropertyTypeSub(supermod.CompoundCRSPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, CompoundCRS=None, **kwargs_):
        super(CompoundCRSPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, CompoundCRS,  **kwargs_)
supermod.CompoundCRSPropertyType.subclass = CompoundCRSPropertyTypeSub
# end class CompoundCRSPropertyTypeSub


class GeodeticCRSPropertyTypeSub(supermod.GeodeticCRSPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, GeodeticCRS=None, **kwargs_):
        super(GeodeticCRSPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, GeodeticCRS,  **kwargs_)
supermod.GeodeticCRSPropertyType.subclass = GeodeticCRSPropertyTypeSub
# end class GeodeticCRSPropertyTypeSub


class VerticalCRSPropertyTypeSub(supermod.VerticalCRSPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, VerticalCRS=None, **kwargs_):
        super(VerticalCRSPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, VerticalCRS,  **kwargs_)
supermod.VerticalCRSPropertyType.subclass = VerticalCRSPropertyTypeSub
# end class VerticalCRSPropertyTypeSub


class ProjectedCRSPropertyTypeSub(supermod.ProjectedCRSPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, ProjectedCRS=None, **kwargs_):
        super(ProjectedCRSPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, ProjectedCRS,  **kwargs_)
supermod.ProjectedCRSPropertyType.subclass = ProjectedCRSPropertyTypeSub
# end class ProjectedCRSPropertyTypeSub


class DerivedCRSPropertyTypeSub(supermod.DerivedCRSPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, DerivedCRS=None, **kwargs_):
        super(DerivedCRSPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, DerivedCRS,  **kwargs_)
supermod.DerivedCRSPropertyType.subclass = DerivedCRSPropertyTypeSub
# end class DerivedCRSPropertyTypeSub


class EngineeringCRSPropertyTypeSub(supermod.EngineeringCRSPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, EngineeringCRS=None, **kwargs_):
        super(EngineeringCRSPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, EngineeringCRS,  **kwargs_)
supermod.EngineeringCRSPropertyType.subclass = EngineeringCRSPropertyTypeSub
# end class EngineeringCRSPropertyTypeSub


class ImageCRSPropertyTypeSub(supermod.ImageCRSPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, ImageCRS=None, **kwargs_):
        super(ImageCRSPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, ImageCRS,  **kwargs_)
supermod.ImageCRSPropertyType.subclass = ImageCRSPropertyTypeSub
# end class ImageCRSPropertyTypeSub


class TemporalCRSPropertyTypeSub(supermod.TemporalCRSPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, TemporalCRS=None, **kwargs_):
        super(TemporalCRSPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, TemporalCRS,  **kwargs_)
supermod.TemporalCRSPropertyType.subclass = TemporalCRSPropertyTypeSub
# end class TemporalCRSPropertyTypeSub


class CoordinateSystemAxisPropertyTypeSub(supermod.CoordinateSystemAxisPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, CoordinateSystemAxis=None, **kwargs_):
        super(CoordinateSystemAxisPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, CoordinateSystemAxis,  **kwargs_)
supermod.CoordinateSystemAxisPropertyType.subclass = CoordinateSystemAxisPropertyTypeSub
# end class CoordinateSystemAxisPropertyTypeSub


class CoordinateSystemPropertyTypeSub(supermod.CoordinateSystemPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, AbstractCoordinateSystem=None, **kwargs_):
        super(CoordinateSystemPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, AbstractCoordinateSystem,  **kwargs_)
supermod.CoordinateSystemPropertyType.subclass = CoordinateSystemPropertyTypeSub
# end class CoordinateSystemPropertyTypeSub


class EllipsoidalCSPropertyTypeSub(supermod.EllipsoidalCSPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, EllipsoidalCS=None, **kwargs_):
        super(EllipsoidalCSPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, EllipsoidalCS,  **kwargs_)
supermod.EllipsoidalCSPropertyType.subclass = EllipsoidalCSPropertyTypeSub
# end class EllipsoidalCSPropertyTypeSub


class CartesianCSPropertyTypeSub(supermod.CartesianCSPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, CartesianCS=None, **kwargs_):
        super(CartesianCSPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, CartesianCS,  **kwargs_)
supermod.CartesianCSPropertyType.subclass = CartesianCSPropertyTypeSub
# end class CartesianCSPropertyTypeSub


class VerticalCSPropertyTypeSub(supermod.VerticalCSPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, VerticalCS=None, **kwargs_):
        super(VerticalCSPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, VerticalCS,  **kwargs_)
supermod.VerticalCSPropertyType.subclass = VerticalCSPropertyTypeSub
# end class VerticalCSPropertyTypeSub


class TimeCSPropertyTypeSub(supermod.TimeCSPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, TimeCS=None, **kwargs_):
        super(TimeCSPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, TimeCS,  **kwargs_)
supermod.TimeCSPropertyType.subclass = TimeCSPropertyTypeSub
# end class TimeCSPropertyTypeSub


class LinearCSPropertyTypeSub(supermod.LinearCSPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, LinearCS=None, **kwargs_):
        super(LinearCSPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, LinearCS,  **kwargs_)
supermod.LinearCSPropertyType.subclass = LinearCSPropertyTypeSub
# end class LinearCSPropertyTypeSub


class UserDefinedCSPropertyTypeSub(supermod.UserDefinedCSPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, UserDefinedCS=None, **kwargs_):
        super(UserDefinedCSPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, UserDefinedCS,  **kwargs_)
supermod.UserDefinedCSPropertyType.subclass = UserDefinedCSPropertyTypeSub
# end class UserDefinedCSPropertyTypeSub


class SphericalCSPropertyTypeSub(supermod.SphericalCSPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, SphericalCS=None, **kwargs_):
        super(SphericalCSPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, SphericalCS,  **kwargs_)
supermod.SphericalCSPropertyType.subclass = SphericalCSPropertyTypeSub
# end class SphericalCSPropertyTypeSub


class PolarCSPropertyTypeSub(supermod.PolarCSPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, PolarCS=None, **kwargs_):
        super(PolarCSPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, PolarCS,  **kwargs_)
supermod.PolarCSPropertyType.subclass = PolarCSPropertyTypeSub
# end class PolarCSPropertyTypeSub


class CylindricalCSPropertyTypeSub(supermod.CylindricalCSPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, CylindricalCS=None, **kwargs_):
        super(CylindricalCSPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, CylindricalCS,  **kwargs_)
supermod.CylindricalCSPropertyType.subclass = CylindricalCSPropertyTypeSub
# end class CylindricalCSPropertyTypeSub


class AffineCSPropertyTypeSub(supermod.AffineCSPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, AffineCS=None, **kwargs_):
        super(AffineCSPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, AffineCS,  **kwargs_)
supermod.AffineCSPropertyType.subclass = AffineCSPropertyTypeSub
# end class AffineCSPropertyTypeSub


class IdentifiedObjectTypeSub(supermod.IdentifiedObjectType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, extensiontype_=None, **kwargs_):
        super(IdentifiedObjectTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, extensiontype_,  **kwargs_)
supermod.IdentifiedObjectType.subclass = IdentifiedObjectTypeSub
# end class IdentifiedObjectTypeSub


class AbstractCRSTypeSub(supermod.AbstractCRSType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, scope=None, extensiontype_=None, **kwargs_):
        super(AbstractCRSTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, scope, extensiontype_,  **kwargs_)
supermod.AbstractCRSType.subclass = AbstractCRSTypeSub
# end class AbstractCRSTypeSub


class domainOfValiditySub(supermod.domainOfValidity):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, EX_Extent=None, **kwargs_):
        super(domainOfValiditySub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, EX_Extent,  **kwargs_)
supermod.domainOfValidity.subclass = domainOfValiditySub
# end class domainOfValiditySub


class CRSPropertyTypeSub(supermod.CRSPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, AbstractCRS=None, **kwargs_):
        super(CRSPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, AbstractCRS,  **kwargs_)
supermod.CRSPropertyType.subclass = CRSPropertyTypeSub
# end class CRSPropertyTypeSub


class DS_Aggregate_PropertyTypeSub(supermod.DS_Aggregate_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, AbstractDS_Aggregate=None, **kwargs_):
        super(DS_Aggregate_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, AbstractDS_Aggregate,  **kwargs_)
supermod.DS_Aggregate_PropertyType.subclass = DS_Aggregate_PropertyTypeSub
# end class DS_Aggregate_PropertyTypeSub


class DS_DataSet_PropertyTypeSub(supermod.DS_DataSet_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, DS_DataSet=None, **kwargs_):
        super(DS_DataSet_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, DS_DataSet,  **kwargs_)
supermod.DS_DataSet_PropertyType.subclass = DS_DataSet_PropertyTypeSub
# end class DS_DataSet_PropertyTypeSub


class DS_OtherAggregate_PropertyTypeSub(supermod.DS_OtherAggregate_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, DS_OtherAggregate=None, **kwargs_):
        super(DS_OtherAggregate_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, DS_OtherAggregate,  **kwargs_)
supermod.DS_OtherAggregate_PropertyType.subclass = DS_OtherAggregate_PropertyTypeSub
# end class DS_OtherAggregate_PropertyTypeSub


class DS_Series_PropertyTypeSub(supermod.DS_Series_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, DS_Series=None, **kwargs_):
        super(DS_Series_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, DS_Series,  **kwargs_)
supermod.DS_Series_PropertyType.subclass = DS_Series_PropertyTypeSub
# end class DS_Series_PropertyTypeSub


class DS_Initiative_PropertyTypeSub(supermod.DS_Initiative_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, DS_Initiative=None, **kwargs_):
        super(DS_Initiative_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, DS_Initiative,  **kwargs_)
supermod.DS_Initiative_PropertyType.subclass = DS_Initiative_PropertyTypeSub
# end class DS_Initiative_PropertyTypeSub


class DS_Platform_PropertyTypeSub(supermod.DS_Platform_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, DS_Platform=None, **kwargs_):
        super(DS_Platform_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, DS_Platform,  **kwargs_)
supermod.DS_Platform_PropertyType.subclass = DS_Platform_PropertyTypeSub
# end class DS_Platform_PropertyTypeSub


class DS_Sensor_PropertyTypeSub(supermod.DS_Sensor_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, DS_Sensor=None, **kwargs_):
        super(DS_Sensor_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, DS_Sensor,  **kwargs_)
supermod.DS_Sensor_PropertyType.subclass = DS_Sensor_PropertyTypeSub
# end class DS_Sensor_PropertyTypeSub


class DS_ProductionSeries_PropertyTypeSub(supermod.DS_ProductionSeries_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, DS_ProductionSeries=None, **kwargs_):
        super(DS_ProductionSeries_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, DS_ProductionSeries,  **kwargs_)
supermod.DS_ProductionSeries_PropertyType.subclass = DS_ProductionSeries_PropertyTypeSub
# end class DS_ProductionSeries_PropertyTypeSub


class DS_StereoMate_PropertyTypeSub(supermod.DS_StereoMate_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, DS_StereoMate=None, **kwargs_):
        super(DS_StereoMate_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, DS_StereoMate,  **kwargs_)
supermod.DS_StereoMate_PropertyType.subclass = DS_StereoMate_PropertyTypeSub
# end class DS_StereoMate_PropertyTypeSub


class MD_Metadata_PropertyTypeSub(supermod.MD_Metadata_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_Metadata=None, **kwargs_):
        super(MD_Metadata_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_Metadata,  **kwargs_)
supermod.MD_Metadata_PropertyType.subclass = MD_Metadata_PropertyTypeSub
# end class MD_Metadata_PropertyTypeSub


class MD_GridSpatialRepresentation_PropertyTypeSub(supermod.MD_GridSpatialRepresentation_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_GridSpatialRepresentation=None, **kwargs_):
        super(MD_GridSpatialRepresentation_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_GridSpatialRepresentation,  **kwargs_)
supermod.MD_GridSpatialRepresentation_PropertyType.subclass = MD_GridSpatialRepresentation_PropertyTypeSub
# end class MD_GridSpatialRepresentation_PropertyTypeSub


class MD_VectorSpatialRepresentation_PropertyTypeSub(supermod.MD_VectorSpatialRepresentation_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_VectorSpatialRepresentation=None, **kwargs_):
        super(MD_VectorSpatialRepresentation_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_VectorSpatialRepresentation,  **kwargs_)
supermod.MD_VectorSpatialRepresentation_PropertyType.subclass = MD_VectorSpatialRepresentation_PropertyTypeSub
# end class MD_VectorSpatialRepresentation_PropertyTypeSub


class MD_SpatialRepresentation_PropertyTypeSub(supermod.MD_SpatialRepresentation_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, AbstractMD_SpatialRepresentation=None, **kwargs_):
        super(MD_SpatialRepresentation_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, AbstractMD_SpatialRepresentation,  **kwargs_)
supermod.MD_SpatialRepresentation_PropertyType.subclass = MD_SpatialRepresentation_PropertyTypeSub
# end class MD_SpatialRepresentation_PropertyTypeSub


class MD_Georeferenceable_PropertyTypeSub(supermod.MD_Georeferenceable_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_Georeferenceable=None, **kwargs_):
        super(MD_Georeferenceable_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_Georeferenceable,  **kwargs_)
supermod.MD_Georeferenceable_PropertyType.subclass = MD_Georeferenceable_PropertyTypeSub
# end class MD_Georeferenceable_PropertyTypeSub


class MD_Dimension_PropertyTypeSub(supermod.MD_Dimension_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_Dimension=None, **kwargs_):
        super(MD_Dimension_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_Dimension,  **kwargs_)
supermod.MD_Dimension_PropertyType.subclass = MD_Dimension_PropertyTypeSub
# end class MD_Dimension_PropertyTypeSub


class MD_Georectified_PropertyTypeSub(supermod.MD_Georectified_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_Georectified=None, **kwargs_):
        super(MD_Georectified_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_Georectified,  **kwargs_)
supermod.MD_Georectified_PropertyType.subclass = MD_Georectified_PropertyTypeSub
# end class MD_Georectified_PropertyTypeSub


class MD_GeometricObjects_PropertyTypeSub(supermod.MD_GeometricObjects_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_GeometricObjects=None, **kwargs_):
        super(MD_GeometricObjects_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_GeometricObjects,  **kwargs_)
supermod.MD_GeometricObjects_PropertyType.subclass = MD_GeometricObjects_PropertyTypeSub
# end class MD_GeometricObjects_PropertyTypeSub


class MD_PixelOrientationCode_PropertyTypeSub(supermod.MD_PixelOrientationCode_PropertyType):
    def __init__(self, nilReason=None, MD_PixelOrientationCode=None, **kwargs_):
        super(MD_PixelOrientationCode_PropertyTypeSub, self).__init__(nilReason, MD_PixelOrientationCode,  **kwargs_)
supermod.MD_PixelOrientationCode_PropertyType.subclass = MD_PixelOrientationCode_PropertyTypeSub
# end class MD_PixelOrientationCode_PropertyTypeSub


class MD_TopologyLevelCode_PropertyTypeSub(supermod.MD_TopologyLevelCode_PropertyType):
    def __init__(self, nilReason=None, MD_TopologyLevelCode=None, **kwargs_):
        super(MD_TopologyLevelCode_PropertyTypeSub, self).__init__(nilReason, MD_TopologyLevelCode,  **kwargs_)
supermod.MD_TopologyLevelCode_PropertyType.subclass = MD_TopologyLevelCode_PropertyTypeSub
# end class MD_TopologyLevelCode_PropertyTypeSub


class MD_GeometricObjectTypeCode_PropertyTypeSub(supermod.MD_GeometricObjectTypeCode_PropertyType):
    def __init__(self, nilReason=None, MD_GeometricObjectTypeCode=None, **kwargs_):
        super(MD_GeometricObjectTypeCode_PropertyTypeSub, self).__init__(nilReason, MD_GeometricObjectTypeCode,  **kwargs_)
supermod.MD_GeometricObjectTypeCode_PropertyType.subclass = MD_GeometricObjectTypeCode_PropertyTypeSub
# end class MD_GeometricObjectTypeCode_PropertyTypeSub


class MD_CellGeometryCode_PropertyTypeSub(supermod.MD_CellGeometryCode_PropertyType):
    def __init__(self, nilReason=None, MD_CellGeometryCode=None, **kwargs_):
        super(MD_CellGeometryCode_PropertyTypeSub, self).__init__(nilReason, MD_CellGeometryCode,  **kwargs_)
supermod.MD_CellGeometryCode_PropertyType.subclass = MD_CellGeometryCode_PropertyTypeSub
# end class MD_CellGeometryCode_PropertyTypeSub


class MD_DimensionNameTypeCode_PropertyTypeSub(supermod.MD_DimensionNameTypeCode_PropertyType):
    def __init__(self, nilReason=None, MD_DimensionNameTypeCode=None, **kwargs_):
        super(MD_DimensionNameTypeCode_PropertyTypeSub, self).__init__(nilReason, MD_DimensionNameTypeCode,  **kwargs_)
supermod.MD_DimensionNameTypeCode_PropertyType.subclass = MD_DimensionNameTypeCode_PropertyTypeSub
# end class MD_DimensionNameTypeCode_PropertyTypeSub


class CI_ResponsibleParty_PropertyTypeSub(supermod.CI_ResponsibleParty_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, CI_ResponsibleParty=None, **kwargs_):
        super(CI_ResponsibleParty_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, CI_ResponsibleParty,  **kwargs_)
supermod.CI_ResponsibleParty_PropertyType.subclass = CI_ResponsibleParty_PropertyTypeSub
# end class CI_ResponsibleParty_PropertyTypeSub


class CI_Citation_PropertyTypeSub(supermod.CI_Citation_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, CI_Citation=None, **kwargs_):
        super(CI_Citation_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, CI_Citation,  **kwargs_)
supermod.CI_Citation_PropertyType.subclass = CI_Citation_PropertyTypeSub
# end class CI_Citation_PropertyTypeSub


class CI_Address_PropertyTypeSub(supermod.CI_Address_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, CI_Address=None, **kwargs_):
        super(CI_Address_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, CI_Address,  **kwargs_)
supermod.CI_Address_PropertyType.subclass = CI_Address_PropertyTypeSub
# end class CI_Address_PropertyTypeSub


class CI_OnlineResource_PropertyTypeSub(supermod.CI_OnlineResource_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, CI_OnlineResource=None, **kwargs_):
        super(CI_OnlineResource_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, CI_OnlineResource,  **kwargs_)
supermod.CI_OnlineResource_PropertyType.subclass = CI_OnlineResource_PropertyTypeSub
# end class CI_OnlineResource_PropertyTypeSub


class CI_Contact_PropertyTypeSub(supermod.CI_Contact_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, CI_Contact=None, **kwargs_):
        super(CI_Contact_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, CI_Contact,  **kwargs_)
supermod.CI_Contact_PropertyType.subclass = CI_Contact_PropertyTypeSub
# end class CI_Contact_PropertyTypeSub


class CI_Telephone_PropertyTypeSub(supermod.CI_Telephone_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, CI_Telephone=None, **kwargs_):
        super(CI_Telephone_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, CI_Telephone,  **kwargs_)
supermod.CI_Telephone_PropertyType.subclass = CI_Telephone_PropertyTypeSub
# end class CI_Telephone_PropertyTypeSub


class CI_Date_PropertyTypeSub(supermod.CI_Date_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, CI_Date=None, **kwargs_):
        super(CI_Date_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, CI_Date,  **kwargs_)
supermod.CI_Date_PropertyType.subclass = CI_Date_PropertyTypeSub
# end class CI_Date_PropertyTypeSub


class CI_Series_PropertyTypeSub(supermod.CI_Series_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, CI_Series=None, **kwargs_):
        super(CI_Series_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, CI_Series,  **kwargs_)
supermod.CI_Series_PropertyType.subclass = CI_Series_PropertyTypeSub
# end class CI_Series_PropertyTypeSub


class URL_PropertyTypeSub(supermod.URL_PropertyType):
    def __init__(self, nilReason=None, URL=None, **kwargs_):
        super(URL_PropertyTypeSub, self).__init__(nilReason, URL,  **kwargs_)
supermod.URL_PropertyType.subclass = URL_PropertyTypeSub
# end class URL_PropertyTypeSub


class CI_RoleCode_PropertyTypeSub(supermod.CI_RoleCode_PropertyType):
    def __init__(self, nilReason=None, CI_RoleCode=None, **kwargs_):
        super(CI_RoleCode_PropertyTypeSub, self).__init__(nilReason, CI_RoleCode,  **kwargs_)
supermod.CI_RoleCode_PropertyType.subclass = CI_RoleCode_PropertyTypeSub
# end class CI_RoleCode_PropertyTypeSub


class CI_PresentationFormCode_PropertyTypeSub(supermod.CI_PresentationFormCode_PropertyType):
    def __init__(self, nilReason=None, CI_PresentationFormCode=None, **kwargs_):
        super(CI_PresentationFormCode_PropertyTypeSub, self).__init__(nilReason, CI_PresentationFormCode,  **kwargs_)
supermod.CI_PresentationFormCode_PropertyType.subclass = CI_PresentationFormCode_PropertyTypeSub
# end class CI_PresentationFormCode_PropertyTypeSub


class CI_OnLineFunctionCode_PropertyTypeSub(supermod.CI_OnLineFunctionCode_PropertyType):
    def __init__(self, nilReason=None, CI_OnLineFunctionCode=None, **kwargs_):
        super(CI_OnLineFunctionCode_PropertyTypeSub, self).__init__(nilReason, CI_OnLineFunctionCode,  **kwargs_)
supermod.CI_OnLineFunctionCode_PropertyType.subclass = CI_OnLineFunctionCode_PropertyTypeSub
# end class CI_OnLineFunctionCode_PropertyTypeSub


class CI_DateTypeCode_PropertyTypeSub(supermod.CI_DateTypeCode_PropertyType):
    def __init__(self, nilReason=None, CI_DateTypeCode=None, **kwargs_):
        super(CI_DateTypeCode_PropertyTypeSub, self).__init__(nilReason, CI_DateTypeCode,  **kwargs_)
supermod.CI_DateTypeCode_PropertyType.subclass = CI_DateTypeCode_PropertyTypeSub
# end class CI_DateTypeCode_PropertyTypeSub


class RS_Identifier_PropertyTypeSub(supermod.RS_Identifier_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, RS_Identifier=None, **kwargs_):
        super(RS_Identifier_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, RS_Identifier,  **kwargs_)
supermod.RS_Identifier_PropertyType.subclass = RS_Identifier_PropertyTypeSub
# end class RS_Identifier_PropertyTypeSub


class MD_ReferenceSystem_PropertyTypeSub(supermod.MD_ReferenceSystem_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_ReferenceSystem=None, **kwargs_):
        super(MD_ReferenceSystem_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_ReferenceSystem,  **kwargs_)
supermod.MD_ReferenceSystem_PropertyType.subclass = MD_ReferenceSystem_PropertyTypeSub
# end class MD_ReferenceSystem_PropertyTypeSub


class MD_Identifier_PropertyTypeSub(supermod.MD_Identifier_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_Identifier=None, **kwargs_):
        super(MD_Identifier_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_Identifier,  **kwargs_)
supermod.MD_Identifier_PropertyType.subclass = MD_Identifier_PropertyTypeSub
# end class MD_Identifier_PropertyTypeSub


class RS_ReferenceSystem_PropertyTypeSub(supermod.RS_ReferenceSystem_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, AbstractRS_ReferenceSystem=None, **kwargs_):
        super(RS_ReferenceSystem_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, AbstractRS_ReferenceSystem,  **kwargs_)
supermod.RS_ReferenceSystem_PropertyType.subclass = RS_ReferenceSystem_PropertyTypeSub
# end class RS_ReferenceSystem_PropertyTypeSub


class EX_TemporalExtent_PropertyTypeSub(supermod.EX_TemporalExtent_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, EX_TemporalExtent=None, **kwargs_):
        super(EX_TemporalExtent_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, EX_TemporalExtent,  **kwargs_)
supermod.EX_TemporalExtent_PropertyType.subclass = EX_TemporalExtent_PropertyTypeSub
# end class EX_TemporalExtent_PropertyTypeSub


class EX_VerticalExtent_PropertyTypeSub(supermod.EX_VerticalExtent_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, EX_VerticalExtent=None, **kwargs_):
        super(EX_VerticalExtent_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, EX_VerticalExtent,  **kwargs_)
supermod.EX_VerticalExtent_PropertyType.subclass = EX_VerticalExtent_PropertyTypeSub
# end class EX_VerticalExtent_PropertyTypeSub


class EX_BoundingPolygon_PropertyTypeSub(supermod.EX_BoundingPolygon_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, EX_BoundingPolygon=None, **kwargs_):
        super(EX_BoundingPolygon_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, EX_BoundingPolygon,  **kwargs_)
supermod.EX_BoundingPolygon_PropertyType.subclass = EX_BoundingPolygon_PropertyTypeSub
# end class EX_BoundingPolygon_PropertyTypeSub


class EX_Extent_PropertyTypeSub(supermod.EX_Extent_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, EX_Extent=None, **kwargs_):
        super(EX_Extent_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, EX_Extent,  **kwargs_)
supermod.EX_Extent_PropertyType.subclass = EX_Extent_PropertyTypeSub
# end class EX_Extent_PropertyTypeSub


class EX_GeographicExtent_PropertyTypeSub(supermod.EX_GeographicExtent_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, AbstractEX_GeographicExtent=None, **kwargs_):
        super(EX_GeographicExtent_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, AbstractEX_GeographicExtent,  **kwargs_)
supermod.EX_GeographicExtent_PropertyType.subclass = EX_GeographicExtent_PropertyTypeSub
# end class EX_GeographicExtent_PropertyTypeSub


class EX_GeographicBoundingBox_PropertyTypeSub(supermod.EX_GeographicBoundingBox_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, EX_GeographicBoundingBox=None, **kwargs_):
        super(EX_GeographicBoundingBox_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, EX_GeographicBoundingBox,  **kwargs_)
supermod.EX_GeographicBoundingBox_PropertyType.subclass = EX_GeographicBoundingBox_PropertyTypeSub
# end class EX_GeographicBoundingBox_PropertyTypeSub


class EX_SpatialTemporalExtent_PropertyTypeSub(supermod.EX_SpatialTemporalExtent_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, EX_SpatialTemporalExtent=None, **kwargs_):
        super(EX_SpatialTemporalExtent_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, EX_SpatialTemporalExtent,  **kwargs_)
supermod.EX_SpatialTemporalExtent_PropertyType.subclass = EX_SpatialTemporalExtent_PropertyTypeSub
# end class EX_SpatialTemporalExtent_PropertyTypeSub


class EX_GeographicDescription_PropertyTypeSub(supermod.EX_GeographicDescription_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, EX_GeographicDescription=None, **kwargs_):
        super(EX_GeographicDescription_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, EX_GeographicDescription,  **kwargs_)
supermod.EX_GeographicDescription_PropertyType.subclass = EX_GeographicDescription_PropertyTypeSub
# end class EX_GeographicDescription_PropertyTypeSub


class GM_Point_PropertyTypeSub(supermod.GM_Point_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, Point=None, **kwargs_):
        super(GM_Point_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, Point,  **kwargs_)
supermod.GM_Point_PropertyType.subclass = GM_Point_PropertyTypeSub
# end class GM_Point_PropertyTypeSub


class GM_Object_PropertyTypeSub(supermod.GM_Object_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, AbstractGeometry=None, **kwargs_):
        super(GM_Object_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, AbstractGeometry,  **kwargs_)
supermod.GM_Object_PropertyType.subclass = GM_Object_PropertyTypeSub
# end class GM_Object_PropertyTypeSub


class TypeName_PropertyTypeSub(supermod.TypeName_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, TypeName=None, **kwargs_):
        super(TypeName_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, TypeName,  **kwargs_)
supermod.TypeName_PropertyType.subclass = TypeName_PropertyTypeSub
# end class TypeName_PropertyTypeSub


class MemberName_PropertyTypeSub(supermod.MemberName_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MemberName=None, **kwargs_):
        super(MemberName_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MemberName,  **kwargs_)
supermod.MemberName_PropertyType.subclass = MemberName_PropertyTypeSub
# end class MemberName_PropertyTypeSub


class Multiplicity_PropertyTypeSub(supermod.Multiplicity_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, Multiplicity=None, **kwargs_):
        super(Multiplicity_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, Multiplicity,  **kwargs_)
supermod.Multiplicity_PropertyType.subclass = Multiplicity_PropertyTypeSub
# end class Multiplicity_PropertyTypeSub


class MultiplicityRange_PropertyTypeSub(supermod.MultiplicityRange_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MultiplicityRange=None, **kwargs_):
        super(MultiplicityRange_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MultiplicityRange,  **kwargs_)
supermod.MultiplicityRange_PropertyType.subclass = MultiplicityRange_PropertyTypeSub
# end class MultiplicityRange_PropertyTypeSub


class Measure_PropertyTypeSub(supermod.Measure_PropertyType):
    def __init__(self, nilReason=None, Measure=None, **kwargs_):
        super(Measure_PropertyTypeSub, self).__init__(nilReason, Measure,  **kwargs_)
supermod.Measure_PropertyType.subclass = Measure_PropertyTypeSub
# end class Measure_PropertyTypeSub


class Length_PropertyTypeSub(supermod.Length_PropertyType):
    def __init__(self, nilReason=None, Length=None, **kwargs_):
        super(Length_PropertyTypeSub, self).__init__(nilReason, Length,  **kwargs_)
supermod.Length_PropertyType.subclass = Length_PropertyTypeSub
# end class Length_PropertyTypeSub


class Angle_PropertyTypeSub(supermod.Angle_PropertyType):
    def __init__(self, nilReason=None, Angle=None, **kwargs_):
        super(Angle_PropertyTypeSub, self).__init__(nilReason, Angle,  **kwargs_)
supermod.Angle_PropertyType.subclass = Angle_PropertyTypeSub
# end class Angle_PropertyTypeSub


class Scale_PropertyTypeSub(supermod.Scale_PropertyType):
    def __init__(self, nilReason=None, Scale=None, **kwargs_):
        super(Scale_PropertyTypeSub, self).__init__(nilReason, Scale,  **kwargs_)
supermod.Scale_PropertyType.subclass = Scale_PropertyTypeSub
# end class Scale_PropertyTypeSub


class Distance_PropertyTypeSub(supermod.Distance_PropertyType):
    def __init__(self, nilReason=None, Distance=None, **kwargs_):
        super(Distance_PropertyTypeSub, self).__init__(nilReason, Distance,  **kwargs_)
supermod.Distance_PropertyType.subclass = Distance_PropertyTypeSub
# end class Distance_PropertyTypeSub


class CharacterString_PropertyTypeSub(supermod.CharacterString_PropertyType):
    def __init__(self, nilReason=None, CharacterString=None, extensiontype_=None, **kwargs_):
        super(CharacterString_PropertyTypeSub, self).__init__(nilReason, CharacterString, extensiontype_,  **kwargs_)
supermod.CharacterString_PropertyType.subclass = CharacterString_PropertyTypeSub
# end class CharacterString_PropertyTypeSub


class Boolean_PropertyTypeSub(supermod.Boolean_PropertyType):
    def __init__(self, nilReason=None, Boolean=None, **kwargs_):
        super(Boolean_PropertyTypeSub, self).__init__(nilReason, Boolean,  **kwargs_)
supermod.Boolean_PropertyType.subclass = Boolean_PropertyTypeSub
# end class Boolean_PropertyTypeSub


class GenericName_PropertyTypeSub(supermod.GenericName_PropertyType):
    def __init__(self, nilReason=None, AbstractGenericName=None, **kwargs_):
        super(GenericName_PropertyTypeSub, self).__init__(nilReason, AbstractGenericName,  **kwargs_)
supermod.GenericName_PropertyType.subclass = GenericName_PropertyTypeSub
# end class GenericName_PropertyTypeSub


class LocalName_PropertyTypeSub(supermod.LocalName_PropertyType):
    def __init__(self, nilReason=None, LocalName=None, **kwargs_):
        super(LocalName_PropertyTypeSub, self).__init__(nilReason, LocalName,  **kwargs_)
supermod.LocalName_PropertyType.subclass = LocalName_PropertyTypeSub
# end class LocalName_PropertyTypeSub


class ScopedName_PropertyTypeSub(supermod.ScopedName_PropertyType):
    def __init__(self, nilReason=None, ScopedName=None, **kwargs_):
        super(ScopedName_PropertyTypeSub, self).__init__(nilReason, ScopedName,  **kwargs_)
supermod.ScopedName_PropertyType.subclass = ScopedName_PropertyTypeSub
# end class ScopedName_PropertyTypeSub


class UomAngle_PropertyTypeSub(supermod.UomAngle_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, UnitDefinition=None, **kwargs_):
        super(UomAngle_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, UnitDefinition,  **kwargs_)
supermod.UomAngle_PropertyType.subclass = UomAngle_PropertyTypeSub
# end class UomAngle_PropertyTypeSub


class UomLength_PropertyTypeSub(supermod.UomLength_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, UnitDefinition=None, **kwargs_):
        super(UomLength_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, UnitDefinition,  **kwargs_)
supermod.UomLength_PropertyType.subclass = UomLength_PropertyTypeSub
# end class UomLength_PropertyTypeSub


class UomScale_PropertyTypeSub(supermod.UomScale_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, UnitDefinition=None, **kwargs_):
        super(UomScale_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, UnitDefinition,  **kwargs_)
supermod.UomScale_PropertyType.subclass = UomScale_PropertyTypeSub
# end class UomScale_PropertyTypeSub


class UnitOfMeasure_PropertyTypeSub(supermod.UnitOfMeasure_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, UnitDefinition=None, **kwargs_):
        super(UnitOfMeasure_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, UnitDefinition,  **kwargs_)
supermod.UnitOfMeasure_PropertyType.subclass = UnitOfMeasure_PropertyTypeSub
# end class UnitOfMeasure_PropertyTypeSub


class UomArea_PropertyTypeSub(supermod.UomArea_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, UnitDefinition=None, **kwargs_):
        super(UomArea_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, UnitDefinition,  **kwargs_)
supermod.UomArea_PropertyType.subclass = UomArea_PropertyTypeSub
# end class UomArea_PropertyTypeSub


class UomVelocity_PropertyTypeSub(supermod.UomVelocity_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, UnitDefinition=None, **kwargs_):
        super(UomVelocity_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, UnitDefinition,  **kwargs_)
supermod.UomVelocity_PropertyType.subclass = UomVelocity_PropertyTypeSub
# end class UomVelocity_PropertyTypeSub


class UomTime_PropertyTypeSub(supermod.UomTime_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, UnitDefinition=None, **kwargs_):
        super(UomTime_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, UnitDefinition,  **kwargs_)
supermod.UomTime_PropertyType.subclass = UomTime_PropertyTypeSub
# end class UomTime_PropertyTypeSub


class UomVolume_PropertyTypeSub(supermod.UomVolume_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, UnitDefinition=None, **kwargs_):
        super(UomVolume_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, UnitDefinition,  **kwargs_)
supermod.UomVolume_PropertyType.subclass = UomVolume_PropertyTypeSub
# end class UomVolume_PropertyTypeSub


class DateTime_PropertyTypeSub(supermod.DateTime_PropertyType):
    def __init__(self, nilReason=None, DateTime=None, **kwargs_):
        super(DateTime_PropertyTypeSub, self).__init__(nilReason, DateTime,  **kwargs_)
supermod.DateTime_PropertyType.subclass = DateTime_PropertyTypeSub
# end class DateTime_PropertyTypeSub


class Date_PropertyTypeSub(supermod.Date_PropertyType):
    def __init__(self, nilReason=None, Date=None, DateTime=None, **kwargs_):
        super(Date_PropertyTypeSub, self).__init__(nilReason, Date, DateTime,  **kwargs_)
supermod.Date_PropertyType.subclass = Date_PropertyTypeSub
# end class Date_PropertyTypeSub


class Number_PropertyTypeSub(supermod.Number_PropertyType):
    def __init__(self, nilReason=None, Real=None, Decimal=None, Integer=None, **kwargs_):
        super(Number_PropertyTypeSub, self).__init__(nilReason, Real, Decimal, Integer,  **kwargs_)
supermod.Number_PropertyType.subclass = Number_PropertyTypeSub
# end class Number_PropertyTypeSub


class Decimal_PropertyTypeSub(supermod.Decimal_PropertyType):
    def __init__(self, nilReason=None, Decimal=None, **kwargs_):
        super(Decimal_PropertyTypeSub, self).__init__(nilReason, Decimal,  **kwargs_)
supermod.Decimal_PropertyType.subclass = Decimal_PropertyTypeSub
# end class Decimal_PropertyTypeSub


class Real_PropertyTypeSub(supermod.Real_PropertyType):
    def __init__(self, nilReason=None, Real=None, **kwargs_):
        super(Real_PropertyTypeSub, self).__init__(nilReason, Real,  **kwargs_)
supermod.Real_PropertyType.subclass = Real_PropertyTypeSub
# end class Real_PropertyTypeSub


class Integer_PropertyTypeSub(supermod.Integer_PropertyType):
    def __init__(self, nilReason=None, Integer=None, **kwargs_):
        super(Integer_PropertyTypeSub, self).__init__(nilReason, Integer,  **kwargs_)
supermod.Integer_PropertyType.subclass = Integer_PropertyTypeSub
# end class Integer_PropertyTypeSub


class UnlimitedInteger_TypeSub(supermod.UnlimitedInteger_Type):
    def __init__(self, isInfinite=None, valueOf_=None, **kwargs_):
        super(UnlimitedInteger_TypeSub, self).__init__(isInfinite, valueOf_,  **kwargs_)
supermod.UnlimitedInteger_Type.subclass = UnlimitedInteger_TypeSub
# end class UnlimitedInteger_TypeSub


class UnlimitedInteger_PropertyTypeSub(supermod.UnlimitedInteger_PropertyType):
    def __init__(self, nilReason=None, UnlimitedInteger=None, **kwargs_):
        super(UnlimitedInteger_PropertyTypeSub, self).__init__(nilReason, UnlimitedInteger,  **kwargs_)
supermod.UnlimitedInteger_PropertyType.subclass = UnlimitedInteger_PropertyTypeSub
# end class UnlimitedInteger_PropertyTypeSub


class RecordSub(supermod.Record):
    def __init__(self, **kwargs_):
        super(RecordSub, self).__init__( **kwargs_)
supermod.Record.subclass = RecordSub
# end class RecordSub


class Record_PropertyTypeSub(supermod.Record_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, Record=None, **kwargs_):
        super(Record_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, Record,  **kwargs_)
supermod.Record_PropertyType.subclass = Record_PropertyTypeSub
# end class Record_PropertyTypeSub


class RecordType_TypeSub(supermod.RecordType_Type):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, valueOf_=None, **kwargs_):
        super(RecordType_TypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, valueOf_,  **kwargs_)
supermod.RecordType_Type.subclass = RecordType_TypeSub
# end class RecordType_TypeSub


class RecordType_PropertyTypeSub(supermod.RecordType_PropertyType):
    def __init__(self, nilReason=None, RecordType=None, **kwargs_):
        super(RecordType_PropertyTypeSub, self).__init__(nilReason, RecordType,  **kwargs_)
supermod.RecordType_PropertyType.subclass = RecordType_PropertyTypeSub
# end class RecordType_PropertyTypeSub


class Binary_TypeSub(supermod.Binary_Type):
    def __init__(self, src=None, valueOf_=None, **kwargs_):
        super(Binary_TypeSub, self).__init__(src, valueOf_,  **kwargs_)
supermod.Binary_Type.subclass = Binary_TypeSub
# end class Binary_TypeSub


class Binary_PropertyTypeSub(supermod.Binary_PropertyType):
    def __init__(self, nilReason=None, Binary=None, **kwargs_):
        super(Binary_PropertyTypeSub, self).__init__(nilReason, Binary,  **kwargs_)
supermod.Binary_PropertyType.subclass = Binary_PropertyTypeSub
# end class Binary_PropertyTypeSub


class AbstractObject_TypeSub(supermod.AbstractObject_Type):
    def __init__(self, id=None, uuid=None, extensiontype_=None, **kwargs_):
        super(AbstractObject_TypeSub, self).__init__(id, uuid, extensiontype_,  **kwargs_)
supermod.AbstractObject_Type.subclass = AbstractObject_TypeSub
# end class AbstractObject_TypeSub


class ObjectReference_PropertyTypeSub(supermod.ObjectReference_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, extensiontype_=None, **kwargs_):
        super(ObjectReference_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, extensiontype_,  **kwargs_)
supermod.ObjectReference_PropertyType.subclass = ObjectReference_PropertyTypeSub
# end class ObjectReference_PropertyTypeSub


class CodeListValue_TypeSub(supermod.CodeListValue_Type):
    def __init__(self, codeList=None, codeListValue=None, codeSpace=None, valueOf_=None, **kwargs_):
        super(CodeListValue_TypeSub, self).__init__(codeList, codeListValue, codeSpace, valueOf_,  **kwargs_)
supermod.CodeListValue_Type.subclass = CodeListValue_TypeSub
# end class CodeListValue_TypeSub


class TM_Primitive_PropertyTypeSub(supermod.TM_Primitive_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, AbstractTimePrimitive=None, **kwargs_):
        super(TM_Primitive_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, AbstractTimePrimitive,  **kwargs_)
supermod.TM_Primitive_PropertyType.subclass = TM_Primitive_PropertyTypeSub
# end class TM_Primitive_PropertyTypeSub


class TM_PeriodDuration_PropertyTypeSub(supermod.TM_PeriodDuration_PropertyType):
    def __init__(self, nilReason=None, TM_PeriodDuration=None, **kwargs_):
        super(TM_PeriodDuration_PropertyTypeSub, self).__init__(nilReason, TM_PeriodDuration,  **kwargs_)
supermod.TM_PeriodDuration_PropertyType.subclass = TM_PeriodDuration_PropertyTypeSub
# end class TM_PeriodDuration_PropertyTypeSub


class SC_CRS_PropertyTypeSub(supermod.SC_CRS_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, AbstractCRS=None, **kwargs_):
        super(SC_CRS_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, AbstractCRS,  **kwargs_)
supermod.SC_CRS_PropertyType.subclass = SC_CRS_PropertyTypeSub
# end class SC_CRS_PropertyTypeSub


class MD_ExtendedElementInformation_TypeSub(supermod.MD_ExtendedElementInformation_Type):
    def __init__(self, id=None, uuid=None, name=None, shortName=None, domainCode=None, definition=None, obligation=None, condition=None, dataType=None, maximumOccurrence=None, domainValue=None, parentEntity=None, rule=None, rationale=None, source=None, **kwargs_):
        super(MD_ExtendedElementInformation_TypeSub, self).__init__(id, uuid, name, shortName, domainCode, definition, obligation, condition, dataType, maximumOccurrence, domainValue, parentEntity, rule, rationale, source,  **kwargs_)
supermod.MD_ExtendedElementInformation_Type.subclass = MD_ExtendedElementInformation_TypeSub
# end class MD_ExtendedElementInformation_TypeSub


class MD_ExtendedElementInformation_PropertyTypeSub(supermod.MD_ExtendedElementInformation_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_ExtendedElementInformation=None, **kwargs_):
        super(MD_ExtendedElementInformation_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_ExtendedElementInformation,  **kwargs_)
supermod.MD_ExtendedElementInformation_PropertyType.subclass = MD_ExtendedElementInformation_PropertyTypeSub
# end class MD_ExtendedElementInformation_PropertyTypeSub


class MD_MetadataExtensionInformation_TypeSub(supermod.MD_MetadataExtensionInformation_Type):
    def __init__(self, id=None, uuid=None, extensionOnLineResource=None, extendedElementInformation=None, **kwargs_):
        super(MD_MetadataExtensionInformation_TypeSub, self).__init__(id, uuid, extensionOnLineResource, extendedElementInformation,  **kwargs_)
supermod.MD_MetadataExtensionInformation_Type.subclass = MD_MetadataExtensionInformation_TypeSub
# end class MD_MetadataExtensionInformation_TypeSub


class MD_MetadataExtensionInformation_PropertyTypeSub(supermod.MD_MetadataExtensionInformation_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_MetadataExtensionInformation=None, **kwargs_):
        super(MD_MetadataExtensionInformation_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_MetadataExtensionInformation,  **kwargs_)
supermod.MD_MetadataExtensionInformation_PropertyType.subclass = MD_MetadataExtensionInformation_PropertyTypeSub
# end class MD_MetadataExtensionInformation_PropertyTypeSub


class MD_ObligationCode_PropertyTypeSub(supermod.MD_ObligationCode_PropertyType):
    def __init__(self, nilReason=None, MD_ObligationCode=None, **kwargs_):
        super(MD_ObligationCode_PropertyTypeSub, self).__init__(nilReason, MD_ObligationCode,  **kwargs_)
supermod.MD_ObligationCode_PropertyType.subclass = MD_ObligationCode_PropertyTypeSub
# end class MD_ObligationCode_PropertyTypeSub


class MD_DatatypeCode_PropertyTypeSub(supermod.MD_DatatypeCode_PropertyType):
    def __init__(self, nilReason=None, MD_DatatypeCode=None, **kwargs_):
        super(MD_DatatypeCode_PropertyTypeSub, self).__init__(nilReason, MD_DatatypeCode,  **kwargs_)
supermod.MD_DatatypeCode_PropertyType.subclass = MD_DatatypeCode_PropertyTypeSub
# end class MD_DatatypeCode_PropertyTypeSub


class MD_FeatureCatalogueDescription_PropertyTypeSub(supermod.MD_FeatureCatalogueDescription_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_FeatureCatalogueDescription=None, **kwargs_):
        super(MD_FeatureCatalogueDescription_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_FeatureCatalogueDescription,  **kwargs_)
supermod.MD_FeatureCatalogueDescription_PropertyType.subclass = MD_FeatureCatalogueDescription_PropertyTypeSub
# end class MD_FeatureCatalogueDescription_PropertyTypeSub


class MD_CoverageDescription_PropertyTypeSub(supermod.MD_CoverageDescription_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_CoverageDescription=None, **kwargs_):
        super(MD_CoverageDescription_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_CoverageDescription,  **kwargs_)
supermod.MD_CoverageDescription_PropertyType.subclass = MD_CoverageDescription_PropertyTypeSub
# end class MD_CoverageDescription_PropertyTypeSub


class MD_ImageDescription_PropertyTypeSub(supermod.MD_ImageDescription_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_ImageDescription=None, **kwargs_):
        super(MD_ImageDescription_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_ImageDescription,  **kwargs_)
supermod.MD_ImageDescription_PropertyType.subclass = MD_ImageDescription_PropertyTypeSub
# end class MD_ImageDescription_PropertyTypeSub


class AbstractMD_ContentInformation_TypeSub(supermod.AbstractMD_ContentInformation_Type):
    def __init__(self, id=None, uuid=None, extensiontype_=None, **kwargs_):
        super(AbstractMD_ContentInformation_TypeSub, self).__init__(id, uuid, extensiontype_,  **kwargs_)
supermod.AbstractMD_ContentInformation_Type.subclass = AbstractMD_ContentInformation_TypeSub
# end class AbstractMD_ContentInformation_TypeSub


class MD_ContentInformation_PropertyTypeSub(supermod.MD_ContentInformation_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, AbstractMD_ContentInformation=None, **kwargs_):
        super(MD_ContentInformation_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, AbstractMD_ContentInformation,  **kwargs_)
supermod.MD_ContentInformation_PropertyType.subclass = MD_ContentInformation_PropertyTypeSub
# end class MD_ContentInformation_PropertyTypeSub


class MD_RangeDimension_TypeSub(supermod.MD_RangeDimension_Type):
    def __init__(self, id=None, uuid=None, sequenceIdentifier=None, descriptor=None, extensiontype_=None, **kwargs_):
        super(MD_RangeDimension_TypeSub, self).__init__(id, uuid, sequenceIdentifier, descriptor, extensiontype_,  **kwargs_)
supermod.MD_RangeDimension_Type.subclass = MD_RangeDimension_TypeSub
# end class MD_RangeDimension_TypeSub


class MD_RangeDimension_PropertyTypeSub(supermod.MD_RangeDimension_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_RangeDimension=None, **kwargs_):
        super(MD_RangeDimension_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_RangeDimension,  **kwargs_)
supermod.MD_RangeDimension_PropertyType.subclass = MD_RangeDimension_PropertyTypeSub
# end class MD_RangeDimension_PropertyTypeSub


class MD_Band_TypeSub(supermod.MD_Band_Type):
    def __init__(self, id=None, uuid=None, sequenceIdentifier=None, descriptor=None, maxValue=None, minValue=None, units=None, peakResponse=None, bitsPerValue=None, toneGradation=None, scaleFactor=None, offset=None, **kwargs_):
        super(MD_Band_TypeSub, self).__init__(id, uuid, sequenceIdentifier, descriptor, maxValue, minValue, units, peakResponse, bitsPerValue, toneGradation, scaleFactor, offset,  **kwargs_)
supermod.MD_Band_Type.subclass = MD_Band_TypeSub
# end class MD_Band_TypeSub


class MD_Band_PropertyTypeSub(supermod.MD_Band_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_Band=None, **kwargs_):
        super(MD_Band_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_Band,  **kwargs_)
supermod.MD_Band_PropertyType.subclass = MD_Band_PropertyTypeSub
# end class MD_Band_PropertyTypeSub


class MD_CoverageContentTypeCode_PropertyTypeSub(supermod.MD_CoverageContentTypeCode_PropertyType):
    def __init__(self, nilReason=None, MD_CoverageContentTypeCode=None, **kwargs_):
        super(MD_CoverageContentTypeCode_PropertyTypeSub, self).__init__(nilReason, MD_CoverageContentTypeCode,  **kwargs_)
supermod.MD_CoverageContentTypeCode_PropertyType.subclass = MD_CoverageContentTypeCode_PropertyTypeSub
# end class MD_CoverageContentTypeCode_PropertyTypeSub


class MD_ImagingConditionCode_PropertyTypeSub(supermod.MD_ImagingConditionCode_PropertyType):
    def __init__(self, nilReason=None, MD_ImagingConditionCode=None, **kwargs_):
        super(MD_ImagingConditionCode_PropertyTypeSub, self).__init__(nilReason, MD_ImagingConditionCode,  **kwargs_)
supermod.MD_ImagingConditionCode_PropertyType.subclass = MD_ImagingConditionCode_PropertyTypeSub
# end class MD_ImagingConditionCode_PropertyTypeSub


class MD_ApplicationSchemaInformation_TypeSub(supermod.MD_ApplicationSchemaInformation_Type):
    def __init__(self, id=None, uuid=None, name=None, schemaLanguage=None, constraintLanguage=None, schemaAscii=None, graphicsFile=None, softwareDevelopmentFile=None, softwareDevelopmentFileFormat=None, **kwargs_):
        super(MD_ApplicationSchemaInformation_TypeSub, self).__init__(id, uuid, name, schemaLanguage, constraintLanguage, schemaAscii, graphicsFile, softwareDevelopmentFile, softwareDevelopmentFileFormat,  **kwargs_)
supermod.MD_ApplicationSchemaInformation_Type.subclass = MD_ApplicationSchemaInformation_TypeSub
# end class MD_ApplicationSchemaInformation_TypeSub


class MD_ApplicationSchemaInformation_PropertyTypeSub(supermod.MD_ApplicationSchemaInformation_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_ApplicationSchemaInformation=None, **kwargs_):
        super(MD_ApplicationSchemaInformation_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_ApplicationSchemaInformation,  **kwargs_)
supermod.MD_ApplicationSchemaInformation_PropertyType.subclass = MD_ApplicationSchemaInformation_PropertyTypeSub
# end class MD_ApplicationSchemaInformation_PropertyTypeSub


class MD_PortrayalCatalogueReference_TypeSub(supermod.MD_PortrayalCatalogueReference_Type):
    def __init__(self, id=None, uuid=None, portrayalCatalogueCitation=None, **kwargs_):
        super(MD_PortrayalCatalogueReference_TypeSub, self).__init__(id, uuid, portrayalCatalogueCitation,  **kwargs_)
supermod.MD_PortrayalCatalogueReference_Type.subclass = MD_PortrayalCatalogueReference_TypeSub
# end class MD_PortrayalCatalogueReference_TypeSub


class MD_PortrayalCatalogueReference_PropertyTypeSub(supermod.MD_PortrayalCatalogueReference_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_PortrayalCatalogueReference=None, **kwargs_):
        super(MD_PortrayalCatalogueReference_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_PortrayalCatalogueReference,  **kwargs_)
supermod.MD_PortrayalCatalogueReference_PropertyType.subclass = MD_PortrayalCatalogueReference_PropertyTypeSub
# end class MD_PortrayalCatalogueReference_PropertyTypeSub


class LI_ProcessStep_TypeSub(supermod.LI_ProcessStep_Type):
    def __init__(self, id=None, uuid=None, description=None, rationale=None, dateTime=None, processor=None, source=None, **kwargs_):
        super(LI_ProcessStep_TypeSub, self).__init__(id, uuid, description, rationale, dateTime, processor, source,  **kwargs_)
supermod.LI_ProcessStep_Type.subclass = LI_ProcessStep_TypeSub
# end class LI_ProcessStep_TypeSub


class LI_ProcessStep_PropertyTypeSub(supermod.LI_ProcessStep_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, LI_ProcessStep=None, **kwargs_):
        super(LI_ProcessStep_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, LI_ProcessStep,  **kwargs_)
supermod.LI_ProcessStep_PropertyType.subclass = LI_ProcessStep_PropertyTypeSub
# end class LI_ProcessStep_PropertyTypeSub


class LI_Source_TypeSub(supermod.LI_Source_Type):
    def __init__(self, id=None, uuid=None, description=None, scaleDenominator=None, sourceReferenceSystem=None, sourceCitation=None, sourceExtent=None, sourceStep=None, **kwargs_):
        super(LI_Source_TypeSub, self).__init__(id, uuid, description, scaleDenominator, sourceReferenceSystem, sourceCitation, sourceExtent, sourceStep,  **kwargs_)
supermod.LI_Source_Type.subclass = LI_Source_TypeSub
# end class LI_Source_TypeSub


class LI_Source_PropertyTypeSub(supermod.LI_Source_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, LI_Source=None, **kwargs_):
        super(LI_Source_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, LI_Source,  **kwargs_)
supermod.LI_Source_PropertyType.subclass = LI_Source_PropertyTypeSub
# end class LI_Source_PropertyTypeSub


class LI_Lineage_TypeSub(supermod.LI_Lineage_Type):
    def __init__(self, id=None, uuid=None, statement=None, processStep=None, source=None, **kwargs_):
        super(LI_Lineage_TypeSub, self).__init__(id, uuid, statement, processStep, source,  **kwargs_)
supermod.LI_Lineage_Type.subclass = LI_Lineage_TypeSub
# end class LI_Lineage_TypeSub


class LI_Lineage_PropertyTypeSub(supermod.LI_Lineage_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, LI_Lineage=None, **kwargs_):
        super(LI_Lineage_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, LI_Lineage,  **kwargs_)
supermod.LI_Lineage_PropertyType.subclass = LI_Lineage_PropertyTypeSub
# end class LI_Lineage_PropertyTypeSub


class DQ_ConformanceResult_PropertyTypeSub(supermod.DQ_ConformanceResult_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, DQ_ConformanceResult=None, **kwargs_):
        super(DQ_ConformanceResult_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, DQ_ConformanceResult,  **kwargs_)
supermod.DQ_ConformanceResult_PropertyType.subclass = DQ_ConformanceResult_PropertyTypeSub
# end class DQ_ConformanceResult_PropertyTypeSub


class DQ_QuantitativeResult_PropertyTypeSub(supermod.DQ_QuantitativeResult_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, DQ_QuantitativeResult=None, **kwargs_):
        super(DQ_QuantitativeResult_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, DQ_QuantitativeResult,  **kwargs_)
supermod.DQ_QuantitativeResult_PropertyType.subclass = DQ_QuantitativeResult_PropertyTypeSub
# end class DQ_QuantitativeResult_PropertyTypeSub


class AbstractDQ_Result_TypeSub(supermod.AbstractDQ_Result_Type):
    def __init__(self, id=None, uuid=None, extensiontype_=None, **kwargs_):
        super(AbstractDQ_Result_TypeSub, self).__init__(id, uuid, extensiontype_,  **kwargs_)
supermod.AbstractDQ_Result_Type.subclass = AbstractDQ_Result_TypeSub
# end class AbstractDQ_Result_TypeSub


class DQ_Result_PropertyTypeSub(supermod.DQ_Result_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, AbstractDQ_Result=None, **kwargs_):
        super(DQ_Result_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, AbstractDQ_Result,  **kwargs_)
supermod.DQ_Result_PropertyType.subclass = DQ_Result_PropertyTypeSub
# end class DQ_Result_PropertyTypeSub


class DQ_TemporalValidity_PropertyTypeSub(supermod.DQ_TemporalValidity_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, DQ_TemporalValidity=None, **kwargs_):
        super(DQ_TemporalValidity_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, DQ_TemporalValidity,  **kwargs_)
supermod.DQ_TemporalValidity_PropertyType.subclass = DQ_TemporalValidity_PropertyTypeSub
# end class DQ_TemporalValidity_PropertyTypeSub


class DQ_TemporalConsistency_PropertyTypeSub(supermod.DQ_TemporalConsistency_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, DQ_TemporalConsistency=None, **kwargs_):
        super(DQ_TemporalConsistency_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, DQ_TemporalConsistency,  **kwargs_)
supermod.DQ_TemporalConsistency_PropertyType.subclass = DQ_TemporalConsistency_PropertyTypeSub
# end class DQ_TemporalConsistency_PropertyTypeSub


class DQ_AccuracyOfATimeMeasurement_PropertyTypeSub(supermod.DQ_AccuracyOfATimeMeasurement_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, DQ_AccuracyOfATimeMeasurement=None, **kwargs_):
        super(DQ_AccuracyOfATimeMeasurement_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, DQ_AccuracyOfATimeMeasurement,  **kwargs_)
supermod.DQ_AccuracyOfATimeMeasurement_PropertyType.subclass = DQ_AccuracyOfATimeMeasurement_PropertyTypeSub
# end class DQ_AccuracyOfATimeMeasurement_PropertyTypeSub


class DQ_QuantitativeAttributeAccuracy_PropertyTypeSub(supermod.DQ_QuantitativeAttributeAccuracy_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, DQ_QuantitativeAttributeAccuracy=None, **kwargs_):
        super(DQ_QuantitativeAttributeAccuracy_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, DQ_QuantitativeAttributeAccuracy,  **kwargs_)
supermod.DQ_QuantitativeAttributeAccuracy_PropertyType.subclass = DQ_QuantitativeAttributeAccuracy_PropertyTypeSub
# end class DQ_QuantitativeAttributeAccuracy_PropertyTypeSub


class DQ_NonQuantitativeAttributeAccuracy_PropertyTypeSub(supermod.DQ_NonQuantitativeAttributeAccuracy_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, DQ_NonQuantitativeAttributeAccuracy=None, **kwargs_):
        super(DQ_NonQuantitativeAttributeAccuracy_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, DQ_NonQuantitativeAttributeAccuracy,  **kwargs_)
supermod.DQ_NonQuantitativeAttributeAccuracy_PropertyType.subclass = DQ_NonQuantitativeAttributeAccuracy_PropertyTypeSub
# end class DQ_NonQuantitativeAttributeAccuracy_PropertyTypeSub


class DQ_ThematicClassificationCorrectness_PropertyTypeSub(supermod.DQ_ThematicClassificationCorrectness_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, DQ_ThematicClassificationCorrectness=None, **kwargs_):
        super(DQ_ThematicClassificationCorrectness_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, DQ_ThematicClassificationCorrectness,  **kwargs_)
supermod.DQ_ThematicClassificationCorrectness_PropertyType.subclass = DQ_ThematicClassificationCorrectness_PropertyTypeSub
# end class DQ_ThematicClassificationCorrectness_PropertyTypeSub


class DQ_RelativeInternalPositionalAccuracy_PropertyTypeSub(supermod.DQ_RelativeInternalPositionalAccuracy_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, DQ_RelativeInternalPositionalAccuracy=None, **kwargs_):
        super(DQ_RelativeInternalPositionalAccuracy_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, DQ_RelativeInternalPositionalAccuracy,  **kwargs_)
supermod.DQ_RelativeInternalPositionalAccuracy_PropertyType.subclass = DQ_RelativeInternalPositionalAccuracy_PropertyTypeSub
# end class DQ_RelativeInternalPositionalAccuracy_PropertyTypeSub


class DQ_GriddedDataPositionalAccuracy_PropertyTypeSub(supermod.DQ_GriddedDataPositionalAccuracy_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, DQ_GriddedDataPositionalAccuracy=None, **kwargs_):
        super(DQ_GriddedDataPositionalAccuracy_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, DQ_GriddedDataPositionalAccuracy,  **kwargs_)
supermod.DQ_GriddedDataPositionalAccuracy_PropertyType.subclass = DQ_GriddedDataPositionalAccuracy_PropertyTypeSub
# end class DQ_GriddedDataPositionalAccuracy_PropertyTypeSub


class DQ_AbsoluteExternalPositionalAccuracy_PropertyTypeSub(supermod.DQ_AbsoluteExternalPositionalAccuracy_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, DQ_AbsoluteExternalPositionalAccuracy=None, **kwargs_):
        super(DQ_AbsoluteExternalPositionalAccuracy_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, DQ_AbsoluteExternalPositionalAccuracy,  **kwargs_)
supermod.DQ_AbsoluteExternalPositionalAccuracy_PropertyType.subclass = DQ_AbsoluteExternalPositionalAccuracy_PropertyTypeSub
# end class DQ_AbsoluteExternalPositionalAccuracy_PropertyTypeSub


class DQ_TopologicalConsistency_PropertyTypeSub(supermod.DQ_TopologicalConsistency_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, DQ_TopologicalConsistency=None, **kwargs_):
        super(DQ_TopologicalConsistency_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, DQ_TopologicalConsistency,  **kwargs_)
supermod.DQ_TopologicalConsistency_PropertyType.subclass = DQ_TopologicalConsistency_PropertyTypeSub
# end class DQ_TopologicalConsistency_PropertyTypeSub


class DQ_FormatConsistency_PropertyTypeSub(supermod.DQ_FormatConsistency_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, DQ_FormatConsistency=None, **kwargs_):
        super(DQ_FormatConsistency_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, DQ_FormatConsistency,  **kwargs_)
supermod.DQ_FormatConsistency_PropertyType.subclass = DQ_FormatConsistency_PropertyTypeSub
# end class DQ_FormatConsistency_PropertyTypeSub


class DQ_DomainConsistency_PropertyTypeSub(supermod.DQ_DomainConsistency_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, DQ_DomainConsistency=None, **kwargs_):
        super(DQ_DomainConsistency_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, DQ_DomainConsistency,  **kwargs_)
supermod.DQ_DomainConsistency_PropertyType.subclass = DQ_DomainConsistency_PropertyTypeSub
# end class DQ_DomainConsistency_PropertyTypeSub


class DQ_ConceptualConsistency_PropertyTypeSub(supermod.DQ_ConceptualConsistency_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, DQ_ConceptualConsistency=None, **kwargs_):
        super(DQ_ConceptualConsistency_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, DQ_ConceptualConsistency,  **kwargs_)
supermod.DQ_ConceptualConsistency_PropertyType.subclass = DQ_ConceptualConsistency_PropertyTypeSub
# end class DQ_ConceptualConsistency_PropertyTypeSub


class DQ_CompletenessOmission_PropertyTypeSub(supermod.DQ_CompletenessOmission_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, DQ_CompletenessOmission=None, **kwargs_):
        super(DQ_CompletenessOmission_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, DQ_CompletenessOmission,  **kwargs_)
supermod.DQ_CompletenessOmission_PropertyType.subclass = DQ_CompletenessOmission_PropertyTypeSub
# end class DQ_CompletenessOmission_PropertyTypeSub


class DQ_CompletenessCommission_PropertyTypeSub(supermod.DQ_CompletenessCommission_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, DQ_CompletenessCommission=None, **kwargs_):
        super(DQ_CompletenessCommission_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, DQ_CompletenessCommission,  **kwargs_)
supermod.DQ_CompletenessCommission_PropertyType.subclass = DQ_CompletenessCommission_PropertyTypeSub
# end class DQ_CompletenessCommission_PropertyTypeSub


class DQ_TemporalAccuracy_PropertyTypeSub(supermod.DQ_TemporalAccuracy_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, AbstractDQ_TemporalAccuracy=None, **kwargs_):
        super(DQ_TemporalAccuracy_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, AbstractDQ_TemporalAccuracy,  **kwargs_)
supermod.DQ_TemporalAccuracy_PropertyType.subclass = DQ_TemporalAccuracy_PropertyTypeSub
# end class DQ_TemporalAccuracy_PropertyTypeSub


class DQ_ThematicAccuracy_PropertyTypeSub(supermod.DQ_ThematicAccuracy_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, AbstractDQ_ThematicAccuracy=None, **kwargs_):
        super(DQ_ThematicAccuracy_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, AbstractDQ_ThematicAccuracy,  **kwargs_)
supermod.DQ_ThematicAccuracy_PropertyType.subclass = DQ_ThematicAccuracy_PropertyTypeSub
# end class DQ_ThematicAccuracy_PropertyTypeSub


class DQ_PositionalAccuracy_PropertyTypeSub(supermod.DQ_PositionalAccuracy_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, AbstractDQ_PositionalAccuracy=None, **kwargs_):
        super(DQ_PositionalAccuracy_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, AbstractDQ_PositionalAccuracy,  **kwargs_)
supermod.DQ_PositionalAccuracy_PropertyType.subclass = DQ_PositionalAccuracy_PropertyTypeSub
# end class DQ_PositionalAccuracy_PropertyTypeSub


class DQ_LogicalConsistency_PropertyTypeSub(supermod.DQ_LogicalConsistency_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, AbstractDQ_LogicalConsistency=None, **kwargs_):
        super(DQ_LogicalConsistency_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, AbstractDQ_LogicalConsistency,  **kwargs_)
supermod.DQ_LogicalConsistency_PropertyType.subclass = DQ_LogicalConsistency_PropertyTypeSub
# end class DQ_LogicalConsistency_PropertyTypeSub


class DQ_Completeness_PropertyTypeSub(supermod.DQ_Completeness_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, AbstractDQ_Completeness=None, **kwargs_):
        super(DQ_Completeness_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, AbstractDQ_Completeness,  **kwargs_)
supermod.DQ_Completeness_PropertyType.subclass = DQ_Completeness_PropertyTypeSub
# end class DQ_Completeness_PropertyTypeSub


class AbstractDQ_Element_TypeSub(supermod.AbstractDQ_Element_Type):
    def __init__(self, id=None, uuid=None, nameOfMeasure=None, measureIdentification=None, measureDescription=None, evaluationMethodType=None, evaluationMethodDescription=None, evaluationProcedure=None, dateTime=None, result=None, extensiontype_=None, **kwargs_):
        super(AbstractDQ_Element_TypeSub, self).__init__(id, uuid, nameOfMeasure, measureIdentification, measureDescription, evaluationMethodType, evaluationMethodDescription, evaluationProcedure, dateTime, result, extensiontype_,  **kwargs_)
supermod.AbstractDQ_Element_Type.subclass = AbstractDQ_Element_TypeSub
# end class AbstractDQ_Element_TypeSub


class DQ_Element_PropertyTypeSub(supermod.DQ_Element_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, AbstractDQ_Element=None, **kwargs_):
        super(DQ_Element_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, AbstractDQ_Element,  **kwargs_)
supermod.DQ_Element_PropertyType.subclass = DQ_Element_PropertyTypeSub
# end class DQ_Element_PropertyTypeSub


class DQ_DataQuality_TypeSub(supermod.DQ_DataQuality_Type):
    def __init__(self, id=None, uuid=None, scope=None, report=None, lineage=None, **kwargs_):
        super(DQ_DataQuality_TypeSub, self).__init__(id, uuid, scope, report, lineage,  **kwargs_)
supermod.DQ_DataQuality_Type.subclass = DQ_DataQuality_TypeSub
# end class DQ_DataQuality_TypeSub


class DQ_DataQuality_PropertyTypeSub(supermod.DQ_DataQuality_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, DQ_DataQuality=None, **kwargs_):
        super(DQ_DataQuality_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, DQ_DataQuality,  **kwargs_)
supermod.DQ_DataQuality_PropertyType.subclass = DQ_DataQuality_PropertyTypeSub
# end class DQ_DataQuality_PropertyTypeSub


class DQ_Scope_TypeSub(supermod.DQ_Scope_Type):
    def __init__(self, id=None, uuid=None, level=None, extent=None, levelDescription=None, **kwargs_):
        super(DQ_Scope_TypeSub, self).__init__(id, uuid, level, extent, levelDescription,  **kwargs_)
supermod.DQ_Scope_Type.subclass = DQ_Scope_TypeSub
# end class DQ_Scope_TypeSub


class DQ_Scope_PropertyTypeSub(supermod.DQ_Scope_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, DQ_Scope=None, **kwargs_):
        super(DQ_Scope_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, DQ_Scope,  **kwargs_)
supermod.DQ_Scope_PropertyType.subclass = DQ_Scope_PropertyTypeSub
# end class DQ_Scope_PropertyTypeSub


class DQ_EvaluationMethodTypeCode_PropertyTypeSub(supermod.DQ_EvaluationMethodTypeCode_PropertyType):
    def __init__(self, nilReason=None, DQ_EvaluationMethodTypeCode=None, **kwargs_):
        super(DQ_EvaluationMethodTypeCode_PropertyTypeSub, self).__init__(nilReason, DQ_EvaluationMethodTypeCode,  **kwargs_)
supermod.DQ_EvaluationMethodTypeCode_PropertyType.subclass = DQ_EvaluationMethodTypeCode_PropertyTypeSub
# end class DQ_EvaluationMethodTypeCode_PropertyTypeSub


class AbstractMD_Identification_TypeSub(supermod.AbstractMD_Identification_Type):
    def __init__(self, id=None, uuid=None, citation=None, abstract=None, purpose=None, credit=None, status=None, pointOfContact=None, resourceMaintenance=None, graphicOverview=None, resourceFormat=None, descriptiveKeywords=None, resourceSpecificUsage=None, resourceConstraints=None, aggregationInfo=None, extensiontype_=None, **kwargs_):
        super(AbstractMD_Identification_TypeSub, self).__init__(id, uuid, citation, abstract, purpose, credit, status, pointOfContact, resourceMaintenance, graphicOverview, resourceFormat, descriptiveKeywords, resourceSpecificUsage, resourceConstraints, aggregationInfo, extensiontype_,  **kwargs_)
supermod.AbstractMD_Identification_Type.subclass = AbstractMD_Identification_TypeSub
# end class AbstractMD_Identification_TypeSub


class MD_Identification_PropertyTypeSub(supermod.MD_Identification_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, AbstractMD_Identification=None, **kwargs_):
        super(MD_Identification_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, AbstractMD_Identification,  **kwargs_)
supermod.MD_Identification_PropertyType.subclass = MD_Identification_PropertyTypeSub
# end class MD_Identification_PropertyTypeSub


class MD_BrowseGraphic_TypeSub(supermod.MD_BrowseGraphic_Type):
    def __init__(self, id=None, uuid=None, fileName=None, fileDescription=None, fileType=None, **kwargs_):
        super(MD_BrowseGraphic_TypeSub, self).__init__(id, uuid, fileName, fileDescription, fileType,  **kwargs_)
supermod.MD_BrowseGraphic_Type.subclass = MD_BrowseGraphic_TypeSub
# end class MD_BrowseGraphic_TypeSub


class MD_BrowseGraphic_PropertyTypeSub(supermod.MD_BrowseGraphic_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_BrowseGraphic=None, **kwargs_):
        super(MD_BrowseGraphic_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_BrowseGraphic,  **kwargs_)
supermod.MD_BrowseGraphic_PropertyType.subclass = MD_BrowseGraphic_PropertyTypeSub
# end class MD_BrowseGraphic_PropertyTypeSub


class MD_DataIdentification_TypeSub(supermod.MD_DataIdentification_Type):
    def __init__(self, id=None, uuid=None, citation=None, abstract=None, purpose=None, credit=None, status=None, pointOfContact=None, resourceMaintenance=None, graphicOverview=None, resourceFormat=None, descriptiveKeywords=None, resourceSpecificUsage=None, resourceConstraints=None, aggregationInfo=None, spatialRepresentationType=None, spatialResolution=None, language=None, characterSet=None, topicCategory=None, environmentDescription=None, extent=None, supplementalInformation=None, **kwargs_):
        super(MD_DataIdentification_TypeSub, self).__init__(id, uuid, citation, abstract, purpose, credit, status, pointOfContact, resourceMaintenance, graphicOverview, resourceFormat, descriptiveKeywords, resourceSpecificUsage, resourceConstraints, aggregationInfo, spatialRepresentationType, spatialResolution, language, characterSet, topicCategory, environmentDescription, extent, supplementalInformation,  **kwargs_)
supermod.MD_DataIdentification_Type.subclass = MD_DataIdentification_TypeSub
# end class MD_DataIdentification_TypeSub


class MD_DataIdentification_PropertyTypeSub(supermod.MD_DataIdentification_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_DataIdentification=None, **kwargs_):
        super(MD_DataIdentification_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_DataIdentification,  **kwargs_)
supermod.MD_DataIdentification_PropertyType.subclass = MD_DataIdentification_PropertyTypeSub
# end class MD_DataIdentification_PropertyTypeSub


class MD_ServiceIdentification_TypeSub(supermod.MD_ServiceIdentification_Type):
    def __init__(self, id=None, uuid=None, citation=None, abstract=None, purpose=None, credit=None, status=None, pointOfContact=None, resourceMaintenance=None, graphicOverview=None, resourceFormat=None, descriptiveKeywords=None, resourceSpecificUsage=None, resourceConstraints=None, aggregationInfo=None, **kwargs_):
        super(MD_ServiceIdentification_TypeSub, self).__init__(id, uuid, citation, abstract, purpose, credit, status, pointOfContact, resourceMaintenance, graphicOverview, resourceFormat, descriptiveKeywords, resourceSpecificUsage, resourceConstraints, aggregationInfo,  **kwargs_)
supermod.MD_ServiceIdentification_Type.subclass = MD_ServiceIdentification_TypeSub
# end class MD_ServiceIdentification_TypeSub


class MD_ServiceIdentification_PropertyTypeSub(supermod.MD_ServiceIdentification_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_ServiceIdentification=None, **kwargs_):
        super(MD_ServiceIdentification_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_ServiceIdentification,  **kwargs_)
supermod.MD_ServiceIdentification_PropertyType.subclass = MD_ServiceIdentification_PropertyTypeSub
# end class MD_ServiceIdentification_PropertyTypeSub


class MD_RepresentativeFraction_TypeSub(supermod.MD_RepresentativeFraction_Type):
    def __init__(self, id=None, uuid=None, denominator=None, **kwargs_):
        super(MD_RepresentativeFraction_TypeSub, self).__init__(id, uuid, denominator,  **kwargs_)
supermod.MD_RepresentativeFraction_Type.subclass = MD_RepresentativeFraction_TypeSub
# end class MD_RepresentativeFraction_TypeSub


class MD_RepresentativeFraction_PropertyTypeSub(supermod.MD_RepresentativeFraction_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_RepresentativeFraction=None, **kwargs_):
        super(MD_RepresentativeFraction_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_RepresentativeFraction,  **kwargs_)
supermod.MD_RepresentativeFraction_PropertyType.subclass = MD_RepresentativeFraction_PropertyTypeSub
# end class MD_RepresentativeFraction_PropertyTypeSub


class MD_Usage_TypeSub(supermod.MD_Usage_Type):
    def __init__(self, id=None, uuid=None, specificUsage=None, usageDateTime=None, userDeterminedLimitations=None, userContactInfo=None, **kwargs_):
        super(MD_Usage_TypeSub, self).__init__(id, uuid, specificUsage, usageDateTime, userDeterminedLimitations, userContactInfo,  **kwargs_)
supermod.MD_Usage_Type.subclass = MD_Usage_TypeSub
# end class MD_Usage_TypeSub


class MD_Usage_PropertyTypeSub(supermod.MD_Usage_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_Usage=None, **kwargs_):
        super(MD_Usage_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_Usage,  **kwargs_)
supermod.MD_Usage_PropertyType.subclass = MD_Usage_PropertyTypeSub
# end class MD_Usage_PropertyTypeSub


class MD_Keywords_TypeSub(supermod.MD_Keywords_Type):
    def __init__(self, id=None, uuid=None, keyword=None, type_=None, thesaurusName=None, **kwargs_):
        super(MD_Keywords_TypeSub, self).__init__(id, uuid, keyword, type_, thesaurusName,  **kwargs_)
supermod.MD_Keywords_Type.subclass = MD_Keywords_TypeSub
# end class MD_Keywords_TypeSub


class MD_Keywords_PropertyTypeSub(supermod.MD_Keywords_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_Keywords=None, **kwargs_):
        super(MD_Keywords_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_Keywords,  **kwargs_)
supermod.MD_Keywords_PropertyType.subclass = MD_Keywords_PropertyTypeSub
# end class MD_Keywords_PropertyTypeSub


class DS_Association_TypeSub(supermod.DS_Association_Type):
    def __init__(self, id=None, uuid=None, **kwargs_):
        super(DS_Association_TypeSub, self).__init__(id, uuid,  **kwargs_)
supermod.DS_Association_Type.subclass = DS_Association_TypeSub
# end class DS_Association_TypeSub


class DS_Association_PropertyTypeSub(supermod.DS_Association_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, DS_Association=None, **kwargs_):
        super(DS_Association_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, DS_Association,  **kwargs_)
supermod.DS_Association_PropertyType.subclass = DS_Association_PropertyTypeSub
# end class DS_Association_PropertyTypeSub


class MD_AggregateInformation_TypeSub(supermod.MD_AggregateInformation_Type):
    def __init__(self, id=None, uuid=None, aggregateDataSetName=None, aggregateDataSetIdentifier=None, associationType=None, initiativeType=None, **kwargs_):
        super(MD_AggregateInformation_TypeSub, self).__init__(id, uuid, aggregateDataSetName, aggregateDataSetIdentifier, associationType, initiativeType,  **kwargs_)
supermod.MD_AggregateInformation_Type.subclass = MD_AggregateInformation_TypeSub
# end class MD_AggregateInformation_TypeSub


class MD_AggregateInformation_PropertyTypeSub(supermod.MD_AggregateInformation_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_AggregateInformation=None, **kwargs_):
        super(MD_AggregateInformation_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_AggregateInformation,  **kwargs_)
supermod.MD_AggregateInformation_PropertyType.subclass = MD_AggregateInformation_PropertyTypeSub
# end class MD_AggregateInformation_PropertyTypeSub


class MD_Resolution_TypeSub(supermod.MD_Resolution_Type):
    def __init__(self, equivalentScale=None, distance=None, **kwargs_):
        super(MD_Resolution_TypeSub, self).__init__(equivalentScale, distance,  **kwargs_)
supermod.MD_Resolution_Type.subclass = MD_Resolution_TypeSub
# end class MD_Resolution_TypeSub


class MD_Resolution_PropertyTypeSub(supermod.MD_Resolution_PropertyType):
    def __init__(self, nilReason=None, MD_Resolution=None, **kwargs_):
        super(MD_Resolution_PropertyTypeSub, self).__init__(nilReason, MD_Resolution,  **kwargs_)
supermod.MD_Resolution_PropertyType.subclass = MD_Resolution_PropertyTypeSub
# end class MD_Resolution_PropertyTypeSub


class MD_TopicCategoryCode_PropertyTypeSub(supermod.MD_TopicCategoryCode_PropertyType):
    def __init__(self, nilReason=None, MD_TopicCategoryCode=None, **kwargs_):
        super(MD_TopicCategoryCode_PropertyTypeSub, self).__init__(nilReason, MD_TopicCategoryCode,  **kwargs_)
supermod.MD_TopicCategoryCode_PropertyType.subclass = MD_TopicCategoryCode_PropertyTypeSub
# end class MD_TopicCategoryCode_PropertyTypeSub


class MD_CharacterSetCode_PropertyTypeSub(supermod.MD_CharacterSetCode_PropertyType):
    def __init__(self, nilReason=None, MD_CharacterSetCode=None, **kwargs_):
        super(MD_CharacterSetCode_PropertyTypeSub, self).__init__(nilReason, MD_CharacterSetCode,  **kwargs_)
supermod.MD_CharacterSetCode_PropertyType.subclass = MD_CharacterSetCode_PropertyTypeSub
# end class MD_CharacterSetCode_PropertyTypeSub


class MD_SpatialRepresentationTypeCode_PropertyTypeSub(supermod.MD_SpatialRepresentationTypeCode_PropertyType):
    def __init__(self, nilReason=None, MD_SpatialRepresentationTypeCode=None, **kwargs_):
        super(MD_SpatialRepresentationTypeCode_PropertyTypeSub, self).__init__(nilReason, MD_SpatialRepresentationTypeCode,  **kwargs_)
supermod.MD_SpatialRepresentationTypeCode_PropertyType.subclass = MD_SpatialRepresentationTypeCode_PropertyTypeSub
# end class MD_SpatialRepresentationTypeCode_PropertyTypeSub


class MD_ProgressCode_PropertyTypeSub(supermod.MD_ProgressCode_PropertyType):
    def __init__(self, nilReason=None, MD_ProgressCode=None, **kwargs_):
        super(MD_ProgressCode_PropertyTypeSub, self).__init__(nilReason, MD_ProgressCode,  **kwargs_)
supermod.MD_ProgressCode_PropertyType.subclass = MD_ProgressCode_PropertyTypeSub
# end class MD_ProgressCode_PropertyTypeSub


class MD_KeywordTypeCode_PropertyTypeSub(supermod.MD_KeywordTypeCode_PropertyType):
    def __init__(self, nilReason=None, MD_KeywordTypeCode=None, **kwargs_):
        super(MD_KeywordTypeCode_PropertyTypeSub, self).__init__(nilReason, MD_KeywordTypeCode,  **kwargs_)
supermod.MD_KeywordTypeCode_PropertyType.subclass = MD_KeywordTypeCode_PropertyTypeSub
# end class MD_KeywordTypeCode_PropertyTypeSub


class DS_AssociationTypeCode_PropertyTypeSub(supermod.DS_AssociationTypeCode_PropertyType):
    def __init__(self, nilReason=None, DS_AssociationTypeCode=None, **kwargs_):
        super(DS_AssociationTypeCode_PropertyTypeSub, self).__init__(nilReason, DS_AssociationTypeCode,  **kwargs_)
supermod.DS_AssociationTypeCode_PropertyType.subclass = DS_AssociationTypeCode_PropertyTypeSub
# end class DS_AssociationTypeCode_PropertyTypeSub


class DS_InitiativeTypeCode_PropertyTypeSub(supermod.DS_InitiativeTypeCode_PropertyType):
    def __init__(self, nilReason=None, DS_InitiativeTypeCode=None, **kwargs_):
        super(DS_InitiativeTypeCode_PropertyTypeSub, self).__init__(nilReason, DS_InitiativeTypeCode,  **kwargs_)
supermod.DS_InitiativeTypeCode_PropertyType.subclass = DS_InitiativeTypeCode_PropertyTypeSub
# end class DS_InitiativeTypeCode_PropertyTypeSub


class MD_Constraints_TypeSub(supermod.MD_Constraints_Type):
    def __init__(self, id=None, uuid=None, useLimitation=None, extensiontype_=None, **kwargs_):
        super(MD_Constraints_TypeSub, self).__init__(id, uuid, useLimitation, extensiontype_,  **kwargs_)
supermod.MD_Constraints_Type.subclass = MD_Constraints_TypeSub
# end class MD_Constraints_TypeSub


class MD_Constraints_PropertyTypeSub(supermod.MD_Constraints_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_Constraints=None, **kwargs_):
        super(MD_Constraints_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_Constraints,  **kwargs_)
supermod.MD_Constraints_PropertyType.subclass = MD_Constraints_PropertyTypeSub
# end class MD_Constraints_PropertyTypeSub


class MD_LegalConstraints_TypeSub(supermod.MD_LegalConstraints_Type):
    def __init__(self, id=None, uuid=None, useLimitation=None, accessConstraints=None, useConstraints=None, otherConstraints=None, **kwargs_):
        super(MD_LegalConstraints_TypeSub, self).__init__(id, uuid, useLimitation, accessConstraints, useConstraints, otherConstraints,  **kwargs_)
supermod.MD_LegalConstraints_Type.subclass = MD_LegalConstraints_TypeSub
# end class MD_LegalConstraints_TypeSub


class MD_LegalConstraints_PropertyTypeSub(supermod.MD_LegalConstraints_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_LegalConstraints=None, **kwargs_):
        super(MD_LegalConstraints_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_LegalConstraints,  **kwargs_)
supermod.MD_LegalConstraints_PropertyType.subclass = MD_LegalConstraints_PropertyTypeSub
# end class MD_LegalConstraints_PropertyTypeSub


class MD_SecurityConstraints_TypeSub(supermod.MD_SecurityConstraints_Type):
    def __init__(self, id=None, uuid=None, useLimitation=None, classification=None, userNote=None, classificationSystem=None, handlingDescription=None, **kwargs_):
        super(MD_SecurityConstraints_TypeSub, self).__init__(id, uuid, useLimitation, classification, userNote, classificationSystem, handlingDescription,  **kwargs_)
supermod.MD_SecurityConstraints_Type.subclass = MD_SecurityConstraints_TypeSub
# end class MD_SecurityConstraints_TypeSub


class MD_SecurityConstraints_PropertyTypeSub(supermod.MD_SecurityConstraints_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_SecurityConstraints=None, **kwargs_):
        super(MD_SecurityConstraints_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_SecurityConstraints,  **kwargs_)
supermod.MD_SecurityConstraints_PropertyType.subclass = MD_SecurityConstraints_PropertyTypeSub
# end class MD_SecurityConstraints_PropertyTypeSub


class MD_ClassificationCode_PropertyTypeSub(supermod.MD_ClassificationCode_PropertyType):
    def __init__(self, nilReason=None, MD_ClassificationCode=None, **kwargs_):
        super(MD_ClassificationCode_PropertyTypeSub, self).__init__(nilReason, MD_ClassificationCode,  **kwargs_)
supermod.MD_ClassificationCode_PropertyType.subclass = MD_ClassificationCode_PropertyTypeSub
# end class MD_ClassificationCode_PropertyTypeSub


class MD_RestrictionCode_PropertyTypeSub(supermod.MD_RestrictionCode_PropertyType):
    def __init__(self, nilReason=None, MD_RestrictionCode=None, **kwargs_):
        super(MD_RestrictionCode_PropertyTypeSub, self).__init__(nilReason, MD_RestrictionCode,  **kwargs_)
supermod.MD_RestrictionCode_PropertyType.subclass = MD_RestrictionCode_PropertyTypeSub
# end class MD_RestrictionCode_PropertyTypeSub


class MD_Medium_TypeSub(supermod.MD_Medium_Type):
    def __init__(self, id=None, uuid=None, name=None, density=None, densityUnits=None, volumes=None, mediumFormat=None, mediumNote=None, **kwargs_):
        super(MD_Medium_TypeSub, self).__init__(id, uuid, name, density, densityUnits, volumes, mediumFormat, mediumNote,  **kwargs_)
supermod.MD_Medium_Type.subclass = MD_Medium_TypeSub
# end class MD_Medium_TypeSub


class MD_Medium_PropertyTypeSub(supermod.MD_Medium_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_Medium=None, **kwargs_):
        super(MD_Medium_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_Medium,  **kwargs_)
supermod.MD_Medium_PropertyType.subclass = MD_Medium_PropertyTypeSub
# end class MD_Medium_PropertyTypeSub


class MD_DigitalTransferOptions_TypeSub(supermod.MD_DigitalTransferOptions_Type):
    def __init__(self, id=None, uuid=None, unitsOfDistribution=None, transferSize=None, onLine=None, offLine=None, **kwargs_):
        super(MD_DigitalTransferOptions_TypeSub, self).__init__(id, uuid, unitsOfDistribution, transferSize, onLine, offLine,  **kwargs_)
supermod.MD_DigitalTransferOptions_Type.subclass = MD_DigitalTransferOptions_TypeSub
# end class MD_DigitalTransferOptions_TypeSub


class MD_DigitalTransferOptions_PropertyTypeSub(supermod.MD_DigitalTransferOptions_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_DigitalTransferOptions=None, **kwargs_):
        super(MD_DigitalTransferOptions_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_DigitalTransferOptions,  **kwargs_)
supermod.MD_DigitalTransferOptions_PropertyType.subclass = MD_DigitalTransferOptions_PropertyTypeSub
# end class MD_DigitalTransferOptions_PropertyTypeSub


class MD_StandardOrderProcess_TypeSub(supermod.MD_StandardOrderProcess_Type):
    def __init__(self, id=None, uuid=None, fees=None, plannedAvailableDateTime=None, orderingInstructions=None, turnaround=None, **kwargs_):
        super(MD_StandardOrderProcess_TypeSub, self).__init__(id, uuid, fees, plannedAvailableDateTime, orderingInstructions, turnaround,  **kwargs_)
supermod.MD_StandardOrderProcess_Type.subclass = MD_StandardOrderProcess_TypeSub
# end class MD_StandardOrderProcess_TypeSub


class MD_StandardOrderProcess_PropertyTypeSub(supermod.MD_StandardOrderProcess_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_StandardOrderProcess=None, **kwargs_):
        super(MD_StandardOrderProcess_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_StandardOrderProcess,  **kwargs_)
supermod.MD_StandardOrderProcess_PropertyType.subclass = MD_StandardOrderProcess_PropertyTypeSub
# end class MD_StandardOrderProcess_PropertyTypeSub


class MD_Distributor_TypeSub(supermod.MD_Distributor_Type):
    def __init__(self, id=None, uuid=None, distributorContact=None, distributionOrderProcess=None, distributorFormat=None, distributorTransferOptions=None, **kwargs_):
        super(MD_Distributor_TypeSub, self).__init__(id, uuid, distributorContact, distributionOrderProcess, distributorFormat, distributorTransferOptions,  **kwargs_)
supermod.MD_Distributor_Type.subclass = MD_Distributor_TypeSub
# end class MD_Distributor_TypeSub


class MD_Distributor_PropertyTypeSub(supermod.MD_Distributor_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_Distributor=None, **kwargs_):
        super(MD_Distributor_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_Distributor,  **kwargs_)
supermod.MD_Distributor_PropertyType.subclass = MD_Distributor_PropertyTypeSub
# end class MD_Distributor_PropertyTypeSub


class MD_Distribution_TypeSub(supermod.MD_Distribution_Type):
    def __init__(self, id=None, uuid=None, distributionFormat=None, distributor=None, transferOptions=None, **kwargs_):
        super(MD_Distribution_TypeSub, self).__init__(id, uuid, distributionFormat, distributor, transferOptions,  **kwargs_)
supermod.MD_Distribution_Type.subclass = MD_Distribution_TypeSub
# end class MD_Distribution_TypeSub


class MD_Distribution_PropertyTypeSub(supermod.MD_Distribution_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_Distribution=None, **kwargs_):
        super(MD_Distribution_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_Distribution,  **kwargs_)
supermod.MD_Distribution_PropertyType.subclass = MD_Distribution_PropertyTypeSub
# end class MD_Distribution_PropertyTypeSub


class MD_Format_TypeSub(supermod.MD_Format_Type):
    def __init__(self, id=None, uuid=None, name=None, version=None, amendmentNumber=None, specification=None, fileDecompressionTechnique=None, formatDistributor=None, **kwargs_):
        super(MD_Format_TypeSub, self).__init__(id, uuid, name, version, amendmentNumber, specification, fileDecompressionTechnique, formatDistributor,  **kwargs_)
supermod.MD_Format_Type.subclass = MD_Format_TypeSub
# end class MD_Format_TypeSub


class MD_Format_PropertyTypeSub(supermod.MD_Format_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_Format=None, **kwargs_):
        super(MD_Format_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_Format,  **kwargs_)
supermod.MD_Format_PropertyType.subclass = MD_Format_PropertyTypeSub
# end class MD_Format_PropertyTypeSub


class MD_DistributionUnits_PropertyTypeSub(supermod.MD_DistributionUnits_PropertyType):
    def __init__(self, nilReason=None, MD_DistributionUnits=None, **kwargs_):
        super(MD_DistributionUnits_PropertyTypeSub, self).__init__(nilReason, MD_DistributionUnits,  **kwargs_)
supermod.MD_DistributionUnits_PropertyType.subclass = MD_DistributionUnits_PropertyTypeSub
# end class MD_DistributionUnits_PropertyTypeSub


class MD_MediumFormatCode_PropertyTypeSub(supermod.MD_MediumFormatCode_PropertyType):
    def __init__(self, nilReason=None, MD_MediumFormatCode=None, **kwargs_):
        super(MD_MediumFormatCode_PropertyTypeSub, self).__init__(nilReason, MD_MediumFormatCode,  **kwargs_)
supermod.MD_MediumFormatCode_PropertyType.subclass = MD_MediumFormatCode_PropertyTypeSub
# end class MD_MediumFormatCode_PropertyTypeSub


class MD_MediumNameCode_PropertyTypeSub(supermod.MD_MediumNameCode_PropertyType):
    def __init__(self, nilReason=None, MD_MediumNameCode=None, **kwargs_):
        super(MD_MediumNameCode_PropertyTypeSub, self).__init__(nilReason, MD_MediumNameCode,  **kwargs_)
supermod.MD_MediumNameCode_PropertyType.subclass = MD_MediumNameCode_PropertyTypeSub
# end class MD_MediumNameCode_PropertyTypeSub


class MD_MaintenanceInformation_TypeSub(supermod.MD_MaintenanceInformation_Type):
    def __init__(self, id=None, uuid=None, maintenanceAndUpdateFrequency=None, dateOfNextUpdate=None, userDefinedMaintenanceFrequency=None, updateScope=None, updateScopeDescription=None, maintenanceNote=None, contact=None, **kwargs_):
        super(MD_MaintenanceInformation_TypeSub, self).__init__(id, uuid, maintenanceAndUpdateFrequency, dateOfNextUpdate, userDefinedMaintenanceFrequency, updateScope, updateScopeDescription, maintenanceNote, contact,  **kwargs_)
supermod.MD_MaintenanceInformation_Type.subclass = MD_MaintenanceInformation_TypeSub
# end class MD_MaintenanceInformation_TypeSub


class MD_MaintenanceInformation_PropertyTypeSub(supermod.MD_MaintenanceInformation_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, MD_MaintenanceInformation=None, **kwargs_):
        super(MD_MaintenanceInformation_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, MD_MaintenanceInformation,  **kwargs_)
supermod.MD_MaintenanceInformation_PropertyType.subclass = MD_MaintenanceInformation_PropertyTypeSub
# end class MD_MaintenanceInformation_PropertyTypeSub


class MD_ScopeDescription_TypeSub(supermod.MD_ScopeDescription_Type):
    def __init__(self, attributes=None, features=None, featureInstances=None, attributeInstances=None, dataset=None, other=None, **kwargs_):
        super(MD_ScopeDescription_TypeSub, self).__init__(attributes, features, featureInstances, attributeInstances, dataset, other,  **kwargs_)
supermod.MD_ScopeDescription_Type.subclass = MD_ScopeDescription_TypeSub
# end class MD_ScopeDescription_TypeSub


class MD_ScopeDescription_PropertyTypeSub(supermod.MD_ScopeDescription_PropertyType):
    def __init__(self, nilReason=None, MD_ScopeDescription=None, **kwargs_):
        super(MD_ScopeDescription_PropertyTypeSub, self).__init__(nilReason, MD_ScopeDescription,  **kwargs_)
supermod.MD_ScopeDescription_PropertyType.subclass = MD_ScopeDescription_PropertyTypeSub
# end class MD_ScopeDescription_PropertyTypeSub


class MD_MaintenanceFrequencyCode_PropertyTypeSub(supermod.MD_MaintenanceFrequencyCode_PropertyType):
    def __init__(self, nilReason=None, MD_MaintenanceFrequencyCode=None, **kwargs_):
        super(MD_MaintenanceFrequencyCode_PropertyTypeSub, self).__init__(nilReason, MD_MaintenanceFrequencyCode,  **kwargs_)
supermod.MD_MaintenanceFrequencyCode_PropertyType.subclass = MD_MaintenanceFrequencyCode_PropertyTypeSub
# end class MD_MaintenanceFrequencyCode_PropertyTypeSub


class MD_ScopeCode_PropertyTypeSub(supermod.MD_ScopeCode_PropertyType):
    def __init__(self, nilReason=None, MD_ScopeCode=None, **kwargs_):
        super(MD_ScopeCode_PropertyTypeSub, self).__init__(nilReason, MD_ScopeCode,  **kwargs_)
supermod.MD_ScopeCode_PropertyType.subclass = MD_ScopeCode_PropertyTypeSub
# end class MD_ScopeCode_PropertyTypeSub


class PT_FreeText_TypeSub(supermod.PT_FreeText_Type):
    def __init__(self, id=None, uuid=None, textGroup=None, **kwargs_):
        super(PT_FreeText_TypeSub, self).__init__(id, uuid, textGroup,  **kwargs_)
supermod.PT_FreeText_Type.subclass = PT_FreeText_TypeSub
# end class PT_FreeText_TypeSub


class PT_FreeText_PropertyTypeSub(supermod.PT_FreeText_PropertyType):
    def __init__(self, nilReason=None, CharacterString=None, PT_FreeText=None, **kwargs_):
        super(PT_FreeText_PropertyTypeSub, self).__init__(nilReason, CharacterString, PT_FreeText,  **kwargs_)
supermod.PT_FreeText_PropertyType.subclass = PT_FreeText_PropertyTypeSub
# end class PT_FreeText_PropertyTypeSub


class PT_Locale_TypeSub(supermod.PT_Locale_Type):
    def __init__(self, id=None, uuid=None, languageCode=None, country=None, characterEncoding=None, **kwargs_):
        super(PT_Locale_TypeSub, self).__init__(id, uuid, languageCode, country, characterEncoding,  **kwargs_)
supermod.PT_Locale_Type.subclass = PT_Locale_TypeSub
# end class PT_Locale_TypeSub


class PT_Locale_PropertyTypeSub(supermod.PT_Locale_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, PT_Locale=None, **kwargs_):
        super(PT_Locale_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, PT_Locale,  **kwargs_)
supermod.PT_Locale_PropertyType.subclass = PT_Locale_PropertyTypeSub
# end class PT_Locale_PropertyTypeSub


class LocalisedCharacterString_TypeSub(supermod.LocalisedCharacterString_Type):
    def __init__(self, id=None, locale=None, valueOf_=None, **kwargs_):
        super(LocalisedCharacterString_TypeSub, self).__init__(id, locale, valueOf_,  **kwargs_)
supermod.LocalisedCharacterString_Type.subclass = LocalisedCharacterString_TypeSub
# end class LocalisedCharacterString_TypeSub


class LocalisedCharacterString_PropertyTypeSub(supermod.LocalisedCharacterString_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, LocalisedCharacterString=None, **kwargs_):
        super(LocalisedCharacterString_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, LocalisedCharacterString,  **kwargs_)
supermod.LocalisedCharacterString_PropertyType.subclass = LocalisedCharacterString_PropertyTypeSub
# end class LocalisedCharacterString_PropertyTypeSub


class PT_LocaleContainer_TypeSub(supermod.PT_LocaleContainer_Type):
    def __init__(self, description=None, locale=None, date=None, responsibleParty=None, localisedString=None, **kwargs_):
        super(PT_LocaleContainer_TypeSub, self).__init__(description, locale, date, responsibleParty, localisedString,  **kwargs_)
supermod.PT_LocaleContainer_Type.subclass = PT_LocaleContainer_TypeSub
# end class PT_LocaleContainer_TypeSub


class PT_LocaleContainer_PropertyTypeSub(supermod.PT_LocaleContainer_PropertyType):
    def __init__(self, nilReason=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, uuidref=None, PT_LocaleContainer=None, **kwargs_):
        super(PT_LocaleContainer_PropertyTypeSub, self).__init__(nilReason, type_, href, role, arcrole, title, show, actuate, uuidref, PT_LocaleContainer,  **kwargs_)
supermod.PT_LocaleContainer_PropertyType.subclass = PT_LocaleContainer_PropertyTypeSub
# end class PT_LocaleContainer_PropertyTypeSub


class LanguageCode_PropertyTypeSub(supermod.LanguageCode_PropertyType):
    def __init__(self, nilReason=None, LanguageCode=None, **kwargs_):
        super(LanguageCode_PropertyTypeSub, self).__init__(nilReason, LanguageCode,  **kwargs_)
supermod.LanguageCode_PropertyType.subclass = LanguageCode_PropertyTypeSub
# end class LanguageCode_PropertyTypeSub


class Country_PropertyTypeSub(supermod.Country_PropertyType):
    def __init__(self, nilReason=None, Country=None, **kwargs_):
        super(Country_PropertyTypeSub, self).__init__(nilReason, Country,  **kwargs_)
supermod.Country_PropertyType.subclass = Country_PropertyTypeSub
# end class Country_PropertyTypeSub


class AbstractDatumTypeSub(supermod.AbstractDatumType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, scope=None, anchorDefinition=None, realizationEpoch=None, extensiontype_=None, **kwargs_):
        super(AbstractDatumTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, scope, anchorDefinition, realizationEpoch, extensiontype_,  **kwargs_)
supermod.AbstractDatumType.subclass = AbstractDatumTypeSub
# end class AbstractDatumTypeSub


class DatumPropertyTypeSub(supermod.DatumPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, AbstractDatum=None, **kwargs_):
        super(DatumPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, AbstractDatum,  **kwargs_)
supermod.DatumPropertyType.subclass = DatumPropertyTypeSub
# end class DatumPropertyTypeSub


class GeodeticDatumTypeSub(supermod.GeodeticDatumType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, scope=None, anchorDefinition=None, realizationEpoch=None, primeMeridian=None, ellipsoid=None, **kwargs_):
        super(GeodeticDatumTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, scope, anchorDefinition, realizationEpoch, primeMeridian, ellipsoid,  **kwargs_)
supermod.GeodeticDatumType.subclass = GeodeticDatumTypeSub
# end class GeodeticDatumTypeSub


class GeodeticDatumPropertyTypeSub(supermod.GeodeticDatumPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, GeodeticDatum=None, **kwargs_):
        super(GeodeticDatumPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, GeodeticDatum,  **kwargs_)
supermod.GeodeticDatumPropertyType.subclass = GeodeticDatumPropertyTypeSub
# end class GeodeticDatumPropertyTypeSub


class EllipsoidTypeSub(supermod.EllipsoidType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, semiMajorAxis=None, secondDefiningParameter=None, **kwargs_):
        super(EllipsoidTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, semiMajorAxis, secondDefiningParameter,  **kwargs_)
supermod.EllipsoidType.subclass = EllipsoidTypeSub
# end class EllipsoidTypeSub


class secondDefiningParameterSub(supermod.secondDefiningParameter):
    def __init__(self, SecondDefiningParameter=None, **kwargs_):
        super(secondDefiningParameterSub, self).__init__(SecondDefiningParameter,  **kwargs_)
supermod.secondDefiningParameter.subclass = secondDefiningParameterSub
# end class secondDefiningParameterSub


class SecondDefiningParameterSub(supermod.SecondDefiningParameter):
    def __init__(self, inverseFlattening=None, semiMinorAxis=None, isSphere='true', **kwargs_):
        super(SecondDefiningParameterSub, self).__init__(inverseFlattening, semiMinorAxis, isSphere,  **kwargs_)
supermod.SecondDefiningParameter.subclass = SecondDefiningParameterSub
# end class SecondDefiningParameterSub


class EllipsoidPropertyTypeSub(supermod.EllipsoidPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, Ellipsoid=None, **kwargs_):
        super(EllipsoidPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, Ellipsoid,  **kwargs_)
supermod.EllipsoidPropertyType.subclass = EllipsoidPropertyTypeSub
# end class EllipsoidPropertyTypeSub


class PrimeMeridianTypeSub(supermod.PrimeMeridianType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, greenwichLongitude=None, **kwargs_):
        super(PrimeMeridianTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, greenwichLongitude,  **kwargs_)
supermod.PrimeMeridianType.subclass = PrimeMeridianTypeSub
# end class PrimeMeridianTypeSub


class PrimeMeridianPropertyTypeSub(supermod.PrimeMeridianPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, PrimeMeridian=None, **kwargs_):
        super(PrimeMeridianPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, PrimeMeridian,  **kwargs_)
supermod.PrimeMeridianPropertyType.subclass = PrimeMeridianPropertyTypeSub
# end class PrimeMeridianPropertyTypeSub


class EngineeringDatumTypeSub(supermod.EngineeringDatumType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, scope=None, anchorDefinition=None, realizationEpoch=None, **kwargs_):
        super(EngineeringDatumTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, scope, anchorDefinition, realizationEpoch,  **kwargs_)
supermod.EngineeringDatumType.subclass = EngineeringDatumTypeSub
# end class EngineeringDatumTypeSub


class EngineeringDatumPropertyTypeSub(supermod.EngineeringDatumPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, EngineeringDatum=None, **kwargs_):
        super(EngineeringDatumPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, EngineeringDatum,  **kwargs_)
supermod.EngineeringDatumPropertyType.subclass = EngineeringDatumPropertyTypeSub
# end class EngineeringDatumPropertyTypeSub


class ImageDatumTypeSub(supermod.ImageDatumType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, scope=None, anchorDefinition=None, realizationEpoch=None, pixelInCell=None, **kwargs_):
        super(ImageDatumTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, scope, anchorDefinition, realizationEpoch, pixelInCell,  **kwargs_)
supermod.ImageDatumType.subclass = ImageDatumTypeSub
# end class ImageDatumTypeSub


class ImageDatumPropertyTypeSub(supermod.ImageDatumPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, ImageDatum=None, **kwargs_):
        super(ImageDatumPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, ImageDatum,  **kwargs_)
supermod.ImageDatumPropertyType.subclass = ImageDatumPropertyTypeSub
# end class ImageDatumPropertyTypeSub


class VerticalDatumTypeSub(supermod.VerticalDatumType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, scope=None, anchorDefinition=None, realizationEpoch=None, **kwargs_):
        super(VerticalDatumTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, scope, anchorDefinition, realizationEpoch,  **kwargs_)
supermod.VerticalDatumType.subclass = VerticalDatumTypeSub
# end class VerticalDatumTypeSub


class VerticalDatumPropertyTypeSub(supermod.VerticalDatumPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, VerticalDatum=None, **kwargs_):
        super(VerticalDatumPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, VerticalDatum,  **kwargs_)
supermod.VerticalDatumPropertyType.subclass = VerticalDatumPropertyTypeSub
# end class VerticalDatumPropertyTypeSub


class TemporalDatumBaseTypeSub(supermod.TemporalDatumBaseType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, scope=None, extensiontype_=None, **kwargs_):
        super(TemporalDatumBaseTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, scope, extensiontype_,  **kwargs_)
supermod.TemporalDatumBaseType.subclass = TemporalDatumBaseTypeSub
# end class TemporalDatumBaseTypeSub


class TemporalDatumPropertyTypeSub(supermod.TemporalDatumPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, TemporalDatum=None, **kwargs_):
        super(TemporalDatumPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, TemporalDatum,  **kwargs_)
supermod.TemporalDatumPropertyType.subclass = TemporalDatumPropertyTypeSub
# end class TemporalDatumPropertyTypeSub


class AbstractCoordinateOperationTypeSub(supermod.AbstractCoordinateOperationType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, scope=None, operationVersion=None, coordinateOperationAccuracy=None, sourceCRS=None, targetCRS=None, extensiontype_=None, **kwargs_):
        super(AbstractCoordinateOperationTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, scope, operationVersion, coordinateOperationAccuracy, sourceCRS, targetCRS, extensiontype_,  **kwargs_)
supermod.AbstractCoordinateOperationType.subclass = AbstractCoordinateOperationTypeSub
# end class AbstractCoordinateOperationTypeSub


class coordinateOperationAccuracySub(supermod.coordinateOperationAccuracy):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, AbstractDQ_PositionalAccuracy=None, **kwargs_):
        super(coordinateOperationAccuracySub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, AbstractDQ_PositionalAccuracy,  **kwargs_)
supermod.coordinateOperationAccuracy.subclass = coordinateOperationAccuracySub
# end class coordinateOperationAccuracySub


class CoordinateOperationPropertyTypeSub(supermod.CoordinateOperationPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, AbstractCoordinateOperation=None, **kwargs_):
        super(CoordinateOperationPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, AbstractCoordinateOperation,  **kwargs_)
supermod.CoordinateOperationPropertyType.subclass = CoordinateOperationPropertyTypeSub
# end class CoordinateOperationPropertyTypeSub


class SingleOperationPropertyTypeSub(supermod.SingleOperationPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, AbstractSingleOperation=None, **kwargs_):
        super(SingleOperationPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, AbstractSingleOperation,  **kwargs_)
supermod.SingleOperationPropertyType.subclass = SingleOperationPropertyTypeSub
# end class SingleOperationPropertyTypeSub


class AbstractGeneralConversionTypeSub(supermod.AbstractGeneralConversionType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, scope=None, coordinateOperationAccuracy=None, extensiontype_=None, **kwargs_):
        super(AbstractGeneralConversionTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, scope, coordinateOperationAccuracy, extensiontype_,  **kwargs_)
supermod.AbstractGeneralConversionType.subclass = AbstractGeneralConversionTypeSub
# end class AbstractGeneralConversionTypeSub


class GeneralConversionPropertyTypeSub(supermod.GeneralConversionPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, AbstractGeneralConversion=None, **kwargs_):
        super(GeneralConversionPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, AbstractGeneralConversion,  **kwargs_)
supermod.GeneralConversionPropertyType.subclass = GeneralConversionPropertyTypeSub
# end class GeneralConversionPropertyTypeSub


class AbstractGeneralTransformationTypeSub(supermod.AbstractGeneralTransformationType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, scope=None, operationVersion=None, coordinateOperationAccuracy=None, sourceCRS=None, targetCRS=None, extensiontype_=None, **kwargs_):
        super(AbstractGeneralTransformationTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, scope, operationVersion, coordinateOperationAccuracy, sourceCRS, targetCRS, extensiontype_,  **kwargs_)
supermod.AbstractGeneralTransformationType.subclass = AbstractGeneralTransformationTypeSub
# end class AbstractGeneralTransformationTypeSub


class GeneralTransformationPropertyTypeSub(supermod.GeneralTransformationPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, AbstractGeneralTransformation=None, **kwargs_):
        super(GeneralTransformationPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, AbstractGeneralTransformation,  **kwargs_)
supermod.GeneralTransformationPropertyType.subclass = GeneralTransformationPropertyTypeSub
# end class GeneralTransformationPropertyTypeSub


class ConcatenatedOperationTypeSub(supermod.ConcatenatedOperationType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, scope=None, operationVersion=None, coordinateOperationAccuracy=None, sourceCRS=None, targetCRS=None, aggregationType=None, coordOperation=None, **kwargs_):
        super(ConcatenatedOperationTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, scope, operationVersion, coordinateOperationAccuracy, sourceCRS, targetCRS, aggregationType, coordOperation,  **kwargs_)
supermod.ConcatenatedOperationType.subclass = ConcatenatedOperationTypeSub
# end class ConcatenatedOperationTypeSub


class ConcatenatedOperationPropertyTypeSub(supermod.ConcatenatedOperationPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, ConcatenatedOperation=None, **kwargs_):
        super(ConcatenatedOperationPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, ConcatenatedOperation,  **kwargs_)
supermod.ConcatenatedOperationPropertyType.subclass = ConcatenatedOperationPropertyTypeSub
# end class ConcatenatedOperationPropertyTypeSub


class PassThroughOperationTypeSub(supermod.PassThroughOperationType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, scope=None, operationVersion=None, coordinateOperationAccuracy=None, sourceCRS=None, targetCRS=None, aggregationType=None, modifiedCoordinate=None, coordOperation=None, **kwargs_):
        super(PassThroughOperationTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, scope, operationVersion, coordinateOperationAccuracy, sourceCRS, targetCRS, aggregationType, modifiedCoordinate, coordOperation,  **kwargs_)
supermod.PassThroughOperationType.subclass = PassThroughOperationTypeSub
# end class PassThroughOperationTypeSub


class PassThroughOperationPropertyTypeSub(supermod.PassThroughOperationPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, PassThroughOperation=None, **kwargs_):
        super(PassThroughOperationPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, PassThroughOperation,  **kwargs_)
supermod.PassThroughOperationPropertyType.subclass = PassThroughOperationPropertyTypeSub
# end class PassThroughOperationPropertyTypeSub


class ConversionTypeSub(supermod.ConversionType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, scope=None, coordinateOperationAccuracy=None, method=None, parameterValue=None, **kwargs_):
        super(ConversionTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, scope, coordinateOperationAccuracy, method, parameterValue,  **kwargs_)
supermod.ConversionType.subclass = ConversionTypeSub
# end class ConversionTypeSub


class ConversionPropertyTypeSub(supermod.ConversionPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, Conversion=None, **kwargs_):
        super(ConversionPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, Conversion,  **kwargs_)
supermod.ConversionPropertyType.subclass = ConversionPropertyTypeSub
# end class ConversionPropertyTypeSub


class TransformationTypeSub(supermod.TransformationType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, scope=None, operationVersion=None, coordinateOperationAccuracy=None, sourceCRS=None, targetCRS=None, method=None, parameterValue=None, **kwargs_):
        super(TransformationTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, scope, operationVersion, coordinateOperationAccuracy, sourceCRS, targetCRS, method, parameterValue,  **kwargs_)
supermod.TransformationType.subclass = TransformationTypeSub
# end class TransformationTypeSub


class TransformationPropertyTypeSub(supermod.TransformationPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, Transformation=None, **kwargs_):
        super(TransformationPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, Transformation,  **kwargs_)
supermod.TransformationPropertyType.subclass = TransformationPropertyTypeSub
# end class TransformationPropertyTypeSub


class AbstractGeneralParameterValueTypeSub(supermod.AbstractGeneralParameterValueType):
    def __init__(self, extensiontype_=None, **kwargs_):
        super(AbstractGeneralParameterValueTypeSub, self).__init__(extensiontype_,  **kwargs_)
supermod.AbstractGeneralParameterValueType.subclass = AbstractGeneralParameterValueTypeSub
# end class AbstractGeneralParameterValueTypeSub


class AbstractGeneralParameterValuePropertyTypeSub(supermod.AbstractGeneralParameterValuePropertyType):
    def __init__(self, AbstractGeneralParameterValue=None, **kwargs_):
        super(AbstractGeneralParameterValuePropertyTypeSub, self).__init__(AbstractGeneralParameterValue,  **kwargs_)
supermod.AbstractGeneralParameterValuePropertyType.subclass = AbstractGeneralParameterValuePropertyTypeSub
# end class AbstractGeneralParameterValuePropertyTypeSub


class ParameterValueTypeSub(supermod.ParameterValueType):
    def __init__(self, value=None, dmsAngleValue=None, stringValue=None, integerValue=None, booleanValue=None, valueList=None, integerValueList=None, valueFile=None, operationParameter=None, **kwargs_):
        super(ParameterValueTypeSub, self).__init__(value, dmsAngleValue, stringValue, integerValue, booleanValue, valueList, integerValueList, valueFile, operationParameter,  **kwargs_)
supermod.ParameterValueType.subclass = ParameterValueTypeSub
# end class ParameterValueTypeSub


class ParameterValueGroupTypeSub(supermod.ParameterValueGroupType):
    def __init__(self, parameterValue=None, group=None, **kwargs_):
        super(ParameterValueGroupTypeSub, self).__init__(parameterValue, group,  **kwargs_)
supermod.ParameterValueGroupType.subclass = ParameterValueGroupTypeSub
# end class ParameterValueGroupTypeSub


class OperationMethodTypeSub(supermod.OperationMethodType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, formulaCitation=None, formula=None, sourceDimensions=None, targetDimensions=None, parameter=None, **kwargs_):
        super(OperationMethodTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, formulaCitation, formula, sourceDimensions, targetDimensions, parameter,  **kwargs_)
supermod.OperationMethodType.subclass = OperationMethodTypeSub
# end class OperationMethodTypeSub


class formulaCitationSub(supermod.formulaCitation):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, CI_Citation=None, **kwargs_):
        super(formulaCitationSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, CI_Citation,  **kwargs_)
supermod.formulaCitation.subclass = formulaCitationSub
# end class formulaCitationSub


class OperationMethodPropertyTypeSub(supermod.OperationMethodPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, OperationMethod=None, **kwargs_):
        super(OperationMethodPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, OperationMethod,  **kwargs_)
supermod.OperationMethodPropertyType.subclass = OperationMethodPropertyTypeSub
# end class OperationMethodPropertyTypeSub


class AbstractGeneralOperationParameterTypeSub(supermod.AbstractGeneralOperationParameterType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, minimumOccurs=None, extensiontype_=None, **kwargs_):
        super(AbstractGeneralOperationParameterTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, minimumOccurs, extensiontype_,  **kwargs_)
supermod.AbstractGeneralOperationParameterType.subclass = AbstractGeneralOperationParameterTypeSub
# end class AbstractGeneralOperationParameterTypeSub


class AbstractGeneralOperationParameterPropertyTypeSub(supermod.AbstractGeneralOperationParameterPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, AbstractGeneralOperationParameter=None, **kwargs_):
        super(AbstractGeneralOperationParameterPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, AbstractGeneralOperationParameter,  **kwargs_)
supermod.AbstractGeneralOperationParameterPropertyType.subclass = AbstractGeneralOperationParameterPropertyTypeSub
# end class AbstractGeneralOperationParameterPropertyTypeSub


class OperationParameterTypeSub(supermod.OperationParameterType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, minimumOccurs=None, **kwargs_):
        super(OperationParameterTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, minimumOccurs,  **kwargs_)
supermod.OperationParameterType.subclass = OperationParameterTypeSub
# end class OperationParameterTypeSub


class OperationParameterPropertyTypeSub(supermod.OperationParameterPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, OperationParameter=None, **kwargs_):
        super(OperationParameterPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, OperationParameter,  **kwargs_)
supermod.OperationParameterPropertyType.subclass = OperationParameterPropertyTypeSub
# end class OperationParameterPropertyTypeSub


class OperationParameterGroupTypeSub(supermod.OperationParameterGroupType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, minimumOccurs=None, maximumOccurs=None, parameter=None, **kwargs_):
        super(OperationParameterGroupTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, minimumOccurs, maximumOccurs, parameter,  **kwargs_)
supermod.OperationParameterGroupType.subclass = OperationParameterGroupTypeSub
# end class OperationParameterGroupTypeSub


class OperationParameterGroupPropertyTypeSub(supermod.OperationParameterGroupPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, OperationParameterGroup=None, **kwargs_):
        super(OperationParameterGroupPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, OperationParameterGroup,  **kwargs_)
supermod.OperationParameterGroupPropertyType.subclass = OperationParameterGroupPropertyTypeSub
# end class OperationParameterGroupPropertyTypeSub


class ProcedurePropertyTypeSub(supermod.ProcedurePropertyType):
    def __init__(self, owns='false', type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, AbstractFeature=None, **kwargs_):
        super(ProcedurePropertyTypeSub, self).__init__(owns, type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, AbstractFeature,  **kwargs_)
supermod.ProcedurePropertyType.subclass = ProcedurePropertyTypeSub
# end class ProcedurePropertyTypeSub


class TargetPropertyTypeSub(supermod.TargetPropertyType):
    def __init__(self, owns='false', type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, AbstractFeature=None, AbstractGeometry=None, **kwargs_):
        super(TargetPropertyTypeSub, self).__init__(owns, type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, AbstractFeature, AbstractGeometry,  **kwargs_)
supermod.TargetPropertyType.subclass = TargetPropertyTypeSub
# end class TargetPropertyTypeSub


class ResultTypeSub(supermod.ResultType):
    def __init__(self, owns='false', type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, anytypeobjs_=None, **kwargs_):
        super(ResultTypeSub, self).__init__(owns, type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, anytypeobjs_,  **kwargs_)
supermod.ResultType.subclass = ResultTypeSub
# end class ResultTypeSub


class TimeReferenceSystemTypeSub(supermod.TimeReferenceSystemType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, extensiontype_=None, **kwargs_):
        super(TimeReferenceSystemTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, extensiontype_,  **kwargs_)
supermod.TimeReferenceSystemType.subclass = TimeReferenceSystemTypeSub
# end class TimeReferenceSystemTypeSub


class TimeCoordinateSystemTypeSub(supermod.TimeCoordinateSystemType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, originPosition=None, origin=None, interval=None, **kwargs_):
        super(TimeCoordinateSystemTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, originPosition, origin, interval,  **kwargs_)
supermod.TimeCoordinateSystemType.subclass = TimeCoordinateSystemTypeSub
# end class TimeCoordinateSystemTypeSub


class TimeCalendarTypeSub(supermod.TimeCalendarType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, referenceFrame=None, **kwargs_):
        super(TimeCalendarTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, referenceFrame,  **kwargs_)
supermod.TimeCalendarType.subclass = TimeCalendarTypeSub
# end class TimeCalendarTypeSub


class TimeCalendarEraTypeSub(supermod.TimeCalendarEraType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, referenceEvent=None, referenceDate=None, julianReference=None, epochOfUse=None, **kwargs_):
        super(TimeCalendarEraTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, referenceEvent, referenceDate, julianReference, epochOfUse,  **kwargs_)
supermod.TimeCalendarEraType.subclass = TimeCalendarEraTypeSub
# end class TimeCalendarEraTypeSub


class TimeCalendarPropertyTypeSub(supermod.TimeCalendarPropertyType):
    def __init__(self, owns='false', type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, TimeCalendar=None, **kwargs_):
        super(TimeCalendarPropertyTypeSub, self).__init__(owns, type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, TimeCalendar,  **kwargs_)
supermod.TimeCalendarPropertyType.subclass = TimeCalendarPropertyTypeSub
# end class TimeCalendarPropertyTypeSub


class TimeCalendarEraPropertyTypeSub(supermod.TimeCalendarEraPropertyType):
    def __init__(self, owns='false', type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, TimeCalendarEra=None, **kwargs_):
        super(TimeCalendarEraPropertyTypeSub, self).__init__(owns, type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, TimeCalendarEra,  **kwargs_)
supermod.TimeCalendarEraPropertyType.subclass = TimeCalendarEraPropertyTypeSub
# end class TimeCalendarEraPropertyTypeSub


class TimeClockTypeSub(supermod.TimeClockType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, referenceEvent=None, referenceTime=None, utcReference=None, dateBasis=None, **kwargs_):
        super(TimeClockTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, referenceEvent, referenceTime, utcReference, dateBasis,  **kwargs_)
supermod.TimeClockType.subclass = TimeClockTypeSub
# end class TimeClockTypeSub


class TimeClockPropertyTypeSub(supermod.TimeClockPropertyType):
    def __init__(self, owns='false', type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, TimeClock=None, **kwargs_):
        super(TimeClockPropertyTypeSub, self).__init__(owns, type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, TimeClock,  **kwargs_)
supermod.TimeClockPropertyType.subclass = TimeClockPropertyTypeSub
# end class TimeClockPropertyTypeSub


class TimeOrdinalReferenceSystemTypeSub(supermod.TimeOrdinalReferenceSystemType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, component=None, **kwargs_):
        super(TimeOrdinalReferenceSystemTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, component,  **kwargs_)
supermod.TimeOrdinalReferenceSystemType.subclass = TimeOrdinalReferenceSystemTypeSub
# end class TimeOrdinalReferenceSystemTypeSub


class TimeOrdinalEraTypeSub(supermod.TimeOrdinalEraType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, relatedTime=None, start=None, end=None, extent=None, member=None, group=None, **kwargs_):
        super(TimeOrdinalEraTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, relatedTime, start, end, extent, member, group,  **kwargs_)
supermod.TimeOrdinalEraType.subclass = TimeOrdinalEraTypeSub
# end class TimeOrdinalEraTypeSub


class TimeOrdinalEraPropertyTypeSub(supermod.TimeOrdinalEraPropertyType):
    def __init__(self, owns='false', type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, TimeOrdinalEra=None, **kwargs_):
        super(TimeOrdinalEraPropertyTypeSub, self).__init__(owns, type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, TimeOrdinalEra,  **kwargs_)
supermod.TimeOrdinalEraPropertyType.subclass = TimeOrdinalEraPropertyTypeSub
# end class TimeOrdinalEraPropertyTypeSub


class AbstractTimeTopologyPrimitiveTypeSub(supermod.AbstractTimeTopologyPrimitiveType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, relatedTime=None, complex=None, extensiontype_=None, **kwargs_):
        super(AbstractTimeTopologyPrimitiveTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, relatedTime, complex, extensiontype_,  **kwargs_)
supermod.AbstractTimeTopologyPrimitiveType.subclass = AbstractTimeTopologyPrimitiveTypeSub
# end class AbstractTimeTopologyPrimitiveTypeSub


class TimeTopologyPrimitivePropertyTypeSub(supermod.TimeTopologyPrimitivePropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, owns='false', AbstractTimeTopologyPrimitive=None, **kwargs_):
        super(TimeTopologyPrimitivePropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, owns, AbstractTimeTopologyPrimitive,  **kwargs_)
supermod.TimeTopologyPrimitivePropertyType.subclass = TimeTopologyPrimitivePropertyTypeSub
# end class TimeTopologyPrimitivePropertyTypeSub


class TimeTopologyComplexTypeSub(supermod.TimeTopologyComplexType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, primitive=None, **kwargs_):
        super(TimeTopologyComplexTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, primitive,  **kwargs_)
supermod.TimeTopologyComplexType.subclass = TimeTopologyComplexTypeSub
# end class TimeTopologyComplexTypeSub


class TimeTopologyComplexPropertyTypeSub(supermod.TimeTopologyComplexPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, owns='false', TimeTopologyComplex=None, **kwargs_):
        super(TimeTopologyComplexPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, owns, TimeTopologyComplex,  **kwargs_)
supermod.TimeTopologyComplexPropertyType.subclass = TimeTopologyComplexPropertyTypeSub
# end class TimeTopologyComplexPropertyTypeSub


class TimeNodeTypeSub(supermod.TimeNodeType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, relatedTime=None, complex=None, previousEdge=None, nextEdge=None, position=None, **kwargs_):
        super(TimeNodeTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, relatedTime, complex, previousEdge, nextEdge, position,  **kwargs_)
supermod.TimeNodeType.subclass = TimeNodeTypeSub
# end class TimeNodeTypeSub


class TimeNodePropertyTypeSub(supermod.TimeNodePropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, owns='false', TimeNode=None, **kwargs_):
        super(TimeNodePropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, owns, TimeNode,  **kwargs_)
supermod.TimeNodePropertyType.subclass = TimeNodePropertyTypeSub
# end class TimeNodePropertyTypeSub


class TimeEdgeTypeSub(supermod.TimeEdgeType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, relatedTime=None, complex=None, start=None, end=None, extent=None, **kwargs_):
        super(TimeEdgeTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, relatedTime, complex, start, end, extent,  **kwargs_)
supermod.TimeEdgeType.subclass = TimeEdgeTypeSub
# end class TimeEdgeTypeSub


class TimeEdgePropertyTypeSub(supermod.TimeEdgePropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, owns='false', TimeEdge=None, **kwargs_):
        super(TimeEdgePropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, owns, TimeEdge,  **kwargs_)
supermod.TimeEdgePropertyType.subclass = TimeEdgePropertyTypeSub
# end class TimeEdgePropertyTypeSub


class OperationPropertyTypeSub(supermod.OperationPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, AbstractOperation=None, **kwargs_):
        super(OperationPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, AbstractOperation,  **kwargs_)
supermod.OperationPropertyType.subclass = OperationPropertyTypeSub
# end class OperationPropertyTypeSub


class TemporalCSPropertyTypeSub(supermod.TemporalCSPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, TemporalCS=None, **kwargs_):
        super(TemporalCSPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, TemporalCS,  **kwargs_)
supermod.TemporalCSPropertyType.subclass = TemporalCSPropertyTypeSub
# end class TemporalCSPropertyTypeSub


class ObliqueCartesianCSPropertyTypeSub(supermod.ObliqueCartesianCSPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, ObliqueCartesianCS=None, **kwargs_):
        super(ObliqueCartesianCSPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, ObliqueCartesianCS,  **kwargs_)
supermod.ObliqueCartesianCSPropertyType.subclass = ObliqueCartesianCSPropertyTypeSub
# end class ObliqueCartesianCSPropertyTypeSub


class GeographicCRSTypeSub(supermod.GeographicCRSType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, scope=None, usesEllipsoidalCS=None, usesGeodeticDatum=None, **kwargs_):
        super(GeographicCRSTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, scope, usesEllipsoidalCS, usesGeodeticDatum,  **kwargs_)
supermod.GeographicCRSType.subclass = GeographicCRSTypeSub
# end class GeographicCRSTypeSub


class GeographicCRSPropertyTypeSub(supermod.GeographicCRSPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, GeographicCRS=None, **kwargs_):
        super(GeographicCRSPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, GeographicCRS,  **kwargs_)
supermod.GeographicCRSPropertyType.subclass = GeographicCRSPropertyTypeSub
# end class GeographicCRSPropertyTypeSub


class GeocentricCRSTypeSub(supermod.GeocentricCRSType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, scope=None, usesCartesianCS=None, usesSphericalCS=None, usesGeodeticDatum=None, **kwargs_):
        super(GeocentricCRSTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, scope, usesCartesianCS, usesSphericalCS, usesGeodeticDatum,  **kwargs_)
supermod.GeocentricCRSType.subclass = GeocentricCRSTypeSub
# end class GeocentricCRSTypeSub


class GeocentricCRSPropertyTypeSub(supermod.GeocentricCRSPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, GeocentricCRS=None, **kwargs_):
        super(GeocentricCRSPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, GeocentricCRS,  **kwargs_)
supermod.GeocentricCRSPropertyType.subclass = GeocentricCRSPropertyTypeSub
# end class GeocentricCRSPropertyTypeSub


class DMSAngleTypeSub(supermod.DMSAngleType):
    def __init__(self, degrees=None, decimalMinutes=None, minutes=None, seconds=None, **kwargs_):
        super(DMSAngleTypeSub, self).__init__(degrees, decimalMinutes, minutes, seconds,  **kwargs_)
supermod.DMSAngleType.subclass = DMSAngleTypeSub
# end class DMSAngleTypeSub


class DegreesTypeSub(supermod.DegreesType):
    def __init__(self, direction=None, valueOf_=None, **kwargs_):
        super(DegreesTypeSub, self).__init__(direction, valueOf_,  **kwargs_)
supermod.DegreesType.subclass = DegreesTypeSub
# end class DegreesTypeSub


class AngleChoiceTypeSub(supermod.AngleChoiceType):
    def __init__(self, angle=None, dmsAngle=None, **kwargs_):
        super(AngleChoiceTypeSub, self).__init__(angle, dmsAngle,  **kwargs_)
supermod.AngleChoiceType.subclass = AngleChoiceTypeSub
# end class AngleChoiceTypeSub


class ArrayAssociationTypeSub(supermod.ArrayAssociationType):
    def __init__(self, owns='false', AbstractObject=None, **kwargs_):
        super(ArrayAssociationTypeSub, self).__init__(owns, AbstractObject,  **kwargs_)
supermod.ArrayAssociationType.subclass = ArrayAssociationTypeSub
# end class ArrayAssociationTypeSub


class StringOrRefTypeSub(supermod.StringOrRefType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, valueOf_=None, **kwargs_):
        super(StringOrRefTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, valueOf_,  **kwargs_)
supermod.StringOrRefType.subclass = StringOrRefTypeSub
# end class StringOrRefTypeSub


class BagTypeSub(supermod.BagType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, member=None, members=None, **kwargs_):
        super(BagTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, member, members,  **kwargs_)
supermod.BagType.subclass = BagTypeSub
# end class BagTypeSub


class ArrayTypeSub(supermod.ArrayType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, members=None, **kwargs_):
        super(ArrayTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, members,  **kwargs_)
supermod.ArrayType.subclass = ArrayTypeSub
# end class ArrayTypeSub


class MetaDataPropertyTypeSub(supermod.MetaDataPropertyType):
    def __init__(self, about=None, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, AbstractMetaData=None, **kwargs_):
        super(MetaDataPropertyTypeSub, self).__init__(about, type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, AbstractMetaData,  **kwargs_)
supermod.MetaDataPropertyType.subclass = MetaDataPropertyTypeSub
# end class MetaDataPropertyTypeSub


class AbstractMetaDataTypeSub(supermod.AbstractMetaDataType):
    def __init__(self, id=None, valueOf_=None, mixedclass_=None, content_=None, extensiontype_=None, **kwargs_):
        super(AbstractMetaDataTypeSub, self).__init__(id, valueOf_, mixedclass_, content_, extensiontype_,  **kwargs_)
supermod.AbstractMetaDataType.subclass = AbstractMetaDataTypeSub
# end class AbstractMetaDataTypeSub


class GenericMetaDataTypeSub(supermod.GenericMetaDataType):
    def __init__(self, id=None, anytypeobjs_=None, valueOf_=None, mixedclass_=None, content_=None, **kwargs_):
        super(GenericMetaDataTypeSub, self).__init__(id, anytypeobjs_, valueOf_, mixedclass_, content_,  **kwargs_)
supermod.GenericMetaDataType.subclass = GenericMetaDataTypeSub
# end class GenericMetaDataTypeSub


class LocationPropertyTypeSub(supermod.LocationPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, AbstractGeometry=None, LocationKeyWord=None, LocationString=None, Null=None, extensiontype_=None, **kwargs_):
        super(LocationPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, AbstractGeometry, LocationKeyWord, LocationString, Null, extensiontype_,  **kwargs_)
supermod.LocationPropertyType.subclass = LocationPropertyTypeSub
# end class LocationPropertyTypeSub


class PriorityLocationPropertyTypeSub(supermod.PriorityLocationPropertyType):
    def __init__(self, type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, AbstractGeometry=None, LocationKeyWord=None, LocationString=None, Null=None, priority=None, **kwargs_):
        super(PriorityLocationPropertyTypeSub, self).__init__(type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, AbstractGeometry, LocationKeyWord, LocationString, Null, priority,  **kwargs_)
supermod.PriorityLocationPropertyType.subclass = PriorityLocationPropertyTypeSub
# end class PriorityLocationPropertyTypeSub


class FeatureArrayPropertyTypeSub(supermod.FeatureArrayPropertyType):
    def __init__(self, AbstractFeature=None, **kwargs_):
        super(FeatureArrayPropertyTypeSub, self).__init__(AbstractFeature,  **kwargs_)
supermod.FeatureArrayPropertyType.subclass = FeatureArrayPropertyTypeSub
# end class FeatureArrayPropertyTypeSub


class BoundedFeatureTypeSub(supermod.BoundedFeatureType):
    def __init__(self, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, boundedBy=None, location=None, **kwargs_):
        super(BoundedFeatureTypeSub, self).__init__(metaDataProperty, description, descriptionReference, identifier, name, boundedBy, location,  **kwargs_)
supermod.BoundedFeatureType.subclass = BoundedFeatureTypeSub
# end class BoundedFeatureTypeSub


class IndirectEntryTypeSub(supermod.IndirectEntryType):
    def __init__(self, DefinitionProxy=None, **kwargs_):
        super(IndirectEntryTypeSub, self).__init__(DefinitionProxy,  **kwargs_)
supermod.IndirectEntryType.subclass = IndirectEntryTypeSub
# end class IndirectEntryTypeSub


class DefinitionProxyTypeSub(supermod.DefinitionProxyType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, definitionRef=None, **kwargs_):
        super(DefinitionProxyTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, definitionRef,  **kwargs_)
supermod.DefinitionProxyType.subclass = DefinitionProxyTypeSub
# end class DefinitionProxyTypeSub


class partieDTTypeSub(supermod.partieDTType):
    def __init__(self, noAffaireDuResponsableDuProjet=None, typeEntite=None, declarationConjointeDTDICT=None, responsableDuProjet=None, representantDuResponsableDeProjet=None, emplacementDuProjet=None, emprise=None, souhaitsPourLeRecepisse=None, projetEtSonCalendrier=None, investigationsComplementaires=None, noConsultationDuTeleservice=None, dateDeLaDeclaration=None, signatureDuResponsableDuProjetOuDeSonRepresentant=None, **kwargs_):
        super(partieDTTypeSub, self).__init__(noAffaireDuResponsableDuProjet, typeEntite, declarationConjointeDTDICT, responsableDuProjet, representantDuResponsableDeProjet, emplacementDuProjet, emprise, souhaitsPourLeRecepisse, projetEtSonCalendrier, investigationsComplementaires, noConsultationDuTeleservice, dateDeLaDeclaration, signatureDuResponsableDuProjetOuDeSonRepresentant,  **kwargs_)
supermod.partieDTType.subclass = partieDTTypeSub
# end class partieDTTypeSub


class emplacementDeLaCommuneConcerneeTypeSub(supermod.emplacementDeLaCommuneConcerneeType):
    def __init__(self, nomDeLaCommune=None, codeCommune=None, codeINSEE=None, **kwargs_):
        super(emplacementDeLaCommuneConcerneeTypeSub, self).__init__(nomDeLaCommune, codeCommune, codeINSEE,  **kwargs_)
supermod.emplacementDeLaCommuneConcerneeType.subclass = emplacementDeLaCommuneConcerneeTypeSub
# end class emplacementDeLaCommuneConcerneeTypeSub


class refLocationTypeSub(supermod.refLocationType):
    def __init__(self, AffinePlacement=None, **kwargs_):
        super(refLocationTypeSub, self).__init__(AffinePlacement,  **kwargs_)
supermod.refLocationType.subclass = refLocationTypeSub
# end class refLocationTypeSub


class rowsTypeSub(supermod.rowsType):
    def __init__(self, Row=None, **kwargs_):
        super(rowsTypeSub, self).__init__(Row,  **kwargs_)
supermod.rowsType.subclass = rowsTypeSub
# end class rowsTypeSub


class RowTypeSub(supermod.RowType):
    def __init__(self, posList=None, pos=None, pointProperty=None, **kwargs_):
        super(RowTypeSub, self).__init__(posList, pos, pointProperty,  **kwargs_)
supermod.RowType.subclass = RowTypeSub
# end class RowTypeSub


class rowsType2Sub(supermod.rowsType2):
    def __init__(self, Row=None, **kwargs_):
        super(rowsType2Sub, self).__init__(Row,  **kwargs_)
supermod.rowsType2.subclass = rowsType2Sub
# end class rowsType2Sub


class RowType3Sub(supermod.RowType3):
    def __init__(self, posList=None, pos=None, pointProperty=None, **kwargs_):
        super(RowType3Sub, self).__init__(posList, pos, pointProperty,  **kwargs_)
supermod.RowType3.subclass = RowType3Sub
# end class RowType3Sub


class controlPointTypeSub(supermod.controlPointType):
    def __init__(self, posList=None, pos=None, pointProperty=None, **kwargs_):
        super(controlPointTypeSub, self).__init__(posList, pos, pointProperty,  **kwargs_)
supermod.controlPointType.subclass = controlPointTypeSub
# end class controlPointTypeSub


class TemporalDatumTypeSub(supermod.TemporalDatumType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, scope=None, origin=None, **kwargs_):
        super(TemporalDatumTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, scope, origin,  **kwargs_)
supermod.TemporalDatumType.subclass = TemporalDatumTypeSub
# end class TemporalDatumTypeSub


class AbstractDQ_Completeness_TypeSub(supermod.AbstractDQ_Completeness_Type):
    def __init__(self, id=None, uuid=None, nameOfMeasure=None, measureIdentification=None, measureDescription=None, evaluationMethodType=None, evaluationMethodDescription=None, evaluationProcedure=None, dateTime=None, result=None, extensiontype_=None, **kwargs_):
        super(AbstractDQ_Completeness_TypeSub, self).__init__(id, uuid, nameOfMeasure, measureIdentification, measureDescription, evaluationMethodType, evaluationMethodDescription, evaluationProcedure, dateTime, result, extensiontype_,  **kwargs_)
supermod.AbstractDQ_Completeness_Type.subclass = AbstractDQ_Completeness_TypeSub
# end class AbstractDQ_Completeness_TypeSub


class AbstractDQ_LogicalConsistency_TypeSub(supermod.AbstractDQ_LogicalConsistency_Type):
    def __init__(self, id=None, uuid=None, nameOfMeasure=None, measureIdentification=None, measureDescription=None, evaluationMethodType=None, evaluationMethodDescription=None, evaluationProcedure=None, dateTime=None, result=None, extensiontype_=None, **kwargs_):
        super(AbstractDQ_LogicalConsistency_TypeSub, self).__init__(id, uuid, nameOfMeasure, measureIdentification, measureDescription, evaluationMethodType, evaluationMethodDescription, evaluationProcedure, dateTime, result, extensiontype_,  **kwargs_)
supermod.AbstractDQ_LogicalConsistency_Type.subclass = AbstractDQ_LogicalConsistency_TypeSub
# end class AbstractDQ_LogicalConsistency_TypeSub


class AbstractDQ_PositionalAccuracy_TypeSub(supermod.AbstractDQ_PositionalAccuracy_Type):
    def __init__(self, id=None, uuid=None, nameOfMeasure=None, measureIdentification=None, measureDescription=None, evaluationMethodType=None, evaluationMethodDescription=None, evaluationProcedure=None, dateTime=None, result=None, extensiontype_=None, **kwargs_):
        super(AbstractDQ_PositionalAccuracy_TypeSub, self).__init__(id, uuid, nameOfMeasure, measureIdentification, measureDescription, evaluationMethodType, evaluationMethodDescription, evaluationProcedure, dateTime, result, extensiontype_,  **kwargs_)
supermod.AbstractDQ_PositionalAccuracy_Type.subclass = AbstractDQ_PositionalAccuracy_TypeSub
# end class AbstractDQ_PositionalAccuracy_TypeSub


class AbstractDQ_ThematicAccuracy_TypeSub(supermod.AbstractDQ_ThematicAccuracy_Type):
    def __init__(self, id=None, uuid=None, nameOfMeasure=None, measureIdentification=None, measureDescription=None, evaluationMethodType=None, evaluationMethodDescription=None, evaluationProcedure=None, dateTime=None, result=None, extensiontype_=None, **kwargs_):
        super(AbstractDQ_ThematicAccuracy_TypeSub, self).__init__(id, uuid, nameOfMeasure, measureIdentification, measureDescription, evaluationMethodType, evaluationMethodDescription, evaluationProcedure, dateTime, result, extensiontype_,  **kwargs_)
supermod.AbstractDQ_ThematicAccuracy_Type.subclass = AbstractDQ_ThematicAccuracy_TypeSub
# end class AbstractDQ_ThematicAccuracy_TypeSub


class AbstractDQ_TemporalAccuracy_TypeSub(supermod.AbstractDQ_TemporalAccuracy_Type):
    def __init__(self, id=None, uuid=None, nameOfMeasure=None, measureIdentification=None, measureDescription=None, evaluationMethodType=None, evaluationMethodDescription=None, evaluationProcedure=None, dateTime=None, result=None, extensiontype_=None, **kwargs_):
        super(AbstractDQ_TemporalAccuracy_TypeSub, self).__init__(id, uuid, nameOfMeasure, measureIdentification, measureDescription, evaluationMethodType, evaluationMethodDescription, evaluationProcedure, dateTime, result, extensiontype_,  **kwargs_)
supermod.AbstractDQ_TemporalAccuracy_Type.subclass = AbstractDQ_TemporalAccuracy_TypeSub
# end class AbstractDQ_TemporalAccuracy_TypeSub


class DQ_CompletenessCommission_TypeSub(supermod.DQ_CompletenessCommission_Type):
    def __init__(self, id=None, uuid=None, nameOfMeasure=None, measureIdentification=None, measureDescription=None, evaluationMethodType=None, evaluationMethodDescription=None, evaluationProcedure=None, dateTime=None, result=None, **kwargs_):
        super(DQ_CompletenessCommission_TypeSub, self).__init__(id, uuid, nameOfMeasure, measureIdentification, measureDescription, evaluationMethodType, evaluationMethodDescription, evaluationProcedure, dateTime, result,  **kwargs_)
supermod.DQ_CompletenessCommission_Type.subclass = DQ_CompletenessCommission_TypeSub
# end class DQ_CompletenessCommission_TypeSub


class DQ_CompletenessOmission_TypeSub(supermod.DQ_CompletenessOmission_Type):
    def __init__(self, id=None, uuid=None, nameOfMeasure=None, measureIdentification=None, measureDescription=None, evaluationMethodType=None, evaluationMethodDescription=None, evaluationProcedure=None, dateTime=None, result=None, **kwargs_):
        super(DQ_CompletenessOmission_TypeSub, self).__init__(id, uuid, nameOfMeasure, measureIdentification, measureDescription, evaluationMethodType, evaluationMethodDescription, evaluationProcedure, dateTime, result,  **kwargs_)
supermod.DQ_CompletenessOmission_Type.subclass = DQ_CompletenessOmission_TypeSub
# end class DQ_CompletenessOmission_TypeSub


class DQ_ConceptualConsistency_TypeSub(supermod.DQ_ConceptualConsistency_Type):
    def __init__(self, id=None, uuid=None, nameOfMeasure=None, measureIdentification=None, measureDescription=None, evaluationMethodType=None, evaluationMethodDescription=None, evaluationProcedure=None, dateTime=None, result=None, **kwargs_):
        super(DQ_ConceptualConsistency_TypeSub, self).__init__(id, uuid, nameOfMeasure, measureIdentification, measureDescription, evaluationMethodType, evaluationMethodDescription, evaluationProcedure, dateTime, result,  **kwargs_)
supermod.DQ_ConceptualConsistency_Type.subclass = DQ_ConceptualConsistency_TypeSub
# end class DQ_ConceptualConsistency_TypeSub


class DQ_DomainConsistency_TypeSub(supermod.DQ_DomainConsistency_Type):
    def __init__(self, id=None, uuid=None, nameOfMeasure=None, measureIdentification=None, measureDescription=None, evaluationMethodType=None, evaluationMethodDescription=None, evaluationProcedure=None, dateTime=None, result=None, **kwargs_):
        super(DQ_DomainConsistency_TypeSub, self).__init__(id, uuid, nameOfMeasure, measureIdentification, measureDescription, evaluationMethodType, evaluationMethodDescription, evaluationProcedure, dateTime, result,  **kwargs_)
supermod.DQ_DomainConsistency_Type.subclass = DQ_DomainConsistency_TypeSub
# end class DQ_DomainConsistency_TypeSub


class DQ_FormatConsistency_TypeSub(supermod.DQ_FormatConsistency_Type):
    def __init__(self, id=None, uuid=None, nameOfMeasure=None, measureIdentification=None, measureDescription=None, evaluationMethodType=None, evaluationMethodDescription=None, evaluationProcedure=None, dateTime=None, result=None, **kwargs_):
        super(DQ_FormatConsistency_TypeSub, self).__init__(id, uuid, nameOfMeasure, measureIdentification, measureDescription, evaluationMethodType, evaluationMethodDescription, evaluationProcedure, dateTime, result,  **kwargs_)
supermod.DQ_FormatConsistency_Type.subclass = DQ_FormatConsistency_TypeSub
# end class DQ_FormatConsistency_TypeSub


class DQ_TopologicalConsistency_TypeSub(supermod.DQ_TopologicalConsistency_Type):
    def __init__(self, id=None, uuid=None, nameOfMeasure=None, measureIdentification=None, measureDescription=None, evaluationMethodType=None, evaluationMethodDescription=None, evaluationProcedure=None, dateTime=None, result=None, **kwargs_):
        super(DQ_TopologicalConsistency_TypeSub, self).__init__(id, uuid, nameOfMeasure, measureIdentification, measureDescription, evaluationMethodType, evaluationMethodDescription, evaluationProcedure, dateTime, result,  **kwargs_)
supermod.DQ_TopologicalConsistency_Type.subclass = DQ_TopologicalConsistency_TypeSub
# end class DQ_TopologicalConsistency_TypeSub


class DQ_AbsoluteExternalPositionalAccuracy_TypeSub(supermod.DQ_AbsoluteExternalPositionalAccuracy_Type):
    def __init__(self, id=None, uuid=None, nameOfMeasure=None, measureIdentification=None, measureDescription=None, evaluationMethodType=None, evaluationMethodDescription=None, evaluationProcedure=None, dateTime=None, result=None, **kwargs_):
        super(DQ_AbsoluteExternalPositionalAccuracy_TypeSub, self).__init__(id, uuid, nameOfMeasure, measureIdentification, measureDescription, evaluationMethodType, evaluationMethodDescription, evaluationProcedure, dateTime, result,  **kwargs_)
supermod.DQ_AbsoluteExternalPositionalAccuracy_Type.subclass = DQ_AbsoluteExternalPositionalAccuracy_TypeSub
# end class DQ_AbsoluteExternalPositionalAccuracy_TypeSub


class DQ_GriddedDataPositionalAccuracy_TypeSub(supermod.DQ_GriddedDataPositionalAccuracy_Type):
    def __init__(self, id=None, uuid=None, nameOfMeasure=None, measureIdentification=None, measureDescription=None, evaluationMethodType=None, evaluationMethodDescription=None, evaluationProcedure=None, dateTime=None, result=None, **kwargs_):
        super(DQ_GriddedDataPositionalAccuracy_TypeSub, self).__init__(id, uuid, nameOfMeasure, measureIdentification, measureDescription, evaluationMethodType, evaluationMethodDescription, evaluationProcedure, dateTime, result,  **kwargs_)
supermod.DQ_GriddedDataPositionalAccuracy_Type.subclass = DQ_GriddedDataPositionalAccuracy_TypeSub
# end class DQ_GriddedDataPositionalAccuracy_TypeSub


class DQ_RelativeInternalPositionalAccuracy_TypeSub(supermod.DQ_RelativeInternalPositionalAccuracy_Type):
    def __init__(self, id=None, uuid=None, nameOfMeasure=None, measureIdentification=None, measureDescription=None, evaluationMethodType=None, evaluationMethodDescription=None, evaluationProcedure=None, dateTime=None, result=None, **kwargs_):
        super(DQ_RelativeInternalPositionalAccuracy_TypeSub, self).__init__(id, uuid, nameOfMeasure, measureIdentification, measureDescription, evaluationMethodType, evaluationMethodDescription, evaluationProcedure, dateTime, result,  **kwargs_)
supermod.DQ_RelativeInternalPositionalAccuracy_Type.subclass = DQ_RelativeInternalPositionalAccuracy_TypeSub
# end class DQ_RelativeInternalPositionalAccuracy_TypeSub


class DQ_ThematicClassificationCorrectness_TypeSub(supermod.DQ_ThematicClassificationCorrectness_Type):
    def __init__(self, id=None, uuid=None, nameOfMeasure=None, measureIdentification=None, measureDescription=None, evaluationMethodType=None, evaluationMethodDescription=None, evaluationProcedure=None, dateTime=None, result=None, **kwargs_):
        super(DQ_ThematicClassificationCorrectness_TypeSub, self).__init__(id, uuid, nameOfMeasure, measureIdentification, measureDescription, evaluationMethodType, evaluationMethodDescription, evaluationProcedure, dateTime, result,  **kwargs_)
supermod.DQ_ThematicClassificationCorrectness_Type.subclass = DQ_ThematicClassificationCorrectness_TypeSub
# end class DQ_ThematicClassificationCorrectness_TypeSub


class DQ_NonQuantitativeAttributeAccuracy_TypeSub(supermod.DQ_NonQuantitativeAttributeAccuracy_Type):
    def __init__(self, id=None, uuid=None, nameOfMeasure=None, measureIdentification=None, measureDescription=None, evaluationMethodType=None, evaluationMethodDescription=None, evaluationProcedure=None, dateTime=None, result=None, **kwargs_):
        super(DQ_NonQuantitativeAttributeAccuracy_TypeSub, self).__init__(id, uuid, nameOfMeasure, measureIdentification, measureDescription, evaluationMethodType, evaluationMethodDescription, evaluationProcedure, dateTime, result,  **kwargs_)
supermod.DQ_NonQuantitativeAttributeAccuracy_Type.subclass = DQ_NonQuantitativeAttributeAccuracy_TypeSub
# end class DQ_NonQuantitativeAttributeAccuracy_TypeSub


class DQ_QuantitativeAttributeAccuracy_TypeSub(supermod.DQ_QuantitativeAttributeAccuracy_Type):
    def __init__(self, id=None, uuid=None, nameOfMeasure=None, measureIdentification=None, measureDescription=None, evaluationMethodType=None, evaluationMethodDescription=None, evaluationProcedure=None, dateTime=None, result=None, **kwargs_):
        super(DQ_QuantitativeAttributeAccuracy_TypeSub, self).__init__(id, uuid, nameOfMeasure, measureIdentification, measureDescription, evaluationMethodType, evaluationMethodDescription, evaluationProcedure, dateTime, result,  **kwargs_)
supermod.DQ_QuantitativeAttributeAccuracy_Type.subclass = DQ_QuantitativeAttributeAccuracy_TypeSub
# end class DQ_QuantitativeAttributeAccuracy_TypeSub


class DQ_AccuracyOfATimeMeasurement_TypeSub(supermod.DQ_AccuracyOfATimeMeasurement_Type):
    def __init__(self, id=None, uuid=None, nameOfMeasure=None, measureIdentification=None, measureDescription=None, evaluationMethodType=None, evaluationMethodDescription=None, evaluationProcedure=None, dateTime=None, result=None, **kwargs_):
        super(DQ_AccuracyOfATimeMeasurement_TypeSub, self).__init__(id, uuid, nameOfMeasure, measureIdentification, measureDescription, evaluationMethodType, evaluationMethodDescription, evaluationProcedure, dateTime, result,  **kwargs_)
supermod.DQ_AccuracyOfATimeMeasurement_Type.subclass = DQ_AccuracyOfATimeMeasurement_TypeSub
# end class DQ_AccuracyOfATimeMeasurement_TypeSub


class DQ_TemporalConsistency_TypeSub(supermod.DQ_TemporalConsistency_Type):
    def __init__(self, id=None, uuid=None, nameOfMeasure=None, measureIdentification=None, measureDescription=None, evaluationMethodType=None, evaluationMethodDescription=None, evaluationProcedure=None, dateTime=None, result=None, **kwargs_):
        super(DQ_TemporalConsistency_TypeSub, self).__init__(id, uuid, nameOfMeasure, measureIdentification, measureDescription, evaluationMethodType, evaluationMethodDescription, evaluationProcedure, dateTime, result,  **kwargs_)
supermod.DQ_TemporalConsistency_Type.subclass = DQ_TemporalConsistency_TypeSub
# end class DQ_TemporalConsistency_TypeSub


class DQ_TemporalValidity_TypeSub(supermod.DQ_TemporalValidity_Type):
    def __init__(self, id=None, uuid=None, nameOfMeasure=None, measureIdentification=None, measureDescription=None, evaluationMethodType=None, evaluationMethodDescription=None, evaluationProcedure=None, dateTime=None, result=None, **kwargs_):
        super(DQ_TemporalValidity_TypeSub, self).__init__(id, uuid, nameOfMeasure, measureIdentification, measureDescription, evaluationMethodType, evaluationMethodDescription, evaluationProcedure, dateTime, result,  **kwargs_)
supermod.DQ_TemporalValidity_Type.subclass = DQ_TemporalValidity_TypeSub
# end class DQ_TemporalValidity_TypeSub


class DQ_QuantitativeResult_TypeSub(supermod.DQ_QuantitativeResult_Type):
    def __init__(self, id=None, uuid=None, valueType=None, valueUnit=None, errorStatistic=None, value=None, **kwargs_):
        super(DQ_QuantitativeResult_TypeSub, self).__init__(id, uuid, valueType, valueUnit, errorStatistic, value,  **kwargs_)
supermod.DQ_QuantitativeResult_Type.subclass = DQ_QuantitativeResult_TypeSub
# end class DQ_QuantitativeResult_TypeSub


class DQ_ConformanceResult_TypeSub(supermod.DQ_ConformanceResult_Type):
    def __init__(self, id=None, uuid=None, specification=None, explanation=None, pass_=None, **kwargs_):
        super(DQ_ConformanceResult_TypeSub, self).__init__(id, uuid, specification, explanation, pass_,  **kwargs_)
supermod.DQ_ConformanceResult_Type.subclass = DQ_ConformanceResult_TypeSub
# end class DQ_ConformanceResult_TypeSub


class MD_CoverageDescription_TypeSub(supermod.MD_CoverageDescription_Type):
    def __init__(self, id=None, uuid=None, attributeDescription=None, contentType=None, dimension=None, extensiontype_=None, **kwargs_):
        super(MD_CoverageDescription_TypeSub, self).__init__(id, uuid, attributeDescription, contentType, dimension, extensiontype_,  **kwargs_)
supermod.MD_CoverageDescription_Type.subclass = MD_CoverageDescription_TypeSub
# end class MD_CoverageDescription_TypeSub


class MD_FeatureCatalogueDescription_TypeSub(supermod.MD_FeatureCatalogueDescription_Type):
    def __init__(self, id=None, uuid=None, complianceCode=None, language=None, includedWithDataset=None, featureTypes=None, featureCatalogueCitation=None, **kwargs_):
        super(MD_FeatureCatalogueDescription_TypeSub, self).__init__(id, uuid, complianceCode, language, includedWithDataset, featureTypes, featureCatalogueCitation,  **kwargs_)
supermod.MD_FeatureCatalogueDescription_Type.subclass = MD_FeatureCatalogueDescription_TypeSub
# end class MD_FeatureCatalogueDescription_TypeSub


class MultiplicityRange_TypeSub(supermod.MultiplicityRange_Type):
    def __init__(self, id=None, uuid=None, lower=None, upper=None, **kwargs_):
        super(MultiplicityRange_TypeSub, self).__init__(id, uuid, lower, upper,  **kwargs_)
supermod.MultiplicityRange_Type.subclass = MultiplicityRange_TypeSub
# end class MultiplicityRange_TypeSub


class Multiplicity_TypeSub(supermod.Multiplicity_Type):
    def __init__(self, id=None, uuid=None, range=None, **kwargs_):
        super(Multiplicity_TypeSub, self).__init__(id, uuid, range,  **kwargs_)
supermod.Multiplicity_Type.subclass = Multiplicity_TypeSub
# end class Multiplicity_TypeSub


class MemberName_TypeSub(supermod.MemberName_Type):
    def __init__(self, id=None, uuid=None, aName=None, attributeType=None, **kwargs_):
        super(MemberName_TypeSub, self).__init__(id, uuid, aName, attributeType,  **kwargs_)
supermod.MemberName_Type.subclass = MemberName_TypeSub
# end class MemberName_TypeSub


class TypeName_TypeSub(supermod.TypeName_Type):
    def __init__(self, id=None, uuid=None, aName=None, **kwargs_):
        super(TypeName_TypeSub, self).__init__(id, uuid, aName,  **kwargs_)
supermod.TypeName_Type.subclass = TypeName_TypeSub
# end class TypeName_TypeSub


class AbstractEX_GeographicExtent_TypeSub(supermod.AbstractEX_GeographicExtent_Type):
    def __init__(self, id=None, uuid=None, extentTypeCode=None, extensiontype_=None, **kwargs_):
        super(AbstractEX_GeographicExtent_TypeSub, self).__init__(id, uuid, extentTypeCode, extensiontype_,  **kwargs_)
supermod.AbstractEX_GeographicExtent_Type.subclass = AbstractEX_GeographicExtent_TypeSub
# end class AbstractEX_GeographicExtent_TypeSub


class EX_Extent_TypeSub(supermod.EX_Extent_Type):
    def __init__(self, id=None, uuid=None, description=None, geographicElement=None, temporalElement=None, verticalElement=None, **kwargs_):
        super(EX_Extent_TypeSub, self).__init__(id, uuid, description, geographicElement, temporalElement, verticalElement,  **kwargs_)
supermod.EX_Extent_Type.subclass = EX_Extent_TypeSub
# end class EX_Extent_TypeSub


class EX_BoundingPolygon_TypeSub(supermod.EX_BoundingPolygon_Type):
    def __init__(self, id=None, uuid=None, extentTypeCode=None, polygon=None, **kwargs_):
        super(EX_BoundingPolygon_TypeSub, self).__init__(id, uuid, extentTypeCode, polygon,  **kwargs_)
supermod.EX_BoundingPolygon_Type.subclass = EX_BoundingPolygon_TypeSub
# end class EX_BoundingPolygon_TypeSub


class EX_VerticalExtent_TypeSub(supermod.EX_VerticalExtent_Type):
    def __init__(self, id=None, uuid=None, minimumValue=None, maximumValue=None, verticalCRS=None, **kwargs_):
        super(EX_VerticalExtent_TypeSub, self).__init__(id, uuid, minimumValue, maximumValue, verticalCRS,  **kwargs_)
supermod.EX_VerticalExtent_Type.subclass = EX_VerticalExtent_TypeSub
# end class EX_VerticalExtent_TypeSub


class EX_TemporalExtent_TypeSub(supermod.EX_TemporalExtent_Type):
    def __init__(self, id=None, uuid=None, extent=None, extensiontype_=None, **kwargs_):
        super(EX_TemporalExtent_TypeSub, self).__init__(id, uuid, extent, extensiontype_,  **kwargs_)
supermod.EX_TemporalExtent_Type.subclass = EX_TemporalExtent_TypeSub
# end class EX_TemporalExtent_TypeSub


class AbstractRS_ReferenceSystem_TypeSub(supermod.AbstractRS_ReferenceSystem_Type):
    def __init__(self, id=None, uuid=None, name=None, domainOfValidity=None, **kwargs_):
        super(AbstractRS_ReferenceSystem_TypeSub, self).__init__(id, uuid, name, domainOfValidity,  **kwargs_)
supermod.AbstractRS_ReferenceSystem_Type.subclass = AbstractRS_ReferenceSystem_TypeSub
# end class AbstractRS_ReferenceSystem_TypeSub


class MD_Identifier_TypeSub(supermod.MD_Identifier_Type):
    def __init__(self, id=None, uuid=None, authority=None, code=None, extensiontype_=None, **kwargs_):
        super(MD_Identifier_TypeSub, self).__init__(id, uuid, authority, code, extensiontype_,  **kwargs_)
supermod.MD_Identifier_Type.subclass = MD_Identifier_TypeSub
# end class MD_Identifier_TypeSub


class MD_ReferenceSystem_TypeSub(supermod.MD_ReferenceSystem_Type):
    def __init__(self, id=None, uuid=None, referenceSystemIdentifier=None, **kwargs_):
        super(MD_ReferenceSystem_TypeSub, self).__init__(id, uuid, referenceSystemIdentifier,  **kwargs_)
supermod.MD_ReferenceSystem_Type.subclass = MD_ReferenceSystem_TypeSub
# end class MD_ReferenceSystem_TypeSub


class RS_Identifier_TypeSub(supermod.RS_Identifier_Type):
    def __init__(self, id=None, uuid=None, authority=None, code=None, codeSpace=None, version=None, **kwargs_):
        super(RS_Identifier_TypeSub, self).__init__(id, uuid, authority, code, codeSpace, version,  **kwargs_)
supermod.RS_Identifier_Type.subclass = RS_Identifier_TypeSub
# end class RS_Identifier_TypeSub


class CI_Series_TypeSub(supermod.CI_Series_Type):
    def __init__(self, id=None, uuid=None, name=None, issueIdentification=None, page=None, **kwargs_):
        super(CI_Series_TypeSub, self).__init__(id, uuid, name, issueIdentification, page,  **kwargs_)
supermod.CI_Series_Type.subclass = CI_Series_TypeSub
# end class CI_Series_TypeSub


class CI_Date_TypeSub(supermod.CI_Date_Type):
    def __init__(self, id=None, uuid=None, date=None, dateType=None, **kwargs_):
        super(CI_Date_TypeSub, self).__init__(id, uuid, date, dateType,  **kwargs_)
supermod.CI_Date_Type.subclass = CI_Date_TypeSub
# end class CI_Date_TypeSub


class CI_Telephone_TypeSub(supermod.CI_Telephone_Type):
    def __init__(self, id=None, uuid=None, voice=None, facsimile=None, **kwargs_):
        super(CI_Telephone_TypeSub, self).__init__(id, uuid, voice, facsimile,  **kwargs_)
supermod.CI_Telephone_Type.subclass = CI_Telephone_TypeSub
# end class CI_Telephone_TypeSub


class CI_Contact_TypeSub(supermod.CI_Contact_Type):
    def __init__(self, id=None, uuid=None, phone=None, address=None, onlineResource=None, hoursOfService=None, contactInstructions=None, **kwargs_):
        super(CI_Contact_TypeSub, self).__init__(id, uuid, phone, address, onlineResource, hoursOfService, contactInstructions,  **kwargs_)
supermod.CI_Contact_Type.subclass = CI_Contact_TypeSub
# end class CI_Contact_TypeSub


class CI_OnlineResource_TypeSub(supermod.CI_OnlineResource_Type):
    def __init__(self, id=None, uuid=None, linkage=None, protocol=None, applicationProfile=None, name=None, description=None, function=None, **kwargs_):
        super(CI_OnlineResource_TypeSub, self).__init__(id, uuid, linkage, protocol, applicationProfile, name, description, function,  **kwargs_)
supermod.CI_OnlineResource_Type.subclass = CI_OnlineResource_TypeSub
# end class CI_OnlineResource_TypeSub


class CI_Address_TypeSub(supermod.CI_Address_Type):
    def __init__(self, id=None, uuid=None, deliveryPoint=None, city=None, administrativeArea=None, postalCode=None, country=None, electronicMailAddress=None, **kwargs_):
        super(CI_Address_TypeSub, self).__init__(id, uuid, deliveryPoint, city, administrativeArea, postalCode, country, electronicMailAddress,  **kwargs_)
supermod.CI_Address_Type.subclass = CI_Address_TypeSub
# end class CI_Address_TypeSub


class CI_Citation_TypeSub(supermod.CI_Citation_Type):
    def __init__(self, id=None, uuid=None, title=None, alternateTitle=None, date=None, edition=None, editionDate=None, identifier=None, citedResponsibleParty=None, presentationForm=None, series=None, otherCitationDetails=None, collectiveTitle=None, ISBN=None, ISSN=None, **kwargs_):
        super(CI_Citation_TypeSub, self).__init__(id, uuid, title, alternateTitle, date, edition, editionDate, identifier, citedResponsibleParty, presentationForm, series, otherCitationDetails, collectiveTitle, ISBN, ISSN,  **kwargs_)
supermod.CI_Citation_Type.subclass = CI_Citation_TypeSub
# end class CI_Citation_TypeSub


class CI_ResponsibleParty_TypeSub(supermod.CI_ResponsibleParty_Type):
    def __init__(self, id=None, uuid=None, individualName=None, organisationName=None, positionName=None, contactInfo=None, role=None, **kwargs_):
        super(CI_ResponsibleParty_TypeSub, self).__init__(id, uuid, individualName, organisationName, positionName, contactInfo, role,  **kwargs_)
supermod.CI_ResponsibleParty_Type.subclass = CI_ResponsibleParty_TypeSub
# end class CI_ResponsibleParty_TypeSub


class MD_GeometricObjects_TypeSub(supermod.MD_GeometricObjects_Type):
    def __init__(self, id=None, uuid=None, geometricObjectType=None, geometricObjectCount=None, **kwargs_):
        super(MD_GeometricObjects_TypeSub, self).__init__(id, uuid, geometricObjectType, geometricObjectCount,  **kwargs_)
supermod.MD_GeometricObjects_Type.subclass = MD_GeometricObjects_TypeSub
# end class MD_GeometricObjects_TypeSub


class MD_Dimension_TypeSub(supermod.MD_Dimension_Type):
    def __init__(self, id=None, uuid=None, dimensionName=None, dimensionSize=None, resolution=None, **kwargs_):
        super(MD_Dimension_TypeSub, self).__init__(id, uuid, dimensionName, dimensionSize, resolution,  **kwargs_)
supermod.MD_Dimension_Type.subclass = MD_Dimension_TypeSub
# end class MD_Dimension_TypeSub


class AbstractMD_SpatialRepresentation_TypeSub(supermod.AbstractMD_SpatialRepresentation_Type):
    def __init__(self, id=None, uuid=None, extensiontype_=None, **kwargs_):
        super(AbstractMD_SpatialRepresentation_TypeSub, self).__init__(id, uuid, extensiontype_,  **kwargs_)
supermod.AbstractMD_SpatialRepresentation_Type.subclass = AbstractMD_SpatialRepresentation_TypeSub
# end class AbstractMD_SpatialRepresentation_TypeSub


class MD_VectorSpatialRepresentation_TypeSub(supermod.MD_VectorSpatialRepresentation_Type):
    def __init__(self, id=None, uuid=None, topologyLevel=None, geometricObjects=None, **kwargs_):
        super(MD_VectorSpatialRepresentation_TypeSub, self).__init__(id, uuid, topologyLevel, geometricObjects,  **kwargs_)
supermod.MD_VectorSpatialRepresentation_Type.subclass = MD_VectorSpatialRepresentation_TypeSub
# end class MD_VectorSpatialRepresentation_TypeSub


class MD_GridSpatialRepresentation_TypeSub(supermod.MD_GridSpatialRepresentation_Type):
    def __init__(self, id=None, uuid=None, numberOfDimensions=None, axisDimensionProperties=None, cellGeometry=None, transformationParameterAvailability=None, extensiontype_=None, **kwargs_):
        super(MD_GridSpatialRepresentation_TypeSub, self).__init__(id, uuid, numberOfDimensions, axisDimensionProperties, cellGeometry, transformationParameterAvailability, extensiontype_,  **kwargs_)
supermod.MD_GridSpatialRepresentation_Type.subclass = MD_GridSpatialRepresentation_TypeSub
# end class MD_GridSpatialRepresentation_TypeSub


class MD_Metadata_TypeSub(supermod.MD_Metadata_Type):
    def __init__(self, id=None, uuid=None, fileIdentifier=None, language=None, characterSet=None, parentIdentifier=None, hierarchyLevel=None, hierarchyLevelName=None, contact=None, dateStamp=None, metadataStandardName=None, metadataStandardVersion=None, dataSetURI=None, locale=None, spatialRepresentationInfo=None, referenceSystemInfo=None, metadataExtensionInfo=None, identificationInfo=None, contentInfo=None, distributionInfo=None, dataQualityInfo=None, portrayalCatalogueInfo=None, metadataConstraints=None, applicationSchemaInfo=None, metadataMaintenance=None, series=None, describes=None, propertyType=None, featureType=None, featureAttribute=None, **kwargs_):
        super(MD_Metadata_TypeSub, self).__init__(id, uuid, fileIdentifier, language, characterSet, parentIdentifier, hierarchyLevel, hierarchyLevelName, contact, dateStamp, metadataStandardName, metadataStandardVersion, dataSetURI, locale, spatialRepresentationInfo, referenceSystemInfo, metadataExtensionInfo, identificationInfo, contentInfo, distributionInfo, dataQualityInfo, portrayalCatalogueInfo, metadataConstraints, applicationSchemaInfo, metadataMaintenance, series, describes, propertyType, featureType, featureAttribute,  **kwargs_)
supermod.MD_Metadata_Type.subclass = MD_Metadata_TypeSub
# end class MD_Metadata_TypeSub


class DS_DataSet_TypeSub(supermod.DS_DataSet_Type):
    def __init__(self, id=None, uuid=None, has=None, partOf=None, **kwargs_):
        super(DS_DataSet_TypeSub, self).__init__(id, uuid, has, partOf,  **kwargs_)
supermod.DS_DataSet_Type.subclass = DS_DataSet_TypeSub
# end class DS_DataSet_TypeSub


class AbstractDS_Aggregate_TypeSub(supermod.AbstractDS_Aggregate_Type):
    def __init__(self, id=None, uuid=None, composedOf=None, seriesMetadata=None, subset=None, superset=None, extensiontype_=None, **kwargs_):
        super(AbstractDS_Aggregate_TypeSub, self).__init__(id, uuid, composedOf, seriesMetadata, subset, superset, extensiontype_,  **kwargs_)
supermod.AbstractDS_Aggregate_Type.subclass = AbstractDS_Aggregate_TypeSub
# end class AbstractDS_Aggregate_TypeSub


class AbstractCoordinateSystemTypeSub(supermod.AbstractCoordinateSystemType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, aggregationType=None, axis=None, extensiontype_=None, **kwargs_):
        super(AbstractCoordinateSystemTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, aggregationType, axis, extensiontype_,  **kwargs_)
supermod.AbstractCoordinateSystemType.subclass = AbstractCoordinateSystemTypeSub
# end class AbstractCoordinateSystemTypeSub


class CoordinateSystemAxisTypeSub(supermod.CoordinateSystemAxisType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, uom=None, axisAbbrev=None, axisDirection=None, minimumValue=None, maximumValue=None, rangeMeaning=None, **kwargs_):
        super(CoordinateSystemAxisTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, uom, axisAbbrev, axisDirection, minimumValue, maximumValue, rangeMeaning,  **kwargs_)
supermod.CoordinateSystemAxisType.subclass = CoordinateSystemAxisTypeSub
# end class CoordinateSystemAxisTypeSub


class TemporalCRSTypeSub(supermod.TemporalCRSType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, scope=None, timeCS=None, usesTemporalCS=None, temporalDatum=None, **kwargs_):
        super(TemporalCRSTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, scope, timeCS, usesTemporalCS, temporalDatum,  **kwargs_)
supermod.TemporalCRSType.subclass = TemporalCRSTypeSub
# end class TemporalCRSTypeSub


class ImageCRSTypeSub(supermod.ImageCRSType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, scope=None, cartesianCS=None, affineCS=None, usesObliqueCartesianCS=None, imageDatum=None, **kwargs_):
        super(ImageCRSTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, scope, cartesianCS, affineCS, usesObliqueCartesianCS, imageDatum,  **kwargs_)
supermod.ImageCRSType.subclass = ImageCRSTypeSub
# end class ImageCRSTypeSub


class EngineeringCRSTypeSub(supermod.EngineeringCRSType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, scope=None, affineCS=None, cartesianCS=None, cylindricalCS=None, linearCS=None, polarCS=None, sphericalCS=None, userDefinedCS=None, coordinateSystem=None, engineeringDatum=None, **kwargs_):
        super(EngineeringCRSTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, scope, affineCS, cartesianCS, cylindricalCS, linearCS, polarCS, sphericalCS, userDefinedCS, coordinateSystem, engineeringDatum,  **kwargs_)
supermod.EngineeringCRSType.subclass = EngineeringCRSTypeSub
# end class EngineeringCRSTypeSub


class VerticalCRSTypeSub(supermod.VerticalCRSType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, scope=None, verticalCS=None, verticalDatum=None, **kwargs_):
        super(VerticalCRSTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, scope, verticalCS, verticalDatum,  **kwargs_)
supermod.VerticalCRSType.subclass = VerticalCRSTypeSub
# end class VerticalCRSTypeSub


class GeodeticCRSTypeSub(supermod.GeodeticCRSType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, scope=None, ellipsoidalCS=None, cartesianCS=None, sphericalCS=None, geodeticDatum=None, **kwargs_):
        super(GeodeticCRSTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, scope, ellipsoidalCS, cartesianCS, sphericalCS, geodeticDatum,  **kwargs_)
supermod.GeodeticCRSType.subclass = GeodeticCRSTypeSub
# end class GeodeticCRSTypeSub


class CompoundCRSTypeSub(supermod.CompoundCRSType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, scope=None, aggregationType=None, componentReferenceSystem=None, **kwargs_):
        super(CompoundCRSTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, scope, aggregationType, componentReferenceSystem,  **kwargs_)
supermod.CompoundCRSType.subclass = CompoundCRSTypeSub
# end class CompoundCRSTypeSub


class AbstractGeneralDerivedCRSTypeSub(supermod.AbstractGeneralDerivedCRSType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, scope=None, conversion=None, extensiontype_=None, **kwargs_):
        super(AbstractGeneralDerivedCRSTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, scope, conversion, extensiontype_,  **kwargs_)
supermod.AbstractGeneralDerivedCRSType.subclass = AbstractGeneralDerivedCRSTypeSub
# end class AbstractGeneralDerivedCRSTypeSub


class DictionaryEntryTypeSub(supermod.DictionaryEntryType):
    def __init__(self, owns='false', type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, Definition=None, **kwargs_):
        super(DictionaryEntryTypeSub, self).__init__(owns, type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, Definition,  **kwargs_)
supermod.DictionaryEntryType.subclass = DictionaryEntryTypeSub
# end class DictionaryEntryTypeSub


class UnitDefinitionTypeSub(supermod.UnitDefinitionType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, quantityType=None, quantityTypeReference=None, catalogSymbol=None, extensiontype_=None, **kwargs_):
        super(UnitDefinitionTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, quantityType, quantityTypeReference, catalogSymbol, extensiontype_,  **kwargs_)
supermod.UnitDefinitionType.subclass = UnitDefinitionTypeSub
# end class UnitDefinitionTypeSub


class AngleTypeSub(supermod.AngleType):
    def __init__(self, uom=None, valueOf_=None, **kwargs_):
        super(AngleTypeSub, self).__init__(uom, valueOf_,  **kwargs_)
supermod.AngleType.subclass = AngleTypeSub
# end class AngleTypeSub


class SpeedTypeSub(supermod.SpeedType):
    def __init__(self, uom=None, valueOf_=None, **kwargs_):
        super(SpeedTypeSub, self).__init__(uom, valueOf_,  **kwargs_)
supermod.SpeedType.subclass = SpeedTypeSub
# end class SpeedTypeSub


class VolumeTypeSub(supermod.VolumeType):
    def __init__(self, uom=None, valueOf_=None, **kwargs_):
        super(VolumeTypeSub, self).__init__(uom, valueOf_,  **kwargs_)
supermod.VolumeType.subclass = VolumeTypeSub
# end class VolumeTypeSub


class AreaTypeSub(supermod.AreaType):
    def __init__(self, uom=None, valueOf_=None, **kwargs_):
        super(AreaTypeSub, self).__init__(uom, valueOf_,  **kwargs_)
supermod.AreaType.subclass = AreaTypeSub
# end class AreaTypeSub


class GridLengthTypeSub(supermod.GridLengthType):
    def __init__(self, uom=None, valueOf_=None, **kwargs_):
        super(GridLengthTypeSub, self).__init__(uom, valueOf_,  **kwargs_)
supermod.GridLengthType.subclass = GridLengthTypeSub
# end class GridLengthTypeSub


class TimeTypeSub(supermod.TimeType):
    def __init__(self, uom=None, valueOf_=None, **kwargs_):
        super(TimeTypeSub, self).__init__(uom, valueOf_,  **kwargs_)
supermod.TimeType.subclass = TimeTypeSub
# end class TimeTypeSub


class ScaleTypeSub(supermod.ScaleType):
    def __init__(self, uom=None, valueOf_=None, **kwargs_):
        super(ScaleTypeSub, self).__init__(uom, valueOf_,  **kwargs_)
supermod.ScaleType.subclass = ScaleTypeSub
# end class ScaleTypeSub


class LengthTypeSub(supermod.LengthType):
    def __init__(self, uom=None, valueOf_=None, **kwargs_):
        super(LengthTypeSub, self).__init__(uom, valueOf_,  **kwargs_)
supermod.LengthType.subclass = LengthTypeSub
# end class LengthTypeSub


class AbstractGeometryTypeSub(supermod.AbstractGeometryType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, extensiontype_=None, **kwargs_):
        super(AbstractGeometryTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, srsName, srsDimension, axisLabels, uomLabels, extensiontype_,  **kwargs_)
supermod.AbstractGeometryType.subclass = AbstractGeometryTypeSub
# end class AbstractGeometryTypeSub


class AbstractGeometricAggregateTypeSub(supermod.AbstractGeometricAggregateType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, aggregationType=None, extensiontype_=None, **kwargs_):
        super(AbstractGeometricAggregateTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, srsName, srsDimension, axisLabels, uomLabels, aggregationType, extensiontype_,  **kwargs_)
supermod.AbstractGeometricAggregateType.subclass = AbstractGeometricAggregateTypeSub
# end class AbstractGeometricAggregateTypeSub


class EnvelopeWithTimePeriodTypeSub(supermod.EnvelopeWithTimePeriodType):
    def __init__(self, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, lowerCorner=None, upperCorner=None, pos=None, coordinates=None, frame='#ISO-8601', beginPosition=None, endPosition=None, **kwargs_):
        super(EnvelopeWithTimePeriodTypeSub, self).__init__(srsName, srsDimension, axisLabels, uomLabels, lowerCorner, upperCorner, pos, coordinates, frame, beginPosition, endPosition,  **kwargs_)
supermod.EnvelopeWithTimePeriodType.subclass = EnvelopeWithTimePeriodTypeSub
# end class EnvelopeWithTimePeriodTypeSub


class AbstractFeatureTypeSub(supermod.AbstractFeatureType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, boundedBy=None, location=None, extensiontype_=None, **kwargs_):
        super(AbstractFeatureTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, boundedBy, location, extensiontype_,  **kwargs_)
supermod.AbstractFeatureType.subclass = AbstractFeatureTypeSub
# end class AbstractFeatureTypeSub


class AbstractTimeSliceTypeSub(supermod.AbstractTimeSliceType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, validTime=None, dataSource=None, extensiontype_=None, **kwargs_):
        super(AbstractTimeSliceTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, validTime, dataSource, extensiontype_,  **kwargs_)
supermod.AbstractTimeSliceType.subclass = AbstractTimeSliceTypeSub
# end class AbstractTimeSliceTypeSub


class DynamicFeatureMemberTypeSub(supermod.DynamicFeatureMemberType):
    def __init__(self, owns='false', type_='simple', href=None, role=None, arcrole=None, title=None, show=None, actuate=None, nilReason=None, remoteSchema=None, DynamicFeature=None, **kwargs_):
        super(DynamicFeatureMemberTypeSub, self).__init__(owns, type_, href, role, arcrole, title, show, actuate, nilReason, remoteSchema, DynamicFeature,  **kwargs_)
supermod.DynamicFeatureMemberType.subclass = DynamicFeatureMemberTypeSub
# end class DynamicFeatureMemberTypeSub


class DynamicFeatureTypeSub(supermod.DynamicFeatureType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, boundedBy=None, location=None, validTime=None, history=None, dataSource=None, dataSourceReference=None, extensiontype_=None, **kwargs_):
        super(DynamicFeatureTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, boundedBy, location, validTime, history, dataSource, dataSourceReference, extensiontype_,  **kwargs_)
supermod.DynamicFeatureType.subclass = DynamicFeatureTypeSub
# end class DynamicFeatureTypeSub


class informationsATUSub(supermod.informationsATU):
    def __init__(self, justificationDeLUrgence=None, personneOrdonnantLesTravauxUrgents=None, emprise=None, entrepriseChargeeDeLExecutionDesTravaux=None, travauxEmplacementDureeDescription=None, nomDuSignataire=None, noConsultationDuTeleservice=None, date=None, **kwargs_):
        super(informationsATUSub, self).__init__(justificationDeLUrgence, personneOrdonnantLesTravauxUrgents, emprise, entrepriseChargeeDeLExecutionDesTravaux, travauxEmplacementDureeDescription, nomDuSignataire, noConsultationDuTeleservice, date,  **kwargs_)
supermod.informationsATU.subclass = informationsATUSub
# end class informationsATUSub


class informationsDtDictConjointesSub(supermod.informationsDtDictConjointes):
    def __init__(self, nomDuSignataire=None, nombrePagesJointes=None, noConsultationDuTeleservice=None, dateDeLaDeclaration=None, partieDT=None, partieDICT=None, **kwargs_):
        super(informationsDtDictConjointesSub, self).__init__(nomDuSignataire, nombrePagesJointes, noConsultationDuTeleservice, dateDeLaDeclaration, partieDT, partieDICT,  **kwargs_)
supermod.informationsDtDictConjointes.subclass = informationsDtDictConjointesSub
# end class informationsDtDictConjointesSub


class informationsPartieDICTSub(supermod.informationsPartieDICT):
    def __init__(self, noAffaireDeLexecutantDesTravaux=None, natureDeLaDeclaration=None, executantDesTravaux=None, emplacementDesTravaux=None, emprise=None, souhaitsPourLeRecepisse=None, travauxEtLeurCalendrier=None, signatureDeLExecutantDesTravauxOuDeSonRepresentant=None, noConsultationDuTeleservice=None, dateDeLaDeclaration=None, **kwargs_):
        super(informationsPartieDICTSub, self).__init__(noAffaireDeLexecutantDesTravaux, natureDeLaDeclaration, executantDesTravaux, emplacementDesTravaux, emprise, souhaitsPourLeRecepisse, travauxEtLeurCalendrier, signatureDeLExecutantDesTravauxOuDeSonRepresentant, noConsultationDuTeleservice, dateDeLaDeclaration,  **kwargs_)
supermod.informationsPartieDICT.subclass = informationsPartieDICTSub
# end class informationsPartieDICTSub


class informationsDICTSub(supermod.informationsDICT):
    def __init__(self, noAffaireDeLexecutantDesTravaux=None, natureDeLaDeclaration=None, executantDesTravaux=None, emplacementDesTravaux=None, emprise=None, souhaitsPourLeRecepisse=None, travauxEtLeurCalendrier=None, signatureDeLExecutantDesTravauxOuDeSonRepresentant=None, noConsultationDuTeleservice=None, dateDeLaDeclaration=None, DtLiee=None, **kwargs_):
        super(informationsDICTSub, self).__init__(noAffaireDeLexecutantDesTravaux, natureDeLaDeclaration, executantDesTravaux, emplacementDesTravaux, emprise, souhaitsPourLeRecepisse, travauxEtLeurCalendrier, signatureDeLExecutantDesTravauxOuDeSonRepresentant, noConsultationDuTeleservice, dateDeLaDeclaration, DtLiee,  **kwargs_)
supermod.informationsDICT.subclass = informationsDICTSub
# end class informationsDICTSub


class informationsDTSub(supermod.informationsDT):
    def __init__(self, noAffaireDuResponsableDuProjet=None, typeEntite=None, declarationConjointeDTDICT=None, responsableDuProjet=None, representantDuResponsableDeProjet=None, emplacementDuProjet=None, emprise=None, souhaitsPourLeRecepisse=None, projetEtSonCalendrier=None, investigationsComplementaires=None, signatureDuResponsableDuProjetOuDeSonRepresentant=None, noConsultationDuTeleserviceSeize=None, noConsultationDuTeleservice=None, dateDeLaDeclaration=None, **kwargs_):
        super(informationsDTSub, self).__init__(noAffaireDuResponsableDuProjet, typeEntite, declarationConjointeDTDICT, responsableDuProjet, representantDuResponsableDeProjet, emplacementDuProjet, emprise, souhaitsPourLeRecepisse, projetEtSonCalendrier, investigationsComplementaires, signatureDuResponsableDuProjetOuDeSonRepresentant, noConsultationDuTeleserviceSeize, noConsultationDuTeleservice, dateDeLaDeclaration,  **kwargs_)
supermod.informationsDT.subclass = informationsDTSub
# end class informationsDTSub


class MovingObjectStatusTypeSub(supermod.MovingObjectStatusType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, validTime=None, dataSource=None, position=None, pos=None, locationName=None, locationReference=None, location=None, speed=None, bearing=None, acceleration=None, elevation=None, status=None, statusReference=None, **kwargs_):
        super(MovingObjectStatusTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, validTime, dataSource, position, pos, locationName, locationReference, location, speed, bearing, acceleration, elevation, status, statusReference,  **kwargs_)
supermod.MovingObjectStatusType.subclass = MovingObjectStatusTypeSub
# end class MovingObjectStatusTypeSub


class AbstractFeatureCollectionTypeSub(supermod.AbstractFeatureCollectionType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, boundedBy=None, location=None, featureMember=None, featureMembers=None, extensiontype_=None, **kwargs_):
        super(AbstractFeatureCollectionTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, boundedBy, location, featureMember, featureMembers, extensiontype_,  **kwargs_)
supermod.AbstractFeatureCollectionType.subclass = AbstractFeatureCollectionTypeSub
# end class AbstractFeatureCollectionTypeSub


class ObliqueCartesianCSTypeSub(supermod.ObliqueCartesianCSType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, aggregationType=None, axis=None, **kwargs_):
        super(ObliqueCartesianCSTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, aggregationType, axis,  **kwargs_)
supermod.ObliqueCartesianCSType.subclass = ObliqueCartesianCSTypeSub
# end class ObliqueCartesianCSTypeSub


class TemporalCSTypeSub(supermod.TemporalCSType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, aggregationType=None, axis=None, **kwargs_):
        super(TemporalCSTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, aggregationType, axis,  **kwargs_)
supermod.TemporalCSType.subclass = TemporalCSTypeSub
# end class TemporalCSTypeSub


class ObservationTypeSub(supermod.ObservationType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, boundedBy=None, location=None, validTime=None, using=None, target=None, resultOf=None, extensiontype_=None, **kwargs_):
        super(ObservationTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, boundedBy, location, validTime, using, target, resultOf, extensiontype_,  **kwargs_)
supermod.ObservationType.subclass = ObservationTypeSub
# end class ObservationTypeSub


class MD_ImageDescription_TypeSub(supermod.MD_ImageDescription_Type):
    def __init__(self, id=None, uuid=None, attributeDescription=None, contentType=None, dimension=None, illuminationElevationAngle=None, illuminationAzimuthAngle=None, imagingCondition=None, imageQualityCode=None, cloudCoverPercentage=None, processingLevelCode=None, compressionGenerationQuantity=None, triangulationIndicator=None, radiometricCalibrationDataAvailability=None, cameraCalibrationInformationAvailability=None, filmDistortionInformationAvailability=None, lensDistortionInformationAvailability=None, **kwargs_):
        super(MD_ImageDescription_TypeSub, self).__init__(id, uuid, attributeDescription, contentType, dimension, illuminationElevationAngle, illuminationAzimuthAngle, imagingCondition, imageQualityCode, cloudCoverPercentage, processingLevelCode, compressionGenerationQuantity, triangulationIndicator, radiometricCalibrationDataAvailability, cameraCalibrationInformationAvailability, filmDistortionInformationAvailability, lensDistortionInformationAvailability,  **kwargs_)
supermod.MD_ImageDescription_Type.subclass = MD_ImageDescription_TypeSub
# end class MD_ImageDescription_TypeSub


class EX_GeographicDescription_TypeSub(supermod.EX_GeographicDescription_Type):
    def __init__(self, id=None, uuid=None, extentTypeCode=None, geographicIdentifier=None, **kwargs_):
        super(EX_GeographicDescription_TypeSub, self).__init__(id, uuid, extentTypeCode, geographicIdentifier,  **kwargs_)
supermod.EX_GeographicDescription_Type.subclass = EX_GeographicDescription_TypeSub
# end class EX_GeographicDescription_TypeSub


class EX_SpatialTemporalExtent_TypeSub(supermod.EX_SpatialTemporalExtent_Type):
    def __init__(self, id=None, uuid=None, extent=None, spatialExtent=None, **kwargs_):
        super(EX_SpatialTemporalExtent_TypeSub, self).__init__(id, uuid, extent, spatialExtent,  **kwargs_)
supermod.EX_SpatialTemporalExtent_Type.subclass = EX_SpatialTemporalExtent_TypeSub
# end class EX_SpatialTemporalExtent_TypeSub


class EX_GeographicBoundingBox_TypeSub(supermod.EX_GeographicBoundingBox_Type):
    def __init__(self, id=None, uuid=None, extentTypeCode=None, westBoundLongitude=None, eastBoundLongitude=None, southBoundLatitude=None, northBoundLatitude=None, **kwargs_):
        super(EX_GeographicBoundingBox_TypeSub, self).__init__(id, uuid, extentTypeCode, westBoundLongitude, eastBoundLongitude, southBoundLatitude, northBoundLatitude,  **kwargs_)
supermod.EX_GeographicBoundingBox_Type.subclass = EX_GeographicBoundingBox_TypeSub
# end class EX_GeographicBoundingBox_TypeSub


class MD_Georectified_TypeSub(supermod.MD_Georectified_Type):
    def __init__(self, id=None, uuid=None, numberOfDimensions=None, axisDimensionProperties=None, cellGeometry=None, transformationParameterAvailability=None, checkPointAvailability=None, checkPointDescription=None, cornerPoints=None, centerPoint=None, pointInPixel=None, transformationDimensionDescription=None, transformationDimensionMapping=None, **kwargs_):
        super(MD_Georectified_TypeSub, self).__init__(id, uuid, numberOfDimensions, axisDimensionProperties, cellGeometry, transformationParameterAvailability, checkPointAvailability, checkPointDescription, cornerPoints, centerPoint, pointInPixel, transformationDimensionDescription, transformationDimensionMapping,  **kwargs_)
supermod.MD_Georectified_Type.subclass = MD_Georectified_TypeSub
# end class MD_Georectified_TypeSub


class MD_Georeferenceable_TypeSub(supermod.MD_Georeferenceable_Type):
    def __init__(self, id=None, uuid=None, numberOfDimensions=None, axisDimensionProperties=None, cellGeometry=None, transformationParameterAvailability=None, controlPointAvailability=None, orientationParameterAvailability=None, orientationParameterDescription=None, georeferencedParameters=None, parameterCitation=None, **kwargs_):
        super(MD_Georeferenceable_TypeSub, self).__init__(id, uuid, numberOfDimensions, axisDimensionProperties, cellGeometry, transformationParameterAvailability, controlPointAvailability, orientationParameterAvailability, orientationParameterDescription, georeferencedParameters, parameterCitation,  **kwargs_)
supermod.MD_Georeferenceable_Type.subclass = MD_Georeferenceable_TypeSub
# end class MD_Georeferenceable_TypeSub


class DS_Initiative_TypeSub(supermod.DS_Initiative_Type):
    def __init__(self, id=None, uuid=None, composedOf=None, seriesMetadata=None, subset=None, superset=None, **kwargs_):
        super(DS_Initiative_TypeSub, self).__init__(id, uuid, composedOf, seriesMetadata, subset, superset,  **kwargs_)
supermod.DS_Initiative_Type.subclass = DS_Initiative_TypeSub
# end class DS_Initiative_TypeSub


class DS_Series_TypeSub(supermod.DS_Series_Type):
    def __init__(self, id=None, uuid=None, composedOf=None, seriesMetadata=None, subset=None, superset=None, extensiontype_=None, **kwargs_):
        super(DS_Series_TypeSub, self).__init__(id, uuid, composedOf, seriesMetadata, subset, superset, extensiontype_,  **kwargs_)
supermod.DS_Series_Type.subclass = DS_Series_TypeSub
# end class DS_Series_TypeSub


class DS_OtherAggregate_TypeSub(supermod.DS_OtherAggregate_Type):
    def __init__(self, id=None, uuid=None, composedOf=None, seriesMetadata=None, subset=None, superset=None, extensiontype_=None, **kwargs_):
        super(DS_OtherAggregate_TypeSub, self).__init__(id, uuid, composedOf, seriesMetadata, subset, superset, extensiontype_,  **kwargs_)
supermod.DS_OtherAggregate_Type.subclass = DS_OtherAggregate_TypeSub
# end class DS_OtherAggregate_TypeSub


class AffineCSTypeSub(supermod.AffineCSType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, aggregationType=None, axis=None, **kwargs_):
        super(AffineCSTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, aggregationType, axis,  **kwargs_)
supermod.AffineCSType.subclass = AffineCSTypeSub
# end class AffineCSTypeSub


class CylindricalCSTypeSub(supermod.CylindricalCSType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, aggregationType=None, axis=None, **kwargs_):
        super(CylindricalCSTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, aggregationType, axis,  **kwargs_)
supermod.CylindricalCSType.subclass = CylindricalCSTypeSub
# end class CylindricalCSTypeSub


class PolarCSTypeSub(supermod.PolarCSType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, aggregationType=None, axis=None, **kwargs_):
        super(PolarCSTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, aggregationType, axis,  **kwargs_)
supermod.PolarCSType.subclass = PolarCSTypeSub
# end class PolarCSTypeSub


class SphericalCSTypeSub(supermod.SphericalCSType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, aggregationType=None, axis=None, **kwargs_):
        super(SphericalCSTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, aggregationType, axis,  **kwargs_)
supermod.SphericalCSType.subclass = SphericalCSTypeSub
# end class SphericalCSTypeSub


class UserDefinedCSTypeSub(supermod.UserDefinedCSType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, aggregationType=None, axis=None, **kwargs_):
        super(UserDefinedCSTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, aggregationType, axis,  **kwargs_)
supermod.UserDefinedCSType.subclass = UserDefinedCSTypeSub
# end class UserDefinedCSTypeSub


class LinearCSTypeSub(supermod.LinearCSType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, aggregationType=None, axis=None, **kwargs_):
        super(LinearCSTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, aggregationType, axis,  **kwargs_)
supermod.LinearCSType.subclass = LinearCSTypeSub
# end class LinearCSTypeSub


class TimeCSTypeSub(supermod.TimeCSType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, aggregationType=None, axis=None, **kwargs_):
        super(TimeCSTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, aggregationType, axis,  **kwargs_)
supermod.TimeCSType.subclass = TimeCSTypeSub
# end class TimeCSTypeSub


class VerticalCSTypeSub(supermod.VerticalCSType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, aggregationType=None, axis=None, **kwargs_):
        super(VerticalCSTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, aggregationType, axis,  **kwargs_)
supermod.VerticalCSType.subclass = VerticalCSTypeSub
# end class VerticalCSTypeSub


class CartesianCSTypeSub(supermod.CartesianCSType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, aggregationType=None, axis=None, **kwargs_):
        super(CartesianCSTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, aggregationType, axis,  **kwargs_)
supermod.CartesianCSType.subclass = CartesianCSTypeSub
# end class CartesianCSTypeSub


class EllipsoidalCSTypeSub(supermod.EllipsoidalCSType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, aggregationType=None, axis=None, **kwargs_):
        super(EllipsoidalCSTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, aggregationType, axis,  **kwargs_)
supermod.EllipsoidalCSType.subclass = EllipsoidalCSTypeSub
# end class EllipsoidalCSTypeSub


class DerivedCRSTypeSub(supermod.DerivedCRSType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, scope=None, conversion=None, baseCRS=None, derivedCRSType=None, coordinateSystem=None, **kwargs_):
        super(DerivedCRSTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, scope, conversion, baseCRS, derivedCRSType, coordinateSystem,  **kwargs_)
supermod.DerivedCRSType.subclass = DerivedCRSTypeSub
# end class DerivedCRSTypeSub


class ProjectedCRSTypeSub(supermod.ProjectedCRSType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, domainOfValidity=None, scope=None, conversion=None, baseGeodeticCRS=None, baseGeographicCRS=None, cartesianCS=None, **kwargs_):
        super(ProjectedCRSTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, domainOfValidity, scope, conversion, baseGeodeticCRS, baseGeographicCRS, cartesianCS,  **kwargs_)
supermod.ProjectedCRSType.subclass = ProjectedCRSTypeSub
# end class ProjectedCRSTypeSub


class GridTypeSub(supermod.GridType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, dimension=None, limits=None, axisName=None, extensiontype_=None, **kwargs_):
        super(GridTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, srsName, srsDimension, axisLabels, uomLabels, dimension, limits, axisName, extensiontype_,  **kwargs_)
supermod.GridType.subclass = GridTypeSub
# end class GridTypeSub


class AbstractCoverageTypeSub(supermod.AbstractCoverageType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, boundedBy=None, location=None, domainSet=None, rangeSet=None, extensiontype_=None, **kwargs_):
        super(AbstractCoverageTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, boundedBy, location, domainSet, rangeSet, extensiontype_,  **kwargs_)
supermod.AbstractCoverageType.subclass = AbstractCoverageTypeSub
# end class AbstractCoverageTypeSub


class GeometricComplexTypeSub(supermod.GeometricComplexType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, aggregationType=None, element=None, **kwargs_):
        super(GeometricComplexTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, srsName, srsDimension, axisLabels, uomLabels, aggregationType, element,  **kwargs_)
supermod.GeometricComplexType.subclass = GeometricComplexTypeSub
# end class GeometricComplexTypeSub


class ConventionalUnitTypeSub(supermod.ConventionalUnitType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, quantityType=None, quantityTypeReference=None, catalogSymbol=None, conversionToPreferredUnit=None, roughConversionToPreferredUnit=None, derivationUnitTerm=None, **kwargs_):
        super(ConventionalUnitTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, quantityType, quantityTypeReference, catalogSymbol, conversionToPreferredUnit, roughConversionToPreferredUnit, derivationUnitTerm,  **kwargs_)
supermod.ConventionalUnitType.subclass = ConventionalUnitTypeSub
# end class ConventionalUnitTypeSub


class DerivedUnitTypeSub(supermod.DerivedUnitType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, quantityType=None, quantityTypeReference=None, catalogSymbol=None, derivationUnitTerm=None, **kwargs_):
        super(DerivedUnitTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, quantityType, quantityTypeReference, catalogSymbol, derivationUnitTerm,  **kwargs_)
supermod.DerivedUnitType.subclass = DerivedUnitTypeSub
# end class DerivedUnitTypeSub


class BaseUnitTypeSub(supermod.BaseUnitType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, remarks=None, quantityType=None, quantityTypeReference=None, catalogSymbol=None, unitsSystem=None, **kwargs_):
        super(BaseUnitTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, remarks, quantityType, quantityTypeReference, catalogSymbol, unitsSystem,  **kwargs_)
supermod.BaseUnitType.subclass = BaseUnitTypeSub
# end class BaseUnitTypeSub


class AbstractGeometricPrimitiveTypeSub(supermod.AbstractGeometricPrimitiveType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, extensiontype_=None, **kwargs_):
        super(AbstractGeometricPrimitiveTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, srsName, srsDimension, axisLabels, uomLabels, extensiontype_,  **kwargs_)
supermod.AbstractGeometricPrimitiveType.subclass = AbstractGeometricPrimitiveTypeSub
# end class AbstractGeometricPrimitiveTypeSub


class AbstractSurfaceTypeSub(supermod.AbstractSurfaceType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, extensiontype_=None, **kwargs_):
        super(AbstractSurfaceTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, srsName, srsDimension, axisLabels, uomLabels, extensiontype_,  **kwargs_)
supermod.AbstractSurfaceType.subclass = AbstractSurfaceTypeSub
# end class AbstractSurfaceTypeSub


class ShellTypeSub(supermod.ShellType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, aggregationType=None, surfaceMember=None, **kwargs_):
        super(ShellTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, srsName, srsDimension, axisLabels, uomLabels, aggregationType, surfaceMember,  **kwargs_)
supermod.ShellType.subclass = ShellTypeSub
# end class ShellTypeSub


class AbstractSolidTypeSub(supermod.AbstractSolidType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, extensiontype_=None, **kwargs_):
        super(AbstractSolidTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, srsName, srsDimension, axisLabels, uomLabels, extensiontype_,  **kwargs_)
supermod.AbstractSolidType.subclass = AbstractSolidTypeSub
# end class AbstractSolidTypeSub


class OrientableSurfaceTypeSub(supermod.OrientableSurfaceType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, orientation='+', baseSurface=None, **kwargs_):
        super(OrientableSurfaceTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, srsName, srsDimension, axisLabels, uomLabels, orientation, baseSurface,  **kwargs_)
supermod.OrientableSurfaceType.subclass = OrientableSurfaceTypeSub
# end class OrientableSurfaceTypeSub


class SurfaceTypeSub(supermod.SurfaceType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, patches=None, extensiontype_=None, **kwargs_):
        super(SurfaceTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, srsName, srsDimension, axisLabels, uomLabels, patches, extensiontype_,  **kwargs_)
supermod.SurfaceType.subclass = SurfaceTypeSub
# end class SurfaceTypeSub


class MultiSolidTypeSub(supermod.MultiSolidType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, aggregationType=None, solidMember=None, solidMembers=None, **kwargs_):
        super(MultiSolidTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, srsName, srsDimension, axisLabels, uomLabels, aggregationType, solidMember, solidMembers,  **kwargs_)
supermod.MultiSolidType.subclass = MultiSolidTypeSub
# end class MultiSolidTypeSub


class MultiSurfaceTypeSub(supermod.MultiSurfaceType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, aggregationType=None, surfaceMember=None, surfaceMembers=None, **kwargs_):
        super(MultiSurfaceTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, srsName, srsDimension, axisLabels, uomLabels, aggregationType, surfaceMember, surfaceMembers,  **kwargs_)
supermod.MultiSurfaceType.subclass = MultiSurfaceTypeSub
# end class MultiSurfaceTypeSub


class MultiCurveTypeSub(supermod.MultiCurveType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, aggregationType=None, curveMember=None, curveMembers=None, **kwargs_):
        super(MultiCurveTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, srsName, srsDimension, axisLabels, uomLabels, aggregationType, curveMember, curveMembers,  **kwargs_)
supermod.MultiCurveType.subclass = MultiCurveTypeSub
# end class MultiCurveTypeSub


class MultiPointTypeSub(supermod.MultiPointType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, aggregationType=None, pointMember=None, pointMembers=None, **kwargs_):
        super(MultiPointTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, srsName, srsDimension, axisLabels, uomLabels, aggregationType, pointMember, pointMembers,  **kwargs_)
supermod.MultiPointType.subclass = MultiPointTypeSub
# end class MultiPointTypeSub


class MultiGeometryTypeSub(supermod.MultiGeometryType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, aggregationType=None, geometryMember=None, geometryMembers=None, **kwargs_):
        super(MultiGeometryTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, srsName, srsDimension, axisLabels, uomLabels, aggregationType, geometryMember, geometryMembers,  **kwargs_)
supermod.MultiGeometryType.subclass = MultiGeometryTypeSub
# end class MultiGeometryTypeSub


class DynamicFeatureCollectionTypeSub(supermod.DynamicFeatureCollectionType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, boundedBy=None, location=None, validTime=None, history=None, dataSource=None, dataSourceReference=None, dynamicMembers=None, **kwargs_):
        super(DynamicFeatureCollectionTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, boundedBy, location, validTime, history, dataSource, dataSourceReference, dynamicMembers,  **kwargs_)
supermod.DynamicFeatureCollectionType.subclass = DynamicFeatureCollectionTypeSub
# end class DynamicFeatureCollectionTypeSub


class FeatureCollectionTypeSub(supermod.FeatureCollectionType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, boundedBy=None, location=None, featureMember=None, featureMembers=None, **kwargs_):
        super(FeatureCollectionTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, boundedBy, location, featureMember, featureMembers,  **kwargs_)
supermod.FeatureCollectionType.subclass = FeatureCollectionTypeSub
# end class FeatureCollectionTypeSub


class DirectedObservationTypeSub(supermod.DirectedObservationType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, boundedBy=None, location=None, validTime=None, using=None, target=None, resultOf=None, direction=None, extensiontype_=None, **kwargs_):
        super(DirectedObservationTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, boundedBy, location, validTime, using, target, resultOf, direction, extensiontype_,  **kwargs_)
supermod.DirectedObservationType.subclass = DirectedObservationTypeSub
# end class DirectedObservationTypeSub


class DS_StereoMate_TypeSub(supermod.DS_StereoMate_Type):
    def __init__(self, id=None, uuid=None, composedOf=None, seriesMetadata=None, subset=None, superset=None, **kwargs_):
        super(DS_StereoMate_TypeSub, self).__init__(id, uuid, composedOf, seriesMetadata, subset, superset,  **kwargs_)
supermod.DS_StereoMate_Type.subclass = DS_StereoMate_TypeSub
# end class DS_StereoMate_TypeSub


class DS_ProductionSeries_TypeSub(supermod.DS_ProductionSeries_Type):
    def __init__(self, id=None, uuid=None, composedOf=None, seriesMetadata=None, subset=None, superset=None, **kwargs_):
        super(DS_ProductionSeries_TypeSub, self).__init__(id, uuid, composedOf, seriesMetadata, subset, superset,  **kwargs_)
supermod.DS_ProductionSeries_Type.subclass = DS_ProductionSeries_TypeSub
# end class DS_ProductionSeries_TypeSub


class DS_Sensor_TypeSub(supermod.DS_Sensor_Type):
    def __init__(self, id=None, uuid=None, composedOf=None, seriesMetadata=None, subset=None, superset=None, **kwargs_):
        super(DS_Sensor_TypeSub, self).__init__(id, uuid, composedOf, seriesMetadata, subset, superset,  **kwargs_)
supermod.DS_Sensor_Type.subclass = DS_Sensor_TypeSub
# end class DS_Sensor_TypeSub


class DS_Platform_TypeSub(supermod.DS_Platform_Type):
    def __init__(self, id=None, uuid=None, composedOf=None, seriesMetadata=None, subset=None, superset=None, **kwargs_):
        super(DS_Platform_TypeSub, self).__init__(id, uuid, composedOf, seriesMetadata, subset, superset,  **kwargs_)
supermod.DS_Platform_Type.subclass = DS_Platform_TypeSub
# end class DS_Platform_TypeSub


class RectifiedGridTypeSub(supermod.RectifiedGridType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, dimension=None, limits=None, axisName=None, origin=None, offsetVector=None, **kwargs_):
        super(RectifiedGridTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, srsName, srsDimension, axisLabels, uomLabels, dimension, limits, axisName, origin, offsetVector,  **kwargs_)
supermod.RectifiedGridType.subclass = RectifiedGridTypeSub
# end class RectifiedGridTypeSub


class AbstractContinuousCoverageTypeSub(supermod.AbstractContinuousCoverageType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, boundedBy=None, location=None, domainSet=None, rangeSet=None, coverageFunction=None, **kwargs_):
        super(AbstractContinuousCoverageTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, boundedBy, location, domainSet, rangeSet, coverageFunction,  **kwargs_)
supermod.AbstractContinuousCoverageType.subclass = AbstractContinuousCoverageTypeSub
# end class AbstractContinuousCoverageTypeSub


class DiscreteCoverageTypeSub(supermod.DiscreteCoverageType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, boundedBy=None, location=None, domainSet=None, rangeSet=None, coverageFunction=None, **kwargs_):
        super(DiscreteCoverageTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, boundedBy, location, domainSet, rangeSet, coverageFunction,  **kwargs_)
supermod.DiscreteCoverageType.subclass = DiscreteCoverageTypeSub
# end class DiscreteCoverageTypeSub


class CompositeSolidTypeSub(supermod.CompositeSolidType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, aggregationType=None, solidMember=None, **kwargs_):
        super(CompositeSolidTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, srsName, srsDimension, axisLabels, uomLabels, aggregationType, solidMember,  **kwargs_)
supermod.CompositeSolidType.subclass = CompositeSolidTypeSub
# end class CompositeSolidTypeSub


class CompositeSurfaceTypeSub(supermod.CompositeSurfaceType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, aggregationType=None, surfaceMember=None, **kwargs_):
        super(CompositeSurfaceTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, srsName, srsDimension, axisLabels, uomLabels, aggregationType, surfaceMember,  **kwargs_)
supermod.CompositeSurfaceType.subclass = CompositeSurfaceTypeSub
# end class CompositeSurfaceTypeSub


class AbstractCurveTypeSub(supermod.AbstractCurveType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, extensiontype_=None, **kwargs_):
        super(AbstractCurveTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, srsName, srsDimension, axisLabels, uomLabels, extensiontype_,  **kwargs_)
supermod.AbstractCurveType.subclass = AbstractCurveTypeSub
# end class AbstractCurveTypeSub


class PointTypeSub(supermod.PointType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, pos=None, coordinates=None, **kwargs_):
        super(PointTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, srsName, srsDimension, axisLabels, uomLabels, pos, coordinates,  **kwargs_)
supermod.PointType.subclass = PointTypeSub
# end class PointTypeSub


class AbstractRingTypeSub(supermod.AbstractRingType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, extensiontype_=None, **kwargs_):
        super(AbstractRingTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, srsName, srsDimension, axisLabels, uomLabels, extensiontype_,  **kwargs_)
supermod.AbstractRingType.subclass = AbstractRingTypeSub
# end class AbstractRingTypeSub


class PolygonTypeSub(supermod.PolygonType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, exterior=None, interior=None, **kwargs_):
        super(PolygonTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, srsName, srsDimension, axisLabels, uomLabels, exterior, interior,  **kwargs_)
supermod.PolygonType.subclass = PolygonTypeSub
# end class PolygonTypeSub


class SolidTypeSub(supermod.SolidType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, exterior=None, interior=None, **kwargs_):
        super(SolidTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, srsName, srsDimension, axisLabels, uomLabels, exterior, interior,  **kwargs_)
supermod.SolidType.subclass = SolidTypeSub
# end class SolidTypeSub


class TinTypeSub(supermod.TinType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, patches=None, stopLines=None, breakLines=None, maxLength=None, controlPoint=None, **kwargs_):
        super(TinTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, srsName, srsDimension, axisLabels, uomLabels, patches, stopLines, breakLines, maxLength, controlPoint,  **kwargs_)
supermod.TinType.subclass = TinTypeSub
# end class TinTypeSub


class RingTypeSub(supermod.RingType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, aggregationType=None, curveMember=None, **kwargs_):
        super(RingTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, srsName, srsDimension, axisLabels, uomLabels, aggregationType, curveMember,  **kwargs_)
supermod.RingType.subclass = RingTypeSub
# end class RingTypeSub


class OrientableCurveTypeSub(supermod.OrientableCurveType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, orientation='+', baseCurve=None, **kwargs_):
        super(OrientableCurveTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, srsName, srsDimension, axisLabels, uomLabels, orientation, baseCurve,  **kwargs_)
supermod.OrientableCurveType.subclass = OrientableCurveTypeSub
# end class OrientableCurveTypeSub


class CurveTypeSub(supermod.CurveType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, segments=None, **kwargs_):
        super(CurveTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, srsName, srsDimension, axisLabels, uomLabels, segments,  **kwargs_)
supermod.CurveType.subclass = CurveTypeSub
# end class CurveTypeSub


class DirectedObservationAtDistanceTypeSub(supermod.DirectedObservationAtDistanceType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, boundedBy=None, location=None, validTime=None, using=None, target=None, resultOf=None, direction=None, distance=None, **kwargs_):
        super(DirectedObservationAtDistanceTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, boundedBy, location, validTime, using, target, resultOf, direction, distance,  **kwargs_)
supermod.DirectedObservationAtDistanceType.subclass = DirectedObservationAtDistanceTypeSub
# end class DirectedObservationAtDistanceTypeSub


class CompositeCurveTypeSub(supermod.CompositeCurveType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, aggregationType=None, curveMember=None, **kwargs_):
        super(CompositeCurveTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, srsName, srsDimension, axisLabels, uomLabels, aggregationType, curveMember,  **kwargs_)
supermod.CompositeCurveType.subclass = CompositeCurveTypeSub
# end class CompositeCurveTypeSub


class LineStringTypeSub(supermod.LineStringType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, pos=None, pointProperty=None, pointRep=None, posList=None, coordinates=None, **kwargs_):
        super(LineStringTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, srsName, srsDimension, axisLabels, uomLabels, pos, pointProperty, pointRep, posList, coordinates,  **kwargs_)
supermod.LineStringType.subclass = LineStringTypeSub
# end class LineStringTypeSub


class LinearRingTypeSub(supermod.LinearRingType):
    def __init__(self, id=None, metaDataProperty=None, description=None, descriptionReference=None, identifier=None, name=None, srsName=None, srsDimension=None, axisLabels=None, uomLabels=None, pos=None, pointProperty=None, pointRep=None, posList=None, coordinates=None, **kwargs_):
        super(LinearRingTypeSub, self).__init__(id, metaDataProperty, description, descriptionReference, identifier, name, srsName, srsDimension, axisLabels, uomLabels, pos, pointProperty, pointRep, posList, coordinates,  **kwargs_)
supermod.LinearRingType.subclass = LinearRingTypeSub
# end class LinearRingTypeSub


def get_root_tag(node):
    tag = supermod.Tag_pattern_.match(node.tag).groups()[-1]
    rootClass = None
    rootClass = supermod.GDSClassesMapping.get(tag)
    if rootClass is None and hasattr(supermod, tag):
        rootClass = getattr(supermod, tag)
    return tag, rootClass


def parse(inFilename, silence=False):
    parser = None
    doc = parsexml_(inFilename, parser)
    rootNode = doc.getroot()
    rootTag, rootClass = get_root_tag(rootNode)
    if rootClass is None:
        rootTag = 'dossierConsultation'
        rootClass = supermod.dossierConsultation
    rootObj = rootClass.factory()
    rootObj.build(rootNode)
    # Enable Python to collect the space used by the DOM.
    doc = None
    if not silence:
        sys.stdout.write('<?xml version="1.0" ?>\n')
        rootObj.export(
            sys.stdout, 0, name_=rootTag,
            namespacedef_='xmlns:t="http://www.reseaux-et-canalisations.gouv.fr/schema-teleservice/3.0"',
            pretty_print=True)
    return rootObj


def parseEtree(inFilename, silence=False):
    parser = None
    doc = parsexml_(inFilename, parser)
    rootNode = doc.getroot()
    rootTag, rootClass = get_root_tag(rootNode)
    if rootClass is None:
        rootTag = 'dossierConsultation'
        rootClass = supermod.dossierConsultation
    rootObj = rootClass.factory()
    rootObj.build(rootNode)
    # Enable Python to collect the space used by the DOM.
    doc = None
    mapping = {}
    rootElement = rootObj.to_etree(None, name_=rootTag, mapping_=mapping)
    reverse_mapping = rootObj.gds_reverse_node_mapping(mapping)
    if not silence:
        content = etree_.tostring(
            rootElement, pretty_print=True,
            xml_declaration=True, encoding="utf-8")
        sys.stdout.write(content)
        sys.stdout.write('\n')
    return rootObj, rootElement, mapping, reverse_mapping


def parseString(inString, silence=False):
    if sys.version_info.major == 2:
        from StringIO import StringIO
    else:
        from io import BytesIO as StringIO
    parser = None
    doc = parsexml_(StringIO(inString), parser)
    rootNode = doc.getroot()
    rootTag, rootClass = get_root_tag(rootNode)
    if rootClass is None:
        rootTag = 'dossierConsultation'
        rootClass = supermod.dossierConsultation
    rootObj = rootClass.factory()
    rootObj.build(rootNode)
    # Enable Python to collect the space used by the DOM.
    doc = None
    if not silence:
        sys.stdout.write('<?xml version="1.0" ?>\n')
        rootObj.export(
            sys.stdout, 0, name_=rootTag,
            namespacedef_='xmlns:t="http://www.reseaux-et-canalisations.gouv.fr/schema-teleservice/3.0"')
    return rootObj


def parseLiteral(inFilename, silence=False):
    parser = None
    doc = parsexml_(inFilename, parser)
    rootNode = doc.getroot()
    rootTag, rootClass = get_root_tag(rootNode)
    if rootClass is None:
        rootTag = 'dossierConsultation'
        rootClass = supermod.dossierConsultation
    rootObj = rootClass.factory()
    rootObj.build(rootNode)
    # Enable Python to collect the space used by the DOM.
    doc = None
    if not silence:
        sys.stdout.write('#from dtdict_api_v30 import *\n\n')
        sys.stdout.write('import dtdict_api_v30 as model_\n\n')
        sys.stdout.write('rootObj = model_.rootClass(\n')
        rootObj.exportLiteral(sys.stdout, 0, name_=rootTag)
        sys.stdout.write(')\n')
    return rootObj


USAGE_TEXT = """
Usage: python ???.py <infilename>
"""


def usage():
    print(USAGE_TEXT)
    sys.exit(1)


def main():
    args = sys.argv[1:]
    if len(args) != 1:
        usage()
    infilename = args[0]
    parse(infilename)


if __name__ == '__main__':
    #import pdb; pdb.set_trace()
    main()
