package fr.eni.enicalendar.persistence.erp.entities;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "Entreprise")
public class Entreprise implements Serializable {

    /**
     * Serial UID
     */
    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "CodeEntreprise")
    private Integer codeEntreprise;

    @Column(name = "RaisonSociale")
    private String raisonSociale;

    @Column(name = "Adresse1")
    private String adresse1;

    @Column(name = "Adresse2")
    private String adresse2;

    @Column(name = "Adresse3")
    private String adresse3;

    @Column(name = "CodePostal", columnDefinition = "char")
    private String codePostal;

    @Column(name = "Ville")
    private String ville;

    @Column(name = "Telephone", columnDefinition = "char")
    private String telephone;

    @Column(name = "Fax", columnDefinition = "char")
    private String fax;

    @Column(name = "SiteWeb")
    private String siteWeb;

    @Column(name = "Email")
    private String email;

    @Column(name = "Observation")
    private String observation;

    @Column(name = "CodeTypeEntreprise", columnDefinition = "char")
    private String codeTypeEntreprise;

    @Column(name = "CodeRegion", columnDefinition = "char")
    private String codeRegion;

    @Column(name = "CodeSecteur")
    private Integer codeSecteur;

    @Column(name = "CodeOrganisme")
    private Integer codeOrganisme;

    @Column(name = "NomCommercial", length = 255, columnDefinition = "NVARCHAR")
    private String nomCommercial;

    @Column(name = "Siret")
    private Integer siret;

    @Column(name = "CodeContactEni")
    private Integer codeContactEni;

    @Column(name = "CodeOrganismeFavoris")
    private Integer codeOrganismeFavoris;


    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getCodeEntreprise() {
        return codeEntreprise;
    }

    public void setCodeEntreprise(Integer codeEntreprise) {
        this.codeEntreprise = codeEntreprise;
    }

    public String getRaisonSociale() {
        return raisonSociale;
    }

    public void setRaisonSociale(String raisonSociale) {
        this.raisonSociale = raisonSociale;
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

    public String getCodePostal() {
        return codePostal;
    }

    public void setCodePostal(String codePostal) {
        this.codePostal = codePostal;
    }

    public String getVille() {
        return ville;
    }

    public void setVille(String ville) {
        this.ville = ville;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public String getSiteWeb() {
        return siteWeb;
    }

    public void setSiteWeb(String siteWeb) {
        this.siteWeb = siteWeb;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getObservation() {
        return observation;
    }

    public void setObservation(String observation) {
        this.observation = observation;
    }

    public String getCodeTypeEntreprise() {
        return codeTypeEntreprise;
    }

    public void setCodeTypeEntreprise(String codeTypeEntreprise) {
        this.codeTypeEntreprise = codeTypeEntreprise;
    }

    public String getCodeRegion() {
        return codeRegion;
    }

    public void setCodeRegion(String codeRegion) {
        this.codeRegion = codeRegion;
    }

    public Integer getCodeSecteur() {
        return codeSecteur;
    }

    public void setCodeSecteur(Integer codeSecteur) {
        this.codeSecteur = codeSecteur;
    }

    public Integer getCodeOrganisme() {
        return codeOrganisme;
    }

    public void setCodeOrganisme(Integer codeOrganisme) {
        this.codeOrganisme = codeOrganisme;
    }

    public String getNomCommercial() {
        return nomCommercial;
    }

    public void setNomCommercial(String nomCommercial) {
        this.nomCommercial = nomCommercial;
    }

    public Integer getSiret() {
        return siret;
    }

    public void setSiret(Integer siret) {
        this.siret = siret;
    }

    public Integer getCodeContactEni() {
        return codeContactEni;
    }

    public void setCodeContactEni(Integer codeContactEni) {
        this.codeContactEni = codeContactEni;
    }

    public Integer getCodeOrganismeFavoris() {
        return codeOrganismeFavoris;
    }

    public void setCodeOrganismeFavoris(Integer codeOrganismeFavoris) {
        this.codeOrganismeFavoris = codeOrganismeFavoris;
    }
}
