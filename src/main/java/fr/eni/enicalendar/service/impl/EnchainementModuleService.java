package fr.eni.enicalendar.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.eni.enicalendar.persistence.app.entities.EnchainementModule;
import fr.eni.enicalendar.persistence.app.repositories.EnchainementModuleRepository;
import fr.eni.enicalendar.service.EnchainementModuleServiceInterface;

@Service
public class EnchainementModuleService implements EnchainementModuleServiceInterface {

	@Autowired
	private EnchainementModuleRepository enchainementModuleRepository;

	@Override
	public List<EnchainementModule> save(List<EnchainementModule> entities) {
		entities = enchainementModuleRepository.save(entities);
		return entities;
	}

	@Override
	public List<EnchainementModule> findByModuleId(Integer id) {
		return enchainementModuleRepository.findByModuleId(id);
	}

	// @Override
	// public List<Integer> findIdModulePrerequisByModuleId(Integer id) {
	// return enchainementModuleRepository.findIdModulePrerequisByModuleId(id);
	// }

}
