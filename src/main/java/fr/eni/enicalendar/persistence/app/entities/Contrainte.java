package fr.eni.enicalendar.persistence.app.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "CONTRAINTE")
public class Contrainte implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "CO_ID")
	private Integer id;

	@Column(name = "MC_ID")
	private Integer idModeleCalendrier;

	@Column(name = "CA_ID")
	private Integer idCalendrier;

	@Column(name = "CO_LIBELLE")
	private String libelle;

	@Column(name = "CO_MOTIF", columnDefinition = "Text")
	private String motif;

	@Column(name = "CO_NB_SEMAINES")
	private Integer nombreDeSemaines;

	@Column(name = "CO_DATE_DEBUT")
	private Date dateDebut;

	@Column(name = "CO_DATE_FIN")
	private Date dateFin;

	@OneToOne
	@JoinColumn(name = "TC_ID")
	private TypeContrainte typeContrainte;

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
	 * @return the libelle
	 */
	public String getLibelle() {
		return libelle;
	}

	/**
	 * @param libelle
	 *            the libelle to set
	 */
	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	/**
	 * @return the motif
	 */
	public String getMotif() {
		return motif;
	}

	/**
	 * @param motif
	 *            the motif to set
	 */
	public void setMotif(String motif) {
		this.motif = motif;
	}

	/**
	 * @return the nombreDeSemaines
	 */
	public Integer getNombreDeSemaines() {
		return nombreDeSemaines;
	}

	/**
	 * @param nombreDeSemaines
	 *            the nombreDeSemaines to set
	 */
	public void setNombreDeSemaines(Integer nombreDeSemaines) {
		this.nombreDeSemaines = nombreDeSemaines;
	}

	/**
	 * @return the dateDebut
	 */
	public Date getDateDebut() {
		return dateDebut;
	}

	/**
	 * @param dateDebut
	 *            the dateDebut to set
	 */
	public void setDateDebut(Date dateDebut) {
		this.dateDebut = dateDebut;
	}

	/**
	 * @return the dateFin
	 */
	public Date getDateFin() {
		return dateFin;
	}

	/**
	 * @param dateFin
	 *            the dateFin to set
	 */
	public void setDateFin(Date dateFin) {
		this.dateFin = dateFin;
	}

	public Integer getIdModeleCalendrier() {
		return idModeleCalendrier;
	}

	public void setIdModeleCalendrier(Integer idModeleCalendrier) {
		this.idModeleCalendrier = idModeleCalendrier;
	}

	public TypeContrainte getTypeContrainte() {
		return typeContrainte;
	}

	public void setTypeContrainte(TypeContrainte typeContrainte) {
		this.typeContrainte = typeContrainte;
	}

	public Integer getIdCalendrier() {
		return idCalendrier;
	}

	public void setIdCalendrier(Integer idCalendrier) {
		this.idCalendrier = idCalendrier;
	}

}
