package fr.eni.enicalendar.persistence.app.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.eni.enicalendar.persistence.app.entities.ModuleIndependant;

public interface ModuleIndependantRepository extends JpaRepository<ModuleIndependant, Integer> {

	List<ModuleIndependant> findAll();

	ModuleIndependant findById(Integer id);
}