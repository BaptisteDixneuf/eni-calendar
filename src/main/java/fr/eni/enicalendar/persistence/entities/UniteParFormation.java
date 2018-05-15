package fr.eni.enicalendar.persistence.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "UniteParFormation")
public class UniteParFormation implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "Id")
	private Integer id;

	@Column(name = "CodeFormation")
	private String codeFormation;

	@Column(name = "Position")
	private String position;

	@Column(name = "IdUniteFormation")
	private Integer IdUniteFormation;

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
	 * @return the codeFormation
	 */
	public String getCodeFormation() {
		return codeFormation;
	}

	/**
	 * @param codeFormation
	 *            the codeFormation to set
	 */
	public void setCodeFormation(String codeFormation) {
		this.codeFormation = codeFormation;
	}

	/**
	 * @return the position
	 */
	public String getPosition() {
		return position;
	}

	/**
	 * @param position
	 *            the position to set
	 */
	public void setPosition(String position) {
		this.position = position;
	}

	/**
	 * @return the idUniteFormation
	 */
	public Integer getIdUniteFormation() {
		return IdUniteFormation;
	}

	/**
	 * @param idUniteFormation
	 *            the idUniteFormation to set
	 */
	public void setIdUniteFormation(Integer idUniteFormation) {
		IdUniteFormation = idUniteFormation;
	}

}
