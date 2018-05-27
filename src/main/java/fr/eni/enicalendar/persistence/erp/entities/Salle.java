package fr.eni.enicalendar.persistence.erp.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Salle")
public class Salle implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "CodeSalle")
	private String codeSalle;

	@Column(name = "Libelle")
	private String libelle;

	@Column(name = "Capacite")
	private Integer capacite;

	@Column(name = "Lieu")
	private Integer lieu;

	/**
	 * @return the codeSalle
	 */
	public String getCodeSalle() {
		return codeSalle;
	}

	/**
	 * @param codeSalle
	 *            the codeSalle to set
	 */
	public void setCodeSalle(String codeSalle) {
		this.codeSalle = codeSalle;
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
	 * @return the capacite
	 */
	public Integer getCapacite() {
		return capacite;
	}

	/**
	 * @param capacite
	 *            the capacite to set
	 */
	public void setCapacite(Integer capacite) {
		this.capacite = capacite;
	}

	/**
	 * @return the lieu
	 */
	public Integer getLieu() {
		return lieu;
	}

	/**
	 * @param lieu
	 *            the lieu to set
	 */
	public void setLieu(Integer lieu) {
		this.lieu = lieu;
	}

}
