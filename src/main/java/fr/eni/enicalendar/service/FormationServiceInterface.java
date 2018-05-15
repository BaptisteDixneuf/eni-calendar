package fr.eni.enicalendar.service;

import java.util.List;
import fr.eni.enicalendar.persistence.entities.Formation;

public interface FormationServiceInterface {

	List<Formation> findAllFormations();
}
