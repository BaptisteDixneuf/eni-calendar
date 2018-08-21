package fr.eni.enicalendar.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.eni.enicalendar.persistence.erp.entities.ModuleParUnite;
import fr.eni.enicalendar.persistence.erp.repositories.ModuleParUniteRepository;
import fr.eni.enicalendar.service.ModuleParUniteServiceInterface;

@Service
public class ModuleParUniteService implements ModuleParUniteServiceInterface {

	@Autowired
	private ModuleParUniteRepository moduleParUniteRepository;

	@Override
	public List<ModuleParUnite> findAllModuleParUnite() {
		return moduleParUniteRepository.findAll();
	}

}
