package fr.eni.enicalendar.persistence.app.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.eni.enicalendar.persistence.app.entities.Utilisateur;

public interface UtilisateurRepository extends JpaRepository<Utilisateur, Integer> {

	Utilisateur findByEmail(String email);

	Utilisateur findById(Integer id);

}