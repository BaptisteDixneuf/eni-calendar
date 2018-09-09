package fr.eni.enicalendar.converter;

import javax.annotation.PostConstruct;
import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

import fr.eni.enicalendar.persistence.app.entities.ModeleCalendrier;
import fr.eni.enicalendar.service.ModeleCalendrierServiceInterface;

@ManagedBean(name = "modeleServiceConverter", eager = true)
@ApplicationScoped
public class ModeleServiceConverter {

	@ManagedProperty(value = "#{modeleCalendrierService}")
	private ModeleCalendrierServiceInterface modeleCalendrierService;

	@PostConstruct
	public void init() {

	}

	public ModeleCalendrier findById(Integer id) {
		return modeleCalendrierService.findById(id);
	}

	public ModeleCalendrierServiceInterface getModeleCalendrierService() {
		return modeleCalendrierService;
	}

	public void setModeleCalendrierService(ModeleCalendrierServiceInterface modeleCalendrierService) {
		this.modeleCalendrierService = modeleCalendrierService;
	}

}
