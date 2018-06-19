package fr.eni.enicalendar.bean;

import java.io.Serializable;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import fr.eni.enicalendar.persistence.erp.entities.Formation;
import fr.eni.enicalendar.service.FormationServiceInterface;

@ManagedBean(name = "enchainementModulesController")
@ViewScoped
public class EnchainementModulesController implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private static final Logger LOGGER = LoggerFactory.getLogger(EnchainementModulesController.class);

	@ManagedProperty(value = "#{formationService}")
	private FormationServiceInterface formationService;

	/** Les formations */
	List<Formation> formations;

	private String selectedFormation;

	@PostConstruct
	public void setup() {
		LOGGER.info("EnchainementModulesController setup");
		formations = formationService.findAllFormations();
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

	/**
	 * @return the formations
	 */
	public List<Formation> getFormations() {
		return formations;
	}

	/**
	 * @param formations
	 *            the formations to set
	 */
	public void setFormations(List<Formation> formations) {
		this.formations = formations;
	}

	/**
	 * @return the selectedFormation
	 */
	public String getSelectedFormation() {
		return selectedFormation;
	}

	/**
	 * @param selectedFormation
	 *            the selectedFormation to set
	 */
	public void setSelectedFormation(String selectedFormation) {
		this.selectedFormation = selectedFormation;
	}

}
