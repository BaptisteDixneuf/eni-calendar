package fr.eni.enicalendar.service.impl;

import fr.eni.enicalendar.persistence.app.entities.Calendrier;
import fr.eni.enicalendar.persistence.app.entities.ModeleCalendrier;
import fr.eni.enicalendar.persistence.app.repositories.CalendrierRepository;
import fr.eni.enicalendar.persistence.app.repositories.ModeleRepository;
import fr.eni.enicalendar.service.CalendrierServiceInterface;
import fr.eni.enicalendar.service.ModeleServiceInterface;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CalendrierService implements CalendrierServiceInterface {

	private static final Logger LOGGER = LoggerFactory.getLogger(CalendrierService.class);

	@Autowired
	private CalendrierRepository calendrierRepository;

	@Override
	public List<Calendrier> findCalendriersByStagiaire(Integer id) {
		return calendrierRepository.findCalendriersByStagiaire(id);
	}

	public Calendrier findOne (Integer id) {
		return calendrierRepository.findOne(id);
	}

	@Override
	public List<Calendrier> findByNomCalendrier(String libelle) {
		return calendrierRepository.findByNomCalendrier(libelle);
	}

	public void deleteCalendrier(Calendrier calendrier) {
		calendrierRepository.delete(calendrier);
	}

}
