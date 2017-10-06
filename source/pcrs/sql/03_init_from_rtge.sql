

-- exemple concret d'emporte-piece pour initialiser le pcrs
-- emporte-piece = case
-- pieces à decouper = VOIE_L_BORDREV
-- destination = LimiteVoiriePCRS

truncate a_pcrs."LimiteVoiriePCRS";

insert into a_pcrs."LimiteVoiriePCRS"
select
  a_pcrs."EmpriseEchangePCRS".complement || '-' || a_rtge."tmp_ligne"."entityhandle" || '-' || a_rtge."tmp_ligne"."gid" as "idObjet",
  '005' as "precisionAltimetrique",
  '005' as "precisionPlanimetrique",
  date '2017-09-04' as "dateLeve",
  'VLR' as "producteur",
  '01' as "qualiteCategorisation",
  '03' as thematique,
  --st_asewkt(st_intersection(st_setsrid(a_rtge."dxf_autre_l".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)) as geometrie
  st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie) as geometrie
from a_rtge."tmp_ligne",
     a_pcrs."EmpriseEchangePCRS"
where st_setsrid(a_rtge."tmp_ligne".shape,3946) && a_pcrs."EmpriseEchangePCRS".geometrie
  and a_rtge."tmp_ligne".layer = 'VOIE_L_BORDREV'
  and a_pcrs."EmpriseEchangePCRS".complement = 'CDA-46-00197-01045-16-B-22';

-- pieces à decouper = VOIE_L_BORDURE
-- destination = LimiteVoiriePCRS

insert into a_pcrs."LimiteVoiriePCRS"
select
  a_pcrs."EmpriseEchangePCRS".complement || '-' || a_rtge."tmp_ligne"."entityhandle" || '-' || a_rtge."tmp_ligne"."gid" as "idObjet",
  '005' as "precisionAltimetrique",
  '005' as "precisionPlanimetrique",
  date '2017-09-04' as "dateLeve",
  'VLR' as "producteur",
  '01' as "qualiteCategorisation",
  '03' as thematique,
  --st_asewkt(st_intersection(st_setsrid(a_rtge."dxf_autre_l".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)) as geometrie
  st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie) as geometrie
from a_rtge."tmp_ligne",
     a_pcrs."EmpriseEchangePCRS"
where st_setsrid(a_rtge."tmp_ligne".shape,3946) && a_pcrs."EmpriseEchangePCRS".geometrie
  and a_rtge."tmp_ligne".layer = 'VOIE_L_BORDURE'
  and a_pcrs."EmpriseEchangePCRS".complement = 'CDA-46-00197-01045-16-B-22';


-- pieces à decouper = FDP_L_MURPLEIN
-- destination = MurPCRS

truncate a_pcrs."MurPCRS";


insert into a_pcrs."MurPCRS"
select
  a_pcrs."EmpriseEchangePCRS".complement || '-' || a_rtge."tmp_ligne"."entityhandle" || '-' || a_rtge."tmp_ligne"."gid" as "idObjet",
  '005' as "precisionAltimetrique",
  '005' as "precisionPlanimetrique",
  date '2017-09-04' as "dateLeve",
  'VLR' as "producteur",
  '01' as "qualiteCategorisation",
  '05' as thematique,
  '01' as "typeMur",
  st_asewkt(st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)) as geometrie,
  st_intersection(st_setsrid(a_rtge."tmp_ligne".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie) as geometrie
from a_rtge."tmp_ligne",
     a_pcrs."EmpriseEchangePCRS"
where st_setsrid(a_rtge."tmp_ligne".shape,3946) && a_pcrs."EmpriseEchangePCRS".geometrie
  and a_rtge."tmp_ligne".layer = 'FDP_L_MURPLEIN'
  and a_pcrs."EmpriseEchangePCRS".complement = 'CDA-46-00197-01045-16-B-22';
