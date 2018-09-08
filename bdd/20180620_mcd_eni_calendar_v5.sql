/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     20/06/2018 16:50:23                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('AUTRE_COURS') and o.name = 'FK_AUTRE_CO_CONTENIR_CALENDRI')
alter table AUTRE_COURS
   drop constraint FK_AUTRE_CO_CONTENIR_CALENDRI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('AUTRE_COURS') and o.name = 'FK_AUTRE_CO_RATTACHER_MODELE_C')
alter table AUTRE_COURS
   drop constraint FK_AUTRE_CO_RATTACHER_MODELE_C
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CALENDRIER') and o.name = 'FK_CALENDRI_AFFECTER_ETAT_CAL')
alter table CALENDRIER
   drop constraint FK_CALENDRI_AFFECTER_ETAT_CAL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CONTRAINTE') and o.name = 'FK_CONTRAIN_APPLIQUER_MODELE_C')
alter table CONTRAINTE
   drop constraint FK_CONTRAIN_APPLIQUER_MODELE_C
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CONTRAINTE') and o.name = 'FK_CONTRAIN_DEFINIR_TYPE_CON')
alter table CONTRAINTE
   drop constraint FK_CONTRAIN_DEFINIR_TYPE_CON
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CONTRAINTE') and o.name = 'FK_CONTRAIN_DISPOSER_CALENDRI')
alter table CONTRAINTE
   drop constraint FK_CONTRAIN_DISPOSER_CALENDRI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DISPENSE') and o.name = 'FK_DISPENSE_COMPORTER_CALENDRI')
alter table DISPENSE
   drop constraint FK_DISPENSE_COMPORTER_CALENDRI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DISPENSE') and o.name = 'FK_DISPENSE_CONSTITUE_MODELE_C')
alter table DISPENSE
   drop constraint FK_DISPENSE_CONSTITUE_MODELE_C
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MODULE_INDEPENDANT') and o.name = 'FK_MODULE_I_ATTRIBUER_MODELE_C')
alter table MODULE_INDEPENDANT
   drop constraint FK_MODULE_I_ATTRIBUER_MODELE_C
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MODULE_INDEPENDANT') and o.name = 'FK_MODULE_I_COMPOSER_CALENDRI')
alter table MODULE_INDEPENDANT
   drop constraint FK_MODULE_I_COMPOSER_CALENDRI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MODULE_SECABLE') and o.name = 'FK_MODULE_S_CONCERNER_DISPENSE')
alter table MODULE_SECABLE
   drop constraint FK_MODULE_S_CONCERNER_DISPENSE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PERMETTRE') and o.name = 'FK_PERMETTR_PERMETTRE_PROGRAMM')
alter table PERMETTRE
   drop constraint FK_PERMETTR_PERMETTRE_PROGRAMM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PERMETTRE') and o.name = 'FK_PERMETTR_PERMETTRE_STATISTI')
alter table PERMETTRE
   drop constraint FK_PERMETTR_PERMETTRE_STATISTI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PROGRAMMATION') and o.name = 'FK_PROGRAMM_DETERMINE_MODELE_C')
alter table PROGRAMMATION
   drop constraint FK_PROGRAMM_DETERMINE_MODELE_C
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PROGRAMMATION') and o.name = 'FK_PROGRAMM_ETABLIR_CALENDRI')
alter table PROGRAMMATION
   drop constraint FK_PROGRAMM_ETABLIR_CALENDRI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TRACE_OPERATION') and o.name = 'FK_TRACE_OP_EFFECTUER_UTILISAT')
alter table TRACE_OPERATION
   drop constraint FK_TRACE_OP_EFFECTUER_UTILISAT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('UTILISATEUR') and o.name = 'FK_UTILISAT_AVOIR_ROLE_UTI')
