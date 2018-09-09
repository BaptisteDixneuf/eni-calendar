package fr.eni.enicalendar.persistence.app.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "CALENDRIER")
public class Calendrier implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
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
	private String idFormationERP;

	@Column(name = "CA_DATE_DEBUT_MAX")
	private Date dateDebutMax;

	@Column(name = "CA_DATE_FIN_MAX")
	private Date dateFinMax;

	@ManyToOne
	@JoinColumn(name = "EC_ID")
	private EtatCalendrier etatCalendrier;

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
	 * @return the idStagiaireERP
	 */
	public Integer getIdStagiaireERP() {
		return idStagiaireERP;
	}

	/**
	 * @param idStagiaireERP
	 *            the idStagiaireERP to set
	 */
	public void setIdStagiaireERP(Integer idStagiaireERP) {
		this.idStagiaireERP = idStagiaireERP;
	}

	/**
	 * @return the idEntrepriseERP
	 */
	public Integer getIdEntrepriseERP() {
		return idEntrepriseERP;
	}

	/**
	 * @param idEntrepriseERP
	 *            the idEntrepriseERP to set
	 */
	public void setIdEntrepriseERP(Integer idEntrepriseERP) {
		this.idEntrepriseERP = idEntrepriseERP;
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

	public String getIdFormationERP() {
		return idFormationERP;
	}

	public void setIdFormationERP(String idFormationERP) {
		this.idFormationERP = idFormationERP;
	}

	/**
	 * @return the etatCalendrier
	 */
	public EtatCalendrier getEtatCalendrier() {
		return etatCalendrier;
	}

	/**
	 * @param etatCalendrier
	 *            the etatCalendrier to set
	 */
	public void setEtatCalendrier(EtatCalendrier etatCalendrier) {
		this.etatCalendrier = etatCalendrier;
	}

}
