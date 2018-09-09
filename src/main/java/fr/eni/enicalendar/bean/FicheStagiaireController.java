package fr.eni.enicalendar.bean;

import java.io.IOException;
import java.io.Serializable;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;

import fr.eni.enicalendar.persistence.erp.entities.Entreprise;
import fr.eni.enicalendar.persistence.erp.entities.StagiaireParEntreprise;
import fr.eni.enicalendar.service.EntrepriseServiceInterface;
import fr.eni.enicalendar.service.impl.StagiaireEntrepriseService;
import org.primefaces.event.SelectEvent;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.lowagie.text.BadElementException;
import com.lowagie.text.Document;
import com.lowagie.text.DocumentException;
import com.lowagie.text.PageSize;

import fr.eni.enicalendar.persistence.app.entities.Calendrier;
import fr.eni.enicalendar.persistence.erp.entities.Formation;
import fr.eni.enicalendar.persistence.erp.entities.Stagiaire;
import fr.eni.enicalendar.service.CalendrierServiceInterface;
import fr.eni.enicalendar.service.FormationServiceInterface;
import fr.eni.enicalendar.service.StagiaireServiceInterface;
import fr.eni.enicalendar.utils.SessionUtils;

@ManagedBean(name = "ficheStagiaireController")
@ViewScoped
public class FicheStagiaireController implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private static final Logger LOGGER = LoggerFactory.getLogger(FicheStagiaireController.class);

	@ManagedProperty(value = "#{stagiaireService}")
	private StagiaireServiceInterface stagiaireService;

	@ManagedProperty(value = "#{stagiaireEntrepriseService}")
	private StagiaireEntrepriseService stagiaireEntrepriseService;

	@ManagedProperty(value = "#{formationService}")
	private FormationServiceInterface formationService;

	@ManagedProperty(value = "#{calendrierService}")
	private CalendrierServiceInterface calendrierService;

	@ManagedProperty(value = "#{entrepriseService}")
	private EntrepriseServiceInterface entrepriseService;

	private Stagiaire stagiaire;
	private String codeStagiaire;
	private String codeFormation;
	private String codeCalendrier;
	private Calendrier calendrier;
	private List<Formation> formations;
	private List<Calendrier> calendriers;
	private int id;
	private StagiaireParEntreprise stagiaireEntreprise;
	private Entreprise entreprise;

	public EntrepriseServiceInterface getEntrepriseService() {
		return entrepriseService;
	}

	public void setEntrepriseService(EntrepriseServiceInterface entrepriseService) {
		this.entrepriseService = entrepriseService;
	}

	public Entreprise getEntreprise() {
		return entreprise;
	}

	public void setEntreprise(Entreprise entreprise) {
		this.entreprise = entreprise;
	}

	public StagiaireEntrepriseService getStagiaireEntrepriseService() {
		return stagiaireEntrepriseService;
	}

	public void setStagiaireEntrepriseService(StagiaireEntrepriseService stagiaireEntrepriseService) {
		this.stagiaireEntrepriseService = stagiaireEntrepriseService;
	}

	public StagiaireParEntreprise getStagiaireEntreprise() {
		return stagiaireEntreprise;
	}

	public void setStagiaireEntreprise(StagiaireParEntreprise stagiaireEntreprise) {
		this.stagiaireEntreprise = stagiaireEntreprise;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCodeCalendrier() {
		return codeCalendrier;
	}

	public void setCodeCalendrier(String codeCalendrier) {
		this.codeCalendrier = codeCalendrier;
	}

	public Calendrier getCalendrier() {
		return calendrier;
	}

	public void setCalendrier(Calendrier calendrier) {
		this.calendrier = calendrier;
	}

	public List<Calendrier> getCalendriers() {
		return calendriers;
	}

	public void setCalendriers(List<Calendrier> calendriers) {
		this.calendriers = calendriers;
	}

	public String getCodeFormation() {
		return codeFormation;
	}

	public void setCodeFormation(String codeFormation) {
		this.codeFormation = codeFormation;
	}

	public List<Formation> getFormations() {
		return formations;
	}

	public void setFormations(List<Formation> formations) {
		this.formations = formations;
	}

	public String getCodeStagiaire() {
		return codeStagiaire;
	}

	public void setCodeStagiaire(String codeStagiaire) {
		this.codeStagiaire = codeStagiaire;
	}

	public Stagiaire getStagiaire() {
		return stagiaire;
	}

	public void setStagiaire(Stagiaire stagiaire) {
		this.stagiaire = stagiaire;
	}


	@PostConstruct
	public void setup() {
		LOGGER.info("FicheStagiaireController setup");
		stagiaire = new Stagiaire();
		HttpSession session = SessionUtils.getSession();
		stagiaireEntreprise = stagiaireEntrepriseService.findByCodeStagiaire(Integer.valueOf(session.getAttribute(SessionUtils.SESSION_ID_STAGIAIRE).toString()));
		stagiaire = stagiaireService.findBycodeStagiaire(
				Integer.valueOf(session.getAttribute(SessionUtils.SESSION_ID_STAGIAIRE).toString()));
		entreprise = entrepriseService.findByCodeEntreprise(4);
		formations = formationService.findAllFormations();
		calendriers = calendrierService.findCalendriersByStagiaire(stagiaire.getCodeStagiaire());
	}

	public FormationServiceInterface getFormationService() {
		return formationService;
	}

	public void setFormationService(FormationServiceInterface formationService) {
		this.formationService = formationService;
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

	public CalendrierServiceInterface getCalendrierService() {
		return calendrierService;
	}

	public void setCalendrierService(CalendrierServiceInterface calendrierService) {
		this.calendrierService = calendrierService;
	}

	public void onItemSelect(SelectEvent event) {
		FacesContext.getCurrentInstance().addMessage(null,
				new FacesMessage("Item Selected", event.getObject().toString()));
	}

	/**
	 * créer calendrier
	 *
	 * @throws IOException
	 */
	public void creerCalendrier() throws IOException {
		FacesContext.getCurrentInstance().getExternalContext().redirect("/eni-calendar/views/creationCalendrier.xhtml");
	}

	/**
	 * Consulter calendrier
	 *
	 * @throws IOException
	 */
	public void consulterCalendrier(Integer id) throws IOException {
		HttpSession session = SessionUtils.getSession();
		session.setAttribute(SessionUtils.SESSION_ID_CALENDRIER1, id);
		FacesContext.getCurrentInstance().getExternalContext()
				.redirect("/eni-calendar/views/consulterCalendrier.xhtml");
	}

	/**
	 * Suppression calendrier
	 *
	 * @throws IOException
	 */
	public void supprimerCalendrier() throws IOException {
		HttpSession session = SessionUtils.getSession();
		session.setAttribute(SessionUtils.SESSION_ID, id);
		calendrier = calendrierService.findOne(id);
		calendrierService.deleteCalendrier(calendrier);
		FacesContext.getCurrentInstance().addMessage("general",
				new FacesMessage(FacesMessage.SEVERITY_INFO, "Calendrier supprimé!", ""));
		FacesContext.getCurrentInstance().getExternalContext().redirect("/eni-calendar/views/ficheStagiaire.xhtml");
	}

	public void preProcessPDF(Object document) throws IOException, BadElementException, DocumentException {
		Document pdf = (Document) document;
		pdf.open();
		pdf.setPageSize(PageSize.A4);
	}
}
