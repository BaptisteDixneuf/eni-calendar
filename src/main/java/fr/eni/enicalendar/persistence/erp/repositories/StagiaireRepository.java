package fr.eni.enicalendar.persistence.erp.repositories;

import fr.eni.enicalendar.persistence.erp.entities.Stagiaire;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface StagiaireRepository extends JpaRepository<Stagiaire, Integer> {

	Stagiaire findByEmail(String email);

	@Query("select s from Stagiaire s "
			+ " WHERE s.nom LIKE %:libelle%")
	List<Stagiaire> findByNom(@Param("libelle") String libelle);

	Stagiaire findBycodeStagiaire(Integer codeStagiaire);

}