package fr.eni.enicalendar.persistence.erp.repositories;

import fr.eni.enicalendar.persistence.erp.entities.StagiaireParEntreprise;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StagiaireEntrepriseRepository extends JpaRepository<StagiaireParEntreprise, Integer> {

	StagiaireParEntreprise findBycodeStagiaire(Integer codeStagiaire);

}