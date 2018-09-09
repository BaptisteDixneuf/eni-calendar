package fr.eni.enicalendar.persistence.app.entities;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "MODULE_INDEPENDANT")
public class ModuleIndependant implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "MI_ID")
	private Integer id;

	@Column(name = "CA_ID")
	private Integer idCalendrier;

	@Column(name = "MC_ID")
	private Integer idModeleCalendrier;

	@Column(name = "MI_LIBELLE")
	private String libelle;

	@Column(name = "MI_DUREE")
	private Integer duree;

	@Column(name = "MI_LIBELLE_COURT")
	private String libelleCourt;

	@Column(name = "MI_LIEU_FORMATION")
	private String lieuFormation;

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "MI_ID")
	private Set<ProgrammeModuleIndependant> programmeModuleIndependant;

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
	 * @return the idCalendrier
	 */
	public Integer getIdCalendrier() {
		return idCalendrier;
	}

	/**
	 * @param idCalendrier
	 *            the idCalendrier to set
	 */
	public void setIdCalendrier(Integer idCalendrier) {
		this.idCalendrier = idCalendrier;
	}

	/**
	 * @return the idModeleCalendrier
	 */
	public Integer getIdModeleCalendrier() {
		return idModeleCalendrier;
	}

	/**
	 * @param idModeleCalendrier
	 *            the idModeleCalendrier to set
	 */
	public void setIdModeleCalendrier(Integer idModeleCalendrier) {
		this.idModeleCalendrier = idModeleCalendrier;
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
	 * @return the duree
	 */
	public Integer getDuree() {
		return duree;
	}

	/**
	 * @param duree
	 *            the duree to set
	 */
	public void setDuree(Integer duree) {
		this.duree = duree;
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

	public String getLieuFormation() {
		return lieuFormation;
	}

	public void setLieuFormation(String lieuFormation) {
		this.lieuFormation = lieuFormation;
	}

	public Set<ProgrammeModuleIndependant> getProgrammeModuleIndependant() {
		return programmeModuleIndependant;
	}

	public void setProgrammeModuleIndependant(Set<ProgrammeModuleIndependant> programmeModuleIndependant) {
		this.programmeModuleIndependant = programmeModuleIndependant;
	}

}
