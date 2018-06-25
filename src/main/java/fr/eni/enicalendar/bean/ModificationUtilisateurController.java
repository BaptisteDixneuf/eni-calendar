package fr.eni.enicalendar.bean;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
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

@ManagedBean(name = "modificationUtilisateurController")
@ViewScoped
public class ModificationUtilisateurController implements Serializable {

    /**
     * Serial UID
     */
    private static final long serialVersionUID = 1L;

    private static final Logger LOGGER = LoggerFactory.getLogger(ModificationUtilisateurController.class);

    @ManagedProperty(value = "#{utilisateurService}")
    private UtilisateurServiceInterface utilisateurService;

    private Utilisateur utilisateur;

    private String role;

    private String typeAction;

    @PostConstruct
    public void setup() {
        LOGGER.info("ModificationUtilisateurController setup");
        utilisateur = new Utilisateur();
        typeAction = SessionUtils.getAction();

        if (typeAction.equals("Modification")) {
            utilisateur = utilisateurService.findById(Integer.parseInt(SessionUtils.getId()));
        }
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
     * Permet de créer/modifier un utilisateur
     *
     * @throws IOException
     */
    public void modifierUtilisateur() throws IOException {
        if (SessionUtils.getAction().equals("Création")) {
            RoleUtilisateur role = new RoleUtilisateur();
            role.setId(1);
            utilisateur.setRole(role);
        }
        utilisateurService.saveUtilisateur(utilisateur);

        FacesContext.getCurrentInstance().getExternalContext()
                .redirect("/eni-calendar/views/gestionUtilisateurs.xhtml");

    }

}
