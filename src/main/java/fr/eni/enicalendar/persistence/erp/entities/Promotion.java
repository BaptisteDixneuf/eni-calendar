package fr.eni.enicalendar.persistence.erp.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "Promotion")
public class Promotion implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	// Propriétés

	@Id
	@Column(name = "CodePromotion", columnDefinition = "char")
	private String codePromotion;

	@Column(name = "Libelle")
	private String libelle;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "Debut")
	private Date dateDebut;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "Fin")
	private Date dateFin;

	// Accesseurs
	public String getCodePromotion() {
		return codePromotion;
	}

	public void setCodePromotion(String codePromotion) {
		this.codePromotion = codePromotion;
	}

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	public Date getDateDebut() {
		return dateDebut;
	}

	public void setDateDebut(Date dateDebut) {
		this.dateDebut = dateDebut;
	}

	public Date getDateFin() {
		return dateFin;
	}

	public void setDateFin(Date dateFin) {
		this.dateFin = dateFin;
	}

}
