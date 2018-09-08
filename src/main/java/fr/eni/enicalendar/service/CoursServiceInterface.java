package fr.eni.enicalendar.service;

import java.util.List;

import fr.eni.enicalendar.persistence.erp.entities.Cours;

public interface CoursServiceInterface {

	List<Cours> findAllCours();

	List<Cours> findCoursByFormation(String codeFormation);

	List<Cours> findCoursByFormationAndLieu(String codeFormation, Integer codeLieu);

	Cours findCoursById(String id);

}
