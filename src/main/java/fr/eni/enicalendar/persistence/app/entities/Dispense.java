package fr.eni.enicalendar.persistence.app.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "DISPENSE")
public class Dispense implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "DI_ID")
	private Integer id;

	@Column(name = "MC_ID")
	private Integer idModeleCalendrier;

	@Column(name = "CA_ID")
	private Integer idCalendrier;

	@Column(name = "DI_ID_MODULE_ERP")
	private Integer idModuleERP;

	@Transient
	private String libelle;

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
	 * @return the idModuleERP
	 */
	public Integer getIdModuleERP() {
		return idModuleERP;
	}

	/**
	 * @param idModuleERP
	 *            the idModuleERP to set
	 */
	public void setIdModuleERP(Integer idModuleERP) {
		this.idModuleERP = idModuleERP;
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

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

}
