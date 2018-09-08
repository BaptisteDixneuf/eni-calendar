package fr.eni.enicalendar.service;

import fr.eni.enicalendar.persistence.erp.entities.Entreprise;

public interface EntrepriseServiceInterface {

	Entreprise findByCodeEntreprise(Integer id);
}
