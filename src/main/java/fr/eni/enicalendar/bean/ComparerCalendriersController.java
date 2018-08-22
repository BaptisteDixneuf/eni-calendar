package fr.eni.enicalendar.bean;

import fr.eni.enicalendar.persistence.app.entities.Calendrier;
import fr.eni.enicalendar.persistence.app.entities.ModeleCalendrier;
import fr.eni.enicalendar.persistence.erp.entities.Stagiaire;
import fr.eni.enicalendar.service.CalendrierServiceInterface;
import fr.eni.enicalendar.service.ModeleServiceInterface;
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
import java.util.List;

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

	private Stagiaire stagiaire;
	private Stagiaire stagiaire2;
	private String txt;
	private String txt2;
	private String codeStagiaire2;
	private String codeStagiaire;
	private List<Calendrier> calendriers;
	private String codeModele;
	private String codeModele2;
	private ModeleCalendrier modele;
	private ModeleCalendrier modele2;

	public String getTxt() {
		return txt;
	}

	public void setTxt(String txt) {
		this.txt = txt;
	}

	public Stagiaire getStagiaire2() {
		return stagiaire2;
	}

	public void setStagiaire2(Stagiaire stagiaire2) {
		this.stagiaire2 = stagiaire2;
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

	public String getCodeStagiaire2() {
		return codeStagiaire2;
	}

	public void setCodeStagiaire2(String codeStagiaire2) {
		this.codeStagiaire2 = codeStagiaire2;
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
		LOGGER.info("ComparerCalendriersController setup");
		stagiaire = new Stagiaire();
		stagiaire2 = new Stagiaire();
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

	/**
	 * Autocomplete sur le stagiaire
	 */
	public List<Stagiaire> autocompleteText(String query) {
		//enlever l'espace devant la chaine
		query = query.trim();
		//mettre la première lettre du mot en maj (comme en bdd)
		query = query.substring(0,1).toUpperCase() + query.substring(1).toLowerCase();

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
		session.setAttribute(SessionUtils.SESSION_ID_STAGIAIRE, codeStagiaire);
		FacesContext.getCurrentInstance().getExternalContext().redirect("/eni-calendar/views/ficheStagiaire.xhtml");
	}

	public void recupereCalendriersUn(){
		calendriers = calendrierService.findCalendriersByStagiaire(Integer.valueOf(codeStagiaire));
	}

	public void recupereCalendriersDeux(){
		calendriers = calendrierService.findCalendriersByStagiaire(Integer.valueOf(codeStagiaire2));
	}
}
