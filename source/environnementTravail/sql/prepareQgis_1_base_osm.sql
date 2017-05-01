
-- dans la base osm, on a deux schemas, apidb et osm2pgsql
-- Dans chacun de ces deux schemas, on a des tables
-- qui contiennnt les données de toute la région
--
-- On va donc créer des vues
-- qui vont correspondre à des extraits selon une emprise geographique

-- ---------------- --
-- schema apidb     --
-- ---------------- --

--
-- creation de vues specifiques à l'emprise de La Rochelle
--

drop view if exists "apidb".nodes_vlr;
create view "apidb".nodes_vlr as
select * from apidb.nodes
where st_transform(geom,3946) && ST_MakeEnvelope(1372000, 5223000, 1383500, 5230000, 3946)
limit 10
;
--select * from "apidb".nodes_vlr;

drop view if exists "apidb".ways_vlr;
create view "apidb".ways_vlr as
select * from apidb.ways
where st_transform(linestring,3946) && ST_MakeEnvelope(1372000, 5223000, 1383500, 5230000, 3946)
limit 10
;
--select * from "apidb".ways_vlr;


--
-- creation de vues specifiques à l'emprise de la CDA
--

drop view if exists "apidb".nodes_cda;
create view "apidb".nodes_cda as
select * from apidb.nodes
where st_transform(geom,3946) && ST_MakeEnvelope(1370500, 5206500, 1400500, 5240000, 3946)
limit 10
;
--select * from "apidb".nodes_cda;

drop view if exists "apidb".ways_cda;
create view "apidb".ways_cda as
select * from apidb.ways
where st_transform(linestring,3946) && ST_MakeEnvelope(1370500, 5206500, 1400500, 5240000, 3946)
limit 10
;
--select * from "apidb".ways_cda;




-- ---------------- --
-- schema osm2pgsql --
-- ---------------- --

--
-- creation de vues specifiques à l'emprise de La Rochelle
--

drop view if exists "osm2pgsql".planet_osm_point_vlr;
create view "osm2pgsql".planet_osm_point_vlr as
select * from osm2pgsql.planet_osm_point
where st_transform(way,3946) && ST_MakeEnvelope(1372000, 5223000, 1383500, 5230000, 3946)
limit 10
;
--select * from "osm2pgsql".planet_osm_point_vlr;

drop view if exists "osm2pgsql".planet_osm_line_vlr;
create view "osm2pgsql".planet_osm_line_vlr as
select * from osm2pgsql.planet_osm_line
where st_transform(way,3946) && ST_MakeEnvelope(1372000, 5223000, 1383500, 5230000, 3946)
limit 10
;
--select * from "osm2pgsql".planet_osm_line_vlr;

drop view if exists "osm2pgsql".planet_osm_roads_vlr;
create view "osm2pgsql".planet_osm_roads_vlr as
select * from osm2pgsql.planet_osm_roads
where st_transform(way,3946) && ST_MakeEnvelope(1372000, 5223000, 1383500, 5230000, 3946)
limit 10
;
--select * from "osm2pgsql".planet_osm_roads_vlr;

drop view if exists "osm2pgsql".planet_osm_polygon_vlr;
create view "osm2pgsql".planet_osm_polygon_vlr as
select * from osm2pgsql.planet_osm_polygon
where st_transform(way,3946) && ST_MakeEnvelope(1372000, 5223000, 1383500, 5230000, 3946)
limit 10
;
--select * from "osm2pgsql".planet_osm_polygon_vlr;



--
-- creation de vues specifiques à l'emprise de la CDA
--

drop view if exists "osm2pgsql".planet_osm_point_cda;
create view "osm2pgsql".planet_osm_point_cda as
select * from osm2pgsql.planet_osm_point
where st_transform(way,3946) && ST_MakeEnvelope(1370500, 5206500, 1400500, 5240000, 3946)
limit 10
;
--select * from "osm2pgsql".planet_osm_point_cda;

drop view if exists "osm2pgsql".planet_osm_line_cda;
create view "osm2pgsql".planet_osm_line_cda as
select * from osm2pgsql.planet_osm_line
where st_transform(way,3946) && ST_MakeEnvelope(1370500, 5206500, 1400500, 5240000, 3946)
limit 10
;
--select * from "osm2pgsql".planet_osm_line_cda;

drop view if exists "osm2pgsql".planet_osm_roads_cda;
create view "osm2pgsql".planet_osm_roads_cda as
select * from osm2pgsql.planet_osm_roads
where st_transform(way,3946) && ST_MakeEnvelope(1370500, 5206500, 1400500, 5240000, 3946)
limit 10
;
--select * from "osm2pgsql".planet_osm_roads_cda;

drop view if exists "osm2pgsql".planet_osm_polygon_cda;
create view "osm2pgsql".planet_osm_polygon_cda as
select * from osm2pgsql.planet_osm_polygon
where st_transform(way,3946) && ST_MakeEnvelope(1370500, 5206500, 1400500, 5240000, 3946)
limit 10
;
--select * from "osm2pgsql".planet_osm_polygon_cda;
