
-- ---------------------------------
-- Initialisation du PCRS
-- ---------------------------------

-- Excepté les objets Commune, Initiative, EmpriseDisponibilité, EmpriseEchange



---------------------
---------------------
---------------------
--select layer from a_rtge.tmp_ligne
--group by layer;

--select * from a_pcrs."CategorieThematiquePCRSType";

-- ---------------------------------
-- Remplissage : HabillageLignesPCRS
-- ---------------------------------

-- pieces à decouper = SIGH_L_LIGNE ; EV_L_NATVEG ; FDP_L_HAIE ; ...
-- destination = HabillageLignesPCRS


DROP SEQUENCE if exists a_pcrs."HabillagePCRS_idHabillage_seq" cascade;
CREATE SEQUENCE a_pcrs."HabillagePCRS_idHabillage_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
DROP TABLE if exists a_pcrs."HabillageLignesPCRS" cascade;
CREATE TABLE a_pcrs."HabillageLignesPCRS"
(
  "idHabillage" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."HabillagePCRS_idHabillage_seq"'::regclass),
  "thematique" character varying(2) NOT NULL REFERENCES a_pcrs."CategorieThematiquePCRSType" ("code"),
  --"geometrie" geometry(MULTILINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "HabillageLignesPCRS_pkey" PRIMARY KEY ("idHabillage"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'MULTILINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_pcrs."HabillagePCRS")
WITH (
  OIDS=FALSE
);
GRANT ALL ON TABLE a_pcrs."HabillageLignesPCRS" TO "frederic.garel";
GRANT ALL ON TABLE a_pcrs."HabillageLignesPCRS" TO pcrs;
GRANT ALL ON TABLE a_pcrs."HabillageLignesPCRS" TO wvs_role;

INSERT INTO a_pcrs."HabillageLignesPCRS"
select
  a_pcrs."EmpriseEchangePCRS".complement || '-' ||
  a_rtge."tmp_ligne"."entityhandle" || '-' ||
  a_rtge."tmp_ligne"."gid" || '-' ||
  nextval('a_pcrs."HabillagePCRS_idHabillage_seq"'::regclass) as "idObjet",
  CASE
    WHEN a_rtge."tmp_ligne".layer = 'TERRAIN_HAUT_TALUS' THEN '01'::varchar(2) -- Topographie
    WHEN a_rtge."tmp_ligne".layer = 'SIGH_L_LIGNE' THEN '03'::varchar(2) -- Voirie
    WHEN a_rtge."tmp_ligne".layer = 'SIGH _L_LIGNE' THEN '03'::varchar(2)
    WHEN a_rtge."tmp_ligne".layer = 'SIGH_L_CEDEZ' THEN '03'::varchar(2)
    WHEN a_rtge."tmp_ligne".layer = 'SIGNA_HORIZONTALE' THEN '03'::varchar(2)
    WHEN a_rtge."tmp_ligne".layer = 'MOB_L_OBSBARRF' THEN '03'::varchar(2)
    WHEN a_rtge."tmp_ligne".layer = 'EV_L_NATVEG' THEN '05'::varchar(2)  -- Cloture
    WHEN a_rtge."tmp_ligne".layer = 'FDP_L_HAIE' THEN '05'::varchar(2)
    WHEN a_rtge."tmp_ligne".layer = 'FDP_L_CLOT' THEN '05'::varchar(2)
    ELSE '00'::varchar(2) -- A déterminer
  END as "thematique",
  --st_asewkt(st_multi(st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie))) as geometrie--,
  st_multi(st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)) as geometrie
from a_rtge."tmp_ligne",
     a_pcrs."EmpriseEchangePCRS"
where st_setsrid(a_rtge."tmp_ligne".shape,3946) && a_pcrs."EmpriseEchangePCRS".geometrie
  and st_intersects(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)
  and (a_rtge."tmp_ligne".layer = 'TERRAIN_HAUT_TALUS'
    or a_rtge."tmp_ligne".layer = 'SIGH_L_LIGNE'
    or a_rtge."tmp_ligne".layer = 'SIGH _L_LIGNE'
    or a_rtge."tmp_ligne".layer = 'SIGH_L_CEDEZ'
    or a_rtge."tmp_ligne".layer = 'SIGNA_HORIZONTALE'
    or a_rtge."tmp_ligne".layer = 'MOB_L_OBSBARRF'
    or a_rtge."tmp_ligne".layer = 'EV_L_NATVEG'
    or a_rtge."tmp_ligne".layer = 'FDP_L_HAIE'
    or a_rtge."tmp_ligne".layer = 'FDP_L_CLOT')
  ;


-- ---------------------------------
-- Remplissage : ObjetGeneriquePCRS
-- ---------------------------------

-- exemple concret d'emporte-piece pour initialiser le pcrs
-- emporte-piece = case
-- pieces à decouper = CDA_L_BATI ; CAD_L_PARCELLE ;  ;  ; ...
-- destination = ObjetGeneriquePCRS

--truncate a_pcrs."ObjetGeneriquePCRS" cascade;
DROP SEQUENCE if exists a_pcrs."ObjetVecteurPCRS_idObjet_seq" cascade;
CREATE SEQUENCE a_pcrs."ObjetVecteurPCRS_idObjet_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
DROP TABLE if exists a_pcrs."ObjetGeneriquePCRS" cascade;
CREATE TABLE a_pcrs."ObjetGeneriquePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_pcrs."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(GEOMETRY,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "identification" character varying REFERENCES a_pcrs."CategorieObjetPCRS17Type" ("nomClasse"),
  CONSTRAINT "ObjetGeneriquePCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'GEOMETRY'::text OR geometrytype("geometrie") = 'MULTIPOLYGON'::text OR geometrytype("geometrie") = 'POLYGON'::text  OR geometrytype("geometrie") = 'MULTILINESTRING'::text OR geometrytype("geometrie") = 'LINESTRING'::text  OR geometrytype("geometrie") = 'MULTIPOINT'::text OR geometrytype("geometrie") = 'POINT'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_pcrs."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);
GRANT ALL ON TABLE a_pcrs."ObjetGeneriquePCRS" TO "frederic.garel";
GRANT ALL ON TABLE a_pcrs."ObjetGeneriquePCRS" TO pcrs;
GRANT ALL ON TABLE a_pcrs."ObjetGeneriquePCRS" TO wvs_role;

INSERT INTO a_pcrs."ObjetGeneriquePCRS"
(
select
  a_pcrs."EmpriseEchangePCRS".complement || '-' ||
  a_voirie."vo_emprise"."gid" || '-' ||
  nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass) as "idObjet",
  '999'::varchar(3) as "precisionAltimetrique",
  '040'::varchar(3) as "precisionPlanimetrique",
  date '2017-09-04' as "dateLeve",
  'CDA'::varchar as "producteur",
  '01'::varchar(2) as "qualiteCategorisation",
  '03'::varchar(2) as thematique, -- Voirie
  --st_asewkt(st_intersection(st_setsrid(a_voirie."vo_emprise".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)) as geometrie
  st_intersection(st_setsrid(a_voirie."vo_emprise".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie) as geometrie
from
     a_voirie."vo_emprise",
     a_pcrs."EmpriseEchangePCRS"
where st_setsrid(a_voirie."vo_emprise".shape,3946) && a_pcrs."EmpriseEchangePCRS".geometrie
  and st_intersects(st_setsrid(a_voirie."vo_emprise".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)
  
)
union
(
select
  a_pcrs."EmpriseEchangePCRS".complement || '-' ||
  c_cadastre."bati"."gid" || '-' ||
  nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass) as "idObjet",
  '999'::varchar(3) as "precisionAltimetrique",
  '040'::varchar(3) as "precisionPlanimetrique",
  date '2017-09-04' as "dateLeve",
  'CDA'::varchar as "producteur",
  '01'::varchar(2) as "qualiteCategorisation",
  '02'::varchar(2) as "thematique",-- Batiment
  --st_asewkt(st_intersection(st_setsrid(c_cadastre."bati".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)) as geometrie
  st_intersection(st_setsrid(c_cadastre."bati".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie) as geometrie
from
     c_cadastre."bati",
     a_pcrs."EmpriseEchangePCRS"
where st_setsrid(c_cadastre."bati".shape,3946) && a_pcrs."EmpriseEchangePCRS".geometrie
  and st_intersects(st_setsrid(c_cadastre."bati".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)
  
)
union
(
select
  a_pcrs."EmpriseEchangePCRS".complement || '-' ||
  c_cadastre."parcelle"."gid" || '-' ||
  nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass) as "idObjet",
  '999'::varchar(3) as "precisionAltimetrique",
  '040'::varchar(3) as "precisionPlanimetrique",
  date '2017-09-04' as "dateLeve",
  'CDA'::varchar as "producteur",
  '01'::varchar(2) as "qualiteCategorisation",
  '05'::varchar(2) as "thematique",-- cloture
  --st_asewkt(st_intersection(st_setsrid(c_cadastre."parcelle".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)) as geometrie
  st_intersection(st_setsrid(c_cadastre."parcelle".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie) as geometrie
from
     c_cadastre."parcelle",
     a_pcrs."EmpriseEchangePCRS"
where st_setsrid(c_cadastre."parcelle".shape,3946) && a_pcrs."EmpriseEchangePCRS".geometrie
  and st_intersects(st_setsrid(c_cadastre."parcelle".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)
  
)
union
(
select
  a_pcrs."EmpriseEchangePCRS".complement || '-' ||
  a_rtge."tmp_ligne"."entityhandle" || '-' ||
  a_rtge."tmp_ligne"."gid" || '-' ||
  nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass) as "idObjet",
  CASE
    WHEN a_rtge."tmp_ligne".layer = 'DIVERS_OUVRAGE' THEN '999'::varchar(3)
    WHEN a_rtge."tmp_ligne".layer = 'CAD_L_BATI' THEN '999'::varchar(3)
    WHEN a_rtge."tmp_ligne".layer = 'FDP_L_BATI' THEN '040'::varchar(3)
    WHEN a_rtge."tmp_ligne".layer = 'CAD_L_PARCELLE' THEN '999'::varchar(3)
    WHEN a_rtge."tmp_ligne".layer = 'FDP_L_PARCELLE' THEN '040'::varchar(3)
    ELSE '005'::varchar(3)
  END as "precisionAltimetrique",
  CASE
    WHEN a_rtge."tmp_ligne".layer = 'DIVERS_OUVRAGE' THEN '040'::varchar(3)
    WHEN a_rtge."tmp_ligne".layer = 'CAD_L_BATI' THEN '040'::varchar(3)
    WHEN a_rtge."tmp_ligne".layer = 'FDP_L_BATI' THEN '010'::varchar(3)
    WHEN a_rtge."tmp_ligne".layer = 'CAD_L_PARCELLE' THEN '040'::varchar(3)
    WHEN a_rtge."tmp_ligne".layer = 'FDP_L_PARCELLE' THEN '010'::varchar(3)
    ELSE '005'::varchar(3)
  END as "precisionPlanimetrique",
  date '2017-09-04' as "dateLeve",
  'CDA'::varchar as "producteur",
  '01'::varchar(2) as "qualiteCategorisation",
  CASE
    WHEN a_rtge."tmp_ligne".layer = 'DIVERS_OUVRAGE' THEN '02'::varchar(2) -- A Determiner
    WHEN a_rtge."tmp_ligne".layer = 'CAD_L_BATI' THEN '02'::varchar(2) -- Batiment
    WHEN a_rtge."tmp_ligne".layer = 'FDP_L_BATI' THEN '02'::varchar(2)
    WHEN a_rtge."tmp_ligne".layer = 'CAD_L_PARCELLE' THEN '05'::varchar(2) -- Cloture
    WHEN a_rtge."tmp_ligne".layer = 'FDP_L_PARCELLE' THEN '05'::varchar(2)
    ELSE '00'::varchar(2) -- A déterminer
  END as "thematique",
  --a_rtge."tmp_ligne".layer,
  --st_asewkt(st_setsrid(a_rtge."tmp_ligne".shape,3946)) as geometrie
  --st_asewkt(st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)) as geometrie
  st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie) as geometrie
from
     a_rtge."tmp_ligne",
     a_pcrs."EmpriseEchangePCRS"
where st_setsrid(a_rtge."tmp_ligne".shape,3946) && a_pcrs."EmpriseEchangePCRS".geometrie
  and st_intersects(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)
  and (a_rtge."tmp_ligne".layer = 'DIVERS_OUVRAGE'
    or a_rtge."tmp_ligne".layer = 'CAD_L_BATI'
    or a_rtge."tmp_ligne".layer = 'FDP_L_BATI'
    or a_rtge."tmp_ligne".layer = 'CAD_L_PARCELLE'
    or a_rtge."tmp_ligne".layer = 'FDP_L_PARCELLE')
  
  --order by a_rtge."tmp_ligne".layer
);




-- ---------------------------------
-- Remplissage : LimiteVoiriePCRS
-- ---------------------------------

-- exemple concret d'emporte-piece pour initialiser le pcrs
-- emporte-piece = case
-- pieces à decouper = VOIE_L_BORDREV ; VOIE_L_BORDURE ; VOIE_L_CHANREV ; ...
-- destination = LimiteVoiriePCRS

--DROP SEQUENCE if exists a_pcrs."ObjetVecteurPCRS_idObjet_seq" cascade;
--CREATE SEQUENCE a_pcrs."ObjetVecteurPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;
DROP TABLE if exists a_pcrs."LimiteVoiriePCRS" cascade;
CREATE TABLE a_pcrs."LimiteVoiriePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_pcrs."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "LimiteVoiriePCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_pcrs."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);
GRANT ALL ON TABLE a_pcrs."LimiteVoiriePCRS" TO "frederic.garel";
GRANT ALL ON TABLE a_pcrs."LimiteVoiriePCRS" TO pcrs;
GRANT ALL ON TABLE a_pcrs."LimiteVoiriePCRS" TO wvs_role;


--DROP VIEW if exists a_pcrs."LimiteVoiriePCRS" cascade;
--CREATE VIEW a_pcrs."LimiteVoiriePCRS" as
INSERT INTO a_pcrs."LimiteVoiriePCRS"
select
  a."idObjet1" || '-' ||
  (st_dump(geometrie)).path::text || '-' ||
  nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass) as "idObjet",
  a."precisionAltimetrique",
  a."precisionPlanimetrique",
  a."dateLeve",
  a."producteur",
  a."qualiteCategorisation",
  a."thematique",
  --st_asewkt((st_dump(geometrie)).geom) as "geometrie",
  (st_dump(geometrie)).geom as "geometrie"
from
(
select
  a_pcrs."EmpriseEchangePCRS".complement || '-' ||
  a_rtge."tmp_ligne"."entityhandle" || '-' ||
  a_rtge."tmp_ligne"."gid" as "idObjet1",
  '005'::varchar(3) as "precisionAltimetrique",
  '005'::varchar(3) as "precisionPlanimetrique",
  date '2017-09-04' as "dateLeve",
  'CDA'::varchar as "producteur",
  '01'::varchar(2) as "qualiteCategorisation",
  '03'::varchar(2) as thematique,
  --st_asewkt(st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)) as geometrie_text,
  st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie) as geometrie
from a_rtge."tmp_ligne",
     a_pcrs."EmpriseEchangePCRS"
where st_setsrid(a_rtge."tmp_ligne".shape,3946) && a_pcrs."EmpriseEchangePCRS".geometrie
  and st_intersects(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)
  and (a_rtge."tmp_ligne".layer in ('VOIE_L_BORDREV',
                                    'VOIE_L_BORDURE',
                                    'VOIE_L_CHANREV',
                                    'VOIRIE_LIMITE_REVETEMENT',
                                    'VORIE_BORDURE',
                                    'VORIE_CC1'))
  
) as a;




