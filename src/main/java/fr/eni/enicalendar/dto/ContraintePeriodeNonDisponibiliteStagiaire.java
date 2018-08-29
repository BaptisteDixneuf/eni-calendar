package fr.eni.enicalendar.dto;

import java.io.Serializable;
import java.util.Date;

public class ContraintePeriodeNonDisponibiliteStagiaire implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private Date dateDebut;
	private Date dateFin;
	private String motif;

	public ContraintePeriodeNonDisponibiliteStagiaire() {
		super();
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

	public String getMotif() {
		return motif;
	}

	public void setMotif(String motif) {
		this.motif = motif;
	}

}