alter table UTILISATEUR
   drop constraint FK_UTILISAT_AVOIR_ROLE_UTI
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('AUTRE_COURS')
            and   name  = 'RATTACHER_FK'
            and   indid > 0
            and   indid < 255)
   drop index AUTRE_COURS.RATTACHER_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('AUTRE_COURS')
            and   name  = 'CONTENIR_FK'
            and   indid > 0
            and   indid < 255)
   drop index AUTRE_COURS.CONTENIR_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('AUTRE_COURS')
            and   type = 'U')
   drop table AUTRE_COURS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CALENDRIER')
            and   name  = 'AFFECTER_FK'
            and   indid > 0
            and   indid < 255)
   drop index CALENDRIER.AFFECTER_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CALENDRIER')
            and   type = 'U')
   drop table CALENDRIER
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CONTRAINTE')
            and   name  = 'APPLIQUER_FK'
            and   indid > 0
            and   indid < 255)
   drop index CONTRAINTE.APPLIQUER_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CONTRAINTE')
            and   name  = 'DEFINIR_FK'
            and   indid > 0
            and   indid < 255)
   drop index CONTRAINTE.DEFINIR_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CONTRAINTE')
            and   name  = 'DISPOSER_FK'
            and   indid > 0
            and   indid < 255)
   drop index CONTRAINTE.DISPOSER_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CONTRAINTE')
            and   type = 'U')
   drop table CONTRAINTE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DISPENSE')
            and   name  = 'CONSTITUER_FK'
            and   indid > 0
            and   indid < 255)
   drop index DISPENSE.CONSTITUER_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DISPENSE')
            and   name  = 'COMPORTER_FK'
            and   indid > 0
            and   indid < 255)
   drop index DISPENSE.COMPORTER_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DISPENSE')
            and   type = 'U')
   drop table DISPENSE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ENCHAINEMENT_MODULE')
            and   type = 'U')
   drop table ENCHAINEMENT_MODULE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ETAT_CALENDRIER')
            and   type = 'U')
   drop table ETAT_CALENDRIER
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MODELE_CALENDRIER')
            and   type = 'U')
   drop table MODELE_CALENDRIER
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MODULE_INDEPENDANT')
            and   name  = 'ATTRIBUER_FK'
            and   indid > 0
            and   indid < 255)
   drop index MODULE_INDEPENDANT.ATTRIBUER_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MODULE_INDEPENDANT')
            and   name  = 'COMPOSER_FK'
            and   indid > 0
            and   indid < 255)
   drop index MODULE_INDEPENDANT.COMPOSER_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MODULE_INDEPENDANT')
            and   type = 'U')
   drop table MODULE_INDEPENDANT
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MODULE_SECABLE')
            and   name  = 'CONCERNER_FK'
            and   indid > 0
            and   indid < 255)
   drop index MODULE_SECABLE.CONCERNER_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MODULE_SECABLE')
            and   type = 'U')
   drop table MODULE_SECABLE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PERMETTRE')
            and   name  = 'PERMETTRE2_FK'
            and   indid > 0
            and   indid < 255)
   drop index PERMETTRE.PERMETTRE2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PERMETTRE')
            and   name  = 'PERMETTRE_FK'
            and   indid > 0
            and   indid < 255)
   drop index PERMETTRE.PERMETTRE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PERMETTRE')
            and   type = 'U')
   drop table PERMETTRE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PROGRAMMATION')
            and   name  = 'DETERMINER_FK'
            and   indid > 0
            and   indid < 255)
   drop index PROGRAMMATION.DETERMINER_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PROGRAMMATION')
            and   name  = 'ETABLIR_FK'
            and   indid > 0
            and   indid < 255)
   drop index PROGRAMMATION.ETABLIR_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PROGRAMMATION')
            and   type = 'U')
   drop table PROGRAMMATION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ROLE_UTILISATEUR')
            and   type = 'U')
   drop table ROLE_UTILISATEUR
go

if exists (select 1
            from  sysobjects
           where  id = object_id('STATISTIQUE')
            and   type = 'U')
   drop table STATISTIQUE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TRACE_OPERATION')
            and   name  = 'EFFECTUER_FK'
            and   indid > 0
            and   indid < 255)
   drop index TRACE_OPERATION.EFFECTUER_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TRACE_OPERATION')
            and   type = 'U')
   drop table TRACE_OPERATION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TYPE_CONTRAINTE')
            and   type = 'U')
   drop table TYPE_CONTRAINTE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('UTILISATEUR')
            and   name  = 'AVOIR_FK'
            and   indid > 0
            and   indid < 255)
   drop index UTILISATEUR.AVOIR_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('UTILISATEUR')
            and   type = 'U')
   drop table UTILISATEUR
go

/*==============================================================*/
/* Table: AUTRE_COURS                                           */
/*==============================================================*/
create table AUTRE_COURS (
   AC_ID                int                  identity,
   MC_ID                int                  not null,
   CA_ID                int                  not null,
   AC_ID_AUTRES_COURS_ERP int                  null,
   constraint PK_AUTRE_COURS primary key nonclustered (AC_ID)
)
go

/*==============================================================*/
/* Index: CONTENIR_FK                                           */
/*==============================================================*/
create index CONTENIR_FK on AUTRE_COURS (
CA_ID ASC
)
go

