package fr.eni.enicalendar.service;

import java.util.List;

import fr.eni.enicalendar.persistence.app.entities.EnchainementModule;

public interface EnchainementModuleServiceInterface {

	List<EnchainementModule> save(List<EnchainementModule> entities);

}
