package fr.eni.enicalendar.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import fr.eni.enicalendar.persistence.app.entities.Calendrier;
import fr.eni.enicalendar.persistence.app.entities.ModeleCalendrier;
import fr.eni.enicalendar.persistence.app.entities.Programmation;
import fr.eni.enicalendar.persistence.erp.entities.Cours;
import fr.eni.enicalendar.service.CalendrierServiceInterface;
import fr.eni.enicalendar.service.CoursServiceInterface;
import fr.eni.enicalendar.service.ModeleServiceInterface;
import fr.eni.enicalendar.service.ProgrammationServiceInterface;
import fr.eni.enicalendar.utils.SessionUtils;

@ManagedBean(name = "comparaisonCalendriersController")
@ViewScoped
public class ComparaisonCalendriersController implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private static final Logger LOGGER = LoggerFactory.getLogger(ComparaisonCalendriersController.class);

	@ManagedProperty(value = "#{modeleService}")
	private ModeleServiceInterface modeleService;

	@ManagedProperty(value = "#{calendrierService}")
	private CalendrierServiceInterface calendrierService;

	@ManagedProperty(value = "#{programmationService}")
	private ProgrammationServiceInterface programmationService;

	@ManagedProperty(value = "#{coursService}")
	private CoursServiceInterface coursService;

	private String codeModele;
	private String codeModele2;

	private ModeleCalendrier modele;
	private ModeleCalendrier modele2;

	private Calendrier calendriers;
	private Calendrier calendriers2;

	private List<Cours> listeCours = new ArrayList<>();
	private List<Cours> listeCours2 = new ArrayList<>();

	private List<Programmation> programmations;
	private List<Programmation> programmations2;
	private Cours coursVoulu;

	public Cours getCoursVoulu() {
		return coursVoulu;
	}

	public void setCoursVoulu(Cours coursVoulu) {
		this.coursVoulu = coursVoulu;
	}

	public List<Programmation> getProgrammations() {
		return programmations;
	}

	public void setProgrammations(List<Programmation> programmations) {
		this.programmations = programmations;
	}

	public List<Programmation> getProgrammations2() {
		return programmations2;
	}

	public void setProgrammations2(List<Programmation> programmations2) {
		this.programmations2 = programmations2;
	}

	public List<Cours> getListeCours() {
		return listeCours;
	}

	public void setListeCours(List<Cours> listeCours) {
		this.listeCours = listeCours;
	}

	public List<Cours> getListeCours2() {
		return listeCours2;
	}

	public void setListeCours2(List<Cours> listeCours2) {
		this.listeCours2 = listeCours2;
	}

	public Calendrier getCalendriers() {
		return calendriers;
	}

	public void setCalendriers(Calendrier calendriers) {
		this.calendriers = calendriers;
	}

	public Calendrier getCalendriers2() {
		return calendriers2;
	}

	public void setCalendriers2(Calendrier calendriers2) {
		this.calendriers2 = calendriers2;
	}

	public String getCodeModele2() {
		return codeModele2;
	}

	public void setCodeModele2(String codeModele2) {
		this.codeModele2 = codeModele2;
	}

	public ModeleCalendrier getModele2() {
		return modele2;
	}

	public void setModele2(ModeleCalendrier modele2) {
		this.modele2 = modele2;
	}

	public ModeleServiceInterface getModeleService() {
		return modeleService;
	}

	public void setModeleService(ModeleServiceInterface modeleService) {
		this.modeleService = modeleService;
	}

	public String getCodeModele() {
		return codeModele;
	}

	public void setCodeModele(String codeModele) {
		this.codeModele = codeModele;
	}

	public ModeleCalendrier getModele() {
		return modele;
	}

	public void setModele(ModeleCalendrier modele) {
		this.modele = modele;
	}

	public ProgrammationServiceInterface getProgrammationService() {
		return programmationService;
	}

	public void setProgrammationService(ProgrammationServiceInterface programmationService) {
		this.programmationService = programmationService;
	}

	public CoursServiceInterface getCoursService() {
		return coursService;
	}

	public void setCoursService(CoursServiceInterface coursService) {
		this.coursService = coursService;
	}

	@PostConstruct
	public void setup() {
		LOGGER.info("ComparaisonCalendriersController setup");
		HttpSession session = SessionUtils.getSession();

		// pour celui de gauche
		if (session.getAttribute(SessionUtils.SESSION_TYPE_CALENDRIER1).toString().equals("MODELE")) {
			programmations = programmationService.findProgrammationByModeleCalendrier(
					Integer.valueOf(session.getAttribute(SessionUtils.SESSION_ID_CALENDRIER1).toString()));
		} else {
			programmations = programmationService.findProgrammationByCalendrier(
					Integer.valueOf(session.getAttribute(SessionUtils.SESSION_ID_CALENDRIER1).toString()));
		}
		for (Programmation prog : programmations) {
			coursVoulu = coursService.findCoursById(prog.getIdCoursPlanifieERP());
			listeCours.add(coursVoulu);
		}
		Collections.sort(listeCours, new Comparator<Cours>() {

			@Override
			public int compare(Cours o1, Cours o2) {

				return o1.getDateDebut().compareTo(o2.getDateDebut());

			}

		});

		// pour celui de droite
		if (session.getAttribute(SessionUtils.SESSION_TYPE_CALENDRIER2).toString().equals("MODELE")) {
			programmations2 = programmationService.findProgrammationByModeleCalendrier(
					Integer.valueOf(session.getAttribute(SessionUtils.SESSION_ID_CALENDRIER2).toString()));
		} else {
			programmations2 = programmationService.findProgrammationByCalendrier(
					Integer.valueOf(session.getAttribute(SessionUtils.SESSION_ID_CALENDRIER2).toString()));
		}
		for (Programmation prog : programmations2) {
			coursVoulu = coursService.findCoursById(prog.getIdCoursPlanifieERP());
			listeCours2.add(coursVoulu);
		}
		Collections.sort(listeCours2, new Comparator<Cours>() {

			@Override
			public int compare(Cours o1, Cours o2) {

				return o1.getDateDebut().compareTo(o2.getDateDebut());

			}

		});
	}

	public CalendrierServiceInterface getCalendrierService() {
		return calendrierService;
	}

	public void setCalendrierService(CalendrierServiceInterface calendrierService) {
		this.calendrierService = calendrierService;
	}

	public void recupereCalendriersUn() {
		LOGGER.info("recupereCalendriersUn");
		HttpSession session = (HttpSession) FacesContext.getCurrentInstance().getExternalContext().getSession(false);
		calendriers = calendrierService
				.findOne(Integer.valueOf(session.getAttribute(SessionUtils.SESSION_ID_CALENDRIER1).toString()));
	}

	public void recupereCalendriersDeux() {
		LOGGER.info("recupereCalendriersDeux");
		HttpSession session = (HttpSession) FacesContext.getCurrentInstance().getExternalContext().getSession(false);
		calendriers2 = calendrierService
				.findOne(Integer.valueOf(session.getAttribute(SessionUtils.SESSION_ID_CALENDRIER2).toString()));
	}
}
