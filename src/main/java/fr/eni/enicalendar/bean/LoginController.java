package fr.eni.enicalendar.bean;

import java.io.IOException;
import java.io.Serializable;

import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import fr.eni.enicalendar.persistence.app.entities.Utilisateur;
import fr.eni.enicalendar.service.UtilisateurServiceInterface;
import fr.eni.enicalendar.utils.SessionUtils;

/***
 * Controlleur qui permet de connecter/déconnecter un utilisateur <br>
 * Utilisation de la session
 * 
 * @author Baptiste DIXNEUF
 *
 */
@ManagedBean(name = "loginController")
@ViewScoped
public class LoginController implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private static final Logger LOGGER = LoggerFactory.getLogger(LoginController.class);

	/**
	 * Les services
	 */
	@ManagedProperty(value = "#{utilisateurService}")
	private UtilisateurServiceInterface utilisateurService;

	/**
	 * Les données saisies par l'utilsateur dans le formulaire
	 */
	private String password;

	private String email;
	

	//variable pour l'oubli de mdp
	private Utilisateur utilisateur;

	@PostConstruct
	public void setup() {
		LOGGER.info("LoginController setup");
	}

	/**
	 * Permet de valider le couple email / mot de passe d'un compte utilisateur
	 * 
	 * @throws IOException
	 *             exception
	 */
	public void validateUsernamePassword() throws IOException {
		boolean valid = utilisateurService.valide(email, password);
		if (valid) {
			HttpSession session = SessionUtils.getSession();
			session.setAttribute(SessionUtils.SESSION_EMAIL, email);
			LOGGER.info("Connexion de l'utilisater : " + email);
			FacesContext.getCurrentInstance().getExternalContext()
					.redirect("/eni-calendar/views/rechercheStagiaire.xhtml");
		} else {
			FacesContext.getCurrentInstance().addMessage("general",
					new FacesMessage(FacesMessage.SEVERITY_ERROR, "Email/Mot de passe invalide", ""));
		}
	}

	/**
	 * Permet de déconnecter un utilisateur
	 * 
	 * @throws IOException
	 */
	public void logout() throws IOException {
		HttpSession session = SessionUtils.getSession();
		session.invalidate();
		LOGGER.info("Déconnexion de l'utilisater : " + email);
		FacesContext.getCurrentInstance().getExternalContext().redirect("/eni-calendar/views/login.xhtml");
	}
	
	
	/**
	 * Permet de renvoyer un mdp à un utilisateur ayant oublié le sien
	 * 
	 * @throws IOException
	 */
	public void oubliMdp() throws IOException {
		HttpSession session = SessionUtils.getSession();
		utilisateur = utilisateurService.findByEmail(email);
		
		//mettre en place l'envoi de l'email
		if (utilisateur != null) {
			
		}
		
		FacesContext.getCurrentInstance().getExternalContext().redirect("/eni-calendar/views/login.xhtml");
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
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password
	 *            the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email
	 *            the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

}
