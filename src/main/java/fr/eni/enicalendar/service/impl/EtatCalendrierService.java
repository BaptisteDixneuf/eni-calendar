package fr.eni.enicalendar.service.impl;

import java.io.Serializable;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.eni.enicalendar.persistence.app.entities.EtatCalendrier;
import fr.eni.enicalendar.persistence.app.repositories.EtatCalendrierRepository;
import fr.eni.enicalendar.service.EtatCalendrierServiceInterface;

@Service
public class EtatCalendrierService implements EtatCalendrierServiceInterface, Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 4669403011752136207L;

	private static final Logger LOGGER = LoggerFactory.getLogger(EtatCalendrierService.class);

	@Autowired
	private EtatCalendrierRepository etatCalendrierRepository;

	@Override
	public EtatCalendrier findByLibelle(String libelle) {
		return etatCalendrierRepository.findByLibelleEtat(libelle);
	}

	@Override
	public EtatCalendrier findById(Integer id) {
		return etatCalendrierRepository.findById(id);
	}

}