/*==============================================================*/
/* Index: RATTACHER_FK                                          */
/*==============================================================*/
create index RATTACHER_FK on AUTRE_COURS (
MC_ID ASC
)
go

/*==============================================================*/
/* Table: CALENDRIER                                            */
/*==============================================================*/
create table CALENDRIER (
   CA_ID                int                  identity,
   EC_ID                int                  not null,
   CA_ID_STAGIAIRE_ERP  int                  null,
   CA_ID_ENTREPRISE_ERP int                  null,
   CA_NOM_CALENDRIER    varchar(255)         null,
   CA_DATE_CREATION     datetime             null,
   CA_DATE_MAJ          datetime             null,
   CA_ID_LIEU_FORMATION_ERP int                  null,
   CA_ID_FORMATION_ERP  int                  null,
   CA_DATE_DEBUT_MAX    datetime             null,
   CA_DATE_FIN_MAX      datetime             null,
   constraint PK_CALENDRIER primary key nonclustered (CA_ID)
)
go

/*==============================================================*/
/* Index: AFFECTER_FK                                           */
/*==============================================================*/
create index AFFECTER_FK on CALENDRIER (
EC_ID ASC
)
go

/*==============================================================*/
/* Table: CONTRAINTE                                            */
/*==============================================================*/
create table CONTRAINTE (
   CO_ID                int                  identity,
   TC_ID                int                  not null,
   CA_ID                int                  not null,
   MC_ID                int                  not null,
   CO_LIBELLE           varchar(255)         null,
   CO_MOTIF             varchar(255)         null default NULL,
   CO_NB_SEMAINES       int                  null default NULL,
   CO_DATE_DEBUT        datetime             null default NULL,
   CO_DATE_FIN          datetime             null default NULL,
   constraint PK_CONTRAINTE primary key nonclustered (CO_ID)
)
go

/*==============================================================*/
/* Index: DISPOSER_FK                                           */
/*==============================================================*/
create index DISPOSER_FK on CONTRAINTE (
CA_ID ASC
)
go

/*==============================================================*/
/* Index: DEFINIR_FK                                            */
/*==============================================================*/
create index DEFINIR_FK on CONTRAINTE (
TC_ID ASC
)
go

/*==============================================================*/
/* Index: APPLIQUER_FK                                          */
/*==============================================================*/
create index APPLIQUER_FK on CONTRAINTE (
MC_ID ASC
)
go

/*==============================================================*/
/* Table: DISPENSE                                              */
/*==============================================================*/
create table DISPENSE (
   DI_ID                int                  identity,
   CA_ID                int                  not null,
   MC_ID                int                  not null,
   DI_ID_MODULE_ERP     int                  null,
   constraint PK_DISPENSE primary key nonclustered (DI_ID)
)
go

/*==============================================================*/
/* Index: COMPORTER_FK                                          */
/*==============================================================*/
create index COMPORTER_FK on DISPENSE (
CA_ID ASC
)
go

/*==============================================================*/
/* Index: CONSTITUER_FK                                         */
/*==============================================================*/
create index CONSTITUER_FK on DISPENSE (
MC_ID ASC
)
go

/*==============================================================*/
/* Table: ENCHAINEMENT_MODULE                                   */
/*==============================================================*/
create table ENCHAINEMENT_MODULE (
   EM_ID                int                  identity,
   EM_ID_FORMATION_ERP  char(8)              not null,
   EM_ID_MODULE_ERP     int                  not null,
   EM_ID_MODULE_PREREQUIS_ERP int                null,
   EM_TYPE_ENCHAINEMENT varchar(255)		 not null,
   constraint PK_ENCHAINEMENT_MODULE primary key nonclustered (EM_ID)
)
go

/*==============================================================*/
/* Table: ETAT_CALENDRIER                                       */
/*==============================================================*/
create table ETAT_CALENDRIER (
   EC_ID                int                  identity,
   EC_LIBELLE_ETAT      varchar(255)         null,
   constraint PK_ETAT_CALENDRIER primary key nonclustered (EC_ID)
)
go

/*==============================================================*/
/* Table: MODELE_CALENDRIER                                     */
/*==============================================================*/
create table MODELE_CALENDRIER (
   MC_ID                int                  identity,
   MC_NOM_CALENDRIER    varchar(255)         null,
   MC_DATE_CREATION     datetime             null,
   MC_DATE_MAJ          datetime             null,
   MC_ID_LIEU_FORMATION_ERP int                  null,
   MC_ID_FORMATION_ERP  int                  null,
   MC_DATE_DEBUT_MAX    datetime             null,
   MC_DATE_FIN_MAX      datetime             null,
   constraint PK_MODELE_CALENDRIER primary key nonclustered (MC_ID)
)
go

