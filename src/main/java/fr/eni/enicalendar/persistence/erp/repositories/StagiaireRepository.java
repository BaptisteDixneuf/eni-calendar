package fr.eni.enicalendar.persistence.erp.repositories;

import fr.eni.enicalendar.persistence.erp.entities.Stagiaire;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StagiaireRepository extends JpaRepository<Stagiaire, Integer> {

	Stagiaire findByEmail(String email);

	Stagiaire findBycodeStagiaire(Integer codeStagiaire);

}