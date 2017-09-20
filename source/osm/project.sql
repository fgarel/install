-- project.sql
--
-- fichier de requete dérivé du fichier ../openstreetmap-carto-vector-tiles/project.mml
--
-- ce fichier a pour but de demontrer que l'on peut interroger la base de données OSM
-- schema osm2pgsql
-- si ce fichier de requete fonctionne, alors l'utilistaire carto peut fonctionner
--
-- remplacement à faire dans le fichier
-- !pixel_width! = 35
-- !pixel_height! = 36
-- !scale_denominator! = 9.0


-- id: world
-- maxzoom: 9
-- file: data/simplified-land-polygons-complete-3857/simplified_land_polygons.shp


-- id: coast-poly
-- minzoom: 10
-- maxzoom: 22
-- file: data/land-polygons-split-3857/land_polygons.shp


-- id: builtup
-- minzoom: 8
-- maxzoom: 9
-- file: data/world_boundaries/builtup_area.shp


-- id: necountries
-- minzoom: 1
-- maxzoom: 3
-- file: data/ne_110m_admin_0_boundary_lines_land/ne_110m_admin_0_boundary_lines_land.shp


-- id: landcover-low-zoom
-- minzoom: 7
-- maxzoom: 9
        SELECT
            way, name, way_pixels,
            COALESCE(wetland, landuse, "natural") AS feature
          FROM (SELECT
              way, COALESCE(name, '') AS name,
              ('landuse_' || (CASE WHEN landuse IN ('forest', 'military') THEN landuse ELSE NULL END)) AS landuse,
              ('natural_' || (CASE WHEN "natural" IN ('wood', 'sand', 'scree', 'shingle', 'bare_rock') THEN "natural" ELSE NULL END)) AS "natural",
              ('wetland_' || (CASE WHEN "natural" IN ('wetland', 'mud') THEN (CASE WHEN "natural" IN ('mud') THEN "natural" ELSE wetland END) ELSE NULL END)) AS wetland,
              -- way_area/NULLIF(!pixel_width!::real*!pixel_height!::real,0) AS way_pixels
              way_area/NULLIF(35::real*36::real,0) AS way_pixels
            FROM planet_osm_polygon
            WHERE (landuse IN ('forest', 'military')
              OR "natural" IN ('wood', 'wetland', 'mud', 'sand', 'scree', 'shingle', 'bare_rock'))
              -- AND ( ( ( !scale_denominator! < 9.55462853564704 ) AND ( way_area > 0.01*!pixel_width!::real*!pixel_height!::real ) ) OR ( !scale_denominator! >= 9.55462853564704 ) )
              AND ( ( ( 9.0 < 9.55462853564704 ) AND ( way_area > 0.01*35::real*36::real ) ) OR ( 9.0 >= 9.55462853564704 ) )
              AND building IS NULL
            ORDER BY CASE WHEN layer~E'^-?\\d+$' AND length(layer)<10 THEN layer::integer ELSE 0 END, way_area DESC
          ) AS features;

-- id: landcover
-- minzoom: 10
-- maxzoom: 22
        SELECT
            way, name, religion, way_pixels,
            COALESCE(aeroway, amenity, wetland, power, landuse, leisure, military, "natural", tourism, highway, railway) AS feature
          FROM (SELECT
              way, COALESCE(name, '') AS name,
              ('aeroway_' || (CASE WHEN aeroway IN ('apron', 'aerodrome') THEN aeroway ELSE NULL END)) AS aeroway,
              ('amenity_' || (CASE WHEN amenity IN ('parking', 'bicycle_parking', 'motorcycle_parking', 'university', 'college', 'school',
                                                    'hospital', 'kindergarten', 'grave_yard', 'prison', 'place_of_worship', 'clinic')
                                                    THEN amenity ELSE NULL END)) AS amenity,
              ('landuse_' || (CASE WHEN landuse IN ('quarry', 'vineyard', 'orchard', 'cemetery', 'residential', 'garages', 'meadow', 'grass',
                                                    'allotments', 'forest', 'farmyard', 'farmland', 'greenhouse_horticulture',
                                                    'recreation_ground', 'village_green', 'retail', 'industrial', 'railway', 'commercial',
                                                    'brownfield', 'landfill', 'construction', 'plant_nursery') THEN landuse ELSE NULL END)) AS landuse,
              ('leisure_' || (CASE WHEN leisure IN ('swimming_pool', 'playground', 'park', 'recreation_ground', 'common', 'garden',
                                                    'golf_course', 'miniature_golf', 'picnic_table', 'fitness_centre', 'sports_centre', 'stadium', 'pitch',
                                                    'track', 'dog_park') THEN leisure ELSE NULL END)) AS leisure,
              ('military_' || (CASE WHEN military IN ('danger_area') THEN military ELSE NULL END)) AS military,
              ('natural_' || (CASE WHEN "natural" IN ('beach', 'shoal', 'heath', 'grassland', 'wood', 'sand', 'scree', 'shingle', 'bare_rock', 'scrub') THEN "natural" ELSE NULL END)) AS "natural",
              ('wetland_' || (CASE WHEN "natural" IN ('wetland', 'marsh', 'mud') THEN (CASE WHEN "natural" IN ('marsh', 'mud') THEN "natural" ELSE wetland END) ELSE NULL END)) AS wetland,
              ('power_' || (CASE WHEN power IN ('station', 'sub_station', 'substation', 'generator') THEN power ELSE NULL END)) AS power,
              ('tourism_' || (CASE WHEN tourism IN ('attraction', 'camp_site', 'caravan_site', 'picnic_site') THEN tourism ELSE NULL END)) AS tourism,
              ('highway_' || (CASE WHEN highway IN ('services', 'rest_area') THEN highway ELSE NULL END)) AS highway,
              ('railway_' || (CASE WHEN railway = 'station' THEN railway ELSE NULL END)) AS railway,
              CASE WHEN religion IN ('christian', 'jewish') THEN religion ELSE 'INT-generic'::text END AS religion,
              -- way_area/NULLIF(!pixel_width!::real*!pixel_height!::real,0) AS way_pixels
              way_area/NULLIF(35::real*36::real,0) AS way_pixels
            FROM planet_osm_polygon
            WHERE (landuse IS NOT NULL
              OR leisure IS NOT NULL
              OR aeroway IN ('apron', 'aerodrome')
              OR amenity IN ('parking', 'bicycle_parking', 'motorcycle_parking', 'university', 'college', 'school', 'hospital', 'kindergarten',
                             'grave_yard', 'place_of_worship', 'prison', 'clinic')
              OR military IN ('danger_area')
              OR "natural" IN ('beach', 'shoal', 'heath', 'mud', 'marsh', 'wetland', 'grassland', 'wood', 'sand', 'scree', 'shingle', 'bare_rock', 'scrub')
              OR power IN ('station', 'sub_station', 'substation', 'generator')
              OR tourism IN ('attraction', 'camp_site', 'caravan_site', 'picnic_site')
              OR highway IN ('services', 'rest_area')
              OR railway = 'station')
              -- AND ( ( ( !scale_denominator! < 9.55462853564704 ) AND ( way_area > 0.01*!pixel_width!::real*!pixel_height!::real ) ) OR ( !scale_denominator! >= 9.55462853564704 ) )
              AND ( ( ( 9.0 < 9.55462853564704 ) AND ( way_area > 0.01*35::real*36::real ) ) OR ( 9.0 >= 9.55462853564704 ) )
            ORDER BY CASE WHEN layer~E'^-?\\d+$' AND length(layer)<10 THEN layer::integer ELSE 0 END, way_area DESC
          ) AS landcover;


-- id: landcover-line
-- minzoom: 14
-- maxzoom: 22
        SELECT
            way
          FROM planet_osm_line
          WHERE man_made = 'cutline';


-- id: water-lines-casing
-- minzoom: 13
-- maxzoom: 22
        SELECT
            way, waterway, intermittent,
            CASE WHEN tunnel IN ('yes', 'culvert') THEN 'yes' ELSE 'no' END AS int_tunnel
          FROM planet_osm_line
          WHERE waterway IN ('stream', 'drain', 'ditch');


-- id: water-lines-low-zoom
-- minzoom: 8
-- maxzoom: 11
        SELECT
            way,
            waterway,
            intermittent
          FROM planet_osm_line
          WHERE waterway = 'river';


-- id: icesheet-poly
-- minzoom: 4
-- maxzoom: 22
-- file: data/antarctica-icesheet-polygons-3857/icesheet_polygons.shp


-- id: water-areas
-- minzoom: 4
-- maxzoom: 22
        SELECT
            way,
            "natural",
            waterway,
            landuse,
            name,
            -- way_area/NULLIF(!pixel_width!::real*!pixel_height!::real,0) AS way_pixels
            way_area/NULLIF(35::real*36::real,0) AS way_pixels
          FROM planet_osm_polygon
          WHERE
            (waterway IN ('dock', 'riverbank')
              OR landuse IN ('reservoir', 'basin')
              OR "natural" IN ('water', 'glacier'))
            AND building IS NULL
            -- AND ( ( ( !scale_denominator! < 9.55462853564704 ) AND ( way_area > 0.01*!pixel_width!::real*!pixel_height!::real ) ) OR ( !scale_denominator! >= 9.55462853564704 ) )
            AND ( ( ( 9.0 < 9.55462853564704 ) AND ( way_area > 0.01*35::real*36::real ) ) OR ( 9.0 >= 9.55462853564704 ) )
          ORDER BY z_order, way_area DESC;


-- id: landcover-area-symbols
-- minzoom: 10
-- maxzoom: 22
        SELECT
            way, surface,
            COALESCE(CASE WHEN landuse = 'forest' THEN 'wood' ELSE NULL END, "natural") AS "natural",
            CASE WHEN "natural" IN ('marsh', 'mud')
                THEN "natural"
                ELSE CASE WHEN ("natural" = 'wetland' AND wetland IS NULL)
                  THEN 'wetland'
                  ELSE CASE WHEN ("natural" = 'wetland')
                    THEN wetland
                    ELSE NULL
                    END
                END
              END AS int_wetland
          FROM planet_osm_polygon
          WHERE ("natural" IN ('marsh', 'mud', 'wetland', 'wood', 'beach', 'shoal', 'reef', 'scrub') OR landuse = 'forest')
            AND building IS NULL
            --AND ( ( ( !scale_denominator! < 9.55462853564704 ) AND ( way_area > 0.01*!pixel_width!::real*!pixel_height!::real ) ) OR ( !scale_denominator! >= 9.55462853564704 ) )
            AND ( ( ( 9.0 < 9.55462853564704 ) AND ( way_area > 0.01*35::real*36::real ) ) OR ( 9.0 >= 9.55462853564704 ) )
          ORDER BY z_order, way_area DESC;


-- id: icesheet-outlines
-- minzoom: 4
-- maxzoom: 22
-- file: data/antarctica-icesheet-outlines-3857/icesheet_outlines.shp


-- id: water-lines
-- minzoom: 12
-- maxzoom: 22
        SELECT
            way, waterway, name, intermittent,
            CASE WHEN tunnel IN ('yes', 'culvert') THEN 'yes' ELSE 'no' END AS int_tunnel,
            'no' AS bridge
          FROM planet_osm_line
          WHERE waterway IN ('river', 'canal', 'derelict_canal', 'stream', 'drain', 'ditch', 'wadi')
            AND (bridge IS NULL OR bridge NOT IN ('yes', 'aqueduct'))
          ORDER BY z_order;


-- id: water-barriers-line
-- minzoom: 13
-- maxzoom: 22
        SELECT
            way,
            waterway,
            name
          FROM planet_osm_line
          WHERE waterway IN ('dam', 'weir', 'lock_gate');


-- id: water-barriers-poly
-- minzoom: 13
-- maxzoom: 22
        SELECT
            way,
            waterway,
            name
          FROM planet_osm_polygon
          WHERE waterway IN ('dam', 'weir', 'lock_gate');


-- id: marinas-area
-- minzoom: 14
-- maxzoom: 22
        SELECT
            way
          FROM planet_osm_polygon
          WHERE leisure = 'marina';


