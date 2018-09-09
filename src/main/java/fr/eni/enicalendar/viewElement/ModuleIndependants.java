package fr.eni.enicalendar.viewElement;

import java.io.Serializable;
import java.util.List;

import fr.eni.enicalendar.persistence.app.entities.ModuleIndependant;

public class ModuleIndependants implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private List<ModuleIndependant> listModuleIndependants;

	private ModuleIndependant selectedModuleIndependant;

	public ModuleIndependants() {
		super();
	}

	public List<ModuleIndependant> getListModuleIndependants() {
		return listModuleIndependants;
	}

	public void setListModuleIndependants(List<ModuleIndependant> listModuleIndependants) {
		this.listModuleIndependants = listModuleIndependants;
	}

	public ModuleIndependant getSelectedModuleIndependant() {
		return selectedModuleIndependant;
	}

	public void setSelectedModuleIndependant(ModuleIndependant selectedModuleIndependant) {
		this.selectedModuleIndependant = selectedModuleIndependant;
	}

}
