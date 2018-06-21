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
import fr.eni.enicalendar.persistence.erp.entities.Module;
import fr.eni.enicalendar.service.FormationServiceInterface;
import fr.eni.enicalendar.service.ModuleParUniteServiceInterface;
import fr.eni.enicalendar.service.ModuleServiceInterface;

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

	@ManagedProperty(value = "#{moduleParUniteService}")
	private ModuleParUniteServiceInterface moduleParUniteService;

	@ManagedProperty(value = "#{moduleService}")
	private ModuleServiceInterface moduleService;

	/** Les formations */
	List<Formation> formations;

	/** La formation sélectionné */
	private String selectedFormation;

	private Boolean disableFormation = Boolean.FALSE;

	/** Les modules de la formation */
	List<Module> modules;

	@PostConstruct
	public void setup() {
		LOGGER.info("EnchainementModulesController setup");
		formations = formationService.findAllFormations();

	}

	public void selectionFormation() {
		LOGGER.info("La formation sélectionnée est : " + selectedFormation);
		modules = moduleService.findModuleByFormation(selectedFormation);
		disableFormation = Boolean.TRUE;
		LOGGER.info("Nbre de modules : " + modules.size());
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

	/**
	 * @return the moduleParUniteService
	 */
	public ModuleParUniteServiceInterface getModuleParUniteService() {
		return moduleParUniteService;
	}

	/**
	 * @param moduleParUniteService
	 *            the moduleParUniteService to set
	 */
	public void setModuleParUniteService(ModuleParUniteServiceInterface moduleParUniteService) {
		this.moduleParUniteService = moduleParUniteService;
	}

	/**
	 * @return the moduleService
	 */
	public ModuleServiceInterface getModuleService() {
		return moduleService;
	}

	/**
	 * @param moduleService
	 *            the moduleService to set
	 */
	public void setModuleService(ModuleServiceInterface moduleService) {
		this.moduleService = moduleService;
	}

	/**
	 * @return the modules
	 */
	public List<Module> getModules() {
		return modules;
	}

	/**
	 * @param modules
	 *            the modules to set
	 */
	public void setModules(List<Module> modules) {
		this.modules = modules;
	}

	/**
	 * @return the disableFormation
	 */
	public Boolean getDisableFormation() {
		return disableFormation;
	}

	/**
	 * @param disableFormation
	 *            the disableFormation to set
	 */
	public void setDisableFormation(Boolean disableFormation) {
		this.disableFormation = disableFormation;
	}

}
