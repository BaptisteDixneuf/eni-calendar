package fr.eni.enicalendar.service;

import java.util.List;

import fr.eni.enicalendar.persistence.app.entities.Programmation;

public interface ProgrammationServiceInterface {

	Programmation save(Programmation programmation);

	List<Programmation> saveAll(Iterable<Programmation> programmations);

	List<Programmation> findProgrammationByModeleCalendrier(Integer idModeleCalendrier);

}
