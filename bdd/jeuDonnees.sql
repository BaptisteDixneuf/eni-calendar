SET DATEFORMAT ymd
SET IDENTITY_INSERT CALENDRIER ON

INSERT INTO ETAT_CALENDRIER VALUES ('Actif');
INSERT INTO ETAT_CALENDRIER VALUES ('Inactif');
INSERT INTO ETAT_CALENDRIER VALUES ('Prévisionnel');
INSERT INTO ETAT_CALENDRIER VALUES ('Inscrit');

INSERT INTO ROLE_UTILISATEUR VALUES ('Utilisateur');

INSERT INTO Stagiaire (CodeStagiaire, Civilite, Nom, Prenom, Adresse1, Adresse2, Adresse3, Codepostal, Ville, TelephoneFixe, TelephonePortable, Email, DateNaissance, CodeRegion, CodeNationalite, CodeOrigineMedia, DateDernierEnvoiDoc, DateCreation, Repertoire, Permis, Photo, EnvoiDocEnCours, Historique) VALUES (19, 'Mr ', 'Dupond', 'Jean', '2 rue Rondeau', null, null, '44200', 'Nantes', '02000000      ', '06000000      ', 'test@test.fr', null, null, null, null, null, '1995-08-08 09:27:19.330', null, 0, null, 0, null);
INSERT INTO Stagiaire (CodeStagiaire, Civilite, Nom, Prenom, Adresse1, Adresse2, Adresse3, Codepostal, Ville, TelephoneFixe, TelephonePortable, Email, DateNaissance, CodeRegion, CodeNationalite, CodeOrigineMedia, DateDernierEnvoiDoc, DateCreation, Repertoire, Permis, Photo, EnvoiDocEnCours, Historique) VALUES (20, 'Mr ', 'Smith', 'John', '2 rue Roubier', null, null, '44200', 'Nantes', '02000001      ', '06000001      ', 'test@smith.fr', null, null, null, null, null, '1995-08-08 09:27:19.330', null, 0, null, 0, null);
INSERT INTO Stagiaire (CodeStagiaire, Civilite, Nom, Prenom, Adresse1, Adresse2, Adresse3, Codepostal, Ville, TelephoneFixe, TelephonePortable, Email, DateNaissance, CodeRegion, CodeNationalite, CodeOrigineMedia, DateDernierEnvoiDoc, DateCreation, Repertoire, Permis, Photo, EnvoiDocEnCours, Historique) VALUES (21, 'Mr ', 'Dubois', 'Yvan', '2 rue Rabin', null, null, '44300', 'Nantes', '02000002      ', '06000002      ', 'test@dubois.fr', null, null, null, null, null, '1995-08-08 09:27:19.330', null, 0, null, 0, null);
INSERT INTO Stagiaire (CodeStagiaire, Civilite, Nom, Prenom, Adresse1, Adresse2, Adresse3, Codepostal, Ville, TelephoneFixe, TelephonePortable, Email, DateNaissance, CodeRegion, CodeNationalite, CodeOrigineMedia, DateDernierEnvoiDoc, DateCreation, Repertoire, Permis, Photo, EnvoiDocEnCours, Historique) VALUES (22, 'Mr ', 'Durand', 'Sylvain', '2 rue Rousse', null, null, '44300', 'Nantes', '02000002      ', '06000002      ', 'test@dubois.fr', null, null, null, null, null, '1995-08-08 09:27:19.330', null, 0, null, 0, null);
INSERT INTO Stagiaire (CodeStagiaire, Civilite, Nom, Prenom, Adresse1, Adresse2, Adresse3, Codepostal, Ville, TelephoneFixe, TelephonePortable, Email, DateNaissance, CodeRegion, CodeNationalite, CodeOrigineMedia, DateDernierEnvoiDoc, DateCreation, Repertoire, Permis, Photo, EnvoiDocEnCours, Historique) VALUES (23, 'Mr ', 'Durant', 'Albert', '10 bd Schuman', null, null, '44300', 'Nantes', '02000002      ', '06000002      ', 'test@dubois.fr', null, null, null, null, null, '1995-08-08 09:27:19.330', null, 0, null, 0, null);
INSERT INTO Stagiaire (CodeStagiaire, Civilite, Nom, Prenom, Adresse1, Adresse2, Adresse3, Codepostal, Ville, TelephoneFixe, TelephonePortable, Email, DateNaissance, CodeRegion, CodeNationalite, CodeOrigineMedia, DateDernierEnvoiDoc, DateCreation, Repertoire, Permis, Photo, EnvoiDocEnCours, Historique) VALUES (24, 'Mr ', 'Dupont', 'Pierre', '5 bd Republique', null, null, '44100', 'Nantes', '02000002      ', '06000002      ', 'test@dubois.fr', null, null, null, null, null, '1995-08-08 09:27:19.330', null, 0, null, 0, null);

