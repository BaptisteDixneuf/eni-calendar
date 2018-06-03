package fr.eni.enicalendar.persistence.erp.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Stagiaire")
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

}
