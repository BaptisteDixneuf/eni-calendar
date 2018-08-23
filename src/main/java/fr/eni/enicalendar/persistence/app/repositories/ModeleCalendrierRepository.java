package fr.eni.enicalendar.persistence.app.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.eni.enicalendar.persistence.app.entities.ModeleCalendrier;

public interface ModeleCalendrierRepository extends JpaRepository<ModeleCalendrier, Integer> {

}
