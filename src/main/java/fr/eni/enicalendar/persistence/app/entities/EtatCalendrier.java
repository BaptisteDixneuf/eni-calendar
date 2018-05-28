package fr.eni.enicalendar.persistence.app.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ETAT_CALENDRIER")
public class EtatCalendrier implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "EC_ID")
	private Integer id;

	@Column(name = "EC_LIBELLE_ETAT")
	private String libelleEtat;

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
	 * @return the libelleEtat
	 */
	public String getLibelleEtat() {
		return libelleEtat;
	}

	/**
	 * @param libelleEtat
	 *            the libelleEtat to set
	 */
	public void setLibelleEtat(String libelleEtat) {
		this.libelleEtat = libelleEtat;
	}

}
