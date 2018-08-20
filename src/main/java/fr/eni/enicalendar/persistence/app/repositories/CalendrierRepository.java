package fr.eni.enicalendar.persistence.app.repositories;

import fr.eni.enicalendar.persistence.app.entities.Calendrier;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface CalendrierRepository extends JpaRepository<Calendrier, Integer> {

	@Query("select c from Calendrier c "
			+ " WHERE c.idStagiaireERP = :id")
	List<Calendrier> findCalendriersByStagiaire(@Param("id") Integer id);

	@Query("select c from Calendrier c "
			+ " WHERE c.nomCalendrier LIKE %:libelle%")
	List<Calendrier> findByNomCalendrier(@Param("libelle") String libelle);
}