package fr.eni.enicalendar.viewElement;

import java.io.Serializable;

public class AutreCoursElement implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;
	private String libelle;
	private Integer idCoursERP;

	public AutreCoursElement() {
		super();
	}

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	public Integer getIdCoursERP() {
		return idCoursERP;
	}

	public void setIdCoursERP(Integer idCoursERP) {
		this.idCoursERP = idCoursERP;
	}

}
