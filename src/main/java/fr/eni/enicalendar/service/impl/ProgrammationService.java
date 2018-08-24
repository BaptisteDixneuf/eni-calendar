package fr.eni.enicalendar.service.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import fr.eni.enicalendar.persistence.app.entities.Programmation;
import fr.eni.enicalendar.persistence.erp.repositories.ProgrammationRepository;
import fr.eni.enicalendar.service.ProgrammationServiceInterface;

public class ProgrammationService implements ProgrammationServiceInterface {

	private static final Logger LOGGER = LoggerFactory.getLogger(ProgrammationService.class);

	@Autowired
	private ProgrammationRepository programmationRepository;

	@Override
	public Programmation save(Programmation programmation) {
		return programmation = programmationRepository.saveAndFlush(programmation);
	}
}
