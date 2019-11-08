-- ---------------------------------
-- Script pour la creation de tables
-- adaptées au modèle de données
-- de la voirie
-- Version 0.1 2019-08-23
-- ---------------------------------

-- ---------------------------------
-- DROP
-- ---------------------------------

-- Général
DROP TABLE if exists a_stardt."numvoie" cascade;

-- ---------------------------------
-- Creation des tables "liste de valeurs / énumérations"
-- ---------------------------------


-- ---------------------------------
-- Classe : numvoie
-- ---------------------------------

-- Table: NatureReseauValue
--DROP TABLE if exists a_stardt."numvoie" cascade;
CREATE TABLE voirie_administratif."numvoie"
(
  id integer NOT NULL DEFAULT nextval('numvoie_id_seq1'::regclass), -- Identifiant
  id_vo_adresse character varying,
  id_cleabs character varying,
  code_demande character varying, -- code_demande
  numvoie character varying,
  numvoie_num numeric,
  numvoie_complement character varying,
  nomvoie character varying,
  batiment character varying,
  angle numeric, -- Angle Orientation du texte
  shape geometry, -- Geometrie
  "position" character varying NOT NULL DEFAULT 'entrée'::character varying, -- type d'adresse
  CONSTRAINT id_numvoie_pk PRIMARY KEY (id),
  CONSTRAINT enforce_geotype_geom CHECK (geometrytype(shape) = 'POINT'::text OR shape IS NULL),
  CONSTRAINT enforce_srid_geom CHECK (st_srid(shape) = 3946),
  CONSTRAINT numvoie_position_check CHECK ("position"::text = ANY (ARRAY['délivrance postale'::character varying, 'entrée'::character varying, 'bâtiment'::character varying, 'cage d''escalier'::character varying, 'logement'::character varying, 'parcelle'::character varying, 'segment'::character varying, 'service technique'::character varying]::text[]))
)
WITH (
  OIDS=FALSE
);

ALTER TABLE voirie_administratif."numvoie"
  OWNER TO fred;

COMMENT ON TABLE voirie_administratif."numvoie"
  IS 'Numéro correspondant à l''adresse postale de la parcelle.';

COMMENT ON COLUMN voirie_administratif.numvoie.id IS 'Identifiant';
COMMENT ON COLUMN voirie_administratif.numvoie.code_demande IS 'code_demande';
COMMENT ON COLUMN voirie_administratif.numvoie.angle IS 'Angle Orientation du texte';
COMMENT ON COLUMN voirie_administratif.numvoie.shape IS 'Geometrie';
COMMENT ON COLUMN voirie_administratif.numvoie."position" IS 'type d''adresse';
