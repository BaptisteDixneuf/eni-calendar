package fr.eni.enicalendar.service;

import fr.eni.enicalendar.persistence.app.entities.ModeleCalendrier;

import java.util.List;

public interface ModeleServiceInterface {

	List<ModeleCalendrier> findAllModeles();

	ModeleCalendrier findOne(Integer id);

	void delete(ModeleCalendrier modele);

	List<ModeleCalendrier> findByNomCalendrier(String libelle);

}
