/** Changement du type de la colonne EM_ID_FORMATION_ERP en char(8) */
/** Ajout de la colonne TYP */

-- drop table ENCHAINEMENT_MODULE
--
-- create table ENCHAINEMENT_MODULE (
--    EM_ID                int                  identity,
--    EM_ID_FORMATION_ERP  char(8)              not null,
--    EM_ID_MODULE_ERP     int                  not null,
--    EM_ID_MODULE_PREREQUIS_ERP int                null,
--    EM_TYPE_ENCHAINEMENT varchar(255)		 not null,
--    constraint PK_ENCHAINEMENT_MODULE primary key nonclustered (EM_ID)
-- )