INSERT INTO MODELE_CALENDRIER (MC_NOM_CALENDRIER, MC_DATE_CREATION, MC_DATE_MAJ, MC_ID_LIEU_FORMATION_ERP, MC_ID_FORMATION_ERP, MC_DATE_DEBUT_MAX, MC_DATE_FIN_MAX) VALUES ('Modele1', '2018-08-10 15:18:18.040', '2018-08-10 15:18:23.697', null, null, null, null);
INSERT INTO MODELE_CALENDRIER (MC_NOM_CALENDRIER, MC_DATE_CREATION, MC_DATE_MAJ, MC_ID_LIEU_FORMATION_ERP, MC_ID_FORMATION_ERP, MC_DATE_DEBUT_MAX, MC_DATE_FIN_MAX) VALUES ('Modele2', '2018-08-10 15:18:18.040', '2018-08-10 15:18:23.697', null, null, null, null);
INSERT INTO MODELE_CALENDRIER (MC_NOM_CALENDRIER, MC_DATE_CREATION, MC_DATE_MAJ, MC_ID_LIEU_FORMATION_ERP, MC_ID_FORMATION_ERP, MC_DATE_DEBUT_MAX, MC_DATE_FIN_MAX) VALUES ('Modele3', '2018-08-10 15:18:18.040', '2018-08-10 15:18:23.697', null, null, null, null);

INSERT INTO CALENDRIER (EC_ID, CA_ID_STAGIAIRE_ERP, CA_ID_ENTREPRISE_ERP, CA_NOM_CALENDRIER, CA_DATE_CREATION, CA_DATE_MAJ, CA_ID_LIEU_FORMATION_ERP, CA_ID_FORMATION_ERP, CA_DATE_DEBUT_MAX, CA_DATE_FIN_MAX) VALUES (1, 20, 4, 'Calendrier1', '2018-08-14 08:35:02.740', '2018-08-14 08:35:11.037', 1, 17, '2018-09-14 08:34:42.137', '2019-08-14 08:34:49.743');
INSERT INTO CALENDRIER (EC_ID, CA_ID_STAGIAIRE_ERP, CA_ID_ENTREPRISE_ERP, CA_NOM_CALENDRIER, CA_DATE_CREATION, CA_DATE_MAJ, CA_ID_LIEU_FORMATION_ERP, CA_ID_FORMATION_ERP, CA_DATE_DEBUT_MAX, CA_DATE_FIN_MAX) VALUES (1, 20, 4, 'Calendrier2', '2018-08-14 08:35:02.740', '2018-08-14 08:35:11.037', 1, 17, '2018-09-14 08:34:42.137', '2019-08-14 08:34:49.743');
INSERT INTO CALENDRIER (EC_ID, CA_ID_STAGIAIRE_ERP, CA_ID_ENTREPRISE_ERP, CA_NOM_CALENDRIER, CA_DATE_CREATION, CA_DATE_MAJ, CA_ID_LIEU_FORMATION_ERP, CA_ID_FORMATION_ERP, CA_DATE_DEBUT_MAX, CA_DATE_FIN_MAX) VALUES (1, 21, 4, 'CalendrierSmith', '2018-08-14 08:35:02.740', '2018-08-14 08:35:11.037', 1, 17, '2018-09-14 08:34:42.137', '2019-08-14 08:34:49.743');
INSERT INTO CALENDRIER (EC_ID, CA_ID_STAGIAIRE_ERP, CA_ID_ENTREPRISE_ERP, CA_NOM_CALENDRIER, CA_DATE_CREATION, CA_DATE_MAJ, CA_ID_LIEU_FORMATION_ERP, CA_ID_FORMATION_ERP, CA_DATE_DEBUT_MAX, CA_DATE_FIN_MAX) VALUES (1, 22, 4, 'Calendrier', '2018-08-14 08:35:02.740', '2018-08-14 08:35:11.037', 1, 17, '2018-09-14 08:34:42.137', '2019-08-14 08:34:49.743');
INSERT INTO CALENDRIER (EC_ID, CA_ID_STAGIAIRE_ERP, CA_ID_ENTREPRISE_ERP, CA_NOM_CALENDRIER, CA_DATE_CREATION, CA_DATE_MAJ, CA_ID_LIEU_FORMATION_ERP, CA_ID_FORMATION_ERP, CA_DATE_DEBUT_MAX, CA_DATE_FIN_MAX) VALUES (1, 20, 4, 'Calendrier3', '2018-08-14 08:35:02.740', '2018-08-14 08:35:11.037', 1, 17, '2018-09-14 08:34:42.137', '2019-08-14 08:34:49.743');

