package fr.eni.enicalendar.persistence.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "UniteFormation")
public class UniteFormation implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "IdUniteFormation")
	private Integer id;

	@Column(name = "Libelle")
	private String libelle;

	@Column(name = "LibelleCourt")
	private String libelleCourt;

	@Column(name = "DureeEnSemaines")
	private Integer dureeEnSemaines;

	@Column(name = "Archiver")
	private Boolean archiver;

	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * @return the libelle
	 */
	public String getLibelle() {
		return libelle;
	}

	/**
	 * @param libelle
	 *            the libelle to set
	 */
	public void setLibelle(String libelle) {
		this.libelle = libelle;
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
	 * @return the dureeEnSemaines
	 */
	public Integer getDureeEnSemaines() {
		return dureeEnSemaines;
	}

	/**
	 * @param dureeEnSemaines
	 *            the dureeEnSemaines to set
	 */
	public void setDureeEnSemaines(Integer dureeEnSemaines) {
		this.dureeEnSemaines = dureeEnSemaines;
	}

	/**
	 * @return the archiver
	 */
	public Boolean getArchiver() {
		return archiver;
	}

	/**
	 * @param archiver
	 *            the archiver to set
	 */
	public void setArchiver(Boolean archiver) {
		this.archiver = archiver;
	}

}
