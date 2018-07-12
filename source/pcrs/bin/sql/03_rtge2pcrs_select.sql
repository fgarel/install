-- AffleurantSymbolePCRS
insert into "AffleurantSymbolePCRS"
select
  gid as "idObjet",
  '005' as "precisionAltimetrique",
  '005' as "precisionPlanimetrique",
  '21170300400013' as producteur,
  '01' as "qualiteCategorisation",
  '10' as thematique,
  '' as "gestionnaire",
  gid as "idSource",
  '03' as "nature",
  'ASSAEP' as "reseau",
  'b_eauepl' as "source",
  angle as "angleRotation",
  st_setsrid(shape,3946) as geometrie,
  x_scale_factor as "largeur",
  y_scale_factor as "longueur",
  'AFFRON' as "reference"
from tmp_point
where layer='ASSEP_P_AFFRON'
;
-- AffleurantSymbolePCRS
insert into "AffleurantSymbolePCRS"
select
  gid as "idObjet",
  '005' as "precisionAltimetrique",
  '005' as "precisionPlanimetrique",
  '21170300400013' as producteur,
  '01' as "qualiteCategorisation",
  '10' as thematique,
  '' as "gestionnaire",
  gid as "idSource",
  '03' as "nature",
  '00' as "reseau",
  '' as "source",
  angle as "angleRotation",
  st_setsrid(shape,3946) as geometrie,
  x_scale_factor as "largeur",
  y_scale_factor as "longueur",
  'AFFCAR' as "reference"
from tmp_point
where layer='INDET_P_AFFCAR'
;



-- BordurePCRS
insert into "BordurePCRS"
select
  gid as "idObjet",
  '010' as "precisionAltimetrique",
  '010' as "precisionPlanimetrique",
  '21170300400013' as producteur,
  '01' as "qualiteCategorisation",
  '03' as thematique,
  st_setsrid(shape,3946) as geometrie,
  '01' as nature
from tmp_ligne
where layer='VOIE_L_BORDURE'
;

-- ChangementRevetementPCRS
insert into "ChangementRevetementPCRS"
select
  gid as "idObjet",
  '010' as "precisionAltimetrique",
  '010' as "precisionPlanimetrique",
  '21170300400013' as producteur,
  '01' as "qualiteCategorisation",
  '03' as thematique,
  st_setsrid(shape,3946) as geometrie
from tmp_ligne
where layer='VOIE_L_BORDREV'
;

-- FacadePCRS
insert into "FacadePCRS"
select
  gid as "idObjet",
  '999' as "precisionAltimetrique",
  '010' as "precisionPlanimetrique",
  '21170300400013' as producteur,
  '01' as "qualiteCategorisation",
  '02' as thematique,
  st_setsrid(shape,3946) as geometrie
from tmp_ligne
where layer='FDP_L_BATI'
;

-- MarcheEscalierPCRS
insert into "MarcheEscalierPCRS"
select
  gid as "idObjet",
  '010' as "precisionAltimetrique",
  '010' as "precisionPlanimetrique",
  '21170300400013' as producteur,
  '01' as "qualiteCategorisation",
  '02' as thematique,
  st_setsrid(shape,3946) as geometrie,
  '' as symbole
from tmp_ligne
where layer='FDP_L_MURPLEIN' or layer='FDP_L_SEUILPIE'
;


-- MurPCRS
insert into "MurPCRS"
select
  gid as "idObjet",
  '999' as "precisionAltimetrique",
  '010' as "precisionPlanimetrique",
  '21170300400013' as producteur,
  '01' as "qualiteCategorisation",
  '02' as thematique,
  st_setsrid(shape,3946) as geometrie,
  '01' as "typeMur"
from tmp_ligne
where layer='FDP_L_MURPLEIN'
;

-- PointCanevasPCRS
insert into "PointCanevasPCRS"
select
  gid as "idObjet",
  '002' as "precisionAltimetrique",
  '002' as "precisionPlanimetrique",
  '21170300400013' as producteur,
  '01' as "qualiteCategorisation",
  '01' as thematique,
  '' as canevas,
  current_date as "dateCreation",
  '' as "fiche",
  st_setsrid(shape,3946) as geometrie,
  '' as "immatriculation",
  20 as "precisionXY",
  20 as "precisionZ"
from tmp_point_leve
where layer='GEOD_P_STA'
;


-- PointLevePCRS
insert into "PointLevePCRS"
select
  st_setsrid(shape,3946) as geometrie,
  current_date as "horodatage",
  gid as "numeroPoint",
  20 as "precisionXY",
  20 as "precisionZ",
  '21170300400013' as producteur
from tmp_point_leve
where layer='TOPOJIS'
;
