package fr.eni.enicalendar.persistence.erp.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
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
	private String idCours;

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

	/**
	 * @return the idCours
	 */
	public String getIdCours() {
		return idCours;
	}

	/**
	 * @param idCours
	 *            the idCours to set
	 */
	public void setIdCours(String idCours) {
		this.idCours = idCours;
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

}
