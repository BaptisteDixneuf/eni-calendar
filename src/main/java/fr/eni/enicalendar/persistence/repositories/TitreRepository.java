package fr.eni.enicalendar.persistence.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import fr.eni.enicalendar.persistence.entities.Titre;

@Repository
public interface TitreRepository extends JpaRepository<Titre, Long> {

	List<Titre> findAll(); 
}
