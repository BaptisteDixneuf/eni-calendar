package fr.eni.enicalendar.viewElement;

import java.io.Serializable;
import java.util.List;

public class AutreCours implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private List<AutreCoursElement> listAutreCours;

	public AutreCours() {
		super();
	}

	public List<AutreCoursElement> getListAutreCours() {
		return listAutreCours;
	}

	public void setListAutreCours(List<AutreCoursElement> listAutreCours) {
		this.listAutreCours = listAutreCours;
	}

}