/*==============================================================*/
/* Table: MODULE_INDEPENDANT                                    */
/*==============================================================*/
create table MODULE_INDEPENDANT (
   MI_ID                int                  identity,
   CA_ID                int                  null,
   MC_ID                int                  null,
   MI_LIBELLE           varchar(255)         null,
   MI_DUREE             int                  null,
   MI_LIBELLE_COURT     varchar(255)         null,
   MI_LIEU_FORMATION    varchar(255)         null,
   MI_DATE_DEBUT        datetime             null,
   MI_DATE_FIN          datetime             null,
   constraint PK_MODULE_INDEPENDANT primary key nonclustered (MI_ID)
)
go

/*==============================================================*/
/* Index: COMPOSER_FK                                           */
/*==============================================================*/
create index COMPOSER_FK on MODULE_INDEPENDANT (
CA_ID ASC
)
go

/*==============================================================*/
/* Index: ATTRIBUER_FK                                          */
/*==============================================================*/
create index ATTRIBUER_FK on MODULE_INDEPENDANT (
MC_ID ASC
)
go

/*==============================================================*/
/* Table: MODULE_SECABLE                                        */
/*==============================================================*/
create table MODULE_SECABLE (
   MS_ID                int                  identity,
   MS_ID_FORMATION_ERP  int                  not null,
   MS_ID_MODULE_ERP     int                  not null,
   DI_ID                int                  not null,
   MS_POSITION          int                  null,
   MS_LIBELLE_SOUS_MODULE varchar(255)         null,
   MS_DUREE_SOUS_MODULE int                  null,
   constraint PK_MODULE_SECABLE primary key nonclustered (MS_ID, MS_ID_FORMATION_ERP, MS_ID_MODULE_ERP)
)
go

/*==============================================================*/
/* Index: CONCERNER_FK                                          */
/*==============================================================*/
create index CONCERNER_FK on MODULE_SECABLE (
DI_ID ASC
)
go

/*==============================================================*/
/* Table: PERMETTRE                                             */
/*==============================================================*/
create table PERMETTRE (
   PR_ID                int                  not null,
   ST_ID                int                  not null,
   constraint PK_PERMETTRE primary key (PR_ID, ST_ID)
)
go

/*==============================================================*/
/* Index: PERMETTRE_FK                                          */
/*==============================================================*/
create index PERMETTRE_FK on PERMETTRE (
PR_ID ASC
)
go

/*==============================================================*/
/* Index: PERMETTRE2_FK                                         */
/*==============================================================*/
create index PERMETTRE2_FK on PERMETTRE (
ST_ID ASC
)
go

/*==============================================================*/
/* Table: PROGRAMMATION                                         */
/*==============================================================*/
create table PROGRAMMATION (
   PR_ID                int                  identity,
   MC_ID                int                  not null,
   CA_ID                int                  not null,
   PR_ID_COURS_PLANIFIE_ERP int                  null,
   constraint PK_PROGRAMMATION primary key nonclustered (PR_ID)
)
go

/*==============================================================*/
/* Index: ETABLIR_FK                                            */
/*==============================================================*/
create index ETABLIR_FK on PROGRAMMATION (
CA_ID ASC
)
go

/*==============================================================*/
/* Index: DETERMINER_FK                                         */
/*==============================================================*/
create index DETERMINER_FK on PROGRAMMATION (
MC_ID ASC
)
go

/*==============================================================*/
/* Table: ROLE_UTILISATEUR                                      */
/*==============================================================*/
create table ROLE_UTILISATEUR (
   RU_ID                int                  identity,
   RU_LIBELLE_ROLE      varchar(255)         null,
   constraint PK_ROLE_UTILISATEUR primary key nonclustered (RU_ID)
)
go

/*==============================================================*/
/* Table: STATISTIQUE                                           */
/*==============================================================*/
create table STATISTIQUE (
   ST_ID                int                  identity,
   ST_DATE              datetime             null,
   ST_NB_CREATIONS      int                  null,
   ST_NB_MODIFICATIONS  int                  null,
   constraint PK_STATISTIQUE primary key nonclustered (ST_ID)
)
go

