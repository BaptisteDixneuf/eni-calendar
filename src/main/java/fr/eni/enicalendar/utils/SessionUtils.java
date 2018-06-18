package fr.eni.enicalendar.utils;

import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class SessionUtils {

	/*
	 * Liste des attributs dans la session
	 */
	public static final String SESSION_EMAIL = "email";

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

}