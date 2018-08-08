package fr.eni.enicalendar.bean;

import fr.eni.enicalendar.persistence.app.entities.Utilisateur;
import fr.eni.enicalendar.persistence.erp.entities.Lieu;
import fr.eni.enicalendar.persistence.erp.entities.Stagiaire;
import fr.eni.enicalendar.service.LieuServiceInterface;
import fr.eni.enicalendar.service.UtilisateurServiceInterface;
import fr.eni.enicalendar.service.StagiaireServiceInterface;
import fr.eni.enicalendar.utils.SessionUtils;
import org.primefaces.PrimeFaces;
import org.primefaces.event.SelectEvent;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.context.FacesContext;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.Serializable;
import java.util.List;

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

	@ManagedProperty(value = "#{lieuService}")
	private LieuServiceInterface lieuService;

	private Utilisateur utilisateur;
	private Stagiaire stagiaire;
	private Date date1;
	private Date date2;
	private String option;
	private List<Lieu> lieux;
	private List<String> lieuxLibelles;

	public String getOption() {
		return option;
	}

	public void setOption(String option) {
		this.option = option;
	}

	public Utilisateur getUtilisateur() {
		return utilisateur;
	}

	public Stagiaire getStagiaire() {
		return stagiaire;
	}

	public Date getDate1() {
		return date1;
	}

	public void setDate1(Date date1) {
		this.date1 = date1;
	}

	public Date getDate2() {
		return date2;
	}

	public void setDate2(Date date2) {
		this.date2 = date2;
	}

	public List<Lieu> getLieux() {
		return lieux;
	}

	public void setLieux(List<Lieu> lieux) {
		this.lieux = lieux;
	}

	public List<String> getLieuxLibelles() {
		return lieuxLibelles;
	}

	public void setLieuxLibelles(List<String> lieuxLibelles) {
		this.lieuxLibelles = lieuxLibelles;
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
		stagiaire = stagiaireService.findBycodeStagiaire(20);
		lieux = lieuService.findAllLieux();
		lieuxLibelles = new ArrayList<>();
		for (Lieu lieu : lieux) {
			lieuxLibelles.add(lieu.getLibelle());
		}
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
	 * @return the utilisateurService
	 */
	public LieuServiceInterface getLieuService() {
		return lieuService;
	}

	/**
	 * @param lieuService
	 *            the stagiaireService to set
	 */
	public void setLieuService(LieuServiceInterface lieuService) {
		this.lieuService = lieuService;
	}

	/**
	 * @param utilisateurService
	 *            the utilisateurService to set
	 */
	public void setUtilisateurService(UtilisateurServiceInterface utilisateurService) {
		this.utilisateurService = utilisateurService;
	}

	public void onDateSelect(SelectEvent event) {
		FacesContext facesContext = FacesContext.getCurrentInstance();
		SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
		facesContext.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_INFO, "Date Selected", format.format(event.getObject())));
	}

	public void click() {
		PrimeFaces.current().ajax().update("form:display");
		PrimeFaces.current().executeScript("PF('dlg').show()");
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

	/**
	 * Permet de passer à l'etape constitution calendrier
	 *
	 * @throws IOException
	 */
	public void validationEtape() throws IOException {
		HttpSession session = SessionUtils.getSession();

	}

}