package fr.eni.enicalendar.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.eni.enicalendar.persistence.erp.entities.Cours;
import fr.eni.enicalendar.persistence.erp.repositories.CoursRepository;
import fr.eni.enicalendar.service.CoursServiceInterface;

@Service
public class CoursService implements CoursServiceInterface {

	@Autowired
	private CoursRepository coursRepository;

	@Override
	public List<Cours> findAllCours() {
		return coursRepository.findAll();
	}

	@Override
	public List<Cours> findCoursByFormation(String codeFormation) {
		return coursRepository.findCoursByFormation(codeFormation);
	}

	@Override
	public List<Cours> findCoursByFormationAndLieu(String codeFormation, Integer codeLieu) {
		return coursRepository.findCoursByFormationAndLieu(codeFormation, codeLieu);
	}

	@Override
	public List<Cours> findCoursByFormationAndLieuAndDate(String codeFormation, Integer codeLieu, Date dateDebut) {
		return coursRepository.findCoursByFormationAndLieuAndDate(codeFormation, codeLieu, dateDebut);
	}

	@Override
	public Cours findCoursById(String id) {
		return coursRepository.findOne(id);
	}
}
