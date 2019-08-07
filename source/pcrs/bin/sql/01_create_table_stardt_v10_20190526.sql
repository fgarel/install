-- ---------------------------------
-- Script pour la creation de tables
-- adaptées au modèle de données
-- StaR-DT - Géostandard de réseaux
-- Version 0.4 2019-05-22
-- ---------------------------------

-- ---------------------------------
-- DROP
-- ---------------------------------

-- Général
DROP TABLE if exists a_stardt."ReseauUtilite" cascade;
DROP TABLE if exists a_stardt."ProtectionInondationSubmersion" cascade;
-- Elements de Reseau
DROP TABLE if exists a_stardt."ElementReseau" cascade;
DROP TABLE if exists a_stardt."Ouvrage" cascade;
-- Topographie
DROP TABLE if exists a_stardt."PointLevePCRS" cascade;
DROP TABLE if exists a_stardt."PointLeveOuvrageReseau" cascade;
-- Elements linéraires de Reseau
DROP TABLE if exists a_stardt."Troncon" cascade;
DROP TABLE if exists a_stardt."Cable" cascade;
DROP TABLE if exists a_stardt."Canalisation" cascade;
DROP TABLE if exists a_stardt."EnveloppeCableConduite" cascade;
-- Complements
DROP TABLE if exists a_stardt."OuvrageEnTechniqueAlternative" cascade;
DROP TABLE if exists a_stardt."GeometrieSupplementaire" cascade;
-- Elements linéraires de Reseau Cable
DROP TABLE if exists a_stardt."Cable" cascade;
DROP TABLE if exists a_stardt."CableElectrique" cascade;
DROP TABLE if exists a_stardt."CableTelecommunication" cascade;
DROP TABLE if exists a_stardt."AutreCable" cascade;
-- Elements linéraires de Reseau Canalisation
DROP TABLE if exists a_stardt."Canalisation" cascade;
DROP TABLE if exists a_stardt."CanalisationHydrocarbureChimique" cascade;
DROP TABLE if exists a_stardt."CanalisationAssainissementPluviale" cascade;
DROP TABLE if exists a_stardt."CanalisationThermique" cascade;
DROP TABLE if exists a_stardt."CanalisationEau" cascade;
DROP TABLE if exists a_stardt."AutreCanalisation" cascade;
-- Ouvrages de protection inondation submersion
DROP TABLE if exists a_stardt."ProtectionInondationSubmersion" cascade;
-- Elements linéraires de Reseau Enveloppe des càbles et des canalisations
DROP TABLE if exists a_stardt."EnveloppeCableConduite" cascade;
DROP TABLE if exists a_stardt."Galerie" cascade;
DROP TABLE if exists a_stardt."Nappe" cascade;
DROP TABLE if exists a_stardt."Fourreau" cascade;
-- Elements Ponctuels de Reseau
DROP TABLE if exists a_stardt."NoeudReseau" cascade;
DROP TABLE if exists a_stardt."Accessoire" cascade;
-- Elements de Reseau Conteneur de Noeuds
DROP TABLE if exists a_stardt."AffleurantPCRS" cascade;
DROP TABLE if exists a_stardt."Affleurant" cascade;
DROP TABLE if exists a_stardt."Conteneur" cascade;
DROP TABLE if exists a_stardt."Poteau" cascade;
DROP TABLE if exists a_stardt."Pylone" cascade;
DROP TABLE if exists a_stardt."RegardVisitable" cascade;
DROP TABLE if exists a_stardt."RegardNonVisitable" cascade;
DROP TABLE if exists a_stardt."Coffret" cascade;
DROP TABLE if exists a_stardt."BatimentTechnique" cascade;
-- Information Supplementaire
DROP TABLE if exists a_stardt."InformationSupplementaire" cascade;
DROP TABLE if exists a_stardt."DetailComplementaire" cascade;
DROP TABLE if exists a_stardt."Cote" cascade;
DROP TABLE if exists a_stardt."Annotation" cascade;
DROP TABLE if exists a_stardt."PerimetreParticulier" cascade;
DROP TABLE if exists a_stardt."PositionLabel" cascade;



-- --- Enumeration 1

DROP TABLE if exists a_stardt."NatureReseauValue" cascade;
DROP TABLE if exists a_stardt."ClassePrecisionReseau" cascade;
DROP TABLE if exists a_stardt."LeveTypeValue" cascade;
DROP TABLE if exists a_stardt."ConditionOfFacilityValue" cascade;
DROP TABLE if exists a_stardt."WarningTypeValue" cascade;
DROP TABLE if exists a_stardt."UtilityDeliveryTypeValue" cascade;
DROP TABLE if exists a_stardt."HierarchieValue" cascade;
DROP TABLE if exists a_stardt."PipeMaterialTypeValue" cascade;
DROP TABLE if exists a_stardt."TelecomCableTechnoValue" cascade;
DROP TABLE if exists a_stardt."RegimeValue" cascade;
DROP TABLE if exists a_stardt."FonctionCableElectriqueValue" cascade;
DROP TABLE if exists a_stardt."ClasseTensionValue" cascade;
DROP TABLE if exists a_stardt."ClasseTemperatureValue" cascade;
DROP TABLE if exists a_stardt."TypeEcoulementValue" cascade;
DROP TABLE if exists a_stardt."OilGasChemicalsProductTypeValue" cascade;
DROP TABLE if exists a_stardt."SewerWaterTypeValue" cascade;
DROP TABLE if exists a_stardt."WaterTypeValue" cascade;
DROP TABLE if exists a_stardt."ThermalProductTypeValue" cascade;
DROP TABLE if exists a_stardt."TypeOuvragePINSValue" cascade;
DROP TABLE if exists a_stardt."MateriauOuvragePINSValue" cascade;
DROP TABLE if exists a_stardt."StructureOuvragePISValue" cascade;
DROP TABLE if exists a_stardt."ProtectionPINSValue" cascade;
DROP TABLE if exists a_stardt."TypeAccessoireValue" cascade;
DROP TABLE if exists a_stardt."OilGasChemicalAppurtenanceTypeValue" cascade;
DROP TABLE if exists a_stardt."SewerAppurtenanceTypeValue" cascade;
DROP TABLE if exists a_stardt."WaterAppurtenanceTypeValue" cascade;
DROP TABLE if exists a_stardt."ThermalAppurtenanceTypeValue" cascade;
DROP TABLE if exists a_stardt."ElectricityAppurtenanceTypeValue" cascade;
DROP TABLE if exists a_stardt."TelecommunicationsAppurtenanceTypeValue" cascade;
DROP TABLE if exists a_stardt."TypeInfoSupplemenataireValue" cascade;
DROP TABLE if exists a_stardt."TypeFichierValue" cascade;
DROP TABLE if exists a_stardt."TypeCoteValue" cascade;
DROP TABLE if exists a_stardt."AnnotationTypeValue" cascade;
DROP TABLE if exists a_stardt."PositionLabelValue" cascade;
DROP TABLE if exists a_stardt."TypeParticulariteValue" cascade;

-- --- Enumeration 2

DROP TABLE if exists a_stardt."NatureReseauPCRS17Type" cascade;
DROP TABLE if exists a_stardt."CodeCouleurNormePCRS17Type" cascade;
DROP TABLE if exists a_stardt."CategoriePrecisionPCRS17Type" cascade;
DROP TABLE if exists a_stardt."CalendrierPCRS17Type" cascade;
DROP TABLE if exists a_stardt."NatureEmprisePCRS17Type" cascade;
-- DROP TABLE if exists a_stardt."CotationPCRS17Type";
DROP TABLE if exists a_stardt."RoleNiveau1PCRS17Type" CASCADE;
DROP TABLE if exists a_stardt."RoleNiveau2PCRS17Type" CASCADE;
DROP TABLE if exists a_stardt."ActeurPCRS17Type" CASCADE;
DROP TABLE if exists a_stardt."CategorieObjetPCRS17Type" cascade;

-- --- Relation

--DROP TABLE if exists a_stardt."RoleActeurPCRS17Relation" CASCADE;
DROP TABLE if exists a_stardt."InformationSupplementaireElementReseauRelation" CASCADE;
DROP TABLE if exists a_stardt."ElementReseauReseauUtilitRelation" CASCADE;
DROP TABLE if exists a_stardt."EmpriseDisponibiliteCommunePCRS17Relation" CASCADE;
DROP TABLE if exists a_stardt."EmpriseEchangeCommunePCRS17Relation" CASCADE;
DROP TABLE if exists a_stardt."EmpriseDisponibiliteTronconVoiriePCRS17Relation" CASCADE;
DROP TABLE if exists a_stardt."EmpriseEchangeTronconVoiriePCRS17Relation" CASCADE;
DROP TABLE if exists a_stardt."HabillageHabillagePCRS17Relation" CASCADE;
DROP TABLE if exists a_stardt."ObjetVecteurPointLevePCRS17Relation" CASCADE;
DROP TABLE if exists a_stardt."AffleurantGeometriqueAffleurantLignesPCRS17Relation" CASCADE;
DROP TABLE if exists a_stardt."AffleurantGeometriqueAffleurantPointPCRS17Relation" CASCADE;
DROP TABLE if exists a_stardt."AffleurantGeometriqueAffleurantEnveloppePCRS17Relation" CASCADE;
DROP TABLE if exists a_stardt."AffleurantEnveloppeHabillageLignesPCRS17Relation" CASCADE;
DROP TABLE if exists a_stardt."RasterMasqueOpacitePCRS17Relation" CASCADE;

-- ---------------------------------
-- Creation des tables "liste de valeurs / énumérations"
-- ---------------------------------


-- ---------------------------------
-- Classe : NatureReseauValue
-- ---------------------------------

