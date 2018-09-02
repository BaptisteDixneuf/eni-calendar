package fr.eni.enicalendar.viewElement;

import java.io.Serializable;
import java.util.Date;

public class ContraintePeriodeFaibleActiviteEntreprise implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private Date dateDebut;
	private Date dateFin;

	public ContraintePeriodeFaibleActiviteEntreprise() {
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

}
