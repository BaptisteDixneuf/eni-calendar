package fr.eni.enicalendar.viewElement;

import java.io.Serializable;
import java.util.List;

public class Dispenses implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private List<DispenseElement> listDispenses;

	public Dispenses() {
		super();
	}

	public List<DispenseElement> getListDispenses() {
		return listDispenses;
	}

	public void setListDispenses(List<DispenseElement> listDispenses) {
		this.listDispenses = listDispenses;
	}

}
