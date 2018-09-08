package fr.eni.enicalendar.persistence.app.entities;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;

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
	private String idFormationERP;

	@Column(name = "MC_DATE_DEBUT_MAX")
	private Date dateDebutMax;

	@Column(name = "MC_DATE_FIN_MAX")
	private Date dateFinMax;

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "MC_ID")
	private Collection<Programmation> programmations;

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "MC_ID")
	private Collection<Contrainte> contraintes;

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "MC_ID")
	private Collection<Dispense> dispenses;

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "MC_ID")
	private Collection<ContrainteModuleIndependant> contrainteModuleIndependant;

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

	public Integer getIdLieuFormationERP() {
		return idLieuFormationERP;
	}

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

	public Collection<Programmation> getProgrammations() {
		return programmations;
	}

	public void setProgrammations(Collection<Programmation> programmations) {
		this.programmations = programmations;
	}

	public Collection<Contrainte> getContraintes() {
		return contraintes;
	}

	public void setContraintes(Collection<Contrainte> contraintes) {
		this.contraintes = contraintes;
	}

	public Collection<Dispense> getDispenses() {
		return dispenses;
	}

	public void setDispenses(Collection<Dispense> dispenses) {
		this.dispenses = dispenses;
	}

	public Collection<ContrainteModuleIndependant> getContrainteModuleIndependant() {
		return contrainteModuleIndependant;
	}

	public void setContrainteModuleIndependant(Collection<ContrainteModuleIndependant> contrainteModuleIndependant) {
		this.contrainteModuleIndependant = contrainteModuleIndependant;
	}

}
