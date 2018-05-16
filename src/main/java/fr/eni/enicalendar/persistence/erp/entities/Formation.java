package fr.eni.enicalendar.persistence.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Formation")
public class Formation implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "CodeFormation")
	private String codeFormation;

	@Column(name = "LibelleCourt")
	private String libelleCourt;

	@Column(name = "LibelleLong")
	private String libelleLong;

	/**
	 * @return the codeFormation
	 */
	public String getCodeFormation() {
		return codeFormation;
	}

	/**
	 * @param codeFormation
	 *            the codeFormation to set
	 */
	public void setCodeFormation(String codeFormation) {
		this.codeFormation = codeFormation;
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

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