/*==============================================================*/
/* Table: TRACE_OPERATION                                       */
/*==============================================================*/
create table TRACE_OPERATION (
   TO_ID                int                  identity,
   UT_ID                int                  not null,
   TO_DATE_TRACE        datetime             null,
   TO_ACTION            varchar(255)         null,
   constraint PK_TRACE_OPERATION primary key nonclustered (TO_ID)
)
go

/*==============================================================*/
/* Index: EFFECTUER_FK                                          */
/*==============================================================*/
create index EFFECTUER_FK on TRACE_OPERATION (
UT_ID ASC
)
go

/*==============================================================*/
/* Table: TYPE_CONTRAINTE                                       */
/*==============================================================*/
create table TYPE_CONTRAINTE (
   TC_ID                int                  identity,
   TC_LIBELLE           varchar(255)         null,
   constraint PK_TYPE_CONTRAINTE primary key nonclustered (TC_ID)
)
go

/*==============================================================*/
/* Table: UTILISATEUR                                           */
/*==============================================================*/
create table UTILISATEUR (
   UT_ID                int                  identity,
   RU_ID                int                  not null,
   UT_NOM               varchar(255)         null,
   UT_PRENOM            varchar(255)         null,
   UT_EMAIL             varchar(255)         null,
   UT_PASSWORD          varchar(255)         null,
   constraint PK_UTILISATEUR primary key nonclustered (UT_ID)
)
go

/*==============================================================*/
/* Index: AVOIR_FK                                              */
/*==============================================================*/
create index AVOIR_FK on UTILISATEUR (
RU_ID ASC
)
go

alter table AUTRE_COURS
   add constraint FK_AUTRE_CO_CONTENIR_CALENDRI foreign key (CA_ID)
      references CALENDRIER (CA_ID)
go

alter table AUTRE_COURS
   add constraint FK_AUTRE_CO_RATTACHER_MODELE_C foreign key (MC_ID)
      references MODELE_CALENDRIER (MC_ID)
go

alter table CALENDRIER
   add constraint FK_CALENDRI_AFFECTER_ETAT_CAL foreign key (EC_ID)
      references ETAT_CALENDRIER (EC_ID)
go

alter table CONTRAINTE
   add constraint FK_CONTRAIN_APPLIQUER_MODELE_C foreign key (MC_ID)
      references MODELE_CALENDRIER (MC_ID)
go

alter table CONTRAINTE
   add constraint FK_CONTRAIN_DEFINIR_TYPE_CON foreign key (TC_ID)
      references TYPE_CONTRAINTE (TC_ID)
go

alter table CONTRAINTE
   add constraint FK_CONTRAIN_DISPOSER_CALENDRI foreign key (CA_ID)
      references CALENDRIER (CA_ID)
go

alter table DISPENSE
   add constraint FK_DISPENSE_COMPORTER_CALENDRI foreign key (CA_ID)
      references CALENDRIER (CA_ID)
go

alter table DISPENSE
   add constraint FK_DISPENSE_CONSTITUE_MODELE_C foreign key (MC_ID)
      references MODELE_CALENDRIER (MC_ID)
go

alter table MODULE_INDEPENDANT
   add constraint FK_MODULE_I_ATTRIBUER_MODELE_C foreign key (MC_ID)
      references MODELE_CALENDRIER (MC_ID)
go

alter table MODULE_INDEPENDANT
   add constraint FK_MODULE_I_COMPOSER_CALENDRI foreign key (CA_ID)
      references CALENDRIER (CA_ID)
go

alter table MODULE_SECABLE
   add constraint FK_MODULE_S_CONCERNER_DISPENSE foreign key (DI_ID)
      references DISPENSE (DI_ID)
go

alter table PERMETTRE
   add constraint FK_PERMETTR_PERMETTRE_PROGRAMM foreign key (PR_ID)
      references PROGRAMMATION (PR_ID)
go

alter table PERMETTRE
   add constraint FK_PERMETTR_PERMETTRE_STATISTI foreign key (ST_ID)
      references STATISTIQUE (ST_ID)
go

alter table PROGRAMMATION
   add constraint FK_PROGRAMM_DETERMINE_MODELE_C foreign key (MC_ID)
      references MODELE_CALENDRIER (MC_ID)
go

alter table PROGRAMMATION
   add constraint FK_PROGRAMM_ETABLIR_CALENDRI foreign key (CA_ID)
      references CALENDRIER (CA_ID)
go

alter table TRACE_OPERATION
   add constraint FK_TRACE_OP_EFFECTUER_UTILISAT foreign key (UT_ID)
      references UTILISATEUR (UT_ID)
go

