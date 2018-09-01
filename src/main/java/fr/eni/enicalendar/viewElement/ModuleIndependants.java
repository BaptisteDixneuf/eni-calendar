package fr.eni.enicalendar.viewElement;

import java.io.Serializable;
import java.util.List;

public class ModuleIndependants implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private List<ModuleIndependantElement> listModuleIndependants;

	private String selectedModuleIndependant;

	public ModuleIndependants() {
		super();
	}

	public List<ModuleIndependantElement> getListModuleIndependants() {
		return listModuleIndependants;
	}

	public void setListModuleIndependants(List<ModuleIndependantElement> listModuleIndependants) {
		this.listModuleIndependants = listModuleIndependants;
	}

	public String getSelectedModuleIndependant() {
		return selectedModuleIndependant;
	}

	public void setSelectedModuleIndependant(String selectedModuleIndependant) {
		this.selectedModuleIndependant = selectedModuleIndependant;
	}

}
