package fr.eni.enicalendar.service;

import java.util.List;

import org.springframework.data.repository.query.Param;

import fr.eni.enicalendar.persistence.app.entities.EnchainementModule;

public interface EnchainementModuleServiceInterface {

	List<EnchainementModule> save(List<EnchainementModule> entities);

	List<EnchainementModule> findByModuleId(@Param("id") Integer id);

	// List<Integer> findIdModulePrerequisByModuleId(@Param("id") Integer id);

}
