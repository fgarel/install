
-- Comment faire pour que les cases (EmpriseEcahngePCRS) soient topologiques ?
-- Convert simple PostGIS polygon layer to polygon topogeometry


-- https://gis.stackexchange.com/questions/258874/convert-simple-postgis-polygon-layer-to-polygon-topogeometry

-- https://goutergeo.hypotheses.org/173

-- https://strk.kbt.io/blog/2012/04/13/simplifying-a-map-layer-using-postgis-topology/


SET search_path TO topology, cases, 'caseTopology', public;

-- les differents schemas que nous allons rencontrer
-- cases        :
--   - caseT    : données 
-- caseTopology :
--   - caseT
-- topology     :



-- 1- Create topology schema
-- -------------------------

-- select topology.createtopology('schema',srid,tolerance);

--SELECT topology.DropTopology('caseTopology');

SELECT topology.CreateTopology('caseTopology', 3946, 0.01);

SELECT topology.TopologySummary('caseTopology');



-- 2-Create table structure identical the one that will be converted
-- -----------------------------------------------------------------

-- create table schema.table2 
-- (like schema.table1 including all);

-- La table cases.caseQ contiendra les données

-- SELECT topology.DropTopoGeometryColumn(
--   'caseTopology', -- nom de la topologie
--   'cases',        -- schema
--   'caseM',        -- table
--   'topo',         -- nom de la colonne 
--   'POLYGON');
-- 
-- SELECT topology.DropTopoGeometryColumn(
--   'caseTopology', -- nom de la topologie
--   'cases',        -- schema
--   'caseQ',        -- table
--   'topo',         -- nom de la colonne 
--   'POLYGON');
-- 
-- SELECT topology.DropTopoGeometryColumn(
--   'caseTopology', -- nom de la topologie
--   'cases',        -- schema
--   'caseT',        -- table
--   'topo',         -- nom de la colonne 
--   'POLYGON');

DROP TABLE if exists "cases"."caseT" cascade;

DROP TABLE if exists "cases"."caseM" cascade;
CREATE TABLE "cases"."caseM" (
  id SERIAL PRIMARY KEY,
  "idEmpriseEchange" character varying NOT NULL DEFAULT nextval('init."EmpriseEchangePCRS_idEmpriseEchange_seq"'::regclass), -- Identifiant unique dans le jeu de données des emprises d'échange du PCRS....
  complement character varying, -- Information complémentaire liée au type d'emprise de publication du PCRS,...
  "datePublication" date NOT NULL, -- Date de mise à disposition de l'emprise du PCRS
  gestionnaire character varying NOT NULL, -- Nom de la collectivité gestionnaire du PCRS
  type character varying--, -- Type d'emprise du PCRS...
--  geometrie geometry NOT NULL -- Géométrie représentée par un ensemble de surfaces.
);


DROP TABLE if exists "cases"."caseQ" cascade;
CREATE TABLE "cases"."caseQ" (
  id SERIAL PRIMARY KEY,
  "idEmpriseEchange" character varying NOT NULL DEFAULT nextval('init."EmpriseEchangePCRS_idEmpriseEchange_seq"'::regclass), -- Identifiant unique dans le jeu de données des emprises d'échange du PCRS....
  complement character varying, -- Information complémentaire liée au type d'emprise de publication du PCRS,...
  "datePublication" date NOT NULL, -- Date de mise à disposition de l'emprise du PCRS
  gestionnaire character varying NOT NULL, -- Nom de la collectivité gestionnaire du PCRS
  type character varying--, -- Type d'emprise du PCRS...
--  geometrie geometry NOT NULL -- Géométrie représentée par un ensemble de surfaces.
);


-- 3-Add topogeometry column to the table
-- --------------------------------------

--select
--topology.addtopogeometrycolumn('schema', 'yourtopology', 'table2', 'topo', 'polygon');

SELECT topology.AddTopoGeometryColumn(
  'caseTopology', -- nom de la topologie
  'cases',        -- schema
  'caseQ',        -- table
  'topo',         -- nom de la colonne 
  'POLYGON');

SELECT topology.AddTopoGeometryColumn(
  'caseTopology', -- nom de la topologie
  'cases',        -- schema
  'caseM',        -- table
  'topo',         -- nom de la colonne 
  'POLYGON');


-- 4-Check the topology info
-- -------------------------

-- select topology_id,layer_id,schema_name as sn,feature_column as fc
-- from topology.layer;

-- select * from topology.topologysummary('yourtopology');

select topology_id, layer_id, schema_name as sn, feature_column as fc
from topology.layer;

