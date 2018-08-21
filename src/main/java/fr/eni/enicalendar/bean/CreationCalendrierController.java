package fr.eni.enicalendar.bean;

import fr.eni.enicalendar.persistence.app.entities.Utilisateur;
import fr.eni.enicalendar.persistence.erp.entities.Lieu;
import fr.eni.enicalendar.persistence.erp.entities.Stagiaire;
import fr.eni.enicalendar.service.LieuServiceInterface;
import fr.eni.enicalendar.service.StagiaireServiceInterface;
import fr.eni.enicalendar.service.UtilisateurServiceInterface;
import fr.eni.enicalendar.utils.SessionUtils;
import org.primefaces.PrimeFaces;
import org.primefaces.event.SelectEvent;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@ManagedBean(name = "creationCalendrierController")
@ViewScoped
public class CreationCalendrierController implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private static final Logger LOGGER = LoggerFactory.getLogger(CreationCalendrierController.class);

	@PostConstruct
	public void setup() {
		LOGGER.info("CreationCalendrierController setup");
	}


	public void onDateSelect(SelectEvent event) {
		FacesContext facesContext = FacesContext.getCurrentInstance();
		SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
		facesContext.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_INFO, "Date Selected", format.format(event.getObject())));
	}

	public void click() {
		PrimeFaces.current().ajax().update("form:display");
		PrimeFaces.current().executeScript("PF('dlg').show()");
	}

	/**
	 * Permet de modifier un utilisateur
	 *
	 * @throws IOException
	 */
	public void creerModele(String typeAction) throws IOException {
		HttpSession session = SessionUtils.getSession();
		session.setAttribute(SessionUtils.SESSION_TYPE_ACTION, typeAction);
		if (typeAction.equals("vide")) {
			FacesContext.getCurrentInstance().getExternalContext()
					.redirect("/eni-calendar/views/creationCalendrierModeleVide.xhtml");
		} else if (typeAction.equals("depuisModele")){
			FacesContext.getCurrentInstance().getExternalContext()
					.redirect("/eni-calendar/views/creationCalendrierDepuisModele.xhtml");
		} else {
			FacesContext.getCurrentInstance().getExternalContext()
					.redirect("/eni-calendar/views/creationCalendrierDepuisStagiaire.xhtml");
		}
	}
}
