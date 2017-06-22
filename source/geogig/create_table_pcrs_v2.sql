-- ---------------------------------
-- DROP
-- ---------------------------------
DROP TABLE if exists "EmprisePublicationPCRS" cascade;
DROP TABLE if exists "TronconVoiriePCRS" cascade;
DROP TABLE if exists "HabillagePCRS" cascade;
DROP TABLE if exists "SymboleHabillagePCRS" cascade;
DROP TABLE if exists "TexteHabillagePCRS" cascade;
DROP TABLE if exists "NomVoiriePCRS" cascade;
DROP TABLE if exists "NumeroVoiriePCRS" cascade;
DROP TABLE if exists "PointLevePCRS" cascade;
DROP TABLE if exists "ObjetGeneriquePCRS" cascade;
DROP TABLE if exists "PointCanevasPCRS" cascade;
DROP TABLE if exists "BordurePCRS" cascade;
DROP TABLE if exists "ChangementRevetementPCRS" cascade;
DROP TABLE if exists "MarcheEscalierPCRS" cascade;
DROP TABLE if exists "FacadePCRS" cascade;
DROP TABLE if exists "ProeminenceBatiPCRS" cascade;
DROP TABLE if exists "SeuilPCRS" cascade;
DROP TABLE if exists "MurPCRS" cascade;
DROP TABLE if exists "PilierRegulierPCRS" cascade;
DROP TABLE if exists "PilierParticulierPCRS" cascade;
DROP TABLE if exists "RailPCRS" cascade;
DROP TABLE if exists "HaieEspaceVertPCRS" cascade;
DROP TABLE if exists "ArbreAlignementPCRS" cascade;
DROP TABLE if exists "PilePontPCRS" cascade;
DROP TABLE if exists "AffleurantSymbolePCRS" cascade;
DROP TABLE if exists "AffleurantEnveloppePCRS" cascade;


-- ---------------------------------
-- Creation des tables "liste de valeurs / énumérations"
-- ---------------------------------


-- ---------------------------------
-- Classe : RolePCRSType
-- ---------------------------------

-- Table: RolePCRSType
-- DROP TABLE if exists "RolePCRSType";
-- CREATE TABLE "RolePCRSType"
-- (
--   code character varying(2) unique,
--   valeur character varying(38),
--   CONSTRAINT "RolePCRSType_pkey" PRIMARY KEY (code)
-- )
-- WITH (
--   OIDS=FALSE
-- );
--
-- INSERT INTO "RolePCRSType" (code, valeur) VALUES ('01', 'Echelon national du PCRS');
-- INSERT INTO "RolePCRSType" (code, valeur) VALUES ('02', 'Gestionnaire du PCRS');
-- INSERT INTO "RolePCRSType" (code, valeur) VALUES ('03', 'Producteur du PCRS');
-- INSERT INTO "RolePCRSType" (code, valeur) VALUES ('04', 'Utilisateur du PCRS');
--
-- COMMENT ON TABLE "RolePCRSType" IS
-- 'Code permettant de décrire le role de l acteur.';


-- ---------------------------------
-- Classe : ActeurPCRSType
-- ---------------------------------

-- Table: ActeurPCRSType
-- DROP TABLE if exists "RolePCRSType";
-- CREATE TABLE "ActeurPCRSType"
-- (
--   code character varying(2) unique,
--   valeur character varying(38),
--   CONSTRAINT "ActeurPCRSType_pkey" PRIMARY KEY (code)
-- )
-- WITH (
--   OIDS=FALSE
-- );
--
-- INSERT INTO "ActeurPCRSType" (code, valeur) VALUES ('01', 'Echelon national du PCRS');
-- INSERT INTO "ActeurPCRSType" (code, valeur) VALUES ('02', 'Gestionnaire du PCRS');
-- INSERT INTO "ActeurPCRSType" (code, valeur) VALUES ('03', 'Gestionnaire Référentiel Voirie');
-- INSERT INTO "ActeurPCRSType" (code, valeur) VALUES ('04', 'Gestionnaire Foncier');
-- INSERT INTO "ActeurPCRSType" (code, valeur) VALUES ('05', 'Gestionnaire Voirie');
-- INSERT INTO "ActeurPCRSType" (code, valeur) VALUES ('06', 'Exploitant de réseaux');
-- INSERT INTO "ActeurPCRSType" (code, valeur) VALUES ('07', 'Autre Gestionnaire');
-- INSERT INTO "ActeurPCRSType" (code, valeur) VALUES ('08', 'Producteur d orthophotos');
--
-- COMMENT ON TABLE "ActeurPCRSType" IS
-- 'Code permettant de décrire l acteur.';


-- ---------------------------------
-- Classe : CategorieThematiquePCRSType
-- ---------------------------------

-- Table: CategorieThematiquePCRSType
DROP TABLE if exists "CategorieThematiquePCRSType";
CREATE TABLE "CategorieThematiquePCRSType"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "CategorieThematiquePCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('00', 'A déterminer', 'Concerne essentiellement les objets génériques dont la thématique, liée en général à la classe d objet, ne peut être déterminée à partir de la nomenclature lors de l initialisation du PCRS.');
INSERT INTO "CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('01', 'Topographie', 'Concerne les objets spécifiques à la topographie, et notamment les points de caneva et les points de levés topographiques');
INSERT INTO "CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('02', 'Bâti', 'Concerne les objets liés au bâti sur le domaine public ou en limite de celui-ci, et en particulier les seuils de bâtiments, les façades, les amorces de bâti, les proéminences de bâti, et les escaliers.');
INSERT INTO "CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('03', 'Voirie', 'Concerne les objets de types voies de circulation terrestre non ferroviaire du domaine public, et comprenant les limites apparentes de type bordures et bordurettes, changements de revêtements et escaliers');
INSERT INTO "CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('04', 'Ferroviaire', 'Concerne aussi bien les rails de SNCF Réseau que ceux liés à un transport public de type tramway ou tram-train et situés sur le domaine public');
INSERT INTO "CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('05', 'Clôture', 'Concerne les objets destinés à la clôture d un espace et ayant une limite apparente avec le domaine public, dont les murs de tous types et parapets, surmontés ou non d une clôture, les socles de clôtures, et les piliers.');
INSERT INTO "CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('06', 'Végétal', 'Concerne les objets végétaux de type haies et espaces verts, ainsi que les arbres d alignement');
INSERT INTO "CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('07', 'Ouvrage d Art', 'Concerne les ouvrages d art du domaine public (ex : piles de ponts)');
INSERT INTO "CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('08', 'Hydrographie', 'Concerne l hydrographie');
INSERT INTO "CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('09', 'Orographie', 'Concerne l orographie');
INSERT INTO "CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('10', 'Réseau', 'Concerne les objets spécifiques aux réseaux');
INSERT INTO "CategorieThematiquePCRSType" (code, valeur, definition) VALUES ('99', 'Non définie', 'La thématique n est pas définie dans les données sources du gestionnaire du PCRS');

COMMENT ON TABLE "CategorieThematiquePCRSType" IS
'Code permettant de décrire la thématique rattachée à un objet donné du PCRS';


-- ---------------------------------
-- Classe : CategoriePrecisionPCRSType
-- ---------------------------------