-- id: piers-poly
-- minzoom: 12
-- maxzoom: 22
        SELECT
            way, man_made
          FROM planet_osm_polygon
          WHERE man_made IN ('pier', 'breakwater', 'groyne');


-- id: piers-line
-- minzoom: 12
-- maxzoom: 22
        SELECT
            way, man_made
          FROM planet_osm_line
          WHERE man_made IN ('pier', 'breakwater', 'groyne');


-- id: water-barriers-point
-- minzoom: 17
-- maxzoom: 22
        SELECT
            way, waterway
          FROM planet_osm_point
          WHERE waterway IN ('dam', 'weir', 'lock_gate');


-- id: bridge
-- minzoom: 12
-- maxzoom: 22
        SELECT
            way,
            --way_area/NULLIF(!pixel_width!::real*!pixel_height!::real,0) AS way_pixels,
            way_area/NULLIF(35::real*36::real,0) AS way_pixels,
            man_made,
            name
          FROM planet_osm_polygon
          WHERE man_made = 'bridge';


-- id: buildings
-- minzoom: 13
-- maxzoom: 22
        SELECT
            way,
            building
          FROM planet_osm_polygon
          WHERE building IS NOT NULL
            AND building != 'no'
            AND (aeroway IS NULL OR aeroway != 'terminal')
            AND (amenity IS NULL OR amenity != 'place_of_worship')
            AND building != 'train_station'
            --AND ( ( ( !scale_denominator! < 9.55462853564704 ) AND ( way_area > 0.01*!pixel_width!::real*!pixel_height!::real ) ) OR ( !scale_denominator! > 9.55462853564704 ) )
            AND ( ( ( 9.0 < 9.55462853564704 ) AND ( way_area > 0.01*35::real*36::real ) ) OR ( 9.0 > 9.55462853564704 ) )
          ORDER BY z_order, way_area DESC;


-- id: buildings-major
-- minzoom: 13
-- maxzoom: 22
        SELECT
            way,
            building,
            amenity,
            aeroway
          FROM planet_osm_polygon
          WHERE building IS NOT NULL
            AND building != 'no'
            AND (aeroway = 'terminal' OR amenity = 'place_of_worship' OR building = 'train_station')
            --AND ( ( ( !scale_denominator! < 9.55462853564704 ) AND ( way_area > 0.01*!pixel_width!::real*!pixel_height!::real ) ) OR ( !scale_denominator! > 9.55462853564704 ) )
            AND ( ( ( 9.0 < 9.55462853564704 ) AND ( way_area > 0.01*35::real*36::real ) ) OR ( 9.0 > 9.55462853564704 ) )
          ORDER BY z_order, way_area DESC;


-- id: tunnels
-- minzoom: 10
-- maxzoom: 22
        SELECT
            way,
            (CASE WHEN substr(feature, length(feature)-3, 4) = 'link' THEN substr(feature, 0, length(feature)-4) ELSE feature END) AS feature,
            horse,
            foot,
            bicycle,
            tracktype,
            int_surface,
            access,
            construction,
            service,
            link,
            layernotnull
          FROM ( -- subselect that contains both roads and rail/aero
            SELECT
                way,
                ('highway_' || highway) AS feature, --only motorway to tertiary links are accepted later on
                horse,
                foot,
                bicycle,
                tracktype,
                CASE WHEN surface IN ('unpaved', 'compacted', 'dirt', 'earth', 'fine_gravel', 'grass', 'grass_paver', 'gravel', 'ground',
                                      'mud', 'pebblestone', 'salt', 'sand', 'woodchips', 'clay') THEN 'unpaved'
                  WHEN surface IN ('paved', 'asphalt', 'cobblestone', 'cobblestone:flattened', 'sett', 'concrete', 'concrete:lanes',
                                      'concrete:plates', 'paving_stones', 'metal', 'wood') THEN 'paved'
                  ELSE NULL
                END AS int_surface,
                CASE WHEN access IN ('destination') THEN 'destination'::text
                  WHEN access IN ('no', 'private') THEN 'no'::text
                  ELSE NULL
                END AS access,
                construction,
                CASE
                  WHEN service IN ('parking_aisle', 'drive-through', 'driveway') THEN 'INT-minor'::text
                  ELSE 'INT-normal'::text
                END AS service,
                CASE
                  WHEN substr(highway, length(highway)-3, 4) = 'link' THEN 'yes'
                  ELSE 'no'
                END AS link,
                CASE WHEN layer~E'^-?\\d+$' AND length(layer)<10 THEN layer::integer ELSE 0 END AS layernotnull
              FROM planet_osm_line
              WHERE (tunnel = 'yes' OR tunnel = 'building_passage' OR covered = 'yes')
                AND highway IS NOT NULL -- end of road select
            UNION ALL
            SELECT
                way,
                COALESCE(
                  ('railway_' || (CASE WHEN railway = 'preserved' AND service IN ('spur', 'siding', 'yard') THEN 'INT-preserved-ssy'::text
                                       WHEN (railway = 'rail' AND service IN ('spur', 'siding', 'yard')) THEN 'INT-spur-siding-yard'
                                       WHEN (railway = 'tram' AND service IN ('spur', 'siding', 'yard')) THEN 'tram-service' ELSE railway END)),
                  ('aeroway_' || aeroway)
                ) AS feature,
                horse,
                foot,
                bicycle,
                tracktype,
                'null',
                CASE
                  WHEN access IN ('destination') THEN 'destination'::text
                  WHEN access IN ('no', 'private') THEN 'no'::text
                  ELSE NULL
                END AS access,
                construction,
                CASE WHEN service IN ('parking_aisle', 'drive-through', 'driveway') THEN 'INT-minor'::text ELSE 'INT-normal'::text END AS service,
                'no' AS link,
                CASE WHEN layer~E'^-?\\d+$' AND length(layer)<10 THEN layer::integer ELSE 0 END AS layernotnull
              FROM planet_osm_line
              WHERE (tunnel = 'yes' OR tunnel = 'building_passage' OR covered = 'yes')
                AND (railway IS NOT NULL OR aeroway IS NOT NULL) -- end of rail/aero select
            ) AS features
          JOIN (VALUES -- this join is also putting a condition on what is selected. features not matching it do not make it into the results.
              ('railway_rail', 440),
              ('railway_INT-preserved-ssy', 430),
              ('railway_INT-spur-siding-yard', 430),
              ('railway_subway', 420),
              ('railway_narrow_gauge', 420),
              ('railway_light_rail', 420),
              ('railway_preserved', 420),
              ('railway_funicular', 420),
              ('railway_monorail', 420),
              ('railway_miniature', 420),
              ('railway_turntable', 420),
              ('railway_tram', 410),
              ('railway_tram-service', 405),
              ('railway_disused', 400),
              ('railway_construction', 400),
              ('highway_motorway', 380),
              ('highway_trunk', 370),
              ('highway_primary', 360),
              ('highway_secondary', 350),
              ('highway_tertiary', 340),
              ('highway_residential', 330),
              ('highway_unclassified', 330),
              ('highway_road', 330),
              ('highway_living_street', 320),
              ('highway_pedestrian', 310),
              ('highway_raceway', 300),
              ('highway_motorway_link', 240),
              ('highway_trunk_link', 230),
              ('highway_primary_link', 220),
              ('highway_secondary_link', 210),
              ('highway_tertiary_link', 200),
              ('highway_service', 150),
              ('highway_track', 110),
              ('highway_path', 100),
              ('highway_footway', 100),
              ('highway_bridleway', 100),
              ('highway_cycleway', 100),
              ('highway_steps', 100),
              ('highway_platform', 90),
              ('railway_platform', 90),
              ('aeroway_runway', 60),
              ('aeroway_taxiway', 50),
              ('highway_construction', 10)
            ) AS ordertable (feature, prio)
            USING (feature)
          ORDER BY
            layernotnull,
            prio,
            CASE WHEN access IN ('no', 'private') THEN 0 WHEN access IN ('destination') THEN 1 ELSE 2 END,
            CASE WHEN int_surface IN ('unpaved') THEN 0 ELSE 2 END;


-- id: landuse-overlay
-- minzoom: 7
-- maxzoom: 22
        SELECT
            way,
            landuse,
            --way_area/NULLIF(!pixel_width!::real*!pixel_height!::real,0) AS way_pixels
            way_area/NULLIF(35::real*36::real,0) AS way_pixels
          FROM planet_osm_polygon
          WHERE landuse = 'military'
            AND building IS NULL;


-- id: line-barriers
-- minzoom: 14
-- maxzoom: 22
        SELECT
            way, COALESCE(historic, barrier) AS feature
          FROM (SELECT way,
            ('barrier_' || (CASE WHEN barrier IN ('chain', 'city_wall', 'embankment', 'ditch', 'fence', 'guard_rail',
                  'handrail', 'hedge', 'kerb', 'retaining_wall', 'wall') THEN barrier ELSE NULL END)) AS barrier,
            ('historic_' || (CASE WHEN historic = 'citywalls' THEN historic ELSE NULL END)) AS historic
            FROM planet_osm_line
            WHERE barrier IN ('chain', 'city_wall', 'embankment', 'ditch', 'fence', 'guard_rail',
                  'handrail', 'hedge', 'kerb', 'retaining_wall', 'wall')
              OR historic = 'citywalls'
              AND (waterway IS NULL OR waterway NOT IN ('river', 'canal', 'derelict_canal', 'stream', 'drain', 'ditch', 'wadi'))
          ) AS features;


-- id: cliffs
-- minzoom: 13
-- maxzoom: 22
        SELECT
            way, "natural", man_made
          FROM planet_osm_line
          WHERE "natural" = 'cliff' OR man_made = 'embankment';


-- id: area-barriers
-- minzoom: 16
-- maxzoom: 22
        SELECT
            way, barrier AS feature
          FROM (SELECT way,
            ('barrier_' || barrier) AS barrier
            FROM planet_osm_polygon
            WHERE barrier IS NOT NULL
          ) AS features;


-- id: ferry-routes
-- minzoom: 7
-- maxzoom: 22
        SELECT
            way
          FROM planet_osm_line
          WHERE route = 'ferry';


-- id: turning-circle-casing
-- minzoom: 15
-- maxzoom: 22
        SELECT DISTINCT ON (p.way)
            p.way AS way, l.highway AS int_tc_type,
            CASE WHEN l.service IN ('parking_aisle', 'drive-through', 'driveway')
              THEN 'INT-minor'::text
              ELSE 'INT-normal'::text
            END AS int_tc_service
          FROM planet_osm_point p
            JOIN planet_osm_line l ON ST_DWithin(p.way, l.way, 0.1) -- Assumes Mercator
            JOIN (VALUES
              ('tertiary', 1),
              ('unclassified', 2),
              ('residential', 3),
              ('living_street', 4),
              ('service', 5)
              ) AS v (highway, prio)
              ON v.highway=l.highway
          WHERE p.highway = 'turning_circle'
            OR p.highway = 'turning_loop'
          ORDER BY p.way, v.prio;


-- id: highway-area-casing
-- minzoom: 14
-- maxzoom: 22
        SELECT
            way,
            COALESCE((
              'highway_' || (CASE WHEN highway IN ('residential', 'unclassified', 'pedestrian', 'service', 'footway', 'cycleway', 'track', 'path', 'platform') THEN highway ELSE NULL END)),
              ('railway_' || (CASE WHEN railway IN ('platform') THEN railway ELSE NULL END))
            ) AS feature
          FROM planet_osm_polygon
          WHERE highway IN ('residential', 'unclassified', 'pedestrian', 'service', 'footway', 'track', 'path', 'platform')
            OR railway IN ('platform')
          ORDER BY z_order, way_area DESC;


