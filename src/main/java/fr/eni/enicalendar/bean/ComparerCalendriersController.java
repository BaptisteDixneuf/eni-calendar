package fr.eni.enicalendar.bean;

import java.io.IOException;
import java.io.Serializable;
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
import fr.eni.enicalendar.persistence.erp.entities.Stagiaire;
import fr.eni.enicalendar.service.CalendrierServiceInterface;
import fr.eni.enicalendar.service.ModeleServiceInterface;
import fr.eni.enicalendar.service.StagiaireServiceInterface;
import fr.eni.enicalendar.utils.SessionUtils;

@ManagedBean(name = "comparerCalendriersController")
@ViewScoped
public class ComparerCalendriersController implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private static final Logger LOGGER = LoggerFactory.getLogger(ComparerCalendriersController.class);

	@ManagedProperty(value = "#{stagiaireService}")
	private StagiaireServiceInterface stagiaireService;

	@ManagedProperty(value = "#{modeleService}")
	private ModeleServiceInterface modeleService;

	@ManagedProperty(value = "#{calendrierService}")
	private CalendrierServiceInterface calendrierService;

	private Stagiaire selectedStagiaire;
	private Stagiaire selectedStagiaire2;

	private String selectedCodeCalendrier;
	private String selectedCodeCalendrier2;

	private String codeModele;
	private String codeModele2;

	private ModeleCalendrier modele;
	private ModeleCalendrier modele2;

	private String txt;
	private String txt2;

	private List<Calendrier> calendriers;
	private List<Calendrier> calendriers2;

	public String getTxt() {
		return txt;
	}

	public void setTxt(String txt) {
		this.txt = txt;
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

	public List<Calendrier> getCalendriers() {
		return calendriers;
	}

	public void setCalendriers(List<Calendrier> calendriers) {
		this.calendriers = calendriers;
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

	public String getTxt2() {
		return txt2;
	}

	public void setTxt2(String txt2) {
		this.txt2 = txt2;
	}

	public String getSelectedCodeCalendrier() {
		return selectedCodeCalendrier;
	}

	public void setSelectedCodeCalendrier(String selectedCodeCalendrier) {
		this.selectedCodeCalendrier = selectedCodeCalendrier;
	}

	public String getSelectedCodeCalendrier2() {
		return selectedCodeCalendrier2;
	}

	public void setSelectedCodeCalendrier2(String selectedCodeCalendrier2) {
		this.selectedCodeCalendrier2 = selectedCodeCalendrier2;
	}

	public Stagiaire getSelectedStagiaire() {
		return selectedStagiaire;
	}

	public void setSelectedStagiaire(Stagiaire selectedStagiaire) {
		this.selectedStagiaire = selectedStagiaire;
	}

	public Stagiaire getSelectedStagiaire2() {
		return selectedStagiaire2;
	}

	public void setSelectedStagiaire2(Stagiaire selectedStagiaire2) {
		this.selectedStagiaire2 = selectedStagiaire2;
	}

	@PostConstruct
	public void setup() {
		LOGGER.info("ComparerCalendriersController setup");
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

	public List<Calendrier> getCalendriers2() {
		return calendriers2;
	}

	public void setCalendriers2(List<Calendrier> calendriers2) {
		this.calendriers2 = calendriers2;
	}

	/**
	 * Autocomplete sur le stagiaire
	 */
	public List<Stagiaire> autocompleteText(String query) {
		// enlever l'espace devant la chaine
		query = query.trim();
		// mettre la première lettre du mot en maj (comme en bdd)
		query = query.substring(0, 1).toUpperCase() + query.substring(1).toLowerCase();

		List<Stagiaire> listeStagiaires = stagiaireService.findByNom(query);
		return listeStagiaires;
	}

	/**
	 * Autocomplete sur le modele
	 */
	public List<ModeleCalendrier> autocompleteModele(String query) {
		List<ModeleCalendrier> liste = modeleService.findByNomCalendrier(query);
		return liste;
	}

	/**
	 * Permet de passer à l'etape constitution calendrier
	 *
	 * @throws IOException
	 */
	public void validationEtape() throws IOException {
		HttpSession session = SessionUtils.getSession();

		if (codeModele != null) {
			session.setAttribute(SessionUtils.SESSION_ID_CALENDRIER1, codeModele);
		} else {
			session.setAttribute(SessionUtils.SESSION_ID_CALENDRIER1, selectedCodeCalendrier);
		}

		if (codeModele2 != null) {
			session.setAttribute(SessionUtils.SESSION_ID_CALENDRIER2, codeModele2);
		} else {
			session.setAttribute(SessionUtils.SESSION_ID_CALENDRIER2, selectedCodeCalendrier2);
		}

		FacesContext.getCurrentInstance().getExternalContext().redirect("/eni-calendar/views/comparaisonCalendriers.xhtml");
	}

	public void recupereCalendriersUn() {
		LOGGER.info("recupereCalendriersUn");
		calendriers = calendrierService.findCalendriersByStagiaire(selectedStagiaire.getCodeStagiaire());
	}

	public void recupereCalendriersDeux() {
		LOGGER.info("recupereCalendriersDeux");
		calendriers2 = calendrierService.findCalendriersByStagiaire(selectedStagiaire2.getCodeStagiaire());
	}
}