-- Table: CategoriePrecisionPCRSType
DROP TABLE if exists "CategoriePrecisionPCRSType";
CREATE TABLE "CategoriePrecisionPCRSType"
(
  code character varying(3) unique,
  valeur character varying(17),
  CONSTRAINT "CategoriePrecisionPCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "CategoriePrecisionPCRSType" (code, valeur) VALUES ('002', 'moins de 2 cm');
INSERT INTO "CategoriePrecisionPCRSType" (code, valeur) VALUES ('005', 'de 2 à 5 cm');
INSERT INTO "CategoriePrecisionPCRSType" (code, valeur) VALUES ('010', 'de 5 à 10 cm');
INSERT INTO "CategoriePrecisionPCRSType" (code, valeur) VALUES ('040', 'de 10 à 40 cm');
--INSERT INTO "CategoriePrecisionPCRSType" (code, valeur) VALUES ('100', 'de 40 à 100 cm');
--INSERT INTO "CategoriePrecisionPCRSType" (code, valeur) VALUES ('150', 'de 100 à 150 cm');
INSERT INTO "CategoriePrecisionPCRSType" (code, valeur) VALUES ('150', 'de 40 à 150 cm');
INSERT INTO "CategoriePrecisionPCRSType" (code, valeur) VALUES ('999', 'au delà de 150 cm');

COMMENT ON TABLE "CategoriePrecisionPCRSType" IS
'Code permettant de décrire un intervalle de précision exprimée en cm associée au levé d un objet ou d un affleurant du PCRS';


-- ---------------------------------
-- Classe : NatureEmprisePCRSType
-- ---------------------------------

-- Table: NatureEmprisePCRSType
DROP TABLE if exists "NatureEmprisePCRSType";
CREATE TABLE "NatureEmprisePCRSType"
(
  code character varying(2) unique,
  valeur character varying(21),
  CONSTRAINT "NatureEmprisePCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "NatureEmprisePCRSType" (code, valeur) VALUES ('01', 'Couloir');
INSERT INTO "NatureEmprisePCRSType" (code, valeur) VALUES ('02', 'Opération');
INSERT INTO "NatureEmprisePCRSType" (code, valeur) VALUES ('03', 'Carreau');
INSERT INTO "NatureEmprisePCRSType" (code, valeur) VALUES ('04', 'Limite Administrative');
INSERT INTO "NatureEmprisePCRSType" (code, valeur) VALUES ('05', 'Raster');
INSERT INTO "NatureEmprisePCRSType" (code, valeur) VALUES ('06', 'Masque');

COMMENT ON TABLE "NatureEmprisePCRSType" IS
'Code permettant de décrire la nature de l emprise d echange du PCRS.';

-- ---------------------------------
-- Classe : ProprieteEspacePCRSType
-- ---------------------------------

-- Table: ProprieteEspacePCRSType
DROP TABLE if exists "ProprieteEspacePCRSType";
CREATE TABLE "ProprieteEspacePCRSType"
(
  code character varying(2) unique,
  valeur character varying(13),
  definition character varying(255),
  CONSTRAINT "ProprieteEspacePCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "ProprieteEspacePCRSType" (code, valeur, definition) VALUES ('01', 'Espace Public', 'L espace considéré fait partie du domaine public');
INSERT INTO "ProprieteEspacePCRSType" (code, valeur, definition) VALUES ('02', 'Espace Privé', 'L espace considéré fait partie du domaine privé');
--INSERT INTO "ProprieteEspacePCRSType" (code, libelle, definition) VALUES ('03', 'Indéfini', '');

COMMENT ON TABLE "ProprieteEspacePCRSType" IS
'Code permettant de décrire la nature de l espace au sens distinction de l espce public / espace privé.';


-- ---------------------------------
-- Classe : QualiteCategorisationPCRSType
-- ---------------------------------

-- Table: QualiteCategorisationPCRSType
DROP TABLE if exists "QualiteCategorisationPCRSType";
CREATE TABLE "QualiteCategorisationPCRSType"
(
  code character varying(2) unique,
  valeur character varying(27),
  definition character varying(255),
  CONSTRAINT "QualiteCategorisationPCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

--INSERT INTO "QualiteCategorisationPCRSType" (code, valeur, definition) VALUES ('01', 'Conforme PCRS', '');
INSERT INTO "QualiteCategorisationPCRSType" (code, valeur, definition) VALUES ('01', 'Très fiable / Conforme PCRS', 'La catégorisation de l objet du PCRS est conforme aux spécifications');
--INSERT INTO "QualiteCategorisationPCRSType" (code, valeur, definition) VALUES ('02', 'Import ERDF', '');
INSERT INTO "QualiteCategorisationPCRSType" (code, valeur, definition) VALUES ('02', 'Moyennement Fiable ', 'La catégorisation de l objet du PCRS est moyennement fiable');
--INSERT INTO "QualiteCategorisationPCRSType" (code, valeur, definition) VALUES ('03', 'Selon CCTP avant 2015 PVRC v1', '');
INSERT INTO "QualiteCategorisationPCRSType" (code, valeur, definition) VALUES ('03', 'Peu fiable', 'La catégorisation de l objet du PCRS est peu fiable');

COMMENT ON TABLE "QualiteCategorisationPCRSType" IS
'Code permettant de décrire de façon extensible la qualité de catégorisation des objets du PCRS.';


-- ---------------------------------
-- Classe : CategorieBordurePCRSType
-- ---------------------------------

-- Table: CategorieBordurePCRSType
DROP TABLE if exists "CategorieBordurePCRSType";
CREATE TABLE "CategorieBordurePCRSType"
(
  code character varying(2) unique,
  valeur character varying(7),
  definition character varying(255),
  CONSTRAINT "CategorieBordurePCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "CategorieBordurePCRSType" (code, valeur, definition) VALUES ('01', 'Bordure', 'Bordure, bordurette');
INSERT INTO "CategorieBordurePCRSType" (code, valeur, definition) VALUES ('02', 'Quai', 'Quai');

COMMENT ON TABLE "CategorieBordurePCRSType" IS
'Code permettant de décrire le type de bordure utilisée en voirie.';


-- ---------------------------------
-- Classe : SectionPilierPCRSType
-- ---------------------------------

-- Table: SectionPilierPCRSType
DROP TABLE if exists "SectionPilierPCRSType";
CREATE TABLE "SectionPilierPCRSType"
(
  code character varying(2) unique,
  valeur character varying(20),
  definition character varying(255),
  CONSTRAINT "SectionPilierPCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "SectionPilierPCRSType" (code, valeur, definition) VALUES ('01', 'Pilier carré', 'Pilier à section carrée');
INSERT INTO "SectionPilierPCRSType" (code, valeur, definition) VALUES ('02', 'Pilier rectangulaire', 'Pilier à section rectangulaire');
INSERT INTO "SectionPilierPCRSType" (code, valeur, definition) VALUES ('03', 'Pilier circulaire', 'Pilier à section circulaire');
--INSERT INTO "SectionPilierPCRSType" (code, valeur, definition) VALUES ('04', 'Pilier à autre forme de section', '');
INSERT INTO "SectionPilierPCRSType" (code, valeur, definition) VALUES ('99', 'Pilier autre', 'Autre type de pilier');

COMMENT ON TABLE "SectionPilierPCRSType" IS
'Code permettant de décrire le type de pilier.';


-- ---------------------------------
-- Classe : CategorieMurPCRSType
-- ---------------------------------

-- Table: CategorieMurPCRSType
DROP TABLE if exists "CategorieMurPCRSType";
CREATE TABLE "CategorieMurPCRSType"
(
  code character varying(2) unique,
  valeur character varying(22),
  CONSTRAINT "CategorieMurPCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "CategorieMurPCRSType" (code, valeur) VALUES ('00', 'Non défini');
INSERT INTO "CategorieMurPCRSType" (code, valeur) VALUES ('01', 'Mur');
INSERT INTO "CategorieMurPCRSType" (code, valeur) VALUES ('02', 'Mur de soutènement');
INSERT INTO "CategorieMurPCRSType" (code, valeur) VALUES ('03', 'Mur bahut');
INSERT INTO "CategorieMurPCRSType" (code, valeur) VALUES ('04', 'Mur bahut avec clôture');
INSERT INTO "CategorieMurPCRSType" (code, valeur) VALUES ('05', 'Parapet');
INSERT INTO "CategorieMurPCRSType" (code, valeur) VALUES ('06', 'Clôture sur socle');

COMMENT ON TABLE "CategorieMurPCRSType" IS
'Code permettant de décrire les différents types de mur.';


-- ---------------------------------
-- Classe : CategorieArbrePCRSType
-- ---------------------------------

-- Table: CategorieArbrePCRSType
DROP TABLE if exists "CategorieArbrePCRSType";
CREATE TABLE "CategorieArbrePCRSType"
(
  code character varying(2) unique,
  valeur character varying(10),
  CONSTRAINT "CategorieArbrePCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "CategorieArbrePCRSType" (code, valeur) VALUES ('00', 'Non défini');
INSERT INTO "CategorieArbrePCRSType" (code, valeur) VALUES ('01', 'Alignement');
INSERT INTO "CategorieArbrePCRSType" (code, valeur) VALUES ('02', 'Ornement');

COMMENT ON TABLE "CategorieArbrePCRSType" IS
'Code permettant de décrire les différents types d arbres.';


-- ---------------------------------
-- Classe : NatureReseauPCRSType
-- ---------------------------------

-- Table: NatureReseauPCRSType
DROP TABLE if exists "NatureReseauPCRSType";
CREATE TABLE "NatureReseauPCRSType"
(
  code character varying(2) unique,
  valeur character varying(23),
  CONSTRAINT "NatureReseauPCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "NatureReseauPCRSType" (code, valeur) VALUES ('00', 'Non défini');
INSERT INTO "NatureReseauPCRSType" (code, valeur) VALUES ('ELEC', 'Electricité');
INSERT INTO "NatureReseauPCRSType" (code, valeur) VALUES ('ELECECL', 'Eclairage public');
INSERT INTO "NatureReseauPCRSType" (code, valeur) VALUES ('ELECTRIC', 'Signalisation lumineuse tricolore');
INSERT INTO "NatureReseauPCRSType" (code, valeur) VALUES ('GAZ', 'Gaz');
INSERT INTO "NatureReseauPCRSType" (code, valeur) VALUES ('MULT', 'Multi réseaux');
INSERT INTO "NatureReseauPCRSType" (code, valeur) VALUES ('CHIM', 'Produits chimiques');
INSERT INTO "NatureReseauPCRSType" (code, valeur) VALUES ('COM', 'Télécom');
INSERT INTO "NatureReseauPCRSType" (code, valeur) VALUES ('AEP', 'Eau Potable');
INSERT INTO "NatureReseauPCRSType" (code, valeur) VALUES ('ASSA', 'Assainissement et pluvial');
INSERT INTO "NatureReseauPCRSType" (code, valeur) VALUES ('ASSAEP', 'Eaux pluviales');
INSERT INTO "NatureReseauPCRSType" (code, valeur) VALUES ('ASSAEU', 'Eaux usées');
INSERT INTO "NatureReseauPCRSType" (code, valeur) VALUES ('ASSARU', 'Réseau unitaire');
INSERT INTO "NatureReseauPCRSType" (code, valeur) VALUES ('DECH', 'Déchets');
INSERT INTO "NatureReseauPCRSType" (code, valeur) VALUES ('CHAU', 'Chauffage et climatisation');
INSERT INTO "NatureReseauPCRSType" (code, valeur) VALUES ('INCE', 'Incendie');

COMMENT ON TABLE "NatureReseauPCRSType" IS
'Code permettant de décrire de façon extensible la nature d un réseau.';


-- ---------------------------------
-- Classe : CodeCouleurReseauPCRSType
-- ---------------------------------

-- Table: CodeCouleurReseauPCRSType
-- DROP TABLE if exists "CodeCouleurReseauPCRSType";
-- CREATE TABLE "CodeCouleurReseauPCRSType"
-- (
--   code character varying(6) unique,
--   valeur character varying(80),
--   definition character varying(80),
--   CONSTRAINT "CodeCouleurReseauPCRSType_pkey" PRIMARY KEY (code)
-- )
-- WITH (
--   OIDS=FALSE
-- );
--
-- INSERT INTO "CodeCouleurReseauPCRSType" (code, valeur) VALUES ('Rouge', '255,0,0', 'Electricité BT, HTA ou HTB, éclairage, signalisation routière et feux tricolores');
-- INSERT INTO "CodeCouleurReseauPCRSType" (code, valeur) VALUES ('Jaune', '255,255,255', 'Gaz combustible (transport ou distribution) et Hydrocarbures');
-- INSERT INTO "CodeCouleurReseauPCRSType" (code, valeur) VALUES ('Orange', '255,255,255', 'Produits chimiques');
-- INSERT INTO "CodeCouleurReseauPCRSType" (code, valeur) VALUES ('Bleu', '0,0,255', 'Eau potable');
-- INSERT INTO "CodeCouleurReseauPCRSType" (code, valeur) VALUES ('Marron', '255,255,255', 'Assainissement et Pluvial');
-- INSERT INTO "CodeCouleurReseauPCRSType" (code, valeur) VALUES ('Violet', '255,255,255', 'Chauffage et Climatisation');
-- INSERT INTO "CodeCouleurReseauPCRSType" (code, valeur) VALUES ('Vert', '0,255,0', 'Communications électroniques et électricité TBT');
-- INSERT INTO "CodeCouleurReseauPCRSType" (code, valeur) VALUES ('Rose', '255,255,255', 'Emprise multi-réseaux');
-- INSERT INTO "CodeCouleurReseauPCRSType" (code, valeur) VALUES ('Blanc', '255,255,255', 'Non-défini');
--
-- COMMENT ON TABLE "CodeCouleurReseauPCRSType" IS
-- 'Code permettant de décrire la couleur associée à une nature de réseau.';


-- ---------------------------------
-- Classe : NatureAffleurantPCRSType
-- ---------------------------------

-- Table: NatureAffleurantPCRSType
DROP TABLE if exists "NatureAffleurantPCRSType";
CREATE TABLE "NatureAffleurantPCRSType"
(
  code character varying(2) unique,
  valeur character varying(23),
  definition character varying(255),
  CONSTRAINT "NatureAffleurant_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "NatureAffleurant" (code, valeur, definition) VALUES ('00', 'Non défini', 'Les informations collectées ne permettent pas d identifier sans ambiguité la nature de l affleurant');
INSERT INTO "NatureAffleurant" (code, valeur, definition) VALUES ('01', 'Avaloir', 'Dispositif à garde d eau destiné principalement à recueillir les eaux de ruisselement ou de nettoyage des sols');
INSERT INTO "NatureAffleurant" (code, valeur, definition) VALUES ('02', 'Boîte, Coffret, Armoire', 'Boîte, coffret ou armoire technique qui centralise des éléments de réseaux');
INSERT INTO "NatureAffleurant" (code, valeur, definition) VALUES ('03', 'Tampon', 'Couvercle d un regard d assainissement ou d une chambre souterraine de génie civil pour le passage des réseaux et présent notamment sur les chaussées');
INSERT INTO "NatureAffleurant" (code, valeur, definition) VALUES ('04', 'Bouche à clé', 'Accessoire de robinetterie permettant de manoeuvrer depuis la chaussée, une vanne ou un robinet de branchement enterré');
INSERT INTO "NatureAffleurant" (code, valeur, definition) VALUES ('05', 'Bouche, Poteau incendie', 'Permet aux services de lutte contre l incendie (pompiers) de puiser l eau du réeau');
INSERT INTO "NatureAffleurant" (code, valeur, definition) VALUES ('06', 'Poteau', 'Poteau supportant le passage aérien d un ou plusieurs réseaux');
INSERT INTO "NatureAffleurant" (code, valeur, definition) VALUES ('07', 'Borne d éclairage', 'Borne lumineuse pour la mise en valeur / l éclairage de l espace public');

COMMENT ON TABLE "NatureAffleurantPCRSType" IS
'Code permettant de décrire de façon extensible la nature d un affleurant de réseaux.';


-- ---------------------------------
-- Classe : CalendrierPCRSType
-- ---------------------------------

-- Table: CalendrierPCRSType
-- DROP TABLE if exists "CalendrierPCRSType";
-- CREATE TABLE "CalendrierPCRSType"
-- (
--   code character varying(2) unique,
--   valeur character varying(24),
--   CONSTRAINT "CalendrierPCRSType_pkey" PRIMARY KEY (code)
-- )
-- WITH (
--   OIDS=FALSE
-- );
--
-- INSERT INTO "CalendrierPCRSType" (code, valeur) VALUES ('01', 'Livré, Mis A Disposition');
-- INSERT INTO "CalendrierPCRSType" (code, valeur) VALUES ('02', 'Actualisation En Cours');
-- INSERT INTO "CalendrierPCRSType" (code, valeur) VALUES ('03', 'En Projet, Planifié');
-- INSERT INTO "CalendrierPCRSType" (code, valeur) VALUES ('04', 'Non Planifié');
--
-- COMMENT ON TABLE "CalendrierPCRSType" IS
-- 'Code permettant de décrire la date de disponibilité du PCRS.';


-- ---------------------------------
-- Classe : CotationPCRSType
-- ---------------------------------

-- Table: CotationPCRSType
-- DROP TABLE if exists "CotationPCRSType";
-- CREATE TABLE "CotationPCRSType"
-- (
--   code character varying(2) unique,
--   valeur character varying(38),
--   CONSTRAINT "CotationPCRSType_pkey" PRIMARY KEY (code)
-- )
-- WITH (
--   OIDS=FALSE
-- );
--
-- INSERT INTO "CotationPCRSType" (code, valeur) VALUES ('01', 'Non Utilisable Pour Coter');
-- INSERT INTO "CotationPCRSType" (code, valeur) VALUES ('02', 'Cotation Planimetrique Uniquement');
-- INSERT INTO "CotationPCRSType" (code, valeur) VALUES ('03', 'Cotation Planimetrique Et Altimetrique');
--
-- COMMENT ON TABLE "CotationPCRSType" IS
-- 'Code permettant de décrire si l objet peut etre utilisable pour coter.';


-- ---------------------------------
-- Classe : CategoriePlacementPCRSType
-- ---------------------------------

-- Table: CategoriePlacementPCRSType
DROP TABLE if exists "CategoriePlacementPCRSType";
CREATE TABLE "CategoriePlacementPCRSType"
(
  code character varying(2) unique,
  valeur character varying(21),
  definition character varying(255),
  CONSTRAINT "CategoriePlacementPCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "CategoriePlacementPCRSType" (code, valeur, definition) VALUES ('01', 'Sans Repositionnement', 'L élément d habillage n a pas été repositionné par rapport à la source de données dont il est issu.');
--INSERT INTO "CategoriePlacementPCRSType" (code, valeur, definition) VALUES ('01', 'Repositionnement Gestionnaire de Réseaux', 'L élément d habillage est positionné sur ou très proche de l axe de voirie');
INSERT INTO "CategoriePlacementPCRSType" (code, valeur, definition) VALUES ('02', 'Axe Voirie', 'L élément d habillage est positionné sur ou très proche de l axe de voirie ');
INSERT INTO "CategoriePlacementPCRSType" (code, valeur, definition) VALUES ('03', 'Limite Voirie', 'L élément d habillage est positionné en limite de voirie');
INSERT INTO "CategoriePlacementPCRSType" (code, valeur, definition) VALUES ('04', 'Hors Voirie', 'L élément d habillage est positionné en dehors des limites de voirie');
INSERT INTO "CategoriePlacementPCRSType" (code, valeur, definition) VALUES ('05', 'Parcelle', 'L élément d habillage est positionné à l intérieur d une parcelle et proche des limites de voirie');

COMMENT ON TABLE "CategoriePlacementPCRSType" IS
'Code permettant de décrire le type de positionnement des éléments d habillage.';


-- ---------------------------------
-- Classe : TexteJustificationPCRSType
-- ---------------------------------

-- Table: TexteJustificationPCRSType
DROP TABLE if exists "TexteJustificationPCRSType";
CREATE TABLE "TexteJustificationPCRSType"
(
  code character varying(1) unique,
  valeur character varying(6),
  definition character varying(255),
  CONSTRAINT "TexteJustificationPCRSType_pkey" PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);

INSERT INTO "TexteJustificationPCRSType" (code, valeur, definition) VALUES ('G', 'Gauche', 'Le texte est justifé à gauche');
INSERT INTO "TexteJustificationPCRSType" (code, valeur, definition) VALUES ('C', 'Centré', 'Le texte est centré');
INSERT INTO "TexteJustificationPCRSType" (code, valeur, definition) VALUES ('D', 'Droite', 'Le texte est justifé à droite');

COMMENT ON TABLE "TexteJustificationPCRSType" IS
'Code permettant de justifier un texte d habillage.';


-- ---------------------------------
-- Creation des tables "objets géographiques du PCRS"
-- ---------------------------------

-- ---------------------------------
-- Classe : EmprisePublicationPCRS
-- ---------------------------------

-- Sequence: EmprisePublicationPCRS_idEmprise_seq
--DROP INDEX if exists "EmprisePublicationPCRS_geometrie_geomidx";
--DROP TABLE if exists "EmprisePublicationPCRS";
DROP SEQUENCE if exists "EmprisePublicationPCRS_idEmprise_seq";

CREATE SEQUENCE "EmprisePublicationPCRS_idEmprise_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: EmprisePublicationPCRS
--DROP TABLE if exists "EmprisePublicationPCRS";
CREATE TABLE "EmprisePublicationPCRS"
(
  geometrie geometry(Polygon,3946) NOT NULL,
  "idEmprise" character varying UNIQUE NOT NULL DEFAULT nextval('"EmprisePublicationPCRS_idEmprise_seq"'::regclass),
  gestionnaire character varying NOT NULL REFERENCES "Gestionnaire",
  calendrier character varying(2) REFERENCES "CalendrierPCRS" (code),
  "datePublication" date NOT NULL,
  "typeEmprise" character varying(2) NOT NULL REFERENCES "EmprisePCRSType" (code),
  complement character varying,
  raster character varying,
  "gabaritPrecision" character varying(2),
  CONSTRAINT "EmprisePublicationPCRS_pkey" PRIMARY KEY ("idEmprise")
)
WITH (
  OIDS=FALSE
);

-- Index: EmprisePublicationPCRS_geometrie_geomidx
--DROP INDEX if exists "EmprisePublicationPCRS_geometrie_geomidx";
CREATE INDEX "EmprisePublicationPCRS_geometrie_geomidx"
  ON "EmprisePublicationPCRS"
  USING gist
  (geometrie);


COMMENT ON TABLE "CategorieThematiquePCRSType" IS
'Code permettant de décrire la thématique rattachée à un objet donné du PCRS';

COMMENT ON COLUMN "CategorieThematiquePCRSType"."CategorieThematiquePCRSType" IS
'Le code representation .....';

-- ---------------------------------
-- Classe : TronconVoiriePCRS
-- ---------------------------------

-- Sequence: TronconVoiriePCRS_reference_seq
--DROP INDEX if exists "TronconVoiriePCRS_geometrie_geomidx";
--DROP TABLE if exists "TronconVoiriePCRS";
DROP SEQUENCE if exists "TronconVoiriePCRS_reference_seq";

CREATE SEQUENCE "TronconVoiriePCRS_reference_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: TronconVoiriePCRS
--DROP TABLE if exists "TronconVoiriePCRS";
CREATE TABLE "TronconVoiriePCRS"
(
  geometrie geometry(LineString,3946) NOT NULL,
  source character varying NOT NULL,
  "reference" character varying UNIQUE NOT NULL DEFAULT nextval('"TronconVoiriePCRS_reference_seq"'::regclass),
  propriete character varying(2) REFERENCES "ProprieteEspace" (code),
  CONSTRAINT "TronconVoiriePCRS_pkey" PRIMARY KEY ("reference")
)
WITH (
  OIDS=FALSE
);

-- Index: TronconVoiriePCRS_geometrie_geomidx
--DROP INDEX if exists "TronconVoiriePCRS_geometrie_geomidx";
CREATE INDEX "TronconVoiriePCRS_geometrie_geomidx"
  ON "TronconVoiriePCRS"
  USING gist
  (geometrie);


-- ---------------------------------
-- Classe : HabillagePCRS
-- ---------------------------------

-- Sequence: HabillagePCRS_idHabillage_seq
--DROP INDEX if exists "HabillagePCRS_geometrie_geomidx";
--DROP TABLE if exists "HabillagePCRS";
DROP SEQUENCE if exists "HabillagePCRS_idHabillage_seq";

CREATE SEQUENCE "HabillagePCRS_idHabillage_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: HabillagePCRS
--DROP TABLE if exists "HabillagePCRS";
CREATE TABLE "HabillagePCRS"
(
  geometrie geometry(Geometry,3946) NOT NULL,
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('"HabillagePCRS_idHabillage_seq"'::regclass),
  thematique character varying(2) NOT NULL,
  calque character varying NOT NULL,
  "positionnement" character varying(2) REFERENCES "PlacementPCRS" (code),
  CONSTRAINT "HabillagePCRS_pkey" PRIMARY KEY ("idHabillage")
)
WITH (
  OIDS=FALSE
);

-- Index: HabillagePCRS_geometrie_geomidx
--DROP INDEX if exists "HabillagePCRS_geometrie_geomidx";
CREATE INDEX "HabillagePCRS_geometrie_geomidx"
  ON "HabillagePCRS"
  USING gist
  (geometrie);


-- ---------------------------------
-- Classe : SymboleHabillagePCRS
-- ---------------------------------

-- Sequence: SymboleHabillagePCRS_idHabillage_seq
--DROP INDEX if exists "SymboleHabillagePCRS_geometrie_geomidx";
--DROP TABLE if exists "SymboleHabillagePCRS";
DROP SEQUENCE if exists "SymboleHabillagePCRS_idHabillage_seq";

CREATE SEQUENCE "SymboleHabillagePCRS_idHabillage_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: SymboleHabillagePCRS
--DROP TABLE if exists "SymboleHabillagePCRS";
CREATE TABLE "SymboleHabillagePCRS"
(
  geometrie geometry(Point,3946) NOT NULL,
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('"SymboleHabillagePCRS_idHabillage_seq"'::regclass),
  thematique character varying(2) NOT NULL,
  calque character varying NOT NULL,
  "positionnement" character varying(2) REFERENCES "PlacementPCRS" (code),
  "reference" character varying NOT NULL,
  "angleRotation" decimal NOT NULL CHECK ("angleRotation" >= 0 AND "angleRotation" < 360),
  longueur decimal NOT NULL,
  largeur decimal NOT NULL,
  CONSTRAINT "SymboleHabillagePCRS_pkey" PRIMARY KEY ("idHabillage")
)
WITH (
  OIDS=FALSE
);

-- Index: SymboleHabillagePCRS_geometrie_geomidx
--DROP INDEX if exists "SymboleHabillagePCRS_geometrie_geomidx";
CREATE INDEX "SymboleHabillagePCRS_geometrie_geomidx"
  ON "SymboleHabillagePCRS"
  USING gist
  (geometrie);

-- ---------------------------------
-- Classe : TexteHabillagePCRS
-- ---------------------------------

-- Sequence: TexteHabillagePCRS_idHabillage_seq
--DROP INDEX if exists "TexteHabillagePCRS_geometrie_geomidx";
--DROP TABLE if exists "TexteHabillagePCRS";
DROP SEQUENCE if exists "TexteHabillagePCRS_idHabillage_seq";

CREATE SEQUENCE "TexteHabillagePCRS_idHabillage_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: TexteHabillagePCRS
--DROP TABLE if exists "TexteHabillagePCRS";
CREATE TABLE "TexteHabillagePCRS"
(
  geometrie geometry(Point,3946) NOT NULL,
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('"TexteHabillagePCRS_idHabillage_seq"'::regclass),
  thematique character varying(2) NOT NULL,
  calque character varying NOT NULL,
  "positionnement" character varying(2) REFERENCES "PlacementPCRS" (code),
  "libelle" character varying NOT NULL,
  "angleRotation" decimal NOT NULL CHECK ("angleRotation" >= 0 AND "angleRotation" < 360),
  justification character varying(1) NOT NULL REFERENCES "TexteJustification" (code),
  taille decimal NOT NULL,
  CONSTRAINT "TexteHabillagePCRS_pkey" PRIMARY KEY ("idHabillage")
)
WITH (
  OIDS=FALSE
);

-- Index: TexteHabillagePCRS_geometrie_geomidx
--DROP INDEX if exists "TexteHabillagePCRS_geometrie_geomidx";
CREATE INDEX "TexteHabillagePCRS_geometrie_geomidx"
  ON "TexteHabillagePCRS"
  USING gist
  (geometrie);


-- ---------------------------------
-- Classe : NomVoiriePCRS
-- ---------------------------------

-- Sequence: NomVoiriePCRS_idHabillage_seq
--DROP INDEX if exists "NomVoiriePCRS_geometrie_geomidx";
--DROP TABLE if exists "NomVoiriePCRS";
DROP SEQUENCE if exists "NomVoiriePCRS_idHabillage_seq";

CREATE SEQUENCE "NomVoiriePCRS_idHabillage_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: NomVoiriePCRS
--DROP TABLE if exists "NomVoiriePCRS";
CREATE TABLE "NomVoiriePCRS"
(
  geometrie geometry(Point,3946) NOT NULL,
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('"NomVoiriePCRS_idHabillage_seq"'::regclass),
  thematique character varying(2) NOT NULL,
  calque character varying NOT NULL,
  "positionnement" character varying(2) REFERENCES "PlacementPCRS" (code),
  "libelle" character varying NOT NULL,
  "angleRotation" decimal NOT NULL CHECK ("angleRotation" >= 0 AND "angleRotation" < 360),
  justification character varying(1) NOT NULL REFERENCES "TexteJustification" (code),
  taille decimal NOT NULL,
  "idNomVoirie" character varying UNIQUE NOT NULL,
  CONSTRAINT "NomVoiriePCRS_pkey" PRIMARY KEY ("idHabillage")
)
WITH (
  OIDS=FALSE
);

-- Index: NomVoiriePCRS_geometrie_geomidx
--DROP INDEX if exists "NomVoiriePCRS_geometrie_geomidx";
CREATE INDEX "NomVoiriePCRS_geometrie_geomidx"
  ON "NomVoiriePCRS"
  USING gist
  (geometrie);


-- ---------------------------------
-- Classe : NumeroVoiriePCRS
-- ---------------------------------

-- Sequence: NumeroVoiriePCRS_idHabillage_seq
--DROP INDEX if exists "NumeroVoiriePCRS_geometrie_geomidx";
--DROP TABLE if exists "NumeroVoiriePCRS";
DROP SEQUENCE if exists "NumeroVoiriePCRS_idHabillage_seq";

CREATE SEQUENCE "NumeroVoiriePCRS_idHabillage_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: NumeroVoiriePCRS
--DROP TABLE if exists "NumeroVoiriePCRS";
CREATE TABLE "NumeroVoiriePCRS"
(
  geometrie geometry(Point,3946) NOT NULL,
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('"NumeroVoiriePCRS_idHabillage_seq"'::regclass),
  thematique character varying(2) NOT NULL,
  calque character varying NOT NULL,
  "positionnement" character varying(2) REFERENCES "PlacementPCRS" (code),
  "libelle" character varying NOT NULL,
  "angleRotation" decimal NOT NULL CHECK ("angleRotation" >= 0 AND "angleRotation" < 360),
  justification character varying(1) NOT NULL REFERENCES "TexteJustification" (code),
  taille decimal NOT NULL,
  "idNumeroVoirie" character varying UNIQUE NOT NULL,
  CONSTRAINT "NumeroVoiriePCRS_pkey" PRIMARY KEY ("idHabillage")
)
WITH (
  OIDS=FALSE
);

-- Index: NumeroVoiriePCRS_geometrie_geomidx
--DROP INDEX if exists "NumeroVoiriePCRS_geometrie_geomidx";
CREATE INDEX "NumeroVoiriePCRS_geometrie_geomidx"
  ON "NumeroVoiriePCRS"
  USING gist
  (geometrie);


-- ---------------------------------
-- Classe : PointLevePCRS
-- ---------------------------------


-- Table: PointLevePCRS
--DROP TABLE if exists "PointLevePCRS";
CREATE TABLE "PointLevePCRS"
(
  geometrie geometry(Point,3946) NOT NULL,
  "numeroPoint" character varying NOT NULL,
  "precisionXY" integer NOT NULL,
  "precisionZ" integer,
  horodatage date
)
WITH (
  OIDS=FALSE
);

-- Index: PointLevePCRS_geometrie_geomidx
--DROP INDEX if exists "PointLevePCRS_geometrie_geomidx";
CREATE INDEX "PointLevePCRS_geometrie_geomidx"
  ON "PointLevePCRS"
  USING gist
  (geometrie);

-- ---------------------------------
-- Classe : PointCanevasPCRS
-- ---------------------------------

-- Sequence: PointCanevasPCRS_idObjet_seq
--DROP INDEX if exists "PointCanevasPCRS_geometrie_geomidx";
--DROP TABLE if exists "PointCanevasPCRS";
DROP SEQUENCE if exists "PointCanevasPCRS_idObjet_seq";

CREATE SEQUENCE "PointCanevasPCRS_idObjet_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: PointCanevasPCRS
--DROP TABLE if exists "PointCanevasPCRS";
CREATE TABLE "PointCanevasPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"PointCanevasPCRS_idObjet_seq"'::regclass),
  thematique character varying(2) NOT NULL,
  calque character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisation" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "precisionAltimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "utilisableCotation" character varying(2) NOT NULL REFERENCES "CotationPCRS" (code),
  geometrie geometry(Point,3946) NOT NULL,
  canevas character varying,
  "precisionXY" integer,
  "precisionZ" integer,
  immatriculation character varying,
  "dateCreation" date,
  fiche character varying,
  CONSTRAINT "PointCanevasPCRS_pkey" PRIMARY KEY ("idObjet")
)
WITH (
  OIDS=FALSE
);

-- Index: PointCanevasPCRS_geometrie_geomidx
--DROP INDEX if exists "PointCanevasPCRS_geometrie_geomidx";
CREATE INDEX "PointCanevasPCRS_geometrie_geomidx"
  ON "PointCanevasPCRS"
  USING gist
  (geometrie);


-- ---------------------------------
-- Classe : ObjetGeneriquePCRS
-- ---------------------------------

-- Sequence: ObjetGeneriquePCRS_idObjet_seq
--DROP INDEX if exists "ObjetGeneriquePCRS_geometrie_geomidx";
--DROP TABLE if exists "ObjetGeneriquePCRS";
DROP SEQUENCE if exists "ObjetGeneriquePCRS_idObjet_seq";

CREATE SEQUENCE "ObjetGeneriquePCRS_idObjet_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: ObjetGeneriquePCRS
--DROP TABLE if exists "ObjetGeneriquePCRS";
CREATE TABLE "ObjetGeneriquePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"ObjetGeneriquePCRS_idObjet_seq"'::regclass),
  thematique character varying(2) NOT NULL,
  calque character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisation" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "precisionAltimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "utilisableCotation" character varying(2) NOT NULL REFERENCES "CotationPCRS" (code),
  geometrie geometry(Geometry,3946) NOT NULL,
  identification character varying,
  CONSTRAINT "ObjetGeneriquePCRS_pkey" PRIMARY KEY ("idObjet")
)
WITH (
  OIDS=FALSE
);

-- Index: ObjetGeneriquePCRS_geometrie_geomidx
--DROP INDEX if exists "ObjetGeneriquePCRS_geometrie_geomidx";
CREATE INDEX "ObjetGeneriquePCRS_geometrie_geomidx"
  ON "ObjetGeneriquePCRS"
  USING gist
  (geometrie);


-- ---------------------------------
-- Classe : BordurePCRS
-- ---------------------------------

-- Sequence: BordurePCRS_idObjet_seq
--DROP INDEX if exists "BordurePCRS_geometrie_geomidx";
--DROP TABLE if exists "BordurePCRS";
DROP SEQUENCE if exists "BordurePCRS_idObjet_seq";

CREATE SEQUENCE "BordurePCRS_idObjet_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: BordurePCRS
--DROP TABLE if exists "BordurePCRS";
CREATE TABLE "BordurePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"BordurePCRS_idObjet_seq"'::regclass),
  thematique character varying(2) NOT NULL,
  calque character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisation" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "precisionAltimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "utilisableCotation" character varying(2) NOT NULL REFERENCES "CotationPCRS" (code),
  geometrie geometry(LineString,3946) NOT NULL,
  nature character varying(2) REFERENCES "TypeBordurePCRS" (code),
  CONSTRAINT "BordurePCRS_pkey" PRIMARY KEY ("idObjet")
)
WITH (
  OIDS=FALSE
);

-- Index: BordurePCRS_geometrie_geomidx
--DROP INDEX if exists "BordurePCRS_geometrie_geomidx";
CREATE INDEX "BordurePCRS_geometrie_geomidx"
  ON "BordurePCRS"
  USING gist
  (geometrie);


-- ---------------------------------
-- Classe : ChangementRevetementPCRS
-- ---------------------------------

-- Sequence: ChangementRevetementPCRS_idObjet_seq
--DROP INDEX if exists "ChangementRevetementPCRS_geometrie_geomidx";
--DROP TABLE if exists "ChangementRevetementPCRS";
DROP SEQUENCE if exists "ChangementRevetementPCRS_idObjet_seq";

CREATE SEQUENCE "ChangementRevetementPCRS_idObjet_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: ChangementRevetementPCRS
--DROP TABLE if exists "ChangementRevetementPCRS";
CREATE TABLE "ChangementRevetementPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"ChangementRevetementPCRS_idObjet_seq"'::regclass),
  thematique character varying(2) NOT NULL,
  calque character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisation" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "precisionAltimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "utilisableCotation" character varying(2) NOT NULL REFERENCES "CotationPCRS" (code),
  geometrie geometry(LineString,3946) NOT NULL,
  CONSTRAINT "ChangementRevetementPCRS_pkey" PRIMARY KEY ("idObjet")
)
WITH (
  OIDS=FALSE
);

-- Index: ChangementRevetementPCRS_geometrie_geomidx
--DROP INDEX if exists "ChangementRevetementPCRS_geometrie_geomidx";
CREATE INDEX "ChangementRevetementPCRS_geometrie_geomidx"
  ON "ChangementRevetementPCRS"
  USING gist
  (geometrie);


-- ---------------------------------
-- Classe : MarcheEscalierPCRS
-- ---------------------------------

-- Sequence: MarcheEscalierPCRS_idObjet_seq
--DROP INDEX if exists "MarcheEscalierPCRS_geometrie_geomidx";
--DROP TABLE if exists "MarcheEscalierPCRS";
DROP SEQUENCE if exists "MarcheEscalierPCRS_idObjet_seq";

CREATE SEQUENCE "MarcheEscalierPCRS_idObjet_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: MarcheEscalierPCRS
--DROP TABLE if exists "MarcheEscalierPCRS";
CREATE TABLE "MarcheEscalierPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"MarcheEscalierPCRS_idObjet_seq"'::regclass),
  thematique character varying(2) NOT NULL,
  calque character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisation" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "precisionAltimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "utilisableCotation" character varying(2) NOT NULL REFERENCES "CotationPCRS" (code),
  geometrie geometry(Polygon,3946) NOT NULL,
  CONSTRAINT "MarcheEscalierPCRS_pkey" PRIMARY KEY ("idObjet")
)
WITH (
  OIDS=FALSE
);

-- Index: MarcheEscalierPCRS_geometrie_geomidx
--DROP INDEX if exists "MarcheEscalierPCRS_geometrie_geomidx";
CREATE INDEX "MarcheEscalierPCRS_geometrie_geomidx"
  ON "MarcheEscalierPCRS"
  USING gist
  (geometrie);


-- ---------------------------------
-- Classe : FacadePCRS
-- ---------------------------------

-- Sequence: FacadePCRS_idObjet_seq
--DROP INDEX if exists "FacadePCRS_geometrie_geomidx";
--DROP TABLE if exists "FacadePCRS";
DROP SEQUENCE if exists "FacadePCRS_idObjet_seq";

CREATE SEQUENCE "FacadePCRS_idObjet_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: FacadePCRS
--DROP TABLE if exists "FacadePCRS";
CREATE TABLE "FacadePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"FacadePCRS_idObjet_seq"'::regclass),
  thematique character varying(2) NOT NULL,
  calque character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisation" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "precisionAltimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "utilisableCotation" character varying(2) NOT NULL REFERENCES "CotationPCRS" (code),
  geometrie geometry(LineString,3946) NOT NULL,
  CONSTRAINT "FacadePCRS_pkey" PRIMARY KEY ("idObjet")
)
WITH (
  OIDS=FALSE
);

-- Index: FacadePCRS_geometrie_geomidx
--DROP INDEX if exists "FacadePCRS_geometrie_geomidx";
CREATE INDEX "FacadePCRS_geometrie_geomidx"
  ON "FacadePCRS"
  USING gist
  (geometrie);


-- ---------------------------------
-- Classe : ProeminenceBatiPCRS
-- ---------------------------------

-- Sequence: ProeminenceBatiPCRS_idObjet_seq
--DROP INDEX if exists "ProeminenceBatiPCRS_geometrie_geomidx";
--DROP TABLE if exists "ProeminenceBatiPCRS";
DROP SEQUENCE if exists "ProeminenceBatiPCRS_idObjet_seq";

CREATE SEQUENCE "ProeminenceBatiPCRS_idObjet_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: ProeminenceBatiPCRS
--DROP TABLE if exists "ProeminenceBatiPCRS";
CREATE TABLE "ProeminenceBatiPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"ProeminenceBatiPCRS_idObjet_seq"'::regclass),
  thematique character varying(2) NOT NULL,
  calque character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisation" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "precisionAltimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "utilisableCotation" character varying(2) NOT NULL REFERENCES "CotationPCRS" (code),
  geometrie geometry(LineString,3946) NOT NULL,
  CONSTRAINT "ProeminenceBatiPCRS_pkey" PRIMARY KEY ("idObjet")
)
WITH (
  OIDS=FALSE
);

-- Index: ProeminenceBatiPCRS_geometrie_geomidx
--DROP INDEX if exists "ProeminenceBatiPCRS_geometrie_geomidx";
CREATE INDEX "ProeminenceBatiPCRS_geometrie_geomidx"
  ON "ProeminenceBatiPCRS"
  USING gist
  (geometrie);


-- ---------------------------------
-- Classe : SeuilPCRS
-- ---------------------------------

-- Sequence: SeuilPCRS_idObjet_seq
--DROP INDEX if exists "SeuilPCRS_geometrie_geomidx";
--DROP TABLE if exists "SeuilPCRS";
DROP SEQUENCE if exists "SeuilPCRS_idObjet_seq";

CREATE SEQUENCE "SeuilPCRS_idObjet_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: SeuilPCRS
--DROP TABLE if exists "SeuilPCRS";
CREATE TABLE "SeuilPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"SeuilPCRS_idObjet_seq"'::regclass),
  thematique character varying(2) NOT NULL,
  calque character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisation" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "precisionAltimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "utilisableCotation" character varying(2) NOT NULL REFERENCES "CotationPCRS" (code),
  geometrie geometry(Point,3946) NOT NULL,
  CONSTRAINT "SeuilPCRS_pkey" PRIMARY KEY ("idObjet")
)
WITH (
  OIDS=FALSE
);

-- Index: SeuilPCRS_geometrie_geomidx
--DROP INDEX if exists "SeuilPCRS_geometrie_geomidx";
CREATE INDEX "SeuilPCRS_geometrie_geomidx"
  ON "SeuilPCRS"
  USING gist
  (geometrie);


-- ---------------------------------
-- Classe : MurPCRS
-- ---------------------------------

-- Sequence: MurPCRS_idObjet_seq
--DROP INDEX if exists "MurPCRS_geometrie_geomidx";
--DROP TABLE if exists "MurPCRS";
DROP SEQUENCE if exists "MurPCRS_idObjet_seq";

CREATE SEQUENCE "MurPCRS_idObjet_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: MurPCRS
--DROP TABLE if exists "MurPCRS";
CREATE TABLE "MurPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"MurPCRS_idObjet_seq"'::regclass),
  thematique character varying(2) NOT NULL,
  calque character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisation" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "precisionAltimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "utilisableCotation" character varying(2) NOT NULL REFERENCES "CotationPCRS" (code),
  geometrie geometry(LineString,3946) NOT NULL,
  "typeMur" character varying(2) REFERENCES "TypeMurPCRS" (code),
  CONSTRAINT "MurPCRS_pkey" PRIMARY KEY ("idObjet")
)
WITH (
  OIDS=FALSE
);

-- Index: MurPCRS_geometrie_geomidx
--DROP INDEX if exists "MurPCRS_geometrie_geomidx";
CREATE INDEX "MurPCRS_geometrie_geomidx"
  ON "MurPCRS"
  USING gist
  (geometrie);


-- ---------------------------------
-- Classe : PilierRegulierPCRS
-- ---------------------------------

-- Sequence: PilierRegulierPCRS_idObjet_seq
--DROP INDEX if exists "PilierRegulierPCRS_geometrie_geomidx";
--DROP TABLE if exists "PilierRegulierPCRS";
DROP SEQUENCE if exists "PilierRegulierPCRS_idObjet_seq";

CREATE SEQUENCE "PilierRegulierPCRS_idObjet_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: PilierRegulierPCRS
--DROP TABLE if exists "PilierRegulierPCRS";
CREATE TABLE "PilierRegulierPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"PilierRegulierPCRS_idObjet_seq"'::regclass),
  thematique character varying(2) NOT NULL,
  calque character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisation" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "precisionAltimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "utilisableCotation" character varying(2) NOT NULL REFERENCES "CotationPCRS" (code),
  section character varying(2) NOT NULL REFERENCES "TypePilierPCRS" (code),
  geometrie geometry(Point,3946) NOT NULL,
  "angleRotation" decimal NOT NULL CHECK ("angleRotation" >= 0 AND "angleRotation" < 360),
  longueur decimal NOT NULL,
  largeur decimal NOT NULL,
  CONSTRAINT "PilierRegulierPCRS_pkey" PRIMARY KEY ("idObjet")
)
WITH (
  OIDS=FALSE
);

-- Index: PilierRegulierPCRS_geometrie_geomidx
--DROP INDEX if exists "PilierRegulierPCRS_geometrie_geomidx";
CREATE INDEX "PilierRegulierPCRS_geometrie_geomidx"
  ON "PilierRegulierPCRS"
  USING gist
  (geometrie);



-- ---------------------------------
-- Classe : PilierParticulierPCRS
-- ---------------------------------

-- Sequence: PilierParticulierPCRS_idObjet_seq
--DROP INDEX if exists "PilierParticulierPCRS_geometrie_geomidx";
--DROP TABLE if exists "PilierParticulierPCRS";
DROP SEQUENCE if exists "PilierParticulierPCRS_idObjet_seq";

CREATE SEQUENCE "PilierParticulierPCRS_idObjet_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: PilierParticulierPCRS
--DROP TABLE if exists "PilierParticulierPCRS";
CREATE TABLE "PilierParticulierPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"PilierParticulierPCRS_idObjet_seq"'::regclass),
  thematique character varying(2) NOT NULL,
  calque character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisation" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "precisionAltimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "utilisableCotation" character varying(2) NOT NULL REFERENCES "CotationPCRS" (code),
  geometrie geometry(Polygon,3946) NOT NULL,
  CONSTRAINT "PilierParticulierPCRS_pkey" PRIMARY KEY ("idObjet")
)
WITH (
  OIDS=FALSE
);

