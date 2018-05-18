package fr.eni.enicalendar.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.eni.enicalendar.persistence.app.entities.Utilisateur;
import fr.eni.enicalendar.persistence.app.repositories.UtilisateurRepository;
import fr.eni.enicalendar.service.UtilisateurServiceInterface;

@Service
public class UtilisateurService implements UtilisateurServiceInterface {

	private static final Logger LOGGER = LoggerFactory.getLogger(UtilisateurService.class);

	@Autowired
	private UtilisateurRepository utilisateurRepository;

	@Transactional("appTransactionManager")
	public List<Utilisateur> findAllUtilisateurs() {
		LOGGER.info("findAllTitre");
		return utilisateurRepository.findAll();
	}

}
