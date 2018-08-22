package fr.eni.enicalendar.persistence.app.repositories;

import fr.eni.enicalendar.persistence.app.entities.ModuleIndependant;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ModuleIndependantRepository extends JpaRepository<ModuleIndependant, Integer> {

	List <ModuleIndependant> findAll();
}