-- Index: PilierParticulierPCRS_geometrie_geomidx
--DROP INDEX if exists "PilierParticulierPCRS_geometrie_geomidx";
CREATE INDEX "PilierParticulierPCRS_geometrie_geomidx"
  ON "PilierParticulierPCRS"
  USING gist
  (geometrie);


-- ---------------------------------
-- Classe : RailPCRS
-- ---------------------------------

-- Sequence: RailPCRS_idObjet_seq
--DROP INDEX if exists "RailPCRS_geometrie_geomidx";
--DROP TABLE if exists "RailPCRS";
DROP SEQUENCE if exists "RailPCRS_idObjet_seq";

CREATE SEQUENCE "RailPCRS_idObjet_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: RailPCRS
--DROP TABLE if exists "RailPCRS";
CREATE TABLE "RailPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"RailPCRS_idObjet_seq"'::regclass),
  thematique character varying(2) NOT NULL,
  calque character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisation" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "precisionAltimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "utilisableCotation" character varying(2) NOT NULL REFERENCES "CotationPCRS" (code),
  geometrie geometry(LineString,3946) NOT NULL,
  CONSTRAINT "RailPCRS_pkey" PRIMARY KEY ("idObjet")
)
WITH (
  OIDS=FALSE
);

-- Index: RailPCRS_geometrie_geomidx
--DROP INDEX if exists "RailPCRS_geometrie_geomidx";
CREATE INDEX "RailPCRS_geometrie_geomidx"
  ON "RailPCRS"
  USING gist
  (geometrie);