INSERT INTO MODULE_INDEPENDANT (CA_ID, MC_ID, MI_LIBELLE, MI_DUREE, MI_LIBELLE_COURT, MI_LIEU_FORMATION, MI_DATE_DEBUT, MI_DATE_FIN) VALUES (2, 2, 'Indé1', 4, 'I1', 1, '2018-08-23 14:55:40.503', '2018-08-26 14:55:51.860');
INSERT INTO MODULE_INDEPENDANT (CA_ID, MC_ID, MI_LIBELLE, MI_DUREE, MI_LIBELLE_COURT, MI_LIEU_FORMATION, MI_DATE_DEBUT, MI_DATE_FIN) VALUES (3, 2, 'Indé2', 4, 'I2', 1, '2018-08-23 14:55:40.503', '2018-08-26 14:55:51.860');
INSERT INTO MODULE_INDEPENDANT (CA_ID, MC_ID, MI_LIBELLE, MI_DUREE, MI_LIBELLE_COURT, MI_LIEU_FORMATION, MI_DATE_DEBUT, MI_DATE_FIN) VALUES (4, 1, 'Indé3', 4, 'I3', 1, '2018-08-23 14:55:40.503', '2018-08-26 14:55:51.860');
INSERT INTO MODULE_INDEPENDANT (CA_ID, MC_ID, MI_LIBELLE, MI_DUREE, MI_LIBELLE_COURT, MI_LIEU_FORMATION, MI_DATE_DEBUT, MI_DATE_FIN) VALUES (4, 1, 'Indé4', 4, 'I4', 1, '2018-08-23 14:55:40.503', '2018-08-26 14:55:51.860');

INSERT INTO UTILISATEUR (RU_ID, UT_NOM, UT_PRENOM, UT_EMAIL, UT_PASSWORD) VALUES (1, 'OLLIVIER', 'Stephane', 'sollivier', '$2a$10$TgTlrUH2IwlcKZea15Vzm.sUaWE4AiD9ioZYsVjn3d/6rPH7w/baO');
INSERT INTO UTILISATEUR (RU_ID, UT_NOM, UT_PRENOM, UT_EMAIL, UT_PASSWORD) VALUES (1, 'NACEUR', 'Luc', 'lnaceur', '$2a$10$TgTlrUH2IwlcKZea15Vzm.sUaWE4AiD9ioZYsVjn3d/6rPH7w/baO');
INSERT INTO UTILISATEUR (RU_ID, UT_NOM, UT_PRENOM, UT_EMAIL, UT_PASSWORD) VALUES (1, 'THIBAUD', 'Cyril', 'cthibaud', '$2a$10$TgTlrUH2IwlcKZea15Vzm.sUaWE4AiD9ioZYsVjn3d/6rPH7w/baO');
INSERT INTO UTILISATEUR (RU_ID, UT_NOM, UT_PRENOM, UT_EMAIL, UT_PASSWORD) VALUES (1, 'NOURRY', 'Beatrice', 'bnourry', '$2a$10$TgTlrUH2IwlcKZea15Vzm.sUaWE4AiD9ioZYsVjn3d/6rPH7w/baO');
INSERT INTO UTILISATEUR (RU_ID, UT_NOM, UT_PRENOM, UT_EMAIL, UT_PASSWORD) VALUES (1, 'DELORD', 'Matthieu', 'mdelord', '$2a$10$TgTlrUH2IwlcKZea15Vzm.sUaWE4AiD9ioZYsVjn3d/6rPH7w/baO');
INSERT INTO UTILISATEUR (RU_ID, UT_NOM, UT_PRENOM, UT_EMAIL, UT_PASSWORD) VALUES (1, 'DIXNEUF', 'Baptiste', 'baptiste.dixneuf@gmail.com', '$2a$10$TgTlrUH2IwlcKZea15Vzm.sUaWE4AiD9ioZYsVjn3d/6rPH7w/baO');
INSERT INTO UTILISATEUR (RU_ID, UT_NOM, UT_PRENOM, UT_EMAIL, UT_PASSWORD) VALUES (1, 'LENOIR', 'Marius', 'marius.lenoir@hotmail.com', '$2a$10$TgTlrUH2IwlcKZea15Vzm.sUaWE4AiD9ioZYsVjn3d/6rPH7w/baO');
INSERT INTO UTILISATEUR (RU_ID, UT_NOM, UT_PRENOM, UT_EMAIL, UT_PASSWORD) VALUES (1, 'PIRON', 'Axel', 'azerty', '$2a$10$TgTlrUH2IwlcKZea15Vzm.sUaWE4AiD9ioZYsVjn3d/6rPH7w/baO');
INSERT INTO UTILISATEUR (RU_ID, UT_NOM, UT_PRENOM, UT_EMAIL, UT_PASSWORD) VALUES (1, 'LOIRAT', 'Baptiste', 'bloirat', '$2a$10$TgTlrUH2IwlcKZea15Vzm.sUaWE4AiD9ioZYsVjn3d/6rPH7w/baO');

