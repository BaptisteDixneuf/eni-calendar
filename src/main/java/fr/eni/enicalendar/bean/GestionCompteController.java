package fr.eni.enicalendar.bean;

import java.io.IOException;
import java.io.Serializable;

import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import fr.eni.enicalendar.persistence.app.entities.Utilisateur;
import fr.eni.enicalendar.service.UtilisateurServiceInterface;
import fr.eni.enicalendar.utils.SessionUtils;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@ManagedBean(name = "gestionCompteController")
@ViewScoped
public class GestionCompteController implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private static final Logger LOGGER = LoggerFactory.getLogger(GestionCompteController.class);

	@ManagedProperty(value = "#{utilisateurService}")
	private UtilisateurServiceInterface utilisateurService;

	private Utilisateur utilisateur;
	private String oldPassword = null;
	private String newPassword = null;

	public String getOldPassword() {
		return oldPassword;
	}

	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	@PostConstruct
	public void setup() {
		LOGGER.info("GestionCompteController setup");
		utilisateur = new Utilisateur();
		utilisateur = utilisateurService.findByEmail(SessionUtils.getEmail());
	}

	public UtilisateurServiceInterface getUtilisateurService() {
		return utilisateurService;
	}

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
	 * Permet de modifier un utilisateur
	 *
	 * @throws IOException
	 */
	public void modifierUtilisateur() throws IOException {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

		//on vérifie avant que l'ancien mot de passe est le bon
		if (passwordEncoder.matches(oldPassword, utilisateur.getPassword())) {
			utilisateur.setPassword(passwordEncoder.encode(newPassword));
			utilisateurService.saveUtilisateur(utilisateur);

			FacesContext.getCurrentInstance().addMessage("general",
					new FacesMessage(FacesMessage.SEVERITY_INFO, "Informations enregistrées!", ""));
		} else {
			FacesContext.getCurrentInstance().addMessage("general",
					new FacesMessage(FacesMessage.SEVERITY_ERROR, "Ancien mot de passe érroné!", ""));
		}
	}

}
