package fr.eni.enicalendar.bean;

import java.io.Serializable;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import fr.eni.enicalendar.persistence.erp.entities.Cours;
import fr.eni.enicalendar.service.CoursServiceInterface;

@ManagedBean(name = "coursController")
@ViewScoped
public class CoursController implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private static final Logger LOGGER = LoggerFactory.getLogger(CoursController.class);

	private List<Cours> cours;

	@ManagedProperty(value = "#{coursService}")
	private CoursServiceInterface coursService;

	@PostConstruct
	public void setup() {
		cours = coursService.findAllCours();
	}

	/**
	 * @return the cours
	 */
	public List<Cours> getCours() {
		return cours;
	}

	/**
	 * @param cours
	 *            the cours to set
	 */
	public void setCours(List<Cours> cours) {
		this.cours = cours;
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

}
