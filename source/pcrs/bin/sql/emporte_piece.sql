-- select emporte piece sans transfert d'attribut vers les intersections
-- emprise emporte piece = EmpriseEchangePCRS
-- emprise decoupée = Commune

select 
     st_asewkt(a_pcrs."Commune".geometrie) as emprise_a_decouper,
     st_asewkt(a_pcrs."EmpriseEchangePCRS".geometrie) as emprise_emporte_piece,
     st_asewkt(st_intersection(a_pcrs."Commune".geometrie, a_pcrs."EmpriseEchangePCRS".geometrie)) as emprise_intersection,
     st_equals(st_intersection(a_pcrs."Commune".geometrie, a_pcrs."EmpriseEchangePCRS".geometrie) ,a_pcrs."EmpriseEchangePCRS".geometrie) as egalite 
from a_pcrs."Commune",
     a_pcrs."EmpriseEchangePCRS"
     where a_pcrs."Commune".geometrie && a_pcrs."EmpriseEchangePCRS".geometrie;


-- select emporte piece sans transfert d'attribut vers les intersections
-- emprise emporte piece = EmpriseEchangePCRS
-- emprise decoupée = Commune
-- comme exemple, on va transferer le numero de la case (emporte piece) ("EmpriseEchangePCRS".complement)
-- dans un attribut de la "partie de commune" (piece decoupée) (a_pcrs."Commune"."reference")


select 
     a_pcrs."Commune"."codeINSEE",
     a_pcrs."Commune"."nom",
     a_pcrs."Commune"."reference",
     a_pcrs."EmpriseEchangePCRS".complement,
     st_asewkt(st_intersection(a_pcrs."Commune".geometrie, a_pcrs."EmpriseEchangePCRS".geometrie)) as emprise_intersection,
     st_equals(st_intersection(a_pcrs."Commune".geometrie, a_pcrs."EmpriseEchangePCRS".geometrie) ,a_pcrs."EmpriseEchangePCRS".geometrie) as egalite 
from a_pcrs."Commune",
     a_pcrs."EmpriseEchangePCRS"
     where a_pcrs."Commune".geometrie && a_pcrs."EmpriseEchangePCRS".geometrie;


select 
     a_pcrs."Commune"."codeINSEE",
     a_pcrs."Commune"."nom",
     --a_pcrs."Commune"."reference",
     a_pcrs."EmpriseEchangePCRS".complement as "reference",
     --st_asewkt(st_intersection(a_pcrs."Commune".geometrie, a_pcrs."EmpriseEchangePCRS".geometrie)) as emprise_intersection,
     st_intersection(a_pcrs."Commune".geometrie, a_pcrs."EmpriseEchangePCRS".geometrie) as geometrie--,
     --st_equals(st_intersection(a_pcrs."Commune".geometrie, a_pcrs."EmpriseEchangePCRS".geometrie) ,a_pcrs."EmpriseEchangePCRS".geometrie) as egalite 
from a_pcrs."Commune",
     a_pcrs."EmpriseEchangePCRS"
     where a_pcrs."Commune".geometrie && a_pcrs."EmpriseEchangePCRS".geometrie;


-- exemple concret d'emporte-piece pour initialiser le pcrs
-- emporte-piece = case
-- pieces à decouper = limite_voirie


insert into a_pcrs."LimiteVoiriePCRS"
select
  a_pcrs."EmpriseEchangePCRS".complement || '-' || a_rtge."dxf_autre_l"."entityhandle" as "idObjet",
  '005' as "precisionAltimetrique",
  '005' as "precisionPlanimetrique",
  date '2017-09-04' as "dateLeve",
  'vlr' as "producteur",
  '01' as "qualiteCategorisation",
  '01' as thematique,
  --st_asewkt(st_intersection(st_setsrid(a_rtge."dxf_autre_l".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie)) as geometrie
  st_intersection(st_setsrid(a_rtge."dxf_autre_l".shape,3946), a_pcrs."EmpriseEchangePCRS".geometrie) as geometrie
from a_rtge."dxf_autre_l",
     a_pcrs."EmpriseEchangePCRS"
where st_setsrid(a_rtge."dxf_autre_l".shape,3946) && a_pcrs."EmpriseEchangePCRS".geometrie
  and a_pcrs."EmpriseEchangePCRS".complement = 'CDA-46-00197-01045-16-B-22';

