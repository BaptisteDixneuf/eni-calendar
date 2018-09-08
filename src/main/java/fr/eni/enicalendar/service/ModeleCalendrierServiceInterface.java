package fr.eni.enicalendar.service;

import java.util.List;

import fr.eni.enicalendar.persistence.app.entities.ModeleCalendrier;

public interface ModeleCalendrierServiceInterface {

	ModeleCalendrier save(ModeleCalendrier modeleCalendrier);

	List<ModeleCalendrier> findAll();

	ModeleCalendrier findById(Integer id);

}
