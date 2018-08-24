package fr.eni.enicalendar.persistence.erp.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.eni.enicalendar.persistence.app.entities.Programmation;

public interface ProgrammationRepository extends JpaRepository<Programmation, Integer> {

}