-- id: roads-casing
-- minzoom: 10
-- maxzoom: 22
        SELECT
            way,
            (CASE WHEN substr(feature, length(feature)-3, 4) = 'link' THEN substr(feature, 0, length(feature)-4) ELSE feature END) AS feature,
            horse,
            foot,
            bicycle,
            tracktype,
            int_surface,
            access,
            construction,
            service,
            link,
            layernotnull
          FROM ( -- subselect that contains both roads and rail/aero
            SELECT
                way,
                ('highway_' || highway) AS feature, --only motorway to tertiary links are accepted later on
                horse,
                foot,
                bicycle,
                tracktype,
                CASE WHEN surface IN ('unpaved', 'compacted', 'dirt', 'earth', 'fine_gravel', 'grass', 'grass_paver', 'gravel', 'ground',
                                      'mud', 'pebblestone', 'salt', 'sand', 'woodchips', 'clay') THEN 'unpaved'
                  WHEN surface IN ('paved', 'asphalt', 'cobblestone', 'cobblestone:flattened', 'sett', 'concrete', 'concrete:lanes',
                                      'concrete:plates', 'paving_stones', 'metal', 'wood') THEN 'paved'
                  ELSE NULL
                END AS int_surface,
                CASE WHEN access IN ('destination') THEN 'destination'::text
                  WHEN access IN ('no', 'private') THEN 'no'::text
                  ELSE NULL
                END AS access,
                construction,
                CASE
                  WHEN service IN ('parking_aisle', 'drive-through', 'driveway') THEN 'INT-minor'::text
                  ELSE 'INT-normal'::text
                END AS service,
                CASE
                  WHEN substr(highway, length(highway)-3, 4) = 'link' THEN 'yes'
                  ELSE 'no'
                END AS link,
                CASE WHEN layer~E'^-?\\d+$' AND length(layer)<10 THEN layer::integer ELSE 0 END AS layernotnull
              FROM planet_osm_line
              WHERE (tunnel IS NULL OR NOT tunnel IN ('yes', 'building_passage'))
                AND (covered IS NULL OR NOT covered = 'yes')
                AND (bridge IS NULL OR NOT bridge IN ('yes', 'boardwalk', 'cantilever', 'covered', 'low_water_crossing', 'movable', 'trestle', 'viaduct'))
                AND highway IS NOT NULL -- end of road select
            UNION ALL
            SELECT
                way,
                COALESCE(
                  ('railway_' || (CASE WHEN railway = 'preserved' AND service IN ('spur', 'siding', 'yard') THEN 'INT-preserved-ssy'::text
                                       WHEN (railway = 'rail' AND service IN ('spur', 'siding', 'yard')) THEN 'INT-spur-siding-yard'
                                       WHEN (railway = 'tram' AND service IN ('spur', 'siding', 'yard')) THEN 'tram-service' ELSE railway END)),
                  ('aeroway_' || aeroway)
                ) AS feature,
                horse,
                foot,
                bicycle,
                tracktype,
                'null',
                CASE
                  WHEN access IN ('destination') THEN 'destination'::text
                  WHEN access IN ('no', 'private') THEN 'no'::text
                  ELSE NULL
                END AS access,
                construction,
                CASE WHEN service IN ('parking_aisle', 'drive-through', 'driveway') THEN 'INT-minor'::text ELSE 'INT-normal'::text END AS service,
                'no' AS link,
                CASE WHEN layer~E'^-?\\d+$' AND length(layer)<10 THEN layer::integer ELSE 0 END AS layernotnull
              FROM planet_osm_line
              WHERE (tunnel IS NULL OR NOT tunnel IN ('yes', 'building_passage'))
                AND (covered IS NULL OR NOT covered = 'yes')
                AND (bridge IS NULL OR NOT bridge IN ('yes', 'boardwalk', 'cantilever', 'covered', 'low_water_crossing', 'movable', 'trestle', 'viaduct'))
                AND (railway IS NOT NULL OR aeroway IS NOT NULL) -- end of rail/aero select
            ) AS features
          JOIN (VALUES -- this join is also putting a condition on what is selected. features not matching it do not make it into the results.
              ('railway_rail', 440),
              ('railway_INT-preserved-ssy', 430),
              ('railway_INT-spur-siding-yard', 430),
              ('railway_subway', 420),
              ('railway_narrow_gauge', 420),
              ('railway_light_rail', 420),
              ('railway_preserved', 420),
              ('railway_funicular', 420),
              ('railway_monorail', 420),
              ('railway_miniature', 420),
              ('railway_turntable', 420),
              ('railway_tram', 410),
              ('railway_tram-service', 405),
              ('railway_disused', 400),
              ('railway_construction', 400),
              ('highway_motorway', 380),
              ('highway_trunk', 370),
              ('highway_primary', 360),
              ('highway_secondary', 350),
              ('highway_tertiary', 340),
              ('highway_residential', 330),
              ('highway_unclassified', 330),
              ('highway_road', 330),
              ('highway_living_street', 320),
              ('highway_pedestrian', 310),
              ('highway_raceway', 300),
              ('highway_motorway_link', 240),
              ('highway_trunk_link', 230),
              ('highway_primary_link', 220),
              ('highway_secondary_link', 210),
              ('highway_tertiary_link', 200),
              ('highway_service', 150),
              ('highway_track', 110),
              ('highway_path', 100),
              ('highway_footway', 100),
              ('highway_bridleway', 100),
              ('highway_cycleway', 100),
              ('highway_steps', 100),
              ('highway_platform', 90),
              ('railway_platform', 90),
              ('aeroway_runway', 60),
              ('aeroway_taxiway', 50),
              ('highway_construction', 10)
            ) AS ordertable (feature, prio)
            USING (feature)
          ORDER BY
            layernotnull,
            prio,
            CASE WHEN access IN ('no', 'private') THEN 0 WHEN access IN ('destination') THEN 1 ELSE 2 END,
            CASE WHEN int_surface IN ('unpaved') THEN 0 ELSE 2 END;


-- id: highway-area-fill
-- minzoom: 14
-- maxzoom: 22
        SELECT
            way,
            COALESCE(
              ('highway_' || (CASE WHEN highway IN ('residential', 'unclassified', 'pedestrian', 'service', 'footway', 'cycleway', 'living_street',
                                                    'track', 'path', 'platform', 'services') THEN highway ELSE NULL END)),
              ('railway_' || (CASE WHEN railway IN ('platform') THEN railway ELSE NULL END)),
              (('aeroway_' || CASE WHEN aeroway IN ('runway', 'taxiway', 'helipad') THEN aeroway ELSE NULL END))
            ) AS feature
          FROM planet_osm_polygon
          WHERE highway IN ('residential', 'unclassified', 'pedestrian', 'service', 'footway', 'living_street', 'track', 'path', 'platform', 'services')
            OR railway IN ('platform')
            OR aeroway IN ('runway', 'taxiway', 'helipad')
          ORDER BY z_order, way_area desc;


-- id: roads-fill
-- minzoom: 10
-- maxzoom: 22
        SELECT
            way,
            (CASE WHEN substr(feature, length(feature)-3, 4) = 'link' THEN substr(feature, 0, length(feature)-4) ELSE feature END) AS feature,
            horse,
            foot,
            bicycle,
            tracktype,
            int_surface,
            access,
            construction,
            service,
            link,
            layernotnull
          FROM ( -- begin "features" subselect that contains both roads and rail/aero
            SELECT
                way,
                ('highway_' || highway) AS feature, -- only motorway to tertiary links are accepted later on
                horse,
                foot,
                bicycle,
                tracktype,
                CASE WHEN surface IN ('unpaved', 'compacted', 'dirt', 'earth', 'fine_gravel', 'grass', 'grass_paver', 'gravel', 'ground',
                                      'mud', 'pebblestone', 'salt', 'sand', 'woodchips', 'clay') THEN 'unpaved'
                  WHEN surface IN ('paved', 'asphalt', 'cobblestone', 'cobblestone:flattened', 'sett', 'concrete', 'concrete:lanes',
                                      'concrete:plates', 'paving_stones', 'metal', 'wood') THEN 'paved'
                  ELSE NULL
                END AS int_surface,
                CASE WHEN access IN ('destination') THEN 'destination'::text
                  WHEN access IN ('no', 'private') THEN 'no'::text
                  ELSE NULL
                END AS access,
                construction,
                CASE
                  WHEN service IN ('parking_aisle', 'drive-through', 'driveway') THEN 'INT-minor'::text
                  ELSE 'INT-normal'::text
                END AS service,
                CASE
                  WHEN substr(highway, length(highway)-3, 4) = 'link' THEN 'yes'
                  ELSE 'no'
                END AS link,
                CASE WHEN layer~E'^-?\\d+$' AND length(layer)<10 THEN layer::integer ELSE 0 END AS layernotnull
              FROM planet_osm_line
              WHERE (tunnel IS NULL OR NOT tunnel IN ('yes', 'building_passage'))
                AND (covered IS NULL OR NOT covered = 'yes')
                AND (bridge IS NULL OR NOT bridge IN ('yes', 'boardwalk', 'cantilever', 'covered', 'low_water_crossing', 'movable', 'trestle', 'viaduct'))
                AND highway IS NOT NULL -- end of road select
            UNION ALL
            SELECT
                way,
                COALESCE(
                  ('railway_' || (CASE WHEN railway = 'preserved' AND service IN ('spur', 'siding', 'yard') THEN 'INT-preserved-ssy'::text
                                       WHEN (railway = 'rail' AND service IN ('spur', 'siding', 'yard')) THEN 'INT-spur-siding-yard'
                                       WHEN (railway = 'tram' AND service IN ('spur', 'siding', 'yard')) THEN 'tram-service' ELSE railway END)),
                  ('aeroway_' || aeroway)
                ) AS feature,
                horse,
                foot,
                bicycle,
                tracktype,
                'null' AS surface, -- Should be a SQL NULL?
                CASE
                  WHEN access IN ('destination') THEN 'destination'::text
                  WHEN access IN ('no', 'private') THEN 'no'::text
                  ELSE NULL
                END AS access,
                construction,
                CASE WHEN service IN ('parking_aisle', 'drive-through', 'driveway') THEN 'INT-minor'::text ELSE 'INT-normal'::text END AS service,
                'no' AS link,
                CASE WHEN layer~E'^-?\\d+$' AND length(layer)<10 THEN layer::integer ELSE 0 END AS layernotnull
              FROM planet_osm_line
              WHERE (tunnel IS NULL OR NOT tunnel IN ('yes', 'building_passage'))
                AND (covered IS NULL OR NOT covered = 'yes')
                AND (bridge IS NULL OR NOT bridge IN ('yes', 'boardwalk', 'cantilever', 'covered', 'low_water_crossing', 'movable', 'trestle', 'viaduct'))
                AND (railway IS NOT NULL OR aeroway IS NOT NULL) -- end of rail/aero select
            ) AS features
          JOIN (VALUES -- this join is also putting a condition on what is selected. features not matching it do not make it into the results.
              ('railway_rail', 440),
              ('railway_INT-preserved-ssy', 430),
              ('railway_INT-spur-siding-yard', 430),
              ('railway_subway', 420),
              ('railway_narrow_gauge', 420),
              ('railway_light_rail', 420),
              ('railway_preserved', 420),
              ('railway_funicular', 420),
              ('railway_monorail', 420),
              ('railway_miniature', 420),
              ('railway_turntable', 420),
              ('railway_tram', 410),
              ('railway_tram-service', 405),
              ('railway_disused', 400),
              ('railway_construction', 400),
              ('highway_motorway', 380),
              ('highway_trunk', 370),
              ('highway_primary', 360),
              ('highway_secondary', 350),
              ('highway_tertiary', 340),
              ('highway_residential', 330),
              ('highway_unclassified', 330),
              ('highway_road', 330),
              ('highway_living_street', 320),
              ('highway_pedestrian', 310),
              ('highway_raceway', 300),
              ('highway_motorway_link', 240),
              ('highway_trunk_link', 230),
              ('highway_primary_link', 220),
              ('highway_secondary_link', 210),
              ('highway_tertiary_link', 200),
              ('highway_service', 150),
              ('highway_track', 110),
              ('highway_path', 100),
              ('highway_footway', 100),
              ('highway_bridleway', 100),
              ('highway_cycleway', 100),
              ('highway_steps', 100),
              ('highway_platform', 90),
              ('railway_platform', 90),
              ('aeroway_runway', 60),
              ('aeroway_taxiway', 50),
              ('highway_construction', 10)
            ) AS ordertable (feature, prio)
            USING (feature)
          ORDER BY
            layernotnull,
            prio,
            CASE WHEN access IN ('no', 'private') THEN 0 WHEN access IN ('destination') THEN 1 ELSE 2 END,
            CASE WHEN int_surface IN ('unpaved') THEN 0 ELSE 2 END;


