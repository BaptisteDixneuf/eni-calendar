package fr.eni.enicalendar.persistence.erp.entities;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "STAGIAIREPARENTREPRISE")
public class StagiaireParEntreprise implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;


	@Column(name = "CodeStagiaire")
	private Integer codeStagiaire;

	@Column(name = "CodeEntreprise")
	private Integer codeEntreprise;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "DateLien")
	private Date dateLien;

	@Column(name = "CodeTypeLien", columnDefinition = "char")
	private String codeTypeLien;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "DateDebutEnEts")
	private Date dateDebutEnEts;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "DateFinEnEts")
	private Date dateFinEnEts;

	@Column(name = "CodeFonction", columnDefinition = "char")
	private String codeFonction;

	@Column(name = "Commentaire", length = 255, columnDefinition = "NVARCHAR")
	private String commentaire;

	@Id
	@Column(name = "NumLien")
	private Integer numLien;

	@Column(name = "CodeTuteur")
	private Integer codeTuteur;

	@Column(name = "ResponsableEts")
	private Integer responsableEts;

	@Column(name = "GererPar")
	private Integer gererPar;

	@Column(name = "Interruption")
	private Integer interruption;

	@Column(name = "SujetStage")
	private String sujetStage;

	@Column(name = "TitreVise", columnDefinition = "char")
	private String titreVise;

	@Column(name = "CodeContactEni")
	private Integer codeContactEni;

	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	public Integer getCodeStagiaire() {
		return codeStagiaire;
	}

	public void setCodeStagiaire(Integer codeStagiaire) {
		this.codeStagiaire = codeStagiaire;
	}

	public Integer getCodeEntreprise() {
		return codeEntreprise;
	}

	public void setCodeEntreprise(Integer codeEntreprise) {
		this.codeEntreprise = codeEntreprise;
	}

	public Date getDateLien() {
		return dateLien;
	}

	public void setDateLien(Date dateLien) {
		this.dateLien = dateLien;
	}

	public String getCodeTypeLien() {
		return codeTypeLien;
	}

	public void setCodeTypeLien(String codeTypeLien) {
		this.codeTypeLien = codeTypeLien;
	}

	public Date getDateDebutEnEts() {
		return dateDebutEnEts;
	}

	public void setDateDebutEnEts(Date dateDebutEnEts) {
		this.dateDebutEnEts = dateDebutEnEts;
	}

	public Date getDateFinEnEts() {
		return dateFinEnEts;
	}

	public void setDateFinEnEts(Date dateFinEnEts) {
		this.dateFinEnEts = dateFinEnEts;
	}

	public String getCodeFonction() {
		return codeFonction;
	}

	public void setCodeFonction(String codeFonction) {
		this.codeFonction = codeFonction;
	}

	public String getCommentaire() {
		return commentaire;
	}

	public void setCommentaire(String commentaire) {
		this.commentaire = commentaire;
	}

	public Integer getNumLien() {
		return numLien;
	}

	public void setNumLien(Integer numLien) {
		this.numLien = numLien;
	}

	public Integer getCodeTuteur() {
		return codeTuteur;
	}

	public void setCodeTuteur(Integer codeTuteur) {
		this.codeTuteur = codeTuteur;
	}

	public Integer getResponsableEts() {
		return responsableEts;
	}

	public void setResponsableEts(Integer responsableEts) {
		this.responsableEts = responsableEts;
	}

	public Integer getGererPar() {
		return gererPar;
	}

	public void setGererPar(Integer gererPar) {
		this.gererPar = gererPar;
	}

	public Integer getInterruption() {
		return interruption;
	}

	public void setInterruption(Integer interruption) {
		this.interruption = interruption;
	}

	public String getSujetStage() {
		return sujetStage;
	}

	public void setSujetStage(String sujetStage) {
		this.sujetStage = sujetStage;
	}

	public String getTitreVise() {
		return titreVise;
	}

	public void setTitreVise(String titreVise) {
		this.titreVise = titreVise;
	}

	public Integer getCodeContactEni() {
		return codeContactEni;
	}

	public void setCodeContactEni(Integer codeContactEni) {
		this.codeContactEni = codeContactEni;
	}
}
