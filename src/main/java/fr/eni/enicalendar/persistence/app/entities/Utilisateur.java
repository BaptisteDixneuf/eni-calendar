package fr.eni.enicalendar.persistence.app.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "UTILISATEUR")
public class Utilisateur implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "UT_ID")
	private Integer id;

	@Column(name = "UT_NOM", columnDefinition = "TEXT")
	private String nom;

	@Column(name = "UT_PRENOM", columnDefinition = "TEXT")
	private String prenom;

	@Column(name = "UT_EMAIL", columnDefinition = "TEXT")
	private String email;

	@Column(name = "UT_PASSWORD", columnDefinition = "TEXT")
	private String password;

	@ManyToOne
	@JoinColumn(name = "RU_ID")
	private RoleUtilisateur role;

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
	 * @return the nom
	 */
	public String getNom() {
		return nom;
	}

	/**
	 * @param nom
	 *            the nom to set
	 */
	public void setNom(String nom) {
		this.nom = nom;
	}

	/**
	 * @return the prenom
	 */
	public String getPrenom() {
		return prenom;
	}

	/**
	 * @param prenom
	 *            the prenom to set
	 */
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email
	 *            the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password
	 *            the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the role
	 */
	public RoleUtilisateur getRole() {
		return role;
	}

	/**
	 * @param role
	 *            the role to set
	 */
	public void setRole(RoleUtilisateur role) {
		this.role = role;
	}

}
