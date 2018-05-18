package fr.eni.enicalendar.service.impl;

import java.io.Serializable;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.eni.enicalendar.persistence.app.entities.Utilisateur;
import fr.eni.enicalendar.persistence.app.repositories.UtilisateurRepository;
import fr.eni.enicalendar.service.UtilisateurServiceInterface;

@Service
public class UtilisateurService implements UtilisateurServiceInterface, Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 4669403011752136207L;

	private static final Logger LOGGER = LoggerFactory.getLogger(UtilisateurService.class);

	@Autowired
	private UtilisateurRepository utilisateurRepository;

	@Override
	public List<Utilisateur> findAllUtilisateurs() {
		LOGGER.info("findAllTitre");
		return utilisateurRepository.findAll();
	}

	@Override
	public Boolean valide(String email, String password) {
		Boolean retour = false;
		Utilisateur utilisateur = utilisateurRepository.findByEmail(email);
		if (utilisateur != null && password.equals(utilisateur.getPassword())) {
			retour = true;
		}
		return retour;
	}

	@Override
	public Utilisateur findByEmail(String email) {
		return utilisateurRepository.findByEmail(email);
	}

}