select * from topology.TopologySummary('caseTopology');


-- 5-If everything is set up, proceed to the insertion of the data
-- ---------------------------------------------------------------

--insert into schema.table2(attribute1,topo)
--select attribute1,topology.totopogeom(geom,'yourtopology',1)
--from schema.table1;

-- insertion d'une nouvel objet
--INSERT INTO "cases"."caseT"(topo)
--SELECT topology.ToTopoGeom(
--  ST_GeomFromText('POLYGON((1379280 5225600, 1379280 5225700, 1379420 5225700, 1379420 5225600, 1379280 5225600))', 3946),
--  'caseTopology',
--  1
--  );


INSERT INTO "cases"."caseQ"(
  "complement",
  "datePublication",
  "gestionnaire",
  "type",
  "topo")
SELECT 
  'CDA-46-00197-01045-21-A-01',
  date '2018-07-25',
  '05',
  '03',
  topology.ToTopoGeom(
    ST_GeomFromText('POLYGON((1379000 5225900, 1379000 5226000, 1379140 5226000, 1379140 5225900, 1379000 5225900))', 3946),
    'caseTopology',
    1
    );

INSERT INTO "cases"."caseQ"(
  "complement",
  "datePublication",
  "gestionnaire",
  "type",
  "topo")
SELECT 
  'CDA-46-00197-01045-21-A-02',
  date '2018-07-25',
  '05',
  '03',
  topology.ToTopoGeom(
    ST_GeomFromText('POLYGON((1379140 5225900, 1379140 5226000, 1379280 5226000, 1379280 5225900, 1379140 5225900))', 3946),
    'caseTopology',
    1
    );

INSERT INTO "cases"."caseQ"(
  "complement",
  "datePublication",
  "gestionnaire",
  "type",
  "topo")
SELECT 
  'CDA-46-00197-01045-21-A-03',
  date '2018-07-25',
  '05',
  '03',
  topology.ToTopoGeom(
    ST_GeomFromText('POLYGON((1379280 5225900, 1379280 5226000, 1379420 5226000, 1379420 5225900, 1379280 5225900))', 3946),
    'caseTopology',
    1
    );

INSERT INTO "cases"."caseQ"(
  "complement",
  "datePublication",
  "gestionnaire",
  "type",
  "topo")
SELECT 
  'CDA-46-00197-01045-21-A-04',
  date '2018-07-25',
  '05',
  '03',
  topology.ToTopoGeom(
    ST_GeomFromText('POLYGON((1379420 5225900, 1379420 5226000, 1379560 5226000, 1379560 5225900, 1379420 5225900))', 3946),
    'caseTopology',
    1
    );

INSERT INTO "cases"."caseQ"(
  "complement",
  "datePublication",
  "gestionnaire",
  "type",
  "topo")
SELECT 
  'CDA-46-00197-01045-21-A-05',
  date '2018-07-25',
  '05',
  '03',
  topology.ToTopoGeom(
    ST_GeomFromText('POLYGON((1379560 5225900, 1379560 5226000, 1379700 5226000, 1379700 5225900, 1379560 5225900))', 3946),
    'caseTopology',
    1
    );

INSERT INTO "cases"."caseQ"(
  "complement",
  "datePublication",
  "gestionnaire",
  "type",
  "topo")
SELECT 
  'CDA-46-00197-01045-21-A-06',
  date '2018-07-25',
  '05',
  '03',
  topology.ToTopoGeom(
    ST_GeomFromText('POLYGON((1379000 5225800, 1379000 5225900, 1379140 5225900, 1379140 5225800, 1379000 5225800))', 3946),
    'caseTopology',
    1
    );

INSERT INTO "cases"."caseQ"(
  "complement",
  "datePublication",
  "gestionnaire",
  "type",
  "topo")
SELECT 
  'CDA-46-00197-01045-21-A-07',
  date '2018-07-25',
  '05',
  '03',
  topology.ToTopoGeom(
    ST_GeomFromText('POLYGON((1379140 5225800, 1379140 5225900, 1379280 5225900, 1379280 5225800, 1379140 5225800))', 3946),
    'caseTopology',
    1
    );

INSERT INTO "cases"."caseQ"(
  "complement",
  "datePublication",
  "gestionnaire",
  "type",
  "topo")
SELECT 
  'CDA-46-00197-01045-21-A-08',
  date '2018-07-25',
  '05',
  '03',
  topology.ToTopoGeom(
    ST_GeomFromText('POLYGON((1379280 5225800, 1379280 5225900, 1379420 5225900, 1379420 5225800, 1379280 5225800))', 3946),
    'caseTopology',
    1
    );

