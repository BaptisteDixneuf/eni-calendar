package fr.eni.enicalendar.service;

import fr.eni.enicalendar.persistence.erp.entities.Stagiaire;

import java.util.List;

public interface StagiaireServiceInterface {

	List<Stagiaire> findAllStagiaires();

	Stagiaire findByEmail(String email);

	Stagiaire findById(Integer id);
}