-- id: turning-circle-fill
-- minzoom: 15
-- maxzoom: 22
        SELECT
            DISTINCT on (p.way)
            p.way AS way, l.highway AS int_tc_type,
            CASE WHEN l.service IN ('parking_aisle', 'drive-through', 'driveway') THEN 'INT-minor'::text
              ELSE 'INT-normal'::text END AS int_tc_service
          FROM planet_osm_point p
            JOIN planet_osm_line l
              ON ST_DWithin(p.way, l.way, 0.1)
            JOIN (VALUES
              ('tertiary', 1),
              ('unclassified', 2),
              ('residential', 3),
              ('living_street', 4),
              ('service', 5),
              ('track', 6)
            ) AS v (highway, prio)
              ON v.highway=l.highway
          WHERE p.highway = 'turning_circle' OR p.highway = 'turning_loop'
          ORDER BY p.way, v.prio;


-- id: aerialways
-- minzoom: 12
-- maxzoom: 22
        SELECT
            way,
            aerialway
          FROM planet_osm_line
          WHERE aerialway IS NOT NULL;


-- id: roads-low-zoom
-- minzoom: 5
-- maxzoom: 9
        SELECT
            way,
            COALESCE(
              ('highway_' || (CASE WHEN substr(highway, length(highway)-3, 4) = 'link' THEN substr(highway, 0, length(highway)-4) ELSE highway end)),
              ('railway_' || (CASE WHEN (railway = 'rail' AND service IN ('spur', 'siding', 'yard')) THEN 'INT-spur-siding-yard'
                                   WHEN railway IN ('rail', 'tram', 'light_rail', 'funicular', 'narrow_gauge') THEN railway ELSE NULL END))
            ) AS feature,
            CASE WHEN tunnel = 'yes' OR tunnel = 'building_passage' OR covered = 'yes' THEN 'yes' ELSE 'no' END AS int_tunnel,
            CASE WHEN substr(highway, length(highway)-3, 4) = 'link' THEN 'yes' ELSE 'no' END AS link,
            CASE WHEN surface IN ('unpaved', 'compacted', 'dirt', 'earth', 'fine_gravel', 'grass', 'grass_paver', 'gravel', 'ground',
                                  'mud', 'pebblestone', 'salt', 'sand', 'woodchips', 'clay') THEN 'unpaved'
              WHEN surface IN ('paved', 'asphalt', 'cobblestone', 'cobblestone:flattened', 'sett', 'concrete', 'concrete:lanes',
                                  'concrete:plates', 'paving_stones', 'metal', 'wood') THEN 'paved'
              ELSE NULL
            END AS int_surface
          FROM planet_osm_roads
          WHERE highway IS NOT NULL
            OR (railway IS NOT NULL AND railway != 'preserved'
              AND (service IS NULL OR service NOT IN ('spur', 'siding', 'yard')))
          ORDER BY z_order;


-- id: waterway-bridges
-- minzoom: 12
-- maxzoom: 22
        SELECT
            way,
            waterway,
            name,
            intermittent,
            CASE WHEN tunnel IN ('yes', 'culvert') THEN 'yes' ELSE 'no' END AS int_tunnel,
            'yes' AS bridge
          FROM planet_osm_line
          WHERE waterway IN ('river', 'canal', 'derelict_canal', 'stream', 'drain', 'ditch', 'wadi')
            AND bridge IN ('yes', 'aqueduct')
          ORDER BY z_order;


-- id: bridges
-- minzoom: 10
-- maxzoom: 22
        SELECT
            way,
            (CASE WHEN substr(feature, length(feature)-3, 4) = 'link' THEN substr(feature, 0, length(feature)-4) ELSE feature END) AS feature,
            horse,
            foot,
            bicycle,
            tracktype,
            int_surface,
            access,
            construction,
            service,
            link,
            layernotnull
          FROM ( -- subselect that contains both roads and rail/aero
            SELECT
                way,
                ('highway_' || highway) AS feature, --only motorway to tertiary links are accepted later on
                horse,
                foot,
                bicycle,
                tracktype,
                CASE WHEN surface IN ('unpaved', 'compacted', 'dirt', 'earth', 'fine_gravel', 'grass', 'grass_paver', 'gravel', 'ground',
                                      'mud', 'pebblestone', 'salt', 'sand', 'woodchips', 'clay') THEN 'unpaved'
                  WHEN surface IN ('paved', 'asphalt', 'cobblestone', 'cobblestone:flattened', 'sett', 'concrete', 'concrete:lanes',
                                      'concrete:plates', 'paving_stones', 'metal', 'wood') THEN 'paved'
                  ELSE NULL
                END AS int_surface,
                CASE WHEN access IN ('destination') THEN 'destination'::text
                  WHEN access IN ('no', 'private') THEN 'no'::text
                  ELSE NULL
                END AS access,
                construction,
                CASE
                  WHEN service IN ('parking_aisle', 'drive-through', 'driveway') THEN 'INT-minor'::text
                  ELSE 'INT-normal'::text
                END AS service,
                CASE
                  WHEN substr(highway, length(highway)-3, 4) = 'link' THEN 'yes'
                  ELSE 'no'
                END AS link,
                CASE WHEN layer~E'^-?\\d+$' AND length(layer)<10 THEN layer::integer ELSE 0 END AS layernotnull
              FROM planet_osm_line
              WHERE bridge IN ('yes', 'boardwalk', 'cantilever', 'covered', 'low_water_crossing', 'movable', 'trestle', 'viaduct')
                AND highway IS NOT NULL -- end of road select
            UNION ALL
            SELECT
                way,
                COALESCE(
                  ('railway_' || (CASE WHEN railway = 'preserved' AND service IN ('spur', 'siding', 'yard') THEN 'INT-preserved-ssy'::text
                                       WHEN (railway = 'rail' AND service IN ('spur', 'siding', 'yard')) THEN 'INT-spur-siding-yard'
                                       WHEN (railway = 'tram' AND service IN ('spur', 'siding', 'yard')) THEN 'tram-service' ELSE railway END)),
                  ('aeroway_' || aeroway)
                ) AS feature,
                horse,
                foot,
                bicycle,
                tracktype,
                'null',
                CASE
                  WHEN access IN ('destination') THEN 'destination'::text
                  WHEN access IN ('no', 'private') THEN 'no'::text
                  ELSE NULL
                END AS access,
                construction,
                CASE WHEN service IN ('parking_aisle', 'drive-through', 'driveway') THEN 'INT-minor'::text ELSE 'INT-normal'::text END AS service,
                'no' AS link,
                CASE WHEN layer~E'^-?\\d+$' AND length(layer)<10 THEN layer::integer ELSE 0 END AS layernotnull
              FROM planet_osm_line
              WHERE bridge IN ('yes', 'boardwalk', 'cantilever', 'covered', 'low_water_crossing', 'movable', 'trestle', 'viaduct')
                AND (railway IS NOT NULL OR aeroway IS NOT NULL) -- end of rail/aero select
            ) AS features
          JOIN (VALUES -- this join is also putting a condition on what is selected. features not matching it do not make it into the results.
              ('railway_rail', 440),
              ('railway_INT-preserved-ssy', 430),
              ('railway_INT-spur-siding-yard', 430),
              ('railway_subway', 420),
              ('railway_narrow_gauge', 420),
              ('railway_light_rail', 420),
              ('railway_preserved', 420),
              ('railway_funicular', 420),
              ('railway_monorail', 420),
              ('railway_miniature', 420),
              ('railway_turntable', 420),
              ('railway_tram', 410),
              ('railway_tram-service', 405),
              ('railway_disused', 400),
              ('railway_construction', 400),
              ('highway_motorway', 380),
              ('highway_trunk', 370),
              ('highway_primary', 360),
              ('highway_secondary', 350),
              ('highway_tertiary', 340),
              ('highway_residential', 330),
              ('highway_unclassified', 330),
              ('highway_road', 330),
              ('highway_living_street', 320),
              ('highway_pedestrian', 310),
              ('highway_raceway', 300),
              ('highway_motorway_link', 240),
              ('highway_trunk_link', 230),
              ('highway_primary_link', 220),
              ('highway_secondary_link', 210),
              ('highway_tertiary_link', 200),
              ('highway_service', 150),
              ('highway_track', 110),
              ('highway_path', 100),
              ('highway_footway', 100),
              ('highway_bridleway', 100),
              ('highway_cycleway', 100),
              ('highway_steps', 100),
              ('highway_platform', 90),
              ('railway_platform', 90),
              ('aeroway_runway', 60),
              ('aeroway_taxiway', 50),
              ('highway_construction', 10)
            ) AS ordertable (feature, prio)
            USING (feature)
          ORDER BY
            layernotnull,
            prio,
            CASE WHEN access IN ('no', 'private') THEN 0 WHEN access IN ('destination') THEN 1 ELSE 2 END,
            CASE WHEN int_surface IN ('unpaved') THEN 0 ELSE 2 END;


-- id: guideways
-- minzoom: 13
-- maxzoom: 22
        SELECT
            way
          FROM planet_osm_line
          WHERE highway = 'bus_guideway';


-- id: admin-low-zoom
-- minzoom: 4
-- maxzoom: 10
        SELECT
            way,
            admin_level
          FROM planet_osm_roads
          WHERE boundary = 'administrative'
            AND admin_level IN ('0', '1', '2', '3', '4')
            AND osm_id < 0
          ORDER BY admin_level DESC;


-- id: admin-mid-zoom
-- minzoom: 11
-- maxzoom: 12
        SELECT
            way,
            admin_level
          FROM planet_osm_roads
          WHERE boundary = 'administrative'
            AND admin_level IN ('0', '1', '2', '3', '4', '5', '6', '7', '8')
            AND osm_id < 0
          ORDER BY admin_level DESC;


-- id: admin-high-zoom
-- minzoom: 13
-- maxzoom: 22
        SELECT
            way,
            admin_level
          FROM planet_osm_roads
          WHERE boundary = 'administrative'
            AND admin_level IN ('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10')
            AND osm_id < 0
          ORDER BY admin_level::integer DESC; -- With 10 as a valid value, we need to do a numeric ordering, not a text ordering


-- id: power-minorline
-- minzoom: 16
-- maxzoom: 22
        SELECT
            way
          FROM planet_osm_line
          WHERE power = 'minor_line';


-- id: power-line
-- minzoom: 14
-- maxzoom: 22
        SELECT
            way
          FROM planet_osm_line
          WHERE power = 'line';


-- id: nature-reserve-boundaries
-- minzoom: 7
-- maxzoom: 22
        SELECT
            way,
            name,
            boundary,
            --way_area/NULLIF(!pixel_width!::real*!pixel_height!::real,0) AS way_pixels
            way_area/NULLIF(35::real*36::real,0) AS way_pixels
          FROM planet_osm_polygon
          WHERE (boundary = 'national_park' OR leisure = 'nature_reserve')
            AND building IS NULL
            -- AND ( ( ( !scale_denominator! < 9.55462853564704 ) AND ( way_area > 0.01*!pixel_width!::real*!pixel_height!::real ) ) OR ( !scale_denominator! > 9.55462853564704 ) )
            AND ( ( ( 9.0 < 9.55462853564704 ) AND ( way_area > 0.01*35::real*36::real ) ) OR ( 9.0 > 9.55462853564704 ) );


-- id: tourism-boundary
-- minzoom: 10
-- maxzoom: 22
        SELECT
            way,
            --way_area/NULLIF(!pixel_width!::real*!pixel_height!::real,0) AS way_pixels,
            way_area/NULLIF(35::real*36::real,0) AS way_pixels,
            name,
            tourism
          FROM planet_osm_polygon
          WHERE tourism = 'theme_park'
            OR tourism = 'zoo';


