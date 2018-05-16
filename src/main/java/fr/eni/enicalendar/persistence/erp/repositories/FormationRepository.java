package fr.eni.enicalendar.persistence.repositories;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import fr.eni.enicalendar.persistence.entities.Formation;


public interface FormationRepository extends JpaRepository<Formation, String> {

	List<Formation> findAll();
	
}
