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
import fr.eni.enicalendar.service.CoursServiceInterface;
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

	private List<ElementCalendrier> availableElementCalendrier;

	private List<ElementCalendrier> droppedElementCalendrier;

	private ElementCalendrier selectedElementCalendrier;

	/** Liste des cours disponibles pour cette formation */
	private List<Cours> coursDisponible = new ArrayList<>();

	@PostConstruct
	public void setup() {
		LOGGER.info("CoursController setup");

		try {
			// On récupère les cours disponible (TODO : filtrer sur la formation)
			coursDisponible = coursService.findCoursByFormation("17ASR");

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
			// précédentes
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

	private void elementDeplaceDansProgrammation(ElementCalendrier elementDeplace) {
		for (Iterator<ElementCalendrier> iter = availableElementCalendrier.listIterator(); iter.hasNext();) {
			ElementCalendrier elementCalendrier = iter.next();
			if (elementCalendrier.getIdModule().equals(elementDeplace.getIdModule())) {
				elementCalendrier.setModuleProgramme(Boolean.TRUE);
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
		// Création du modèle de calendrier
		ModeleCalendrier modeleCalendrier = new ModeleCalendrier();
		modeleCalendrier.setNomCalendrier("TODO Nom");
		modeleCalendrier.setDateCreation(new Date());
		modeleCalendrier.setDateModification(new Date());
		modeleCalendrier = modeleCalendrierService.save(modeleCalendrier);

		// On enrgistre la programmation du modèle de calendrier
		List<Programmation> listesProgramation = new ArrayList<>();
		for (ElementCalendrier elementCalendrier : droppedElementCalendrier) {
			Programmation programmation = new Programmation();
			programmation.setIdModeleCalendrier(modeleCalendrier.getId());
			programmation.setIdCoursPlanifieERP(elementCalendrier.getId());
			listesProgramation.add(programmation);
		}
		listesProgramation = programmationService.saveAll(listesProgramation);
		LOGGER.info("Fin de l'enregistrement");
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

}