-- ---------------------------------
-- Remplissage : FacadePCRS
-- ---------------------------------

-- pieces à decouper = FDP_L_BATI
-- destination = FacadePCRS

--DROP SEQUENCE if exists a_pcrs."ObjetVecteurPCRS_idObjet_seq" cascade;
--CREATE SEQUENCE a_pcrs."ObjetVecteurPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

--DROP TABLE if exists a_pcrs."FacadePCRS" cascade;
DROP TABLE if exists a_pcrs."FacadePCRS" cascade;
CREATE TABLE a_pcrs."FacadePCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_pcrs."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  CONSTRAINT "FacadePCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_pcrs."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);


--DROP VIEW if exists a_pcrs."FacadePCRS" cascade;
--CREATE VIEW a_pcrs."FacadePCRS" as
INSERT INTO a_pcrs."FacadePCRS"
select
  a."idObjet1" || '-' ||
  (st_dump(geometrie)).path::text || '-' ||
  nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass) as "idObjet",
  a."precisionAltimetrique",
  a."precisionPlanimetrique",
  a."dateLeve",
  a."producteur",
  a."qualiteCategorisation",
  a."thematique",
  --st_asewkt((st_dump(geometrie)).geom) as "geometrie",
  (st_dump(geometrie)).geom as "geometrie"
