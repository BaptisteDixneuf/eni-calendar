package fr.eni.enicalendar.dto;

import java.util.Date;

/**
 * Element d'un calendrier pour la vue de différents types
 * 
 * @author baptiste
 *
 */
public class ElementCalendrier {

	private String id;

	private Integer idModule;

	private Date dateDebut;

	private Date dateFin;

	private String libelle;

	private ElementCalendrierType type;

	private Boolean moduleProgramme;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Date getDateDebut() {
		return dateDebut;
	}

	public void setDateDebut(Date dateDebut) {
		this.dateDebut = dateDebut;
	}

	public Date getDateFin() {
		return dateFin;
	}

	public void setDateFin(Date dateFin) {
		this.dateFin = dateFin;
	}

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	public ElementCalendrierType getType() {
		return type;
	}

	public void setType(ElementCalendrierType type) {
		this.type = type;
	}

	public Integer getIdModule() {
		return idModule;
	}

	public void setIdModule(Integer idModule) {
		this.idModule = idModule;
	}

	public Boolean getModuleProgramme() {
		return moduleProgramme;
	}

	public void setModuleProgramme(Boolean moduleProgramme) {
		this.moduleProgramme = moduleProgramme;
	}

}
