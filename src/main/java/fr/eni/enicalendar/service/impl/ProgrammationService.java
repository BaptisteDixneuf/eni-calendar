package fr.eni.enicalendar.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.eni.enicalendar.persistence.app.entities.Programmation;
import fr.eni.enicalendar.persistence.app.repositories.ProgrammationRepository;
import fr.eni.enicalendar.service.ProgrammationServiceInterface;

@Service
public class ProgrammationService implements ProgrammationServiceInterface {

	private static final Logger LOGGER = LoggerFactory.getLogger(ProgrammationService.class);

	@Autowired
	private ProgrammationRepository programmationRepository;

	@Override
	public Programmation save(Programmation programmation) {
		return programmation = programmationRepository.saveAndFlush(programmation);
	}

	@Override
	public List<Programmation> saveAll(Iterable<Programmation> programmations) {
		return programmationRepository.save(programmations);
	}

	@Override
	public List<Programmation> findProgrammationByModeleCalendrier(Integer idModeleCalendrier) {
		return programmationRepository.findProgrammationByModeleCalendrier(idModeleCalendrier);
	}

	@Override
	public List<Programmation> findProgrammationByCalendrier(Integer idCalendrier) {
		return programmationRepository.findProgrammationByCalendrier(idCalendrier);
	}
}
