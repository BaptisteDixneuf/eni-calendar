package fr.eni.enicalendar.persistence.app.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "MODELE_CALENDRIER")
public class ModeleCalendrier implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "MC_ID")
	private Integer id;

	@Column(name = "MC_NOM_CALENDRIER")
	private String nomCalendrier;

	@Column(name = "MC_DATE_CREATION")
	private Date dateCreation;

	@Column(name = "MC_DATE_MAJ")
	private Date dateModification;

	@Column(name = "MC_ID_LIEU_FORMATION_ERP")
	private Integer idLieuFormationERP;

	@Column(name = "MC_ID_FORMATION_ERP")
	private Integer idFormationERP;

	@Column(name = "MC_DATE_DEBUT_MAX")
	private Date dateDebutMax;

	@Column(name = "MC_DATE_FIN_MAX")
	private Date dateFinMax;

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
	 * @return the nomCalendrier
	 */
	public String getNomCalendrier() {
		return nomCalendrier;
	}

	/**
	 * @param nomCalendrier
	 *            the nomCalendrier to set
	 */
	public void setNomCalendrier(String nomCalendrier) {
		this.nomCalendrier = nomCalendrier;
	}

	/**
	 * @return the dateCreation
	 */
	public Date getDateCreation() {
		return dateCreation;
	}

	/**
	 * @param dateCreation
	 *            the dateCreation to set
	 */
	public void setDateCreation(Date dateCreation) {
		this.dateCreation = dateCreation;
	}

	/**
	 * @return the dateModification
	 */
	public Date getDateModification() {
		return dateModification;
	}

	/**
	 * @param dateModification
	 *            the dateModification to set
	 */
	public void setDateModification(Date dateModification) {
		this.dateModification = dateModification;
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
	 * @return the idFormationERP
	 */
	public Integer getIdFormationERP() {
		return idFormationERP;
	}

	/**
	 * @param idFormationERP
	 *            the idFormationERP to set
	 */
	public void setIdFormationERP(Integer idFormationERP) {
		this.idFormationERP = idFormationERP;
	}

	/**
	 * @return the dateDebutMax
	 */
	public Date getDateDebutMax() {
		return dateDebutMax;
	}

	/**
	 * @param dateDebutMax
	 *            the dateDebutMax to set
	 */
	public void setDateDebutMax(Date dateDebutMax) {
		this.dateDebutMax = dateDebutMax;
	}

	/**
	 * @return the dateFinMax
	 */
	public Date getDateFinMax() {
		return dateFinMax;
	}

	/**
	 * @param dateFinMax
	 *            the dateFinMax to set
	 */
	public void setDateFinMax(Date dateFinMax) {
		this.dateFinMax = dateFinMax;
	}

}
