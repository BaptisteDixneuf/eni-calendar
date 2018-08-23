package fr.eni.enicalendar.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
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
import fr.eni.enicalendar.persistence.app.entities.ModeleCalendrier;
import fr.eni.enicalendar.persistence.erp.entities.Cours;
import fr.eni.enicalendar.service.CoursServiceInterface;
import fr.eni.enicalendar.service.ModeleCalendrierServiceInterface;

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

	private List<ElementCalendrier> availableElementCalendrier;

	private List<ElementCalendrier> droppedElementCalendrier;

	private ElementCalendrier selectedElementCalendrier;

	@PostConstruct
	public void setup() {
		LOGGER.info("CoursController setup");

		// On récupère les cours disponible (TODO : filtrer sur la formation)
		List<Cours> coursDisponible = coursService.findCoursByFormation("17ASR");

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

		droppedElementCalendrier = new ArrayList<ElementCalendrier>();
	}

	public void onElementCalendrierDrop(DragDropEvent ddEvent) {
		ElementCalendrier element = ((ElementCalendrier) ddEvent.getData());
		droppedElementCalendrier.add(element);
		availableElementCalendrier.remove(element);
	}

	private ElementCalendrier convertCoursToElementCalendrier(Cours cours) {
		ElementCalendrier element = new ElementCalendrier();
		element.setId(cours.getId());
		element.setLibelle(cours.getLibelleCours());
		element.setDateDebut(cours.getDateDebut());
		element.setDateFin(cours.getDateFin());
		element.setType(ElementCalendrierType.CALENDRIER);
		return element;
	}

	public void save() {

		// Création du modèle de calendrier
		ModeleCalendrier modeleCalendrier = new ModeleCalendrier();
		modeleCalendrier.setNomCalendrier("TODO Nom");
		modeleCalendrier.setDateCreation(new Date());
		modeleCalendrier.setDateModification(new Date());
		modeleCalendrierService.save(modeleCalendrier);

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

}
