package fr.eni.enicalendar.utils;

import fr.eni.enicalendar.persistence.erp.entities.Formation;
import fr.eni.enicalendar.persistence.erp.entities.Lieu;

import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;

public class SessionUtils {

	/*
	 * Liste des attributs dans la session
	 */
	public static final String SESSION_EMAIL = "email";

	public static final String SESSION_TYPE_ACTION = "typeAction";

	public static final String SESSION_ID = "id";

	public static final String SESSION_ID_STAGIAIRE = "id_stagiaire";

	public static final String SESSION_ID_MODELE1 = "id_modele1";

	public static final String SESSION_ID_MODELE2 = "id_modele2";

	public static final String SESSION_ID_CALENDRIER1 = "id_calendrier1";

	public static final String SESSION_ID_CALENDRIER_2 = "id_calendrier2";

	public static final String SESSION_FORMATION = "";

	public static final String SESSION_LIEU = "";

	public static final String SESSION_MODELE = "";

	public static final String SESSION_DATEDEBUT = "";
	public static final String SESSION_DATEFIN = "";



	public static HttpSession getSession() {
		return (HttpSession) FacesContext.getCurrentInstance().getExternalContext().getSession(false);
	}

	public static HttpServletRequest getRequest() {
		return (HttpServletRequest) FacesContext.getCurrentInstance().getExternalContext().getRequest();
	}

	public static String getEmail() {
		String retour = null;
		HttpSession session = (HttpSession) FacesContext.getCurrentInstance().getExternalContext().getSession(false);
		if (session.getAttribute(SESSION_EMAIL) != null) {
			retour = session.getAttribute(SESSION_EMAIL).toString();
		}
		return retour;
	}

	public static String getAction() {

		String retour = null;

		HttpSession session = (HttpSession) FacesContext.getCurrentInstance().getExternalContext().getSession(false);

		if (session.getAttribute(SESSION_TYPE_ACTION) != null) {

			retour = session.getAttribute(SESSION_TYPE_ACTION).toString();

		}

		return retour;

	}

	public static String getId() {

		String retour = null;

		HttpSession session = (HttpSession) FacesContext.getCurrentInstance().getExternalContext().getSession(false);

		if (session.getAttribute(SESSION_ID) != null) {

			retour = session.getAttribute(SESSION_ID).toString();

		}

		return retour;

	}

}