alter table UTILISATEUR
   add constraint FK_UTILISAT_AVOIR_ROLE_UTI foreign key (RU_ID)
      references ROLE_UTILISATEUR (RU_ID)
go

ALTER TABLE CONTRAINTE ALTER COLUMN MC_ID int
ALTER TABLE CONTRAINTE ALTER COLUMN CA_ID int
go

-- EXEC sp_rename 'MODULE_INDEPENDANT.MI_ID_LIEU_FORMATION_ERP', MI_LIEU_FORMATION, 'COLUMN';
-- ALTER TABLE MODULE_INDEPENDANT ALTER COLUMN MI_LIEU_FORMATION varchar(255);
-- ALTER TABLE MODULE_INDEPENDANT ALTER COLUMN CA_ID int;
-- ALTER TABLE MODULE_INDEPENDANT ALTER COLUMN MC_ID int;

/** Changement du type de la colonne EM_ID_FORMATION_ERP en varchar(255) */
ALTER TABLE PROGRAMMATION ALTER COLUMN PR_ID_COURS_PLANIFIE_ERP varchar(255);
ALTER TABLE PROGRAMMATION ALTER COLUMN MC_ID int;
ALTER TABLE PROGRAMMATION ALTER COLUMN CA_ID int;

INSERT INTO ETAT_CALENDRIER (EC_ID, EC_LIBELLE_ETAT) VALUES (1, 'Actif');
INSERT INTO ETAT_CALENDRIER (EC_ID, EC_LIBELLE_ETAT) VALUES (2, 'Inactif');
INSERT INTO ETAT_CALENDRIER (EC_ID, EC_LIBELLE_ETAT) VALUES (3, 'Prévisionnel');
INSERT INTO ETAT_CALENDRIER (EC_ID, EC_LIBELLE_ETAT) VALUES (4, 'Inscrit');

INSERT INTO ROLE_UTILISATEUR (RU_ID, RU_LIBELLE_ROLE) VALUES (1, 'Utilisateur');

INSERT INTO Stagiaire (CodeStagiaire, Civilite, Nom, Prenom, Adresse1, Adresse2, Adresse3, Codepostal, Ville, TelephoneFixe, TelephonePortable, Email, DateNaissance, CodeRegion, CodeNationalite, CodeOrigineMedia, DateDernierEnvoiDoc, DateCreation, Repertoire, Permis, Photo, EnvoiDocEnCours, Historique) VALUES (19, 'Mr ', 'TestNom', 'TestPrenom', 'TestAdresse1', 'TestAdresse2', 'TestAdresse3', '44200', 'Nantes', '02000000      ', '06000000      ', 'test@test.fr', null, null, null, null, null, '1995-08-08 09:27:19.330', null, 0, null, 0, null);
INSERT INTO Stagiaire (CodeStagiaire, Civilite, Nom, Prenom, Adresse1, Adresse2, Adresse3, Codepostal, Ville, TelephoneFixe, TelephonePortable, Email, DateNaissance, CodeRegion, CodeNationalite, CodeOrigineMedia, DateDernierEnvoiDoc, DateCreation, Repertoire, Permis, Photo, EnvoiDocEnCours, Historique) VALUES (20, 'Mr ', 'Smith', 'John', 'TestAdresse1', 'TestAdresse2', 'TestAdresse3', '44200', 'Nantes', '02000001      ', '06000001      ', 'test@smith.fr', null, null, null, null, null, '1995-08-08 09:27:19.330', null, 0, null, 0, null);
INSERT INTO Stagiaire (CodeStagiaire, Civilite, Nom, Prenom, Adresse1, Adresse2, Adresse3, Codepostal, Ville, TelephoneFixe, TelephonePortable, Email, DateNaissance, CodeRegion, CodeNationalite, CodeOrigineMedia, DateDernierEnvoiDoc, DateCreation, Repertoire, Permis, Photo, EnvoiDocEnCours, Historique) VALUES (21, 'Mr ', 'Dubois', 'Yvan', 'TestAdresse1', 'TestAdresse2', 'TestAdresse3', '44200', 'Nantes', '02000002      ', '06000002      ', 'test@dubois.fr', null, null, null, null, null, '1995-08-08 09:27:19.330', null, 0, null, 0, null);

