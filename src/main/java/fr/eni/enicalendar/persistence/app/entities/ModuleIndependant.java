package fr.eni.enicalendar.persistence.app.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "MODULE_INDEPENDANT")
public class ModuleIndependant implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	@Id
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

	@Column(name = "MI_ID_LIEU_FORMATION_ERP")
	private Integer idLieuFormationERP;

	@Column(name = "MI_DATE_DEBUT")
	private Date dateDebut;

	@Column(name = "MI_DATE_FIN")
	private Date dateFin;

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

	/**
	 * @return the idLieuFormationERP
	 */
	public Integer getIdLieuFormationERP() {
		return idLieuFormationERP;
	}

	/**
	 * @param idLieuFormationERP
	 *            the idLieuFormationERP to set
	 */
	public void setIdLieuFormationERP(Integer idLieuFormationERP) {
		this.idLieuFormationERP = idLieuFormationERP;
	}

	/**
	 * @return the dateDebut
	 */
	public Date getDateDebut() {
		return dateDebut;
	}

	/**
	 * @param dateDebut
	 *            the dateDebut to set
	 */
	public void setDateDebut(Date dateDebut) {
		this.dateDebut = dateDebut;
	}

	/**
	 * @return the dateFin
	 */
	public Date getDateFin() {
		return dateFin;
	}

	/**
	 * @param dateFin
	 *            the dateFin to set
	 */
	public void setDateFin(Date dateFin) {
		this.dateFin = dateFin;
	}

}