-- ---------------------------------
-- Classe : HaieEspaceVertPCRS
-- ---------------------------------

-- Sequence: HaieEspaceVertPCRS_idObjet_seq
--DROP INDEX if exists "HaieEspaceVertPCRS_geometrie_geomidx";
--DROP TABLE if exists "HaieEspaceVertPCRS";
DROP SEQUENCE if exists "HaieEspaceVertPCRS_idObjet_seq";

CREATE SEQUENCE "HaieEspaceVertPCRS_idObjet_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: HaieEspaceVertPCRS
--DROP TABLE if exists "HaieEspaceVertPCRS";
CREATE TABLE "HaieEspaceVertPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"HaieEspaceVertPCRS_idObjet_seq"'::regclass),
  thematique character varying(2) NOT NULL,
  calque character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisation" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "precisionAltimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "utilisableCotation" character varying(2) NOT NULL REFERENCES "CotationPCRS" (code),
  geometrie geometry(LineString,3946) NOT NULL,
  CONSTRAINT "HaieEspaceVertPCRS_pkey" PRIMARY KEY ("idObjet")
)
WITH (
  OIDS=FALSE
);

-- Index: HaieEspaceVertPCRS_geometrie_geomidx
--DROP INDEX if exists "HaieEspaceVertPCRS_geometrie_geomidx";
CREATE INDEX "HaieEspaceVertPCRS_geometrie_geomidx"
  ON "HaieEspaceVertPCRS"
  USING gist
  (geometrie);


