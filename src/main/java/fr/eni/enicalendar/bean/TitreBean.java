package fr.eni.enicalendar.bean;

import java.io.Serializable;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;


import fr.eni.enicalendar.persistence.entities.Titre;
import fr.eni.enicalendar.service.EniCalendarRepositoryService;


@ManagedBean(name="titreBean")
@ViewScoped
public class TitreBean implements Serializable {
	
	
    /**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;
	
	private List<Titre> titres;    
    
    @ManagedProperty(value = "#{eniCalendarRepositoryServiceImpl}")
    private EniCalendarRepositoryService eniCalendarRepositoryService;  

    @PostConstruct
    public void setup()  {
    	
    	titres = eniCalendarRepositoryService.findAllTitre();       
    }

	/**
	 * @return the eniCalendarRepositoryService
	 */
	public EniCalendarRepositoryService getEniCalendarRepositoryService() {
		return eniCalendarRepositoryService;
	}

	/**
	 * @param eniCalendarRepositoryService the eniCalendarRepositoryService to set
	 */
	public void setEniCalendarRepositoryService(EniCalendarRepositoryService eniCalendarRepositoryService) {
		this.eniCalendarRepositoryService = eniCalendarRepositoryService;
	}

	/**
	 * @return the titres
	 */
	public List<Titre> getTitres() {
		return titres;
	}

	/**
	 * @param titres the titres to set
	 */
	public void setTitres(List<Titre> titres) {
		this.titres = titres;
	}
	
	
    
    
    
    
}
