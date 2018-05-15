package fr.eni.enicalendar.bean;

import java.io.Serializable;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;

import fr.eni.enicalendar.persistence.entities.Formation;
import fr.eni.enicalendar.service.FormationServiceInterface;

@ManagedBean(name = "formationController")
@ViewScoped
public class FormationController implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private List<Formation> formations;

	@ManagedProperty(value = "#{formationService}")
	private FormationServiceInterface formationService;

	@PostConstruct
	public void setup() {
		formations = formationService.findAllFormations();
	}

	public List<Formation> getFormations() {
		return formations;
	}

	/**
	 * @return the formationService
	 */
	public FormationServiceInterface getFormationService() {
		return formationService;
	}

	/**
	 * @param formationService
	 *            the formationService to set
	 */
	public void setFormationService(FormationServiceInterface formationService) {
		this.formationService = formationService;
	}

	public void setFormations(List<Formation> formations) {
		this.formations = formations;
	}

}
