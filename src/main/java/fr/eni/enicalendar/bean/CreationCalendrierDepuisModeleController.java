package fr.eni.enicalendar.bean;

import java.io.IOException;
import java.io.Serializable;
import java.util.Date;
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
import fr.eni.enicalendar.persistence.app.entities.Contrainte;
import fr.eni.enicalendar.persistence.app.entities.ContrainteModuleIndependant;
import fr.eni.enicalendar.persistence.app.entities.Dispense;
import fr.eni.enicalendar.persistence.app.entities.ModeleCalendrier;
import fr.eni.enicalendar.persistence.app.entities.Programmation;
import fr.eni.enicalendar.persistence.erp.entities.Formation;
import fr.eni.enicalendar.persistence.erp.entities.Lieu;
import fr.eni.enicalendar.persistence.erp.entities.Stagiaire;
import fr.eni.enicalendar.persistence.erp.entities.StagiaireParEntreprise;
import fr.eni.enicalendar.service.CalendrierServiceInterface;
import fr.eni.enicalendar.service.EntrepriseServiceInterface;
import fr.eni.enicalendar.service.EtatCalendrierServiceInterface;
import fr.eni.enicalendar.service.FormationServiceInterface;
import fr.eni.enicalendar.service.LieuServiceInterface;
import fr.eni.enicalendar.service.ModeleServiceInterface;
import fr.eni.enicalendar.service.StagiaireServiceInterface;
import fr.eni.enicalendar.service.impl.StagiaireEntrepriseService;
import fr.eni.enicalendar.utils.EtatCalendrierEnum;
import fr.eni.enicalendar.utils.SessionUtils;

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

	@ManagedProperty(value = "#{formationService}")
	private FormationServiceInterface formationService;

	@ManagedProperty(value = "#{stagiaireEntrepriseService}")
	private StagiaireEntrepriseService stagiaireEntrepriseService;

	@ManagedProperty(value = "#{calendrierService}")
	private CalendrierServiceInterface calendrierService;

	@ManagedProperty(value = "#{entrepriseService}")
	private EntrepriseServiceInterface entrepriseService;

	@ManagedProperty(value = "#{etatCalendrierService}")
	private EtatCalendrierServiceInterface etatCalendrierService;

	private Stagiaire stagiaire;
	private StagiaireParEntreprise stagiaireEntreprise;
	private Date dateDebut;
	private Date dateDebutMax;
	private Date dateFin;
	private Date dateFinMin;
	private String option;
	private List<Lieu> lieux;
	private String txt2;
	private String codeLieuFormation;
	private String codeFormation;
	private List<Formation> formations;
	private ModeleCalendrier modele;

	private Calendrier calendrier;

	@PostConstruct
	public void setup() {
		LOGGER.info("CreationCalendrierDepuisModeleController setup");
		HttpSession session = SessionUtils.getSession();
		stagiaireEntreprise = stagiaireEntrepriseService.findByCodeStagiaire(
				Integer.valueOf(session.getAttribute(SessionUtils.SESSION_ID_STAGIAIRE).toString()));
		stagiaire = stagiaireService.findBycodeStagiaire(
				Integer.valueOf(session.getAttribute(SessionUtils.SESSION_ID_STAGIAIRE).toString()));
		lieux = lieuService.findAllLieux();
		formations = formationService.findAllFormations();

	}

	/**
	 * @param lieuService
	 *            the stagiaireService to set
	 */
	public void setLieuService(LieuServiceInterface lieuService) {
		this.lieuService = lieuService;
	}

	/**
	 * Autocomplete sur le modele
	 */
	public List<ModeleCalendrier> autocompleteText(String query) {
		List<ModeleCalendrier> liste = modeleService.findByNomCalendrier(query);
		return liste;
	}

	public void recupereCalendriersUn() {
		codeFormation = modele.getIdFormationERP();
		codeLieuFormation = modele.getIdLieuFormationERP().toString();
		dateDebutMax = modele.getDateDebutMax();
		dateFinMin = modele.getDateFinMax();
	}

	/**
	 * Permet retour etape précédente
	 *
	 * @throws IOException
	 */
	public void retour() throws IOException {
		FacesContext.getCurrentInstance().getExternalContext().redirect("/eni-calendar/views/creationCalendrier.xhtml");
	}

	/**
	 * Permet de passer à l'etape constitution calendrier
	 *
	 * @throws IOException
	 */
	public void validationEtape() throws IOException {

		if (calendrier == null) {
			calendrier = new Calendrier();
			calendrier.setDateCreation(new Date());
		}
		calendrier.setNomCalendrier(modele.getNomCalendrier());
		calendrier.setDateModification(new Date());
		calendrier.setDateDebutMax(dateDebut);
		calendrier.setDateFinMax(dateFin);
		calendrier.setIdLieuFormationERP(Integer.valueOf(codeLieuFormation.trim()));
		calendrier.setIdFormationERP(codeFormation);
		calendrier.setEtatCalendrier(etatCalendrierService.findByLibelle(EtatCalendrierEnum.ACTIF.toString()));

		calendrier.setIdStagiaireERP(stagiaire.getCodeStagiaire());
		calendrier.setIdEntrepriseERP(stagiaireEntreprise.getCodeEntreprise());

		for (Contrainte contrainte : modele.getContraintes()) {
			contrainte.setId(null);
			contrainte.setIdModeleCalendrier(null);
			contrainte.setIdCalendrier(calendrier.getId());
		}

		for (Dispense dispenses : modele.getDispenses()) {
			dispenses.setId(null);
			dispenses.setIdModeleCalendrier(null);
			dispenses.setIdCalendrier(calendrier.getId());
		}

		for (ContrainteModuleIndependant modulesInde : modele.getContrainteModuleIndependant()) {
			modulesInde.setId(null);
			modulesInde.setIdModeleCalendrier(null);
			modulesInde.setIdCalendrier(calendrier.getId());
		}

		for (Programmation programmation : modele.getProgrammations()) {
			programmation.setId(null);
			programmation.setIdModeleCalendrier(null);
			programmation.setIdCalendrier(calendrier.getId());
		}

		calendrier.setContraintes(modele.getContraintes());
		calendrier.setDispenses(modele.getDispenses());
		calendrier.setContrainteModuleIndependant(modele.getContrainteModuleIndependant());
		calendrier.setProgrammations(modele.getProgrammations());
		calendrier = calendrierService.save(calendrier);

		HttpSession session = SessionUtils.getSession();
		session.setAttribute(SessionUtils.SESSION_TYPE_ACTION, "ModificationCalendrier");
		session.setAttribute(SessionUtils.SESSION_ID, calendrier.getId());
		FacesContext.getCurrentInstance().getExternalContext().redirect("/eni-calendar/views/modeleVide.xhtml");
	}

	public StagiaireServiceInterface getStagiaireService() {
		return stagiaireService;
	}

	public void setStagiaireService(StagiaireServiceInterface stagiaireService) {
		this.stagiaireService = stagiaireService;
	}

	public ModeleServiceInterface getModeleService() {
		return modeleService;
	}

	public void setModeleService(ModeleServiceInterface modeleService) {
		this.modeleService = modeleService;
	}

	public FormationServiceInterface getFormationService() {
		return formationService;
	}

	public void setFormationService(FormationServiceInterface formationService) {
		this.formationService = formationService;
	}

	public Stagiaire getStagiaire() {
		return stagiaire;
	}

	public void setStagiaire(Stagiaire stagiaire) {
		this.stagiaire = stagiaire;
	}

	public Date getDateDebut() {
		return dateDebut;
	}

	public void setDateDebut(Date dateDebut) {
		this.dateDebut = dateDebut;
	}

	public Date getDateDebutMax() {
		return dateDebutMax;
	}

	public void setDateDebutMax(Date dateDebutMax) {
		this.dateDebutMax = dateDebutMax;
	}

	public Date getDateFin() {
		return dateFin;
	}

	public void setDateFin(Date dateFin) {
		this.dateFin = dateFin;
	}

	public Date getDateFinMin() {
		return dateFinMin;
	}

	public void setDateFinMin(Date dateFinMin) {
		this.dateFinMin = dateFinMin;
	}

	public String getOption() {
		return option;
	}

	public void setOption(String option) {
		this.option = option;
	}

	public List<Lieu> getLieux() {
		return lieux;
	}

	public void setLieux(List<Lieu> lieux) {
		this.lieux = lieux;
	}

	public String getTxt2() {
		return txt2;
	}

	public void setTxt2(String txt2) {
		this.txt2 = txt2;
	}

	public String getCodeLieuFormation() {
		return codeLieuFormation;
	}

	public void setCodeLieuFormation(String codeLieuFormation) {
		this.codeLieuFormation = codeLieuFormation;
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

	public ModeleCalendrier getModele() {
		return modele;
	}

	public void setModele(ModeleCalendrier modele) {
		this.modele = modele;
	}

	public Calendrier getCalendrier() {
		return calendrier;
	}

	public void setCalendrier(Calendrier calendrier) {
		this.calendrier = calendrier;
	}

	public LieuServiceInterface getLieuService() {
		return lieuService;
	}

	public StagiaireEntrepriseService getStagiaireEntrepriseService() {
		return stagiaireEntrepriseService;
	}

	public void setStagiaireEntrepriseService(StagiaireEntrepriseService stagiaireEntrepriseService) {
		this.stagiaireEntrepriseService = stagiaireEntrepriseService;
	}

	public CalendrierServiceInterface getCalendrierService() {
		return calendrierService;
	}

	public void setCalendrierService(CalendrierServiceInterface calendrierService) {
		this.calendrierService = calendrierService;
	}

	public EntrepriseServiceInterface getEntrepriseService() {
		return entrepriseService;
	}

	public void setEntrepriseService(EntrepriseServiceInterface entrepriseService) {
		this.entrepriseService = entrepriseService;
	}

	public EtatCalendrierServiceInterface getEtatCalendrierService() {
		return etatCalendrierService;
	}

	public void setEtatCalendrierService(EtatCalendrierServiceInterface etatCalendrierService) {
		this.etatCalendrierService = etatCalendrierService;
	}

	public StagiaireParEntreprise getStagiaireEntreprise() {
		return stagiaireEntreprise;
	}

	public void setStagiaireEntreprise(StagiaireParEntreprise stagiaireEntreprise) {
		this.stagiaireEntreprise = stagiaireEntreprise;
	}

}
