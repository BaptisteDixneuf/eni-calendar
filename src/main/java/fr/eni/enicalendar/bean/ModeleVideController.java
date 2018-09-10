package fr.eni.enicalendar.bean;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.joda.time.DateTime;
import org.joda.time.Interval;
import org.primefaces.event.DragDropEvent;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import fr.eni.enicalendar.exceptions.FonctionnelException;
import fr.eni.enicalendar.persistence.app.entities.Calendrier;
import fr.eni.enicalendar.persistence.app.entities.Contrainte;
import fr.eni.enicalendar.persistence.app.entities.ContrainteModuleIndependant;
import fr.eni.enicalendar.persistence.app.entities.Dispense;
import fr.eni.enicalendar.persistence.app.entities.ModeleCalendrier;
import fr.eni.enicalendar.persistence.app.entities.ModuleIndependant;
import fr.eni.enicalendar.persistence.app.entities.Programmation;
import fr.eni.enicalendar.persistence.app.entities.TypeContrainte;
import fr.eni.enicalendar.persistence.erp.entities.Cours;
import fr.eni.enicalendar.persistence.erp.entities.Formation;
import fr.eni.enicalendar.persistence.erp.entities.Lieu;
import fr.eni.enicalendar.persistence.erp.entities.Module;
import fr.eni.enicalendar.persistence.erp.entities.Stagiaire;
import fr.eni.enicalendar.persistence.erp.entities.StagiaireParEntreprise;
import fr.eni.enicalendar.service.CalendrierServiceInterface;
import fr.eni.enicalendar.service.CoursServiceInterface;
import fr.eni.enicalendar.service.EtatCalendrierServiceInterface;
import fr.eni.enicalendar.service.FormationServiceInterface;
import fr.eni.enicalendar.service.LieuServiceInterface;
import fr.eni.enicalendar.service.ModeleCalendrierServiceInterface;
import fr.eni.enicalendar.service.ModuleIndependantsServiceInterface;
import fr.eni.enicalendar.service.ModuleServiceInterface;
import fr.eni.enicalendar.service.ProgrammationServiceInterface;
import fr.eni.enicalendar.service.StagiaireServiceInterface;
import fr.eni.enicalendar.service.TypeContrainteServiceInterface;
import fr.eni.enicalendar.service.impl.StagiaireEntrepriseService;
import fr.eni.enicalendar.utils.EtatCalendrierEnum;
import fr.eni.enicalendar.utils.SessionUtils;
import fr.eni.enicalendar.utils.TypeContrainteEnum;
import fr.eni.enicalendar.viewElement.AutreCours;
import fr.eni.enicalendar.viewElement.Contraintes;
import fr.eni.enicalendar.viewElement.Dispenses;
import fr.eni.enicalendar.viewElement.ElementCalendrier;
import fr.eni.enicalendar.viewElement.ElementCalendrierType;
import fr.eni.enicalendar.viewElement.ModuleIndependants;

