package fr.eni.enicalendar.persistence.app.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "AUTRE_COURS")
public class AutreCours implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "AC_ID")
	private Integer id;

	@Column(name = "AC_ID_AUTRES_COURS_ERP")
	private Integer idAutresCoursERP;

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
	 * @return the idAutresCoursERP
	 */
	public Integer getIdAutresCoursERP() {
		return idAutresCoursERP;
	}

	/**
	 * @param idAutresCoursERP
	 *            the idAutresCoursERP to set
	 */
	public void setIdAutresCoursERP(Integer idAutresCoursERP) {
		this.idAutresCoursERP = idAutresCoursERP;
	}

}
