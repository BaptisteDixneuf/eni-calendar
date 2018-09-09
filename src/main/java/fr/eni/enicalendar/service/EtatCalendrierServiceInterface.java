package fr.eni.enicalendar.service;

import fr.eni.enicalendar.persistence.app.entities.EtatCalendrier;

public interface EtatCalendrierServiceInterface {

	EtatCalendrier findByLibelle(String libelle);

	EtatCalendrier findById(Integer id);

}
