package fr.eni.enicalendar.viewElement;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class GestionModuleIndependant implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private Date dateDebut;

	private Date dateFin;

	private List<GestionModuleIndependantElement> listProgrammeModuleIndependant;

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

	public List<GestionModuleIndependantElement> getListProgrammeModuleIndependant() {
		return listProgrammeModuleIndependant;
	}

	public void setListProgrammeModuleIndependant(
			List<GestionModuleIndependantElement> listProgrammeModuleIndependant) {
		this.listProgrammeModuleIndependant = listProgrammeModuleIndependant;
	}

}
