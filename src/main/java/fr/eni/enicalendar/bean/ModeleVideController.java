package fr.eni.enicalendar.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;

import org.primefaces.event.DragDropEvent;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import fr.eni.enicalendar.dto.ElementCalendrier;
import fr.eni.enicalendar.dto.ElementCalendrierType;
import fr.eni.enicalendar.exceptions.FonctionnelException;
import fr.eni.enicalendar.persistence.app.entities.ModeleCalendrier;
import fr.eni.enicalendar.persistence.app.entities.Programmation;
import fr.eni.enicalendar.persistence.erp.entities.Cours;
import fr.eni.enicalendar.persistence.erp.entities.Formation;
import fr.eni.enicalendar.persistence.erp.entities.Lieu;
import fr.eni.enicalendar.service.CoursServiceInterface;
import fr.eni.enicalendar.service.FormationServiceInterface;
import fr.eni.enicalendar.service.LieuServiceInterface;
import fr.eni.enicalendar.service.ModeleCalendrierServiceInterface;
import fr.eni.enicalendar.service.ProgrammationServiceInterface;
import fr.eni.enicalendar.utils.SessionUtils;

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

	private List<ElementCalendrier> availableElementCalendrier;

	private List<ElementCalendrier> droppedElementCalendrier;

	private ElementCalendrier selectedElementCalendrier;

	/** Entité de sauvegarde du modèle du calendrier */
	private ModeleCalendrier modeleCalendrier;

	/** Liste des cours disponibles pour cette formation */
	private List<Cours> coursDisponible = new ArrayList<>();

	/**
	 * Pré-formulaire
	 */
	private String codeFormation;
	private List<Formation> formations;
	private List<Lieu> lieux;
	private String codeLieuFormation;
	private Date dateDebut;
	private boolean preFormulaireValide;

	@PostConstruct
	public void setup() {
		LOGGER.info("CoursController setup");

		// On récupère les lieux et formations
		lieux = lieuService.findAllLieux();
		formations = formationService.findAllFormations();
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
		element.setLibelle(cours.getLibelleCours());
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
				element.setLibelle(coursTrouve.getLibelleCours());
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

	public void creer() {
		LOGGER.info("Bouton créer");

		try {

			// TODO : faire les controles de surface

			// On récupère les cours disponible pour cette formation, ce lieu et cette date
			// de début
			coursDisponible = coursService.findCoursByFormationAndLieu(codeFormation,
					Integer.valueOf(codeLieuFormation));

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

		} catch (NumberFormatException e) {
			LOGGER.error(e.getMessage(), e);
			// TODO: afficher 1 message d'erreur
		} catch (FonctionnelException e) {
			LOGGER.error(e.getMessage(), e);
			// TODO: afficher 1 message d'erreur
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

}