-- ---------------------------------
-- Classe : ArbreAlignementPCRS
-- ---------------------------------

-- Sequence: ArbreAlignementPCRS_idObjet_seq
--DROP INDEX if exists "ArbreAlignementPCRS_geometrie_geomidx";
--DROP TABLE if exists "ArbreAlignementPCRS";
DROP SEQUENCE if exists "ArbreAlignementPCRS_idObjet_seq";

CREATE SEQUENCE "ArbreAlignementPCRS_idObjet_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: ArbreAlignementPCRS
--DROP TABLE if exists "ArbreAlignementPCRS";
CREATE TABLE "ArbreAlignementPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"ArbreAlignementPCRS_idObjet_seq"'::regclass),
  thematique character varying(2) NOT NULL,
  calque character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisation" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "precisionAltimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "utilisableCotation" character varying(2) NOT NULL REFERENCES "CotationPCRS" (code),
  geometrie geometry(Point,3946) NOT NULL,
  "reference" character varying NOT NULL,
  CONSTRAINT "ArbreAlignementPCRS_pkey" PRIMARY KEY ("idObjet")
)
WITH (
  OIDS=FALSE
);

-- Index: ArbreAlignementPCRS_geometrie_geomidx
--DROP INDEX if exists "ArbreAlignementPCRS_geometrie_geomidx";
CREATE INDEX "ArbreAlignementPCRS_geometrie_geomidx"
  ON "ArbreAlignementPCRS"
  USING gist
  (geometrie);


