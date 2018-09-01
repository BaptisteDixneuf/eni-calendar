package fr.eni.enicalendar.persistence.app.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import fr.eni.enicalendar.persistence.app.entities.ModuleIndependant;

public interface ModuleIndependantRepository extends JpaRepository<ModuleIndependant, Integer> {

	List<ModuleIndependant> findAll();

	ModuleIndependant findById(Integer id);

	@Query("select m from ModuleIndependant m " + " WHERE m.libelle LIKE %:libelle%")
	List<ModuleIndependant> findByLibelle(@Param("libelle") String libelle);
}