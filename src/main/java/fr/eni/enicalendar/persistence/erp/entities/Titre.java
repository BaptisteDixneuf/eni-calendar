package fr.eni.enicalendar.persistence.erp.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Titre")
public class Titre implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "CodeTitre", columnDefinition = "char")
	private String codeTitre;

	@Column(name = "LibelleCourt")
	private String libelleCourt;

	@Column(name = "LibelleLong")
	private String libelleLong;

	/**
	 * @return the codeTitre
	 */
	public String getCodeTitre() {
		return codeTitre;
	}

	/**
	 * @param codeTitre
	 *            the codeTitre to set
	 */
	public void setCodeTitre(String codeTitre) {
		this.codeTitre = codeTitre;
	}

	/**
	 * @return the libelleCourt
	 */
	public String getLibelleCourt() {
		return libelleCourt;
	}

	/**
	 * @param libelleCourt
	 *            the libelleCourt to set
	 */
	public void setLibelleCourt(String libelleCourt) {
		this.libelleCourt = libelleCourt;
	}

	/**
	 * @return the libelleLong
	 */
	public String getLibelleLong() {
		return libelleLong;
	}

	/**
	 * @param libelleLong
	 *            the libelleLong to set
	 */
	public void setLibelleLong(String libelleLong) {
		this.libelleLong = libelleLong;
	}

}
