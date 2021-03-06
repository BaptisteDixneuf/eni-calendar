package fr.eni.enicalendar.persistence.erp.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "Cours")
public class Cours implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@GeneratedValue(generator = "generator")
	@Column(name = "IdCours", columnDefinition = "uniqueidentifier")
	private String id;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "Debut")
	private Date dateDebut;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "Fin")
	private Date dateFin;

	@Column(name = "LibelleCours")
	private String libelleCours;

	@Column(name = "dureePrevueEnHeures")
	private Short dureePrevueEnHeures;

	@OneToOne(cascade = CascadeType.ALL, orphanRemoval = true)
	@JoinColumn(name = "IdModule")
	private Module module;

	@Column(name = "idModule")
	private Integer idModule;

	@OneToOne
	@JoinColumn(name = "CodeLieu", referencedColumnName = "CodeLieu", insertable = false, updatable = false)
	private Lieu lieu;

	@Column(name = "CodeLieu")
	private Integer codeLieu;

	/**
	 * @return the id
	 */
	public String getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(String id) {
		this.id = id;
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

	/**
	 * @return the libelleCours
	 */
	public String getLibelleCours() {
		return libelleCours;
	}

	/**
	 * @param libelleCours
	 *            the libelleCours to set
	 */
	public void setLibelleCours(String libelleCours) {
		this.libelleCours = libelleCours;
	}

	/**
	 * @return the dureePrevueEnHeures
	 */
	public Short getDureePrevueEnHeures() {
		return dureePrevueEnHeures;
	}

	/**
	 * @param dureePrevueEnHeures
	 *            the dureePrevueEnHeures to set
	 */
	public void setDureePrevueEnHeures(Short dureePrevueEnHeures) {
		this.dureePrevueEnHeures = dureePrevueEnHeures;
	}

	public Module getModule() {
		return module;
	}

	public void setModule(Module module) {
		this.module = module;
	}

	public Integer getCodeLieu() {
		return codeLieu;
	}

	public void setCodeLieu(Integer codeLieu) {
		this.codeLieu = codeLieu;
	}

	public Integer getIdModule() {
		return idModule;
	}

	public void setIdModule(Integer idModule) {
		this.idModule = idModule;
	}

	public Lieu getLieu() {
		return lieu;
	}

	public void setLieu(Lieu lieu) {
		this.lieu = lieu;
	}
}
