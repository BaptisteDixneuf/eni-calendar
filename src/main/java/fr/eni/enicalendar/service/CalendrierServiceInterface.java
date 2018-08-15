package fr.eni.enicalendar.service;

import fr.eni.enicalendar.persistence.app.entities.Calendrier;

import java.util.List;

public interface CalendrierServiceInterface {

	List<Calendrier> findCalendriersByStagiaire(Integer id);

	Calendrier findOne(Integer id);

	List<Calendrier> findByNomCalendrier(String libelle);

	void deleteCalendrier(Calendrier calendrier);

}