@ManagedBean(name = "modeleVideController")
@ViewScoped
public class ModeleVideController implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private static final Logger LOGGER = LoggerFactory.getLogger(ModeleVideController.class);

	@ManagedProperty(value = "#{coursService}")
	private CoursServiceInterface coursService;

	@ManagedProperty(value = "#{modeleCalendrierService}")
	private ModeleCalendrierServiceInterface modeleCalendrierService;

	@ManagedProperty(value = "#{calendrierService}")
	private CalendrierServiceInterface calendrierService;

	@ManagedProperty(value = "#{programmationService}")
	private ProgrammationServiceInterface programmationService;

	@ManagedProperty(value = "#{lieuService}")
	private LieuServiceInterface lieuService;

	@ManagedProperty(value = "#{formationService}")
	private FormationServiceInterface formationService;

	@ManagedProperty(value = "#{moduleIndependantsService}")
	private ModuleIndependantsServiceInterface moduleIndependantsService;

	@ManagedProperty(value = "#{moduleService}")
	private ModuleServiceInterface moduleService;

	@ManagedProperty(value = "#{typeContrainteService}")
	private TypeContrainteServiceInterface typeContrainteService;

	@ManagedProperty(value = "#{etatCalendrierService}")
	private EtatCalendrierServiceInterface etatCalendrierService;

	@ManagedProperty(value = "#{stagiaireService}")
	private StagiaireServiceInterface stagiaireService;

	@ManagedProperty(value = "#{stagiaireEntrepriseService}")
	private StagiaireEntrepriseService stagiaireEntrepriseService;

	private List<ElementCalendrier> availableElementCalendrier;

	private List<ElementCalendrier> droppedElementCalendrier;

	private ElementCalendrier selectedElementCalendrier;

	/** Entité de sauvegarde du modèle du calendrier */
	private ModeleCalendrier modeleCalendrier;

	/**
	 * Entité de sauvegarde du calendrier
	 */
	private Calendrier calendrier;

	/** Liste des cours disponibles pour cette formation */
	private List<Cours> coursDisponible = new ArrayList<>();

	/** Liste des cours disponibles pour l'onglet "Autres cours" */
	private List<Cours> ensembleCours = new ArrayList<>();

	/**
	 * Pré-formulaire
	 */
	private String codeFormation;
	private Formation selectedFormation;
	private List<Formation> formations;
	private List<Lieu> lieux;
	private String codeLieuFormation;
	private Lieu selectedLieu;
	private Date dateDebut;
	private Date dateFin;
	private boolean preFormulaireValide = false;

	/* Contraintes */
	private Contraintes contraintesViewElement;
	private Dispenses dispensesViewElement;
	private ModuleIndependants moduleIndependantsViewElement;
	private AutreCours autreCoursViewElement;

	/**
	 * Format de date en fonction de la locale
	 */
	private SimpleDateFormat sdfDate;

	/**
	 * Le nom du calendrier
	 */
	private String nomCalendrier;

	private boolean isCalendrier;

	private StagiaireParEntreprise stagiaireEntreprise;
	private Stagiaire stagiaire;

	@PostConstruct
	public void setup() {
		LOGGER.info("CoursController setup");

		try {
			sdfDate = new SimpleDateFormat("dd-MM-yyyy");
			droppedElementCalendrier = new ArrayList<ElementCalendrier>();

			// On récupère les lieux et formations
			lieux = lieuService.findAllLieux();
			formations = formationService.findAllFormations();
			// FIXME : problème de performance
			// ensembleCours = coursService.findAllCours();

			contraintesViewElement = new Contraintes();
			dispensesViewElement = new Dispenses();
			moduleIndependantsViewElement = new ModuleIndependants();
			autreCoursViewElement = new AutreCours();
			chargementAncienneDonnees();

		} catch (FonctionnelException e) {
			LOGGER.error(e.getMessage());
		}

	}

	/**
	 * Dans le cas d'une modification, on recharge les données
	 * 
	 * @throws FonctionnelException
	 */
	public void chargementAncienneDonnees() throws FonctionnelException {
		// On préremplie la colonne "Programmation" de la vue avec les données
		// précédements enregistrés

		if (SessionUtils.getAction() != null && SessionUtils.getAction().equals("ModificationModele")
				&& SessionUtils.getId() != null) {
			chargementDonneesModificationModele();
		}

		if (SessionUtils.getAction() != null && SessionUtils.getAction().equals("CreationCalendrier")) {
			chargementDonneesCreationCalendrier();
		}

		if (SessionUtils.getAction() != null && SessionUtils.getAction().equals("ModificationCalendrier")
				&& SessionUtils.getId() != null) {
			isCalendrier = true;
			chargementDonneesModificationCalendrier();
		}
		calculOverlap();

	}

	/**
	 * Charge les données en cas de modification modèle
	 * 
	 * @throws FonctionnelException
	 */
	private void chargementDonneesModificationModele() throws FonctionnelException {
		Integer idModeleCalendrier = Integer.valueOf(SessionUtils.getId());
		modeleCalendrier = modeleCalendrierService.findById(idModeleCalendrier);
		selectedFormation = formationService.findByCodeFormation(String.valueOf(modeleCalendrier.getIdFormationERP()));
		codeFormation = selectedFormation.getCodeFormation();
		selectedLieu = lieuService.findByCodeLieu(modeleCalendrier.getIdLieuFormationERP());
		codeLieuFormation = String.valueOf(selectedLieu.getCodeLieu());
		dateDebut = modeleCalendrier.getDateDebutMax();
		nomCalendrier = modeleCalendrier.getNomCalendrier();
		preFormulaireValide = true;
		chargermentDonnees();

		// On charge les éléments programmées
		List<ElementCalendrier> droppedElementCalendrierExistant = new ArrayList<>();
		for (Programmation programmation : modeleCalendrier.getProgrammations()) {
			ElementCalendrier element = convertProgrammationToElementCalendrier(programmation);
			droppedElementCalendrierExistant.add(element);
			droppedElementCalendrier.add(element);
			elementDeplaceDansProgrammation(element);
		}

		Collections.sort(droppedElementCalendrier, new Comparator<ElementCalendrier>() {
			public int compare(ElementCalendrier m1, ElementCalendrier m2) {
				return m1.getDateDebut().compareTo(m2.getDateFin());
			}
		});

		// On charge les dispense
		dispensesViewElement.setListDispenses(new ArrayList<>());
		for (Dispense dispense : modeleCalendrier.getDispenses()) {
			Module module = moduleService.findModuleById(dispense.getIdModuleERP());
			dispense.setLibelle(module.getLibelle());
			dispensesViewElement.getListDispenses().add(dispense);
		}

		// On charge les modules indépendants
		moduleIndependantsViewElement.setListModuleIndependants(new ArrayList<>());
		for (ContrainteModuleIndependant contrainteModuleIndependant : modeleCalendrier
				.getContrainteModuleIndependant()) {
			ModuleIndependant moduleIndependant = moduleIndependantsService
					.findById(contrainteModuleIndependant.getIdModuleIndependant());
			moduleIndependantsViewElement.getListModuleIndependants().add(moduleIndependant);
		}

		// On charge les contraintes
		contraintesViewElement.setListPeriodeFaibleActiviteEntreprise(new ArrayList<>());
		contraintesViewElement.setListPeriodeForteActiviteEntreprise(new ArrayList<>());
		contraintesViewElement.setListPeriodeNonDisponibiliteStagiaire(new ArrayList<>());
		for (Contrainte contrainte : modeleCalendrier.getContraintes()) {
			if (TypeContrainteEnum.SEMAINE_AFFILEE_ENTREPRISE.toString()
					.equals(contrainte.getTypeContrainte().getLibelle())) {
				contraintesViewElement.setSemaineAffileeEntreprise(Boolean.TRUE);
				contraintesViewElement.setSemaineAffileeEntrepriseNombre(contrainte.getNombreDeSemaines());
			}
			if (TypeContrainteEnum.SEMAINE_AFFILEE_FORMATION.toString()
					.equals(contrainte.getTypeContrainte().getLibelle())) {
				contraintesViewElement.setSemaineAffileeFormation(Boolean.TRUE);
				contraintesViewElement.setSemaineAffileeFormationNombre(contrainte.getNombreDeSemaines());
			}
			if (TypeContrainteEnum.FORTE_ACTIVITE_ENTREPRISE.toString()
					.equals(contrainte.getTypeContrainte().getLibelle())) {
				contraintesViewElement.setPeriodeForteActiviteEntreprise(Boolean.TRUE);
				contraintesViewElement.getListPeriodeForteActiviteEntreprise().add(contrainte);
			}
			if (TypeContrainteEnum.FAIBLE_ACTIVITE_ENTREPRISE.toString()
					.equals(contrainte.getTypeContrainte().getLibelle())) {
				contraintesViewElement.setPeriodeFaibleActiviteEntreprise(Boolean.TRUE);
				contraintesViewElement.getListPeriodeFaibleActiviteEntreprise().add(contrainte);
			}
			if (TypeContrainteEnum.NON_DISPONIBILITE.toString().equals(contrainte.getTypeContrainte().getLibelle())) {
				contraintesViewElement.setPeriodeNonDisponibiliteStagiaire(Boolean.TRUE);
				contraintesViewElement.getListPeriodeNonDisponibiliteStagiaire().add(contrainte);
			}
		}
	}

	/**
	 * Charge les données en cas de modification calendrier
	 * 
	 * @throws FonctionnelException
	 */
	private void chargementDonneesModificationCalendrier() throws FonctionnelException {
		Integer idCalendrier = Integer.valueOf(SessionUtils.getId());

		calendrier = calendrierService.findOne(idCalendrier);

		stagiaire = stagiaireService.findBycodeStagiaire(calendrier.getIdStagiaireERP());
		stagiaireEntreprise = stagiaireEntrepriseService.findByCodeStagiaire(stagiaire.getCodeStagiaire());
		dateFin = calendrier.getDateFinMax();

		selectedFormation = formationService.findByCodeFormation(String.valueOf(calendrier.getIdFormationERP()));
		codeFormation = selectedFormation.getCodeFormation();
		selectedLieu = lieuService.findByCodeLieu(calendrier.getIdLieuFormationERP());
		codeLieuFormation = String.valueOf(selectedLieu.getCodeLieu());
		dateDebut = calendrier.getDateDebutMax();
		nomCalendrier = calendrier.getNomCalendrier();
		preFormulaireValide = true;
		chargermentDonnees();

		// On charge les éléments programmées
		List<ElementCalendrier> droppedElementCalendrierExistant = new ArrayList<>();
		for (Programmation programmation : calendrier.getProgrammations()) {
			ElementCalendrier element = convertProgrammationToElementCalendrier(programmation);
			droppedElementCalendrierExistant.add(element);
			droppedElementCalendrier.add(element);
			elementDeplaceDansProgrammation(element);
		}

		Collections.sort(droppedElementCalendrier, new Comparator<ElementCalendrier>() {
			public int compare(ElementCalendrier m1, ElementCalendrier m2) {
				return m1.getDateDebut().compareTo(m2.getDateFin());
			}
		});

		// On charge les dispense
		dispensesViewElement.setListDispenses(new ArrayList<>());
		for (Dispense dispense : calendrier.getDispenses()) {
			Module module = moduleService.findModuleById(dispense.getIdModuleERP());
			dispense.setLibelle(module.getLibelle());
			dispensesViewElement.getListDispenses().add(dispense);
		}

		// On charge les modules indépendants
		moduleIndependantsViewElement.setListModuleIndependants(new ArrayList<>());
		for (ContrainteModuleIndependant contrainteModuleIndependant : calendrier.getContrainteModuleIndependant()) {
			ModuleIndependant moduleIndependant = moduleIndependantsService
					.findById(contrainteModuleIndependant.getIdModuleIndependant());
			moduleIndependantsViewElement.getListModuleIndependants().add(moduleIndependant);
		}

		// On charge les contraintes
		contraintesViewElement.setListPeriodeFaibleActiviteEntreprise(new ArrayList<>());
		contraintesViewElement.setListPeriodeForteActiviteEntreprise(new ArrayList<>());
		contraintesViewElement.setListPeriodeNonDisponibiliteStagiaire(new ArrayList<>());
		for (Contrainte contrainte : calendrier.getContraintes()) {
			if (TypeContrainteEnum.SEMAINE_AFFILEE_ENTREPRISE.toString()
					.equals(contrainte.getTypeContrainte().getLibelle())) {
				contraintesViewElement.setSemaineAffileeEntreprise(Boolean.TRUE);
				contraintesViewElement.setSemaineAffileeEntrepriseNombre(contrainte.getNombreDeSemaines());
			}
			if (TypeContrainteEnum.SEMAINE_AFFILEE_FORMATION.toString()
					.equals(contrainte.getTypeContrainte().getLibelle())) {
				contraintesViewElement.setSemaineAffileeFormation(Boolean.TRUE);
				contraintesViewElement.setSemaineAffileeFormationNombre(contrainte.getNombreDeSemaines());
			}
			if (TypeContrainteEnum.FORTE_ACTIVITE_ENTREPRISE.toString()
					.equals(contrainte.getTypeContrainte().getLibelle())) {
				contraintesViewElement.setPeriodeForteActiviteEntreprise(Boolean.TRUE);
				contraintesViewElement.getListPeriodeForteActiviteEntreprise().add(contrainte);
			}
			if (TypeContrainteEnum.FAIBLE_ACTIVITE_ENTREPRISE.toString()
					.equals(contrainte.getTypeContrainte().getLibelle())) {
				contraintesViewElement.setPeriodeFaibleActiviteEntreprise(Boolean.TRUE);
				contraintesViewElement.getListPeriodeFaibleActiviteEntreprise().add(contrainte);
			}
			if (TypeContrainteEnum.NON_DISPONIBILITE.toString().equals(contrainte.getTypeContrainte().getLibelle())) {
				contraintesViewElement.setPeriodeNonDisponibiliteStagiaire(Boolean.TRUE);
				contraintesViewElement.getListPeriodeNonDisponibiliteStagiaire().add(contrainte);
			}
		}
	}

	public void chargementDonneesCreationCalendrier() throws FonctionnelException {
		HttpSession session = SessionUtils.getSession();
		codeFormation = session.getAttribute(SessionUtils.SESSION_FORMATION).toString();
		selectedFormation = formationService.findByCodeFormation(codeFormation);
		codeLieuFormation = session.getAttribute(SessionUtils.SESSION_LIEU).toString();
		selectedLieu = lieuService.findByCodeLieu(Integer.valueOf(codeLieuFormation));
		dateDebut = (Date) session.getAttribute(SessionUtils.SESSION_DATEDEBUT);
		dateFin = (Date) session.getAttribute(SessionUtils.SESSION_DATEFIN);
		stagiaireEntreprise = stagiaireEntrepriseService.findByCodeStagiaire(
				Integer.valueOf(session.getAttribute(SessionUtils.SESSION_ID_STAGIAIRE).toString()));
		stagiaire = stagiaireService.findBycodeStagiaire(
				Integer.valueOf(session.getAttribute(SessionUtils.SESSION_ID_STAGIAIRE).toString()));
		preFormulaireValide = true;
		isCalendrier = true;
		chargermentDonnees();
	}

	/**
	 * Méthode appelé lorsqu'on déplace un élement de calendrier d'une colonne à une
	 * autre
	 * 
	 * @param ddEvent
	 */
	public void onElementCalendrierDrop(DragDropEvent ddEvent) {
		ElementCalendrier elementDeplace = ((ElementCalendrier) ddEvent.getData());
		droppedElementCalendrier.add(elementDeplace);
		elementDeplaceDansProgrammation(elementDeplace);
		calculOverlap();
	}

	private void calculOverlap() {
		if (availableElementCalendrier != null && droppedElementCalendrier != null) {
			for (ElementCalendrier elementCalendrier : availableElementCalendrier) {
				for (ElementCalendrier dropped : droppedElementCalendrier) {
					Interval interval = new Interval(new DateTime(elementCalendrier.getDateDebut()),
							new DateTime(elementCalendrier.getDateFin()));
					Interval interval2 = new Interval(new DateTime(dropped.getDateDebut()),
							new DateTime(dropped.getDateFin()));
					elementCalendrier.setOverlap(interval.overlaps(interval2));
				}
			}
		}
	}

	/**
	 * Convertion d'objet Cours vers ElementCalendrier
	 * 
	 * @param cours
	 * @return
	 */
	private ElementCalendrier convertCoursToElementCalendrier(Cours cours) {
		ElementCalendrier element = new ElementCalendrier();
		element.setId(cours.getId());
		element.setLibelle(cours.getModule().getLibelle());
		element.setDateDebut(cours.getDateDebut());
		element.setDateFin(cours.getDateFin());
		element.setType(ElementCalendrierType.CALENDRIER);
		element.setIdModule(cours.getIdModule());
		element.setModuleProgramme(Boolean.FALSE);
		return element;
	}

	/**
	 * Convertion d'un objet Programmation vers ElementCalendrier
	 * 
	 * @throws FonctionnelException
	 */
	private ElementCalendrier convertProgrammationToElementCalendrier(Programmation programmation)
			throws FonctionnelException {
		ElementCalendrier element = new ElementCalendrier();
		if (programmation.getIdCoursPlanifieERP() != null) {

			Cours coursTrouve = null;
			for (Cours coursElement : coursDisponible) {
				if (programmation.getIdCoursPlanifieERP().equals(coursElement.getId())) {
					coursTrouve = coursElement;
				}
			}
			if (coursTrouve == null) {
				throw new FonctionnelException("Errreur lors de la récupération du modèle");
			} else {
				element.setId(coursTrouve.getId());
				element.setLibelle(coursTrouve.getModule().getLibelle());
				element.setDateDebut(coursTrouve.getDateDebut());
				element.setDateFin(coursTrouve.getDateFin());
				element.setType(ElementCalendrierType.CALENDRIER);
				element.setIdModule(coursTrouve.getIdModule());
				element.setModuleProgramme(Boolean.TRUE);
			}
		} else {
			LOGGER.error("TODO: a implémenter");
		}
		return element;
	}

	/**
	 * Méthode d'enregistrement
	 */
	public void save() {
		LOGGER.info("Début de l'enregistrement");

		if (isCalendrier) {
			if (calendrier == null) {
				calendrier = new Calendrier();
				calendrier.setDateCreation(new Date());
			}
			calendrier.setNomCalendrier(nomCalendrier);
			calendrier.setDateModification(new Date());
			calendrier.setDateDebutMax(dateDebut);
			calendrier.setDateFinMax(dateFin);
			calendrier.setIdLieuFormationERP(Integer.valueOf(codeLieuFormation.trim()));
			calendrier.setIdFormationERP(codeFormation);
			calendrier.setEtatCalendrier(etatCalendrierService.findByLibelle(EtatCalendrierEnum.ACTIF.toString()));

			calendrier.setIdStagiaireERP(stagiaire.getCodeStagiaire());
			calendrier.setIdEntrepriseERP(stagiaireEntreprise.getCodeEntreprise());

			List<Programmation> listesProgramation = new ArrayList<>();
			for (ElementCalendrier elementCalendrier : droppedElementCalendrier) {
				Programmation programmation = new Programmation();
				programmation.setIdCalendrier(calendrier.getId());
				programmation.setIdCoursPlanifieERP(elementCalendrier.getId());
				listesProgramation.add(programmation);
			}
			Set<Programmation> setlistesProgramation = new HashSet<Programmation>(listesProgramation);
			calendrier.setProgrammations(setlistesProgramation);
			calendrier = calendrierService.save(calendrier);
			FacesContext context = FacesContext.getCurrentInstance();
			context.getExternalContext().getFlash().setKeepMessages(true);
			context.addMessage("general",
					new FacesMessage(FacesMessage.SEVERITY_INFO, "Le calendrier est enregistré", ""));
		} else {
			if (modeleCalendrier == null) {
				modeleCalendrier = new ModeleCalendrier();
				modeleCalendrier.setDateCreation(new Date());
			}
			modeleCalendrier.setNomCalendrier(nomCalendrier);
			modeleCalendrier.setDateModification(new Date());
			modeleCalendrier.setDateDebutMax(dateDebut);
			modeleCalendrier.setIdLieuFormationERP(Integer.valueOf(codeLieuFormation.trim()));
			modeleCalendrier.setIdFormationERP(codeFormation);

			List<Programmation> listesProgramation = new ArrayList<>();
			for (ElementCalendrier elementCalendrier : droppedElementCalendrier) {
				Programmation programmation = new Programmation();
				programmation.setIdModeleCalendrier(modeleCalendrier.getId());
				programmation.setIdCoursPlanifieERP(elementCalendrier.getId());
				listesProgramation.add(programmation);
			}
			Set<Programmation> setlistesProgramation = new HashSet<Programmation>(listesProgramation);
			modeleCalendrier.setProgrammations(setlistesProgramation);
			modeleCalendrier = modeleCalendrierService.save(modeleCalendrier);
			FacesContext context = FacesContext.getCurrentInstance();
			context.getExternalContext().getFlash().setKeepMessages(true);
			context.addMessage("general",
					new FacesMessage(FacesMessage.SEVERITY_INFO, "Le modèle de calendrier est enregistré", ""));
		}

		LOGGER.info("Fin de l'enregistrement");
	}

	public void deprogrammer(ElementCalendrier elementCalendrier) {
		LOGGER.info("Déprogrammation de l'élément" + elementCalendrier.getId());
		droppedElementCalendrier.remove(elementCalendrier);
		elementDeprogramme(elementCalendrier);
		calculOverlap();
	}

	private void elementDeplaceDansProgrammation(ElementCalendrier elementDeplace) {
		for (Iterator<ElementCalendrier> iter = availableElementCalendrier.listIterator(); iter.hasNext();) {
			ElementCalendrier elementCalendrier = iter.next();
			if (elementCalendrier.getIdModule().equals(elementDeplace.getIdModule())) {
				elementCalendrier.setModuleProgramme(Boolean.TRUE);
			}
		}
	}

	private void elementDeprogramme(ElementCalendrier elementDeplace) {
		for (Iterator<ElementCalendrier> iter = availableElementCalendrier.listIterator(); iter.hasNext();) {
			ElementCalendrier elementCalendrier = iter.next();
			if (elementCalendrier.getIdModule().equals(elementDeplace.getIdModule())) {
				elementCalendrier.setModuleProgramme(Boolean.FALSE);
			}
		}
	}

	/**
	 * A la fin du pré-formulaire - Lorsque l'utilisateur clique sur valider
	 * Vaidation des données + Chargement des données annexes si contrôle ok
	 */
	public void creer() {
		LOGGER.info("Bouton créer");
		try {

			if (codeFormation == null || StringUtils.isBlank(codeFormation)) {
				FacesContext.getCurrentInstance().addMessage("formation",
						new FacesMessage(FacesMessage.SEVERITY_ERROR, "La formation est obligatoire", ""));
			}

			if (codeLieuFormation == null | StringUtils.isBlank(codeLieuFormation)) {
				FacesContext.getCurrentInstance().addMessage("lieuFormation",
						new FacesMessage(FacesMessage.SEVERITY_ERROR, "Le lieu de formation est obligatoire", ""));
			}

			if (dateDebut == null) {
				FacesContext.getCurrentInstance().addMessage("dateDebut", new FacesMessage(FacesMessage.SEVERITY_ERROR,
						"La date de début de formation est obligatoire", ""));
			}

			if (!hasError()) {
				selectedFormation = formationService.findByCodeFormation(codeFormation);
				selectedLieu = lieuService.findByCodeLieu(Integer.valueOf(codeLieuFormation));
				preFormulaireValide = true;
				chargermentDonnees();
			}

		} catch (NumberFormatException e) {
			LOGGER.error(e.getMessage(), e);
			FacesContext context = FacesContext.getCurrentInstance();
			context.getExternalContext().getFlash().setKeepMessages(true);
			context.addMessage("general", new FacesMessage(FacesMessage.SEVERITY_ERROR, e.getMessage(), ""));
		} catch (FonctionnelException e) {
			LOGGER.error(e.getMessage(), e);
			FacesContext context = FacesContext.getCurrentInstance();
			context.getExternalContext().getFlash().setKeepMessages(true);
			context.addMessage("general", new FacesMessage(FacesMessage.SEVERITY_ERROR, e.getMessage(), ""));
		}
	}

	private void chargermentDonnees() throws FonctionnelException {
		// On récupère les cours disponible pour cette formation, ce lieu et cette date
		// de début
		coursDisponible = coursService.findCoursByFormationAndLieu(codeFormation, Integer.valueOf(codeLieuFormation));

		// On transforme les élements calendriers en object ElementCalendrier ( Dans la
		// vue, on ne manipule pas d'élément de types Entité car à terme plusieurs type
		// d'ElementCalendrier ( Cours, Modèles, ....)
		availableElementCalendrier = new ArrayList<>();
		for (Cours cours : coursDisponible) {
			ElementCalendrier element = convertCoursToElementCalendrier(cours);
			availableElementCalendrier.add(element);
		}
		Collections.sort(availableElementCalendrier, new Comparator<ElementCalendrier>() {
			public int compare(ElementCalendrier m1, ElementCalendrier m2) {
				return m1.getDateDebut().compareTo(m2.getDateFin());
			}
		});

	}

	/**
	 * Controle si existe erreur.
	 *
	 * @return true, if successful
	 */
	protected boolean hasError() {
		LOGGER.info("Controle si existe erreur : "
				+ CollectionUtils.isNotEmpty(FacesContext.getCurrentInstance().getMessageList()));
		return CollectionUtils.isNotEmpty(FacesContext.getCurrentInstance().getMessageList());
	}

	public List<ModuleIndependant> autocompleteModuleIndependant(String query) {
		// enlever l'espace devant la chaine
		query = query.trim();
		List<ModuleIndependant> liste = moduleIndependantsService.findByLibelle(query);
		return liste;
	}

	public List<Module> autocompleteModule(String query) {
		// enlever l'espace devant la chaine
		query = query.trim();
		List<Module> liste = moduleService.findModuleByFormationAndLibelle(codeFormation, query);
		return liste;
	}

	/**
	 * Convertie une date au format anglais ou français en fonction de la locale
	 * 
	 * @param actionDate
	 * @return
	 */
	public String formatDate(Date actionDate) {
		String dateString = "";
		if (actionDate != null) {
			dateString = sdfDate.format(actionDate);
		}

		return dateString;
	}

	/**
	 * Méthode qui permet d'enregistrer les contraintes
	 */
	public void enregistrerContraintes() {

		// TODO: faire de la validation de données

		if (isCalendrier) {
			if (calendrier == null || calendrier.getId() == null) {
				save();
			}
		} else {
			if (modeleCalendrier == null || modeleCalendrier.getId() == null) {
				save();
			}
		}

		List<Contrainte> contrainteEntityList = new ArrayList<>();

		// Nombre de semaine d'affilée en entreprise
		if (contraintesViewElement.isSemaineAffileeEntreprise()) {
			Contrainte contrainteSemaineAffileeEntreprise = new Contrainte();
			contrainteSemaineAffileeEntreprise
					.setNombreDeSemaines(contraintesViewElement.getSemaineAffileeEntrepriseNombre());
			if (isCalendrier) {
				contrainteSemaineAffileeEntreprise.setIdCalendrier(calendrier.getId());
			} else {
				contrainteSemaineAffileeEntreprise.setIdModeleCalendrier(modeleCalendrier.getId());
			}
			TypeContrainte semaineAffileeEntreprise = typeContrainteService
					.findByLibelle(TypeContrainteEnum.SEMAINE_AFFILEE_ENTREPRISE.toString());
			contrainteSemaineAffileeEntreprise.setTypeContrainte(semaineAffileeEntreprise);
			contrainteEntityList.add(contrainteSemaineAffileeEntreprise);
		}

		// Nombre de semaine d'affilée en formation
		if (contraintesViewElement.isSemaineAffileeFormation()) {
			Contrainte contrainteSemaineAffileeFormation = new Contrainte();
			contrainteSemaineAffileeFormation
					.setNombreDeSemaines(contraintesViewElement.getSemaineAffileeFormationNombre());
			if (isCalendrier) {
				contrainteSemaineAffileeFormation.setIdCalendrier(calendrier.getId());
			} else {
				contrainteSemaineAffileeFormation.setIdModeleCalendrier(modeleCalendrier.getId());
			}
			TypeContrainte semaineAffileeFormation = typeContrainteService
					.findByLibelle(TypeContrainteEnum.SEMAINE_AFFILEE_FORMATION.toString());
			contrainteSemaineAffileeFormation.setTypeContrainte(semaineAffileeFormation);
			contrainteEntityList.add(contrainteSemaineAffileeFormation);
		}

		// Période de forte activité en entreprise
		if (contraintesViewElement.isPeriodeForteActiviteEntreprise()) {
			for (Contrainte contrainteForteActiviteEntreprise : contraintesViewElement
					.getListPeriodeForteActiviteEntreprise()) {
				if (isCalendrier) {
					contrainteForteActiviteEntreprise.setIdCalendrier(calendrier.getId());
				} else {
					contrainteForteActiviteEntreprise.setIdModeleCalendrier(modeleCalendrier.getId());
				}
				contrainteEntityList.add(contrainteForteActiviteEntreprise);
			}
		}

		// Période de faible activité en entreprise
		if (contraintesViewElement.isPeriodeFaibleActiviteEntreprise()) {
			for (Contrainte contrainteFaibleActiviteEntreprise : contraintesViewElement
					.getListPeriodeFaibleActiviteEntreprise()) {
				if (isCalendrier) {
					contrainteFaibleActiviteEntreprise.setIdCalendrier(calendrier.getId());
				} else {
					contrainteFaibleActiviteEntreprise.setIdModeleCalendrier(modeleCalendrier.getId());
				}
				contrainteEntityList.add(contrainteFaibleActiviteEntreprise);
			}
		}

		// Période de non disponibilité
		if (contraintesViewElement.isPeriodeNonDisponibiliteStagiaire()) {
			for (Contrainte contrainteNonDisponibiliteStagiaire : contraintesViewElement
					.getListPeriodeNonDisponibiliteStagiaire()) {
				if (isCalendrier) {
					contrainteNonDisponibiliteStagiaire.setIdCalendrier(calendrier.getId());
				} else {
					contrainteNonDisponibiliteStagiaire.setIdModeleCalendrier(modeleCalendrier.getId());
				}
				contrainteEntityList.add(contrainteNonDisponibiliteStagiaire);
			}
		}

		Set<Contrainte> setContrainteEntityList = new HashSet<Contrainte>(contrainteEntityList);
		if (isCalendrier) {
			calendrier.setContraintes(setContrainteEntityList);
			calendrier = calendrierService.save(calendrier);
		} else {
			modeleCalendrier.setContraintes(setContrainteEntityList);
			modeleCalendrier = modeleCalendrierService.save(modeleCalendrier);
		}
		FacesContext context = FacesContext.getCurrentInstance();
		context.getExternalContext().getFlash().setKeepMessages(true);
		context.addMessage("general",
				new FacesMessage(FacesMessage.SEVERITY_INFO, "Le(s) contrainte(s) sont enregistrées", ""));

	}

	/**
	 * Permet d'ajouter une dispense à la liste des dispenses
	 * 
	 */
	public void ajouterDispense() {

		if (dispensesViewElement.getListDispenses() == null) {
			List<Dispense> list = new ArrayList<>();
			dispensesViewElement.setListDispenses(list);
		}

		// Contrôle validé
		if (dispensesViewElement.getSelectedModule() == null) {
			FacesContext.getCurrentInstance().addMessage("moduleAutocomplete",
					new FacesMessage(FacesMessage.SEVERITY_ERROR, "Veuillez sélectionner un élément", ""));

		} else {
			for (Dispense dispense : dispensesViewElement.getListDispenses()) {
				if (dispense.getIdModuleERP().equals(dispensesViewElement.getSelectedModule().getId())) {
					FacesContext.getCurrentInstance().addMessage("moduleAutocomplete",
							new FacesMessage(FacesMessage.SEVERITY_ERROR, "Ce module est déjà dispensé", ""));
				}
			}
		}

		if (!hasError()) {
			Dispense dispense = new Dispense();
			dispense.setIdModuleERP(dispensesViewElement.getSelectedModule().getId());
			dispense.setLibelle(dispensesViewElement.getSelectedModule().getLibelle());
			if (isCalendrier) {
				dispense.setIdCalendrier(calendrier.getId());
			} else {
				dispense.setIdModeleCalendrier(modeleCalendrier.getId());
			}
			dispensesViewElement.getListDispenses().add(dispense);
			dispensesViewElement.setSelectedModule(null);
		}
	}

	/**
	 * Permet d'enregistrer les dispenses
	 */
	public void enregistrerDispenses() {

		if (isCalendrier) {
			if (calendrier == null || calendrier.getId() == null) {
				save();
			}
		} else {
			if (modeleCalendrier == null || modeleCalendrier.getId() == null) {
				save();
			}
		}

		if (dispensesViewElement.getListDispenses() == null) {
			List<Dispense> list = new ArrayList<>();
			dispensesViewElement.setListDispenses(list);
		}
		List<Dispense> listDispensesEntities = dispensesViewElement.getListDispenses();

		Set<Dispense> setListDispensesEntities = new HashSet<Dispense>(listDispensesEntities);
		if (isCalendrier) {
			calendrier.setDispenses(setListDispensesEntities);
			calendrier = calendrierService.save(calendrier);
		} else {
			modeleCalendrier.setDispenses(setListDispensesEntities);
			modeleCalendrier = modeleCalendrierService.save(modeleCalendrier);
		}
		FacesContext context = FacesContext.getCurrentInstance();
		context.getExternalContext().getFlash().setKeepMessages(true);
		context.addMessage("general",
				new FacesMessage(FacesMessage.SEVERITY_INFO, "Le(s) dispenses(s) sont enregistrées", ""));
	}

	/**
	 * Permet d'ajouter un module à la liste des modules
	 */
	public void ajouterModule() {

		if (moduleIndependantsViewElement.getListModuleIndependants() == null) {
			List<ModuleIndependant> listModuleIndependants = new ArrayList<>();
			moduleIndependantsViewElement.setListModuleIndependants(listModuleIndependants);
		}

		// Contrôle validé
		if (moduleIndependantsViewElement.getSelectedModuleIndependant() == null) {
			FacesContext.getCurrentInstance().addMessage("moduleIndependantAutocomplete",
					new FacesMessage(FacesMessage.SEVERITY_ERROR, "Veuillez sélectionner un élément", ""));

		} else {
			for (ModuleIndependant moduleIndependantElement : moduleIndependantsViewElement
					.getListModuleIndependants()) {
				if (moduleIndependantElement.getId()
						.equals(moduleIndependantsViewElement.getSelectedModuleIndependant().getId())) {
					FacesContext.getCurrentInstance().addMessage("moduleIndependantAutocomplete",
							new FacesMessage(FacesMessage.SEVERITY_ERROR, "Ce module indépendant est déjà ajouté", ""));
				}
			}
		}

		if (!hasError()) {
			ModuleIndependant moduleIndependantElement = new ModuleIndependant();
			moduleIndependantElement.setId(moduleIndependantsViewElement.getSelectedModuleIndependant().getId());
			moduleIndependantElement
					.setLibelle(moduleIndependantsViewElement.getSelectedModuleIndependant().getLibelle());
			moduleIndependantsViewElement.getListModuleIndependants().add(moduleIndependantElement);
			moduleIndependantsViewElement.setSelectedModuleIndependant(null);
		}
	}

	/**
	 * Permet d'enregistrer les modules indépendants
	 */
	public void enregistrerModulesIndependants() {

		if (isCalendrier) {
			if (calendrier == null || calendrier.getId() == null) {
				save();
			}
		} else {
			if (modeleCalendrier == null || modeleCalendrier.getId() == null) {
				save();
			}
		}

		if (moduleIndependantsViewElement.getListModuleIndependants() == null) {
			List<ModuleIndependant> list = new ArrayList<>();
			moduleIndependantsViewElement.setListModuleIndependants(list);
		}
		List<ContrainteModuleIndependant> listContrainteModuleIndependantEntities = new ArrayList<>();
		for (ModuleIndependant moduleIndependantElementViewElement : moduleIndependantsViewElement
				.getListModuleIndependants()) {
			ContrainteModuleIndependant item = new ContrainteModuleIndependant();
			item.setIdModuleIndependant(moduleIndependantElementViewElement.getId());
			if (isCalendrier) {
				item.setIdCalendrier(calendrier.getId());
			} else {
				item.setIdModeleCalendrier(modeleCalendrier.getId());
			}
			listContrainteModuleIndependantEntities.add(item);
		}

		Set<ContrainteModuleIndependant> setListContrainteModuleIndependantEntities = new HashSet<ContrainteModuleIndependant>(
				listContrainteModuleIndependantEntities);
		if (isCalendrier) {
			calendrier.setContrainteModuleIndependant(setListContrainteModuleIndependantEntities);
			calendrier = calendrierService.save(calendrier);
		} else {
			modeleCalendrier.setContrainteModuleIndependant(setListContrainteModuleIndependantEntities);
			modeleCalendrier = modeleCalendrierService.save(modeleCalendrier);
		}
		FacesContext context = FacesContext.getCurrentInstance();
		context.getExternalContext().getFlash().setKeepMessages(true);
		context.addMessage("general",
				new FacesMessage(FacesMessage.SEVERITY_INFO, "Le(s) modules indépendants(s) sont enregistrés", ""));
	}

	/**
	 * Ajout de PeriodeForteActiviteEntreprise
	 */
	public void ajouterPeriodeForteActiviteEntreprise() {

		if (contraintesViewElement.getListPeriodeForteActiviteEntreprise() == null) {
			List<Contrainte> listPeriodeForteActiviteEntreprise = new ArrayList<>();
			contraintesViewElement.setListPeriodeForteActiviteEntreprise(listPeriodeForteActiviteEntreprise);
		}

		// Contrôle validé
		if (contraintesViewElement.getPeriodeForteActiviteEntrepriseDateDebut() == null) {
			FacesContext.getCurrentInstance().addMessage("periodeForteActiviteEntrepriseDateDebut",
					new FacesMessage(FacesMessage.SEVERITY_ERROR, "Date de début obligatoire", ""));

		}
		if (contraintesViewElement.getPeriodeForteActiviteEntrepriseDateFin() == null) {
			FacesContext.getCurrentInstance().addMessage("periodeForteActiviteEntrepriseDateFin",
					new FacesMessage(FacesMessage.SEVERITY_ERROR, "Date de fin obligatoire", ""));

		}
		if (contraintesViewElement.getPeriodeForteActiviteEntrepriseDateFin() != null
				&& contraintesViewElement.getPeriodeFaibleActiviteEntrepriseDateFin() != null
				&& contraintesViewElement.getPeriodeForteActiviteEntrepriseDateFin()
						.before(contraintesViewElement.getPeriodeForteActiviteEntrepriseDateDebut())) {
			FacesContext.getCurrentInstance().addMessage("periodeForteActiviteEntrepriseDateFin",
					new FacesMessage(FacesMessage.SEVERITY_ERROR, "Erreur saisie date", ""));

		}

		if (!hasError()) {
			Contrainte contrainte = new Contrainte();
			contrainte.setDateDebut(contraintesViewElement.getPeriodeForteActiviteEntrepriseDateFin());
			contrainte.setDateFin(contraintesViewElement.getPeriodeForteActiviteEntrepriseDateFin());
			TypeContrainte type = typeContrainteService
					.findByLibelle(TypeContrainteEnum.FORTE_ACTIVITE_ENTREPRISE.toString());
			contrainte.setTypeContrainte(type);
			contraintesViewElement.getListPeriodeForteActiviteEntreprise().add(contrainte);
			contraintesViewElement.setPeriodeForteActiviteEntrepriseDateDebut(null);
			contraintesViewElement.setPeriodeForteActiviteEntrepriseDateFin(null);
		}

	}

	/**
	 * Ajout de PeriodeFaibleActiviteEntreprise
	 */
	public void ajouterPeriodeFaibleActiviteEntreprise() {

		if (contraintesViewElement.getListPeriodeFaibleActiviteEntreprise() == null) {
			List<Contrainte> listPeriodeFaibleActiviteEntreprise = new ArrayList<>();
			contraintesViewElement.setListPeriodeFaibleActiviteEntreprise(listPeriodeFaibleActiviteEntreprise);
		}

		// Contrôle validé
		if (contraintesViewElement.getPeriodeFaibleActiviteEntrepriseDateDebut() == null) {
			FacesContext.getCurrentInstance().addMessage("periodeFaibleActiviteEntrepriseDateDebut",
					new FacesMessage(FacesMessage.SEVERITY_ERROR, "Date de début obligatoire", ""));

		}
		if (contraintesViewElement.getPeriodeFaibleActiviteEntrepriseDateFin() == null) {
			FacesContext.getCurrentInstance().addMessage("periodeFaibleActiviteEntrepriseDateFin",
					new FacesMessage(FacesMessage.SEVERITY_ERROR, "Date de fin obligatoire", ""));

		}
		if (contraintesViewElement.getPeriodeFaibleActiviteEntrepriseDateFin() != null
				&& contraintesViewElement.getPeriodeFaibleActiviteEntrepriseDateFin() != null
				&& contraintesViewElement.getPeriodeFaibleActiviteEntrepriseDateFin()
						.before(contraintesViewElement.getPeriodeFaibleActiviteEntrepriseDateDebut())) {
			FacesContext.getCurrentInstance().addMessage("periodeFaibleActiviteEntrepriseDateFin",
					new FacesMessage(FacesMessage.SEVERITY_ERROR, "Erreur saisie date", ""));

		}

		if (!hasError()) {
			Contrainte contrainte = new Contrainte();
			contrainte.setDateDebut(contraintesViewElement.getPeriodeFaibleActiviteEntrepriseDateFin());
			contrainte.setDateFin(contraintesViewElement.getPeriodeFaibleActiviteEntrepriseDateFin());
			TypeContrainte type = typeContrainteService
					.findByLibelle(TypeContrainteEnum.FAIBLE_ACTIVITE_ENTREPRISE.toString());
			contrainte.setTypeContrainte(type);
			contraintesViewElement.getListPeriodeFaibleActiviteEntreprise().add(contrainte);
			contraintesViewElement.setPeriodeFaibleActiviteEntrepriseDateDebut(null);
			contraintesViewElement.setPeriodeFaibleActiviteEntrepriseDateFin(null);
		}
	}

	/**
	 * Ajout de Periode Non disponibilite
	 */
	public void ajouterPeriodeNonDisponibiliteStagiaire() {

		if (contraintesViewElement.getListPeriodeNonDisponibiliteStagiaire() == null) {
			List<Contrainte> listPeriodeNonDisponibiliteStagiaire = new ArrayList<>();
			contraintesViewElement.setListPeriodeNonDisponibiliteStagiaire(listPeriodeNonDisponibiliteStagiaire);
		}

		// Contrôle validé
		if (contraintesViewElement.getPeriodeNonDisponibiliteStagiaireDateDebut() == null) {
			FacesContext.getCurrentInstance().addMessage("periodeNonDisponibiliteStagiaireDateDebut",
					new FacesMessage(FacesMessage.SEVERITY_ERROR, "Date de début obligatoire", ""));

		}
		if (contraintesViewElement.getPeriodeNonDisponibiliteStagiaireDateFin() == null) {
			FacesContext.getCurrentInstance().addMessage("periodeNonDisponibiliteStagiaireDateFin",
					new FacesMessage(FacesMessage.SEVERITY_ERROR, "Date de fin obligatoire", ""));

		}
		if (contraintesViewElement.getPeriodeNonDisponibiliteStagiaireDateDebut() != null
				&& contraintesViewElement.getPeriodeNonDisponibiliteStagiaireDateFin() != null
				&& contraintesViewElement.getPeriodeNonDisponibiliteStagiaireDateFin()
						.before(contraintesViewElement.getPeriodeNonDisponibiliteStagiaireDateDebut())) {
			FacesContext.getCurrentInstance().addMessage("periodeNonDisponibiliteStagiaireDateFin",
					new FacesMessage(FacesMessage.SEVERITY_ERROR, "Erreur saisie date", ""));

		}

		if (!hasError()) {
			Contrainte contrainte = new Contrainte();
			contrainte.setDateDebut(contraintesViewElement.getPeriodeNonDisponibiliteStagiaireDateDebut());
			contrainte.setDateFin(contraintesViewElement.getPeriodeNonDisponibiliteStagiaireDateFin());
			contrainte.setMotif(contraintesViewElement.getPeriodeNonDisponibiliteStagiaireMotif());
			TypeContrainte type = typeContrainteService.findByLibelle(TypeContrainteEnum.NON_DISPONIBILITE.toString());
			contrainte.setTypeContrainte(type);
			contraintesViewElement.getListPeriodeNonDisponibiliteStagiaire().add(contrainte);
			contraintesViewElement.setPeriodeNonDisponibiliteStagiaireDateDebut(null);
			contraintesViewElement.setPeriodeNonDisponibiliteStagiaireDateFin(null);
		}
	}

	/**
	 * @return the coursService
	 */
	public CoursServiceInterface getCoursService() {
		return coursService;
	}

	/**
	 * @param coursService
	 *            the coursService to set
	 */
	public void setCoursService(CoursServiceInterface coursService) {
		this.coursService = coursService;
	}

	public List<ElementCalendrier> getAvailableElementCalendrier() {
		return availableElementCalendrier;
	}

	public void setAvailableElementCalendrier(List<ElementCalendrier> availableElementCalendrier) {
		this.availableElementCalendrier = availableElementCalendrier;
	}

	public List<ElementCalendrier> getDroppedElementCalendrier() {
		return droppedElementCalendrier;
	}

	public void setDroppedElementCalendrier(List<ElementCalendrier> droppedElementCalendrier) {
		this.droppedElementCalendrier = droppedElementCalendrier;
	}

	public ElementCalendrier getSelectedElementCalendrier() {
		return selectedElementCalendrier;
	}

	public void setSelectedElementCalendrier(ElementCalendrier selectedElementCalendrier) {
		this.selectedElementCalendrier = selectedElementCalendrier;
	}

	public ModeleCalendrierServiceInterface getModeleCalendrierService() {
		return modeleCalendrierService;
	}

	public void setModeleCalendrierService(ModeleCalendrierServiceInterface modeleCalendrierService) {
		this.modeleCalendrierService = modeleCalendrierService;
	}

	public ProgrammationServiceInterface getProgrammationService() {
		return programmationService;
	}

	public void setProgrammationService(ProgrammationServiceInterface programmationService) {
		this.programmationService = programmationService;
	}

	public LieuServiceInterface getLieuService() {
		return lieuService;
	}

	public void setLieuService(LieuServiceInterface lieuService) {
		this.lieuService = lieuService;
	}

	public FormationServiceInterface getFormationService() {
		return formationService;
	}

	public void setFormationService(FormationServiceInterface formationService) {
		this.formationService = formationService;
	}

	public ModeleCalendrier getModeleCalendrier() {
		return modeleCalendrier;
	}

	public void setModeleCalendrier(ModeleCalendrier modeleCalendrier) {
		this.modeleCalendrier = modeleCalendrier;
	}

	public List<Cours> getCoursDisponible() {
		return coursDisponible;
	}

	public void setCoursDisponible(List<Cours> coursDisponible) {
		this.coursDisponible = coursDisponible;
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

	public List<Lieu> getLieux() {
		return lieux;
	}

	public void setLieux(List<Lieu> lieux) {
		this.lieux = lieux;
	}

	public String getCodeLieuFormation() {
		return codeLieuFormation;
	}

	public void setCodeLieuFormation(String codeLieuFormation) {
		this.codeLieuFormation = codeLieuFormation;
	}

	public Date getDateDebut() {
		return dateDebut;
	}

	public void setDateDebut(Date dateDebut) {
		this.dateDebut = dateDebut;
	}

	public boolean isPreFormulaireValide() {
		return preFormulaireValide;
	}

	public void setPreFormulaireValide(boolean preFormulaireValide) {
		this.preFormulaireValide = preFormulaireValide;
	}

	public Contraintes getContraintesViewElement() {
		return contraintesViewElement;
	}

	public void setContraintesViewElement(Contraintes contraintesViewElement) {
		this.contraintesViewElement = contraintesViewElement;
	}

	public Dispenses getDispensesViewElement() {
		return dispensesViewElement;
	}

	public void setDispensesViewElement(Dispenses dispensesViewElement) {
		this.dispensesViewElement = dispensesViewElement;
	}

	public ModuleIndependants getModuleIndependantsViewElement() {
		return moduleIndependantsViewElement;
	}

	public void setModuleIndependantsViewElement(ModuleIndependants moduleIndependantsViewElement) {
		this.moduleIndependantsViewElement = moduleIndependantsViewElement;
	}

	public AutreCours getAutreCoursViewElement() {
		return autreCoursViewElement;
	}

	public void setAutreCoursViewElement(AutreCours autreCoursViewElement) {
		this.autreCoursViewElement = autreCoursViewElement;
	}

	public ModuleIndependantsServiceInterface getModuleIndependantsService() {
		return moduleIndependantsService;
	}

	public void setModuleIndependantsService(ModuleIndependantsServiceInterface moduleIndependantsService) {
		this.moduleIndependantsService = moduleIndependantsService;
	}

	public ModuleServiceInterface getModuleService() {
		return moduleService;
	}

	public void setModuleService(ModuleServiceInterface moduleService) {
		this.moduleService = moduleService;
	}

	public List<Cours> getEnsembleCours() {
		return ensembleCours;
	}

	public void setEnsembleCours(List<Cours> ensembleCours) {
		this.ensembleCours = ensembleCours;
	}

	public Formation getSelectedFormation() {
		return selectedFormation;
	}

	public void setSelectedFormation(Formation selectedFormation) {
		this.selectedFormation = selectedFormation;
	}

	public Lieu getSelectedLieu() {
		return selectedLieu;
	}

	public void setSelectedLieu(Lieu selectedLieu) {
		this.selectedLieu = selectedLieu;
	}

	public TypeContrainteServiceInterface getTypeContrainteService() {
		return typeContrainteService;
	}

	public void setTypeContrainteService(TypeContrainteServiceInterface typeContrainteService) {
		this.typeContrainteService = typeContrainteService;
	}

	public String getNomCalendrier() {
		return nomCalendrier;
	}

	public void setNomCalendrier(String nomCalendrier) {
		this.nomCalendrier = nomCalendrier;
	}

	public Calendrier getCalendrier() {
		return calendrier;
	}

	public void setCalendrier(Calendrier calendrier) {
		this.calendrier = calendrier;
	}

	public boolean isCalendrier() {
		return isCalendrier;
	}

	public void setCalendrier(boolean isCalendrier) {
		this.isCalendrier = isCalendrier;
	}

	public CalendrierServiceInterface getCalendrierService() {
		return calendrierService;
	}

	public void setCalendrierService(CalendrierServiceInterface calendrierService) {
		this.calendrierService = calendrierService;
	}

	public EtatCalendrierServiceInterface getEtatCalendrierService() {
		return etatCalendrierService;
	}

	public void setEtatCalendrierService(EtatCalendrierServiceInterface etatCalendrierService) {
		this.etatCalendrierService = etatCalendrierService;
	}

	public Date getDateFin() {
		return dateFin;
	}

	public void setDateFin(Date dateFin) {
		this.dateFin = dateFin;
	}

	public StagiaireParEntreprise getStagiaireEntreprise() {
		return stagiaireEntreprise;
	}

	public void setStagiaireEntreprise(StagiaireParEntreprise stagiaireEntreprise) {
		this.stagiaireEntreprise = stagiaireEntreprise;
	}

	public Stagiaire getStagiaire() {
		return stagiaire;
	}

	public void setStagiaire(Stagiaire stagiaire) {
		this.stagiaire = stagiaire;
	}

	public StagiaireServiceInterface getStagiaireService() {
		return stagiaireService;
	}

	public void setStagiaireService(StagiaireServiceInterface stagiaireService) {
		this.stagiaireService = stagiaireService;
	}

	public StagiaireEntrepriseService getStagiaireEntrepriseService() {
		return stagiaireEntrepriseService;
	}

	public void setStagiaireEntrepriseService(StagiaireEntrepriseService stagiaireEntrepriseService) {
		this.stagiaireEntrepriseService = stagiaireEntrepriseService;
	}

}