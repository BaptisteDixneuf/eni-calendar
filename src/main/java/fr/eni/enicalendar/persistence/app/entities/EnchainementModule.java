package fr.eni.enicalendar.persistence.app.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ENCHAINEMENT_MODULE")
public class EnchainementModule implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "EM_ID")
	private Integer id;

	@Column(name = "EM_ID_FORMATION_ERP")
	private Integer idFormationERP;

	@Column(name = "EM_ID_MODULE_ERP")
	private Integer idModuleERP;

	@Column(name = "EM_ID_MODULE_PREREQUIS_ERP")
	private Integer idModulePrerequisERP;

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
	 * @return the idFormationERP
	 */
	public Integer getIdFormationERP() {
		return idFormationERP;
	}

	/**
	 * @param idFormationERP
	 *            the idFormationERP to set
	 */
	public void setIdFormationERP(Integer idFormationERP) {
		this.idFormationERP = idFormationERP;
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

	/**
	 * @return the idModulePrerequisERP
	 */
	public Integer getIdModulePrerequisERP() {
		return idModulePrerequisERP;
	}

	/**
	 * @param idModulePrerequisERP
	 *            the idModulePrerequisERP to set
	 */
	public void setIdModulePrerequisERP(Integer idModulePrerequisERP) {
		this.idModulePrerequisERP = idModulePrerequisERP;
	}

}
