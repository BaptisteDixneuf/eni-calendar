package fr.eni.enicalendar.bean;

import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;

import org.primefaces.event.SelectEvent;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.lowagie.text.BadElementException;
import com.lowagie.text.Document;
import com.lowagie.text.DocumentException;
import com.lowagie.text.PageSize;

import fr.eni.enicalendar.persistence.app.entities.Calendrier;
import fr.eni.enicalendar.persistence.app.entities.Programmation;
import fr.eni.enicalendar.persistence.erp.entities.Cours;
import fr.eni.enicalendar.persistence.erp.entities.Entreprise;
import fr.eni.enicalendar.persistence.erp.entities.Formation;
import fr.eni.enicalendar.persistence.erp.entities.Stagiaire;
import fr.eni.enicalendar.persistence.erp.entities.StagiaireParEntreprise;
import fr.eni.enicalendar.service.CalendrierServiceInterface;
import fr.eni.enicalendar.service.CoursServiceInterface;
import fr.eni.enicalendar.service.EntrepriseServiceInterface;
import fr.eni.enicalendar.service.FormationServiceInterface;
import fr.eni.enicalendar.service.ProgrammationServiceInterface;
import fr.eni.enicalendar.service.StagiaireServiceInterface;
import fr.eni.enicalendar.service.impl.StagiaireEntrepriseService;
import fr.eni.enicalendar.utils.SessionUtils;

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

	@ManagedProperty(value = "#{programmationService}")
	private ProgrammationServiceInterface programmationService;

	@ManagedProperty(value = "#{coursService}")
	private CoursServiceInterface coursService;

	private Stagiaire stagiaire;
	private String codeStagiaire;
	private String codeFormation;
	private String codeCalendrier;
	private Calendrier calendrier;
	private Formation formation;
	private int id;
	private StagiaireParEntreprise stagiaireEntreprise;
	private Entreprise entreprise;
	private List<Programmation> programmations;
	private List<Cours> listeCours = new ArrayList<>();
	private Cours coursVoulu;
	private Date dateDebut;
	private Date dateFin;

	public Cours getCoursVoulu() {
		return coursVoulu;
	}

	public void setCoursVoulu(Cours coursVoulu) {
		this.coursVoulu = coursVoulu;
	}

	public Date getDateDebut() {
		return dateDebut;
	}

	public void setDateDebut(Date dateDebut) {
		this.dateDebut = dateDebut;
	}

	public Date getDateFin() {
		return dateFin;
	}

	public void setDateFin(Date dateFin) {
		this.dateFin = dateFin;
	}

	public CoursServiceInterface getCoursService() {
		return coursService;
	}

	public void setCoursService(CoursServiceInterface coursService) {
		this.coursService = coursService;
	}

	public List<Cours> getListeCours() {
		return listeCours;
	}

	public void setListeCours(List<Cours> listeCours) {
		this.listeCours = listeCours;
	}

	public ProgrammationServiceInterface getProgrammationService() {
		return programmationService;
	}

	public void setProgrammationService(ProgrammationServiceInterface programmationService) {
		this.programmationService = programmationService;
	}

	public List<Programmation> getProgrammations() {
		return programmations;
	}

	public void setProgrammations(List<Programmation> programmations) {
		this.programmations = programmations;
	}

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
		calendrier = calendrierService
				.findOne(Integer.valueOf(session.getAttribute(SessionUtils.SESSION_ID_CALENDRIER1).toString()));
		programmations = new ArrayList<>();
		programmations.addAll(calendrier.getProgrammations());
		formation = formationService.findByCodeFormation(calendrier.getIdFormationERP());
		stagiaireEntreprise = stagiaireEntrepriseService.findByCodeStagiaire(calendrier.getIdStagiaireERP());
		stagiaire = stagiaireService.findBycodeStagiaire(calendrier.getIdStagiaireERP());
		entreprise = entrepriseService.findByCodeEntreprise(stagiaireEntreprise.getCodeEntreprise());
		int i = 1;
		for (Programmation prog : programmations) {
			coursVoulu = coursService.findCoursById(prog.getIdCoursPlanifieERP());
			if (i == 1) {
				dateDebut = coursVoulu.getDateDebut();

				i++;
			}
			listeCours.add(coursVoulu);
		}
		Collections.sort(listeCours, new Comparator<Cours>() {

			@Override
			public int compare(Cours o1, Cours o2) {

				return o1.getDateDebut().compareTo(o2.getDateDebut());

			}

		});
		if (listeCours != null && !listeCours.isEmpty()) {
			coursVoulu = listeCours.get(listeCours.size() - 1);
			dateFin = coursVoulu.getDateFin();
		} else {
			dateFin = null;
		}
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
