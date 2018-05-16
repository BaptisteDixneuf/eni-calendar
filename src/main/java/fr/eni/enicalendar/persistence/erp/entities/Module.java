package fr.eni.enicalendar.persistence.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Module")
public class Module implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "IdModule")
	private Integer id;

	@Column(name = "Libelle")
	private String libelle;

	@Column(name = "DureeEnHeures")
	private Integer dureeEnHeures;

	@Column(name = "DureeEnSemaines")
	private Integer dureeEnSemaines;

	@Column(name = "PrixPublicEnCours")
	private Float prixPublicEnCours;

	@Column(name = "LibelleCourt")
	private String libelleCourt;

	@Column(name = "Archiver")
	private Boolean archiver;

	@Column(name = "TypeModule")
	private Integer typeModule;

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
	 * @return the dureeEnHeures
	 */
	public Integer getDureeEnHeures() {
		return dureeEnHeures;
	}

	/**
	 * @param dureeEnHeures
	 *            the dureeEnHeures to set
	 */
	public void setDureeEnHeures(Integer dureeEnHeures) {
		this.dureeEnHeures = dureeEnHeures;
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
	 * @return the prixPublicEnCours
	 */
	public Float getPrixPublicEnCours() {
		return prixPublicEnCours;
	}

	/**
	 * @param prixPublicEnCours
	 *            the prixPublicEnCours to set
	 */
	public void setPrixPublicEnCours(Float prixPublicEnCours) {
		this.prixPublicEnCours = prixPublicEnCours;
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

	/**
	 * @return the typeModule
	 */
	public Integer getTypeModule() {
		return typeModule;
	}

	/**
	 * @param typeModule
	 *            the typeModule to set
	 */
	public void setTypeModule(Integer typeModule) {
		this.typeModule = typeModule;
	}

}