-- id: trees
-- minzoom: 16
-- maxzoom: 22
        SELECT
            way, "natural"
          FROM planet_osm_point
          WHERE "natural" = 'tree'
        UNION ALL
        SELECT
            way, "natural"
          FROM planet_osm_line
          WHERE "natural" = 'tree_row';


-- id: country-names
-- minzoom: 2
-- maxzoom: 22
        SELECT
            ST_PointOnSurface(way) as way,
            --way_area/NULLIF(!pixel_width!::real*!pixel_height!::real,0) AS way_pixels,
            way_area/NULLIF(35::real*36::real,0) AS way_pixels,
            name
          FROM planet_osm_polygon
          WHERE boundary = 'administrative'
            AND admin_level = '2'
            AND name IS NOT NULL
            --AND way_area > 100*!pixel_width!::real*!pixel_height!::real
            AND way_area > 100*35::real*36::real
            --AND way && !bbox!
          ORDER BY way_area DESC;


-- id: capital-names
-- minzoom: 3
-- maxzoom: 15
        SELECT
            way,
            name,
            CASE
              WHEN (population ~ '^[0-9]{1,8}$') THEN population::INTEGER ELSE 0
            END as population,
            round(ascii(md5(osm_id::text)) / 55) AS dir -- base direction factor on geometry to be consistent across metatiles
          FROM planet_osm_point
          WHERE place IN ('city', 'town', 'village', 'hamlet')
            AND name IS NOT NULL
            AND capital = 'yes'
          ORDER BY population DESC;


-- id: state-names
-- minzoom: 4
        SELECT
            way,
            --way_area/NULLIF(!pixel_width!::real*!pixel_height!::real,0) AS way_pixels,
            way_area/NULLIF(35::real*36::real,0) AS way_pixels,
            name,
            ref
          FROM planet_osm_polygon
          WHERE boundary = 'administrative'
            AND admin_level = '4'
            AND name IS NOT NULL
            --AND way_area > 100*!pixel_width!::real*!pixel_height!::real
            AND way_area > 100*35::real*36::real
          ORDER BY way_area DESC;


-- id: placenames-medium
-- minzoom: 4
-- maxzoom: 22
        SELECT
            way,
            name,
            score,
            CASE
              WHEN (place = 'city') THEN 1
              ELSE 2
            END as category,
            round(ascii(md5(osm_id::text)) / 55) AS dir -- base direction factor on geometry to be consistent across metatiles
          FROM
            (SELECT
                osm_id,
                way,
                place,
                name,
                (
                  (CASE
                    WHEN (population ~ '^[0-9]{1,8}$') THEN population::INTEGER
                    WHEN (place = 'city') THEN 100000
                    WHEN (place = 'town') THEN 1000
                    ELSE 1
                  END)
                  *
                  (CASE
                    WHEN (capital = '4') THEN 2
                    ELSE 1
                  END)
                ) AS score
              FROM planet_osm_point
              WHERE place IN ('city', 'town')
                AND name IS NOT NULL
                AND (capital IS NULL OR capital != 'yes')
            ) as p
          ORDER BY score DESC, length(name) DESC, name;


-- id: placenames-small
-- minzoom: 12
-- maxzoom: 22
        SELECT
            way,
            place,
            name
          FROM planet_osm_point
          WHERE place IN ('village', 'hamlet')
             AND name IS NOT NULL
             AND (capital IS NULL OR capital != 'yes')
             OR place IN ('suburb', 'neighbourhood', 'locality', 'isolated_dwelling', 'farm')
             AND name IS NOT NULL
          ORDER BY CASE
              WHEN place = 'suburb' THEN 3
              WHEN place = 'village' THEN 4
              WHEN place = 'hamlet' THEN 5
              WHEN place = 'neighbourhood' THEN 6
              WHEN place = 'locality' THEN 7
              WHEN place = 'isolated_dwelling' THEN 8
              WHEN place = 'farm' THEN 9
            END ASC, length(name) DESC, name;


-- id: stations
-- minzoom: 12
-- maxzoom: 22
        SELECT
            way,
            name,
            ref,
            railway,
            aerialway,
            CASE railway
              WHEN 'station' THEN 1
              WHEN 'subway_entrance' THEN 3
              ELSE 2
            END
              AS prio
          FROM planet_osm_point
          WHERE railway IN ('station', 'halt', 'tram_stop', 'subway_entrance')
            OR aerialway = 'station'
          ORDER BY prio;


-- id: stations-poly
-- minzoom: 12
-- maxzoom: 22
        SELECT
            way,
            name,
            ref,
            railway,
            aerialway
        FROM planet_osm_polygon
        WHERE railway IN ('station', 'halt', 'tram_stop')
          OR aerialway = 'station';


-- id: amenity-points-poly
-- minzoom: 10
-- maxzoom: 22
        SELECT
            ST_Centroid(ST_Envelope(way)) as way,
            COALESCE(
              'aeroway_' || CASE WHEN aeroway IN ('helipad', 'aerodrome') THEN aeroway ELSE NULL END,
              'tourism_' || CASE WHEN tourism IN ('artwork', 'alpine_hut', 'camp_site', 'caravan_site', 'chalet', 'wilderness_hut', 'guest_house',
                                                  'hostel', 'hotel', 'motel', 'information', 'museum', 'picnic_site') THEN tourism ELSE NULL END,
              'amenity_' || CASE WHEN amenity IN ('shelter', 'atm', 'bank', 'bar', 'bicycle_rental', 'bus_station', 'cafe',
                                                  'car_rental', 'car_wash', 'cinema', 'clinic', 'community_centre', 'fire_station', 'fountain',
                                                  'fuel', 'hospital', 'ice_cream', 'embassy', 'library', 'courthouse', 'townhall', 'parking',
                                                  'bicycle_parking', 'motorcycle_parking', 'pharmacy', 'doctors', 'dentist', 'place_of_worship',
                                                  'police', 'post_box', 'post_office', 'pub', 'biergarten', 'recycling', 'restaurant', 'food_court',
                                                  'fast_food', 'telephone', 'emergency_phone', 'taxi', 'theatre', 'toilets', 'drinking_water',
                                                  'prison', 'hunting_stand', 'nightclub', 'veterinary', 'social_facility',
                                                  'charging_station', 'arts_centre') THEN amenity ELSE NULL END,
              'shop' || CASE WHEN shop IN ('no', 'vacant', 'closed', 'disused', 'empty') OR shop IS NULL THEN NULL ELSE '' END,
              'leisure_' || CASE WHEN leisure IN ('water_park', 'playground', 'miniature_golf', 'golf_course', 'picnic_table') THEN leisure ELSE NULL END,
              'man_made_' || CASE WHEN man_made IN ('mast', 'water_tower', 'lighthouse', 'windmill', 'obelisk') THEN man_made ELSE NULL END,
              'natural_' || CASE WHEN "natural" IN ('spring') THEN "natural" ELSE NULL END,
              'historic_' || CASE WHEN historic IN ('memorial', 'monument', 'archaeological_site') THEN historic ELSE NULL END,
              'highway_'|| CASE WHEN highway IN ('bus_stop', 'elevator', 'traffic_signals') THEN highway ELSE NULL END,
              'power_' || CASE WHEN power IN ('generator') THEN power ELSE NULL END,
              'tourism_' || CASE WHEN tourism IN ('viewpoint') THEN tourism ELSE NULL END
            ) AS feature,
            access,
            religion,
            denomination,
            "generator:source",
            power_source,
            CASE WHEN shop IN ('supermarket', 'bag', 'bakery', 'beauty', 'books', 'butcher', 'clothes', 'computer',
                               'confectionery', 'fashion', 'convenience', 'department_store', 'doityourself', 'hardware', 'fishmonger', 'florist',
                               'garden_centre', 'hairdresser', 'hifi', 'ice_cream', 'car', 'car_repair', 'bicycle', 'mall', 'pet',
                               'photo', 'photo_studio', 'photography', 'seafood', 'shoes', 'alcohol', 'gift', 'furniture', 'kiosk',
                               'mobile_phone', 'motorcycle', 'musical_instrument', 'newsagent', 'optician', 'jewelry', 'jewellery',
                               'electronics', 'chemist', 'toys', 'travel_agency', 'car_parts', 'greengrocer', 'farm', 'stationery',
                               'laundry', 'dry_cleaning', 'beverages', 'perfumery', 'cosmetics', 'variety_store', 'wine', 'outdoor',
                               'copyshop', 'sports', 'deli', 'tobacco', 'art', 'tea', 'coffee') THEN shop
                               ELSE 'other' END AS shop,
            --way_area/NULLIF(!pixel_width!::real*!pixel_height!::real,0) AS way_pixels
            way_area/NULLIF(35::real*36::real,0) AS way_pixels
          FROM planet_osm_polygon
          -- The upcoming where clause is needed for performance only, as the CASE statements would end up doing the equivalent filtering
          WHERE (
               aeroway IN ('helipad', 'aerodrome')
            OR tourism IN ('artwork', 'alpine_hut', 'camp_site', 'caravan_site', 'chalet', 'wilderness_hut', 'guest_house', 'hostel',
                           'hotel', 'motel', 'information', 'museum', 'viewpoint', 'picnic_site')
            OR amenity IN ('shelter', 'atm', 'bank', 'bar', 'bicycle_rental', 'bus_station', 'cafe',
                           'car_rental', 'car_wash', 'cinema', 'clinic', 'community_centre',
                           'fire_station', 'fountain', 'fuel', 'hospital', 'ice_cream', 'embassy', 'library', 'courthouse',
                           'townhall', 'parking', 'bicycle_parking', 'motorcycle_parking', 'pharmacy', 'doctors',
                           'dentist', 'place_of_worship', 'police', 'post_box', 'post_office', 'pub', 'biergarten',
                           'recycling', 'restaurant', 'food_court', 'fast_food', 'telephone', 'emergency_phone', 'taxi',
                           'theatre', 'toilets', 'drinking_water', 'prison', 'hunting_stand', 'nightclub', 'veterinary',
                           'social_facility', 'charging_station', 'arts_centre')
            OR shop IS NOT NULL -- skip checking a huge list and use a null check
            OR leisure IN ('water_park', 'playground', 'miniature_golf', 'golf_course', 'picnic_table')
            OR man_made IN ('mast', 'water_tower', 'lighthouse', 'windmill', 'obelisk')
            OR "natural" IN ('spring')
            OR historic IN ('memorial', 'monument', 'archaeological_site')
            OR highway IN ('bus_stop', 'elevator', 'traffic_signals')
            OR (power = 'generator' AND ("generator:source" = 'wind' OR power_source = 'wind'))
          ) --AND way && !bbox!
          ORDER BY way_area desc;


