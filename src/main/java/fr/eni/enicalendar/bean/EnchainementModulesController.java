package fr.eni.enicalendar.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import fr.eni.enicalendar.persistence.app.entities.EnchainementModule;
import fr.eni.enicalendar.persistence.erp.entities.Formation;
import fr.eni.enicalendar.persistence.erp.entities.Module;
import fr.eni.enicalendar.service.EnchainementModuleServiceInterface;
import fr.eni.enicalendar.service.FormationServiceInterface;
import fr.eni.enicalendar.service.ModuleParUniteServiceInterface;
import fr.eni.enicalendar.service.ModuleServiceInterface;
import fr.eni.enicalendar.utils.EnchainementPossibleEnum;

@ManagedBean(name = "enchainementModulesController")
@ViewScoped
public class EnchainementModulesController implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private static final Logger LOGGER = LoggerFactory.getLogger(EnchainementModulesController.class);

	/** Les services */
	@ManagedProperty(value = "#{formationService}")
	private FormationServiceInterface formationService;

	@ManagedProperty(value = "#{moduleParUniteService}")
	private ModuleParUniteServiceInterface moduleParUniteService;

	@ManagedProperty(value = "#{moduleService}")
	private ModuleServiceInterface moduleService;

	@ManagedProperty(value = "#{enchainementModuleService}")
	private EnchainementModuleServiceInterface enchainementModuleService;

	/** Les formations */
	List<Formation> formations;

	/** La formation sélectionné */
	private String idSelectedFormation;

	/** Le module sélectionné */
	private String idSelectedModule;

	private Boolean disableFormation = Boolean.FALSE;

	private Boolean disableModule = Boolean.FALSE;

	/** Les modules de la formation sélectionné */
	private List<Module> modules;

	/* private List<Module> modulesEnchainement; */

	/** Les modules affichés dans le tableau */
	private List<EnchainementModule> modulesEnchainement;

	/**
	 * Méthode d'initilisation
	 */
	@PostConstruct
	public void setup() {
		LOGGER.info("EnchainementModulesController setup");
		formations = formationService.findAllFormations();
	}

	/**
	 * Permet la sélection de la formation Charge les modules liées à la formation
	 * sélectionné
	 */
	public void selectionFormation() {
		LOGGER.info("La formation sélectionnée est : " + idSelectedFormation);
		modules = moduleService.findModuleByFormation(idSelectedFormation);
		Collections.sort(modules, (a, b) -> a.getLibelle().compareToIgnoreCase(b.getLibelle()));
		disableFormation = Boolean.TRUE;
		LOGGER.info("Nbre de modules : " + modules.size());
	}

	/**
	 * Permet la sélection du module sélectionné
	 */
	public void selectionModule() {
		LOGGER.info("Le module sélectionné est : " + idSelectedModule);
		modulesEnchainement = preparationTableauEnchainement();
	}

	private List<EnchainementModule> preparationTableauEnchainement() {

		List<EnchainementModule> listRetour = new ArrayList<EnchainementModule>();

		// Copie des modules de l'ERP
		ArrayList<Module> modulesERP = new ArrayList<>(modules); // Utilisation de la copy, non du référencement

		// On récupère les enchainements déjà enregistrés
		List<EnchainementModule> listEnchainementEniApp = enchainementModuleService
				.findByModuleId(Integer.valueOf(idSelectedModule));

		// Pour chaque module dans l'ERP
		Iterator<Module> iter = modulesERP.iterator();
		while (iter.hasNext()) {
			Module module = iter.next();

			EnchainementModule elementTrouve = null;
			for (EnchainementModule enchainementModule : listEnchainementEniApp) {
				if (module.getId().equals(enchainementModule.getIdModulePrerequisERP())) {
					elementTrouve = enchainementModule;
				}
			}

			if (elementTrouve != null) {
				elementTrouve.setLibelleModulePrerequisErp(module.getLibelle());
				listRetour.add(elementTrouve);
			} else {
				if (idSelectedModule.equals(module.getId().toString())) {
					iter.remove();
				} else {
					// L'élément n'existe pas en base de données
					LOGGER.info("L'élément n'existe pas en base de données : " + module.getLibelle());
					EnchainementModule e = new EnchainementModule();
					e.setIdFormationERP(idSelectedFormation);
					e.setIdModuleERP(Integer.valueOf(idSelectedModule));
					e.setIdModulePrerequisERP(module.getId());
					e.setLibelleModulePrerequisErp(module.getLibelle());
					e.setTypeEnchainement(EnchainementPossibleEnum.NON_REQUIS.toString());
					listRetour.add(e);
				}
			}

		}

		// FIXME : problème avec JSF => voir si cela ne vient pas de la lambda, à voir
		// Collections.sort(listRetour,
		// (a, b) ->
		// a.getLibelleModulePrerequisErp().compareToIgnoreCase(b.getLibelleModulePrerequisErp()));
		disableModule = Boolean.TRUE;

		return listRetour;
	}

	/**
	 * Permet d'annuler les sélections
	 */
	public void annuler() {
		idSelectedFormation = "";
		idSelectedModule = "";
		modules = null;
		modulesEnchainement = null;
		disableFormation = Boolean.FALSE;
		disableModule = Boolean.FALSE;
	}

	public void enregistrer() {
		modulesEnchainement = enchainementModuleService.save(modulesEnchainement);
		modulesEnchainement = preparationTableauEnchainement();
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

	/**
	 * @return the disableModule
	 */
	public Boolean getDisableModule() {
		return disableModule;
	}

	/**
	 * @param disableModule
	 *            the disableModule to set
	 */
	public void setDisableModule(Boolean disableModule) {
		this.disableModule = disableModule;
	}

	public List<EnchainementModule> getModulesEnchainement() {
		return modulesEnchainement;
	}

	public void setModulesEnchainement(List<EnchainementModule> modulesEnchainement) {
		this.modulesEnchainement = modulesEnchainement;
	}

	/**
	 * @return the idSelectedFormation
	 */
	public String getIdSelectedFormation() {
		return idSelectedFormation;
	}

	/**
	 * @param idSelectedFormation
	 *            the idSelectedFormation to set
	 */
	public void setIdSelectedFormation(String idSelectedFormation) {
		this.idSelectedFormation = idSelectedFormation;
	}

	/**
	 * @return the idSelectedModule
	 */
	public String getIdSelectedModule() {
		return idSelectedModule;
	}

	/**
	 * @param idSelectedModule
	 *            the idSelectedModule to set
	 */
	public void setIdSelectedModule(String idSelectedModule) {
		this.idSelectedModule = idSelectedModule;
	}

	/**
	 * @return the enchainementModuleService
	 */
	public EnchainementModuleServiceInterface getEnchainementModuleService() {
		return enchainementModuleService;
	}

	/**
	 * @param enchainementModuleService
	 *            the enchainementModuleService to set
	 */
	public void setEnchainementModuleService(EnchainementModuleServiceInterface enchainementModuleService) {
		this.enchainementModuleService = enchainementModuleService;
	}

}
