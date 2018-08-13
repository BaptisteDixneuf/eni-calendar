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

	@Column(name = "EM_ID_FORMATION_ERP", columnDefinition = "CHAR(8)")
	private String idFormationERP;

	@Column(name = "EM_ID_MODULE_ERP")
	private Integer idModuleERP;

	@Transient
	private String libelle;

	@Column(name = "EM_ID_MODULE_PREREQUIS_ERP")
	private Integer idModulePrerequisERP;

	// @Transient
	// private String libelleModulePrerequisERP;

	@Column(name = "EM_TYPE_ENCHAINEMENT")
	private String typeEnchainement;

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
	public String getIdFormationERP() {
		return idFormationERP;
	}

	/**
	 * @param idFormationERP
	 *            the idFormationERP to set
	 */
	public void setIdFormationERP(String idFormationERP) {
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

	/**
	 * @return the typeEnchainement
	 */
	public String getTypeEnchainement() {
		return typeEnchainement;
	}

	/**
	 * @param typeEnchainement
	 *            the typeEnchainement to set
	 */
	public void setTypeEnchainement(String typeEnchainement) {
		this.typeEnchainement = typeEnchainement;
	}

	// public String getLibelleModulePrerequisERP() {
	// return libelleModulePrerequisERP;
	// }
	//
	// public void setLibelleModulePrerequisERP(String libelleModulePrerequisERP) {
	// this.libelleModulePrerequisERP = libelleModulePrerequisERP;
	// }

}
