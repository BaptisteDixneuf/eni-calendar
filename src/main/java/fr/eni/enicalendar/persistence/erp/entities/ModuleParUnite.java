package fr.eni.enicalendar.persistence.erp.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ModuleParUnite")
public class ModuleParUnite implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "Id")
	private Integer id;

	@Column(name = "IdUnite")
	private Integer idUnite;

	@Column(name = "IdModule")
	private Integer idModule;

	@Column(name = "Position", columnDefinition = "TINYINT")
	private Integer position;

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
	 * @return the idUnite
	 */
	public Integer getIdUnite() {
		return idUnite;
	}

	/**
	 * @param idUnite
	 *            the idUnite to set
	 */
	public void setIdUnite(Integer idUnite) {
		this.idUnite = idUnite;
	}

	/**
	 * @return the idModule
	 */
	public Integer getIdModule() {
		return idModule;
	}

	/**
	 * @param idModule
	 *            the idModule to set
	 */
	public void setIdModule(Integer idModule) {
		this.idModule = idModule;
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

}
