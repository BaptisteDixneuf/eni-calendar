package fr.eni.enicalendar.persistence.app.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.eni.enicalendar.persistence.app.entities.EtatCalendrier;

public interface EtatCalendrierRepository extends JpaRepository<EtatCalendrier, Integer> {

	EtatCalendrier findByLibelleEtat(String libelle);

	EtatCalendrier findById(Integer id);

}