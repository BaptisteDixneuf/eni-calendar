package fr.eni.enicalendar.viewElement;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import fr.eni.enicalendar.persistence.app.entities.Contrainte;

public class Contraintes implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;
	private boolean semaineAffileeEntreprise;
	private Integer semaineAffileeEntrepriseNombre;

	private boolean semaineAffileeFormation;
	private Integer semaineAffileeFormationNombre;

	private boolean periodeFaibleActiviteEntreprise;
	private List<Contrainte> listPeriodeFaibleActiviteEntreprise;
	private Date periodeFaibleActiviteEntrepriseDateDebut;
	private Date periodeFaibleActiviteEntrepriseDateFin;

	private boolean periodeForteActiviteEntreprise;
	private List<Contrainte> listPeriodeForteActiviteEntreprise;
	private Date periodeForteActiviteEntrepriseDateDebut;
	private Date periodeForteActiviteEntrepriseDateFin;

	private boolean periodeNonDisponibiliteStagiaire;
	private List<Contrainte> listPeriodeNonDisponibiliteStagiaire;
	private Date periodeNonDisponibiliteStagiaireDateDebut;
	private Date periodeNonDisponibiliteStagiaireDateFin;
	private String periodeNonDisponibiliteStagiaireMotif;

	public Contraintes() {
		super();
	}

	public boolean isSemaineAffileeEntreprise() {
		return semaineAffileeEntreprise;
	}

	public void setSemaineAffileeEntreprise(boolean semaineAffileeEntreprise) {
		this.semaineAffileeEntreprise = semaineAffileeEntreprise;
	}

	public Integer getSemaineAffileeEntrepriseNombre() {
		return semaineAffileeEntrepriseNombre;
	}

	public void setSemaineAffileeEntrepriseNombre(Integer semaineAffileeEntrepriseNombre) {
		this.semaineAffileeEntrepriseNombre = semaineAffileeEntrepriseNombre;
	}

	public boolean isSemaineAffileeFormation() {
		return semaineAffileeFormation;
	}

	public void setSemaineAffileeFormation(boolean semaineAffileeFormation) {
		this.semaineAffileeFormation = semaineAffileeFormation;
	}

	public Integer getSemaineAffileeFormationNombre() {
		return semaineAffileeFormationNombre;
	}

	public void setSemaineAffileeFormationNombre(Integer semaineAffileeFormationNombre) {
		this.semaineAffileeFormationNombre = semaineAffileeFormationNombre;
	}

	public boolean isPeriodeFaibleActiviteEntreprise() {
		return periodeFaibleActiviteEntreprise;
	}

	public void setPeriodeFaibleActiviteEntreprise(boolean periodeFaibleActiviteEntreprise) {
		this.periodeFaibleActiviteEntreprise = periodeFaibleActiviteEntreprise;
	}

	public boolean isPeriodeForteActiviteEntreprise() {
		return periodeForteActiviteEntreprise;
	}

	public void setPeriodeForteActiviteEntreprise(boolean periodeForteActiviteEntreprise) {
		this.periodeForteActiviteEntreprise = periodeForteActiviteEntreprise;
	}

	public boolean isPeriodeNonDisponibiliteStagiaire() {
		return periodeNonDisponibiliteStagiaire;
	}

	public Date getPeriodeFaibleActiviteEntrepriseDateDebut() {
		return periodeFaibleActiviteEntrepriseDateDebut;
	}

	public void setPeriodeFaibleActiviteEntrepriseDateDebut(Date periodeFaibleActiviteEntrepriseDateDebut) {
		this.periodeFaibleActiviteEntrepriseDateDebut = periodeFaibleActiviteEntrepriseDateDebut;
	}

	public Date getPeriodeFaibleActiviteEntrepriseDateFin() {
		return periodeFaibleActiviteEntrepriseDateFin;
	}

	public void setPeriodeFaibleActiviteEntrepriseDateFin(Date periodeFaibleActiviteEntrepriseDateFin) {
		this.periodeFaibleActiviteEntrepriseDateFin = periodeFaibleActiviteEntrepriseDateFin;
	}

	public Date getPeriodeForteActiviteEntrepriseDateDebut() {
		return periodeForteActiviteEntrepriseDateDebut;
	}

	public void setPeriodeForteActiviteEntrepriseDateDebut(Date periodeForteActiviteEntrepriseDateDebut) {
		this.periodeForteActiviteEntrepriseDateDebut = periodeForteActiviteEntrepriseDateDebut;
	}

	public Date getPeriodeForteActiviteEntrepriseDateFin() {
		return periodeForteActiviteEntrepriseDateFin;
	}

	public void setPeriodeForteActiviteEntrepriseDateFin(Date periodeForteActiviteEntrepriseDateFin) {
		this.periodeForteActiviteEntrepriseDateFin = periodeForteActiviteEntrepriseDateFin;
	}

	public Date getPeriodeNonDisponibiliteStagiaireDateDebut() {
		return periodeNonDisponibiliteStagiaireDateDebut;
	}

	public void setPeriodeNonDisponibiliteStagiaireDateDebut(Date periodeNonDisponibiliteStagiaireDateDebut) {
		this.periodeNonDisponibiliteStagiaireDateDebut = periodeNonDisponibiliteStagiaireDateDebut;
	}

	public Date getPeriodeNonDisponibiliteStagiaireDateFin() {
		return periodeNonDisponibiliteStagiaireDateFin;
	}

	public void setPeriodeNonDisponibiliteStagiaireDateFin(Date periodeNonDisponibiliteStagiaireDateFin) {
		this.periodeNonDisponibiliteStagiaireDateFin = periodeNonDisponibiliteStagiaireDateFin;
	}

	public String getPeriodeNonDisponibiliteStagiaireMotif() {
		return periodeNonDisponibiliteStagiaireMotif;
	}

	public void setPeriodeNonDisponibiliteStagiaireMotif(String periodeNonDisponibiliteStagiaireMotif) {
		this.periodeNonDisponibiliteStagiaireMotif = periodeNonDisponibiliteStagiaireMotif;
	}

	public List<Contrainte> getListPeriodeFaibleActiviteEntreprise() {
		return listPeriodeFaibleActiviteEntreprise;
	}

	public void setListPeriodeFaibleActiviteEntreprise(List<Contrainte> listPeriodeFaibleActiviteEntreprise) {
		this.listPeriodeFaibleActiviteEntreprise = listPeriodeFaibleActiviteEntreprise;
	}

	public List<Contrainte> getListPeriodeForteActiviteEntreprise() {
		return listPeriodeForteActiviteEntreprise;
	}

	public void setListPeriodeForteActiviteEntreprise(List<Contrainte> listPeriodeForteActiviteEntreprise) {
		this.listPeriodeForteActiviteEntreprise = listPeriodeForteActiviteEntreprise;
	}

	public List<Contrainte> getListPeriodeNonDisponibiliteStagiaire() {
		return listPeriodeNonDisponibiliteStagiaire;
	}

	public void setListPeriodeNonDisponibiliteStagiaire(List<Contrainte> listPeriodeNonDisponibiliteStagiaire) {
		this.listPeriodeNonDisponibiliteStagiaire = listPeriodeNonDisponibiliteStagiaire;
	}

	public void setPeriodeNonDisponibiliteStagiaire(boolean periodeNonDisponibiliteStagiaire) {
		this.periodeNonDisponibiliteStagiaire = periodeNonDisponibiliteStagiaire;
	}

}