-- id: amenity-points
-- minzoom: 10
-- maxzoom: 22
        SELECT
            way,
            COALESCE(
              'aeroway_' || CASE WHEN aeroway IN ('helipad', 'aerodrome') THEN aeroway ELSE NULL END,
              'tourism_' || CASE WHEN tourism IN ('artwork', 'alpine_hut', 'camp_site', 'caravan_site', 'chalet', 'wilderness_hut', 'guest_house', 'hostel',
                                                  'hotel', 'motel', 'information', 'museum', 'picnic_site') THEN tourism ELSE NULL END,
              'amenity_' || CASE WHEN amenity IN ('shelter', 'atm', 'bank', 'bar', 'bicycle_rental', 'bus_station', 'cafe',
                                                  'car_rental', 'car_wash', 'cinema', 'clinic', 'community_centre', 'fire_station', 'fountain',
                                                  'fuel', 'hospital', 'ice_cream', 'embassy', 'library', 'courthouse', 'townhall', 'parking',
                                                  'bicycle_parking', 'motorcycle_parking', 'pharmacy', 'doctors', 'dentist', 'place_of_worship',
                                                  'police', 'post_box', 'post_office', 'pub', 'biergarten', 'recycling', 'restaurant', 'food_court',
                                                  'fast_food', 'telephone', 'emergency_phone', 'taxi', 'theatre', 'toilets', 'drinking_water',
                                                  'prison', 'hunting_stand', 'nightclub', 'veterinary', 'social_facility',
                                                  'charging_station', 'arts_centre') THEN amenity ELSE NULL END,
              'shop' || CASE WHEN shop IN ('no', 'vacant', 'closed', 'disused', 'empty') OR shop IS NULL THEN NULL ELSE '' END,
              'leisure_' || CASE WHEN leisure IN ('water_park', 'playground', 'miniature_golf', 'golf_course', 'picnic_table', 'slipway',
                                                  'dog_park') THEN leisure ELSE NULL END,
              'man_made_' || CASE WHEN man_made IN ('mast', 'water_tower', 'lighthouse', 'windmill', 'obelisk') THEN man_made ELSE NULL END,
              'natural_' || CASE WHEN "natural" IN ('peak', 'volcano', 'saddle', 'spring', 'cave_entrance') THEN "natural" ELSE NULL END,
              'historic_' || CASE WHEN historic IN ('memorial', 'monument', 'archaeological_site') THEN historic ELSE NULL END,
              'highway_'|| CASE WHEN highway IN ('bus_stop', 'elevator', 'traffic_signals', 'ford') THEN highway ELSE NULL END,
              'power_' || CASE WHEN power IN ('generator') THEN power ELSE NULL END,
              'tourism_' || CASE WHEN tourism IN ('viewpoint') THEN tourism ELSE NULL END,
              'man_made_' || CASE WHEN man_made IN ('cross') THEN man_made ELSE NULL END,
              'historic_' || CASE WHEN historic IN ('wayside_cross') THEN historic ELSE NULL END
            ) AS feature,
            access,
            CASE
              WHEN "natural" IN ('peak', 'volcano', 'saddle') THEN
                CASE
                  WHEN ele ~ '^-?\d{1,4}(\.\d+)?$' THEN ele::NUMERIC
                  ELSE NULL
                END
              ELSE NULL
            END AS score,
            religion,
            denomination,
            "generator:source",
            power_source,
            CASE WHEN shop IN ('supermarket', 'bag', 'bakery', 'beauty', 'books', 'butcher', 'clothes', 'computer',
                               'confectionery', 'fashion', 'convenience', 'department_store', 'doityourself', 'hardware', 'fishmonger', 'florist',
                               'garden_centre', 'hairdresser', 'hifi', 'ice_cream', 'car', 'car_repair', 'bicycle', 'mall', 'pet',
                               'photo', 'photo_studio', 'photography', 'seafood', 'shoes', 'alcohol', 'gift', 'furniture', 'kiosk',
                               'mobile_phone', 'motorcycle', 'musical_instrument', 'newsagent', 'optician', 'jewelry', 'jewellery',
                               'electronics', 'chemist', 'toys', 'travel_agency', 'car_parts', 'greengrocer', 'farm', 'stationery',
                               'laundry', 'dry_cleaning', 'beverages', 'perfumery', 'cosmetics', 'variety_store', 'wine', 'outdoor',
                               'copyshop', 'sports', 'deli', 'tobacco', 'art', 'tea', 'coffee') THEN shop
                               ELSE 'other' END AS shop,
            NULL AS way_pixels
          FROM planet_osm_point
          -- The upcoming where clause is needed for performance only, as the CASE statements would end up doing the equivalent filtering
          WHERE aeroway IN ('helipad', 'aerodrome')
            OR tourism IN ('artwork', 'alpine_hut', 'camp_site', 'caravan_site', 'chalet', 'wilderness_hut', 'guest_house', 'hostel',
                           'hotel', 'motel', 'information', 'museum', 'viewpoint', 'picnic_site')
            OR amenity IN ('shelter', 'atm', 'bank', 'bar', 'bicycle_rental', 'bus_station', 'cafe',
                           'car_rental',  'car_wash', 'cinema', 'clinic', 'community_centre',
                           'fire_station', 'fountain', 'fuel', 'hospital', 'ice_cream', 'embassy', 'library', 'courthouse',
                           'townhall', 'parking', 'bicycle_parking', 'motorcycle_parking', 'pharmacy', 'doctors',
                           'dentist', 'place_of_worship', 'police', 'post_box', 'post_office', 'pub', 'biergarten',
                           'recycling', 'restaurant', 'food_court', 'fast_food', 'telephone', 'emergency_phone',
                           'taxi', 'theatre', 'toilets', 'drinking_water', 'prison', 'hunting_stand', 'nightclub',
                           'veterinary', 'social_facility', 'charging_station', 'arts_centre')
            OR shop IS NOT NULL -- skip checking a huge list and use a null check
            OR leisure IN ('water_park', 'playground', 'miniature_golf', 'golf_course', 'picnic_table', 'slipway',
                           'dog_park')
            OR man_made IN ('mast', 'water_tower', 'lighthouse', 'windmill', 'cross', 'obelisk')
            OR "natural" IN ('peak', 'volcano', 'saddle', 'spring', 'cave_entrance')
            OR historic IN ('memorial', 'monument', 'archaeological_site', 'wayside_cross')
            OR highway IN ('bus_stop', 'elevator', 'traffic_signals', 'ford')
            OR (power = 'generator' AND ("generator:source" = 'wind' OR power_source = 'wind'))
          ORDER BY score DESC NULLS LAST;


-- id: power-towers
-- minzoom: 14
-- maxzoom: 22
        SELECT
            way
          FROM planet_osm_point
          WHERE power = 'tower';


-- id: power-poles
-- minzoom: 16
-- maxzoom: 22
        SELECT
            way
          FROM planet_osm_point
          WHERE power = 'pole';


-- id: roads-text-ref-low-zoom
-- minzoom: 10
-- maxzoom: 12
        SELECT
            way,
            highway,
            height,
            width,
            refs
          FROM (
            SELECT
                way,
                osm_id,
                highway,
                array_length(refs,1) AS height,
                (SELECT MAX(char_length(ref)) FROM unnest(refs) AS u(ref)) AS width,
                array_to_string(refs, E'\n') AS refs
              FROM (
                SELECT
                    way,
                    osm_id,
                    highway,
                    string_to_array(ref, ';') AS refs
                FROM planet_osm_roads
                  WHERE highway IN ('motorway', 'trunk', 'primary', 'secondary')
                  AND ref IS NOT NULL
              ) AS p) AS q
          WHERE height <= 4 AND width <= 11
          ORDER BY
            CASE
              WHEN highway = 'motorway' THEN 38
              WHEN highway = 'trunk' THEN 37
              WHEN highway = 'primary' THEN 36
              WHEN highway = 'secondary' THEN 35
              WHEN highway = 'tertiary' THEN 34
              WHEN highway = 'unclassified' THEN 33
              WHEN highway = 'residential' THEN 32
              WHEN highway = 'runway' THEN 6
              WHEN highway = 'taxiway' THEN 5
              ELSE NULL
            END DESC NULLS LAST,
            height DESC,
            width DESC,
            refs,
            osm_id;


-- id: junctions
-- minzoom: 11
-- maxzoom: 22
        SELECT
            way,
            highway,
            junction,
            ref,
            name
          FROM planet_osm_point
          WHERE highway = 'motorway_junction' OR highway = 'traffic_signals' OR junction = 'yes';


-- id: bridge-text
-- minzoom: 11
-- maxzoom: 22
        SELECT
            way,
            --way_area/NULLIF(!pixel_width!::real*!pixel_height!::real,0) AS way_pixels,
            way_area/NULLIF(35::real*36::real,0) AS way_pixels,
            man_made,
            name
          FROM planet_osm_polygon
          WHERE man_made = 'bridge';


-- id: roads-text-ref
-- minzoom: 13
-- maxzoom: 22
        SELECT
            way,
            highway,
            height,
            width,
            refs
          FROM (
            SELECT
                osm_id,
                way,
                highway,
                array_length(refs,1) AS height,
                (SELECT MAX(char_length(ref)) FROM unnest(refs) AS u(ref)) AS width,
                array_to_string(refs, E'\n') AS refs
              FROM (
                SELECT
                    osm_id,
                    way,
                    COALESCE(
                      CASE WHEN highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'unclassified', 'residential') THEN highway ELSE NULL END,
                      CASE WHEN aeroway IN ('runway', 'taxiway') THEN aeroway ELSE NULL END
                    ) AS highway,
                    string_to_array(ref, ';') AS refs
                  FROM planet_osm_line
                  WHERE (highway IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'unclassified', 'residential') OR aeroway IN ('runway', 'taxiway'))
                    AND ref IS NOT NULL
              ) AS p) AS q
          WHERE height <= 4 AND width <= 11
          ORDER BY
            CASE
              WHEN highway = 'motorway' THEN 38
              WHEN highway = 'trunk' THEN 37
              WHEN highway = 'primary' THEN 36
              WHEN highway = 'secondary' THEN 35
              WHEN highway = 'tertiary' THEN 34
              WHEN highway = 'unclassified' THEN 33
              WHEN highway = 'residential' THEN 32
              WHEN highway = 'runway' THEN 6
              WHEN highway = 'taxiway' THEN 5
              ELSE NULL
            END DESC NULLS LAST,
            height DESC,
            width DESC,
            refs,
            osm_id;


-- id: roads-area-text-name
-- minzoom: 15
-- maxzoom: 22
        SELECT
            way,
            --way_area/NULLIF(!pixel_width!::real*!pixel_height!::real,0) AS way_pixels,
            way_area/NULLIF(35::real*36::real,0) AS way_pixels,
            highway,
            name
          FROM planet_osm_polygon
          WHERE highway IN ('residential', 'unclassified', 'pedestrian', 'service', 'footway', 'cycleway', 'living_street', 'track', 'path', 'platform')
            OR railway IN ('platform')
            AND name IS NOT NULL
          ORDER BY way_area DESC;


-- id: roads-text-name
-- minzoom: 13
-- maxzoom: 22
        SELECT
            way,
            CASE WHEN substr(highway, length(highway)-3, 4) = 'link' THEN substr(highway, 0, length(highway)-4) ELSE highway END,
            CASE WHEN (tunnel = 'yes' OR tunnel = 'building_passage' OR covered = 'yes') THEN 'yes' ELSE 'no' END AS tunnel,
            construction,
            name,
            CASE
              WHEN oneway IN ('yes', '-1') THEN oneway
              WHEN junction IN ('roundabout') AND (oneway IS NULL OR NOT oneway IN ('no', 'reversible')) THEN 'yes'
              ELSE NULL
            END AS oneway,
            horse, bicycle
          FROM planet_osm_line l
          JOIN (VALUES -- this join is also putting a condition on what is selected. features not matching it do not make it into the results.
              ('motorway', 380),
              ('trunk', 370),
              ('primary', 360),
              ('secondary', 350),
              ('tertiary', 340),
              ('residential', 330),
              ('unclassified', 330),
              ('road', 330),
              ('living_street', 320),
              ('pedestrian', 310),
              ('raceway', 300),
              ('motorway_link', 240),
              ('trunk_link', 230),
              ('primary_link', 220),
              ('secondary_link', 210),
              ('tertiary_link', 200),
              ('service', 150),
              ('construction', 10)
            ) AS ordertable (highway, prio)
            USING (highway)
          WHERE highway IN ('motorway', 'motorway_link', 'trunk', 'trunk_link', 'primary', 'primary_link', 'secondary', 'secondary_link', 'tertiary',
                            'tertiary_link', 'residential', 'unclassified', 'road', 'service', 'pedestrian', 'raceway', 'living_street', 'construction')
            AND (name IS NOT NULL
              OR oneway IN ('yes', '-1')
              OR junction IN ('roundabout'))
          ORDER BY
            prio DESC, -- put important roads first
            CASE WHEN layer~E'^-?\\d+$' AND length(layer)<10 THEN layer::integer ELSE 0 END DESC, -- put top layered roads first
            length(name) DESC, -- Try to fit big labels in first
            name DESC, -- Force a consistent ordering between differently named streets
            l.osm_id DESC; -- Force an ordering for streets of the same name, e.g. dualized roads


-- id: paths-text-name
-- minzoom: 15
-- maxzoom: 22
        SELECT
            way,
            highway,
            name
          FROM planet_osm_line
          WHERE highway IN ('bridleway', 'footway', 'cycleway', 'path', 'track', 'steps')
            AND name IS NOT NULL;

