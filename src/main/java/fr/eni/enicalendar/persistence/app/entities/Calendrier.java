package fr.eni.enicalendar.persistence.app.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "CALENDRIER")
public class Calendrier implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "CA_ID")
	private Integer id;

	@Column(name = "CA_ID_STAGIAIRE_ERP")
	private Integer idStagiaireERP;

	@Column(name = "CA_ID_ENTREPRISE_ERP")
	private Integer idEntrepriseERP;

	@Column(name = "CA_NOM_CALENDRIER")
	private String nomCalendrier;

	@Column(name = "CA_DATE_CREATION")
	private Date dateCreation;

	@Column(name = "CA_DATE_MAJ")
	private Date dateModification;

	@Column(name = "CA_ID_LIEU_FORMATION_ERP")
	private Integer idLieuFormationERP;

	@Column(name = "CA_ID_FORMATION_ERP")
	private Integer idFormationERP;

	@Column(name = "CA_DATE_DEBUT_MAX")
	private Date dateDebutMax;

	@Column(name = "CA_DATE_FIN_MAX")
	private Date dateFinMax;

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