from
(
select
  a_pcrs."EmpriseEchangePCRS".complement || '-' ||
  a_rtge."tmp_ligne"."entityhandle" || '-' ||
  a_rtge."tmp_ligne"."gid" as "idObjet1",
  '040'::varchar(3) as "precisionAltimetrique",
  '010'::varchar(3) as "precisionPlanimetrique",
  date '2017-09-04' as "dateLeve",
  'CDA'::varchar as "producteur",
  '01'::varchar(2) as "qualiteCategorisation",
  '02'::varchar(2) as thematique,
  --st_asewkt(st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)) as geometrie_text,
  st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie) as geometrie
from a_rtge."tmp_ligne",
     a_pcrs."EmpriseEchangePCRS"
where st_setsrid(a_rtge."tmp_ligne".shape,3946) && a_pcrs."EmpriseEchangePCRS".geometrie
  and st_intersects(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)
  and (a_rtge."tmp_ligne".layer in ('FDP_L_BATI'--,
  --                                  'FDP_L_MURPLEIN',
                                    ))
  
) as a;




-- ---------------------------------
-- Remplissage : SeuilPCRS
-- ---------------------------------

-- pieces à decouper = FDP_L_MURPLEIN
-- destination = SeuilPCRS

--DROP SEQUENCE if exists a_pcrs."ObjetVecteurPCRS_idObjet_seq" cascade;
--CREATE SEQUENCE a_pcrs."ObjetVecteurPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;

