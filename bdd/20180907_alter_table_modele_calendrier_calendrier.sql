DELETE FROM CONTRAINTE;
DELETE FROM CONTRAINTE_MODULE_INDEPENDANT;
DELETE FROM DISPENSE;
DELETE FROM PROGRAMMATION;
DELETE FROM MODELE_CALENDRIER; 
DELETE FROM CALENDRIER;
ALTER TABLE MODELE_CALENDRIER ALTER COLUMN  MC_ID_FORMATION_ERP VARCHAR(255) NULL;
ALTER TABLE CALENDRIER ALTER COLUMN  CA_ID_FORMATION_ERP VARCHAR(255) NULL;