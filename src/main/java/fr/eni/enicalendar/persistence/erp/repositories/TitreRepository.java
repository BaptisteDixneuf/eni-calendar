package fr.eni.enicalendar.persistence.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import fr.eni.enicalendar.persistence.entities.Titre;

/**
 * Doc https://docs.spring.io/spring-data/data-commons/docs/1.6.1.RELEASE/reference/html/repositories.html
 * @author DIXNEUF Baptiste
 *
 */

@Repository
public interface TitreRepository extends JpaRepository<Titre, String> {

	List<Titre> findAll(); 
}