-- id: text-poly-low-zoom
-- minzoom: 7
-- maxzoom: 9
        SELECT
            ST_Centroid(ST_Envelope(way)) as way,
            --way_area/NULLIF(!pixel_width!::real*!pixel_height!::real,0) AS way_pixels,
            way_area/NULLIF(35::real*36::real,0) AS way_pixels,
            COALESCE(
              'landuse_' || CASE WHEN landuse IN ('forest', 'military') THEN landuse ELSE NULL END,
              'natural_' || CASE WHEN "natural" IN ('wood', 'glacier', 'sand', 'scree', 'shingle', 'bare_rock') THEN "natural" ELSE NULL END,
              'place_' || CASE WHEN place IN ('island') THEN place ELSE NULL END,
              'boundary_' || CASE WHEN boundary IN ('national_park') THEN boundary ELSE NULL END,
              'leisure_' || CASE WHEN leisure IN ('nature_reserve') THEN leisure ELSE NULL END
            ) AS feature,
            name,
            CASE WHEN building = 'no' OR building IS NULL THEN 'no' ELSE 'yes' END AS is_building -- always no with the where conditions
          FROM planet_osm_polygon
          WHERE (landuse IN ('forest', 'military')
              OR "natural" IN ('wood', 'glacier', 'sand', 'scree', 'shingle', 'bare_rock')
              OR "place" IN ('island')
              OR boundary IN ('national_park')
              OR leisure IN ('nature_reserve'))
            AND building IS NULL
            AND name IS NOT NULL
            --AND way && !bbox!
          ORDER BY way_area DESC;


-- id: text-poly
-- minzoom: 10
-- maxzoom: 22
        SELECT
            ST_Centroid(ST_Envelope(way)) as way,
            --way_area/NULLIF(!pixel_width!::real*!pixel_height!::real,0) AS way_pixels,
            way_area/NULLIF(35::real*36::real,0) AS way_pixels,
            COALESCE(
              'aeroway_' || CASE WHEN aeroway IN ('gate', 'apron', 'helipad', 'aerodrome') THEN aeroway ELSE NULL END,
              'tourism_' || CASE WHEN tourism IN ('artwork', 'alpine_hut', 'hotel', 'motel', 'hostel', 'chalet', 'wilderness_hut', 'guest_house', 'camp_site', 'caravan_site',
                                                  'theme_park', 'museum', 'zoo', 'information', 'picnic_site') THEN tourism ELSE NULL END,
              'amenity_' || CASE WHEN amenity IN ('pub', 'restaurant', 'food_court', 'cafe', 'fast_food', 'biergarten', 'bar', 'library',
                                                  'theatre', 'courthouse', 'townhall', 'cinema', 'clinic', 'community_centre', 'parking',
                                                  'bicycle_parking', 'motorcycle_parking', 'police', 'fire_station', 'fountain', 'place_of_worship',
                                                  'grave_yard', 'shelter', 'bank', 'embassy', 'fuel', 'bus_station', 'prison', 'university',
                                                  'school', 'college', 'kindergarten', 'hospital', 'ice_cream', 'pharmacy', 'doctors', 'dentist',
                                                  'atm', 'bicycle_rental', 'car_rental', 'car_wash', 'post_box', 'post_office',
                                                  'recycling', 'telephone', 'emergency_phone', 'toilets', 'taxi', 'drinking_water', 'hunting_stand',
                                                  'nightclub', 'veterinary', 'social_facility', 'charging_station', 'arts_centre') THEN amenity ELSE NULL END,
              'shop_' || CASE WHEN shop IN ('supermarket', 'bag', 'bakery', 'beauty', 'books', 'butcher', 'clothes', 'computer', 'confectionery',
                                            'fashion', 'convenience', 'department_store', 'doityourself', 'hardware', 'fishmonger', 'florist', 'garden_centre',
                                            'hairdresser', 'hifi', 'ice_cream', 'car', 'car_repair', 'bicycle', 'mall', 'pet', 'photo', 'photo_studio',
                                            'photography', 'seafood', 'shoes', 'alcohol', 'gift', 'furniture', 'kiosk', 'mobile_phone', 'motorcycle',
                                            'musical_instrument', 'newsagent', 'optician', 'jewelry', 'jewellery', 'electronics', 'chemist', 'toys',
                                            'travel_agency', 'car_parts', 'greengrocer', 'farm', 'stationery', 'laundry', 'dry_cleaning', 'beverages',
                                            'perfumery', 'cosmetics', 'variety_store', 'wine', 'outdoor', 'copyshop', 'sports', 'deli', 'tobacco', 'art', 'tea',
                                            'coffee') THEN shop
                              WHEN shop IN ('no', 'vacant', 'closed', 'disused', 'empty') OR shop IS NULL THEN NULL ELSE 'other' END,
              'leisure_' || CASE WHEN leisure IN ('swimming_pool', 'water_park', 'miniature_golf', 'golf_course', 'fitness_centre', 'sports_centre', 'stadium', 'track',
                                                  'pitch', 'playground', 'park', 'recreation_ground', 'common', 'garden', 'nature_reserve', 'marina',
                                                  'picnic_table', 'dog_park') THEN leisure ELSE NULL END,
              'power_' || CASE WHEN power IN ('plant', 'station', 'generator', 'sub_station', 'substation') THEN power ELSE NULL END,
              'landuse_' || CASE WHEN landuse IN ('reservoir', 'basin', 'recreation_ground', 'village_green', 'quarry', 'vineyard', 'orchard', 'cemetery',
                                                  'residential', 'garages', 'meadow', 'grass', 'allotments', 'forest', 'farmyard', 'farmland',
                                                  'greenhouse_horticulture', 'retail', 'industrial', 'railway', 'commercial', 'brownfield', 'landfill',
                                                  'construction', 'military', 'plant_nursery') THEN landuse ELSE NULL END,
              'man_made_' || CASE WHEN man_made IN ('lighthouse', 'windmill', 'mast', 'water_tower', 'pier', 'breakwater', 'groyne', 'obelisk') THEN man_made ELSE NULL END,
              'natural_' || CASE WHEN "natural" IN ('wood', 'water', 'mud', 'wetland', 'marsh', 'bay', 'spring', 'scree', 'shingle', 'bare_rock', 'sand', 'heath',
                                                    'grassland', 'scrub', 'beach', 'shoal', 'reef', 'glacier') THEN "natural" ELSE NULL END,
              'place_' || CASE WHEN place IN ('island', 'islet') THEN place ELSE NULL END,
              'military_' || CASE WHEN military IN ('danger_area') THEN military ELSE NULL END,
              'historic_' || CASE WHEN historic IN ('memorial', 'monument', 'archaeological_site') THEN historic ELSE NULL END,
              'highway_' || CASE WHEN highway IN ('services', 'rest_area', 'bus_stop', 'elevator', 'ford') THEN highway ELSE NULL END,
              'boundary_' || CASE WHEN boundary IN ('national_park') THEN boundary ELSE NULL END,
              'waterway_' || CASE WHEN waterway IN ('dam') THEN waterway ELSE NULL END,
              'tourism_' || CASE WHEN tourism IN ('viewpoint', 'attraction') THEN tourism ELSE NULL END
            ) AS feature,
            access,
            name,
            operator,
            ref,
            way_area,
            CASE WHEN building = 'no' OR building IS NULL THEN 'no' ELSE 'yes' END AS is_building
          FROM planet_osm_polygon
          -- The upcoming where clause is needed for performance only, as the CASE statements would end up doing the equivalent filtering
          WHERE (aeroway IN ('gate', 'apron', 'helipad', 'aerodrome')
              OR tourism IN ('artwork', 'alpine_hut', 'hotel', 'motel', 'hostel', 'chalet', 'wilderness_hut', 'guest_house', 'camp_site', 'caravan_site', 'theme_park',
                             'museum', 'viewpoint', 'attraction', 'zoo', 'information', 'picnic_site')
              OR amenity IS NOT NULL -- skip checking a huge list and use a null check
              OR shop IS NOT NULL
              OR leisure IS NOT NULL
              OR landuse IS NOT NULL
              OR man_made IN ('lighthouse', 'windmill', 'mast', 'water_tower', 'pier', 'breakwater', 'groyne', 'obelisk')
              OR "natural" IS NOT NULL
              OR place IN ('island', 'islet')
              OR military IN ('danger_area')
              OR historic IN ('memorial', 'monument', 'archaeological_site')
              OR highway IN ('services', 'rest_area', 'bus_stop', 'elevator', 'ford')
              OR power IN ('plant', 'station', 'generator', 'sub_station', 'substation')
              OR boundary IN ('national_park')
              OR waterway = 'dam')
            AND (name IS NOT NULL
                 OR (ref IS NOT NULL AND aeroway IN ('gate'))
                )
              --AND way && !bbox!
          ORDER BY way_area DESC;


-- id: text-line
-- minzoom: 10
-- maxzoom: 22
        SELECT
          way,
            NULL as way_pixels,
            COALESCE('man_made_' || man_made, 'waterway_' || waterway, 'natural_' || "natural") AS feature,
            access,
            name,
            operator,
            ref,
            NULL AS way_area,
            CASE WHEN building = 'no' OR building IS NULL THEN 'no' ELSE 'yes' END AS is_building
          FROM planet_osm_line
          WHERE (man_made IN ('pier', 'breakwater', 'groyne', 'embankment')
              OR waterway IN ('dam', 'weir')
              OR "natural" IN ('cliff'))
            AND name IS NOT NULL;


