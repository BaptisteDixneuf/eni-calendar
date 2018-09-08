package fr.eni.enicalendar.persistence.erp.repositories;

import fr.eni.enicalendar.persistence.erp.entities.Entreprise;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EntrepriseRepository extends JpaRepository<Entreprise, Integer> {

	Entreprise findByCodeEntreprise(Integer codeEntreprise);

}