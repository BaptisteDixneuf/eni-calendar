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

	public static final String SESSION_ID_CALENDRIER1 = "";

	public static final String SESSION_ID_CALENDRIER2 = "";

	public static final String SESSION_FORMATION = "";

	public static final String SESSION_LIEU = "";

	public static final String SESSION_MODELE = "";

	public static final String SESSION_DATEDEBUT = "";
	public static final String SESSION_DATEFIN = "";


	public static String getSessionEmail() {
		return SESSION_EMAIL;
	}

	public static String getSessionTypeAction() {
		return SESSION_TYPE_ACTION;
	}

	public static String getSessionId() {
		return SESSION_ID;
	}

	public static String getSessionIdStagiaire() {
		return SESSION_ID_STAGIAIRE;
	}

	public static String getSessionIdModele1() {
		return SESSION_ID_MODELE1;
	}

	public static String getSessionIdModele2() {
		return SESSION_ID_MODELE2;
	}

	public static String getSessionIdCalendrier1() {
		return SESSION_ID_CALENDRIER1;
	}

	public static String getSessionIdCalendrier2() {
		return SESSION_ID_CALENDRIER2;
	}

	public static String getSessionFormation() {
		return SESSION_FORMATION;
	}

	public static String getSessionLieu() {
		return SESSION_LIEU;
	}

	public static String getSessionModele() {
		return SESSION_MODELE;
	}

	public static String getSessionDatedebut() {
		return SESSION_DATEDEBUT;
	}

	public static String getSessionDatefin() {
		return SESSION_DATEFIN;
	}

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