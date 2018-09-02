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

import fr.eni.enicalendar.persistence.app.entities.RoleUtilisateur;
import fr.eni.enicalendar.persistence.app.entities.Utilisateur;
import fr.eni.enicalendar.service.UtilisateurServiceInterface;

@ManagedBean(name = "gestionUtilisateursController")
@ViewScoped
public class GestionUtilisateursController implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private static final Logger LOGGER = LoggerFactory.getLogger(GestionUtilisateursController.class);

	@ManagedProperty(value = "#{utilisateurService}")
	private UtilisateurServiceInterface utilisateurService;

	private List<Utilisateur> utilisateurs;

	private Utilisateur utilisateur;

	private String role;

	private String typeAction;

	@PostConstruct
	public void setup() {
		LOGGER.info("GestionUtilisateursController setup");
		utilisateur = new Utilisateur();
		utilisateurs = utilisateurService.findAllUtilisateurs();
	}

	/**
	 * @return the utilisateurService
	 */
	public UtilisateurServiceInterface getUtilisateurService() {
		return utilisateurService;
	}

	/**
	 * @param utilisateurService
	 *            the utilisateurService to set
	 */
	public void setUtilisateurService(UtilisateurServiceInterface utilisateurService) {
		this.utilisateurService = utilisateurService;
	}

	/**
	 * @return the utilisateur
	 */
	public Utilisateur getUtilisateur() {
		return utilisateur;
	}

	/**
	 * @param utilisateur
	 *            the utilisateur to set
	 */
	public void setUtilisateur(Utilisateur utilisateur) {
		this.utilisateur = utilisateur;
	}

	/**
	 * @return the utilisateurs
	 */
	public List<Utilisateur> getUtilisateurs() {
		return utilisateurs;
	}

	/**
	 * @param utilisateurs
	 *            the utilisateurs to set
	 */
	public void setUtilisateurs(List<Utilisateur> utilisateurs) {
		this.utilisateurs = utilisateurs;
	}

	public String getTypeAction() {
		return typeAction;
	}

	public void setTypeAction(String typeAction) {
		this.typeAction = typeAction;
	}

	/**
	 * @return the role
	 */
	public String getRole() {
		return role;
	}

	/**
	 * @param role
	 *            the role to set
	 */
	public void setRole(String role) {
		this.role = role;
	}

	/**
	 * Permet de créer un utilisateur
	 * 
	 * @throws IOException
	 */
	public void creerNouvelUtilisateur() throws IOException {
		RoleUtilisateur role = new RoleUtilisateur();
		role.setId(1);
		utilisateur.setRole(role);
		utilisateur = utilisateurService.sauverUtilisateur(utilisateur);

	}

	/**
	 * Page de modification d'un utilisateur
	 *
	 * @throws IOException
	 */
	public void modificationUtilisateur(String typeAction, Integer id) throws IOException {
		HttpSession session = SessionUtils.getSession();
		session.setAttribute(SessionUtils.SESSION_TYPE_ACTION, typeAction);
		session.setAttribute(SessionUtils.SESSION_ID, id);
		FacesContext.getCurrentInstance().getExternalContext()
				.redirect("/eni-calendar/views/creation-modificationUtilisateur.xhtml");
	}

	/**
	 * Permet de modifier un utilisateur
	 *
	 * @throws IOException
	 */
	public void ajoutUtilisateur(String typeAction) throws IOException {
		HttpSession session = SessionUtils.getSession();
		session.setAttribute(SessionUtils.SESSION_TYPE_ACTION, typeAction);
		FacesContext.getCurrentInstance().getExternalContext()
				.redirect("/eni-calendar/views/creation-modificationUtilisateur.xhtml");
	}

    /**
     * Page de modification d'un utilisateur
     *
     * @throws IOException
     */
    public void supprimerUtilisateur(Integer id) throws IOException {
        HttpSession session = SessionUtils.getSession();
        session.setAttribute(SessionUtils.SESSION_ID, id);

        utilisateur = utilisateurService.findById(id);
        utilisateurService.deleteUtilisateur(utilisateur);
		FacesContext context = FacesContext.getCurrentInstance();
		context.getExternalContext().getFlash().setKeepMessages(true);
		context.addMessage("general",
				new FacesMessage(FacesMessage.SEVERITY_INFO, "Utilisateur supprimé!", ""));
		context.getExternalContext().redirect("/eni-calendar/views/gestionUtilisateurs.xhtml");
    }
}
