package fr.eni.enicalendar.persistence.app.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "PROGRAMMATION")
public class Programmation implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "PR_ID")
	private Integer id;

	@Column(name = "MC_ID")
	private Integer idModeleCalendrier;

	@Column(name = "CA_ID")
	private Integer idCalendrier;

	@Column(name = "PR_ID_COURS_PLANIFIE_ERP")
	private Integer idCoursPlanifieERP;

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
	 * @return the idModeleCalendrier
	 */
	public Integer getIdModeleCalendrier() {
		return idModeleCalendrier;
	}

	/**
	 * @param idModeleCalendrier
	 *            the idModeleCalendrier to set
	 */
	public void setIdModeleCalendrier(Integer idModeleCalendrier) {
		this.idModeleCalendrier = idModeleCalendrier;
	}

	/**
	 * @return the idCalendrier
	 */
	public Integer getIdCalendrier() {
		return idCalendrier;
	}

	/**
	 * @param idCalendrier
	 *            the idCalendrier to set
	 */
	public void setIdCalendrier(Integer idCalendrier) {
		this.idCalendrier = idCalendrier;
	}

	/**
	 * @return the idCoursPlanifieERP
	 */
	public Integer getIdCoursPlanifieERP() {
		return idCoursPlanifieERP;
	}

	/**
	 * @param idCoursPlanifieERP
	 *            the idCoursPlanifieERP to set
	 */
	public void setIdCoursPlanifieERP(Integer idCoursPlanifieERP) {
		this.idCoursPlanifieERP = idCoursPlanifieERP;
	}

}
