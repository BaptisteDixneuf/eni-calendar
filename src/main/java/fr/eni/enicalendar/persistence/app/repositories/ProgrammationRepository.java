package fr.eni.enicalendar.persistence.app.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import fr.eni.enicalendar.persistence.app.entities.Programmation;

public interface ProgrammationRepository extends JpaRepository<Programmation, Integer> {

	@Query("select p from Programmation p WHERE p.idModeleCalendrier = :idModeleCalendrier")
	List<Programmation> findProgrammationByModeleCalendrier(@Param("idModeleCalendrier") Integer idModeleCalendrier);
}