INSERT INTO "cases"."caseQ"(
  "complement",
  "datePublication",
  "gestionnaire",
  "type",
  "topo")
SELECT 
  'CDA-46-00197-01045-21-A-09',
  date '2018-07-25',
  '05',
  '03',
  topology.ToTopoGeom(
    ST_GeomFromText('POLYGON((1379420 5225800, 1379420 5225900, 1379560 5225900, 1379560 5225800, 1379420 5225800))', 3946),
    'caseTopology',
    1
    );

INSERT INTO "cases"."caseQ"(
  "complement",
  "datePublication",
  "gestionnaire",
  "type",
  "topo")
SELECT 
  'CDA-46-00197-01045-21-A-10',
  date '2018-07-25',
  '05',
  '03',
  topology.ToTopoGeom(
    ST_GeomFromText('POLYGON((1379560 5225800, 1379560 5225900, 1379700 5225900, 1379700 5225800, 1379560 5225800))', 3946),
    'caseTopology',
    1
    );

INSERT INTO "cases"."caseQ"(
  "complement",
  "datePublication",
  "gestionnaire",
  "type",
  "topo")
SELECT 
  'CDA-46-00197-01045-21-A-11',
  date '2018-07-25',
  '05',
  '03',
  topology.ToTopoGeom(
    ST_GeomFromText('POLYGON((1379000 5225700, 1379000 5225800, 1379140 5225800, 1379140 5225700, 1379000 5225700))', 3946),
    'caseTopology',
    1
    );

INSERT INTO "cases"."caseQ"(
  "complement",
  "datePublication",
  "gestionnaire",
  "type",
  "topo")
SELECT 
  'CDA-46-00197-01045-21-A-12',
  date '2018-07-25',
  '05',
  '03',
  topology.ToTopoGeom(
    ST_GeomFromText('POLYGON((1379140 5225700, 1379140 5225800, 1379280 5225800, 1379280 5225700, 1379140 5225700))', 3946),
    'caseTopology',
    1
    );

INSERT INTO "cases"."caseQ"(
  "complement",
  "datePublication",
  "gestionnaire",
  "type",
  "topo")
SELECT 
  'CDA-46-00197-01045-21-A-13',
  date '2018-07-25',
  '05',
  '03',
  topology.ToTopoGeom(
    ST_GeomFromText('POLYGON((1379280 5225700, 1379280 5225800, 1379420 5225800, 1379420 5225700, 1379280 5225700))', 3946),
    'caseTopology',
    1
    );

INSERT INTO "cases"."caseQ"(
  "complement",
  "datePublication",
  "gestionnaire",
  "type",
  "topo")
SELECT 
  'CDA-46-00197-01045-21-A-14',
  date '2018-07-25',
  '05',
  '03',
  topology.ToTopoGeom(
    ST_GeomFromText('POLYGON((1379420 5225700, 1379420 5225800, 1379560 5225800, 1379560 5225700, 1379420 5225700))', 3946),
    'caseTopology',
    1
    );

INSERT INTO "cases"."caseQ"(
  "complement",
  "datePublication",
  "gestionnaire",
  "type",
  "topo")
SELECT 
  'CDA-46-00197-01045-21-A-15',
  date '2018-07-25',
  '05',
  '03',
  topology.ToTopoGeom(
    ST_GeomFromText('POLYGON((1379560 5225700, 1379560 5225800, 1379700 5225800, 1379700 5225700, 1379560 5225700))', 3946),
    'caseTopology',
    1
    );

INSERT INTO "cases"."caseQ"(
  "complement",
  "datePublication",
  "gestionnaire",
  "type",
  "topo")
SELECT 
  'CDA-46-00197-01045-21-A-16',
  date '2018-07-25',
  '05',
  '03',
  topology.ToTopoGeom(
    ST_GeomFromText('POLYGON((1379000 5225600, 1379000 5225700, 1379140 5225700, 1379140 5225600, 1379000 5225600))', 3946),
    'caseTopology',
    1
    );

INSERT INTO "cases"."caseQ"(
  "complement",
  "datePublication",
  "gestionnaire",
  "type",
  "topo")
SELECT 
  'CDA-46-00197-01045-21-A-17',
  date '2018-07-25',
  '05',
  '03',
  topology.ToTopoGeom(
    ST_GeomFromText('POLYGON((1379140 5225600, 1379140 5225700, 1379280 5225700, 1379280 5225600, 1379140 5225600))', 3946),
    'caseTopology',
    1
    );

