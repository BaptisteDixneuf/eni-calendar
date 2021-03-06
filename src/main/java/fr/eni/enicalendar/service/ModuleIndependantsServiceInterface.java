package fr.eni.enicalendar.service;

import java.util.List;

import fr.eni.enicalendar.persistence.app.entities.ModuleIndependant;

public interface ModuleIndependantsServiceInterface {

	List<ModuleIndependant> findAll();

	ModuleIndependant findById(Integer id);

	void delete(ModuleIndependant moduleIndependant);

	ModuleIndependant saveModule(ModuleIndependant moduleIndependant);

	List<ModuleIndependant> findByLibelle(String query);

}
