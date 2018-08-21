package fr.eni.enicalendar.persistence.app.repositories;

import fr.eni.enicalendar.persistence.app.entities.ModeleCalendrier;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ModeleRepository extends JpaRepository<ModeleCalendrier, Integer> {

	@Query("select m from ModeleCalendrier m "
			+ " WHERE m.nomCalendrier LIKE %:libelle%")
	List<ModeleCalendrier> findByNomCalendrier(@Param("libelle") String libelle);
}