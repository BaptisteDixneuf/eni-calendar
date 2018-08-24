package fr.eni.enicalendar.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.eni.enicalendar.persistence.erp.entities.ModuleParUnite;
import fr.eni.enicalendar.persistence.erp.repositories.ModuleParUniteRepository;
import fr.eni.enicalendar.service.ModuleParUniteServiceInterface;

@Service
public class ModuleParUniteService implements ModuleParUniteServiceInterface {

	private static final Logger LOGGER = LoggerFactory.getLogger(ModuleParUniteService.class);

	@Autowired
	private ModuleParUniteRepository moduleParUniteRepository;

	@Override
	public List<ModuleParUnite> findAllModuleParUnite() {
		return moduleParUniteRepository.findAll();
	}

}
