package fr.eni.enicalendar.persistence.app.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "MODULE_SECABLE")
public class ModuleSecable implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "MS_ID")
	private Integer id;

	@Column(name = "MS_ID_FORMATION_ERP")
	private Integer idFormationERP;

	@Column(name = "MS_ID_MODULE_ERP")
	private Integer idModuleERP;

	@Column(name = "MS_POSITION")
	private Integer position;

	@Column(name = "MS_LIBELLE_SOUS_MODULE")
	private String libelleSousModule;

	@Column(name = "MS_DUREE_SOUS_MODULE")
	private Integer dureeSousModule;

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
	 * @return the position
	 */
	public Integer getPosition() {
		return position;
	}

	/**
	 * @param position
	 *            the position to set
	 */
	public void setPosition(Integer position) {
		this.position = position;
	}

	/**
	 * @return the libelleSousModule
	 */
	public String getLibelleSousModule() {
		return libelleSousModule;
	}

	/**
	 * @param libelleSousModule
	 *            the libelleSousModule to set
	 */
	public void setLibelleSousModule(String libelleSousModule) {
		this.libelleSousModule = libelleSousModule;
	}

	/**
	 * @return the dureeSousModule
	 */
	public Integer getDureeSousModule() {
		return dureeSousModule;
	}

	/**
	 * @param dureeSousModule
	 *            the dureeSousModule to set
	 */
	public void setDureeSousModule(Integer dureeSousModule) {
		this.dureeSousModule = dureeSousModule;
	}

}
