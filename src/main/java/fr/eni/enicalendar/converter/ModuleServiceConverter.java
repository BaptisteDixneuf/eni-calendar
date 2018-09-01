package fr.eni.enicalendar.converter;

import javax.annotation.PostConstruct;
import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

import fr.eni.enicalendar.persistence.erp.entities.Module;
import fr.eni.enicalendar.service.ModuleServiceInterface;

@ManagedBean(name = "moduleServiceConverter", eager = true)
@ApplicationScoped
public class ModuleServiceConverter {

	@ManagedProperty(value = "#{moduleService}")
	private ModuleServiceInterface moduleService;

	@PostConstruct
	public void init() {

	}

	public Module findModuleById(Integer id) {
		return moduleService.findModuleById(id);
	}

	public ModuleServiceInterface getModuleService() {
		return moduleService;
	}

	public void setModuleService(ModuleServiceInterface moduleService) {
		this.moduleService = moduleService;
	}

}