-- Table: NatureReseauValue
--DROP TABLE if exists a_stardt."NatureReseauValue" cascade;
CREATE TABLE a_stardt."NatureReseauValue"
(
  code character varying(8) unique,
  valeur character varying(43),
  CONSTRAINT "NatureReseauValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."NatureReseauValue" (code, valeur) VALUES ('ELEC', 'Electricité');
INSERT INTO a_stardt."NatureReseauValue" (code, valeur) VALUES ('ELECECL', 'Eclairage public');
INSERT INTO a_stardt."NatureReseauValue" (code, valeur) VALUES ('ELECSLT', 'Signalisation lumineuse tricolore');
INSERT INTO a_stardt."NatureReseauValue" (code, valeur) VALUES ('ELECTRD', 'Electricité TRansport/Distribution');
INSERT INTO a_stardt."NatureReseauValue" (code, valeur) VALUES ('GAZ', 'Gaz');
INSERT INTO a_stardt."NatureReseauValue" (code, valeur) VALUES ('CHIM', 'Produits chimiques');
INSERT INTO a_stardt."NatureReseauValue" (code, valeur) VALUES ('AEP', 'Eau Potable');
INSERT INTO a_stardt."NatureReseauValue" (code, valeur) VALUES ('ASS', 'Assainissement et pluvial');
INSERT INTO a_stardt."NatureReseauValue" (code, valeur) VALUES ('ASSEP', 'Eaux pluviales');
INSERT INTO a_stardt."NatureReseauValue" (code, valeur) VALUES ('ASSEU', 'Eaux usées');
INSERT INTO a_stardt."NatureReseauValue" (code, valeur) VALUES ('ASSUN', 'Réseau unitaire');
INSERT INTO a_stardt."NatureReseauValue" (code, valeur) VALUES ('CHAU', 'Chauffage et climatisation');
INSERT INTO a_stardt."NatureReseauValue" (code, valeur) VALUES ('COM', 'Télécom');
INSERT INTO a_stardt."NatureReseauValue" (code, valeur) VALUES ('DECH', 'Déchets');
INSERT INTO a_stardt."NatureReseauValue" (code, valeur) VALUES ('INCE', 'Incendie');
INSERT INTO a_stardt."NatureReseauValue" (code, valeur) VALUES ('PINS', 'Ouvrage de Protection INondation Submersion');
INSERT INTO a_stardt."NatureReseauValue" (code, valeur) VALUES ('MULT', 'Multi réseaux');
INSERT INTO a_stardt."NatureReseauValue" (code, valeur) VALUES ('00', 'Non défini');

COMMENT ON TABLE a_stardt."NatureReseauValue" IS
'Code permettant de décrire le type de réseau conformément à la liste des réseaux de la NF P98-332.';


-- ---------------------------------
-- Classe : ClassePrecisionReseau
-- ---------------------------------

-- Table: ClassePrecisionReseau
--DROP TABLE if exists a_stardt."ClassePrecisionReseau" cascade;
CREATE TABLE a_stardt."ClassePrecisionReseau"
(
  code character varying(1) unique,
  valeur character varying(512),
  CONSTRAINT "ClassePrecisionReseau_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."ClassePrecisionReseau" (code, valeur) VALUES ('A', 'Un ouvrage ou tronçon d’ouvrage est rangé dans la classe A si l’incertitude maximale de localisation indiquée par son exploitant est inférieure ou égale à 40 cm et s’il est rigide, ou à 50 cm s’il est flexible (l’incertitude maximale est portée à 80 cm pour les ouvrages souterrains de génie civil attachés aux installations destinées à la circulation de véhicules de transport ferroviaire ou guidé lorsque ces ouvrages ont été construits antérieurement au 1er janvier 2011).');
INSERT INTO a_stardt."ClassePrecisionReseau" (code, valeur) VALUES ('B', 'Un ouvrage ou tronçon d’ouvrage est rangé dans la classe B si l’incertitude maximale de localisation indiquée par son exploitant est supérieure à celle relative à la classe A et inférieure ou égale à 1,5 mètre.');
INSERT INTO a_stardt."ClassePrecisionReseau" (code, valeur) VALUES ('C', 'Un ouvrage ou tronçon d’ouvrage est rangé dans la classe C si l’incertitude maximale de localisation indiquée par son exploitant est supérieure à 1,5 mètre, ou si son exploitant n''est pas en mesure de fournir de données de localisation.');

COMMENT ON TABLE a_stardt."ClassePrecisionReseau" IS
'Indication de la précision de la position géométrique de l’élément. Classement selon la définition de la règlementation DT-DICT.';


-- ---------------------------------
-- Classe : LeveTypeValue
-- ---------------------------------

-- Table: LeveTypeValue
--DROP TABLE if exists a_stardt."LeveTypeValue" cascade;
CREATE TABLE a_stardt."LeveTypeValue"
(
  code character varying(2) unique,
  valeur character varying(20),
  definition character varying(255),
  CONSTRAINT "LeveTypeValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."LeveTypeValue" (code, valeur, definition) VALUES ('01', 'ChargeGeneratrice', 'Charge à la génératrice');
INSERT INTO a_stardt."LeveTypeValue" (code, valeur, definition) VALUES ('02', 'AltitudeGeneratrice', 'Altitude à la génératrice');
INSERT INTO a_stardt."LeveTypeValue" (code, valeur, definition) VALUES ('03', 'AltitudeFluide', 'Altitude du fluide');

COMMENT ON TABLE a_stardt."LeveTypeValue" IS
'Code permettant de préciser quel type de levé a été effectué.';


-- ---------------------------------
-- Classe : ConditionOfFacilityValue
-- ---------------------------------

-- Table: ConditionOfFacilityValue
--DROP TABLE if exists a_stardt."ConditionOfFacilityValue" cascade;
CREATE TABLE a_stardt."ConditionOfFacilityValue"
(
  code character varying(2) unique,
  valeur character varying(21),
  definition character varying(255),
  CONSTRAINT "ConditionOfFacilityValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."ConditionOfFacilityValue" (code, valeur, definition) VALUES ('decommissionned', 'déclassé', 'Arrêt définitif d''exploitation si non enregistré au GU');
INSERT INTO a_stardt."ConditionOfFacilityValue" (code, valeur, definition) VALUES ('underConstruction', 'en cours de construction/modification', 'Modifications en cours sur le réseau/ouvrage');
INSERT INTO a_stardt."ConditionOfFacilityValue" (code, valeur, definition) VALUES ('projected', 'en projet', 'Modification ou une extension de l’ouvrage envisagée');
INSERT INTO a_stardt."ConditionOfFacilityValue" (code, valeur, definition) VALUES ('functional', 'opérationnel', 'Actif- Ouvrages ou tronçons d’ouvrages exploités');

COMMENT ON TABLE a_stardt."CategoriePlacementPCRSType" IS
'Code permettant de décrire le Statut de l’objet concernant son état et son usage.';


-- ---------------------------------
-- Classe : WarningTypeValue
-- ---------------------------------

-- Table: WarningTypeValue
--DROP TABLE if exists a_stardt."WarningTypeValue" cascade;
CREATE TABLE a_stardt."WarningTypeValue"
(
  code character varying(2) unique,
  valeur character varying(27),
  definition character varying(255),
  CONSTRAINT "WarningTypeValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."WarningTypeValue" (code, valeur, definition) VALUES ('00', 'unknown', 'inconnu');
INSERT INTO a_stardt."WarningTypeValue" (code, valeur, definition) VALUES ('01', 'net', 'filet');
INSERT INTO a_stardt."WarningTypeValue" (code, valeur, definition) VALUES ('02', 'tape', '');
INSERT INTO a_stardt."WarningTypeValue" (code, valeur, definition) VALUES ('03', 'concretePaving', '');

COMMENT ON TABLE a_stardt."WarningTypeValue" IS
'Code permettant de décrire .';


-- ---------------------------------
-- Classe : UtilityDeliveryTypeValue
-- ---------------------------------

-- Table: UtilityDeliveryTypeValue
--DROP TABLE if exists a_stardt."UtilityDeliveryTypeValue" cascade;
CREATE TABLE a_stardt."UtilityDeliveryTypeValue"
(
  code character varying(2) unique,
  valeur character varying(27),
  definition character varying(255),
  CONSTRAINT "UtilityDeliveryTypeValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."UtilityDeliveryTypeValue" (code, valeur, definition) VALUES ('00', 'collection', '');
INSERT INTO a_stardt."UtilityDeliveryTypeValue" (code, valeur, definition) VALUES ('01', 'distribution', '');
INSERT INTO a_stardt."UtilityDeliveryTypeValue" (code, valeur, definition) VALUES ('02', 'private', '');
INSERT INTO a_stardt."UtilityDeliveryTypeValue" (code, valeur, definition) VALUES ('03', 'transport', '');

COMMENT ON TABLE a_stardt."UtilityDeliveryTypeValue" IS
'Code permettant de décrire .';


-- ---------------------------------
-- Classe : HierarchieValue
-- ---------------------------------

-- Table: HierarchieValue
--DROP TABLE if exists a_stardt."HierarchieValue" cascade;
CREATE TABLE a_stardt."HierarchieValue"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "HierarchieValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."HierarchieValue" (code, valeur, definition) VALUES ('01', 'reseau', '');
INSERT INTO a_stardt."HierarchieValue" (code, valeur, definition) VALUES ('02', 'branchement', '');

COMMENT ON TABLE a_stardt."HierarchieValue" IS
'Code permettant de décrire la hiérarchie du tronçon dans le réseau.';


-- ---------------------------------
-- Classe : PipeMaterialTypeValue
-- ---------------------------------

-- Table: PipeMaterialTypeValue
--DROP TABLE if exists a_stardt."PipeMaterialTypeValue" cascade;
CREATE TABLE a_stardt."PipeMaterialTypeValue"
(
  code character varying(1) unique,
  valeur character varying(6),
  definition character varying(255),
  CONSTRAINT "PipeMaterialTypeValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."PipeMaterialTypeValue" (code, valeur, definition) VALUES ('', 'ABS', '');
INSERT INTO a_stardt."PipeMaterialTypeValue" (code, valeur, definition) VALUES ('', 'asbestos', '');
INSERT INTO a_stardt."PipeMaterialTypeValue" (code, valeur, definition) VALUES ('', 'blackIron', '');
INSERT INTO a_stardt."PipeMaterialTypeValue" (code, valeur, definition) VALUES ('', 'blackSteel', '');
INSERT INTO a_stardt."PipeMaterialTypeValue" (code, valeur, definition) VALUES ('', 'castIron', '');
INSERT INTO a_stardt."PipeMaterialTypeValue" (code, valeur, definition) VALUES ('', 'clay', '');
INSERT INTO a_stardt."PipeMaterialTypeValue" (code, valeur, definition) VALUES ('', 'compositeConcrete', '');
INSERT INTO a_stardt."PipeMaterialTypeValue" (code, valeur, definition) VALUES ('', 'concrete', '');
INSERT INTO a_stardt."PipeMaterialTypeValue" (code, valeur, definition) VALUES ('', 'CPVC', '');
INSERT INTO a_stardt."PipeMaterialTypeValue" (code, valeur, definition) VALUES ('', 'FRP', '');
INSERT INTO a_stardt."PipeMaterialTypeValue" (code, valeur, definition) VALUES ('', 'galvanizedSteel', '');
INSERT INTO a_stardt."PipeMaterialTypeValue" (code, valeur, definition) VALUES ('', 'masonry', '');
INSERT INTO a_stardt."PipeMaterialTypeValue" (code, valeur, definition) VALUES ('', 'other', '');
INSERT INTO a_stardt."PipeMaterialTypeValue" (code, valeur, definition) VALUES ('', 'PB', '');
INSERT INTO a_stardt."PipeMaterialTypeValue" (code, valeur, definition) VALUES ('', 'PE', '');
INSERT INTO a_stardt."PipeMaterialTypeValue" (code, valeur, definition) VALUES ('', 'PEX', '');
INSERT INTO a_stardt."PipeMaterialTypeValue" (code, valeur, definition) VALUES ('', 'PP', '');
INSERT INTO a_stardt."PipeMaterialTypeValue" (code, valeur, definition) VALUES ('', 'prestressedReinforcedConcrete', '');
INSERT INTO a_stardt."PipeMaterialTypeValue" (code, valeur, definition) VALUES ('', 'PVC', '');
INSERT INTO a_stardt."PipeMaterialTypeValue" (code, valeur, definition) VALUES ('', 'reinforcedConcrete', '');
INSERT INTO a_stardt."PipeMaterialTypeValue" (code, valeur, definition) VALUES ('', 'RPMP', '');
INSERT INTO a_stardt."PipeMaterialTypeValue" (code, valeur, definition) VALUES ('', 'steel', '');
INSERT INTO a_stardt."PipeMaterialTypeValue" (code, valeur, definition) VALUES ('', 'terracota', '');
INSERT INTO a_stardt."PipeMaterialTypeValue" (code, valeur, definition) VALUES ('', 'wood', '');


COMMENT ON TABLE a_stardt."PipeMaterialTypeValue" IS
'Code permettant de décrire le matériau du tronçon.';


-- ---------------------------------
-- Classe : TelecomCableTechnoValue
-- ---------------------------------

-- Table: TelecomCableTechnoValue
--DROP TABLE if exists a_stardt."TelecomCableTechnoValue" cascade;
CREATE TABLE a_stardt."TelecomCableTechnoValue"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "TelecomCableTechnoValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."TelecomCableTechnoValue" (code, valeur, definition) VALUES ('01', 'cuivre', '');
INSERT INTO a_stardt."TelecomCableTechnoValue" (code, valeur, definition) VALUES ('02', 'fibre', '');

COMMENT ON TABLE a_stardt."TelecomCableTechnoValue" IS
'Code permettant de décrire .';


-- ---------------------------------
-- Classe : RegimeValue
-- ---------------------------------

-- Table: RegimeValue
--DROP TABLE if exists a_stardt."RegimeValue" cascade;
CREATE TABLE a_stardt."RegimeValue"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "RegimeValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."HierarchieValue" (code, valeur, definition) VALUES ('01', 'monophase', '');
INSERT INTO a_stardt."HierarchieValue" (code, valeur, definition) VALUES ('02', 'triphase', '');
INSERT INTO a_stardt."HierarchieValue" (code, valeur, definition) VALUES ('03', 'continu', '');

COMMENT ON TABLE a_stardt."HierarchieValue" IS
'Code permettant de décrire .';

-- ---------------------------------
-- Classe : FonctionCableElectriqueValue
-- ---------------------------------

-- Table: FonctionCableElectriqueValue
--DROP TABLE if exists a_stardt."FonctionCableElectriqueValue" cascade;
CREATE TABLE a_stardt."FonctionCableElectriqueValue"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "FonctionCableElectriqueValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."FonctionCableElectriqueValue" (code, valeur, definition) VALUES ('01', 'transportEnergie', '');
INSERT INTO a_stardt."FonctionCableElectriqueValue" (code, valeur, definition) VALUES ('02', 'distributionEnergie', '');
INSERT INTO a_stardt."FonctionCableElectriqueValue" (code, valeur, definition) VALUES ('03', 'protectionCathodique', '');
INSERT INTO a_stardt."FonctionCableElectriqueValue" (code, valeur, definition) VALUES ('04', 'miseTerre', '');
INSERT INTO a_stardt."FonctionCableElectriqueValue" (code, valeur, definition) VALUES ('00', 'autre', '');

COMMENT ON TABLE a_stardt."FonctionCableElectriqueValue" IS
'Code permettant de décrire .';



-- ---------------------------------
-- Classe : ClasseTensionValue
-- ---------------------------------

-- Table: ClasseTensionValue
--DROP TABLE if exists a_stardt."ClasseTensionValue" cascade;
CREATE TABLE a_stardt."ClasseTensionValue"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "ClasseTensionValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."ClasseTensionValue" (code, valeur, definition) VALUES ('01', 'TBT', '');
INSERT INTO a_stardt."ClasseTensionValue" (code, valeur, definition) VALUES ('02', 'BT', '');
INSERT INTO a_stardt."ClasseTensionValue" (code, valeur, definition) VALUES ('03', 'HTA', '');
INSERT INTO a_stardt."ClasseTensionValue" (code, valeur, definition) VALUES ('04', 'HTB', '');

COMMENT ON TABLE a_stardt."ClasseTensionValue" IS
'Code permettant de décrire .';


-- ---------------------------------
-- Classe : ClasseTemperatureValue
-- ---------------------------------

-- Table: ClasseTemperatureValue
--DROP TABLE if exists a_stardt."ClasseTemperatureValue" cascade;
CREATE TABLE a_stardt."ClasseTemperatureValue"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "ClasseTemperatureValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."ClasseTemperatureValue" (code, valeur, definition) VALUES ('01', 'inf110', '');
INSERT INTO a_stardt."ClasseTemperatureValue" (code, valeur, definition) VALUES ('02', '110a180', '');
INSERT INTO a_stardt."ClasseTemperatureValue" (code, valeur, definition) VALUES ('03', 'plus180', '');

COMMENT ON TABLE a_stardt."ClasseTemperatureValue" IS
'Code permettant de décrire .';


-- ---------------------------------
-- Classe : TypeEcoulementValue
-- ---------------------------------

-- Table: TypeEcoulementValue
--DROP TABLE if exists a_stardt."TypeEcoulementValue" cascade;
CREATE TABLE a_stardt."TypeEcoulementValue"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "TypeEcoulementValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."TypeEcoulementValue" (code, valeur, definition) VALUES ('01', 'sousPression', '');
INSERT INTO a_stardt."TypeEcoulementValue" (code, valeur, definition) VALUES ('02', 'gravitaireSurfaceLibre', '');

COMMENT ON TABLE a_stardt."TypeEcoulementValue" IS
'Code permettant de décrire .';


-- ---------------------------------
-- Classe : OilGasChemicalsProductTypeValue
-- ---------------------------------

-- Table: OilGasChemicalsProductTypeValue
--DROP TABLE if exists a_stardt."OilGasChemicalsProductTypeValue" cascade;
CREATE TABLE a_stardt."OilGasChemicalsProductTypeValue"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "OilGasChemicalsProductTypeValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'liquefiedNaturalGas', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'methane', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'naturalGas', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'naturalGasAndTetrahydrothiophene', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'nitrogenGas', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'residualGas', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'accetone', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'air', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'argon', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'butadiene', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'butadiene1,3', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'butane', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'c3', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'carbonMonoxide', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'chlorine', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'compressedAir', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'crude', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'dichloroethane', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'diesel', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'ethylene', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'gasFabricationOfCocs', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'gasHFx', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'gasoil', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'hydrogen', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'isobutane', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'JET-A1', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'kerosene', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'liquidAmmonia', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'liquidHydrocarbon', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'multiProduct', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'MVC', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'nitrogen', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'oxygen', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'phenol', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'propane', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'propyleen', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'propylene', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'raffinate', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'refineryProducts', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'saltWater', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'saumur', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'tetrachloroethane', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'unknown', '');
INSERT INTO a_stardt."OilGasChemicalsProductTypeValue" (code, valeur, definition) VALUES ('', 'empty', '');


COMMENT ON TABLE a_stardt."OilGasChemicalsProductTypeValue" IS
'Code permettant de décrire .';


-- ---------------------------------
-- Classe : SewerWaterTypeValue
-- ---------------------------------

-- Table: SewerWaterTypeValue
--DROP TABLE if exists a_stardt."SewerWaterTypeValue" cascade;
CREATE TABLE a_stardt."SewerWaterTypeValue"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "SewerWaterTypeValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."SewerWaterTypeValue" (code, valeur, definition) VALUES ('01', 'combined', '');
INSERT INTO a_stardt."SewerWaterTypeValue" (code, valeur, definition) VALUES ('02', 'reclaimed', '');
INSERT INTO a_stardt."SewerWaterTypeValue" (code, valeur, definition) VALUES ('03', 'sanitary', '');
INSERT INTO a_stardt."SewerWaterTypeValue" (code, valeur, definition) VALUES ('04', 'storm', '');

COMMENT ON TABLE a_stardt."SewerWaterTypeValue" IS
'Code permettant de décrire .';


-- ---------------------------------
-- Classe : WaterTypeValue
-- ---------------------------------

-- Table: WaterTypeValue
--DROP TABLE if exists a_stardt."WaterTypeValue" cascade;
CREATE TABLE a_stardt."WaterTypeValue"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "WaterTypeValue" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."WaterTypeValue" (code, valeur, definition) VALUES ('01', 'potable', '');
INSERT INTO a_stardt."WaterTypeValue" (code, valeur, definition) VALUES ('02', 'raw', '');
INSERT INTO a_stardt."WaterTypeValue" (code, valeur, definition) VALUES ('03', 'salt', '');
INSERT INTO a_stardt."WaterTypeValue" (code, valeur, definition) VALUES ('04', 'treated', '');

COMMENT ON TABLE a_stardt."WaterTypeValue" IS
'Code permettant de décrire .';


-- ---------------------------------
-- Classe : ThermalProductTypeValue
-- ---------------------------------

-- Table: ThermalProductTypeValue
--DROP TABLE if exists a_stardt."ThermalProductTypeValue" cascade;
CREATE TABLE a_stardt."ThermalProductTypeValue"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "ThermalProductTypeValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."ThermalProductTypeValue" (code, valeur, definition) VALUES ('01', '', '');
INSERT INTO a_stardt."ThermalProductTypeValue" (code, valeur, definition) VALUES ('02', '', '');
INSERT INTO a_stardt."ThermalProductTypeValue" (code, valeur, definition) VALUES ('03', '', '');
INSERT INTO a_stardt."ThermalProductTypeValue" (code, valeur, definition) VALUES ('04', '', '');

COMMENT ON TABLE a_stardt."ThermalProductTypeValue" IS
'Code permettant de décrire .';


-- ---------------------------------
-- Classe : TypeOuvragePINSValue
-- ---------------------------------

-- Table: TypeOuvragePINSValue
--DROP TABLE if exists a_stardt."TypeOuvragePINSValue" cascade;
CREATE TABLE a_stardt."TypeOuvragePINSValue"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "TypeOuvragePINSValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."TypeOuvragePINSValue" (code, valeur, definition) VALUES ('01', 'batardeaux', '');
INSERT INTO a_stardt."TypeOuvragePINSValue" (code, valeur, definition) VALUES ('02', 'muret', '');
INSERT INTO a_stardt."TypeOuvragePINSValue" (code, valeur, definition) VALUES ('03', 'drainage', '');
INSERT INTO a_stardt."TypeOuvragePINSValue" (code, valeur, definition) VALUES ('04', 'perret', '');
INSERT INTO a_stardt."TypeOuvragePINSValue" (code, valeur, definition) VALUES ('99', 'autre', '');

COMMENT ON TABLE a_stardt."TypeOuvragePINSValue" IS
'Code permettant de décrire .';


-- ---------------------------------
-- Classe : MateriauOuvragePINSValue
-- ---------------------------------

-- Table: MateriauOuvragePINSValue
--DROP TABLE if exists a_stardt."MateriauOuvragePINSValue" cascade;
CREATE TABLE a_stardt."MateriauOuvragePINSValue"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "MateriauOuvragePINSValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."MateriauOuvragePINSValue" (code, valeur, definition) VALUES ('01', 'remblais', '');
INSERT INTO a_stardt."MateriauOuvragePINSValue" (code, valeur, definition) VALUES ('02', 'palplanches', '');
INSERT INTO a_stardt."MateriauOuvragePINSValue" (code, valeur, definition) VALUES ('03', 'gabion', '');
INSERT INTO a_stardt."MateriauOuvragePINSValue" (code, valeur, definition) VALUES ('04', 'enrochement', '');
INSERT INTO a_stardt."MateriauOuvragePINSValue" (code, valeur, definition) VALUES ('99', 'autre', '');

COMMENT ON TABLE a_stardt."MateriauOuvragePINSValue" IS
'Code permettant de décrire .';



-- ---------------------------------
-- Classe : StructureOuvragePISValue
-- ---------------------------------

-- Table: StructureOuvragePISValue
--DROP TABLE if exists a_stardt."StructureOuvragePISValue" cascade;
CREATE TABLE a_stardt."StructureOuvragePISValue"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "StructureOuvragePISValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."StructureOuvragePISValue" (code, valeur, definition) VALUES ('01', 'remblais', '');
INSERT INTO a_stardt."StructureOuvragePISValue" (code, valeur, definition) VALUES ('02', 'genie-civil', '');
INSERT INTO a_stardt."StructureOuvragePISValue" (code, valeur, definition) VALUES ('99', 'autre', '');

COMMENT ON TABLE a_stardt."StructureOuvragePISValue" IS
'Code permettant de décrire .';



-- ---------------------------------
-- Classe : ProtectionPINSValue
-- ---------------------------------

-- Table: ProtectionPINSValue
--DROP TABLE if exists a_stardt."ProtectionPINSValue" cascade;
CREATE TABLE a_stardt."ProtectionPINSValue"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "ProtectionPINSValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."ProtectionPINSValue" (code, valeur, definition) VALUES ('01', 'geotextile', '');
INSERT INTO a_stardt."ProtectionPINSValue" (code, valeur, definition) VALUES ('02', '', '');
INSERT INTO a_stardt."ProtectionPINSValue" (code, valeur, definition) VALUES ('99', 'autre', '');

COMMENT ON TABLE a_stardt."ProtectionPINSValue" IS
'Code permettant de décrire .';


-- ---------------------------------
-- Classe : TypeAccessoireValue
-- ---------------------------------

-- Table: TypeAccessoireValue
--DROP TABLE if exists a_stardt."TypeAccessoireValue" cascade;
CREATE TABLE a_stardt."TypeAccessoireValue"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "TypeAccessoireValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."TypeAccessoireValue" (code, valeur, definition) VALUES ('01', '', '');
INSERT INTO a_stardt."TypeAccessoireValue" (code, valeur, definition) VALUES ('02', '', '');
INSERT INTO a_stardt."TypeAccessoireValue" (code, valeur, definition) VALUES ('99', '', '');

COMMENT ON TABLE a_stardt."TypeAccessoireValue" IS
'Code permettant de décrire .';

-- ---------------------------------
-- Classe : OilGasChemicalAppurtenanceTypeValue
-- ---------------------------------

-- Table: OilGasChemicalAppurtenanceTypeValue
--DROP TABLE if exists a_stardt."OilGasChemicalAppurtenanceTypeValue" cascade;
CREATE TABLE a_stardt."OilGasChemicalAppurtenanceTypeValue"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "OilGasChemicalAppurtenanceTypeValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."OilGasChemicalAppurtenanceTypeValue" (code, valeur, definition) VALUES ('01', 'pump', '');
INSERT INTO a_stardt."OilGasChemicalAppurtenanceTypeValue" (code, valeur, definition) VALUES ('02', 'gasStation', '');
INSERT INTO a_stardt."OilGasChemicalAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'oilGasChemicalsNode', '');
INSERT INTO a_stardt."OilGasChemicalAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'compression', '');
INSERT INTO a_stardt."OilGasChemicalAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'terminal', '');
INSERT INTO a_stardt."OilGasChemicalAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'deliveryPoint', '');
INSERT INTO a_stardt."OilGasChemicalAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'frontier', '');
INSERT INTO a_stardt."OilGasChemicalAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'marker', '');
INSERT INTO a_stardt."OilGasChemicalAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'beacon', '');
INSERT INTO a_stardt."OilGasChemicalAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'productionRegion', '');
INSERT INTO a_stardt."OilGasChemicalAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'plant', '');
INSERT INTO a_stardt."OilGasChemicalAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'storage', '');
INSERT INTO a_stardt."OilGasChemicalAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'valve', '');

COMMENT ON TABLE a_stardt."OilGasChemicalAppurtenanceTypeValue" IS
'Code permettant de décrire .';


-- ---------------------------------
-- Classe : SewerAppurtenanceTypeValue
-- ---------------------------------

-- Table: SewerAppurtenanceTypeValue
--DROP TABLE if exists a_stardt."SewerAppurtenanceTypeValue" cascade;
CREATE TABLE a_stardt."SewerAppurtenanceTypeValue"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "SewerAppurtenanceTypeValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."SewerAppurtenanceTypeValue" (code, valeur, definition) VALUES ('01', 'anode', '');
INSERT INTO a_stardt."SewerAppurtenanceTypeValue" (code, valeur, definition) VALUES ('02', 'barrel', '');
INSERT INTO a_stardt."SewerAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'barScreen', '');
INSERT INTO a_stardt."SewerAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'catchBasin', '');
INSERT INTO a_stardt."SewerAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'cleanOut', '');
INSERT INTO a_stardt."SewerAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'dischargeStructure', '');
INSERT INTO a_stardt."SewerAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'meter', '');
INSERT INTO a_stardt."SewerAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'pump', '');
INSERT INTO a_stardt."SewerAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'regulator', '');
INSERT INTO a_stardt."SewerAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'scadaSensor', '');
INSERT INTO a_stardt."SewerAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'thrustProtection', '');
INSERT INTO a_stardt."SewerAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'tideGate', '');
INSERT INTO a_stardt."SewerAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'sewerNode', '');
INSERT INTO a_stardt."SewerAppurtenanceTypeValue" (code, valeur, definition) VALUES ('01', 'connection', '');
INSERT INTO a_stardt."SewerAppurtenanceTypeValue" (code, valeur, definition) VALUES ('02', 'specificStructure', '');
INSERT INTO a_stardt."SewerAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'mechanicAndElectromechanicEquipment', '');
INSERT INTO a_stardt."SewerAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'rainwaterCollector', '');
INSERT INTO a_stardt."SewerAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'watertankOrChamber', '');
INSERT INTO a_stardt."SewerAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'valve', '');
INSERT INTO a_stardt."SewerAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'autre', '');

COMMENT ON TABLE a_stardt."SewerAppurtenanceTypeValue" IS
'Code permettant de décrire .';


-- ---------------------------------
-- Classe : WaterAppurtenanceTypeValue
-- ---------------------------------

-- Table: WaterAppurtenanceTypeValue
--DROP TABLE if exists a_stardt."WaterAppurtenanceTypeValue" cascade;
CREATE TABLE a_stardt."WaterAppurtenanceTypeValue"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "WaterAppurtenanceTypeValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."WaterAppurtenanceTypeValue" (code, valeur, definition) VALUES ('01', 'anode', '');
INSERT INTO a_stardt."WaterAppurtenanceTypeValue" (code, valeur, definition) VALUES ('02', 'clearWell', '');
INSERT INTO a_stardt."WaterAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'controlValve', '');
INSERT INTO a_stardt."WaterAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'fitting', '');
INSERT INTO a_stardt."WaterAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'hydrant', '');
INSERT INTO a_stardt."WaterAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'junction', '');
INSERT INTO a_stardt."WaterAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'lateralPoint', '');
INSERT INTO a_stardt."WaterAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'meter', '');
INSERT INTO a_stardt."WaterAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'pump', '');
INSERT INTO a_stardt."WaterAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'pumpStation', '');
INSERT INTO a_stardt."WaterAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'samplingStation', '');
INSERT INTO a_stardt."WaterAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'scadaSensor', '');
INSERT INTO a_stardt."WaterAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'storageBasin', '');
INSERT INTO a_stardt."WaterAppurtenanceTypeValue" (code, valeur, definition) VALUES ('01', 'storageFacility', '');
INSERT INTO a_stardt."WaterAppurtenanceTypeValue" (code, valeur, definition) VALUES ('02', 'surgeReliefTank', '');
INSERT INTO a_stardt."WaterAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'systemValve', '');
INSERT INTO a_stardt."WaterAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'thrustProtection', '');
INSERT INTO a_stardt."WaterAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'treatmentPlant', '');
INSERT INTO a_stardt."WaterAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'well', '');
INSERT INTO a_stardt."WaterAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'pressureRelieveValve', '');
INSERT INTO a_stardt."WaterAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'airRelieveValve', '');
INSERT INTO a_stardt."WaterAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'checkValve', '');
INSERT INTO a_stardt."WaterAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'waterExhaustPoint', '');
INSERT INTO a_stardt."WaterAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'waterServicePoint', '');
INSERT INTO a_stardt."WaterAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'fountain', '');
INSERT INTO a_stardt."WaterAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'pressureController', '');
INSERT INTO a_stardt."WaterAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'vent', '');
INSERT INTO a_stardt."WaterAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'recoilCheckValve', '');
INSERT INTO a_stardt."WaterAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'fireHydrant', '');
INSERT INTO a_stardt."WaterAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'waterDischargePoint', '');

COMMENT ON TABLE a_stardt."WaterAppurtenanceTypeValue" IS
'Code permettant de décrire .';


-- ---------------------------------
-- Classe : ThermalAppurtenanceTypeValue
-- ---------------------------------

-- Table: ThermalAppurtenanceTypeValue
--DROP TABLE if exists a_stardt."ThermalAppurtenanceTypeValue" cascade;
CREATE TABLE a_stardt."ThermalAppurtenanceTypeValue"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "ThermalAppurtenanceTypeValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."ThermalAppurtenanceTypeValue" (code, valeur, definition) VALUES ('01', 'valve', '');

COMMENT ON TABLE a_stardt."ThermalAppurtenanceTypeValue" IS
'Code permettant de décrire .';


-- ---------------------------------
-- Classe : ElectricityAppurtenanceTypeValue
-- ---------------------------------

-- Table: ElectricityAppurtenanceTypeValue
--DROP TABLE if exists a_stardt."ElectricityAppurtenanceTypeValue" cascade;
CREATE TABLE a_stardt."ElectricityAppurtenanceTypeValue"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "ElectricityAppurtenanceTypeValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."ElectricityAppurtenanceTypeValue" (code, valeur, definition) VALUES ('01', 'capacitorControl', '');
INSERT INTO a_stardt."ElectricityAppurtenanceTypeValue" (code, valeur, definition) VALUES ('02', 'connectionBox', '');
INSERT INTO a_stardt."ElectricityAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'correctingEquipment', '');
INSERT INTO a_stardt."ElectricityAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'deliveryPoint', '');
INSERT INTO a_stardt."ElectricityAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'dynamicProtectiveDevice', '');
INSERT INTO a_stardt."ElectricityAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'fuse', '');
INSERT INTO a_stardt."ElectricityAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'generator', '');
INSERT INTO a_stardt."ElectricityAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'loadTapChanger', '');
INSERT INTO a_stardt."ElectricityAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'mainStation', '');
INSERT INTO a_stardt."ElectricityAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'netStation', '');
INSERT INTO a_stardt."ElectricityAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'networkProtector', '');
INSERT INTO a_stardt."ElectricityAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'openPoint', '');
INSERT INTO a_stardt."ElectricityAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'primaryMeter', '');
INSERT INTO a_stardt."ElectricityAppurtenanceTypeValue" (code, valeur, definition) VALUES ('01', 'recloserElectronicControl', '');
INSERT INTO a_stardt."ElectricityAppurtenanceTypeValue" (code, valeur, definition) VALUES ('02', 'recloserHydraulicControl', '');
INSERT INTO a_stardt."ElectricityAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'regulatorControl', '');
INSERT INTO a_stardt."ElectricityAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'relayControl', '');
INSERT INTO a_stardt."ElectricityAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'sectionalizerElectronicControl', '');
INSERT INTO a_stardt."ElectricityAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'sectionalizerHydraulicControl', '');
INSERT INTO a_stardt."ElectricityAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'streetLight', '');
INSERT INTO a_stardt."ElectricityAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'subStation', '');
INSERT INTO a_stardt."ElectricityAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'switch', '');
INSERT INTO a_stardt."ElectricityAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'transformer', '');
INSERT INTO a_stardt."ElectricityAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'voltageRegulator', '');
INSERT INTO a_stardt."ElectricityAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'detectionEquipment', '');
INSERT INTO a_stardt."ElectricityAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'monitoringAndControlEquipment', '');
INSERT INTO a_stardt."ElectricityAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'ras', '');
INSERT INTO a_stardt."ElectricityAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'junctionBox', '');

COMMENT ON TABLE a_stardt."ElectricityAppurtenanceTypeValue" IS
'Code permettant de décrire .';


-- ---------------------------------
-- Classe : TelecommunicationsAppurtenanceTypeValue
-- ---------------------------------

-- Table: TelecommunicationsAppurtenanceTypeValue
--DROP TABLE if exists a_stardt."TelecommunicationsAppurtenanceTypeValue" cascade;
CREATE TABLE a_stardt."TelecommunicationsAppurtenanceTypeValue"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "TelecommunicationsAppurtenanceTypeValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."TelecommunicationsAppurtenanceTypeValue" (code, valeur, definition) VALUES ('01', 'antenna', '');
INSERT INTO a_stardt."TelecommunicationsAppurtenanceTypeValue" (code, valeur, definition) VALUES ('02', 'copperMaintenanceLoop', '');
INSERT INTO a_stardt."TelecommunicationsAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'copperRepeater', '');
INSERT INTO a_stardt."TelecommunicationsAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'digitalCrossConnect', '');
INSERT INTO a_stardt."TelecommunicationsAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'digitalLoopCarrier', '');
INSERT INTO a_stardt."TelecommunicationsAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'exchange', '');
INSERT INTO a_stardt."TelecommunicationsAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'fiberInterconnect', '');
INSERT INTO a_stardt."TelecommunicationsAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'jointClosure', '');
INSERT INTO a_stardt."TelecommunicationsAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'loadCoil', '');
INSERT INTO a_stardt."TelecommunicationsAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'mainDistributionFrame', '');
INSERT INTO a_stardt."TelecommunicationsAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'multiplexer', '');
INSERT INTO a_stardt."TelecommunicationsAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'opticalMaintenanceLoop', '');
INSERT INTO a_stardt."TelecommunicationsAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'opticalRepeater', '');
INSERT INTO a_stardt."TelecommunicationsAppurtenanceTypeValue" (code, valeur, definition) VALUES ('01', 'patchPanel', '');
INSERT INTO a_stardt."TelecommunicationsAppurtenanceTypeValue" (code, valeur, definition) VALUES ('02', 'spliceClosure', '');
INSERT INTO a_stardt."TelecommunicationsAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'splitter', '');
INSERT INTO a_stardt."TelecommunicationsAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'terminal', '');
INSERT INTO a_stardt."TelecommunicationsAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'termination', '');
INSERT INTO a_stardt."TelecommunicationsAppurtenanceTypeValue" (code, valeur, definition) VALUES ('99', 'noticeBoard', '');

COMMENT ON TABLE a_stardt."TelecommunicationsAppurtenanceTypeValue" IS
'Code permettant de décrire .';


-- ---------------------------------
-- Classe : TypeInfoSupplemenataireValue
-- ---------------------------------

-- Table: TypeInfoSupplemenataireValue
--DROP TABLE if exists a_stardt."TypeInfoSupplemenataireValue" cascade;
CREATE TABLE a_stardt."TypeInfoSupplemenataireValue"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "TypeInfoSupplemenataireValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."TypeInfoSupplemenataireValue" (code, valeur, definition) VALUES ('01', 'autre', '');
INSERT INTO a_stardt."TypeInfoSupplemenataireValue" (code, valeur, definition) VALUES ('02', 'croquisProfil', '');
INSERT INTO a_stardt."TypeInfoSupplemenataireValue" (code, valeur, definition) VALUES ('99', 'coupeTranchée', '');
INSERT INTO a_stardt."TypeInfoSupplemenataireValue" (code, valeur, definition) VALUES ('99', 'encartDétail', '');

COMMENT ON TABLE a_stardt."TypeInfoSupplemenataireValue" IS
'Code permettant de décrire .';


-- ---------------------------------
-- Classe : TypeFichierValue
-- ---------------------------------

-- Table: TypeFichierValue
--DROP TABLE if exists a_stardt."TypeFichierValue" cascade;
CREATE TABLE a_stardt."TypeFichierValue"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "TypeFichierValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."TypeFichierValue" (code, valeur, definition) VALUES ('01', 'PNG', '');
INSERT INTO a_stardt."TypeFichierValue" (code, valeur, definition) VALUES ('02', 'PDF', '');
INSERT INTO a_stardt."TypeFichierValue" (code, valeur, definition) VALUES ('99', 'JPEG', '');
INSERT INTO a_stardt."TypeFichierValue" (code, valeur, definition) VALUES ('99', 'TIFF', '');
INSERT INTO a_stardt."TypeFichierValue" (code, valeur, definition) VALUES ('99', 'DXF', '');
INSERT INTO a_stardt."TypeFichierValue" (code, valeur, definition) VALUES ('99', 'DWG', '');
INSERT INTO a_stardt."TypeFichierValue" (code, valeur, definition) VALUES ('99', 'DGN', '');

COMMENT ON TABLE a_stardt."TypeFichierValue" IS
'Code permettant de décrire .';


-- ---------------------------------
-- Classe : TypeCoteValue
-- ---------------------------------

-- Table: TypeCoteValue
--DROP TABLE if exists a_stardt."TypeCoteValue" cascade;
CREATE TABLE a_stardt."TypeCoteValue"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "TypeCoteValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."TypeCoteValue" (code, valeur, definition) VALUES ('01', 'ligne', '');
INSERT INTO a_stardt."TypeCoteValue" (code, valeur, definition) VALUES ('02', 'etiquette', '');
INSERT INTO a_stardt."TypeCoteValue" (code, valeur, definition) VALUES ('99', 'flèche', '');
INSERT INTO a_stardt."TypeCoteValue" (code, valeur, definition) VALUES ('99', 'ligneAttache', '');


COMMENT ON TABLE a_stardt."TypeCoteValue" IS
'Code permettant de décrire .';


-- ---------------------------------
-- Classe : AnnotationTypeValue
-- ---------------------------------

-- Table: AnnotationTypeValue
--DROP TABLE if exists a_stardt."AnnotationTypeValue" cascade;
CREATE TABLE a_stardt."AnnotationTypeValue"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "AnnotationTypeValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."AnnotationTypeValue" (code, valeur, definition) VALUES ('01', 'repere', '');
INSERT INTO a_stardt."AnnotationTypeValue" (code, valeur, definition) VALUES ('02', 'fleche', '');
INSERT INTO a_stardt."AnnotationTypeValue" (code, valeur, definition) VALUES ('99', 'ligne', '');
INSERT INTO a_stardt."AnnotationTypeValue" (code, valeur, definition) VALUES ('99', 'etiquette', '');


COMMENT ON TABLE a_stardt."AnnotationTypeValue" IS
'Code permettant de décrire .';


-- ---------------------------------
-- Classe : PositionLabelValue
-- ---------------------------------

-- Table: PositionLabelValue
--DROP TABLE if exists a_stardt."PositionLabelValue" cascade;
CREATE TABLE a_stardt."PositionLabelValue"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "PositionLabelValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."PositionLabelValue" (code, valeur, definition) VALUES ('01', '0', '');
INSERT INTO a_stardt."PositionLabelValue" (code, valeur, definition) VALUES ('02', '0.5', '');
INSERT INTO a_stardt."PositionLabelValue" (code, valeur, definition) VALUES ('99', '1', '');


COMMENT ON TABLE a_stardt."PositionLabelValue" IS
'Code permettant de décrire .';


-- ---------------------------------
-- Classe : TypeParticulariteValue
-- ---------------------------------

-- Table: TypeParticulariteValue
--DROP TABLE if exists a_stardt."TypeParticulariteValue" cascade;
CREATE TABLE a_stardt."TypeParticulariteValue"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "TypeParticulariteValue_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."TypeParticulariteValue" (code, valeur, definition) VALUES ('01', 'autre', '');
INSERT INTO a_stardt."TypeParticulariteValue" (code, valeur, definition) VALUES ('02', 'zoneProjet', '');
INSERT INTO a_stardt."TypeParticulariteValue" (code, valeur, definition) VALUES ('99', 'zoneExemptionIC', '');
INSERT INTO a_stardt."TypeParticulariteValue" (code, valeur, definition) VALUES ('99', 'zoneNonCouverte', '');

COMMENT ON TABLE a_stardt."TypeParticulariteValue" IS
'Code permettant de décrire .';




-- ---------------------------------
-- Classe : CodeCouleurNormePCRS17Type
-- ---------------------------------

-- Table: CodeCouleurNormePCRS17Type
-- DROP TABLE if exists a_stardt."CodeCouleurNormePCRS17Type" cascade;
CREATE TABLE a_stardt."CodeCouleurNormePCRS17Type"
(
  code character varying(6) unique,
  valeur character varying(11),
  definition character varying(255),
  CONSTRAINT "CodeCouleurNormePCRS17Type_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."CodeCouleurNormePCRS17Type" (code, valeur, definition) VALUES ('Rouge', '255,0,0', 'Electricité BT, HTA ou HTB, éclairage, signalisation routière et feux tricolores');
INSERT INTO a_stardt."CodeCouleurNormePCRS17Type" (code, valeur, definition) VALUES ('Jaune', '255,255,0', 'Gaz combustible (transport ou distribution) et Hydrocarbures');
INSERT INTO a_stardt."CodeCouleurNormePCRS17Type" (code, valeur, definition) VALUES ('Orange', '255,100,0', 'Produits chimiques');
INSERT INTO a_stardt."CodeCouleurNormePCRS17Type" (code, valeur, definition) VALUES ('Bleu', '0,0,255', 'Eau potable');
INSERT INTO a_stardt."CodeCouleurNormePCRS17Type" (code, valeur, definition) VALUES ('Marron', '125,73,0', 'Assainissement et Pluvial');
INSERT INTO a_stardt."CodeCouleurNormePCRS17Type" (code, valeur, definition) VALUES ('Violet', '100,0,100', 'Chauffage et Climatisation');
INSERT INTO a_stardt."CodeCouleurNormePCRS17Type" (code, valeur, definition) VALUES ('Vert', '0,255,0', 'Communications électroniques et électricité TBT');
INSERT INTO a_stardt."CodeCouleurNormePCRS17Type" (code, valeur, definition) VALUES ('Rose', '255,0,139', 'Emprise multi-réseaux');
INSERT INTO a_stardt."CodeCouleurNormePCRS17Type" (code, valeur, definition) VALUES ('Blanc', '255,255,255', 'Non-défini');
INSERT INTO a_stardt."CodeCouleurNormePCRS17Type" (code, valeur, definition) VALUES ('None', '130,130,130', 'Non-défini');

COMMENT ON TABLE a_stardt."CodeCouleurNormePCRS17Type" IS
'Code permettant de décrire la couleur associée à une nature de réseau. cf norme NF P 98-332';


-- ---------------------------------
-- Classe : NatureReseauPCRS17Type
-- ---------------------------------

-- Table: NatureReseauPCRS17Type
--DROP TABLE if exists a_stardt."NatureReseauPCRS17Type" cascade;
CREATE TABLE a_stardt."NatureReseauPCRS17Type"
(
  code character varying(8) unique,
  valeur character varying(33),
  "valeurCouleurRepresentation" character varying(11),
  "codeCouleurNorme" character varying(6) REFERENCES a_stardt."CodeCouleurNormePCRS17Type" (code),
  CONSTRAINT "NatureReseauPCRS17Type_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('00', 'Non défini', '130,130,130', 'None');
INSERT INTO a_stardt."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('ELEC', 'Electricité', '255,0,0', 'Rouge');
INSERT INTO a_stardt."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('ELECECL', 'Eclairage public', '255,0,0', 'Rouge');
INSERT INTO a_stardt."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('ELECSLT', 'Signalisation lumineuse tricolore', '255,0,0', 'Blanc');
INSERT INTO a_stardt."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('ELECBT', 'Electricité basse tension', '255,0,0', 'Rouge');
INSERT INTO a_stardt."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('ELECHT', 'Electricité haute tension', '255,0,0', 'Rouge');
INSERT INTO a_stardt."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('GAZ', 'Gaz', '255,255,0', 'Jaune');
INSERT INTO a_stardt."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('MULT', 'Multi réseaux', '255,0,139', 'Rose');
INSERT INTO a_stardt."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('CHIM', 'Produits chimiques', '255,100,0', 'Orange');
INSERT INTO a_stardt."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('COM', 'Télécom', '0,255,0', 'Vert');
INSERT INTO a_stardt."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('AEP', 'Eau Potable', '0,0,255', 'Bleu');
INSERT INTO a_stardt."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('ASSA', 'Assainissement et pluvial', '125,73,0', 'Marron');
INSERT INTO a_stardt."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('ASSAEP', 'Eaux pluviales', '125,73,0', 'Marron');
INSERT INTO a_stardt."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('ASSAEU', 'Eaux usées', '125,73,0', 'Marron');
INSERT INTO a_stardt."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('ASSARU', 'Réseau unitaire', '125,73,0', 'Marron');
INSERT INTO a_stardt."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('DECH', 'Déchets', '130,130,130', 'None');
INSERT INTO a_stardt."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('CHAU', 'Chauffage et climatisation', '100,0,100', 'Violet');
INSERT INTO a_stardt."NatureReseauPCRS17Type" (code, valeur, "valeurCouleurRepresentation", "codeCouleurNorme") VALUES ('INCE', 'Incendie', '0,0,255', 'Bleu');

COMMENT ON TABLE a_stardt."NatureReseauPCRS17Type" IS
'Code permettant de décrire de façon extensible la nature d''un réseau.';


-- ---------------------------------
-- Classe : CategoriePrecisionPCRS17Type
-- ---------------------------------

-- Table: CategoriePrecisionPCRS17Type
--DROP TABLE if exists a_stardt."CategoriePrecisionPCRS17Type" cascade;
CREATE TABLE a_stardt."CategoriePrecisionPCRS17Type"
(
  code character varying(3) unique,
  valeur character varying(17),
  CONSTRAINT "CategoriePrecisionPCRS17Type_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."CategoriePrecisionPCRS17Type" (code, valeur) VALUES ('002', 'moins de 2 cm');
INSERT INTO a_stardt."CategoriePrecisionPCRS17Type" (code, valeur) VALUES ('005', 'de 2 à 5 cm');
INSERT INTO a_stardt."CategoriePrecisionPCRS17Type" (code, valeur) VALUES ('010', 'de 5 à 10 cm');
INSERT INTO a_stardt."CategoriePrecisionPCRS17Type" (code, valeur) VALUES ('040', 'de 10 à 40 cm');
INSERT INTO a_stardt."CategoriePrecisionPCRS17Type" (code, valeur) VALUES ('100', 'de 40 à 100 cm');
INSERT INTO a_stardt."CategoriePrecisionPCRS17Type" (code, valeur) VALUES ('150', 'de 100 à 150 cm');
INSERT INTO a_stardt."CategoriePrecisionPCRS17Type" (code, valeur) VALUES ('999', 'au delà de 150 cm');

COMMENT ON TABLE a_stardt."CategoriePrecisionPCRS17Type" IS
'Code permettant de décrire un intervalle de précision exprimée en cm associée au levé d''un objet ou d''un affleurant du PCRS';


-- ---------------------------------
-- Classe : CalendrierPCRS17Type
-- ---------------------------------

-- Table: CalendrierPCRS17Type
-- DROP TABLE if exists a_stardt."CalendrierPCRS17Type" cascade;
CREATE TABLE a_stardt."CalendrierPCRS17Type"
(
  code character varying(2) unique,
  valeur character varying(24),
  CONSTRAINT "CalendrierPCRS17Type_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."CalendrierPCRS17Type" (code, valeur) VALUES ('01', 'Livré, Mis A Disposition');
INSERT INTO a_stardt."CalendrierPCRS17Type" (code, valeur) VALUES ('02', 'Actualisation En Cours');
INSERT INTO a_stardt."CalendrierPCRS17Type" (code, valeur) VALUES ('03', 'En Projet, Planifié');
INSERT INTO a_stardt."CalendrierPCRS17Type" (code, valeur) VALUES ('04', 'Non Planifié');
--
COMMENT ON TABLE a_stardt."CalendrierPCRS17Type" IS
'Code permettant de décrire la date de disponibilité du PCRS.';


-- ---------------------------------
-- Classe : NatureEmprisePCRS17Type
-- ---------------------------------

-- Table: NatureEmprisePCRS17Type
--DROP TABLE if exists a_stardt."NatureEmprisePCRS17Type" cascade;
CREATE TABLE a_stardt."NatureEmprisePCRS17Type"
(
  code character varying(2) unique,
  valeur character varying(21),
  CONSTRAINT "NatureEmprisePCRS17Type_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."NatureEmprisePCRS17Type" (code, valeur) VALUES ('01', 'Couloir');
INSERT INTO a_stardt."NatureEmprisePCRS17Type" (code, valeur) VALUES ('02', 'Opération');
INSERT INTO a_stardt."NatureEmprisePCRS17Type" (code, valeur) VALUES ('03', 'Carreau');
INSERT INTO a_stardt."NatureEmprisePCRS17Type" (code, valeur) VALUES ('04', 'Limite Administrative');
INSERT INTO a_stardt."NatureEmprisePCRS17Type" (code, valeur) VALUES ('05', 'Raster');
INSERT INTO a_stardt."NatureEmprisePCRS17Type" (code, valeur) VALUES ('06', 'Masque');

COMMENT ON TABLE a_stardt."NatureEmprisePCRS17Type" IS
'Code permettant de décrire la nature de l''emprise d''echange du PCRS.';


-- ---------------------------------
-- Classe : CotationPCRS17Type
-- ---------------------------------

-- Table: CotationPCRS17Type
-- DROP TABLE if exists a_stardt."CotationPCRS17Type" cascade;
-- CREATE TABLE a_stardt."CotationPCRS17Type"
-- (
--   code character varying(2) unique,
--   valeur character varying(38),
--   CONSTRAINT "CotationPCRS17Type_pkey" PRIMARY KEY (code)
-- )
-- WITH (
--   OIDS=FALSE
-- );
--
-- INSERT INTO a_stardt."CotationPCRS17Type" (code, valeur) VALUES ('01', 'Non Utilisable Pour Coter');
-- INSERT INTO a_stardt."CotationPCRS17Type" (code, valeur) VALUES ('02', 'Cotation Planimetrique Uniquement');
-- INSERT INTO a_stardt."CotationPCRS17Type" (code, valeur) VALUES ('03', 'Cotation Planimetrique Et Altimetrique');
--
-- COMMENT ON TABLE a_stardt."CotationPCRS17Type" IS
-- 'Code permettant de décrire si l''objet peut etre utilisable pour coter.';


-- ---------------------------------
-- Classe : RoleNiveau1PCRS17Type
-- ---------------------------------

-- Table: RoleNiveau1PCRS17Type
--DROP TABLE if exists a_stardt."RoleNiveau1PCRS17Type" cascade;
CREATE TABLE a_stardt."RoleNiveau1PCRS17Type"
(
  code character varying(2) unique,
  valeur character varying(38),
  caracteristique character varying(750),
  CONSTRAINT "RoleNiveau1PCRS17Type_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."RoleNiveau1PCRS17Type" (code, valeur, caracteristique) VALUES ('01', 'Echelon national du PCRS',
'Le CNIG met en place un observatoire en charge du suivi du
déploiement des accords locaux ainsi que de la dissémination du PCRS.
Le CNIG maintient les spécifications du PCRS,
et étudie leur adaptation hors zones urbaines denses.
Une instance à définir crée les conditions d''une agrégation
des PCRS locaux par une infrastructure nationale ad hoc,
dans le respect des droits de la propriété intellectuelle
détenus par les parties prenantes aux accords locaux,
en cohérence avec les infrastructures locales,
et selon des conditions financières définies dans les conventions
partenariales locales mises en place,
à défaut selon des conditions financières à définir.');
INSERT INTO a_stardt."RoleNiveau1PCRS17Type" (code, valeur, caracteristique) VALUES ('02', 'Gestionnaire du PCRS',
'Le gestionnaire du PCRS est une autorité publique locale compétente.
Il met en place les conditions pour constituer un PCRS,
organise la mutualisation (initialisation et mise à jour du PCRS)
et applique le standard et les exigences de qualité.
Il précise le périmètre.
Il coordonne la production des composantes (gestion des manques et doublons),
les agrège (y compris les siennes éventuellement)
et il assure la  cohérence  globale  des productions et les documente.
Il met à disposition le PCRS (à minima par échange de données,
et/ou si possible par service web conformes aux standards
de l''Open Geospatial Consortium).
Il élargit progressivement la mutualisation à de nouveaux partenaires,
il en spécifie toutefois les conditions.');
INSERT INTO a_stardt."RoleNiveau1PCRS17Type" (code, valeur, caracteristique) VALUES ('03', 'Producteur du PCRS',
'Produit un ou plusieurs composant(s) du PCRS
comme le bâti, la voirie, les affleurants etc...
Il contrôle ses données pour s''assurer qu''elles correspondent
à minima à la qualité requise dans la règlementation, et le cas échéant,
aux spécifications techniques du gestionnaire du PCRS.');
INSERT INTO a_stardt."RoleNiveau1PCRS17Type" (code, valeur, caracteristique) VALUES ('04', 'Utilisateur du PCRS',
'L''utilisateur reçoit les données du PCRS,
elles lui permettent de construire une réponse à une DT/DICT
en y faisant figurer les données métiers superposées aux données PCRS.
Il peut,
soit intégrer les données PCRS dans sa base de données,
soit les consommer via un web service.
Le PCRS sert à fournir un fond de plan sur lequel le gestionnaire
peut faire figurer ses réseaux/ouvrages.
L''utilisateur peut avoir différentes fonctions, en voici quelques exemples :
maître d''ouvrage, entreprise de travaux, exploitant de réseaux, bureau d''études.');

COMMENT ON TABLE a_stardt."RoleNiveau1PCRS17Type" IS
'Code permettant de décrire le role de l''acteur.
Les cas d utilisation s''appuient sur des rôles liés à l''échange de données au format PCRS.
Par leurs missions, les différents intervenants liés au PCRS peuvent être
amenés à se reconnaître dans plusieurs rôles très distincts,
chaque rôle étant lié à un cas d''utilisation bien identifié du PCRS.
Ainsi une collectivité peut être amenée à intervenir aussi bien en tant que
gestionnaire du PCRS,
utilisateur du PCRS (maître d''ouvrage, opérateur de réseaux, etc.)
et/ou producteur d''un composant du PCRS.';


-- ---------------------------------
-- Classe : RoleNiveau2PCRS17Type
-- ---------------------------------

-- Table: RoleNiveau2PCRS17Type
--DROP TABLE if exists a_stardt."RoleNiveau2PCRS17Type" cascade;
CREATE TABLE a_stardt."RoleNiveau2PCRS17Type"
(
  "roleNiveau1" character varying(2) NOT NULL REFERENCES a_stardt."RoleNiveau1PCRS17Type" ("code"),
  code character varying(2) unique,
  valeur character varying(40),
  CONSTRAINT "RoleNiveau2PCRS17Type_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."RoleNiveau2PCRS17Type" ("roleNiveau1", code, valeur) VALUES ('01', '01', 'Echelon national du PCRS');
INSERT INTO a_stardt."RoleNiveau2PCRS17Type" ("roleNiveau1", code, valeur) VALUES ('02', '02', 'Gestionnaire du PCRS');
INSERT INTO a_stardt."RoleNiveau2PCRS17Type" ("roleNiveau1", code, valeur) VALUES ('03', '03', 'Gestionnaire Référentiel Voirie');
INSERT INTO a_stardt."RoleNiveau2PCRS17Type" ("roleNiveau1", code, valeur) VALUES ('03', '04', 'Gestionnaire Foncier');
INSERT INTO a_stardt."RoleNiveau2PCRS17Type" ("roleNiveau1", code, valeur) VALUES ('03', '05', 'Gestionnaire Voirie');
INSERT INTO a_stardt."RoleNiveau2PCRS17Type" ("roleNiveau1", code, valeur) VALUES ('03', '06', 'Exploitant de réseaux');
INSERT INTO a_stardt."RoleNiveau2PCRS17Type" ("roleNiveau1", code, valeur) VALUES ('03', '07', 'Autre Gestionnaire');
INSERT INTO a_stardt."RoleNiveau2PCRS17Type" ("roleNiveau1", code, valeur) VALUES ('03', '08', 'Producteur d orthophotos');
INSERT INTO a_stardt."RoleNiveau2PCRS17Type" ("roleNiveau1", code, valeur) VALUES ('04', '09', 'Maitre d''ouvrage ou executant de travaux');

COMMENT ON TABLE a_stardt."RoleNiveau2PCRS17Type" IS
'Code permettant de décrire le role de l''acteur.';


-- ---------------------------------
-- Classe : ActeurPCRS17Type
-- ---------------------------------

-- Table: ActeurPCRS17Type
--DROP TABLE if exists a_stardt."ActeurPCRS17Type" cascade;
CREATE TABLE a_stardt."ActeurPCRS17Type"
(
  code character varying(2) unique,
  valeur character varying(255),
  CONSTRAINT "ActeurPCRS17Type_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."ActeurPCRS17Type" (code, valeur) VALUES ('01', 'Soluris 17');
INSERT INTO a_stardt."ActeurPCRS17Type" (code, valeur) VALUES ('02', 'Enedis');
INSERT INTO a_stardt."ActeurPCRS17Type" (code, valeur) VALUES ('03', 'SDE');
INSERT INTO a_stardt."ActeurPCRS17Type" (code, valeur) VALUES ('04', 'SDEER');
INSERT INTO a_stardt."ActeurPCRS17Type" (code, valeur) VALUES ('05', 'CDA');
INSERT INTO a_stardt."ActeurPCRS17Type" (code, valeur) VALUES ('06', 'VLR');
INSERT INTO a_stardt."ActeurPCRS17Type" (code, valeur) VALUES ('07', 'DGFiP');


COMMENT ON TABLE a_stardt."ActeurPCRS17Type" IS
'Code permettant de décrire l''acteur.';


-- ---------------------------------
-- Classe : CategorieObjetPCRS17Type
-- ---------------------------------

-- Table: CategorieObjetPCRS17Type
--DROP TABLE if exists a_stardt."CategorieObjetPCRS17Type" cascade;
CREATE TABLE a_stardt."CategorieObjetPCRS17Type"
(
  "idCategorieObjet" character varying(2) not null,
  "boolClasseAbstraite" character varying(1) not null,
  "nomClasse" character varying(38) unique,
  "nomClasseMere" character varying(38),
  "thematique" character varying(2) NOT NULL REFERENCES a_stardt."CategorieThematiquePCRSType" ("code"),
  CONSTRAINT "CategorieObjetPCRS17Type_pkey" PRIMARY KEY ("nomClasse")
)
WITH (
  OIDS=FALSE
);

INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('01', 0, 'InitiativePCRS', '', '99');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('02', 0, 'EmpriseDisponibilitePCRS', '', '99');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('03', 0, 'EmpriseEchangePCRS', '', '99');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('04', 0, 'Commune', '', '99');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('05', 0, 'TronconVoirie', '', '99');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('06', 0, 'HabillagePCRS', '', '00');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('07', 0, 'HabillagePointsPCRS', 'HabillagePCRS', '00');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('08', 0, 'HabillageSymbolePCRS', 'HabillagePCRS', '00');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('09', 0, 'HabillageTextePCRS', 'HabillagePCRS', '00');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('10', 0, 'NomVoiriePCRS', 'HabillageTextePCRS', '01');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('11', 0, 'NumeroVoiriePCRS', 'HabillageTextePCRS', '01');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('12', 0, 'HabillageLignesPCRS', 'HabillagePCRS', '00');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('13', 0, 'HabillageEnveloppePCRS', 'HabillagePCRS', '00');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('14', 0, 'PointLevePCRS', '', '01');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('15', 1, 'ObjetVecteurPCRS', '', '00');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('16', 0, 'PointCanevasPCRS', 'ObjetVecteurPCRS', '01');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('17', 0, 'ObjetGeneriquePCRS', 'ObjetVecteurPCRS', '00');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('18', 0, 'QuaiFluvioMaritimePCRS', 'ObjetVecteurPCRS', '07');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('19', 0, 'QuaiRailPCRS', 'ObjetVecteurPCRS', '04');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('20', 0, 'LimiteVoiriePCRS', 'ObjetVecteurPCRS', '03');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('21', 0, 'MarcheEscalierPCRS', 'ObjetVecteurPCRS', '00');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('22', 0, 'FacadePCRS', 'ObjetVecteurPCRS', '02');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('23', 0, 'ProeminenceBatiPCRS', 'ObjetVecteurPCRS', '02');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('24', 0, 'SeuilPCRS', 'ObjetVecteurPCRS', '02');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('25', 0, 'MurPCRS', 'ObjetVecteurPCRS', '05');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('26', 1, 'PilierPCRS', 'ObjetVecteurPCRS', '05');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('27', 0, 'PilierRegulierPCRS', 'PilierPCRS', '05');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('28', 0, 'PilierParticulierPCRS', 'PilierPCRS', '05');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('29', 0, 'RailPCRS', 'ObjetVecteurPCRS', '04');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('30', 0, 'ArbrePCRS', 'ObjetVecteurPCRS', '06');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('31', 0, 'PilePontPCRS', 'ObjetVecteurPCRS', '07');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('32', 1, 'AffleurantPCRS', 'ObjetVecteurPCRS', '10');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('33', 0, 'AffleurantGeometriquePCRS', '', '10');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('34', 0, 'AffleurantEnveloppePCRS', '', '10');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('35', 0, 'AffleurantLignesPCRS', '', '10');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('36', 0, 'AffleurantPointPCRS', '', '10');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('37', 0, 'AffleurantSymbolePCRS', 'AffleurantPCRS', '10');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('38', 0, 'RasterPCRS', '', '11');
INSERT INTO a_stardt."CategorieObjetPCRS17Type" ("idCategorieObjet", "boolClasseAbstraite", "nomClasse", "nomClasseMere", "thematique") VALUES ('39', 0, 'MasqueOpacitePCRS', 'Habillage', '11');


COMMENT ON TABLE a_stardt."CategorieObjetPCRS17Type" IS
'Contenu du PCRS : les différentes classe d''objets';




-- ---------------------------------
-- Creation des tables "objets géographiques"
-- ---------------------------------


-- ---------------------------------
-- Thématique : Général
-- ---------------------------------


-- ---------------------------------
-- Classe : ReseauUtilite
-- ---------------------------------


DROP SEQUENCE if exists a_stardt."ReseauUtilite_idReseauUtilite_seq" cascade;
--DROP TABLE if exists a_stardt."ReseauUtilite" cascade;

CREATE SEQUENCE a_stardt."ReseauUtilite_idReseauUtilite_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Table: InitiativePCRS
--DROP TABLE if exists a_stardt."ReseauUtilite" cascade;
CREATE TABLE a_stardt."ReseauUtilite"
(
  "idReseauUtilite" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."ReseauUtilite_idReseauUtilite_seq"'::regclass),
  "mention" character varying NOT NULL,
  "nom" character varying NOT NULL,
  "profondeurStandard" character varying,
  "responsable" character varying NOT NULL,
  "theme" character varying REFERENCES a_stardt."NatureReseauValue" ("code"),

  CONSTRAINT "ReseauUtilite_pkey" PRIMARY KEY ("idReseauUtilite")
)
WITH (
  OIDS=FALSE
);



COMMENT ON TABLE a_stardt."ReseauUtilite" IS
'Nom de la classe :
ReseauUtilite

Sous-classe de :


Titre :
ReseauUtilite

Définition :
Classe qui permet de décrire le réseau en général.

Modélisation :
Surface.

La classe contient :
.

Contraintes :
';

COMMENT ON COLUMN a_stardt."ReseauUtilite"."idReseauUtilite" IS
'Identifiant unique.
.
.';
COMMENT ON COLUMN a_stardt."ReseauUtilite"."mention" IS
'Mention légale particulière.';
COMMENT ON COLUMN a_stardt."ReseauUtilite"."nom" IS
'Nom donné au réseau';
COMMENT ON COLUMN a_stardt."ReseauUtilite"."profondeurStandard" IS
'Profondeur commune associée à ce réseau.
La profondeur est relative au niveau du sol.

Cet attribut a une mesure comme type de données. L’UOM est exprimée
par l’un des codes URN suivants de l’OGC :
- urn:ogc:def:uom:OGC::m
- urn:ogc:def:uom:OGC::cm
- urn:ogc:def:uom:OGC::mm.
';
COMMENT ON COLUMN a_stardt."ReseauUtilite"."responsable" IS
'Gestionnaire/exploitant du réseau.

Raison sociale de l’exploitant de l’ouvrage.
Lorsqu’un exploitant a connaissance d’ouvrages dont il n’est pas l’exploitant,
connectés à ses propres ouvrages,
il peut les mentionner d’une manière distinctive en
indiquant une valeur « Inconnu » pour cet attribut.
';
COMMENT ON COLUMN a_stardt."ReseauUtilite"."theme" IS
'Permet de décrire le type de réseau conformément à la liste des réseaux
de la NF P98-332.
';


-- ---------------------------------
-- Classe : ElementReseau
-- ---------------------------------


--DROP INDEX if exists a_stardt."ElementReseau_geometrie_geomidx" cascade;
DROP SEQUENCE if exists a_stardt."ElementReseau_idElementReseau_seq" cascade;
--DROP TABLE if exists a_stardt."ElementReseau" cascade;

CREATE SEQUENCE a_stardt."ElementReseau_idElementReseau_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Table: ElementReseau
--DROP TABLE if exists a_stardt."ElementReseau" cascade;
CREATE TABLE a_stardt."ElementReseau"
(
  "code" character varying,
  "identifiant" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."ElementReseau_idElementReseau_seq"'::regclass),
  "dateActualite" date NOT NULL,
  "precisionXY" character varying REFERENCES a_stardt."ClassePrecisionReseau" ("code"),
  "precisionZ" character varying REFERENCES a_stardt."ClassePrecisionReseau" ("code"),
  "sensible" boolean,
  "symboleRotation" decimal NOT NULL CHECK ("angleRotation" >= -180 AND "angleRotation" < 180),
  "visibleSurface" boolean,
  CONSTRAINT "EmpriseDisponibilitePCRS_pkey" PRIMARY KEY ("idElementReseau")
)
WITH (
  OIDS=FALSE
);

-- Index: ElementReseau_geometrie_geomidx
--DROP INDEX if exists a_stardt."ElementReseau_geometrie_geomidx" cascade;
CREATE INDEX "ElementReseau_geometrie_geomidx"
  ON a_stardt."ElementReseau"
  USING gist
  (geometrie);


COMMENT ON TABLE a_stardt."ElementReseau" IS
'Nom de la classe :
ElementReseau

Sous-classe de :


Titre :
Objet générique du réseau

Définition :
Cette classe abstraite regroupe l’ensemble des propriétés du réseau..

Modélisation :
.

La classe contient :
.

Contraintes :
.
';

COMMENT ON COLUMN a_stardt."ElementReseau"."code" IS
'Code métier associé à l’objet dans la base de référence de l’exploitant (pas
nécessairement unique).';
COMMENT ON COLUMN a_stardt."ElementReseau"."idElementReseau" IS
'Identifiant unique.';
COMMENT ON COLUMN a_stardt."ElementReseau"."precisionXY" IS
'Indication de la précision dans le plan horizontal (x,y) de la position du
géométrique de l’élément. Classement selon la définition de la
réglementation DT-DICT.';
COMMENT ON COLUMN a_stardt."ElementReseau"."precisionZ" IS
'Indication de la précision dans le plan vertital (z) de la position du
géométrique de l’élément. Classement selon la définition de la
réglementation DT-DICT.';
COMMENT ON COLUMN a_stardt."ElementReseau"."sensible" IS
'Indique s’il s’agit d’un ouvrage sensible selon la définition de la
réglementation DT-DICT.';
COMMENT ON COLUMN a_stardt."ElementReseau"."symboleRotation" IS
'Angle d’affichage d’un symbole ponctuel.

Pour un symbole lié à une géométrie de point, cet attribut indique l’angle
sous lequel un symbole de point doit être affiché.
Unité : degré d’arc ; un degré d’arc est une partie de la circonférence d’un
cercle sur 360°.
Orientation : dans le sens des aiguilles d’une montre (positif) par rapport à
la direction normale du texte (horizontal = 0 degré ; pour une carte orientée
nord).
Précision décimale : 1 (= 1 chiffre après la virgule ou 1/10e de degré d’arc).
Portée (valeurs minimum/maximum) : [-180, +180].]].
Cet attribut a une mesure comme type de données. L’UOM est exprimée
par le code URN OGC suivant :
- urn:ogc:def:uom:OGC::deg
';
COMMENT ON COLUMN a_stardt."ElementReseau"."visibleSurface" IS
'Indique si l’élément est visible au-dessus du niveau du sol.';

-- ---------------------------------
-- Thématique : Publication
-- ---------------------------------


-- ---------------------------------
-- Classe : EmpriseEchangePCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."EmpriseEchangePCRS_geometrie_geomidx" cascade;
DROP SEQUENCE if exists a_stardt."EmpriseEchangePCRS_idEmpriseEchange_seq" cascade;
--DROP TABLE if exists a_stardt."EmpriseEchangePCRS" cascade;

CREATE SEQUENCE a_stardt."EmpriseEchangePCRS_idEmpriseEchange_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Table: EmpriseEchangePCRS
--DROP TABLE if exists a_stardt."EmpriseEchangePCRS" cascade;
CREATE TABLE a_stardt."EmpriseEchangePCRS"
(
  "idEmpriseEchange" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."EmpriseEchangePCRS_idEmpriseEchange_seq"'::regclass),
  "complement" character varying,
  "datePublication" date NOT NULL,
  "gestionnaire" character varying NOT NULL,
  "type" character varying REFERENCES a_stardt."NatureEmprisePCRS17Type" ("code"),
  --"geometrie" geometry(MULTIPOLYGON,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  --CONSTRAINT "EmpriseEchangePCRS_pkey" PRIMARY KEY ("idEmpriseEchange"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'MULTIPOLYGON'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
WITH (
  OIDS=FALSE
);

-- Index: EmpriseEchangePCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."EmpriseEchangePCRS_geometrie_geomidx" cascade;
CREATE INDEX "EmpriseEchangePCRS_geometrie_geomidx"
  ON a_stardt."EmpriseEchangePCRS"
  USING gist
  (geometrie);


COMMENT ON TABLE a_stardt."EmpriseEchangePCRS" IS
'Nom de la classe :
EmpriseEchangePCRS

Titre :
Emprise d''échange du PCRS

Définition :
Une emprise d''échange du PCRS constitue un élément surfacique de délimitation de l''espace public,
et lorsque disponible, de l''espace privé.
Elle est localisée sur une commune, et peut-être qualifiée par les tronçons de voirie concernés.
Une emprise d''échange du PCRS permet d''accéder à l''ensemble des éléments constituant le
PCRS, et sert en particulier à repérer les objets du PCRS, en général associés à une
thématique et porteurs de précision, ainsi que les affleurants de réseaux de tous types.
Parmi les éléments d''habillage d''une emprise d''échange du PCRS,
on distinguera en particulier les noms ainsi que les numéros de voirie
devant obligatoirement figurer dans un PCRS.
Une  emprise  d''échange  du  PCRS  contient  également des éléments de calendrier
précisant la date de publication des données concernées.
Le modèle de données prévoit la gestion de la composante image :
ainsi, l''emprise  d''échange du PCRS peut également être décrite par une ou plusieurs
images haute ou très haute résolution éventuellement complétées d''objets vecteurs.

Modélisation :
Surface
La collectivité gestionnaire du PCRS a toute latitude quant à la définition géométrique
des emprises du PCRS.
Il est toutefois conseillé de publier le PCRS à au moins deux niveaux complémentaires
d''emprises, à savoir
- un niveau continu (ou régulier, fixe)
  et associé à un découpage régulier du territoire (comme un carroyage)
- et un niveau discontinu (ou irrégulier, variable)
  correspondant à des découpages à base d''entités (tronçons, voire communes...).

La classe contient :
Les emprises d''échanges du PCRS peuvent suivre des logiques différentes :
- les emprises de type couloir, c''est à dire associées à un axe de voirie et définies
  d''une part par les limites apparentes des propriétés privées étendues
  perpendiculairement à l''axe de voirie d''environ 15 mètres (à adapter localement),
  et d''autre part en incluant les surfaces tampon associées aux
  amorces de voies aux intersections et sur une longueur d''environ 10 mètres (à adapter localement).
- par extension des emprises de type couloir, il est également possible d''inclure dans
  cette définition géométrique toute surface de l''espace public ou privé bornée par des
  limites apparentes de propriétés privées et n''incluant pas d''axe de voirie.
- les emprises de type opération, c''est à dire associées à une opération particulière
  impactant le PCRS, par exemple la pose de rails de tramway. Ce type d''emprise ne
  contient aucune information de gestion quant à l''opération concernée,
  mais permet par exemple de regrouper des emprises élémentaires de type couloir
  disposant de caractéristiques communes
- les emprises de type casé, liées à un carroyage particulier
- les emprises de type limite administrative, permettant d''accéder à l''intégralité
  d''un PCRS sur une limite administrative donnée, et en particulier par commune
- les emprises de type raster, éventuellement liées à un carroyage particulier,
  et permettant de référencer une image à haute ou très haute résolution

Contraintes :
Classe essentielle du PCRS, accompagnant les métadonnées de publication du PCRS';

COMMENT ON COLUMN a_stardt."EmpriseEchangePCRS"."idEmpriseEchange" IS
'Identifiant unique dans le jeu de données des emprises d''échange du PCRS.
L''unicité doit être assurée par le gestionnaire et viser une unicité nationale.
Elle peut être atteinte en préfixant l identifiant par le code SIREN du producteur.';
COMMENT ON COLUMN a_stardt."EmpriseEchangePCRS"."complement" IS
'Information complémentaire liée au type d''emprise de publication du PCRS,
gérée par le gestionnaire du PCRS et potentiellement utile à tout utilisateur du PCRS
Valeurs possibles :
Selon le type d''emprise de publication, par exemple :
- un toponyme pour une emprise de type couloir
- le nom de l''opération pour une emprise concernant une opération donnée
- la référence du carreau
  (si elle n''est pas redondante avec l''identifiant de l''emprise),
  ou le nom du carroyage pour une emprise de type régulière
- le nom ou le type de la limite administrative pour une emprise de type administrative';
COMMENT ON COLUMN a_stardt."EmpriseEchangePCRS"."datePublication" IS
'Date de mise à disposition de l''emprise du PCRS';
COMMENT ON COLUMN a_stardt."EmpriseEchangePCRS"."gestionnaire" IS
'Nom de la collectivité gestionnaire du PCRS';
COMMENT ON COLUMN a_stardt."EmpriseEchangePCRS"."type" IS
'Type d''emprise du PCRS
Valeurs possibles :
Par exemple :
Couloir, Operation, Carreau, LimiteAdministrative';
COMMENT ON COLUMN a_stardt."EmpriseEchangePCRS"."geometrie" IS
'Géométrie représentée par un ensemble de surfaces.';


-- ---------------------------------
-- Classe : Commune
-- ---------------------------------

--DROP INDEX if exists a_stardt."Commune_geometrie_geomidx" cascade;
--DROP TABLE if exists a_stardt."Commune" cascade;

-- Table: Commune
--DROP TABLE if exists a_stardt."Commune" cascade;
CREATE TABLE a_stardt."Commune"
(
  "codeINSEE" character varying UNIQUE NOT NULL,
  --"geometrie" geometry(MULTIPOLYGON,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "nom" character varying,
  "reference" character varying NOT NULL,
  CONSTRAINT "Commune_pkey" PRIMARY KEY ("codeINSEE"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'MULTIPOLYGON'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
WITH (
  OIDS=FALSE
);

-- Index: Commune_geometrie_geomidx
--DROP INDEX if exists a_stardt."Commune_geometrie_geomidx" cascade;
CREATE INDEX "Commune_geometrie_geomidx"
  ON a_stardt."Commune"
  USING gist
  (geometrie);


COMMENT ON TABLE a_stardt."Commune" IS
'Nom de la classe :
Commune

Titre :
Lien vers un objet ''commune''

Définition :
Cette classe permet de référencer une commune présente dans un référentiel externe.

Modélisation :
Multi Polygone (GM_MultiPolygon)
Les communes sont modélisées par un ensemble de polygones. La géométrie est
indicative et la précision géométrique accordée importe peu.

Critères de sélection :
Seuls sont considérés les objets ''commune'' d''un jeu de données de référence, défini par
le gestionnaire du PCRS.';

COMMENT ON COLUMN a_stardt."Commune"."codeINSEE" IS
'Code INSEE de la commune.';
COMMENT ON COLUMN a_stardt."Commune"."geometrie" IS
'Géométrie représentée par un ensemble de surfaces.';
COMMENT ON COLUMN a_stardt."Commune"."nom" IS
'Nom de la commune.';
COMMENT ON COLUMN a_stardt."Commune"."reference" IS
'Référence vers une base de données des communes.';


-- ---------------------------------
-- Classe : TronconVoirie
-- ---------------------------------

-- Sequence: TronconVoirie_reference_seq
--DROP INDEX if exists a_stardt."TronconVoirie_geometrie_geomidx" cascade;
DROP SEQUENCE if exists a_stardt."TronconVoirie_reference_seq" cascade;
--DROP TABLE if exists a_stardt."TronconVoirie" cascade;

CREATE SEQUENCE a_stardt."TronconVoirie_reference_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Table: TronconVoirie
--DROP TABLE if exists a_stardt."TronconVoirie" cascade;
CREATE TABLE a_stardt."TronconVoirie"
(
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "propriete" character varying(2) REFERENCES a_stardt."ProprieteEspaceType" (code),
  "reference" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."TronconVoirie_reference_seq"'::regclass),
  "source" character varying NOT NULL,
  CONSTRAINT "TronconVoirie_pkey" PRIMARY KEY ("reference"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
WITH (
  OIDS=FALSE
);

-- Index: TronconVoirie_geometrie_geomidx
--DROP INDEX if exists a_stardt."TronconVoirie_geometrie_geomidx" cascade;
CREATE INDEX "TronconVoirie_geometrie_geomidx"
  ON a_stardt."TronconVoirie"
  USING gist
  (geometrie);

COMMENT ON TABLE a_stardt."TronconVoirie" IS
'Nom de la classe :
TronconVoirie

Titre :
Tronçon de Voie

Définition :
Le tronçon de voirie du PCRS est un segment d''axe de voie entre deux intersections (qui
ne sont pas modélisées dans le PCRS par ailleurs).
Il sert essentiellement à identifier en premier lieu les emprises de publication du PCRS
qui le concernent.
Les noms de voirie, qui nécessitent un positionnement spécifique en dehors de l''espace
où figurent les réseaux, et en particulier en zone urbaine dense, sont modélisés par
ailleurs en tant que NomVoiriePCRS et ne sont donc pas gérés comme des données
attributaires des tronçons de voirie du PCRS.
De même, les numéros d''adresse, modélisés par ailleurs en tant que NumeroVoiriePCRS
ne sont pas non plus liés aux tronçons de voirie du PCRS

Modélisation :
Polyligne
Le tronçon de voirie s''appuie sur les tronçons du filaire des voies entretenu par la
collectivité gestionnaire du PCRS, et pouvant s''appuyer sur des référentiels comme la
BDUni ou la BD TOPO

Contraintes :
Classe accompagnant les métadonnées de publication du PCRS';

COMMENT ON COLUMN a_stardt."TronconVoirie"."geometrie" IS
'Géométrie de type courbe.';
COMMENT ON COLUMN a_stardt."TronconVoirie"."propriete" IS
'Distinction d''appartenance d''un troncon de voirie à l''espace public ou à l''espace privé.';
COMMENT ON COLUMN a_stardt."TronconVoirie"."reference" IS
'Identifiant unique du tronçon dans le référentiel source utilisé.';
COMMENT ON COLUMN a_stardt."TronconVoirie"."source" IS
'Acronyme du référentiel utilisé.';


-- ---------------------------------
-- Classe : HabillagePCRS
-- ---------------------------------

-- Sequence: HabillagePCRS_idHabillage_seq
--DROP INDEX if exists a_stardt."HabillagePCRS_geometrie_geomidx" cascade;
DROP SEQUENCE if exists a_stardt."HabillagePCRS_idHabillage_seq" cascade;
--DROP TABLE if exists a_stardt."HabillagePCRS" cascade;

CREATE SEQUENCE a_stardt."HabillagePCRS_idHabillage_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Table: HabillagePCRS
--DROP TABLE if exists a_stardt."HabillagePCRS" cascade;
CREATE TABLE a_stardt."HabillagePCRS"
(
  --geometrie geometry(Geometry,3946) NOT NULL,
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES a_stardt."CategorieThematiquePCRSType" ("code"),
  CONSTRAINT "HabillagePCRS_pkey" PRIMARY KEY ("idHabillage")
)
WITH (
  OIDS=FALSE
);

-- Index: HabillagePCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."HabillagePCRS_geometrie_geomidx" cascade;
--CREATE INDEX "HabillagePCRS_geometrie_geomidx"
--  ON a_stardt."HabillagePCRS"
--  USING gist
--  (geometrie);

COMMENT ON TABLE a_stardt."HabillagePCRS" IS
'Nom de la classe :
HabillagePCRS

Titre :
Eléments d''habillage du PCRS

Définition :
Classe abstraite permettant de décrire tous les éléments d''habillage utiles à la
compréhension du PCRS via les classes spécialisées
 - HabillagePointsPCRS,
 - HabillageLignesPCRS,
 - HabillageSymbolePCRS,
 - HabillageTextePCRS

Modélisation :
Point, Polyligne, Surface
Élément d''habillage (de type point, ligne ou surface ou support de texte) sans précision
de géoréférencement associée

La classe contient :
- les symboles
- les toponymes,
- les coordonnées planimétriques,
- les altimétries,
- les fossés, talus,
- les surfaces hydrographiques,
...

Contraintes :
Contraintes de positionnement en dehors de la voirie, en particulier en zone dense ou
très dense';

COMMENT ON COLUMN a_stardt."HabillagePCRS"."idHabillage" IS
'Identifiant unique de l''habillage.
Valeurs possibles :
Selon la collectivité gestionnaire du PCRS,
et le cas échéant lié à celui du référentiel dont peut-être issue la donnée.';
COMMENT ON COLUMN a_stardt."HabillagePCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';


-- ---------------------------------
-- Classe : HabillagePointsPCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."HabillagePointsPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_stardt."HabillagePointsPCRS_idHabillage_seq" cascade;
--DROP TABLE if exists a_stardt."HabillagePointsPCRS" cascade;


--CREATE SEQUENCE a_stardt."HabillagePointsPCRS_idHabillage_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: HabillagePointsPCRS
--DROP TABLE if exists a_stardt."HabillagePointsPCRS" cascade;
CREATE TABLE a_stardt."HabillagePointsPCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES a_stardt."CategorieThematiquePCRSType" ("code"),
  --"geometrie" geometry(MULTIPOINT,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "HabillagePointsPCRS_pkey" PRIMARY KEY ("idHabillage"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'MULTIPOINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_stardt."HabillagePCRS")
WITH (
  OIDS=FALSE
);

-- Index: HabillagePointsPCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."HabillagePointsPCRS_geometrie_geomidx" cascade;
CREATE INDEX "HabillagePointsPCRS_geometrie_geomidx"
  ON a_stardt."HabillagePointsPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_stardt."HabillagePointsPCRS" IS
'Nom de la classe :
HabillagePointsPCRS

Sous-classe de :
HabillagePCRS

Titre :
Points d''habillage du PCRS

Définition :
Classe spécialisée de la classe abstraite <HabillagePCRS> permettant de décrire tous
les éléments d''habillage de type points (éventuellement multiples) utiles à la
compréhension du PCRS.
Pour les points accompagnés d''un symbole, une classe HabillageSymbolePCRS est prévue.

La Classe contient :
- les éléments de mobilier urbain
- les bollards.

Modélisation :
Multipoints';

COMMENT ON COLUMN a_stardt."HabillagePointsPCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN a_stardt."HabillagePointsPCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN a_stardt."HabillagePointsPCRS"."geometrie" IS
'Géométrie de type multipoint';


-- ---------------------------------
-- Classe : HabillageSymbolePCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."HabillageSymbolePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_stardt."HabillageSymbolePCRS_idHabillage_seq" cascade;
--DROP TABLE if exists a_stardt."HabillageSymbolePCRS" cascade;

--CREATE SEQUENCE a_stardt."HabillageSymbolePCRS_idHabillage_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: HabillageSymbolePCRS
--DROP TABLE if exists a_stardt."HabillageSymbolePCRS" cascade;
CREATE TABLE a_stardt."HabillageSymbolePCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES a_stardt."CategorieThematiquePCRSType" ("code"),
  "angleRotation" decimal NOT NULL CHECK ("angleRotation" >= 0 AND "angleRotation" < 360),
  --"geometrie" geometry(POINT,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "largeur_mm" decimal NOT NULL,
  "longueur_mm" decimal NOT NULL,
  "reference" character varying NOT NULL,
  CONSTRAINT "HabillageSymbolePCRS_pkey" PRIMARY KEY ("idHabillage"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_stardt."HabillagePCRS")
WITH (
  OIDS=FALSE
);

-- Index: SymboleHabillagePCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."SymboleHabillagePCRS_geometrie_geomidx" cascade;
CREATE INDEX "HabillageSymbolePCRS_geometrie_geomidx"
  ON a_stardt."HabillageSymbolePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_stardt."HabillageSymbolePCRS" IS
'Nom de la classe :
HabillageSymbolePCRS

Sous-classe de :
HabillagePCRS

Titre :
Symbole d''habillage du PCRS

Définition :
Classe spécialisée de la classe abstraite HabillagePCRS permettant de décrire tous les
éléments d''habillage de type symbole utiles à la compréhension du PCRS

Modélisation :
Point (propriété de la classe généralisée HabillagePCRS)
Point de référence au centre du symbole, dont on précisera la référence, les dimensions
inscrites dans un rectangle (longueur, largeur), et l''orientation spécifique.

Contraintes :
Contraintes de positionnement en dehors de la voirie, en particulier en zone dense ou
très dense';

COMMENT ON COLUMN a_stardt."HabillageSymbolePCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN a_stardt."HabillageSymbolePCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN a_stardt."HabillageSymbolePCRS"."angleRotation" IS
'Utilisé uniquement pour l''orientation de l''élément d''habillage
Valeur angulaire en degrés décimaux';
COMMENT ON COLUMN a_stardt."HabillageSymbolePCRS"."geometrie" IS
'Géométrie de type ponctuel';
COMMENT ON COLUMN a_stardt."HabillageSymbolePCRS"."largeur_mm" IS
'Utilisé uniquement pour la mise à l''échelle Y du symbole en habillage';
COMMENT ON COLUMN a_stardt."HabillageSymbolePCRS"."longueur_mm" IS
'Utilisé uniquement pour la mise à l''échelle X du symbole en habillage';
COMMENT ON COLUMN a_stardt."HabillageSymbolePCRS"."reference" IS
'Désignation du symbole à utiliser pour la représentation de l''habillage sous forme de symbole.';


-- ---------------------------------
-- Classe : HabillageTextePCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."HabillageTextePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_stardt."HabillageTextePCRS_idHabillage_seq" cascade;
--DROP TABLE if exists a_stardt."HabillageTextePCRS" cascade;

--CREATE SEQUENCE a_stardt."HabillageTextePCRS_idHabillage_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: HabillageTextePCRS
--DROP TABLE if exists a_stardt."HabillageTextePCRS" cascade;
CREATE TABLE a_stardt."HabillageTextePCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES a_stardt."CategorieThematiquePCRSType" ("code"),
  "angleRotation" decimal NOT NULL CHECK ("angleRotation" >= 0 AND "angleRotation" < 360),
  --"geometrie" geometry(POINT,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "justification" character varying(1) NOT NULL REFERENCES a_stardt."TexteJustificationPCRSType" (code),
  "libelle" character varying NOT NULL,
  "taille" decimal NOT NULL,
  CONSTRAINT "HabillageTextePCRS_pkey" PRIMARY KEY ("idHabillage"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_stardt."HabillagePCRS")
WITH (
  OIDS=FALSE
);

-- Index: HabillageTextePCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."HabillageTextePCRS_geometrie_geomidx" cascade;
CREATE INDEX "HabillageTextePCRS_geometrie_geomidx"
  ON a_stardt."HabillageTextePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_stardt."HabillageTextePCRS" IS
'Nom de la classe :
HabillageTextePCRS

Sous-classe de :
HabillagePCRS

Titre :
Texte d''habillage du PCRS

Définition :
Classe spécialisée de la classe abstraite HabillagePCRS permettant de décrire tous les
éléments d''habillage de type texte utiles à la compréhension du PCRS

Modélisation :
Point (propriété de la classe généralisée HabillagePCRS)
Libellé de type texte positionné de façon ponctuelle, avec possibilité de spécifier une
orientation spécifique.

La classe contient :
- les toponymes,
- les coordonnées planimétriques,
- les altimétries,
...

Contraintes :
Contraintes de positionnement en dehors de la voirie, en particulier en zone dense ou
très dense';

COMMENT ON COLUMN a_stardt."HabillageTextePCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN a_stardt."HabillageTextePCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN a_stardt."HabillageTextePCRS"."angleRotation" IS
'Utilisé uniquement pour l''orientation de l''élément d''habillage
Valeur angulaire en degrés décimaux';
COMMENT ON COLUMN a_stardt."HabillageTextePCRS"."geometrie" IS
'Géométrie de type point';
COMMENT ON COLUMN a_stardt."HabillageTextePCRS"."justification" IS
'Utilisé pour la justification du texte';
COMMENT ON COLUMN a_stardt."HabillageTextePCRS"."libelle" IS
'Texte du libellé à utiliser comme habillage du PCRS
Valeur textuelle. Exemple : 123 m';
COMMENT ON COLUMN a_stardt."HabillageTextePCRS"."taille" IS
'Facteur de taille permettant le cas échéant aux utilisateurs de pondérer la taille du texte';


-- ---------------------------------
-- Classe : NomVoiriePCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."NomVoiriePCRS_geometrie_geomidx" cascade;
DROP SEQUENCE if exists a_stardt."NomVoiriePCRS_idNomVoirie_seq" cascade;
--DROP TABLE if exists a_stardt."NomVoiriePCRS" cascade;

CREATE SEQUENCE a_stardt."NomVoiriePCRS_idNomVoirie_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Table: NomVoiriePCRS
--DROP TABLE if exists a_stardt."NomVoiriePCRS" cascade;
CREATE TABLE a_stardt."NomVoiriePCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES a_stardt."CategorieThematiquePCRSType" ("code"),
  "angleRotation" decimal NOT NULL CHECK ("angleRotation" >= 0 AND "angleRotation" < 360),
  --"geometrie" geometry(POINT,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "justification" character varying(1) NOT NULL REFERENCES a_stardt."TexteJustificationPCRSType" (code),
  "libelle" character varying NOT NULL,
  "taille" decimal NOT NULL,
  "idNomVoirie" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."NomVoiriePCRS_idNomVoirie_seq"'::regclass),
  "positionnement" character varying(2) REFERENCES a_stardt."CategoriePlacementPCRSType" (code),
  CONSTRAINT "NomVoiriePCRS_pkey" PRIMARY KEY ("idHabillage"),
  --CONSTRAINT "NomVoiriePCRS_pkey" PRIMARY KEY ("idNomVoirie")
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_stardt."HabillageTextePCRS")
WITH (
  OIDS=FALSE
);

-- Index: NomVoiriePCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."NomVoiriePCRS_geometrie_geomidx" cascade;
CREATE INDEX "NomVoiriePCRS_geometrie_geomidx"
  ON a_stardt."NomVoiriePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_stardt."NomVoiriePCRS" IS
'Nom de la classe :
NomVoiriePCRS

Sous-classe de :
HabillageTextePCRS

Titre :
Nom de voirie, Nom de voie

Définition :
Noms de voirie associés aux voies modélisées par tronçons. Ils sont liés à un référentiel
donné, et servent de données d''habillage du PCRS.
Les noms de voirie du PCRS doivent si possible être placés hors espace public (sur les
parcelles privées) de façon à ne pas empiéter en zone dense ou très dense sur les
espaces liés à la représentation des réseaux (non modélisés dans le PCRS) de façon à
permettre un affichage ne se superposant pas (pour des plans au 1/200ème) aux
numéros de voirie du PCRS.

Modélisation :
Point (propriété de la classe généralisée HabillageTextePCRS)
Libellé de type texte positionnant de façon ponctuelle le nom de voirie avec une
orientation liée au tronçon de voirie le plus proche de la voie associée à l''adresse.

Contraintes :
Contraintes de positionnement en dehors de l''espace public de la voirie, en particulier en
zone dense ou très dense, à préciser localement';

COMMENT ON COLUMN a_stardt."NomVoiriePCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN a_stardt."NomVoiriePCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN a_stardt."NomVoiriePCRS"."angleRotation" IS
'Utilisé uniquement pour l''orientation de l''élément d''habillage
Valeur angulaire en degrés décimaux';
COMMENT ON COLUMN a_stardt."NomVoiriePCRS"."geometrie" IS
'Géométrie de type point';
COMMENT ON COLUMN a_stardt."NomVoiriePCRS"."justification" IS
'Utilisé pour la justification du texte';
COMMENT ON COLUMN a_stardt."NomVoiriePCRS"."libelle" IS
'Texte du libellé à utiliser comme habillage du PCRS';
COMMENT ON COLUMN a_stardt."NomVoiriePCRS"."taille" IS
'Facteur de taille permettant le cas échéant aux utilisateurs de pondérer la taille du texte';
COMMENT ON COLUMN a_stardt."NomVoiriePCRS"."idNomVoirie" IS
'Identifiant unique dans le jeu de données des noms de voirie.
Valeurs possibles :
Selon la collectivité gestionnaire du PCRS,
et si possible identique à celui du référentiel dont est issu la donnée.';
COMMENT ON COLUMN a_stardt."NomVoiriePCRS"."positionnement" IS
'Indication quant au positionnement de l''élément d''habillage par rapport à la voirie.';


-- ---------------------------------
-- Classe : NumeroVoiriePCRS
-- ---------------------------------


--DROP INDEX if exists a_stardt."NumeroVoiriePCRS_geometrie_geomidx" cascade;
DROP SEQUENCE if exists a_stardt."NumeroVoiriePCRS_idNumeroVoirie_seq" cascade;
--DROP TABLE if exists a_stardt."NumeroVoiriePCRS" cascade;

CREATE SEQUENCE a_stardt."NumeroVoiriePCRS_idNumeroVoirie_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Table: NumeroVoiriePCRS
--DROP TABLE if exists a_stardt."NumeroVoiriePCRS" cascade;
CREATE TABLE a_stardt."NumeroVoiriePCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES a_stardt."CategorieThematiquePCRSType" ("code"),
  "angleRotation" decimal NOT NULL CHECK ("angleRotation" >= 0 AND "angleRotation" < 360),
  --"geometrie" geometry(POINT,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "justification" character varying(1) NOT NULL REFERENCES a_stardt."TexteJustificationPCRSType" (code),
  "libelle" character varying NOT NULL,
  "taille" decimal NOT NULL,
  "idNumeroVoirie" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."NumeroVoiriePCRS_idNumeroVoirie_seq"'::regclass),
  "positionnement" character varying(2) REFERENCES a_stardt."CategoriePlacementPCRSType" (code),
  CONSTRAINT "NumeroVoiriePCRS_pkey" PRIMARY KEY ("idHabillage"),
  --CONSTRAINT "NumeroVoiriePCRS_pkey" PRIMARY KEY ("idHabillage")
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_stardt."HabillageTextePCRS")
WITH (
  OIDS=FALSE
);

-- Index: NumeroVoiriePCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."NumeroVoiriePCRS_geometrie_geomidx" cascade;
CREATE INDEX "NumeroVoiriePCRS_geometrie_geomidx"
  ON a_stardt."NumeroVoiriePCRS"
  USING gist
  (geometrie);


COMMENT ON TABLE a_stardt."NumeroVoiriePCRS" IS
'Nom de la classe :
NumeroVoiriePCRS

Sous-classe de :
HabillageTextePCRS

Titre :
Numéro d''adresse

Définition :
Numéros de voirie de type adresse, liés à un référentiel donné, servant de données
d''habillage du PCRS.
Les numéros de voirie du PCRS doivent être positionnés de façon à permettre un
affichage à l''intérieur des parcelles (non modélisées dans le PCRS), et ne se
superposant pas (pour des plans au 1/200ème) aux noms de voirie du PCRS, de façon à
ne pas empiéter en zone dense ou très dense sur les espaces liés à la représentation
des réseaux (non modélisés dans le PCRS).

Modélisation :
Point (propriété de la classe généralisée HabillageTextePCRS)
Libellé de type texte positionnant de façon ponctuelle le numéro d''adresse.

Contraintes :
Contraintes de positionnement en dehors de l''espace public de la voirie, en particulier en
zone dense ou très dense';

COMMENT ON COLUMN a_stardt."NumeroVoiriePCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN a_stardt."NumeroVoiriePCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN a_stardt."NumeroVoiriePCRS"."angleRotation" IS
'Utilisé uniquement pour l''orientation de l''élément d''habillage
Valeur angulaire en degrés décimaux';
COMMENT ON COLUMN a_stardt."NumeroVoiriePCRS"."geometrie" IS
'Géométrie de type point';
COMMENT ON COLUMN a_stardt."NumeroVoiriePCRS"."justification" IS
'Utilisé pour la justification du texte';
COMMENT ON COLUMN a_stardt."NumeroVoiriePCRS"."libelle" IS
'Texte du libellé à utiliser comme habillage du PCRS';
COMMENT ON COLUMN a_stardt."NumeroVoiriePCRS"."taille" IS
'Facteur de taille permettant le cas échéant aux utilisateurs de pondérer la taille du texte';
COMMENT ON COLUMN a_stardt."NumeroVoiriePCRS"."idNumeroVoirie" IS
'Identifiant unique dans le jeu de données des numéros de voirie.
Selon la collectivité gestionnaire du PCRS,
et si possible identique à celui du référentiel dont est issu la donnée.';
COMMENT ON COLUMN a_stardt."NumeroVoiriePCRS"."positionnement" IS
'Indication quant au positionnement de l''élément d''habillage par rapport à la voirie.';


-- ---------------------------------
-- Classe : HabillageLignesPCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."HabillageLignesPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_stardt."HabillageLignesPCRS_idHabillage_seq" cascade;
--DROP TABLE if exists a_stardt."HabillageLignesPCRS" cascade;


--CREATE SEQUENCE a_stardt."HabillageLignesPCRS_idHabillage_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: HabillageLignesPCRS
--DROP TABLE if exists a_stardt."HabillageLignesPCRS" cascade;
CREATE TABLE a_stardt."HabillageLignesPCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES a_stardt."CategorieThematiquePCRSType" ("code"),
  --"geometrie" geometry(MULTILINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "HabillageLignesPCRS_pkey" PRIMARY KEY ("idHabillage"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'MULTILINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_stardt."HabillagePCRS")
WITH (
  OIDS=FALSE
);

-- Index: HabillageLignesPCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."HabillageLignesPCRS_geometrie_geomidx" cascade;
CREATE INDEX "HabillageLignesPCRS_geometrie_geomidx"
  ON a_stardt."HabillageLignesPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_stardt."HabillageLignesPCRS" IS
'Nom de la classe :
HabillageLignesPCRS

Sous-classe de :
HabillagePCRS

Titre :
Lignes d''habillage

Définition :
Classe spécialisée de la classe abstraite <HabillagePCRS> permettant de décrire tous
les éléments d''habillage de type lignes utiles à la compréhension du PCRS

Modélisation :
Multilignes

La classe contient :
- les orographies,
- les dessins d''affleurants,
- les changements de revêtement non représentés comme des objets du PCRS
- les fondations
- les limites de haies, d''espace vert, etc.
- largeur des ouvertures
...';

COMMENT ON COLUMN a_stardt."HabillageLignesPCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN a_stardt."HabillageLignesPCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN a_stardt."HabillageLignesPCRS"."geometrie" IS
'Géométrie de type multiligne';


-- ---------------------------------
-- Classe : HabillageEnveloppePCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."HabillageEnveloppePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_stardt."HabillageEnveloppePCRS_idHabillage_seq" cascade;
--DROP TABLE if exists a_stardt."HabillageEnveloppePCRS" cascade;


--CREATE SEQUENCE a_stardt."HabillageEnveloppePCRS_idHabillage_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: HabillageEnveloppePCRS
--DROP TABLE if exists a_stardt."HabillageEnveloppePCRS" cascade;
CREATE TABLE a_stardt."HabillageEnveloppePCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES a_stardt."CategorieThematiquePCRSType" ("code"),
  --"geometrie" geometry(POLYGON,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "HabillageEnveloppePCRS_pkey" PRIMARY KEY ("idHabillage"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POLYGON'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_stardt."HabillagePCRS")
WITH (
  OIDS=FALSE
);

-- Index: HabillageEnveloppePCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."HabillageEnveloppePCRS_geometrie_geomidx" cascade;
CREATE INDEX "HabillageEnveloppePCRS_geometrie_geomidx"
  ON a_stardt."HabillageEnveloppePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_stardt."HabillageEnveloppePCRS" IS
'Nom de la classe :
HabillageEnveloppePCRS

Sous-classe de :
HabillagePCRS

Titre :
Enveloppe d''habillage

Définition :
Classe spécialisée de la classe abstraite <HabillagePCRS> permettant de décrire tous
les éléments d''habillage de type surfacique utiles à la compréhension du PCRS

Modélisation :
Polygones

La classe contient :
- les mobiliers urbains,
...';

COMMENT ON COLUMN a_stardt."HabillageEnveloppePCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN a_stardt."HabillageEnveloppePCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN a_stardt."HabillageEnveloppePCRS"."geometrie" IS
'Géométrie de type surfacique';


-- ---------------------------------
-- Classe : PointLevePCRS
-- ---------------------------------


--DROP INDEX if exists a_stardt."PointLevePCRS_geometrie_geomidx" cascade;
DROP SEQUENCE if exists a_stardt."PointLevePCRS_numeroPoint_seq" cascade;
--DROP TABLE if exists a_stardt."PointLevePCRS" cascade;

CREATE SEQUENCE a_stardt."PointLevePCRS_numeroPoint_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Table: PointLevePCRS
--DROP TABLE if exists a_stardt."PointLevePCRS" cascade;
CREATE TABLE a_stardt."PointLevePCRS"
(
  --"geometrie" geometry(POINT,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "horodatage" date,
  "numeroPoint"  character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."PointLevePCRS_numeroPoint_seq"'::regclass),
  "precisionXY" integer NOT NULL,
  "precisionZ" integer,
  "producteur" character varying,
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
WITH (
  OIDS=FALSE
);

-- Index: PointLevePCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."PointLevePCRS_geometrie_geomidx" cascade;
CREATE INDEX "PointLevePCRS_geometrie_geomidx"
  ON a_stardt."PointLevePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_stardt."PointLevePCRS" IS
'Nom de la classe :
PointLevePCRS

Titre :
Point levé du PCRS

Définition :
Point géoréférencé en planimétrie, ou planimétrie et altimétrie du PCRS

Modélisation :
Point
La modélisation géométrique par point(s) est propre à chacun des objets du PCRS, elle
sera donc décrite dans la partie du catalogue propre à chacun des objets dérivés de la
classe ObjetVecteurPCRS (paragraphes B.3.17 à B.3.31)

La classe contient :
De façon non limitative, tout point situé le long ou sur le pourtour d''un objet du PCRS
peut être décrit par cette classe d''objet, par exemple :
- Point le long d''un fil d''eau
- Point d''une limite apparente
- Point d''amorce de bâti
- Point de seuil
- Point de rupture de pente
- Point le long d''un rail
- Point associé à un dénivelé d''escalier ou de marche d''escalier
- Par extension, tout point utile issu d''un lever Mobile Mapping (nuages de points LIDAR, vues
immersives...).

Contraintes :
Un point levé doit être topologiquement inclus dans l''emprise du levé topographique.
Les points peu précis n''ont pas à figurer dans les données échangées du PCRS.

Critères de sélection :
Tout point servant à qualifier un objet du PCRS en tant que support pour une cotation des
réseaux en classe A (planimétrie et altimétrie) ou en classe AP (planimétrie seulement)
au sens DT-DICT.';

COMMENT ON COLUMN a_stardt."PointLevePCRS"."geometrie" IS
'Géométrie de type ponctuel';
COMMENT ON COLUMN a_stardt."PointLevePCRS"."horodatage" IS
'Horodatage du point au moment du levé topographique';
COMMENT ON COLUMN a_stardt."PointLevePCRS"."numeroPoint" IS
'Numéro attribué au point levé lors du levé topographique ou de l''integration
au référentiel selon une ou plusieurs
méthodologies à préciser si possible dans les métadonnées.
Valeurs possibles :
Un ou plusiseurs caractères alpha non accentués préfixant un nombre
à valeurs dans une série numérique croissante avec possibilités de
sauts / valeurs manquantes dans la suite.';
COMMENT ON COLUMN a_stardt."PointLevePCRS"."precisionXY" IS
'Précision planimétrique exprimée en cm';
COMMENT ON COLUMN a_stardt."PointLevePCRS"."precisionZ" IS
'Précision altimétrique exprimée en cm';
COMMENT ON COLUMN a_stardt."PointLevePCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';


-- ---------------------------------
-- Classe : ObjetVecteurPCRS
-- ---------------------------------

-- Sequence: ObjetVecteurPCRS_idObjet_seq
--DROP INDEX if exists a_stardt."ObjetVecteurPCRS_geometrie_geomidx" cascade;
DROP SEQUENCE if exists a_stardt."ObjetVecteurPCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_stardt."ObjetVecteurPCRS" cascade;

CREATE SEQUENCE a_stardt."ObjetVecteurPCRS_idObjet_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Table: ObjetVecteurPCRS
--DROP TABLE if exists a_stardt."ObjetVecteurPCRS" cascade;
CREATE TABLE a_stardt."ObjetVecteurPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_stardt."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  CONSTRAINT "ObjetVecteurPCRS_pkey" PRIMARY KEY ("idObjet")
)
WITH (
  OIDS=FALSE
);

-- Index: ObjetVecteurPCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."ObjetVecteurPCRS_geometrie_geomidx" cascade;
--CREATE INDEX "ObjetVecteurPCRS_geometrie_geomidx"
--  ON a_stardt."ObjetVecteurPCRS"
--  USING gist
--  (geometrie);

COMMENT ON TABLE a_stardt."ObjetVecteurPCRS" IS
'Nom de la classe :
ObjetVecteurPCRS

Titre :
Objet vecteur du PCRS

Définition :
Classe abstraite permettant de décrire tous les objets levés du PCRS autres que les
primitives de type point levé. Elle sert principalement à définir les caractéristiques,
attributs et relations communs à tous.
Seul le géoréférencement précis (centimétrique) des objets du PCRS est à prendre en
compte dans cette modélisation conceptuelle : tout autre usage, et en particulier métier
ne fait pas partie du périmètre des objets du PCRS

Modélisation :
Point(s) ou Ligne polygonale, s''appuyant sur des points levés
La modélisation géométrique est propre à chacun des objets du PCRS, elle sera donc
décrite dans la partie suivante du catalogue propre à chacun des objets dérivés de la
classe ObjetVecteurPCRS (paragraphes B.3.5 à B.3.18)
Les objets linéaires en courbe peuvent résulter de primitives complexes (comme par
exemple les arcs ou les splines). Attention cependant à bien gérer les échanges de
données avec le DAO dont les objets sont en général issus. Attention également à bien
assurer en relation avec les objets du PCRS une densité de points levés suffisante pour
garantir les objectifs de précisions planimétrique et altimétrique d''ordre centimétrique du
PCRS : en particulier, on s''attachera à toute situation de rupture de pente de faire
correspondre un point levé topographique, sur lequel s''appuiera obligatoirement la
définition géométrique de l''objet du PCRS.
On s''attachera également sur l''emprise du levé topographique à garantir une continuité
optimale des objets linéaires (en privilégiant ainsi la longueur totale de l''objet), sans pour
autant se soucier d''une modélisation topologique des objets : chacun des segments peut
s''appuyer sur un point levé topographique, mais les relations topologiques entre nœuds
et segments n''ont pas à être décrites

La classe contient :
Les objets vecteur du PCRS sont regroupés par thématiques :
le Bâti
la Voirie
le Ferroviaire
les Clôtures
le Végétal
les ouvrages d''art
les affleurants

Critères de sélection :
Selon la nomenclature des objets vecteur du PCRS';

COMMENT ON COLUMN a_stardt."ObjetVecteurPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_stardt."ObjetVecteurPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."ObjetVecteurPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."ObjetVecteurPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_stardt."ObjetVecteurPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_stardt."ObjetVecteurPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_stardt."ObjetVecteurPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';


-- ---------------------------------
-- Classe : PointCanevasPCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."PointCanevasPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_stardt."PointCanevasPCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_stardt."PointCanevasPCRS" cascade;

--CREATE SEQUENCE a_stardt."PointCanevasPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: PointCanevasPCRS
--DROP TABLE if exists a_stardt."PointCanevasPCRS" cascade;
CREATE TABLE a_stardt."PointCanevasPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_stardt."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  "canevas" character varying,
  "dateCreation" date,
  "fiche" character varying,
  --"geometrie" geometry(POINT,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "immatriculation" character varying,
  "precisionXY" integer,
  "precisionZ" integer,
  CONSTRAINT "PointCanevasPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_stardt."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);

-- Index: PointCanevasPCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."PointCanevasPCRS_geometrie_geomidx" cascade;
CREATE INDEX "PointCanevasPCRS_geometrie_geomidx"
  ON a_stardt."PointCanevasPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_stardt."PointCanevasPCRS" IS
'Nom de la classe :
PointCanevasPCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Points de canevas topographique

Définition :
Un canevas topographique est constitué d''un ensemble de points matérialisés sur le
terrain, repérés en coordonnées XY et Z dans les référentiels géographiques
planimétriques et altimétriques en vigueur, facilitant ainsi la production de séries de
données géographiques cohérentes et homogènes lors des levés topographiques
réalisés par les géomètres. Ils disposent d''une immatriculation spécifique au canevas
utilisé et sont en général documentés par une fiche signalétique accessible au public

Modélisation :
Point
Lorsque l''altimétrie du point de canevas est disponible, il est obligatoire de la fournir sous
forme de coordonnée Z

La classe contient :
Tout point précédemment déterminé et matérialisé sur le terrain et répondant à la
précision attendue.

Contraintes :
La modélisation conceptuelle des points de canevas est uniquement topographique, et
ne se substitue pas à la logique de gestion de ceux ci et pour laquelle un des principaux
cas d''utilisation correspond à l''information du public, avec adresse de localisation,
photographie, URL, etc... Les gestionnaires des différents canevas entretiennent pour
cela d''autres séries de données pour lesquelles l''immatriculation d''un point de canevas
associée au type de canevas concerné permettent le cas échéant de mettre en relation
les données du PCRS avec les données sources d''immatriculation et de gestion des
points de canevas.

Critères de sélection :
Les points de canevas dont la précision ne serait pas au moins égale à celle attendue
lors du levé topographique des objets du PCRS sont exclus de cette classe d''objets';

COMMENT ON COLUMN a_stardt."PointCanevasPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_stardt."PointCanevasPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."PointCanevasPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."PointCanevasPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_stardt."PointCanevasPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_stardt."PointCanevasPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_stardt."PointCanevasPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_stardt."PointCanevasPCRS"."canevas" IS
'Type de canevas auquel appartient le point considéré';
COMMENT ON COLUMN a_stardt."PointCanevasPCRS"."dateCreation" IS
'Date de création ou de mise à jour des données du point de canevas';
COMMENT ON COLUMN a_stardt."PointCanevasPCRS"."fiche" IS
'Addresse de type URL susceptible de fournir des informations supplémentaires,
comme des photographies de repérage, sur le point de canevas';
COMMENT ON COLUMN a_stardt."PointCanevasPCRS"."geometrie" IS
'Géométrie du point';
COMMENT ON COLUMN a_stardt."PointCanevasPCRS"."immatriculation" IS
'Référence externe selon la convention d''immatriculation du canevas considéré';
COMMENT ON COLUMN a_stardt."PointCanevasPCRS"."precisionXY" IS
'Précision planimétrique exprimée en cm';
COMMENT ON COLUMN a_stardt."PointCanevasPCRS"."precisionZ" IS
'Précision altimétrique exprimée en cm';


-- ---------------------------------
-- Classe : ObjetGeneriquePCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."ObjetGeneriquePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_stardt."ObjetGeneriquePCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_stardt."ObjetGeneriquePCRS" cascade;

--CREATE SEQUENCE a_stardt."ObjetGeneriquePCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: ObjetGeneriquePCRS
--DROP TABLE if exists a_stardt."ObjetGeneriquePCRS" cascade;
CREATE TABLE a_stardt."ObjetGeneriquePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_stardt."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(GEOMETRY,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "identification" character varying REFERENCES a_stardt."CategorieObjetPCRS17Type" ("nomClasse"),
  CONSTRAINT "ObjetGeneriquePCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  --CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'GEOMETRY'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'GEOMETRY'::text OR geometrytype("geometrie") = 'MULTIPOLYGON'::text OR geometrytype("geometrie") = 'POLYGON'::text  OR geometrytype("geometrie") = 'MULTILINESTRING'::text OR geometrytype("geometrie") = 'LINESTRING'::text  OR geometrytype("geometrie") = 'MULTIPOINT'::text OR geometrytype("geometrie") = 'POINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_stardt."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: ObjetGeneriquePCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."ObjetGeneriquePCRS_geometrie_geomidx" cascade;
CREATE INDEX "ObjetGeneriquePCRS_geometrie_geomidx"
  ON a_stardt."ObjetGeneriquePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_stardt."ObjetGeneriquePCRS" IS
'Nom de la classe :
ObjetGeneriquePCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Objet générique du PCRS

Définition :
Classe permettant de décrire un objet levé du PCRS dont la précision du
géoréférencement est connue, sans que le gestionnaire du PCRS puisse en déterminer
le type dans la nomenclature des objets du PCRS : cette classe d''objet sert
principalement à initialiser le PCRS avec tous les objets utilisables pour une cotation et
dont il faudra déterminer le type dans la nomenclature et la thématique associée.

Modélisation :
Point, Ligne polygonale, ou Polygone
Les aspects de la modélisation géométrique sont propres à ceux décrits dans la
modélisation des objets linéaires de la classe abstraite <ObjetVecteurPCRS>';

COMMENT ON COLUMN a_stardt."ObjetGeneriquePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_stardt."ObjetGeneriquePCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."ObjetGeneriquePCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."ObjetGeneriquePCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_stardt."ObjetGeneriquePCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_stardt."ObjetGeneriquePCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_stardt."ObjetGeneriquePCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_stardt."ObjetGeneriquePCRS"."geometrie" IS
'Géométrie de l''objet générique';
COMMENT ON COLUMN a_stardt."ObjetGeneriquePCRS"."identification" IS
'L''identification décrit le nom de la classe spécialisée selon
la nomenclature des objets du PCRS.
Inconnue à l''initialisation du PCRS par la collectivité gestionnaire, elle peut-être
précisée lors de tout échange inverse entre utilisateur et collectivité gestionnaire';


-- ---------------------------------
-- Classe : QuaiFluvioMaritimePCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."QuaiFluvioMaritimePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_stardt."QuaiFluvioMaritimePCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_stardt."QuaiFluvioMaritimePCRS" cascade;

--CREATE SEQUENCE a_stardt."QuaiFluvioMaritimePCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: QuaiPCRS
--DROP TABLE if exists a_stardt."QuaiFluvioMaritimePCRS" cascade;
CREATE TABLE a_stardt."QuaiFluvioMaritimePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_stardt."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "QuaiFluvioMaritimePCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_stardt."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: QuaiFluvioMaritimePCRS_geometrie_geomidx
--DROP INDEX if exists "QuaiFluvioMaritimePCRS_geometrie_geomidx" cascade;
CREATE INDEX "QuaiFluvioMaritimePCRS_geometrie_geomidx"
  ON a_stardt."QuaiFluvioMaritimePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_stardt."QuaiFluvioMaritimePCRS" IS
'Nom de la classe :
QuaiFluvioMaritimePCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Quais fluvio-maritimes

Définition :
Ouvrage le long de berge, de rive ou de rivage d''un port ou d''une voie navigable,
aménagée en vue de permettre l''accostage des bâtiments de navigation, l''embarquement
ou le débarquement des passagers, le chargement ou le déchargement des marchandises.

Modélisation :
Polyligne
Les quais sont levés au nez du quai.
Les autres aspects de la modélisation géométrique sont propres à ceux décrits dans
la modélisation des objets linéaires de la classe abstraite ObjetVecteurPCRS.

La classe contient :
* Quais

Contraintes :
Classe essentielle du PCRS

Critères de sélection :
';

COMMENT ON COLUMN a_stardt."QuaiFluvioMaritimePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_stardt."QuaiFluvioMaritimePCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."QuaiFluvioMaritimePCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."QuaiFluvioMaritimePCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_stardt."QuaiFluvioMaritimePCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_stardt."QuaiFluvioMaritimePCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_stardt."QuaiFluvioMaritimePCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_stardt."QuaiFluvioMaritimePCRS"."geometrie" IS
'Géométrie du quai';


-- ---------------------------------
-- Classe : QuaiRailPCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."QuaiRailPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_stardt."QuaiRailPCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_stardt."QuaiRailPCRS" cascade;

--CREATE SEQUENCE a_stardt."QuaiRailPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: QuaiRailPCRS
--DROP TABLE if exists a_stardt."QuaiRailPCRS" cascade;
CREATE TABLE a_stardt."QuaiRailPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_stardt."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "QuaiRailPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_stardt."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: QuaiRailPCRS_geometrie_geomidx
--DROP INDEX if exists "QuaiRailPCRS_geometrie_geomidx" cascade;
CREATE INDEX "QuaiRailPCRS_geometrie_geomidx"
  ON a_stardt."QuaiRailPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_stardt."QuaiRailPCRS" IS
'Nom de la classe :
QuaiRailPCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Quais de rail

Définition :
Plate-forme le long des voies pour le chargement ou le déchargement à niveau des wagons.

Modélisation :
Polyligne
Les quais, bordures, bordurettes... sont levés point à point, le long du fil d''eau
uniquement, et jamais sur le nez de bordure ou du quai.
Les autres aspects de la modélisation géométrique sont propres à ceux décrits dans la
modélisation des objets linéaires de la classe abstraite ObjetVecteurPCRS.

La classe contient :
* Quais de rail

Contraintes :
Classe essentielle du PCRS

Critères de sélection :
';

COMMENT ON COLUMN a_stardt."QuaiRailPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_stardt."QuaiRailPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."QuaiRailPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."QuaiRailPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_stardt."QuaiRailPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_stardt."QuaiRailPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_stardt."QuaiRailPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_stardt."QuaiRailPCRS"."geometrie" IS
'Géométrie du quai';


-- ---------------------------------
-- Classe : LimiteVoiriePCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."LimiteVoiriePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_stardt."LimiteVoiriePCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_stardt."LimiteVoiriePCRS" cascade;


--CREATE SEQUENCE a_stardt."LimiteVoiriePCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: LimiteVoiriePCRS
--DROP TABLE if exists a_stardt."LimiteVoiriePCRS" cascade;
CREATE TABLE a_stardt."LimiteVoiriePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_stardt."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "LimiteVoiriePCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_stardt."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: LimiteVoiriePCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."LimiteVoiriePCRS_geometrie_geomidx" cascade;
CREATE INDEX "LimiteVoiriePCRS_geometrie_geomidx"
  ON a_stardt."LimiteVoiriePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_stardt."LimiteVoiriePCRS" IS
'Nom de la classe :
LimiteVoiriePCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Limite de voirie

Définition :
Toute limite apparente de la chaussée, caractérisée par une bordure ou un changement
de revêtement est décrite par un objet de cette classe.

Modélisation :
Polyligne
Les changements de revêtement sont levés point à point au niveau du sol.
Les quais, bordures, bordurettes... qui marquent la limite de la chaussée sont levés
point à point, le long du fil d''eau uniquement.
Pour les nouveaux levés, il est conseillé de laisser l''objet à gauche.
Les autres aspects de la modélisation géométrique sont propres à ceux décrits dans la
modélisation des objets linéaires de la classe abstraite ObjetVecteurPCRS.

La classe contient :
Limites de chaussée revêtue, marquant le limite de la voirie
(exemple un bord goudronné)
Bordure de chaussées
';

COMMENT ON COLUMN a_stardt."LimiteVoiriePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_stardt."LimiteVoiriePCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."LimiteVoiriePCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."LimiteVoiriePCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_stardt."LimiteVoiriePCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_stardt."LimiteVoiriePCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_stardt."LimiteVoiriePCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_stardt."LimiteVoiriePCRS"."geometrie" IS
'Géométrie de type courbe';


-- ---------------------------------
-- Classe : MarcheEscalierPCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."MarcheEscalierPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_stardt."MarcheEscalierPCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_stardt."MarcheEscalierPCRS" cascade;


--CREATE SEQUENCE a_stardt."MarcheEscalierPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: MarcheEscalierPCRS
--DROP TABLE if exists a_stardt."MarcheEscalierPCRS" cascade;
CREATE TABLE a_stardt."MarcheEscalierPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_stardt."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "symbole" character varying REFERENCES a_stardt."HabillageSymbolePCRS" ("idHabillage"),
  CONSTRAINT "MarcheEscalierPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_stardt."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: MarcheEscalierPCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."MarcheEscalierPCRS_geometrie_geomidx" cascade;
CREATE INDEX "MarcheEscalierPCRS_geometrie_geomidx"
  ON a_stardt."MarcheEscalierPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_stardt."MarcheEscalierPCRS" IS
'Nom de la classe :
MarcheEscalierPCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Marche d''escalier

Définition :
Classe permettant de décrire une « marche permettant de franchir une dénivellation, à
dissocier des proéminences de bâtiments. A généraliser aux marches dans la voirie. »
(d''après AIVF_20_1)

Modélisation :
Polyligne
Un escalier est composé d''une ou plusieurs portions, séparées par des paliers
intermédiaires. Une portion est composée d''une ou plusieurs marches, et un symbole
peut être attaché à chaque portion d''escalier.
Les paliers intermédiaires peuvent si besoin être décrits au moyen des dernières
marches de chaque portion d''escalier.
Les rampes d’accès sont levées aux ruptures de pentes.

La classe contient :
Les escaliers du PCRS peuvent se retrouver dans deux thématiques, le bâti et la voirie
Dans tous les cas, il s''agit d''escaliers extérieurs, et ayant au moins une limite apparente
sur le domaine public.
Les proéminences bâties (non utiles pour franchir un obstacle) ne sont pas
inclues dans cette classe.

Contraintes :
Une marche milieu (ou les deux marches milieu lorsque les marches sont en nombre
pair) d''une portion d''escalier située entre deux paliers peut être porteuse d''un symbole
indiquant le sens de la montée. Le point porteur du symbole est alors déterminé au
centre du centroïde de la marche milieu (ou des deux marches milieu lorsque les
marches sont en nombre pair)

Critères de sélection :
L''escalier du PCRS doit obligatoirement être situé à l''extérieur, et proposer au moins une
limite apparente avec le domaine public.';

COMMENT ON COLUMN a_stardt."MarcheEscalierPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_stardt."MarcheEscalierPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."MarcheEscalierPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."MarcheEscalierPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_stardt."MarcheEscalierPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_stardt."MarcheEscalierPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_stardt."MarcheEscalierPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_stardt."MarcheEscalierPCRS"."geometrie" IS
'Géométrie de type curve';
COMMENT ON COLUMN a_stardt."MarcheEscalierPCRS"."symbole" IS
'Lien vers un symbole utilisé pour la définition du sens de l''escalier';


-- ---------------------------------
-- Classe : FacadePCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."FacadePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_stardt."FacadePCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_stardt."FacadePCRS" cascade;

--CREATE SEQUENCE a_stardt."FacadePCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: FacadePCRS
--DROP TABLE if exists a_stardt."FacadePCRS" cascade;
CREATE TABLE a_stardt."FacadePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_stardt."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "FacadePCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_stardt."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: FacadePCRS_geometrie_geomidx
--DROP INDEX if exists "FacadePCRS_geometrie_geomidx" cascade;
CREATE INDEX "FacadePCRS_geometrie_geomidx"
  ON a_stardt."FacadePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_stardt."FacadePCRS" IS
'Nom de la classe :
FacadePCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Façade de bâtiment, murs de façade

Définition :
Classe permettant de décrire les éléments de gros-oeuvre, parfois de second-oeuvre,
participant aux faces extérieures d''un bâtiment public ou privé et présentant une
importance étendue

Modélisation :
Polyligne
La façade est levée au niveau du « nu » du mur principal à la hauteur du soubassement
(ou du trottoir en absence de soubassement), en privilégiant autant que possible un levé
en entier du bâtiment, formant ainsi une polyligne fermée. Lorsque le bâtiment ne peut
être levé en entier en tant que façade, la polyligne résultante est alors une polyligne
ouverte

La classe contient :


Contraintes :
Afin de faciliter les représentations de type DAO, il est recommandé par convention que
l’intérieur de la façade se situe à gauche de la polyligne prise dans l’ordre de ses
sommets et par conséquent que la région vers l''extérieur associée au sol ou au
soubassement se situe à droite.
Toute autre convention ou absence de convention dans l''ordre des sommets devra
explicitement être mentionnée dans les métadonnées de publication du PCRS
Classe essentielle du PCRS

Critères de sélection :
Concerne aussi bien les bâtiments durs que les bâtiments légers.
Ne comprends ni les avant-corps (volumes en avancée) et ni les arrière-corps (volumes
en retrait) donnant le relief de façade à compter du « nu » du mur principal
Ne comprend donc pas le soubassement (partie inférieure, massive, d''une construction,
qui surélève celle-ci au niveau du sol ©Larousse) décrit par l''objet
<ProeminenceBatiPCRS>
Ne tient pas compte des éventuels décrochements de seuil (seuils de maison, de cave
ou de garage), décrits par ailleurs par l''objet SeuilPCRS.
';

COMMENT ON COLUMN a_stardt."FacadePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_stardt."FacadePCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."FacadePCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."FacadePCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_stardt."FacadePCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_stardt."FacadePCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_stardt."FacadePCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_stardt."FacadePCRS"."geometrie" IS
'Géométrie de type courbe';


-- ---------------------------------
-- Classe : ProeminenceBatiPCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."ProeminenceBatiPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_stardt."ProeminenceBatiPCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_stardt."ProeminenceBatiPCRS" cascade;

--CREATE SEQUENCE a_stardt."ProeminenceBatiPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: ProeminenceBatiPCRS
--DROP TABLE if exists a_stardt."ProeminenceBatiPCRS" cascade;
CREATE TABLE a_stardt."ProeminenceBatiPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_stardt."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "ProeminenceBatiPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_stardt."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: ProeminenceBatiPCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."ProeminenceBatiPCRS_geometrie_geomidx" cascade;
CREATE INDEX "ProeminenceBatiPCRS_geometrie_geomidx"
  ON a_stardt."ProeminenceBatiPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_stardt."ProeminenceBatiPCRS" IS
'Nom de la classe :
ProeminenceBatiPCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Proéminence du Bâti, Soubassement

Définition :
Classe permettant de décrire l''ensemble des constructions liées au bâtiment, dont
l''emprise est différente de celle levée par les façades (AIVF_19_8), et levée au niveau du
trottoir

Modélisation :
Polyligne
La proéminence du bâti est levée point par point au niveau du trottoir et au sens de
l''emprise maximum du bâtiment sur le domaine public.
Les autres aspects de la modélisation géométrique sont propres à ceux décrits dans la
modélisation des objets linéaires de la classe abstraite ObjetVecteurPCRS

La classe contient :
Perron, marche de maison
Terrasse - Devanture
Véranda

Critères de sélection :
Ne comprend pas les caves';

COMMENT ON COLUMN a_stardt."ProeminenceBatiPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_stardt."ProeminenceBatiPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."ProeminenceBatiPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."ProeminenceBatiPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_stardt."ProeminenceBatiPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_stardt."ProeminenceBatiPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_stardt."ProeminenceBatiPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_stardt."ProeminenceBatiPCRS"."geometrie" IS
'Géométrie de type courbe';


-- ---------------------------------
-- Classe : SeuilPCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."SeuilPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_stardt."SeuilPCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_stardt."SeuilPCRS" cascade;

--CREATE SEQUENCE a_stardt."SeuilPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: SeuilPCRS
--DROP TABLE if exists a_stardt."SeuilPCRS" cascade;
CREATE TABLE a_stardt."SeuilPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_stardt."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "symbole" character varying REFERENCES a_stardt."HabillageSymbolePCRS" ("idHabillage"),
  CONSTRAINT "SeuilPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_stardt."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: SeuilPCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."SeuilPCRS_geometrie_geomidx" cascade;
CREATE INDEX "SeuilPCRS_geometrie_geomidx"
  ON a_stardt."SeuilPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_stardt."SeuilPCRS" IS
'Nom de la classe :
SeuilPCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Seuil, Ouverture d''un bâtiment ou d''un mur

Définition :
Classe permettant de décrire l''ensemble des portes, portes cochères, portails, seuils
permettant l''entrée ou la sortie dans un bâtiment ou dans une enceinte (AIVF_19_3)

Modélisation :
Ligne
La ligne est définie comme le segment reliant deux points levés (dans le même sens que
le levé de façade du bâtiment ou du mur), et de part et d''autre de l''ouverture du bâtiment
ou du mur
Le point de seuil, déterminé par calcul, est situé à l''axe du seuil, et sert éventuellement à
positionner un symbole décrit par un objet SymboleHabillagePCRS

La classe contient :
Seuil piéton (ou seuil de maison)
Seuil véhicule (ou seuil de garage)
Seuil d''ouverture

Critères de sélection :
À l''exclusion de tout seuil de cave';

COMMENT ON COLUMN a_stardt."SeuilPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_stardt."SeuilPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."SeuilPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."SeuilPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_stardt."SeuilPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_stardt."SeuilPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_stardt."SeuilPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_stardt."SeuilPCRS"."geometrie" IS
'Géométrie de type curve';
COMMENT ON COLUMN a_stardt."SeuilPCRS"."symbole" IS
'';


-- ---------------------------------
-- Classe : MurPCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."MurPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_stardt."MurPCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_stardt."MurPCRS" cascade;

--CREATE SEQUENCE a_stardt."MurPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: MurPCRS
--DROP TABLE if exists a_stardt."MurPCRS" cascade;
CREATE TABLE a_stardt."MurPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_stardt."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "typeMur" character varying(2) REFERENCES a_stardt."CategorieMurPCRSType" ("code"),
  CONSTRAINT "MurPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_stardt."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: MurPCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."MurPCRS_geometrie_geomidx" cascade;
CREATE INDEX "MurPCRS_geometrie_geomidx"
  ON a_stardt."MurPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_stardt."MurPCRS" IS
'Nom de la classe :
MurPCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Murs, Murs de soutènement, Murs bahuts avec ou sans clôture, Clôtures sur socle,
Parapets

Définition :
Classe permettant de décrire les ouvrages de maçonnerie (très souvent en briques ou
parpaings) s''élevant en hauteur et servant à enclore, séparer ou délimiter des espaces.
Certains objets de type socle ou bahut peuvent également être surmontés d''une clôture
plus légère comme une grille ou un grillage.

Modélisation :
Polyligne
cf. modélisation des objets linéaires de la classe abstraite ObjetVecteurPCRS
Les murs sont levés point par point, au sol, sur chaque côté du domaine public, et
complété le cas échéant par un levé point par point, au sol, du côté du domaine privé
accessible. Les murs peuvent être indifféremment décrits par leurs côtés sous la forme
de polylignes ouvertes, ou par une description plus composite assemblant les polylignes
ouvertes et refermant les extrémités pour constituer une unique polyligne fermée.
Le PCRS ne s''attache pas à décrire ni la hauteur du mur ni son épaisseur, ni même le
matériau le constituant.
On ne cherchera à modéliser les piliers distribués le long ou aux extrémités de murs
seulement lorsque leurs dimensions au sol sont différenciables de la largeur du mur,
auquel cas de tels piliers seront décrits par des objets de type <PilierPCRS>

La classe contient :
Mur (AIVF_20_5), Mur bahut (AIVF_20_6), Gabion
Mur de soutènement (AIVF_20_4)
Parapet (AIVF_2_5), Garde-corps
Clôture sur socle ou Bahut avec clôture
Enrochements

Contraintes :
Afin de faciliter les représentations de type DAO, il est recommandé par convention que
l’intérieur du mur porteur de la matière (briques, parpaings, béton, pierre...) se situe à
gauche de la polyligne prise dans l’ordre de ses sommets et par conséquent que la
région vers l''extérieur associée au sol se situe à droite.
Toute autre convention ou absence de convention dans l''ordre des sommets devra
explicitement être mentionnée dans les métadonnées de publication du PCRS.
Classe essentielle du PCRS

Critères de sélection :
Les murs de pierre taillée ou non, ou constitués d''assemblages de bloc sont susceptibles
de présenter des irrégularités incompatibles avec les exigences de précision du PCRS :
ils ne constituent donc pas à proprement parler des murs du PCRS.
Ils doivent toutefois être décrits en renseignant spécifiquement les précisions
planimétriques et/ou altimétriques par des valeurs très supérieures à celles exigées pour
le PCRS';

COMMENT ON COLUMN a_stardt."MurPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_stardt."MurPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."MurPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."MurPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_stardt."MurPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_stardt."MurPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_stardt."MurPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_stardt."MurPCRS"."geometrie" IS
'Géométrie de type curve';
COMMENT ON COLUMN a_stardt."MurPCRS"."typeMur" IS
'';


-- ---------------------------------
-- Classe : PilierPCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."PilierPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_stardt."PilierPCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_stardt."PilierPCRS" cascade;

--CREATE SEQUENCE a_stardt."PilierPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: PilierPCRS
--DROP TABLE if exists a_stardt."PilierPCRS" cascade;
CREATE TABLE a_stardt."PilierPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_stardt."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  CONSTRAINT "PilierPCRS_pkey" PRIMARY KEY ("idObjet")
)
INHERITS (a_stardt."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: PilierPCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."PilierPCRS_geometrie_geomidx" cascade;
--CREATE INDEX "PilierPCRS_geometrie_geomidx"
--  ON a_stardt."PilierPCRS"
--  USING gist
--  (geometrie);

COMMENT ON TABLE a_stardt."PilierPCRS" IS
'Nom de la classe :
PilierPCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Pilier

Définition :
Classe abstraite permettant de décrire une construction en maçonnerie ou en métal, de
section circulaire, carrée, rectangulaire ou polygonale érigée dans le but de reprendre ou
supporter des charges (AIVF_20_2)

Modélisation :
Selon les classes de pilier spécialisées et représentées par un symbole
<PilierRegulierPCRS> ou un polygone <PilierParticulierPCRS>
Propre à chacune des classes de pilier spécialisées <PilierRegulierPCRS> et
<PilierParticulierPCRS> du PCRS
N.B. La hauteur du pilier ne fait pas partie des informations levées dans le cadre du
PCRS

La classe contient :
Tout type de pilier quelles que soient la forme et la taille de sa section ou la matière le
constituant

Critères de sélection :
Lorsque le pilier est associé à un socle ou à un mur, ses dimensions au sol doivent le rendre
différenciable (aux limites de précision planimétrique) du socle ou du mur attenant';

COMMENT ON COLUMN a_stardt."PilierPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_stardt."PilierPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."PilierPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."PilierPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_stardt."PilierPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_stardt."PilierPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_stardt."PilierPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';


-- ---------------------------------
-- Classe : PilierRegulierPCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."PilierRegulierPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_stardt."PilierRegulierPCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_stardt."PilierRegulierPCRS" cascade;

--CREATE SEQUENCE a_stardt."PilierRegulierPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: PilierRegulierPCRS
--DROP TABLE if exists a_stardt."PilierRegulierPCRS" cascade;
CREATE TABLE a_stardt."PilierRegulierPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_stardt."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  "angleRotation" decimal NOT NULL CHECK ("angleRotation" >= 0 AND "angleRotation" < 360),
  --"geometrie" geometry(POINT,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "largeur_mm" decimal NOT NULL,
  "longueur_mm" decimal NOT NULL,
  "section" character varying(2) NOT NULL REFERENCES a_stardt."SectionPilierPCRSType" (code),
  CONSTRAINT "PilierRegulierPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_stardt."PilierPCRS")
WITH (
  OIDS=FALSE
);


-- Index: PilierRegulierPCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."PilierRegulierPCRS_geometrie_geomidx" cascade;
CREATE INDEX "PilierRegulierPCRS_geometrie_geomidx"
  ON a_stardt."PilierRegulierPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_stardt."PilierRegulierPCRS" IS
'Nom de la classe :
PilierRegulierPCRS

Sous-classe de :
PilierPCRS

Titre :
Pilier circulaire, pilier carré, pilier rectangulaire

Définition :
Classe permettant de décrire les constructions en maçonnerie ou en métal, de section
circulaire, carrée, rectangulaire érigées dans le but de reprendre ou supporter des
charges

Modélisation :
Point

La classe contient :
Pilier circulaire
Pilier carré
Pilier rectangulaire
Tout type de pilier de forme régulière à section circulaire, carrée ou rectangulaire et
quelque soit la taille de sa section ou la matière le constituant

Critères de sélection :
Lorsque le pilier est associé à un socle ou à un mur, ses dimensions au sol doivent le
rendre différenciable (aux limites de précision planimétrique) du socle ou du mur attenant';

COMMENT ON COLUMN a_stardt."PilierRegulierPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_stardt."PilierRegulierPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."PilierRegulierPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."PilierRegulierPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_stardt."PilierRegulierPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_stardt."PilierRegulierPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_stardt."PilierRegulierPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_stardt."PilierRegulierPCRS"."angleRotation" IS
'Utlisé uniquement pour l''orientation du symbole de poteau après rotation.
Peut être étendu pour un poteau ovale pour orienter le symbole';
COMMENT ON COLUMN a_stardt."PilierRegulierPCRS"."geometrie" IS
'Géométrie de type point';
COMMENT ON COLUMN a_stardt."PilierRegulierPCRS"."largeur_mm" IS
'Utlisé uniquement pour la mise à l''échelle Y du symbole de poteau après rotation';
COMMENT ON COLUMN a_stardt."PilierRegulierPCRS"."longueur_mm" IS
'Utlisé uniquement pour la mise à l''échelle X du symbole de poteau après rotation';
COMMENT ON COLUMN a_stardt."PilierRegulierPCRS"."section" IS
'Forme de la section à la base du pilier';


-- ---------------------------------
-- Classe : PilierParticulierPCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."PilierParticulierPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_stardt."PilierParticulierPCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_stardt."PilierParticulierPCRS" cascade;


--CREATE SEQUENCE a_stardt."PilierParticulierPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: PilierParticulierPCRS
--DROP TABLE if exists a_stardt."PilierParticulierPCRS" cascade;
CREATE TABLE a_stardt."PilierParticulierPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_stardt."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(POLYGON,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "PilierParticulierPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POLYGON'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_stardt."PilierPCRS")
WITH (
  OIDS=FALSE
);


-- Index: PilierParticulierPCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."PilierParticulierPCRS_geometrie_geomidx" cascade;
CREATE INDEX "PilierParticulierPCRS_geometrie_geomidx"
  ON a_stardt."PilierParticulierPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_stardt."PilierParticulierPCRS" IS
'Nom de la classe :
PilierParticulierPCRS

Sous-classe de :
PilierPCRS

Titre :
Pilier polygonal

Définition :
Classe permettant de décrire les constructions en maçonnerie ou en métal, de section
polygonale érigées dans le but de reprendre ou supporter des charges

Modélisation :
Polyligne fermée
Le pilier est levé point par point au niveau du sol et au sens de l''emprise maximum.
N.B. La hauteur du pilier ne fait pas partie des informations levées dans le cadre du
PCRS

La classe contient :
Tout type de pilier à section de forme polygonale

Contraintes :
Il est décidé par convention que l’intérieur du pilier mur porteur de la matière se situe à
gauche de la polyligne prise dans l’ordre de ses sommets et par conséquent que la
région vers l''extérieur associée au sol se situe à droite.
Les singularités liées au cheminement polygonal, et en particulier la singularité dite « en
papillon » doivent être évitées

Critères de sélection :
Lorsque le pilier est attenant à un socle ou à un mur, ses dimensions au sol doivent le
rendre différenciable (aux limites de précision planimétrique) du socle ou du mur attenant';

COMMENT ON COLUMN a_stardt."PilierParticulierPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_stardt."PilierParticulierPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."PilierParticulierPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."PilierParticulierPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_stardt."PilierParticulierPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_stardt."PilierParticulierPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_stardt."PilierParticulierPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_stardt."PilierParticulierPCRS"."geometrie" IS
'Géométrie de type polygone';


-- ---------------------------------
-- Classe : RailPCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."RailPCRS_geometrie_geomidx" cascade;
--DROP TABLE if exists a_stardt."RailPCRS" cascade;
--DROP SEQUENCE if exists a_stardt."RailPCRS_idObjet_seq" cascade;

--CREATE SEQUENCE a_stardt."RailPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: RailPCRS
--DROP TABLE if exists a_stardt."RailPCRS" cascade;
CREATE TABLE a_stardt."RailPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_stardt."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "RailPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_stardt."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: RailPCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."RailPCRS_geometrie_geomidx" cascade;
CREATE INDEX "RailPCRS_geometrie_geomidx"
  ON a_stardt."RailPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_stardt."RailPCRS" IS
'Nom de la classe :
RailPCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Rail d''un tronçon de voie ferrée

Définition :
Classe permettant de décrire de façon unitaire et continue l''assemblage de rails d''un
tronçon de voie ferrée. Un rail est un guide linéaire constitué de profilés d''acier laminés
soudés bout à bout, et constituant le chemin de roulement et de guidage des roues des
véhicules ferroviaires. Une voie ferroviaire simple est constituée de deux rails parallèles
et à écartement fixe et standardisé qui peut être différent par pays (1,435m en France).

Modélisation :
Polylignes
cf. modélisation des objets linéaires de la classe abstraite ObjetVecteurPCRS
Le levé topographique d''une voie ferrée simple est effectué rail par rail et toujours à
l''intérieur vers l''axe de la voie, de façon à maintenir un écart uniforme entre les deux
polylignes, et égal à l''écartement du rail. Le nivellement de chaque point de levé doit
correspondre à un point situé sur la partie supérieure du rail en contact au niveau de la
bande de roulement. Le nivellement des deux rails d''une même section transversale
d''une voie simple est normalement identique pour un alignement droit et peut être
différent pour une courbe ou une clothoïde (raccordement entre courbe et alignement
droit) selon le tracé en plan de la voie ferrée.
Le gestionnaire du PCRS a toute latitude pour préciser lorsque les circonstances le
justifient d''autres modes de levé (typiquement dans l''axe du rail au milieu de la bande de
roulement sur un rail Vignole) : le cahier des charges ainsi que les Métadonnées de
livraison devront alors explicitement préciser le mode de levé associé
(d''après http://fr.wikipedia.org/wiki/Voie_normale)
Un rail est souvent décrit dans le secteur ferroviaire par emprises et par tronçons. Cette
description « métier » peut être conservée dans le PCRS, mais les attributs servant à la
décrire ne font pas à proprement parler partie du PCRS.

La classe contient :
Tout type de rail (anciennement champignon/double champignon, Vignole, à gorge...)
utilisé sur une voie ferrée de tout type (normale, industrielle, à crémaillère, pour le
transport urbain, de type tramway)

Contraintes :
Deux rails connexes doivent lorsqu''il s''agit de la même voie simple partager aux
tolérances de précisions planimétrique et altimétriques près une même extrémité. Un
aiguillage qui assure la jonction rail par rail entre deux voies simples devra partager (au
sens du géoréférencement et aux tolérances de précisions près) chacune de ses
extrémités avec un des points levés des rails connectés. La description n''est cependant
pas explicitement topologique : on ne cherchera pas à décrire les relations entre nœuds
et segments du réseau ainsi formé
Classe essentielle du PCRS

Critères de sélection :
Ne concerne que les voies situées sur le domaine public ou en assurant sa desserte';

COMMENT ON COLUMN a_stardt."RailPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_stardt."RailPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."RailPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."RailPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_stardt."RailPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_stardt."RailPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_stardt."RailPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_stardt."RailPCRS"."geometrie" IS
'Géométrie de type curve';


-- ---------------------------------
-- Classe : ArbrePCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."ArbrePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_stardt."ArbrePCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_stardt."ArbrePCRS" cascade;

--CREATE SEQUENCE a_stardt."ArbrePCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: ArbrePCRS
--DROP TABLE if exists a_stardt."ArbrePCRS" cascade;
CREATE TABLE a_stardt."ArbrePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_stardt."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(POINT,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "reference" character varying NOT NULL,
  --"type" character varying(2) NOT NULL REFERENCES "CategorieArbrePCRSType" (code),
  CONSTRAINT "ArbrePCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_stardt."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: ArbrePCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."ArbrePCRS_geometrie_geomidx" cascade;
CREATE INDEX "ArbrePCRS_geometrie_geomidx"
  ON a_stardt."ArbrePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_stardt."ArbrePCRS" IS
'Nom de la classe :
ArbrePCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Arbre

Définition :
Classe permettant de décrire les arbres régulièrement entretenus de la voirie du domaine
public.

Modélisation :
Point (GM_Point)
L''arbre est modélisé par un point levé en axe du tronc, à hauteur du terrain naturel hors
éventuel monticule au pied
Les autres aspects de la modélisation géométrique sont propres à ceux décrits dans la
modélisation des objets linéaires de la classe abstraite ObjetVecteurPCRS

La classe contient :
Selon toutes essences et espèces d''arbres';

COMMENT ON COLUMN a_stardt."ArbrePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_stardt."ArbrePCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."ArbrePCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."ArbrePCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_stardt."ArbrePCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_stardt."ArbrePCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_stardt."ArbrePCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_stardt."ArbrePCRS"."geometrie" IS
'Géométrie de type point';
COMMENT ON COLUMN a_stardt."ArbrePCRS"."reference" IS
'';


-- ---------------------------------
-- Classe : PilePontPCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."PilePontPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_stardt."PilePontPCRS_idObjet_seq" cascade;
--DROP TABLE if exists a_stardt."PilePontPCRS" cascade;

--CREATE SEQUENCE a_stardt."PilePontPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: PilePontPCRS
--DROP TABLE if exists a_stardt."PilePontPCRS" cascade;
CREATE TABLE a_stardt."PilePontPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_stardt."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(Polygon,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "PilePontPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR geometrytype("geometrie") = 'POLYGON'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_stardt."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: PilePontPCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."PilePontPCRS_geometrie_geomidx" cascade;
CREATE INDEX "PilePontPCRS_geometrie_geomidx"
  ON a_stardt."PilePontPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_stardt."PilePontPCRS" IS
'Nom de la classe :
PilePontPCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Pile ou culée de pont du PCRS

Définition :
Classe permettant de décrire les appuis massifs et permanents supportant les tabliers
des ponts

Modélisation :
Polyligne ouverte ou fermée (GM_Curve)
Les piles de pont sont levées le long de la limite apparente avec le revêtement voisin,
point à point et au niveau du sol (fil d''eau).
Les autres aspects de la modélisation géométrique sont propres à ceux décrits dans la
modélisation des objets linéaires de la classe abstraite ObjetVecteurPCRS

Regroupement :
Pile (appuis intermédiaires) ou culées (appuis d''extrémité)

Critères de sélection :
Appuis massifs et permanents supportant le tablier d''un pont
';

COMMENT ON COLUMN a_stardt."PilePontPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_stardt."PilePontPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."PilePontPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."PilePontPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_stardt."PilePontPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_stardt."PilePontPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_stardt."PilePontPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_stardt."PilePontPCRS"."geometrie" IS
'Géométrie de type polygone';



-- ---------------------------------
-- Classe : AffleurantSymbolePCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."AffleurantSymbolePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_stardt."AffleurantSymbolePCRS_idAffleurant_seq" cascade;
--DROP TABLE if exists a_stardt."AffleurantSymbolePCRS" cascade;


--CREATE SEQUENCE a_stardt."AffleurantSymbolePCRS_idAffleurant_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: AffleurantSymbolePCRS
--DROP TABLE if exists a_stardt."AffleurantSymbolePCRS" cascade;
CREATE TABLE a_stardt."AffleurantSymbolePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  --"precisionAltimetrique" character varying(3) REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  --"precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  --"dateLeve" date,
  --"producteur" character varying NOT NULL,
  --"qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_stardt."QualiteCategorisationPCRSType" (code),
  --"thematique" character varying(2) NOT NULL,
  --"gestionnaire" character varying,
  --"idSource" character varying,
  --"nature" character varying(2) NOT NULL REFERENCES a_stardt."NatureAffleurantPCRSType" (code),
  --"reseau" character varying(8) NOT NULL REFERENCES a_stardt."NatureReseauPCRSType" (code),
  --"source" character varying,
  --"symbolisation" character varying(8) REFERENCES a_stardt."AffleurantSymbolePCRS" (code),
  --"representations" character varying(8) NOT NULL REFERENCES a_stardt."AffleurantGeometriquePCRS" (code),
  "angleRotation" decimal NOT NULL CHECK ("angleRotation" >= 0 AND "angleRotation" < 360),
  --"geometrie" geometry(POINT,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "largeur_mm" decimal NOT NULL,
  "longueur_mm" decimal NOT NULL,
  "reference" character varying NOT NULL,
  CONSTRAINT "AffleurantSymbolePCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
--INHERITS (a_stardt."AffleurantPCRS")
WITH (
  OIDS=FALSE
);


-- Index: AffleurantSymbolePCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."AffleurantSymbolePCRS_geometrie_geomidx" cascade;
CREATE INDEX "AffleurantSymbolePCRS_geometrie_geomidx"
  ON a_stardt."AffleurantSymbolePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_stardt."AffleurantSymbolePCRS" IS
'Nom de la classe :
AffleurantSymbolePCRS

Sous-classe de :
*NON* AffleurantPCRS *NON*

Titre :
Affleurant du PCRS représenté par un symbole,
associé à un point de placement du symbole.

Définition :
Classe permettant de décrire de façon symbolique un affleurant.

Modélisation :
Point défini en planimétrie (XY) et altimétrie (Z), et permettant le positionnement du
centre d''un symbole correctement orienté et mis à l''échelle et lié au réseau et type
d''affleurant concerné
Le ou les points levés nécessaires au levé précis de l''affleurant doivent permettre :
- d''une part de localiser avec une précision planimétrique et centimétrique maîtrisée le
positionnement du point d''origine locale du symbole,
- d''autre part de déterminer avec la même précision planimétrique les dimensions de
longueur (plus grande dimension) et de largeur (dimension inférieure ou égale à la plus
grande dimension) permettant la mise à l''échelle du symbole,
- enfin de déterminer l''angle de rotation utilisé pour orienter correctement le symbole
La représentation par symbole doit en outre être augmentée de la localisation des points
levés de façon à se prémunir des risques liés à une représentation incorrecte du symbole
de l''affleurant.

Contraintes :
Notamment pour les affleurants de taille importante et de forme irrégulière,
la version v2.0 recommande plutôt l''utilisation de la classe <AffleurantEnveloppePCRS>,
éventuellement complétée par un habillage <HabillageLignesPCRS> pour le dessin de
l''affleurant à l''intérieur de son enveloppe';

COMMENT ON COLUMN a_stardt."AffleurantSymbolePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
--COMMENT ON COLUMN a_stardt."AffleurantSymbolePCRS"."precisionAltimetrique" IS
--'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
--associée au levé topographique de l''objet';
--COMMENT ON COLUMN a_stardt."AffleurantSymbolePCRS"."precisionPlanimetrique" IS
--'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
--associée au levé topographique de l''objet';
--COMMENT ON COLUMN a_stardt."AffleurantSymbolePCRS"."dateLeve" IS
--'Date de levé de l''objet';
--COMMENT ON COLUMN a_stardt."AffleurantSymbolePCRS"."producteur" IS
--'Producteur de la donnée.
--La valeur sera saisie et déterminée par le producteur de façon stable.
--Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
--COMMENT ON COLUMN a_stardt."AffleurantSymbolePCRS"."qualiteCategorisation" IS
--'Indication du producteur quant à la qualité de la catégorisation.
--Permet des représentations plus riches pour les migrations / reprises de données';
--COMMENT ON COLUMN a_stardt."AffleurantSymbolePCRS"."thematique" IS
--'La thématique à laquelle est associé chaque objet du PCRS';
--COMMENT ON COLUMN a_stardt."AffleurantSymbolePCRS"."gestionnaire" IS
--'Nom court, sigle, acronyme de l''opérteur gestionnaire du réseau et fournisseur de la donnée';
--COMMENT ON COLUMN a_stardt."AffleurantSymbolePCRS"."idSource" IS
--'Identifiant unique de l''affleurant';
--COMMENT ON COLUMN a_stardt."AffleurantSymbolePCRS"."nature" IS
--'Nature de l''affleurant';
--COMMENT ON COLUMN a_stardt."AffleurantSymbolePCRS"."reseau" IS
--'Nature du réseau';
--COMMENT ON COLUMN a_stardt."AffleurantSymbolePCRS"."source" IS
--'Source des données d''affleurant dans le SI du gestionnaire de réseaux
--Nom d''application ou de base de données dans le système d''information du gestionnaire de réseaux';
--COMMENT ON COLUMN a_stardt."AffleurantSymbolePCRS"."symbolisation" IS
--'Lien vers une représentation symbolique'
--COMMENT ON COLUMN a_stardt."AffleurantSymbolePCRS"."representations" IS
--'Lien vers  une représentation de type géométrique.
--Il est nécessaire de fournir au moins un type de representation géométrique'
COMMENT ON COLUMN a_stardt."AffleurantSymbolePCRS"."angleRotation" IS
'Angle utilisé uniquement pour l''orientation du symbole d''affleurant,
dans le sens horaire par rapport au Nord.
Valeur angulaire en degrés décimaux';
COMMENT ON COLUMN a_stardt."AffleurantSymbolePCRS"."geometrie" IS
'Géométrie de type point';
COMMENT ON COLUMN a_stardt."AffleurantSymbolePCRS"."largeur_mm" IS
'Utilisé uniquement pour la mise à l''échelle Y du symbole de l''affleurant';
COMMENT ON COLUMN a_stardt."AffleurantSymbolePCRS"."longueur_mm" IS
'Utilisé uniquement pour la mise à l''échelle X du symbole de l''affleurant';
COMMENT ON COLUMN a_stardt."AffleurantSymbolePCRS"."reference" IS
'Désignation du symbole à utiliser pour la représentation de l''affleurant.';


-- ---------------------------------
-- Classe : AffleurantGeometriquePCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."AffleurantGeometriquePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_stardt."AffleurantGeometriquePCRS_idAffleurant_seq" cascade;
--DROP TABLE if exists a_stardt."AffleurantGeometriquePCRS" cascade;

--CREATE SEQUENCE a_stardt."AffleurantGeometriquePCRS_idAffleurant_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: AffleurantGeometriquePCRS
--DROP TABLE if exists a_stardt."AffleurantGeometriquePCRS" cascade;
CREATE TABLE a_stardt."AffleurantGeometriquePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  -- "precisionAltimetrique" character varying(3) REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  -- "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  -- "dateLeve" date,
  -- "producteur" character varying NOT NULL,
  -- "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_stardt."QualiteCategorisationPCRSType" (code),
  -- "thematique" character varying(2) NOT NULL,
  -- "gestionnaire" character varying,
  -- "idSource" character varying,
  -- "nature" character varying(2) NOT NULL REFERENCES a_stardt."NatureAffleurantPCRSType" (code),
  -- "reseau" character varying(8) NOT NULL REFERENCES a_stardt."NatureReseauPCRSType" (code),
  -- "source" character varying,
  -- "symbolisation" character varying(8) REFERENCES a_stardt."AffleurantSymbolePCRS" (code),
  -- "representations" character varying(8) NOT NULL REFERENCES a_stardt."AffleurantGeometriquePCRS" (code),
  CONSTRAINT "AffleurantGeometriquePCRS_pkey" PRIMARY KEY ("idObjet")
)
--INHERITS (a_stardt."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: AffleurantGeometriquePCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."AffleurantGeometriquePCRS_geometrie_geomidx" cascade;
--CREATE INDEX "AffleurantGeometriquePCRS_geometrie_geomidx"
--  ON a_stardt."AffleurantGeometriquePCRS"
--  USING gist
--  (geometrie);

COMMENT ON TABLE a_stardt."AffleurantGeometriquePCRS" IS
'Nom de la classe :
AffleurantGeometriquePCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Representation géométrique de l''affleurant du PCRS

Définition :
Classe permettant de fournir diverses représentations géométriques.

Modélisation :
Selon les représentations liées
';

COMMENT ON COLUMN a_stardt."AffleurantGeometriquePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';




-- ---------------------------------
-- Classe : AffleurantPCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."AffleurantPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_stardt."AffleurantPCRS_idAffleurant_seq" cascade;
--DROP TABLE if exists a_stardt."AffleurantPCRS" cascade;

--CREATE SEQUENCE a_stardt."AffleurantPCRS_idAffleurant_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: AffleurantPCRS
--DROP TABLE if exists a_stardt."AffleurantPCRS" cascade;
CREATE TABLE a_stardt."AffleurantPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_stardt."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  "gestionnaire" character varying,
  "idSource" character varying,
  "nature" character varying(2) NOT NULL REFERENCES a_stardt."NatureAffleurantPCRSType" (code),
  "reseau" character varying(8) NOT NULL REFERENCES a_stardt."NatureReseauPCRSType" (code),
  "source" character varying,
  "symbolisation" character varying(8) REFERENCES a_stardt."AffleurantSymbolePCRS" ("idObjet"),
  "representations" character varying(8) NOT NULL REFERENCES a_stardt."AffleurantGeometriquePCRS" ("idObjet"),
  CONSTRAINT "AffleurantPCRS_pkey" PRIMARY KEY ("idObjet")
)
INHERITS (a_stardt."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


-- Index: AffleurantPCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."AffleurantPCRS_geometrie_geomidx" cascade;
--CREATE INDEX "AffleurantPCRS_geometrie_geomidx"
--  ON a_stardt."AffleurantPCRS"
--  USING gist
--  (geometrie);

COMMENT ON TABLE a_stardt."AffleurantPCRS" IS
'Nom de la classe :
AffleurantPCRS

Sous-classe de :
ObjetVecteurPCRS

Titre :
Affleurant du PCRS

Définition :
Classe permettant de décrire une partie d’un réseau existant visible depuis la
surface
IMPORTANT : un affleurant de réseau correspond à un objet métier géré non pas par la
collectivité gestionnaire du PCRS mais par l''opérateur gestionnaire du réseau. Il figure
toutefois dans la liste des objets échangés dans un PCRS de façon à
partager la localisation précise de tous les objets d''un réseau visibles depuis la surface.
Chaque gestionnaire reste responsable de ses affleurants.

Modélisation :
Selon les classes d''affleurant liées, et représentées (de préférence) par une
représentation exhaustive et interopérable comme le polygone
AffleurantEnveloppePCRS, éventuellement complété par un habillage de type
HabillageLignesPCRS, néanmoins d''autres modélisation géométriques sont offertes afin
de ne pas perdre d''informations.
La modélisation géométrique est propre à chacune des classes d''affleurant
AffleurantXXXPCRS du PCRS

La classe contient :
Bouches, avaloirs, regards, plaques, poteaux, coffrets...

Contraintes :
Classe essentielle du PCRS';

COMMENT ON COLUMN a_stardt."AffleurantPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_stardt."AffleurantPCRS"."precisionAltimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."AffleurantPCRS"."precisionPlanimetrique" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée au levé topographique de l''objet';
COMMENT ON COLUMN a_stardt."AffleurantPCRS"."dateLeve" IS
'Date de levé de l''objet';
COMMENT ON COLUMN a_stardt."AffleurantPCRS"."producteur" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_stardt."AffleurantPCRS"."qualiteCategorisation" IS
'Indication du producteur quant à la qualité de la catégorisation.
Permet des représentations plus riches pour les migrations / reprises de données';
COMMENT ON COLUMN a_stardt."AffleurantPCRS"."thematique" IS
'La thématique à laquelle est associé chaque objet du PCRS';
COMMENT ON COLUMN a_stardt."AffleurantPCRS"."gestionnaire" IS
'Nom court, sigle, acronyme de l''opérteur gestionnaire du réseau et fournisseur de la donnée';
COMMENT ON COLUMN a_stardt."AffleurantPCRS"."idSource" IS
'Identifiant unique de l''affleurant';
COMMENT ON COLUMN a_stardt."AffleurantPCRS"."nature" IS
'Nature de l''affleurant';
COMMENT ON COLUMN a_stardt."AffleurantPCRS"."reseau" IS
'Nature du réseau';
COMMENT ON COLUMN a_stardt."AffleurantPCRS"."source" IS
'Source des données d''affleurant dans le SI du gestionnaire de réseaux
Nom d''application ou de base de données dans le système d''information du gestionnaire de réseaux';
COMMENT ON COLUMN a_stardt."AffleurantPCRS"."symbolisation" IS
'Lien vers une représentation symbolique';
COMMENT ON COLUMN a_stardt."AffleurantPCRS"."representations" IS
'Lien vers  une représentation de type géométrique.
Il est nécessaire de fournir au moins un type de representation géométrique';


-- ---------------------------------
-- Classe : AffleurantEnveloppePCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."AffleurantEnveloppePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_stardt."AffleurantEnveloppePCRS_idAffleurant_seq" cascade;
--DROP TABLE if exists a_stardt."AffleurantEnveloppePCRS" cascade;

--CREATE SEQUENCE a_stardt."AffleurantEnveloppePCRS_idAffleurant_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: AffleurantEnveloppePCRS
--DROP TABLE if exists a_stardt."AffleurantEnveloppePCRS" cascade;
CREATE TABLE a_stardt."AffleurantEnveloppePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  --"precisionAltimetrique" character varying(3) REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  --"precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  --"dateLeve" date,
  --"producteur" character varying NOT NULL,
  --"qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_stardt."QualiteCategorisationPCRSType" (code),
  --"thematique" character varying(2) NOT NULL,
  --"gestionnaire" character varying,
  --"idSource" character varying,
  --"nature" character varying(2) NOT NULL REFERENCES a_stardt."NatureAffleurantPCRSType" (code),
  --"reseau" character varying(8) NOT NULL REFERENCES a_stardt."NatureReseauPCRSType" (code),
  --"source" character varying,
  --"symbolisation" character varying(8) REFERENCES a_stardt."AffleurantSymbolePCRS" (code),
  --"representations" character varying(8) NOT NULL REFERENCES a_stardt."AffleurantGeometriquePCRS" (code),
  --"geometrie" geometry(POLYGON,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "AffleurantEnveloppePCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POLYGON'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
--INHERITS (a_stardt."AffleurantPCRS")
WITH (
  OIDS=FALSE
);


-- Index: AffleurantEnveloppePCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."AffleurantEnveloppePCRS_geometrie_geomidx" cascade;
CREATE INDEX "AffleurantEnveloppePCRS_geometrie_geomidx"
  ON a_stardt."AffleurantEnveloppePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_stardt."AffleurantEnveloppePCRS" IS
'Nom de la classe :
AffleurantEnveloppePCRS

Sous-classe de :
AffleurantPCRS

Titre :
Affleurant du PCRS représenté par son enveloppe (périmètre)

Définition :
Classe spécialisée permettant de décrire une partie d’un réseau existant visible depuis la
surface.

Modélisation :
Polygone (GM_Polygon)
L''enveloppe, autrement dit le périmètre de l''affleurant, est modélisée par un unique
polygone non auto-intersectant et ne présentant aucun trou dans sa définition d''intérieur.

Regroupement :
Bouches, avaloirs, regards, plaques, poteaux, coffrets...

Contraintes :
La version actuelle du PCRS recommande l''utilisation de cette classe
<AffleurantEnveloppePCRS>, éventuellement complétée par un habillage
<HabillageLignesPCRS> pour le dessin de l''affleurant à l''intérieur de son enveloppe';

COMMENT ON COLUMN a_stardt."AffleurantEnveloppePCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
-- COMMENT ON COLUMN a_stardt."AffleurantEnveloppePCRS"."precisionAltimetrique" IS
-- 'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
-- associée au levé topographique de l''objet';
-- COMMENT ON COLUMN a_stardt."AffleurantEnveloppePCRS"."precisionPlanimetrique" IS
-- 'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
-- associée au levé topographique de l''objet';
-- COMMENT ON COLUMN a_stardt."AffleurantEnveloppePCRS"."dateLeve" IS
-- 'Date de levé de l''objet';
-- COMMENT ON COLUMN a_stardt."AffleurantEnveloppePCRS"."producteur" IS
-- 'Producteur de la donnée.
-- La valeur sera saisie et déterminée par le producteur de façon stable.
-- Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
-- COMMENT ON COLUMN a_stardt."AffleurantEnveloppePCRS"."qualiteCategorisation" IS
-- 'Indication du producteur quant à la qualité de la catégorisation.
-- Permet des représentations plus riches pour les migrations / reprises de données';
-- COMMENT ON COLUMN a_stardt."AffleurantEnveloppePCRS"."thematique" IS
-- 'La thématique à laquelle est associé chaque objet du PCRS';
-- COMMENT ON COLUMN a_stardt."AffleurantEnveloppePCRS"."gestionnaire" IS
-- 'Nom court, sigle, acronyme de l''opérteur gestionnaire du réseau et fournisseur de la donnée';
-- COMMENT ON COLUMN a_stardt."AffleurantEnveloppePCRS"."idSource" IS
-- 'Identifiant unique de l''affleurant';
-- COMMENT ON COLUMN a_stardt."AffleurantEnveloppePCRS"."nature" IS
-- 'Nature de l''affleurant';
-- COMMENT ON COLUMN a_stardt."AffleurantEnveloppePCRS"."reseau" IS
-- 'Nature du réseau';
-- COMMENT ON COLUMN a_stardt."AffleurantEnveloppePCRS"."source" IS
-- 'Source des données d''affleurant dans le SI du gestionnaire de réseaux
-- Nom d''application ou de base de données dans le système d''information du gestionnaire de réseaux';
-- COMMENT ON COLUMN a_stardt."AffleurantEnveloppePCRS"."symbolisation" IS
-- 'Lien vers une représentation symbolique'
-- COMMENT ON COLUMN a_stardt."AffleurantEnveloppePCRS"."representations" IS
-- 'Lien vers  une représentation de type géométrique.
-- Il est nécessaire de fournir au moins un type de representation géométrique'
COMMENT ON COLUMN a_stardt."AffleurantEnveloppePCRS"."geometrie" IS
'Géométrie de type polygone';


-- ---------------------------------
-- Classe : AffleurantLignesPCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."AffleurantLignesPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_stardt."AffleurantLignesPCRS_idAffleurant_seq" cascade;
--DROP TABLE if exists a_stardt."AffleurantLignesPCRS" cascade;


--CREATE SEQUENCE "AffleurantLignePCRS_idAffleurant_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: AffleurantLignesPCRS
--DROP TABLE if exists a_stardt."AffleurantLignesPCRS" cascade;
CREATE TABLE a_stardt."AffleurantLignesPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  --"precisionAltimetrique" character varying(3) REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  --"precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  --"dateLeve" date,
  --"producteur" character varying NOT NULL,
  --"qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_stardt."QualiteCategorisationPCRSType" (code),
  --"thematique" character varying(2) NOT NULL,
  --"gestionnaire" character varying,
  --"idSource" character varying,
  --"nature" character varying(2) NOT NULL REFERENCES a_stardt."NatureAffleurantPCRSType" (code),
  --"reseau" character varying(8) NOT NULL REFERENCES a_stardt."NatureReseauPCRSType" (code),
  --"source" character varying,
  --"symbolisation" character varying(8) REFERENCES a_stardt."AffleurantSymbolePCRS" ("idObjet"),
  --"representations" character varying(8) NOT NULL REFERENCES a_stardt."AffleurantGeometriquePCRS" ("idObjet"),
  --"geometrie" geometry(MULTILINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "AffleurantLignesPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'MULTILINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_stardt."AffleurantPCRS")
WITH (
  OIDS=FALSE
);


-- Index: AffleurantLignesPCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."AffleurantLignesPCRS_geometrie_geomidx" cascade;
CREATE INDEX "AffleurantLignesPCRS_geometrie_geomidx"
  ON a_stardt."AffleurantLignesPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_stardt."AffleurantLignesPCRS" IS
'Nom de la classe :
AffleurantLignesPCRS

Sous-classe de :
AffleurantPCRS

Titre :
Affleurant du PCRS représenté par une ligne.

Définition :
Classe spécialisée permettant de décrire la représentation de l''affleurant
sous forme de lignes.

Modélisation :
Ensemble de courbes (GM_MultiCurve)
La géométrie de l''affleurant, est modélisée par un ensemble de courbes.


Contraintes :
La version actuelle du PCRS recommande plutôt l''utilisation de la classe
<AffleurantEnveloppePCRS>, éventuellement complétée par un habillage
<HabillageLignesPCRS> pour le dessin de l''affleurant à l''intérieur de son enveloppe';

COMMENT ON COLUMN a_stardt."AffleurantLignesPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
-- COMMENT ON COLUMN a_stardt."AffleurantLignesPCRS"."precisionAltimetrique" IS
-- 'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
-- associée au levé topographique de l''objet';
-- COMMENT ON COLUMN a_stardt."AffleurantLignesPCRS"."precisionPlanimetrique" IS
-- 'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
-- associée au levé topographique de l''objet';
-- COMMENT ON COLUMN a_stardt."AffleurantLignesPCRS"."dateLeve" IS
-- 'Date de levé de l''objet';
-- COMMENT ON COLUMN a_stardt."AffleurantLignesPCRS"."producteur" IS
-- 'Producteur de la donnée.
-- La valeur sera saisie et déterminée par le producteur de façon stable.
-- Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
-- COMMENT ON COLUMN a_stardt."AffleurantLignesPCRS"."qualiteCategorisation" IS
-- 'Indication du producteur quant à la qualité de la catégorisation.
-- Permet des représentations plus riches pour les migrations / reprises de données';
-- COMMENT ON COLUMN a_stardt."AffleurantLignesPCRS"."thematique" IS
-- 'La thématique à laquelle est associé chaque objet du PCRS';
-- COMMENT ON COLUMN a_stardt."AffleurantLignesPCRS"."gestionnaire" IS
-- 'Nom court, sigle, acronyme de l''opérteur gestionnaire du réseau et fournisseur de la donnée';
-- COMMENT ON COLUMN a_stardt."AffleurantLignesPCRS"."idSource" IS
-- 'Identifiant unique de l''affleurant';
-- COMMENT ON COLUMN a_stardt."AffleurantLignesPCRS"."nature" IS
-- 'Nature de l''affleurant';
-- COMMENT ON COLUMN a_stardt."AffleurantLignesPCRS"."reseau" IS
-- 'Nature du réseau';
-- COMMENT ON COLUMN a_stardt."AffleurantLignesPCRS"."source" IS
-- 'Source des données d''affleurant dans le SI du gestionnaire de réseaux
-- Nom d''application ou de base de données dans le système d''information du gestionnaire de réseaux';
-- COMMENT ON COLUMN a_stardt."AffleurantLignesPCRS"."symbolisation" IS
-- 'Lien vers une représentation symbolique';
-- COMMENT ON COLUMN a_stardt."AffleurantLignesPCRS"."representations" IS
-- 'Lien vers  une représentation de type géométrique.
-- Il est nécessaire de fournir au moins un type de representation géométrique';
COMMENT ON COLUMN a_stardt."AffleurantLignesPCRS"."geometrie" IS
'Géométrie composée d''un ensemble de lignes';


-- ---------------------------------
-- Classe : AffleurantPointPCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."AffleurantPointPCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_stardt."AffleurantPointPCRS_idAffleurant_seq" cascade;
--DROP TABLE if exists a_stardt."AffleurantPointPCRS" cascade;


--CREATE SEQUENCE a_stardt."AffleurantPointPCRS_idAffleurant_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: AffleurantPointPCRS
--DROP TABLE if exists a_stardt."AffleurantPointPCRS" cascade;
CREATE TABLE a_stardt."AffleurantPointPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  --"precisionAltimetrique" character varying(3) REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  --"precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_stardt."CategoriePrecisionPCRS17Type" (code),
  --"dateLeve" date,
  --"producteur" character varying NOT NULL,
  --"qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_stardt."QualiteCategorisationPCRSType" (code),
  --"thematique" character varying(2) NOT NULL,
  --"gestionnaire" character varying,
  --"idSource" character varying,
  --"nature" character varying(2) NOT NULL REFERENCES a_stardt."NatureAffleurantPCRSType" (code),
  --"reseau" character varying(8) NOT NULL REFERENCES a_stardt."NatureReseauPCRSType" (code),
  --"source" character varying,
  --"symbolisation" character varying(8) REFERENCES a_stardt."AffleurantSymbolePCRS" ("idObjet"),
  --"representations" character varying(8) NOT NULL REFERENCES a_stardt."AffleurantGeometriquePCRS" ("idObjet"),
  --"geometrie" geometry(POINT,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "AffleurantPointPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_stardt."AffleurantPCRS")
WITH (
  OIDS=FALSE
);


-- Index: AffleurantPointPCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."AffleurantPointPCRS_geometrie_geomidx" cascade;
CREATE INDEX "AffleurantPointPCRS_geometrie_geomidx"
  ON a_stardt."AffleurantPointPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_stardt."AffleurantPointPCRS" IS
'Nom de la classe :
AffleurantPointPCRS

Sous-classe de :
AffleurantPCRS

Titre :
Affleurant du PCRS représenté par un point.

Définition :
Classe spécialisée permettant de décrire la représentation de l''affleurant
sous forme de point.

Modélisation :
Ponctuel (GM_Point)
La géométrie de l''affleurant, est modélisée par un point représentant le centroide de
l''affleurant.

Contraintes :
La version actuelle du PCRS recommande plutôt l''utilisation de la classe
<AffleurantEnveloppePCRS>, éventuellement complétée par un habillage
<HabillageLignesPCRS> pour le dessin de l''affleurant à l''intérieur de son enveloppe. La
représentation par un unique point sera donc utilisée faute d''informations suffisantes.';

COMMENT ON COLUMN a_stardt."AffleurantPointPCRS"."idObjet" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
-- COMMENT ON COLUMN a_stardt."AffleurantPointPCRS"."precisionAltimetrique" IS
-- 'Intervalle de précision dans lequel s''exprime en cm la précision altimétrique
-- associée au levé topographique de l''objet';
-- COMMENT ON COLUMN a_stardt."AffleurantPointPCRS"."precisionPlanimetrique" IS
-- 'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
-- associée au levé topographique de l''objet';
-- COMMENT ON COLUMN a_stardt."AffleurantPointPCRS"."dateLeve" IS
-- 'Date de levé de l''objet';
-- COMMENT ON COLUMN a_stardt."AffleurantPointPCRS"."producteur" IS
-- 'Producteur de la donnée.
-- La valeur sera saisie et déterminée par le producteur de façon stable.
-- Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
-- COMMENT ON COLUMN a_stardt."AffleurantPointPCRS"."qualiteCategorisation" IS
-- 'Indication du producteur quant à la qualité de la catégorisation.
-- Permet des représentations plus riches pour les migrations / reprises de données';
-- COMMENT ON COLUMN a_stardt."AffleurantPointPCRS"."thematique" IS
-- 'La thématique à laquelle est associé chaque objet du PCRS';
-- COMMENT ON COLUMN a_stardt."AffleurantPointPCRS"."gestionnaire" IS
-- 'Nom court, sigle, acronyme de l''opérteur gestionnaire du réseau et fournisseur de la donnée';
-- COMMENT ON COLUMN a_stardt."AffleurantPointPCRS"."idSource" IS
-- 'Identifiant unique de l''affleurant';
-- COMMENT ON COLUMN a_stardt."AffleurantPointPCRS"."nature" IS
-- 'Nature de l''affleurant';
-- COMMENT ON COLUMN a_stardt."AffleurantPointPCRS"."reseau" IS
-- 'Nature du réseau';
-- COMMENT ON COLUMN a_stardt."AffleurantPointPCRS"."source" IS
-- 'Source des données d''affleurant dans le SI du gestionnaire de réseaux
-- Nom d''application ou de base de données dans le système d''information du gestionnaire de réseaux';
-- COMMENT ON COLUMN a_stardt."AffleurantPointPCRS"."symbolisation" IS
-- 'Lien vers une représentation symbolique';
-- COMMENT ON COLUMN a_stardt."AffleurantPointPCRS"."representations" IS
-- 'Lien vers  une représentation de type géométrique.
-- Il est nécessaire de fournir au moins un type de representation géométrique';
COMMENT ON COLUMN a_stardt."AffleurantPointPCRS"."geometrie" IS
'Géométrie de type point';


-- ---------------------------------
-- Classe : RasterPCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."RasterPCRS_geometrie_geomidx" cascade;
DROP SEQUENCE if exists a_stardt."RasterPCRS_idPCRS_seq" cascade;
--DROP TABLE if exists a_stardt."RasterPCRS" cascade;

CREATE SEQUENCE a_stardt."RasterPCRS_idPCRS_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Table: RasterPCRS
--DROP TABLE if exists a_stardt."RasterPCRS" cascade;
CREATE TABLE a_stardt."RasterPCRS"
(
  "dateAcquisition" date NOT NULL,
  "dateRecette" date NOT NULL,
  "descriptionElementsQualite" character varying NOT NULL,
  --"geometrie" geometry(POLYGON,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "idPCRS" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."RasterPCRS_idPCRS_seq"'::regclass),
  "nomImage" character varying NOT NULL,
  "precisionPlanimetriqueCorpsdeRue" character varying(3) NOT NULL REFERENCES a_stardt."CategoriePrecisionPCRSType" (code),
  "precisionPlanimetriqueZonesNaturelles" character varying(3) NOT NULL REFERENCES a_stardt."CategoriePrecisionPCRSType" (code),
  "resolution" integer NOT NULL,
  "typeImage" character varying NOT NULL,
  "producteur" character varying NOT NULL,
  CONSTRAINT "RasterPCRS_pkey" PRIMARY KEY ("idPCRS"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POLYGON'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
WITH (
  OIDS=FALSE
);


-- Index: RasterPCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."RasterPCRS_geometrie_geomidx" cascade;
CREATE INDEX "RasterPCRS_geometrie_geomidx"
  ON a_stardt."RasterPCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_stardt."RasterPCRS" IS
'Nom de la classe :
RasterPCRS

Titre :
Orthophotoplan du PCRS

Définition :
Classe abstraite permettant de décrire toutes les ortho-images utilisées dans le cadre du
PCRS qu’elles appartiennent ou non au PCRS. Elle sert principalement à définir les
caractéristiques, attributs et relations communs à tous.

La classe contient :
Les orthophotoplans du PCRS sont regroupés par classes de précision :
Les orthophotoplans de classe [10 cm] pour la totalité de la surface couverte
Les orthophotoplans de classe [10 cm] pour les seules régions couvertes par les
corps de rue et pouvant posséder une précision géométrique dégradée pour les autres
régions
Les orthophotoplans n’entrant pas dans la classe [10 cm] et servant de fond de plan
informationnel pour les objets du PCRS rentrant dans cette classe.

Critères de sélection :
Ne sont de précision garantie sur une ortho-image que les objets effectivement modélisés
dans le modèle numérique d’élévation qui a servi à l’ortho-rectification de la collection de
clichés aériens. Les paramètres descriptifs du MNE utiles à la compréhension de la
qualité de l’ortho-image se trouvent dans le champ « description des éléments de qualité »
';

COMMENT ON COLUMN a_stardt."RasterPCRS"."dateAcquisition" IS
'La date et l''heure à laquelle la photo aérienne a été prise /
la date à laquelle la mission aérienne a eu lieu (au détail du jour ou celui du mois voire l''année)';
COMMENT ON COLUMN a_stardt."RasterPCRS"."dateRecette" IS
'La date à laquelle le maître d''ouvrage a intégré l''ortho-image dans le PCRS';
COMMENT ON COLUMN a_stardt."RasterPCRS"."descriptionElementsQualite" IS
'Description des paramètres externes donnant les clés de compréhension de la qualité de l''otho-imagerie
Comprend la liste des éléments qui sont effectivement redressés dans le MNE qui a servi à l''ortho-rectification
Peut inclure toute exigence de qualité supplémentaire exigée lors du vol
(masque de nuage, recouvrement, etc ...)';
COMMENT ON COLUMN a_stardt."RasterPCRS"."geometrie" IS
'Géométrie de type surfacique représentant l''emprise de la dalle';
COMMENT ON COLUMN a_stardt."RasterPCRS"."idPCRS" IS
'Identifiant unique dans le jeu de données des objets du PCRS';
COMMENT ON COLUMN a_stardt."RasterPCRS"."nomImage" IS
'Producteur de la donnée.
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des objets d''un producteur donné';
COMMENT ON COLUMN a_stardt."RasterPCRS"."precisionPlanimetriqueCorpsdeRue" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée aux informations photométriques sur l''orthophotoplan pour ce qui concerne
les surfaces couvertes pas les corps de rue';
COMMENT ON COLUMN a_stardt."RasterPCRS"."precisionPlanimetriqueZonesNaturelles" IS
'Intervalle de précision dans lequel s''exprime en cm la précision planimétrique
associée aux informations photométriques sur l''orthophotoplan pour ce qui concerne
les surfaces non couvertes pas les corps de rue';
COMMENT ON COLUMN a_stardt."RasterPCRS"."resolution" IS
'La taille au sol d''un pixel de l''ortho-image en cm';
COMMENT ON COLUMN a_stardt."RasterPCRS"."typeImage" IS
'Format de l''image
Les mime-types s''ils existent doivent être privilégiés.
Exemple : image/jp2';
COMMENT ON COLUMN a_stardt."RasterPCRS"."producteur" IS
'Producteur de la donnée
La valeur sera saisie et déterminée par le producteur de façon stable.
Cet attribut permettra de filtrer l''ensemble des dalles d''un producteur donné.';


-- ---------------------------------
-- Classe : MasqueOpacitePCRS
-- ---------------------------------

--DROP INDEX if exists a_stardt."MasqueOpacitePCRS_geometrie_geomidx" cascade;
--DROP SEQUENCE if exists a_stardt."MasqueOpacitePCRS_idHabillage_seq" cascade;
--DROP TABLE if exists a_stardt."MasqueOpacitePCRS" cascade;

--CREATE SEQUENCE a_stardt."MasqueOpacitePCRS_idHabillage_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

-- Table: MasqueOpacitePCRS
--DROP TABLE if exists a_stardt."MasqueOpacitePCRS" cascade;
CREATE TABLE a_stardt."MasqueOpacitePCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('a_stardt."HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES a_stardt."CategorieThematiquePCRSType" ("code"),
  --"geometrie" geometry(POLYGON,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "transparence" integer NOT NULL CHECK ("transparence" >= 0 AND "transparence" <= 100),
  CONSTRAINT "MasqueOpacitePCRS_pkey" PRIMARY KEY ("idHabillage"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'POLYGON'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_stardt."HabillagePCRS")
WITH (
  OIDS=FALSE
);


-- Index: MasqueOpacitePCRS_geometrie_geomidx
--DROP INDEX if exists a_stardt."MasqueOpacitePCRS_geometrie_geomidx" cascade;
CREATE INDEX "MasqueOpacitePCRS_geometrie_geomidx"
  ON a_stardt."MasqueOpacitePCRS"
  USING gist
  (geometrie);

COMMENT ON TABLE a_stardt."MasqueOpacitePCRS" IS
'Nom de la classe :
MasqueOpacitePCRS

Sous-classe de :
HabillagePCRS

Titre :
Masque d''opacité du PCRS

Définition :
Lorsqu''une Image est disponible, un masque d''opacité correspond à la définition
d''une zone surfacique pouvant s''étendre partiellement sur une ou plusieurs
orthophotographies et pour laquelle localement les objets vecteur viennent compléter l''image.
Afin de pouvoir visualiser le vecteur en superposition à l''image
sur cette zone, un masque blanc, partiellement transparent est superposé à l''image.

Modélisation :
Surface

Contraintes :
Classe essentielle pour l''utilisation d''orthophotoplans';

COMMENT ON COLUMN a_stardt."MasqueOpacitePCRS"."idHabillage" IS
'Identifiant unique de l''habillage.';
COMMENT ON COLUMN a_stardt."MasqueOpacitePCRS"."thematique" IS
'La thématique à laquelle est associé l''élément d''habillage du PCRS';
COMMENT ON COLUMN a_stardt."MasqueOpacitePCRS"."geometrie" IS
'Géométrie de type surfacique représentant la zone masquée';
COMMENT ON COLUMN a_stardt."MasqueOpacitePCRS"."transparence" IS
'Pourcentage de transparence inversement proportionnelle à l''opacité de la zone';


-- ---------------------------------
-- Creation des tables "partenaires"
-- ---------------------------------


-- ---------------------------------
-- Creation des tables "relations n-m"
-- ---------------------------------


-- ---------------------------------
-- Classe : RoleActeurPCRS17Relation
-- ---------------------------------
--DROP TABLE if exists a_stardt."RoleActeurPCRS17Relation" cascade;
--CREATE TABLE a_stardt."RoleActeurPCRS17Relation"
--(
--  "acteur" character varying NOT NULL REFERENCES a_stardt."ActeurPCRS17Type" ("code"),
--  "role" character varying NOT NULL REFERENCES a_stardt."RoleNiveau2PCRS17Type" ("code")
--)
--WITH (
--  OIDS=FALSE
--);

--INSERT INTO a_stardt."RoleActeurPCRS17Relation" ("acteur", "role") VALUES ('01', '02');
--INSERT INTO a_stardt."RoleActeurPCRS17Relation" ("acteur", "role") VALUES ('02', '06');
--INSERT INTO a_stardt."RoleActeurPCRS17Relation" ("acteur", "role") VALUES ('03', '06');
--INSERT INTO a_stardt."RoleActeurPCRS17Relation" ("acteur", "role") VALUES ('04', '06');
--INSERT INTO a_stardt."RoleActeurPCRS17Relation" ("acteur", "role") VALUES ('05', '02');
--INSERT INTO a_stardt."RoleActeurPCRS17Relation" ("acteur", "role") VALUES ('05', '03');
--INSERT INTO a_stardt."RoleActeurPCRS17Relation" ("acteur", "role") VALUES ('05', '06');
--INSERT INTO a_stardt."RoleActeurPCRS17Relation" ("acteur", "role") VALUES ('06', '05');
--INSERT INTO a_stardt."RoleActeurPCRS17Relation" ("acteur", "role") VALUES ('06', '06');
--INSERT INTO a_stardt."RoleActeurPCRS17Relation" ("acteur", "role") VALUES ('07', '04');


-- ---------------------------------
-- Classe : InitiativeActeurPCRS17Relation
-- ---------------------------------
--DROP TABLE if exists a_stardt."InitiativeActeurPCRS17Relation" cascade;
CREATE TABLE a_stardt."InitiativeActeurPCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"EmpriseCommunePCRSRelation_idRelation_seq"'::regclass),
  "initiative" character varying NOT NULL REFERENCES a_stardt."InitiativePCRS" ("idInitiative"),
  "acteur" character varying NOT NULL REFERENCES a_stardt."ActeurPCRS17Type" ("code"),
  "roleNiveau1" character varying NOT NULL REFERENCES a_stardt."RoleNiveau1PCRS17Type" ("code"),
  "roleNiveau2" character varying NOT NULL REFERENCES a_stardt."RoleNiveau2PCRS17Type" ("code")
  --CONSTRAINT "EmpriseCommunePCRSRelation_pkey" PRIMARY KEY ("idRelation")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE a_stardt."InitiativeActeurPCRS17Relation" IS
'Une initiative du PCRS constitue une zone dans laquelle différents acteurs se sont
coordonnés pour initier un PCRS.
Par leurs missions, les différents intervenants liés au PCRS peuvent être amenés
à se reconnaitre dans plusieurs rôles très distincts, chaque rôle étant lié à un
cas d''utilisation bien identifié au PCRS.';

-- ---------------------------------
-- Classe : InitiativeCommunePCRS17Relation
-- ---------------------------------

-- Table: InitiativeCommunePCRS17Relation
--DROP TABLE if exists a_stardt."InitiativeCommunePCRS17Relation" cascade;
CREATE TABLE a_stardt."InitiativeCommunePCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"EmpriseCommunePCRSRelation_idRelation_seq"'::regclass),
  "commune" character varying NOT NULL REFERENCES a_stardt."Commune" ("codeINSEE"),
  "initiative" character varying NOT NULL REFERENCES a_stardt."InitiativePCRS" ("idInitiative")
  --CONSTRAINT "EmpriseCommunePCRSRelation_pkey" PRIMARY KEY ("idRelation")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE a_stardt."InitiativeCommunePCRS17Relation" IS
'Une initiative PCRS concerne une ou plusieurs communes';

COMMENT ON COLUMN a_stardt."InitiativeCommunePCRS17Relation"."commune" IS
'';
COMMENT ON COLUMN a_stardt."InitiativeCommunePCRS17Relation"."initiative" IS
'';


-- ---------------------------------
-- Classe : EmpriseDisponibiliteCommunePCRS17Relation
-- ---------------------------------

-- Table: EmpriseDisponibiliteCommunePCRS17Relation
--DROP TABLE if exists a_stardt."EmpriseDisponibiliteCommunePCRS17Relation" cascade;
CREATE TABLE a_stardt."EmpriseDisponibiliteCommunePCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"EmpriseCommunePCRSRelation_idRelation_seq"'::regclass),
  "commune" character varying NOT NULL REFERENCES a_stardt."Commune" ("codeINSEE"),
  "empriseDisponibilite" character varying NOT NULL REFERENCES a_stardt."EmpriseDisponibilitePCRS" ("idEmpriseDisponibilite")
  --CONSTRAINT "EmpriseCommunePCRSRelation_pkey" PRIMARY KEY ("idRelation")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE a_stardt."EmpriseDisponibiliteCommunePCRS17Relation" IS
'Une emprise de disponibilité concerne une ou plusieurs communes';

COMMENT ON COLUMN a_stardt."EmpriseDisponibiliteCommunePCRS17Relation"."commune" IS
'';
COMMENT ON COLUMN a_stardt."EmpriseDisponibiliteCommunePCRS17Relation"."empriseDisponibilite" IS
'';

-- ---------------------------------
-- Classe : EmpriseEchangeCommunePCRS17Relation
-- ---------------------------------

-- Table: EmpriseEchangeCommunePCRS17Relation
--DROP TABLE if exists a_stardt."EmpriseEchangeCommunePCRS17Relation" cascade;
CREATE TABLE a_stardt."EmpriseEchangeCommunePCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"EmpriseCommunePCRSRelation_idRelation_seq"'::regclass),
  "commune" character varying NOT NULL REFERENCES a_stardt."Commune" ("codeINSEE"),
  "empriseEchange" character varying NOT NULL REFERENCES a_stardt."EmpriseEchangePCRS" ("idEmpriseEchange")
  --CONSTRAINT "EmpriseCommunePCRSRelation_pkey" PRIMARY KEY ("idRelation")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE a_stardt."EmpriseEchangeCommunePCRS17Relation" IS
'Une emprise d''échange est réalisé sur une ou plusieurs communes';

COMMENT ON COLUMN a_stardt."EmpriseEchangeCommunePCRS17Relation"."commune" IS
'';
COMMENT ON COLUMN a_stardt."EmpriseEchangeCommunePCRS17Relation"."empriseEchange" IS
'';


-- ---------------------------------
-- Classe : EmpriseDisponibiliteTronconVoiriePCRS17Relation
-- ---------------------------------

-- Table: EmpriseDisponibiliteTronconVoiriePCRS17Relation
--DROP TABLE if exists a_stardt."EmpriseDisponibiliteTronconVoiriePCRS17Relation" cascade;
CREATE TABLE a_stardt."EmpriseDisponibiliteTronconVoiriePCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"EmpriseCommunePCRSRelation_idRelation_seq"'::regclass),
  "tronconVoirie" character varying NOT NULL REFERENCES a_stardt."TronconVoirie" ("reference"),
  "empriseDisponibilite" character varying NOT NULL REFERENCES a_stardt."EmpriseDisponibilitePCRS" ("idEmpriseDisponibilite")
  --CONSTRAINT "EmpriseCommunePCRSRelation_pkey" PRIMARY KEY ("idRelation")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE a_stardt."EmpriseDisponibiliteTronconVoiriePCRS17Relation" IS
'Une emprise de disponibilité concerne un ou plusieurs tronçons de voirie.';

COMMENT ON COLUMN a_stardt."EmpriseDisponibiliteTronconVoiriePCRS17Relation"."tronconVoirie" IS
'';
COMMENT ON COLUMN a_stardt."EmpriseDisponibiliteTronconVoiriePCRS17Relation"."empriseDisponibilite" IS
'';

-- ---------------------------------
-- Classe : EmpriseEchangeTronconVoiriePCRS17Relation
-- ---------------------------------

-- Table: EmpriseEchangeTronconVoiriePCRS17Relation
--DROP TABLE if exists a_stardt."EmpriseEchangeTronconVoiriePCRS17Relation" cascade;
CREATE TABLE a_stardt."EmpriseEchangeTronconVoiriePCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"EmpriseCommunePCRSRelation_idRelation_seq"'::regclass),
  "tronconVoirie" character varying NOT NULL REFERENCES a_stardt."TronconVoirie" ("reference"),
  "empriseEchange" character varying NOT NULL REFERENCES a_stardt."EmpriseEchangePCRS" ("idEmpriseEchange")
  --CONSTRAINT "EmpriseCommunePCRSRelation_pkey" PRIMARY KEY ("idRelation")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE a_stardt."EmpriseEchangeTronconVoiriePCRS17Relation" IS
'Une emprise d''échange est localisée sur un ou plusieurs tronçons de voirie.';

COMMENT ON COLUMN a_stardt."EmpriseEchangeTronconVoiriePCRS17Relation"."tronconVoirie" IS
'';
COMMENT ON COLUMN a_stardt."EmpriseEchangeTronconVoiriePCRS17Relation"."empriseEchange" IS
'';


-- ---------------------------------
-- Classe : HabillageHabillagePCRS17Relation
-- ---------------------------------
--DROP TABLE if exists a_stardt."HabillageHabillagePCRS17Relation" cascade;
CREATE TABLE a_stardt."HabillageHabillagePCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPointLevePCRSRelation_idRelation_seq"'::regclass),
  "habillage1" character varying NOT NULL REFERENCES a_stardt."HabillagePCRS" ("idHabillage"),
  "habillage2" character varying NOT NULL REFERENCES a_stardt."HabillagePCRS" ("idHabillage")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE a_stardt."HabillageHabillagePCRS17Relation" IS
'Une élément d''habillage peut être relié à 0, un ou plusieurs autres éléments d''habillage.';


-- ---------------------------------
-- Classe : ObjetVecteurPointLevePCRS17Relation
-- ---------------------------------
--DROP TABLE if exists a_stardt."ObjetVecteurPointLevePCRS17Relation" cascade;
CREATE TABLE a_stardt."ObjetVecteurPointLevePCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPointLevePCRSRelation_idRelation_seq"'::regclass),
  "objet" character varying NOT NULL REFERENCES a_stardt."ObjetVecteurPCRS" ("idObjet"),
  "pointLeve" character varying NOT NULL REFERENCES a_stardt."PointLevePCRS" ("numeroPoint")
  --CONSTRAINT "ObjetVecteurPointLevePCRSRelation_pkey" PRIMARY KEY ("idRelation")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE a_stardt."ObjetVecteurPointLevePCRS17Relation" IS
'Un objet vecteur peut être lié à 0, un ou plusieurs points levés.';

-- ---------------------------------
-- Classe : AffleurantGeometriqueAffleurantLignesPCRS17Relation
-- ---------------------------------
--DROP TABLE if exists a_stardt."AffleurantGeometriqueAffleurantLignesPCRS17Relation" cascade;
CREATE TABLE a_stardt."AffleurantGeometriqueAffleurantLignesPCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPointLevePCRSRelation_idRelation_seq"'::regclass),
  "affleurantGeometrique" character varying NOT NULL REFERENCES a_stardt."AffleurantGeometriquePCRS" ("idObjet"),
  "affleurantLignes" character varying NOT NULL REFERENCES a_stardt."AffleurantLignesPCRS" ("idObjet")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE a_stardt."AffleurantGeometriqueAffleurantLignesPCRS17Relation" IS
'Un AffleurantGéométrique peut être lié à 0, un ou plusieurs AffleurantLignes.
Un caniveau peut être considéré comme un affleurant dont la géométrie est linéaire';

-- ---------------------------------
-- Classe : AffleurantGeometriqueAffleurantPointPCRS17Relation
-- ---------------------------------
--DROP TABLE if exists a_stardt."AffleurantGeometriqueAffleurantPointPCRS17Relation" cascade;
CREATE TABLE a_stardt."AffleurantGeometriqueAffleurantPointPCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPointLevePCRSRelation_idRelation_seq"'::regclass),
  "affleurantGeometrique" character varying NOT NULL REFERENCES a_stardt."AffleurantGeometriquePCRS" ("idObjet"),
  "affleurantPoint" character varying NOT NULL REFERENCES a_stardt."AffleurantPointPCRS" ("idObjet")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE a_stardt."AffleurantGeometriqueAffleurantPointPCRS17Relation" IS
'Un AffleurantGéométrique peut être lié à 0, un ou plusieurs AffleurantPoint.
Un poteau supportant le passage aérien d''un ou plusieurs réseaux ou une signalisation
tricolore peut être considéré comme un affleurant dont la géométrie est ponctuelle.';

-- ---------------------------------
-- Classe : AffleurantGeometriqueAffleurantEnveloppePCRS17Relation
-- ---------------------------------
--DROP TABLE if exists a_stardt."AffleurantGeometriqueAffleurantEnveloppePCRS17Relation" cascade;
CREATE TABLE a_stardt."AffleurantGeometriqueAffleurantEnveloppePCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPointLevePCRSRelation_idRelation_seq"'::regclass),
  "affleurantGeometrique" character varying NOT NULL REFERENCES a_stardt."AffleurantGeometriquePCRS" ("idObjet"),
  "affleurantEnveloppe" character varying NOT NULL REFERENCES a_stardt."AffleurantEnveloppePCRS" ("idObjet")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE a_stardt."AffleurantGeometriqueAffleurantEnveloppePCRS17Relation" IS
'Un AffleurantGéométrique peut être lié à 0, un ou plusieurs AffleurantEnveloppe.
La version actuelle du PCRS recommande l''utilisation de la classe AffleurantEnveloppe,
éventuellement complétée par un habillage HabillageLignes pour le dessin de
l''affleurant à l''intérieur de son enveloppe.';

-- ---------------------------------
-- Classe : AffleurantEnveloppeHabillageLignesPCRS17Relation
-- ---------------------------------
--DROP TABLE if exists a_stardt."AffleurantEnveloppeHabillageLignesPCRS17Relation" cascade;
CREATE TABLE a_stardt."AffleurantEnveloppeHabillageLignesPCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPointLevePCRSRelation_idRelation_seq"'::regclass),
  "affleurantEnveloppe" character varying NOT NULL REFERENCES a_stardt."AffleurantEnveloppePCRS" ("idObjet"),
  "habillageLignes" character varying NOT NULL REFERENCES a_stardt."HabillageLignesPCRS" ("idHabillage")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE a_stardt."AffleurantEnveloppeHabillageLignesPCRS17Relation" IS
'Un AffleurantEnveloppe peut être lié à 0, un ou plusieurs HabillageLignes.
La version actuelle du PCRS recommande l''utilisation de la classe AffleurantEnveloppe,
éventuellement complétée par un habillage HabillageLignes pour le dessin de
l''affleurant à l''intérieur de son enveloppe.';

-- ---------------------------------
-- Classe : RasterMasqueOpacitePCRS17Relation
-- ---------------------------------
--DROP TABLE if exists a_stardt."RasterMasqueOpacitePCRS17Relation";
CREATE TABLE a_stardt."RasterMasqueOpacitePCRS17Relation"
(
  --"idRelation" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetVecteurPointLevePCRSRelation_idRelation_seq"'::regclass),
  "raster" character varying NOT NULL REFERENCES a_stardt."RasterPCRS" ("idPCRS"),
  "masqueOpacite" character varying NOT NULL REFERENCES a_stardt."MasqueOpacitePCRS" ("idHabillage")
)
WITH (
  OIDS=FALSE
);

COMMENT ON TABLE a_stardt."RasterMasqueOpacitePCRS17Relation" IS
'Un AffleurantEnveloppe peut être lié à 0, un ou plusieurs HabillageLignes.
La version actuelle du PCRS recommande l''utilisation de la classe AffleurantEnveloppe,
éventuellement complétée par un habillage HabillageLignes pour le dessin de
l''affleurant à l''intérieur de son enveloppe.';
