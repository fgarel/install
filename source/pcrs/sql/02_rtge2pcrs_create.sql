-- recuperation de tmp_ligne
create view "tmp_ligne" as
SELECT *
FROM dblink(
   'dbname=sig port=5432
   host=172.17.150.6 user=frederic.garel password=Mie8Asie',

   '-- selection objets tmp_ligne qui sont dans le schema a_rtge
    select distinct
	gid,
	gid_leve_topo,
	layer,
	subclasses,
	extendedentity,
	linetype,
	entityhandle,
	text,
	color,
	thickness,
	representation,
	shape
    from a_rtge.tmp_ligne;
    '
    )
    AS "tmp_ligne"(
	gid bigint,
	gid_leve_topo integer,
	layer text,
	subclasses text,
	extendedentity text,
	linetype text,
	entityhandle text,
	text text,
	color text,
	thickness text,
	representation character varying(50),
	shape geometry
      );



-- recuperation de tmp_point
create view "tmp_point" as
SELECT *
FROM dblink(
   'dbname=sig port=5432
   host=172.17.150.6 user=frederic.garel password=Mie8Asie',

   '-- selection objets tmp_point qui sont dans le schema a_rtge
    select distinct
	gid,
	gid_leve_topo,
	layer,
	entityhandle,
	block_name,
	x_scale_factor,
	y_scale_factor,
	angle,
	attributs,
	representation,
	shape
    from a_rtge.tmp_point;
    '
    )
    AS "tmp_point"(
	gid bigint,
	gid_leve_topo integer,
	layer text,
	entityhandle text,
	block_name text,
	x_scale_factor numeric,
	y_scale_factor numeric,
	angle numeric,
	attributs text,
	representation character varying(100),
	shape geometry
      );

-- recuperation de tmp_point_leve
create view "tmp_point_leve" as
SELECT *
FROM dblink(
   'dbname=sig port=5432
   host=172.17.150.6 user=frederic.garel password=Mie8Asie',

   '-- selection objets tmp_point_leve qui sont dans le schema a_rtge
    select distinct
	gid,
	gid_leve_topo,
	layer,
	entityhandle,
	block_name,
	x_scale_factor,
	y_scale_factor,
	angle,
	attributs,
	matricule,
	altitude,
	code,
	representation,
	shape
    from a_rtge.tmp_point_leve;
    '
    )
    AS "tmp_point_leve"(
	gid bigint,
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
	representation character varying(50),
	shape geometry
      );

-- recuperation de tmp_surface
create view "tmp_surface" as
SELECT *
FROM dblink(
   'dbname=sig port=5432
   host=172.17.150.6 user=frederic.garel password=Mie8Asie',

   '-- selection objets tmp_surface qui sont dans le schema a_rtge
    select distinct
	gid,
	gid_leve_topo,
	layer,
	subclasses,
	extendedentity,
	linetype,
	entityhandle,
	text,
	color,
	thickness,
	representation,
	shape
    from a_rtge.tmp_surface;
    '
    )
    AS "tmp_surface"(
	gid bigint,
	gid_leve_topo integer,
	layer text,
	subclasses text,
	extendedentity text,
	linetype text,
	entityhandle text,
	text text,
	color text,
	thickness text,
	representation character varying(50),
	shape geometry
      );


-- recuperation de tmp_texte
create view "tmp_texte" as
SELECT *
FROM dblink(
   'dbname=sig port=5432
   host=172.17.150.6 user=frederic.garel password=Mie8Asie',

   '-- selection objets tmp_texte qui sont dans le schema a_rtge
    select distinct
	gid,
	gid_leve_topo,
	layer,
	subclasses,
	extendedentity,
	linetype,
	entityhandle,
	text,
	angle,
	taille,
	style,
	police,
	shape,
	representation
    from a_rtge.tmp_texte;
    '
    )
    AS "tmp_texte"(
	gid bigint,
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
	representation character varying(50)
      );