package fr.eni.enicalendar.service.impl;

import fr.eni.enicalendar.persistence.app.entities.ModuleIndependant;
import fr.eni.enicalendar.persistence.app.repositories.ModuleIndependantRepository;
import fr.eni.enicalendar.service.ModuleIndependantsServiceInterface;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ModuleIndependantsService implements ModuleIndependantsServiceInterface {

	private static final Logger LOGGER = LoggerFactory.getLogger(ModuleIndependantsService.class);

	@Autowired
	private ModuleIndependantRepository moduleRepository;

	@Override
	public List<ModuleIndependant> findAll() {
		return moduleRepository.findAll();
	}
}
