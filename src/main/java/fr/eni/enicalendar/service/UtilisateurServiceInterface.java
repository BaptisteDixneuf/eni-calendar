package fr.eni.enicalendar.service;

import java.util.List;

import fr.eni.enicalendar.persistence.app.entities.Utilisateur;

public interface UtilisateurServiceInterface {

	List<Utilisateur> findAllUtilisateurs();

}