-- ---------------------------------
-- Classe : PilePontPCRS
-- ---------------------------------

-- Sequence: PilePontPCRS_idObjet_seq
--DROP INDEX if exists "PilePontPCRS_geometrie_geomidx";
--DROP TABLE if exists "PilePontPCRS";
DROP SEQUENCE if exists "PilePontPCRS_idObjet_seq";

CREATE SEQUENCE "PilePontPCRS_idObjet_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: PilePontPCRS
--DROP TABLE if exists "PilePontPCRS";
CREATE TABLE "PilePontPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('"PilePontPCRS_idObjet_seq"'::regclass),
  thematique character varying(2) NOT NULL,
  calque character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisation" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "precisionAltimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "utilisableCotation" character varying(2) NOT NULL REFERENCES "CotationPCRS" (code),
  geometrie geometry(LineString,3946) NOT NULL,
  CONSTRAINT "PilePontPCRS_pkey" PRIMARY KEY ("idObjet")
)
WITH (
  OIDS=FALSE
);

-- Index: PilePontPCRS_geometrie_geomidx
--DROP INDEX if exists "PilePontPCRS_geometrie_geomidx";
CREATE INDEX "PilePontPCRS_geometrie_geomidx"
  ON "PilePontPCRS"
  USING gist
  (geometrie);



