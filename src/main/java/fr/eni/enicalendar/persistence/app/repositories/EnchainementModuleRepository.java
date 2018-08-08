package fr.eni.enicalendar.persistence.app.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.eni.enicalendar.persistence.app.entities.EnchainementModule;

public interface EnchainementModuleRepository extends JpaRepository<EnchainementModule, Integer> {

	List<EnchainementModule> findByIdModuleERP(Integer idModuleERP);

}
