﻿--
-- Creation des schemas pour la base sandbox
--

-- 17
--CREATE SCHEMA IF NOT EXISTS "CDA" AUTHORIZATION "CDA";
--CREATE SCHEMA IF NOT EXISTS "Departement" AUTHORIZATION "Departement";
--CREATE SCHEMA IF NOT EXISTS "DGFiP" AUTHORIZATION "DGFiP";
--CREATE SCHEMA IF NOT EXISTS "erdf" AUTHORIZATION "erdf";
--CREATE SCHEMA IF NOT EXISTS "SDE" AUTHORIZATION "SDE";
--CREATE SCHEMA IF NOT EXISTS "SDEER" AUTHORIZATION "SDEER";
--CREATE SCHEMA IF NOT EXISTS "Soluris" AUTHORIZATION "Soluris";
--CREATE SCHEMA IF NOT EXISTS "VLR" AUTHORIZATION "VLR";

CREATE SCHEMA IF NOT EXISTS "CDA__PlanProjet" AUTHORIZATION "CDA";
CREATE SCHEMA IF NOT EXISTS "CDA__PlanExecution" AUTHORIZATION "CDA";
CREATE SCHEMA IF NOT EXISTS "CDA__PlanTopoNonControle" AUTHORIZATION "CDA";
CREATE SCHEMA IF NOT EXISTS "CDA__Controle" AUTHORIZATION "CDA";
CREATE SCHEMA IF NOT EXISTS "CDA__PlanTopoControle" AUTHORIZATION "CDA";
CREATE SCHEMA IF NOT EXISTS "Departement__PlanProjet" AUTHORIZATION "Departement";
CREATE SCHEMA IF NOT EXISTS "Departement__PlanExecution" AUTHORIZATION "Departement";
CREATE SCHEMA IF NOT EXISTS "Departement__PlanTopoNonControle" AUTHORIZATION "Departement";
CREATE SCHEMA IF NOT EXISTS "Departement__Controle" AUTHORIZATION "Departement";
CREATE SCHEMA IF NOT EXISTS "Departement__PlanTopoControle" AUTHORIZATION "Departement";
CREATE SCHEMA IF NOT EXISTS "DGFiP__PlanProjet" AUTHORIZATION "DGFiP";
CREATE SCHEMA IF NOT EXISTS "DGFiP__PlanExecution" AUTHORIZATION "DGFiP";
CREATE SCHEMA IF NOT EXISTS "DGFiP__PlanTopoNonControle" AUTHORIZATION "DGFiP";
CREATE SCHEMA IF NOT EXISTS "DGFiP__Controle" AUTHORIZATION "DGFiP";
CREATE SCHEMA IF NOT EXISTS "DGFiP__PlanTopoControle" AUTHORIZATION "DGFiP";
CREATE SCHEMA IF NOT EXISTS "ERDF__PlanProjet" AUTHORIZATION "ERDF";
CREATE SCHEMA IF NOT EXISTS "ERDF__PlanExecution" AUTHORIZATION "ERDF";
CREATE SCHEMA IF NOT EXISTS "ERDF__PlanTopoNonControle" AUTHORIZATION "ERDF";
CREATE SCHEMA IF NOT EXISTS "ERDF__Controle" AUTHORIZATION "ERDF";
CREATE SCHEMA IF NOT EXISTS "ERDF__PlanTopoControle" AUTHORIZATION "ERDF";
CREATE SCHEMA IF NOT EXISTS "SDE__PlanProjet" AUTHORIZATION "SDE";
CREATE SCHEMA IF NOT EXISTS "SDE__PlanExecution" AUTHORIZATION "SDE";
CREATE SCHEMA IF NOT EXISTS "SDE__PlanTopoNonControle" AUTHORIZATION "SDE";
CREATE SCHEMA IF NOT EXISTS "SDE__Controle" AUTHORIZATION "SDE";
CREATE SCHEMA IF NOT EXISTS "SDE__PlanTopoControle" AUTHORIZATION "SDE";
CREATE SCHEMA IF NOT EXISTS "SDEER__PlanProjet" AUTHORIZATION "SDEER";
CREATE SCHEMA IF NOT EXISTS "SDEER__PlanExecution" AUTHORIZATION "SDEER";
CREATE SCHEMA IF NOT EXISTS "SDEER__PlanTopoNonControle" AUTHORIZATION "SDEER";
CREATE SCHEMA IF NOT EXISTS "SDEER__Controle" AUTHORIZATION "SDEER";
CREATE SCHEMA IF NOT EXISTS "SDEER__PlanTopoControle" AUTHORIZATION "SDEER";
CREATE SCHEMA IF NOT EXISTS "Soluris__PlanProjet" AUTHORIZATION "Soluris";
CREATE SCHEMA IF NOT EXISTS "Soluris__PlanExecution" AUTHORIZATION "Soluris";
CREATE SCHEMA IF NOT EXISTS "Soluris__PlanTopoNonControle" AUTHORIZATION "Soluris";
CREATE SCHEMA IF NOT EXISTS "Soluris__Controle" AUTHORIZATION "Soluris";
CREATE SCHEMA IF NOT EXISTS "Soluris__PlanTopoControle" AUTHORIZATION "Soluris";
CREATE SCHEMA IF NOT EXISTS "VLR__PlanProjet" AUTHORIZATION "VLR";
CREATE SCHEMA IF NOT EXISTS "VLR__PlanExecution" AUTHORIZATION "VLR";
CREATE SCHEMA IF NOT EXISTS "VLR__PlanTopoNonControle" AUTHORIZATION "VLR";
CREATE SCHEMA IF NOT EXISTS "VLR__Controle" AUTHORIZATION "VLR";
CREATE SCHEMA IF NOT EXISTS "VLR__PlanTopoControle" AUTHORIZATION "VLR";

show search_path;

-- 17_VLR
--CREATE SCHEMA IF NOT EXISTS PCRS_VLR_Carto AUTHORIZATION Fred;
--CREATE SCHEMA IF NOT EXISTS PCRS_VLR_EauPotable;
--CREATE SCHEMA IF NOT EXISTS PCRS_VLR_Eclairage;
--CREATE SCHEMA IF NOT EXISTS PCRS_VLR_VoirieTravaux;
--CREATE SCHEMA IF NOT EXISTS PCRS_VLR_VoiriePluvial;


-- 17_VLR_Carto
--CREATE SCHEMA IF NOT EXISTS PCRS_VLR_Carto_Francois AUTHORIZATION Francois;
--CREATE SCHEMA IF NOT EXISTS PCRS_VLR_Carto_Fred AUTHORIZATION Fred;
--CREATE SCHEMA IF NOT EXISTS PCRS_VLR_Carto_Michel AUTHORIZATION Michel;
--CREATE SCHEMA IF NOT EXISTS PCRS_VLR_Carto_Pascal AUTHORIZATION Pascal;