-- ---------------------------------
-- Classe : AffleurantSymbolePCRS
-- ---------------------------------

-- Sequence: AffleurantSymbolePCRS_idAffleurant_seq
--DROP INDEX if exists "AffleurantSymbolePCRS_geometrie_geomidx";
--DROP TABLE if exists "AffleurantSymbolePCRS";
DROP SEQUENCE if exists "AffleurantSymbolePCRS_idAffleurant_seq";

CREATE SEQUENCE "AffleurantSymbolePCRS_idAffleurant_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: AffleurantSymbolePCRS
--DROP TABLE if exists "AffleurantSymbolePCRS";
CREATE TABLE "AffleurantSymbolePCRS"
(
  "idAffleurant" character varying UNIQUE NOT NULL DEFAULT nextval('"AffleurantSymbolePCRS_idAffleurant_seq"'::regclass),
  gestionnaire character varying REFERENCES "Gestionnaire",
  nature character varying(2) NOT NULL REFERENCES "NatureAffleurant" (code),
  "codeCouleur" character varying(6) NOT NULL REFERENCES "CodeCouleurAffleurant" (code),
  source character varying,
  "idSource" character varying,
  calque character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisation" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "precisionAltimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "utilisableCotation" character varying(2) NOT NULL REFERENCES "CotationPCRS" (code),
  geometrie geometry(Point,3946) NOT NULL,
  "reference" character varying NOT NULL,
  "angleRotation" decimal NOT NULL CHECK ("angleRotation" >= 0 AND "angleRotation" < 360),
  longueur decimal NOT NULL,
  largeur decimal NOT NULL,
  CONSTRAINT "AffleurantSymbolePCRS_pkey" PRIMARY KEY ("idAffleurant")
)
WITH (
  OIDS=FALSE
);