INSERT INTO "cases"."caseQ"(
  "complement",
  "datePublication",
  "gestionnaire",
  "type",
  "topo")
SELECT 
  'CDA-46-00197-01045-21-A-18',
  date '2018-07-25',
  '05',
  '03',
  topology.ToTopoGeom(
    ST_GeomFromText('POLYGON((1379280 5225600, 1379280 5225700, 1379420 5225700, 1379420 5225600, 1379280 5225600))', 3946),
    'caseTopology',
    1
    );

INSERT INTO "cases"."caseQ"(
  "complement",
  "datePublication",
  "gestionnaire",
  "type",
  "topo")
SELECT 
  'CDA-46-00197-01045-21-A-19',
  date '2018-07-25',
  '05',
  '03',
  topology.ToTopoGeom(
    ST_GeomFromText('POLYGON((1379420 5225600, 1379420 5225700, 1379560 5225700, 1379560 5225600, 1379420 5225600))', 3946),
    'caseTopology',
    1
    );

INSERT INTO "cases"."caseQ"(
  "complement",
  "datePublication",
  "gestionnaire",
  "type",
  "topo")
SELECT 
  'CDA-46-00197-01045-21-A-20',
  date '2018-07-25',
  '05',
  '03',
  topology.ToTopoGeom(
    ST_GeomFromText('POLYGON((1379560 5225600, 1379560 5225700, 1379700 5225700, 1379700 5225600, 1379560 5225600))', 3946),
    'caseTopology',
    1
    );

INSERT INTO "cases"."caseQ"(
  "complement",
  "datePublication",
  "gestionnaire",
  "type",
  "topo")
SELECT 
  'CDA-46-00197-01045-21-A-21',
  date '2018-07-25',
  '05',
  '03',
  topology.ToTopoGeom(
    ST_GeomFromText('POLYGON((1379000 5225500, 1379000 5225600, 1379140 5225600, 1379140 5225500, 1379000 5225500))', 3946),
    'caseTopology',
    1
    );

INSERT INTO "cases"."caseQ"(
  "complement",
  "datePublication",
  "gestionnaire",
  "type",
  "topo")
SELECT 
  'CDA-46-00197-01045-21-A-22',
  date '2018-07-25',
  '05',
  '03',
  topology.ToTopoGeom(
    ST_GeomFromText('POLYGON((1379140 5225500, 1379140 5225600, 1379280 5225600, 1379280 5225500, 1379140 5225500))', 3946),
    'caseTopology',
    1
    );



INSERT INTO "cases"."caseQ"(
  "complement",
  "datePublication",
  "gestionnaire",
  "type",
  "topo")
SELECT 
  'CDA-46-00197-01045-21-A-23',
  date '2018-07-25',
  '05',
  '03',
  topology.ToTopoGeom(
    ST_GeomFromText('POLYGON((1379280 5225500, 1379280 5225600, 1379420 5225600, 1379420 5225500, 1379280 5225500))', 3946),
    'caseTopology',
    1
    );

INSERT INTO "cases"."caseQ"(
  "complement",
  "datePublication",
  "gestionnaire",
  "type",
  "topo")
SELECT 
  'CDA-46-00197-01045-21-A-24',
  date '2018-07-25',
  '05',
  '03',
  topology.ToTopoGeom(
    ST_GeomFromText('POLYGON((1379420 5225500, 1379420 5225600, 1379560 5225600, 1379560 5225500, 1379420 5225500))', 3946),
    'caseTopology',
    1
    );

INSERT INTO "cases"."caseQ"(
  "complement",
  "datePublication",
  "gestionnaire",
  "type",
  "topo")
SELECT 
  'CDA-46-00197-01045-21-A-25',
  date '2018-07-25',
  '05',
  '03',
  topology.ToTopoGeom(
    ST_GeomFromText('POLYGON((1379420 5225500, 1379420 5225600, 1379560 5225600, 1379560 5225500, 1379420 5225500))', 3946),
    'caseTopology',
    1
    );


-- caseM
INSERT INTO "cases"."caseM"(
  "complement",
  "datePublication",
  "gestionnaire",
  "type",
  "topo")
SELECT 
  'CDA-46-00197-01045-21-A',
  date '2018-07-25',
  '05',
  '03',
  topology.ToTopoGeom(
    ST_GeomFromText('POLYGON((1379000 5225500, 1379000 5226000, 1379700 5226000, 1379700 5225500, 1379000 5225500))', 3946),
    'caseTopology',
    2
    );





--select attribute1,topology.totopogeom(geom,'yourtopology',1)
--from schema.table1;
select * from topology.TopologySummary('caseTopology');