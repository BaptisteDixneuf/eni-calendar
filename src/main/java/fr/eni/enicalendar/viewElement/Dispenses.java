package fr.eni.enicalendar.viewElement;

import java.io.Serializable;
import java.util.List;

import fr.eni.enicalendar.persistence.erp.entities.Module;

public class Dispenses implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private List<DispenseElement> listDispenses;

	private Module selectedModule;

	public Dispenses() {
		super();
	}

	public List<DispenseElement> getListDispenses() {
		return listDispenses;
	}

	public void setListDispenses(List<DispenseElement> listDispenses) {
		this.listDispenses = listDispenses;
	}

	public Module getSelectedModule() {
		return selectedModule;
	}

	public void setSelectedModule(Module selectedModule) {
		this.selectedModule = selectedModule;
	}

}
