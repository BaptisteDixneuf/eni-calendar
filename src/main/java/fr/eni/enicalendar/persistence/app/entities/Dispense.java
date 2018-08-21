package fr.eni.enicalendar.persistence.app.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

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

	@Column(name = "DI_ID_MODULE_ERP")
	private Integer idModuleERP;

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

}
