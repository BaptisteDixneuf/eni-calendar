/** Changement du type de la colonne EM_ID_FORMATION_ERP en char(8) */
/** Ajout de la colonne TYP */

drop table PROGRAMMATION;

create table PROGRAMMATION (
   PR_ID                int                  identity,
   MC_ID                int                  not null,
   CA_ID                varchar(255)         not null,
   PR_ID_COURS_PLANIFIE_ERP int                  null,
   constraint PK_PROGRAMMATION primary key nonclustered (PR_ID)
)