INSERT INTO TYPE_CONTRAINTE (TC_LIBELLE) VALUES ('SEMAINE_AFFILEE_ENTREPRISE');
INSERT INTO TYPE_CONTRAINTE (TC_LIBELLE) VALUES ('SEMAINE_AFFILEE_FORMATION');
INSERT INTO TYPE_CONTRAINTE (TC_LIBELLE) VALUES ('FORTE_ACTIVITE_ENTREPRISE');
INSERT INTO TYPE_CONTRAINTE (TC_LIBELLE) VALUES ('FAIBLE_ACTIVITE_ENTREPRISE');
INSERT INTO TYPE_CONTRAINTE (TC_LIBELLE) VALUES ('NON_DISPONIBILITE');

INSERT INTO Entreprise (RaisonSociale, Adresse1, Adresse2, Adresse3, CodePostal, Ville, Telephone, Fax, SiteWeb, Email, Observation, CodeTypeEntreprise, CodeRegion, CodeSecteur, CodeOrganisme, NomCommercial, siret, CodeContactEni, CodeOrganismeFavoris) VALUES ('Alter&Co', 'rue Sarbruck', null, null, '44000', 'Nantes', '0240020202    ', null, null, null, null, '1    ', '1 ', 1, null, 'A&Co', null, null, null);
INSERT INTO Entreprise (RaisonSociale, Adresse1, Adresse2, Adresse3, CodePostal, Ville, Telephone, Fax, SiteWeb, Email, Observation, CodeTypeEntreprise, CodeRegion, CodeSecteur, CodeOrganisme, NomCommercial, siret, CodeContactEni, CodeOrganismeFavoris) VALUES ('Assure&Co', 'rue Voltaire', null, null, '44400', 'Rezé', '0240020203    ', null, null, null, null, '1    ', '1 ', 1, null, 'AsCo', null, null, null);
INSERT INTO Entreprise (RaisonSociale, Adresse1, Adresse2, Adresse3, CodePostal, Ville, Telephone, Fax, SiteWeb, Email, Observation, CodeTypeEntreprise, CodeRegion, CodeSecteur, CodeOrganisme, NomCommercial, siret, CodeContactEni, CodeOrganismeFavoris) VALUES ('BtpProject', 'rue Rousseau', null, null, '44400', 'Rezé', '0240020204    ', null, null, null, null, '1    ', '1 ', 1, null, 'BTPP', null, null, null);
INSERT INTO Entreprise (RaisonSociale, Adresse1, Adresse2, Adresse3, CodePostal, Ville, Telephone, Fax, SiteWeb, Email, Observation, CodeTypeEntreprise, CodeRegion, CodeSecteur, CodeOrganisme, NomCommercial, siret, CodeContactEni, CodeOrganismeFavoris) VALUES ('Soprema', 'rue Candid', null, null, '44210', 'Pornic', '0240020205    ', null, null, null, null, '1    ', '1 ', 1, null, 'Soprema', null, null, null);
INSERT INTO Entreprise (RaisonSociale, Adresse1, Adresse2, Adresse3, CodePostal, Ville, Telephone, Fax, SiteWeb, Email, Observation, CodeTypeEntreprise, CodeRegion, CodeSecteur, CodeOrganisme, NomCommercial, siret, CodeContactEni, CodeOrganismeFavoris) VALUES ('Connector', 'rue Arsene Mona', null, null, '44300', 'Nantes', '0240020206    ', null, null, null, null, '1    ', '1 ', 1, null, 'Connector', null, null, null);
INSERT INTO Entreprise (RaisonSociale, Adresse1, Adresse2, Adresse3, CodePostal, Ville, Telephone, Fax, SiteWeb, Email, Observation, CodeTypeEntreprise, CodeRegion, CodeSecteur, CodeOrganisme, NomCommercial, siret, CodeContactEni, CodeOrganismeFavoris) VALUES ('CGD', 'rue des lylas', null, null, '44000', 'Nantes', '0240020207    ', null, null, null, null, '1    ', '1 ', 1, null, 'CGD', null, null, null);
INSERT INTO Entreprise (RaisonSociale, Adresse1, Adresse2, Adresse3, CodePostal, Ville, Telephone, Fax, SiteWeb, Email, Observation, CodeTypeEntreprise, CodeRegion, CodeSecteur, CodeOrganisme, NomCommercial, siret, CodeContactEni, CodeOrganismeFavoris) VALUES ('Etudia', 'rue Beaulieu', null, null, '49000', 'Angers', '0240020208    ', null, null, null, null, '1    ', '1 ', 1, null, 'Etudia', null, null, null);

