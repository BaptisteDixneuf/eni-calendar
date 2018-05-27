package fr.eni.enicalendar.service.impl;

import java.io.Serializable;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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

	private static final String SALT = "EniCalendar";

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

		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		// TODO : à revoir
		LOGGER.info(passwordEncoder.encode(password));
		if (utilisateur != null && passwordEncoder.matches(password, utilisateur.getPassword())) {
			retour = true;
		}
		return retour;
	}

	@Override
	public Utilisateur findByEmail(String email) {
		return utilisateurRepository.findByEmail(email);
	}

	private String get_SHA_512_SecurePassword(String passwordToHash, String salt) {
		String generatedPassword = null;
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-512");
			md.update(salt.getBytes(StandardCharsets.UTF_8));
			byte[] bytes = md.digest(passwordToHash.getBytes(StandardCharsets.UTF_8));
			StringBuilder sb = new StringBuilder();
			for (int i = 0; i < bytes.length; i++) {
				sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
			}
			generatedPassword = sb.toString();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return generatedPassword;
	}

}