--truncate a_pcrs."SeuilPCRS";

DROP TABLE if exists a_pcrs."SeuilPCRS" cascade;
CREATE TABLE a_pcrs."SeuilPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_pcrs."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "symbole" character varying REFERENCES a_pcrs."HabillageSymbolePCRS" ("idHabillage"),
  CONSTRAINT "SeuilPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_pcrs."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);

--DROP VIEW if exists a_pcrs."SeuilPCRS" cascade;
--CREATE VIEW a_pcrs."SeuilPCRS" as
INSERT INTO a_pcrs."SeuilPCRS"
select
  a_pcrs."EmpriseEchangePCRS".complement || '-' ||
  a_rtge."tmp_ligne"."entityhandle" || '-' ||
  a_rtge."tmp_ligne"."gid" || '-' ||
  nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass) as "idObjet",
  '005'::varchar(3) as "precisionAltimetrique",
  '005'::varchar(3) as "precisionPlanimetrique",
  date '2017-09-04' as "dateLeve",
  'CDA'::varchar as "producteur",
  '01'::varchar(2) as "qualiteCategorisation",
  '02'::varchar(2) as thematique,
  --st_asewkt(st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)) as geometrie,
  st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie) as geometrie
from a_rtge."tmp_ligne",
     a_pcrs."EmpriseEchangePCRS"
