package fr.eni.enicalendar.persistence.app.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "TRACE_OPERATION")
public class TraceOperation implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "TO_ID")
	private Integer id;

	@Column(name = "UT_ID")
	private Integer utilisateurId;

	@Column(name = "TO_DATE_TRACE")
	private Date dateTrace;

	@Column(name = "TO_ACTION")
	private String action;

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
	 * @return the utilisateurId
	 */
	public Integer getUtilisateurId() {
		return utilisateurId;
	}

	/**
	 * @param utilisateurId
	 *            the utilisateurId to set
	 */
	public void setUtilisateurId(Integer utilisateurId) {
		this.utilisateurId = utilisateurId;
	}

	/**
	 * @return the dateTrace
	 */
	public Date getDateTrace() {
		return dateTrace;
	}

	/**
	 * @param dateTrace
	 *            the dateTrace to set
	 */
	public void setDateTrace(Date dateTrace) {
		this.dateTrace = dateTrace;
	}

	/**
	 * @return the action
	 */
	public String getAction() {
		return action;
	}

	/**
	 * @param action
	 *            the action to set
	 */
	public void setAction(String action) {
		this.action = action;
	}

}
