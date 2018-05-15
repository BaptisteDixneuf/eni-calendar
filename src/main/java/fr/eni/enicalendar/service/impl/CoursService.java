package fr.eni.enicalendar.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.eni.enicalendar.persistence.entities.Cours;
import fr.eni.enicalendar.persistence.repositories.CoursRepository;
import fr.eni.enicalendar.service.CoursServiceInterface;

@Service
public class CoursService implements CoursServiceInterface{

	 @Autowired
	 private CoursRepository coursRepository;
	 
	 
	@Override
	public List<Cours> findAllCours() {
		return coursRepository.findAll();
	}

	@Override
	public String concatenationLibelle() {
		List<Cours> cours = findAllCours();
		String libelle = "";
		for (Cours cours2 : cours) {
			libelle = libelle + cours2.getIdCours();
		}
		return libelle;
	}

	
}