where st_setsrid(a_rtge."tmp_ligne".shape,3946) && a_pcrs."EmpriseEchangePCRS".geometrie
  and st_intersects(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)
  and (a_rtge."tmp_ligne".layer = 'FDP_L_MURPLEIN')
  and st_length(st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)) < 0.21
  ;






-- ---------------------------------
-- Remplissage : MurPCRS
-- ---------------------------------

-- pieces à decouper = FDP_L_MURPLEIN ; FDP_L_MURBAHUT
-- destination = MurPCRS


--DROP SEQUENCE if exists a_pcrs."ObjetVecteurPCRS_idObjet_seq" cascade;
--CREATE SEQUENCE a_pcrs."ObjetVecteurPCRS_idObjet_seq"
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;
truncate a_pcrs."MurPCRS";

DROP TABLE if exists a_pcrs."MurPCRS" cascade;
CREATE TABLE a_pcrs."MurPCRS"
(
  "idObjet" character varying UNIQUE NOT NULL DEFAULT nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass),
  "precisionAltimetrique" character varying(3) REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "precisionPlanimetrique" character varying(3) NOT NULL REFERENCES a_pcrs."CategoriePrecisionPCRS17Type" (code),
  "dateLeve" date,
  "producteur" character varying NOT NULL,
  "qualiteCategorisation" character varying(2) NOT NULL REFERENCES a_pcrs."QualiteCategorisationPCRSType" (code),
  "thematique" character varying(2) NOT NULL,
  --"geometrie" geometry(LINESTRING,3946) NOT NULL,
  "geometrie" geometry NOT NULL,
  "typeMur" character varying(2) REFERENCES a_pcrs."CategorieMurPCRSType" ("code"),
  CONSTRAINT "MurPCRS_pkey" PRIMARY KEY ("idObjet"),
  CONSTRAINT enforce_dims_geometrie CHECK (st_ndims("geometrie") = 2),
  CONSTRAINT enforce_geotype_geometrie CHECK (geometrytype("geometrie") = 'LINESTRING'::text OR "geometrie" IS NULL),
  CONSTRAINT enforce_srid_geometrie CHECK (st_srid("geometrie") = (3946))
)
INHERITS (a_pcrs."ObjetVecteurPCRS")
WITH (
  OIDS=FALSE
);

