package fr.eni.enicalendar.service;

import fr.eni.enicalendar.persistence.app.entities.ModeleCalendrier;

import java.util.List;

public interface ModeleServiceInterface {

	List<ModeleCalendrier> findAllModeles();

	ModeleCalendrier findByNomCalendrier(String libelle);

}