-- id: text-point
-- minzoom: 10
-- maxzoom: 22
        SELECT
            way,
            way_pixels,
            feature,
            access,
            CONCAT(
                name,
                CASE WHEN name IS NOT NULL AND elevation IS NOT NULL THEN E'\n' ELSE NULL END,
                CASE WHEN elevation IS NOT NULL THEN CONCAT(REPLACE(ROUND(elevation)::TEXT, '-', U&'\2212'), U&'\00A0', 'm') ELSE NULL END
            ) AS name,
            CASE
              WHEN "natural" IN ('peak', 'volcano', 'saddle') THEN elevation
              ELSE NULL
            END AS score,
            operator,
            ref,
            way_area,
            is_building
          FROM
            (SELECT
                way,
                NULL AS way_pixels,
                COALESCE(
                  'aeroway_' || CASE WHEN aeroway IN ('gate', 'apron', 'helipad', 'aerodrome') THEN aeroway ELSE NULL END,
                  'tourism_' || CASE WHEN tourism IN ('artwork', 'alpine_hut', 'hotel', 'motel', 'hostel', 'chalet', 'wilderness_hut', 'guest_house', 'camp_site', 'caravan_site',
                                                      'theme_park', 'museum', 'zoo', 'information', 'picnic_site') THEN tourism ELSE NULL END,
                  'amenity_' || CASE WHEN amenity IN ('pub', 'restaurant', 'food_court', 'cafe', 'fast_food', 'biergarten', 'bar', 'library', 'theatre',
                                                      'courthouse', 'townhall', 'cinema', 'clinic', 'community_centre', 'parking', 'bicycle_parking',
                                                      'motorcycle_parking', 'police', 'fire_station', 'fountain', 'place_of_worship', 'grave_yard', 'shelter', 'bank',
                                                      'embassy', 'fuel', 'bus_station', 'prison', 'university', 'school', 'college', 'kindergarten', 'hospital',
                                                      'ice_cream', 'pharmacy', 'doctors', 'dentist', 'atm', 'bicycle_rental', 'car_rental',
                                                      'car_wash', 'post_box', 'post_office', 'recycling', 'telephone', 'emergency_phone', 'toilets', 'taxi',
                                                      'drinking_water', 'hunting_stand', 'nightclub', 'veterinary', 'social_facility',
                                                      'charging_station', 'arts_centre') THEN amenity ELSE NULL END,
                  'shop_' || CASE WHEN shop IN ('supermarket', 'bag','bakery', 'beauty', 'books', 'butcher', 'clothes', 'computer', 'confectionery', 'fashion',
                                                'convenience', 'department_store', 'doityourself', 'hardware', 'fishmonger', 'florist', 'garden_centre', 'hairdresser',
                                                'hifi', 'ice_cream', 'car', 'car_repair', 'bicycle', 'mall', 'pet', 'photo', 'photo_studio', 'photography',
                                                'seafood', 'shoes', 'alcohol', 'gift', 'furniture', 'kiosk', 'mobile_phone', 'motorcycle', 'musical_instrument',
                                                'newsagent', 'optician', 'jewelry', 'jewellery', 'electronics', 'chemist', 'toys', 'travel_agency', 'car_parts',
                                                'greengrocer', 'farm', 'stationery', 'laundry', 'dry_cleaning', 'beverages', 'perfumery', 'cosmetics',
                                                'variety_store', 'wine', 'outdoor', 'copyshop', 'sports', 'deli', 'tobacco', 'art', 'tea', 'coffee') THEN shop
                                  WHEN shop IN ('no', 'vacant', 'closed', 'disused', 'empty') OR shop IS NULL THEN NULL ELSE 'other' END,
                  'leisure_' || CASE WHEN leisure IN ('swimming_pool', 'water_park', 'miniature_golf', 'golf_course', 'fitness_centre', 'sports_centre', 'stadium', 'track',
                                                      'pitch','playground', 'park', 'recreation_ground', 'common', 'garden', 'nature_reserve', 'marina',
                                                      'slipway', 'picnic_table', 'dog_park') THEN leisure ELSE NULL END,
                  'power_' || CASE WHEN power IN ('plant', 'station', 'generator', 'sub_station', 'substation') THEN power ELSE NULL END,
                  'landuse_' || CASE WHEN landuse IN ('reservoir', 'basin', 'recreation_ground', 'village_green', 'quarry', 'vineyard', 'orchard', 'cemetery',
                                                      'residential', 'garages', 'meadow', 'grass', 'allotments', 'forest', 'farmyard', 'farmland',
                                                      'greenhouse_horticulture', 'retail', 'industrial', 'railway', 'commercial', 'brownfield', 'landfill',
                                                      'construction', 'military', 'plant_nursery') THEN landuse ELSE NULL END,
                  'man_made_' || CASE WHEN man_made IN ('lighthouse', 'windmill', 'mast', 'water_tower', 'obelisk') THEN man_made ELSE NULL END,
                  'natural_' || CASE WHEN "natural" IN ('wood', 'peak', 'volcano', 'saddle', 'cave_entrance', 'water', 'mud', 'wetland', 'marsh', 'bay', 'spring',
                                                        'scree', 'shingle', 'bare_rock', 'sand', 'heath', 'grassland', 'scrub', 'beach', 'glacier', 'tree')
                                                        THEN "natural" ELSE NULL END,
                  'place_' || CASE WHEN place IN ('island', 'islet') THEN place ELSE NULL END,
                  'military_' || CASE WHEN military IN ('danger_area') THEN military ELSE NULL END,
                  'historic_' || CASE WHEN historic IN ('memorial', 'monument', 'archaeological_site') THEN historic ELSE NULL END,
                  'highway_' || CASE WHEN highway IN ('services', 'rest_area', 'bus_stop', 'elevator', 'ford') THEN highway ELSE NULL END,
                  'boundary_' || CASE WHEN boundary IN ('national_park') THEN boundary ELSE NULL END,
                  'waterway_' || CASE WHEN waterway IN ('dam', 'weir') THEN waterway ELSE NULL END,
                  'tourism_' || CASE WHEN tourism IN ('viewpoint', 'attraction') THEN tourism ELSE NULL END,
                  'man_made_' || CASE WHEN man_made IN ('cross') THEN man_made ELSE NULL END,
                  'historic_' || CASE WHEN historic IN ('wayside_cross') THEN historic ELSE NULL END
                ) AS feature,
                access,
                name,
                CASE
                  WHEN "natural" IN ('peak', 'volcano', 'saddle') OR tourism = 'alpine_hut' OR amenity = 'shelter' THEN
                    CASE
                      WHEN ele ~ '^-?\d{1,4}(\.\d+)?$' THEN ele::NUMERIC
                      ELSE NULL
                    END
                  ELSE NULL
                END AS elevation,
                "natural",
                operator,
                ref,
                NULL AS way_area,
                CASE WHEN building = 'no' OR building IS NULL THEN 'no' ELSE 'yes' END AS is_building
              FROM planet_osm_point
              -- The upcoming where clause is needed for performance only, as the CASE statements would end up doing the equivalent filtering
              WHERE (aeroway IN ('gate', 'apron', 'helipad', 'aerodrome')
                  OR tourism IN ('artwork', 'alpine_hut', 'hotel', 'motel', 'hostel', 'chalet', 'wilderness_hut', 'guest_house', 'camp_site', 'caravan_site', 'theme_park',
                                 'museum', 'viewpoint', 'attraction', 'zoo', 'information', 'picnic_site')
                  OR amenity IS NOT NULL -- skip checking a huge list and use a null check
                  OR shop IS NOT NULL
                  OR leisure IS NOT NULL
                  OR landuse IN ('reservoir', 'basin', 'recreation_ground', 'village_green', 'quarry', 'vineyard', 'orchard', 'cemetery', 'residential',
                                 'garages', 'meadow', 'grass', 'allotments', 'forest', 'farmyard', 'farmland', 'greenhouse_horticulture',
                                 'retail', 'industrial', 'railway', 'commercial', 'brownfield', 'landfill', 'construction', 'military', 'plant_nursery')
                  OR man_made IN ('lighthouse', 'windmill', 'mast', 'water_tower', 'cross', 'obelisk')
                  OR "natural" IS NOT NULL
                  OR place IN ('island', 'islet')
                  OR military IN ('danger_area')
                  OR historic IN ('memorial', 'monument', 'archaeological_site', 'wayside_cross')
                  OR highway IN ('bus_stop', 'services', 'rest_area', 'elevator', 'ford')
                  OR power IN ('plant', 'station', 'generator', 'sub_station', 'substation')
                  OR boundary IN ('national_park')
                  OR waterway IN ('dam', 'weir'))
                AND (name IS NOT NULL
                     OR (ele IS NOT NULL AND ("natural" IN ('peak', 'volcano', 'saddle') OR tourism = 'alpine_hut' OR amenity = 'shelter'))
                     OR (ref IS NOT NULL AND aeroway IN ('gate'))
                    )
              ) AS p
          ORDER BY score DESC NULLS LAST;


-- id: building-text
-- minzoom: 14
-- maxzoom: 22
        SELECT
            name,
            ST_Centroid(ST_Envelope(way)) as way,
            --way_area/NULLIF(!pixel_width!::real*!pixel_height!::real,0) AS way_pixels
            way_area/NULLIF(35::real*36::real,0) AS way_pixels
          FROM planet_osm_polygon
          WHERE building IS NOT NULL
            AND building NOT IN ('no')
            AND name IS NOT NULL
            --AND way && !bbox!
          ORDER BY way_area DESC;


-- id: interpolation
-- minzoom: 17
-- maxzoom: 22
        SELECT
            way
          FROM planet_osm_line
          WHERE "addr:interpolation" IS NOT NULL;


-- id: addresses
-- minzoom: 17
-- maxzoom: 22
        SELECT
            ST_Centroid(ST_Envelope(way)) as way,
            "addr:housenumber" AS addr_housenumber,
            "addr:housename" AS addr_housename,
            --way_area/NULLIF(!pixel_width!::real*!pixel_height!::real,0) AS way_pixels
            way_area/NULLIF(35::real*36::real,0) AS way_pixels
          FROM planet_osm_polygon
          WHERE (("addr:housenumber" IS NOT NULL) OR ("addr:housename" IS NOT NULL))
            AND building IS NOT NULL
            --AND way && !bbox!
        UNION ALL
        SELECT
            way,
            "addr:housenumber" AS addr_housenumber,
            "addr:housename" AS addr_housename,
            NULL AS way_pixels
          FROM planet_osm_point
          WHERE ((("addr:housenumber" IS NOT NULL) OR ("addr:housename" IS NOT NULL))
                --AND way && !bbox!
                )
          ORDER BY way_pixels DESC NULLS LAST;


-- id: water-lines-text
-- minzoom: 13
-- maxzoom: 22
        SELECT
            way,
            waterway,
            lock,
            name,
            intermittent,
            CASE WHEN tunnel IN ('yes', 'culvert') THEN 'yes' ELSE 'no' END AS int_tunnel
          FROM planet_osm_line
          WHERE waterway IN ('river', 'canal', 'derelict_canal', 'stream', 'drain', 'ditch', 'wadi')
            AND (tunnel IS NULL or tunnel != 'culvert')
            AND name IS NOT NULL
          ORDER BY z_order;


-- id: ferry-routes-text
-- minzoom: 13
-- maxzoom: 22
        SELECT
            way,
            name
          FROM planet_osm_line
          WHERE route = 'ferry'
            AND name IS NOT NULL;


-- id: admin-text
-- minzoom: 16
-- maxzoom: 22
        SELECT
            ST_Boundary(way) as way,
            name,
            admin_level
          FROM planet_osm_polygon
          WHERE boundary = 'administrative'
            AND admin_level IN ('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10')
            AND name IS NOT NULL
            --AND way && !bbox!
          ORDER BY admin_level::integer ASC, way_area DESC;


-- id: nature-reserve-text
-- minzoom: 13
-- maxzoom: 22
        SELECT
            ST_Centroid(ST_Envelope(way)) as way,
            name,
            -- way_area/NULLIF(!pixel_width!::real*!pixel_height!::real,0) AS way_pixels
            way_area/NULLIF(35::real*36::real,0) AS way_pixels
          FROM planet_osm_polygon
          WHERE (boundary = 'national_park' OR leisure = 'nature_reserve')
            AND name IS NOT NULL;
            -- AND way && !bbox!


-- id: amenity-low-priority
-- minzoom: 14
-- maxzoom: 22
        SELECT
            way,
            COALESCE(
              'highway_' || CASE WHEN highway IN ('mini_roundabout') THEN highway ELSE NULL END,
              'railway_' || CASE WHEN railway IN ('level_crossing', 'crossing') THEN railway ELSE NULL END,
              'amenity_' || CASE WHEN amenity IN ('parking', 'bicycle_parking', 'motorcycle_parking', 'bench', 'waste_basket') THEN amenity ELSE NULL END,
              'historic_' || CASE WHEN historic IN ('wayside_cross') THEN historic ELSE NULL END,
              'man_made_' || CASE WHEN man_made IN ('cross') THEN man_made ELSE NULL END,
              'barrier_' || CASE WHEN barrier IN ('bollard', 'gate', 'lift_gate', 'swing_gate', 'block') THEN barrier ELSE NULL END
            )  AS feature,
            access,
            CASE WHEN amenity='waste_basket' THEN 2 ELSE 1 END AS prio
          FROM planet_osm_point p
          WHERE highway IN ('mini_roundabout')
             OR railway IN ('level_crossing', 'crossing')
             OR amenity IN ('parking', 'bicycle_parking', 'motorcycle_parking', 'bench', 'waste_basket')
             OR historic IN ('wayside_cross')
             OR man_made IN ('cross')
             OR barrier IN ('bollard', 'gate', 'lift_gate', 'swing_gate', 'block')
          ORDER BY prio;


-- id: amenity-low-priority-poly
-- minzoom: 14
-- maxzoom: 22
        SELECT
            way,
            COALESCE(
              'amenity_' || CASE WHEN amenity IN ('parking', 'bicycle_parking', 'motorcycle_parking') THEN amenity ELSE NULL END,
              'barrier_' || CASE WHEN barrier IN ('bollard', 'gate', 'lift_gate', 'swing_gate', 'block') THEN barrier ELSE NULL END
            )  AS feature,
            access
          FROM planet_osm_polygon p
          WHERE amenity IN ('parking', 'bicycle_parking', 'motorcycle_parking')
             OR barrier IN ('bollard', 'gate', 'lift_gate', 'swing_gate', 'block');
