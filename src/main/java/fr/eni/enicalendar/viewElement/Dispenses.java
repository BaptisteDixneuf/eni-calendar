package fr.eni.enicalendar.viewElement;

import java.io.Serializable;
import java.util.List;

import fr.eni.enicalendar.persistence.app.entities.Dispense;
import fr.eni.enicalendar.persistence.erp.entities.Module;

public class Dispenses implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private List<Dispense> listDispenses;

	private Module selectedModule;

	public Dispenses() {
		super();
	}

	public List<Dispense> getListDispenses() {
		return listDispenses;
	}

	public void setListDispenses(List<Dispense> listDispenses) {
		this.listDispenses = listDispenses;
	}

	public Module getSelectedModule() {
		return selectedModule;
	}

	public void setSelectedModule(Module selectedModule) {
		this.selectedModule = selectedModule;
	}

}
