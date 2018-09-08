package fr.eni.enicalendar.bean;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.primefaces.event.DragDropEvent;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import fr.eni.enicalendar.exceptions.FonctionnelException;
import fr.eni.enicalendar.persistence.app.entities.Contrainte;
import fr.eni.enicalendar.persistence.app.entities.Dispense;
import fr.eni.enicalendar.persistence.app.entities.ModeleCalendrier;
import fr.eni.enicalendar.persistence.app.entities.ModuleIndependant;
import fr.eni.enicalendar.persistence.app.entities.Programmation;
import fr.eni.enicalendar.persistence.app.entities.TypeContrainte;
import fr.eni.enicalendar.persistence.erp.entities.Cours;
import fr.eni.enicalendar.persistence.erp.entities.Formation;
import fr.eni.enicalendar.persistence.erp.entities.Lieu;
import fr.eni.enicalendar.persistence.erp.entities.Module;
import fr.eni.enicalendar.service.CoursServiceInterface;
import fr.eni.enicalendar.service.FormationServiceInterface;
import fr.eni.enicalendar.service.LieuServiceInterface;
import fr.eni.enicalendar.service.ModeleCalendrierServiceInterface;
import fr.eni.enicalendar.service.ModuleIndependantsServiceInterface;
import fr.eni.enicalendar.service.ModuleServiceInterface;
import fr.eni.enicalendar.service.ProgrammationServiceInterface;
import fr.eni.enicalendar.service.TypeContrainteServiceInterface;
import fr.eni.enicalendar.utils.SessionUtils;
import fr.eni.enicalendar.utils.TypeContrainteEnum;
import fr.eni.enicalendar.viewElement.AutreCours;
import fr.eni.enicalendar.viewElement.Contraintes;
import fr.eni.enicalendar.viewElement.DispenseElement;
import fr.eni.enicalendar.viewElement.Dispenses;
import fr.eni.enicalendar.viewElement.ElementCalendrier;
import fr.eni.enicalendar.viewElement.ElementCalendrierType;
import fr.eni.enicalendar.viewElement.ModuleIndependantElement;
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

	private List<ElementCalendrier> availableElementCalendrier;

	private List<ElementCalendrier> droppedElementCalendrier;

	private ElementCalendrier selectedElementCalendrier;

	/** Entité de sauvegarde du modèle du calendrier */
	private ModeleCalendrier modeleCalendrier;

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

	@PostConstruct
	public void setup() {
		LOGGER.info("CoursController setup");

		sdfDate = new SimpleDateFormat("dd-MM-yyyy");

		// On récupère les lieux et formations
		lieux = lieuService.findAllLieux();
		formations = formationService.findAllFormations();
		// TODO: remettrre
		// ensembleCours = coursService.findAllCours();

		contraintesViewElement = new Contraintes();
		dispensesViewElement = new Dispenses();
		moduleIndependantsViewElement = new ModuleIndependants();
		autreCoursViewElement = new AutreCours();
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
		if (modeleCalendrier == null) {
			modeleCalendrier = new ModeleCalendrier();
		}
		modeleCalendrier.setNomCalendrier("TODO Nom");
		modeleCalendrier.setDateCreation(new Date());
		modeleCalendrier.setDateModification(new Date());

		List<Programmation> listesProgramation = new ArrayList<>();
		for (ElementCalendrier elementCalendrier : droppedElementCalendrier) {
			Programmation programmation = new Programmation();
			programmation.setIdModeleCalendrier(modeleCalendrier.getId());
			programmation.setIdCoursPlanifieERP(elementCalendrier.getId());
			listesProgramation.add(programmation);
		}
		modeleCalendrier.setProgrammations(listesProgramation);
		modeleCalendrier = modeleCalendrierService.save(modeleCalendrier);

		LOGGER.info("Fin de l'enregistrement");
	}

	public void deprogrammer(ElementCalendrier elementCalendrier) {
		LOGGER.info("Déprogrammation de l'élément" + elementCalendrier.getId());
		droppedElementCalendrier.remove(elementCalendrier);
		elementDeprogramme(elementCalendrier);
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
			FacesContext.getCurrentInstance().addMessage("general",
					new FacesMessage(FacesMessage.SEVERITY_ERROR, e.getMessage(), ""));
		} catch (FonctionnelException e) {
			LOGGER.error(e.getMessage(), e);
			FacesContext.getCurrentInstance().addMessage("general",
					new FacesMessage(FacesMessage.SEVERITY_ERROR, e.getMessage(), ""));
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

		// On préremplie la colonne "Programmation" de la vue avec les données
		// précédements enregistrés
		droppedElementCalendrier = new ArrayList<ElementCalendrier>();

		if (SessionUtils.getAction() != null && SessionUtils.getAction().equals("ModificationModele")
				&& SessionUtils.getId() != null) {

			Integer idModeleCalendrier = Integer.valueOf(SessionUtils.getId());
			List<Programmation> listProgrammationExistant = programmationService
					.findProgrammationByModeleCalendrier(idModeleCalendrier);

			List<ElementCalendrier> droppedElementCalendrierExistant = new ArrayList<>();
			for (Programmation programmation : listProgrammationExistant) {
				ElementCalendrier element = convertProgrammationToElementCalendrier(programmation);
				droppedElementCalendrierExistant.add(element);
				droppedElementCalendrier.add(element);
				elementDeplaceDansProgrammation(element);
			}

		}

		Collections.sort(droppedElementCalendrier, new Comparator<ElementCalendrier>() {
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

		if (modeleCalendrier == null || modeleCalendrier.getId() == null) {
			save();
		}
		List<Contrainte> contrainteEntityList = new ArrayList<>();

		// Nombre de semaine d'affilée en entreprise
		if (contraintesViewElement.isSemaineAffileeEntreprise()) {
			Contrainte contrainteSemaineAffileeEntreprise = new Contrainte();
			contrainteSemaineAffileeEntreprise
					.setNombreDeSemaines(contraintesViewElement.getSemaineAffileeEntrepriseNombre());
			contrainteSemaineAffileeEntreprise.setIdModeleCalendrier(modeleCalendrier.getId());
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
			contrainteSemaineAffileeFormation.setIdModeleCalendrier(modeleCalendrier.getId());
			TypeContrainte semaineAffileeFormation = typeContrainteService
					.findByLibelle(TypeContrainteEnum.SEMAINE_AFFILEE_FORMATION.toString());
			contrainteSemaineAffileeFormation.setTypeContrainte(semaineAffileeFormation);
			contrainteEntityList.add(contrainteSemaineAffileeFormation);
		}

		// Période de forte activité en entreprise
		if (contraintesViewElement.isPeriodeForteActiviteEntreprise()) {
			Contrainte contrainteForteActiviteEntreprise = new Contrainte();
			contrainteForteActiviteEntreprise
					.setDateDebut(contraintesViewElement.getPeriodeForteActiviteEntrepriseDateDebut());
			contrainteForteActiviteEntreprise
					.setDateFin(contraintesViewElement.getPeriodeForteActiviteEntrepriseDateFin());
			contrainteForteActiviteEntreprise.setIdModeleCalendrier(modeleCalendrier.getId());
			TypeContrainte forteActviteEntreprise = typeContrainteService
					.findByLibelle(TypeContrainteEnum.FORTE_ACTIVITE_ENTREPRISE.toString());
			contrainteForteActiviteEntreprise.setTypeContrainte(forteActviteEntreprise);
			contrainteEntityList.add(contrainteForteActiviteEntreprise);
		}

		// Période de faible activité en entreprise
		if (contraintesViewElement.isPeriodeFaibleActiviteEntreprise()) {
			Contrainte contrainteFaibleActiviteEntreprise = new Contrainte();
			contrainteFaibleActiviteEntreprise
					.setDateDebut(contraintesViewElement.getPeriodeFaibleActiviteEntrepriseDateDebut());
			contrainteFaibleActiviteEntreprise
					.setDateFin(contraintesViewElement.getPeriodeFaibleActiviteEntrepriseDateFin());
			contrainteFaibleActiviteEntreprise.setIdModeleCalendrier(modeleCalendrier.getId());
			TypeContrainte faibleActviteEntreprise = typeContrainteService
					.findByLibelle(TypeContrainteEnum.FAIBLE_ACTIVITE_ENTREPRISE.toString());
			contrainteFaibleActiviteEntreprise.setTypeContrainte(faibleActviteEntreprise);
			contrainteEntityList.add(contrainteFaibleActiviteEntreprise);
		}

		// Période de non disponibilité
		if (contraintesViewElement.isPeriodeNonDisponibiliteStagiaire()) {
			Contrainte contrainteNonDisponibilite = new Contrainte();
			contrainteNonDisponibilite
					.setDateDebut(contraintesViewElement.getPeriodeNonDisponibiliteStagiaireDateDebut());
			contrainteNonDisponibilite.setDateFin(contraintesViewElement.getPeriodeNonDisponibiliteStagiaireDateFin());
			contrainteNonDisponibilite.setMotif(contraintesViewElement.getPeriodeNonDisponibiliteStagiaireMotif());
			contrainteNonDisponibilite.setIdModeleCalendrier(modeleCalendrier.getId());
			TypeContrainte nonDisponibilite = typeContrainteService
					.findByLibelle(TypeContrainteEnum.NON_DISPONIBILITE.toString());
			contrainteNonDisponibilite.setTypeContrainte(nonDisponibilite);
			contrainteEntityList.add(contrainteNonDisponibilite);
		}

		modeleCalendrier.setContraintes(contrainteEntityList);
		modeleCalendrier = modeleCalendrierService.save(modeleCalendrier);
	}

	/**
	 * Permet d'ajouter une dispense à la liste des dispenses
	 * 
	 */
	public void ajouterDispense() {

		if (dispensesViewElement.getListDispenses() == null) {
			List<DispenseElement> list = new ArrayList<>();
			dispensesViewElement.setListDispenses(list);
		}

		// Contrôle validé
		if (dispensesViewElement.getSelectedModule() == null) {
			FacesContext.getCurrentInstance().addMessage("moduleAutocomplete",
					new FacesMessage(FacesMessage.SEVERITY_ERROR, "Veuillez sélectionner un élément", ""));

		} else {
			for (DispenseElement dispenseElement : dispensesViewElement.getListDispenses()) {
				if (dispenseElement.getIdModuleERP().equals(dispensesViewElement.getSelectedModule().getId())) {
					FacesContext.getCurrentInstance().addMessage("moduleAutocomplete",
							new FacesMessage(FacesMessage.SEVERITY_ERROR, "Ce module est déjà dispensé", ""));
				}
			}
		}

		if (!hasError()) {
			DispenseElement dispenseElement = new DispenseElement();
			dispenseElement.setIdModuleERP(dispensesViewElement.getSelectedModule().getId());
			dispenseElement.setLibelle(dispensesViewElement.getSelectedModule().getLibelle());
			dispensesViewElement.getListDispenses().add(dispenseElement);
			dispensesViewElement.setSelectedModule(null);
		}
	}

	/**
	 * Permet d'enregistrer les dispenses
	 */
	public void enregistrerDispenses() {

		if (modeleCalendrier == null || modeleCalendrier.getId() == null) {
			save();
		}

		if (dispensesViewElement.getListDispenses() == null) {
			List<DispenseElement> list = new ArrayList<>();
			dispensesViewElement.setListDispenses(list);
		}
		List<Dispense> listDispensesEntities = new ArrayList<>();
		for (DispenseElement dispenseElementView : dispensesViewElement.getListDispenses()) {
			Dispense dispense = new Dispense();
			dispense.setIdModuleERP(dispenseElementView.getIdModuleERP());
			dispense.setIdModeleCalendrier(modeleCalendrier.getId());
			listDispensesEntities.add(dispense);
		}

		modeleCalendrier.setDispenses(listDispensesEntities);
		modeleCalendrier = modeleCalendrierService.save(modeleCalendrier);
	}

	/**
	 * Permet d'ajouter un module à la liste des modules
	 */
	public void ajouterModule() {

		if (moduleIndependantsViewElement.getListModuleIndependants() == null) {
			List<ModuleIndependantElement> listModuleIndependants = new ArrayList<>();
			moduleIndependantsViewElement.setListModuleIndependants(listModuleIndependants);
		}

		// Contrôle validé
		if (moduleIndependantsViewElement.getSelectedModuleIndependant() == null) {
			FacesContext.getCurrentInstance().addMessage("moduleIndependantAutocomplete",
					new FacesMessage(FacesMessage.SEVERITY_ERROR, "Veuillez sélectionner un élément", ""));

		} else {
			for (ModuleIndependantElement moduleIndependantElement : moduleIndependantsViewElement
					.getListModuleIndependants()) {
				if (moduleIndependantElement.getIdModuleIndependant()
						.equals(moduleIndependantsViewElement.getSelectedModuleIndependant().getId())) {
					FacesContext.getCurrentInstance().addMessage("moduleIndependantAutocomplete",
							new FacesMessage(FacesMessage.SEVERITY_ERROR, "Ce module indépendant est déjà ajouté", ""));
				}
			}
		}

		if (!hasError()) {
			ModuleIndependantElement moduleIndependantElement = new ModuleIndependantElement();
			moduleIndependantElement
					.setIdModuleIndependant(moduleIndependantsViewElement.getSelectedModuleIndependant().getId());
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

		if (modeleCalendrier == null || modeleCalendrier.getId() == null) {
			save();
		}

		if (moduleIndependantsViewElement.getListModuleIndependants() == null) {
			List<ModuleIndependantElement> list = new ArrayList<>();
			moduleIndependantsViewElement.setListModuleIndependants(list);
		}
		List<Dispense> listDispensesEntities = new ArrayList<>();
		for (DispenseElement dispenseElementView : dispensesViewElement.getListDispenses()) {
			Dispense dispense = new Dispense();
			dispense.setIdModuleERP(dispenseElementView.getIdModuleERP());
			dispense.setIdModeleCalendrier(modeleCalendrier.getId());
			listDispensesEntities.add(dispense);
		}

		modeleCalendrier.setDispenses(listDispensesEntities);
		modeleCalendrier = modeleCalendrierService.save(modeleCalendrier);
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

}