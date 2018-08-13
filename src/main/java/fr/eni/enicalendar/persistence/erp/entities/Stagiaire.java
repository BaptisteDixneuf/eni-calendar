package fr.eni.enicalendar.persistence.erp.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "STAGIAIRE")
public class Stagiaire implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "CodeStagiaire")
	private Integer codeStagiaire;

	@Column(name = "Civilite", columnDefinition = "char")
	private String civilite;

	@Column(name = "Nom", length = 50, columnDefinition = "NVARCHAR")
	private String nom;

	@Column(name = "Prenom", length = 50, columnDefinition = "NVARCHAR")
	private String prenom;

	@Column(name = "Adresse1")
	private String adresse1;

	@Column(name = "Adresse2")
	private String adresse2;

	@Column(name = "Adresse3")
	private String adresse3;

	@Column(name = "Codepostal", columnDefinition = "char")
	private String codepostal;

	@Column(name = "Ville")
	private String ville;

	@Column(name = "TelephoneFixe", columnDefinition = "char")
	private String telephoneFixe;

	@Column(name = "TelephonePortable", columnDefinition = "char")
	private String telephonePortable;

	@Column(name = "Email")
	private String email;

	@Column(name = "DateNaissance")
	private Date dateNaissance;

	public Integer getCodeStagiaire() {
		return codeStagiaire;
	}

	public void setCodeStagiaire(Integer codeStagiaire) {
		this.codeStagiaire = codeStagiaire;
	}

	public String getCivilite() {
		return civilite;
	}

	public void setCivilite(String civilite) {
		this.civilite = civilite;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getAdresse1() {
		return adresse1;
	}

	public void setAdresse1(String adresse1) {
		this.adresse1 = adresse1;
	}

	public String getAdresse2() {
		return adresse2;
	}

	public void setAdresse2(String adresse2) {
		this.adresse2 = adresse2;
	}

	public String getAdresse3() {
		return adresse3;
	}

	public void setAdresse3(String adresse3) {
		this.adresse3 = adresse3;
	}

	public String getCodepostal() {
		return codepostal;
	}

	public void setCodepostal(String codepostal) {
		this.codepostal = codepostal;
	}

	public String getVille() {
		return ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

	public String getTelephoneFixe() {
		return telephoneFixe;
	}

	public void setTelephoneFixe(String telephoneFixe) {
		this.telephoneFixe = telephoneFixe;
	}

	public String getTelephonePortable() {
		return telephonePortable;
	}

	public void setTelephonePortable(String telephonePortable) {
		this.telephonePortable = telephonePortable;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getDateNaissance() {
		return dateNaissance;
	}

	public void setDateNaissance(Date dateNaissance) {
		this.dateNaissance = dateNaissance;
	}
}