-- Index: AffleurantSymbolePCRS_geometrie_geomidx
--DROP INDEX if exists "AffleurantSymbolePCRS_geometrie_geomidx";
CREATE INDEX "AffleurantSymbolePCRS_geometrie_geomidx"
  ON "AffleurantSymbolePCRS"
  USING gist
  (geometrie);


-- ---------------------------------
-- Classe : AffleurantEnveloppePCRS
-- ---------------------------------

-- Sequence: AffleurantEnveloppePCRS_idAffleurant_seq
--DROP INDEX if exists "AffleurantEnveloppePCRS_geometrie_geomidx";
--DROP TABLE if exists "AffleurantEnveloppePCRS";
DROP SEQUENCE if exists "AffleurantEnveloppePCRS_idAffleurant_seq";

CREATE SEQUENCE "AffleurantEnveloppePCRS_idAffleurant_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1586
  CACHE 1;

-- Table: AffleurantEnveloppePCRS
--DROP TABLE if exists "AffleurantEnveloppePCRS";
CREATE TABLE "AffleurantEnveloppePCRS"
(
  "idAffleurant" character varying UNIQUE NOT NULL DEFAULT nextval('"AffleurantEnveloppePCRS_idAffleurant_seq"'::regclass),
  gestionnaire character varying REFERENCES "Gestionnaire",
  nature character varying(2) NOT NULL REFERENCES "NatureAffleurant" (code),
  "codeCouleur" character varying(6) NOT NULL REFERENCES "CodeCouleurAffleurant" (code),
  source character varying,
  "idSource" character varying,
  calque character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES "QualiteCategorisation" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "precisionAltimetrique" character varying(3) NOT NULL REFERENCES "ClassePrecisionPCRS" (code),
  "utilisableCotation" character varying(2) NOT NULL REFERENCES "CotationPCRS" (code),
  geometrie geometry(Polygon,3946) NOT NULL,
  CONSTRAINT "AffleurantEnveloppePCRS_pkey" PRIMARY KEY ("idAffleurant")
)
WITH (
  OIDS=FALSE
);

-- Index: AffleurantEnveloppePCRS_geometrie_geomidx
--DROP INDEX if exists "AffleurantEnveloppePCRS_geometrie_geomidx";
CREATE INDEX "AffleurantEnveloppePCRS_geometrie_geomidx"
  ON "AffleurantEnveloppePCRS"
  USING gist
  (geometrie);
