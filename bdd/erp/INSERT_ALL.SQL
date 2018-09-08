SET DATEFORMAT ymd
SET IDENTITY_INSERT StagiaireParEntreprise ON

INSERT INTO Titre (CodeTitre, LibelleCourt, LibelleLong, TitreENI, Archiver, Niveau, DateArrete, DateJO, NumeroJO, CodeAFPA, Millesime) VALUES ('AL      ', 'ARCHITECTE LOGICIEL', 'Architecte Logiciel', 0, 0, 'I', '2009-01-28 00:00:00.000', '2009-02-07 00:00:00.000', null, null, null);
INSERT INTO Titre (CodeTitre, LibelleCourt, LibelleLong, TitreENI, Archiver, Niveau, DateArrete, DateJO, NumeroJO, CodeAFPA, Millesime) VALUES ('ASR     ', 'ASR', 'Administrateur Système et Réseau', 0, 0, 'II', '2015-05-05 00:00:00.000', '2015-05-05 00:00:00.000', 152, null, null);
INSERT INTO Titre (CodeTitre, LibelleCourt, LibelleLong, TitreENI, Archiver, Niveau, DateArrete, DateJO, NumeroJO, CodeAFPA, Millesime) VALUES ('AUCUN   ', 'PAS DE TITRE PRÉPARÉ', 'Pas de titre préparé', 0, 0, null, null, null, null, null, null);
INSERT INTO Titre (CodeTitre, LibelleCourt, LibelleLong, TitreENI, Archiver, Niveau, DateArrete, DateJO, NumeroJO, CodeAFPA, Millesime) VALUES ('CDI     ', 'CDI', 'Concepteur Développeur Informatique', 0, 0, 'II', '2015-11-09 00:00:00.000', '2015-11-09 00:00:00.000', 2015, 'TP-01281', '02');
INSERT INTO Titre (CodeTitre, LibelleCourt, LibelleLong, TitreENI, Archiver, Niveau, DateArrete, DateJO, NumeroJO, CodeAFPA, Millesime) VALUES ('DL      ', 'DL', 'Développeur Logiciel', 0, 0, 'III', '2015-11-09 00:00:00.000', '2015-11-09 00:00:00.000', 2015, 'TP-01280', '02');
INSERT INTO Titre (CodeTitre, LibelleCourt, LibelleLong, TitreENI, Archiver, Niveau, DateArrete, DateJO, NumeroJO, CodeAFPA, Millesime) VALUES ('EISI    ', 'EISI', 'Expert en Informatique et Système d''Information', 0, 0, 'I', '2012-04-05 00:00:00.000', '2012-04-14 00:00:00.000', null, null, null);
INSERT INTO Titre (CodeTitre, LibelleCourt, LibelleLong, TitreENI, Archiver, Niveau, DateArrete, DateJO, NumeroJO, CodeAFPA, Millesime) VALUES ('LICENCE ', 'LICENCE INFORMATIQUE', 'Licence informatique', 0, 0, 'II', '2015-11-12 00:00:00.000', '2015-11-12 00:00:00.000', null, null, null);
INSERT INTO Titre (CodeTitre, LibelleCourt, LibelleLong, TitreENI, Archiver, Niveau, DateArrete, DateJO, NumeroJO, CodeAFPA, Millesime) VALUES ('MS2I    ', 'MS2I', 'Manager des Systèmes d''Information et d''Infrastructure', 0, 0, 'I', '2012-04-05 00:00:00.000', '2012-04-14 00:00:00.000', null, null, null);
INSERT INTO Titre (CodeTitre, LibelleCourt, LibelleLong, TitreENI, Archiver, Niveau, DateArrete, DateJO, NumeroJO, CodeAFPA, Millesime) VALUES ('TAI     ', 'TAI', 'Technicien(ne) d''Assistance en Informatique', 0, 0, 'IV', '2009-01-28 00:00:00.000', '2009-02-07 00:00:00.000', null, null, null);
INSERT INTO Titre (CodeTitre, LibelleCourt, LibelleLong, TitreENI, Archiver, Niveau, DateArrete, DateJO, NumeroJO, CodeAFPA, Millesime) VALUES ('TSRIT   ', 'TSRIT', 'Technicien Supérieur en Réseaux Informatiques et Télécommunications', 0, 0, 'III', '2015-02-11 00:00:00.000', '2015-02-19 00:00:00.000', null, 'TP-00500', '06');
INSERT INTO Titre (CodeTitre, LibelleCourt, LibelleLong, TitreENI, Archiver, Niveau, DateArrete, DateJO, NumeroJO, CodeAFPA, Millesime) VALUES ('TSSI    ', 'TSSI', 'Technicien Supérieur de Support en Informatique', 0, 0, 'III', '2013-02-08 00:00:00.000', '2013-02-19 00:00:00.000', null, 'TP-00485', '08');

INSERT INTO Stagiaire VALUES ('Mr ', 'Dupond', 'Jean', '2 rue Rondeau', null, null, '44200', 'Nantes', '02000000      ', '06000000      ', 'test@test.fr', null, null, null, null, null, '1995-08-08 09:27:19.330', null, 0, null, 0, null);
INSERT INTO Stagiaire VALUES ('Mr ', 'Smith', 'John', '2 rue Roubier', null, null, '44200', 'Nantes', '02000001      ', '06000001      ', 'test@smith.fr', null, null, null, null, null, '1995-08-08 09:27:19.330', null, 0, null, 0, null);
INSERT INTO Stagiaire VALUES ('Mr ', 'Dubois', 'Yvan', '2 rue Rabin', null, null, '44300', 'Nantes', '02000002      ', '06000002      ', 'test@dubois.fr', null, null, null, null, null, '1995-08-08 09:27:19.330', null, 0, null, 0, null);
INSERT INTO Stagiaire VALUES ('Mr ', 'Durand', 'Sylvain', '2 rue Rousse', null, null, '44300', 'Nantes', '02000002      ', '06000002      ', 'test@dubois.fr', null, null, null, null, null, '1995-08-08 09:27:19.330', null, 0, null, 0, null);
INSERT INTO Stagiaire VALUES ('Mr ', 'Durant', 'Albert', '10 bd Schuman', null, null, '44300', 'Nantes', '02000002      ', '06000002      ', 'test@dubois.fr', null, null, null, null, null, '1995-08-08 09:27:19.330', null, 0, null, 0, null);
INSERT INTO Stagiaire VALUES ('Mr ', 'Dupont', 'Pierre', '5 bd Republique', null, null, '44100', 'Nantes', '02000002      ', '06000002      ', 'test@dubois.fr', null, null, null, null, null, '1995-08-08 09:27:19.330', null, 0, null, 0, null);


INSERT INTO Entreprise VALUES ('Alter&Co', 'rue Sarbruck', null, null, '44000', 'Nantes', '0240020202    ', null, null, null, null, '1    ', '1 ', 1, null, 'A&Co', null, null, null);
INSERT INTO Entreprise VALUES ('Assure&Co', 'rue Voltaire', null, null, '44400', 'Rezé', '0240020203    ', null, null, null, null, '1    ', '1 ', 1, null, 'AsCo', null, null, null);
INSERT INTO Entreprise VALUES ('BtpProject', 'rue Rousseau', null, null, '44400', 'Rezé', '0240020204    ', null, null, null, null, '1    ', '1 ', 1, null, 'BTPP', null, null, null);
INSERT INTO Entreprise VALUES ('Soprema', 'rue Candid', null, null, '44210', 'Pornic', '0240020205    ', null, null, null, null, '1    ', '1 ', 1, null, 'Soprema', null, null, null);
INSERT INTO Entreprise VALUES ('Connector', 'rue Arsene Mona', null, null, '44300', 'Nantes', '0240020206    ', null, null, null, null, '1    ', '1 ', 1, null, 'Connector', null, null, null);
INSERT INTO Entreprise VALUES ('CGD', 'rue des lylas', null, null, '44000', 'Nantes', '0240020207    ', null, null, null, null, '1    ', '1 ', 1, null, 'CGD', null, null, null);
INSERT INTO Entreprise VALUES ('Etudia', 'rue Beaulieu', null, null, '49000', 'Angers', '0240020208    ', null, null, null, null, '1    ', '1 ', 1, null, 'Etudia', null, null, null);


INSERT INTO StagiaireParEntreprise (CodeStagiaire, CodeEntreprise, DateLien, CodeTypeLien, DateDebutEnEts, DateFinEnEts, CodeFonction, Commentaire, NumLien, CodeTuteur, ResponsableEts, GererPar, Interruption, SujetStage, TitreVise, CodeContactEni) VALUES (11, 1, '2018-09-05 19:36:40.230', '1    ', '2018-08-05 19:35:56.413', '2019-09-05 19:36:02.797', null, null, 2, null, null, null, null, null, 'CDI  ', null);
INSERT INTO StagiaireParEntreprise (CodeStagiaire, CodeEntreprise, DateLien, CodeTypeLien, DateDebutEnEts, DateFinEnEts, CodeFonction, Commentaire, NumLien, CodeTuteur, ResponsableEts, GererPar, Interruption, SujetStage, TitreVise, CodeContactEni) VALUES (10, 2, '2018-09-05 19:36:40.230', '1    ', '2018-08-05 19:35:56.413', '2019-09-05 19:36:02.797', null, null, 3, null, null, null, null, null, 'CDI  ', null);
INSERT INTO StagiaireParEntreprise (CodeStagiaire, CodeEntreprise, DateLien, CodeTypeLien, DateDebutEnEts, DateFinEnEts, CodeFonction, Commentaire, NumLien, CodeTuteur, ResponsableEts, GererPar, Interruption, SujetStage, TitreVise, CodeContactEni) VALUES (12, 3, '2018-09-05 19:36:40.230', '1    ', '2018-08-05 19:35:56.413', '2019-09-05 19:36:02.797', null, null, 4, null, null, null, null, null, 'ASR  ', null);
INSERT INTO StagiaireParEntreprise (CodeStagiaire, CodeEntreprise, DateLien, CodeTypeLien, DateDebutEnEts, DateFinEnEts, CodeFonction, Commentaire, NumLien, CodeTuteur, ResponsableEts, GererPar, Interruption, SujetStage, TitreVise, CodeContactEni) VALUES (13, 4, '2018-09-05 19:36:40.230', '1    ', '2018-08-05 19:35:56.413', '2019-09-05 19:36:02.797', null, null, 5, null, null, null, null, null, 'MS2I ', null);
INSERT INTO StagiaireParEntreprise (CodeStagiaire, CodeEntreprise, DateLien, CodeTypeLien, DateDebutEnEts, DateFinEnEts, CodeFonction, Commentaire, NumLien, CodeTuteur, ResponsableEts, GererPar, Interruption, SujetStage, TitreVise, CodeContactEni) VALUES (14, 5, '2018-09-05 19:36:40.230', '1    ', '2018-08-05 19:35:56.413', '2019-09-05 19:36:02.797', null, null, 6, null, null, null, null, null, 'MS2I ', null);


INSERT INTO Formation VALUES('17ASR','Administrateur Système Et Réseau','[2017]ASR',1680,0,'ASR',0,1120,560,32,16,48,0,NULL,1,NULL)
INSERT INTO Formation VALUES('17CDI','Concepteur Développeur Informatique','[2017]CDI',1295,0,'CDI',0,1015,280,29,8,37,0,NULL,1,NULL)
INSERT INTO Formation VALUES('17CDI_Q','Concepteur Développeur Informatique','[2017]CDI_Q',1365,0,'CDI',0,1085,280,31,8,39,0,NULL,1,NULL)
INSERT INTO Formation VALUES('17DL','Développeur Logiciel','[2017]DL',1099,0,'DL',0,819,280,24,8,32,0,NULL,1,NULL)
INSERT INTO Formation VALUES('17DLAPP','Développeur Logiciel','[2017]DL_APP',1050,0,'DL',0,1050,0,30,0,30,0,NULL,3,NULL)
INSERT INTO Formation VALUES('17MSI-IN','Manager Des Systèmes D''information Et D''infrastructure - Option Infrastructure','[2017]MS2I INFRA',497,0,'MS2I',0,497,0,14,0,14,0,NULL,1,NULL)
INSERT INTO Formation VALUES('17MSI-SI','Manager Des Systèmes D''information Et D''infrastructure - Option Systèmes D''information','[2017]MS2I SI',490,0,'MS2I',0,490,0,14,0,14,0,NULL,1,NULL)
INSERT INTO Formation VALUES('17POEC01','Technicien Support','[2017] POE TECH SUPPORT 1',420,0,NULL,0,420,0,12,0,12,0,NULL,2,NULL)
INSERT INTO Formation VALUES('17POEC02','Formation Aux Tests','[2017] POE TEST',378,0,NULL,0,308,70,9,2,11,0,NULL,2,NULL)
INSERT INTO Formation VALUES('17POEC05','Formation Systèmes & Réseau','[2017] POE SYS-RES',378,0,NULL,0,308,70,9,2,11,0,NULL,2,NULL)
INSERT INTO Formation VALUES('17POEC06','Développeur Java','[2017] POEC JAVA',385,0,NULL,0,315,70,9,2,11,0,NULL,2,NULL)
INSERT INTO Formation VALUES('17POEC07','Développeur Java','[2017] POEC JAVA 2',385,0,NULL,0,315,70,9,2,11,0,NULL,2,NULL)
INSERT INTO Formation VALUES('17POEC3','Formation Au Développement Avec Php','[2017] POE PHP',385,0,NULL,0,315,70,9,2,11,0,NULL,2,NULL)
INSERT INTO Formation VALUES('17POEC4','Concepteur Développeur Dot.Net','[2017] POE .NET',378,0,NULL,0,308,70,9,2,11,0,NULL,2,NULL)
INSERT INTO Formation VALUES('17SOPJ01','Développement Java Pour Sopra-Steria','[2017]SOPRA JAVA V1',280,0,NULL,0,280,0,8,0,8,0,NULL,1,NULL)
INSERT INTO Formation VALUES('17SOPJ02','Formation Java Et Tests','[2017]SOPRA JAVA V2,',385,0,NULL,0,329,56,9,2,11,0,NULL,1,NULL)
INSERT INTO Formation VALUES('17SOPJ03','Développement Java Pour Sopra-Steria','[2017]SOPRA JAVA V3273',273,0,NULL,0,273,0,8,0,8,0,NULL,1,NULL)
INSERT INTO Formation VALUES('17T2APP','Technicien(Ne) Supérieur(E) De Support En Informatique','[2017]T2SI_APP',994,0,'TSSI',0,994,0,29,0,29,0,NULL,3,NULL)
INSERT INTO Formation VALUES('17T2SI','Technicien(Ne) Supérieur(E) De Support En Informatique','[2017]T2SI',1155,0,'TSSI',0,875,280,25,8,33,0,NULL,1,NULL)
INSERT INTO Formation VALUES('17T2SR','Technicien(Ne) Supérieur(E) De Support En Informatique','[2017]T2SI R',1169,0,'TSSI',0,889,280,26,8,34,0,NULL,1,NULL)
INSERT INTO Formation VALUES('17TSRIT','Technicien(Ne) Supérieur(E) En Réseaux Informatiques Et Télécommunications','[2017]TSRIT',1050,0,'TSRIT',0,770,280,22,8,30,0,NULL,1,NULL)
INSERT INTO Formation VALUES('DCMETIER','Découverte Des Metiers Du Numérique','[2017]DECOUVERTE',140,0,NULL,0,140,0,4,0,4,0,NULL,1,NULL)
INSERT INTO Formation VALUES('GEN_T2SI','G.E.N. - Technicien(Ne) Supérieur(E) De Support En Informatique','[2017] GEN T2SI',1015,0,'TSSI',0,875,140,25,4,29,0,NULL,4,NULL)



INSERT INTO Lieu VALUES('NANTES',0,1,'9H00','12H30','14H00','17H30','ZAC du Moulin Neuf - 2 B Rue Benjamin Franklin BP 80009',44801,'SAINT-HERBLAIN')
INSERT INTO Lieu VALUES('RENNES',0,1,'9H00','12H30','13H30','17H00','ZAC de la Conterie - 8 rue Léo Lagrange',35131,'CHARTRES DE BRETAGNE')
INSERT INTO Lieu VALUES('ST NAZAIRE',0,0,'9H00','12H30','13H30','17H00',NULL,NULL,NULL)
INSERT INTO Lieu VALUES('ENI SERVICE',0,1,'9H00','12H30','14H00','17H30','7Bis Avenue Jacques Cartier',4480,'SAINT HERBLAIN')
INSERT INTO Lieu VALUES('NIORT',0,1,'9H00','12H30','13H30','17H00','19 avenue Léo Lagrange' ,79000,'NIORT')
INSERT INTO Lieu VALUES('AUTRE',0,1,'9H00','12H30','14H00','17H30','ZAC du Moulin Neuf - 2 B Rue Benjamin Franklin BP 80009',44801,'SAINT-HERBLAIN')
INSERT INTO Lieu VALUES('SALLE EDITIONS',0,0,'9H00','12H30','14H00','17H30',NULL,NULL,NULL)
INSERT INTO Lieu VALUES('QUIMPER',0,1,'9H00','12H30','13H30','17H00','La Cantine numérique de Cornouaille Silicon Kerné - 2 Rue François Briant-de-Laubrière -',29000,'QUIMPER')
INSERT INTO Lieu VALUES('HUB CREATIC',0,1,'9H00','12H30','13H30','17H00','6 Rue Rose Dieng-Kuntz',44300,'NANTES')
INSERT INTO Lieu VALUES('LA ROCHE SUR YON',0,1,'9H00','12H30','13H30','17H00','12 avenue AMPERE' ,85000,'LA ROCHE SUR YON')
INSERT INTO Lieu VALUES('ANGERS',0,1,'08h00','12h00','13h00','17h00','6 Rue Guillaume Lekeu',49004,'Angers')
INSERT INTO Lieu VALUES('LE MANS',0,1,'9h00','12h30','13h30','17h00','Les Centres du Mans, 366 avenue Georges Durand',72100,'Le Mans')
INSERT INTO Lieu VALUES('EUPTOYOU',0,1,'9h00','12h30','13h30','17h00','4 rue Edith Piaf, Immeuble Asturia C',44800,'Saint Herblain')


INSERT INTO Salle VALUES('0001','Salle 1',13,4)
INSERT INTO Salle VALUES('0002','Salle 2',13,4)
INSERT INTO Salle VALUES('001','Salle 001',28,1)
INSERT INTO Salle VALUES('002','Salle 002',26,1)
INSERT INTO Salle VALUES('003','Salle 003',10,1)
INSERT INTO Salle VALUES('1','Salle 0.1',25,2)
INSERT INTO Salle VALUES('100','Salle 100',1,6)
INSERT INTO Salle VALUES('1000','Salle 1000',1,6)
INSERT INTO Salle VALUES('10000','Salle HUB1',33,9)
INSERT INTO Salle VALUES('10001','La Roche sur Yon',15,10)
INSERT INTO Salle VALUES('101','Salle 101',28,1)
INSERT INTO Salle VALUES('102','Salle 102',28,1)
INSERT INTO Salle VALUES('104','Salle 104',21,1)
INSERT INTO Salle VALUES('105','Salle 105',20,1)
INSERT INTO Salle VALUES('2','Salle 0.2',27,2)
INSERT INTO Salle VALUES('200','Salle 200',1,6)
INSERT INTO Salle VALUES('2000','Salle 2000',1,6)
INSERT INTO Salle VALUES('2002','Niort 202',24,5)
INSERT INTO Salle VALUES('201','Salle 201',28,1)
INSERT INTO Salle VALUES('202','Salle 202',28,1)
INSERT INTO Salle VALUES('204','Salle 204',21,1)
INSERT INTO Salle VALUES('205','Salle 205',21,1)
INSERT INTO Salle VALUES('206','Salle 206',21,1)
INSERT INTO Salle VALUES('207','Salle 207',25,1)
INSERT INTO Salle VALUES('26','Salle 2.6',21,2)
INSERT INTO Salle VALUES('27','Salle 2.7',28,2)
INSERT INTO Salle VALUES('28','Salle 2.8',21,2)
INSERT INTO Salle VALUES('29','Salle Quimper',16,8)
INSERT INTO Salle VALUES('3','Salle 1.3',31,2)
INSERT INTO Salle VALUES('300','Salle 300',1,6)
INSERT INTO Salle VALUES('3000','Salle 3000',1,6)
INSERT INTO Salle VALUES('303','Salle 303',1,1)
INSERT INTO Salle VALUES('304','Salle 304',15,1)
INSERT INTO Salle VALUES('4','Salle 1.4',24,2)
INSERT INTO Salle VALUES('400','Salle 400',1,6)
INSERT INTO Salle VALUES('4000','Salle 4000',1,6)
INSERT INTO Salle VALUES('41','Salle 44 ENI Service',11,2)
INSERT INTO Salle VALUES('44000','Salle Réunion Editions',1,1)
INSERT INTO Salle VALUES('44001','Salle Bureau Luc',1,1)
INSERT INTO Salle VALUES('5','Salle 1.5',16,2)
INSERT INTO Salle VALUES('500','Salle 500',1,6)
INSERT INTO Salle VALUES('5000','Salle 5000',30,6)
INSERT INTO Salle VALUES('50000','Niort 201',16,5)
INSERT INTO Salle VALUES('600','Salle 600',1,6)
INSERT INTO Salle VALUES('6000','Salle 6000',1,6)
INSERT INTO Salle VALUES('60000','Niort Ext',18,5)
INSERT INTO Salle VALUES('700','Salle 700',1,6)
INSERT INTO Salle VALUES('7000','Rennes Externe',27,2)
INSERT INTO Salle VALUES('800','Salle 800',1,6)
INSERT INTO Salle VALUES('888','Salle Piscine',12,2)
INSERT INTO Salle VALUES('889','Salle 40 ENIService',12,2)
INSERT INTO Salle VALUES('900','Salle 900',1,6)
INSERT INTO Salle VALUES('9000','Hub Formateur',1,9)
INSERT INTO Salle VALUES('99','Salle JURY',3,7)
INSERT INTO Salle VALUES('999','Niort 001',18,5)
INSERT INTO Salle VALUES('99998','Salle TEMP2',50,1)
INSERT INTO Salle VALUES('99999','Salle TEMP1',150,1)
INSERT INTO Salle VALUES('B300','Salle B300',3,1)


INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('AASR_001', 'AASR_001', '2018-04-09 00:00:00.000', '2019-03-29 00:00:00.000', '17ASR   ', 0, 0, 0, 11);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('ACDI_001', 'ACDI_001', '2018-06-11 00:00:00.000', '2019-03-15 00:00:00.000', '17CDI   ', 0, 0, 0, 11);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('ADL__001', 'ADL__001', '2018-03-05 00:00:00.000', '2018-10-12 00:00:00.000', '17DL    ', 0, 0, 0, 11);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('HASR_107', 'HASR_107', '2018-04-09 00:00:00.000', '2019-03-29 00:00:00.000', '17ASR   ', 0, 0, 0, 1);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('HASR_108', 'HASR_108', '2018-06-04 00:00:00.000', '2019-05-10 00:00:00.000', '17ASR   ', 0, 0, 0, 1);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('HASR_109', 'HASR_109', '2018-09-10 00:00:00.000', '2019-08-23 00:00:00.000', '17ASR   ', 0, 0, 0, 1);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('HASR_110', 'HASR_110', '2018-12-03 00:00:00.000', '2019-11-15 00:00:00.000', '17ASR   ', 0, 0, 0, 1);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('HCD17_73', 'HCD17_73', '2018-04-09 00:00:00.000', '2019-01-11 00:00:00.000', '17CDI   ', 0, 0, 0, 1);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('HCD17_75', 'HCD17_75', '2018-10-01 00:00:00.000', '2019-06-28 00:00:00.000', '17CDI   ', 0, 0, 0, 1);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('HCD17_76', 'HCD17_76', '2018-11-26 00:00:00.000', '2019-08-23 00:00:00.000', '17CDI   ', 0, 0, 0, 1);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('HDL17128', 'HDL17128', '2018-03-26 00:00:00.000', '2018-11-09 00:00:00.000', '17DL    ', 0, 0, 0, 1);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('HDL17129', 'HDL17129', '2018-05-28 00:00:00.000', '2019-01-11 00:00:00.000', '17DL    ', 0, 0, 0, 1);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('HDL17130', 'HDL17130', '2018-09-17 00:00:00.000', '2019-05-03 00:00:00.000', '17DL    ', 0, 0, 0, 1);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('HMS2IN08', 'HMS2IN08', '2018-10-22 00:00:00.000', '2019-09-20 00:00:00.000', '17MSI-IN', 0, 0, 0, 9);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('HMS2SI08', 'HMS2SI08', '2018-10-15 00:00:00.000', '2019-10-04 00:00:00.000', '17MSI-SI', 0, 0, 0, 9);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('HPOE1712', 'HPOE1712', '2017-12-11 00:00:00.000', '2018-03-02 00:00:00.000', '17POEC07', 0, 0, 0, 1);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('HPOE1802', 'HPOE1802', '2018-02-19 00:00:00.000', '2018-04-20 00:00:00.000', '17POEC02', 0, 0, 0, 1);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('HT2SI088', 'HT2SI088', '2018-01-02 00:00:00.000', '2018-08-24 00:00:00.000', '17T2SI  ', 0, 0, 0, 1);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('HT2SI089', 'HT2SI089', '2018-05-14 00:00:00.000', '2019-01-11 00:00:00.000', '17T2SI  ', 0, 0, 0, 1);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('HT2SI090', 'HT2SI090', '2018-10-08 00:00:00.000', '2019-06-07 00:00:00.000', '17T2SI  ', 0, 0, 0, 1);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('HTSRI107', 'HTSRI107', '2018-04-09 00:00:00.000', '2018-11-09 00:00:00.000', '17TSRIT ', 0, 0, 0, 1);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('HTSRI108', 'HTSRI108', '2018-06-04 00:00:00.000', '2019-01-04 00:00:00.000', '17TSRIT ', 0, 0, 0, 1);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('HTSRI109', 'HTSRI109', '2018-09-10 00:00:00.000', '2019-04-19 00:00:00.000', '17TSRIT ', 0, 0, 0, 1);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('HTSRI110', 'HTSRI110', '2018-12-03 00:00:00.000', '2019-07-12 00:00:00.000', '17TSRIT ', 0, 0, 0, 1);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('LRDL_002', 'LRDL_002', '2018-03-26 00:00:00.000', '2018-11-09 00:00:00.000', '17DL    ', 0, 0, 0, 10);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('LRDL_003', 'LRDL_003', '2018-11-19 00:00:00.000', '2019-07-05 00:00:00.000', '17DL    ', 0, 0, 0, 10);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('MDL__001', 'MDL__001', '2018-01-15 00:00:00.000', '2018-08-24 00:00:00.000', '17DL    ', 0, 0, 0, 12);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('MTSRI001', 'MTSRI001', '2018-01-22 00:00:00.000', '2018-08-24 00:00:00.000', '17TSRIT ', 0, 0, 0, 12);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('NASR_004', 'NASR_004', '2018-10-15 00:00:00.000', '2020-06-26 00:00:00.000', '17ASR   ', 0, 0, 0, 5);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('NGEN_001', 'NGEN_001', '2018-03-19 00:00:00.000', '2019-07-19 00:00:00.000', 'GEN_T2SI', 0, 0, 0, 5);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('RCDI_020', 'RCDI_020', '2017-12-11 00:00:00.000', '2019-10-25 00:00:00.000', '17CDI   ', 0, 0, 0, 2);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('RCDI_021', 'RCDI_021', '2018-03-05 00:00:00.000', '2018-12-11 00:00:00.000', '17CDI_Q ', 0, 0, 0, 2);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('RPO1712S', 'RPO1712S', '2017-12-11 00:00:00.000', '2018-03-02 00:00:00.000', '17POEC05', 0, 0, 0, 2);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('RSOP1801', 'RSOP1801', '2018-01-15 00:00:00.000', '2018-03-16 00:00:00.000', '17SOPJ03', 0, 0, 0, 2);
INSERT INTO Promotion (CodePromotion, Libelle, Debut, Fin, CodeFormation, PrixPublicAffecte, PrixPECAffecte, PrixFinanceAffecte, CodeLieu) VALUES ('RTSRI003', 'RTSRI003', '2018-04-09 00:00:00.000', '2018-11-20 00:00:00.000', '17TSRIT ', 0, 0, 0, 2);

