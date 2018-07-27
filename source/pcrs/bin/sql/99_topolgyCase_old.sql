-- https://strk.kbt.io/projects/postgis/Paris2011_TopologyWithPostGIS_2_0.pdf


SET search_path TO topology, cases, 'caseT', public;


SELECT topology.DropTopology('caseT');

SELECT CreateTopology('caseT', 3946, 0.01);

SELECT TopologySummary('caseT');

-- Insertion des primitives - Ajout des 4 noeuds
-- ---------------------------------------------

SELECT ST_AddIsoNode(
  'caseT', 0,
  ST_GeomFromText('POINT(1379280 5225600)', 3946)
);

SELECT ST_AddIsoNode(
  'caseT', 0,
  ST_GeomFromText('POINT(1379280 5225700)', 3946)
);

SELECT ST_AddIsoNode(
  'caseT', 0,
  ST_GeomFromText('POINT(1379420 5225700)', 3946)
);

SELECT ST_AddIsoNode(
  'caseT', 0,
  ST_GeomFromText('POINT(1379420 5225600)', 3946)
);


-- Insertion des primitives - Ajout des 4 arcs
-- ---------------------------------------------

SELECT AddEdge(
 'caseT',
 ST_GeomFromText(
 'LINESTRING(1379280 5225600,
  1379280 5225700)', 3946)
);

SELECT AddEdge(
 'caseT',
 ST_GeomFromText(
 'LINESTRING(1379280 5225700,
  1379420 5225700)', 3946)
);

SELECT AddEdge(
 'caseT',
 ST_GeomFromText(
 'LINESTRING(1379420 5225700,
  1379420 5225600)', 3946)
);

SELECT AddEdge(
 'caseT',
 ST_GeomFromText(
 'LINESTRING(1379420 5225600,
  1379280 5225600)', 3946)
);

-- Insertion des primitives - Ajout de la face
-- ---------------------------------------------

SELECT AddFace(
 'caseT',
  st_geomfromtext('POLYGON((1379280 5225600, 1379280 5225700, 1379420 5225700, 1379420 5225600, 1379280 5225600))', 3946)
);

-- TopoGeometry
CREATE TABLE "caseT"."caseT" (
  id SERIAL PRIMARY KEY);
