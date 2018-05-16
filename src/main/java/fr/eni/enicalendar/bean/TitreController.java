package fr.eni.enicalendar.bean;

import java.io.Serializable;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;

import fr.eni.enicalendar.persistence.erp.entities.Titre;
import fr.eni.enicalendar.service.TitreServiceInterface;

/**
 * DOC : http://objis.com/tutoriel-jsf2-n4-managed-bean-jsf-el/
 * 
 * @author DIXNEUF Baptiste
 *
 */

@ManagedBean(name = "titreController")
@ViewScoped
public class TitreController implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private List<Titre> titres;

	@ManagedProperty(value = "#{titreService}")
	private TitreServiceInterface titreService;

	@PostConstruct
	public void setup() {

		titres = titreService.findAllTitre();
	}

	/**
	 * @return the titreService
	 */
	public TitreServiceInterface getTitreService() {
		return titreService;
	}

	/**
	 * @param titreService
	 *            the titreService to set
	 */
	public void setTitreService(TitreServiceInterface titreService) {
		this.titreService = titreService;
	}

	/**
	 * @return the titres
	 */
	public List<Titre> getTitres() {
		return titres;
	}

	/**
	 * @param titres
	 *            the titres to set
	 */
	public void setTitres(List<Titre> titres) {
		this.titres = titres;
	}

}