INSERT INTO UniteFormation VALUES('Développement Java SOPRA-STERIA (2017)',280,8,'17SOPJAV',0)
INSERT INTO UniteFormation VALUES('Assistance aux utilisateurs du poste de travail',350,10,'IM14ASS17',0)
INSERT INTO UniteFormation VALUES('Services Réseaux',245,7,'IM-SR-2014',0)
INSERT INTO UniteFormation VALUES('Les services transverses',280,8,'IM14-SERV',0)
INSERT INTO UniteFormation VALUES('Stage Informaticien Micro',280,8,'STAGE-IM-2',0)
INSERT INTO UniteFormation VALUES('Unité de formation TSRIT',770,22,'TSRIT-UF17',0)
INSERT INTO UniteFormation VALUES('Stage Technicien Supérieur en Réseaux Informatiques et Télécommunications',280,8,'STAGETSRIT',0)
INSERT INTO UniteFormation VALUES('Unité de formation TSRIT',770,22,'TSRIT-UF17',0)
INSERT INTO UniteFormation VALUES('Stage Administrateur Système et Réseau',280,8,'STAGE-ASR',0)
INSERT INTO UniteFormation VALUES('Unité de formation ASR',350,10,'ASR-UF',0)
INSERT INTO UniteFormation VALUES('Stage Administrateur Système et Réseau',280,8,'STAGE-ASR',0)
INSERT INTO UniteFormation VALUES('Unité de formation DL',805,23,'17DL1',0)
INSERT INTO UniteFormation VALUES('Stage Développeur Logiciel',280,8,'STAGE-DL',0)
INSERT INTO UniteFormation VALUES('Unité de formation Concepteur Développeur Informatique',1015,29,'17CDI1',0)
INSERT INTO UniteFormation VALUES('Stage CDI',280,8,'STAGE-CDI2',0)
INSERT INTO UniteFormation VALUES('Assistance aux utilisateurs du poste de travail',350,10,'IM14ASS17',0)
INSERT INTO UniteFormation VALUES('Services Réseaux',245,7,'IM-SR-2014',0)
INSERT INTO UniteFormation VALUES('Les services transverses',280,8,'IM14-SERV',0)
INSERT INTO UniteFormation VALUES('Stage Informaticien Micro',280,8,'STAGE-IM-2',0)
INSERT INTO UniteFormation VALUES('Bilan final',14,1,'IM-BILAN',0)
INSERT INTO UniteFormation VALUES('Bilan final',14,1,'LR-DL-UF3',0)
INSERT INTO UniteFormation VALUES('Assistance aux utilisateur sdu poste de travail',420,12,'POETESUPP',0)
INSERT INTO UniteFormation VALUES('Développement Java et tests (SOPRA-STERIA - 2017)',385,11,'17SOPJAV2',0)
INSERT INTO UniteFormation VALUES('Formation aux tests',315,9,'POETEST17',0)
INSERT INTO UniteFormation VALUES('Formation en centre',315,9,'POE17CEN9',0)
INSERT INTO UniteFormation VALUES('Immersion en entreprise',70,2,'POE17ENT2',0)
INSERT INTO UniteFormation VALUES('Immersion en entreprise',70,2,'POE17ENT2',0)
INSERT INTO UniteFormation VALUES('Formation MS2I-IN',490,14,'MS2I-IN',0)
INSERT INTO UniteFormation VALUES('Formation MS2I-SI',490,14,'MS2I-SI',0)
INSERT INTO UniteFormation VALUES('Formation en centre',140,4,'FORMCENTRE',0)
INSERT INTO UniteFormation VALUES('Développement Java SOPRA-STERIA (2017)',280,8,'17SOPJAV',0)
INSERT INTO UniteFormation VALUES('Unité de formation DL Année 1 Apprentissage',539,16,'17DLAPP1',0)
INSERT INTO UniteFormation VALUES('Unité de formation DL Année 2 Apprentissage',490,14,'17DLAPP2',0)
INSERT INTO UniteFormation VALUES('Unité de formation T2SI Année 1 Apprentissange',504,15,'17T2SIAPP1',0)
INSERT INTO UniteFormation VALUES('Unité de formation T2SI Année 2 Apprentissange',490,14,'17T2SIAPP2',0)
INSERT INTO UniteFormation VALUES('Stage CDI',280,8,'STAGE-CDI2',0)
INSERT INTO UniteFormation VALUES('Unité de formation Concepteur Développeur Informatique',1085,31,'17CDIQ2',0)
INSERT INTO UniteFormation VALUES('Bilan final',14,0,'17CDIQBIL',0)
INSERT INTO UniteFormation VALUES('Immersion en entreprise',70,2,'POE17ENT2',0)
INSERT INTO UniteFormation VALUES('Formation en centre',315,9,'POE17CEN9',0)
INSERT INTO UniteFormation VALUES('Bilan Final',0,0,'17BILAN',0)
INSERT INTO UniteFormation VALUES('Bilan Final',0,0,'17BILAN',0)
INSERT INTO UniteFormation VALUES('GEN - Formation continue',490,14,'GEN_FC',0)
INSERT INTO UniteFormation VALUES('GEN - Stage en entreprise',140,4,'GEN_STAGE',0)
INSERT INTO UniteFormation VALUES('GEN - Formation en alternance',385,11,'GEN_CP',0)
INSERT INTO UniteFormation VALUES('Session d''examen',14,0,'GEN EXAM',0)
INSERT INTO UniteFormation VALUES('Formation en centre',315,9,'POE17CEN9',0)
INSERT INTO UniteFormation VALUES('Immersion en entreprise',70,2,'POE17ENT2',0)
INSERT INTO UniteFormation VALUES('Formation en centre',315,9,'POE17CEN9',0)
INSERT INTO UniteFormation VALUES('Immersion en entreprise',70,2,'POE17ENT2',0)
INSERT INTO UniteFormation VALUES('Formation en centre',315,9,'POE17CEN9',0)
INSERT INTO UniteFormation VALUES('Immersion en entreprise',70,2,'POE17ENT2',0)


INSERT INTO UniteParFormation VALUES('17SOPJ01',0,1)    
INSERT INTO UniteParFormation VALUES('17T2SI  ',0,2)
INSERT INTO UniteParFormation VALUES('17T2SI  ',1,3)
INSERT INTO UniteParFormation VALUES('17T2SI  ',2,4)
INSERT INTO UniteParFormation VALUES('17T2SI  ',3,5)
INSERT INTO UniteParFormation VALUES('17TSRIT ',0,6)
INSERT INTO UniteParFormation VALUES('17TSRIT ',1,7)
INSERT INTO UniteParFormation VALUES('17ASR   ',0,8)
INSERT INTO UniteParFormation VALUES('17ASR   ',3,9)
INSERT INTO UniteParFormation VALUES('17ASR   ',2,10)
INSERT INTO UniteParFormation VALUES('17ASR   ',1,11)
INSERT INTO UniteParFormation VALUES('17DL    ',0,12)
INSERT INTO UniteParFormation VALUES('17DL    ',1,13)
INSERT INTO UniteParFormation VALUES('17CDI   ',0,14)
INSERT INTO UniteParFormation VALUES('17CDI   ',1,15)
INSERT INTO UniteParFormation VALUES('17T2SR  ',0,16)
INSERT INTO UniteParFormation VALUES('17T2SR  ',1,17)
INSERT INTO UniteParFormation VALUES('17T2SR  ',2,18)
INSERT INTO UniteParFormation VALUES('17T2SR  ',3,19)
INSERT INTO UniteParFormation VALUES('17T2SR  ',4,20)
INSERT INTO UniteParFormation VALUES('17DL    ',2,21)
INSERT INTO UniteParFormation VALUES('17POEC01',0,22)
INSERT INTO UniteParFormation VALUES('17SOPJ02',0,23)
INSERT INTO UniteParFormation VALUES('17POEC02',0,24)
INSERT INTO UniteParFormation VALUES('17POEC3 ',0,25)
INSERT INTO UniteParFormation VALUES('17POEC3 ',1,26)
INSERT INTO UniteParFormation VALUES('17POEC02',1,27)
INSERT INTO UniteParFormation VALUES('17MSI-IN',0,28)
INSERT INTO UniteParFormation VALUES('17MSI-SI',0,29)
INSERT INTO UniteParFormation VALUES('DCMETIER',0,30)
INSERT INTO UniteParFormation VALUES('17SOPJ03',0,31)
INSERT INTO UniteParFormation VALUES('17DLAPP ',0,32)
INSERT INTO UniteParFormation VALUES('17DLAPP ',1,33)
INSERT INTO UniteParFormation VALUES('17T2APP ',0,34)
INSERT INTO UniteParFormation VALUES('17T2APP ',1,35)
INSERT INTO UniteParFormation VALUES('17CDI_Q ',1,36)
INSERT INTO UniteParFormation VALUES('17CDI_Q ',0,37)
INSERT INTO UniteParFormation VALUES('17CDI_Q ',2,38)
INSERT INTO UniteParFormation VALUES('17POEC4 ',1,39)
INSERT INTO UniteParFormation VALUES('17POEC4 ',0,40)
INSERT INTO UniteParFormation VALUES('17TSRIT ',2,41)
INSERT INTO UniteParFormation VALUES('17CDI   ',2,42)
INSERT INTO UniteParFormation VALUES('GEN_T2SI',0,43)
INSERT INTO UniteParFormation VALUES('GEN_T2SI',1,44)
INSERT INTO UniteParFormation VALUES('GEN_T2SI',2,45)
INSERT INTO UniteParFormation VALUES('GEN_T2SI',3,46)
INSERT INTO UniteParFormation VALUES('17POEC05',0,47)
INSERT INTO UniteParFormation VALUES('17POEC05',1,48)
INSERT INTO UniteParFormation VALUES('17POEC06',0,49)
INSERT INTO UniteParFormation VALUES('17POEC06',1,50)
INSERT INTO UniteParFormation VALUES('17POEC07',0,51)
INSERT INTO UniteParFormation VALUES('17POEC07',1,52)

INSERT INTO Module VALUES ('Algorithme et initiation à la programmation',35,1,0,'R-SOP-ALGO',648,0,1)
INSERT INTO Module VALUES ('SQL et initiation NoSQL',21,1,0,'R-SOP-SQL',649,0,1)
INSERT INTO Module VALUES ('Programmation orientée objet avec Java',35,1,0,'R-SOP-POOJ',650,0,1)
INSERT INTO Module VALUES ('Développement avec Java SE',49,1,0,'SOP-JAVA-1',712,0,1)
INSERT INTO Module VALUES ('Développement Web côté client (HTML-CSS-Javascript)',35,1,0,'SOP-WEBCL',713,0,1)
INSERT INTO Module VALUES ('Développement Web avec Java EE',70,2,0,'SOP-JAVA-2',714,0,1)
INSERT INTO Module VALUES ('AngularJS',21,1,0,'R-SOP-ANG',655,0,1)
INSERT INTO Module VALUES ('Cas pratique',14,0,0,'SOP-PRATIQU',715,0,1)
INSERT INTO Module VALUES ('Base des réseaux',35,1,0,'IM-BDR',44,0,1)
INSERT INTO Module VALUES ('Assistance bureautique',70,2,0,'BUREAUTIQUE',192,0,1)
INSERT INTO Module VALUES ('Utilisation et administration d''un système Windows Client',70,2,0,'IM-W7',45,0,1)
INSERT INTO Module VALUES ('Utilisation et administration d''un système Linux',105,3,0,'IM-UA-LINUX',269,0,1)
INSERT INTO Module VALUES ('TP système client',70,2,0,'IM-TPSYS17',720,0,1)
INSERT INTO Module VALUES ('Services réseaux Windows',105,3,0,'IM-RES-WINDOWS',344,0,1)
INSERT INTO Module VALUES ('Déploiement des postes de travail sur un réseau d''entreprise',35,1,0,'IM-WDS',345,0,1)
INSERT INTO Module VALUES ('Services Réseaux Linux',70,2,0,'IM-RES-LIN-2014',270,0,1)
INSERT INTO Module VALUES ('TP services réseaux hétérogènes',35,1,0,'IM-RES-TP',53,0,1)
INSERT INTO Module VALUES ('Messagerie',70,2,0,'IM-MESSAG',54,0,1)
INSERT INTO Module VALUES ('Virtualisation et clients légers',35,1,0,'IM-VIRT',347,0,1)
INSERT INTO Module VALUES ('Administration d''un serveur applicatif',35,1,0,'IM-SERV-APPL',346,0,1)
INSERT INTO Module VALUES ('ITIL, gestion de parc et centre de support',70,2,0,'IM-ITIL',51,0,1)
INSERT INTO Module VALUES ('Supervision avec NAGIOS',35,1,0,'IM-NAGIOS',477,0,1)
INSERT INTO Module VALUES ('TP et évaluations finales',35,1,0,'IM-EVAL',56,0,1)
INSERT INTO Module VALUES ('Stage Informaticien Micro',280,8,0,'IM-STAGE',57,0,2)
INSERT INTO Module VALUES ('Utilisation des environnements Windows et GNU/Linux',70,2,0,'UTIL-POSTE',506,0,1)
INSERT INTO Module VALUES ('Initiation aux réseaux en environnement CISCO (CCNA-1V5)',70,2,0,'CISCO-1',478,0,1)
INSERT INTO Module VALUES ('Administration des systèmes informatiques',105,3,0,'ADMIN-SYST',509,0,1)
INSERT INTO Module VALUES ('Services Réseaux',70,2,0,'SERV-RES17',721,0,1)
INSERT INTO Module VALUES ('Services Réseaux (mise en  situation professionnelle)',70,2,0,'SRVRES-MSP',722,0,1)
INSERT INTO Module VALUES ('Virtualisation de serveurs : gestion et exploitation',35,1,0,'VIRT-TSRIT',513,0,1)
INSERT INTO Module VALUES ('Gestion de projet',35,1,0,'GPROJ-TSRIT',515,0,1)
INSERT INTO Module VALUES ('Scripting et PowerShell',70,2,0,'SCRIPT-PWSHEL',517,0,1)
INSERT INTO Module VALUES ('Téléphonie IP et Messagerie',70,2,0,'TOIP-MESSAGERIE',519,0,1)
INSERT INTO Module VALUES ('Projet systèmes et réseaux - 1',35,1,0,'PROJ-TSRIT',625,0,1)
INSERT INTO Module VALUES ('Supervision avec Nagios',35,1,0,'NAGIOS',317,0,1)
INSERT INTO Module VALUES ('Routage et commutation avancés en environnement CISCO (CCNA 2 et 3 V5)',105,3,0,'CISCO-2-3',523,0,1)
INSERT INTO Module VALUES ('Stage Systèmes et Réseaux',280,8,0,'STAGE-TSRIT',525,0,2)
INSERT INTO Module VALUES ('Stage Administrateur Système et Réseau',280,8,0,'STAGE-ASR',93,0,2)
INSERT INTO Module VALUES ('Serveurs WEB et serveurs d''applications',70,2,0,'SERV-WEB',536,0,1)
INSERT INTO Module VALUES ('Virtualisation de serveurs : conception et architecture',35,1,0,'VIRT-ASR',533,0,1)
INSERT INTO Module VALUES ('Services réseaux et sécurité',105,3,0,'SERV-RES-SEC',531,0,1)
INSERT INTO Module VALUES ('Utilisation et administration d''une base de données',70,2,0,'UTIL-ADMIN-BD',527,0,1)
INSERT INTO Module VALUES ('Administration des systèmes informatiques : niveau avancé',70,2,0,'ADMIN-SYST-AV',529,0,1)
INSERT INTO Module VALUES ('Algorithme',35,1,0,'ALGO-DL17',723,0,1)
INSERT INTO Module VALUES ('Initiation à la programmation procédurale avec Java',35,1,0,'INIT-DL17',724,0,1)
INSERT INTO Module VALUES ('Programmation orientée objet avec Java',35,1,0,'16DL-POOJ',708,0,1)
INSERT INTO Module VALUES ('Le langage de requête SQL',35,1,0,'SQL',20,0,1)
INSERT INTO Module VALUES ('Procédures stockées avec PL-SQL',35,1,0,'PL-SQL',21,0,1)
INSERT INTO Module VALUES ('Développement en couches avec Java',70,2,0,'JAVA1-DL17',725,0,1)
INSERT INTO Module VALUES ('Développement Web côté client',35,1,0,'DVWEBCL',541,0,1)
INSERT INTO Module VALUES ('Développement Web côté serveur avec PHP et Symfony',105,3,0,'DVWEBPH',544,0,1)
INSERT INTO Module VALUES ('Développement Web côté serveur avec Java EE',70,2,0,'JAVA-2',302,0,1)
INSERT INTO Module VALUES ('Projet 2 - Développement d''une application web ',105,3,0,'PRJ2-DEV17',727,0,1)
INSERT INTO Module VALUES ('Développement d''une application mobile avec Android',70,2,0,'MOB1-DEV17',728,0,1)
INSERT INTO Module VALUES ('Projet 3 - Développement d''une application mobile',35,1,0,'PRJ3-DEV17',729,0,1)
INSERT INTO Module VALUES ('Stage Développeur Logiciel',280,8,0,'STAGE-DL',33,0,2)
INSERT INTO Module VALUES ('Projet 1 - Développement d''une application client-serveur',70,2,0,'PRJ1-DEV17',730,0,1)
INSERT INTO Module VALUES ('Stage CDI',280,8,0,'STAGE-CDI2',304,0,2)
INSERT INTO Module VALUES ('Utilisation de frameworks pour le développement avec Java EE',70,2,0,'J2EAV',34,0,1)
INSERT INTO Module VALUES ('Administration d''un serveur Apache sous Linux',35,1,0,'APAC-CDI17',731,0,1)
INSERT INTO Module VALUES ('Conduite de projet',35,1,0,'CP-COURS',36,0,1)
INSERT INTO Module VALUES ('Développement Web côté serveur avec ASP.Net',105,3,0,'DVWEBASPX',560,0,1)
INSERT INTO Module VALUES ('Technologie multi plateforme (Cross-platform)',35,1,0,'XAMARIN',566,0,1)
INSERT INTO Module VALUES ('Bilan final',14,1,0,'R-IM-BILAN',421,0,1)
INSERT INTO Module VALUES ('Bilan final',14,1,0,'BILAN_FIN',733,0,1)
INSERT INTO Module VALUES ('Analyse et conception',70,2,0,'CONC-DEV17',734,0,1)
INSERT INTO Module VALUES ('Assistance bureautique',35,1,0,'POE-BUREAU',736,0,1)
INSERT INTO Module VALUES ('Base des réseaux',35,1,0,'POE-BDR',735,0,1)
INSERT INTO Module VALUES ('Utilisation et administration d''un système Windows Client',70,2,0,'POE-WIN-CLIENT',737,0,1)
INSERT INTO Module VALUES ('Utilisation d''un système Linux',35,1,0,'POE-LIN-UTIL',738,0,1)
INSERT INTO Module VALUES ('Services réseaux Windows',105,3,0,'POE-SERV-RES',739,0,1)
INSERT INTO Module VALUES ('Virtualisation et clients légers',35,1,0,'POE-VIRT-CLI',740,0,1)
INSERT INTO Module VALUES ('Messagerie',70,2,0,'POE-MESSAGE',741,0,1)
INSERT INTO Module VALUES ('Gestion de parc',35,1,0,'POE-GES-PARC',742,0,1)
INSERT INTO Module VALUES ('Modélisation et conception UML',35,1,0,'SOP-UML',743,0,1)
INSERT INTO Module VALUES ('Linux/Unix : utilisation en mode commande',35,1,0,'SOP-LINUX-U',744,0,1)
INSERT INTO Module VALUES ('Préparation à la certification ISTQB -  niveau Fondation',35,1,0,'SOP-ISTQB-FOND',745,0,1)
INSERT INTO Module VALUES ('Développement avec Java',35,1,0,'SOP-JAVA',746,0,1)
INSERT INTO Module VALUES ('Immersion en entreprise',35,1,0,'SOP-STAGE',747,0,2)
INSERT INTO Module VALUES ('Théorie des réseaux locaux',7,0,0,'SOP-BDR-17',749,0,1)
INSERT INTO Module VALUES ('Cas pratique',35,1,0,'SOP-TP',750,0,1)
INSERT INTO Module VALUES ('Hibernate/JPA',35,0,0,'SOP-HIB-JPA',751,0,1)
INSERT INTO Module VALUES ('Initiation à la programmation orientée objet et au langage SQL',35,1,0,'INIPOOSQL',698,0,1)
INSERT INTO Module VALUES ('Préparation à la certification CFTL/ISTQB niveau Fondation',70,2,0,'ISQTQB-FOND2',699,0,1)
INSERT INTO Module VALUES ('Quality Center',21,1,0,'POE-TEST-QCENTER',702,0,1)
INSERT INTO Module VALUES ('TestLink : mise en oeuvre d''un gestionnaire de tests Open Source',14,0,0,'POE-TEST-LINK',706,0,1)
INSERT INTO Module VALUES ('Selenium : automatiser les tests fonctionnels des applications Web',35,1,0,'POE-TEST-SELEN',752,0,1)
INSERT INTO Module VALUES ('Immersion en entreprise',70,2,0,'R-STAGE-POE',576,0,2)
INSERT INTO Module VALUES ('Développement web côté client',35,1,0,'POE17-WEBCLI',754,0,1)
INSERT INTO Module VALUES ('Développement Javascript',35,1,0,'POE17-JSCRIPT',755,0,1)
INSERT INTO Module VALUES ('Le langage PHP',35,1,0,'POE17-PHP',756,0,1)
INSERT INTO Module VALUES ('Développement avec le framework Symfony',70,2,0,'POE17-SYMFONY',757,0,1)
INSERT INTO Module VALUES ('Integration web',35,1,0,'POE17-INTEGR',758,0,1)
INSERT INTO Module VALUES ('Mise en oeuvre d''un CMS',35,1,0,'POE17-CMS',759,0,1)
INSERT INTO Module VALUES ('Projet : développement d''une application web',35,1,0,'POE17--PROJET',760,0,1)
INSERT INTO Module VALUES ('Immersion en entreprise',70,2,0,'STAGE-POE2',497,0,2)
INSERT INTO Module VALUES ('Conduite de projet',35,1,0,'17IN-RAPPELS-CP',761,0,1)
INSERT INTO Module VALUES ('Analyse des besoins',35,1,0,'17IN-BESOINS',762,0,1)
INSERT INTO Module VALUES ('Analyse et conception',35,1,0,'17IN-ANALYSE',763,0,1)
INSERT INTO Module VALUES ('CLOUD ',35,1,0,'17IN-CLOUD',764,0,1)
INSERT INTO Module VALUES ('Organisation d''une DSI',35,1,0,'17IN-ORGA-DSI',765,0,1)
INSERT INTO Module VALUES ('CCNA Sécurité',35,1,0,'17IN-CCNA-SECUR',766,0,1)
INSERT INTO Module VALUES ('Entretien mémoire & mise en commun projet',35,1,0,'17IN-PROJ-MEMOIRE',767,0,1)
INSERT INTO Module VALUES ('Qualité',35,1,0,'17IN-QUALITE',768,0,1)
INSERT INTO Module VALUES ('Soutenance intermédiaire & mise en commun projet',35,1,0,'17IN-PROJ-SOUTENANCE',769,0,1)
INSERT INTO Module VALUES ('Ethical Hacking',35,1,0,'17IN-ETHICAL-HACKING',770,0,1)
INSERT INTO Module VALUES ('Sécurité du Système d''Information',35,1,0,'17IN-SECURITE-SI',771,0,1)
INSERT INTO Module VALUES ('ITIL',35,1,0,'17IN-ITIL',772,0,1)
INSERT INTO Module VALUES ('Business Intelligence',35,1,0,'17IN-BUSINESS-INTEL',773,0,1)
INSERT INTO Module VALUES ('Présentation du projet d''études',35,1,0,'17IN-PROJ-FINAL',774,0,1)
INSERT INTO Module VALUES ('Conduite de projet',35,1,0,'17SI-RAPPELS-CP',775,0,1)
INSERT INTO Module VALUES ('Initiation aux réseaux',35,1,0,'17SI-CISCO-1',776,0,1)
INSERT INTO Module VALUES ('Analyse des besoins',35,1,0,'17SI-BESOINS',777,0,1)
INSERT INTO Module VALUES ('Qualité',35,1,0,'17SI-QUALITE',778,0,1)
INSERT INTO Module VALUES ('Soutenance intermédiaire & mise en commun projet',35,1,0,'17SI-PROJ-SOUTENANCE',779,0,1)
INSERT INTO Module VALUES ('Urbanisation d''un système d''information',35,1,0,'17SI-URBANISATION-SI',780,0,1)
INSERT INTO Module VALUES ('Agilité en gestion de projet ',35,1,0,'17SI-AGILITE',782,0,1)
INSERT INTO Module VALUES ('Simulations d''entretiens',35,1,0,'17SI-ORGA-DSI',783,0,1)
INSERT INTO Module VALUES ('Entretien mémoire & mise en commun projet',35,1,0,'17SI-PROJ-MEMOIRE',784,0,1)
INSERT INTO Module VALUES ('ITIL & organisation d''une DSI',35,1,0,'17SI-ITIL',785,0,1)
INSERT INTO Module VALUES ('Administration d''une base de données SQL Server',35,1,0,'17SI-ADMIN-SQL',786,0,1)
INSERT INTO Module VALUES ('Business Intelligence',35,1,0,'17SI-BUSINESS-INTEL',787,0,1)
INSERT INTO Module VALUES ('Objets connectés - Marketing',35,1,0,'17SI-IOT-MARKET',788,0,1)
INSERT INTO Module VALUES ('Présentation du projet d''études',35,1,0,'17SI-PROJ-FINAL',789,0,1)
INSERT INTO Module VALUES ('Présentation des métiers du numérique',35,1,0,'METIERS NUM',790,0,1)
INSERT INTO Module VALUES ('Métiers "Etudes et développement"',35,1,0,'METIERS DEV',791,0,1)
INSERT INTO Module VALUES ('Métiers "Support et infrastructure"',35,1,0,'METIERS SUPINF',792,0,1)
INSERT INTO Module VALUES ('Autres métiers du numérique',35,1,0,'METIERS AUTRES',793,0,1)
INSERT INTO Module VALUES ('UML',28,0,0,'R-SOP-UML2',796,0,1)
INSERT INTO Module VALUES ('Rentrée',14,1,0,'RENTRÉE',797,0,1)
INSERT INTO Module VALUES ('Programmation orientée objet avec Java',70,2,0,'17DLAPP_POOJ',798,0,1)
INSERT INTO Module VALUES ('Projet 1 - Développement d''une application client-serveur',105,3,0,'PRJ1-DLAPP17',799,0,1)
INSERT INTO Module VALUES ('Analyse et conception',70,2,0,'CONC-1',552,0,1)
INSERT INTO Module VALUES ('Projet analyse et conception',35,1,0,'CONC-2',553,0,1)
INSERT INTO Module VALUES ('Mobilité européenne',35,1,0,'MOB-DLAPP17',800,0,1)
INSERT INTO Module VALUES ('Développement Web côté serveur avec PHP',35,1,0,'PHP-APP17',802,0,1)
INSERT INTO Module VALUES ('Développement Web côté serveur avec Symfony',105,3,0,'SYM-APP17',803,0,1)
INSERT INTO Module VALUES ('Bilan - synthèse',35,1,0,'BIL-DLAPP',801,0,1)
INSERT INTO Module VALUES ('TP services réseaux hétérogènes',70,2,0,'IMAPP-RES-TP',804,0,1)
INSERT INTO Module VALUES ('CMAP',14,0,0,'POE-TEST-CMAP',805,0,1)
INSERT INTO Module VALUES ('Savoir être',7,0,0,'POE-TEST-ETRE',807,0,1)
INSERT INTO Module VALUES ('Evaluations (2ème chance)',7,0,0,'17IN-EVAL-2CHANCE',811,0,1)
INSERT INTO Module VALUES ('Bilan final',14,0,0,'17CDIQ_BILAN',812,0,1)
INSERT INTO Module VALUES ('Rappels POO & SQL ',35,1,0,'17POO&SQL',813,0,1)
INSERT INTO Module VALUES ('Développement d''une application objet avec C#',70,2,0,'17DEVOBJC#',814,0,1)
INSERT INTO Module VALUES ('Développement web côté serveur avec ASP',70,2,0,'17POOASP',815,0,1)
INSERT INTO Module VALUES ('Bilan final',14,0,0,'17BILAN FINAL',817,0,1)
INSERT INTO Module VALUES ('Base des réseaux',35,1,0,'GEN BASE RESEAU',818,0,1)
INSERT INTO Module VALUES ('Assistance bureautique',35,1,0,'GEN BUREAUTIQUE',819,0,1)
INSERT INTO Module VALUES ('Utilisation et administration d’un système Windows client ',70,2,0,'GEN WIN CLIENT',820,0,1)
INSERT INTO Module VALUES ('Utilisation et administration d’un système linux',105,3,0,'GEN LINUX',821,0,1)
INSERT INTO Module VALUES ('Travaux pratiques - Système client',35,1,0,'GEN TP SYS CLIENT',822,0,1)
INSERT INTO Module VALUES ('Services réseaux Windows',105,3,0,'GEN SRV RES WIN',823,0,1)
INSERT INTO Module VALUES ('ITIL, gestion de parc et centre de support',70,2,0,'GEN ITIL',824,0,1)
INSERT INTO Module VALUES ('Déploiement à partir de Microsoft Windows Server - Savoir-être & recherche d''emploi',35,1,0,'GEN DEPLOI TRE',825,0,1)
INSERT INTO Module VALUES ('Stage en entreprise',140,4,0,'GEN STAGE',826,0,2)
INSERT INTO Module VALUES ('Services réseaux Linux',105,3,0,'GEN SRV RES LINUX',827,0,1)
INSERT INTO Module VALUES ('Travaux pratiques - Administration d’un réseau Windows serveur et Linux ',35,1,0,'GEN TP SRV RESEAUX',828,0,1)
INSERT INTO Module VALUES ('Serveur applicatif',35,1,0,'GEN SERVEUR APPLI',829,0,1)
INSERT INTO Module VALUES ('Virtualisation et clients légers',70,2,0,'GEN VIRTUALISATION',830,0,1)
INSERT INTO Module VALUES ('Messagerie',70,2,0,'GEN MESSAGERIE',831,0,1)
INSERT INTO Module VALUES ('Supervision',35,1,0,'GEN SUPERVISION',832,0,1)
INSERT INTO Module VALUES ('Projet final et evaluations',35,1,0,'GEN TP EVAL',833,0,1)
INSERT INTO Module VALUES ('Session d''examen',14,0,0,'GEN EXAM CCP',834,0,1)
INSERT INTO Module VALUES ('SQL',35,1,0,'R-SOP-SQL3',835,0,1)
INSERT INTO Module VALUES ('Services Réseaux',70,2,0,'POE-SERV-RES',837,0,1)
INSERT INTO Module VALUES ('Révision et passage de certification',70,2,0,'POE-REV-CERT',836,0,1)
INSERT INTO Module VALUES ('Développement avec Java SE',70,2,0,'JAVA-1',301,0,1)
INSERT INTO Module VALUES ('Rappels sur la programmation en Java',35,0,0,'17POERAPPELSJAVA',843,0,1)
INSERT INTO Module VALUES ('CFTL Fondation',35,0,0,'17POETESTCFTL35',844,0,1)
INSERT INTO Module VALUES ('Algorithme et initiation programmation',35,1,0,'MODULEINDEPENDANT',692,0,1)
INSERT INTO Module VALUES ('Semaine AGIR',35,0,0,'GEN AGIR',845,0,1)


