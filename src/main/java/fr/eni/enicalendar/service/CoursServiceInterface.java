package fr.eni.enicalendar.service;

import java.util.List;

import fr.eni.enicalendar.persistence.erp.entities.Cours;

public interface CoursServiceInterface {
	
	List<Cours> findAllCours();
	
	
}
