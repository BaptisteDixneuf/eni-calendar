package fr.eni.enicalendar.persistence.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.eni.enicalendar.persistence.entities.Cours;

public interface CoursRepository extends JpaRepository<Cours, String> {
	
	List<Cours> findAll(); 
}
