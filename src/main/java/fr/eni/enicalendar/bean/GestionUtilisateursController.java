package fr.eni.enicalendar.bean;

import java.io.IOException;
import java.io.Serializable;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import fr.eni.enicalendar.persistence.app.entities.RoleUtilisateur;
import fr.eni.enicalendar.persistence.app.entities.Utilisateur;
import fr.eni.enicalendar.service.UtilisateurServiceInterface;

@ManagedBean(name = "gestionUtilisateursController")
@ViewScoped
public class GestionUtilisateursController implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private static final Logger LOGGER = LoggerFactory.getLogger(GestionUtilisateursController.class);

	@ManagedProperty(value = "#{utilisateurService}")
	private UtilisateurServiceInterface utilisateurService;

	private List<Utilisateur> utilisateurs;

	Utilisateur utilisateur;

	String role;

	@PostConstruct
	public void setup() {
		LOGGER.info("GestionUtilisateursController setup");
		utilisateurs = utilisateurService.findAllUtilisateurs();
		utilisateur = new Utilisateur();
	}

	/**
	 * @return the utilisateurService
	 */
	public UtilisateurServiceInterface getUtilisateurService() {
		return utilisateurService;
	}

	/**
	 * @param utilisateurService
	 *            the utilisateurService to set
	 */
	public void setUtilisateurService(UtilisateurServiceInterface utilisateurService) {
		this.utilisateurService = utilisateurService;
	}

	/**
	 * @return the utilisateur
	 */
	public Utilisateur getUtilisateur() {
		return utilisateur;
	}

	/**
	 * @param utilisateur
	 *            the utilisateur to set
	 */
	public void setUtilisateur(Utilisateur utilisateur) {
		this.utilisateur = utilisateur;
	}

	/**
	 * @return the utilisateurs
	 */
	public List<Utilisateur> getUtilisateurs() {
		return utilisateurs;
	}

	/**
	 * @param utilisateurs
	 *            the utilisateurs to set
	 */
	public void setUtilisateurs(List<Utilisateur> utilisateurs) {
		this.utilisateurs = utilisateurs;
	}

	/**
	 * @return the role
	 */
	public String getRole() {
		return role;
	}

	/**
	 * @param role
	 *            the role to set
	 */
	public void setRole(String role) {
		this.role = role;
	}

	/**
	 * Permet de créer un utilisateur
	 * 
	 * @throws IOException
	 */
	public void creerNouvelUtilisateur() throws IOException {
		RoleUtilisateur role = new RoleUtilisateur();
		role.setId(1);
		utilisateur.setRole(role);
		utilisateur = utilisateurService.saveUtilisateur(utilisateur);
		//test idea
		LOGGER.info("truc");
	}

}
