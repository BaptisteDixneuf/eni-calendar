package fr.eni.enicalendar.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.eni.enicalendar.persistence.erp.entities.Module;
import fr.eni.enicalendar.persistence.erp.repositories.ModuleRepository;
import fr.eni.enicalendar.service.ModuleServiceInterface;

@Service
public class ModuleService implements ModuleServiceInterface {

	private static final Logger LOGGER = LoggerFactory.getLogger(ModuleService.class);

	@Autowired
	private ModuleRepository moduleRepository;

	@Override
	public List<Module> findModuleByFormation(String codeFormation) {
		return moduleRepository.findModuleByFormation(codeFormation);
	}

	@Override
	public List<Module> findModuleByFormationAndLibelle(String codeFormation, String libelle) {
		return moduleRepository.findModuleByFormationAndLibelle(codeFormation, libelle);
	}

	@Override
	public Module findModuleById(Integer id) {
		return moduleRepository.findOne(id);
	}

}
