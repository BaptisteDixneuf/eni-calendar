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

@ManagedBean(name = "creationCalendrierDepuisModeleController")
@ViewScoped
public class CreationCalendrierDepuisModeleController implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private static final Logger LOGGER = LoggerFactory.getLogger(CreationCalendrierDepuisModeleController.class);

	@ManagedProperty(value = "#{stagiaireService}")
	private StagiaireServiceInterface stagiaireService;

	@ManagedProperty(value = "#{lieuService}")
	private LieuServiceInterface lieuService;

	@ManagedProperty(value = "#{modeleService}")
	private ModeleServiceInterface modeleService;

	private Stagiaire stagiaire;
	private Date date1;
	private Date date2;
	private String option;
	private List<Lieu> lieux;
	private List<String> lieuxLibelles;
	private String txt2;

	public String getTxt2() {
		return txt2;
	}

	public void setTxt2(String txt2) {
		this.txt2 = txt2;
	}

	public String getOption() {
		return option;
	}

	public void setOption(String option) {
		this.option = option;
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

	public void setStagiaire(Stagiaire stagiaire) {
		this.stagiaire = stagiaire;
	}

	@PostConstruct
	public void setup() {
		LOGGER.info("CreationCalendrierDepuisModeleController setup");
		stagiaire = new Stagiaire();
		//TODO changer valeur en dur
		stagiaire = stagiaireService.findBycodeStagiaire(20);
		lieux = lieuService.findAllLieux();
		lieuxLibelles = new ArrayList<>();
		for (Lieu lieu : lieux) {
			lieuxLibelles.add(lieu.getLibelle());
		}
	}

	public ModeleServiceInterface getModeleService() {
		return modeleService;
	}

	public void setModeleService(ModeleServiceInterface modeleService) {
		this.modeleService = modeleService;
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
	 * Autocomplete sur le modele
	 */
	public List<String> autocompleteText(String query) {
		List<String> results = new ArrayList<String>();
		List<ModeleCalendrier> liste = modeleService.findByNomCalendrier(query);
		for (ModeleCalendrier modele:liste) {
			results.add(modele.getNomCalendrier());
		}
		return results;
	}

	public void onItemSelect(SelectEvent event) {
		FacesContext.getCurrentInstance().addMessage(null, new FacesMessage("Item Selected", event.getObject().toString()));
	}

	/**
	 * Permet retour etape précédente
	 *
	 * @throws IOException
	 */
	public void retour() throws IOException {
		FacesContext.getCurrentInstance().getExternalContext()
				.redirect("/eni-calendar/views/creationCalendrier.xhtml");
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
