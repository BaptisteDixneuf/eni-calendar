package fr.eni.enicalendar.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.eni.enicalendar.persistence.app.entities.ModuleIndependant;
import fr.eni.enicalendar.persistence.app.repositories.ModuleIndependantRepository;
import fr.eni.enicalendar.service.ModuleIndependantsServiceInterface;

@Service
public class ModuleIndependantsService implements ModuleIndependantsServiceInterface {

	private static final Logger LOGGER = LoggerFactory.getLogger(ModuleIndependantsService.class);

	@Autowired
	private ModuleIndependantRepository moduleRepository;

	@Override
	public List<ModuleIndependant> findAll() {
		return moduleRepository.findAll();
	}

	@Override
	public ModuleIndependant findById(Integer id) {
		return moduleRepository.findById(id);
	}

	public void delete(ModuleIndependant module) {
		moduleRepository.delete(module);
	}

	public ModuleIndependant saveModule(ModuleIndependant moduleIndependant) {
		return moduleRepository.save(moduleIndependant);
	}

	@Override
	public List<ModuleIndependant> findByLibelle(String query) {
		return moduleRepository.findByLibelle(query);
	}

}
