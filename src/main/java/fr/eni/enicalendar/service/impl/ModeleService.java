package fr.eni.enicalendar.service.impl;

import fr.eni.enicalendar.persistence.app.entities.ModeleCalendrier;
import fr.eni.enicalendar.persistence.app.repositories.ModeleRepository;
import fr.eni.enicalendar.persistence.erp.entities.Lieu;
import fr.eni.enicalendar.persistence.erp.repositories.LieuRepository;
import fr.eni.enicalendar.service.LieuServiceInterface;
import fr.eni.enicalendar.service.ModeleServiceInterface;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ModeleService implements ModeleServiceInterface {

	private static final Logger LOGGER = LoggerFactory.getLogger(ModeleService.class);

	@Autowired
	private ModeleRepository modeleRepository;

	@Override
	public List<ModeleCalendrier> findAllModeles() {
		return modeleRepository.findAll();
	}

	@Override
	public List<ModeleCalendrier> findByNomCalendrier (String libelle) {
		return modeleRepository.findByNomCalendrier(libelle);
	}

}
