package fr.eni.enicalendar.viewElement;

import java.io.Serializable;

public class ModuleIndependantElement implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;
	private String libelle;
	private Integer idModuleIndependant;

	public ModuleIndependantElement() {
		super();
	}

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	public Integer getIdModuleIndependant() {
		return idModuleIndependant;
	}

	public void setIdModuleIndependant(Integer idModuleIndependant) {
		this.idModuleIndependant = idModuleIndependant;
	}

}