INSERT INTO MODELE_CALENDRIER (MC_ID, MC_NOM_CALENDRIER, MC_DATE_CREATION, MC_DATE_MAJ, MC_ID_LIEU_FORMATION_ERP, MC_ID_FORMATION_ERP, MC_DATE_DEBUT_MAX, MC_DATE_FIN_MAX) VALUES (1, 'Modele1', '2018-08-10 15:18:18.040', '2018-08-10 15:18:23.697', null, null, null, null);
INSERT INTO MODELE_CALENDRIER (MC_ID, MC_NOM_CALENDRIER, MC_DATE_CREATION, MC_DATE_MAJ, MC_ID_LIEU_FORMATION_ERP, MC_ID_FORMATION_ERP, MC_DATE_DEBUT_MAX, MC_DATE_FIN_MAX) VALUES (2, 'Modele2', '2018-08-10 15:18:18.040', '2018-08-10 15:18:23.697', null, null, null, null);
INSERT INTO MODELE_CALENDRIER (MC_ID, MC_NOM_CALENDRIER, MC_DATE_CREATION, MC_DATE_MAJ, MC_ID_LIEU_FORMATION_ERP, MC_ID_FORMATION_ERP, MC_DATE_DEBUT_MAX, MC_DATE_FIN_MAX) VALUES (3, 'Modele3', '2018-08-10 15:18:18.040', '2018-08-10 15:18:23.697', null, null, null, null);

INSERT INTO CALENDRIER (CA_ID, EC_ID, CA_ID_STAGIAIRE_ERP, CA_ID_ENTREPRISE_ERP, CA_NOM_CALENDRIER, CA_DATE_CREATION, CA_DATE_MAJ, CA_ID_LIEU_FORMATION_ERP, CA_ID_FORMATION_ERP, CA_DATE_DEBUT_MAX, CA_DATE_FIN_MAX) VALUES (2, 1, 20, 4, 'Calendrier1', '2018-08-14 08:35:02.740', '2018-08-14 08:35:11.037', 1, 17, '2018-09-14 08:34:42.137', '2019-08-14 08:34:49.743');
INSERT INTO CALENDRIER (CA_ID, EC_ID, CA_ID_STAGIAIRE_ERP, CA_ID_ENTREPRISE_ERP, CA_NOM_CALENDRIER, CA_DATE_CREATION, CA_DATE_MAJ, CA_ID_LIEU_FORMATION_ERP, CA_ID_FORMATION_ERP, CA_DATE_DEBUT_MAX, CA_DATE_FIN_MAX) VALUES (3, 1, 20, 4, 'Calendrier2', '2018-08-14 08:35:02.740', '2018-08-14 08:35:11.037', 1, 17, '2018-09-14 08:34:42.137', '2019-08-14 08:34:49.743');
INSERT INTO CALENDRIER (CA_ID, EC_ID, CA_ID_STAGIAIRE_ERP, CA_ID_ENTREPRISE_ERP, CA_NOM_CALENDRIER, CA_DATE_CREATION, CA_DATE_MAJ, CA_ID_LIEU_FORMATION_ERP, CA_ID_FORMATION_ERP, CA_DATE_DEBUT_MAX, CA_DATE_FIN_MAX) VALUES (4, 1, 21, 4, 'CalendrierSmith', '2018-08-14 08:35:02.740', '2018-08-14 08:35:11.037', 1, 17, '2018-09-14 08:34:42.137', '2019-08-14 08:34:49.743');
INSERT INTO CALENDRIER (CA_ID, EC_ID, CA_ID_STAGIAIRE_ERP, CA_ID_ENTREPRISE_ERP, CA_NOM_CALENDRIER, CA_DATE_CREATION, CA_DATE_MAJ, CA_ID_LIEU_FORMATION_ERP, CA_ID_FORMATION_ERP, CA_DATE_DEBUT_MAX, CA_DATE_FIN_MAX) VALUES (5, 1, 22, 4, 'Calendrier', '2018-08-14 08:35:02.740', '2018-08-14 08:35:11.037', 1, 17, '2018-09-14 08:34:42.137', '2019-08-14 08:34:49.743');
INSERT INTO CALENDRIER (CA_ID, EC_ID, CA_ID_STAGIAIRE_ERP, CA_ID_ENTREPRISE_ERP, CA_NOM_CALENDRIER, CA_DATE_CREATION, CA_DATE_MAJ, CA_ID_LIEU_FORMATION_ERP, CA_ID_FORMATION_ERP, CA_DATE_DEBUT_MAX, CA_DATE_FIN_MAX) VALUES (6, 1, 20, 4, 'Calendrier3', '2018-08-14 08:35:02.740', '2018-08-14 08:35:11.037', 1, 17, '2018-09-14 08:34:42.137', '2019-08-14 08:34:49.743');

