package fr.eni.enicalendar.persistence.app.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import fr.eni.enicalendar.persistence.app.entities.EnchainementModule;

public interface EnchainementModuleRepository extends JpaRepository<EnchainementModule, Integer> {

	@Query("select e from EnchainementModule e " + " WHERE e.idModuleERP = :id")
	List<EnchainementModule> findByModuleId(@Param("id") Integer id);

	// @Query("select e.idModulePrerequisERP from EnchainementModule e " + " WHERE
	// e.idModuleERP = :id")
	// List<Integer> findIdModulePrerequisByModuleId(@Param("id") Integer id);
}
