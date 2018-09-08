package fr.eni.enicalendar.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.eni.enicalendar.persistence.app.entities.ModeleCalendrier;
import fr.eni.enicalendar.persistence.app.repositories.ModeleCalendrierRepository;
import fr.eni.enicalendar.service.ModeleCalendrierServiceInterface;

@Service
public class ModeleCalendrierService implements ModeleCalendrierServiceInterface {

	private static final Logger LOGGER = LoggerFactory.getLogger(ModeleCalendrierService.class);

	@Autowired
	private ModeleCalendrierRepository modeleCalendrierRepository;

	@Override
	public List<ModeleCalendrier> findAll() {
		return modeleCalendrierRepository.findAll();
	}

	@Override
	public ModeleCalendrier save(ModeleCalendrier modeleCalendrier) {
		return modeleCalendrier = modeleCalendrierRepository.save(modeleCalendrier);
	}

}
