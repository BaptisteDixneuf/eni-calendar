package fr.eni.enicalendar.bean;

import com.lowagie.text.BadElementException;
import com.lowagie.text.Document;
import com.lowagie.text.DocumentException;
import com.lowagie.text.PageSize;
import fr.eni.enicalendar.persistence.app.entities.Calendrier;
import fr.eni.enicalendar.persistence.erp.entities.Entreprise;
import fr.eni.enicalendar.persistence.erp.entities.Formation;
import fr.eni.enicalendar.persistence.erp.entities.Stagiaire;
import fr.eni.enicalendar.persistence.erp.entities.StagiaireParEntreprise;
import fr.eni.enicalendar.service.CalendrierServiceInterface;
import fr.eni.enicalendar.service.EntrepriseServiceInterface;
import fr.eni.enicalendar.service.FormationServiceInterface;
import fr.eni.enicalendar.service.StagiaireServiceInterface;
import fr.eni.enicalendar.service.impl.StagiaireEntrepriseService;
import fr.eni.enicalendar.utils.SessionUtils;
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

@ManagedBean(name = "consulterCalendrierController")
@ViewScoped
public class ConsulterCalendrierController implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private static final Logger LOGGER = LoggerFactory.getLogger(ConsulterCalendrierController.class);

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
	private Formation formation;
	private int id;
	private StagiaireParEntreprise stagiaireEntreprise;
	private Entreprise entreprise;

	public Formation getFormation() {
		return formation;
	}

	public void setFormation(Formation formation) {
		this.formation = formation;
	}

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

	public String getCodeFormation() {
		return codeFormation;
	}

	public void setCodeFormation(String codeFormation) {
		this.codeFormation = codeFormation;
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
		LOGGER.info("ConsulterCalendrierController setup");
		stagiaire = new Stagiaire();
		HttpSession session = SessionUtils.getSession();
		stagiaireEntreprise = stagiaireEntrepriseService.findByCodeStagiaire(Integer.valueOf(session.getAttribute(SessionUtils.SESSION_ID_STAGIAIRE).toString()));
		stagiaire = stagiaireService.findBycodeStagiaire(
				Integer.valueOf(session.getAttribute(SessionUtils.SESSION_ID_STAGIAIRE).toString()));
		entreprise = entrepriseService.findByCodeEntreprise(4);
		formation = formationService.findByCode('17CDI');
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


	public void preProcessPDF(Object document) throws IOException, BadElementException, DocumentException {
		Document pdf = (Document) document;
		pdf.open();
		pdf.setPageSize(PageSize.A4);
	}
}
