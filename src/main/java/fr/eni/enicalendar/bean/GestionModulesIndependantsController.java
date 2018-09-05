package fr.eni.enicalendar.bean;

import java.io.IOException;
import java.io.Serializable;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;

import fr.eni.enicalendar.utils.SessionUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import fr.eni.enicalendar.persistence.app.entities.ModuleIndependant;
import fr.eni.enicalendar.service.ModuleIndependantsServiceInterface;

@ManagedBean(name = "gestionModulesIndependantsController")
@ViewScoped
public class GestionModulesIndependantsController implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private static final Logger LOGGER = LoggerFactory.getLogger(GestionModulesIndependantsController.class);

	@ManagedProperty(value = "#{moduleIndependantsService}")
	private ModuleIndependantsServiceInterface moduleIndependantsService;

	private List<ModuleIndependant> modules;
	private ModuleIndependant module;
	private String typeAction;
	private int id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the moduleIndependantsService
	 */
	public ModuleIndependantsServiceInterface getModuleIndependantsService() {
		return moduleIndependantsService;
	}

	/**
	 * @param moduleIndependantsService
	 *            the moduleIndependantsService to set
	 */
	public void setModuleIndependantsService(ModuleIndependantsServiceInterface moduleIndependantsService) {
		this.moduleIndependantsService = moduleIndependantsService;
	}

	public List<ModuleIndependant> getModules() {
		return modules;
	}

	public void setModules(List<ModuleIndependant> modules) {
		this.modules = modules;
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

	@PostConstruct
	public void setup() {
		LOGGER.info("GestionModulesIndependantsController setup");
		module = new ModuleIndependant();
		modules = moduleIndependantsService.findAll();

	}

	/**
	 * Permet de créer un module
	 * 
	 * @throws IOException
	 */
	public void creerNouveauModule() throws IOException {
		// modele = modeleService.saveUtilisateur(utilisateur);

	}

	/**
	 * Page de modification d'un module
	 *
	 * @throws IOException
	 */
	public void modificationModule(String typeAction, Integer id) throws IOException {
		HttpSession session = SessionUtils.getSession();
		session.setAttribute(SessionUtils.SESSION_TYPE_ACTION, typeAction);
		session.setAttribute(SessionUtils.SESSION_ID, id);
		FacesContext.getCurrentInstance().getExternalContext()
				.redirect("/eni-calendar/views/creation-modificationModuleIndependant.xhtml");
	}

	/**
	 * Permet d'ajouter un module
	 *
	 * @throws IOException
	 */
	public void ajoutModule(String typeAction) throws IOException {
		 HttpSession session = SessionUtils.getSession();
		 session.setAttribute(SessionUtils.SESSION_TYPE_ACTION, typeAction);
		 FacesContext.getCurrentInstance().getExternalContext().redirect("/eni-calendar/views/creation-modificationModuleIndependant.xhtml");


	}

	/**
	 * supprimer un module
	 *
	 * @throws IOException
	 */
	public void supprimerModule() throws IOException {
		 module = moduleIndependantsService.findById(id);
		 moduleIndependantsService.delete(module);
		FacesContext context = FacesContext.getCurrentInstance();
		context.getExternalContext().getFlash().setKeepMessages(true);
		context.addMessage("general",
				new FacesMessage(FacesMessage.SEVERITY_INFO, "Module indépendant supprimé!", ""));
		context.getExternalContext().redirect("/eni-calendar/views/gestionModulesIndependants.xhtml");
	}
}
