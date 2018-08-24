package fr.eni.enicalendar.converter;

import javax.annotation.PostConstruct;
import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

import fr.eni.enicalendar.persistence.erp.entities.Stagiaire;
import fr.eni.enicalendar.service.StagiaireServiceInterface;

@ManagedBean(name = "stagiaireServiceConverter", eager = true)
@ApplicationScoped
public class StagiaireServiceConverter {

	@ManagedProperty(value = "#{stagiaireService}")
	private StagiaireServiceInterface stagiaireService;

	@PostConstruct
	public void init() {

	}

	public Stagiaire getStagiairesByCode(Integer code) {
		return stagiaireService.findBycodeStagiaire(code);
	}

	public StagiaireServiceInterface getStagiaireService() {
		return stagiaireService;
	}

	public void setStagiaireService(StagiaireServiceInterface stagiaireService) {
		this.stagiaireService = stagiaireService;
	}

}