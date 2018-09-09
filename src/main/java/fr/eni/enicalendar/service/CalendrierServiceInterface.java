package fr.eni.enicalendar.service;

import java.util.List;

import fr.eni.enicalendar.persistence.app.entities.Calendrier;

public interface CalendrierServiceInterface {

	List<Calendrier> findCalendriersByStagiaire(Integer id);

	Calendrier findOne(Integer id);

	List<Calendrier> findByNomCalendrier(String libelle);

	void deleteCalendrier(Calendrier calendrier);

	Calendrier save(Calendrier calendrier);

}
