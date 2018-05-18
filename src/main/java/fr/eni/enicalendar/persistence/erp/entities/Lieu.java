package fr.eni.enicalendar.persistence.erp.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Lieu")
public class Lieu implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "CodeLieu")
	private Integer id;

	@Column(name = "Libelle")
	private String libelle;

	@Column(name = "archive")
	private Boolean archive;

	@Column(name = "GestionEmargement")
	private Boolean gestionEmargement;

	@Column(name = "DebutAM")
	private String debutAM;

	@Column(name = "FinAM")
	private String finAM;

	@Column(name = "DebutPM")
	private String debutPM;

	@Column(name = "FinPM")
	private String finPM;

	@Column(name = "Adresse")
	private String adresse;

	@Column(name = "CP")
	private Integer codePostal;

	@Column(name = "Ville")
	private String ville;

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
	 * @return the archive
	 */
	public Boolean getArchive() {
		return archive;
	}

	/**
	 * @param archive
	 *            the archive to set
	 */
	public void setArchive(Boolean archive) {
		this.archive = archive;
	}

	/**
	 * @return the gestionEmargement
	 */
	public Boolean getGestionEmargement() {
		return gestionEmargement;
	}

	/**
	 * @param gestionEmargement
	 *            the gestionEmargement to set
	 */
	public void setGestionEmargement(Boolean gestionEmargement) {
		this.gestionEmargement = gestionEmargement;
	}

	/**
	 * @return the debutAM
	 */
	public String getDebutAM() {
		return debutAM;
	}

	/**
	 * @param debutAM
	 *            the debutAM to set
	 */
	public void setDebutAM(String debutAM) {
		this.debutAM = debutAM;
	}

	/**
	 * @return the finAM
	 */
	public String getFinAM() {
		return finAM;
	}

	/**
	 * @param finAM
	 *            the finAM to set
	 */
	public void setFinAM(String finAM) {
		this.finAM = finAM;
	}

	/**
	 * @return the debutPM
	 */
	public String getDebutPM() {
		return debutPM;
	}

	/**
	 * @param debutPM
	 *            the debutPM to set
	 */
	public void setDebutPM(String debutPM) {
		this.debutPM = debutPM;
	}

	/**
	 * @return the finPM
	 */
	public String getFinPM() {
		return finPM;
	}

	/**
	 * @param finPM
	 *            the finPM to set
	 */
	public void setFinPM(String finPM) {
		this.finPM = finPM;
	}

	/**
	 * @return the adresse
	 */
	public String getAdresse() {
		return adresse;
	}

	/**
	 * @param adresse
	 *            the adresse to set
	 */
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	/**
	 * @return the codePostal
	 */
	public Integer getCodePostal() {
		return codePostal;
	}

	/**
	 * @param codePostal
	 *            the codePostal to set
	 */
	public void setCodePostal(Integer codePostal) {
		this.codePostal = codePostal;
	}

	/**
	 * @return the ville
	 */
	public String getVille() {
		return ville;
	}

	/**
	 * @param ville
	 *            the ville to set
	 */
	public void setVille(String ville) {
		this.ville = ville;
	}

}
