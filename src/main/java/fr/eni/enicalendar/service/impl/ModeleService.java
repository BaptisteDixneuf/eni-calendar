package fr.eni.enicalendar.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.eni.enicalendar.persistence.app.entities.ModeleCalendrier;
import fr.eni.enicalendar.persistence.app.repositories.ModeleRepository;
import fr.eni.enicalendar.service.ModeleServiceInterface;

@Service
public class ModeleService implements ModeleServiceInterface {

	private static final Logger LOGGER = LoggerFactory.getLogger(ModeleService.class);

	@Autowired
	private ModeleRepository modeleRepository;

	@Override
	public List<ModeleCalendrier> findAllModeles() {
		return modeleRepository.findAll();
	}

	public ModeleCalendrier findById(Integer id) {
		return modeleRepository.findOne(id);
	}

	@Override
	public List<ModeleCalendrier> findByNomCalendrier(String libelle) {
		return modeleRepository.findByNomCalendrier(libelle);
	}

	public void deleteModele(ModeleCalendrier modele) {
		modeleRepository.delete(modele);
	}

	@Override
	public ModeleCalendrier findOne(Integer id) {
		return modeleRepository.findOne(id);
	}

	@Override
	public void delete(ModeleCalendrier modele) {
		modeleRepository.delete(modele.getId());
	}
}
