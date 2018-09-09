package fr.eni.enicalendar.converter;

import javax.annotation.PostConstruct;
import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

import fr.eni.enicalendar.persistence.app.entities.Calendrier;
import fr.eni.enicalendar.service.CalendrierServiceInterface;

@ManagedBean(name = "calendrierServiceConverter", eager = true)
@ApplicationScoped
public class CalendrierServiceConverter {

	@ManagedProperty(value = "#{calendrierService}")
	private CalendrierServiceInterface calendrierService;

	@PostConstruct
	public void init() {

	}

	public Calendrier findById(Integer id) {
		return calendrierService.findOne(id);
	}

	public CalendrierServiceInterface getCalendrierService() {
		return calendrierService;
	}

	public void setCalendrierService(CalendrierServiceInterface calendrierService) {
		this.calendrierService = calendrierService;
	}

}
