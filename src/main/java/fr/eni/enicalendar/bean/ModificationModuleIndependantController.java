package fr.eni.enicalendar.bean;

import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;

import org.apache.commons.collections4.CollectionUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import fr.eni.enicalendar.persistence.app.entities.ModuleIndependant;
import fr.eni.enicalendar.persistence.app.entities.ProgrammeModuleIndependant;
import fr.eni.enicalendar.service.ModuleIndependantsServiceInterface;
import fr.eni.enicalendar.utils.SessionUtils;
import fr.eni.enicalendar.viewElement.GestionModuleIndependant;
import fr.eni.enicalendar.viewElement.GestionModuleIndependantElement;

@ManagedBean(name = "modificationModuleIndependantController")
@ViewScoped
public class ModificationModuleIndependantController implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private static final Logger LOGGER = LoggerFactory.getLogger(ModificationModuleIndependantController.class);

	@ManagedProperty(value = "#{moduleIndependantsService}")
	private ModuleIndependantsServiceInterface moduleIndependantsService;

	private ModuleIndependant module;
	private String typeAction;

	private GestionModuleIndependant gestionModuleIndependantView;

	@PostConstruct
	public void setup() {
		LOGGER.info("ModificationModuleIndependantController setup");
		module = new ModuleIndependant();
		gestionModuleIndependantView = new GestionModuleIndependant();
		typeAction = SessionUtils.getAction();

		if (typeAction.equals("Modification")) {
			module = moduleIndependantsService.findById(Integer.parseInt(SessionUtils.getId()));
			if (module != null) {

				List<GestionModuleIndependantElement> listProgrammeModuleIndependant = new ArrayList<>();
				for (ProgrammeModuleIndependant programme : module.getProgrammeModuleIndependant()) {
					GestionModuleIndependantElement element = new GestionModuleIndependantElement();
					element.setId(programme.getId());
					element.setDateDebut(programme.getDateDebut());
					element.setDateFin(programme.getDateFin());
				}
				gestionModuleIndependantView.setListProgrammeModuleIndependant(listProgrammeModuleIndependant);
			}
		}
	}

	public ModuleIndependantsServiceInterface getModuleIndependantsService() {
		return moduleIndependantsService;
	}

	public void setModuleIndependantsService(ModuleIndependantsServiceInterface moduleIndependantsService) {
		this.moduleIndependantsService = moduleIndependantsService;
	}

	public ModuleIndependant getModule() {
		return module;
	}

	public void setModule(ModuleIndependant module) {
		this.module = module;
	}

	public String getTypeAction() {
		return typeAction;
	}

	public void setTypeAction(String typeAction) {
		this.typeAction = typeAction;
	}

	/**
	 * Permet de créer/modifier un moduleindependant
	 *
	 * @throws IOException
	 */
	public void modifierModule() throws IOException {

		List<ProgrammeModuleIndependant> programmeModuleIndependantEntities = new ArrayList<>();
		for (GestionModuleIndependantElement item : gestionModuleIndependantView.getListProgrammeModuleIndependant()) {
			ProgrammeModuleIndependant element = new ProgrammeModuleIndependant();
			element.setDateDebut(item.getDateDebut());
			element.setDateFin(item.getDateFin());
			programmeModuleIndependantEntities.add(element);
		}
		module.setProgrammeModuleIndependant(programmeModuleIndependantEntities);
		moduleIndependantsService.saveModule(module);

		FacesContext context = FacesContext.getCurrentInstance();
		context.getExternalContext().getFlash().setKeepMessages(true);
		context.addMessage("general",
				new FacesMessage(FacesMessage.SEVERITY_INFO, "Les informations ont bien été enregistrées!", ""));
		context.getExternalContext().redirect("/eni-calendar/views/gestionModulesIndependants.xhtml");
	}

	/**
	 * Permet d'ajouter un module à la liste des modules
	 */
	public void ajouterModule() {

		if (gestionModuleIndependantView.getListProgrammeModuleIndependant() == null) {
			List<GestionModuleIndependantElement> listGestionModuleIndependantElement = new ArrayList<>();
			gestionModuleIndependantView.setListProgrammeModuleIndependant(listGestionModuleIndependantElement);
		}

		// Contrôle validé
		if (gestionModuleIndependantView.getDateDebut() == null) {
			FacesContext.getCurrentInstance().addMessage("dateDebut",
					new FacesMessage(FacesMessage.SEVERITY_ERROR, "Veuillez saisir une date de début", ""));

		}

		if (gestionModuleIndependantView.getDateFin() == null) {
			FacesContext.getCurrentInstance().addMessage("dateFin",
					new FacesMessage(FacesMessage.SEVERITY_ERROR, "Veuillez saisir une date de fin", ""));

		}

		if (!hasError()) {
			GestionModuleIndependantElement gestionModuleIndependantElement = new GestionModuleIndependantElement();
			gestionModuleIndependantElement.setDateDebut(gestionModuleIndependantView.getDateDebut());
			gestionModuleIndependantElement.setDateFin(gestionModuleIndependantView.getDateFin());
			gestionModuleIndependantView.getListProgrammeModuleIndependant().add(gestionModuleIndependantElement);
			gestionModuleIndependantView.setDateDebut(null);
			gestionModuleIndependantView.setDateFin(null);
		}
	}

	/**
	 * Controle si existe erreur.
	 *
	 * @return true, if successful
	 */
	protected boolean hasError() {
		LOGGER.info("Controle si existe erreur : "
				+ CollectionUtils.isNotEmpty(FacesContext.getCurrentInstance().getMessageList()));
		return CollectionUtils.isNotEmpty(FacesContext.getCurrentInstance().getMessageList());
	}

	public GestionModuleIndependant getGestionModuleIndependantView() {
		return gestionModuleIndependantView;
	}

	public void setGestionModuleIndependantView(GestionModuleIndependant gestionModuleIndependantView) {
		this.gestionModuleIndependantView = gestionModuleIndependantView;
	}

}
