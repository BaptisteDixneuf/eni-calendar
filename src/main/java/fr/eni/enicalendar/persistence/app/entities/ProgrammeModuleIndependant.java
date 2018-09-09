package fr.eni.enicalendar.persistence.app.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "PROGRAMME_MODULE_INDEPENDANT")
public class ProgrammeModuleIndependant {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "PM_ID")
	private Integer id;

	@Column(name = "PM_DATE_DEBUT")
	private Date dateDebut;

	@Column(name = "PM_DATE_FIN")
	private Date dateFin;

	@Column(name = "MI_ID")
	private Integer idModuleIndependant;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
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

	public Integer getIdModuleIndependant() {
		return idModuleIndependant;
	}

	public void setIdModuleIndependant(Integer idModuleIndependant) {
		this.idModuleIndependant = idModuleIndependant;
	}

}
