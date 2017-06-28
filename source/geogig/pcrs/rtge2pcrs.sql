
-- --------------------------------------
-- CREATE
-- --------------------------------------

-- --------------------------------------
-- Table: tmp_ligne

-- DROP TABLE tmp_ligne;

CREATE TABLE tmp_ligne
(
  gid serial NOT NULL,
  gid_leve_topo integer,
  layer text,
  subclasses text,
  extendedentity text,
  linetype text,
  entityhandle text,
  text text,
  color text,
  thickness text,
  representation character varying(50), -- Représentation thématique
  shape geometry,
  CONSTRAINT tmp_ligne_pkey PRIMARY KEY (gid),
  CONSTRAINT enforce_dims_shape CHECK (st_ndims(shape) = 2),
  CONSTRAINT enforce_geotype_shape CHECK (geometrytype(shape) = 'LINESTRING'::text OR shape IS NULL),
  CONSTRAINT enforce_srid_shape CHECK (st_srid(shape) = (-1))
)
WITH (
  OIDS=FALSE
);

-- Index: tmp_ligne_shape

-- DROP INDEX tmp_ligne_shape;

CREATE INDEX tmp_ligne_shape
  ON tmp_ligne
  USING gist
  (shape);

-- --------------------------------------
-- Table: tmp_point

-- DROP TABLE  tmp_point;

CREATE TABLE  tmp_point
(
  gid serial NOT NULL,
  gid_leve_topo integer,
  layer text,
  entityhandle text,
  block_name text,
  x_scale_factor numeric,
  y_scale_factor numeric,
  angle numeric,
  attributs text,
  representation character varying(100), -- Représentation thématique
  shape geometry,
  CONSTRAINT tmp_point_pkey PRIMARY KEY (gid),
  CONSTRAINT enforce_dims_shape CHECK (st_ndims(shape) = 2),
  CONSTRAINT enforce_geotype_shape CHECK (geometrytype(shape) = 'POINT'::text OR shape IS NULL),
  CONSTRAINT enforce_srid_shape CHECK (st_srid(shape) = (-1))
)
WITH (
  OIDS=FALSE
);

-- Index: tmp_point_shape

-- DROP INDEX tmp_point_shape;

CREATE INDEX tmp_point_shape
  ON tmp_point
  USING gist
  (shape);



  -- --------------------------------------
  -- Table: tmp_point_leve

  -- DROP TABLE tmp_point_leve;

  CREATE TABLE tmp_point_leve
  (
    gid serial NOT NULL,
    gid_leve_topo integer,
    layer text,
    entityhandle text,
    block_name text,
    x_scale_factor numeric,
    y_scale_factor numeric,
    angle numeric,
    attributs text,
    matricule text,
    altitude text,
    code text,
    representation character varying(50), -- Représentation thématique
    shape geometry,
    CONSTRAINT tmp_point_leve_pkey PRIMARY KEY (gid),
    CONSTRAINT enforce_dims_shape CHECK (st_ndims(shape) = 2),
    CONSTRAINT enforce_geotype_shape CHECK (geometrytype(shape) = 'POINT'::text OR shape IS NULL),
    CONSTRAINT enforce_srid_shape CHECK (st_srid(shape) = (-1))
  )
  WITH (
    OIDS=FALSE
  );

  -- Index: tmp_point_leve_shape

  -- DROP INDEX tmp_point_leve_shape;

  CREATE INDEX tmp_point_leve_shape
    ON tmp_point_leve
    USING gist
    (shape);



-- --------------------------------------
-- Table: tmp_surface

-- DROP TABLE tmp_surface;

CREATE TABLE tmp_surface
(
  gid serial NOT NULL,
  gid_leve_topo integer,
  layer text,
  subclasses text,
  extendedentity text,
  linetype text,
  entityhandle text,
  text text,
  color text,
  thickness text,
  representation character varying(50), -- Représentation thématique
  shape geometry,
  CONSTRAINT tmp_surface_pkey PRIMARY KEY (gid),
  CONSTRAINT enforce_dims_shape CHECK (st_ndims(shape) = 2),
  CONSTRAINT enforce_geotype_shape CHECK (geometrytype(shape) = 'POLYGON'::text OR shape IS NULL),
  CONSTRAINT enforce_srid_shape CHECK (st_srid(shape) = (-1))
)
WITH (
  OIDS=FALSE
);

-- Index: tmp_surface_shape

-- DROP INDEX tmp_surface_shape;

CREATE INDEX tmp_surface_shape
  ON tmp_surface
  USING gist
  (shape);

-- --------------------------------------
-- Table: tmp_texte

-- DROP TABLE tmp_texte;

CREATE TABLE tmp_texte
(
  gid serial NOT NULL,
  gid_leve_topo integer,
  layer text,
  subclasses text,
  extendedentity text,
  linetype text,
  entityhandle text,
  text text,
  angle numeric,
  taille numeric,
  style text,
  police text,
  shape geometry,
  representation character varying(50), -- Représentation thématique
  CONSTRAINT tmp_texte_pkey PRIMARY KEY (gid),
  CONSTRAINT enforce_dims_shape CHECK (st_ndims(shape) = 2),
  CONSTRAINT enforce_geotype_shape CHECK (geometrytype(shape) = 'POINT'::text OR shape IS NULL),
  CONSTRAINT enforce_srid_shape CHECK (st_srid(shape) = (-1))
)
WITH (
  OIDS=FALSE
);

-- Index: tmp_texte_shape

-- DROP INDEX tmp_texte_shape;

CREATE INDEX tmp_texte_shape
  ON tmp_texte
  USING gist
  (shape);


  -- --------------------------------------
  -- INSERT
  -- --------------------------------------

  -- --------------------------------------