INSERT INTO StagiaireParEntreprise (CodeStagiaire, CodeEntreprise, DateLien, CodeTypeLien, DateDebutEnEts, DateFinEnEts, CodeFonction, Commentaire, NumLien, CodeTuteur, ResponsableEts, GererPar, Interruption, SujetStage, TitreVise, CodeContactEni) VALUES (20, 4, '2018-09-05 19:36:40.230', '1    ', '2018-08-05 19:35:56.413', '2019-09-05 19:36:02.797', null, null, 2, null, null, null, null, null, 'CDI  ', null);
INSERT INTO StagiaireParEntreprise (CodeStagiaire, CodeEntreprise, DateLien, CodeTypeLien, DateDebutEnEts, DateFinEnEts, CodeFonction, Commentaire, NumLien, CodeTuteur, ResponsableEts, GererPar, Interruption, SujetStage, TitreVise, CodeContactEni) VALUES (19, 5, '2018-09-05 19:36:40.230', '1    ', '2018-08-05 19:35:56.413', '2019-09-05 19:36:02.797', null, null, 3, null, null, null, null, null, 'CDI  ', null);
INSERT INTO StagiaireParEntreprise (CodeStagiaire, CodeEntreprise, DateLien, CodeTypeLien, DateDebutEnEts, DateFinEnEts, CodeFonction, Commentaire, NumLien, CodeTuteur, ResponsableEts, GererPar, Interruption, SujetStage, TitreVise, CodeContactEni) VALUES (21, 6, '2018-09-05 19:36:40.230', '1    ', '2018-08-05 19:35:56.413', '2019-09-05 19:36:02.797', null, null, 4, null, null, null, null, null, 'ASR  ', null);
INSERT INTO StagiaireParEntreprise (CodeStagiaire, CodeEntreprise, DateLien, CodeTypeLien, DateDebutEnEts, DateFinEnEts, CodeFonction, Commentaire, NumLien, CodeTuteur, ResponsableEts, GererPar, Interruption, SujetStage, TitreVise, CodeContactEni) VALUES (22, 7, '2018-09-05 19:36:40.230', '1    ', '2018-08-05 19:35:56.413', '2019-09-05 19:36:02.797', null, null, 5, null, null, null, null, null, 'MS2I ', null);
INSERT INTO StagiaireParEntreprise (CodeStagiaire, CodeEntreprise, DateLien, CodeTypeLien, DateDebutEnEts, DateFinEnEts, CodeFonction, Commentaire, NumLien, CodeTuteur, ResponsableEts, GererPar, Interruption, SujetStage, TitreVise, CodeContactEni) VALUES (23, 8, '2018-09-05 19:36:40.230', '1    ', '2018-08-05 19:35:56.413', '2019-09-05 19:36:02.797', null, null, 6, null, null, null, null, null, 'MS2I ', null);
