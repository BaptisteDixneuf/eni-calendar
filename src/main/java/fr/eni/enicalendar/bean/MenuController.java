package fr.eni.enicalendar.bean;

import java.io.Serializable;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import fr.eni.enicalendar.persistence.app.entities.Utilisateur;
import fr.eni.enicalendar.service.UtilisateurServiceInterface;
import fr.eni.enicalendar.utils.SessionUtils;

@ManagedBean(name = "menuController")
@ViewScoped
public class MenuController implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private static final Logger LOGGER = LoggerFactory.getLogger(GestionCompteController.class);

	@ManagedProperty(value = "#{utilisateurService}")
	private UtilisateurServiceInterface utilisateurService;

	Utilisateur utilisateur;

	@PostConstruct
	public void setup() {
		LOGGER.info("MenuController setup");
		// On récupère l'utilisateur si il est connecté
		if (SessionUtils.getEmail() != null) {
			utilisateur = utilisateurService.findByEmail(SessionUtils.getEmail());
		}
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

}
