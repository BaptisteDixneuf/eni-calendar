package fr.eni.enicalendar.service;

import java.util.List;

import fr.eni.enicalendar.persistence.entities.Titre;

public interface TitreServiceInterface {

	List<Titre> findAllTitre();
   
}
