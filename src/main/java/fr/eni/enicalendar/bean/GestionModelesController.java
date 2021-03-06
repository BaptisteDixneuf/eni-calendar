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

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import fr.eni.enicalendar.persistence.app.entities.ModeleCalendrier;
import fr.eni.enicalendar.service.ModeleServiceInterface;
import fr.eni.enicalendar.utils.SessionUtils;

@ManagedBean(name = "gestionModelesController")
@ViewScoped
public class GestionModelesController implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private static final Logger LOGGER = LoggerFactory.getLogger(GestionModelesController.class);

	@ManagedProperty(value = "#{modeleService}")
	private ModeleServiceInterface modeleService;

	private List<ModeleCalendrier> modeles;
	private ModeleCalendrier modele;
	private String typeAction;
	private int id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@PostConstruct
	public void setup() {
		LOGGER.info("GestionModelesController setup");
		modele = new ModeleCalendrier();
		modeles = modeleService.findAllModeles();

	}

	public ModeleServiceInterface getModeleService() {
		return modeleService;
	}

	public void setModeleService(ModeleServiceInterface modeleService) {
		this.modeleService = modeleService;
	}

	public String getTypeAction() {
		return typeAction;
	}

	public void setTypeAction(String typeAction) {
		this.typeAction = typeAction;
	}

	public List<ModeleCalendrier> getModeles() {
		return modeles;
	}

	public void setModeles(List<ModeleCalendrier> modeles) {
		this.modeles = modeles;
	}

	public ModeleCalendrier getModele() {
		return modele;
	}

	public void setModele(ModeleCalendrier modele) {
		this.modele = modele;
	}

	/**
	 * Permet de créer un modele
	 * 
	 * @throws IOException
	 */
	public void creerNouveauModele() throws IOException {
		// modele = modeleService.saveUtilisateur(utilisateur);

	}

	/**
	 * Page de modification d'un modele
	 *
	 * @throws IOException
	 */
	public void modificationModele(String typeAction, Integer id) throws IOException {
		LOGGER.info("Type action" + typeAction + ", idModele : " + id);
		HttpSession session = SessionUtils.getSession();
		session.setAttribute(SessionUtils.SESSION_TYPE_ACTION, typeAction);
		session.setAttribute(SessionUtils.SESSION_ID, id);
		FacesContext.getCurrentInstance().getExternalContext().redirect("/eni-calendar/views/modeleVide.xhtml");

	}

	/**
	 * Permet d'ajouter un modele
	 *
	 * @throws IOException
	 */
	public void ajoutModele(String typeAction) throws IOException {
		HttpSession session = SessionUtils.getSession();
		session.setAttribute(SessionUtils.SESSION_TYPE_ACTION, null);
		session.setAttribute(SessionUtils.SESSION_ID, null);
		FacesContext.getCurrentInstance().getExternalContext().redirect("/eni-calendar/views/modeleVide.xhtml");
	}

	/**
	 * supprimer un modele
	 *
	 * @throws IOException
	 */
	public void supprimerModele() throws IOException {

		// Supprimer les Modules Indépendants

		// Supprimer les programmations liées

		modele = modeleService.findOne(id);
		modeleService.delete(modele);
		FacesContext context = FacesContext.getCurrentInstance();
		context.getExternalContext().getFlash().setKeepMessages(true);
		context.addMessage("general", new FacesMessage(FacesMessage.SEVERITY_INFO, "Modèle supprimé!", ""));
		context.getExternalContext().redirect("/eni-calendar/views/gestionModeles.xhtml");
	}

	/**
	 * Consulter calendrier
	 *
	 * @throws IOException
	 */
	public void consulterCalendrier(Integer id) throws IOException {
		HttpSession session = SessionUtils.getSession();
		session.setAttribute(SessionUtils.SESSION_ID_CALENDRIER1, id);
		FacesContext.getCurrentInstance().getExternalContext()
				.redirect("/eni-calendar/views/consulterModele.xhtml");
	}
}
