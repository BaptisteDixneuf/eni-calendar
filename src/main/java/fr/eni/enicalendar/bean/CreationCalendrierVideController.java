package fr.eni.enicalendar.bean;

import fr.eni.enicalendar.persistence.app.entities.Utilisateur;
import fr.eni.enicalendar.persistence.erp.entities.Stagiaire;
import fr.eni.enicalendar.service.UtilisateurServiceInterface;
import fr.eni.enicalendar.service.StagiaireServiceInterface;
import fr.eni.enicalendar.utils.SessionUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.Serializable;

@ManagedBean(name = "creationCalendrierVideController")
@ViewScoped
public class CreationCalendrierVideController implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private static final Logger LOGGER = LoggerFactory.getLogger(CreationCalendrierVideController.class);

	@ManagedProperty(value = "#{utilisateurService}")
	private UtilisateurServiceInterface utilisateurService;

	@ManagedProperty(value = "#{stagiaireService}")
	private StagiaireServiceInterface stagiaireService;

	private Utilisateur utilisateur;
	private Stagiaire stagiaire;

	public Utilisateur getUtilisateur() {
		return utilisateur;
	}

	public void setUtilisateur(Utilisateur utilisateur) {
		this.utilisateur = utilisateur;
	}

	public void setStagiaire(Stagiaire stagiaire) {
		this.stagiaire = stagiaire;
	}

	@PostConstruct
	public void setup() {
		LOGGER.info("CreationCalendrierVideController setup");
		stagiaire = new Stagiaire();
		stagiaire = stagiaireService.findBycodeStagiaire(1);
		utilisateur = utilisateurService.findByEmail(SessionUtils.getEmail());
	}

	/**
	 * @return the stagiaireService
	 */
	public StagiaireServiceInterface getStagiaireService() {
		return stagiaireService;
	}

	/**
	 * @return the utilisateurService
	 */
	public UtilisateurServiceInterface getUtilisateurService() {
		return utilisateurService;
	}

	/**
	 * @param stagiaireService
	 *            the stagiaireService to set
	 */
	public void setStagiaireService(StagiaireServiceInterface stagiaireService) {
		this.stagiaireService = stagiaireService;
	}

	/**
	 * @param utilisateurService
	 *            the utilisateurService to set
	 */
	public void setUtilisateurService(UtilisateurServiceInterface utilisateurService) {
		this.utilisateurService = utilisateurService;
	}

	/**
	 * Permet de modifier un utilisateur
	 *
	 * @throws IOException
	 */
	public void creerModele(String typeAction) throws IOException {
		HttpSession session = SessionUtils.getSession();
		session.setAttribute(SessionUtils.SESSION_TYPE_ACTION, typeAction);
		if (typeAction.equals("vide")) {
			FacesContext.getCurrentInstance().getExternalContext()
					.redirect("/eni-calendar/views/creationCalendrierModeleVide.xhtml");
		} else if (typeAction.equals("depuisModele")){
			FacesContext.getCurrentInstance().getExternalContext()
					.redirect("/eni-calendar/views/creationCalendrierDepuisModele.xhtml");
		} else {
			FacesContext.getCurrentInstance().getExternalContext()
					.redirect("/eni-calendar/views/creationCalendrierDepuisStagiaire.xhtml");
		}
	}

}