--DROP VIEW if exists a_pcrs."MurPCRS" cascade;
--CREATE VIEW a_pcrs."MurPCRS" as
INSERT INTO a_pcrs."MurPCRS"
select
  a."idObjet1" || '-' ||
  (st_dump(geometrie)).path::text || '-' ||
  nextval('a_pcrs."ObjetVecteurPCRS_idObjet_seq"'::regclass) as "idObjet",
  a."precisionAltimetrique",
  a."precisionPlanimetrique",
  a."dateLeve",
  a."producteur",
  a."qualiteCategorisation",
  a."thematique",
  --st_asewkt((st_dump(geometrie)).geom) as "geometrie",
  (st_dump(geometrie)).geom as "geometrie",
  a."typeMur"
from
(
select
  a_pcrs."EmpriseEchangePCRS".complement || '-' ||
  a_rtge."tmp_ligne"."entityhandle" || '-' ||
  a_rtge."tmp_ligne"."gid" as "idObjet1",
  '005'::varchar(3) as "precisionAltimetrique",
  '005'::varchar(3) as "precisionPlanimetrique",
  date '2017-09-04' as "dateLeve",
  'CDA'::varchar as "producteur",
  '01'::varchar(2) as "qualiteCategorisation",
  '05'::varchar(2) as thematique,
  --st_asewkt(st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)) as geometrie_text,
  st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie) as geometrie,
  CASE WHEN a_rtge."tmp_ligne".layer = 'FDP_L_MURPLEIN' THEN '01'::varchar(2)
       WHEN a_rtge."tmp_ligne".layer = 'FDP_L_MURBAHUT' THEN '03'::varchar(2)
       ELSE '01'::varchar(2)
  END as "typeMur"
from a_rtge."tmp_ligne",
     a_pcrs."EmpriseEchangePCRS"
where st_setsrid(a_rtge."tmp_ligne".shape,3946) && a_pcrs."EmpriseEchangePCRS".geometrie
  and st_intersects(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)
  and (a_rtge."tmp_ligne".layer in ('FDP_L_MURPLEIN',
                                    'FDP_L_MURBAHUT'--,
                                    ))
  
) as a;
