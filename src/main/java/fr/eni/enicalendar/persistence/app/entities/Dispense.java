package fr.eni.enicalendar.persistence.app.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
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
	@Column(name = "DI_ID")
	private Integer id;

	@Column(name = "DI_ID_MODULE_ERP")
	private Integer idModuleERP;

}
