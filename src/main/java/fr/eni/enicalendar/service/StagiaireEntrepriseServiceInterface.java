package fr.eni.enicalendar.service;

import fr.eni.enicalendar.persistence.erp.entities.StagiaireParEntreprise;

public interface StagiaireEntrepriseServiceInterface {

	StagiaireParEntreprise findByCodeStagiaire(Integer id);
}
