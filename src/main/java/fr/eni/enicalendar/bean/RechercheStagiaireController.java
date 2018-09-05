package fr.eni.enicalendar.bean;

import fr.eni.enicalendar.persistence.app.entities.ModeleCalendrier;
import fr.eni.enicalendar.persistence.erp.entities.Lieu;
import fr.eni.enicalendar.persistence.erp.entities.Stagiaire;
import fr.eni.enicalendar.service.LieuServiceInterface;
import fr.eni.enicalendar.service.ModeleServiceInterface;
import fr.eni.enicalendar.service.StagiaireServiceInterface;
import fr.eni.enicalendar.utils.SessionUtils;
import org.primefaces.PrimeFaces;
import org.primefaces.event.SelectEvent;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@ManagedBean(name = "rechercheStagiaireController")
@ViewScoped
public class RechercheStagiaireController implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private static final Logger LOGGER = LoggerFactory.getLogger(RechercheStagiaireController.class);

	@ManagedProperty(value = "#{stagiaireService}")
	private StagiaireServiceInterface stagiaireService;

	private Stagiaire stagiaire;
	private String txt2;
	private String codeStagiaire;
	private Object presence;

	public Object getPresence() {
		return presence;
	}

	public void setPresence(Object presence) {
		this.presence = presence;
	}

	public String getCodeStagiaire() {
		return codeStagiaire;
	}

	public void setCodeStagiaire(String codeStagiaire) {
		this.codeStagiaire = codeStagiaire;
	}

	public String getTxt2() {
		return txt2;
	}

	public void setTxt2(String txt2) {
		this.txt2 = txt2;
	}

	public Stagiaire getStagiaire() {
		return stagiaire;
	}

	public void setStagiaire(Stagiaire stagiaire) {
		this.stagiaire = stagiaire;
	}

	@PostConstruct
	public void setup() {
		LOGGER.info("RechercheStagiaireController setup");
		stagiaire = new Stagiaire();
		HttpSession session = SessionUtils.getSession();
		presence = session.getAttribute(SessionUtils.SESSION_ID_STAGIAIRE);
		presence = presence != null ? false : true;

	}

	/**
	 * @return the stagiaireService
	 */
	public StagiaireServiceInterface getStagiaireService() {
		return stagiaireService;
	}

	/**
	 * @param stagiaireService
	 *            the stagiaireService to set
	 */
	public void setStagiaireService(StagiaireServiceInterface stagiaireService) {
		this.stagiaireService = stagiaireService;
	}

	/**
	 * Autocomplete sur le stagiaire
	 */
	public List<Stagiaire> autocompleteText(String query) {
		//enlever l'espace devant la chaine
		query = query.trim();
		//mettre la première lettre du mot en maj (comme en bdd)
		query = query.substring(0,1).toUpperCase() + query.substring(1).toLowerCase();

		List<Stagiaire> liste = stagiaireService.findByNom(query);
		return liste;
	}

	/**
	 * Permet de verifier qu'un stagiaire est en session
	 *
	 * @throws IOException
	 */
	public void verifStagiaire() throws IOException {
		HttpSession session = SessionUtils.getSession();
		presence = session.getAttribute(SessionUtils.SESSION_ID_STAGIAIRE);

		if (presence != null) {
			presence = false;
			FacesContext.getCurrentInstance().getExternalContext().redirect("/eni-calendar/views/ficheStagiaire.xhtml");
		} else {
			presence = true;
			FacesContext.getCurrentInstance().getExternalContext().redirect("/eni-calendar/views/rechercheStagiaire.xhtml");
		}

	}

	/**
	 * Permet de passer à l'etape constitution calendrier
	 *
	 * @throws IOException
	 */
	public void validationEtape() throws IOException {
		HttpSession session = SessionUtils.getSession();
		session.setAttribute(SessionUtils.SESSION_ID_STAGIAIRE, codeStagiaire);
		FacesContext context = FacesContext.getCurrentInstance();
		context.getExternalContext().getFlash().setKeepMessages(true);
		context.addMessage("general",
				new FacesMessage(FacesMessage.SEVERITY_INFO, "Stagiaire trouvé!", ""));
		context.getExternalContext().redirect("/eni-calendar/views/ficheStagiaire.xhtml");
	}

}
