package fr.eni.enicalendar.persistence.app.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "CONTRAINTE_MODULE_INDEPENDANT")
public class ContrainteModuleIndependant {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "CM_ID")
	private Integer id;

	@Column(name = "MC_ID")
	private Integer idModeleCalendrier;

	@Column(name = "CA_ID")
	private Integer idCalendrier;

	@Column(name = "MI_ID")
	private Integer idModuleIndependant;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getIdModeleCalendrier() {
		return idModeleCalendrier;
	}

	public void setIdModeleCalendrier(Integer idModeleCalendrier) {
		this.idModeleCalendrier = idModeleCalendrier;
	}

	public Integer getIdCalendrier() {
		return idCalendrier;
	}

	public void setIdCalendrier(Integer idCalendrier) {
		this.idCalendrier = idCalendrier;
	}

	public Integer getIdModuleIndependant() {
		return idModuleIndependant;
	}

	public void setIdModuleIndependant(Integer idModuleIndependant) {
		this.idModuleIndependant = idModuleIndependant;
	}

}
