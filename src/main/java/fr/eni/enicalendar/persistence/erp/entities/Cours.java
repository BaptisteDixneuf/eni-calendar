package fr.eni.enicalendar.persistence.erp.entities;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Cours")
public class Cours implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "IdCours")
	private String idCours;

	@Column(name = "Debut")
	private Date dateDebut;

	@Column(name = "Fin")
	private Date dateFin;

	@Column(name = "LibelleCours")
	private String libelleCours;

	@Column(name = "dureePrevueEnHeures")
	private Integer dureePrevueEnHeures;

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
	public Integer getDureePrevueEnHeures() {
		return dureePrevueEnHeures;
	}

	/**
	 * @param dureePrevueEnHeures
	 *            the dureePrevueEnHeures to set
	 */
	public void setDureePrevueEnHeures(Integer dureePrevueEnHeures) {
		this.dureePrevueEnHeures = dureePrevueEnHeures;
	}

}
