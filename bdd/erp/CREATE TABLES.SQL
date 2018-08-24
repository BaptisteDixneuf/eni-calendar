
CREATE TABLE Titre(
CodeTitre CHAR(8) PRIMARY KEY,
LibelleCourt VARCHAR(50) not null, 
LibelleLong VARCHAR(200) not null,
TitreENI bit not null,
Archiver bit not null, 
Niveau VARCHAR(5),
DateArrete datetime,
DateJO datetime, 
NumeroJO int,
CodeAFPA VARCHAR(50),
Millesime VARCHAR(4) null)
GO

/****** Object:  Table [dbo].[Formation]    Script Date: 12/23/2016 15:40:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Formation](
	[CodeFormation] [char](8) NOT NULL,
	[LibelleLong] [varchar](200) NOT NULL,
	[LibelleCourt] [varchar](50) NOT NULL,
	[DureeEnHeures] [smallint] NOT NULL,
	[TauxHoraire] [float] NOT NULL,
	[CodeTitre] [char](8) NULL REFERENCES Titre(CodeTitre),
	[PrixPublicEnCours] [float] NOT NULL,
	[HeuresCentre] [smallint] NULL,
	[HeuresStage] [smallint] NULL,
	[SemainesCentre] [tinyint] NULL,
	[SemainesStage] [tinyint] NULL,
	[DureeEnSemaines] [tinyint] NOT NULL,
	[Archiver] [bit] NOT NULL,
	[ECFaPasser] [int] NULL,
	[TypeFormation] [int] NULL,
	[CodeLieu] [int] NULL,
 CONSTRAINT [PK_Formation] PRIMARY KEY CLUSTERED 
(
	[CodeFormation] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO




ALTER TABLE [dbo].[Formation] ADD  CONSTRAINT [DF_Formation_Archiver]  DEFAULT ((0)) FOR [Archiver]
GO

GO

/****** Object:  Table [dbo].[Lieu]    Script Date: 01/05/2017 14:49:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Lieu](
	[CodeLieu] [int] IDENTITY(1,1) NOT NULL,
	[Libelle] [nvarchar](50) NOT NULL,
	[archive] [bit] NULL,
	[GestionEmargement] [bit] NULL,
	[DebutAM] [varchar](5) NULL,
	[FinAM] [varchar](5) NULL,
	[DebutPM] [varchar](5) NULL,
	[FinPM] [varchar](5) NULL,
	[Adresse] [varchar](200) NULL,
	[CP] [int] NULL,
	[Ville] [varchar](100) NULL,
 CONSTRAINT [PK_Lieu] PRIMARY KEY CLUSTERED 
(
	[CodeLieu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO





GO

/****** Object:  Table [dbo].[Salle]    Script Date: 12/23/2016 15:42:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Salle](
	[CodeSalle] [varchar](5) NOT NULL,
	[Libelle] [varchar](50) NOT NULL,
	[Capacite] [int] NULL,
	[Lieu] [int] NOT NULL references Lieu(CodeLieu),
 CONSTRAINT [PK_Salle] PRIMARY KEY CLUSTERED 
(
	[CodeSalle] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Salle] ADD  DEFAULT ((0)) FOR [Lieu]
GO


GO

/****** Object:  Table [dbo].[Promotion]    Script Date: 12/23/2016 15:40:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Promotion](
	[CodePromotion] [char](8) NOT NULL,
	[Libelle] [varchar](200) NOT NULL,
	[Debut] [datetime] NOT NULL,
	[Fin] [datetime] NOT NULL,
	[CodeFormation] [char](8) NOT NULL,
	[PrixPublicAffecte] [float] NOT NULL,
	[PrixPECAffecte] [float] NOT NULL,
	[PrixFinanceAffecte] [float] NOT NULL,
	[CodeLieu] [int] NULL REFERENCES LIEU(CodeLieu),
 CONSTRAINT [PK_Promotion] PRIMARY KEY CLUSTERED 
(
	[CodePromotion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO




ALTER TABLE [dbo].[Promotion]  WITH CHECK ADD  CONSTRAINT [FK_Promotion_Formation] FOREIGN KEY([CodeFormation])
REFERENCES [dbo].[Formation] ([CodeFormation])
GO

ALTER TABLE [dbo].[Promotion] CHECK CONSTRAINT [FK_Promotion_Formation]
GO


GO

/****** Object:  Table [dbo].[UniteFormation]    Script Date: 12/23/2016 15:41:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[UniteFormation](
	[Libelle] [varchar](200) NOT NULL,
	[DureeEnHeures] [smallint] NOT NULL,
	[DureeEnSemaines] [tinyint] NOT NULL,
	[LibelleCourt] [varchar](10) NOT NULL,
	[IdUniteFormation] [int] IDENTITY(1,1) NOT NULL,
	[Archiver] [bit] NOT NULL,
 CONSTRAINT [PK_UniteFormation] PRIMARY KEY CLUSTERED 
(
	[IdUniteFormation] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[UniteFormation] ADD  CONSTRAINT [DF_UniteFormation_Archiver]  DEFAULT ((0)) FOR [Archiver]
GO



GO

/****** Object:  Table [dbo].[UniteParFormation]    Script Date: 12/23/2016 15:41:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[UniteParFormation](
	[CodeFormation] [char](8) NOT NULL,
	[Position] [tinyint] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUniteFormation] [int] NOT NULL,
 CONSTRAINT [PK_UniteParFormation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[UniteParFormation]  WITH CHECK ADD  CONSTRAINT [FK_UniteParFormation_Formation] FOREIGN KEY([CodeFormation])
REFERENCES [dbo].[Formation] ([CodeFormation])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[UniteParFormation] CHECK CONSTRAINT [FK_UniteParFormation_Formation]
GO

ALTER TABLE [dbo].[UniteParFormation]  WITH CHECK ADD  CONSTRAINT [FK_UniteParFormation_UniteFormation] FOREIGN KEY([IdUniteFormation])
REFERENCES [dbo].[UniteFormation] ([IdUniteFormation])
GO

ALTER TABLE [dbo].[UniteParFormation] CHECK CONSTRAINT [FK_UniteParFormation_UniteFormation]
GO



/****** Object:  Table [dbo].[Module]    Script Date: 12/23/2016 15:39:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Module](
	[Libelle] [varchar](200) NOT NULL,
	[DureeEnHeures] [smallint] NOT NULL,
	[DureeEnSemaines] [tinyint] NOT NULL,
	[PrixPublicEnCours] [float] NOT NULL,
	[LibelleCourt] [varchar](20) NOT NULL,
	[IdModule] [int]  NOT NULL,
	[Archiver] [bit] NOT NULL,
	[TypeModule] [int] NULL,
 CONSTRAINT [PK_Module] PRIMARY KEY CLUSTERED 
(
	[IdModule] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO



ALTER TABLE [dbo].[Module] ADD  CONSTRAINT [DF_Module_Archiver]  DEFAULT ((0)) FOR [Archiver]
GO


GO

/****** Object:  Table [dbo].[ModuleParUnite]    Script Date: 12/23/2016 15:42:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ModuleParUnite](
	[Position] [tinyint] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUnite] [int] NOT NULL,
	[IdModule] [int] NOT NULL,
 CONSTRAINT [PK_ModuleParUnite] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[ModuleParUnite]  WITH CHECK ADD  CONSTRAINT [FK_ModuleParUnite_Module] FOREIGN KEY([IdModule])
REFERENCES [dbo].[Module] ([IdModule])
GO

ALTER TABLE [dbo].[ModuleParUnite] CHECK CONSTRAINT [FK_ModuleParUnite_Module]
GO

ALTER TABLE [dbo].[ModuleParUnite]  WITH CHECK ADD  CONSTRAINT [FK_ModuleParUnite_UniteParFormation] FOREIGN KEY([IdUnite])
REFERENCES [dbo].[UniteParFormation] ([Id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[ModuleParUnite] CHECK CONSTRAINT [FK_ModuleParUnite_UniteParFormation]
GO


GO

/****** Object:  Table [dbo].[Cours]    Script Date: 12/23/2016 15:39:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Cours](
	[Debut] [datetime] NOT NULL,
	[Fin] [datetime] NOT NULL,
	[DureeReelleEnHeures] [smallint] NOT NULL,
	[CodePromotion] [char](8) NULL,
	[IdCours] [uniqueidentifier] NOT NULL,
	[PrixPublicAffecte] [float] NOT NULL,
	[IdModule] [int] NOT NULL,
	[LibelleCours] [varchar](50) NOT NULL,
	[DureePrevueEnHeures] [smallint] NOT NULL,
	[DateAdefinir] [bit] NOT NULL,
	[CodeSalle] [char](5) NULL,
	[CodeFormateur] [int] NULL,
	[CodeLieu] [int] NULL,
 CONSTRAINT [PK_Cours] PRIMARY KEY CLUSTERED 
(
	[IdCours] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Duree en heures prévues - les jours fériés éventuels' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cours', @level2type=N'COLUMN',@level2name=N'DureeReelleEnHeures'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Prix sans prise en charge' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cours', @level2type=N'COLUMN',@level2name=N'PrixPublicAffecte'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Duree standard du cours. Issue du Module.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cours', @level2type=N'COLUMN',@level2name=N'DureePrevueEnHeures'
GO



ALTER TABLE [dbo].[Cours]  WITH CHECK ADD  CONSTRAINT [FK_Cours_Module] FOREIGN KEY([IdModule])
REFERENCES [dbo].[Module] ([IdModule])
GO

ALTER TABLE [dbo].[Cours] CHECK CONSTRAINT [FK_Cours_Module]
GO

ALTER TABLE [dbo].[Cours]  WITH CHECK ADD  CONSTRAINT [FK_Cours_Promotion] FOREIGN KEY([CodePromotion])
REFERENCES [dbo].[Promotion] ([CodePromotion])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Cours] CHECK CONSTRAINT [FK_Cours_Promotion]
GO



ALTER TABLE [dbo].[Cours] ADD  DEFAULT ((0)) FOR [DateAdefinir]
GO


GO

/****** Object:  Table [dbo].[Stagiaire]    Script Date: 12/23/2016 15:43:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Stagiaire](
	[CodeStagiaire] [int] IDENTITY(10,1) NOT NULL,
	[Civilite] [char](3) NULL,
	[Nom] [nvarchar](50) NULL,
	[Prenom] [nvarchar](50) NULL,
	[Adresse1] [varchar](500) NOT NULL,
	[Adresse2] [varchar](500) NULL,
	[Adresse3] [varchar](500) NULL,
	[Codepostal] [char](5) NULL,
	[Ville] [varchar](100) NULL,
	[TelephoneFixe] [char](14) NULL,
	[TelephonePortable] [char](14) NULL,
	[Email] [varchar](100) NULL,
	[DateNaissance] [smalldatetime] NULL,
	[CodeRegion] [char](2) NULL,
	[CodeNationalite] [char](2) NULL,
	[CodeOrigineMedia] [char](3) NULL,
	[DateDernierEnvoiDoc] [datetime] NULL,
	[DateCreation] [datetime] NULL,
	[Repertoire] [varchar](100) NULL,
	[Permis] [bit] NOT NULL,
	[Photo] [varchar](100) NULL,
	[EnvoiDocEnCours] [bit] NOT NULL,
	[Historique] [varchar](max) NULL,
 CONSTRAINT [PK_Stagiaire] PRIMARY KEY CLUSTERED 
(
	[CodeStagiaire] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Référencer les coordonnées d''une personne de l''état candidat potentiel à l''état stagiaire et après..' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Stagiaire'
GO


ALTER TABLE [dbo].[Stagiaire] ADD  CONSTRAINT [DF_Stagiaire_Permis]  DEFAULT ((0)) FOR [Permis]
GO

ALTER TABLE [dbo].[Stagiaire] ADD  CONSTRAINT [DF_Stagiaire_EnvoiDocEnCours]  DEFAULT ((0)) FOR [EnvoiDocEnCours]
GO





GO

/****** Object:  Table [dbo].[Entreprise]    Script Date: 12/23/2016 15:43:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Entreprise](
	[CodeEntreprise] [int] IDENTITY(1,1) NOT NULL,
	[RaisonSociale] [varchar](255) NOT NULL,
	[Adresse1] [varchar](500) NULL,
	[Adresse2] [varchar](500) NULL,
	[Adresse3] [varchar](500) NULL,
	[CodePostal] [char](5) NULL,
	[Ville] [varchar](100) NULL,
	[Telephone] [char](14) NULL,
	[Fax] [char](14) NULL,
	[SiteWeb] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Observation] [varchar](max) NULL,
	[CodeTypeEntreprise] [char](5) NOT NULL,
	[CodeRegion] [char](2) NOT NULL,
	[CodeSecteur] [int] NOT NULL,
	[CodeOrganisme] [int] NULL,
	[NomCommercial] [nvarchar](255) NULL,
	[siret] [int] NULL,
	[CodeContactEni] [int] NULL,
	[CodeOrganismeFavoris] [int] NULL,
 CONSTRAINT [PK_Entreprise] PRIMARY KEY CLUSTERED 
(
	[CodeEntreprise] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Référence un secteur d''activité (table SecteursActivite) dans le cas où les contact de l''entreprise sont susceptibles d''être jurys pour des CQP de ce secteur.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entreprise', @level2type=N'COLUMN',@level2name=N'CodeSecteur'
GO



GO

/****** Object:  Table [dbo].[StagiaireParEntreprise]    Script Date: 12/23/2016 15:43:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[StagiaireParEntreprise](
	[CodeStagiaire] [int] NOT NULL,
	[CodeEntreprise] [int] NOT NULL,
	[DateLien] [datetime] NOT NULL,
	[CodeTypeLien] [char](5) NOT NULL,
	[DateDebutEnEts] [datetime] NULL,
	[DateFinEnEts] [datetime] NULL,
	[CodeFonction] [char](5) NULL,
	[Commentaire] [nvarchar](max) NULL,
	[NumLien] [int] IDENTITY(1,1) NOT NULL,
	[CodeTuteur] [int] NULL,
	[ResponsableEts] [int] NULL,
	[GererPar] [int] NULL,
	[Interruption] [int] NULL,
	[SujetStage] [varchar](max) NULL,
	[TitreVise] [char](5) NULL,
	[CodeContactEni] [int] NULL,
 CONSTRAINT [PK_StagiaireParEntreprise] PRIMARY KEY CLUSTERED 
(
	[NumLien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Champs de saisie libre pour ajouter des informations additionnelles sur le lien en question.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StagiaireParEntreprise', @level2type=N'COLUMN',@level2name=N'Commentaire'
GO







ALTER TABLE [dbo].[StagiaireParEntreprise]  WITH CHECK ADD  CONSTRAINT [FK_StagiaireParEntreprise_Entreprise] FOREIGN KEY([CodeEntreprise])
REFERENCES [dbo].[Entreprise] ([CodeEntreprise])
ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[StagiaireParEntreprise] CHECK CONSTRAINT [FK_StagiaireParEntreprise_Entreprise]
GO



ALTER TABLE [dbo].[StagiaireParEntreprise]  WITH CHECK ADD  CONSTRAINT [FK_StagiaireParEntreprise_Stagiaire] FOREIGN KEY([CodeStagiaire])
REFERENCES [dbo].[Stagiaire] ([CodeStagiaire])
GO

ALTER TABLE [dbo].[StagiaireParEntreprise] CHECK CONSTRAINT [FK_StagiaireParEntreprise_Stagiaire]
GO






CREATE TABLE [dbo].[PlanningIndividuelFormation](
	[CodePlanning] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL , --Code du planning
	[CodeStagiaire] [int] NOT NULL REFERENCES Stagiaire(CodeStagiaire),     --Code du stagiaire auquel le planning est rattaché 
	[DateInscription] [datetime] NULL,     --Date de l'inscription du planning
	[DateCreation] [date] NULL,            --Date de la création du planning
	[CodeTypeProfil] [int] NOT NULL,      --Enumération du type profil (1 = FC, 2=CP, 3=MO, 4=PP, 5=CS, 6=POEC, 7=APP, 8 = GEN) 
	[CodeFormation] [char](8) NULL REFERENCES Formation(CodeFormation),    --Code de la formation réalisée
	[CodePromotion] [char](8) NULL REFERENCES Promotion(CodePromotion),    --Code de la promotion (null si CP, PP, MO ou CS)
	[NumLien] [int] NULL REFERENCES StagiaireParEntreprise(NumLien))       --Lien entre un planning, un stagiaire et une entreprise 











