package fr.eni.enicalendar.viewElement;

import java.io.Serializable;

public class DispenseElement implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private String libelle;
	private Integer idModuleERP;

	public DispenseElement() {
		super();
	}

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	public Integer getIdModuleERP() {
		return idModuleERP;
	}

	public void setIdModuleERP(Integer idModuleERP) {
		this.idModuleERP = idModuleERP;
	}

}
