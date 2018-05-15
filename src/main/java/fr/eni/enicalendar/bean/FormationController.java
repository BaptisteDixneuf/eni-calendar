package fr.eni.enicalendar.bean;

import java.io.Serializable;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

@ManagedBean(name = "formationController")
@ViewScoped
public class FormationController implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	@PostConstruct
	public void setup() {
		// formations = eniCalendarRepositoryService.findAllTitre();
	}

}
