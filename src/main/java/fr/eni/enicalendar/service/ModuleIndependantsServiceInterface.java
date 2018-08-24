package fr.eni.enicalendar.service;

import fr.eni.enicalendar.persistence.app.entities.ModuleIndependant;

import java.util.List;

public interface ModuleIndependantsServiceInterface {

	List<ModuleIndependant> findAll();

	ModuleIndependant findById(Integer id);

	void delete(ModuleIndependant moduleIndependant);

	ModuleIndependant saveModule(ModuleIndependant moduleIndependant);

}
