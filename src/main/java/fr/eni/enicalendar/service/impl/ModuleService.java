package fr.eni.enicalendar.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.eni.enicalendar.persistence.erp.entities.Module;
import fr.eni.enicalendar.persistence.erp.repositories.ModuleRepository;
import fr.eni.enicalendar.service.ModuleServiceInterface;

@Service
public class ModuleService implements ModuleServiceInterface {

	@Autowired
	private ModuleRepository moduleRepository;

	@Override
	public List<Module> findModuleByFormation(String codeFormation) {
		return moduleRepository.findModuleByFormation(codeFormation);
	}

}