INSERT INTO MODULE_INDEPENDANT (MI_ID, CA_ID, MC_ID, MI_LIBELLE, MI_DUREE, MI_LIBELLE_COURT, MI_LIEU_FORMATION, MI_DATE_DEBUT, MI_DATE_FIN) VALUES (1, 2, 2, 'Indé1', 4, 'I1', 1, '2018-08-23 14:55:40.503', '2018-08-26 14:55:51.860');
INSERT INTO MODULE_INDEPENDANT (MI_ID, CA_ID, MC_ID, MI_LIBELLE, MI_DUREE, MI_LIBELLE_COURT, MI_LIEU_FORMATION, MI_DATE_DEBUT, MI_DATE_FIN) VALUES (4, 3, 2, 'Indé2', 4, 'I2', 1, '2018-08-23 14:55:40.503', '2018-08-26 14:55:51.860');
INSERT INTO MODULE_INDEPENDANT (MI_ID, CA_ID, MC_ID, MI_LIBELLE, MI_DUREE, MI_LIBELLE_COURT, MI_LIEU_FORMATION, MI_DATE_DEBUT, MI_DATE_FIN) VALUES (5, 4, 1, 'Indé3', 4, 'I3', 1, '2018-08-23 14:55:40.503', '2018-08-26 14:55:51.860');
INSERT INTO MODULE_INDEPENDANT (MI_ID, CA_ID, MC_ID, MI_LIBELLE, MI_DUREE, MI_LIBELLE_COURT, MI_LIEU_FORMATION, MI_DATE_DEBUT, MI_DATE_FIN) VALUES (6, 4, 1, 'Indé4', 4, 'I4', 1, '2018-08-23 14:55:40.503', '2018-08-26 14:55:51.860');

INSERT INTO UTILISATEUR (RU_ID, UT_NOM, UT_PRENOM, UT_EMAIL, UT_PASSWORD) VALUES (1, 'OLIVIER', 'Stephane', '$2a$10$TgTlrUH2IwlcKZea15Vzm.sUaWE4AiD9ioZYsVjn3d/6rPH7w/baO', '');
INSERT INTO UTILISATEUR (RU_ID, UT_NOM, UT_PRENOM, UT_EMAIL, UT_PASSWORD) VALUES (1, 'DIXNEUF', 'Baptiste', 'baptiste.dixneuf@gmail.com', '$2a$10$TgTlrUH2IwlcKZea15Vzm.sUaWE4AiD9ioZYsVjn3d/6rPH7w/baO');
INSERT INTO UTILISATEUR (RU_ID, UT_NOM, UT_PRENOM, UT_EMAIL, UT_PASSWORD) VALUES (1, 'LENOIR', 'Marius', 'marius.lenoir@hotmail.com', '$2a$10$TgTlrUH2IwlcKZea15Vzm.sUaWE4AiD9ioZYsVjn3d/6rPH7w/baO');
INSERT INTO UTILISATEUR (RU_ID, UT_NOM, UT_PRENOM, UT_EMAIL, UT_PASSWORD) VALUES (1, 'PIRON', 'Axel', 'azerty', '$2a$10$TgTlrUH2IwlcKZea15Vzm.sUaWE4AiD9ioZYsVjn3d/6rPH7w/baO');
INSERT INTO UTILISATEUR (RU_ID, UT_NOM, UT_PRENOM, UT_EMAIL, UT_PASSWORD) VALUES (1, 'aaaaaaaaaaaaa', 'aaaaaaaaaaaa', 'sdfdsf', '');
INSERT INTO UTILISATEUR (RU_ID, UT_NOM, UT_PRENOM, UT_EMAIL, UT_PASSWORD) VALUES (1, 'zzzzcccccccccccc', 'zzzzzz', 'zzzzzzzzz', '');

INSERT INTO TYPE_CONTRAINTE (TC_LIBELLE) VALUES ('SEMAINE_AFFILEE_ENTREPRISE');
INSERT INTO TYPE_CONTRAINTE (TC_LIBELLE) VALUES ('SEMAINE_AFFILEE_FORMATION');
INSERT INTO TYPE_CONTRAINTE (TC_LIBELLE) VALUES ('FORTE_ACTIVITE_ENTREPRISE');
INSERT INTO TYPE_CONTRAINTE (TC_LIBELLE) VALUES ('FAIBLE_ACTIVITE_ENTREPRISE');
INSERT INTO TYPE_CONTRAINTE (TC_LIBELLE) VALUES ('NON_DISPONIBILITE');

