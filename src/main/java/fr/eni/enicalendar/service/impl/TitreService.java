package fr.eni.enicalendar.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.eni.enicalendar.persistence.entities.Titre;
import fr.eni.enicalendar.persistence.repositories.TitreRepository;
import fr.eni.enicalendar.service.TitreServiceInterface;

@Service
public class TitreService implements TitreServiceInterface {

	private static final Logger LOGGER = LoggerFactory.getLogger(TitreService.class);

	@Autowired
	private TitreRepository titreRepository;

	public List<Titre> findAllTitre() {
		LOGGER.info("findAllTitre");
		return titreRepository.findAll();
	}
}
