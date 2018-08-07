package fr.eni.enicalendar.service.impl;

import fr.eni.enicalendar.persistence.erp.repositories.StagiaireRepository;
import fr.eni.enicalendar.persistence.erp.entities.Stagiaire;
import fr.eni.enicalendar.service.StagiaireServiceInterface;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.List;

@Service
public class StagiaireService implements StagiaireServiceInterface {

	private static final Logger LOGGER = LoggerFactory.getLogger(StagiaireService.class);

	@Autowired
	private StagiaireRepository stagiaireRepository;

	@Override
	public List<Stagiaire> findAllStagiaires() {
		return stagiaireRepository.findAll();
	}

	@Override
	public Stagiaire findByEmail(String email) {
		return stagiaireRepository.findByEmail(email);
	}

	@Override
	public Stagiaire findBycodeStagiaire (Integer id) {
		return stagiaireRepository.findBycodeStagiaire(id);
	}

}
