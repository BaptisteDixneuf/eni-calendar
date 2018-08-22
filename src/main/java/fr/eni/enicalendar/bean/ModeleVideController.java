package fr.eni.enicalendar.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;

import org.primefaces.event.DragDropEvent;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import fr.eni.enicalendar.persistence.erp.entities.Cours;
import fr.eni.enicalendar.service.CoursServiceInterface;

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

	private List<Cours> coursDisponible;

	private List<Cours> droppedCours;

	private Cours selectedCours;

	@PostConstruct
	public void setup() {
		LOGGER.info("CoursController setup");
		coursDisponible = coursService.findAllCours();
		droppedCours = new ArrayList<Cours>();
	}

	public void onCoursDrop(DragDropEvent ddEvent) {
		Cours car = ((Cours) ddEvent.getData());
		droppedCours.add(car);
		coursDisponible.remove(car);
	}

	/**
	 * @return the coursDisponible
	 */
	public List<Cours> getCoursDisponible() {
		return coursDisponible;
	}

	/**
	 * @param coursDisponible
	 *            the coursDisponible to set
	 */
	public void setCoursDisponible(List<Cours> coursDisponible) {
		this.coursDisponible = coursDisponible;
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

	/**
	 * @return the droppedCours
	 */
	public List<Cours> getDroppedCours() {
		return droppedCours;
	}

	/**
	 * @param droppedCours
	 *            the droppedCours to set
	 */
	public void setDroppedCours(List<Cours> droppedCours) {
		this.droppedCours = droppedCours;
	}

	/**
	 * @return the selectedCours
	 */
	public Cours getSelectedCours() {
		return selectedCours;
	}

	/**
	 * @param selectedCours
	 *            the selectedCours to set
	 */
	public void setSelectedCours(Cours selectedCours) {
		this.selectedCours = selectedCours;
	}

}