INSERT INTO ModuleParUnite VALUES(	0	,	1	,	648	)
INSERT INTO ModuleParUnite VALUES(	1	,	1	,	649	)
INSERT INTO ModuleParUnite VALUES(	2	,	1	,	650	)
INSERT INTO ModuleParUnite VALUES(	3	,	1	,	712	)
INSERT INTO ModuleParUnite VALUES(	4	,	1	,	713	)
INSERT INTO ModuleParUnite VALUES(	5	,	1	,	714	)
INSERT INTO ModuleParUnite VALUES(	6	,	1	,	655	)
INSERT INTO ModuleParUnite VALUES(	7	,	1	,	715	)
INSERT INTO ModuleParUnite VALUES(	0	,	2	,	44	)
INSERT INTO ModuleParUnite VALUES(	1	,	2	,	192	)
INSERT INTO ModuleParUnite VALUES(	2	,	2	,	45	)
INSERT INTO ModuleParUnite VALUES(	3	,	2	,	269	)
INSERT INTO ModuleParUnite VALUES(	4	,	2	,	720	)
INSERT INTO ModuleParUnite VALUES(	0	,	3	,	344	)
INSERT INTO ModuleParUnite VALUES(	1	,	3	,	345	)
INSERT INTO ModuleParUnite VALUES(	2	,	3	,	270	)
INSERT INTO ModuleParUnite VALUES(	3	,	3	,	53	)
INSERT INTO ModuleParUnite VALUES(	0	,	4	,	54	)
INSERT INTO ModuleParUnite VALUES(	1	,	4	,	347	)
INSERT INTO ModuleParUnite VALUES(	2	,	4	,	346	)
INSERT INTO ModuleParUnite VALUES(	3	,	4	,	51	)
INSERT INTO ModuleParUnite VALUES(	4	,	4	,	477	)
INSERT INTO ModuleParUnite VALUES(	5	,	4	,	56	)
INSERT INTO ModuleParUnite VALUES(	0	,	5	,	57	)
INSERT INTO ModuleParUnite VALUES(	0	,	6	,	506	)
INSERT INTO ModuleParUnite VALUES(	1	,	6	,	478	)
INSERT INTO ModuleParUnite VALUES(	2	,	6	,	509	)
INSERT INTO ModuleParUnite VALUES(	3	,	6	,	721	)
INSERT INTO ModuleParUnite VALUES(	4	,	6	,	722	)
INSERT INTO ModuleParUnite VALUES(	5	,	6	,	513	)
INSERT INTO ModuleParUnite VALUES(	6	,	6	,	515	)
INSERT INTO ModuleParUnite VALUES(	7	,	6	,	517	)
INSERT INTO ModuleParUnite VALUES(	8	,	6	,	519	)
INSERT INTO ModuleParUnite VALUES(	9	,	6	,	625	)
INSERT INTO ModuleParUnite VALUES(	10	,	6	,	317	)
INSERT INTO ModuleParUnite VALUES(	11	,	6	,	523	)
INSERT INTO ModuleParUnite VALUES(	0	,	7	,	525	)
INSERT INTO ModuleParUnite VALUES(	0	,	9	,	93	)
INSERT INTO ModuleParUnite VALUES(	4	,	10	,	536	)
INSERT INTO ModuleParUnite VALUES(	3	,	10	,	533	)
INSERT INTO ModuleParUnite VALUES(	2	,	10	,	531	)
INSERT INTO ModuleParUnite VALUES(	1	,	10	,	527	)
INSERT INTO ModuleParUnite VALUES(	0	,	10	,	529	)
INSERT INTO ModuleParUnite VALUES(	0	,	11	,	93	)
INSERT INTO ModuleParUnite VALUES(	0	,	8	,	506	)
INSERT INTO ModuleParUnite VALUES(	1	,	8	,	478	)
INSERT INTO ModuleParUnite VALUES(	2	,	8	,	509	)
INSERT INTO ModuleParUnite VALUES(	3	,	8	,	721	)
INSERT INTO ModuleParUnite VALUES(	4	,	8	,	722	)
INSERT INTO ModuleParUnite VALUES(	5	,	8	,	513	)
INSERT INTO ModuleParUnite VALUES(	6	,	8	,	515	)
INSERT INTO ModuleParUnite VALUES(	7	,	8	,	517	)
INSERT INTO ModuleParUnite VALUES(	8	,	8	,	519	)
INSERT INTO ModuleParUnite VALUES(	9	,	8	,	625	)
INSERT INTO ModuleParUnite VALUES(	10	,	8	,	317	)
INSERT INTO ModuleParUnite VALUES(	11	,	8	,	523	)
INSERT INTO ModuleParUnite VALUES(	0	,	12	,	723	)
INSERT INTO ModuleParUnite VALUES(	1	,	12	,	724	)
INSERT INTO ModuleParUnite VALUES(	2	,	12	,	708	)
INSERT INTO ModuleParUnite VALUES(	3	,	12	,	20	)
INSERT INTO ModuleParUnite VALUES(	4	,	12	,	21	)
INSERT INTO ModuleParUnite VALUES(	5	,	12	,	725	)
INSERT INTO ModuleParUnite VALUES(	8	,	12	,	541	)
INSERT INTO ModuleParUnite VALUES(	9	,	12	,	544	)
INSERT INTO ModuleParUnite VALUES(	10	,	12	,	302	)
INSERT INTO ModuleParUnite VALUES(	11	,	12	,	727	)
INSERT INTO ModuleParUnite VALUES(	12	,	12	,	728	)
INSERT INTO ModuleParUnite VALUES(	13	,	12	,	729	)
INSERT INTO ModuleParUnite VALUES(	0	,	13	,	33	)
INSERT INTO ModuleParUnite VALUES(	6	,	12	,	730	)
INSERT INTO ModuleParUnite VALUES(	0	,	15	,	304	)
INSERT INTO ModuleParUnite VALUES(	0	,	14	,	708	)
INSERT INTO ModuleParUnite VALUES(	1	,	14	,	20	)
INSERT INTO ModuleParUnite VALUES(	2	,	14	,	21	)
INSERT INTO ModuleParUnite VALUES(	3	,	14	,	725	)
INSERT INTO ModuleParUnite VALUES(	4	,	14	,	730	)
INSERT INTO ModuleParUnite VALUES(	6	,	14	,	541	)
INSERT INTO ModuleParUnite VALUES(	7	,	14	,	544	)
INSERT INTO ModuleParUnite VALUES(	8	,	14	,	302	)
INSERT INTO ModuleParUnite VALUES(	9	,	14	,	727	)
INSERT INTO ModuleParUnite VALUES(	14	,	14	,	728	)
INSERT INTO ModuleParUnite VALUES(	15	,	14	,	729	)
INSERT INTO ModuleParUnite VALUES(	10	,	14	,	34	)
INSERT INTO ModuleParUnite VALUES(	11	,	14	,	731	)
INSERT INTO ModuleParUnite VALUES(	12	,	14	,	36	)
INSERT INTO ModuleParUnite VALUES(	13	,	14	,	560	)
INSERT INTO ModuleParUnite VALUES(	16	,	14	,	566	)
INSERT INTO ModuleParUnite VALUES(	0	,	20	,	421	)
INSERT INTO ModuleParUnite VALUES(	0	,	16	,	44	)
INSERT INTO ModuleParUnite VALUES(	1	,	16	,	192	)
INSERT INTO ModuleParUnite VALUES(	2	,	16	,	45	)
INSERT INTO ModuleParUnite VALUES(	3	,	16	,	269	)
INSERT INTO ModuleParUnite VALUES(	4	,	16	,	720	)
INSERT INTO ModuleParUnite VALUES(	0	,	17	,	344	)
INSERT INTO ModuleParUnite VALUES(	1	,	17	,	345	)
INSERT INTO ModuleParUnite VALUES(	2	,	17	,	270	)
INSERT INTO ModuleParUnite VALUES(	3	,	17	,	53	)
INSERT INTO ModuleParUnite VALUES(	0	,	18	,	54	)
INSERT INTO ModuleParUnite VALUES(	1	,	18	,	347	)
INSERT INTO ModuleParUnite VALUES(	2	,	18	,	346	)
INSERT INTO ModuleParUnite VALUES(	3	,	18	,	51	)
INSERT INTO ModuleParUnite VALUES(	4	,	18	,	477	)
INSERT INTO ModuleParUnite VALUES(	5	,	18	,	56	)
INSERT INTO ModuleParUnite VALUES(	0	,	19	,	57	)
INSERT INTO ModuleParUnite VALUES(	0	,	21	,	733	)
INSERT INTO ModuleParUnite VALUES(	5	,	14	,	734	)
INSERT INTO ModuleParUnite VALUES(	7	,	12	,	734	)
INSERT INTO ModuleParUnite VALUES(	1	,	22	,	736	)
INSERT INTO ModuleParUnite VALUES(	0	,	22	,	735	)
INSERT INTO ModuleParUnite VALUES(	2	,	22	,	737	)
INSERT INTO ModuleParUnite VALUES(	3	,	22	,	738	)
INSERT INTO ModuleParUnite VALUES(	4	,	22	,	739	)
INSERT INTO ModuleParUnite VALUES(	5	,	22	,	740	)
INSERT INTO ModuleParUnite VALUES(	6	,	22	,	741	)
INSERT INTO ModuleParUnite VALUES(	7	,	22	,	742	)
INSERT INTO ModuleParUnite VALUES(	0	,	23	,	648	)
INSERT INTO ModuleParUnite VALUES(	1	,	23	,	649	)
INSERT INTO ModuleParUnite VALUES(	2	,	23	,	650	)
INSERT INTO ModuleParUnite VALUES(	3	,	23	,	743	)
INSERT INTO ModuleParUnite VALUES(	4	,	23	,	744	)
INSERT INTO ModuleParUnite VALUES(	5	,	23	,	713	)
INSERT INTO ModuleParUnite VALUES(	6	,	23	,	745	)
INSERT INTO ModuleParUnite VALUES(	7	,	23	,	746	)
INSERT INTO ModuleParUnite VALUES(	8	,	23	,	747	)
INSERT INTO ModuleParUnite VALUES(	9	,	23	,	749	)
INSERT INTO ModuleParUnite VALUES(	10	,	23	,	655	)
INSERT INTO ModuleParUnite VALUES(	11	,	23	,	750	)
INSERT INTO ModuleParUnite VALUES(	12	,	23	,	751	)
INSERT INTO ModuleParUnite VALUES(	0	,	24	,	723	)
INSERT INTO ModuleParUnite VALUES(	1	,	24	,	698	)
INSERT INTO ModuleParUnite VALUES(	2	,	24	,	734	)
INSERT INTO ModuleParUnite VALUES(	3	,	24	,	699	)
INSERT INTO ModuleParUnite VALUES(	4	,	24	,	738	)
INSERT INTO ModuleParUnite VALUES(	6	,	24	,	702	)
INSERT INTO ModuleParUnite VALUES(	7	,	24	,	706	)
INSERT INTO ModuleParUnite VALUES(	10	,	24	,	752	)
INSERT INTO ModuleParUnite VALUES(	0	,	26	,	576	)
INSERT INTO ModuleParUnite VALUES(	0	,	25	,	698	)
INSERT INTO ModuleParUnite VALUES(	1	,	25	,	754	)
INSERT INTO ModuleParUnite VALUES(	2	,	25	,	755	)
INSERT INTO ModuleParUnite VALUES(	3	,	25	,	756	)
INSERT INTO ModuleParUnite VALUES(	4	,	25	,	757	)
INSERT INTO ModuleParUnite VALUES(	5	,	25	,	758	)
INSERT INTO ModuleParUnite VALUES(	6	,	25	,	759	)
INSERT INTO ModuleParUnite VALUES(	7	,	25	,	760	)
INSERT INTO ModuleParUnite VALUES(	0	,	27	,	497	)
INSERT INTO ModuleParUnite VALUES(	0	,	28	,	761	)
INSERT INTO ModuleParUnite VALUES(	1	,	28	,	762	)
INSERT INTO ModuleParUnite VALUES(	2	,	28	,	763	)
INSERT INTO ModuleParUnite VALUES(	3	,	28	,	764	)
INSERT INTO ModuleParUnite VALUES(	4	,	28	,	765	)
INSERT INTO ModuleParUnite VALUES(	5	,	28	,	766	)
INSERT INTO ModuleParUnite VALUES(	6	,	28	,	767	)
INSERT INTO ModuleParUnite VALUES(	7	,	28	,	768	)
INSERT INTO ModuleParUnite VALUES(	8	,	28	,	769	)
INSERT INTO ModuleParUnite VALUES(	9	,	28	,	770	)
INSERT INTO ModuleParUnite VALUES(	11	,	28	,	771	)
INSERT INTO ModuleParUnite VALUES(	12	,	28	,	772	)
INSERT INTO ModuleParUnite VALUES(	13	,	28	,	773	)
INSERT INTO ModuleParUnite VALUES(	14	,	28	,	774	)
INSERT INTO ModuleParUnite VALUES(	0	,	29	,	775	)
INSERT INTO ModuleParUnite VALUES(	1	,	29	,	776	)
INSERT INTO ModuleParUnite VALUES(	2	,	29	,	777	)
INSERT INTO ModuleParUnite VALUES(	3	,	29	,	778	)
INSERT INTO ModuleParUnite VALUES(	7	,	29	,	779	)
INSERT INTO ModuleParUnite VALUES(	5	,	29	,	780	)
INSERT INTO ModuleParUnite VALUES(	6	,	29	,	782	)
INSERT INTO ModuleParUnite VALUES(	8	,	29	,	783	)
INSERT INTO ModuleParUnite VALUES(	4	,	29	,	784	)
INSERT INTO ModuleParUnite VALUES(	9	,	29	,	785	)
INSERT INTO ModuleParUnite VALUES(	10	,	29	,	786	)
INSERT INTO ModuleParUnite VALUES(	11	,	29	,	787	)
INSERT INTO ModuleParUnite VALUES(	12	,	29	,	788	)
INSERT INTO ModuleParUnite VALUES(	13	,	29	,	789	)
INSERT INTO ModuleParUnite VALUES(	0	,	30	,	790	)
INSERT INTO ModuleParUnite VALUES(	1	,	30	,	791	)
INSERT INTO ModuleParUnite VALUES(	2	,	30	,	792	)
INSERT INTO ModuleParUnite VALUES(	3	,	30	,	793	)
INSERT INTO ModuleParUnite VALUES(	0	,	31	,	648	)
INSERT INTO ModuleParUnite VALUES(	2	,	31	,	796	)
INSERT INTO ModuleParUnite VALUES(	3	,	31	,	650	)
INSERT INTO ModuleParUnite VALUES(	4	,	31	,	712	)
INSERT INTO ModuleParUnite VALUES(	5	,	31	,	713	)
INSERT INTO ModuleParUnite VALUES(	6	,	31	,	714	)
INSERT INTO ModuleParUnite VALUES(	7	,	31	,	655	)
INSERT INTO ModuleParUnite VALUES(	8	,	31	,	715	)
INSERT INTO ModuleParUnite VALUES(	0	,	32	,	797	)
INSERT INTO ModuleParUnite VALUES(	1	,	32	,	723	)
INSERT INTO ModuleParUnite VALUES(	2	,	32	,	724	)
INSERT INTO ModuleParUnite VALUES(	3	,	32	,	798	)
INSERT INTO ModuleParUnite VALUES(	4	,	32	,	20	)
INSERT INTO ModuleParUnite VALUES(	5	,	32	,	21	)
INSERT INTO ModuleParUnite VALUES(	6	,	32	,	725	)
INSERT INTO ModuleParUnite VALUES(	7	,	32	,	799	)
INSERT INTO ModuleParUnite VALUES(	9	,	32	,	552	)
INSERT INTO ModuleParUnite VALUES(	10	,	32	,	553	)
INSERT INTO ModuleParUnite VALUES(	8	,	32	,	800	)
INSERT INTO ModuleParUnite VALUES(	0	,	33	,	541	)
INSERT INTO ModuleParUnite VALUES(	1	,	33	,	802	)
INSERT INTO ModuleParUnite VALUES(	2	,	33	,	803	)
INSERT INTO ModuleParUnite VALUES(	3	,	33	,	302	)
INSERT INTO ModuleParUnite VALUES(	4	,	33	,	727	)
INSERT INTO ModuleParUnite VALUES(	5	,	33	,	728	)
INSERT INTO ModuleParUnite VALUES(	6	,	33	,	729	)
INSERT INTO ModuleParUnite VALUES(	7	,	33	,	801	)
INSERT INTO ModuleParUnite VALUES(	0	,	34	,	797	)
INSERT INTO ModuleParUnite VALUES(	1	,	34	,	44	)
INSERT INTO ModuleParUnite VALUES(	2	,	34	,	192	)
INSERT INTO ModuleParUnite VALUES(	3	,	34	,	45	)
INSERT INTO ModuleParUnite VALUES(	4	,	34	,	269	)
INSERT INTO ModuleParUnite VALUES(	5	,	34	,	720	)
INSERT INTO ModuleParUnite VALUES(	6	,	34	,	800	)
INSERT INTO ModuleParUnite VALUES(	7	,	34	,	344	)
INSERT INTO ModuleParUnite VALUES(	0	,	35	,	345	)
INSERT INTO ModuleParUnite VALUES(	1	,	35	,	270	)
INSERT INTO ModuleParUnite VALUES(	3	,	35	,	54	)
INSERT INTO ModuleParUnite VALUES(	4	,	35	,	347	)
INSERT INTO ModuleParUnite VALUES(	5	,	35	,	346	)
INSERT INTO ModuleParUnite VALUES(	6	,	35	,	51	)
INSERT INTO ModuleParUnite VALUES(	7	,	35	,	477	)
INSERT INTO ModuleParUnite VALUES(	8	,	35	,	56	)
INSERT INTO ModuleParUnite VALUES(	9	,	35	,	801	)
INSERT INTO ModuleParUnite VALUES(	2	,	35	,	804	)
INSERT INTO ModuleParUnite VALUES(	0	,	36	,	304	)
INSERT INTO ModuleParUnite VALUES(	11	,	24	,	805	)
INSERT INTO ModuleParUnite VALUES(	9	,	24	,	807	)
INSERT INTO ModuleParUnite VALUES(	10	,	28	,	811	)
INSERT INTO ModuleParUnite VALUES(	0	,	38	,	812	)
INSERT INTO ModuleParUnite VALUES(	0	,	37	,	723	)
INSERT INTO ModuleParUnite VALUES(	1	,	37	,	724	)
INSERT INTO ModuleParUnite VALUES(	2	,	37	,	708	)
INSERT INTO ModuleParUnite VALUES(	3	,	37	,	20	)
INSERT INTO ModuleParUnite VALUES(	4	,	37	,	21	)
INSERT INTO ModuleParUnite VALUES(	5	,	37	,	725	)
INSERT INTO ModuleParUnite VALUES(	6	,	37	,	730	)
INSERT INTO ModuleParUnite VALUES(	7	,	37	,	734	)
INSERT INTO ModuleParUnite VALUES(	8	,	37	,	541	)
INSERT INTO ModuleParUnite VALUES(	9	,	37	,	544	)
INSERT INTO ModuleParUnite VALUES(	10	,	37	,	302	)
INSERT INTO ModuleParUnite VALUES(	11	,	37	,	727	)
INSERT INTO ModuleParUnite VALUES(	12	,	37	,	34	)
INSERT INTO ModuleParUnite VALUES(	13	,	37	,	731	)
INSERT INTO ModuleParUnite VALUES(	14	,	37	,	36	)
INSERT INTO ModuleParUnite VALUES(	15	,	37	,	560	)
INSERT INTO ModuleParUnite VALUES(	16	,	37	,	728	)
INSERT INTO ModuleParUnite VALUES(	17	,	37	,	729	)
INSERT INTO ModuleParUnite VALUES(	18	,	37	,	566	)
INSERT INTO ModuleParUnite VALUES(	0	,	39	,	497	)
INSERT INTO ModuleParUnite VALUES(	0	,	40	,	813	)
INSERT INTO ModuleParUnite VALUES(	1	,	40	,	814	)
INSERT INTO ModuleParUnite VALUES(	2	,	40	,	734	)
INSERT INTO ModuleParUnite VALUES(	3	,	40	,	754	)
INSERT INTO ModuleParUnite VALUES(	4	,	40	,	815	)
INSERT INTO ModuleParUnite VALUES(	5	,	40	,	760	)
INSERT INTO ModuleParUnite VALUES(	0	,	41	,	817	)
INSERT INTO ModuleParUnite VALUES(	0	,	42	,	817	)
INSERT INTO ModuleParUnite VALUES(	0	,	43	,	818	)
INSERT INTO ModuleParUnite VALUES(	1	,	43	,	819	)
INSERT INTO ModuleParUnite VALUES(	2	,	43	,	820	)
INSERT INTO ModuleParUnite VALUES(	3	,	43	,	821	)
INSERT INTO ModuleParUnite VALUES(	4	,	43	,	822	)
INSERT INTO ModuleParUnite VALUES(	5	,	43	,	823	)
INSERT INTO ModuleParUnite VALUES(	6	,	43	,	824	)
INSERT INTO ModuleParUnite VALUES(	7	,	43	,	825	)
INSERT INTO ModuleParUnite VALUES(	0	,	44	,	826	)
INSERT INTO ModuleParUnite VALUES(	0	,	45	,	827	)
INSERT INTO ModuleParUnite VALUES(	1	,	45	,	828	)
INSERT INTO ModuleParUnite VALUES(	2	,	45	,	829	)
INSERT INTO ModuleParUnite VALUES(	3	,	45	,	830	)
INSERT INTO ModuleParUnite VALUES(	4	,	45	,	831	)
INSERT INTO ModuleParUnite VALUES(	5	,	45	,	832	)
INSERT INTO ModuleParUnite VALUES(	6	,	45	,	833	)
INSERT INTO ModuleParUnite VALUES(	0	,	46	,	834	)
INSERT INTO ModuleParUnite VALUES(	1	,	31	,	835	)
INSERT INTO ModuleParUnite VALUES(	0	,	48	,	497	)
INSERT INTO ModuleParUnite VALUES(	0	,	47	,	738	)
INSERT INTO ModuleParUnite VALUES(	1	,	47	,	735	)
INSERT INTO ModuleParUnite VALUES(	2	,	47	,	737	)
INSERT INTO ModuleParUnite VALUES(	4	,	47	,	740	)
INSERT INTO ModuleParUnite VALUES(	3	,	47	,	837	)
INSERT INTO ModuleParUnite VALUES(	5	,	47	,	836	)
INSERT INTO ModuleParUnite VALUES(	0	,	50	,	497	)
INSERT INTO ModuleParUnite VALUES(	0	,	49	,	813	)
INSERT INTO ModuleParUnite VALUES(	1	,	49	,	301	)
INSERT INTO ModuleParUnite VALUES(	2	,	49	,	754	)
INSERT INTO ModuleParUnite VALUES(	3	,	49	,	302	)
INSERT INTO ModuleParUnite VALUES(	4	,	49	,	760	)
INSERT INTO ModuleParUnite VALUES(	5	,	49	,	34	)
INSERT INTO ModuleParUnite VALUES(	8	,	24	,	843	)
INSERT INTO ModuleParUnite VALUES(	5	,	24	,	844	)
INSERT INTO ModuleParUnite VALUES(	0	,	52	,	497	)
INSERT INTO ModuleParUnite VALUES(	6	,	51	,	760	)
INSERT INTO ModuleParUnite VALUES(	5	,	51	,	302	)
INSERT INTO ModuleParUnite VALUES(	4	,	51	,	754	)
INSERT INTO ModuleParUnite VALUES(	3	,	51	,	301	)
INSERT INTO ModuleParUnite VALUES(	2	,	51	,	20	)
INSERT INTO ModuleParUnite VALUES(	1	,	51	,	708	)
INSERT INTO ModuleParUnite VALUES(	0	,	51	,	692	)
INSERT INTO ModuleParUnite VALUES(	7	,	45	,	845	)

INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-20 00:00:00.000', '2018-08-24 00:00:00.000', 35, 'ACDI_001', 'CDF20F3C-94D4-4069-A640-00E3100FDAE1', 0, 541, 'DVWEBCL', 35, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-03-26 00:00:00.000', '2018-03-30 00:00:00.000', 35, 'ADL__001', '9AC9F5B9-BE0F-418D-AC3C-00EBB8582246', 0, 20, 'SQL', 35, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-16 00:00:00.000', '2018-07-27 00:00:00.000', 70, 'RTSRI003', 'D18784ED-6E39-44B9-8800-012F900E76D5', 0, 517, 'SCRIPT-PWSHEL', 70, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-05-14 00:00:00.000', '2018-05-18 00:00:00.000', 35, 'NGEN_001', '86335786-9AB8-4E22-A3C1-013B753C110F', 0, 822, 'GEN TP SYS CLIENT', 35, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-04-01 00:00:00.000', '2019-04-19 00:00:00.000', 105, 'LRDL_003', '3E17AF8A-FC24-4BDA-8010-0203826B9899', 0, 727, 'PRJ2-DEV17', 105, 0, null, null, 10);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-02-18 00:00:00.000', '2019-03-01 00:00:00.000', 70, 'HT2SI090', 'F6218484-4141-48D8-BCBC-0420E33DEF29', 0, 54, 'IM-MESSAG', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-09-03 00:00:00.000', '2018-09-07 00:00:00.000', 35, 'HT2SI089', '4B8934BE-81CA-491F-A77A-04BAFB41C902', 0, 53, 'IM-RES-TP', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-04-08 00:00:00.000', '2019-04-19 00:00:00.000', 70, 'HCD17_75', '4F947DFC-520B-421C-98E8-064181CE9270', 0, 728, 'MOB1-DEV17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-05-20 00:00:00.000', '2019-07-12 00:00:00.000', 266, 'HASR_110', '58AD508E-9A39-429C-B358-0665032DCA11', 0, 93, 'STAGE-ASR', 280, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-03-26 00:00:00.000', '2018-03-30 00:00:00.000', 35, 'RCDI_021', 'EEF20121-7745-4C55-8259-06ED9888E0A4', 0, 20, 'SQL', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-25 00:00:00.000', '2018-07-06 00:00:00.000', 70, 'ADL__001', 'C90FF4CC-8847-4895-A0F4-074717D248D1', 0, 302, 'JAVA-2', 70, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-21 00:00:00.000', '2019-02-01 00:00:00.000', 70, 'HASR_108', '5A1931F2-3415-4085-8BCB-07556442BEA8', 0, 527, 'UTIL-ADMIN-BD', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-09-10 00:00:00.000', '2018-09-21 00:00:00.000', 70, 'HTSRI109', '0E915AE8-C283-418D-A007-075E72BEEFCF', 0, 506, 'UTIL-POSTE', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-07 00:00:00.000', '2019-01-11 00:00:00.000', 35, 'HASR_107', '72C0C7C8-097F-4E24-82C3-079B91F9B614', 0, 531, 'SERV-RES-SEC', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-05-13 00:00:00.000', '2019-05-17 00:00:00.000', 35, 'HMS2SI08', '08DF1945-31DA-4B98-8B2C-07A529ED6FCC', 0, 785, '17SI-ITIL', 35, 0, null, null, 9);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-16 00:00:00.000', '2018-05-04 00:00:00.000', 98, 'NGEN_001', '4260E6CD-3A71-4CDC-A0FC-0800CAA0D7C9', 0, 821, 'GEN LINUX', 105, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-26 00:00:00.000', '2018-12-07 00:00:00.000', 70, 'AASR_001', '14AF1D18-9833-4EB4-946C-0804F32102B6', 0, 527, 'UTIL-ADMIN-BD', 70, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-25 00:00:00.000', '2018-06-29 00:00:00.000', 35, 'ACDI_001', '7F4050E5-2B0A-4EAD-9847-080E8207296A', 0, 21, 'PL-SQL', 35, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-30 00:00:00.000', '2018-08-10 00:00:00.000', 70, 'LRDL_002', 'FC681319-FD7B-4250-AD48-09075D0CC074', 0, 727, 'PRJ2-DEV17', 105, 0, null, null, 10);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-29 00:00:00.000', '2018-11-09 00:00:00.000', 63, 'HT2SI090', 'E4BAAB00-9F9F-4ABF-AB67-0931B166E1E9', 0, 45, 'IM-W7', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-07 00:00:00.000', '2019-01-11 00:00:00.000', 35, 'HMS2SI08', '6E968A95-C2AC-42DE-8B1B-09A5C6B0D3BD', 0, 778, '17SI-QUALITE', 35, 0, null, null, 9);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-02-25 00:00:00.000', '2019-03-01 00:00:00.000', 35, 'HMS2SI08', 'D55F4936-82C6-4D96-B850-09ABD303125E', 0, 780, '17SI-URBANISATION-SI', 35, 0, null, null, 9);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-09-02 00:00:00.000', '2019-09-13 00:00:00.000', 70, 'NASR_004', '942D9889-D9B6-4E1F-83BE-0A9083294EC3', 0, 519, 'TOIP-MESSAGERIE', 70, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-12-02 00:00:00.000', '2019-12-20 00:00:00.000', 105, 'NASR_004', '10AA33E5-922F-4CC3-B903-0AABAA91311C', 0, 523, 'CISCO-2-3', 105, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-01-29 00:00:00.000', '2018-02-02 00:00:00.000', 35, 'MDL__001', '2BCA7AFD-9A08-479C-B1BA-0B09CD4DF4A6', 0, 708, '16DL-POOJ', 35, 0, null, null, 12);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-05-28 00:00:00.000', '2018-06-01 00:00:00.000', 35, 'MTSRI001', '28F7B0DE-C762-4FBF-82B0-0BC4AFCDB51F', 0, 625, 'PROJ-TSRIT', 35, 0, null, null, 12);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-09 00:00:00.000', '2018-04-27 00:00:00.000', 105, 'MDL__001', '85479554-E63F-44D0-81A9-0BD66A5F262D', 0, 544, 'DVWEBPH', 105, 0, null, null, 12);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-30 00:00:00.000', '2018-08-10 00:00:00.000', 70, 'RCDI_021', '29C7B5D7-494E-45F2-A4B5-0BF69055A08E', 0, 34, 'J2EAV', 70, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-01-22 00:00:00.000', '2018-02-02 00:00:00.000', 70, 'MTSRI001', '2B0B20CF-85E5-4928-B14D-0C2E8047B5D3', 0, 506, 'UTIL-POSTE', 70, 0, null, null, 12);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-07-01 00:00:00.000', '2019-07-19 00:00:00.000', 105, 'RCDI_020', '4EBD9C3F-373D-468D-BE7C-0C54BB88410C', 0, 560, 'DVWEBASPX', 105, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-03-15 00:00:00.000', '2018-03-16 00:00:00.000', 14, 'RSOP1801', '80260C83-9561-43CD-860B-0CD63D4F876C', 0, 715, 'SOP-PRATIQU', 14, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-09 00:00:00.000', '2018-07-13 00:00:00.000', 35, 'HASR_107', 'C4A3C1E0-7A1D-4BCA-AE19-0D53C7EA4E74', 0, 515, 'GPROJ-TSRIT', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-27 00:00:00.000', '2018-08-31 00:00:00.000', 35, 'HASR_108', '59DFCA19-6047-43FB-B09F-0DCF21C0E299', 0, 515, 'GPROJ-TSRIT', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-20 00:00:00.000', '2018-08-24 00:00:00.000', 35, 'HDL17128', '6A4C51CD-529F-4B6A-B8C2-0E1A7A7FC51C', 0, 727, 'PRJ2-DEV17', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-28 00:00:00.000', '2019-02-08 00:00:00.000', 70, 'HT2SI090', '67D5DD41-7624-40FE-A170-0E81560CF60D', 0, 270, 'IM-RES-LIN-2014', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-09-30 00:00:00.000', '2019-10-04 00:00:00.000', 35, 'HMS2SI08', 'DB0D6D79-3406-4AE9-B62D-0F0BEEE63338', 0, 789, '17SI-PROJ-FINAL', 35, 0, null, null, 9);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-03 00:00:00.000', '2018-04-06 00:00:00.000', 28, 'HDL17128', 'E6E5C6DF-F588-4D4B-B98C-0F3A2D23F7F1', 0, 724, 'INIT-DL17', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-04-08 00:00:00.000', '2019-04-19 00:00:00.000', 70, 'RCDI_020', '079857A4-C961-4CA5-A3F9-0F7697F379D1', 0, 34, 'J2EAV', 70, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-01-02 00:00:00.000', '2018-01-12 00:00:00.000', 63, 'RPO1712S', 'AEC9EEDA-7489-4AC8-988B-0FC5C61C1A05', 0, 737, 'POE-WIN-CLIENT', 70, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-05-27 00:00:00.000', '2019-05-31 00:00:00.000', 35, 'NGEN_001', '6A9EF7A9-C56F-47C9-B073-0FC634CDED3A', 0, 833, 'GEN TP EVAL', 35, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-15 00:00:00.000', '2018-10-26 00:00:00.000', 70, 'HT2SI090', 'E721DCDC-5020-4EB2-970C-1075C60A7E44', 0, 192, 'BUREAUTIQUE', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-09-02 00:00:00.000', '2019-09-06 00:00:00.000', 35, 'HASR_110', '83AA8919-6010-4644-80BC-109F295923BD', 0, 533, 'VIRT-ASR', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-07-01 00:00:00.000', '2019-07-05 00:00:00.000', 35, 'NASR_004', '78500B20-DE08-443F-9BD9-1105993D8838', 0, 515, 'GPROJ-TSRIT', 35, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-02 00:00:00.000', '2018-07-20 00:00:00.000', 105, 'HTSRI108', 'B0B70EC2-6AE1-4280-82F4-12754827D7CF', 0, 509, 'ADMIN-SYST', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-09-17 00:00:00.000', '2018-11-09 00:00:00.000', 273, 'HTSRI107', '79FDB3FE-A4C5-4107-A8FC-127FDD70B91D', 0, 525, 'STAGE-TSRIT', 280, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-04-23 00:00:00.000', '2019-04-26 00:00:00.000', 28, 'HASR_110', '6E5412D5-E626-43B9-AD33-128ADD70E892', 0, 317, 'NAGIOS', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-06-17 00:00:00.000', '2019-06-28 00:00:00.000', 70, 'HASR_109', '267F3335-43C8-4003-8A08-133A9C76863F', 0, 536, 'SERV-WEB', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-11 00:00:00.000', '2018-06-29 00:00:00.000', 105, 'MTSRI001', 'E77D602C-A41B-4DDB-B66A-13AF5D79A2A2', 0, 523, 'CISCO-2-3', 105, 0, null, null, 12);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-21 00:00:00.000', '2019-01-25 00:00:00.000', 35, 'HMS2IN08', 'D1566FD1-3BEE-4D06-9337-14BE77453709', 0, 765, '17IN-ORGA-DSI', 35, 0, null, null, 9);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-23 00:00:00.000', '2018-08-03 00:00:00.000', 70, 'HTSRI108', 'D5637D45-2297-453B-B972-15EFBBBFE283', 0, 721, 'SERV-RES17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-16 00:00:00.000', '2018-07-27 00:00:00.000', 70, 'HASR_107', '2C704BF0-12C6-4F15-A57F-168AE8E3E7BD', 0, 517, 'SCRIPT-PWSHEL', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-03-05 00:00:00.000', '2018-03-09 00:00:00.000', 35, 'ADL__001', 'FCBC1818-6E98-42CA-89D3-17B510175B61', 0, 723, 'ALGO-DL17', 35, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-12 00:00:00.000', '2018-11-23 00:00:00.000', 70, 'HTSRI109', 'E18B0C3B-0AA9-40E5-8374-186877C6E37D', 0, 722, 'SRVRES-MSP', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-02-04 00:00:00.000', '2019-02-08 00:00:00.000', 35, 'NGEN_001', 'C24FB521-E61A-42FC-BACB-1878E84BE332', 0, 845, 'GEN AGIR', 35, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-02-25 00:00:00.000', '2019-04-19 00:00:00.000', 280, 'HASR_109', 'BA5ADD85-E952-4266-8E19-19CA2FCBB481', 0, 93, 'STAGE-ASR', 280, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-02-19 00:00:00.000', '2018-03-02 00:00:00.000', 70, 'MDL__001', '1D13DBC1-8AF0-4293-9BE0-19F53994F350', 0, 725, 'JAVA1-DL17', 70, 0, null, null, 12);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-09-10 00:00:00.000', '2018-09-21 00:00:00.000', 70, 'HASR_109', '7BF1E22A-DCF3-4196-891C-1B74C9CE6FAC', 0, 506, 'UTIL-POSTE', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-15 00:00:00.000', '2018-10-26 00:00:00.000', 70, 'HCD17_73', 'CDAFADCB-7FF8-4B8C-8DBE-1C3A57069C63', 0, 728, 'MOB1-DEV17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-09-16 00:00:00.000', '2019-09-20 00:00:00.000', 35, 'HMS2IN08', '0A707E10-C64E-45AB-8C41-1C6D53962C84', 0, 774, '17IN-PROJ-FINAL', 35, 0, null, null, 9);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-16 00:00:00.000', '2018-04-20 00:00:00.000', 35, 'HCD17_73', '20D8C8D2-2FC7-4922-A4C6-1CAFF10C15D4', 0, 20, 'SQL', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-02 00:00:00.000', '2019-01-11 00:00:00.000', 56, 'HCD17_73', '10634E06-A6D8-4FE6-8500-1CD51D27DC13', 0, 304, 'STAGE-CDI2', 280, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-12-03 00:00:00.000', '2018-12-07 00:00:00.000', 35, 'HCD17_75', '7F6F1BEA-4AD3-409F-B7D4-1D8233BB72F9', 0, 541, 'DVWEBCL', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-03-18 00:00:00.000', '2019-03-29 00:00:00.000', 70, 'NASR_004', '1E0286E1-8C3F-4C48-B4D6-1DB2475DDEEA', 0, 721, 'SERV-RES17', 70, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-18 00:00:00.000', '2018-06-22 00:00:00.000', 35, 'LRDL_002', '1EFC4886-2EE8-4526-84CF-1DC2FCD3246F', 0, 541, 'DVWEBCL', 35, 0, null, null, 10);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-28 00:00:00.000', '2019-02-01 00:00:00.000', 35, 'NGEN_001', '35061FF6-7BC8-4335-8A77-1DCAB502184E', 0, 830, 'GEN VIRTUALISATION', 70, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-28 00:00:00.000', '2019-02-01 00:00:00.000', 35, 'HASR_109', 'DA041961-1BF4-466A-9EA0-1E9B756EC769', 0, 317, 'NAGIOS', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-20 00:00:00.000', '2018-08-24 00:00:00.000', 35, 'HDL17129', 'B050CD0E-2390-45C0-918B-1EACB3EFF211', 0, 541, 'DVWEBCL', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-27 00:00:00.000', '2018-09-07 00:00:00.000', 70, 'LRDL_002', '98B4405A-1760-4C4D-A131-1F23D754E51F', 0, 728, 'MOB1-DEV17', 70, 0, null, null, 10);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-16 00:00:00.000', '2018-04-20 00:00:00.000', 35, 'HDL17128', '7CCFF5C3-EEC0-486B-ADF9-1FAD5977D3B9', 0, 20, 'SQL', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-20 00:00:00.000', '2018-08-31 00:00:00.000', 70, 'RCDI_020', 'F9509972-B829-47FC-80AD-1FDF4DB35936', 0, 734, 'CONC-DEV17', 70, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-12-03 00:00:00.000', '2018-12-07 00:00:00.000', 35, 'LRDL_003', '23C7F6A7-D917-4C3A-84A7-1FFEA8F83016', 0, 708, '16DL-POOJ', 35, 0, null, null, 10);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-02 00:00:00.000', '2018-07-06 00:00:00.000', 35, 'HTSRI107', 'E9907D5F-7544-4CC5-B82A-2064B2FDE52B', 0, 513, 'VIRT-TSRIT', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-05-06 00:00:00.000', '2019-05-17 00:00:00.000', 63, 'HASR_109', 'E8D5350B-06D0-4293-817A-206F6D06D5F4', 0, 527, 'UTIL-ADMIN-BD', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-18 00:00:00.000', '2018-06-29 00:00:00.000', 70, 'AASR_001', 'BD1558E9-0232-44CD-93BA-20AB093BF5D1', 0, 722, 'SRVRES-MSP', 70, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-02-04 00:00:00.000', '2019-02-22 00:00:00.000', 105, 'HTSRI109', '577B910A-7C81-4B8D-8379-21BBBC0617D6', 0, 523, 'CISCO-2-3', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-09 00:00:00.000', '2018-04-13 00:00:00.000', 35, 'HCD17_73', '9D39D0F3-395F-4C02-8DCF-222934035F4A', 0, 708, '16DL-POOJ', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-02-04 00:00:00.000', '2019-02-22 00:00:00.000', 105, 'NASR_004', 'C83544E0-B913-4CE6-9B3A-238209745B61', 0, 509, 'ADMIN-SYST', 105, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-02-05 00:00:00.000', '2018-02-16 00:00:00.000', 70, 'RPO1712S', '6BB94C4F-1277-4D49-9E54-23A7AB9582FD', 0, 836, 'POE-REV-CERT', 70, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-02 00:00:00.000', '2018-07-13 00:00:00.000', 70, 'ACDI_001', 'C2D24013-85C0-4661-A498-23D2F8CAA962', 0, 725, 'JAVA1-DL17', 70, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-25 00:00:00.000', '2018-06-29 00:00:00.000', 35, 'HDL17129', '602DC652-F338-4AB7-83C3-249FDFD49AD2', 0, 21, 'PL-SQL', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-04 00:00:00.000', '2018-06-15 00:00:00.000', 70, 'HASR_108', '8F1BF291-CE13-4F7F-995F-25E0B74AE78F', 0, 506, 'UTIL-POSTE', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-16 00:00:00.000', '2018-04-20 00:00:00.000', 35, 'RCDI_020', '49384010-C777-47F7-8BAF-25E8271AC403', 0, 20, 'SQL', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-04 00:00:00.000', '2018-06-15 00:00:00.000', 70, 'HCD17_73', '646789C9-51F0-4641-B6A3-26527F863A38', 0, 734, 'CONC-DEV17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-12 00:00:00.000', '2018-11-23 00:00:00.000', 70, 'HASR_109', 'DF456CE6-F6A6-4515-968F-269E7E351F2D', 0, 722, 'SRVRES-MSP', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-20 00:00:00.000', '2018-08-24 00:00:00.000', 35, 'HCD17_73', 'BEC4E65E-3A92-431A-AA83-27C3352B53F3', 0, 727, 'PRJ2-DEV17', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-10-28 00:00:00.000', '2019-10-31 00:00:00.000', 28, 'NASR_004', 'C9CCFFF7-C274-4215-88E2-28EA75187734', 0, 625, 'PROJ-TSRIT', 35, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-15 00:00:00.000', '2018-10-19 00:00:00.000', 35, 'RCDI_020', 'AB2AE0F6-793C-4DB9-9701-297506E39300', 0, 544, 'DVWEBPH', 105, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-05-14 00:00:00.000', '2018-05-18 00:00:00.000', 35, 'HT2SI088', '66B9F5AF-F498-49EA-9ADA-2A296FD331AF', 0, 54, 'IM-MESSAG', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-23 00:00:00.000', '2018-05-04 00:00:00.000', 63, 'AASR_001', 'CBA04B47-B290-4AA0-A830-2A2F2ECE9B6E', 0, 478, 'CISCO-1', 70, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-22 00:00:00.000', '2018-11-02 00:00:00.000', 63, 'ACDI_001', 'F1D989DA-24A7-4D62-A248-2A6615F93994', 0, 34, 'J2EAV', 70, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-13 00:00:00.000', '2018-08-17 00:00:00.000', 28, 'AASR_001', 'EA23542D-C1A9-467E-9516-2ACB5EF94DB0', 0, 625, 'PROJ-TSRIT', 35, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-12 00:00:00.000', '2018-12-21 00:00:00.000', 210, 'HDL17129', 'BEED1BE9-BF51-4A07-9D2D-2B1AC3CC303C', 0, 33, 'STAGE-DL', 280, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-01 00:00:00.000', '2018-10-05 00:00:00.000', 35, 'HASR_108', '5DA4D845-D665-4662-955C-2D56121F7981', 0, 625, 'PROJ-TSRIT', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-19 00:00:00.000', '2018-04-20 00:00:00.000', 14, 'HPOE1802', '2AE5226C-78F8-488A-8482-2D5E21995665', 0, 805, 'POE-TEST-CMAP', 14, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-23 00:00:00.000', '2018-05-04 00:00:00.000', 63, 'HTSRI107', 'DBECA4C7-3909-4AEF-8D8F-2E05FFAD9B7C', 0, 478, 'CISCO-1', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-08 00:00:00.000', '2018-10-26 00:00:00.000', 105, 'HASR_109', '76D478D0-9F9E-491D-A39F-2E2E187DD0A6', 0, 509, 'ADMIN-SYST', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-13 00:00:00.000', '2018-08-17 00:00:00.000', 28, 'HT2SI089', '66323C99-48D1-4786-9574-2E44974D9F2A', 0, 345, 'IM-WDS', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-12-10 00:00:00.000', '2018-12-21 00:00:00.000', 70, 'ACDI_001', 'D8DC6F44-3BA8-4722-81F9-2F2B89BBD8FC', 0, 728, 'MOB1-DEV17', 70, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-18 00:00:00.000', '2018-06-22 00:00:00.000', 35, 'HDL17129', '13FDBD8F-8F18-4A41-8B76-2F63CDF62FC5', 0, 20, 'SQL', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-05-22 00:00:00.000', '2018-06-08 00:00:00.000', 98, 'NGEN_001', 'EF63FDAB-818C-4291-90BC-2F7677A2DD90', 0, 823, 'GEN SRV RES WIN', 105, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-12-10 00:00:00.000', '2018-12-21 00:00:00.000', 70, 'AASR_001', '60E261FB-994A-42BC-B5F1-306BDC5D7088', 0, 531, 'SERV-RES-SEC', 105, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-29 00:00:00.000', '2018-11-02 00:00:00.000', 28, 'HT2SI089', '99C53485-6D1B-4186-9FEC-30735924EDC6', 0, 56, 'IM-EVAL', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-01-29 00:00:00.000', '2018-02-09 00:00:00.000', 70, 'HPOE1712', '86BD5A87-8796-4841-96C2-30999B3ABE7A', 0, 302, 'JAVA-2', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-20 00:00:00.000', '2018-08-24 00:00:00.000', 35, 'HASR_107', '12BC3217-6F00-4855-9068-30F0E00D1CEB', 0, 317, 'NAGIOS', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-06-24 00:00:00.000', '2019-06-28 00:00:00.000', 35, 'HMS2SI08', '1B570241-0085-4485-A6D6-310FF42F476C', 0, 787, '17SI-BUSINESS-INTEL', 35, 0, null, null, 9);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-21 00:00:00.000', '2019-02-01 00:00:00.000', 70, 'HASR_107', 'F76EFA16-6F3B-4ADC-9CF8-311E3B20AFF3', 0, 536, 'SERV-WEB', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-16 00:00:00.000', '2018-04-20 00:00:00.000', 35, 'LRDL_002', 'F02282BF-C22E-440B-BA13-31B6DABF19F5', 0, 20, 'SQL', 35, 0, null, null, 10);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-18 00:00:00.000', '2018-06-29 00:00:00.000', 70, 'HTSRI107', 'FA10718D-16D4-4F57-816E-31C740EE4DA7', 0, 722, 'SRVRES-MSP', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-02-19 00:00:00.000', '2018-02-23 00:00:00.000', 35, 'HPOE1802', '098A6EE9-A3B6-4A1D-A881-3206F378AC9B', 0, 723, 'ALGO-DL17', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-12-10 00:00:00.000', '2018-12-14 00:00:00.000', 35, 'LRDL_003', 'A7F50F72-8930-4C01-93F7-32388A4B91E2', 0, 20, 'SQL', 35, 0, null, null, 10);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-08 00:00:00.000', '2018-10-12 00:00:00.000', 35, 'RCDI_021', 'CA3B48C2-2729-489D-9BC5-33225F26337B', 0, 566, 'XAMARIN', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-09-24 00:00:00.000', '2018-09-28 00:00:00.000', 35, 'HT2SI089', '75393401-5EF4-42A3-B38D-332405EB5735', 0, 347, 'IM-VIRT', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-08 00:00:00.000', '2018-10-12 00:00:00.000', 35, 'HDL17130', '3F2BA010-10EA-412E-BF94-33E25B078A46', 0, 20, 'SQL', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-02-26 00:00:00.000', '2018-03-02 00:00:00.000', 35, 'HPOE1802', 'ADD2D192-8D71-44AD-AF69-35B5A3084CA5', 0, 698, 'INIPOOSQL', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-21 00:00:00.000', '2019-01-25 00:00:00.000', 35, 'HTSRI109', 'D97CE13A-5E43-4DAF-AF7E-35C5F6493A14', 0, 625, 'PROJ-TSRIT', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-20 00:00:00.000', '2018-08-31 00:00:00.000', 70, 'HT2SI089', 'DE394CA5-6E43-4A59-A786-3643DFD95719', 0, 270, 'IM-RES-LIN-2014', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-13 00:00:00.000', '2018-08-17 00:00:00.000', 28, 'HASR_107', '0661771F-38F9-47D8-A199-36ACE4A53842', 0, 625, 'PROJ-TSRIT', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-12-10 00:00:00.000', '2018-12-14 00:00:00.000', 35, 'HMS2IN08', '02EBDDD9-8579-45B8-BCBD-373BE7265FAB', 0, 763, '17IN-ANALYSE', 35, 0, null, null, 9);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-09-24 00:00:00.000', '2018-09-28 00:00:00.000', 35, 'HDL17130', '906A6DB0-F5B6-4F45-B51F-378C9B250378', 0, 724, 'INIT-DL17', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-16 00:00:00.000', '2018-07-27 00:00:00.000', 70, 'ACDI_001', '9D2AF640-BC7A-48D8-BB73-3890A44972E5', 0, 730, 'PRJ1-DEV17', 70, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-27 00:00:00.000', '2018-09-07 00:00:00.000', 70, 'HCD17_73', 'A140AE65-7FC8-4F93-AEE8-38A9D349EC19', 0, 34, 'J2EAV', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-25 00:00:00.000', '2018-06-29 00:00:00.000', 35, 'MDL__001', '9A0EC673-1147-4DC7-BE4C-38D70CBC4D26', 0, 729, 'PRJ3-DEV17', 35, 0, null, null, 12);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-05 00:00:00.000', '2018-11-09 00:00:00.000', 35, 'HDL17129', 'A7EEED71-3F90-47B5-AB71-38F1442E834D', 0, 729, 'PRJ3-DEV17', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2017-12-18 00:00:00.000', '2017-12-22 00:00:00.000', 35, 'RPO1712S', 'B183FF16-0213-4382-B128-398D238009D4', 0, 735, 'POE-BDR', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-09-17 00:00:00.000', '2018-09-28 00:00:00.000', 70, 'HDL17129', 'CB4DD72B-0C0E-45E7-932E-3A1D75F9841C', 0, 302, 'JAVA-2', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-01-15 00:00:00.000', '2018-01-19 00:00:00.000', 35, 'MDL__001', '3F722108-02B6-4B97-8F7F-3B23D73F8EA2', 0, 723, 'ALGO-DL17', 35, 0, null, null, 12);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-02-18 00:00:00.000', '2019-03-01 00:00:00.000', 70, 'HTSRI110', '0ACB01F7-A510-45B9-857D-3B62528C9C78', 0, 722, 'SRVRES-MSP', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-27 00:00:00.000', '2018-09-07 00:00:00.000', 70, 'HDL17128', '2F8FC23C-7DF0-48ED-B0B9-3C542E439217', 0, 728, 'MOB1-DEV17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-09 00:00:00.000', '2018-04-13 00:00:00.000', 35, 'LRDL_002', '88EED523-8B7C-4F5C-B71A-3D29C589FDB8', 0, 708, '16DL-POOJ', 35, 0, null, null, 10);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-01-25 00:00:00.000', '2018-01-26 00:00:00.000', 14, 'RSOP1801', 'CBF66556-BEEC-4360-B12C-3E1EBA9969C5', 0, 796, 'R-SOP-UML2', 28, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-15 00:00:00.000', '2018-11-02 00:00:00.000', 98, 'HASR_108', 'F337ADA3-37B3-45B5-9B17-3E3A360AFFF2', 0, 523, 'CISCO-2-3', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-05-22 00:00:00.000', '2018-06-01 00:00:00.000', 63, 'HT2SI089', '94F9CA0C-050B-4DB0-B806-3E4E9E6E65EE', 0, 192, 'BUREAUTIQUE', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-05-14 00:00:00.000', '2018-05-18 00:00:00.000', 35, 'HDL17128', '82B76FAB-C89C-41A7-AC7F-3ECFD6E71643', 0, 725, 'JAVA1-DL17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-09-17 00:00:00.000', '2018-09-21 00:00:00.000', 35, 'HCD17_73', '993F8A4D-CBA5-412C-9966-3F3630F630E9', 0, 36, 'CP-COURS', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-20 00:00:00.000', '2018-08-24 00:00:00.000', 35, 'AASR_001', '817EE8DA-F745-43C3-919A-3F9DF1A9BB7F', 0, 317, 'NAGIOS', 35, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-05-14 00:00:00.000', '2018-05-25 00:00:00.000', 63, 'ADL__001', '49C58519-D02B-4473-B0A5-3FA251FF6490', 0, 734, 'CONC-DEV17', 70, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-08 00:00:00.000', '2018-10-12 00:00:00.000', 35, 'HT2SI090', '9783E2FB-4FB3-4381-A3F8-3FBC3E1E140A', 0, 44, 'IM-BDR', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-03-18 00:00:00.000', '2019-04-05 00:00:00.000', 105, 'HCD17_75', 'AD6EFD1D-80DA-4063-8D3B-411954AB3F32', 0, 560, 'DVWEBASPX', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-02 00:00:00.000', '2018-07-13 00:00:00.000', 70, 'HDL17129', 'F818424D-09CA-4E5A-A405-42DDEEBF1B64', 0, 725, 'JAVA1-DL17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-01-15 00:00:00.000', '2018-01-26 00:00:00.000', 70, 'RPO1712S', 'B78199DB-5741-4B07-91E6-42F9BF1A4747', 0, 837, 'POE-SERV-RES', 70, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-01-22 00:00:00.000', '2018-01-26 00:00:00.000', 35, 'RCDI_020', '71E6F84D-928F-41AE-B456-4321A8848462', 0, 20, 'SQL', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-01 00:00:00.000', '2018-10-05 00:00:00.000', 35, 'HCD17_75', '9004BC97-0BBA-4CDA-BB17-439B7C6B3025', 0, 708, '16DL-POOJ', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-25 00:00:00.000', '2018-07-13 00:00:00.000', 105, 'HDL17128', 'E9093CE0-CFFA-4962-8276-442B4F3FA86C', 0, 544, 'DVWEBPH', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-09 00:00:00.000', '2018-07-27 00:00:00.000', 105, 'ADL__001', 'C649E589-F653-4704-BC22-446E44625734', 0, 727, 'PRJ2-DEV17', 105, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-03-05 00:00:00.000', '2018-03-09 00:00:00.000', 35, 'RCDI_021', '141B5023-4455-48E8-A699-44D55078F909', 0, 723, 'ALGO-DL17', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-04-01 00:00:00.000', '2019-04-05 00:00:00.000', 35, 'HMS2SI08', '018E6D92-0F64-472A-B224-45F1205E7C24', 0, 779, '17SI-PROJ-SOUTENANCE', 35, 0, null, null, 9);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-23 00:00:00.000', '2018-04-27 00:00:00.000', 35, 'HCD17_73', 'C5E55386-6F6F-4D49-BDB6-4661BCFD745F', 0, 21, 'PL-SQL', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-03-11 00:00:00.000', '2019-03-22 00:00:00.000', 70, 'HCD17_76', '1F2053DA-D71F-4D3A-8183-466B19E34B39', 0, 302, 'JAVA-2', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-04 00:00:00.000', '2018-06-15 00:00:00.000', 70, 'HASR_107', '1458FA7A-9E7C-43B0-A1AA-46805F70555B', 0, 721, 'SERV-RES17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-05-27 00:00:00.000', '2019-05-31 00:00:00.000', 28, 'RCDI_020', '01CF703D-66AD-413B-8940-46BF4684F885', 0, 36, 'CP-COURS', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-30 00:00:00.000', '2018-08-10 00:00:00.000', 70, 'HASR_107', 'F4F273BF-471F-487F-8B61-474CAAEA2251', 0, 519, 'TOIP-MESSAGERIE', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-03-11 00:00:00.000', '2019-03-15 00:00:00.000', 35, 'HMS2IN08', '6AD564BF-A992-42DD-A4D4-4765F4578D82', 0, 768, '17IN-QUALITE', 35, 0, null, null, 9);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-01-29 00:00:00.000', '2018-02-02 00:00:00.000', 35, 'RSOP1801', 'D4DC94C2-37F2-4257-A1DE-477C8FFD7AA0', 0, 650, 'R-SOP-POOJ', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-19 00:00:00.000', '2018-12-07 00:00:00.000', 105, 'ACDI_001', '59B0F1DC-DAEB-4BF4-BB81-484F3919F66B', 0, 560, 'DVWEBASPX', 105, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-02-25 00:00:00.000', '2019-04-19 00:00:00.000', 280, 'HTSRI109', 'E211580C-B127-4122-8419-4855706708DF', 0, 525, 'STAGE-TSRIT', 280, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-02-12 00:00:00.000', '2018-02-16 00:00:00.000', 35, 'HPOE1712', 'FC66D81F-BDF8-419F-B222-487AA47B6D65', 0, 760, 'POE17--PROJET', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-02 00:00:00.000', '2018-08-24 00:00:00.000', 273, 'MTSRI001', '89B8E90D-8C08-4F3E-98F9-488C04D07D74', 0, 525, 'STAGE-TSRIT', 280, 0, null, null, 12);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-23 00:00:00.000', '2018-04-27 00:00:00.000', 35, 'HDL17128', 'F15DB3EA-1AA8-4D13-8B96-48C3E58CE504', 0, 21, 'PL-SQL', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-20 00:00:00.000', '2018-08-24 00:00:00.000', 35, 'RCDI_021', '3801F745-4FED-4E05-B9A6-4998DBC7C480', 0, 36, 'CP-COURS', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-12-10 00:00:00.000', '2018-12-21 00:00:00.000', 70, 'HASR_107', '3BFB4839-9320-4C8F-9A45-49DF29303387', 0, 531, 'SERV-RES-SEC', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-14 00:00:00.000', '2019-01-18 00:00:00.000', 35, 'AASR_001', '4A16205D-E440-4756-8BC0-49F3DA81A385', 0, 533, 'VIRT-ASR', 35, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-01 00:00:00.000', '2018-10-05 00:00:00.000', 35, 'RCDI_021', 'DEB4033D-5E7A-4785-9C74-4BB837C555A0', 0, 729, 'PRJ3-DEV17', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-04 00:00:00.000', '2018-06-15 00:00:00.000', 70, 'HTSRI108', '33EA7C89-C76B-4899-8DB4-4C8ECE146497', 0, 506, 'UTIL-POSTE', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-09-24 00:00:00.000', '2018-11-16 00:00:00.000', 273, 'RTSRI003', 'B9A14D1A-038C-44EF-B50B-4CEF96357196', 0, 525, 'STAGE-TSRIT', 280, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-27 00:00:00.000', '2018-09-14 00:00:00.000', 105, 'HDL17129', '934042C9-1EF3-4B64-9F25-4D153C54042F', 0, 544, 'DVWEBPH', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-22 00:00:00.000', '2018-11-02 00:00:00.000', 63, 'HDL17130', 'BD621130-84B8-4BA6-9EBA-4D75AE05684B', 0, 725, 'JAVA1-DL17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-12 00:00:00.000', '2018-11-30 00:00:00.000', 105, 'HT2SI090', '8AB237F9-1D09-4998-98B6-4F255FFE3361', 0, 269, 'IM-UA-LINUX', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-02-19 00:00:00.000', '2018-03-09 00:00:00.000', 105, 'MTSRI001', 'FE6B604B-E47F-4130-8872-4F539BB4AA9C', 0, 509, 'ADMIN-SYST', 105, 0, null, null, 12);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-03-18 00:00:00.000', '2019-03-29 00:00:00.000', 70, 'HT2SI090', 'A0831BF9-2476-42F0-89E2-51090CBA43D5', 0, 51, 'IM-ITIL', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-09 00:00:00.000', '2018-07-13 00:00:00.000', 35, 'AASR_001', 'CAEABD21-D138-45F4-8933-51188E246BAE', 0, 515, 'GPROJ-TSRIT', 35, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-12-03 00:00:00.000', '2018-12-14 00:00:00.000', 70, 'HASR_110', '92FE0665-6EA4-484B-897F-52072F3DA697', 0, 506, 'UTIL-POSTE', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-11 00:00:00.000', '2018-06-22 00:00:00.000', 70, 'NGEN_001', '55D6F48B-D00F-4307-A465-52637B2CCEA5', 0, 824, 'GEN ITIL', 70, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-30 00:00:00.000', '2018-05-04 00:00:00.000', 28, 'LRDL_002', '77E51E57-4DC7-4C03-95F2-52D8FFDC37B2', 0, 725, 'JAVA1-DL17', 70, 0, null, null, 10);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-09-24 00:00:00.000', '2018-10-12 00:00:00.000', 105, 'HCD17_73', '75EB593F-DF78-4A14-848B-5313A4BE520B', 0, 560, 'DVWEBASPX', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-05-14 00:00:00.000', '2018-05-18 00:00:00.000', 35, 'LRDL_002', '031DEAA9-0536-40A3-9511-534F85CDC944', 0, 725, 'JAVA1-DL17', 70, 0, null, null, null);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-02-04 00:00:00.000', '2019-02-22 00:00:00.000', 105, 'HASR_108', '4B3E5C9C-3AB0-44A1-A6C9-53F9E0EDE219', 0, 531, 'SERV-RES-SEC', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-14 00:00:00.000', '2019-01-25 00:00:00.000', 70, 'HCD17_75', '601CC889-8343-4E62-89AE-540022CDF3F4', 0, 302, 'JAVA-2', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-19 00:00:00.000', '2018-11-30 00:00:00.000', 70, 'RCDI_020', '0B839480-E37D-48D8-BABB-55B61ED78431', 0, 544, 'DVWEBPH', 105, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-01 00:00:00.000', '2018-10-19 00:00:00.000', 105, 'HDL17129', '6A739FAD-0733-45AE-AB87-5623600452B0', 0, 727, 'PRJ2-DEV17', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-04-23 00:00:00.000', '2019-05-03 00:00:00.000', 56, 'LRDL_003', '445A8790-B375-403F-8134-5646089D5A19', 0, 728, 'MOB1-DEV17', 70, 0, null, null, 10);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-18 00:00:00.000', '2018-06-22 00:00:00.000', 35, 'ACDI_001', '5D74CB18-FB70-4412-823C-56B26A3B123F', 0, 20, 'SQL', 35, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-16 00:00:00.000', '2018-07-27 00:00:00.000', 70, 'LRDL_002', 'A6F82AF0-CAB6-42FB-A1B2-56B7A7ED1CEF', 0, 302, 'JAVA-2', 70, 0, null, null, 10);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-05-28 00:00:00.000', '2018-06-01 00:00:00.000', 35, 'ADL__001', 'DF59BE30-CBE4-4694-8470-5715606FE9C9', 0, 541, 'DVWEBCL', 35, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-02-04 00:00:00.000', '2019-02-08 00:00:00.000', 35, 'HMS2SI08', 'A00FB368-F9D0-419D-9F78-5745056227D9', 0, 784, '17SI-PROJ-MEMOIRE', 35, 0, null, null, 9);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-07 00:00:00.000', '2019-01-18 00:00:00.000', 70, 'LRDL_003', '7F8F6DB0-54A7-4E74-A2FC-58A96E11F60E', 0, 725, 'JAVA1-DL17', 70, 0, null, null, 10);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-06-17 00:00:00.000', '2019-06-21 00:00:00.000', 35, 'HCD17_76', 'F53B456F-CBE6-424C-9BAF-594CAB2190AE', 0, 729, 'PRJ3-DEV17', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-12-10 00:00:00.000', '2018-12-21 00:00:00.000', 70, 'HASR_109', '38B15181-8B6E-48AC-92FF-59558A0785F6', 0, 517, 'SCRIPT-PWSHEL', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-04 00:00:00.000', '2018-06-15 00:00:00.000', 70, 'RTSRI003', '2CF0B780-CE07-447F-8F61-59CEE359C9D7', 0, 721, 'SERV-RES17', 70, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-12-10 00:00:00.000', '2018-12-11 00:00:00.000', 14, 'RCDI_021', '4AE1C739-9B1F-4AA5-B841-5A2849D418F8', 0, 812, '17CDIQ_BILAN', 14, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-05-14 00:00:00.000', '2018-05-18 00:00:00.000', 35, 'HCD17_73', '7C6D3F41-9EA3-41B9-98F5-5A2D5955E2CE', 0, 725, 'JAVA1-DL17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-07-15 00:00:00.000', '2019-07-19 00:00:00.000', 14, 'NGEN_001', 'BFF77C95-FBB7-405D-8E41-5AB8F9F7D60D', 0, 834, 'GEN EXAM CCP', 14, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-04-29 00:00:00.000', '2019-05-17 00:00:00.000', 91, 'HASR_110', 'E2B1BB10-F117-465D-8F03-5B516BAE5AFE', 0, 523, 'CISCO-2-3', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-30 00:00:00.000', '2018-08-10 00:00:00.000', 70, 'HDL17128', '6075D1E3-FD17-453D-8B86-5B9B4CBFA5AC', 0, 727, 'PRJ2-DEV17', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-04 00:00:00.000', '2018-06-22 00:00:00.000', 105, 'RCDI_021', 'EB2ACA76-6421-4514-A1B8-5C1781B98609', 0, 544, 'DVWEBPH', 105, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-04-15 00:00:00.000', '2019-04-19 00:00:00.000', 35, 'HASR_110', '7C88CDD0-FE6D-4BAD-960B-5C8AA8F3419A', 0, 625, 'PROJ-TSRIT', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-07 00:00:00.000', '2019-01-11 00:00:00.000', 35, 'HT2SI089', '9AB4FBFB-533A-4647-BBD8-5CDC5A5FF1E8', 0, 57, 'IM-STAGE', 280, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-09 00:00:00.000', '2018-04-20 00:00:00.000', 70, 'HASR_107', '8AEB9E0F-482D-4A3F-9DAC-5DB08852B033', 0, 506, 'UTIL-POSTE', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-22 00:00:00.000', '2018-10-26 00:00:00.000', 35, 'HMS2IN08', 'FB25CD80-2C77-408D-8B07-5E357064207D', 0, 761, '17IN-RAPPELS-CP', 35, 0, null, null, 9);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-20 00:00:00.000', '2018-08-24 00:00:00.000', 35, 'HTSRI107', 'B735F596-3E56-4A58-B219-5E3A3C3F18B3', 0, 317, 'NAGIOS', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-12 00:00:00.000', '2018-04-13 00:00:00.000', 14, 'HPOE1802', '3D624F0E-8F3E-466E-A952-5E489148B215', 0, 706, 'POE-TEST-LINK', 14, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-10-21 00:00:00.000', '2019-10-25 00:00:00.000', 35, 'RCDI_020', '2AD6370A-5C01-49E7-9342-5EC4DF37783D', 0, 566, 'XAMARIN', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-15 00:00:00.000', '2018-12-07 00:00:00.000', 273, 'RCDI_021', '3E9B3F7A-7493-49EC-B490-5F5A98EAE186', 0, 304, 'STAGE-CDI2', 280, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-12-10 00:00:00.000', '2018-12-14 00:00:00.000', 35, 'HCD17_76', 'F4F54845-1C84-4EB7-8F6A-5FD020B54B01', 0, 21, 'PL-SQL', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-03-11 00:00:00.000', '2019-03-15 00:00:00.000', 35, 'HTSRI110', '902A5C40-FB6C-48BD-8655-5FF56BD06FD8', 0, 515, 'GPROJ-TSRIT', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-05-13 00:00:00.000', '2019-07-05 00:00:00.000', 266, 'LRDL_003', '885228CD-7646-48E1-BEA6-622C716AB0D5', 0, 33, 'STAGE-DL', 280, 0, null, null, 10);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-27 00:00:00.000', '2018-08-31 00:00:00.000', 35, 'HTSRI108', '63FA022C-8072-4B57-A584-628EC12614D9', 0, 515, 'GPROJ-TSRIT', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-09-17 00:00:00.000', '2018-11-09 00:00:00.000', 273, 'AASR_001', '4FD4686A-EA88-47C0-B863-62F826892503', 0, 93, 'STAGE-ASR', 280, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-08 00:00:00.000', '2018-10-26 00:00:00.000', 105, 'HTSRI109', 'A039714A-87D0-45C5-AFC6-6391ADA824D6', 0, 509, 'ADMIN-SYST', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-09 00:00:00.000', '2018-04-20 00:00:00.000', 70, 'HTSRI107', '65116793-3D80-4B78-BBA2-63AB94BFE4C6', 0, 506, 'UTIL-POSTE', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-04-01 00:00:00.000', '2019-04-12 00:00:00.000', 70, 'HTSRI110', 'BE448066-03A9-4F37-A64F-640A8BC2254F', 0, 519, 'TOIP-MESSAGERIE', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-01-22 00:00:00.000', '2018-01-26 00:00:00.000', 35, 'HPOE1712', '986FA5B8-F3FD-4E2A-B828-652C316ABD93', 0, 754, 'POE17-WEBCLI', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2017-12-11 00:00:00.000', '2017-12-15 00:00:00.000', 35, 'RCDI_020', '77D66D8A-DEFD-44F6-A158-65DD5A34400E', 0, 708, '16DL-POOJ', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-12-03 00:00:00.000', '2018-12-07 00:00:00.000', 35, 'HCD17_76', 'B2165BF1-133F-4502-A621-6683E9929885', 0, 20, 'SQL', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-05-14 00:00:00.000', '2018-06-01 00:00:00.000', 98, 'HTSRI107', '31E01332-07BA-4462-807D-66A4B77BDD52', 0, 509, 'ADMIN-SYST', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-04-23 00:00:00.000', '2019-04-26 00:00:00.000', 28, 'HCD17_75', 'F20D680F-2940-48D8-92AA-695CD09E40B1', 0, 729, 'PRJ3-DEV17', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-12-10 00:00:00.000', '2018-12-21 00:00:00.000', 70, 'HCD17_75', 'A8FD9341-5439-4C7E-AFF4-6966F14F5BC0', 0, 544, 'DVWEBPH', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-02-19 00:00:00.000', '2018-03-02 00:00:00.000', 70, 'RPO1712S', '3AD30BD3-2934-407F-AADC-6A3C38379973', 0, 497, 'STAGE-POE2', 70, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-12-03 00:00:00.000', '2018-12-14 00:00:00.000', 70, 'HTSRI110', '59F11F71-A9BD-442D-9188-6A7FFD1EF2A7', 0, 506, 'UTIL-POSTE', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-02-18 00:00:00.000', '2019-03-01 00:00:00.000', 70, 'HDL17130', '20E21241-4344-483B-BBA2-6B776FF9A5C7', 0, 728, 'MOB1-DEV17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-13 00:00:00.000', '2018-08-17 00:00:00.000', 28, 'HTSRI107', '43C6070F-8C3F-479D-942F-6BB70D92DAD3', 0, 625, 'PROJ-TSRIT', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-07 00:00:00.000', '2019-01-11 00:00:00.000', 35, 'HDL17130', '1B147CB2-F7DC-45E4-BDD6-6BDF029A362D', 0, 544, 'DVWEBPH', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-19 00:00:00.000', '2018-11-20 00:00:00.000', 14, 'RTSRI003', '2CF00DDF-FB7B-4C16-8C36-6C23B776FD86', 0, 817, '17BILAN FINAL', 14, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-23 00:00:00.000', '2018-08-03 00:00:00.000', 70, 'HASR_108', 'F7CE991B-6418-4903-86BF-6CC968309093', 0, 721, 'SERV-RES17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-14 00:00:00.000', '2019-01-25 00:00:00.000', 70, 'HCD17_76', '7D4FA370-30F2-4F59-9E3C-6D53C01DAA7C', 0, 730, 'PRJ1-DEV17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-09 00:00:00.000', '2018-04-13 00:00:00.000', 35, 'HDL17128', '1EB21C6B-7E5F-4921-A3AB-6D64053DA378', 0, 708, '16DL-POOJ', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-21 00:00:00.000', '2019-01-25 00:00:00.000', 35, 'HASR_109', 'F6F29A77-1893-465E-8846-6D71F2BBC931', 0, 625, 'PROJ-TSRIT', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-11 00:00:00.000', '2018-06-15 00:00:00.000', 35, 'HDL17129', 'C24C868C-1BD2-4FC8-89D4-6E18F47F23C0', 0, 708, '16DL-POOJ', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-06 00:00:00.000', '2018-08-17 00:00:00.000', 63, 'HTSRI108', '23A6C8F5-A1CB-4317-BB57-6E3EA8FF2E14', 0, 722, 'SRVRES-MSP', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-09-17 00:00:00.000', '2018-11-09 00:00:00.000', 273, 'HDL17128', '3068716E-AFF9-4DB3-B22F-6E4AF3746660', 0, 33, 'STAGE-DL', 280, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-26 00:00:00.000', '2018-12-07 00:00:00.000', 70, 'NASR_004', '8A9E75B8-3602-4EB1-9294-6E8C2E93E7A1', 0, 478, 'CISCO-1', 70, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-02-26 00:00:00.000', '2018-03-09 00:00:00.000', 70, 'RSOP1801', '4EC79699-3F50-4229-9D94-6F02F2697BCF', 0, 714, 'SOP-JAVA-2', 70, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-09 00:00:00.000', '2018-07-13 00:00:00.000', 35, 'RTSRI003', '32A57853-C4C6-4FE1-AD21-70298FC3086A', 0, 515, 'GPROJ-TSRIT', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-12-17 00:00:00.000', '2018-12-21 00:00:00.000', 35, 'HASR_110', '1CB19B57-C7F3-4131-AF28-714F68A137CC', 0, 478, 'CISCO-1', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-03-18 00:00:00.000', '2019-03-29 00:00:00.000', 70, 'LRDL_003', '00CB9CE4-0DEA-47A3-95B4-717EB14BA7EB', 0, 302, 'JAVA-2', 70, 0, null, null, 10);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-03-11 00:00:00.000', '2019-03-15 00:00:00.000', 35, 'HCD17_75', '9D8B2B45-4750-4272-AF0F-718E62F037D4', 0, 36, 'CP-COURS', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-12-17 00:00:00.000', '2018-12-21 00:00:00.000', 35, 'HCD17_76', 'A213824B-6763-4780-AC44-72A3B327D137', 0, 725, 'JAVA1-DL17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-07 00:00:00.000', '2019-01-11 00:00:00.000', 35, 'AASR_001', '92323106-5A58-49B3-A657-7322944BD7C3', 0, 531, 'SERV-RES-SEC', 105, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-12 00:00:00.000', '2018-12-21 00:00:00.000', 210, 'HCD17_73', '1B040E3B-F71D-4A51-B408-7348746C1A9C', 0, 304, 'STAGE-CDI2', 280, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-02 00:00:00.000', '2018-07-06 00:00:00.000', 35, 'AASR_001', 'C3959F42-50AA-4791-A988-73CC33053F0E', 0, 513, 'VIRT-TSRIT', 35, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-02-04 00:00:00.000', '2019-02-15 00:00:00.000', 70, 'LRDL_003', 'BAFD1012-9E8C-4D8D-9775-74056AB7E3E9', 0, 734, 'CONC-DEV17', 70, 0, null, null, 10);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-09-09 00:00:00.000', '2019-09-13 00:00:00.000', 35, 'RCDI_020', '1A53B31D-5197-4855-99BE-744677A5D04B', 0, 729, 'PRJ3-DEV17', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-04 00:00:00.000', '2018-06-15 00:00:00.000', 70, 'HTSRI107', '7AA7702D-C2DC-4E89-85A9-747508F55992', 0, 721, 'SERV-RES17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-23 00:00:00.000', '2018-05-04 00:00:00.000', 63, 'MTSRI001', '57E2A978-D05A-463F-B86B-74817D42D444', 0, 517, 'SCRIPT-PWSHEL', 70, 0, null, null, 12);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-26 00:00:00.000', '2018-11-30 00:00:00.000', 35, 'LRDL_003', '6D9CBD52-7E3D-4FA3-88A6-74CC92B6079B', 0, 724, 'INIT-DL17', 35, 0, null, null, 10);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-05-28 00:00:00.000', '2018-06-01 00:00:00.000', 35, 'RCDI_021', '219CC390-7A58-477F-83D8-75278977BC67', 0, 541, 'DVWEBCL', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-09-10 00:00:00.000', '2018-09-14 00:00:00.000', 35, 'LRDL_002', 'CAB51343-77CE-4A05-9A27-75BDA17AFAAD', 0, 729, 'PRJ3-DEV17', 35, 0, null, null, 10);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-05 00:00:00.000', '2018-11-09 00:00:00.000', 35, 'HMS2SI08', '65C0C6CE-1C7A-4CD1-8EBA-7615D6C67AC7', 0, 776, '17SI-CISCO-1', 35, 0, null, null, 9);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-29 00:00:00.000', '2018-11-09 00:00:00.000', 63, 'HASR_109', 'C23FD3A2-24E4-47A4-A947-7646CD4BFC47', 0, 721, 'SERV-RES17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-16 00:00:00.000', '2018-07-27 00:00:00.000', 70, 'AASR_001', '89918147-86D9-4D6B-B4D4-7671CBA2961C', 0, 517, 'SCRIPT-PWSHEL', 70, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-09-17 00:00:00.000', '2018-09-28 00:00:00.000', 70, 'HTSRI108', 'E3A17EF0-FFF7-4A23-892A-767D8E468672', 0, 519, 'TOIP-MESSAGERIE', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-03-12 00:00:00.000', '2018-03-16 00:00:00.000', 35, 'ADL__001', 'F5B64021-C20D-4BC1-A881-76FFE69D1BA8', 0, 724, 'INIT-DL17', 35, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-03-04 00:00:00.000', '2019-03-08 00:00:00.000', 35, 'HT2SI090', '3D3DB4A5-2D3D-4A93-BF96-7767C92BE25B', 0, 347, 'IM-VIRT', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-09-03 00:00:00.000', '2018-09-14 00:00:00.000', 70, 'HTSRI108', 'D739A592-47E0-4322-8689-793B11BA4B18', 0, 517, 'SCRIPT-PWSHEL', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-04-29 00:00:00.000', '2019-05-17 00:00:00.000', 91, 'HTSRI110', '3F93EA24-D1EE-46CE-8E36-798A9CE743C8', 0, 523, 'CISCO-2-3', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-05-20 00:00:00.000', '2019-05-24 00:00:00.000', 35, 'RCDI_020', 'B68EA7BA-5871-4093-95C9-79B5CE0C6C71', 0, 731, 'APAC-CDI17', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-20 00:00:00.000', '2018-10-12 00:00:00.000', 280, 'ADL__001', '4265094D-574E-4FFC-B545-7A680A0DCAEE', 0, 33, 'STAGE-DL', 280, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-06-10 00:00:00.000', '2019-06-14 00:00:00.000', 28, 'HASR_109', 'CE672970-6D9E-498C-901B-7A9941604053', 0, 533, 'VIRT-ASR', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-06 00:00:00.000', '2018-08-17 00:00:00.000', 63, 'HASR_108', 'F5BA84CD-30CB-4E8F-82A7-7AABABD51811', 0, 722, 'SRVRES-MSP', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-04-01 00:00:00.000', '2019-04-12 00:00:00.000', 70, 'HASR_110', 'FAAD4717-6E51-4144-92D2-7BB38298755B', 0, 519, 'TOIP-MESSAGERIE', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-09-03 00:00:00.000', '2018-09-21 00:00:00.000', 105, 'RTSRI003', 'EEAE1F18-31CC-4BDD-A287-7BD37E7FC28B', 0, 523, 'CISCO-2-3', 105, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-27 00:00:00.000', '2018-09-14 00:00:00.000', 105, 'RCDI_021', 'CFC787BF-FE59-4FE7-8E4F-7C2AA5C47CAE', 0, 560, 'DVWEBASPX', 105, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-05-28 00:00:00.000', '2018-06-01 00:00:00.000', 35, 'HDL17129', '0F02FF28-CA82-4834-B793-7C78140355E3', 0, 723, 'ALGO-DL17', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-12-03 00:00:00.000', '2018-12-07 00:00:00.000', 35, 'HTSRI109', '6061E563-6286-4306-878C-7D33E30904F5', 0, 515, 'GPROJ-TSRIT', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-01 00:00:00.000', '2018-10-05 00:00:00.000', 35, 'HT2SI089', '1EA49118-7F1C-45DD-80F9-7D5EDCCB11EF', 0, 346, 'IM-SERV-APPL', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-25 00:00:00.000', '2018-07-06 00:00:00.000', 70, 'RCDI_020', 'F679E790-176B-4E64-9EE4-7DDA8F7CDE57', 0, 730, 'PRJ1-DEV17', 70, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-03 00:00:00.000', '2018-04-06 00:00:00.000', 28, 'RCDI_021', 'C73EEC8A-481A-487A-A896-7E77C8A78F5D', 0, 21, 'PL-SQL', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-30 00:00:00.000', '2018-08-10 00:00:00.000', 70, 'HDL17129', '85A5E18B-58E8-4C25-B95D-7E832D88D557', 0, 734, 'CONC-DEV17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-19 00:00:00.000', '2018-11-30 00:00:00.000', 70, 'HDL17130', '45AA1DB4-9BE1-4584-9D43-7E8F522D13AC', 0, 734, 'CONC-DEV17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-25 00:00:00.000', '2018-07-13 00:00:00.000', 105, 'HCD17_73', 'AD33FBE0-C07F-4737-9C2B-7ED85F26805C', 0, 544, 'DVWEBPH', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-12-10 00:00:00.000', '2018-12-21 00:00:00.000', 70, 'HTSRI109', 'FC877332-F2EE-47A2-BE9E-7F9EC5CD191C', 0, 517, 'SCRIPT-PWSHEL', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-20 00:00:00.000', '2018-08-24 00:00:00.000', 35, 'LRDL_002', '329B13FD-24E9-4CAA-B22E-7FCE60EC6EC7', 0, 727, 'PRJ2-DEV17', 105, 0, null, null, null);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-05-14 00:00:00.000', '2018-05-25 00:00:00.000', 70, 'RCDI_020', '79125B83-EF81-4387-AF74-7FDFDF86E8A8', 0, 725, 'JAVA1-DL17', 70, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-14 00:00:00.000', '2019-02-01 00:00:00.000', 105, 'HASR_110', '7D1D1A75-8A7A-4957-BB05-803AD4003BEE', 0, 509, 'ADMIN-SYST', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-05 00:00:00.000', '2018-11-09 00:00:00.000', 35, 'HCD17_73', 'D9E80C62-D60F-4D41-A938-80C44A7FFAE4', 0, 566, 'XAMARIN', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-30 00:00:00.000', '2018-08-10 00:00:00.000', 70, 'HCD17_73', '4ECFA3E8-2D13-4BF2-A49A-8167936CF76E', 0, 727, 'PRJ2-DEV17', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-05-14 00:00:00.000', '2018-05-25 00:00:00.000', 63, 'MTSRI001', '8AB83BFE-021F-4754-AD95-81DEF4A32495', 0, 519, 'TOIP-MESSAGERIE', 70, 0, null, null, 12);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-16 00:00:00.000', '2018-07-27 00:00:00.000', 70, 'HDL17128', '9C159163-395C-4C42-8A55-8205C8A0AADD', 0, 302, 'JAVA-2', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-03-05 00:00:00.000', '2018-03-16 00:00:00.000', 70, 'MDL__001', '460B6F26-60E3-46B1-B5DA-8222CA7E7508', 0, 730, 'PRJ1-DEV17', 70, 0, null, null, 12);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-05 00:00:00.000', '2018-11-09 00:00:00.000', 35, 'ACDI_001', 'D7D4E588-3FC1-4F43-918E-823773D7BF57', 0, 731, 'APAC-CDI17', 35, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-09 00:00:00.000', '2018-07-20 00:00:00.000', 70, 'HT2SI089', 'D65CBF5B-2313-4B5C-BD87-82B91CD5CB3E', 0, 720, 'IM-TPSYS17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-01-15 00:00:00.000', '2018-01-19 00:00:00.000', 35, 'RSOP1801', '33A00A45-E6E1-438A-9410-82D2F0AEB524', 0, 648, 'R-SOP-ALGO', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-14 00:00:00.000', '2019-01-18 00:00:00.000', 35, 'HASR_107', '5C3987AC-D77D-463B-B5AB-83098D9B8D87', 0, 533, 'VIRT-ASR', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-05-14 00:00:00.000', '2018-05-18 00:00:00.000', 35, 'MDL__001', 'AE328890-2F0D-4159-9E8F-83614E398E29', 0, 302, 'JAVA-2', 70, 0, null, null, 12);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-02 00:00:00.000', '2018-07-06 00:00:00.000', 35, 'RTSRI003', 'C95303C0-E4F9-4FA2-842A-8429611662EB', 0, 513, 'VIRT-TSRIT', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-15 00:00:00.000', '2018-11-02 00:00:00.000', 98, 'HTSRI108', '05E3D2AB-9339-4082-AD83-84DF42BAA107', 0, 523, 'CISCO-2-3', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-03-11 00:00:00.000', '2019-03-15 00:00:00.000', 35, 'HT2SI090', 'C51A3A53-1F11-449F-B0D9-84EF34333FAC', 0, 346, 'IM-SERV-APPL', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-28 00:00:00.000', '2019-02-15 00:00:00.000', 105, 'HDL17130', '6C77C766-656F-4DAE-93E8-84F3E7E45BDB', 0, 727, 'PRJ2-DEV17', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-07-08 00:00:00.000', '2019-07-19 00:00:00.000', 70, 'NASR_004', 'EE360761-2BF3-48E9-8854-851A1DC6613B', 0, 517, 'SCRIPT-PWSHEL', 70, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-03 00:00:00.000', '2018-04-06 00:00:00.000', 28, 'MDL__001', '3C6B1394-78A3-4EE8-A23D-85BABF0D24E2', 0, 541, 'DVWEBCL', 35, 0, null, null, 12);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-16 00:00:00.000', '2018-07-27 00:00:00.000', 70, 'HTSRI107', '9CA936B3-C9AA-450F-8690-85D97B2E60FA', 0, 517, 'SCRIPT-PWSHEL', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-03-05 00:00:00.000', '2018-03-16 00:00:00.000', 70, 'HPOE1802', 'B15F237E-0FA4-43F0-A647-85DB803BF6C5', 0, 734, 'CONC-DEV17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-18 00:00:00.000', '2018-06-29 00:00:00.000', 70, 'HASR_107', 'A04440C0-FBBE-4EC0-AF6E-85E4805037EF', 0, 722, 'SRVRES-MSP', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-01 00:00:00.000', '2018-10-05 00:00:00.000', 35, 'HDL17130', '3AA758F1-2C0A-4570-AA3F-85F84117E429', 0, 708, '16DL-POOJ', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-03 00:00:00.000', '2018-04-03 00:00:00.000', 7, 'HPOE1802', '02E700B7-C148-417A-9B3C-864D8497F7A9', 0, 738, 'POE-LIN-UTIL', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-03-18 00:00:00.000', '2019-03-29 00:00:00.000', 70, 'HASR_110', '29D64FA9-B36F-4C26-9529-86B48A560625', 0, 517, 'SCRIPT-PWSHEL', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-02-18 00:00:00.000', '2019-03-08 00:00:00.000', 105, 'HCD17_76', 'E3BE7F4B-A4B3-4675-80BA-87381D26EBC1', 0, 544, 'DVWEBPH', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-08-12 00:00:00.000', '2019-08-30 00:00:00.000', 98, 'HASR_110', '0CF9B5EA-BCBF-4F67-81AF-87384B9743B9', 0, 531, 'SERV-RES-SEC', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-21 00:00:00.000', '2019-01-25 00:00:00.000', 35, 'HT2SI090', '573F380B-914F-428C-8098-887C4D548712', 0, 345, 'IM-WDS', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-08 00:00:00.000', '2018-10-19 00:00:00.000', 70, 'HT2SI089', 'E6B7344C-EF6B-4540-B710-89E7143FB08B', 0, 51, 'IM-ITIL', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-09 00:00:00.000', '2018-04-20 00:00:00.000', 70, 'RCDI_021', '85239D35-A51E-4430-8B4F-8B05E5159614', 0, 725, 'JAVA1-DL17', 70, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-03 00:00:00.000', '2018-04-13 00:00:00.000', 63, 'NGEN_001', 'E16FCE40-38F7-4114-9D6E-8B0CE3EDAB08', 0, 820, 'GEN WIN CLIENT', 70, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2017-12-11 00:00:00.000', '2017-12-15 00:00:00.000', 35, 'HPOE1712', '768A17FE-BB9E-4266-8C42-8B4060940753', 0, 692, 'MODULEINDEPENDANT', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-07 00:00:00.000', '2019-01-11 00:00:00.000', 35, 'HTSRI110', '7A35DC61-FFE7-47EA-A17B-8B661623C5A2', 0, 478, 'CISCO-1', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-02 00:00:00.000', '2018-08-24 00:00:00.000', 273, 'MDL__001', '5877BEC7-B19E-451B-8520-8B73515C2CBE', 0, 33, 'STAGE-DL', 280, 0, null, null, 12);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-02-04 00:00:00.000', '2019-02-22 00:00:00.000', 105, 'HASR_109', '10870B01-70EF-49FB-AB1F-8BEBE9AB8A1B', 0, 523, 'CISCO-2-3', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-09 00:00:00.000', '2018-07-27 00:00:00.000', 105, 'RCDI_021', '40C0A526-F3AB-4FEC-B730-8C3AF52CED7E', 0, 727, 'PRJ2-DEV17', 105, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-02 00:00:00.000', '2019-01-04 00:00:00.000', 21, 'HASR_108', '46220A43-1142-4A47-90CD-8C6CE6B37B3C', 0, 93, 'STAGE-ASR', 280, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-07 00:00:00.000', '2019-01-18 00:00:00.000', 70, 'HTSRI109', 'D0828FB4-C801-4174-9971-8CA79EFA9DA7', 0, 519, 'TOIP-MESSAGERIE', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-12-03 00:00:00.000', '2018-12-07 00:00:00.000', 35, 'HMS2SI08', '0DC0D9CA-829D-448A-BA46-8D3CF0B33B1F', 0, 777, '17SI-BESOINS', 35, 0, null, null, 9);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-18 00:00:00.000', '2018-06-22 00:00:00.000', 35, 'HDL17128', 'B41E4437-5145-498A-A1C4-8DF1BE253365', 0, 541, 'DVWEBCL', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-30 00:00:00.000', '2018-05-04 00:00:00.000', 35, 'MDL__001', '22D0DC71-08F4-4FFD-BC5A-8E5F9DD1F65C', 0, 302, 'JAVA-2', 70, 0, null, null, 12);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-02-25 00:00:00.000', '2019-03-01 00:00:00.000', 35, 'HASR_108', '0CB5D014-8B29-4DC1-A2DA-8E7437A8F597', 0, 533, 'VIRT-ASR', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-12-17 00:00:00.000', '2018-12-21 00:00:00.000', 35, 'LRDL_003', 'C3AFAF49-73E8-4737-AA7A-8EEC81927D16', 0, 21, 'PL-SQL', 35, 0, null, null, 10);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-06-11 00:00:00.000', '2019-06-14 00:00:00.000', 28, 'NASR_004', '5E48D7FC-CF6F-446F-A590-8EF01FF4E87B', 0, 513, 'VIRT-TSRIT', 35, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-09-24 00:00:00.000', '2018-10-05 00:00:00.000', 70, 'HTSRI109', 'B1A65D53-4F29-4E79-9B1F-8EF6935286F9', 0, 478, 'CISCO-1', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-05-13 00:00:00.000', '2019-05-31 00:00:00.000', 98, 'HCD17_76', 'B4B5E257-3F55-4555-87EE-8F32F5B5DC3A', 0, 560, 'DVWEBASPX', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-02-05 00:00:00.000', '2018-02-09 00:00:00.000', 35, 'MDL__001', 'A38899A4-DC5A-4B86-8FC6-8F7285513726', 0, 20, 'SQL', 35, 0, null, null, 12);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-03-26 00:00:00.000', '2018-04-06 00:00:00.000', 63, 'MTSRI001', '82199FBD-49B8-432F-BB52-8F8EDA65E7D6', 0, 722, 'SRVRES-MSP', 70, 0, null, null, 12);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-07-15 00:00:00.000', '2019-07-26 00:00:00.000', 70, 'HASR_110', 'DFD5A78C-F90F-4C61-8D6C-8FB9D289D517', 0, 529, 'ADMIN-SYST-AV', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-03-26 00:00:00.000', '2018-03-30 00:00:00.000', 35, 'HDL17128', '1F1E5132-D1FC-416A-8034-8FF1393D738D', 0, 723, 'ALGO-DL17', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-12 00:00:00.000', '2018-11-23 00:00:00.000', 70, 'AASR_001', '9032D03C-FDCB-452C-ACEE-9078EC9D5B43', 0, 529, 'ADMIN-SYST-AV', 70, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-06-24 00:00:00.000', '2019-06-28 00:00:00.000', 35, 'HCD17_76', '174DEC07-CCB1-482F-8CE3-910DDA1F7467', 0, 566, 'XAMARIN', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-03-19 00:00:00.000', '2018-03-23 00:00:00.000', 35, 'NGEN_001', '3B362E51-9873-4ACE-A7DE-9178E4ECF6BD', 0, 818, 'GEN BASE RESEAU', 35, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-09-16 00:00:00.000', '2019-09-20 00:00:00.000', 35, 'RCDI_020', 'EBD828B0-4CF0-464D-876C-929B8A5C8E80', 0, 566, 'XAMARIN', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-05-14 00:00:00.000', '2018-05-18 00:00:00.000', 35, 'HT2SI089', '6D0A9933-3F47-4E0D-9161-933F4AEACC99', 0, 44, 'IM-BDR', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-07-01 00:00:00.000', '2019-08-23 00:00:00.000', 273, 'HCD17_76', '93549FDE-A757-4630-8F3D-93DCD6154C73', 0, 304, 'STAGE-CDI2', 280, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-12-03 00:00:00.000', '2018-12-14 00:00:00.000', 70, 'HT2SI090', '18A76A28-D0DD-4463-989B-93F40E0DD39C', 0, 720, 'IM-TPSYS17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-28 00:00:00.000', '2019-02-01 00:00:00.000', 35, 'HTSRI109', '56B2DA49-D45A-4FA4-8D8C-946C1F2244CB', 0, 317, 'NAGIOS', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-21 00:00:00.000', '2019-02-01 00:00:00.000', 70, 'LRDL_003', '058B4374-63DC-4416-A2E9-948160022AC8', 0, 730, 'PRJ1-DEV17', 70, 0, null, null, 10);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-02-04 00:00:00.000', '2019-02-15 00:00:00.000', 70, 'HASR_110', 'DFB0ECA4-A030-402C-A6F6-957484661415', 0, 721, 'SERV-RES17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-01-22 00:00:00.000', '2018-01-24 00:00:00.000', 21, 'RSOP1801', 'E0C405EA-C88C-4591-A55F-95B8EB808EA1', 0, 835, 'R-SOP-SQL3', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-07 00:00:00.000', '2019-01-18 00:00:00.000', 70, 'RCDI_020', 'C2B13BEE-AF8C-4B01-9138-96472CED391C', 0, 302, 'JAVA-2', 70, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-16 00:00:00.000', '2018-04-16 00:00:00.000', 7, 'HPOE1802', '7ED78EA1-4EE6-43F6-AAB8-9690F87EC6D5', 0, 807, 'POE-TEST-ETRE', 7, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-04 00:00:00.000', '2018-06-15 00:00:00.000', 70, 'HT2SI089', '90CA151D-A2C0-46AD-8927-96B9CD439F92', 0, 45, 'IM-W7', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-04-15 00:00:00.000', '2019-06-07 00:00:00.000', 252, 'HT2SI090', '803A2C8F-1466-405D-AAC2-973216190B3A', 0, 57, 'IM-STAGE', 280, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-03-25 00:00:00.000', '2019-03-29 00:00:00.000', 35, 'HMS2SI08', 'EB1AE274-D7AC-4C9C-AD8B-976E8A26C0EB', 0, 782, '17SI-AGILITE', 35, 0, null, null, 9);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-02 00:00:00.000', '2018-07-20 00:00:00.000', 105, 'HASR_108', '520BDE6D-E3CE-40A2-A9E6-97B424ECBDFF', 0, 509, 'ADMIN-SYST', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-04-08 00:00:00.000', '2019-04-12 00:00:00.000', 35, 'HT2SI090', '858E8AD8-8BDA-426C-9C47-97C32FEFE108', 0, 56, 'IM-EVAL', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-01-08 00:00:00.000', '2018-01-19 00:00:00.000', 70, 'HPOE1712', 'A4CDE329-9838-4992-BAE2-97F561F4831C', 0, 301, 'JAVA-1', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-27 00:00:00.000', '2018-09-14 00:00:00.000', 105, 'HASR_107', 'D196835A-9F7A-4742-BA90-989450AEC145', 0, 523, 'CISCO-2-3', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-05-14 00:00:00.000', '2018-06-01 00:00:00.000', 98, 'AASR_001', '26D36358-879D-447E-92E1-99024886E1CC', 0, 509, 'ADMIN-SYST', 105, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-03-04 00:00:00.000', '2019-03-08 00:00:00.000', 35, 'HTSRI110', 'B08018B1-8B5E-4CAD-B6D5-991D3039708F', 0, 513, 'VIRT-TSRIT', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-06-03 00:00:00.000', '2019-06-14 00:00:00.000', 63, 'HCD17_76', '115E3C13-AA90-4D23-A8C9-9A8FCC942F4D', 0, 728, 'MOB1-DEV17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-23 00:00:00.000', '2018-05-04 00:00:00.000', 63, 'RCDI_021', '3025FE4D-6C48-429F-B140-9CF881B8DF11', 0, 730, 'PRJ1-DEV17', 70, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-09-24 00:00:00.000', '2018-10-05 00:00:00.000', 70, 'HASR_109', '1C099141-5FE2-4135-8CF5-9D9250C15F89', 0, 478, 'CISCO-1', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-09-10 00:00:00.000', '2018-09-14 00:00:00.000', 35, 'HDL17128', 'A6ECA816-248F-4361-BEC0-9D9622BE6C1D', 0, 729, 'PRJ3-DEV17', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-30 00:00:00.000', '2018-08-10 00:00:00.000', 70, 'ADL__001', 'D45D5334-127F-450D-A4D5-9E35D80FEC6F', 0, 728, 'MOB1-DEV17', 70, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-04-29 00:00:00.000', '2019-05-03 00:00:00.000', 28, 'HCD17_76', '1C46C421-3EF5-4938-8C81-9E4F556A00D5', 0, 731, 'APAC-CDI17', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-29 00:00:00.000', '2018-11-09 00:00:00.000', 63, 'HTSRI109', 'AEAD784D-ABDA-4B8E-8124-9F494525EC7D', 0, 721, 'SERV-RES17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-13 00:00:00.000', '2018-08-17 00:00:00.000', 28, 'RCDI_021', 'F6F85C5D-AD6F-47C1-BB5F-9FDC333DD6C4', 0, 731, 'APAC-CDI17', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2017-12-18 00:00:00.000', '2017-12-22 00:00:00.000', 35, 'HPOE1712', '8197E1DD-1169-4E74-82CF-A0576081D58D', 0, 708, '16DL-POOJ', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-26 00:00:00.000', '2018-12-07 00:00:00.000', 70, 'HASR_107', '2FE7C23A-CB78-497F-9967-A05F7621774D', 0, 527, 'UTIL-ADMIN-BD', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-25 00:00:00.000', '2018-06-29 00:00:00.000', 35, 'NGEN_001', '5651596D-EBD9-47C1-ACF1-A08F8E94B056', 0, 833, 'GEN TP EVAL', 35, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-14 00:00:00.000', '2019-01-18 00:00:00.000', 35, 'ACDI_001', 'EA4755F1-3C0E-43D7-9326-A1C999F30E7D', 0, 566, 'XAMARIN', 35, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-13 00:00:00.000', '2018-08-17 00:00:00.000', 28, 'ADL__001', '1DB7E74B-FEB9-43B7-88F1-A1D7C149E512', 0, 729, 'PRJ3-DEV17', 35, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-03-04 00:00:00.000', '2019-03-08 00:00:00.000', 35, 'HASR_110', '045127F0-A6EA-48AE-AC07-A2213D08515F', 0, 513, 'VIRT-TSRIT', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-02-05 00:00:00.000', '2018-02-09 00:00:00.000', 35, 'RSOP1801', 'A755E4CA-1C92-47F5-B5EB-A278CAD4D322', 0, 712, 'SOP-JAVA-1', 49, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-20 00:00:00.000', '2018-08-24 00:00:00.000', 35, 'HTSRI108', '99979078-69A1-4998-89AE-A2E299D35530', 0, 513, 'VIRT-TSRIT', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-26 00:00:00.000', '2018-11-30 00:00:00.000', 35, 'HTSRI109', '44BC3D14-7645-4B26-8C35-A30EF466B26B', 0, 513, 'VIRT-TSRIT', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-12 00:00:00.000', '2018-11-16 00:00:00.000', 35, 'NGEN_001', 'D18E7220-FE2B-42FA-A419-A327EB3A2B1D', 0, 828, 'GEN TP SRV RESEAUX', 35, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-06-03 00:00:00.000', '2019-06-07 00:00:00.000', 35, 'HMS2IN08', '720DB770-8A26-471E-8F44-A50418E0D490', 0, 771, '17IN-SECURITE-SI', 35, 0, null, null, 9);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-16 00:00:00.000', '2018-07-27 00:00:00.000', 70, 'HCD17_73', '854AB776-5894-4CEB-BE4B-A6702A2F1398', 0, 302, 'JAVA-2', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-09-17 00:00:00.000', '2018-11-09 00:00:00.000', 273, 'LRDL_002', 'ADDFEB30-403A-460B-AA4E-A6784406A962', 0, 33, 'STAGE-DL', 280, 0, null, null, 10);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-01 00:00:00.000', '2018-10-05 00:00:00.000', 35, 'HTSRI108', '164F7061-286A-48C0-B377-A6E25F0B110D', 0, 625, 'PROJ-TSRIT', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-08 00:00:00.000', '2018-10-12 00:00:00.000', 35, 'HTSRI108', '32CFE433-CD01-4D32-9498-A6F56F4FD669', 0, 317, 'NAGIOS', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-04 00:00:00.000', '2018-06-22 00:00:00.000', 105, 'ADL__001', 'E9AA5E81-77B0-43DB-B2F2-A77F62D16933', 0, 544, 'DVWEBPH', 105, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-03 00:00:00.000', '2018-04-06 00:00:00.000', 28, 'LRDL_002', 'E36FC5C5-9CE0-4FA4-A459-A9D4048D74DF', 0, 724, 'INIT-DL17', 35, 0, null, null, 10);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-02-18 00:00:00.000', '2019-03-01 00:00:00.000', 70, 'HCD17_75', '3AB4CDEA-A36F-426F-87D1-AA7F45BAF6B2', 0, 34, 'J2EAV', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-09 00:00:00.000', '2018-04-13 00:00:00.000', 35, 'RCDI_020', '27C4662D-83FD-4A38-B3B3-AA8CB7F292ED', 0, 708, '16DL-POOJ', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-07 00:00:00.000', '2019-01-11 00:00:00.000', 35, 'ACDI_001', '1931AEFE-92B7-4E2E-AFD2-AAA03DC369A7', 0, 729, 'PRJ3-DEV17', 35, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-20 00:00:00.000', '2018-08-24 00:00:00.000', 35, 'HASR_108', 'FC21DAB2-CD89-442D-953E-ABCB438AA523', 0, 513, 'VIRT-TSRIT', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-07 00:00:00.000', '2019-01-11 00:00:00.000', 35, 'HASR_110', 'CDAD7FCA-AFEB-46C8-870E-ABCD685941C3', 0, 478, 'CISCO-1', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-03-25 00:00:00.000', '2019-04-12 00:00:00.000', 105, 'HCD17_76', '03DFABF1-9405-499B-8F73-AC917ED5532D', 0, 727, 'PRJ2-DEV17', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-03-11 00:00:00.000', '2019-05-03 00:00:00.000', 266, 'HDL17130', '83A08CAC-1F78-4332-A442-ACCB180EF97D', 0, 33, 'STAGE-DL', 280, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-28 00:00:00.000', '2019-02-01 00:00:00.000', 35, 'HMS2IN08', '771EE1E1-2DFF-4473-A401-ACDDB697B749', 0, 766, '17IN-CCNA-SECUR', 35, 0, null, null, 9);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-05-13 00:00:00.000', '2019-05-24 00:00:00.000', 70, 'NASR_004', '40EA0516-DF65-40C6-B473-ACE6C05EABBB', 0, 722, 'SRVRES-MSP', 70, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-23 00:00:00.000', '2018-05-04 00:00:00.000', 63, 'HASR_107', '56873413-A269-4C85-BFCA-ADBECE095CC6', 0, 478, 'CISCO-1', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-28 00:00:00.000', '2019-02-15 00:00:00.000', 105, 'HCD17_75', '33A95D4A-3C4F-46AC-B107-ADF5BABD63DA', 0, 727, 'PRJ2-DEV17', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-07 00:00:00.000', '2019-01-11 00:00:00.000', 35, 'HCD17_76', 'FA99B569-3A8E-48FC-84E5-AE08661E90A4', 0, 725, 'JAVA1-DL17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-03-12 00:00:00.000', '2018-03-23 00:00:00.000', 70, 'MTSRI001', 'FBA7307E-A305-4D68-9DC2-AFF8A613E7A7', 0, 721, 'SERV-RES17', 70, 0, null, null, 12);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-06-17 00:00:00.000', '2019-06-21 00:00:00.000', 35, 'HMS2SI08', 'B2E8D1A8-4C13-44C4-8EF5-AFF9B41F36B4', 0, 786, '17SI-ADMIN-SQL', 35, 0, null, null, 9);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-11 00:00:00.000', '2018-06-15 00:00:00.000', 35, 'ACDI_001', '8FF17DC2-3AE1-4E39-BCDE-B115D6536F61', 0, 708, '16DL-POOJ', 35, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-15 00:00:00.000', '2018-10-19 00:00:00.000', 35, 'HDL17130', '427EA863-2410-47C1-9825-B15DEB1BC565', 0, 21, 'PL-SQL', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-08 00:00:00.000', '2018-10-12 00:00:00.000', 35, 'HCD17_75', 'BC2762CC-2544-4D01-8B47-B25DC6C07B12', 0, 20, 'SQL', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-22 00:00:00.000', '2018-11-02 00:00:00.000', 63, 'HCD17_75', 'FF2F4269-F3FF-40B4-928F-B266146EF73F', 0, 725, 'JAVA1-DL17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-16 00:00:00.000', '2018-04-20 00:00:00.000', 35, 'MTSRI001', 'CF4F429C-A713-4E75-9BC7-B27A96AE8DF1', 0, 515, 'GPROJ-TSRIT', 35, 0, null, null, 12);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-05-06 00:00:00.000', '2019-05-10 00:00:00.000', 28, 'HMS2SI08', '2B5541C8-F611-40B6-BED3-B2B4714AF3C0', 0, 783, '17SI-ORGA-DSI', 35, 0, null, null, 9);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-12 00:00:00.000', '2018-11-16 00:00:00.000', 35, 'HMS2IN08', 'A0620B9D-9798-45BD-9AFA-B2E0BBB2F44E', 0, 762, '17IN-BESOINS', 35, 0, null, null, 9);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-02-04 00:00:00.000', '2019-03-29 00:00:00.000', 280, 'AASR_001', '424CE413-C842-4A7C-8CC3-B338F9A01991', 0, 93, 'STAGE-ASR', 280, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-22 00:00:00.000', '2018-11-02 00:00:00.000', 63, 'HDL17129', 'F522EAF4-5A9B-4927-9919-B383A3116AB0', 0, 728, 'MOB1-DEV17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-28 00:00:00.000', '2019-02-08 00:00:00.000', 70, 'HCD17_76', 'B58AAB97-439E-4D58-9FE5-B392733F5E6B', 0, 734, 'CONC-DEV17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-07-01 00:00:00.000', '2019-07-05 00:00:00.000', 35, 'HMS2IN08', 'AA9F4096-09DD-472F-BA51-B46CE3BE5CE2', 0, 772, '17IN-ITIL', 35, 0, null, null, 9);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-09-17 00:00:00.000', '2018-09-21 00:00:00.000', 35, 'HDL17130', '000C3BFD-4E65-47EE-9FFF-B4C39E29808C', 0, 723, 'ALGO-DL17', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-05-20 00:00:00.000', '2019-06-07 00:00:00.000', 98, 'HASR_109', '84D909AB-8994-4EA2-9456-B5BB313F42AB', 0, 531, 'SERV-RES-SEC', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-09-17 00:00:00.000', '2018-09-28 00:00:00.000', 70, 'HASR_108', '0555A9CB-BCF8-4DC4-A1B9-B5EC6725FF68', 0, 519, 'TOIP-MESSAGERIE', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-03-04 00:00:00.000', '2019-03-15 00:00:00.000', 70, 'HASR_108', '18CF8600-446F-4CF1-B963-B6C60586D686', 0, 536, 'SERV-WEB', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-04-15 00:00:00.000', '2019-04-19 00:00:00.000', 35, 'HMS2IN08', 'C0F571D6-B7F6-4379-91B0-B6F071B984B5', 0, 769, '17IN-PROJ-SOUTENANCE', 35, 0, null, null, 9);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-07 00:00:00.000', '2019-01-11 00:00:00.000', 35, 'HCD17_75', '3145CAFA-0E4B-420A-8265-B8143624B40B', 0, 544, 'DVWEBPH', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-05-20 00:00:00.000', '2019-07-12 00:00:00.000', 266, 'HTSRI110', 'BBBA7B29-BB2C-4D9D-AC98-B88428AF257F', 0, 525, 'STAGE-TSRIT', 280, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-18 00:00:00.000', '2018-06-22 00:00:00.000', 35, 'HCD17_73', '3616294E-D6BA-484F-AE40-B8DEF50FFA77', 0, 541, 'DVWEBCL', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-23 00:00:00.000', '2018-04-27 00:00:00.000', 35, 'LRDL_002', 'B0BEE6FA-0DB7-4C3B-BAC1-B989FB149FD7', 0, 21, 'PL-SQL', 35, 0, null, null, 10);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-04 00:00:00.000', '2018-06-15 00:00:00.000', 70, 'AASR_001', 'DA437D60-D0EF-403D-BC41-BA74014CEBA3', 0, 721, 'SERV-RES17', 70, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-15 00:00:00.000', '2018-10-26 00:00:00.000', 70, 'NASR_004', '9FCE74F2-E841-45E1-9215-BB8A614DD50D', 0, 506, 'UTIL-POSTE', 70, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-05-14 00:00:00.000', '2018-06-01 00:00:00.000', 98, 'RTSRI003', 'ABBDCD28-C70D-4FC9-A4B0-BC3A8532874C', 0, 509, 'ADMIN-SYST', 105, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-09 00:00:00.000', '2018-04-20 00:00:00.000', 70, 'RTSRI003', '42D4457C-9B08-4C8F-A96A-BC67BE076CEE', 0, 506, 'UTIL-POSTE', 70, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-23 00:00:00.000', '2018-04-27 00:00:00.000', 35, 'RCDI_020', '188C569B-8C57-4EA2-9A1C-BD1A422C675E', 0, 21, 'PL-SQL', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-09-10 00:00:00.000', '2018-09-21 00:00:00.000', 70, 'HT2SI089', '9824FCBA-CD33-4DD7-97DF-BD59CD3A108D', 0, 54, 'IM-MESSAG', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-08 00:00:00.000', '2018-10-12 00:00:00.000', 35, 'RCDI_020', 'B061528A-4125-400C-A348-BDDA7469D42F', 0, 541, 'DVWEBCL', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-09-17 00:00:00.000', '2018-09-28 00:00:00.000', 70, 'RCDI_021', '0950D373-0902-4784-94BC-BEC90A8BD01A', 0, 728, 'MOB1-DEV17', 70, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-03-26 00:00:00.000', '2018-03-30 00:00:00.000', 35, 'NGEN_001', 'EBCE5B0D-B7A4-443F-92DD-BFDECE5FB0DB', 0, 819, 'GEN BUREAUTIQUE', 35, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-04 00:00:00.000', '2018-06-08 00:00:00.000', 35, 'MTSRI001', '768CD014-5222-41AA-9967-C0383EF0691B', 0, 317, 'NAGIOS', 35, 0, null, null, 12);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-30 00:00:00.000', '2018-08-10 00:00:00.000', 70, 'RTSRI003', 'C4A4DFCE-3E37-487F-8143-C04D801077B1', 0, 519, 'TOIP-MESSAGERIE', 70, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-03-11 00:00:00.000', '2019-03-15 00:00:00.000', 35, 'HASR_110', '9B036A4C-344C-4717-9241-C0B894E98CA5', 0, 515, 'GPROJ-TSRIT', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-09-09 00:00:00.000', '2019-09-13 00:00:00.000', 35, 'HMS2SI08', '0CDAA05F-C68C-494A-9C93-C1D679C789A4', 0, 788, '17SI-IOT-MARKET', 35, 0, null, null, 9);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-04 00:00:00.000', '2018-06-08 00:00:00.000', 35, 'HDL17129', '4FDAA94E-62F6-417C-B27D-C2BB09F34D96', 0, 724, 'INIT-DL17', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-03-04 00:00:00.000', '2019-03-08 00:00:00.000', 35, 'HDL17130', '5DE27295-322F-4A96-8DAC-C3DC0BAA19F9', 0, 729, 'PRJ3-DEV17', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-02-04 00:00:00.000', '2019-02-15 00:00:00.000', 70, 'HTSRI110', '149EEE75-8E2B-435F-A5B2-C3DC57FBB3DB', 0, 721, 'SERV-RES17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-02-11 00:00:00.000', '2019-02-15 00:00:00.000', 35, 'HT2SI090', 'EB1CC080-E8E6-467B-A43D-C482A3776E66', 0, 53, 'IM-RES-TP', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-07 00:00:00.000', '2019-01-18 00:00:00.000', 70, 'HASR_109', 'BD0ED483-C83A-4B5A-9404-C4836DB959FB', 0, 519, 'TOIP-MESSAGERIE', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-18 00:00:00.000', '2018-06-22 00:00:00.000', 35, 'HT2SI088', 'F9FD6D84-BCC7-43AA-816D-C4EF62D49DC6', 0, 477, 'IM-NAGIOS', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-02-18 00:00:00.000', '2019-03-08 00:00:00.000', 105, 'RCDI_020', '16E23474-A904-4CEB-B0B4-C5EB9963698F', 0, 727, 'PRJ2-DEV17', 105, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-21 00:00:00.000', '2019-02-01 00:00:00.000', 70, 'AASR_001', '33CE553E-9A7A-414D-A1EF-C622701B8755', 0, 536, 'SERV-WEB', 70, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-04-23 00:00:00.000', '2019-05-03 00:00:00.000', 56, 'HASR_109', '339E601A-A933-4226-9EE3-C66CC289DD79', 0, 529, 'ADMIN-SYST-AV', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-20 00:00:00.000', '2018-08-24 00:00:00.000', 35, 'RTSRI003', 'A29D946C-5E14-4161-832D-C6BF7FCAFF27', 0, 625, 'PROJ-TSRIT', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-30 00:00:00.000', '2018-08-10 00:00:00.000', 70, 'HTSRI107', '9C9A8BD0-F551-4FBF-9FE1-C6D7CC77714A', 0, 519, 'TOIP-MESSAGERIE', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-12 00:00:00.000', '2018-11-23 00:00:00.000', 70, 'HASR_107', 'DCDBE3B9-CD97-4E4C-9C0B-C73A799FE1D4', 0, 529, 'ADMIN-SYST-AV', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-01 00:00:00.000', '2018-10-19 00:00:00.000', 105, 'ACDI_001', 'F10880DF-9F18-41B3-85E1-C77C5031AD4F', 0, 727, 'PRJ2-DEV17', 105, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-23 00:00:00.000', '2018-08-10 00:00:00.000', 105, 'HT2SI089', '7C9ECE60-8737-4F06-AF56-C7B5A1241D93', 0, 344, 'IM-RES-WINDOWS', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-04-15 00:00:00.000', '2019-04-19 00:00:00.000', 35, 'HTSRI110', '4108BEE9-2E74-4CCC-9872-C80D214E363C', 0, 625, 'PROJ-TSRIT', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-23 00:00:00.000', '2018-05-04 00:00:00.000', 63, 'ADL__001', 'FAFE4C71-4220-48EB-BEF9-C836483B77B6', 0, 730, 'PRJ1-DEV17', 70, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-14 00:00:00.000', '2019-02-01 00:00:00.000', 105, 'HTSRI110', '118EA31E-4954-40E3-896C-C84FC345237F', 0, 509, 'ADMIN-SYST', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-03-19 00:00:00.000', '2018-03-23 00:00:00.000', 35, 'RCDI_021', '8DCF25E3-1B22-47AF-9400-C891A50240A3', 0, 708, '16DL-POOJ', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-02-12 00:00:00.000', '2018-02-16 00:00:00.000', 35, 'MDL__001', 'E286D7DC-EA10-4FBD-8A0A-C9C25919ADE0', 0, 21, 'PL-SQL', 35, 0, null, null, 12);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-18 00:00:00.000', '2018-06-29 00:00:00.000', 70, 'HTSRI108', 'C9437277-C1A7-4822-9C4C-C9DC8CFA204C', 0, 478, 'CISCO-1', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-09-03 00:00:00.000', '2018-09-14 00:00:00.000', 70, 'HASR_108', '89626305-08FA-450A-9BB5-CA9FB3BE47C1', 0, 517, 'SCRIPT-PWSHEL', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-02-18 00:00:00.000', '2019-02-22 00:00:00.000', 35, 'LRDL_003', '9CD9F784-76BC-4BA3-AA82-CABB25ACA379', 0, 541, 'DVWEBCL', 35, 0, null, null, 10);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-05-22 00:00:00.000', '2018-06-01 00:00:00.000', 63, 'HDL17128', 'F67D20B5-7972-433B-AE34-CB9CB30085CF', 0, 730, 'PRJ1-DEV17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-02 00:00:00.000', '2019-01-04 00:00:00.000', 21, 'HTSRI108', '00A13870-C3F0-415D-99B5-CBA56AFD071B', 0, 525, 'STAGE-TSRIT', 280, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-02-12 00:00:00.000', '2018-02-16 00:00:00.000', 35, 'RSOP1801', '5A0FA38A-AC59-4890-A542-CD74D6DD3E1B', 0, 713, 'SOP-WEBCL', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-05-06 00:00:00.000', '2019-06-28 00:00:00.000', 259, 'HCD17_75', 'D774AAB9-22F8-4747-BC50-CE108A7CEB56', 0, 304, 'STAGE-CDI2', 280, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-23 00:00:00.000', '2018-05-04 00:00:00.000', 63, 'RTSRI003', '3EFDAA53-05D5-414D-BE28-CE44FD0B2D76', 0, 478, 'CISCO-1', 70, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-16 00:00:00.000', '2018-07-27 00:00:00.000', 70, 'HDL17129', 'E2528FDB-2DCB-49F5-BF42-CE4C3BD0E6DB', 0, 730, 'PRJ1-DEV17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-27 00:00:00.000', '2018-08-31 00:00:00.000', 35, 'RTSRI003', '7A6C2924-CC75-4B34-8FEF-CE79DF5273A4', 0, 317, 'NAGIOS', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-04 00:00:00.000', '2018-06-15 00:00:00.000', 70, 'HDL17128', '9A34D0AF-C62D-4BAA-BBD6-CEAF67FFC7AE', 0, 734, 'CONC-DEV17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-08-26 00:00:00.000', '2019-08-30 00:00:00.000', 35, 'HMS2IN08', '1F5BD272-3E42-41A3-9644-CF2B728DAEEB', 0, 773, '17IN-BUSINESS-INTEL', 35, 0, null, null, 9);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-12-10 00:00:00.000', '2018-12-21 00:00:00.000', 70, 'HDL17130', '966E9CF6-1126-474A-A8CC-D01EA99E3735', 0, 544, 'DVWEBPH', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-09 00:00:00.000', '2018-04-11 00:00:00.000', 21, 'HPOE1802', 'EF5B7506-198F-4F22-BCB6-D02D4274D049', 0, 702, 'POE-TEST-QCENTER', 21, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-01-29 00:00:00.000', '2018-02-02 00:00:00.000', 35, 'RCDI_020', '7A164585-9AC9-4B8F-9177-D19F14D8FECE', 0, 21, 'PL-SQL', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-09-10 00:00:00.000', '2018-09-14 00:00:00.000', 35, 'HCD17_73', 'C9EAD594-44CE-4F79-88E2-D1B75D274942', 0, 731, 'APAC-CDI17', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-15 00:00:00.000', '2018-10-19 00:00:00.000', 35, 'HMS2SI08', '2F3E3AE4-FD04-44A6-AEBD-D1DC746FE6F8', 0, 775, '17SI-RAPPELS-CP', 35, 0, null, null, 9);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-02-11 00:00:00.000', '2019-02-15 00:00:00.000', 35, 'HCD17_76', 'EC7AECCD-A8EE-436C-B9B5-D20A816744B7', 0, 541, 'DVWEBCL', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-05 00:00:00.000', '2018-11-16 00:00:00.000', 70, 'HCD17_75', '7D237DD2-4F1C-41DB-9B09-D233A5191A18', 0, 730, 'PRJ1-DEV17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-09-23 00:00:00.000', '2019-11-15 00:00:00.000', 266, 'HASR_110', '69497EC0-9343-4F1B-A0C0-D28E1F9CAD65', 0, 93, 'STAGE-ASR', 280, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-09-17 00:00:00.000', '2018-11-09 00:00:00.000', 273, 'HASR_107', '473DC989-00DF-4A7F-A824-D2C0B64E5441', 0, 93, 'STAGE-ASR', 280, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-08 00:00:00.000', '2018-10-12 00:00:00.000', 35, 'HASR_108', '2F58722D-5535-4F71-B3BB-D37F34949532', 0, 317, 'NAGIOS', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-02-05 00:00:00.000', '2018-02-16 00:00:00.000', 70, 'MTSRI001', '7F38CD6D-AF88-4285-8673-D3A841A8D0CF', 0, 478, 'CISCO-1', 70, 0, null, null, 12);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-05 00:00:00.000', '2018-12-21 00:00:00.000', 245, 'HT2SI089', '89F7294B-079D-4185-868B-D473F1B6C339', 0, 57, 'IM-STAGE', 280, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-02 00:00:00.000', '2019-01-11 00:00:00.000', 63, 'HDL17129', 'DD58449D-DBE7-496F-B627-D63676C99308', 0, 33, 'STAGE-DL', 280, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-09 00:00:00.000', '2018-04-13 00:00:00.000', 35, 'MTSRI001', '6B348C3D-6542-477D-9009-D66334FEEA31', 0, 513, 'VIRT-TSRIT', 35, 0, null, null, 12);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-22 00:00:00.000', '2018-10-26 00:00:00.000', 35, 'HT2SI089', '4D1F8D19-29EC-4AA7-AB9A-D8126B2A000F', 0, 477, 'IM-NAGIOS', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-05 00:00:00.000', '2018-11-16 00:00:00.000', 70, 'HDL17130', '5321A049-620F-41C5-B0B8-D85F07716661', 0, 730, 'PRJ1-DEV17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-04 00:00:00.000', '2018-06-15 00:00:00.000', 70, 'LRDL_002', 'D820AA47-D8B8-47AA-91DE-D864EB65C4EA', 0, 734, 'CONC-DEV17', 70, 0, null, null, 10);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-09 00:00:00.000', '2018-04-20 00:00:00.000', 70, 'AASR_001', '7DDBCF52-14FE-42C4-81F0-D96EEFE00545', 0, 506, 'UTIL-POSTE', 70, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-18 00:00:00.000', '2018-06-29 00:00:00.000', 70, 'RTSRI003', 'AC420FEB-9408-4886-9CED-DA366961A5C2', 0, 722, 'SRVRES-MSP', 70, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-09-09 00:00:00.000', '2019-09-20 00:00:00.000', 70, 'HASR_110', 'E045E92C-6E42-4C23-BD45-DA81949AD51B', 0, 536, 'SERV-WEB', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-19 00:00:00.000', '2018-11-23 00:00:00.000', 35, 'LRDL_003', 'D9927A9F-21AC-45EA-89A6-DAE23ABE89C3', 0, 723, 'ALGO-DL17', 35, 0, null, null, 10);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-27 00:00:00.000', '2018-09-14 00:00:00.000', 105, 'HTSRI107', '9CD88968-D10D-422C-8035-DAF32D1AA497', 0, 523, 'CISCO-2-3', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-29 00:00:00.000', '2018-11-02 00:00:00.000', 28, 'HCD17_73', 'C357AB39-F257-4720-A965-DB9FB923AEA8', 0, 729, 'PRJ3-DEV17', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-11 00:00:00.000', '2018-06-22 00:00:00.000', 70, 'MDL__001', '446C385E-707F-4113-996D-DCF7DC16D216', 0, 728, 'MOB1-DEV17', 70, 0, null, null, 12);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-04-29 00:00:00.000', '2019-05-03 00:00:00.000', 28, 'HCD17_75', 'D3E9EE90-4BDB-432B-823E-DEA0FA2B1B9D', 0, 566, 'XAMARIN', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-26 00:00:00.000', '2018-11-30 00:00:00.000', 35, 'HCD17_76', 'D090B325-1AB8-48D6-99C5-E0585D14D05A', 0, 708, '16DL-POOJ', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-26 00:00:00.000', '2018-11-30 00:00:00.000', 35, 'HASR_109', '1432D207-3A17-4D9D-B60C-E08E77F07C43', 0, 513, 'VIRT-TSRIT', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-25 00:00:00.000', '2018-07-13 00:00:00.000', 105, 'LRDL_002', 'EDBF0441-50CC-4B38-A0C0-E0A79C95E2E9', 0, 544, 'DVWEBPH', 105, 0, null, null, 10);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-11-04 00:00:00.000', '2019-11-08 00:00:00.000', 35, 'NASR_004', '034EDB92-26F2-4F64-A3A1-E0BAA212484C', 0, 317, 'NAGIOS', 35, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-27 00:00:00.000', '2018-09-14 00:00:00.000', 105, 'ACDI_001', '2C2B0501-487C-46F7-A98C-E1549BD944F5', 0, 544, 'DVWEBPH', 105, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-04-22 00:00:00.000', '2019-04-26 00:00:00.000', 28, 'HTSRI110', '7878231F-D5DA-4FC0-9B3F-E25588856CB4', 0, 317, 'NAGIOS', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-05 00:00:00.000', '2018-12-21 00:00:00.000', 245, 'HASR_108', 'F9020F93-1218-417E-AAFF-E345B3BBA07E', 0, 93, 'STAGE-ASR', 280, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-12-17 00:00:00.000', '2018-12-21 00:00:00.000', 35, 'NGEN_001', '72AB5B9D-1A89-4C14-8941-E3A0432CF6F2', 0, 829, 'GEN SERVEUR APPLI', 35, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-03-19 00:00:00.000', '2018-03-30 00:00:00.000', 70, 'HPOE1802', 'DBBED487-6685-4327-8D6B-E3C77DBCB964', 0, 699, 'ISQTQB-FOND2', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-03-04 00:00:00.000', '2019-03-08 00:00:00.000', 35, 'HMS2IN08', 'FA6A3BFD-4E27-46E8-A60B-E3F1E09862E8', 0, 767, '17IN-PROJ-MEMOIRE', 35, 0, null, null, 9);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-03 00:00:00.000', '2018-04-06 00:00:00.000', 28, 'ADL__001', '46DB575D-76BB-40EC-BEBA-E408F4EE158B', 0, 21, 'PL-SQL', 35, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-08-26 00:00:00.000', '2019-09-06 00:00:00.000', 70, 'RCDI_020', '9E10FA5B-8D32-4844-A86F-E4BD5133D1BC', 0, 728, 'MOB1-DEV17', 70, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-05-06 00:00:00.000', '2019-05-10 00:00:00.000', 28, 'LRDL_003', '58E280BA-5356-4816-874F-E4FF4F5C8C22', 0, 729, 'PRJ3-DEV17', 35, 0, null, null, 10);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-03-19 00:00:00.000', '2018-03-23 00:00:00.000', 35, 'ADL__001', '91163186-74AE-4458-8B12-E5106F8DC105', 0, 708, '16DL-POOJ', 35, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-02 00:00:00.000', '2018-07-06 00:00:00.000', 35, 'HASR_107', 'EE5DA652-A0EB-4E1D-B30A-E51C90E84650', 0, 513, 'VIRT-TSRIT', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-30 00:00:00.000', '2018-08-10 00:00:00.000', 70, 'ACDI_001', '84531CF4-AA01-4C59-8D34-E53A3B39F8DF', 0, 734, 'CONC-DEV17', 70, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-14 00:00:00.000', '2019-01-25 00:00:00.000', 70, 'HDL17130', '91A46A5E-F1B3-41BF-8B89-E56D82E1952D', 0, 302, 'JAVA-2', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-05-20 00:00:00.000', '2019-05-24 00:00:00.000', 35, 'HMS2IN08', 'B1C91E9B-C1C1-42B3-9169-E58D4445FEB7', 0, 770, '17IN-ETHICAL-HACKING', 35, 0, null, null, 9);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-05-14 00:00:00.000', '2018-06-01 00:00:00.000', 98, 'HASR_107', '178F41F3-835A-421E-AF5E-E62A063FD594', 0, 509, 'ADMIN-SYST', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-09 00:00:00.000', '2018-04-20 00:00:00.000', 70, 'ADL__001', 'B887EFE6-DCD8-4473-8615-E660E5A64FC0', 0, 725, 'JAVA1-DL17', 70, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-12-17 00:00:00.000', '2018-12-21 00:00:00.000', 35, 'HT2SI090', 'EAA1C0F8-5288-49DA-807D-E666AA8C766B', 0, 344, 'IM-RES-WINDOWS', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-02-25 00:00:00.000', '2019-03-15 00:00:00.000', 105, 'LRDL_003', 'C1F8614E-DA58-4620-A20E-E6B6461D746B', 0, 544, 'DVWEBPH', 105, 0, null, null, 10);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-03-04 00:00:00.000', '2019-03-08 00:00:00.000', 35, 'HCD17_75', 'FABB62A4-66D5-458C-846C-E6C8927249DC', 0, 731, 'APAC-CDI17', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-02-04 00:00:00.000', '2019-03-29 00:00:00.000', 280, 'HASR_107', 'BDF1C451-59BA-4BEC-A469-E7218D34B967', 0, 93, 'STAGE-ASR', 280, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-05-14 00:00:00.000', '2018-05-25 00:00:00.000', 63, 'RCDI_021', '54263645-E9D2-4825-879C-E81C1C3E4A81', 0, 734, 'CONC-DEV17', 70, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-07 00:00:00.000', '2019-01-18 00:00:00.000', 70, 'HASR_108', '681F4C54-31A5-4059-A608-E86B8E1ED444', 0, 529, 'ADMIN-SYST-AV', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-01 00:00:00.000', '2018-10-12 00:00:00.000', 70, 'NGEN_001', '66819E8D-3220-432A-A0F2-E87C53F972AC', 0, 827, 'GEN SRV RES LINUX', 105, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-07-29 00:00:00.000', '2019-08-09 00:00:00.000', 70, 'HASR_110', '8D5F900A-9B08-4855-A930-E91E1A327CD6', 0, 527, 'UTIL-ADMIN-BD', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-19 00:00:00.000', '2018-11-30 00:00:00.000', 70, 'HCD17_75', 'A6FE3680-0EDF-439B-B8F3-EABAE3F1F3B0', 0, 734, 'CONC-DEV17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-05-22 00:00:00.000', '2018-06-08 00:00:00.000', 98, 'MDL__001', 'E24C6E81-0971-4C93-A749-EB516155B848', 0, 727, 'PRJ2-DEV17', 105, 0, null, null, 12);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-07 00:00:00.000', '2019-01-18 00:00:00.000', 70, 'HT2SI090', 'CC754874-E458-4789-BF2D-EB9A4787299C', 0, 344, 'IM-RES-WINDOWS', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-09 00:00:00.000', '2018-07-13 00:00:00.000', 35, 'HTSRI107', 'DAA71DFB-A608-4726-B7D6-EB9CD341B174', 0, 515, 'GPROJ-TSRIT', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-04-01 00:00:00.000', '2019-04-05 00:00:00.000', 35, 'NGEN_001', '3A13B9F5-E031-4CCB-8323-EB9F5A87D948', 0, 832, 'GEN SUPERVISION', 35, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-05-06 00:00:00.000', '2019-05-10 00:00:00.000', 28, 'HCD17_76', '748346CF-194A-4F26-9C97-ED3790BF85C8', 0, 36, 'CP-COURS', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-03-26 00:00:00.000', '2018-03-30 00:00:00.000', 35, 'LRDL_002', '120B75C1-8749-42C3-8036-ED3D7AF05D06', 0, 723, 'ALGO-DL17', 35, 0, null, null, 10);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-02-19 00:00:00.000', '2018-03-02 00:00:00.000', 70, 'HPOE1712', 'C7ED8462-2A56-4077-B42C-ED48B0F82D32', 0, 497, 'STAGE-POE2', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-10-15 00:00:00.000', '2018-10-19 00:00:00.000', 35, 'HCD17_75', '69D4F236-9A75-41C5-B103-ED63FABDDFE2', 0, 21, 'PL-SQL', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-30 00:00:00.000', '2018-05-04 00:00:00.000', 28, 'HT2SI088', '023C16AB-32ED-49B9-98E6-ED7AF7839F0D', 0, 54, 'IM-MESSAG', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-17 00:00:00.000', '2018-04-18 00:00:00.000', 14, 'HPOE1802', '18B389A5-3B06-42D3-8BBE-EDE42D4E752B', 0, 752, 'POE-TEST-SELEN', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-05-28 00:00:00.000', '2019-05-28 00:00:00.000', 7, 'HMS2IN08', '5486719D-0F96-4BAF-9FD8-EDF9D21F9552', 0, 811, '17IN-EVAL-2CHANCE', 7, 0, null, null, 9);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-01-02 00:00:00.000', '2018-01-05 00:00:00.000', 28, 'HPOE1712', '263AAA5E-994E-4D2B-AEFA-EED5E6B2639C', 0, 20, 'SQL', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-01-29 00:00:00.000', '2018-02-02 00:00:00.000', 35, 'RPO1712S', '4F969778-C06E-414D-8DD4-EF15CBC2C3DF', 0, 740, 'POE-VIRT-CLI', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-12-03 00:00:00.000', '2018-12-07 00:00:00.000', 35, 'HDL17130', 'D7D0B8AD-841E-4E77-9951-EFBD2EE80481', 0, 541, 'DVWEBCL', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-03-18 00:00:00.000', '2019-03-29 00:00:00.000', 70, 'HTSRI110', 'F695D198-E7E4-4F7C-9B58-F108913DEBCA', 0, 517, 'SCRIPT-PWSHEL', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-12-03 00:00:00.000', '2018-12-07 00:00:00.000', 35, 'HASR_109', '3F735846-17B5-49AE-BAA3-F10A480A86D6', 0, 515, 'GPROJ-TSRIT', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-01-22 00:00:00.000', '2018-01-26 00:00:00.000', 35, 'MDL__001', 'E34D28F0-C204-4A86-A5BF-F28578B77191', 0, 724, 'INIT-DL17', 35, 0, null, null, 12);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-01-21 00:00:00.000', '2019-03-15 00:00:00.000', 280, 'ACDI_001', 'A29FEEB6-4CD9-4F97-9922-F37C5315340C', 0, 304, 'STAGE-CDI2', 280, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-18 00:00:00.000', '2018-07-06 00:00:00.000', 105, 'HT2SI089', 'A1DCF46C-7A66-431F-B60B-F4F67A978C82', 0, 269, 'IM-UA-LINUX', 105, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-07-01 00:00:00.000', '2019-08-23 00:00:00.000', 273, 'HASR_109', 'E4C5EDB1-521D-420C-85B0-F5F8CEA9D3D2', 0, 93, 'STAGE-ASR', 280, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2017-12-11 00:00:00.000', '2017-12-15 00:00:00.000', 35, 'RPO1712S', '7D912E1C-940F-4E29-96EA-F60F17B23E97', 0, 738, 'POE-LIN-UTIL', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-30 00:00:00.000', '2018-05-04 00:00:00.000', 28, 'HCD17_73', '9AF796A9-ABF2-45EC-8068-F616B71A01D6', 0, 725, 'JAVA1-DL17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-02 00:00:00.000', '2018-07-27 00:00:00.000', 140, 'NGEN_001', 'DC3CA495-1E22-4F13-AA27-F63C8341D51F', 0, 826, 'GEN STAGE', 140, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-04-01 00:00:00.000', '2019-04-05 00:00:00.000', 35, 'HT2SI090', '0D467C10-AE18-4318-9717-F73EB866EDE2', 0, 477, 'IM-NAGIOS', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-12-17 00:00:00.000', '2018-12-21 00:00:00.000', 35, 'HMS2IN08', '2F033EC4-EB96-46FF-9566-F8327AE8F981', 0, 764, '17IN-CLOUD', 35, 0, null, null, 9);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-09-24 00:00:00.000', '2018-09-28 00:00:00.000', 35, 'NGEN_001', 'F2BAE7DB-4F1D-498A-B593-F99705FAD71E', 0, 825, 'GEN DEPLOI TRE', 35, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-03-12 00:00:00.000', '2018-03-16 00:00:00.000', 35, 'RCDI_021', 'ACD4E767-0684-4675-AAC0-F9DA054BC5F8', 0, 724, 'INIT-DL17', 35, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-02-18 00:00:00.000', '2019-03-01 00:00:00.000', 70, 'HASR_110', 'CE9FD121-8126-4E17-B5A1-F9DA77ED9A13', 0, 722, 'SRVRES-MSP', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-12 00:00:00.000', '2018-11-16 00:00:00.000', 35, 'ACDI_001', '7487CDF9-CD97-44A6-8ECF-F9DF66748166', 0, 36, 'CP-COURS', 35, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-25 00:00:00.000', '2018-06-29 00:00:00.000', 35, 'HT2SI088', '1DAA93C3-85EF-4435-AAEE-FA006B3E0794', 0, 56, 'IM-EVAL', 35, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-11-05 00:00:00.000', '2018-12-21 00:00:00.000', 210, 'HTSRI108', 'AD1C3AD3-8612-42B4-A41B-FADE34E5BA34', 0, 525, 'STAGE-TSRIT', 280, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-03-18 00:00:00.000', '2019-03-29 00:00:00.000', 70, 'NGEN_001', '4D24FA45-4D17-4576-81F2-FAF8752FFE19', 0, 831, 'GEN MESSAGERIE', 70, 0, null, null, 5);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-08-27 00:00:00.000', '2018-09-14 00:00:00.000', 105, 'AASR_001', '7C67A35B-A6B9-446E-B87A-FB96B4F5E30B', 0, 523, 'CISCO-2-3', 105, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-04-30 00:00:00.000', '2018-05-04 00:00:00.000', 28, 'HDL17128', '87C761B2-D842-4182-B044-FBD5E7AB0647', 0, 725, 'JAVA1-DL17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-12-17 00:00:00.000', '2018-12-21 00:00:00.000', 35, 'HTSRI110', '002862ED-0854-4998-8912-FC89157C0A9A', 0, 478, 'CISCO-1', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-03-19 00:00:00.000', '2018-03-30 00:00:00.000', 70, 'MDL__001', 'DE0F7590-2F6D-42FE-9ED1-FCB2C6DB2B65', 0, 734, 'CONC-DEV17', 70, 0, null, null, 12);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-03-12 00:00:00.000', '2018-03-14 00:00:00.000', 21, 'RSOP1801', '1617617A-3FBE-4315-B185-FDA93F1F7610', 0, 655, 'R-SOP-ANG', 21, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-25 00:00:00.000', '2018-07-06 00:00:00.000', 70, 'RCDI_021', '2719B3A2-AB19-49C5-8BF2-FDB79C75A0E6', 0, 302, 'JAVA-2', 70, 0, null, null, 2);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-05-22 00:00:00.000', '2018-06-01 00:00:00.000', 63, 'HCD17_73', 'AB448A09-D837-481D-A51E-FDCC1ADEEEDE', 0, 730, 'PRJ1-DEV17', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-07-30 00:00:00.000', '2018-08-10 00:00:00.000', 70, 'AASR_001', '9E5B5BBE-6D17-4AB7-B426-FDD46356CC9E', 0, 519, 'TOIP-MESSAGERIE', 70, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-06-18 00:00:00.000', '2018-06-29 00:00:00.000', 70, 'HASR_108', 'D29F9522-D05A-4FF0-BAA3-FE1985766A3C', 0, 478, 'CISCO-1', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-09-17 00:00:00.000', '2018-09-28 00:00:00.000', 70, 'ACDI_001', 'B9ACABF3-51FA-460B-9016-FE647A831F2D', 0, 302, 'JAVA-2', 70, 0, null, null, 11);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-04-15 00:00:00.000', '2019-04-26 00:00:00.000', 63, 'HCD17_76', '217BF397-CB75-430C-AE2A-FF76AEF2196F', 0, 34, 'J2EAV', 70, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2019-03-18 00:00:00.000', '2019-05-10 00:00:00.000', 259, 'HASR_108', '77E75ED7-475A-4ED4-B4A3-FF9C2849215A', 0, 93, 'STAGE-ASR', 280, 0, null, null, 1);
INSERT INTO Cours (Debut, Fin, DureeReelleEnHeures, CodePromotion, IdCours, PrixPublicAffecte, IdModule, LibelleCours, DureePrevueEnHeures, DateAdefinir, CodeSalle, CodeFormateur, CodeLieu) VALUES ('2018-05-22 00:00:00.000', '2018-06-01 00:00:00.000', 70, 'LRDL_002', '8B4BF1A0-9E34-4ACC-AB03-FFEC69085EDA', 0, 730, 'PRJ1-DEV17', 70, 0, null, null, 10);
